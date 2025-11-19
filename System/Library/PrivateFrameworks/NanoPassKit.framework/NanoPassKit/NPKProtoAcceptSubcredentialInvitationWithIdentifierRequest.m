@interface NPKProtoAcceptSubcredentialInvitationWithIdentifierRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoAcceptSubcredentialInvitationWithIdentifierRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoAcceptSubcredentialInvitationWithIdentifierRequest;
  v4 = [(NPKProtoAcceptSubcredentialInvitationWithIdentifierRequest *)&v8 description];
  v5 = [(NPKProtoAcceptSubcredentialInvitationWithIdentifierRequest *)self dictionaryRepresentation];
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

  metadataData = self->_metadataData;
  if (metadataData)
  {
    [v4 setObject:metadataData forKey:@"metadataData"];
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

  if (self->_metadataData)
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

  if (self->_metadataData)
  {
    [v5 setMetadataData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_invitationIdentifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_metadataData copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((invitationIdentifier = self->_invitationIdentifier, !(invitationIdentifier | v4[1])) || -[NSString isEqual:](invitationIdentifier, "isEqual:")))
  {
    metadataData = self->_metadataData;
    if (metadataData | v4[2])
    {
      v7 = [(NSData *)metadataData isEqual:?];
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
    [(NPKProtoAcceptSubcredentialInvitationWithIdentifierRequest *)self setInvitationIdentifier:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(NPKProtoAcceptSubcredentialInvitationWithIdentifierRequest *)self setMetadataData:?];
    v4 = v5;
  }
}

@end