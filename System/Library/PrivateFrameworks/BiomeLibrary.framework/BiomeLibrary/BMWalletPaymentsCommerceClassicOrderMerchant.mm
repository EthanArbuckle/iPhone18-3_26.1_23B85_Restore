@interface BMWalletPaymentsCommerceClassicOrderMerchant
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMWalletPaymentsCommerceClassicOrderMerchant)initWithDisplayName:(id)a3 domainName:(id)a4 localizedDisplayName:(id)a5;
- (BMWalletPaymentsCommerceClassicOrderMerchant)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMWalletPaymentsCommerceClassicOrderMerchant

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMWalletPaymentsCommerceClassicOrderMerchant *)self displayName];
    v7 = [v5 displayName];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMWalletPaymentsCommerceClassicOrderMerchant *)self displayName];
      v10 = [v5 displayName];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v13 = [(BMWalletPaymentsCommerceClassicOrderMerchant *)self domainName];
    v14 = [v5 domainName];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMWalletPaymentsCommerceClassicOrderMerchant *)self domainName];
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

    v19 = [(BMWalletPaymentsCommerceClassicOrderMerchant *)self localizedDisplayName];
    v20 = [v5 localizedDisplayName];
    if (v19 == v20)
    {
      v12 = 1;
    }

    else
    {
      v21 = [(BMWalletPaymentsCommerceClassicOrderMerchant *)self localizedDisplayName];
      v22 = [v5 localizedDisplayName];
      v12 = [v21 isEqual:v22];
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
  v3 = [(BMWalletPaymentsCommerceClassicOrderMerchant *)self displayName];
  v4 = [v3 jsonDictionary];

  v5 = [(BMWalletPaymentsCommerceClassicOrderMerchant *)self domainName];
  v6 = [(BMWalletPaymentsCommerceClassicOrderMerchant *)self localizedDisplayName];
  v13[0] = @"displayName";
  v7 = v4;
  if (!v4)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = v7;
  v13[1] = @"domainName";
  v8 = v5;
  if (!v5)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = v8;
  v13[2] = @"localizedDisplayName";
  v9 = v6;
  if (!v6)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  if (v6)
  {
    if (v5)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (v4)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (v4)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BMWalletPaymentsCommerceClassicOrderMerchant)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v32[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"displayName"];
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
      if (a4)
      {
        v16 = v16;
        *a4 = v16;
      }

      v13 = 0;
      goto LABEL_13;
    }

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
          v13 = 0;
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
        v13 = 0;
        *a4 = v20;
        goto LABEL_11;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"localizedDisplayName"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v25 = objc_alloc(MEMORY[0x1E696ABC0]);
          v23 = *MEMORY[0x1E698F240];
          v27 = *MEMORY[0x1E696A578];
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"localizedDisplayName"];
          v28 = v21;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
          *a4 = [v25 initWithDomain:v23 code:2 userInfo:v22];
        }

        v12 = 0;
        v13 = 0;
        goto LABEL_11;
      }

      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    self = [(BMWalletPaymentsCommerceClassicOrderMerchant *)self initWithDisplayName:v8 domainName:v10 localizedDisplayName:v12];
    v13 = self;
LABEL_11:

LABEL_12:
    goto LABEL_13;
  }

  if (!a4)
  {
    v13 = 0;
    goto LABEL_14;
  }

  v17 = objc_alloc(MEMORY[0x1E696ABC0]);
  v18 = *MEMORY[0x1E698F240];
  v31 = *MEMORY[0x1E696A578];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"displayName"];
  v32[0] = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  v13 = 0;
  *a4 = [v17 initWithDomain:v18 code:2 userInfo:v10];
LABEL_13:

LABEL_14:
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceClassicOrderMerchant *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_displayName)
  {
    PBDataWriterPlaceMark();
    [(BMWalletPaymentsCommerceClassicOrderLocalizedString *)self->_displayName writeTo:v4];
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

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = BMWalletPaymentsCommerceClassicOrderMerchant;
  v5 = [(BMEventBase *)&v24 init];
  if (!v5)
  {
    goto LABEL_31;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_29;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v25[0]) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:v25 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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

        v16 = [[BMWalletPaymentsCommerceClassicOrderLocalizedString alloc] initByReadFrom:v4];
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
      v21 = [v4 position];
      if (v21 >= [v4 length])
      {
        goto LABEL_29;
      }
    }

    v18 = PBReaderReadString();
    v19 = 24;
    goto LABEL_26;
  }

LABEL_29:
  if ([v4 hasError])
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
  v4 = [(BMWalletPaymentsCommerceClassicOrderMerchant *)self displayName];
  v5 = [(BMWalletPaymentsCommerceClassicOrderMerchant *)self domainName];
  v6 = [(BMWalletPaymentsCommerceClassicOrderMerchant *)self localizedDisplayName];
  v7 = [v3 initWithFormat:@"BMWalletPaymentsCommerceClassicOrderMerchant with displayName: %@, domainName: %@, localizedDisplayName: %@", v4, v5, v6];

  return v7;
}

- (BMWalletPaymentsCommerceClassicOrderMerchant)initWithDisplayName:(id)a3 domainName:(id)a4 localizedDisplayName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v14.receiver = self;
  v14.super_class = BMWalletPaymentsCommerceClassicOrderMerchant;
  v12 = [(BMEventBase *)&v14 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_displayName, a3);
    objc_storeStrong(&v12->_domainName, a4);
    objc_storeStrong(&v12->_localizedDisplayName, a5);
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