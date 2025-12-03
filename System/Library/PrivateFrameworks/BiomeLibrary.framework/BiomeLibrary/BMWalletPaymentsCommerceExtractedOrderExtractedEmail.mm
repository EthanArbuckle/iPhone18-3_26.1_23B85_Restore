@interface BMWalletPaymentsCommerceExtractedOrderExtractedEmail
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMWalletPaymentsCommerceExtractedOrderExtractedEmail)initWithEmailMetadata:(id)metadata emailType:(int)type spotlightUniqueIdentifier:(id)identifier spotlightDomainIdentifier:(id)domainIdentifier;
- (BMWalletPaymentsCommerceExtractedOrderExtractedEmail)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMWalletPaymentsCommerceExtractedOrderExtractedEmail

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    emailMetadata = [(BMWalletPaymentsCommerceExtractedOrderExtractedEmail *)self emailMetadata];
    emailMetadata2 = [v5 emailMetadata];
    v8 = emailMetadata2;
    if (emailMetadata == emailMetadata2)
    {
    }

    else
    {
      emailMetadata3 = [(BMWalletPaymentsCommerceExtractedOrderExtractedEmail *)self emailMetadata];
      emailMetadata4 = [v5 emailMetadata];
      v11 = [emailMetadata3 isEqual:emailMetadata4];

      if (!v11)
      {
        goto LABEL_10;
      }
    }

    emailType = [(BMWalletPaymentsCommerceExtractedOrderExtractedEmail *)self emailType];
    if (emailType == [v5 emailType])
    {
      spotlightUniqueIdentifier = [(BMWalletPaymentsCommerceExtractedOrderExtractedEmail *)self spotlightUniqueIdentifier];
      spotlightUniqueIdentifier2 = [v5 spotlightUniqueIdentifier];
      v16 = spotlightUniqueIdentifier2;
      if (spotlightUniqueIdentifier == spotlightUniqueIdentifier2)
      {
      }

      else
      {
        spotlightUniqueIdentifier3 = [(BMWalletPaymentsCommerceExtractedOrderExtractedEmail *)self spotlightUniqueIdentifier];
        spotlightUniqueIdentifier4 = [v5 spotlightUniqueIdentifier];
        v19 = [spotlightUniqueIdentifier3 isEqual:spotlightUniqueIdentifier4];

        if (!v19)
        {
          goto LABEL_10;
        }
      }

      spotlightDomainIdentifier = [(BMWalletPaymentsCommerceExtractedOrderExtractedEmail *)self spotlightDomainIdentifier];
      spotlightDomainIdentifier2 = [v5 spotlightDomainIdentifier];
      if (spotlightDomainIdentifier == spotlightDomainIdentifier2)
      {
        v12 = 1;
      }

      else
      {
        spotlightDomainIdentifier3 = [(BMWalletPaymentsCommerceExtractedOrderExtractedEmail *)self spotlightDomainIdentifier];
        spotlightDomainIdentifier4 = [v5 spotlightDomainIdentifier];
        v12 = [spotlightDomainIdentifier3 isEqual:spotlightDomainIdentifier4];
      }

      goto LABEL_16;
    }

LABEL_10:
    v12 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v12 = 0;
LABEL_17:

  return v12;
}

