@interface NPKProtoBalanceReminderForBalanceAndPassRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoBalanceReminderForBalanceAndPassRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoBalanceReminderForBalanceAndPassRequest;
  v4 = [(NPKProtoBalanceReminderForBalanceAndPassRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoBalanceReminderForBalanceAndPassRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  uniqueID = self->_uniqueID;
  if (uniqueID)
  {
    [dictionary setObject:uniqueID forKey:@"uniqueID"];
  }

  balanceBytes = self->_balanceBytes;
  if (balanceBytes)
  {
    [v4 setObject:balanceBytes forKey:@"balanceBytes"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_uniqueID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_balanceBytes)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_uniqueID)
  {
    [toCopy setUniqueID:?];
    toCopy = v5;
  }

  if (self->_balanceBytes)
  {
    [v5 setBalanceBytes:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_uniqueID copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_balanceBytes copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((uniqueID = self->_uniqueID, !(uniqueID | equalCopy[2])) || -[NSString isEqual:](uniqueID, "isEqual:")))
  {
    balanceBytes = self->_balanceBytes;
    if (balanceBytes | equalCopy[1])
    {
      v7 = [(NSData *)balanceBytes isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(NPKProtoBalanceReminderForBalanceAndPassRequest *)self setUniqueID:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(NPKProtoBalanceReminderForBalanceAndPassRequest *)self setBalanceBytes:?];
    fromCopy = v5;
  }
}

@end