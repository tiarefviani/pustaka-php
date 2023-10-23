-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2023 at 06:13 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rpl_pustaka`
--

-- --------------------------------------------------------

--
-- Table structure for table `muda_buku`
--

CREATE TABLE `muda_buku` (
  `isbn` varchar(25) NOT NULL,
  `judul_buku` varchar(100) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `tahun_terbit` int(4) NOT NULL,
  `jenis_buku` varchar(25) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `muda_buku`
--

INSERT INTO `muda_buku` (`isbn`, `judul_buku`, `pengarang`, `penerbit`, `tahun_terbit`, `jenis_buku`, `stok`) VALUES
('8765239581244', 'Galaksi Kejora', 'PoppyPertiwi', 'Coconuts Book', 2023, 'Novel', 0),
('9786235953106', 'eccedentesiast ', 'martabakkolor', 'Akad ', 2022, 'Novel', 15),
('987654321', 'Galaksi', 'PoppyPertiwi', 'Coconuts Book', 2017, 'Novel', 10);

-- --------------------------------------------------------

--
-- Table structure for table `muda_peminjaman`
--

CREATE TABLE `muda_peminjaman` (
  `id_peminjaman` varchar(255) NOT NULL,
  `nisn` varchar(100) NOT NULL,
  `isbn` varchar(25) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `status` enum('pinjam','selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `muda_peminjaman`
--

INSERT INTO `muda_peminjaman` (`id_peminjaman`, `nisn`, `isbn`, `tanggal_pinjam`, `tanggal_kembali`, `status`) VALUES
('240823130213', '102365984', '9786235953106', '2023-08-24', '2023-08-27', 'pinjam');

-- --------------------------------------------------------

--
-- Table structure for table `muda_siswa`
--

CREATE TABLE `muda_siswa` (
  `nisn` varchar(10) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(2) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `muda_siswa`
--

INSERT INTO `muda_siswa` (`nisn`, `nama_siswa`, `jurusan`, `jenis_kelamin`, `alamat`, `no_hp`) VALUES
('102365984', 'Miranda Putri Chan', 'PPLG', 'P', 'fcreyhrthtyht', '08885632415'),
('1023659874', 'Tia Refviani Putri', 'PPLG', 'P', 'Jl. Cipta Karya', '089515497590');

-- --------------------------------------------------------

--
-- Table structure for table `muda_user`
--

CREATE TABLE `muda_user` (
  `id` int(11) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('admin','user') NOT NULL,
  `is_active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `muda_user`
--

INSERT INTO `muda_user` (`id`, `nama_user`, `username`, `password`, `level`, `is_active`) VALUES
(4, 'Administrator', 'tiarfviani', '$2y$10$3HXlaS3gx6uLQTd55QkAquW/R0GYV3tNMu0QqJYsDN23zJz50ItG2', 'admin', 1),
(5, 'Tia Refviani Putri', 'cwyysdump', '$2y$10$yB.e9Sd2Cp00OMq/Ez6VpucuM6m92sffJD/9IX0S1jRCmvYDkxYji', 'admin', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `muda_buku`
--
ALTER TABLE `muda_buku`
  ADD PRIMARY KEY (`isbn`);

--
-- Indexes for table `muda_peminjaman`
--
ALTER TABLE `muda_peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`);

--
-- Indexes for table `muda_siswa`
--
ALTER TABLE `muda_siswa`
  ADD PRIMARY KEY (`nisn`);

--
-- Indexes for table `muda_user`
--
ALTER TABLE `muda_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `muda_user`
--
ALTER TABLE `muda_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
