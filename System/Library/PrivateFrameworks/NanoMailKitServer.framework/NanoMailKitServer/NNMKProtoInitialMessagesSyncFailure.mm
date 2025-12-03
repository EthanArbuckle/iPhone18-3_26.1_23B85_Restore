@interface NNMKProtoInitialMessagesSyncFailure
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NNMKProtoInitialMessagesSyncFailure

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NNMKProtoInitialMessagesSyncFailure;
  v4 = [(NNMKProtoInitialMessagesSyncFailure *)&v8 description];
  dictionaryRepresentation = [(NNMKProtoInitialMessagesSyncFailure *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  mailboxId = self->_mailboxId;
  if (mailboxId)
  {
    [dictionary setObject:mailboxId forKey:@"mailboxId"];
  }

  errorDomain = self->_errorDomain;
  if (errorDomain)
  {
    [v4 setObject:errorDomain forKey:@"errorDomain"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_errorCode];
    [v4 setObject:v7 forKey:@"errorCode"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_mailboxId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_errorDomain)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_mailboxId)
  {
    [toCopy setMailboxId:?];
    toCopy = v5;
  }

  if (self->_errorDomain)
  {
    [v5 setErrorDomain:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 2) = self->_errorCode;
    *(toCopy + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_mailboxId copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_errorDomain copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_errorCode;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  mailboxId = self->_mailboxId;
  if (mailboxId | *(equalCopy + 3))
  {
    if (![(NSString *)mailboxId isEqual:?])
    {
      goto LABEL_10;
    }
  }

  errorDomain = self->_errorDomain;
  if (errorDomain | *(equalCopy + 2))
  {
    if (![(NSString *)errorDomain isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(equalCopy + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) != 0 && self->_errorCode == *(equalCopy + 2))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_mailboxId hash];
  v4 = [(NSString *)self->_errorDomain hash];
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
  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(NNMKProtoInitialMessagesSyncFailure *)self setMailboxId:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(NNMKProtoInitialMessagesSyncFailure *)self setErrorDomain:?];
    fromCopy = v5;
  }

  if (fromCopy[8])
  {
    self->_errorCode = fromCopy[2];
    *&self->_has |= 1u;
  }
}

@end