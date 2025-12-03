@interface NPKProtoStandalonePaymentSetupProduct
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPaymentOptions:(id)options;
- (void)addRegions:(id)regions;
- (void)addRequestedProvisioningMethods:(id)methods;
- (void)addRequiredFields:(id)fields;
- (void)addSupportedProtocols:(id)protocols;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasHsa2Requirement:(BOOL)requirement;
- (void)setHasSupportedProvisioningMethods:(BOOL)methods;
- (void)setHasSuppressPendingPurchases:(BOOL)purchases;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandalonePaymentSetupProduct

- (void)addRegions:(id)regions
{
  regionsCopy = regions;
  regions = self->_regions;
  v8 = regionsCopy;
  if (!regions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_regions;
    self->_regions = v6;

    regionsCopy = v8;
    regions = self->_regions;
  }

  [(NSMutableArray *)regions addObject:regionsCopy];
}

- (void)addRequiredFields:(id)fields
{
  fieldsCopy = fields;
  requiredFields = self->_requiredFields;
  v8 = fieldsCopy;
  if (!requiredFields)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_requiredFields;
    self->_requiredFields = v6;

    fieldsCopy = v8;
    requiredFields = self->_requiredFields;
  }

  [(NSMutableArray *)requiredFields addObject:fieldsCopy];
}

- (void)addSupportedProtocols:(id)protocols
{
  protocolsCopy = protocols;
  supportedProtocols = self->_supportedProtocols;
  v8 = protocolsCopy;
  if (!supportedProtocols)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_supportedProtocols;
    self->_supportedProtocols = v6;

    protocolsCopy = v8;
    supportedProtocols = self->_supportedProtocols;
  }

  [(NSMutableArray *)supportedProtocols addObject:protocolsCopy];
}

