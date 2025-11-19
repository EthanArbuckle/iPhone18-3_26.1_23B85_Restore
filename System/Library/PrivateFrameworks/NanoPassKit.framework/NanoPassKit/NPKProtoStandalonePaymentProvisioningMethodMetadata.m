@interface NPKProtoStandalonePaymentProvisioningMethodMetadata
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addRequiredFields:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoStandalonePaymentProvisioningMethodMetadata

- (void)addRequiredFields:(id)a3
{
  v4 = a3;
  requiredFields = self->_requiredFields;
  v8 = v4;
  if (!requiredFields)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_requiredFields;
    self->_requiredFields = v6;

    v4 = v8;
    requiredFields = self->_requiredFields;
  }

  [(NSMutableArray *)requiredFields addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningMethodMetadata;
  v4 = [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)&v8 description];
  v5 = [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  productIdentifier = self->_productIdentifier;
  if (productIdentifier)
  {
    [v3 setObject:productIdentifier forKey:@"productIdentifier"];
  }

  currency = self->_currency;
  if (currency)
  {
    [v4 setObject:currency forKey:@"currency"];
  }

  depositAmount = self->_depositAmount;
  if (depositAmount)
  {
    [v4 setObject:depositAmount forKey:@"depositAmount"];
  }

  minLoadedBalance = self->_minLoadedBalance;
  if (minLoadedBalance)
  {
    [v4 setObject:minLoadedBalance forKey:@"minLoadedBalance"];
  }

  maxLoadedBalance = self->_maxLoadedBalance;
  if (maxLoadedBalance)
  {
    [v4 setObject:maxLoadedBalance forKey:@"maxLoadedBalance"];
  }

  if ([(NSMutableArray *)self->_requiredFields count])
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_requiredFields, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = self->_requiredFields;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v24 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:v16];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v13);
    }

    [v4 setObject:v10 forKey:@"requiredFields"];
  }

  readerModeMetadataJson = self->_readerModeMetadataJson;
  if (readerModeMetadataJson)
  {
    [v4 setObject:readerModeMetadataJson forKey:@"readerModeMetadataJson"];
  }

  digitalIssuanceMetadata = self->_digitalIssuanceMetadata;
  if (digitalIssuanceMetadata)
  {
    v19 = [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)digitalIssuanceMetadata dictionaryRepresentation];
    [v4 setObject:v19 forKey:@"digitalIssuanceMetadata"];
  }

  readerModeResourcesJson = self->_readerModeResourcesJson;
  if (readerModeResourcesJson)
  {
    [v4 setObject:readerModeResourcesJson forKey:@"readerModeResourcesJson"];
  }

  minimumReaderModeBalance = self->_minimumReaderModeBalance;
  if (minimumReaderModeBalance)
  {
    [v4 setObject:minimumReaderModeBalance forKey:@"minimumReaderModeBalance"];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_productIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_currency)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_depositAmount)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_minLoadedBalance)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_maxLoadedBalance)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_requiredFields;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (self->_readerModeMetadataJson)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_digitalIssuanceMetadata)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_readerModeResourcesJson)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_minimumReaderModeBalance)
  {
    PBDataWriterWriteStringField();
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v9 = a3;
  if (self->_productIdentifier)
  {
    [v9 setProductIdentifier:?];
  }

  if (self->_currency)
  {
    [v9 setCurrency:?];
  }

  if (self->_depositAmount)
  {
    [v9 setDepositAmount:?];
  }

  if (self->_minLoadedBalance)
  {
    [v9 setMinLoadedBalance:?];
  }

  if (self->_maxLoadedBalance)
  {
    [v9 setMaxLoadedBalance:?];
  }

  if ([(NPKProtoStandalonePaymentProvisioningMethodMetadata *)self requiredFieldsCount])
  {
    [v9 clearRequiredFields];
    v4 = [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)self requiredFieldsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)self requiredFieldsAtIndex:i];
        [v9 addRequiredFields:v7];
      }
    }
  }

  if (self->_readerModeMetadataJson)
  {
    [v9 setReaderModeMetadataJson:?];
  }

  v8 = v9;
  if (self->_digitalIssuanceMetadata)
  {
    [v9 setDigitalIssuanceMetadata:?];
    v8 = v9;
  }

  if (self->_readerModeResourcesJson)
  {
    [v9 setReaderModeResourcesJson:?];
    v8 = v9;
  }

  if (self->_minimumReaderModeBalance)
  {
    [v9 setMinimumReaderModeBalance:?];
    v8 = v9;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_productIdentifier copyWithZone:a3];
  v7 = v5[7];
  v5[7] = v6;

  v8 = [(NSString *)self->_currency copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_depositAmount copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_minLoadedBalance copyWithZone:a3];
  v13 = v5[5];
  v5[5] = v12;

  v14 = [(NSString *)self->_maxLoadedBalance copyWithZone:a3];
  v15 = v5[4];
  v5[4] = v14;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v16 = self->_requiredFields;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v33;
    do
    {
      v20 = 0;
      do
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v32 + 1) + 8 * v20) copyWithZone:{a3, v32}];
        [v5 addRequiredFields:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v18);
  }

  v22 = [(NSString *)self->_readerModeMetadataJson copyWithZone:a3];
  v23 = v5[8];
  v5[8] = v22;

  v24 = [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)self->_digitalIssuanceMetadata copyWithZone:a3];
  v25 = v5[3];
  v5[3] = v24;

  v26 = [(NSString *)self->_readerModeResourcesJson copyWithZone:a3];
  v27 = v5[9];
  v5[9] = v26;

  v28 = [(NSString *)self->_minimumReaderModeBalance copyWithZone:a3];
  v29 = v5[6];
  v5[6] = v28;

  v30 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  productIdentifier = self->_productIdentifier;
  if (productIdentifier | v4[7])
  {
    if (![(NSString *)productIdentifier isEqual:?])
    {
      goto LABEL_22;
    }
  }

  currency = self->_currency;
  if (currency | v4[1] && ![(NSString *)currency isEqual:?])
  {
    goto LABEL_22;
  }

  if (((depositAmount = self->_depositAmount, !(depositAmount | v4[2])) || [(NSString *)depositAmount isEqual:?]) && ((minLoadedBalance = self->_minLoadedBalance, !(minLoadedBalance | v4[5])) || [(NSString *)minLoadedBalance isEqual:?]) && ((maxLoadedBalance = self->_maxLoadedBalance, !(maxLoadedBalance | v4[4])) || [(NSString *)maxLoadedBalance isEqual:?]) && ((requiredFields = self->_requiredFields, !(requiredFields | v4[10])) || [(NSMutableArray *)requiredFields isEqual:?]) && ((readerModeMetadataJson = self->_readerModeMetadataJson, !(readerModeMetadataJson | v4[8])) || [(NSString *)readerModeMetadataJson isEqual:?]) && ((digitalIssuanceMetadata = self->_digitalIssuanceMetadata, !(digitalIssuanceMetadata | v4[3])) || [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)digitalIssuanceMetadata isEqual:?]) && ((readerModeResourcesJson = self->_readerModeResourcesJson, !(readerModeResourcesJson | v4[9])) || [(NSString *)readerModeResourcesJson isEqual:?]))
  {
    minimumReaderModeBalance = self->_minimumReaderModeBalance;
    if (minimumReaderModeBalance | v4[6])
    {
      v15 = [(NSString *)minimumReaderModeBalance isEqual:?];
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
LABEL_22:
    v15 = 0;
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_productIdentifier hash];
  v4 = [(NSString *)self->_currency hash]^ v3;
  v5 = [(NSString *)self->_depositAmount hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_minLoadedBalance hash];
  v7 = [(NSString *)self->_maxLoadedBalance hash];
  v8 = v7 ^ [(NSMutableArray *)self->_requiredFields hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_readerModeMetadataJson hash];
  v10 = [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)self->_digitalIssuanceMetadata hash];
  v11 = v10 ^ [(NSString *)self->_readerModeResourcesJson hash];
  return v9 ^ v11 ^ [(NSString *)self->_minimumReaderModeBalance hash];
}

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 7))
  {
    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)self setProductIdentifier:?];
  }

  if (*(v4 + 1))
  {
    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)self setCurrency:?];
  }

  if (*(v4 + 2))
  {
    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)self setDepositAmount:?];
  }

  if (*(v4 + 5))
  {
    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)self setMinLoadedBalance:?];
  }

  if (*(v4 + 4))
  {
    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)self setMaxLoadedBalance:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(v4 + 10);
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)self addRequiredFields:*(*(&v13 + 1) + 8 * i), v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (*(v4 + 8))
  {
    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)self setReaderModeMetadataJson:?];
  }

  digitalIssuanceMetadata = self->_digitalIssuanceMetadata;
  v11 = *(v4 + 3);
  if (digitalIssuanceMetadata)
  {
    if (v11)
    {
      [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)digitalIssuanceMetadata mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)self setDigitalIssuanceMetadata:?];
  }

  if (*(v4 + 9))
  {
    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)self setReaderModeResourcesJson:?];
  }

  if (*(v4 + 6))
  {
    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)self setMinimumReaderModeBalance:?];
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end