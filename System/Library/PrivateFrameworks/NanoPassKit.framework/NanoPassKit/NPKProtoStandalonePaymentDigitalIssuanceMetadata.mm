@interface NPKProtoStandalonePaymentDigitalIssuanceMetadata
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDefaultSuggestions:(id)a3;
- (void)addServiceProviderAcceptedNetworks:(id)a3;
- (void)addServiceProviderCapabilities:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoStandalonePaymentDigitalIssuanceMetadata

- (void)addServiceProviderAcceptedNetworks:(id)a3
{
  v4 = a3;
  serviceProviderAcceptedNetworks = self->_serviceProviderAcceptedNetworks;
  v8 = v4;
  if (!serviceProviderAcceptedNetworks)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_serviceProviderAcceptedNetworks;
    self->_serviceProviderAcceptedNetworks = v6;

    v4 = v8;
    serviceProviderAcceptedNetworks = self->_serviceProviderAcceptedNetworks;
  }

  [(NSMutableArray *)serviceProviderAcceptedNetworks addObject:v4];
}

- (void)addServiceProviderCapabilities:(id)a3
{
  v4 = a3;
  serviceProviderCapabilities = self->_serviceProviderCapabilities;
  v8 = v4;
  if (!serviceProviderCapabilities)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_serviceProviderCapabilities;
    self->_serviceProviderCapabilities = v6;

    v4 = v8;
    serviceProviderCapabilities = self->_serviceProviderCapabilities;
  }

  [(NSMutableArray *)serviceProviderCapabilities addObject:v4];
}

