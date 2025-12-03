@interface NPKProtoStandalonePaymentProvisioningMethodMetadata
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addRequiredFields:(id)fields;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandalonePaymentProvisioningMethodMetadata

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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningMethodMetadata;
  v4 = [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v29 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  productIdentifier = self->_productIdentifier;
  if (productIdentifier)
  {
    [dictionary setObject:productIdentifier forKey:@"productIdentifier"];
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

          dictionaryRepresentation = [*(*(&v24 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:dictionaryRepresentation];
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
    dictionaryRepresentation2 = [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)digitalIssuanceMetadata dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"digitalIssuanceMetadata"];
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

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x277D85DE8];
  toCopy = to;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_productIdentifier)
  {
    [toCopy setProductIdentifier:?];
  }

  if (self->_currency)
  {
    [toCopy setCurrency:?];
  }

  if (self->_depositAmount)
  {
    [toCopy setDepositAmount:?];
  }

  if (self->_minLoadedBalance)
  {
    [toCopy setMinLoadedBalance:?];
  }

  if (self->_maxLoadedBalance)
  {
    [toCopy setMaxLoadedBalance:?];
  }

  if ([(NPKProtoStandalonePaymentProvisioningMethodMetadata *)self requiredFieldsCount])
  {
    [toCopy clearRequiredFields];
    requiredFieldsCount = [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)self requiredFieldsCount];
    if (requiredFieldsCount)
    {
      v5 = requiredFieldsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)self requiredFieldsAtIndex:i];
        [toCopy addRequiredFields:v7];
      }
    }
  }

  if (self->_readerModeMetadataJson)
  {
    [toCopy setReaderModeMetadataJson:?];
  }

  v8 = toCopy;
  if (self->_digitalIssuanceMetadata)
  {
    [toCopy setDigitalIssuanceMetadata:?];
    v8 = toCopy;
  }

  if (self->_readerModeResourcesJson)
  {
    [toCopy setReaderModeResourcesJson:?];
    v8 = toCopy;
  }

  if (self->_minimumReaderModeBalance)
  {
    [toCopy setMinimumReaderModeBalance:?];
    v8 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_productIdentifier copyWithZone:zone];
  v7 = v5[7];
  v5[7] = v6;

  v8 = [(NSString *)self->_currency copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_depositAmount copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_minLoadedBalance copyWithZone:zone];
  v13 = v5[5];
  v5[5] = v12;

  v14 = [(NSString *)self->_maxLoadedBalance copyWithZone:zone];
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

        v21 = [*(*(&v32 + 1) + 8 * v20) copyWithZone:{zone, v32}];
        [v5 addRequiredFields:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v18);
  }

  v22 = [(NSString *)self->_readerModeMetadataJson copyWithZone:zone];
  v23 = v5[8];
  v5[8] = v22;

  v24 = [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)self->_digitalIssuanceMetadata copyWithZone:zone];
  v25 = v5[3];
  v5[3] = v24;

  v26 = [(NSString *)self->_readerModeResourcesJson copyWithZone:zone];
  v27 = v5[9];
  v5[9] = v26;

  v28 = [(NSString *)self->_minimumReaderModeBalance copyWithZone:zone];
  v29 = v5[6];
  v5[6] = v28;

  v30 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  productIdentifier = self->_productIdentifier;
  if (productIdentifier | equalCopy[7])
  {
    if (![(NSString *)productIdentifier isEqual:?])
    {
      goto LABEL_22;
    }
  }

  currency = self->_currency;
  if (currency | equalCopy[1] && ![(NSString *)currency isEqual:?])
  {
    goto LABEL_22;
  }

  if (((depositAmount = self->_depositAmount, !(depositAmount | equalCopy[2])) || [(NSString *)depositAmount isEqual:?]) && ((minLoadedBalance = self->_minLoadedBalance, !(minLoadedBalance | equalCopy[5])) || [(NSString *)minLoadedBalance isEqual:?]) && ((maxLoadedBalance = self->_maxLoadedBalance, !(maxLoadedBalance | equalCopy[4])) || [(NSString *)maxLoadedBalance isEqual:?]) && ((requiredFields = self->_requiredFields, !(requiredFields | equalCopy[10])) || [(NSMutableArray *)requiredFields isEqual:?]) && ((readerModeMetadataJson = self->_readerModeMetadataJson, !(readerModeMetadataJson | equalCopy[8])) || [(NSString *)readerModeMetadataJson isEqual:?]) && ((digitalIssuanceMetadata = self->_digitalIssuanceMetadata, !(digitalIssuanceMetadata | equalCopy[3])) || [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)digitalIssuanceMetadata isEqual:?]) && ((readerModeResourcesJson = self->_readerModeResourcesJson, !(readerModeResourcesJson | equalCopy[9])) || [(NSString *)readerModeResourcesJson isEqual:?]))
  {
    minimumReaderModeBalance = self->_minimumReaderModeBalance;
    if (minimumReaderModeBalance | equalCopy[6])
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

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 7))
  {
    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)self setProductIdentifier:?];
  }

  if (*(fromCopy + 1))
  {
    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)self setCurrency:?];
  }

  if (*(fromCopy + 2))
  {
    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)self setDepositAmount:?];
  }

  if (*(fromCopy + 5))
  {
    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)self setMinLoadedBalance:?];
  }

  if (*(fromCopy + 4))
  {
    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)self setMaxLoadedBalance:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(fromCopy + 10);
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

  if (*(fromCopy + 8))
  {
    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)self setReaderModeMetadataJson:?];
  }

  digitalIssuanceMetadata = self->_digitalIssuanceMetadata;
  v11 = *(fromCopy + 3);
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

  if (*(fromCopy + 9))
  {
    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)self setReaderModeResourcesJson:?];
  }

  if (*(fromCopy + 6))
  {
    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)self setMinimumReaderModeBalance:?];
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end