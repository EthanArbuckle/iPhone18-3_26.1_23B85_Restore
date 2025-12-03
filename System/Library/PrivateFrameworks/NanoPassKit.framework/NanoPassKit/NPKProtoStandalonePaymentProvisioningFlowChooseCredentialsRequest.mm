@interface NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addChosenPaymentCredentialIdentifiers:(id)identifiers;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsRequest

- (void)addChosenPaymentCredentialIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  chosenPaymentCredentialIdentifiers = self->_chosenPaymentCredentialIdentifiers;
  v8 = identifiersCopy;
  if (!chosenPaymentCredentialIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_chosenPaymentCredentialIdentifiers;
    self->_chosenPaymentCredentialIdentifiers = v6;

    identifiersCopy = v8;
    chosenPaymentCredentialIdentifiers = self->_chosenPaymentCredentialIdentifiers;
  }

  [(NSMutableArray *)chosenPaymentCredentialIdentifiers addObject:identifiersCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsRequest;
  v4 = [(NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  requestHeader = self->_requestHeader;
  if (requestHeader)
  {
    dictionaryRepresentation = [(NPKProtoStandaloneRequestHeader *)requestHeader dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"requestHeader"];
  }

  chosenPaymentCredentialIdentifiers = self->_chosenPaymentCredentialIdentifiers;
  if (chosenPaymentCredentialIdentifiers)
  {
    [dictionary setObject:chosenPaymentCredentialIdentifiers forKey:@"chosenPaymentCredentialIdentifiers"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (!self->_requestHeader)
  {
    [NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsRequest writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteSubmessage();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_chosenPaymentCredentialIdentifiers;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setRequestHeader:self->_requestHeader];
  if ([(NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsRequest *)self chosenPaymentCredentialIdentifiersCount])
  {
    [toCopy clearChosenPaymentCredentialIdentifiers];
    chosenPaymentCredentialIdentifiersCount = [(NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsRequest *)self chosenPaymentCredentialIdentifiersCount];
    if (chosenPaymentCredentialIdentifiersCount)
    {
      v5 = chosenPaymentCredentialIdentifiersCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsRequest *)self chosenPaymentCredentialIdentifiersAtIndex:i];
        [toCopy addChosenPaymentCredentialIdentifiers:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NPKProtoStandaloneRequestHeader *)self->_requestHeader copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_chosenPaymentCredentialIdentifiers;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * v12) copyWithZone:{zone, v16}];
        [v5 addChosenPaymentCredentialIdentifiers:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((requestHeader = self->_requestHeader, !(requestHeader | equalCopy[2])) || -[NPKProtoStandaloneRequestHeader isEqual:](requestHeader, "isEqual:")))
  {
    chosenPaymentCredentialIdentifiers = self->_chosenPaymentCredentialIdentifiers;
    if (chosenPaymentCredentialIdentifiers | equalCopy[1])
    {
      v7 = [(NSMutableArray *)chosenPaymentCredentialIdentifiers isEqual:?];
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
  v18 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  requestHeader = self->_requestHeader;
  v6 = *(fromCopy + 2);
  if (requestHeader)
  {
    if (v6)
    {
      [(NPKProtoStandaloneRequestHeader *)requestHeader mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsRequest *)self setRequestHeader:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(fromCopy + 1);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsRequest *)self addChosenPaymentCredentialIdentifiers:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end