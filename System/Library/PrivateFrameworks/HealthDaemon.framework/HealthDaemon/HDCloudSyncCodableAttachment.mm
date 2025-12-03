@interface HDCloudSyncCodableAttachment
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasFileSize:(BOOL)size;
- (void)writeTo:(id)to;
@end

@implementation HDCloudSyncCodableAttachment

- (void)setHasFileSize:(BOOL)size
{
  if (size)
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
  dictionaryRepresentation = [(HDCloudSyncCodableAttachment *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  fileName = self->_fileName;
  if (fileName)
  {
    [dictionary setObject:fileName forKey:@"fileName"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_fileName)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    fileSize = self->_fileSize;
    PBDataWriterWriteInt64Field();
    toCopy = v7;
  }

  if (self->_mimeType)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_fileHash)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    creationDate = self->_creationDate;
    PBDataWriterWriteDoubleField();
    toCopy = v7;
  }

  if (self->_metadata)
  {
    PBDataWriterWriteDataField();
    toCopy = v7;
  }

  if (self->_assetData)
  {
    PBDataWriterWriteDataField();
    toCopy = v7;
  }

  if (self->_encryptionKey)
  {
    PBDataWriterWriteDataField();
    toCopy = v7;
  }

  if (self->_systemBuildVersion)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_productType)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_deviceName)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_fileName)
  {
    [toCopy setFileName:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 2) = self->_fileSize;
    *(toCopy + 96) |= 2u;
  }

  if (self->_mimeType)
  {
    [v5 setMimeType:?];
    toCopy = v5;
  }

  if (self->_fileHash)
  {
    [v5 setFileHash:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_creationDate;
    *(toCopy + 96) |= 1u;
  }

  if (self->_metadata)
  {
    [v5 setMetadata:?];
    toCopy = v5;
  }

  if (self->_assetData)
  {
    [v5 setAssetData:?];
    toCopy = v5;
  }

  if (self->_encryptionKey)
  {
    [v5 setEncryptionKey:?];
    toCopy = v5;
  }

  if (self->_systemBuildVersion)
  {
    [v5 setSystemBuildVersion:?];
    toCopy = v5;
  }

  if (self->_productType)
  {
    [v5 setProductType:?];
    toCopy = v5;
  }

  if (self->_deviceName)
  {
    [v5 setDeviceName:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_fileName copyWithZone:zone];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_fileSize;
    *(v5 + 96) |= 2u;
  }

  v8 = [(NSString *)self->_mimeType copyWithZone:zone];
  v9 = *(v5 + 72);
  *(v5 + 72) = v8;

  v10 = [(NSString *)self->_fileHash copyWithZone:zone];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_creationDate;
    *(v5 + 96) |= 1u;
  }

  v12 = [(NSData *)self->_metadata copyWithZone:zone];
  v13 = *(v5 + 64);
  *(v5 + 64) = v12;

  v14 = [(NSData *)self->_assetData copyWithZone:zone];
  v15 = *(v5 + 24);
  *(v5 + 24) = v14;

  v16 = [(NSData *)self->_encryptionKey copyWithZone:zone];
  v17 = *(v5 + 40);
  *(v5 + 40) = v16;

  v18 = [(NSString *)self->_systemBuildVersion copyWithZone:zone];
  v19 = *(v5 + 88);
  *(v5 + 88) = v18;

  v20 = [(NSString *)self->_productType copyWithZone:zone];
  v21 = *(v5 + 80);
  *(v5 + 80) = v20;

  v22 = [(NSString *)self->_deviceName copyWithZone:zone];
  v23 = *(v5 + 32);
  *(v5 + 32) = v22;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  fileName = self->_fileName;
  if (fileName | *(equalCopy + 7))
  {
    if (![(NSString *)fileName isEqual:?])
    {
      goto LABEL_30;
    }
  }

  v6 = *(equalCopy + 96);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 96) & 2) == 0 || self->_fileSize != *(equalCopy + 2))
    {
      goto LABEL_30;
    }
  }

  else if ((*(equalCopy + 96) & 2) != 0)
  {
LABEL_30:
    v16 = 0;
    goto LABEL_31;
  }

  mimeType = self->_mimeType;
  if (mimeType | *(equalCopy + 9) && ![(NSString *)mimeType isEqual:?])
  {
    goto LABEL_30;
  }

  fileHash = self->_fileHash;
  if (fileHash | *(equalCopy + 6))
  {
    if (![(NSString *)fileHash isEqual:?])
    {
      goto LABEL_30;
    }
  }

  v9 = *(equalCopy + 96);
  if (*&self->_has)
  {
    if ((*(equalCopy + 96) & 1) == 0 || self->_creationDate != *(equalCopy + 1))
    {
      goto LABEL_30;
    }
  }

  else if (*(equalCopy + 96))
  {
    goto LABEL_30;
  }

  metadata = self->_metadata;
  if (metadata | *(equalCopy + 8) && ![(NSData *)metadata isEqual:?])
  {
    goto LABEL_30;
  }

  assetData = self->_assetData;
  if (assetData | *(equalCopy + 3))
  {
    if (![(NSData *)assetData isEqual:?])
    {
      goto LABEL_30;
    }
  }

  encryptionKey = self->_encryptionKey;
  if (encryptionKey | *(equalCopy + 5))
  {
    if (![(NSData *)encryptionKey isEqual:?])
    {
      goto LABEL_30;
    }
  }

  systemBuildVersion = self->_systemBuildVersion;
  if (systemBuildVersion | *(equalCopy + 11))
  {
    if (![(NSString *)systemBuildVersion isEqual:?])
    {
      goto LABEL_30;
    }
  }

  productType = self->_productType;
  if (productType | *(equalCopy + 10))
  {
    if (![(NSString *)productType isEqual:?])
    {
      goto LABEL_30;
    }
  }

  deviceName = self->_deviceName;
  if (deviceName | *(equalCopy + 4))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 7))
  {
    [(HDCloudSyncCodableAttachment *)self setFileName:?];
    fromCopy = v5;
  }

  if ((*(fromCopy + 96) & 2) != 0)
  {
    self->_fileSize = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 9))
  {
    [(HDCloudSyncCodableAttachment *)self setMimeType:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 6))
  {
    [(HDCloudSyncCodableAttachment *)self setFileHash:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 96))
  {
    self->_creationDate = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 8))
  {
    [(HDCloudSyncCodableAttachment *)self setMetadata:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(HDCloudSyncCodableAttachment *)self setAssetData:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 5))
  {
    [(HDCloudSyncCodableAttachment *)self setEncryptionKey:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 11))
  {
    [(HDCloudSyncCodableAttachment *)self setSystemBuildVersion:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 10))
  {
    [(HDCloudSyncCodableAttachment *)self setProductType:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 4))
  {
    [(HDCloudSyncCodableAttachment *)self setDeviceName:?];
    fromCopy = v5;
  }
}

@end