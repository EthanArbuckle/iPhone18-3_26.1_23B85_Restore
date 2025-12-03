@interface BMModelCatalogSubscription
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMModelCatalogSubscription)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMModelCatalogSubscription)initWithUseCase:(id)case parameters:(id)parameters expirationDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (NSDate)expirationDate;
- (NSString)description;
- (id)_parametersJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMModelCatalogSubscription

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    useCase = [(BMModelCatalogSubscription *)self useCase];
    useCase2 = [v5 useCase];
    v8 = useCase2;
    if (useCase == useCase2)
    {
    }

    else
    {
      useCase3 = [(BMModelCatalogSubscription *)self useCase];
      useCase4 = [v5 useCase];
      v11 = [useCase3 isEqual:useCase4];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    parameters = [(BMModelCatalogSubscription *)self parameters];
    parameters2 = [v5 parameters];
    v15 = parameters2;
    if (parameters == parameters2)
    {
    }

    else
    {
      parameters3 = [(BMModelCatalogSubscription *)self parameters];
      parameters4 = [v5 parameters];
      v18 = [parameters3 isEqual:parameters4];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    expirationDate = [(BMModelCatalogSubscription *)self expirationDate];
    expirationDate2 = [v5 expirationDate];
    if (expirationDate == expirationDate2)
    {
      v12 = 1;
    }

    else
    {
      expirationDate3 = [(BMModelCatalogSubscription *)self expirationDate];
      expirationDate4 = [v5 expirationDate];
      v12 = [expirationDate3 isEqual:expirationDate4];
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
  useCase = [(BMModelCatalogSubscription *)self useCase];
  jsonDictionary = [useCase jsonDictionary];

  _parametersJSONArray = [(BMModelCatalogSubscription *)self _parametersJSONArray];
  expirationDate = [(BMModelCatalogSubscription *)self expirationDate];
  if (expirationDate)
  {
    v7 = MEMORY[0x1E696AD98];
    expirationDate2 = [(BMModelCatalogSubscription *)self expirationDate];
    [expirationDate2 timeIntervalSince1970];
    v9 = [v7 numberWithDouble:?];
  }

  else
  {
    v9 = 0;
  }

  v16[0] = @"useCase";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v17[0] = null;
  v16[1] = @"parameters";
  null2 = _parametersJSONArray;
  if (!_parametersJSONArray)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v17[1] = null2;
  v16[2] = @"expirationDate";
  null3 = v9;
  if (!v9)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v17[2] = null3;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  if (v9)
  {
    if (_parametersJSONArray)
    {
      goto LABEL_12;
    }

LABEL_17:

    if (jsonDictionary)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (!_parametersJSONArray)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (jsonDictionary)
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
  parameters = [(BMModelCatalogSubscription *)self parameters];
  v5 = [parameters countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(parameters);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [parameters countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMModelCatalogSubscription)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v76[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"useCase"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v24 = dictionaryCopy;
        v25 = *MEMORY[0x1E698F240];
        v75 = *MEMORY[0x1E696A578];
        v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"useCase"];
        v76[0] = v26;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:&v75 count:1];
        v27 = v25;
        dictionaryCopy = v24;
        v8 = v26;
        selfCopy3 = 0;
        *error = [v23 initWithDomain:v27 code:2 userInfo:v9];
        goto LABEL_53;
      }

      selfCopy3 = 0;
      goto LABEL_54;
    }

    v9 = v7;
    v65 = 0;
    v8 = [[BMModelCatalogSubscriptionUseCase alloc] initWithJSONDictionary:v9 error:&v65];
    v22 = v65;
    if (v22)
    {
      if (error)
      {
        v22 = v22;
        *error = v22;
      }

      goto LABEL_40;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"parameters"];
  null = [MEMORY[0x1E695DFB0] null];
  v11 = [v9 isEqual:null];

  if (!v11)
  {
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      errorCopy2 = error;
      v56 = v8;
      v57 = v7;
      selfCopy2 = self;
      goto LABEL_9;
    }

    if (error)
    {
      v38 = objc_alloc(MEMORY[0x1E696ABC0]);
      v39 = *MEMORY[0x1E698F240];
      v73 = *MEMORY[0x1E696A578];
      v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"parameters"];
      v74 = v59;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
      v21 = v40 = error;
      selfCopy3 = 0;
      *v40 = [v38 initWithDomain:v39 code:2 userInfo:v21];
      goto LABEL_52;
    }

LABEL_40:
    selfCopy3 = 0;
    goto LABEL_53;
  }

  errorCopy2 = error;
  v56 = v8;
  v57 = v7;
  selfCopy2 = self;

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
  v54 = dictionaryCopy;
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
        v29 = errorCopy2;
        if (errorCopy2)
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
          selfCopy3 = 0;
          v21 = v9;
          dictionaryCopy = v54;
          self = selfCopy2;
          v8 = v56;
          goto LABEL_51;
        }

