@interface BMWalletPaymentsCommerceClassicOrderMerchant
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMWalletPaymentsCommerceClassicOrderMerchant)initWithDisplayName:(id)name domainName:(id)domainName localizedDisplayName:(id)displayName;
- (BMWalletPaymentsCommerceClassicOrderMerchant)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMWalletPaymentsCommerceClassicOrderMerchant

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    displayName = [(BMWalletPaymentsCommerceClassicOrderMerchant *)self displayName];
    displayName2 = [v5 displayName];
    v8 = displayName2;
    if (displayName == displayName2)
    {
    }

    else
    {
      displayName3 = [(BMWalletPaymentsCommerceClassicOrderMerchant *)self displayName];
      displayName4 = [v5 displayName];
      v11 = [displayName3 isEqual:displayName4];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    domainName = [(BMWalletPaymentsCommerceClassicOrderMerchant *)self domainName];
    domainName2 = [v5 domainName];
    v15 = domainName2;
    if (domainName == domainName2)
    {
    }

    else
    {
      domainName3 = [(BMWalletPaymentsCommerceClassicOrderMerchant *)self domainName];
      domainName4 = [v5 domainName];
      v18 = [domainName3 isEqual:domainName4];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    localizedDisplayName = [(BMWalletPaymentsCommerceClassicOrderMerchant *)self localizedDisplayName];
    localizedDisplayName2 = [v5 localizedDisplayName];
    if (localizedDisplayName == localizedDisplayName2)
    {
      v12 = 1;
    }

    else
    {
      localizedDisplayName3 = [(BMWalletPaymentsCommerceClassicOrderMerchant *)self localizedDisplayName];
      localizedDisplayName4 = [v5 localizedDisplayName];
      v12 = [localizedDisplayName3 isEqual:localizedDisplayName4];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (id)jsonDictionary
{
  v14[3] = *MEMORY[0x1E69E9840];
  displayName = [(BMWalletPaymentsCommerceClassicOrderMerchant *)self displayName];
  jsonDictionary = [displayName jsonDictionary];

  domainName = [(BMWalletPaymentsCommerceClassicOrderMerchant *)self domainName];
  localizedDisplayName = [(BMWalletPaymentsCommerceClassicOrderMerchant *)self localizedDisplayName];
  v13[0] = @"displayName";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = null;
  v13[1] = @"domainName";
  null2 = domainName;
  if (!domainName)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = null2;
  v13[2] = @"localizedDisplayName";
  null3 = localizedDisplayName;
  if (!localizedDisplayName)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = null3;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  if (localizedDisplayName)
  {
    if (domainName)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (jsonDictionary)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!domainName)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (jsonDictionary)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BMWalletPaymentsCommerceClassicOrderMerchant)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v32[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"displayName"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v7;
    v26 = 0;
    v8 = [[BMWalletPaymentsCommerceClassicOrderLocalizedString alloc] initWithJSONDictionary:v10 error:&v26];
    v16 = v26;
    if (v16)
    {
      if (error)
      {
        v16 = v16;
        *error = v16;
      }

      selfCopy = 0;
      goto LABEL_13;
    }

LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"domainName"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          selfCopy = 0;
          goto LABEL_12;
        }

        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v19 = *MEMORY[0x1E698F240];
        v29 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"domainName"];
        v30 = v12;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        v20 = [v24 initWithDomain:v19 code:2 userInfo:v11];
        v10 = 0;
        selfCopy = 0;
        *error = v20;
        goto LABEL_11;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"localizedDisplayName"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v25 = objc_alloc(MEMORY[0x1E696ABC0]);
          v23 = *MEMORY[0x1E698F240];
          v27 = *MEMORY[0x1E696A578];
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"localizedDisplayName"];
          v28 = v21;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
          *error = [v25 initWithDomain:v23 code:2 userInfo:v22];
        }

        v12 = 0;
        selfCopy = 0;
        goto LABEL_11;
      }

      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    self = [(BMWalletPaymentsCommerceClassicOrderMerchant *)self initWithDisplayName:v8 domainName:v10 localizedDisplayName:v12];
    selfCopy = self;
