@interface HDCodableContributor
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDeleted:(BOOL)deleted;
- (void)writeTo:(id)to;
@end

@implementation HDCodableContributor

- (void)setHasDeleted:(BOOL)deleted
{
  if (deleted)
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
  v8.super_class = HDCodableContributor;
  v4 = [(HDCodableContributor *)&v8 description];
  dictionaryRepresentation = [(HDCodableContributor *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  uuid = self->_uuid;
  if (uuid)
  {
    [dictionary setObject:uuid forKey:@"uuid"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_deleted];
    [v4 setObject:v7 forKey:@"deleted"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_modificationDate];
    [v4 setObject:v8 forKey:@"modificationDate"];
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity)
  {
    dictionaryRepresentation = [(HDCodableSyncIdentity *)syncIdentity dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"syncIdentity"];
  }

  appleID = self->_appleID;
  if (appleID)
  {
    [v4 setObject:appleID forKey:@"appleID"];
  }

  callerID = self->_callerID;
  if (callerID)
  {
    [v4 setObject:callerID forKey:@"callerID"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_uuid)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    deleted = self->_deleted;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    modificationDate = self->_modificationDate;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
  }

  if (self->_syncIdentity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_appleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_callerID)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_uuid)
  {
    [toCopy setUuid:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 48) = self->_deleted;
    *(toCopy + 52) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = *&self->_modificationDate;
    *(toCopy + 52) |= 1u;
  }

  if (self->_syncIdentity)
  {
    [v6 setSyncIdentity:?];
    toCopy = v6;
  }

  if (self->_appleID)
  {
    [v6 setAppleID:?];
    toCopy = v6;
  }

  if (self->_callerID)
  {
    [v6 setCallerID:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_uuid copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 48) = self->_deleted;
    *(v5 + 52) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_modificationDate;
    *(v5 + 52) |= 1u;
  }

  v9 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:zone];
  v10 = *(v5 + 32);
  *(v5 + 32) = v9;

  v11 = [(NSString *)self->_appleID copyWithZone:zone];
  v12 = *(v5 + 16);
  *(v5 + 16) = v11;

  v13 = [(NSString *)self->_callerID copyWithZone:zone];
  v14 = *(v5 + 24);
  *(v5 + 24) = v13;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  uuid = self->_uuid;
  if (uuid | *(equalCopy + 5))
  {
    if (![(NSData *)uuid isEqual:?])
    {
      goto LABEL_22;
    }
  }

  v6 = *(equalCopy + 52);
  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 52) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_22:
    v11 = 0;
    goto LABEL_23;
  }

  if ((*(equalCopy + 52) & 2) == 0)
  {
    goto LABEL_22;
  }

  v7 = *(equalCopy + 48);
  if (self->_deleted)
  {
    if ((*(equalCopy + 48) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_22;
  }

LABEL_6:
  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_modificationDate != *(equalCopy + 1))
    {
      goto LABEL_22;
    }
  }

  else if (*(equalCopy + 52))
  {
    goto LABEL_22;
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity | *(equalCopy + 4) && ![(HDCodableSyncIdentity *)syncIdentity isEqual:?])
  {
    goto LABEL_22;
  }

  appleID = self->_appleID;
  if (appleID | *(equalCopy + 2))
  {
    if (![(NSString *)appleID isEqual:?])
    {
      goto LABEL_22;
    }
  }

  callerID = self->_callerID;
  if (callerID | *(equalCopy + 3))
  {
    v11 = [(NSString *)callerID isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_23:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_uuid hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_deleted;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
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
  v11 = v6 ^ v3 ^ v10 ^ [(HDCodableSyncIdentity *)self->_syncIdentity hash];
  v12 = [(NSString *)self->_appleID hash];
  return v11 ^ v12 ^ [(NSString *)self->_callerID hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v8 = fromCopy;
  if (*(fromCopy + 5))
  {
    [(HDCodableContributor *)self setUuid:?];
    fromCopy = v8;
  }

  v5 = *(fromCopy + 52);
  if ((v5 & 2) != 0)
  {
    self->_deleted = *(fromCopy + 48);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 52);
  }

  if (v5)
  {
    self->_modificationDate = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  syncIdentity = self->_syncIdentity;
  v7 = *(fromCopy + 4);
  if (syncIdentity)
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    syncIdentity = [(HDCodableSyncIdentity *)syncIdentity mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    syncIdentity = [(HDCodableContributor *)self setSyncIdentity:?];
  }

  fromCopy = v8;
LABEL_13:
  if (*(fromCopy + 2))
  {
    syncIdentity = [(HDCodableContributor *)self setAppleID:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 3))
  {
    syncIdentity = [(HDCodableContributor *)self setCallerID:?];
    fromCopy = v8;
  }

  MEMORY[0x2821F96F8](syncIdentity, fromCopy);
}

@end