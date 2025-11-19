@interface BMModelCatalogSubscription
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMModelCatalogSubscription)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMModelCatalogSubscription)initWithUseCase:(id)a3 parameters:(id)a4 expirationDate:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSDate)expirationDate;
- (NSString)description;
- (id)_parametersJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMModelCatalogSubscription

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMModelCatalogSubscription *)self useCase];
    v7 = [v5 useCase];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMModelCatalogSubscription *)self useCase];
      v10 = [v5 useCase];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v13 = [(BMModelCatalogSubscription *)self parameters];
    v14 = [v5 parameters];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMModelCatalogSubscription *)self parameters];
      v17 = [v5 parameters];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    v19 = [(BMModelCatalogSubscription *)self expirationDate];
    v20 = [v5 expirationDate];
    if (v19 == v20)
    {
      v12 = 1;
    }

    else
    {
      v21 = [(BMModelCatalogSubscription *)self expirationDate];
      v22 = [v5 expirationDate];
      v12 = [v21 isEqual:v22];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (NSDate)expirationDate
{
  if (self->_hasRaw_expirationDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_expirationDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v17[3] = *MEMORY[0x1E69E9840];
  v3 = [(BMModelCatalogSubscription *)self useCase];
  v4 = [v3 jsonDictionary];

  v5 = [(BMModelCatalogSubscription *)self _parametersJSONArray];
  v6 = [(BMModelCatalogSubscription *)self expirationDate];
  if (v6)
  {
    v7 = MEMORY[0x1E696AD98];
    v8 = [(BMModelCatalogSubscription *)self expirationDate];
    [v8 timeIntervalSince1970];
    v9 = [v7 numberWithDouble:?];
  }

  else
  {
    v9 = 0;
  }

  v16[0] = @"useCase";
  v10 = v4;
  if (!v4)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v17[0] = v10;
  v16[1] = @"parameters";
  v11 = v5;
  if (!v5)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v17[1] = v11;
  v16[2] = @"expirationDate";
  v12 = v9;
  if (!v9)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v17[2] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  if (v9)
  {
    if (v5)
    {
      goto LABEL_12;
    }

LABEL_17:

    if (v4)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (!v5)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (v4)
  {
    goto LABEL_13;
  }

LABEL_18:

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_parametersJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMModelCatalogSubscription *)self parameters];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMModelCatalogSubscription)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v76[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"useCase"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v24 = v6;
        v25 = *MEMORY[0x1E698F240];
        v75 = *MEMORY[0x1E696A578];
        v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"useCase"];
        v76[0] = v26;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:&v75 count:1];
        v27 = v25;
        v6 = v24;
        v8 = v26;
        v28 = 0;
        *a4 = [v23 initWithDomain:v27 code:2 userInfo:v9];
        goto LABEL_53;
      }

      v28 = 0;
      goto LABEL_54;
    }

    v9 = v7;
    v65 = 0;
    v8 = [[BMModelCatalogSubscriptionUseCase alloc] initWithJSONDictionary:v9 error:&v65];
    v22 = v65;
    if (v22)
    {
      if (a4)
      {
        v22 = v22;
        *a4 = v22;
      }

      goto LABEL_40;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 objectForKeyedSubscript:@"parameters"];
  v10 = [MEMORY[0x1E695DFB0] null];
  v11 = [v9 isEqual:v10];

  if (!v11)
  {
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v55 = a4;
      v56 = v8;
      v57 = v7;
      v58 = self;
      goto LABEL_9;
    }

    if (a4)
    {
      v38 = objc_alloc(MEMORY[0x1E696ABC0]);
      v39 = *MEMORY[0x1E698F240];
      v73 = *MEMORY[0x1E696A578];
      v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"parameters"];
      v74 = v59;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
      v21 = v40 = a4;
      v28 = 0;
      *v40 = [v38 initWithDomain:v39 code:2 userInfo:v21];
      goto LABEL_52;
    }

