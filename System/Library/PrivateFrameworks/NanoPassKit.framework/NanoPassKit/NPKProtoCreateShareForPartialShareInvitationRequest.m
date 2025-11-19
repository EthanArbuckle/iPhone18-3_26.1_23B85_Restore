@interface NPKProtoCreateShareForPartialShareInvitationRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoCreateShareForPartialShareInvitationRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoCreateShareForPartialShareInvitationRequest;
  v4 = [(NPKProtoCreateShareForPartialShareInvitationRequest *)&v8 description];
  v5 = [(NPKProtoCreateShareForPartialShareInvitationRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  inviteData = self->_inviteData;
  if (inviteData)
  {
    [v3 setObject:inviteData forKey:@"inviteData"];
  }

  authorizationData = self->_authorizationData;
  if (authorizationData)
  {
    [v4 setObject:authorizationData forKey:@"authorizationData"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_inviteData)
  {
    [NPKProtoCreateShareForPartialShareInvitationRequest writeTo:];
  }

  v5 = v4;
  PBDataWriterWriteDataField();
  if (self->_authorizationData)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  [v4 setInviteData:self->_inviteData];
  if (self->_authorizationData)
  {
    [v4 setAuthorizationData:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_inviteData copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_authorizationData copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((inviteData = self->_inviteData, !(inviteData | v4[2])) || -[NSData isEqual:](inviteData, "isEqual:")))
  {
    authorizationData = self->_authorizationData;
    if (authorizationData | v4[1])
    {
      v7 = [(NSData *)authorizationData isEqual:?];
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
    [(NPKProtoCreateShareForPartialShareInvitationRequest *)self setInviteData:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(NPKProtoCreateShareForPartialShareInvitationRequest *)self setAuthorizationData:?];
    v4 = v5;
  }
}

@end