- (void)setHasSupportedProvisioningMethods:(BOOL)methods
{
  if (methods)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasHsa2Requirement:(BOOL)requirement
{
  if (requirement)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasSuppressPendingPurchases:(BOOL)purchases
{
  if (purchases)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)addPaymentOptions:(id)options
{
  optionsCopy = options;
  paymentOptions = self->_paymentOptions;
  v8 = optionsCopy;
  if (!paymentOptions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_paymentOptions;
    self->_paymentOptions = v6;

    optionsCopy = v8;
    paymentOptions = self->_paymentOptions;
  }

  [(NSMutableArray *)paymentOptions addObject:optionsCopy];
}

- (void)addRequestedProvisioningMethods:(id)methods
{
  methodsCopy = methods;
  requestedProvisioningMethods = self->_requestedProvisioningMethods;
  v8 = methodsCopy;
  if (!requestedProvisioningMethods)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_requestedProvisioningMethods;
    self->_requestedProvisioningMethods = v6;

    methodsCopy = v8;
    requestedProvisioningMethods = self->_requestedProvisioningMethods;
  }

  [(NSMutableArray *)requestedProvisioningMethods addObject:methodsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentSetupProduct;
  v4 = [(NPKProtoStandalonePaymentSetupProduct *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandalonePaymentSetupProduct *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v58 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  displayName = self->_displayName;
  if (displayName)
  {
    [dictionary setObject:displayName forKey:@"displayName"];
  }

  regions = self->_regions;
  if (regions)
  {
    [v4 setObject:regions forKey:@"regions"];
  }

  productIdentifier = self->_productIdentifier;
  if (productIdentifier)
  {
    [v4 setObject:productIdentifier forKey:@"productIdentifier"];
  }

  partnerIdentifier = self->_partnerIdentifier;
  if (partnerIdentifier)
  {
    [v4 setObject:partnerIdentifier forKey:@"partnerIdentifier"];
  }

  partnerName = self->_partnerName;
  if (partnerName)
  {
    [v4 setObject:partnerName forKey:@"partnerName"];
  }

  if ([(NSMutableArray *)self->_requiredFields count])
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_requiredFields, "count")}];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v11 = self->_requiredFields;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v52;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v52 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation = [*(*(&v51 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:dictionaryRepresentation];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v51 objects:v57 count:16];
      }

      while (v13);
    }

    [v4 setObject:v10 forKey:@"requiredFields"];
  }

  supportedProtocols = self->_supportedProtocols;
  if (supportedProtocols)
  {
    [v4 setObject:supportedProtocols forKey:@"supportedProtocols"];
  }

  termsURL = self->_termsURL;
  if (termsURL)
  {
    [v4 setObject:termsURL forKey:@"termsURL"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_supportedProvisioningMethods];
    [v4 setObject:v19 forKey:@"supportedProvisioningMethods"];
  }

  readerModeMetadataJson = self->_readerModeMetadataJson;
  if (readerModeMetadataJson)
  {
    [v4 setObject:readerModeMetadataJson forKey:@"readerModeMetadataJson"];
  }

  has = self->_has;
  if (has)
  {
    v22 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_flags];
    [v4 setObject:v22 forKey:@"flags"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v23 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_hsa2Requirement];
    [v4 setObject:v23 forKey:@"hsa2Requirement"];
  }

  imageAssetURLs = self->_imageAssetURLs;
  if (imageAssetURLs)
  {
    dictionaryRepresentation2 = [(NPKProtoStandalonePaymentSetupProductImageAssetURLs *)imageAssetURLs dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"imageAssetURLs"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v26 = [MEMORY[0x277CCABB0] numberWithBool:self->_suppressPendingPurchases];
    [v4 setObject:v26 forKey:@"suppressPendingPurchases"];
  }

  if ([(NSMutableArray *)self->_paymentOptions count])
  {
    v27 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_paymentOptions, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v28 = self->_paymentOptions;
    v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v47 objects:v56 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v48;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v48 != v31)
          {
            objc_enumerationMutation(v28);
          }

          dictionaryRepresentation3 = [*(*(&v47 + 1) + 8 * j) dictionaryRepresentation];
          [v27 addObject:dictionaryRepresentation3];
        }

        v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v47 objects:v56 count:16];
      }

      while (v30);
    }

    [v4 setObject:v27 forKey:@"paymentOptions"];
  }

  if ([(NSMutableArray *)self->_requestedProvisioningMethods count])
  {
    v34 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_requestedProvisioningMethods, "count")}];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v35 = self->_requestedProvisioningMethods;
    v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v43 objects:v55 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v44;
      do
      {
        for (k = 0; k != v37; ++k)
        {
          if (*v44 != v38)
          {
            objc_enumerationMutation(v35);
          }

          dictionaryRepresentation4 = [*(*(&v43 + 1) + 8 * k) dictionaryRepresentation];
          [v34 addObject:dictionaryRepresentation4];
        }

        v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v43 objects:v55 count:16];
      }

      while (v37);
    }

    [v4 setObject:v34 forKey:@"requestedProvisioningMethods"];
  }

  v41 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)to
{
  v66 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v5 = self->_regions;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v58;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v58 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v57 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v57 objects:v65 count:16];
    }

    while (v7);
  }

  if (self->_productIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_partnerIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_partnerName)
  {
    PBDataWriterWriteStringField();
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v11 = self->_requiredFields;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v53 objects:v64 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v54;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v54 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v53 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v53 objects:v64 count:16];
    }

    while (v13);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v17 = self->_supportedProtocols;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v49 objects:v63 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v50;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v50 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v49 + 1) + 8 * k);
        PBDataWriterWriteStringField();
      }

      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v49 objects:v63 count:16];
    }

    while (v19);
  }

  if (self->_termsURL)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    supportedProvisioningMethods = self->_supportedProvisioningMethods;
    PBDataWriterWriteInt64Field();
  }

  if (self->_readerModeMetadataJson)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    flags = self->_flags;
    PBDataWriterWriteInt64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    hsa2Requirement = self->_hsa2Requirement;
    PBDataWriterWriteInt64Field();
  }

  if (self->_imageAssetURLs)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 8) != 0)
  {
    suppressPendingPurchases = self->_suppressPendingPurchases;
    PBDataWriterWriteBOOLField();
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v28 = self->_paymentOptions;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v45 objects:v62 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v46;
    do
    {
      for (m = 0; m != v30; ++m)
      {
        if (*v46 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v45 + 1) + 8 * m);
        PBDataWriterWriteSubmessage();
      }

      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v45 objects:v62 count:16];
    }

    while (v30);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v34 = self->_requestedProvisioningMethods;
  v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v41 objects:v61 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v42;
    do
    {
      for (n = 0; n != v36; ++n)
      {
        if (*v42 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v41 + 1) + 8 * n);
        PBDataWriterWriteSubmessage();
      }

      v36 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v41 objects:v61 count:16];
    }

    while (v36);
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_displayName)
  {
    [toCopy setDisplayName:?];
  }

  if ([(NPKProtoStandalonePaymentSetupProduct *)self regionsCount])
  {
    [toCopy clearRegions];
    regionsCount = [(NPKProtoStandalonePaymentSetupProduct *)self regionsCount];
    if (regionsCount)
    {
      v5 = regionsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoStandalonePaymentSetupProduct *)self regionsAtIndex:i];
        [toCopy addRegions:v7];
      }
    }
  }

  if (self->_productIdentifier)
  {
    [toCopy setProductIdentifier:?];
  }

  if (self->_partnerIdentifier)
  {
    [toCopy setPartnerIdentifier:?];
  }

  if (self->_partnerName)
  {
    [toCopy setPartnerName:?];
  }

  if ([(NPKProtoStandalonePaymentSetupProduct *)self requiredFieldsCount])
  {
    [toCopy clearRequiredFields];
    requiredFieldsCount = [(NPKProtoStandalonePaymentSetupProduct *)self requiredFieldsCount];
    if (requiredFieldsCount)
    {
      v9 = requiredFieldsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(NPKProtoStandalonePaymentSetupProduct *)self requiredFieldsAtIndex:j];
        [toCopy addRequiredFields:v11];
      }
    }
  }

  if ([(NPKProtoStandalonePaymentSetupProduct *)self supportedProtocolsCount])
  {
    [toCopy clearSupportedProtocols];
    supportedProtocolsCount = [(NPKProtoStandalonePaymentSetupProduct *)self supportedProtocolsCount];
    if (supportedProtocolsCount)
    {
      v13 = supportedProtocolsCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(NPKProtoStandalonePaymentSetupProduct *)self supportedProtocolsAtIndex:k];
        [toCopy addSupportedProtocols:v15];
      }
    }
  }

  if (self->_termsURL)
  {
    [toCopy setTermsURL:?];
  }

  v16 = toCopy;
  if ((*&self->_has & 4) != 0)
  {
    *(toCopy + 3) = self->_supportedProvisioningMethods;
    *(toCopy + 132) |= 4u;
  }

  if (self->_readerModeMetadataJson)
  {
    [toCopy setReaderModeMetadataJson:?];
    v16 = toCopy;
  }

  has = self->_has;
  if (has)
  {
    v16[1] = self->_flags;
    *(v16 + 132) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v16[2] = self->_hsa2Requirement;
    *(v16 + 132) |= 2u;
  }

  if (self->_imageAssetURLs)
  {
    [toCopy setImageAssetURLs:?];
    v16 = toCopy;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v16 + 128) = self->_suppressPendingPurchases;
    *(v16 + 132) |= 8u;
  }

  if ([(NPKProtoStandalonePaymentSetupProduct *)self paymentOptionsCount])
  {
    [toCopy clearPaymentOptions];
    paymentOptionsCount = [(NPKProtoStandalonePaymentSetupProduct *)self paymentOptionsCount];
    if (paymentOptionsCount)
    {
      v19 = paymentOptionsCount;
      for (m = 0; m != v19; ++m)
      {
        v21 = [(NPKProtoStandalonePaymentSetupProduct *)self paymentOptionsAtIndex:m];
        [toCopy addPaymentOptions:v21];
      }
    }
  }

  if ([(NPKProtoStandalonePaymentSetupProduct *)self requestedProvisioningMethodsCount])
  {
    [toCopy clearRequestedProvisioningMethods];
    requestedProvisioningMethodsCount = [(NPKProtoStandalonePaymentSetupProduct *)self requestedProvisioningMethodsCount];
    if (requestedProvisioningMethodsCount)
    {
      v23 = requestedProvisioningMethodsCount;
      for (n = 0; n != v23; ++n)
      {
        v25 = [(NPKProtoStandalonePaymentSetupProduct *)self requestedProvisioningMethodsAtIndex:n];
        [toCopy addRequestedProvisioningMethods:v25];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v78 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_displayName copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v8 = self->_regions;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v70;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v70 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v69 + 1) + 8 * i) copyWithZone:zone];
        [v5 addRegions:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v69 objects:v77 count:16];
    }

    while (v10);
  }

  v14 = [(NSString *)self->_productIdentifier copyWithZone:zone];
  v15 = *(v5 + 72);
  *(v5 + 72) = v14;

  v16 = [(NSString *)self->_partnerIdentifier copyWithZone:zone];
  v17 = *(v5 + 48);
  *(v5 + 48) = v16;

  v18 = [(NSString *)self->_partnerName copyWithZone:zone];
  v19 = *(v5 + 56);
  *(v5 + 56) = v18;

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v20 = self->_requiredFields;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v65 objects:v76 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v66;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v66 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v65 + 1) + 8 * j) copyWithZone:zone];
        [v5 addRequiredFields:v25];
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v65 objects:v76 count:16];
    }

    while (v22);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v26 = self->_supportedProtocols;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v61 objects:v75 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v62;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v62 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [*(*(&v61 + 1) + 8 * k) copyWithZone:zone];
        [v5 addSupportedProtocols:v31];
      }

      v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v61 objects:v75 count:16];
    }

    while (v28);
  }

  v32 = [(NSString *)self->_termsURL copyWithZone:zone];
  v33 = *(v5 + 120);
  *(v5 + 120) = v32;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 24) = self->_supportedProvisioningMethods;
    *(v5 + 132) |= 4u;
  }

  v34 = [(NSString *)self->_readerModeMetadataJson copyWithZone:zone];
  v35 = *(v5 + 80);
  *(v5 + 80) = v34;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_flags;
    *(v5 + 132) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_hsa2Requirement;
    *(v5 + 132) |= 2u;
  }

  v37 = [(NPKProtoStandalonePaymentSetupProductImageAssetURLs *)self->_imageAssetURLs copyWithZone:zone];
  v38 = *(v5 + 40);
  *(v5 + 40) = v37;

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 128) = self->_suppressPendingPurchases;
    *(v5 + 132) |= 8u;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v39 = self->_paymentOptions;
  v40 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v57 objects:v74 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v58;
    do
    {
      for (m = 0; m != v41; ++m)
      {
        if (*v58 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = [*(*(&v57 + 1) + 8 * m) copyWithZone:zone];
        [v5 addPaymentOptions:v44];
      }

      v41 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v57 objects:v74 count:16];
    }

    while (v41);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v45 = self->_requestedProvisioningMethods;
  v46 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v53 objects:v73 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v54;
    do
    {
      for (n = 0; n != v47; ++n)
      {
        if (*v54 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = [*(*(&v53 + 1) + 8 * n) copyWithZone:{zone, v53}];
        [v5 addRequestedProvisioningMethods:v50];
      }

      v47 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v53 objects:v73 count:16];
    }

    while (v47);
  }

  v51 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_46;
  }

  displayName = self->_displayName;
  if (displayName | *(equalCopy + 4))
  {
    if (![(NSString *)displayName isEqual:?])
    {
      goto LABEL_46;
    }
  }

  regions = self->_regions;
  if (regions | *(equalCopy + 11))
  {
    if (![(NSMutableArray *)regions isEqual:?])
    {
      goto LABEL_46;
    }
  }

  productIdentifier = self->_productIdentifier;
  if (productIdentifier | *(equalCopy + 9))
  {
    if (![(NSString *)productIdentifier isEqual:?])
    {
      goto LABEL_46;
    }
  }

  partnerIdentifier = self->_partnerIdentifier;
  if (partnerIdentifier | *(equalCopy + 6))
  {
    if (![(NSString *)partnerIdentifier isEqual:?])
    {
      goto LABEL_46;
    }
  }

  partnerName = self->_partnerName;
  if (partnerName | *(equalCopy + 7))
  {
    if (![(NSString *)partnerName isEqual:?])
    {
      goto LABEL_46;
    }
  }

  requiredFields = self->_requiredFields;
  if (requiredFields | *(equalCopy + 13))
  {
    if (![(NSMutableArray *)requiredFields isEqual:?])
    {
      goto LABEL_46;
    }
  }

  supportedProtocols = self->_supportedProtocols;
  if (supportedProtocols | *(equalCopy + 14))
  {
    if (![(NSMutableArray *)supportedProtocols isEqual:?])
    {
      goto LABEL_46;
    }
  }

  termsURL = self->_termsURL;
  if (termsURL | *(equalCopy + 15))
  {
    if (![(NSString *)termsURL isEqual:?])
    {
      goto LABEL_46;
    }
  }

  has = self->_has;
  v14 = *(equalCopy + 132);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 132) & 4) == 0 || self->_supportedProvisioningMethods != *(equalCopy + 3))
    {
      goto LABEL_46;
    }
  }

  else if ((*(equalCopy + 132) & 4) != 0)
  {
    goto LABEL_46;
  }

  readerModeMetadataJson = self->_readerModeMetadataJson;
  if (readerModeMetadataJson | *(equalCopy + 10))
  {
    if (![(NSString *)readerModeMetadataJson isEqual:?])
    {
      goto LABEL_46;
    }

    has = self->_has;
  }

  v16 = *(equalCopy + 132);
  if (has)
  {
    if ((*(equalCopy + 132) & 1) == 0 || self->_flags != *(equalCopy + 1))
    {
      goto LABEL_46;
    }
  }

  else if (*(equalCopy + 132))
  {
    goto LABEL_46;
  }

  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 132) & 2) == 0 || self->_hsa2Requirement != *(equalCopy + 2))
    {
      goto LABEL_46;
    }
  }

  else if ((*(equalCopy + 132) & 2) != 0)
  {
    goto LABEL_46;
  }

  imageAssetURLs = self->_imageAssetURLs;
  if (imageAssetURLs | *(equalCopy + 5))
  {
    if (![(NPKProtoStandalonePaymentSetupProductImageAssetURLs *)imageAssetURLs isEqual:?])
    {
      goto LABEL_46;
    }

    has = self->_has;
  }

  v18 = *(equalCopy + 132);
  if ((has & 8) == 0)
  {
    if ((*(equalCopy + 132) & 8) == 0)
    {
      goto LABEL_41;
    }

LABEL_46:
    v21 = 0;
    goto LABEL_47;
  }

  if ((*(equalCopy + 132) & 8) == 0)
  {
    goto LABEL_46;
  }

  v23 = *(equalCopy + 128);
  if (self->_suppressPendingPurchases)
  {
    if ((*(equalCopy + 128) & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  else if (*(equalCopy + 128))
  {
    goto LABEL_46;
  }

LABEL_41:
  paymentOptions = self->_paymentOptions;
  if (paymentOptions | *(equalCopy + 8) && ![(NSMutableArray *)paymentOptions isEqual:?])
  {
    goto LABEL_46;
  }

  requestedProvisioningMethods = self->_requestedProvisioningMethods;
  if (requestedProvisioningMethods | *(equalCopy + 12))
  {
    v21 = [(NSMutableArray *)requestedProvisioningMethods isEqual:?];
  }

  else
  {
    v21 = 1;
  }

LABEL_47:

  return v21;
}

- (unint64_t)hash
{
  v18 = [(NSString *)self->_displayName hash];
  v17 = [(NSMutableArray *)self->_regions hash];
  v16 = [(NSString *)self->_productIdentifier hash];
  v15 = [(NSString *)self->_partnerIdentifier hash];
  v14 = [(NSString *)self->_partnerName hash];
  v3 = [(NSMutableArray *)self->_requiredFields hash];
  v4 = [(NSMutableArray *)self->_supportedProtocols hash];
  v5 = [(NSString *)self->_termsURL hash];
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_supportedProvisioningMethods;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSString *)self->_readerModeMetadataJson hash];
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_flags;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_6:
      v9 = 2654435761 * self->_hsa2Requirement;
      goto LABEL_9;
    }
  }

  v9 = 0;
