@interface NPKProtoCarKeyGetPretrackRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoCarKeyGetPretrackRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoCarKeyGetPretrackRequest;
  v4 = [(NPKProtoCarKeyGetPretrackRequest *)&v8 description];
  v5 = [(NPKProtoCarKeyGetPretrackRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  invitationIdentifier = self->_invitationIdentifier;
  if (invitationIdentifier)
  {
    [v3 setObject:invitationIdentifier forKey:@"invitationIdentifier"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_invitationIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  invitationIdentifier = self->_invitationIdentifier;
  if (invitationIdentifier)
  {
    [a3 setInvitationIdentifier:invitationIdentifier];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_invitationIdentifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    invitationIdentifier = self->_invitationIdentifier;
    if (invitationIdentifier | v4[1])
    {
      v6 = [(NSString *)invitationIdentifier isEqual:?];
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
    [(NPKProtoCarKeyGetPretrackRequest *)self setInvitationIdentifier:?];
  }
}

@end