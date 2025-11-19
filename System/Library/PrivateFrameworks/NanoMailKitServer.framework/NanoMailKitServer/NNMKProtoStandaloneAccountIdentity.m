@interface NNMKProtoStandaloneAccountIdentity
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NNMKProtoStandaloneAccountIdentity

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NNMKProtoStandaloneAccountIdentity;
  v4 = [(NNMKProtoStandaloneAccountIdentity *)&v8 description];
  v5 = [(NNMKProtoStandaloneAccountIdentity *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  username = self->_username;
  if (username)
  {
    [v3 setObject:username forKey:@"username"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_username)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_token)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_refreshToken)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    identityType = self->_identityType;
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }

  if (self->_accountIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_username)
  {
    [v4 setUsername:?];
    v4 = v5;
  }

  if (self->_displayName)
  {
    [v5 setDisplayName:?];
    v4 = v5;
  }

  if (self->_token)
  {
    [v5 setToken:?];
    v4 = v5;
  }

  if (self->_refreshToken)
  {
    [v5 setRefreshToken:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 6) = self->_identityType;
    *(v4 + 56) |= 1u;
  }

  if (self->_accountIdentifier)
  {
    [v5 setAccountIdentifier:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_username copyWithZone:a3];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(NSString *)self->_displayName copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_token copyWithZone:a3];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v12 = [(NSString *)self->_refreshToken copyWithZone:a3];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_identityType;
    *(v5 + 56) |= 1u;
  }

  v14 = [(NSString *)self->_accountIdentifier copyWithZone:a3];
  v15 = *(v5 + 8);
  *(v5 + 8) = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  username = self->_username;
  if (username | *(v4 + 6))
  {
    if (![(NSString *)username isEqual:?])
    {
      goto LABEL_17;
    }
  }

  displayName = self->_displayName;
  if (displayName | *(v4 + 2))
  {
    if (![(NSString *)displayName isEqual:?])
    {
      goto LABEL_17;
    }
  }

  token = self->_token;
  if (token | *(v4 + 5))
  {
    if (![(NSString *)token isEqual:?])
    {
      goto LABEL_17;
    }
  }

  refreshToken = self->_refreshToken;
  if (refreshToken | *(v4 + 4))
  {
    if (![(NSString *)refreshToken isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v9 = *(v4 + 56);
  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_identityType != *(v4 + 6))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 56))
  {
LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  accountIdentifier = self->_accountIdentifier;
  if (accountIdentifier | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 6))
  {
    [(NNMKProtoStandaloneAccountIdentity *)self setUsername:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(NNMKProtoStandaloneAccountIdentity *)self setDisplayName:?];
    v4 = v5;
  }

  if (*(v4 + 5))
  {
    [(NNMKProtoStandaloneAccountIdentity *)self setToken:?];
    v4 = v5;
  }

  if (*(v4 + 4))
  {
    [(NNMKProtoStandaloneAccountIdentity *)self setRefreshToken:?];
    v4 = v5;
  }

  if (v4[14])
  {
    self->_identityType = v4[6];
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    [(NNMKProtoStandaloneAccountIdentity *)self setAccountIdentifier:?];
    v4 = v5;
  }
}

@end