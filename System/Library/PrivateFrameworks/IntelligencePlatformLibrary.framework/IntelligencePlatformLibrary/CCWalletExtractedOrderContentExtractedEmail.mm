@interface CCWalletExtractedOrderContentExtractedEmail
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCWalletExtractedOrderContentExtractedEmail)initWithEmailMetadata:(id)metadata emailType:(unsigned int)type spotlightUniqueIdentifier:(id)identifier spotlightDomainIdentifier:(id)domainIdentifier orderDetails:(id)details error:(id *)error;
- (CCWalletExtractedOrderContentExtractedEmail)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCWalletExtractedOrderContentExtractedEmailOrderDetails)orderDetails;
- (CCWalletPaymentsCommerceOrderEmailEmailMetadata)emailMetadata;
- (NSString)spotlightDomainIdentifier;
- (NSString)spotlightUniqueIdentifier;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCWalletExtractedOrderContentExtractedEmail

- (CCWalletExtractedOrderContentExtractedEmail)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v26[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"emailMetadata"];
    if (v9)
    {
      v26[0] = 0;
      v10 = [[CCWalletPaymentsCommerceOrderEmailEmailMetadata alloc] initWithJSONDictionary:v9 error:v26];
      v11 = v26[0];
      v12 = v11;
      if (!v10 || v11)
      {
        CCSetError();
        v15 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v9 = v10;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"emailType"];
    v12 = v13;
    selfCopy = self;
    if (v13)
    {
      unsignedIntegerValue = [v13 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"spotlightUniqueIdentifier"];
    v16 = [dictionaryCopy objectForKeyedSubscript:@"spotlightDomainIdentifier"];
    v17 = [dictionaryCopy objectForKeyedSubscript:@"orderDetails"];
    if (v17)
    {
      v18 = v17;
      v23 = unsignedIntegerValue;
      v25 = 0;
      v19 = [[CCWalletExtractedOrderContentExtractedEmailOrderDetails alloc] initWithJSONDictionary:v17 error:&v25];
      v20 = v25;
      v21 = v20;
      if (!v19 || v20)
      {
        CCSetError();

        v15 = 0;
        goto LABEL_18;
      }

      unsignedIntegerValue = v23;
    }

    else
    {
      v19 = 0;
    }

    v15 = [[CCWalletExtractedOrderContentExtractedEmail alloc] initWithEmailMetadata:v9 emailType:unsignedIntegerValue spotlightUniqueIdentifier:v10 spotlightDomainIdentifier:v16 orderDetails:v19 error:error];
    v18 = v19;
LABEL_18:

    self = selfCopy;
    goto LABEL_19;
  }

  CCSetError();
  v15 = 0;
LABEL_20:

  return v15;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_emailMetadata)
  {
    emailMetadata = [(CCWalletExtractedOrderContentExtractedEmail *)self emailMetadata];
    jsonDictionary = [emailMetadata jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"emailMetadata"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCWalletExtractedOrderContentExtractedEmail emailType](self, "emailType")}];
  [v3 setObject:v6 forKeyedSubscript:@"emailType"];

  if (self->_spotlightUniqueIdentifier)
  {
    spotlightUniqueIdentifier = [(CCWalletExtractedOrderContentExtractedEmail *)self spotlightUniqueIdentifier];
    [v3 setObject:spotlightUniqueIdentifier forKeyedSubscript:@"spotlightUniqueIdentifier"];
  }

  if (self->_spotlightDomainIdentifier)
  {
    spotlightDomainIdentifier = [(CCWalletExtractedOrderContentExtractedEmail *)self spotlightDomainIdentifier];
    [v3 setObject:spotlightDomainIdentifier forKeyedSubscript:@"spotlightDomainIdentifier"];
  }

  if (self->_orderDetails)
  {
    orderDetails = [(CCWalletExtractedOrderContentExtractedEmail *)self orderDetails];
    jsonDictionary2 = [orderDetails jsonDictionary];
    [v3 setObject:jsonDictionary2 forKeyedSubscript:@"orderDetails"];
  }

  v11 = [v3 copy];

  return v11;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_emailMetadata)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7957 subMessageValue:self->_emailMetadata];
    blockCopy[2](blockCopy, v5);
  }

  v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7968 enumValue:self->_emailType];
  blockCopy[2](blockCopy, v6);

  if (self->_spotlightUniqueIdentifier)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8020 stringValue:self->_spotlightUniqueIdentifier];
    blockCopy[2](blockCopy, v7);
  }

  if (self->_spotlightDomainIdentifier)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8021 stringValue:self->_spotlightDomainIdentifier];
    blockCopy[2](blockCopy, v8);
  }

  v9 = blockCopy;
  if (self->_orderDetails)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8022 subMessageValue:self->_orderDetails];
    blockCopy[2](blockCopy, v10);

    v9 = blockCopy;
  }
}

