@interface NPKProtoBalanceReminderForBalanceAndPassRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoBalanceReminderForBalanceAndPassRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoBalanceReminderForBalanceAndPassRequest;
  v4 = [(NPKProtoBalanceReminderForBalanceAndPassRequest *)&v8 description];
  v5 = [(NPKProtoBalanceReminderForBalanceAndPassRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  uniqueID = self->_uniqueID;
  if (uniqueID)
  {
    [v3 setObject:uniqueID forKey:@"uniqueID"];
  }

  balanceBytes = self->_balanceBytes;
  if (balanceBytes)
  {
    [v4 setObject:balanceBytes forKey:@"balanceBytes"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_uniqueID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_balanceBytes)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_uniqueID)
  {
    [v4 setUniqueID:?];
    v4 = v5;
  }

  if (self->_balanceBytes)
  {
    [v5 setBalanceBytes:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uniqueID copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_balanceBytes copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((uniqueID = self->_uniqueID, !(uniqueID | v4[2])) || -[NSString isEqual:](uniqueID, "isEqual:")))
  {
    balanceBytes = self->_balanceBytes;
    if (balanceBytes | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(NPKProtoBalanceReminderForBalanceAndPassRequest *)self setUniqueID:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(NPKProtoBalanceReminderForBalanceAndPassRequest *)self setBalanceBytes:?];
    v4 = v5;
  }
}

@end