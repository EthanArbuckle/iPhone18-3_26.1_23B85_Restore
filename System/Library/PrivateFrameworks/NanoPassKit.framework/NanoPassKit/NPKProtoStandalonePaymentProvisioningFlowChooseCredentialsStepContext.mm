@interface NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsStepContext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCredentials:(id)credentials;
- (void)addRemoteCredentials:(id)credentials;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsStepContext

- (void)addRemoteCredentials:(id)credentials
{
  credentialsCopy = credentials;
  remoteCredentials = self->_remoteCredentials;
  v8 = credentialsCopy;
  if (!remoteCredentials)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_remoteCredentials;
    self->_remoteCredentials = v6;

    credentialsCopy = v8;
    remoteCredentials = self->_remoteCredentials;
  }

  [(NSMutableArray *)remoteCredentials addObject:credentialsCopy];
}

- (void)addCredentials:(id)credentials
{
  credentialsCopy = credentials;
  credentials = self->_credentials;
  v8 = credentialsCopy;
  if (!credentials)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_credentials;
    self->_credentials = v6;

    credentialsCopy = v8;
    credentials = self->_credentials;
  }

  [(NSMutableArray *)credentials addObject:credentialsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsStepContext;
  v4 = [(NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsStepContext *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsStepContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v31 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(NSMutableArray *)self->_remoteCredentials count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_remoteCredentials, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v5 = self->_remoteCredentials;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"remoteCredentials"];
  }

  if ([(NSMutableArray *)self->_credentials count])
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_credentials, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = self->_credentials;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation2 = [*(*(&v21 + 1) + 8 * j) dictionaryRepresentation];
          [v11 addObject:dictionaryRepresentation2];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v14);
    }

    [dictionary setObject:v11 forKey:@"credentials"];
  }

  if (*&self->_has)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowsManualEntry];
    [dictionary setObject:v18 forKey:@"allowsManualEntry"];
  }

  v19 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v29 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = self->_remoteCredentials;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = self->_credentials;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v13);
  }

  if (*&self->_has)
  {
    allowsManualEntry = self->_allowsManualEntry;
    PBDataWriterWriteBOOLField();
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsStepContext *)self remoteCredentialsCount])
  {
    [toCopy clearRemoteCredentials];
    remoteCredentialsCount = [(NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsStepContext *)self remoteCredentialsCount];
    if (remoteCredentialsCount)
    {
      v5 = remoteCredentialsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsStepContext *)self remoteCredentialsAtIndex:i];
        [toCopy addRemoteCredentials:v7];
      }
    }
  }

  if ([(NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsStepContext *)self credentialsCount])
  {
    [toCopy clearCredentials];
    credentialsCount = [(NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsStepContext *)self credentialsCount];
    if (credentialsCount)
    {
      v9 = credentialsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsStepContext *)self credentialsAtIndex:j];
        [toCopy addCredentials:v11];
      }
    }
  }

  if (*&self->_has)
  {
    toCopy[24] = self->_allowsManualEntry;
    toCopy[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = self->_remoteCredentials;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      v10 = 0;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v24 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addRemoteCredentials:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = self->_credentials;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v20 + 1) + 8 * v16) copyWithZone:{zone, v20}];
        [v5 addCredentials:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }

  if (*&self->_has)
  {
    v5[24] = self->_allowsManualEntry;
    v5[28] |= 1u;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  remoteCredentials = self->_remoteCredentials;
  if (remoteCredentials | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)remoteCredentials isEqual:?])
    {
      goto LABEL_8;
    }
  }

  credentials = self->_credentials;
  if (credentials | *(equalCopy + 1))
  {
    if (![(NSMutableArray *)credentials isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v7 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0)
    {
LABEL_8:
      v7 = 0;
      goto LABEL_9;
    }

    if (self->_allowsManualEntry)
    {
      if ((*(equalCopy + 24) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (*(equalCopy + 24))
    {
      goto LABEL_8;
    }

    v7 = 1;
  }

LABEL_9:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_remoteCredentials hash];
  v4 = [(NSMutableArray *)self->_credentials hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_allowsManualEntry;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  v26 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = *(fromCopy + 2);
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsStepContext *)self addRemoteCredentials:*(*(&v20 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = *(fromCopy + 1);
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsStepContext *)self addCredentials:*(*(&v16 + 1) + 8 * v14++), v16];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  if (*(fromCopy + 28))
  {
    self->_allowsManualEntry = *(fromCopy + 24);
    *&self->_has |= 1u;
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end