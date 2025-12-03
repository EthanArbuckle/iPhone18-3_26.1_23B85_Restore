@interface NPKProtoRetrieveShareInvitationForMailboxAddressRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoRetrieveShareInvitationForMailboxAddressRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoRetrieveShareInvitationForMailboxAddressRequest;
  v4 = [(NPKProtoRetrieveShareInvitationForMailboxAddressRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoRetrieveShareInvitationForMailboxAddressRequest *)self dictionaryRepresentation];
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

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_mailboxAddress)
  {
    [NPKProtoRetrieveShareInvitationForMailboxAddressRequest writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_mailboxAddress copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    mailboxAddress = self->_mailboxAddress;
    if (mailboxAddress | equalCopy[1])
    {
      v6 = [(NSString *)mailboxAddress isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(NPKProtoRetrieveShareInvitationForMailboxAddressRequest *)self setMailboxAddress:?];
  }
}

@end