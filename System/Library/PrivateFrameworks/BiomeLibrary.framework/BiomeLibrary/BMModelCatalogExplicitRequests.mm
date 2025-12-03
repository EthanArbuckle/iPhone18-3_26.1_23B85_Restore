@interface BMModelCatalogExplicitRequests
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMModelCatalogExplicitRequests)initWithClientIdentifier:(id)identifier legacyRequestName:(id)name subscription:(id)subscription subscribe:(id)subscribe;
- (BMModelCatalogExplicitRequests)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMModelCatalogExplicitRequests

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    clientIdentifier = [(BMModelCatalogExplicitRequests *)self clientIdentifier];
    clientIdentifier2 = [v5 clientIdentifier];
    v8 = clientIdentifier2;
    if (clientIdentifier == clientIdentifier2)
    {
    }

    else
    {
      clientIdentifier3 = [(BMModelCatalogExplicitRequests *)self clientIdentifier];
      clientIdentifier4 = [v5 clientIdentifier];
      v11 = [clientIdentifier3 isEqual:clientIdentifier4];

      if (!v11)
      {
        goto LABEL_20;
      }
    }

    legacyRequestName = [(BMModelCatalogExplicitRequests *)self legacyRequestName];
    legacyRequestName2 = [v5 legacyRequestName];
    v15 = legacyRequestName2;
    if (legacyRequestName == legacyRequestName2)
    {
    }

    else
    {
      legacyRequestName3 = [(BMModelCatalogExplicitRequests *)self legacyRequestName];
      legacyRequestName4 = [v5 legacyRequestName];
      v18 = [legacyRequestName3 isEqual:legacyRequestName4];

      if (!v18)
      {
        goto LABEL_20;
      }
    }

    subscription = [(BMModelCatalogExplicitRequests *)self subscription];
    subscription2 = [v5 subscription];
    v21 = subscription2;
    if (subscription == subscription2)
    {
    }

    else
    {
      subscription3 = [(BMModelCatalogExplicitRequests *)self subscription];
      subscription4 = [v5 subscription];
      v24 = [subscription3 isEqual:subscription4];

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
      subscribe = [(BMModelCatalogExplicitRequests *)self subscribe];
      v12 = subscribe ^ [v5 subscribe] ^ 1;
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
  clientIdentifier = [(BMModelCatalogExplicitRequests *)self clientIdentifier];
  legacyRequestName = [(BMModelCatalogExplicitRequests *)self legacyRequestName];
  subscription = [(BMModelCatalogExplicitRequests *)self subscription];
  jsonDictionary = [subscription jsonDictionary];

  if ([(BMModelCatalogExplicitRequests *)self hasSubscribe])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMModelCatalogExplicitRequests subscribe](self, "subscribe")}];
  }

  else
  {
    v7 = 0;
  }

  v15[0] = @"clientIdentifier";
  null = clientIdentifier;
  if (!clientIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = null;
  v15[1] = @"legacyRequestName";
  null2 = legacyRequestName;
  if (!legacyRequestName)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = null2;
  v15[2] = @"subscription";
  null3 = jsonDictionary;
  if (!jsonDictionary)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = null3;
  v15[3] = @"subscribe";
  null4 = v7;
  if (!v7)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v16[3] = null4;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];
  if (v7)
  {
    if (jsonDictionary)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (jsonDictionary)
    {
LABEL_14:
      if (legacyRequestName)
      {
        goto LABEL_15;
      }

LABEL_21:

      if (clientIdentifier)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }
  }

  if (!legacyRequestName)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (clientIdentifier)
  {
    goto LABEL_16;
  }

LABEL_22:

LABEL_16:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BMModelCatalogExplicitRequests)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v42[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"clientIdentifier"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"legacyRequestName"];
    v33 = v7;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
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
        *error = [v21 initWithDomain:v22 code:2 userInfo:v12];
        error = 0;
        goto LABEL_33;
      }

      v32 = v9;
    }

    else
    {
      v32 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"subscription"];
    selfCopy = self;
    if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = 0;
LABEL_10:
      v13 = [dictionaryCopy objectForKeyedSubscript:@"subscribe"];
      if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v31 = objc_alloc(MEMORY[0x1E696ABC0]);
            v29 = *MEMORY[0x1E698F240];
            v35 = *MEMORY[0x1E696A578];
            v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"subscribe"];
            v36 = v27;
            v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
            *error = [v31 initWithDomain:v29 code:2 userInfo:v28];
          }

          v14 = 0;
          v15 = 0;
          error = v32;
          goto LABEL_14;
        }

        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      error = v32;
      v15 = [(BMModelCatalogExplicitRequests *)selfCopy initWithClientIdentifier:v8 legacyRequestName:v32 subscription:v12 subscribe:v14];
      selfCopy = v15;
LABEL_14:

      self = selfCopy;
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

      if (error)
      {
        v17 = v17;
        *error = v17;
      }

      v15 = 0;
      v10 = v16;
    }

    else
    {
      if (!error)
      {
        v15 = 0;
        error = v32;
        goto LABEL_34;
      }

      v30 = objc_alloc(MEMORY[0x1E696ABC0]);
      v23 = *MEMORY[0x1E698F240];
      v37 = *MEMORY[0x1E696A578];
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"subscription"];
      v38 = v12;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      *error = [v30 initWithDomain:v23 code:2 userInfo:v24];

      v15 = 0;
    }

    self = selfCopy;
    error = v32;
    goto LABEL_33;
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
  *error = [v18 initWithDomain:v19 code:2 userInfo:v9];
  error = v20;
LABEL_35:

LABEL_36:
  v25 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMModelCatalogExplicitRequests *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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
    [(BMModelCatalogSubscription *)self->_subscription writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasSubscribe)
  {
    subscribe = self->_subscribe;
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v31.receiver = self;
  v31.super_class = BMModelCatalogExplicitRequests;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_45;
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
        v13 = v8++ >= 9;
        if (v13)
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
          v32[0] = 0;
          v32[1] = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_44;
          }

          v26 = [[BMModelCatalogSubscription alloc] initByReadFrom:fromCopy];
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
            v21 = [fromCopy position] + 1;
            if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:v32 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          v24 = (v20 != 0) & ~[fromCopy hasError];
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
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  clientIdentifier = [(BMModelCatalogExplicitRequests *)self clientIdentifier];
  legacyRequestName = [(BMModelCatalogExplicitRequests *)self legacyRequestName];
  subscription = [(BMModelCatalogExplicitRequests *)self subscription];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMModelCatalogExplicitRequests subscribe](self, "subscribe")}];
  v8 = [v3 initWithFormat:@"BMModelCatalogExplicitRequests with clientIdentifier: %@, legacyRequestName: %@, subscription: %@, subscribe: %@", clientIdentifier, legacyRequestName, subscription, v7];

  return v8;
}

- (BMModelCatalogExplicitRequests)initWithClientIdentifier:(id)identifier legacyRequestName:(id)name subscription:(id)subscription subscribe:(id)subscribe
{
  identifierCopy = identifier;
  nameCopy = name;
  subscriptionCopy = subscription;
  subscribeCopy = subscribe;
  v17.receiver = self;
  v17.super_class = BMModelCatalogExplicitRequests;
  v15 = [(BMEventBase *)&v17 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v15->_clientIdentifier, identifier);
    objc_storeStrong(&v15->_legacyRequestName, name);
    objc_storeStrong(&v15->_subscription, subscription);
    if (subscribeCopy)
    {
      v15->_hasSubscribe = 1;
      v15->_subscribe = [subscribeCopy BOOLValue];
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