LABEL_9:
  v10 = [(NPKProtoStandalonePaymentSetupProductImageAssetURLs *)self->_imageAssetURLs hash];
  if ((*&self->_has & 8) != 0)
  {
    v11 = 2654435761 * self->_suppressPendingPurchases;
  }

  else
  {
    v11 = 0;
  }

  v12 = v9 ^ v10 ^ v11 ^ [(NSMutableArray *)self->_paymentOptions hash];
  return v17 ^ v18 ^ v16 ^ v15 ^ v14 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v12 ^ [(NSMutableArray *)self->_requestedProvisioningMethods hash];
}

- (void)mergeFrom:(id)from
{
  v59 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 4))
  {
    [(NPKProtoStandalonePaymentSetupProduct *)self setDisplayName:?];
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v5 = *(fromCopy + 11);
  v6 = [v5 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v51;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v51 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NPKProtoStandalonePaymentSetupProduct *)self addRegions:*(*(&v50 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 9))
  {
    [(NPKProtoStandalonePaymentSetupProduct *)self setProductIdentifier:?];
  }

  if (*(fromCopy + 6))
  {
    [(NPKProtoStandalonePaymentSetupProduct *)self setPartnerIdentifier:?];
  }

  if (*(fromCopy + 7))
  {
    [(NPKProtoStandalonePaymentSetupProduct *)self setPartnerName:?];
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v10 = *(fromCopy + 13);
  v11 = [v10 countByEnumeratingWithState:&v46 objects:v57 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v47;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v47 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(NPKProtoStandalonePaymentSetupProduct *)self addRequiredFields:*(*(&v46 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v46 objects:v57 count:16];
    }

    while (v12);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v15 = *(fromCopy + 14);
  v16 = [v15 countByEnumeratingWithState:&v42 objects:v56 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v43;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v43 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(NPKProtoStandalonePaymentSetupProduct *)self addSupportedProtocols:*(*(&v42 + 1) + 8 * k)];
      }

      v17 = [v15 countByEnumeratingWithState:&v42 objects:v56 count:16];
    }

    while (v17);
  }

  if (*(fromCopy + 15))
  {
    [(NPKProtoStandalonePaymentSetupProduct *)self setTermsURL:?];
  }

  if ((*(fromCopy + 132) & 4) != 0)
  {
    self->_supportedProvisioningMethods = *(fromCopy + 3);
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 10))
  {
    [(NPKProtoStandalonePaymentSetupProduct *)self setReaderModeMetadataJson:?];
  }

  v20 = *(fromCopy + 132);
  if (v20)
  {
    self->_flags = *(fromCopy + 1);
    *&self->_has |= 1u;
    v20 = *(fromCopy + 132);
  }

  if ((v20 & 2) != 0)
  {
    self->_hsa2Requirement = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

  imageAssetURLs = self->_imageAssetURLs;
  v22 = *(fromCopy + 5);
  if (imageAssetURLs)
  {
    if (v22)
    {
      [(NPKProtoStandalonePaymentSetupProductImageAssetURLs *)imageAssetURLs mergeFrom:?];
    }
  }

  else if (v22)
  {
    [(NPKProtoStandalonePaymentSetupProduct *)self setImageAssetURLs:?];
  }

  if ((*(fromCopy + 132) & 8) != 0)
  {
    self->_suppressPendingPurchases = *(fromCopy + 128);
    *&self->_has |= 8u;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v23 = *(fromCopy + 8);
  v24 = [v23 countByEnumeratingWithState:&v38 objects:v55 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v39;
    do
    {
      for (m = 0; m != v25; ++m)
      {
        if (*v39 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [(NPKProtoStandalonePaymentSetupProduct *)self addPaymentOptions:*(*(&v38 + 1) + 8 * m)];
      }

      v25 = [v23 countByEnumeratingWithState:&v38 objects:v55 count:16];
    }

    while (v25);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v28 = *(fromCopy + 12);
  v29 = [v28 countByEnumeratingWithState:&v34 objects:v54 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v35;
    do
    {
      for (n = 0; n != v30; ++n)
      {
        if (*v35 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [(NPKProtoStandalonePaymentSetupProduct *)self addRequestedProvisioningMethods:*(*(&v34 + 1) + 8 * n), v34];
      }

      v30 = [v28 countByEnumeratingWithState:&v34 objects:v54 count:16];
    }

    while (v30);
  }

  v33 = *MEMORY[0x277D85DE8];
}

@end