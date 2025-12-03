@interface NPKProtoCreateShareForPartialShareInvitationRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoCreateShareForPartialShareInvitationRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoCreateShareForPartialShareInvitationRequest;
  v4 = [(NPKProtoCreateShareForPartialShareInvitationRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoCreateShareForPartialShareInvitationRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  inviteData = self->_inviteData;
  if (inviteData)
  {
    [dictionary setObject:inviteData forKey:@"inviteData"];
  }

  authorizationData = self->_authorizationData;
  if (authorizationData)
  {
    [v4 setObject:authorizationData forKey:@"authorizationData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_inviteData)
  {
    [NPKProtoCreateShareForPartialShareInvitationRequest writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteDataField();
  if (self->_authorizationData)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setInviteData:self->_inviteData];
  if (self->_authorizationData)
  {
    [toCopy setAuthorizationData:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_inviteData copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_authorizationData copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((inviteData = self->_inviteData, !(inviteData | equalCopy[2])) || -[NSData isEqual:](inviteData, "isEqual:")))
  {
    authorizationData = self->_authorizationData;
    if (authorizationData | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(NPKProtoCreateShareForPartialShareInvitationRequest *)self setInviteData:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(NPKProtoCreateShareForPartialShareInvitationRequest *)self setAuthorizationData:?];
    fromCopy = v5;
  }
}

@end