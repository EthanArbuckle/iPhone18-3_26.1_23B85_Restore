@interface NPKProtoProvisionPassForRemoteCredentialWithTypeAndIdentifierRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoProvisionPassForRemoteCredentialWithTypeAndIdentifierRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoProvisionPassForRemoteCredentialWithTypeAndIdentifierRequest;
  v4 = [(NPKProtoProvisionPassForRemoteCredentialWithTypeAndIdentifierRequest *)&v8 description];
  v5 = [(NPKProtoProvisionPassForRemoteCredentialWithTypeAndIdentifierRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_credentialType];
  [v3 setObject:v4 forKey:@"credentialType"];

  credentialIdentifier = self->_credentialIdentifier;
  if (credentialIdentifier)
  {
    [v3 setObject:credentialIdentifier forKey:@"credentialIdentifier"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  credentialType = self->_credentialType;
  v6 = v4;
  PBDataWriterWriteInt64Field();
  if (self->_credentialIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  *(a3 + 1) = self->_credentialType;
  credentialIdentifier = self->_credentialIdentifier;
  if (credentialIdentifier)
  {
    [a3 setCredentialIdentifier:credentialIdentifier];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = self->_credentialType;
  v6 = [(NSString *)self->_credentialIdentifier copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_credentialType == v4[1])
  {
    credentialIdentifier = self->_credentialIdentifier;
    if (credentialIdentifier | v4[2])
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

- (void)mergeFrom:(id)a3
{
  self->_credentialType = *(a3 + 1);
  if (*(a3 + 2))
  {
    [(NPKProtoProvisionPassForRemoteCredentialWithTypeAndIdentifierRequest *)self setCredentialIdentifier:?];
  }
}

@end