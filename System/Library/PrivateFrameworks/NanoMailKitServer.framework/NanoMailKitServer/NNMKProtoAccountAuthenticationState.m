@interface NNMKProtoAccountAuthenticationState
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NNMKProtoAccountAuthenticationState

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NNMKProtoAccountAuthenticationState;
  v4 = [(NNMKProtoAccountAuthenticationState *)&v8 description];
  v5 = [(NNMKProtoAccountAuthenticationState *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  accountId = self->_accountId;
  if (accountId)
  {
    [v3 setObject:accountId forKey:@"accountId"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_standaloneState];
    [v4 setObject:v6 forKey:@"standaloneState"];
  }

  displayName = self->_displayName;
  if (displayName)
  {
    [v4 setObject:displayName forKey:@"displayName"];
  }

  subsectionId = self->_subsectionId;
  if (subsectionId)
  {
    [v4 setObject:subsectionId forKey:@"subsectionId"];
  }

  emailAddressToken = self->_emailAddressToken;
  if (emailAddressToken)
  {
    [v4 setObject:emailAddressToken forKey:@"emailAddressToken"];
  }

  pccEmailAddress = self->_pccEmailAddress;
  if (pccEmailAddress)
  {
    [v4 setObject:pccEmailAddress forKey:@"pccEmailAddress"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_accountId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    standaloneState = self->_standaloneState;
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }

  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_subsectionId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_emailAddressToken)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_pccEmailAddress)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_accountId)
  {
    [v4 setAccountId:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 10) = self->_standaloneState;
    *(v4 + 56) |= 1u;
  }

  if (self->_displayName)
  {
    [v5 setDisplayName:?];
    v4 = v5;
  }

  if (self->_subsectionId)
  {
    [v5 setSubsectionId:?];
    v4 = v5;
  }

  if (self->_emailAddressToken)
  {
    [v5 setEmailAddressToken:?];
    v4 = v5;
  }

  if (self->_pccEmailAddress)
  {
    [v5 setPccEmailAddress:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_accountId copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  if (*&self->_has)
  {
    *(v5 + 40) = self->_standaloneState;
    *(v5 + 56) |= 1u;
  }

  v8 = [(NSString *)self->_displayName copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_subsectionId copyWithZone:a3];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  v12 = [(NSString *)self->_emailAddressToken copyWithZone:a3];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  v14 = [(NSString *)self->_pccEmailAddress copyWithZone:a3];
  v15 = *(v5 + 32);
  *(v5 + 32) = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  accountId = self->_accountId;
  if (accountId | *(v4 + 1))
  {
    if (![(NSString *)accountId isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v6 = *(v4 + 56);
  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_standaloneState != *(v4 + 10))
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

  displayName = self->_displayName;
  if (displayName | *(v4 + 2) && ![(NSString *)displayName isEqual:?])
  {
    goto LABEL_17;
  }

  subsectionId = self->_subsectionId;
  if (subsectionId | *(v4 + 6))
  {
    if (![(NSString *)subsectionId isEqual:?])
    {
      goto LABEL_17;
    }
  }

  emailAddressToken = self->_emailAddressToken;
  if (emailAddressToken | *(v4 + 3))
  {
    if (![(NSString *)emailAddressToken isEqual:?])
    {
      goto LABEL_17;
    }
  }

  pccEmailAddress = self->_pccEmailAddress;
  if (pccEmailAddress | *(v4 + 4))
  {
    v11 = [(NSString *)pccEmailAddress isEqual:?];
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
  v3 = [(NSString *)self->_accountId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_standaloneState;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(NSString *)self->_displayName hash];
  v7 = v5 ^ v6 ^ [(NSString *)self->_subsectionId hash];
  v8 = [(NSString *)self->_emailAddressToken hash];
  return v7 ^ v8 ^ [(NSString *)self->_pccEmailAddress hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 1))
  {
    [(NNMKProtoAccountAuthenticationState *)self setAccountId:?];
    v4 = v5;
  }

  if (v4[14])
  {
    self->_standaloneState = v4[10];
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    [(NNMKProtoAccountAuthenticationState *)self setDisplayName:?];
    v4 = v5;
  }

  if (*(v4 + 6))
  {
    [(NNMKProtoAccountAuthenticationState *)self setSubsectionId:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(NNMKProtoAccountAuthenticationState *)self setEmailAddressToken:?];
    v4 = v5;
  }

  if (*(v4 + 4))
  {
    [(NNMKProtoAccountAuthenticationState *)self setPccEmailAddress:?];
    v4 = v5;
  }
}

@end