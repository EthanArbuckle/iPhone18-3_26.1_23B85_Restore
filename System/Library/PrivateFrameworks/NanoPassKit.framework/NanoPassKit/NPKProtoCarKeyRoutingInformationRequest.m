@interface NPKProtoCarKeyRoutingInformationRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoCarKeyRoutingInformationRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoCarKeyRoutingInformationRequest;
  v4 = [(NPKProtoCarKeyRoutingInformationRequest *)&v8 description];
  v5 = [(NPKProtoCarKeyRoutingInformationRequest *)self dictionaryRepresentation];
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

  transportIdentifier = self->_transportIdentifier;
  if (transportIdentifier)
  {
    [v4 setObject:transportIdentifier forKey:@"transportIdentifier"];
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

  if (self->_transportIdentifier)
  {
    PBDataWriterWriteStringField();
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

  if (self->_transportIdentifier)
  {
    [v5 setTransportIdentifier:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_invitationIdentifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_transportIdentifier copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((invitationIdentifier = self->_invitationIdentifier, !(invitationIdentifier | v4[1])) || -[NSString isEqual:](invitationIdentifier, "isEqual:")))
  {
    transportIdentifier = self->_transportIdentifier;
    if (transportIdentifier | v4[2])
    {
      v7 = [(NSString *)transportIdentifier isEqual:?];
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
    [(NPKProtoCarKeyRoutingInformationRequest *)self setInvitationIdentifier:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(NPKProtoCarKeyRoutingInformationRequest *)self setTransportIdentifier:?];
    v4 = v5;
  }
}

@end