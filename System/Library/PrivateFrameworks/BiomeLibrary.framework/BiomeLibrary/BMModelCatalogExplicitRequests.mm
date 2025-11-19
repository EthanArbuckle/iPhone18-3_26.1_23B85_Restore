@interface BMModelCatalogExplicitRequests
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMModelCatalogExplicitRequests)initWithClientIdentifier:(id)a3 legacyRequestName:(id)a4 subscription:(id)a5 subscribe:(id)a6;
- (BMModelCatalogExplicitRequests)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMModelCatalogExplicitRequests

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMModelCatalogExplicitRequests *)self clientIdentifier];
    v7 = [v5 clientIdentifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMModelCatalogExplicitRequests *)self clientIdentifier];
      v10 = [v5 clientIdentifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_20;
      }
    }

    v13 = [(BMModelCatalogExplicitRequests *)self legacyRequestName];
    v14 = [v5 legacyRequestName];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMModelCatalogExplicitRequests *)self legacyRequestName];
      v17 = [v5 legacyRequestName];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_20;
      }
    }

    v19 = [(BMModelCatalogExplicitRequests *)self subscription];
    v20 = [v5 subscription];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMModelCatalogExplicitRequests *)self subscription];
      v23 = [v5 subscription];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_20;
      }
    }

    if (!-[BMModelCatalogExplicitRequests hasSubscribe](self, "hasSubscribe") && ![v5 hasSubscribe])
    {
      LOBYTE(v12) = 1;
      goto LABEL_21;
    }

    if (-[BMModelCatalogExplicitRequests hasSubscribe](self, "hasSubscribe") && [v5 hasSubscribe])
    {
      v25 = [(BMModelCatalogExplicitRequests *)self subscribe];
      v12 = v25 ^ [v5 subscribe] ^ 1;
LABEL_21:

      goto LABEL_22;
    }

LABEL_20:
    LOBYTE(v12) = 0;
    goto LABEL_21;
  }

  LOBYTE(v12) = 0;
LABEL_22:

  return v12;
}

- (id)jsonDictionary
{
  v16[4] = *MEMORY[0x1E69E9840];
  v3 = [(BMModelCatalogExplicitRequests *)self clientIdentifier];
  v4 = [(BMModelCatalogExplicitRequests *)self legacyRequestName];
  v5 = [(BMModelCatalogExplicitRequests *)self subscription];
  v6 = [v5 jsonDictionary];

  if ([(BMModelCatalogExplicitRequests *)self hasSubscribe])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMModelCatalogExplicitRequests subscribe](self, "subscribe")}];
  }

  else
  {
    v7 = 0;
  }

  v15[0] = @"clientIdentifier";
  v8 = v3;
  if (!v3)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = v8;
  v15[1] = @"legacyRequestName";
  v9 = v4;
  if (!v4)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = v9;
  v15[2] = @"subscription";
  v10 = v6;
  if (!v6)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = v10;
  v15[3] = @"subscribe";
  v11 = v7;
  if (!v7)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v16[3] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];
  if (v7)
  {
    if (v6)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (v6)
    {
LABEL_14:
      if (v4)
      {
        goto LABEL_15;
      }

LABEL_21:

      if (v3)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }
  }

  if (!v4)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (v3)
  {
    goto LABEL_16;
  }

LABEL_22:

LABEL_16:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BMModelCatalogExplicitRequests)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v42[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"clientIdentifier"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"legacyRequestName"];
    v33 = v7;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v15 = 0;
          goto LABEL_35;
        }

        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v39 = *MEMORY[0x1E696A578];
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"legacyRequestName"];
        v40 = v10;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        v15 = 0;
        *a4 = [v21 initWithDomain:v22 code:2 userInfo:v12];
        a4 = 0;
        goto LABEL_33;
      }

      v32 = v9;
    }

    else
    {
      v32 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"subscription"];
    v11 = self;
    if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = 0;
LABEL_10:
      v13 = [v6 objectForKeyedSubscript:@"subscribe"];
      if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (a4)
          {
            v31 = objc_alloc(MEMORY[0x1E696ABC0]);
            v29 = *MEMORY[0x1E698F240];
            v35 = *MEMORY[0x1E696A578];
            v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"subscribe"];
            v36 = v27;
            v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
            *a4 = [v31 initWithDomain:v29 code:2 userInfo:v28];
          }

          v14 = 0;
          v15 = 0;
          a4 = v32;
          goto LABEL_14;
        }

        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      a4 = v32;
      v15 = [(BMModelCatalogExplicitRequests *)v11 initWithClientIdentifier:v8 legacyRequestName:v32 subscription:v12 subscribe:v14];
      v11 = v15;
LABEL_14:

      self = v11;
LABEL_33:

      v7 = v33;
