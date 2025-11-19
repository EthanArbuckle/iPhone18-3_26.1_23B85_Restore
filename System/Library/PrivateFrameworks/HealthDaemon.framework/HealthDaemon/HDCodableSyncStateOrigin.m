@interface HDCodableSyncStateOrigin
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMajorVersion:(BOOL)a3;
- (void)setHasMinorVersion:(BOOL)a3;
- (void)setHasPatchVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableSyncStateOrigin

- (void)setHasMajorVersion:(BOOL)a3
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

- (void)setHasMinorVersion:(BOOL)a3
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

- (void)setHasPatchVersion:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableSyncStateOrigin;
  v4 = [(HDCodableSyncStateOrigin *)&v8 description];
  v5 = [(HDCodableSyncStateOrigin *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
    [v3 setObject:v4 forKey:@"timestamp"];
  }

  build = self->_build;
  if (build)
  {
    [v3 setObject:build forKey:@"build"];
  }

  productType = self->_productType;
  if (productType)
  {
    [v3 setObject:productType forKey:@"productType"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInt:self->_majorVersion];
    [v3 setObject:v12 forKey:@"majorVersion"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_9:
      if ((has & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithInt:self->_minorVersion];
  [v3 setObject:v13 forKey:@"minorVersion"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_10:
    v8 = [MEMORY[0x277CCABB0] numberWithInt:self->_patchVersion];
    [v3 setObject:v8 forKey:@"patchVersion"];
  }

LABEL_11:
  syncIdentity = self->_syncIdentity;
  if (syncIdentity)
  {
    v10 = [(HDCodableSyncIdentity *)syncIdentity dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"syncIdentity"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteDoubleField();
    v4 = v10;
  }

  if (self->_build)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if (self->_productType)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    majorVersion = self->_majorVersion;
    PBDataWriterWriteInt32Field();
    v4 = v10;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_9:
      if ((has & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

  minorVersion = self->_minorVersion;
  PBDataWriterWriteInt32Field();
  v4 = v10;
  if ((*&self->_has & 8) != 0)
  {
LABEL_10:
    patchVersion = self->_patchVersion;
    PBDataWriterWriteInt32Field();
    v4 = v10;
  }

LABEL_11:
  if (self->_syncIdentity)
  {
    PBDataWriterWriteSubmessage();
    v4 = v10;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = *&self->_timestamp;
    *(v4 + 56) |= 1u;
  }

  v6 = v4;
  if (self->_build)
  {
    [v4 setBuild:?];
    v4 = v6;
  }

  if (self->_productType)
  {
    [v6 setProductType:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 6) = self->_majorVersion;
    *(v4 + 56) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_9:
      if ((has & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

  *(v4 + 7) = self->_minorVersion;
  *(v4 + 56) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_10:
    *(v4 + 8) = self->_patchVersion;
    *(v4 + 56) |= 8u;
  }

LABEL_11:
  if (self->_syncIdentity)
  {
    [v6 setSyncIdentity:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 56) |= 1u;
  }

  v7 = [(NSString *)self->_build copyWithZone:a3];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  v9 = [(NSString *)self->_productType copyWithZone:a3];
  v10 = *(v6 + 40);
  *(v6 + 40) = v9;

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    *(v6 + 28) = self->_minorVersion;
    *(v6 + 56) |= 4u;
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *(v6 + 24) = self->_majorVersion;
  *(v6 + 56) |= 2u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((has & 8) != 0)
  {
LABEL_6:
    *(v6 + 32) = self->_patchVersion;
    *(v6 + 56) |= 8u;
  }

LABEL_7:
  v12 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:a3];
  v13 = *(v6 + 48);
  *(v6 + 48) = v12;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  v5 = *(v4 + 56);
  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_28;
    }
  }

  else if (*(v4 + 56))
  {
LABEL_28:
    v10 = 0;
    goto LABEL_29;
  }

  build = self->_build;
  if (build | *(v4 + 2) && ![(NSString *)build isEqual:?])
  {
    goto LABEL_28;
  }

  productType = self->_productType;
  if (productType | *(v4 + 5))
  {
    if (![(NSString *)productType isEqual:?])
    {
      goto LABEL_28;
    }
  }

  v8 = *(v4 + 56);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 56) & 2) == 0 || self->_majorVersion != *(v4 + 6))
    {
      goto LABEL_28;
    }
  }

  else if ((*(v4 + 56) & 2) != 0)
  {
    goto LABEL_28;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 56) & 4) == 0 || self->_minorVersion != *(v4 + 7))
    {
      goto LABEL_28;
    }
  }

  else if ((*(v4 + 56) & 4) != 0)
  {
    goto LABEL_28;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 56) & 8) == 0 || self->_patchVersion != *(v4 + 8))
    {
      goto LABEL_28;
    }
  }

  else if ((*(v4 + 56) & 8) != 0)
  {
    goto LABEL_28;
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity | *(v4 + 6))
  {
    v10 = [(HDCodableSyncIdentity *)syncIdentity isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_29:

  return v10;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    if (timestamp < 0.0)
    {
      timestamp = -timestamp;
    }

    *v2.i64 = floor(timestamp + 0.5);
    v7 = (timestamp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = [(NSString *)self->_build hash];
  v10 = [(NSString *)self->_productType hash];
  if ((*&self->_has & 2) == 0)
  {
    v11 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v12 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    v13 = 0;
    return v9 ^ v5 ^ v10 ^ v11 ^ v12 ^ v13 ^ [(HDCodableSyncIdentity *)self->_syncIdentity hash];
  }

  v11 = 2654435761 * self->_majorVersion;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v12 = 2654435761 * self->_minorVersion;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  v13 = 2654435761 * self->_patchVersion;
  return v9 ^ v5 ^ v10 ^ v11 ^ v12 ^ v13 ^ [(HDCodableSyncIdentity *)self->_syncIdentity hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[7])
  {
    self->_timestamp = v4[1];
    *&self->_has |= 1u;
  }

  v9 = v4;
  if (*(v4 + 2))
  {
    [(HDCodableSyncStateOrigin *)self setBuild:?];
    v5 = v9;
  }

  if (*(v5 + 5))
  {
    [(HDCodableSyncStateOrigin *)self setProductType:?];
    v5 = v9;
  }

  v6 = *(v5 + 56);
  if ((v6 & 2) != 0)
  {
    self->_majorVersion = *(v5 + 6);
    *&self->_has |= 2u;
    v6 = *(v5 + 56);
    if ((v6 & 4) == 0)
    {
LABEL_9:
      if ((v6 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((v5[7] & 4) == 0)
  {
    goto LABEL_9;
  }

  self->_minorVersion = *(v5 + 7);
  *&self->_has |= 4u;
  if ((v5[7] & 8) != 0)
  {
LABEL_10:
    self->_patchVersion = *(v5 + 8);
    *&self->_has |= 8u;
  }

LABEL_11:
  syncIdentity = self->_syncIdentity;
  v8 = *(v5 + 6);
  if (syncIdentity)
  {
    if (!v8)
    {
      goto LABEL_20;
    }

    syncIdentity = [(HDCodableSyncIdentity *)syncIdentity mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_20;
    }

    syncIdentity = [(HDCodableSyncStateOrigin *)self setSyncIdentity:?];
  }

  v5 = v9;
LABEL_20:

  MEMORY[0x2821F96F8](syncIdentity, v5);
}

@end