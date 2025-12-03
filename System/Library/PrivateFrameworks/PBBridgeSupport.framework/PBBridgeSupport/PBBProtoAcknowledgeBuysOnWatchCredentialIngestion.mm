@interface PBBProtoAcknowledgeBuysOnWatchCredentialIngestion
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSuccess:(BOOL)success;
- (void)writeTo:(id)to;
@end

@implementation PBBProtoAcknowledgeBuysOnWatchCredentialIngestion

- (void)setHasSuccess:(BOOL)success
{
  if (success)
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
  v8.super_class = PBBProtoAcknowledgeBuysOnWatchCredentialIngestion;
  v4 = [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)&v8 description];
  dictionaryRepresentation = [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_success];
    [dictionary setObject:v4 forKey:@"success"];
  }

  errorDescription = self->_errorDescription;
  if (errorDescription)
  {
    [dictionary setObject:errorDescription forKey:@"errorDescription"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_errorCode];
    [dictionary setObject:v6 forKey:@"errorCode"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    success = self->_success;
    PBDataWriterWriteBOOLField();
    toCopy = v7;
  }

  if (self->_errorDescription)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[24] = self->_success;
    toCopy[28] |= 2u;
  }

  if (self->_errorDescription)
  {
    v5 = toCopy;
    [toCopy setErrorDescription:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 2) = self->_errorCode;
    toCopy[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 24) = self->_success;
    *(v5 + 28) |= 2u;
  }

  v7 = [(NSString *)self->_errorDescription copyWithZone:zone];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_errorCode;
    *(v6 + 28) |= 1u;
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
  v6 = *(equalCopy + 28);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0)
    {
      goto LABEL_12;
    }

    v10 = *(equalCopy + 24);
    if (self->_success)
    {
      if ((*(equalCopy + 24) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (*(equalCopy + 24))
    {
      goto LABEL_12;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
    goto LABEL_12;
  }

  errorDescription = self->_errorDescription;
  if (errorDescription | *(equalCopy + 2))
  {
    if (![(NSString *)errorDescription isEqual:?])
    {
      goto LABEL_12;
    }

    has = self->_has;
  }

  v8 = (*(equalCopy + 28) & 1) == 0;
  if (has)
  {
    if ((*(equalCopy + 28) & 1) != 0 && self->_errorCode == *(equalCopy + 2))
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
    v3 = 2654435761 * self->_success;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_errorDescription hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_errorCode;
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
  if ((*(fromCopy + 28) & 2) != 0)
  {
    self->_success = *(fromCopy + 24);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 2))
  {
    v5 = fromCopy;
    [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)self setErrorDescription:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 28))
  {
    self->_errorCode = *(fromCopy + 2);
    *&self->_has |= 1u;
  }
}

@end