@interface NPKIDVRemoteDeviceProtoRetrievePIIHashDataRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addConfiguredPartitionsIdentifiers:(id)identifiers;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKIDVRemoteDeviceProtoRetrievePIIHashDataRequest

- (void)addConfiguredPartitionsIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  configuredPartitionsIdentifiers = self->_configuredPartitionsIdentifiers;
  v8 = identifiersCopy;
  if (!configuredPartitionsIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_configuredPartitionsIdentifiers;
    self->_configuredPartitionsIdentifiers = v6;

    identifiersCopy = v8;
    configuredPartitionsIdentifiers = self->_configuredPartitionsIdentifiers;
  }

  [(NSMutableArray *)configuredPartitionsIdentifiers addObject:identifiersCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKIDVRemoteDeviceProtoRetrievePIIHashDataRequest;
  v4 = [(NPKIDVRemoteDeviceProtoRetrievePIIHashDataRequest *)&v8 description];
  dictionaryRepresentation = [(NPKIDVRemoteDeviceProtoRetrievePIIHashDataRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  credentialIdentifier = self->_credentialIdentifier;
  if (credentialIdentifier)
  {
    [dictionary setObject:credentialIdentifier forKey:@"credentialIdentifier"];
  }

  configuredPartitionsIdentifiers = self->_configuredPartitionsIdentifiers;
  if (configuredPartitionsIdentifiers)
  {
    [v4 setObject:configuredPartitionsIdentifiers forKey:@"configuredPartitionsIdentifiers"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (!self->_credentialIdentifier)
  {
    [NPKIDVRemoteDeviceProtoRetrievePIIHashDataRequest writeTo:];
  }

  v5 = toCopy;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setCredentialIdentifier:self->_credentialIdentifier];
  if ([(NPKIDVRemoteDeviceProtoRetrievePIIHashDataRequest *)self configuredPartitionsIdentifiersCount])
  {
    [toCopy clearConfiguredPartitionsIdentifiers];
    configuredPartitionsIdentifiersCount = [(NPKIDVRemoteDeviceProtoRetrievePIIHashDataRequest *)self configuredPartitionsIdentifiersCount];
    if (configuredPartitionsIdentifiersCount)
    {
      v5 = configuredPartitionsIdentifiersCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKIDVRemoteDeviceProtoRetrievePIIHashDataRequest *)self configuredPartitionsIdentifiersAtIndex:i];
        [toCopy addConfiguredPartitionsIdentifiers:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_credentialIdentifier copyWithZone:zone];
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

        v13 = [*(*(&v16 + 1) + 8 * v12) copyWithZone:{zone, v16}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((credentialIdentifier = self->_credentialIdentifier, !(credentialIdentifier | equalCopy[2])) || -[NSString isEqual:](credentialIdentifier, "isEqual:")))
  {
    configuredPartitionsIdentifiers = self->_configuredPartitionsIdentifiers;
    if (configuredPartitionsIdentifiers | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    [(NPKIDVRemoteDeviceProtoRetrievePIIHashDataRequest *)self setCredentialIdentifier:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(fromCopy + 1);
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