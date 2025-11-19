@interface NPKIDVRemoteDeviceProtoRetrievePIIHashDataRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addConfiguredPartitionsIdentifiers:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKIDVRemoteDeviceProtoRetrievePIIHashDataRequest

- (void)addConfiguredPartitionsIdentifiers:(id)a3
{
  v4 = a3;
  configuredPartitionsIdentifiers = self->_configuredPartitionsIdentifiers;
  v8 = v4;
  if (!configuredPartitionsIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_configuredPartitionsIdentifiers;
    self->_configuredPartitionsIdentifiers = v6;

    v4 = v8;
    configuredPartitionsIdentifiers = self->_configuredPartitionsIdentifiers;
  }

  [(NSMutableArray *)configuredPartitionsIdentifiers addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKIDVRemoteDeviceProtoRetrievePIIHashDataRequest;
  v4 = [(NPKIDVRemoteDeviceProtoRetrievePIIHashDataRequest *)&v8 description];
  v5 = [(NPKIDVRemoteDeviceProtoRetrievePIIHashDataRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  credentialIdentifier = self->_credentialIdentifier;
  if (credentialIdentifier)
  {
    [v3 setObject:credentialIdentifier forKey:@"credentialIdentifier"];
  }

  configuredPartitionsIdentifiers = self->_configuredPartitionsIdentifiers;
  if (configuredPartitionsIdentifiers)
  {
    [v4 setObject:configuredPartitionsIdentifiers forKey:@"configuredPartitionsIdentifiers"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_credentialIdentifier)
  {
    [NPKIDVRemoteDeviceProtoRetrievePIIHashDataRequest writeTo:];
  }

  v5 = v4;
  PBDataWriterWriteStringField();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_configuredPartitionsIdentifiers;
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

- (void)copyTo:(id)a3
{
  v8 = a3;
  [v8 setCredentialIdentifier:self->_credentialIdentifier];
  if ([(NPKIDVRemoteDeviceProtoRetrievePIIHashDataRequest *)self configuredPartitionsIdentifiersCount])
  {
    [v8 clearConfiguredPartitionsIdentifiers];
    v4 = [(NPKIDVRemoteDeviceProtoRetrievePIIHashDataRequest *)self configuredPartitionsIdentifiersCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKIDVRemoteDeviceProtoRetrievePIIHashDataRequest *)self configuredPartitionsIdentifiersAtIndex:i];
        [v8 addConfiguredPartitionsIdentifiers:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_credentialIdentifier copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_configuredPartitionsIdentifiers;
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

        v13 = [*(*(&v16 + 1) + 8 * v12) copyWithZone:{a3, v16}];
        [v5 addConfiguredPartitionsIdentifiers:v13];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((credentialIdentifier = self->_credentialIdentifier, !(credentialIdentifier | v4[2])) || -[NSString isEqual:](credentialIdentifier, "isEqual:")))
  {
    configuredPartitionsIdentifiers = self->_configuredPartitionsIdentifiers;
    if (configuredPartitionsIdentifiers | v4[1])
    {
      v7 = [(NSMutableArray *)configuredPartitionsIdentifiers isEqual:?];
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

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 2))
  {
    [(NPKIDVRemoteDeviceProtoRetrievePIIHashDataRequest *)self setCredentialIdentifier:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(v4 + 1);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NPKIDVRemoteDeviceProtoRetrievePIIHashDataRequest *)self addConfiguredPartitionsIdentifiers:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end