CREATE DATABASE QuanLyBanHang;
USE QuanLyBanHang;

CREATE TABLE customer(
cID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
cName VARCHAR(50) NOT NULL,
cAge INT NOT NULL
);


CREATE TABLE oder (
oID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
cID INT,
oDate DATETIME,
oTotalPrice DOUBLE,
CONSTRAINT fk_customer FOREIGN KEY (cID) REFERENCES customer(cID)
);

CREATE TABLE products(
pID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
pName VARCHAR(50) NOT NULL,
pPrice DOUBLE NOT NULL
);

CREATE TABLE oderDetail(
oID INT,
pID INT,
odQty INT,
PRIMARY KEY (oID,pID),
CONSTRAINT fk_oder FOREIGN KEY(oID) REFERENCES oder(oID),
CONSTRAINT fk_product FOREIGN KEY (pID) REFERENCES products(pID)
);


