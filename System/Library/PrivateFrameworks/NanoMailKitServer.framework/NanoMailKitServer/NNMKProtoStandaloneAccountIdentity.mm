@interface NNMKProtoStandaloneAccountIdentity
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NNMKProtoStandaloneAccountIdentity

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NNMKProtoStandaloneAccountIdentity;
  v4 = [(NNMKProtoStandaloneAccountIdentity *)&v8 description];
  dictionaryRepresentation = [(NNMKProtoStandaloneAccountIdentity *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  username = self->_username;
  if (username)
  {
    [dictionary setObject:username forKey:@"username"];
  }

  displayName = self->_displayName;
  if (displayName)
  {
    [v4 setObject:displayName forKey:@"displayName"];
  }

  token = self->_token;
  if (token)
  {
    [v4 setObject:token forKey:@"token"];
  }

  refreshToken = self->_refreshToken;
  if (refreshToken)
  {
    [v4 setObject:refreshToken forKey:@"refreshToken"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_identityType];
    [v4 setObject:v9 forKey:@"identityType"];
  }

  accountIdentifier = self->_accountIdentifier;
  if (accountIdentifier)
  {
    [v4 setObject:accountIdentifier forKey:@"accountIdentifier"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_username)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_token)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_refreshToken)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    identityType = self->_identityType;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }

  if (self->_accountIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_username)
  {
    [toCopy setUsername:?];
    toCopy = v5;
  }

  if (self->_displayName)
  {
    [v5 setDisplayName:?];
    toCopy = v5;
  }

  if (self->_token)
  {
    [v5 setToken:?];
    toCopy = v5;
  }

  if (self->_refreshToken)
  {
    [v5 setRefreshToken:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 6) = self->_identityType;
    *(toCopy + 56) |= 1u;
  }

  if (self->_accountIdentifier)
  {
    [v5 setAccountIdentifier:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_username copyWithZone:zone];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(NSString *)self->_displayName copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_token copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v12 = [(NSString *)self->_refreshToken copyWithZone:zone];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_identityType;
    *(v5 + 56) |= 1u;
  }

  v14 = [(NSString *)self->_accountIdentifier copyWithZone:zone];
  v15 = *(v5 + 8);
  *(v5 + 8) = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  username = self->_username;
  if (username | *(equalCopy + 6))
  {
    if (![(NSString *)username isEqual:?])
    {
      goto LABEL_17;
    }
  }

  displayName = self->_displayName;
  if (displayName | *(equalCopy + 2))
  {
    if (![(NSString *)displayName isEqual:?])
    {
      goto LABEL_17;
    }
  }

  token = self->_token;
  if (token | *(equalCopy + 5))
  {
    if (![(NSString *)token isEqual:?])
    {
      goto LABEL_17;
    }
  }

  refreshToken = self->_refreshToken;
  if (refreshToken | *(equalCopy + 4))
  {
    if (![(NSString *)refreshToken isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v9 = *(equalCopy + 56);
  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_identityType != *(equalCopy + 6))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 56))
  {
LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  accountIdentifier = self->_accountIdentifier;
  if (accountIdentifier | *(equalCopy + 1))
  {
    v11 = [(NSString *)accountIdentifier isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_18:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_username hash];
  v4 = [(NSString *)self->_displayName hash];
  v5 = [(NSString *)self->_token hash];
  v6 = [(NSString *)self->_refreshToken hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_identityType;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(NSString *)self->_accountIdentifier hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 6))
  {
    [(NNMKProtoStandaloneAccountIdentity *)self setUsername:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(NNMKProtoStandaloneAccountIdentity *)self setDisplayName:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 5))
  {
    [(NNMKProtoStandaloneAccountIdentity *)self setToken:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 4))
  {
    [(NNMKProtoStandaloneAccountIdentity *)self setRefreshToken:?];
    fromCopy = v5;
  }

  if (fromCopy[14])
  {
    self->_identityType = fromCopy[6];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    [(NNMKProtoStandaloneAccountIdentity *)self setAccountIdentifier:?];
    fromCopy = v5;
  }
}

@end