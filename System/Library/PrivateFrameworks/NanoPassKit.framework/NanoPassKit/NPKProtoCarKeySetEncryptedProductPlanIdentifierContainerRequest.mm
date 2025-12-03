@interface NPKProtoCarKeySetEncryptedProductPlanIdentifierContainerRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoCarKeySetEncryptedProductPlanIdentifierContainerRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoCarKeySetEncryptedProductPlanIdentifierContainerRequest;
  v4 = [(NPKProtoCarKeySetEncryptedProductPlanIdentifierContainerRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoCarKeySetEncryptedProductPlanIdentifierContainerRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  containerData = self->_containerData;
  if (containerData)
  {
    [dictionary setObject:containerData forKey:@"containerData"];
  }

  invitationIdentifier = self->_invitationIdentifier;
  if (invitationIdentifier)
  {
    [v4 setObject:invitationIdentifier forKey:@"invitationIdentifier"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_containerData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_invitationIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_containerData)
  {
    [toCopy setContainerData:?];
    toCopy = v5;
  }

  if (self->_invitationIdentifier)
  {
    [v5 setInvitationIdentifier:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_containerData copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_invitationIdentifier copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((containerData = self->_containerData, !(containerData | equalCopy[1])) || -[NSData isEqual:](containerData, "isEqual:")))
  {
    invitationIdentifier = self->_invitationIdentifier;
    if (invitationIdentifier | equalCopy[2])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(NPKProtoCarKeySetEncryptedProductPlanIdentifierContainerRequest *)self setContainerData:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(NPKProtoCarKeySetEncryptedProductPlanIdentifierContainerRequest *)self setInvitationIdentifier:?];
    fromCopy = v5;
  }
}

@end