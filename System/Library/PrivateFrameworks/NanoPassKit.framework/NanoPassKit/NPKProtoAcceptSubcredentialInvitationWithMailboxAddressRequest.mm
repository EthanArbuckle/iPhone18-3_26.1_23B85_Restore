@interface NPKProtoAcceptSubcredentialInvitationWithMailboxAddressRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoAcceptSubcredentialInvitationWithMailboxAddressRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoAcceptSubcredentialInvitationWithMailboxAddressRequest;
  v4 = [(NPKProtoAcceptSubcredentialInvitationWithMailboxAddressRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoAcceptSubcredentialInvitationWithMailboxAddressRequest *)self dictionaryRepresentation];
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

  activationCode = self->_activationCode;
  if (activationCode)
  {
    [v4 setObject:activationCode forKey:@"activationCode"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_mailboxAddress)
  {
    [NPKProtoAcceptSubcredentialInvitationWithMailboxAddressRequest writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  if (self->_activationCode)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setMailboxAddress:self->_mailboxAddress];
  if (self->_activationCode)
  {
    [toCopy setActivationCode:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_mailboxAddress copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_activationCode copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((mailboxAddress = self->_mailboxAddress, !(mailboxAddress | equalCopy[2])) || -[NSString isEqual:](mailboxAddress, "isEqual:")))
  {
    activationCode = self->_activationCode;
    if (activationCode | equalCopy[1])
    {
      v7 = [(NSString *)activationCode isEqual:?];
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
    [(NPKProtoAcceptSubcredentialInvitationWithMailboxAddressRequest *)self setMailboxAddress:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(NPKProtoAcceptSubcredentialInvitationWithMailboxAddressRequest *)self setActivationCode:?];
    fromCopy = v5;
  }
}

@end