@interface NPKProtoPresentStandaloneTransactionRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasTransactionType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoPresentStandaloneTransactionRequest

- (void)setHasTransactionType:(BOOL)a3
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
  v8.super_class = NPKProtoPresentStandaloneTransactionRequest;
  v4 = [(NPKProtoPresentStandaloneTransactionRequest *)&v8 description];
  v5 = [(NPKProtoPresentStandaloneTransactionRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_transactionType];
    [v3 setObject:v4 forKey:@"transactionType"];
  }

  watchPassUniqueID = self->_watchPassUniqueID;
  if (watchPassUniqueID)
  {
    [v3 setObject:watchPassUniqueID forKey:@"watchPassUniqueID"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_validUntilEpochTimeInterval];
    [v3 setObject:v6 forKey:@"validUntilEpochTimeInterval"];
  }

  terminalReaderIdentifier = self->_terminalReaderIdentifier;
  if (terminalReaderIdentifier)
  {
    [v3 setObject:terminalReaderIdentifier forKey:@"terminalReaderIdentifier"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if ((*&self->_has & 2) != 0)
  {
    transactionType = self->_transactionType;
    PBDataWriterWriteUint32Field();
    v4 = v7;
  }

  if (self->_watchPassUniqueID)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (*&self->_has)
  {
    validUntilEpochTimeInterval = self->_validUntilEpochTimeInterval;
    PBDataWriterWriteDoubleField();
    v4 = v7;
  }

  if (self->_terminalReaderIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[6] = self->_transactionType;
    *(v4 + 40) |= 2u;
  }

  v5 = v4;
  if (self->_watchPassUniqueID)
  {
    [v4 setWatchPassUniqueID:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_validUntilEpochTimeInterval;
    *(v4 + 40) |= 1u;
  }

  if (self->_terminalReaderIdentifier)
  {
    [v5 setTerminalReaderIdentifier:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 24) = self->_transactionType;
    *(v5 + 40) |= 2u;
  }

  v7 = [(NSString *)self->_watchPassUniqueID copyWithZone:a3];
  v8 = *(v6 + 32);
  *(v6 + 32) = v7;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_validUntilEpochTimeInterval;
    *(v6 + 40) |= 1u;
  }

  v9 = [(NSString *)self->_terminalReaderIdentifier copyWithZone:a3];
  v10 = *(v6 + 16);
  *(v6 + 16) = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  has = self->_has;
  v6 = *(v4 + 40);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_transactionType != *(v4 + 6))
    {
      goto LABEL_17;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_17;
  }

  watchPassUniqueID = self->_watchPassUniqueID;
  if (watchPassUniqueID | *(v4 + 4))
  {
    if (![(NSString *)watchPassUniqueID isEqual:?])
    {
LABEL_17:
      v10 = 0;
      goto LABEL_18;
    }

    has = self->_has;
  }

  v8 = *(v4 + 40);
  if (has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_validUntilEpochTimeInterval != *(v4 + 1))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_17;
  }

  terminalReaderIdentifier = self->_terminalReaderIdentifier;
  if (terminalReaderIdentifier | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((*(v4 + 40) & 2) != 0)
  {
    self->_transactionType = *(v4 + 6);
    *&self->_has |= 2u;
  }

  v5 = v4;
  if (*(v4 + 4))
  {
    [(NPKProtoPresentStandaloneTransactionRequest *)self setWatchPassUniqueID:?];
    v4 = v5;
  }

  if (*(v4 + 40))
  {
    self->_validUntilEpochTimeInterval = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    [(NPKProtoPresentStandaloneTransactionRequest *)self setTerminalReaderIdentifier:?];
    v4 = v5;
  }
}

@end