@interface NPKProtoRetrieveShareInvitationForMailboxAddressRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoRetrieveShareInvitationForMailboxAddressRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoRetrieveShareInvitationForMailboxAddressRequest;
  v4 = [(NPKProtoRetrieveShareInvitationForMailboxAddressRequest *)&v8 description];
  v5 = [(NPKProtoRetrieveShareInvitationForMailboxAddressRequest *)self dictionaryRepresentation];
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

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_mailboxAddress)
  {
    [NPKProtoRetrieveShareInvitationForMailboxAddressRequest writeTo:];
  }

  v5 = v4;
  PBDataWriterWriteStringField();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_mailboxAddress copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    mailboxAddress = self->_mailboxAddress;
    if (mailboxAddress | v4[1])
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(NPKProtoRetrieveShareInvitationForMailboxAddressRequest *)self setMailboxAddress:?];
  }
}

@end