- (CCWalletExtractedOrderContentExtractedEmailOrderDetails)orderDetails
{
  v2 = [(CCWalletExtractedOrderContentExtractedEmailOrderDetails *)self->_orderDetails copy];

  return v2;
}

- (NSString)spotlightDomainIdentifier
{
  v2 = [(NSString *)self->_spotlightDomainIdentifier copy];

  return v2;
}

- (NSString)spotlightUniqueIdentifier
{
  v2 = [(NSString *)self->_spotlightUniqueIdentifier copy];

  return v2;
}

- (CCWalletPaymentsCommerceOrderEmailEmailMetadata)emailMetadata
{
  v2 = [(CCWalletPaymentsCommerceOrderEmailEmailMetadata *)self->_emailMetadata copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v7 = MEMORY[0x1E6993AB8];
  v8 = MEMORY[0x1E6993AB0];
  v9 = MEMORY[0x1E6993AA8];
  if (*&v6[*MEMORY[0x1E6993AB8]] >= *&v6[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_51;
  }

  v10 = 0;
  v11 = MEMORY[0x1E6993AA0];
  while (2)
  {
    if (*&v6[*v9])
    {
      v12 = 0;
    }

    else
    {
      v12 = v10 == 0;
    }

    if (v12)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = *v7;
        v17 = *&v6[v16];
        v18 = v17 + 1;
        if (v17 == -1 || v18 > *&v6[*v8])
        {
          break;
        }

        v19 = *(*&v6[*v11] + v17);
        *&v6[v16] = v18;
        v15 |= (v19 & 0x7F) << v13;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v13 += 7;
        v20 = v14++ >= 9;
        if (v20)
        {
          v21 = 0;
          if (*&v6[*v9])
          {
            goto LABEL_52;
          }

          goto LABEL_21;
        }
      }

      *&v6[*v9] = 1;
LABEL_17:
      v22 = *&v6[*v9];
      if (v22)
      {
        v21 = 0;
      }

      else
      {
        v21 = v15;
      }

      if (v22)
      {
        goto LABEL_52;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) > 2)
      {
        switch(v23)
        {
          case 3:
            v35 = CCPBReaderReadStringNoCopy();
            v36 = 32;
            break;
          case 4:
            v35 = CCPBReaderReadStringNoCopy();
            v36 = 40;
            break;
          case 5:
            v24 = [CCWalletExtractedOrderContentExtractedEmailOrderDetails alloc];
            v25 = CCPBReaderReadDataNoCopy();
            v48 = 0;
            v26 = [(CCItemMessage *)v24 initWithData:v25 error:&v48];
            v10 = v48;
            v27 = 48;
LABEL_40:
            v39 = *(&self->super.super.isa + v27);
            *(&self->super.super.isa + v27) = v26;

LABEL_41:
            goto LABEL_48;
          default:
LABEL_42:
            if ((CCPBReaderSkipValueWithTag() & 1) == 0)
            {
              v40 = objc_opt_class();
              v25 = NSStringFromClass(v40);
              v41 = *&v6[*v9];
              v10 = CCSkipFieldErrorForMessage();
              goto LABEL_41;
            }

LABEL_38:
            v10 = 0;
            goto LABEL_48;
        }

        v37 = *(&self->super.super.isa + v36);
        *(&self->super.super.isa + v36) = v35;

        goto LABEL_38;
      }

      if (v23 == 1)
      {
        v38 = [CCWalletPaymentsCommerceOrderEmailEmailMetadata alloc];
        v25 = CCPBReaderReadDataNoCopy();
        v49 = 0;
        v26 = [(CCItemMessage *)v38 initWithData:v25 error:&v49];
        v10 = v49;
        v27 = 24;
        goto LABEL_40;
      }

      if (v23 == 2)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          v31 = *v7;
          v32 = *&v6[v31];
          v33 = v32 + 1;
          if (v32 == -1 || v33 > *&v6[*v8])
          {
            break;
          }

          v34 = *(*&v6[*v11] + v32);
          *&v6[v31] = v33;
          v30 |= (v34 & 0x7F) << v28;
          if ((v34 & 0x80) == 0)
          {
            goto LABEL_45;
          }

          v28 += 7;
          v20 = v29++ >= 9;
          if (v20)
          {
            LODWORD(v30) = 0;
            goto LABEL_47;
          }
        }

        *&v6[*v9] = 1;
LABEL_45:
        if (*&v6[*v9])
        {
          LODWORD(v30) = 0;
        }

LABEL_47:
        v10 = 0;
        self->_emailType = v30;
LABEL_48:
        if (*&v6[*v7] < *&v6[*v8])
        {
          continue;
        }

        break;
      }

      goto LABEL_42;
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_53;
  }