- (id)jsonDictionary
{
  v16[4] = *MEMORY[0x1E69E9840];
  emailMetadata = [(BMWalletPaymentsCommerceExtractedOrderExtractedEmail *)self emailMetadata];
  jsonDictionary = [emailMetadata jsonDictionary];

  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWalletPaymentsCommerceExtractedOrderExtractedEmail emailType](self, "emailType")}];
  spotlightUniqueIdentifier = [(BMWalletPaymentsCommerceExtractedOrderExtractedEmail *)self spotlightUniqueIdentifier];
  spotlightDomainIdentifier = [(BMWalletPaymentsCommerceExtractedOrderExtractedEmail *)self spotlightDomainIdentifier];
  v15[0] = @"emailMetadata";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = null;
  v15[1] = @"emailType";
  null2 = v5;
  if (!v5)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = null2;
  v15[2] = @"spotlightUniqueIdentifier";
  null3 = spotlightUniqueIdentifier;
  if (!spotlightUniqueIdentifier)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = null3;
  v15[3] = @"spotlightDomainIdentifier";
  null4 = spotlightDomainIdentifier;
  if (!spotlightDomainIdentifier)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v16[3] = null4;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];
  if (spotlightDomainIdentifier)
  {
    if (spotlightUniqueIdentifier)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (spotlightUniqueIdentifier)
    {
LABEL_11:
      if (v5)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (jsonDictionary)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!v5)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (jsonDictionary)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BMWalletPaymentsCommerceExtractedOrderExtractedEmail)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v45[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"emailMetadata"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v7;
    v37 = 0;
    v8 = [[BMWalletPaymentsCommerceOrderEmailEmailMetadata alloc] initWithJSONDictionary:v10 error:&v37];
    v11 = v37;
    if (v11)
    {
      v12 = v10;
      if (error)
      {
        v11 = v11;
        *error = v11;
      }

      v13 = 0;
      error = v12;
      goto LABEL_29;
    }

LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"emailType"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v9;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v13 = 0;
            goto LABEL_28;
          }

          v36 = objc_alloc(MEMORY[0x1E696ABC0]);
          v30 = *MEMORY[0x1E698F240];
          v42 = *MEMORY[0x1E696A578];
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"emailType"];
          v43 = v20;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
          v13 = 0;
          *error = [v36 initWithDomain:v30 code:2 userInfo:v18];
          error = 0;
LABEL_27:

LABEL_28:
          goto LABEL_29;
        }

        v14 = [MEMORY[0x1E696AD98] numberWithInt:BMWalletPaymentsCommerceOrderEmailEmailTypeFromString(v9)];
      }

      v34 = v14;
    }

    else
    {
      v34 = 0;
    }

    v35 = v7;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"spotlightUniqueIdentifier"];
    selfCopy = self;
    if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v20 = 0;
          v13 = 0;
          error = v34;
          v7 = v35;
          goto LABEL_27;
        }

        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v26 = *MEMORY[0x1E698F240];
        v40 = *MEMORY[0x1E696A578];
        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"spotlightUniqueIdentifier"];
        v41 = v22;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
        v27 = [v25 initWithDomain:v26 code:2 userInfo:v21];
        v20 = 0;
        v13 = 0;
        error = v34;
        *errorCopy = v27;
        goto LABEL_26;
      }

      v20 = v18;
    }

    else
    {
      v20 = 0;
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"spotlightDomainIdentifier"];
    if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v33 = objc_alloc(MEMORY[0x1E696ABC0]);
          v31 = *MEMORY[0x1E698F240];
          v38 = *MEMORY[0x1E696A578];
          v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"spotlightDomainIdentifier"];
          v39 = v28;
          v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
          *error = [v33 initWithDomain:v31 code:2 userInfo:v29];
        }

        v22 = 0;
        v13 = 0;
        error = v34;
        goto LABEL_26;
      }

      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    error = v34;
    v13 = -[BMWalletPaymentsCommerceExtractedOrderExtractedEmail initWithEmailMetadata:emailType:spotlightUniqueIdentifier:spotlightDomainIdentifier:](selfCopy, "initWithEmailMetadata:emailType:spotlightUniqueIdentifier:spotlightDomainIdentifier:", v8, [v34 intValue], v20, v22);
    selfCopy = v13;
LABEL_26:

    self = selfCopy;
    v7 = v35;
    goto LABEL_27;
  }

  if (!error)
  {
    v13 = 0;
    goto LABEL_30;
  }

  v15 = objc_alloc(MEMORY[0x1E696ABC0]);
  v16 = *MEMORY[0x1E698F240];
  v44 = *MEMORY[0x1E696A578];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"emailMetadata"];
  v45[0] = v8;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
  v13 = 0;
  *error = [v15 initWithDomain:v16 code:2 userInfo:v17];
  error = v17;
LABEL_29:

