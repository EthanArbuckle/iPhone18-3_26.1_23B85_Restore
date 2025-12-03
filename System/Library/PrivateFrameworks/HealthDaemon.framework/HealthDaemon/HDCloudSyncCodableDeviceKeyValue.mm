@interface HDCloudSyncCodableDeviceKeyValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasProtectionCategory:(BOOL)category;
- (void)writeTo:(id)to;
@end

@implementation HDCloudSyncCodableDeviceKeyValue

- (void)setHasProtectionCategory:(BOOL)category
{
  if (category)
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
  v8.super_class = HDCloudSyncCodableDeviceKeyValue;
  v4 = [(HDCloudSyncCodableDeviceKeyValue *)&v8 description];
  dictionaryRepresentation = [(HDCloudSyncCodableDeviceKeyValue *)self dictionaryRepresentation];
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

  domain = self->_domain;
  if (domain)
  {
    [dictionary setObject:domain forKey:@"domain"];
  }

  key = self->_key;
  if (key)
  {
    [dictionary setObject:key forKey:@"key"];
  }

  value = self->_value;
  if (value)
  {
    [dictionary setObject:value forKey:@"value"];
  }

  has = self->_has;
  if (has)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_modificationDate];
    [dictionary setObject:v10 forKey:@"modificationDate"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_protectionCategory];
    [dictionary setObject:v11 forKey:@"protectionCategory"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_syncIdentity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_domain)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_value)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    modificationDate = self->_modificationDate;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    protectionCategory = self->_protectionCategory;
    PBDataWriterWriteInt64Field();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_syncIdentity)
  {
    [toCopy setSyncIdentity:?];
    toCopy = v6;
  }

  if (self->_domain)
  {
    [v6 setDomain:?];
    toCopy = v6;
  }

  if (self->_key)
  {
    [v6 setKey:?];
    toCopy = v6;
  }

  if (self->_value)
  {
    [v6 setValue:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = *&self->_modificationDate;
    *(toCopy + 56) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 2) = self->_protectionCategory;
    *(toCopy + 56) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_domain copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_key copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSData *)self->_value copyWithZone:zone];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_modificationDate;
    *(v5 + 56) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_protectionCategory;
    *(v5 + 56) |= 2u;
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
  if (syncIdentity | *(equalCopy + 5))
  {
    if (![(HDCodableSyncIdentity *)syncIdentity isEqual:?])
    {
      goto LABEL_19;
    }
  }

  domain = self->_domain;
  if (domain | *(equalCopy + 3))
  {
    if (![(NSString *)domain isEqual:?])
    {
      goto LABEL_19;
    }
  }

  key = self->_key;
  if (key | *(equalCopy + 4))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_19;
    }
  }

  value = self->_value;
  if (value | *(equalCopy + 6))
  {
    if (![(NSData *)value isEqual:?])
    {
      goto LABEL_19;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_modificationDate != *(equalCopy + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 56))
  {
LABEL_19:
    v9 = 0;
    goto LABEL_20;
  }

  v9 = (*(equalCopy + 56) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_protectionCategory != *(equalCopy + 2))
    {
      goto LABEL_19;
    }

    v9 = 1;
  }

LABEL_20:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(HDCodableSyncIdentity *)self->_syncIdentity hash];
  v4 = [(NSString *)self->_domain hash];
  v5 = [(NSString *)self->_key hash];
  v6 = [(NSData *)self->_value hash];
  if (*&self->_has)
  {
    modificationDate = self->_modificationDate;
    if (modificationDate < 0.0)
    {
      modificationDate = -modificationDate;
    }

    *v7.i64 = floor(modificationDate + 0.5);
    v11 = (modificationDate - *v7.i64) * 1.84467441e19;
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

  if ((*&self->_has & 2) != 0)
  {
    v13 = 2654435761 * self->_protectionCategory;
  }

  else
  {
    v13 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v9 ^ v13;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  syncIdentity = self->_syncIdentity;
  v6 = *(fromCopy + 5);
  v8 = fromCopy;
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

    [(HDCloudSyncCodableDeviceKeyValue *)self setSyncIdentity:?];
  }

  fromCopy = v8;
LABEL_7:
  if (*(fromCopy + 3))
  {
    [(HDCloudSyncCodableDeviceKeyValue *)self setDomain:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 4))
  {
    [(HDCloudSyncCodableDeviceKeyValue *)self setKey:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 6))
  {
    [(HDCloudSyncCodableDeviceKeyValue *)self setValue:?];
    fromCopy = v8;
  }

  v7 = *(fromCopy + 56);
  if (v7)
  {
    self->_modificationDate = *(fromCopy + 1);
    *&self->_has |= 1u;
    v7 = *(fromCopy + 56);
  }

  if ((v7 & 2) != 0)
  {
    self->_protectionCategory = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

  MEMORY[0x2821F96F8]();
}

@end