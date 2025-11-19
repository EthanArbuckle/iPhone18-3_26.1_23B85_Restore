@interface HDCloudSyncCodableAttachmentReference
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasOptions:(BOOL)a3;
- (void)setHasSchemaVersion:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCloudSyncCodableAttachmentReference

- (void)setHasType:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasOptions:(BOOL)a3
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

- (void)setHasSchemaVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCloudSyncCodableAttachmentReference;
  v4 = [(HDCloudSyncCodableAttachmentReference *)&v8 description];
  v5 = [(HDCloudSyncCodableAttachmentReference *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  objectIdentifier = self->_objectIdentifier;
  if (objectIdentifier)
  {
    [v3 setObject:objectIdentifier forKey:@"objectIdentifier"];
  }

  schemaIdentifier = self->_schemaIdentifier;
  if (schemaIdentifier)
  {
    [v4 setObject:schemaIdentifier forKey:@"schemaIdentifier"];
  }

  attachmentIdentifier = self->_attachmentIdentifier;
  if (attachmentIdentifier)
  {
    [v4 setObject:attachmentIdentifier forKey:@"attachmentIdentifier"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_type];
    [v4 setObject:v16 forKey:@"type"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_9:
      if ((has & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

  v17 = [MEMORY[0x277CCABB0] numberWithDouble:self->_creationDate];
  [v4 setObject:v17 forKey:@"creationDate"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_10:
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_options];
    [v4 setObject:v9 forKey:@"options"];
  }

LABEL_11:
  metadata = self->_metadata;
  if (metadata)
  {
    [v4 setObject:metadata forKey:@"metadata"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_schemaVersion];
    [v4 setObject:v11 forKey:@"schemaVersion"];
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
  v10 = v4;
  if (self->_objectIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if (self->_schemaIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if (self->_attachmentIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt64Field();
    v4 = v10;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_9:
      if ((has & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

  creationDate = self->_creationDate;
  PBDataWriterWriteDoubleField();
  v4 = v10;
  if ((*&self->_has & 2) != 0)
  {
LABEL_10:
    options = self->_options;
    PBDataWriterWriteInt64Field();
    v4 = v10;
  }

LABEL_11:
  if (self->_metadata)
  {
    PBDataWriterWriteDataField();
    v4 = v10;
  }

  if ((*&self->_has & 4) != 0)
  {
    schemaVersion = self->_schemaVersion;
    PBDataWriterWriteInt64Field();
    v4 = v10;
  }

  if (self->_systemBuildVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if (self->_productType)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if (self->_deviceName)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_objectIdentifier)
  {
    [v4 setObjectIdentifier:?];
    v4 = v6;
  }

  if (self->_schemaIdentifier)
  {
    [v6 setSchemaIdentifier:?];
    v4 = v6;
  }

  if (self->_attachmentIdentifier)
  {
    [v6 setAttachmentIdentifier:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v4 + 4) = self->_type;
    *(v4 + 96) |= 8u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_9:
      if ((has & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

  *(v4 + 1) = *&self->_creationDate;
  *(v4 + 96) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_10:
    *(v4 + 2) = self->_options;
    *(v4 + 96) |= 2u;
  }

LABEL_11:
  if (self->_metadata)
  {
    [v6 setMetadata:?];
    v4 = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 3) = self->_schemaVersion;
    *(v4 + 96) |= 4u;
  }

  if (self->_systemBuildVersion)
  {
    [v6 setSystemBuildVersion:?];
    v4 = v6;
  }

  if (self->_productType)
  {
    [v6 setProductType:?];
    v4 = v6;
  }

  if (self->_deviceName)
  {
    [v6 setDeviceName:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_objectIdentifier copyWithZone:a3];
  v7 = *(v5 + 64);
  *(v5 + 64) = v6;

  v8 = [(NSString *)self->_schemaIdentifier copyWithZone:a3];
  v9 = *(v5 + 80);
  *(v5 + 80) = v8;

  v10 = [(NSString *)self->_attachmentIdentifier copyWithZone:a3];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 32) = self->_type;
    *(v5 + 96) |= 8u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 8) = self->_creationDate;
  *(v5 + 96) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(v5 + 16) = self->_options;
    *(v5 + 96) |= 2u;
  }

LABEL_5:
  v13 = [(NSData *)self->_metadata copyWithZone:a3];
  v14 = *(v5 + 56);
  *(v5 + 56) = v13;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 24) = self->_schemaVersion;
    *(v5 + 96) |= 4u;
  }

  v15 = [(NSString *)self->_systemBuildVersion copyWithZone:a3];
  v16 = *(v5 + 88);
  *(v5 + 88) = v15;

  v17 = [(NSString *)self->_productType copyWithZone:a3];
  v18 = *(v5 + 72);
  *(v5 + 72) = v17;

  v19 = [(NSString *)self->_deviceName copyWithZone:a3];
  v20 = *(v5 + 48);
  *(v5 + 48) = v19;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  objectIdentifier = self->_objectIdentifier;
  if (objectIdentifier | *(v4 + 8))
  {
    if (![(NSString *)objectIdentifier isEqual:?])
    {
      goto LABEL_37;
    }
  }

  schemaIdentifier = self->_schemaIdentifier;
  if (schemaIdentifier | *(v4 + 10))
  {
    if (![(NSString *)schemaIdentifier isEqual:?])
    {
      goto LABEL_37;
    }
  }

  attachmentIdentifier = self->_attachmentIdentifier;
  if (attachmentIdentifier | *(v4 + 5))
  {
    if (![(NSString *)attachmentIdentifier isEqual:?])
    {
      goto LABEL_37;
    }
  }

  has = self->_has;
  v9 = *(v4 + 96);
  if ((has & 8) != 0)
  {
    if ((*(v4 + 96) & 8) == 0 || self->_type != *(v4 + 4))
    {
      goto LABEL_37;
    }
  }

  else if ((*(v4 + 96) & 8) != 0)
  {
    goto LABEL_37;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 96) & 1) == 0 || self->_creationDate != *(v4 + 1))
    {
      goto LABEL_37;
    }
  }

  else if (*(v4 + 96))
  {
    goto LABEL_37;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 96) & 2) == 0 || self->_options != *(v4 + 2))
    {
      goto LABEL_37;
    }
  }

  else if ((*(v4 + 96) & 2) != 0)
  {
    goto LABEL_37;
  }

  metadata = self->_metadata;
  if (metadata | *(v4 + 7))
  {
    if (![(NSData *)metadata isEqual:?])
    {
LABEL_37:
      v14 = 0;
      goto LABEL_38;
    }

    has = self->_has;
    v9 = *(v4 + 96);
  }

  if ((has & 4) != 0)
  {
    if ((v9 & 4) == 0 || self->_schemaVersion != *(v4 + 3))
    {
      goto LABEL_37;
    }
  }

  else if ((v9 & 4) != 0)
  {
    goto LABEL_37;
  }

  systemBuildVersion = self->_systemBuildVersion;
  if (systemBuildVersion | *(v4 + 11) && ![(NSString *)systemBuildVersion isEqual:?])
  {
    goto LABEL_37;
  }

  productType = self->_productType;
  if (productType | *(v4 + 9))
  {
    if (![(NSString *)productType isEqual:?])
    {
      goto LABEL_37;
    }
  }

  deviceName = self->_deviceName;
  if (deviceName | *(v4 + 6))
  {
    v14 = [(NSString *)deviceName isEqual:?];
  }

  else
  {
    v14 = 1;
  }

LABEL_38:

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_objectIdentifier hash];
  v4 = [(NSString *)self->_schemaIdentifier hash];
  v5 = [(NSString *)self->_attachmentIdentifier hash];
  if ((*&self->_has & 8) != 0)
  {
    v8 = 2654435761 * self->_type;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  v8 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  creationDate = self->_creationDate;
  if (creationDate < 0.0)
  {
    creationDate = -creationDate;
  }

  *v6.i64 = floor(creationDate + 0.5);
  v10 = (creationDate - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v7, v6).i64;
  if (v10 >= 0.0)
  {
    if (v10 > 0.0)
    {
      v12 += v10;
    }
  }

  else
  {
    v12 -= fabs(v10);
  }

LABEL_9:
  if ((*&self->_has & 2) != 0)
  {
    v13 = 2654435761 * self->_options;
  }

  else
  {
    v13 = 0;
  }

  v14 = [(NSData *)self->_metadata hash];
  if ((*&self->_has & 4) != 0)
  {
    v15 = 2654435761 * self->_schemaVersion;
  }

  else
  {
    v15 = 0;
  }

  v16 = v4 ^ v3 ^ v5 ^ v8 ^ v12 ^ v13 ^ v14 ^ v15;
  v17 = [(NSString *)self->_systemBuildVersion hash];
  v18 = v17 ^ [(NSString *)self->_productType hash];
  return v16 ^ v18 ^ [(NSString *)self->_deviceName hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 8))
  {
    [(HDCloudSyncCodableAttachmentReference *)self setObjectIdentifier:?];
    v4 = v6;
  }

  if (*(v4 + 10))
  {
    [(HDCloudSyncCodableAttachmentReference *)self setSchemaIdentifier:?];
    v4 = v6;
  }

  if (*(v4 + 5))
  {
    [(HDCloudSyncCodableAttachmentReference *)self setAttachmentIdentifier:?];
    v4 = v6;
  }

  v5 = *(v4 + 96);
  if ((v5 & 8) != 0)
  {
    self->_type = *(v4 + 4);
    *&self->_has |= 8u;
    v5 = *(v4 + 96);
    if ((v5 & 1) == 0)
    {
LABEL_9:
      if ((v5 & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*(v4 + 96) & 1) == 0)
  {
    goto LABEL_9;
  }

  self->_creationDate = *(v4 + 1);
  *&self->_has |= 1u;
  if ((*(v4 + 96) & 2) != 0)
  {
LABEL_10:
    self->_options = *(v4 + 2);
    *&self->_has |= 2u;
  }

LABEL_11:
  if (*(v4 + 7))
  {
    [(HDCloudSyncCodableAttachmentReference *)self setMetadata:?];
    v4 = v6;
  }

  if ((*(v4 + 96) & 4) != 0)
  {
    self->_schemaVersion = *(v4 + 3);
    *&self->_has |= 4u;
  }

  if (*(v4 + 11))
  {
    [(HDCloudSyncCodableAttachmentReference *)self setSystemBuildVersion:?];
    v4 = v6;
  }

  if (*(v4 + 9))
  {
    [(HDCloudSyncCodableAttachmentReference *)self setProductType:?];
    v4 = v6;
  }

  if (*(v4 + 6))
  {
    [(HDCloudSyncCodableAttachmentReference *)self setDeviceName:?];
    v4 = v6;
  }
}

@end