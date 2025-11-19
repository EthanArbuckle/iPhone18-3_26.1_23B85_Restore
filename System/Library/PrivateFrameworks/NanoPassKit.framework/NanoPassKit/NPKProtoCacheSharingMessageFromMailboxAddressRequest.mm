@interface NPKProtoCacheSharingMessageFromMailboxAddressRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoCacheSharingMessageFromMailboxAddressRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoCacheSharingMessageFromMailboxAddressRequest;
  v4 = [(NPKProtoCacheSharingMessageFromMailboxAddressRequest *)&v8 description];
  v5 = [(NPKProtoCacheSharingMessageFromMailboxAddressRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  mailboxAddress = self->_mailboxAddress;
  if (mailboxAddress)
  {
    [v3 setObject:mailboxAddress forKey:@"mailboxAddress"];
  }

  sharingMessageData = self->_sharingMessageData;
  if (sharingMessageData)
  {
    [v4 setObject:sharingMessageData forKey:@"sharingMessageData"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_mailboxAddress)
  {
    [NPKProtoCacheSharingMessageFromMailboxAddressRequest writeTo:];
  }

  v5 = v4;
  PBDataWriterWriteStringField();
  if (!self->_sharingMessageData)
  {
    [NPKProtoCacheSharingMessageFromMailboxAddressRequest writeTo:];
  }

  PBDataWriterWriteDataField();
}

- (void)copyTo:(id)a3
{
  mailboxAddress = self->_mailboxAddress;
  v5 = a3;
  [v5 setMailboxAddress:mailboxAddress];
  [v5 setSharingMessageData:self->_sharingMessageData];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_mailboxAddress copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_sharingMessageData copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((mailboxAddress = self->_mailboxAddress, !(mailboxAddress | v4[1])) || -[NSString isEqual:](mailboxAddress, "isEqual:")))
  {
    sharingMessageData = self->_sharingMessageData;
    if (sharingMessageData | v4[2])
    {
      v7 = [(NSData *)sharingMessageData isEqual:?];
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
  if (v4[1])
  {
    [(NPKProtoCacheSharingMessageFromMailboxAddressRequest *)self setMailboxAddress:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(NPKProtoCacheSharingMessageFromMailboxAddressRequest *)self setSharingMessageData:?];
    v4 = v5;
  }
}

@end