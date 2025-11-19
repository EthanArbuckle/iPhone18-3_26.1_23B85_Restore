@interface BMSiriAssistantSuggestions
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriAssistantSuggestions)initWithInteraction:(id)a3 entities:(id)a4;
- (BMSiriAssistantSuggestions)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_entitiesJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriAssistantSuggestions

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"interaction_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_55246];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"entities_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_35_55247];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSiriAssistantSuggestions *)self interaction];
    v7 = [v5 interaction];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSiriAssistantSuggestions *)self interaction];
      v10 = [v5 interaction];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        v12 = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    v13 = [(BMSiriAssistantSuggestions *)self entities];
    v14 = [v5 entities];
    if (v13 == v14)
    {
      v12 = 1;
    }

    else
    {
      v15 = [(BMSiriAssistantSuggestions *)self entities];
      v16 = [v5 entities];
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
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = [(BMSiriAssistantSuggestions *)self interaction];
  v4 = [v3 jsonDictionary];

  v5 = [(BMSiriAssistantSuggestions *)self _entitiesJSONArray];
  v11[0] = @"interaction";
  v6 = v4;
  if (!v4)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = @"entities";
  v12[0] = v6;
  v7 = v5;
  if (!v5)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (v5)
  {
    if (v4)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (v4)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)_entitiesJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMSiriAssistantSuggestions *)self entities];
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

- (BMSiriAssistantSuggestions)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v57[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"interaction"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v25 = *MEMORY[0x1E698F240];
        v56 = *MEMORY[0x1E696A578];
        v57[0] = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"interaction"];
        v8 = v57[0];
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:&v56 count:1];
        v26 = [v24 initWithDomain:v25 code:2 userInfo:v9];
        v22 = 0;
        *a4 = v26;
        goto LABEL_37;
      }

      v22 = 0;
      goto LABEL_38;
    }

    v9 = v7;
    v48 = 0;
    v8 = [[BMSiriRemembersInteraction alloc] initWithJSONDictionary:v9 error:&v48];
    v23 = v48;
    if (v23)
    {
      if (a4)
      {
        v23 = v23;
        *a4 = v23;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 objectForKeyedSubscript:@"entities"];
  v10 = [MEMORY[0x1E695DFB0] null];
  v11 = [v9 isEqual:v10];

  v39 = a4;
  if (!v11)
  {
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v40 = v8;
      v41 = v7;
      v42 = v6;
      goto LABEL_9;
    }

    if (a4)
    {
      v35 = objc_alloc(MEMORY[0x1E696ABC0]);
      v36 = *MEMORY[0x1E698F240];
      v54 = *MEMORY[0x1E696A578];
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"entities"];
      v55 = v12;
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      *a4 = [v35 initWithDomain:v36 code:2 userInfo:v37];

      v22 = 0;
      goto LABEL_36;
    }

LABEL_41:
    v22 = 0;
    goto LABEL_37;
  }

  v40 = v8;
  v41 = v7;
  v42 = v6;

  v9 = 0;
