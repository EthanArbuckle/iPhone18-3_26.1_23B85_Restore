@interface BMWalletPaymentsCommerceTrackedOrderMerchant
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMWalletPaymentsCommerceTrackedOrderMerchant)initWithDisplayName:(id)a3 domainName:(id)a4 displayNameUpdateDate:(id)a5;
- (BMWalletPaymentsCommerceTrackedOrderMerchant)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)displayNameUpdateDate;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMWalletPaymentsCommerceTrackedOrderMerchant

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMWalletPaymentsCommerceTrackedOrderMerchant *)self displayName];
    v7 = [v5 displayName];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMWalletPaymentsCommerceTrackedOrderMerchant *)self displayName];
      v10 = [v5 displayName];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v13 = [(BMWalletPaymentsCommerceTrackedOrderMerchant *)self domainName];
    v14 = [v5 domainName];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMWalletPaymentsCommerceTrackedOrderMerchant *)self domainName];
      v17 = [v5 domainName];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    v19 = [(BMWalletPaymentsCommerceTrackedOrderMerchant *)self displayNameUpdateDate];
    v20 = [v5 displayNameUpdateDate];
    if (v19 == v20)
    {
      v12 = 1;
    }

    else
    {
      v21 = [(BMWalletPaymentsCommerceTrackedOrderMerchant *)self displayNameUpdateDate];
      v22 = [v5 displayNameUpdateDate];
      v12 = [v21 isEqual:v22];
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
  v3 = [(BMWalletPaymentsCommerceTrackedOrderMerchant *)self displayName];
  v4 = [(BMWalletPaymentsCommerceTrackedOrderMerchant *)self domainName];
  v5 = [(BMWalletPaymentsCommerceTrackedOrderMerchant *)self displayNameUpdateDate];
  if (v5)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = [(BMWalletPaymentsCommerceTrackedOrderMerchant *)self displayNameUpdateDate];
    [v7 timeIntervalSinceReferenceDate];
    v8 = [v6 numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  v15[0] = @"displayName";
  v9 = v3;
  if (!v3)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = v9;
  v15[1] = @"domainName";
  v10 = v4;
  if (!v4)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = v10;
  v15[2] = @"displayNameUpdateDate";
  v11 = v8;
  if (!v8)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  if (v8)
  {
    if (v4)
    {
      goto LABEL_12;
    }

LABEL_17:

    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (!v4)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (v3)
  {
    goto LABEL_13;
  }

LABEL_18:

LABEL_13:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BMWalletPaymentsCommerceTrackedOrderMerchant)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v37[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"displayName"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"domainName"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v10 = 0;
          v21 = 0;
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
        v21 = 0;
        *a4 = v23;
        goto LABEL_24;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"displayNameUpdateDate"];
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
          if (a4)
          {
            v31 = objc_alloc(MEMORY[0x1E696ABC0]);
            v29 = *MEMORY[0x1E698F240];
            v32 = *MEMORY[0x1E696A578];
            v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"displayNameUpdateDate"];
            v33 = v27;
            v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
            *a4 = [v31 initWithDomain:v29 code:2 userInfo:v28];
          }

          v12 = 0;
          v21 = 0;
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
    v21 = self;
LABEL_24:

    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!a4)
  {
    v8 = 0;
    v21 = 0;
    goto LABEL_26;
  }

  v19 = objc_alloc(MEMORY[0x1E696ABC0]);
  v20 = *MEMORY[0x1E698F240];
  v36 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"displayName"];
  v37[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
  v8 = 0;
  v21 = 0;
  *a4 = [v19 initWithDomain:v20 code:2 userInfo:v9];
LABEL_25:

LABEL_26:
  v25 = *MEMORY[0x1E69E9840];
  return v21;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceTrackedOrderMerchant *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_domainName)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_hasRaw_displayNameUpdateDate)
  {
    raw_displayNameUpdateDate = self->_raw_displayNameUpdateDate;
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = BMWalletPaymentsCommerceTrackedOrderMerchant;
  v5 = [(BMEventBase *)&v25 init];
  if (!v5)
  {
    goto LABEL_34;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v26) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v26 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) == 3)
      {
        v5->_hasRaw_displayNameUpdateDate = 1;
        v26 = 0.0;
        v19 = [v4 position] + 8;
        if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 8, v20 <= objc_msgSend(v4, "length")))
        {
          v21 = [v4 data];
          [v21 getBytes:&v26 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
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
      v22 = [v4 position];
    }

    while (v22 < [v4 length]);
  }

  if ([v4 hasError])
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
  v4 = [(BMWalletPaymentsCommerceTrackedOrderMerchant *)self displayName];
  v5 = [(BMWalletPaymentsCommerceTrackedOrderMerchant *)self domainName];
  v6 = [(BMWalletPaymentsCommerceTrackedOrderMerchant *)self displayNameUpdateDate];
  v7 = [v3 initWithFormat:@"BMWalletPaymentsCommerceTrackedOrderMerchant with displayName: %@, domainName: %@, displayNameUpdateDate: %@", v4, v5, v6];

  return v7;
}

- (BMWalletPaymentsCommerceTrackedOrderMerchant)initWithDisplayName:(id)a3 domainName:(id)a4 displayNameUpdateDate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = BMWalletPaymentsCommerceTrackedOrderMerchant;
  v12 = [(BMEventBase *)&v15 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_displayName, a3);
    objc_storeStrong(&v12->_domainName, a4);
    if (v11)
    {
      v12->_hasRaw_displayNameUpdateDate = 1;
      [v11 timeIntervalSinceReferenceDate];
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

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

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