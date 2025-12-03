@interface NPKProtoUpdateSubcredentialMetadataRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoUpdateSubcredentialMetadataRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoUpdateSubcredentialMetadataRequest;
  v4 = [(NPKProtoUpdateSubcredentialMetadataRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoUpdateSubcredentialMetadataRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  passData = self->_passData;
  if (passData)
  {
    [dictionary setObject:passData forKey:@"passData"];
  }

  credentialData = self->_credentialData;
  if (credentialData)
  {
    [v4 setObject:credentialData forKey:@"credentialData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_passData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_credentialData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_passData)
  {
    [toCopy setPassData:?];
    toCopy = v5;
  }

  if (self->_credentialData)
  {
    [v5 setCredentialData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_passData copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_credentialData copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((passData = self->_passData, !(passData | equalCopy[2])) || -[NSData isEqual:](passData, "isEqual:")))
  {
    credentialData = self->_credentialData;
    if (credentialData | equalCopy[1])
    {
      v7 = [(NSData *)credentialData isEqual:?];
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
    [(NPKProtoUpdateSubcredentialMetadataRequest *)self setPassData:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(NPKProtoUpdateSubcredentialMetadataRequest *)self setCredentialData:?];
    fromCopy = v5;
  }
}

@end