LABEL_9:
  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v9 = v9;
  v13 = [v9 countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (!v13)
  {
    goto LABEL_19;
  }

  v14 = v13;
  v15 = *v45;
  v38 = self;
  while (2)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v45 != v15)
      {
        objc_enumerationMutation(v9);
      }

      v17 = *(*(&v44 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self = v38;
        v7 = v41;
        v6 = v42;
        if (v39)
        {
          v27 = objc_alloc(MEMORY[0x1E696ABC0]);
          v28 = *MEMORY[0x1E698F240];
          v51 = *MEMORY[0x1E696A578];
          v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"entities"];
          v52 = v18;
          v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
          *v39 = [v27 initWithDomain:v28 code:2 userInfo:v29];
LABEL_34:
        }

LABEL_35:

        v22 = 0;
        v8 = v40;
        goto LABEL_36;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        self = v38;
        v7 = v41;
        v6 = v42;
        if (v39)
        {
          v30 = objc_alloc(MEMORY[0x1E696ABC0]);
          v31 = *MEMORY[0x1E698F240];
          v49 = *MEMORY[0x1E696A578];
          v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"entities"];
          v50 = v18;
          v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
          *v39 = [v30 initWithDomain:v31 code:2 userInfo:v29];
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      v18 = v17;
      v19 = [BMSiriRemembersEntities alloc];
      v43 = 0;
      v20 = [(BMSiriRemembersEntities *)v19 initWithJSONDictionary:v18 error:&v43];
      v21 = v43;
      if (v21)
      {
        v29 = v21;
        if (v39)
        {
          v32 = v21;
          *v39 = v29;
        }

        self = v38;
        v7 = v41;
        v6 = v42;
        goto LABEL_34;
      }

      [v12 addObject:v20];
    }

    v14 = [v9 countByEnumeratingWithState:&v44 objects:v53 count:16];
    self = v38;
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_19:

  v8 = v40;
  self = [(BMSiriAssistantSuggestions *)self initWithInteraction:v40 entities:v12];
  v22 = self;
  v7 = v41;
  v6 = v42;
LABEL_36:

LABEL_37:
LABEL_38:

  v33 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriAssistantSuggestions *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_interaction)
  {
    v16 = 0;
    PBDataWriterPlaceMark();
    [(BMSiriRemembersInteraction *)self->_interaction writeTo:v4];
    PBDataWriterRecallMark();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_entities;
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
        [v10 writeTo:{v4, v12}];
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

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = BMSiriAssistantSuggestions;
  v5 = [(BMEventBase *)&v26 init];
  if (!v5)
  {
    goto LABEL_29;
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
        LOBYTE(v27) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:&v27 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v27 & 0x7F) << v8;
        if ((v27 & 0x80) == 0)
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

      if ((v15 >> 3) == 2)
      {
        v27 = 0;
        v28 = 0;
        if (!PBReaderPlaceMark() || (v18 = [[BMSiriRemembersEntities alloc] initByReadFrom:v4]) == 0)
        {
LABEL_30:

          goto LABEL_31;
        }

        v19 = v18;
        [v6 addObject:v18];
        PBReaderRecallMark();
      }

      else if ((v15 >> 3) == 1)
      {
        v27 = 0;
        v28 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_30;
        }

        v16 = [[BMSiriRemembersInteraction alloc] initByReadFrom:v4];
        if (!v16)
        {
          goto LABEL_30;
        }

        interaction = v5->_interaction;
        v5->_interaction = v16;

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_30;
      }

      v20 = [v4 position];
    }

    while (v20 < [v4 length]);
  }

  v21 = [v6 copy];
  entities = v5->_entities;
  v5->_entities = v21;

  v23 = [v4 hasError];
  if (v23)
  {
LABEL_31:
    v24 = 0;
  }

  else
  {
LABEL_29:
    v24 = v5;
  }

  return v24;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMSiriAssistantSuggestions *)self interaction];
  v5 = [(BMSiriAssistantSuggestions *)self entities];
  v6 = [v3 initWithFormat:@"BMSiriAssistantSuggestions with interaction: %@, entities: %@", v4, v5];

  return v6;
}

- (BMSiriAssistantSuggestions)initWithInteraction:(id)a3 entities:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11.receiver = self;
  v11.super_class = BMSiriAssistantSuggestions;
  v9 = [(BMEventBase *)&v11 init];
  if (v9)
  {
    v9->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v9->_interaction, a3);
    objc_storeStrong(&v9->_entities, a4);
  }

  return v9;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"interaction" number:1 type:14 subMessageClass:objc_opt_class()];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"entities" number:2 type:14 subMessageClass:objc_opt_class()];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __37__BMSiriAssistantSuggestions_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _entitiesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __37__BMSiriAssistantSuggestions_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 interaction];
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

    v8 = [[BMSiriAssistantSuggestions alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end