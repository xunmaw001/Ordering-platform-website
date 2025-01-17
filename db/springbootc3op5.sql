-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootc3op5
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616396989588 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-03-22 07:00:54',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-22 07:00:54',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-22 07:00:54',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-22 07:00:54',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-22 07:00:54',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-22 07:00:54',6,'宇宙银河系月球1号','月某','13823888886','是'),(1616396989587,'2021-03-22 07:09:49',1616396949277,'广东省揭阳市榕城区中山街道东环城路中兴园','陈一','12312312312','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caipinfenlei`
--

DROP TABLE IF EXISTS `caipinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caipinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinfenlei` varchar(200) NOT NULL COMMENT '菜品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `caipinfenlei` (`caipinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1616396835971 DEFAULT CHARSET=utf8 COMMENT='菜品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caipinfenlei`
--

LOCK TABLES `caipinfenlei` WRITE;
/*!40000 ALTER TABLE `caipinfenlei` DISABLE KEYS */;
INSERT INTO `caipinfenlei` VALUES (21,'2021-03-22 07:00:54','菜品分类1'),(22,'2021-03-22 07:00:54','菜品分类2'),(23,'2021-03-22 07:00:54','菜品分类3'),(24,'2021-03-22 07:00:54','菜品分类4'),(25,'2021-03-22 07:00:54','菜品分类5'),(26,'2021-03-22 07:00:54','菜品分类6'),(1616396829719,'2021-03-22 07:07:08','家常菜'),(1616396835970,'2021-03-22 07:07:14','下午茶');
/*!40000 ALTER TABLE `caipinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caipinpingjia`
--

DROP TABLE IF EXISTS `caipinpingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caipinpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `caipinmingcheng` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `caipinfenlei` varchar(200) DEFAULT NULL COMMENT '菜品分类',
  `pingfen` varchar(200) DEFAULT NULL COMMENT '评分',
  `tianjiatupian` varchar(200) DEFAULT NULL COMMENT '添加图片',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616397215696 DEFAULT CHARSET=utf8 COMMENT='菜品评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caipinpingjia`
--

LOCK TABLES `caipinpingjia` WRITE;
/*!40000 ALTER TABLE `caipinpingjia` DISABLE KEYS */;
INSERT INTO `caipinpingjia` VALUES (41,'2021-03-22 07:00:54','订单编号1','菜品名称1','菜品分类1','1','http://localhost:8080/springbootc3op5/upload/1616396691156.jpg','评价内容1','2021-03-22','用户名1','是',''),(42,'2021-03-22 07:00:54','订单编号2','菜品名称2','菜品分类2','1','http://localhost:8080/springbootc3op5/upload/caipinpingjia_tianjiatupian2.jpg','评价内容2','2021-03-22','用户名2','是',''),(43,'2021-03-22 07:00:54','订单编号3','菜品名称3','菜品分类3','1','http://localhost:8080/springbootc3op5/upload/1616396702049.jpg','评价内容3','2021-03-22','用户名3','是',''),(44,'2021-03-22 07:00:54','订单编号4','菜品名称4','菜品分类4','1','http://localhost:8080/springbootc3op5/upload/1616396715362.jpg','评价内容4','2021-03-22','用户名4','是',''),(45,'2021-03-22 07:00:54','订单编号5','菜品名称5','菜品分类5','1','http://localhost:8080/springbootc3op5/upload/1616396724361.jpg','评价内容5','2021-03-22','用户名5','是',''),(46,'2021-03-22 07:00:54','订单编号6','菜品名称6','菜品分类6','1','http://localhost:8080/springbootc3op5/upload/1616396735143.jpg','评价内容6','2021-03-22','用户名6','是',''),(1616397215695,'2021-03-22 07:13:35','20213221511476046811','麻辣小龙虾','家常菜','5','http://localhost:8080/springbootc3op5/upload/1616397201253.jpg','鲜香麻辣，小龙虾很好吃','2021-03-22','1','是','感谢支持');
/*!40000 ALTER TABLE `caipinpingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caipinxinxi`
--

DROP TABLE IF EXISTS `caipinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinmingcheng` varchar(200) NOT NULL COMMENT '菜品名称',
  `caipinfenlei` varchar(200) NOT NULL COMMENT '菜品分类',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `cailiao` varchar(200) DEFAULT NULL COMMENT '材料',
  `fenliang` varchar(200) DEFAULT NULL COMMENT '份量',
  `caipinjieshao` longtext COMMENT '菜品介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616396875160 DEFAULT CHARSET=utf8 COMMENT='菜品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caipinxinxi`
--

LOCK TABLES `caipinxinxi` WRITE;
/*!40000 ALTER TABLE `caipinxinxi` DISABLE KEYS */;
INSERT INTO `caipinxinxi` VALUES (31,'2021-03-22 07:00:54','菜品名称1','菜品分类1','http://localhost:8080/springbootc3op5/upload/1616396640452.jpg','材料1','份量1','<p>菜品介绍1</p>','2021-03-22 15:03:54',2,99.9),(32,'2021-03-22 07:00:54','菜品名称2','菜品分类2','http://localhost:8080/springbootc3op5/upload/1616396648603.jpg','材料2','份量2','<p>菜品介绍2</p>','2021-03-22 15:04:03',3,99.9),(33,'2021-03-22 07:00:54','菜品名称3','菜品分类3','http://localhost:8080/springbootc3op5/upload/1616396657738.jpg','材料3','份量3','<p>菜品介绍3</p>','2021-03-22 15:04:12',4,99.9),(34,'2021-03-22 07:00:54','菜品名称4','菜品分类4','http://localhost:8080/springbootc3op5/upload/1616396666787.jpg','材料4','份量4','<p>菜品介绍4</p>','2021-03-22 15:04:21',5,99.9),(35,'2021-03-22 07:00:54','菜品名称5','菜品分类5','http://localhost:8080/springbootc3op5/upload/1616396675843.jpg','材料5','份量5','<p>菜品介绍5</p>','2021-03-22 15:11:18',16,99.9),(36,'2021-03-22 07:00:54','菜品名称6','菜品分类6','http://localhost:8080/springbootc3op5/upload/1616396684482.jpg','材料6','份量6','<p>菜品介绍6</p>','2021-03-22 15:09:15',9,99.9),(1616396875159,'2021-03-22 07:07:54','麻辣小龙虾','家常菜','http://localhost:8080/springbootc3op5/upload/1616396846658.jpg','小龙虾','约500g','<p>花式麻辣小龙虾是一道色香味俱全的名肴，属于川菜系。肉香味美，色泽诱人，滋补强壮，口感甚佳，令人垂涎的现代菜肴。</p><p><img src=\"http://localhost:8080/springbootc3op5/upload/1616396872859.jpg\"></p>','2021-03-22 15:11:46',3,88);
/*!40000 ALTER TABLE `caipinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'caipinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616397048123 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616397139663 DEFAULT CHARSET=utf8 COMMENT='在线客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (51,'2021-03-22 07:00:54',1,1,'提问1','回复1',1),(52,'2021-03-22 07:00:54',2,2,'提问2','回复2',2),(53,'2021-03-22 07:00:54',3,3,'提问3','回复3',3),(54,'2021-03-22 07:00:54',4,4,'提问4','回复4',4),(55,'2021-03-22 07:00:54',5,5,'提问5','回复5',5),(56,'2021-03-22 07:00:54',6,6,'提问6','回复6',6),(1616397095963,'2021-03-22 07:11:35',1616396949277,NULL,'请问有红烧肉吗',NULL,0),(1616397139662,'2021-03-22 07:12:18',1616396949277,1,NULL,'暂时没有',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springbootc3op5/upload/1616396884279.jpg'),(2,'picture2','http://localhost:8080/springbootc3op5/upload/1616396892070.jpg'),(3,'picture3','http://localhost:8080/springbootc3op5/upload/1616396907373.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusscaipinxinxi`
--

DROP TABLE IF EXISTS `discusscaipinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusscaipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='菜品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusscaipinxinxi`
--

LOCK TABLES `discusscaipinxinxi` WRITE;
/*!40000 ALTER TABLE `discusscaipinxinxi` DISABLE KEYS */;
INSERT INTO `discusscaipinxinxi` VALUES (111,'2021-03-22 07:00:54',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-03-22 07:00:54',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-03-22 07:00:54',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-03-22 07:00:54',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-03-22 07:00:54',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-03-22 07:00:54',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusscaipinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616396929920 DEFAULT CHARSET=utf8 COMMENT='菜品资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2021-03-22 07:00:54','标题1','简介1','http://localhost:8080/springbootc3op5/upload/1616396744064.jpg','<p>内容1</p>'),(102,'2021-03-22 07:00:54','标题2','简介2','http://localhost:8080/springbootc3op5/upload/1616396752326.jpg','<p>内容2</p>'),(103,'2021-03-22 07:00:54','标题3','简介3','http://localhost:8080/springbootc3op5/upload/1616396760388.jpg','<p>内容3</p>'),(104,'2021-03-22 07:00:54','标题4','简介4','http://localhost:8080/springbootc3op5/upload/1616396768667.jpg','<p>内容4</p>'),(105,'2021-03-22 07:00:54','标题5','简介5','http://localhost:8080/springbootc3op5/upload/1616396779185.jpg','<p>内容5</p>'),(106,'2021-03-22 07:00:54','标题6','简介6','http://localhost:8080/springbootc3op5/upload/1616396788250.jpg','<p>内容6</p>'),(1616396929919,'2021-03-22 07:08:49','菜品优惠资讯','菜品优惠','http://localhost:8080/springbootc3op5/upload/1616396918151.jpg','<p>菜品优惠</p><p><img src=\"http://localhost:8080/springbootc3op5/upload/1616396928363.jpg\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'caipinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1616397107285 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1616397107284,'2021-03-22 07:11:46','20213221511476046811','caipinxinxi',1616396949277,1616396875159,'麻辣小龙虾','http://localhost:8080/springbootc3op5/upload/1616396846658.jpg',2,88,88,176,176,1,'已完成','广东省揭阳市榕城区中山街道东环城路中兴园');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616397047116 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1616397047115,'2021-03-22 07:10:46',1616396949277,35,'caipinxinxi','菜品名称5','http://localhost:8080/springbootc3op5/upload/1616396675843.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'用户1','yonghu','用户','afnftu0i5tt22ritytg545p7t3qwdrfd','2021-03-22 07:02:52','2021-03-22 08:02:52'),(2,1,'abo','users','管理员','6wxi9twz2ggytu8s30icddp55x530ts6','2021-03-22 07:03:47','2021-03-22 08:13:53'),(3,1616396949277,'1','yonghu','用户','qdnzghkhzl1gg7t29vh7eqljti4fom72','2021-03-22 07:09:14','2021-03-22 08:12:34');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-22 07:00:54');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1616396949278 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-22 07:00:54','用户1','123456','姓名1','http://localhost:8080/springbootc3op5/upload/yonghu_touxiang1.jpg','男','13823888881',100),(12,'2021-03-22 07:00:54','用户2','123456','姓名2','http://localhost:8080/springbootc3op5/upload/yonghu_touxiang2.jpg','男','13823888882',100),(13,'2021-03-22 07:00:54','用户3','123456','姓名3','http://localhost:8080/springbootc3op5/upload/yonghu_touxiang3.jpg','男','13823888883',100),(14,'2021-03-22 07:00:54','用户4','123456','姓名4','http://localhost:8080/springbootc3op5/upload/yonghu_touxiang4.jpg','男','13823888884',100),(15,'2021-03-22 07:00:54','用户5','123456','姓名5','http://localhost:8080/springbootc3op5/upload/yonghu_touxiang5.jpg','男','13823888885',100),(16,'2021-03-22 07:00:54','用户6','123456','姓名6','http://localhost:8080/springbootc3op5/upload/yonghu_touxiang6.jpg','男','13823888886',100),(1616396949277,'2021-03-22 07:09:09','1','1','陈一','http://localhost:8080/springbootc3op5/upload/1616396963168.jpg','女','12312312312',324);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-30 19:31:40