LABEL_40:
    v28 = 0;
    goto LABEL_53;
  }

  v55 = a4;
  v56 = v8;
  v57 = v7;
  v58 = self;

  v9 = 0;
LABEL_9:
  v59 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v9 = v9;
  v12 = [v9 countByEnumeratingWithState:&v61 objects:v72 count:16];
  if (!v12)
  {
    goto LABEL_19;
  }

  v13 = v12;
  v14 = *v62;
  v54 = v6;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v62 != v14)
      {
        objc_enumerationMutation(v9);
      }

      v16 = *(*(&v61 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = v55;
        if (v55)
        {
          v30 = objc_alloc(MEMORY[0x1E696ABC0]);
          v31 = *MEMORY[0x1E698F240];
          v70 = *MEMORY[0x1E696A578];
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"parameters"];
          v71 = v17;
          v32 = MEMORY[0x1E695DF20];
          v33 = &v71;
          v34 = &v70;
LABEL_33:
          v35 = [v32 dictionaryWithObjects:v33 forKeys:v34 count:1];
          *v29 = [v30 initWithDomain:v31 code:2 userInfo:v35];

LABEL_37:
          v28 = 0;
          v21 = v9;
          v6 = v54;
          self = v58;
          v8 = v56;
          goto LABEL_51;
        }

LABEL_41:
        v28 = 0;
        v21 = v9;
        v6 = v54;
        v7 = v57;
        self = v58;
        v8 = v56;
        goto LABEL_52;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v29 = v55;
        if (v55)
        {
          v30 = objc_alloc(MEMORY[0x1E696ABC0]);
          v31 = *MEMORY[0x1E698F240];
          v68 = *MEMORY[0x1E696A578];
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"parameters"];
          v69 = v17;
          v32 = MEMORY[0x1E695DF20];
          v33 = &v69;
          v34 = &v68;
          goto LABEL_33;
        }

        goto LABEL_41;
      }

      v17 = v16;
      v18 = [BMModelCatalogSubscriptionParameter alloc];
      v60 = 0;
      v19 = [(BMModelCatalogSubscriptionParameter *)v18 initWithJSONDictionary:v17 error:&v60];
      v20 = v60;
      if (v20)
      {
        v36 = v20;
        if (v55)
        {
          v37 = v20;
          *v55 = v36;
        }

        goto LABEL_37;
      }

      [v59 addObject:v19];
    }

    v13 = [v9 countByEnumeratingWithState:&v61 objects:v72 count:16];
    v6 = v54;
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_19:

  v17 = [v6 objectForKeyedSubscript:@"expirationDate"];
  if (!v17)
  {
    v21 = 0;
    self = v58;
    v8 = v56;
    goto LABEL_50;
  }

  objc_opt_class();
  self = v58;
  v8 = v56;
  if (objc_opt_isKindOfClass())
  {
    v21 = 0;
    goto LABEL_50;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v41 = MEMORY[0x1E695DF00];
    v42 = v17;
    v43 = [v41 alloc];
    [v42 doubleValue];
    v45 = v44;

    v46 = [v43 initWithTimeIntervalSince1970:v45];
    goto LABEL_45;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v47 = objc_alloc_init(MEMORY[0x1E696AC80]);
    v21 = [v47 dateFromString:v17];

    goto LABEL_50;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v46 = v17;
LABEL_45:
    v21 = v46;
LABEL_50:
    self = [(BMModelCatalogSubscription *)self initWithUseCase:v8 parameters:v59 expirationDate:v21];
    v28 = self;
  }

  else
  {
    v28 = v55;
    if (v55)
    {
      v53 = objc_alloc(MEMORY[0x1E696ABC0]);
      v50 = *MEMORY[0x1E698F240];
      v66 = *MEMORY[0x1E696A578];
      v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"expirationDate"];
      v67 = v51;
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
      *v55 = [v53 initWithDomain:v50 code:2 userInfo:v52];

      v21 = 0;
      v28 = 0;
    }

    else
    {
      v21 = 0;
    }
  }

LABEL_51:

  v7 = v57;
