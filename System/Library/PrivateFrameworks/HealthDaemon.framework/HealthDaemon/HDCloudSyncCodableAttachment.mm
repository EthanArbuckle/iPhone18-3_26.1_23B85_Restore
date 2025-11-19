@interface HDCloudSyncCodableAttachment
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasFileSize:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCloudSyncCodableAttachment

- (void)setHasFileSize:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCloudSyncCodableAttachment;
  v4 = [(HDCloudSyncCodableAttachment *)&v8 description];
  v5 = [(HDCloudSyncCodableAttachment *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  fileName = self->_fileName;
  if (fileName)
  {
    [v3 setObject:fileName forKey:@"fileName"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_fileSize];
    [v4 setObject:v6 forKey:@"fileSize"];
  }

  mimeType = self->_mimeType;
  if (mimeType)
  {
    [v4 setObject:mimeType forKey:@"mimeType"];
  }

  fileHash = self->_fileHash;
  if (fileHash)
  {
    [v4 setObject:fileHash forKey:@"fileHash"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_creationDate];
    [v4 setObject:v9 forKey:@"creationDate"];
  }

  metadata = self->_metadata;
  if (metadata)
  {
    [v4 setObject:metadata forKey:@"metadata"];
  }

  assetData = self->_assetData;
  if (assetData)
  {
    [v4 setObject:assetData forKey:@"assetData"];
  }

  encryptionKey = self->_encryptionKey;
  if (encryptionKey)
  {
    [v4 setObject:encryptionKey forKey:@"encryptionKey"];
  }

  systemBuildVersion = self->_systemBuildVersion;
  if (systemBuildVersion)
  {
    [v4 setObject:systemBuildVersion forKey:@"systemBuildVersion"];
  }

  productType = self->_productType;
  if (productType)
  {
    [v4 setObject:productType forKey:@"productType"];
  }

  deviceName = self->_deviceName;
  if (deviceName)
  {
    [v4 setObject:deviceName forKey:@"deviceName"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_fileName)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    fileSize = self->_fileSize;
    PBDataWriterWriteInt64Field();
    v4 = v7;
  }

  if (self->_mimeType)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_fileHash)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (*&self->_has)
  {
    creationDate = self->_creationDate;
    PBDataWriterWriteDoubleField();
    v4 = v7;
  }

  if (self->_metadata)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }

  if (self->_assetData)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }

  if (self->_encryptionKey)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }

  if (self->_systemBuildVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_productType)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_deviceName)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_fileName)
  {
    [v4 setFileName:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 2) = self->_fileSize;
    *(v4 + 96) |= 2u;
  }

  if (self->_mimeType)
  {
    [v5 setMimeType:?];
    v4 = v5;
  }

  if (self->_fileHash)
  {
    [v5 setFileHash:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_creationDate;
    *(v4 + 96) |= 1u;
  }

  if (self->_metadata)
  {
    [v5 setMetadata:?];
    v4 = v5;
  }

  if (self->_assetData)
  {
    [v5 setAssetData:?];
    v4 = v5;
  }

  if (self->_encryptionKey)
  {
    [v5 setEncryptionKey:?];
    v4 = v5;
  }

  if (self->_systemBuildVersion)
  {
    [v5 setSystemBuildVersion:?];
    v4 = v5;
  }

  if (self->_productType)
  {
    [v5 setProductType:?];
    v4 = v5;
  }

  if (self->_deviceName)
  {
    [v5 setDeviceName:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_fileName copyWithZone:a3];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_fileSize;
    *(v5 + 96) |= 2u;
  }

  v8 = [(NSString *)self->_mimeType copyWithZone:a3];
  v9 = *(v5 + 72);
  *(v5 + 72) = v8;

  v10 = [(NSString *)self->_fileHash copyWithZone:a3];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_creationDate;
    *(v5 + 96) |= 1u;
  }

  v12 = [(NSData *)self->_metadata copyWithZone:a3];
  v13 = *(v5 + 64);
  *(v5 + 64) = v12;

  v14 = [(NSData *)self->_assetData copyWithZone:a3];
  v15 = *(v5 + 24);
  *(v5 + 24) = v14;

  v16 = [(NSData *)self->_encryptionKey copyWithZone:a3];
  v17 = *(v5 + 40);
  *(v5 + 40) = v16;

  v18 = [(NSString *)self->_systemBuildVersion copyWithZone:a3];
  v19 = *(v5 + 88);
  *(v5 + 88) = v18;

  v20 = [(NSString *)self->_productType copyWithZone:a3];
  v21 = *(v5 + 80);
  *(v5 + 80) = v20;

  v22 = [(NSString *)self->_deviceName copyWithZone:a3];
  v23 = *(v5 + 32);
  *(v5 + 32) = v22;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  fileName = self->_fileName;
  if (fileName | *(v4 + 7))
  {
    if (![(NSString *)fileName isEqual:?])
    {
      goto LABEL_30;
    }
  }

  v6 = *(v4 + 96);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 96) & 2) == 0 || self->_fileSize != *(v4 + 2))
    {
      goto LABEL_30;
    }
  }

  else if ((*(v4 + 96) & 2) != 0)
  {
LABEL_30:
    v16 = 0;
    goto LABEL_31;
  }

  mimeType = self->_mimeType;
  if (mimeType | *(v4 + 9) && ![(NSString *)mimeType isEqual:?])
  {
    goto LABEL_30;
  }

  fileHash = self->_fileHash;
  if (fileHash | *(v4 + 6))
  {
    if (![(NSString *)fileHash isEqual:?])
    {
      goto LABEL_30;
    }
  }

  v9 = *(v4 + 96);
  if (*&self->_has)
  {
    if ((*(v4 + 96) & 1) == 0 || self->_creationDate != *(v4 + 1))
    {
      goto LABEL_30;
    }
  }

  else if (*(v4 + 96))
  {
    goto LABEL_30;
  }

  metadata = self->_metadata;
  if (metadata | *(v4 + 8) && ![(NSData *)metadata isEqual:?])
  {
    goto LABEL_30;
  }

  assetData = self->_assetData;
  if (assetData | *(v4 + 3))
  {
    if (![(NSData *)assetData isEqual:?])
    {
      goto LABEL_30;
    }
  }

  encryptionKey = self->_encryptionKey;
  if (encryptionKey | *(v4 + 5))
  {
    if (![(NSData *)encryptionKey isEqual:?])
    {
      goto LABEL_30;
    }
  }

  systemBuildVersion = self->_systemBuildVersion;
  if (systemBuildVersion | *(v4 + 11))
  {
    if (![(NSString *)systemBuildVersion isEqual:?])
    {
      goto LABEL_30;
    }
  }

  productType = self->_productType;
  if (productType | *(v4 + 10))
  {
    if (![(NSString *)productType isEqual:?])
    {
      goto LABEL_30;
    }
  }

  deviceName = self->_deviceName;
  if (deviceName | *(v4 + 4))
  {
    v16 = [(NSString *)deviceName isEqual:?];
  }

  else
  {
    v16 = 1;
  }