LABEL_41:
        selfCopy3 = 0;
        v21 = v9;
        dictionaryCopy = v54;
        v7 = v57;
        self = selfCopy2;
        v8 = v56;
        goto LABEL_52;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v29 = errorCopy2;
        if (errorCopy2)
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
        if (errorCopy2)
        {
          v37 = v20;
          *errorCopy2 = v36;
        }

        goto LABEL_37;
      }

      [v59 addObject:v19];
    }

    v13 = [v9 countByEnumeratingWithState:&v61 objects:v72 count:16];
    dictionaryCopy = v54;
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_19:

  v17 = [dictionaryCopy objectForKeyedSubscript:@"expirationDate"];
  if (!v17)
  {
    v21 = 0;
    self = selfCopy2;
    v8 = v56;
    goto LABEL_50;
  }

  objc_opt_class();
  self = selfCopy2;
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
    selfCopy3 = self;
  }

  else
  {
    selfCopy3 = errorCopy2;
    if (errorCopy2)
    {
      v53 = objc_alloc(MEMORY[0x1E696ABC0]);
      v50 = *MEMORY[0x1E698F240];
      v66 = *MEMORY[0x1E696A578];
      v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"expirationDate"];
      v67 = v51;
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
      *errorCopy2 = [v53 initWithDomain:v50 code:2 userInfo:v52];

      v21 = 0;
      selfCopy3 = 0;
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
  return selfCopy3;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMModelCatalogSubscription *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_useCase)
  {
    v17 = 0;
    PBDataWriterPlaceMark();
    [(BMModelCatalogSubscriptionUseCase *)self->_useCase writeTo:toCopy];
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
        [v10 writeTo:{toCopy, v13}];
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

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v30.receiver = self;
  v30.super_class = BMModelCatalogSubscription;
  v5 = [(BMEventBase *)&v30 init];
  if (!v5)
  {
    goto LABEL_36;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v31) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v31 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        break;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) == 3)
      {
        v5->_hasRaw_expirationDate = 1;
        v31 = 0.0;
        v21 = [fromCopy position] + 8;
        if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 8, v22 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:&v31 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_raw_expirationDate = v31;
      }

      else if (v16 == 2)
      {
        v31 = 0.0;
        v32 = 0;
        if (!PBReaderPlaceMark() || (v19 = [[BMModelCatalogSubscriptionParameter alloc] initByReadFrom:fromCopy]) == 0)
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

        v17 = [[BMModelCatalogSubscriptionUseCase alloc] initByReadFrom:fromCopy];
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

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v25 = [v6 copy];
  parameters = v5->_parameters;
  v5->_parameters = v25;

  hasError = [fromCopy hasError];
  if (hasError)
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
  useCase = [(BMModelCatalogSubscription *)self useCase];
  parameters = [(BMModelCatalogSubscription *)self parameters];
  expirationDate = [(BMModelCatalogSubscription *)self expirationDate];
  v7 = [v3 initWithFormat:@"BMModelCatalogSubscription with useCase: %@, parameters: %@, expirationDate: %@", useCase, parameters, expirationDate];

  return v7;
}

- (BMModelCatalogSubscription)initWithUseCase:(id)case parameters:(id)parameters expirationDate:(id)date
{
  caseCopy = case;
  parametersCopy = parameters;
  dateCopy = date;
  v15.receiver = self;
  v15.super_class = BMModelCatalogSubscription;
  v12 = [(BMEventBase *)&v15 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_useCase, case);
    objc_storeStrong(&v12->_parameters, parameters);
    if (dateCopy)
    {
      v12->_hasRaw_expirationDate = 1;
      [dateCopy timeIntervalSince1970];
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