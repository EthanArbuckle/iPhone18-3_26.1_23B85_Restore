@interface NPKProtoCacheSharingMessageFromMailboxAddressRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoCacheSharingMessageFromMailboxAddressRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoCacheSharingMessageFromMailboxAddressRequest;
  v4 = [(NPKProtoCacheSharingMessageFromMailboxAddressRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoCacheSharingMessageFromMailboxAddressRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  mailboxAddress = self->_mailboxAddress;
  if (mailboxAddress)
  {
    [dictionary setObject:mailboxAddress forKey:@"mailboxAddress"];
  }

  sharingMessageData = self->_sharingMessageData;
  if (sharingMessageData)
  {
    [v4 setObject:sharingMessageData forKey:@"sharingMessageData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_mailboxAddress)
  {
    [NPKProtoCacheSharingMessageFromMailboxAddressRequest writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  if (!self->_sharingMessageData)
  {
    [NPKProtoCacheSharingMessageFromMailboxAddressRequest writeTo:];
  }

  PBDataWriterWriteDataField();
}

- (void)copyTo:(id)to
{
  mailboxAddress = self->_mailboxAddress;
  toCopy = to;
  [toCopy setMailboxAddress:mailboxAddress];
  [toCopy setSharingMessageData:self->_sharingMessageData];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_mailboxAddress copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_sharingMessageData copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((mailboxAddress = self->_mailboxAddress, !(mailboxAddress | equalCopy[1])) || -[NSString isEqual:](mailboxAddress, "isEqual:")))
  {
    sharingMessageData = self->_sharingMessageData;
    if (sharingMessageData | equalCopy[2])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(NPKProtoCacheSharingMessageFromMailboxAddressRequest *)self setMailboxAddress:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(NPKProtoCacheSharingMessageFromMailboxAddressRequest *)self setSharingMessageData:?];
    fromCopy = v5;
  }
}

@end