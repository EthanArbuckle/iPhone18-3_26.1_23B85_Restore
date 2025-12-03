@interface BMSiriAssistantSuggestionFeaturesAppUsageFeatures
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriAssistantSuggestionFeaturesAppUsageFeatures)initWithAppUsage:(id)usage appCategoryUsage:(id)categoryUsage;
- (BMSiriAssistantSuggestionFeaturesAppUsageFeatures)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_appCategoryUsageJSONArray;
- (id)_appUsageJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriAssistantSuggestionFeaturesAppUsageFeatures

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    appUsage = [(BMSiriAssistantSuggestionFeaturesAppUsageFeatures *)self appUsage];
    appUsage2 = [v5 appUsage];
    v8 = appUsage2;
    if (appUsage == appUsage2)
    {
    }

    else
    {
      appUsage3 = [(BMSiriAssistantSuggestionFeaturesAppUsageFeatures *)self appUsage];
      appUsage4 = [v5 appUsage];
      v11 = [appUsage3 isEqual:appUsage4];

      if (!v11)
      {
        v12 = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    appCategoryUsage = [(BMSiriAssistantSuggestionFeaturesAppUsageFeatures *)self appCategoryUsage];
    appCategoryUsage2 = [v5 appCategoryUsage];
    if (appCategoryUsage == appCategoryUsage2)
    {
      v12 = 1;
    }

    else
    {
      appCategoryUsage3 = [(BMSiriAssistantSuggestionFeaturesAppUsageFeatures *)self appCategoryUsage];
      appCategoryUsage4 = [v5 appCategoryUsage];
      v12 = [appCategoryUsage3 isEqual:appCategoryUsage4];
    }

    goto LABEL_11;
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (id)jsonDictionary
{
  v11[2] = *MEMORY[0x1E69E9840];
  _appUsageJSONArray = [(BMSiriAssistantSuggestionFeaturesAppUsageFeatures *)self _appUsageJSONArray];
  _appCategoryUsageJSONArray = [(BMSiriAssistantSuggestionFeaturesAppUsageFeatures *)self _appCategoryUsageJSONArray];
  v10[0] = @"appUsage";
  null = _appUsageJSONArray;
  if (!_appUsageJSONArray)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"appCategoryUsage";
  v11[0] = null;
  null2 = _appCategoryUsageJSONArray;
  if (!_appCategoryUsageJSONArray)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (_appCategoryUsageJSONArray)
  {
    if (_appUsageJSONArray)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (_appUsageJSONArray)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_appCategoryUsageJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  appCategoryUsage = [(BMSiriAssistantSuggestionFeaturesAppUsageFeatures *)self appCategoryUsage];
  v5 = [appCategoryUsage countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(appCategoryUsage);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [appCategoryUsage countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_appUsageJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  appUsage = [(BMSiriAssistantSuggestionFeaturesAppUsageFeatures *)self appUsage];
  v5 = [appUsage countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(appUsage);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [appUsage countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMSiriAssistantSuggestionFeaturesAppUsageFeatures)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v83[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"appUsage"];
  null = [MEMORY[0x1E695DFB0] null];
  v9 = [v7 isEqual:null];

  v58 = dictionaryCopy;
  if (v9)
  {
    errorCopy2 = error;
    selfCopy2 = self;

    v7 = 0;
  }

  else
  {
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v41 = objc_alloc(MEMORY[0x1E696ABC0]);
          v42 = *MEMORY[0x1E698F240];
          v82 = *MEMORY[0x1E696A578];
          v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"appUsage"];
          v83[0] = v59;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:&v82 count:1];
          selfCopy3 = 0;
          *error = [v41 initWithDomain:v42 code:2 userInfo:v19];
          goto LABEL_56;
        }

        selfCopy3 = 0;
        goto LABEL_57;
      }
    }

    errorCopy2 = error;
    selfCopy2 = self;
  }

  v59 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v7 = v7;
  v10 = [v7 countByEnumeratingWithState:&v66 objects:v81 count:16];
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = v10;
  v12 = *v67;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v67 != v12)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v66 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = errorCopy2;
        if (errorCopy2)
        {
          v23 = objc_alloc(MEMORY[0x1E696ABC0]);
          v24 = *MEMORY[0x1E698F240];
          v79 = *MEMORY[0x1E696A578];
          v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"appUsage"];
          v80 = v15;
          v25 = MEMORY[0x1E695DF20];
          v26 = &v80;
          v27 = &v79;
          goto LABEL_22;
        }

