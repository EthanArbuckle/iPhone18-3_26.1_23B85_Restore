@interface NPKProtoCarKeySetEncryptedProductPlanIdentifierContainerRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoCarKeySetEncryptedProductPlanIdentifierContainerRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoCarKeySetEncryptedProductPlanIdentifierContainerRequest;
  v4 = [(NPKProtoCarKeySetEncryptedProductPlanIdentifierContainerRequest *)&v8 description];
  v5 = [(NPKProtoCarKeySetEncryptedProductPlanIdentifierContainerRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  containerData = self->_containerData;
  if (containerData)
  {
    [v3 setObject:containerData forKey:@"containerData"];
  }

  invitationIdentifier = self->_invitationIdentifier;
  if (invitationIdentifier)
  {
    [v4 setObject:invitationIdentifier forKey:@"invitationIdentifier"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_containerData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_invitationIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_containerData)
  {
    [v4 setContainerData:?];
    v4 = v5;
  }

  if (self->_invitationIdentifier)
  {
    [v5 setInvitationIdentifier:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_containerData copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_invitationIdentifier copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((containerData = self->_containerData, !(containerData | v4[1])) || -[NSData isEqual:](containerData, "isEqual:")))
  {
    invitationIdentifier = self->_invitationIdentifier;
    if (invitationIdentifier | v4[2])
    {
      v7 = [(NSString *)invitationIdentifier isEqual:?];
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
    [(NPKProtoCarKeySetEncryptedProductPlanIdentifierContainerRequest *)self setContainerData:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(NPKProtoCarKeySetEncryptedProductPlanIdentifierContainerRequest *)self setInvitationIdentifier:?];
    v4 = v5;
  }
}

@end