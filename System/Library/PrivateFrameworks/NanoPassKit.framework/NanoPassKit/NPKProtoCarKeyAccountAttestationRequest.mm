@interface NPKProtoCarKeyAccountAttestationRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoCarKeyAccountAttestationRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoCarKeyAccountAttestationRequest;
  v4 = [(NPKProtoCarKeyAccountAttestationRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoCarKeyAccountAttestationRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  credentialData = self->_credentialData;
  if (credentialData)
  {
    [dictionary setObject:credentialData forKey:@"credentialData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_credentialData)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  credentialData = self->_credentialData;
  if (credentialData)
  {
    [to setCredentialData:credentialData];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_credentialData copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    credentialData = self->_credentialData;
    if (credentialData | equalCopy[1])
    {
      v6 = [(NSData *)credentialData isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(NPKProtoCarKeyAccountAttestationRequest *)self setCredentialData:?];
  }
}

@end