LABEL_42:
        selfCopy3 = 0;
        v19 = v7;
        self = selfCopy2;
        goto LABEL_56;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v22 = errorCopy2;
        if (!errorCopy2)
        {
          goto LABEL_42;
        }

        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v24 = *MEMORY[0x1E698F240];
        v77 = *MEMORY[0x1E696A578];
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"appUsage"];
        v78 = v15;
        v25 = MEMORY[0x1E695DF20];
        v26 = &v78;
        v27 = &v77;
LABEL_22:
        v28 = [v25 dictionaryWithObjects:v26 forKeys:v27 count:1];
        *v22 = [v23 initWithDomain:v24 code:2 userInfo:v28];

LABEL_26:
        selfCopy3 = 0;
        v19 = v7;
        self = selfCopy2;
        goto LABEL_55;
      }

      v15 = v14;
      v16 = [BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket alloc];
      v65 = 0;
      v17 = [(BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket *)v16 initWithJSONDictionary:v15 error:&v65];
      v18 = v65;
      if (v18)
      {
        v29 = v18;
        if (errorCopy2)
        {
          v30 = v18;
          *errorCopy2 = v29;
        }

        goto LABEL_26;
      }

      [v59 addObject:v17];
    }

    v11 = [v7 countByEnumeratingWithState:&v66 objects:v81 count:16];
    dictionaryCopy = v58;
  }

  while (v11);
LABEL_16:

  v19 = [dictionaryCopy objectForKeyedSubscript:@"appCategoryUsage"];
  null2 = [MEMORY[0x1E695DFB0] null];
  v21 = [v19 isEqual:null2];

  if (v21)
  {

    v19 = 0;
LABEL_29:
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v19, "count")}];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v19 = v19;
    v32 = [v19 countByEnumeratingWithState:&v61 objects:v74 count:16];
    if (!v32)
    {
      goto LABEL_39;
    }

    v33 = v32;
    v34 = *v62;
LABEL_31:
    v35 = 0;
    while (1)
    {
      if (*v62 != v34)
      {
        objc_enumerationMutation(v19);
      }

      v36 = *(*(&v61 + 1) + 8 * v35);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v43 = errorCopy2;
        self = selfCopy2;
        if (!errorCopy2)
        {
          goto LABEL_53;
        }

        v44 = objc_alloc(MEMORY[0x1E696ABC0]);
        v45 = *MEMORY[0x1E698F240];
        v70 = *MEMORY[0x1E696A578];
        v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"appCategoryUsage"];
        v71 = v37;
        v46 = MEMORY[0x1E695DF20];
        v47 = &v71;
        v48 = &v70;
        goto LABEL_48;
      }

      v37 = v36;
      v38 = [BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket alloc];
      v60 = 0;
      v39 = [(BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket *)v38 initWithJSONDictionary:v37 error:&v60];
      v40 = v60;
      if (v40)
      {
        v49 = v40;
        if (errorCopy2)
        {
          v50 = v40;
          *errorCopy2 = v49;
        }

        self = selfCopy2;
LABEL_52:

LABEL_53:
        goto LABEL_54;
      }

      [v15 addObject:v39];

      if (v33 == ++v35)
      {
        v33 = [v19 countByEnumeratingWithState:&v61 objects:v74 count:16];
        if (v33)
        {
          goto LABEL_31;
        }

LABEL_39:

        self = [(BMSiriAssistantSuggestionFeaturesAppUsageFeatures *)selfCopy2 initWithAppUsage:v59 appCategoryUsage:v15];
        selfCopy3 = self;
LABEL_55:

        goto LABEL_56;
      }
    }

    v43 = errorCopy2;
    self = selfCopy2;
    if (!errorCopy2)
    {
      goto LABEL_53;
    }

    v44 = objc_alloc(MEMORY[0x1E696ABC0]);
    v45 = *MEMORY[0x1E698F240];
    v72 = *MEMORY[0x1E696A578];
    v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"appCategoryUsage"];
    v73 = v37;
    v46 = MEMORY[0x1E695DF20];
    v47 = &v73;
    v48 = &v72;
LABEL_48:
    v49 = [v46 dictionaryWithObjects:v47 forKeys:v48 count:1];
    *v43 = [v44 initWithDomain:v45 code:2 userInfo:v49];
    goto LABEL_52;
  }

  if (!v19)
  {
    goto LABEL_29;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_29;
  }

  self = selfCopy2;
  if (errorCopy2)
  {
    v53 = objc_alloc(MEMORY[0x1E696ABC0]);
    v54 = *MEMORY[0x1E698F240];
    v75 = *MEMORY[0x1E696A578];
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"appCategoryUsage"];
    v76 = v15;
    v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
    *errorCopy2 = [v53 initWithDomain:v54 code:2 userInfo:v55];