LABEL_30:
  v23 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceExtractedOrderExtractedEmail *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_emailMetadata)
  {
    PBDataWriterPlaceMark();
    [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self->_emailMetadata writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  emailType = self->_emailType;
  PBDataWriterWriteUint32Field();
  if (self->_spotlightUniqueIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_spotlightDomainIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v31.receiver = self;
  v31.super_class = BMWalletPaymentsCommerceExtractedOrderExtractedEmail;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_47;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v32[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v32 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v32[0] & 0x7F) << v7;
        if ((v32[0] & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        if (v8++ >= 9)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 2)
      {
        if (v15 == 3)
        {
          v23 = PBReaderReadString();
          v24 = 32;
        }

        else
        {
          if (v15 != 4)
          {
LABEL_33:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_46;
            }

            goto LABEL_44;
          }

          v23 = PBReaderReadString();
          v24 = 40;
        }

        v27 = *(&v5->super.super.isa + v24);
        *(&v5->super.super.isa + v24) = v23;
      }

      else if (v15 == 1)
      {
        v32[0] = 0;
        v32[1] = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_46;
        }

        v25 = [[BMWalletPaymentsCommerceOrderEmailEmailMetadata alloc] initByReadFrom:fromCopy];
        if (!v25)
        {
          goto LABEL_46;
        }

        emailMetadata = v5->_emailMetadata;
        v5->_emailMetadata = v25;

        PBReaderRecallMark();
      }

      else
      {
        if (v15 != 2)
        {
          goto LABEL_33;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v32[0]) = 0;
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:v32 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (v32[0] & 0x7F) << v16;
          if ((v32[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          if (v17++ > 8)
          {
            goto LABEL_42;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v18 > 8)
        {
LABEL_42:
          LODWORD(v18) = 0;
        }

        v5->_emailType = v18;
      }

LABEL_44:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_46:
    v29 = 0;
  }

  else
  {
LABEL_47:
    v29 = v5;
  }

  return v29;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  emailMetadata = [(BMWalletPaymentsCommerceExtractedOrderExtractedEmail *)self emailMetadata];
  v5 = BMWalletPaymentsCommerceOrderEmailEmailTypeAsString([(BMWalletPaymentsCommerceExtractedOrderExtractedEmail *)self emailType]);
  spotlightUniqueIdentifier = [(BMWalletPaymentsCommerceExtractedOrderExtractedEmail *)self spotlightUniqueIdentifier];
  spotlightDomainIdentifier = [(BMWalletPaymentsCommerceExtractedOrderExtractedEmail *)self spotlightDomainIdentifier];
  v8 = [v3 initWithFormat:@"BMWalletPaymentsCommerceExtractedOrderExtractedEmail with emailMetadata: %@, emailType: %@, spotlightUniqueIdentifier: %@, spotlightDomainIdentifier: %@", emailMetadata, v5, spotlightUniqueIdentifier, spotlightDomainIdentifier];

  return v8;
}

- (BMWalletPaymentsCommerceExtractedOrderExtractedEmail)initWithEmailMetadata:(id)metadata emailType:(int)type spotlightUniqueIdentifier:(id)identifier spotlightDomainIdentifier:(id)domainIdentifier
{
  metadataCopy = metadata;
  identifierCopy = identifier;
  domainIdentifierCopy = domainIdentifier;
  v16.receiver = self;
  v16.super_class = BMWalletPaymentsCommerceExtractedOrderExtractedEmail;
  v14 = [(BMEventBase *)&v16 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v14->_emailMetadata, metadata);
    v14->_emailType = type;
    objc_storeStrong(&v14->_spotlightUniqueIdentifier, identifier);
    objc_storeStrong(&v14->_spotlightDomainIdentifier, domainIdentifier);
  }

  return v14;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"emailMetadata" number:1 type:14 subMessageClass:objc_opt_class()];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"emailType" number:2 type:4 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"spotlightUniqueIdentifier" number:3 type:13 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"spotlightDomainIdentifier" number:4 type:13 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"emailMetadata_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_98132];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"emailType" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"spotlightUniqueIdentifier" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"spotlightDomainIdentifier" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __63__BMWalletPaymentsCommerceExtractedOrderExtractedEmail_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 emailMetadata];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMWalletPaymentsCommerceExtractedOrderExtractedEmail alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end