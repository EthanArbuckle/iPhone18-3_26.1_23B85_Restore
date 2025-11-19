@interface BLTPBAckInitialSequenceNumberRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAssert:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BLTPBAckInitialSequenceNumberRequest

- (void)setHasAssert:(BOOL)a3
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
  v8.super_class = BLTPBAckInitialSequenceNumberRequest;
  v4 = [(BLTPBAckInitialSequenceNumberRequest *)&v8 description];
  v5 = [(BLTPBAckInitialSequenceNumberRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_assert];
    [v3 setObject:v4 forKey:@"assert"];
  }

  sessionIdentifier = self->_sessionIdentifier;
  if (sessionIdentifier)
  {
    [v3 setObject:sessionIdentifier forKey:@"sessionIdentifier"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_sessionState];
    [v3 setObject:v6 forKey:@"sessionState"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if ((*&self->_has & 2) != 0)
  {
    assert = self->_assert;
    PBDataWriterWriteBOOLField();
    v4 = v7;
  }

  if (self->_sessionIdentifier)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }

  if (*&self->_has)
  {
    sessionState = self->_sessionState;
    PBDataWriterWriteUint32Field();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[20] = self->_assert;
    v4[24] |= 2u;
  }

  if (self->_sessionIdentifier)
  {
    v5 = v4;
    [v4 setSessionIdentifier:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 4) = self->_sessionState;
    v4[24] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 20) = self->_assert;
    *(v5 + 24) |= 2u;
  }

  v7 = [(NSData *)self->_sessionIdentifier copyWithZone:a3];
  v8 = *(v6 + 8);
  *(v6 + 8) = v7;

  if (*&self->_has)
  {
    *(v6 + 16) = self->_sessionState;
    *(v6 + 24) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  has = self->_has;
  v6 = *(v4 + 24);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0)
    {
      goto LABEL_12;
    }

    v10 = *(v4 + 20);
    if (self->_assert)
    {
      if ((*(v4 + 20) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (*(v4 + 20))
    {
      goto LABEL_12;
    }
  }

  else if ((*(v4 + 24) & 2) != 0)
  {
    goto LABEL_12;
  }

  sessionIdentifier = self->_sessionIdentifier;
  if (sessionIdentifier | *(v4 + 1))
  {
    if (![(NSData *)sessionIdentifier isEqual:?])
    {
      goto LABEL_12;
    }

    has = self->_has;
  }

  v8 = (*(v4 + 24) & 1) == 0;
  if (has)
  {
    if ((*(v4 + 24) & 1) != 0 && self->_sessionState == *(v4 + 4))
    {
      v8 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_assert;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_sessionIdentifier hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_sessionState;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((*(v4 + 24) & 2) != 0)
  {
    self->_assert = *(v4 + 20);
    *&self->_has |= 2u;
  }

  if (*(v4 + 1))
  {
    v5 = v4;
    [(BLTPBAckInitialSequenceNumberRequest *)self setSessionIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 24))
  {
    self->_sessionState = *(v4 + 4);
    *&self->_has |= 1u;
  }
}

@end