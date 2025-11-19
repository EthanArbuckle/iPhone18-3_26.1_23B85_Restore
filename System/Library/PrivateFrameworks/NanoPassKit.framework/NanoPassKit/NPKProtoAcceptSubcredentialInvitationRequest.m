@interface NPKProtoAcceptSubcredentialInvitationRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoAcceptSubcredentialInvitationRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoAcceptSubcredentialInvitationRequest;
  v4 = [(NPKProtoAcceptSubcredentialInvitationRequest *)&v8 description];
  v5 = [(NPKProtoAcceptSubcredentialInvitationRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  invitationData = self->_invitationData;
  if (invitationData)
  {
    [v3 setObject:invitationData forKey:@"invitationData"];
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
  if (self->_invitationData)
  {
    PBDataWriterWriteDataField();
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
  if (self->_invitationData)
  {
    [v4 setInvitationData:?];
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
  v6 = [(NSData *)self->_invitationData copyWithZone:a3];
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
  if ([v4 isMemberOfClass:objc_opt_class()] && ((invitationData = self->_invitationData, !(invitationData | v4[1])) || -[NSData isEqual:](invitationData, "isEqual:")))
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
    [(NPKProtoAcceptSubcredentialInvitationRequest *)self setInvitationData:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(NPKProtoAcceptSubcredentialInvitationRequest *)self setMetadataData:?];
    v4 = v5;
  }
}

@end