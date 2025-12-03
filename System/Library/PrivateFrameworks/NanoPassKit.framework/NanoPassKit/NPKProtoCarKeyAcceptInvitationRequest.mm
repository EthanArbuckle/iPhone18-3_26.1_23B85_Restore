@interface NPKProtoCarKeyAcceptInvitationRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoCarKeyAcceptInvitationRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoCarKeyAcceptInvitationRequest;
  v4 = [(NPKProtoCarKeyAcceptInvitationRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoCarKeyAcceptInvitationRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  invitationIdentifier = self->_invitationIdentifier;
  if (invitationIdentifier)
  {
    [dictionary setObject:invitationIdentifier forKey:@"invitationIdentifier"];
  }

  activationCode = self->_activationCode;
  if (activationCode)
  {
    [v4 setObject:activationCode forKey:@"activationCode"];
  }

  analyticsUpdateConfigData = self->_analyticsUpdateConfigData;
  if (analyticsUpdateConfigData)
  {
    [v4 setObject:analyticsUpdateConfigData forKey:@"analyticsUpdateConfigData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_invitationIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_activationCode)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_analyticsUpdateConfigData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_invitationIdentifier)
  {
    [toCopy setInvitationIdentifier:?];
    toCopy = v5;
  }

  if (self->_activationCode)
  {
    [v5 setActivationCode:?];
    toCopy = v5;
  }

  if (self->_analyticsUpdateConfigData)
  {
    [v5 setAnalyticsUpdateConfigData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_invitationIdentifier copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_activationCode copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSData *)self->_analyticsUpdateConfigData copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((invitationIdentifier = self->_invitationIdentifier, !(invitationIdentifier | equalCopy[3])) || -[NSString isEqual:](invitationIdentifier, "isEqual:")) && ((activationCode = self->_activationCode, !(activationCode | equalCopy[1])) || -[NSString isEqual:](activationCode, "isEqual:")))
  {
    analyticsUpdateConfigData = self->_analyticsUpdateConfigData;
    if (analyticsUpdateConfigData | equalCopy[2])
    {
      v8 = [(NSData *)analyticsUpdateConfigData isEqual:?];
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
  v3 = [(NSString *)self->_invitationIdentifier hash];
  v4 = [(NSString *)self->_activationCode hash]^ v3;
  return v4 ^ [(NSData *)self->_analyticsUpdateConfigData hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[3])
  {
    [(NPKProtoCarKeyAcceptInvitationRequest *)self setInvitationIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(NPKProtoCarKeyAcceptInvitationRequest *)self setActivationCode:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(NPKProtoCarKeyAcceptInvitationRequest *)self setAnalyticsUpdateConfigData:?];
    fromCopy = v5;
  }
}

@end