LABEL_52:

LABEL_53:
LABEL_54:

  v48 = *MEMORY[0x1E69E9840];
  return v28;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMModelCatalogSubscription *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_useCase)
  {
    v17 = 0;
    PBDataWriterPlaceMark();
    [(BMModelCatalogSubscriptionUseCase *)self->_useCase writeTo:v4];
    PBDataWriterRecallMark();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_parameters;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v17 = 0;
        PBDataWriterPlaceMark();
        [v10 writeTo:{v4, v13}];
        PBDataWriterRecallMark();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v7);
  }

  if (self->_hasRaw_expirationDate)
  {
    raw_expirationDate = self->_raw_expirationDate;
    PBDataWriterWriteDoubleField();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = BMModelCatalogSubscription;
  v5 = [(BMEventBase *)&v30 init];
  if (!v5)
  {
    goto LABEL_36;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v31) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:&v31 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (LOBYTE(v31) & 0x7F) << v8;
        if ((LOBYTE(v31) & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        if (v9++ >= 9)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [v4 hasError] ? 0 : v10;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        break;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) == 3)
      {
        v5->_hasRaw_expirationDate = 1;
        v31 = 0.0;
        v21 = [v4 position] + 8;
        if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 8, v22 <= objc_msgSend(v4, "length")))
        {
          v23 = [v4 data];
          [v23 getBytes:&v31 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_raw_expirationDate = v31;
      }

      else if (v16 == 2)
      {
        v31 = 0.0;
        v32 = 0;
        if (!PBReaderPlaceMark() || (v19 = [[BMModelCatalogSubscriptionParameter alloc] initByReadFrom:v4]) == 0)
        {
LABEL_37:

          goto LABEL_38;
        }

        v20 = v19;
        [v6 addObject:v19];
        PBReaderRecallMark();
      }

      else if (v16 == 1)
      {
        v31 = 0.0;
        v32 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_37;
        }

        v17 = [[BMModelCatalogSubscriptionUseCase alloc] initByReadFrom:v4];
        if (!v17)
        {
          goto LABEL_37;
        }

        useCase = v5->_useCase;
        v5->_useCase = v17;

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_37;
      }

      v24 = [v4 position];
    }

    while (v24 < [v4 length]);
  }

  v25 = [v6 copy];
  parameters = v5->_parameters;
  v5->_parameters = v25;

  v27 = [v4 hasError];
  if (v27)
  {
LABEL_38:
    v28 = 0;
  }

  else
  {
LABEL_36:
    v28 = v5;
  }

  return v28;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMModelCatalogSubscription *)self useCase];
  v5 = [(BMModelCatalogSubscription *)self parameters];
  v6 = [(BMModelCatalogSubscription *)self expirationDate];
  v7 = [v3 initWithFormat:@"BMModelCatalogSubscription with useCase: %@, parameters: %@, expirationDate: %@", v4, v5, v6];

  return v7;
}

- (BMModelCatalogSubscription)initWithUseCase:(id)a3 parameters:(id)a4 expirationDate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = BMModelCatalogSubscription;
  v12 = [(BMEventBase *)&v15 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_useCase, a3);
    objc_storeStrong(&v12->_parameters, a4);
    if (v11)
    {
      v12->_hasRaw_expirationDate = 1;
      [v11 timeIntervalSince1970];
    }

    else
    {
      v12->_hasRaw_expirationDate = 0;
      v13 = -1.0;
    }

    v12->_raw_expirationDate = v13;
  }

  return v12;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"useCase" number:1 type:14 subMessageClass:objc_opt_class()];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"parameters" number:2 type:14 subMessageClass:{objc_opt_class(), v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"expirationDate" number:3 type:0 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"useCase_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_100342];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"parameters_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_164];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"expirationDate" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:2];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __37__BMModelCatalogSubscription_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _parametersJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __37__BMModelCatalogSubscription_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 useCase];
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

    v8 = [[BMModelCatalogSubscription alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[8] = 0;
    }
  }

  return v4;
}

@end