LABEL_11:

LABEL_12:
    goto LABEL_13;
  }

  if (!error)
  {
    selfCopy = 0;
    goto LABEL_14;
  }

  v17 = objc_alloc(MEMORY[0x1E696ABC0]);
  v18 = *MEMORY[0x1E698F240];
  v31 = *MEMORY[0x1E696A578];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"displayName"];
  v32[0] = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  selfCopy = 0;
  *error = [v17 initWithDomain:v18 code:2 userInfo:v10];
LABEL_13:

LABEL_14:
  v14 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceClassicOrderMerchant *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_displayName)
  {
    PBDataWriterPlaceMark();
    [(BMWalletPaymentsCommerceClassicOrderLocalizedString *)self->_displayName writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_domainName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_localizedDisplayName)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v24.receiver = self;
  v24.super_class = BMWalletPaymentsCommerceClassicOrderMerchant;
  v5 = [(BMEventBase *)&v24 init];
  if (!v5)
  {
    goto LABEL_31;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_29;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v25[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v25 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v25[0] & 0x7F) << v7;
        if ((v25[0] & 0x80) == 0)
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
        goto LABEL_29;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) == 3)
      {
        break;
      }

      if (v15 == 2)
      {
        v18 = PBReaderReadString();
        v19 = 40;
LABEL_26:
        v20 = *(&v5->super.super.isa + v19);
        *(&v5->super.super.isa + v19) = v18;

        goto LABEL_28;
      }

      if (v15 == 1)
      {
        v25[0] = 0;
        v25[1] = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_30;
        }

        v16 = [[BMWalletPaymentsCommerceClassicOrderLocalizedString alloc] initByReadFrom:fromCopy];
        if (!v16)
        {
          goto LABEL_30;
        }

        displayName = v5->_displayName;
        v5->_displayName = v16;

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_28:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_29;
      }
    }

    v18 = PBReaderReadString();
    v19 = 24;
    goto LABEL_26;
  }

LABEL_29:
  if ([fromCopy hasError])
  {
LABEL_30:
    v22 = 0;
  }

  else
  {
LABEL_31:
    v22 = v5;
  }

  return v22;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  displayName = [(BMWalletPaymentsCommerceClassicOrderMerchant *)self displayName];
  domainName = [(BMWalletPaymentsCommerceClassicOrderMerchant *)self domainName];
  localizedDisplayName = [(BMWalletPaymentsCommerceClassicOrderMerchant *)self localizedDisplayName];
  v7 = [v3 initWithFormat:@"BMWalletPaymentsCommerceClassicOrderMerchant with displayName: %@, domainName: %@, localizedDisplayName: %@", displayName, domainName, localizedDisplayName];

  return v7;
}

- (BMWalletPaymentsCommerceClassicOrderMerchant)initWithDisplayName:(id)name domainName:(id)domainName localizedDisplayName:(id)displayName
{
  nameCopy = name;
  domainNameCopy = domainName;
  displayNameCopy = displayName;
  v14.receiver = self;
  v14.super_class = BMWalletPaymentsCommerceClassicOrderMerchant;
  v12 = [(BMEventBase *)&v14 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_displayName, name);
    objc_storeStrong(&v12->_domainName, domainName);
    objc_storeStrong(&v12->_localizedDisplayName, displayName);
  }

  return v12;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"displayName" number:1 type:14 subMessageClass:objc_opt_class()];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"domainName" number:2 type:13 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"localizedDisplayName" number:3 type:13 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"displayName_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_174_91503];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"domainName" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"localizedDisplayName" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __55__BMWalletPaymentsCommerceClassicOrderMerchant_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 displayName];
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

    v8 = [[BMWalletPaymentsCommerceClassicOrderMerchant alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end