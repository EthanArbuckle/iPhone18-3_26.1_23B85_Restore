@interface HDCodableObjectSourceAuthorization
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasModificationDate:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableObjectSourceAuthorization

- (void)setHasModificationDate:(BOOL)a3
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
  v8.super_class = HDCodableObjectSourceAuthorization;
  v4 = [(HDCodableObjectSourceAuthorization *)&v8 description];
  v5 = [(HDCodableObjectSourceAuthorization *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  sourceUUID = self->_sourceUUID;
  if (sourceUUID)
  {
    [v3 setObject:sourceUUID forKey:@"sourceUUID"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_authorizationStatus];
    [v4 setObject:v7 forKey:@"authorizationStatus"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_modificationDate];
    [v4 setObject:v8 forKey:@"modificationDate"];
  }

  sessionUUID = self->_sessionUUID;
  if (sessionUUID)
  {
    [v4 setObject:sessionUUID forKey:@"sessionUUID"];
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity)
  {
    v11 = [(HDCodableSyncIdentity *)syncIdentity dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"syncIdentity"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_sourceUUID)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    authorizationStatus = self->_authorizationStatus;
    PBDataWriterWriteInt64Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    modificationDate = self->_modificationDate;
    PBDataWriterWriteDoubleField();
    v4 = v8;
  }

  if (self->_sessionUUID)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  if (self->_syncIdentity)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_sourceUUID)
  {
    [v4 setSourceUUID:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = self->_authorizationStatus;
    *(v4 + 48) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 2) = *&self->_modificationDate;
    *(v4 + 48) |= 2u;
  }

  if (self->_sessionUUID)
  {
    [v6 setSessionUUID:?];
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
  v6 = [(NSData *)self->_sourceUUID copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_authorizationStatus;
    *(v5 + 48) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_modificationDate;
    *(v5 + 48) |= 2u;
  }

  v9 = [(NSData *)self->_sessionUUID copyWithZone:a3];
  v10 = *(v5 + 24);
  *(v5 + 24) = v9;

  v11 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:a3];
  v12 = *(v5 + 40);
  *(v5 + 40) = v11;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  sourceUUID = self->_sourceUUID;
  if (sourceUUID | *(v4 + 4))
  {
    if (![(NSData *)sourceUUID isEqual:?])
    {
      goto LABEL_18;
    }
  }

  v6 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_authorizationStatus != *(v4 + 1))
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_modificationDate != *(v4 + 2))
    {
      goto LABEL_18;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_18;
  }

  sessionUUID = self->_sessionUUID;
  if (sessionUUID | *(v4 + 3) && ![(NSData *)sessionUUID isEqual:?])
  {
    goto LABEL_18;
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity | *(v4 + 5))
  {
    v9 = [(HDCodableSyncIdentity *)syncIdentity isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_19:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_sourceUUID hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_authorizationStatus;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  modificationDate = self->_modificationDate;
  if (modificationDate < 0.0)
  {
    modificationDate = -modificationDate;
  }

  *v4.i64 = floor(modificationDate + 0.5);
  v8 = (modificationDate - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

LABEL_9:
  v11 = v6 ^ v3 ^ v10 ^ [(NSData *)self->_sessionUUID hash];
  return v11 ^ [(HDCodableSyncIdentity *)self->_syncIdentity hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (*(v4 + 4))
  {
    [(HDCodableObjectSourceAuthorization *)self setSourceUUID:?];
    v4 = v8;
  }

  v5 = *(v4 + 48);
  if (v5)
  {
    self->_authorizationStatus = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 48);
  }

  if ((v5 & 2) != 0)
  {
    self->_modificationDate = *(v4 + 2);
    *&self->_has |= 2u;
  }

  if (*(v4 + 3))
  {
    [(HDCodableObjectSourceAuthorization *)self setSessionUUID:?];
    v4 = v8;
  }

  syncIdentity = self->_syncIdentity;
  v7 = *(v4 + 5);
  if (syncIdentity)
  {
    if (!v7)
    {
      goto LABEL_15;
    }

    syncIdentity = [(HDCodableSyncIdentity *)syncIdentity mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_15;
    }

    syncIdentity = [(HDCodableObjectSourceAuthorization *)self setSyncIdentity:?];
  }

  v4 = v8;
LABEL_15:

  MEMORY[0x2821F96F8](syncIdentity, v4);
}

@end