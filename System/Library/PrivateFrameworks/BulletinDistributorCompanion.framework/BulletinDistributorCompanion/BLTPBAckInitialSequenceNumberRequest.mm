@interface BLTPBAckInitialSequenceNumberRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAssert:(BOOL)assert;
- (void)writeTo:(id)to;
@end

@implementation BLTPBAckInitialSequenceNumberRequest

- (void)setHasAssert:(BOOL)assert
{
  if (assert)
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
  dictionaryRepresentation = [(BLTPBAckInitialSequenceNumberRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_assert];
    [dictionary setObject:v4 forKey:@"assert"];
  }

  sessionIdentifier = self->_sessionIdentifier;
  if (sessionIdentifier)
  {
    [dictionary setObject:sessionIdentifier forKey:@"sessionIdentifier"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_sessionState];
    [dictionary setObject:v6 forKey:@"sessionState"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    assert = self->_assert;
    PBDataWriterWriteBOOLField();
    toCopy = v7;
  }

  if (self->_sessionIdentifier)
  {
    PBDataWriterWriteDataField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    sessionState = self->_sessionState;
    PBDataWriterWriteUint32Field();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[20] = self->_assert;
    toCopy[24] |= 2u;
  }

  if (self->_sessionIdentifier)
  {
    v5 = toCopy;
    [toCopy setSessionIdentifier:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 4) = self->_sessionState;
    toCopy[24] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 20) = self->_assert;
    *(v5 + 24) |= 2u;
  }

  v7 = [(NSData *)self->_sessionIdentifier copyWithZone:zone];
  v8 = *(v6 + 8);
  *(v6 + 8) = v7;

  if (*&self->_has)
  {
    *(v6 + 16) = self->_sessionState;
    *(v6 + 24) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  has = self->_has;
  v6 = *(equalCopy + 24);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) == 0)
    {
      goto LABEL_12;
    }

    v10 = *(equalCopy + 20);
    if (self->_assert)
    {
      if ((*(equalCopy + 20) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (*(equalCopy + 20))
    {
      goto LABEL_12;
    }
  }

  else if ((*(equalCopy + 24) & 2) != 0)
  {
    goto LABEL_12;
  }

  sessionIdentifier = self->_sessionIdentifier;
  if (sessionIdentifier | *(equalCopy + 1))
  {
    if (![(NSData *)sessionIdentifier isEqual:?])
    {
      goto LABEL_12;
    }

    has = self->_has;
  }

  v8 = (*(equalCopy + 24) & 1) == 0;
  if (has)
  {
    if ((*(equalCopy + 24) & 1) != 0 && self->_sessionState == *(equalCopy + 4))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((*(fromCopy + 24) & 2) != 0)
  {
    self->_assert = *(fromCopy + 20);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 1))
  {
    v5 = fromCopy;
    [(BLTPBAckInitialSequenceNumberRequest *)self setSessionIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 24))
  {
    self->_sessionState = *(fromCopy + 4);
    *&self->_has |= 1u;
  }
}

@end