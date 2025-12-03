@interface BMPersonalizedSensingMomentsContextPersonalizedContext
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMPersonalizedSensingMomentsContextPersonalizedContext)initWithFetchDetails:(id)details fetchOptions:(id)options contexts:(id)contexts;
- (BMPersonalizedSensingMomentsContextPersonalizedContext)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_contextsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMPersonalizedSensingMomentsContextPersonalizedContext

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    fetchDetails = [(BMPersonalizedSensingMomentsContextPersonalizedContext *)self fetchDetails];
    fetchDetails2 = [v5 fetchDetails];
    v8 = fetchDetails2;
    if (fetchDetails == fetchDetails2)
    {
    }

    else
    {
      fetchDetails3 = [(BMPersonalizedSensingMomentsContextPersonalizedContext *)self fetchDetails];
      fetchDetails4 = [v5 fetchDetails];
      v11 = [fetchDetails3 isEqual:fetchDetails4];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    fetchOptions = [(BMPersonalizedSensingMomentsContextPersonalizedContext *)self fetchOptions];
    fetchOptions2 = [v5 fetchOptions];
    v15 = fetchOptions2;
    if (fetchOptions == fetchOptions2)
    {
    }

    else
    {
      fetchOptions3 = [(BMPersonalizedSensingMomentsContextPersonalizedContext *)self fetchOptions];
      fetchOptions4 = [v5 fetchOptions];
      v18 = [fetchOptions3 isEqual:fetchOptions4];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    contexts = [(BMPersonalizedSensingMomentsContextPersonalizedContext *)self contexts];
    contexts2 = [v5 contexts];
    if (contexts == contexts2)
    {
      v12 = 1;
    }

    else
    {
      contexts3 = [(BMPersonalizedSensingMomentsContextPersonalizedContext *)self contexts];
      contexts4 = [v5 contexts];
      v12 = [contexts3 isEqual:contexts4];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (id)jsonDictionary
{
  v15[3] = *MEMORY[0x1E69E9840];
  fetchDetails = [(BMPersonalizedSensingMomentsContextPersonalizedContext *)self fetchDetails];
  jsonDictionary = [fetchDetails jsonDictionary];

  fetchOptions = [(BMPersonalizedSensingMomentsContextPersonalizedContext *)self fetchOptions];
  jsonDictionary2 = [fetchOptions jsonDictionary];

  _contextsJSONArray = [(BMPersonalizedSensingMomentsContextPersonalizedContext *)self _contextsJSONArray];
  v14[0] = @"fetchDetails";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"fetchOptions";
  null2 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"contexts";
  null3 = _contextsJSONArray;
  if (!_contextsJSONArray)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null3;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  if (_contextsJSONArray)
  {
    if (jsonDictionary2)
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

  if (!jsonDictionary2)
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
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_contextsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  contexts = [(BMPersonalizedSensingMomentsContextPersonalizedContext *)self contexts];
  v5 = [contexts countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(contexts);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [contexts countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMPersonalizedSensingMomentsContextPersonalizedContext)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v74[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"fetchDetails"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v31 = *MEMORY[0x1E698F240];
        v73 = *MEMORY[0x1E696A578];
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"fetchDetails"];
        v74[0] = v8;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:&v73 count:1];
        selfCopy3 = 0;
        *errorCopy = [v29 initWithDomain:v31 code:2 userInfo:v9];
        goto LABEL_50;
      }

      selfCopy3 = 0;
      goto LABEL_51;
    }

    v9 = v7;
    v63 = 0;
    v8 = [[BMPersonalizedSensingMomentsContextContextFetchDetails alloc] initWithJSONDictionary:v9 error:&v63];
    v14 = v63;
    if (v14)
    {
      if (error)
      {
        v14 = v14;
        *error = v14;
      }

LABEL_37:
      selfCopy3 = 0;
      goto LABEL_50;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"fetchOptions"];
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v32 = objc_alloc(MEMORY[0x1E696ABC0]);
      errorCopy2 = error;
      v33 = *MEMORY[0x1E698F240];
      v71 = *MEMORY[0x1E696A578];
      v72 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"fetchOptions"];
      v10 = v72;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
      selfCopy3 = 0;
      *errorCopy2 = [v32 initWithDomain:v33 code:2 userInfo:v11];
      goto LABEL_49;
    }

    goto LABEL_37;
  }

  v11 = v9;
  v62 = 0;
  v10 = [[BMPersonalizedSensingMomentsContextMomentsContextFetchOptions alloc] initWithJSONDictionary:v11 error:&v62];
  v28 = v62;
  if (v28)
  {
    if (error)
    {
      v28 = v28;
      *error = v28;
    }

    goto LABEL_54;
  }

