@interface NPKProtoPresentStandaloneTransactionRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasTransactionType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoPresentStandaloneTransactionRequest

- (void)setHasTransactionType:(BOOL)type
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
  v8.super_class = NPKProtoPresentStandaloneTransactionRequest;
  v4 = [(NPKProtoPresentStandaloneTransactionRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoPresentStandaloneTransactionRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_transactionType];
    [dictionary setObject:v4 forKey:@"transactionType"];
  }

  watchPassUniqueID = self->_watchPassUniqueID;
  if (watchPassUniqueID)
  {
    [dictionary setObject:watchPassUniqueID forKey:@"watchPassUniqueID"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_validUntilEpochTimeInterval];
    [dictionary setObject:v6 forKey:@"validUntilEpochTimeInterval"];
  }

  terminalReaderIdentifier = self->_terminalReaderIdentifier;
  if (terminalReaderIdentifier)
  {
    [dictionary setObject:terminalReaderIdentifier forKey:@"terminalReaderIdentifier"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    transactionType = self->_transactionType;
    PBDataWriterWriteUint32Field();
    toCopy = v7;
  }

  if (self->_watchPassUniqueID)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    validUntilEpochTimeInterval = self->_validUntilEpochTimeInterval;
    PBDataWriterWriteDoubleField();
    toCopy = v7;
  }

  if (self->_terminalReaderIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[6] = self->_transactionType;
    *(toCopy + 40) |= 2u;
  }

  v5 = toCopy;
  if (self->_watchPassUniqueID)
  {
    [toCopy setWatchPassUniqueID:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_validUntilEpochTimeInterval;
    *(toCopy + 40) |= 1u;
  }

  if (self->_terminalReaderIdentifier)
  {
    [v5 setTerminalReaderIdentifier:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 24) = self->_transactionType;
    *(v5 + 40) |= 2u;
  }

  v7 = [(NSString *)self->_watchPassUniqueID copyWithZone:zone];
  v8 = *(v6 + 32);
  *(v6 + 32) = v7;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_validUntilEpochTimeInterval;
    *(v6 + 40) |= 1u;
  }

  v9 = [(NSString *)self->_terminalReaderIdentifier copyWithZone:zone];
  v10 = *(v6 + 16);
  *(v6 + 16) = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  has = self->_has;
  v6 = *(equalCopy + 40);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_transactionType != *(equalCopy + 6))
    {
      goto LABEL_17;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
    goto LABEL_17;
  }

  watchPassUniqueID = self->_watchPassUniqueID;
  if (watchPassUniqueID | *(equalCopy + 4))
  {
    if (![(NSString *)watchPassUniqueID isEqual:?])
    {
LABEL_17:
      v10 = 0;
      goto LABEL_18;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 40);
  if (has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_validUntilEpochTimeInterval != *(equalCopy + 1))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 40))
  {
    goto LABEL_17;
  }

  terminalReaderIdentifier = self->_terminalReaderIdentifier;
  if (terminalReaderIdentifier | *(equalCopy + 2))
  {
    v10 = [(NSString *)terminalReaderIdentifier isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_18:

  return v10;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_transactionType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_watchPassUniqueID hash];
  if (*&self->_has)
  {
    validUntilEpochTimeInterval = self->_validUntilEpochTimeInterval;
    if (validUntilEpochTimeInterval < 0.0)
    {
      validUntilEpochTimeInterval = -validUntilEpochTimeInterval;
    }

    *v5.i64 = floor(validUntilEpochTimeInterval + 0.5);
    v9 = (validUntilEpochTimeInterval - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v7 ^ [(NSString *)self->_terminalReaderIdentifier hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((*(fromCopy + 40) & 2) != 0)
  {
    self->_transactionType = *(fromCopy + 6);
    *&self->_has |= 2u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(NPKProtoPresentStandaloneTransactionRequest *)self setWatchPassUniqueID:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 40))
  {
    self->_validUntilEpochTimeInterval = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    [(NPKProtoPresentStandaloneTransactionRequest *)self setTerminalReaderIdentifier:?];
    fromCopy = v5;
  }
}

@end