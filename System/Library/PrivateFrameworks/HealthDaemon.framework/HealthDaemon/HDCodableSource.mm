@interface HDCodableSource
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)decodedModificationDate;
- (id)decodedUUID;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDeleted:(BOOL)deleted;
- (void)setHasOptions:(BOOL)options;
- (void)writeTo:(id)to;
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

- (void)setHasOptions:(BOOL)options
{
  if (options)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasDeleted:(BOOL)deleted
{
  if (deleted)
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
  dictionaryRepresentation = [(HDCodableSource *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  name = self->_name;
  if (name)
  {
    [dictionary setObject:name forKey:@"name"];
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
    dictionaryRepresentation = [(HDCodableSyncIdentity *)syncIdentity dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"syncIdentity"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_productType)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if ((*&self->_has & 2) != 0)
  {
    options = self->_options;
    PBDataWriterWriteInt64Field();
    toCopy = v9;
  }

  if (self->_uuid)
  {
    PBDataWriterWriteDataField();
    toCopy = v9;
  }

  has = self->_has;
  if (has)
  {
    modificationDate = self->_modificationDate;
    PBDataWriterWriteDoubleField();
    toCopy = v9;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    deleted = self->_deleted;
    PBDataWriterWriteBOOLField();
    toCopy = v9;
  }

  if (self->_owningAppBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_syncIdentity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_name)
  {
    [toCopy setName:?];
    toCopy = v6;
  }

  if (self->_bundleIdentifier)
  {
    [v6 setBundleIdentifier:?];
    toCopy = v6;
  }

  if (self->_productType)
  {
    [v6 setProductType:?];
    toCopy = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 2) = self->_options;
    *(toCopy + 76) |= 2u;
  }

  if (self->_uuid)
  {
    [v6 setUuid:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = *&self->_modificationDate;
    *(toCopy + 76) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(toCopy + 72) = self->_deleted;
    *(toCopy + 76) |= 4u;
  }

  if (self->_owningAppBundleIdentifier)
  {
    [v6 setOwningAppBundleIdentifier:?];
    toCopy = v6;
  }

  if (self->_syncIdentity)
  {
    [v6 setSyncIdentity:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_bundleIdentifier copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_productType copyWithZone:zone];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_options;
    *(v5 + 76) |= 2u;
  }

  v12 = [(NSData *)self->_uuid copyWithZone:zone];
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

  v15 = [(NSString *)self->_owningAppBundleIdentifier copyWithZone:zone];
  v16 = *(v5 + 40);
  *(v5 + 40) = v15;

  v17 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:zone];
  v18 = *(v5 + 56);
  *(v5 + 56) = v17;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  name = self->_name;
  if (name | *(equalCopy + 4))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_28;
    }
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier | *(equalCopy + 3))
  {
    if (![(NSString *)bundleIdentifier isEqual:?])
    {
      goto LABEL_28;
    }
  }

  productType = self->_productType;
  if (productType | *(equalCopy + 6))
  {
    if (![(NSString *)productType isEqual:?])
    {
      goto LABEL_28;
    }
  }

  has = self->_has;
  v9 = *(equalCopy + 76);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 76) & 2) == 0 || self->_options != *(equalCopy + 2))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equalCopy + 76) & 2) != 0)
  {
    goto LABEL_28;
  }

  uuid = self->_uuid;
  if (uuid | *(equalCopy + 8))
  {
    if (![(NSData *)uuid isEqual:?])
    {
      goto LABEL_28;
    }

    has = self->_has;
    v9 = *(equalCopy + 76);
  }

  if (has)
  {
    if ((v9 & 1) == 0 || self->_modificationDate != *(equalCopy + 1))
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

  v15 = *(equalCopy + 72);
  if (self->_deleted)
  {
    if ((*(equalCopy + 72) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (*(equalCopy + 72))
  {
    goto LABEL_28;
  }

LABEL_23:
  owningAppBundleIdentifier = self->_owningAppBundleIdentifier;
  if (owningAppBundleIdentifier | *(equalCopy + 5) && ![(NSString *)owningAppBundleIdentifier isEqual:?])
  {
    goto LABEL_28;
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity | *(equalCopy + 7))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v8 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(HDCodableSource *)self setName:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 3))
  {
    [(HDCodableSource *)self setBundleIdentifier:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 6))
  {
    [(HDCodableSource *)self setProductType:?];
    fromCopy = v8;
  }

  if ((*(fromCopy + 76) & 2) != 0)
  {
    self->_options = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 8))
  {
    [(HDCodableSource *)self setUuid:?];
    fromCopy = v8;
  }

  v5 = *(fromCopy + 76);
  if (v5)
  {
    self->_modificationDate = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 76);
  }

  if ((v5 & 4) != 0)
  {
    self->_deleted = *(fromCopy + 72);
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 5))
  {
    [(HDCodableSource *)self setOwningAppBundleIdentifier:?];
    fromCopy = v8;
  }

  syncIdentity = self->_syncIdentity;
  v7 = *(fromCopy + 7);
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