- (void)addDefaultSuggestions:(id)a3
{
  v4 = a3;
  defaultSuggestions = self->_defaultSuggestions;
  v8 = v4;
  if (!defaultSuggestions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_defaultSuggestions;
    self->_defaultSuggestions = v6;

    v4 = v8;
    defaultSuggestions = self->_defaultSuggestions;
  }

  [(NSMutableArray *)defaultSuggestions addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentDigitalIssuanceMetadata;
  v4 = [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)&v8 description];
  v5 = [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  serviceProviderIdentifier = self->_serviceProviderIdentifier;
  if (serviceProviderIdentifier)
  {
    [v3 setObject:serviceProviderIdentifier forKey:@"serviceProviderIdentifier"];
  }

  serviceProviderCountryCode = self->_serviceProviderCountryCode;
  if (serviceProviderCountryCode)
  {
    [v4 setObject:serviceProviderCountryCode forKey:@"serviceProviderCountryCode"];
  }

  serviceProviderAcceptedNetworks = self->_serviceProviderAcceptedNetworks;
  if (serviceProviderAcceptedNetworks)
  {
    [v4 setObject:serviceProviderAcceptedNetworks forKey:@"serviceProviderAcceptedNetworks"];
  }

  serviceProviderCapabilities = self->_serviceProviderCapabilities;
  if (serviceProviderCapabilities)
  {
    [v4 setObject:serviceProviderCapabilities forKey:@"serviceProviderCapabilities"];
  }

  serviceProviderDictJson = self->_serviceProviderDictJson;
  if (serviceProviderDictJson)
  {
    [v4 setObject:serviceProviderDictJson forKey:@"serviceProviderDictJson"];
  }

  action = self->_action;
  if (action)
  {
    [v4 setObject:action forKey:@"action"];
  }

  merchantID = self->_merchantID;
  if (merchantID)
  {
    [v4 setObject:merchantID forKey:@"merchantID"];
  }

  defaultSuggestions = self->_defaultSuggestions;
  if (defaultSuggestions)
  {
    [v4 setObject:defaultSuggestions forKey:@"defaultSuggestions"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_serviceProviderIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_serviceProviderCountryCode)
  {
    PBDataWriterWriteStringField();
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = self->_serviceProviderAcceptedNetworks;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      v9 = 0;
      do
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v7);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = self->_serviceProviderCapabilities;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      v15 = 0;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * v15);
        PBDataWriterWriteStringField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v13);
  }

  if (self->_serviceProviderDictJson)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_action)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_merchantID)
  {
    PBDataWriterWriteStringField();
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = self->_defaultSuggestions;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      v21 = 0;
      do
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v24 + 1) + 8 * v21);
        PBDataWriterWriteStringField();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v19);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v16 = a3;
  if (self->_serviceProviderIdentifier)
  {
    [v16 setServiceProviderIdentifier:?];
  }

  if (self->_serviceProviderCountryCode)
  {
    [v16 setServiceProviderCountryCode:?];
  }

  if ([(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)self serviceProviderAcceptedNetworksCount])
  {
    [v16 clearServiceProviderAcceptedNetworks];
    v4 = [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)self serviceProviderAcceptedNetworksCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)self serviceProviderAcceptedNetworksAtIndex:i];
        [v16 addServiceProviderAcceptedNetworks:v7];
      }
    }
  }

  if ([(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)self serviceProviderCapabilitiesCount])
  {
    [v16 clearServiceProviderCapabilities];
    v8 = [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)self serviceProviderCapabilitiesCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)self serviceProviderCapabilitiesAtIndex:j];
        [v16 addServiceProviderCapabilities:v11];
      }
    }
  }

  if (self->_serviceProviderDictJson)
  {
    [v16 setServiceProviderDictJson:?];
  }

  if (self->_action)
  {
    [v16 setAction:?];
  }

  if (self->_merchantID)
  {
    [v16 setMerchantID:?];
  }

  if ([(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)self defaultSuggestionsCount])
  {
    [v16 clearDefaultSuggestions];
    v12 = [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)self defaultSuggestionsCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)self defaultSuggestionsAtIndex:k];
        [v16 addDefaultSuggestions:v15];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_serviceProviderIdentifier copyWithZone:a3];
  v7 = v5[8];
  v5[8] = v6;

  v8 = [(NSString *)self->_serviceProviderCountryCode copyWithZone:a3];
  v9 = v5[6];
  v5[6] = v8;

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v10 = self->_serviceProviderAcceptedNetworks;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v45;
    do
    {
      v14 = 0;
      do
      {
        if (*v45 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v44 + 1) + 8 * v14) copyWithZone:a3];
        [v5 addServiceProviderAcceptedNetworks:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v12);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v16 = self->_serviceProviderCapabilities;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v41;
    do
    {
      v20 = 0;
      do
      {
        if (*v41 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v40 + 1) + 8 * v20) copyWithZone:a3];
        [v5 addServiceProviderCapabilities:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v18);
  }

  v22 = [(NSString *)self->_serviceProviderDictJson copyWithZone:a3];
  v23 = v5[7];
  v5[7] = v22;

  v24 = [(NSString *)self->_action copyWithZone:a3];
  v25 = v5[1];
  v5[1] = v24;

  v26 = [(NSString *)self->_merchantID copyWithZone:a3];
  v27 = v5[3];
  v5[3] = v26;

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v28 = self->_defaultSuggestions;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v37;
    do
    {
      v32 = 0;
      do
      {
        if (*v37 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [*(*(&v36 + 1) + 8 * v32) copyWithZone:{a3, v36}];
        [v5 addDefaultSuggestions:v33];

        ++v32;
      }

      while (v30 != v32);
      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v30);
  }

  v34 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((serviceProviderIdentifier = self->_serviceProviderIdentifier, !(serviceProviderIdentifier | v4[8])) || -[NSString isEqual:](serviceProviderIdentifier, "isEqual:")) && ((serviceProviderCountryCode = self->_serviceProviderCountryCode, !(serviceProviderCountryCode | v4[6])) || -[NSString isEqual:](serviceProviderCountryCode, "isEqual:")) && ((serviceProviderAcceptedNetworks = self->_serviceProviderAcceptedNetworks, !(serviceProviderAcceptedNetworks | v4[4])) || -[NSMutableArray isEqual:](serviceProviderAcceptedNetworks, "isEqual:")) && ((serviceProviderCapabilities = self->_serviceProviderCapabilities, !(serviceProviderCapabilities | v4[5])) || -[NSMutableArray isEqual:](serviceProviderCapabilities, "isEqual:")) && ((serviceProviderDictJson = self->_serviceProviderDictJson, !(serviceProviderDictJson | v4[7])) || -[NSString isEqual:](serviceProviderDictJson, "isEqual:")) && ((action = self->_action, !(action | v4[1])) || -[NSString isEqual:](action, "isEqual:")) && ((merchantID = self->_merchantID, !(merchantID | v4[3])) || -[NSString isEqual:](merchantID, "isEqual:")))
  {
    defaultSuggestions = self->_defaultSuggestions;
    if (defaultSuggestions | v4[2])
    {
      v13 = [(NSMutableArray *)defaultSuggestions isEqual:?];
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_serviceProviderIdentifier hash];
  v4 = [(NSString *)self->_serviceProviderCountryCode hash]^ v3;
  v5 = [(NSMutableArray *)self->_serviceProviderAcceptedNetworks hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_serviceProviderCapabilities hash];
  v7 = [(NSString *)self->_serviceProviderDictJson hash];
  v8 = v7 ^ [(NSString *)self->_action hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_merchantID hash];
  return v9 ^ [(NSMutableArray *)self->_defaultSuggestions hash];
}

- (void)mergeFrom:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 8))
  {
    [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)self setServiceProviderIdentifier:?];
  }

  if (*(v4 + 6))
  {
    [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)self setServiceProviderCountryCode:?];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = *(v4 + 4);
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)self addServiceProviderAcceptedNetworks:*(*(&v29 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v7);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = *(v4 + 5);
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)self addServiceProviderCapabilities:*(*(&v25 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v12);
  }

  if (*(v4 + 7))
  {
    [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)self setServiceProviderDictJson:?];
  }

  if (*(v4 + 1))
  {
    [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)self setAction:?];
  }

  if (*(v4 + 3))
  {
    [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)self setMerchantID:?];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = *(v4 + 2);
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)self addDefaultSuggestions:*(*(&v21 + 1) + 8 * k), v21];
      }

      v17 = [v15 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v17);
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end