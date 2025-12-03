@interface NPKProtoAcceptSubcredentialInvitationRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoAcceptSubcredentialInvitationRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoAcceptSubcredentialInvitationRequest;
  v4 = [(NPKProtoAcceptSubcredentialInvitationRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoAcceptSubcredentialInvitationRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  invitationData = self->_invitationData;
  if (invitationData)
  {
    [dictionary setObject:invitationData forKey:@"invitationData"];
  }

  metadataData = self->_metadataData;
  if (metadataData)
  {
    [v4 setObject:metadataData forKey:@"metadataData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_invitationData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_metadataData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_invitationData)
  {
    [toCopy setInvitationData:?];
    toCopy = v5;
  }

  if (self->_metadataData)
  {
    [v5 setMetadataData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_invitationData copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_metadataData copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((invitationData = self->_invitationData, !(invitationData | equalCopy[1])) || -[NSData isEqual:](invitationData, "isEqual:")))
  {
    metadataData = self->_metadataData;
    if (metadataData | equalCopy[2])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(NPKProtoAcceptSubcredentialInvitationRequest *)self setInvitationData:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(NPKProtoAcceptSubcredentialInvitationRequest *)self setMetadataData:?];
    fromCopy = v5;
  }
}

@end