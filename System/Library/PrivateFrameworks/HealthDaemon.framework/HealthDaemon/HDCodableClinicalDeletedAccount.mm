@interface HDCodableClinicalDeletedAccount
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDeletionReason:(BOOL)reason;
- (void)writeTo:(id)to;
@end

@implementation HDCodableClinicalDeletedAccount

- (void)setHasDeletionReason:(BOOL)reason
{
  if (reason)
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
  v8.super_class = HDCodableClinicalDeletedAccount;
  v4 = [(HDCodableClinicalDeletedAccount *)&v8 description];
  dictionaryRepresentation = [(HDCodableClinicalDeletedAccount *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  syncIdentifier = self->_syncIdentifier;
  if (syncIdentifier)
  {
    [dictionary setObject:syncIdentifier forKey:@"syncIdentifier"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_deletionDate];
    [v4 setObject:v6 forKey:@"deletionDate"];
  }

  messageVersion = self->_messageVersion;
  if (messageVersion)
  {
    dictionaryRepresentation = [(HDCodableMessageVersion *)messageVersion dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"messageVersion"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_deletionReason];
    [v4 setObject:v9 forKey:@"deletionReason"];
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity)
  {
    dictionaryRepresentation2 = [(HDCodableSyncIdentity *)syncIdentity dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"syncIdentity"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_syncIdentifier)
  {
    PBDataWriterWriteDataField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    deletionDate = self->_deletionDate;
    PBDataWriterWriteDoubleField();
    toCopy = v7;
  }

  if (self->_messageVersion)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    deletionReason = self->_deletionReason;
    PBDataWriterWriteInt64Field();
    toCopy = v7;
  }

  if (self->_syncIdentity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_syncIdentifier)
  {
    [toCopy setSyncIdentifier:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_deletionDate;
    *(toCopy + 48) |= 1u;
  }

  if (self->_messageVersion)
  {
    [v5 setMessageVersion:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 2) = self->_deletionReason;
    *(toCopy + 48) |= 2u;
  }

  if (self->_syncIdentity)
  {
    [v5 setSyncIdentity:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_syncIdentifier copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_deletionDate;
    *(v5 + 48) |= 1u;
  }

  v8 = [(HDCodableMessageVersion *)self->_messageVersion copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_deletionReason;
    *(v5 + 48) |= 2u;
  }

  v10 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  syncIdentifier = self->_syncIdentifier;
  if (syncIdentifier | *(equalCopy + 4))
  {
    if (![(NSData *)syncIdentifier isEqual:?])
    {
      goto LABEL_19;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 48);
  if (has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_deletionDate != *(equalCopy + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_19;
  }

  messageVersion = self->_messageVersion;
  if (messageVersion | *(equalCopy + 3))
  {
    if (![(HDCodableMessageVersion *)messageVersion isEqual:?])
    {
LABEL_19:
      v10 = 0;
      goto LABEL_20;
    }

    has = self->_has;
    v7 = *(equalCopy + 48);
  }

  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_deletionReason != *(equalCopy + 2))
    {
      goto LABEL_19;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_19;
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity | *(equalCopy + 5))
  {
    v10 = [(HDCodableSyncIdentity *)syncIdentity isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_20:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_syncIdentifier hash];
  if (*&self->_has)
  {
    deletionDate = self->_deletionDate;
    if (deletionDate < 0.0)
    {
      deletionDate = -deletionDate;
    }

    *v4.i64 = floor(deletionDate + 0.5);
    v8 = (deletionDate - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = [(HDCodableMessageVersion *)self->_messageVersion hash];
  if ((*&self->_has & 2) != 0)
  {
    v11 = 2654435761 * self->_deletionReason;
  }

  else
  {
    v11 = 0;
  }

  return v6 ^ v3 ^ v10 ^ v11 ^ [(HDCodableSyncIdentity *)self->_syncIdentity hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v9 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(HDCodableClinicalDeletedAccount *)self setSyncIdentifier:?];
    fromCopy = v9;
  }

  if (*(fromCopy + 48))
  {
    self->_deletionDate = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  messageVersion = self->_messageVersion;
  v6 = *(fromCopy + 3);
  if (messageVersion)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    [(HDCodableMessageVersion *)messageVersion mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    [(HDCodableClinicalDeletedAccount *)self setMessageVersion:?];
  }

  fromCopy = v9;
LABEL_11:
  if ((*(fromCopy + 48) & 2) != 0)
  {
    self->_deletionReason = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

  syncIdentity = self->_syncIdentity;
  v8 = *(fromCopy + 5);
  if (syncIdentity)
  {
    if (!v8)
    {
      goto LABEL_19;
    }

    syncIdentity = [(HDCodableSyncIdentity *)syncIdentity mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_19;
    }

    syncIdentity = [(HDCodableClinicalDeletedAccount *)self setSyncIdentity:?];
  }

  fromCopy = v9;
LABEL_19:

  MEMORY[0x2821F96F8](syncIdentity, fromCopy);
}

@end