LABEL_34:

      goto LABEL_35;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v10;
      v34 = 0;
      v12 = [[BMModelCatalogSubscription alloc] initWithJSONDictionary:v16 error:&v34];
      v17 = v34;
      if (!v17)
      {

        goto LABEL_10;
      }

      if (a4)
      {
        v17 = v17;
        *a4 = v17;
      }

      v15 = 0;
      v10 = v16;
    }

    else
    {
      if (!a4)
      {
        v15 = 0;
        a4 = v32;
        goto LABEL_34;
      }

      v30 = objc_alloc(MEMORY[0x1E696ABC0]);
      v23 = *MEMORY[0x1E698F240];
      v37 = *MEMORY[0x1E696A578];
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"subscription"];
      v38 = v12;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      *a4 = [v30 initWithDomain:v23 code:2 userInfo:v24];

      v15 = 0;
    }

    self = v11;
    a4 = v32;
    goto LABEL_33;
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
    v15 = 0;
    goto LABEL_36;
  }

  v18 = objc_alloc(MEMORY[0x1E696ABC0]);
  v19 = *MEMORY[0x1E698F240];
  v41 = *MEMORY[0x1E696A578];
  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientIdentifier"];
  v42[0] = v20;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
  v8 = 0;
  v15 = 0;
  *a4 = [v18 initWithDomain:v19 code:2 userInfo:v9];
  a4 = v20;
LABEL_35:

LABEL_36:
  v25 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMModelCatalogExplicitRequests *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_clientIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_legacyRequestName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_subscription)
  {
    PBDataWriterPlaceMark();
    [(BMModelCatalogSubscription *)self->_subscription writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_hasSubscribe)
  {
    subscribe = self->_subscribe;
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = BMModelCatalogExplicitRequests;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_45;
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
        LOBYTE(v32[0]) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:v32 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v32[0] & 0x7F) << v7;
        if ((v32[0] & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
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
      if ((v14 >> 3) > 2)
      {
        if (v15 == 3)
        {
          v32[0] = 0;
          v32[1] = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_44;
          }

          v26 = [[BMModelCatalogSubscription alloc] initByReadFrom:v4];
          if (!v26)
          {
            goto LABEL_44;
          }

          subscription = v5->_subscription;
          v5->_subscription = v26;

          PBReaderRecallMark();
        }

        else
        {
          if (v15 != 4)
          {
LABEL_33:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_44;
            }

            goto LABEL_42;
          }

          v18 = 0;
          v19 = 0;
          v20 = 0;
          v5->_hasSubscribe = 1;
          while (1)
          {
            LOBYTE(v32[0]) = 0;
            v21 = [v4 position] + 1;
            if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
            {
              v23 = [v4 data];
              [v23 getBytes:v32 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v20 |= (v32[0] & 0x7F) << v18;
            if ((v32[0] & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v13 = v19++ >= 9;
            if (v13)
            {
              LOBYTE(v24) = 0;
              goto LABEL_41;
            }
          }

          v24 = (v20 != 0) & ~[v4 hasError];
LABEL_41:
          v5->_subscribe = v24;
        }
      }

      else
      {
        if (v15 == 1)
        {
          v16 = PBReaderReadString();
          v17 = 24;
        }

        else
        {
          if (v15 != 2)
          {
            goto LABEL_33;
          }

          v16 = PBReaderReadString();
          v17 = 32;
        }

        v25 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;
      }

LABEL_42:
      v28 = [v4 position];
    }

    while (v28 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_44:
    v29 = 0;
  }

  else
  {
LABEL_45:
    v29 = v5;
  }

  return v29;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMModelCatalogExplicitRequests *)self clientIdentifier];
  v5 = [(BMModelCatalogExplicitRequests *)self legacyRequestName];
  v6 = [(BMModelCatalogExplicitRequests *)self subscription];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMModelCatalogExplicitRequests subscribe](self, "subscribe")}];
  v8 = [v3 initWithFormat:@"BMModelCatalogExplicitRequests with clientIdentifier: %@, legacyRequestName: %@, subscription: %@, subscribe: %@", v4, v5, v6, v7];

  return v8;
}

- (BMModelCatalogExplicitRequests)initWithClientIdentifier:(id)a3 legacyRequestName:(id)a4 subscription:(id)a5 subscribe:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v17.receiver = self;
  v17.super_class = BMModelCatalogExplicitRequests;
  v15 = [(BMEventBase *)&v17 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v15->_clientIdentifier, a3);
    objc_storeStrong(&v15->_legacyRequestName, a4);
    objc_storeStrong(&v15->_subscription, a5);
    if (v14)
    {
      v15->_hasSubscribe = 1;
      v15->_subscribe = [v14 BOOLValue];
    }

    else
    {
      v15->_hasSubscribe = 0;
      v15->_subscribe = 0;
    }
  }

  return v15;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientIdentifier" number:1 type:13 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"legacyRequestName" number:2 type:13 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subscription" number:3 type:14 subMessageClass:objc_opt_class()];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subscribe" number:4 type:12 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"legacyRequestName" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"subscription_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_100130];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"subscribe" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __41__BMModelCatalogExplicitRequests_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 subscription];
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

    v8 = [[BMModelCatalogExplicitRequests alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end