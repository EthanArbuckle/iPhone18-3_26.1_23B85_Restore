@interface BMWalletPaymentsCommerceTrackedOrderMerchant
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMWalletPaymentsCommerceTrackedOrderMerchant)initWithDisplayName:(id)name domainName:(id)domainName displayNameUpdateDate:(id)date;
- (BMWalletPaymentsCommerceTrackedOrderMerchant)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)displayNameUpdateDate;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMWalletPaymentsCommerceTrackedOrderMerchant

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    displayName = [(BMWalletPaymentsCommerceTrackedOrderMerchant *)self displayName];
    displayName2 = [v5 displayName];
    v8 = displayName2;
    if (displayName == displayName2)
    {
    }

    else
    {
      displayName3 = [(BMWalletPaymentsCommerceTrackedOrderMerchant *)self displayName];
      displayName4 = [v5 displayName];
      v11 = [displayName3 isEqual:displayName4];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    domainName = [(BMWalletPaymentsCommerceTrackedOrderMerchant *)self domainName];
    domainName2 = [v5 domainName];
    v15 = domainName2;
    if (domainName == domainName2)
    {
    }

    else
    {
      domainName3 = [(BMWalletPaymentsCommerceTrackedOrderMerchant *)self domainName];
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

    displayNameUpdateDate = [(BMWalletPaymentsCommerceTrackedOrderMerchant *)self displayNameUpdateDate];
    displayNameUpdateDate2 = [v5 displayNameUpdateDate];
    if (displayNameUpdateDate == displayNameUpdateDate2)
    {
      v12 = 1;
    }

    else
    {
      displayNameUpdateDate3 = [(BMWalletPaymentsCommerceTrackedOrderMerchant *)self displayNameUpdateDate];
      displayNameUpdateDate4 = [v5 displayNameUpdateDate];
      v12 = [displayNameUpdateDate3 isEqual:displayNameUpdateDate4];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (NSDate)displayNameUpdateDate
{
  if (self->_hasRaw_displayNameUpdateDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_displayNameUpdateDate];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v16[3] = *MEMORY[0x1E69E9840];
  displayName = [(BMWalletPaymentsCommerceTrackedOrderMerchant *)self displayName];
  domainName = [(BMWalletPaymentsCommerceTrackedOrderMerchant *)self domainName];
  displayNameUpdateDate = [(BMWalletPaymentsCommerceTrackedOrderMerchant *)self displayNameUpdateDate];
  if (displayNameUpdateDate)
  {
    v6 = MEMORY[0x1E696AD98];
    displayNameUpdateDate2 = [(BMWalletPaymentsCommerceTrackedOrderMerchant *)self displayNameUpdateDate];
    [displayNameUpdateDate2 timeIntervalSinceReferenceDate];
    v8 = [v6 numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  v15[0] = @"displayName";
  null = displayName;
  if (!displayName)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = null;
  v15[1] = @"domainName";
  null2 = domainName;
  if (!domainName)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = null2;
  v15[2] = @"displayNameUpdateDate";
  null3 = v8;
  if (!v8)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = null3;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  if (v8)
  {
    if (domainName)
    {
      goto LABEL_12;
    }

LABEL_17:

    if (displayName)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (!domainName)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (displayName)
  {
    goto LABEL_13;
  }

LABEL_18:

LABEL_13:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BMWalletPaymentsCommerceTrackedOrderMerchant)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v37[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"displayName"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
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
          goto LABEL_25;
        }

        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v34 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"domainName"];
        v35 = v12;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        v23 = [v30 initWithDomain:v22 code:2 userInfo:v11];
        v10 = 0;
        selfCopy = 0;
        *error = v23;
        goto LABEL_24;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"displayNameUpdateDate"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = MEMORY[0x1E695DF00];
        v14 = v11;
        v15 = [v13 alloc];
        [v14 doubleValue];
        v17 = v16;

        v18 = [v15 initWithTimeIntervalSinceReferenceDate:v17];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v12 = [v24 dateFromString:v11];

          goto LABEL_23;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v31 = objc_alloc(MEMORY[0x1E696ABC0]);
            v29 = *MEMORY[0x1E698F240];
            v32 = *MEMORY[0x1E696A578];
            v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"displayNameUpdateDate"];
            v33 = v27;
            v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
            *error = [v31 initWithDomain:v29 code:2 userInfo:v28];
          }

          v12 = 0;
          selfCopy = 0;
          goto LABEL_24;
        }

        v18 = v11;
      }

      v12 = v18;
    }

    else
    {
      v12 = 0;
    }

