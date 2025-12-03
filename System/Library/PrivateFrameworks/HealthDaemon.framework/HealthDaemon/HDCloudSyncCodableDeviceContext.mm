@interface HDCloudSyncCodableDeviceContext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation HDCloudSyncCodableDeviceContext

- (void)setHasType:(BOOL)type
{
  if (type)
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
  v8.super_class = HDCloudSyncCodableDeviceContext;
  v4 = [(HDCloudSyncCodableDeviceContext *)&v8 description];
  dictionaryRepresentation = [(HDCloudSyncCodableDeviceContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  syncIdentity = self->_syncIdentity;
  if (syncIdentity)
  {
    dictionaryRepresentation = [(HDCodableSyncIdentity *)syncIdentity dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"syncIdentity"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_type];
    [dictionary setObject:v6 forKey:@"type"];
  }

  currentOSName = self->_currentOSName;
  if (currentOSName)
  {
    [dictionary setObject:currentOSName forKey:@"currentOSName"];
  }

  currentOSVersion = self->_currentOSVersion;
  if (currentOSVersion)
  {
    [dictionary setObject:currentOSVersion forKey:@"currentOSVersion"];
  }

  productTypeName = self->_productTypeName;
  if (productTypeName)
  {
    [dictionary setObject:productTypeName forKey:@"productTypeName"];
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_modificationDate];
    [dictionary setObject:v10 forKey:@"modificationDate"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_syncIdentity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt64Field();
    toCopy = v7;
  }

  if (self->_currentOSName)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_currentOSVersion)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_productTypeName)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    modificationDate = self->_modificationDate;
    PBDataWriterWriteDoubleField();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_syncIdentity)
  {
    [toCopy setSyncIdentity:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 2) = self->_type;
    *(toCopy + 56) |= 2u;
  }

  if (self->_currentOSName)
  {
    [v5 setCurrentOSName:?];
    toCopy = v5;
  }

  if (self->_currentOSVersion)
  {
    [v5 setCurrentOSVersion:?];
    toCopy = v5;
  }

  if (self->_productTypeName)
  {
    [v5 setProductTypeName:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_modificationDate;
    *(toCopy + 56) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:zone];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_type;
    *(v5 + 56) |= 2u;
  }

  v8 = [(NSString *)self->_currentOSName copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_currentOSVersion copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSString *)self->_productTypeName copyWithZone:zone];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_modificationDate;
    *(v5 + 56) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity | *(equalCopy + 6))
  {
    if (![(HDCodableSyncIdentity *)syncIdentity isEqual:?])
    {
      goto LABEL_19;
    }
  }

  v6 = *(equalCopy + 56);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_type != *(equalCopy + 2))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 56) & 2) != 0)
  {
LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  currentOSName = self->_currentOSName;
  if (currentOSName | *(equalCopy + 3) && ![(NSString *)currentOSName isEqual:?])
  {
    goto LABEL_19;
  }

  currentOSVersion = self->_currentOSVersion;
  if (currentOSVersion | *(equalCopy + 4))
  {
    if (![(NSString *)currentOSVersion isEqual:?])
    {
      goto LABEL_19;
    }
  }

  productTypeName = self->_productTypeName;
  if (productTypeName | *(equalCopy + 5))
  {
    if (![(NSString *)productTypeName isEqual:?])
    {
      goto LABEL_19;
    }
  }

  v10 = (*(equalCopy + 56) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_modificationDate != *(equalCopy + 1))
    {
      goto LABEL_19;
    }

    v10 = 1;
  }

LABEL_20:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(HDCodableSyncIdentity *)self->_syncIdentity hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_type;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_currentOSName hash];
  v6 = [(NSString *)self->_currentOSVersion hash];
  v7 = [(NSString *)self->_productTypeName hash];
  if (*&self->_has)
  {
    modificationDate = self->_modificationDate;
    if (modificationDate < 0.0)
    {
      modificationDate = -modificationDate;
    }

    *v8.i64 = floor(modificationDate + 0.5);
    v12 = (modificationDate - *v8.i64) * 1.84467441e19;
    *v9.i64 = *v8.i64 - trunc(*v8.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v9, v8).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v10;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  syncIdentity = self->_syncIdentity;
  v6 = *(fromCopy + 6);
  v7 = fromCopy;
  if (syncIdentity)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HDCodableSyncIdentity *)syncIdentity mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HDCloudSyncCodableDeviceContext *)self setSyncIdentity:?];
  }

  fromCopy = v7;
LABEL_7:
  if ((*(fromCopy + 56) & 2) != 0)
  {
    self->_type = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 3))
  {
    [(HDCloudSyncCodableDeviceContext *)self setCurrentOSName:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 4))
  {
    [(HDCloudSyncCodableDeviceContext *)self setCurrentOSVersion:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 5))
  {
    [(HDCloudSyncCodableDeviceContext *)self setProductTypeName:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 56))
  {
    self->_modificationDate = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

@end