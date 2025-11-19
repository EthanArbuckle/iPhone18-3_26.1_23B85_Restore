@interface HDCloudSyncCodableDeviceKeyValue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasProtectionCategory:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCloudSyncCodableDeviceKeyValue

- (void)setHasProtectionCategory:(BOOL)a3
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
  v8.super_class = HDCloudSyncCodableDeviceKeyValue;
  v4 = [(HDCloudSyncCodableDeviceKeyValue *)&v8 description];
  v5 = [(HDCloudSyncCodableDeviceKeyValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  syncIdentity = self->_syncIdentity;
  if (syncIdentity)
  {
    v5 = [(HDCodableSyncIdentity *)syncIdentity dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"syncIdentity"];
  }

  domain = self->_domain;
  if (domain)
  {
    [v3 setObject:domain forKey:@"domain"];
  }

  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
  }

  value = self->_value;
  if (value)
  {
    [v3 setObject:value forKey:@"value"];
  }

  has = self->_has;
  if (has)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_modificationDate];
    [v3 setObject:v10 forKey:@"modificationDate"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_protectionCategory];
    [v3 setObject:v11 forKey:@"protectionCategory"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_syncIdentity)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if (self->_domain)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_key)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_value)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    modificationDate = self->_modificationDate;
    PBDataWriterWriteDoubleField();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    protectionCategory = self->_protectionCategory;
    PBDataWriterWriteInt64Field();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_syncIdentity)
  {
    [v4 setSyncIdentity:?];
    v4 = v6;
  }

  if (self->_domain)
  {
    [v6 setDomain:?];
    v4 = v6;
  }

  if (self->_key)
  {
    [v6 setKey:?];
    v4 = v6;
  }

  if (self->_value)
  {
    [v6 setValue:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = *&self->_modificationDate;
    *(v4 + 56) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 2) = self->_protectionCategory;
    *(v4 + 56) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_domain copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_key copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSData *)self->_value copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity | *(v4 + 5))
  {
    if (![(HDCodableSyncIdentity *)syncIdentity isEqual:?])
    {
      goto LABEL_19;
    }
  }

  domain = self->_domain;
  if (domain | *(v4 + 3))
  {
    if (![(NSString *)domain isEqual:?])
    {
      goto LABEL_19;
    }
  }

  key = self->_key;
  if (key | *(v4 + 4))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_19;
    }
  }

  value = self->_value;
  if (value | *(v4 + 6))
  {
    if (![(NSData *)value isEqual:?])
    {
      goto LABEL_19;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_modificationDate != *(v4 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 56))
  {
LABEL_19:
    v9 = 0;
    goto LABEL_20;
  }

  v9 = (*(v4 + 56) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 56) & 2) == 0 || self->_protectionCategory != *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  syncIdentity = self->_syncIdentity;
  v6 = *(v4 + 5);
  v8 = v4;
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

  v4 = v8;
LABEL_7:
  if (*(v4 + 3))
  {
    [(HDCloudSyncCodableDeviceKeyValue *)self setDomain:?];
    v4 = v8;
  }

  if (*(v4 + 4))
  {
    [(HDCloudSyncCodableDeviceKeyValue *)self setKey:?];
    v4 = v8;
  }

  if (*(v4 + 6))
  {
    [(HDCloudSyncCodableDeviceKeyValue *)self setValue:?];
    v4 = v8;
  }

  v7 = *(v4 + 56);
  if (v7)
  {
    self->_modificationDate = *(v4 + 1);
    *&self->_has |= 1u;
    v7 = *(v4 + 56);
  }

  if ((v7 & 2) != 0)
  {
    self->_protectionCategory = *(v4 + 2);
    *&self->_has |= 2u;
  }

  MEMORY[0x2821F96F8]();
}

@end