LABEL_23:
    self = [(BMWalletPaymentsCommerceTrackedOrderMerchant *)self initWithDisplayName:v8 domainName:v10 displayNameUpdateDate:v12];
    selfCopy = self;
LABEL_24:

    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!error)
  {
    v8 = 0;
    selfCopy = 0;
    goto LABEL_26;
  }

  v19 = objc_alloc(MEMORY[0x1E696ABC0]);
  v20 = *MEMORY[0x1E698F240];
  v36 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"displayName"];
  v37[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
  v8 = 0;
  selfCopy = 0;
  *error = [v19 initWithDomain:v20 code:2 userInfo:v9];
LABEL_25:

LABEL_26:
  v25 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceTrackedOrderMerchant *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_domainName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_hasRaw_displayNameUpdateDate)
  {
    raw_displayNameUpdateDate = self->_raw_displayNameUpdateDate;
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v25.receiver = self;
  v25.super_class = BMWalletPaymentsCommerceTrackedOrderMerchant;
  v5 = [(BMEventBase *)&v25 init];
  if (!v5)
  {
    goto LABEL_34;
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
        LOBYTE(v26) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v26 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v26) & 0x7F) << v7;
        if ((LOBYTE(v26) & 0x80) == 0)
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
      if ((v14 >> 3) == 3)
      {
        v5->_hasRaw_displayNameUpdateDate = 1;
        v26 = 0.0;
        v19 = [fromCopy position] + 8;
        if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 8, v20 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:&v26 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_raw_displayNameUpdateDate = v26;
      }

      else
      {
        if (v15 == 2)
        {
          v16 = PBReaderReadString();
          v17 = 48;
        }

        else
        {
          if (v15 != 1)
          {
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_33;
            }

            goto LABEL_31;
          }

          v16 = PBReaderReadString();
          v17 = 40;
        }

        v18 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;
      }

LABEL_31:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_33:
    v23 = 0;
  }

  else
  {
LABEL_34:
    v23 = v5;
  }

  return v23;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  displayName = [(BMWalletPaymentsCommerceTrackedOrderMerchant *)self displayName];
  domainName = [(BMWalletPaymentsCommerceTrackedOrderMerchant *)self domainName];
  displayNameUpdateDate = [(BMWalletPaymentsCommerceTrackedOrderMerchant *)self displayNameUpdateDate];
  v7 = [v3 initWithFormat:@"BMWalletPaymentsCommerceTrackedOrderMerchant with displayName: %@, domainName: %@, displayNameUpdateDate: %@", displayName, domainName, displayNameUpdateDate];

  return v7;
}

- (BMWalletPaymentsCommerceTrackedOrderMerchant)initWithDisplayName:(id)name domainName:(id)domainName displayNameUpdateDate:(id)date
{
  nameCopy = name;
  domainNameCopy = domainName;
  dateCopy = date;
  v15.receiver = self;
  v15.super_class = BMWalletPaymentsCommerceTrackedOrderMerchant;
  v12 = [(BMEventBase *)&v15 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_displayName, name);
    objc_storeStrong(&v12->_domainName, domainName);
    if (dateCopy)
    {
      v12->_hasRaw_displayNameUpdateDate = 1;
      [dateCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v12->_hasRaw_displayNameUpdateDate = 0;
      v13 = -1.0;
    }

    v12->_raw_displayNameUpdateDate = v13;
  }

  return v12;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"displayName" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"domainName" number:2 type:13 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"displayNameUpdateDate" number:3 type:0 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"displayName" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"domainName" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"displayNameUpdateDate" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:1];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

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

    v8 = [[BMWalletPaymentsCommerceTrackedOrderMerchant alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[8] = 0;
    }
  }

  return v4;
}

@end