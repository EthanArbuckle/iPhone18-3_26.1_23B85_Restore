@interface BMSiriAssistantSuggestionFeaturesAppUsageFeatures
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriAssistantSuggestionFeaturesAppUsageFeatures)initWithAppUsage:(id)a3 appCategoryUsage:(id)a4;
- (BMSiriAssistantSuggestionFeaturesAppUsageFeatures)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_appCategoryUsageJSONArray;
- (id)_appUsageJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriAssistantSuggestionFeaturesAppUsageFeatures

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSiriAssistantSuggestionFeaturesAppUsageFeatures *)self appUsage];
    v7 = [v5 appUsage];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSiriAssistantSuggestionFeaturesAppUsageFeatures *)self appUsage];
      v10 = [v5 appUsage];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        v12 = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    v13 = [(BMSiriAssistantSuggestionFeaturesAppUsageFeatures *)self appCategoryUsage];
    v14 = [v5 appCategoryUsage];
    if (v13 == v14)
    {
      v12 = 1;
    }

    else
    {
      v15 = [(BMSiriAssistantSuggestionFeaturesAppUsageFeatures *)self appCategoryUsage];
      v16 = [v5 appCategoryUsage];
      v12 = [v15 isEqual:v16];
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
  v3 = [(BMSiriAssistantSuggestionFeaturesAppUsageFeatures *)self _appUsageJSONArray];
  v4 = [(BMSiriAssistantSuggestionFeaturesAppUsageFeatures *)self _appCategoryUsageJSONArray];
  v10[0] = @"appUsage";
  v5 = v3;
  if (!v3)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"appCategoryUsage";
  v11[0] = v5;
  v6 = v4;
  if (!v4)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (v4)
  {
    if (v3)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (v3)
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
  v4 = [(BMSiriAssistantSuggestionFeaturesAppUsageFeatures *)self appCategoryUsage];
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

- (id)_appUsageJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMSiriAssistantSuggestionFeaturesAppUsageFeatures *)self appUsage];
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

- (BMSiriAssistantSuggestionFeaturesAppUsageFeatures)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v83[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"appUsage"];
  v8 = [MEMORY[0x1E695DFB0] null];
  v9 = [v7 isEqual:v8];

  v58 = v6;
  if (v9)
  {
    v56 = a4;
    v57 = self;

    v7 = 0;
  }

  else
  {
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v41 = objc_alloc(MEMORY[0x1E696ABC0]);
          v42 = *MEMORY[0x1E698F240];
          v82 = *MEMORY[0x1E696A578];
          v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"appUsage"];
          v83[0] = v59;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:&v82 count:1];
          v31 = 0;
          *a4 = [v41 initWithDomain:v42 code:2 userInfo:v19];
          goto LABEL_56;
        }

        v31 = 0;
        goto LABEL_57;
      }
    }

    v56 = a4;
    v57 = self;
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
        v22 = v56;
        if (v56)
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
        v31 = 0;
        v19 = v7;
        self = v57;
        goto LABEL_56;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v22 = v56;
        if (!v56)
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
        v31 = 0;
        v19 = v7;
        self = v57;
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
        if (v56)
        {
          v30 = v18;
          *v56 = v29;
        }

        goto LABEL_26;
      }

      [v59 addObject:v17];
    }

    v11 = [v7 countByEnumeratingWithState:&v66 objects:v81 count:16];
    v6 = v58;
  }

  while (v11);
LABEL_16:

  v19 = [v6 objectForKeyedSubscript:@"appCategoryUsage"];
  v20 = [MEMORY[0x1E695DFB0] null];
  v21 = [v19 isEqual:v20];

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
        v43 = v56;
        self = v57;
        if (!v56)
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
        if (v56)
        {
          v50 = v40;
          *v56 = v49;
        }

        self = v57;
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

        self = [(BMSiriAssistantSuggestionFeaturesAppUsageFeatures *)v57 initWithAppUsage:v59 appCategoryUsage:v15];
        v31 = self;
LABEL_55:

        goto LABEL_56;
      }
    }

    v43 = v56;
    self = v57;
    if (!v56)
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

  self = v57;
  if (v56)
  {
    v53 = objc_alloc(MEMORY[0x1E696ABC0]);
    v54 = *MEMORY[0x1E698F240];
    v75 = *MEMORY[0x1E696A578];
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"appCategoryUsage"];
    v76 = v15;
    v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
    *v56 = [v53 initWithDomain:v54 code:2 userInfo:v55];

LABEL_54:
    v31 = 0;
    goto LABEL_55;
  }

  v31 = 0;
LABEL_56:

  v6 = v58;
LABEL_57:

  v51 = *MEMORY[0x1E69E9840];
  return v31;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriAssistantSuggestionFeaturesAppUsageFeatures *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
        [v10 writeTo:v4];
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
        [v16 writeTo:{v4, v18}];
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

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = BMSiriAssistantSuggestionFeaturesAppUsageFeatures;
  v5 = [(BMEventBase *)&v29 init];
  if (!v5)
  {
    goto LABEL_30;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = [v4 position];
  if (v8 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_29;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v30) = 0;
        v12 = [v4 position] + 1;
        if (v12 >= [v4 position] && (v13 = objc_msgSend(v4, "position") + 1, v13 <= objc_msgSend(v4, "length")))
        {
          v14 = [v4 data];
          [v14 getBytes:&v30 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v16 = [v4 hasError] ? 0 : v11;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v16 & 7) == 4)
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

        v17 = [[BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket alloc] initByReadFrom:v4];
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
      v21 = [v4 position];
      if (v21 >= [v4 length])
      {
        goto LABEL_29;
      }
    }

    v30 = 0;
    v31 = 0;
    if (!PBReaderPlaceMark() || (v20 = [[BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket alloc] initByReadFrom:v4]) == 0)
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

  v26 = [v4 hasError];
  if (v26)
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
  v4 = [(BMSiriAssistantSuggestionFeaturesAppUsageFeatures *)self appUsage];
  v5 = [(BMSiriAssistantSuggestionFeaturesAppUsageFeatures *)self appCategoryUsage];
  v6 = [v3 initWithFormat:@"BMSiriAssistantSuggestionFeaturesAppUsageFeatures with appUsage: %@, appCategoryUsage: %@", v4, v5];

  return v6;
}

- (BMSiriAssistantSuggestionFeaturesAppUsageFeatures)initWithAppUsage:(id)a3 appCategoryUsage:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11.receiver = self;
  v11.super_class = BMSiriAssistantSuggestionFeaturesAppUsageFeatures;
  v9 = [(BMEventBase *)&v11 init];
  if (v9)
  {
    v9->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v9->_appUsage, a3);
    objc_storeStrong(&v9->_appCategoryUsage, a4);
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