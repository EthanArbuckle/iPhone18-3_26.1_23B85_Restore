@interface NNMKProtoAccountAuthenticationState
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NNMKProtoAccountAuthenticationState

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NNMKProtoAccountAuthenticationState;
  v4 = [(NNMKProtoAccountAuthenticationState *)&v8 description];
  dictionaryRepresentation = [(NNMKProtoAccountAuthenticationState *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  accountId = self->_accountId;
  if (accountId)
  {
    [dictionary setObject:accountId forKey:@"accountId"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_accountId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    standaloneState = self->_standaloneState;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }

  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_subsectionId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_emailAddressToken)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_pccEmailAddress)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_accountId)
  {
    [toCopy setAccountId:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 10) = self->_standaloneState;
    *(toCopy + 56) |= 1u;
  }

  if (self->_displayName)
  {
    [v5 setDisplayName:?];
    toCopy = v5;
  }

  if (self->_subsectionId)
  {
    [v5 setSubsectionId:?];
    toCopy = v5;
  }

  if (self->_emailAddressToken)
  {
    [v5 setEmailAddressToken:?];
    toCopy = v5;
  }

  if (self->_pccEmailAddress)
  {
    [v5 setPccEmailAddress:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_accountId copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  if (*&self->_has)
  {
    *(v5 + 40) = self->_standaloneState;
    *(v5 + 56) |= 1u;
  }

  v8 = [(NSString *)self->_displayName copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_subsectionId copyWithZone:zone];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  v12 = [(NSString *)self->_emailAddressToken copyWithZone:zone];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  v14 = [(NSString *)self->_pccEmailAddress copyWithZone:zone];
  v15 = *(v5 + 32);
  *(v5 + 32) = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  accountId = self->_accountId;
  if (accountId | *(equalCopy + 1))
  {
    if (![(NSString *)accountId isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v6 = *(equalCopy + 56);
  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_standaloneState != *(equalCopy + 10))
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

  displayName = self->_displayName;
  if (displayName | *(equalCopy + 2) && ![(NSString *)displayName isEqual:?])
  {
    goto LABEL_17;
  }

  subsectionId = self->_subsectionId;
  if (subsectionId | *(equalCopy + 6))
  {
    if (![(NSString *)subsectionId isEqual:?])
    {
      goto LABEL_17;
    }
  }

  emailAddressToken = self->_emailAddressToken;
  if (emailAddressToken | *(equalCopy + 3))
  {
    if (![(NSString *)emailAddressToken isEqual:?])
    {
      goto LABEL_17;
    }
  }

  pccEmailAddress = self->_pccEmailAddress;
  if (pccEmailAddress | *(equalCopy + 4))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(NNMKProtoAccountAuthenticationState *)self setAccountId:?];
    fromCopy = v5;
  }

  if (fromCopy[14])
  {
    self->_standaloneState = fromCopy[10];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    [(NNMKProtoAccountAuthenticationState *)self setDisplayName:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 6))
  {
    [(NNMKProtoAccountAuthenticationState *)self setSubsectionId:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(NNMKProtoAccountAuthenticationState *)self setEmailAddressToken:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 4))
  {
    [(NNMKProtoAccountAuthenticationState *)self setPccEmailAddress:?];
    fromCopy = v5;
  }
}

@end