LABEL_7:
  v11 = [dictionaryCopy objectForKeyedSubscript:@"contexts"];
  null = [MEMORY[0x1E695DFB0] null];
  v13 = [v11 isEqual:null];

  v56 = v7;
  if (!v13)
  {
    if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v53 = v10;
      selfCopy2 = self;
      errorCopy4 = error;
      v51 = v8;
      v52 = dictionaryCopy;
      goto LABEL_17;
    }

    if (error)
    {
      v55 = objc_alloc(MEMORY[0x1E696ABC0]);
      v44 = *MEMORY[0x1E698F240];
      v69 = *MEMORY[0x1E696A578];
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"contexts"];
      v70 = v15;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      v45 = v10;
      v47 = v46 = error;
      *v46 = [v55 initWithDomain:v44 code:2 userInfo:v47];
      v10 = v45;

      selfCopy3 = 0;
      goto LABEL_48;
    }

LABEL_54:
    selfCopy3 = 0;
    goto LABEL_49;
  }

  v53 = v10;
  selfCopy2 = self;
  errorCopy4 = error;
  v51 = v8;
  v52 = dictionaryCopy;

  v11 = 0;
LABEL_17:
  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v11 = v11;
  v16 = [v11 countByEnumeratingWithState:&v58 objects:v68 count:16];
  v17 = 0x1E695D000uLL;
  if (!v16)
  {
    goto LABEL_27;
  }

  v18 = v16;
  v19 = *v59;
  v48 = v9;
  while (2)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v59 != v19)
      {
        objc_enumerationMutation(v11);
      }

      v21 = *(*(&v58 + 1) + 8 * i);
      v22 = *(v17 + 4016);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v51;
        dictionaryCopy = v52;
        v34 = errorCopy4;
        if (errorCopy4)
        {
          v35 = objc_alloc(MEMORY[0x1E696ABC0]);
          v36 = *MEMORY[0x1E698F240];
          v66 = *MEMORY[0x1E696A578];
          v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"contexts"];
          v67 = v23;
          v37 = MEMORY[0x1E695DF20];
          v38 = &v67;
          v39 = &v66;
LABEL_42:
          v40 = [v37 dictionaryWithObjects:v38 forKeys:v39 count:1];
          *v34 = [v35 initWithDomain:v36 code:2 userInfo:v40];
LABEL_46:
        }

LABEL_47:

        selfCopy3 = 0;
        v10 = v53;
        self = selfCopy2;
        v9 = v48;
        goto LABEL_48;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = v51;
        dictionaryCopy = v52;
        v34 = errorCopy4;
        if (errorCopy4)
        {
          v35 = objc_alloc(MEMORY[0x1E696ABC0]);
          v36 = *MEMORY[0x1E698F240];
          v64 = *MEMORY[0x1E696A578];
          v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"contexts"];
          v65 = v23;
          v37 = MEMORY[0x1E695DF20];
          v38 = &v65;
          v39 = &v64;
          goto LABEL_42;
        }

        goto LABEL_47;
      }

      v23 = v21;
      v24 = [BMPersonalizedSensingMomentsContextMomentsContext alloc];
      v57 = 0;
      v25 = [(BMPersonalizedSensingMomentsContextMomentsContext *)v24 initWithJSONDictionary:v23 error:&v57];
      v26 = v57;
      if (v26)
      {
        v40 = v26;
        if (errorCopy4)
        {
          v41 = v26;
          *errorCopy4 = v40;
        }

        v8 = v51;
        dictionaryCopy = v52;
        goto LABEL_46;
      }

      [v15 addObject:v25];

      v17 = 0x1E695D000;
    }

    v18 = [v11 countByEnumeratingWithState:&v58 objects:v68 count:16];
    v9 = v48;
    if (v18)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v10 = v53;
  v8 = v51;
  self = [(BMPersonalizedSensingMomentsContextPersonalizedContext *)selfCopy2 initWithFetchDetails:v51 fetchOptions:v53 contexts:v15];
  selfCopy3 = self;
  dictionaryCopy = v52;
LABEL_48:

  v7 = v56;
LABEL_49:

