-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th2 25, 2022 lúc 08:53 PM
-- Phiên bản máy phục vụ: 5.7.37
-- Phiên bản PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `t1645018_ttt`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `abc`
--

CREATE TABLE `abc` (
  `id` int(11) NOT NULL,
  `code` varchar(32) DEFAULT NULL,
  `username` text CHARACTER SET utf8mb4 NOT NULL,
  `sdt` text,
  `id_fb` text CHARACTER SET utf8mb4,
  `website` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `dich_vu` text CHARACTER SET utf8mb4,
  `mo_ta` text CHARACTER SET utf8mb4,
  `money` text CHARACTER SET utf8mb4,
  `gmail` text CHARACTER SET utf8mb4,
  `ngan_hang` text CHARACTER SET utf8mb4,
  `vi_momo` text CHARACTER SET utf8mb4
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `taikhoan` varchar(32) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `matkhau` varchar(32) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `level` varchar(32) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `taikhoan`, `matkhau`, `level`) VALUES
(1, 'leduchoangphuc2504', 'phucdz', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anh_bang_chung`
--

CREATE TABLE `anh_bang_chung` (
  `id` int(11) NOT NULL,
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `anh` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `anh_bang_chung`
--

INSERT INTO `anh_bang_chung` (`id`, `code`, `anh`) VALUES
(1, 'trinh-ngoc-minh', '/BC/images_3642.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `code` varchar(9999) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `anh` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `time` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `blog`
--

INSERT INTO `blog` (`id`, `code`, `anh`, `title`, `note`, `status`, `time`) VALUES
(1, 'post-by-minh', '/admin/images/blog_1354.png', 'POST BY MINH', '<p>hello các vợ</p>', 'hoantat', '02:41 25-02-2022');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cards`
--

CREATE TABLE `cards` (
  `id` int(11) NOT NULL,
  `code` varchar(32) DEFAULT NULL,
  `username` text CHARACTER SET utf8mb4 NOT NULL,
  `sdt` text,
  `id_fb` text CHARACTER SET utf8mb4,
  `website` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `dich_vu` text CHARACTER SET utf8mb4,
  `mo_ta` text CHARACTER SET utf8mb4,
  `money` text CHARACTER SET utf8mb4,
  `gmail` text CHARACTER SET utf8mb4,
  `ngan_hang` text CHARACTER SET utf8mb4,
  `vi_momo` text CHARACTER SET utf8mb4
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `cards`
--

INSERT INTO `cards` (`id`, `code`, `username`, `sdt`, `id_fb`, `website`, `dich_vu`, `mo_ta`, `money`, `gmail`, `ngan_hang`, `vi_momo`) VALUES
(1, 'le-duc-hoang-phuc', 'Lê Đức Hoàng Phúc ', '0344447499', '100024922485378', 'hoangphuc.it', 'Hiệp Hội Trung Gian Uy Tín', 'Trung Gian Uy Tín', '1111111', 'phucgdtg', 'Mb Bank :00025042003 <br> Mb Bank : 225042003<br> Mb Bank : 250042003<br> Mb Bank : 789250403', '0344447499'),
(2, 'trinh-ngoc-minh', 'Trịnh Ngọc Minh', '0334955115', '100041184143723', 'ngocminh.it', '	Thiết kế Website chuẩn SEO', '<p>ok</p>', '10000000', 'trinhngocminhads@gmail.com', 'MB Bank: 1234034567', '0387911646');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `code`) VALUES
(1, '	Thiết kế Website chuẩn SEO'),
(2, 'Cung Cấp Dịch Vụ MXH'),
(3, 'Hiệp Hội Trung Gian Uy Tín');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `site_image` text,
  `site_domain` text,
  `site_favicon` text,
  `site_logo` text,
  `site_tenweb` text,
  `site_mota` text,
  `facebook` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci,
  `sdt_admin` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `setting`
--

INSERT INTO `setting` (`id`, `site_image`, `site_domain`, `site_favicon`, `site_logo`, `site_tenweb`, `site_mota`, `facebook`, `sdt_admin`) VALUES
(1, '/img/cover.png', 'https://demo.mmovip.me/', '/upload/favicon_3521.png', 'https://i.imgur.com/HYMox8C.png\r\n', 'DEMO.MMOVIP.ME', 'fb', 'https://www.facebook.com/hacked', '113');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `ly_do` text,
  `status` varchar(32) NOT NULL,
  `sdt` text,
  `ngan_hang` text,
  `stk` text,
  `ctk` varchar(255) NOT NULL,
  `anh` varchar(100) DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `bangchung` text,
  `hoten_np` text,
  `sdt_np` text,
  `id_fb` text,
  `ngay` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `ticket`
--

INSERT INTO `ticket` (`id`, `username`, `ly_do`, `status`, `sdt`, `ngan_hang`, `stk`, `ctk`, `anh`, `code`, `bangchung`, `hoten_np`, `sdt_np`, `id_fb`, `ngay`) VALUES
(1, 'Trinh Ngoc Minh ', 'hehe', 'scam', '0334955115', 'MBBANK', '0334955115', 'TRINH NGOC MINH', 'trinh-ngoc-minh', 'trinh-ngoc-minh', NULL, 'Trinh Ngoc Minh', '113', 'fb.com/nminh.it', '25-02-2022');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `level` varchar(32) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `code`, `username`, `password`, `level`) VALUES
(1, 'ABCXYZ', 'admin', 'admin', '1'),
(2, 'ABCXYZ', 'admin', 'admin', '1');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `abc`
--
ALTER TABLE `abc`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `anh_bang_chung`
--
ALTER TABLE `anh_bang_chung`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `abc`
--
ALTER TABLE `abc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `anh_bang_chung`
--
ALTER TABLE `anh_bang_chung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT cho bảng `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
