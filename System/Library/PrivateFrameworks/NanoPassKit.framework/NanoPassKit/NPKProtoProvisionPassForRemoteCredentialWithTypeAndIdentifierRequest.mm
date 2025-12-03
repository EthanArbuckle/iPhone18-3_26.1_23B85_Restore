@interface NPKProtoProvisionPassForRemoteCredentialWithTypeAndIdentifierRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoProvisionPassForRemoteCredentialWithTypeAndIdentifierRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoProvisionPassForRemoteCredentialWithTypeAndIdentifierRequest;
  v4 = [(NPKProtoProvisionPassForRemoteCredentialWithTypeAndIdentifierRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoProvisionPassForRemoteCredentialWithTypeAndIdentifierRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_credentialType];
  [dictionary setObject:v4 forKey:@"credentialType"];

  credentialIdentifier = self->_credentialIdentifier;
  if (credentialIdentifier)
  {
    [dictionary setObject:credentialIdentifier forKey:@"credentialIdentifier"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  credentialType = self->_credentialType;
  v6 = toCopy;
  PBDataWriterWriteInt64Field();
  if (self->_credentialIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  *(to + 1) = self->_credentialType;
  credentialIdentifier = self->_credentialIdentifier;
  if (credentialIdentifier)
  {
    [to setCredentialIdentifier:credentialIdentifier];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[1] = self->_credentialType;
  v6 = [(NSString *)self->_credentialIdentifier copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_credentialType == equalCopy[1])
  {
    credentialIdentifier = self->_credentialIdentifier;
    if (credentialIdentifier | equalCopy[2])
    {
      v6 = [(NSString *)credentialIdentifier isEqual:?];
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
  self->_credentialType = *(from + 1);
  if (*(from + 2))
  {
    [(NPKProtoProvisionPassForRemoteCredentialWithTypeAndIdentifierRequest *)self setCredentialIdentifier:?];
  }
}

@end