LABEL_50:
LABEL_51:

  v42 = *MEMORY[0x1E69E9840];
  return selfCopy3;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPersonalizedSensingMomentsContextPersonalizedContext *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_fetchDetails)
  {
    v16 = 0;
    PBDataWriterPlaceMark();
    [(BMPersonalizedSensingMomentsContextContextFetchDetails *)self->_fetchDetails writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_fetchOptions)
  {
    v16 = 0;
    PBDataWriterPlaceMark();
    [(BMPersonalizedSensingMomentsContextMomentsContextFetchOptions *)self->_fetchOptions writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_contexts;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v16 = 0;
        PBDataWriterPlaceMark();
        [v10 writeTo:{toCopy, v12}];
        PBDataWriterRecallMark();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v28.receiver = self;
  v28.super_class = BMPersonalizedSensingMomentsContextPersonalizedContext;
  v5 = [(BMEventBase *)&v28 init];
  if (!v5)
  {
    goto LABEL_34;
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
        LOBYTE(v29) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v29 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v29 & 0x7F) << v8;
        if ((v29 & 0x80) == 0)
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
        v29 = 0;
        v30 = 0;
        if (!PBReaderPlaceMark() || (v20 = [[BMPersonalizedSensingMomentsContextMomentsContext alloc] initByReadFrom:fromCopy]) == 0)
        {
LABEL_35:

          goto LABEL_36;
        }

        v21 = v20;
        [v6 addObject:v20];
        PBReaderRecallMark();
      }

      else
      {
        if (v16 == 2)
        {
          v29 = 0;
          v30 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_35;
          }

          v17 = [[BMPersonalizedSensingMomentsContextMomentsContextFetchOptions alloc] initByReadFrom:fromCopy];
          if (!v17)
          {
            goto LABEL_35;
          }

          v18 = 32;
          goto LABEL_27;
        }

        if (v16 == 1)
        {
          v29 = 0;
          v30 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_35;
          }

          v17 = [[BMPersonalizedSensingMomentsContextContextFetchDetails alloc] initByReadFrom:fromCopy];
          if (!v17)
          {
            goto LABEL_35;
          }

          v18 = 24;
LABEL_27:
          v19 = *(&v5->super.super.isa + v18);
          *(&v5->super.super.isa + v18) = v17;

          PBReaderRecallMark();
          goto LABEL_32;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_35;
        }
      }

LABEL_32:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v23 = [v6 copy];
  contexts = v5->_contexts;
  v5->_contexts = v23;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_36:
    v26 = 0;
  }

  else
  {
LABEL_34:
    v26 = v5;
  }

  return v26;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  fetchDetails = [(BMPersonalizedSensingMomentsContextPersonalizedContext *)self fetchDetails];
  fetchOptions = [(BMPersonalizedSensingMomentsContextPersonalizedContext *)self fetchOptions];
  contexts = [(BMPersonalizedSensingMomentsContextPersonalizedContext *)self contexts];
  v7 = [v3 initWithFormat:@"BMPersonalizedSensingMomentsContextPersonalizedContext with fetchDetails: %@, fetchOptions: %@, contexts: %@", fetchDetails, fetchOptions, contexts];

  return v7;
}

- (BMPersonalizedSensingMomentsContextPersonalizedContext)initWithFetchDetails:(id)details fetchOptions:(id)options contexts:(id)contexts
{
  detailsCopy = details;
  optionsCopy = options;
  contextsCopy = contexts;
  v14.receiver = self;
  v14.super_class = BMPersonalizedSensingMomentsContextPersonalizedContext;
  v12 = [(BMEventBase *)&v14 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_fetchDetails, details);
    objc_storeStrong(&v12->_fetchOptions, options);
    objc_storeStrong(&v12->_contexts, contexts);
  }

  return v12;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fetchDetails" number:1 type:14 subMessageClass:objc_opt_class()];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fetchOptions" number:2 type:14 subMessageClass:{objc_opt_class(), v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contexts" number:3 type:14 subMessageClass:objc_opt_class()];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"fetchDetails_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_76977];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"fetchOptions_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_42_76978];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"contexts_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_44_76979];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __65__BMPersonalizedSensingMomentsContextPersonalizedContext_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _contextsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __65__BMPersonalizedSensingMomentsContextPersonalizedContext_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 fetchOptions];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __65__BMPersonalizedSensingMomentsContextPersonalizedContext_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 fetchDetails];
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

    v8 = [[BMPersonalizedSensingMomentsContextPersonalizedContext alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end