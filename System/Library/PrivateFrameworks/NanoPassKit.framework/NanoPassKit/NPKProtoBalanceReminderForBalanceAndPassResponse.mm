@interface NPKProtoBalanceReminderForBalanceAndPassResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoBalanceReminderForBalanceAndPassResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoBalanceReminderForBalanceAndPassResponse;
  v4 = [(NPKProtoBalanceReminderForBalanceAndPassResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoBalanceReminderForBalanceAndPassResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_pending];
    [dictionary setObject:v4 forKey:@"pending"];
  }

  balanceReminderBytes = self->_balanceReminderBytes;
  if (balanceReminderBytes)
  {
    [dictionary setObject:balanceReminderBytes forKey:@"balanceReminderBytes"];
  }

  errorData = self->_errorData;
  if (errorData)
  {
    [dictionary setObject:errorData forKey:@"errorData"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    pending = self->_pending;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

  if (self->_balanceReminderBytes)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[24] = self->_pending;
    toCopy[28] |= 1u;
  }

  v5 = toCopy;
  if (self->_balanceReminderBytes)
  {
    [toCopy setBalanceReminderBytes:?];
    toCopy = v5;
  }

  if (self->_errorData)
  {
    [v5 setErrorData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_pending;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSData *)self->_balanceReminderBytes copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSData *)self->_errorData copyWithZone:zone];
  v10 = v6[2];
  v6[2] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(equalCopy + 28);
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0)
    {
      goto LABEL_9;
    }

    v5 = *(equalCopy + 24);
    if (self->_pending)
    {
      if (*(equalCopy + 24))
      {
        goto LABEL_4;
      }

LABEL_9:
      v8 = 0;
      goto LABEL_10;
    }
  }

  if (v5)
  {
    goto LABEL_9;
  }

LABEL_4:
  balanceReminderBytes = self->_balanceReminderBytes;
  if (balanceReminderBytes | *(equalCopy + 1) && ![(NSData *)balanceReminderBytes isEqual:?])
  {
    goto LABEL_9;
  }

  errorData = self->_errorData;
  if (errorData | *(equalCopy + 2))
  {
    v8 = [(NSData *)errorData isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_10:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_pending;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_balanceReminderBytes hash]^ v3;
  return v4 ^ [(NSData *)self->_errorData hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[28])
  {
    self->_pending = fromCopy[24];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(NPKProtoBalanceReminderForBalanceAndPassResponse *)self setBalanceReminderBytes:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(NPKProtoBalanceReminderForBalanceAndPassResponse *)self setErrorData:?];
    fromCopy = v5;
  }
}

@end