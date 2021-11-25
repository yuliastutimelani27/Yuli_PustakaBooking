-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 19 Nov 2020 pada 16.52
-- Versi Server: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pustaka`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul_buku` varchar(128) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `pengarang` varchar(64) NOT NULL,
  `penerbit` varchar(64) NOT NULL,
  `tahun_terbit` year(4) NOT NULL,
  `isbn` varchar(64) NOT NULL,
  `stok` int(11) NOT NULL,
  `dipinjam` int(11) NOT NULL,
  `dibooking` int(11) NOT NULL,
  `image` varchar(256) DEFAULT 'book-default-cover.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `judul_buku`, `id_kategori`, `pengarang`, `penerbit`, `tahun_terbit`, `isbn`, `stok`, `dipinjam`, `dibooking`, `image`) VALUES
(1, 'Statistika dengan Program Komputer', 1, 'Ahmad Kholiqul Amin', 'Deep Publish', 2014, '9786022809432', 7, 1, -1, 'img1557402455.jpg'),
(2, 'Mudah Belajar Komputer untuk Anak', 1, 'Bambang Agus Setiawan', 'Huta Media', 2014, '9786025118500', 5, 1, 2, 'img1557402397.jpg'),
(5, 'PHP Komplet', 1, 'Jubilee', 'Elex Media Komputindo', 2017, '8346753547', 11, 1, 1, 'img1555522493.jpg'),
(10, 'Detektif Conan Ep 200', 9, 'Okigawa sasuke Minori', 'Cultura', 2016, '874387583987', 12, 1, -1, 'img1557401465.jpg'),
(14, 'Bahasa Indonesia', 2, 'Umri Nur\'aini dan Indriyani', 'Pusat Perbukuan', 2015, '757254724884', 12, 0, 0, 'img1557402703.jpg'),
(15, 'Komunikasi Lintas Budaya', 5, 'Dr. Dedy Kurnia', 'Published', 2015, '878674646488', 19, 0, 0, 'img1557403156.jpg'),
(16, 'Kolaborasi Codeigniter dan Ajax dalam Perancangan CMS', 1, 'Anton Subagia', 'Elex Media komputindo', 2017, '43345356577', 10, 0, 0, 'img1557403502.jpg'),
(17, 'From Hobby to Money', 4, 'Deasylawati', 'Elex Media Komputindo', 2015, '87968686787879', 8, 0, 0, 'img1557403658.jpg'),
(18, 'Buku Saku Pramuka', 8, 'Rudi Himawan', 'Pusat Perbukuan', 2016, '97868687978796', 13, 0, 0, 'img1557404613.jpg'),
(19, 'Rahasia Keajaiban Bumi', 3, 'Nurul Ihsan', 'Luxima', 2014, '565756565768868', 13, 0, 0, 'img1557404689.jpg'),
(20, 'Buku Pintar Puasa Wajib dan Sunnah Sepanjang Masa', 7, 'Ali Hasan', 'Luxima', 2011, '32342342344234', 13, 0, 0, 'img1557404775.jpg'),
(21, 'Aspek Hukum dalam Penelitian', 6, 'Rianto Adi', 'Buku Obor', 2015, '7565646455757', 11, 0, 0, 'img1557404853.jpg'),
(22, 'Belajar Mudah Pemrograman Web dengan Framework Codeigniter', 1, 'Imam Nawawi, Frans Edward S, Andriansah', 'Graha Ilmu', 2019, '12314213432', 13, 0, 0, 'img1580209540.PNG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`) VALUES
(1, 'Komputer'),
(2, 'Bahasa'),
(3, 'Sains'),
(4, 'Hobby'),
(5, 'Komunikasi'),
(6, 'Hukum'),
(7, 'Agama'),
(8, 'Populer'),
(9, 'Komik'),
(10, 'Dewasa'),
(12, 'Kids');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'admministrator'),
(2, 'member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `tanggal_input` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `image`, `password`, `role_id`, `is_active`, `tanggal_input`) VALUES
(1, 'Imam Nawawi x', 'imam.imw@gmail.com', 'pro1605779080.jpg', '$2y$10$jLgqE1IBWTdVFuBfgq4u/upFdTkdRmKSigfZ7M8qHbjkTmnf26D5a', 1, 1, 1554218983),
(2, 'Maruloh, M.Kom', 'maruloh.mru@bsi.ac.id', 'pro1579684727.jpg', '$2y$10$beSdsua15A.A.tmiLIsmfuQCLWGdptUwjXlGI2u2kqxlpPXpXqZ72', 2, 1, 1554219788),
(3, 'Andriansah', 'andriansah.aiy@bsi.ac.id', 'pro1579677270.jpg', '$2y$10$Aa2soOYCyttqpIa1m8/79uc6Psz563XlTPcs0E4TuOji/UiKGox4i', 2, 1, 1579677270),
(4, 'Mochamad Nandi Susila', 'mochamad.mnl@bsi.ac.id', 'pro1579677559.jpg', '$2y$10$N6itMt2sWT1dPXwedtmhsOFC/2eYoQ9k.MI5t1jNwGPE06oVv5Oqm', 2, 1, 1579677559),
(5, 'Nandi', 'nandi@gmail.com', 'default.jpg', '$2y$10$3yF1EI7QF4vDYz4uM3oSfejUtrfzdTnFsUfl.kxAIByjPJ1X6tzD2', 2, 1, 1585627265),
(6, 'Elearning', 'Elearn@gmail.com', 'default.jpg', '$2y$10$fzy4O9SHjqFIhbfzro7kq.GVI2QBPM0ROH0qHmu8eo1714mzNs4aG', 2, 1, 1585672094),
(7, 'rio kusumah1', 'rio@gmail.com', 'pro1585674983.jpg', '$2y$10$jmppNsxyfdQ/XC/5fyGXVeqtDVcPwKG2bihfYjM.h6gkog1sCeWs2', 2, 1, 1585673039),
(9, 'BUDI', 'budi@gmail.com', 'default.jpg', '$2y$10$Hm/Y6HEB4l1B6otBxbXGze.BpdoB3YoLRFCE44ReLM9otU3GBBlSW', 2, 1, 1585699680),
(10, 'Rio Budiman OK', 'tesrio@gmail.com', 'pro1585723343.jpg', '$2y$10$XZV0MWZ6z4wQ6pjJU2N6HuHiHzHYxYw1EldKmzoKwugoQL9BNUFnq', 2, 1, 1585722652),
(11, 'BUDI', 'budi123@gmail.com', 'default.jpg', '$2y$10$M3nnoACBgh55s3Sges5/f.dEHyp/CeOaqmz1rauAEZqV0LpplfOd.', 2, 1, 1605778048),
(12, 'bsd123 OK', 'bsd123@gmail.com', 'pro1605796406.jpg', '$2y$10$qvSezpdFnCnmDfJSnBFXY.N.VNkt4G6DpZjxvrSilB8Tdzy5ULduC', 2, 1, 1605796003);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;