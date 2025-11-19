@interface HDCodableSource
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)decodedModificationDate;
- (id)decodedUUID;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDeleted:(BOOL)a3;
- (void)setHasOptions:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableSource

- (id)decodedUUID
{
  if (self->_uuid)
  {
    v3 = [MEMORY[0x277CCAD78] hk_UUIDWithData:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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

- (void)setHasDeleted:(BOOL)a3
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
  v8.super_class = HDCodableSource;
  v4 = [(HDCodableSource *)&v8 description];
  v5 = [(HDCodableSource *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    [v4 setObject:bundleIdentifier forKey:@"bundleIdentifier"];
  }

  productType = self->_productType;
  if (productType)
  {
    [v4 setObject:productType forKey:@"productType"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_options];
    [v4 setObject:v8 forKey:@"options"];
  }

  uuid = self->_uuid;
  if (uuid)
  {
    [v4 setObject:uuid forKey:@"uuid"];
  }

  has = self->_has;
  if (has)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_modificationDate];
    [v4 setObject:v11 forKey:@"modificationDate"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_deleted];
    [v4 setObject:v12 forKey:@"deleted"];
  }

  owningAppBundleIdentifier = self->_owningAppBundleIdentifier;
  if (owningAppBundleIdentifier)
  {
    [v4 setObject:owningAppBundleIdentifier forKey:@"owningAppBundleIdentifier"];
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity)
  {
    v15 = [(HDCodableSyncIdentity *)syncIdentity dictionaryRepresentation];
    [v4 setObject:v15 forKey:@"syncIdentity"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_productType)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if ((*&self->_has & 2) != 0)
  {
    options = self->_options;
    PBDataWriterWriteInt64Field();
    v4 = v9;
  }

  if (self->_uuid)
  {
    PBDataWriterWriteDataField();
    v4 = v9;
  }

  has = self->_has;
  if (has)
  {
    modificationDate = self->_modificationDate;
    PBDataWriterWriteDoubleField();
    v4 = v9;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    deleted = self->_deleted;
    PBDataWriterWriteBOOLField();
    v4 = v9;
  }

  if (self->_owningAppBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_syncIdentity)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_name)
  {
    [v4 setName:?];
    v4 = v6;
  }

  if (self->_bundleIdentifier)
  {
    [v6 setBundleIdentifier:?];
    v4 = v6;
  }

  if (self->_productType)
  {
    [v6 setProductType:?];
    v4 = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 2) = self->_options;
    *(v4 + 76) |= 2u;
  }

  if (self->_uuid)
  {
    [v6 setUuid:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = *&self->_modificationDate;
    *(v4 + 76) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v4 + 72) = self->_deleted;
    *(v4 + 76) |= 4u;
  }

  if (self->_owningAppBundleIdentifier)
  {
    [v6 setOwningAppBundleIdentifier:?];
    v4 = v6;
  }

  if (self->_syncIdentity)
  {
    [v6 setSyncIdentity:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_bundleIdentifier copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_productType copyWithZone:a3];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_options;
    *(v5 + 76) |= 2u;
  }

  v12 = [(NSData *)self->_uuid copyWithZone:a3];
  v13 = *(v5 + 64);
  *(v5 + 64) = v12;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_modificationDate;
    *(v5 + 76) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 72) = self->_deleted;
    *(v5 + 76) |= 4u;
  }

  v15 = [(NSString *)self->_owningAppBundleIdentifier copyWithZone:a3];
  v16 = *(v5 + 40);
  *(v5 + 40) = v15;

  v17 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:a3];
  v18 = *(v5 + 56);
  *(v5 + 56) = v17;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  name = self->_name;
  if (name | *(v4 + 4))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_28;
    }
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier | *(v4 + 3))
  {
    if (![(NSString *)bundleIdentifier isEqual:?])
    {
      goto LABEL_28;
    }
  }

  productType = self->_productType;
  if (productType | *(v4 + 6))
  {
    if (![(NSString *)productType isEqual:?])
    {
      goto LABEL_28;
    }
  }

  has = self->_has;
  v9 = *(v4 + 76);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 76) & 2) == 0 || self->_options != *(v4 + 2))
    {
      goto LABEL_28;
    }
  }

  else if ((*(v4 + 76) & 2) != 0)
  {
    goto LABEL_28;
  }

  uuid = self->_uuid;
  if (uuid | *(v4 + 8))
  {
    if (![(NSData *)uuid isEqual:?])
    {
      goto LABEL_28;
    }

    has = self->_has;
    v9 = *(v4 + 76);
  }

  if (has)
  {
    if ((v9 & 1) == 0 || self->_modificationDate != *(v4 + 1))
    {
      goto LABEL_28;
    }
  }

  else if (v9)
  {
    goto LABEL_28;
  }

  if ((has & 4) == 0)
  {
    if ((v9 & 4) == 0)
    {
      goto LABEL_23;
    }

LABEL_28:
    v13 = 0;
    goto LABEL_29;
  }

  if ((v9 & 4) == 0)
  {
    goto LABEL_28;
  }

  v15 = *(v4 + 72);
  if (self->_deleted)
  {
    if ((*(v4 + 72) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (*(v4 + 72))
  {
    goto LABEL_28;
  }

LABEL_23:
  owningAppBundleIdentifier = self->_owningAppBundleIdentifier;
  if (owningAppBundleIdentifier | *(v4 + 5) && ![(NSString *)owningAppBundleIdentifier isEqual:?])
  {
    goto LABEL_28;
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity | *(v4 + 7))
  {
    v13 = [(HDCodableSyncIdentity *)syncIdentity isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_29:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_bundleIdentifier hash];
  v5 = [(NSString *)self->_productType hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_options;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSData *)self->_uuid hash];
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

  if ((*&self->_has & 4) != 0)
  {
    v14 = 2654435761 * self->_deleted;
  }

  else
  {
    v14 = 0;
  }

  v15 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v10 ^ v14;
  v16 = [(NSString *)self->_owningAppBundleIdentifier hash];
  return v15 ^ v16 ^ [(HDCodableSyncIdentity *)self->_syncIdentity hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (*(v4 + 4))
  {
    [(HDCodableSource *)self setName:?];
    v4 = v8;
  }

  if (*(v4 + 3))
  {
    [(HDCodableSource *)self setBundleIdentifier:?];
    v4 = v8;
  }

  if (*(v4 + 6))
  {
    [(HDCodableSource *)self setProductType:?];
    v4 = v8;
  }

  if ((*(v4 + 76) & 2) != 0)
  {
    self->_options = *(v4 + 2);
    *&self->_has |= 2u;
  }

  if (*(v4 + 8))
  {
    [(HDCodableSource *)self setUuid:?];
    v4 = v8;
  }

  v5 = *(v4 + 76);
  if (v5)
  {
    self->_modificationDate = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 76);
  }

  if ((v5 & 4) != 0)
  {
    self->_deleted = *(v4 + 72);
    *&self->_has |= 4u;
  }

  if (*(v4 + 5))
  {
    [(HDCodableSource *)self setOwningAppBundleIdentifier:?];
    v4 = v8;
  }

  syncIdentity = self->_syncIdentity;
  v7 = *(v4 + 7);
  if (syncIdentity)
  {
    if (v7)
    {
      [(HDCodableSyncIdentity *)syncIdentity mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(HDCodableSource *)self setSyncIdentity:?];
  }

  MEMORY[0x2821F96F8]();
}

- (id)decodedModificationDate
{
  if (*&self->_has)
  {
    modificationDate = self->_modificationDate;
    v3 = HDDecodeDateForValue();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end