LABEL_54:
    selfCopy3 = 0;
    goto LABEL_55;
  }

  selfCopy3 = 0;
LABEL_56:

  dictionaryCopy = v58;
LABEL_57:

  v51 = *MEMORY[0x1E69E9840];
  return selfCopy3;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriAssistantSuggestionFeaturesAppUsageFeatures *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v29 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = self->_appUsage;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        v22 = 0;
        PBDataWriterPlaceMark();
        [v10 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_appCategoryUsage;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        v22 = 0;
        PBDataWriterPlaceMark();
        [v16 writeTo:{toCopy, v18}];
        PBDataWriterRecallMark();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v27 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v29.receiver = self;
  v29.super_class = BMSiriAssistantSuggestionFeaturesAppUsageFeatures;
  v5 = [(BMEventBase *)&v29 init];
  if (!v5)
  {
    goto LABEL_30;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_29;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v30) = 0;
        v12 = [fromCopy position] + 1;
        if (v12 >= [fromCopy position] && (v13 = objc_msgSend(fromCopy, "position") + 1, v13 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v30 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v11 |= (v30 & 0x7F) << v9;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        if (v10++ >= 9)
        {
          v16 = 0;
          goto LABEL_16;
        }
      }

      v16 = [fromCopy hasError] ? 0 : v11;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        goto LABEL_29;
      }

      if ((v16 >> 3) == 2)
      {
        break;
      }

      if ((v16 >> 3) == 1)
      {
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_31;
        }

        v17 = [[BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket alloc] initByReadFrom:fromCopy];
        if (!v17)
        {
          goto LABEL_31;
        }

        v18 = v17;
        v19 = v6;
LABEL_26:
        [v19 addObject:v18];
        PBReaderRecallMark();

        goto LABEL_28;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_31;
      }

LABEL_28:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_29;
      }
    }

    v30 = 0;
    v31 = 0;
    if (!PBReaderPlaceMark() || (v20 = [[BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket alloc] initByReadFrom:fromCopy]) == 0)
    {
LABEL_31:

      goto LABEL_32;
    }

    v18 = v20;
    v19 = v7;
    goto LABEL_26;
  }

LABEL_29:
  v22 = [v6 copy];
  appUsage = v5->_appUsage;
  v5->_appUsage = v22;

  v24 = [v7 copy];
  appCategoryUsage = v5->_appCategoryUsage;
  v5->_appCategoryUsage = v24;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_32:
    v27 = 0;
  }

  else
  {
LABEL_30:
    v27 = v5;
  }

  return v27;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  appUsage = [(BMSiriAssistantSuggestionFeaturesAppUsageFeatures *)self appUsage];
  appCategoryUsage = [(BMSiriAssistantSuggestionFeaturesAppUsageFeatures *)self appCategoryUsage];
  v6 = [v3 initWithFormat:@"BMSiriAssistantSuggestionFeaturesAppUsageFeatures with appUsage: %@, appCategoryUsage: %@", appUsage, appCategoryUsage];

  return v6;
}

- (BMSiriAssistantSuggestionFeaturesAppUsageFeatures)initWithAppUsage:(id)usage appCategoryUsage:(id)categoryUsage
{
  usageCopy = usage;
  categoryUsageCopy = categoryUsage;
  v11.receiver = self;
  v11.super_class = BMSiriAssistantSuggestionFeaturesAppUsageFeatures;
  v9 = [(BMEventBase *)&v11 init];
  if (v9)
  {
    v9->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v9->_appUsage, usage);
    objc_storeStrong(&v9->_appCategoryUsage, categoryUsage);
  }

  return v9;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appUsage" number:1 type:14 subMessageClass:objc_opt_class()];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appCategoryUsage" number:2 type:14 subMessageClass:objc_opt_class()];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"appUsage_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_465];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"appCategoryUsage_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_467];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __60__BMSiriAssistantSuggestionFeaturesAppUsageFeatures_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _appCategoryUsageJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __60__BMSiriAssistantSuggestionFeaturesAppUsageFeatures_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _appUsageJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
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

    v8 = [[BMSiriAssistantSuggestionFeaturesAppUsageFeatures alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end