LABEL_31:

  return v16;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_fileName hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_fileSize;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_mimeType hash];
  v6 = [(NSString *)self->_fileHash hash];
  if (*&self->_has)
  {
    creationDate = self->_creationDate;
    if (creationDate < 0.0)
    {
      creationDate = -creationDate;
    }

    *v7.i64 = floor(creationDate + 0.5);
    v11 = (creationDate - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v8, v7).i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  v13 = v4 ^ v3 ^ v5 ^ v6;
  v14 = v9 ^ [(NSData *)self->_metadata hash];
  v15 = v13 ^ v14 ^ [(NSData *)self->_assetData hash];
  v16 = [(NSData *)self->_encryptionKey hash];
  v17 = v16 ^ [(NSString *)self->_systemBuildVersion hash];
  v18 = v17 ^ [(NSString *)self->_productType hash];
  return v15 ^ v18 ^ [(NSString *)self->_deviceName hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 7))
  {
    [(HDCloudSyncCodableAttachment *)self setFileName:?];
    v4 = v5;
  }

  if ((*(v4 + 96) & 2) != 0)
  {
    self->_fileSize = *(v4 + 2);
    *&self->_has |= 2u;
  }

  if (*(v4 + 9))
  {
    [(HDCloudSyncCodableAttachment *)self setMimeType:?];
    v4 = v5;
  }

  if (*(v4 + 6))
  {
    [(HDCloudSyncCodableAttachment *)self setFileHash:?];
    v4 = v5;
  }

  if (*(v4 + 96))
  {
    self->_creationDate = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 8))
  {
    [(HDCloudSyncCodableAttachment *)self setMetadata:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(HDCloudSyncCodableAttachment *)self setAssetData:?];
    v4 = v5;
  }

  if (*(v4 + 5))
  {
    [(HDCloudSyncCodableAttachment *)self setEncryptionKey:?];
    v4 = v5;
  }

  if (*(v4 + 11))
  {
    [(HDCloudSyncCodableAttachment *)self setSystemBuildVersion:?];
    v4 = v5;
  }

  if (*(v4 + 10))
  {
    [(HDCloudSyncCodableAttachment *)self setProductType:?];
    v4 = v5;
  }

  if (*(v4 + 4))
  {
    [(HDCloudSyncCodableAttachment *)self setDeviceName:?];
    v4 = v5;
  }
}

@end