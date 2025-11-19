@interface NPKProtoCarKeyAcceptInvitationRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoCarKeyAcceptInvitationRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoCarKeyAcceptInvitationRequest;
  v4 = [(NPKProtoCarKeyAcceptInvitationRequest *)&v8 description];
  v5 = [(NPKProtoCarKeyAcceptInvitationRequest *)self dictionaryRepresentation];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_invitationIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_activationCode)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_analyticsUpdateConfigData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_invitationIdentifier)
  {
    [v4 setInvitationIdentifier:?];
    v4 = v5;
  }

  if (self->_activationCode)
  {
    [v5 setActivationCode:?];
    v4 = v5;
  }

  if (self->_analyticsUpdateConfigData)
  {
    [v5 setAnalyticsUpdateConfigData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_invitationIdentifier copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_activationCode copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSData *)self->_analyticsUpdateConfigData copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((invitationIdentifier = self->_invitationIdentifier, !(invitationIdentifier | v4[3])) || -[NSString isEqual:](invitationIdentifier, "isEqual:")) && ((activationCode = self->_activationCode, !(activationCode | v4[1])) || -[NSString isEqual:](activationCode, "isEqual:")))
  {
    analyticsUpdateConfigData = self->_analyticsUpdateConfigData;
    if (analyticsUpdateConfigData | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[3])
  {
    [(NPKProtoCarKeyAcceptInvitationRequest *)self setInvitationIdentifier:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(NPKProtoCarKeyAcceptInvitationRequest *)self setActivationCode:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(NPKProtoCarKeyAcceptInvitationRequest *)self setAnalyticsUpdateConfigData:?];
    v4 = v5;
  }
}

@end