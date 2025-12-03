@interface NPKProtoSetBalanceReminderForBalanceAndPassRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoSetBalanceReminderForBalanceAndPassRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoSetBalanceReminderForBalanceAndPassRequest;
  v4 = [(NPKProtoSetBalanceReminderForBalanceAndPassRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoSetBalanceReminderForBalanceAndPassRequest *)self dictionaryRepresentation];
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

  balanceReminderBytes = self->_balanceReminderBytes;
  if (balanceReminderBytes)
  {
    [v4 setObject:balanceReminderBytes forKey:@"balanceReminderBytes"];
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

  if (self->_balanceReminderBytes)
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

  if (self->_balanceReminderBytes)
  {
    [v5 setBalanceReminderBytes:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_uniqueID copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSData *)self->_balanceBytes copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSData *)self->_balanceReminderBytes copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((uniqueID = self->_uniqueID, !(uniqueID | equalCopy[3])) || -[NSString isEqual:](uniqueID, "isEqual:")) && ((balanceBytes = self->_balanceBytes, !(balanceBytes | equalCopy[1])) || -[NSData isEqual:](balanceBytes, "isEqual:")))
  {
    balanceReminderBytes = self->_balanceReminderBytes;
    if (balanceReminderBytes | equalCopy[2])
    {
      v8 = [(NSData *)balanceReminderBytes isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uniqueID hash];
  v4 = [(NSData *)self->_balanceBytes hash]^ v3;
  return v4 ^ [(NSData *)self->_balanceReminderBytes hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[3])
  {
    [(NPKProtoSetBalanceReminderForBalanceAndPassRequest *)self setUniqueID:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(NPKProtoSetBalanceReminderForBalanceAndPassRequest *)self setBalanceBytes:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(NPKProtoSetBalanceReminderForBalanceAndPassRequest *)self setBalanceReminderBytes:?];
    fromCopy = v5;
  }
}

@end