LABEL_51:
  if (!*&v6[*v9])
  {
    v10 = 0;
    v46 = 1;
    goto LABEL_55;
  }

LABEL_52:
  v42 = objc_opt_class();
  v43 = NSStringFromClass(v42);
  v44 = *&v6[*v9];
  v45 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_53:
  v46 = 0;
LABEL_55:

  return v46;
}

- (CCWalletExtractedOrderContentExtractedEmail)initWithEmailMetadata:(id)metadata emailType:(unsigned int)type spotlightUniqueIdentifier:(id)identifier spotlightDomainIdentifier:(id)domainIdentifier orderDetails:(id)details error:(id *)error
{
  metadataCopy = metadata;
  identifierCopy = identifier;
  domainIdentifierCopy = domainIdentifier;
  detailsCopy = details;
  v18 = objc_opt_new();
  if (!metadataCopy)
  {
    v20 = 0;
LABEL_5:
    selfCopy = self;
    if (type)
    {
      v22 = CCValidateEnumField();
      v23 = v20;

      if (!v22)
      {
        CCSetError();
        v24 = 0;
        v20 = v23;
        goto LABEL_24;
      }

      CCPBDataWriterWriteUint32Field();
    }

    else
    {
      v23 = v20;
    }

    if (identifierCopy)
    {
      objc_opt_class();
      IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
      v20 = v23;

      if (!IsInstanceOfExpectedClass)
      {
LABEL_16:
        CCSetError();
        v24 = 0;
LABEL_24:
        self = selfCopy;
        goto LABEL_25;
      }

      CCPBDataWriterWriteStringField();
      if (!domainIdentifierCopy)
      {
LABEL_13:
        v26 = v20;
        if (detailsCopy)
        {
LABEL_14:
          objc_opt_class();
          v27 = CCValidateIsInstanceOfExpectedClass();
          v20 = v26;

          if (v27)
          {
            data = [detailsCopy data];
            CCPBDataWriterWriteDataField();

LABEL_22:
            immutableData = [v18 immutableData];
            v24 = [v33 initWithData:immutableData error:error];

            self = v24;
            goto LABEL_25;
          }

          goto LABEL_16;
        }

LABEL_21:
        v20 = v26;
        goto LABEL_22;
      }
    }

    else
    {
      v20 = v23;
      if (!domainIdentifierCopy)
      {
        goto LABEL_13;
      }
    }

    objc_opt_class();
    v29 = CCValidateIsInstanceOfExpectedClass();
    v26 = v20;

    if (!v29)
    {
      CCSetError();
      v24 = 0;
      v20 = v26;
      goto LABEL_24;
    }

    CCPBDataWriterWriteStringField();
    if (detailsCopy)
    {
      goto LABEL_14;
    }

    goto LABEL_21;
  }

  objc_opt_class();
  v19 = CCValidateIsInstanceOfExpectedClass();
  v20 = 0;
  if (v19)
  {
    data2 = [metadataCopy data];
    CCPBDataWriterWriteDataField();

    goto LABEL_5;
  }

  CCSetError();
  v24 = 0;
LABEL_25:

  return v24;
}

@end