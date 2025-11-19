@interface BMContextualUnderstandingActivityInference
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMContextualUnderstandingActivityInference)initWithInferredActivities:(id)a3;
- (BMContextualUnderstandingActivityInference)initWithJSONDictionary:(id)a3 error:(id *)p_isa;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_inferredActivitiesJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMContextualUnderstandingActivityInference

+ (id)columns
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"inferredActivities_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_154];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMContextualUnderstandingActivityInference *)self inferredActivities];
    v7 = [v5 inferredActivities];
    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      v8 = [(BMContextualUnderstandingActivityInference *)self inferredActivities];
      v9 = [v5 inferredActivities];
      v10 = [v8 isEqual:v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)jsonDictionary
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [(BMContextualUnderstandingActivityInference *)self _inferredActivitiesJSONArray];
  v7 = @"inferredActivities";
  v3 = v2;
  if (!v2)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!v2)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_inferredActivitiesJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMContextualUnderstandingActivityInference *)self inferredActivities];
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

- (BMContextualUnderstandingActivityInference)initWithJSONDictionary:(id)a3 error:(id *)p_isa
{
  v46[1] = *MEMORY[0x1E69E9840];
  v6 = [a3 objectForKeyedSubscript:@"inferredActivities"];
  v7 = [MEMORY[0x1E695DFB0] null];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v34 = p_isa;

    v6 = 0;
LABEL_6:
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v6 = v6;
    v10 = [v6 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = v10;
    v12 = *v37;
    v33 = self;
LABEL_8:
    v13 = 0;
    while (1)
    {
      if (*v37 != v12)
      {
        objc_enumerationMutation(v6);
      }

      v14 = *(*(&v36 + 1) + 8 * v13);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        self = v33;
        v19 = v34;
        if (!v34)
        {
          goto LABEL_26;
        }

        v20 = objc_alloc(MEMORY[0x1E696ABC0]);
        v21 = *MEMORY[0x1E698F240];
        v40 = *MEMORY[0x1E696A578];
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"inferredActivities"];
        v41 = v15;
        v22 = MEMORY[0x1E695DF20];
        v23 = &v41;
        v24 = &v40;
        goto LABEL_21;
      }

      v15 = v14;
      v16 = [BMContextualUnderstandingActivityInferenceInferredActivity alloc];
      v35 = 0;
      v17 = [(BMContextualUnderstandingActivityInferenceInferredActivity *)v16 initWithJSONDictionary:v15 error:&v35];
      v18 = v35;
      if (v18)
      {
        v25 = v18;
        if (v34)
        {
          v26 = v18;
          *v34 = v25;
        }

        self = v33;
LABEL_25:

LABEL_26:
        goto LABEL_27;
      }

      [v9 addObject:v17];

      if (v11 == ++v13)
      {
        v11 = [v6 countByEnumeratingWithState:&v36 objects:v44 count:16];
        self = v33;
        if (v11)
        {
          goto LABEL_8;
        }

LABEL_16:

        self = [(BMContextualUnderstandingActivityInference *)self initWithInferredActivities:v9];
        p_isa = &self->super.super.isa;
LABEL_28:

        goto LABEL_29;
      }
    }

    self = v33;
    v19 = v34;
    if (!v34)
    {
      goto LABEL_26;
    }

    v20 = objc_alloc(MEMORY[0x1E696ABC0]);
    v21 = *MEMORY[0x1E698F240];
    v42 = *MEMORY[0x1E696A578];
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"inferredActivities"];
    v43 = v15;
    v22 = MEMORY[0x1E695DF20];
    v23 = &v43;
    v24 = &v42;
LABEL_21:
    v25 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:1];
    *v19 = [v20 initWithDomain:v21 code:2 userInfo:v25];
    goto LABEL_25;
  }

  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v34 = p_isa;
    goto LABEL_6;
  }

  if (p_isa)
  {
    v29 = objc_alloc(MEMORY[0x1E696ABC0]);
    v30 = *MEMORY[0x1E698F240];
    v45 = *MEMORY[0x1E696A578];
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"inferredActivities"];
    v46[0] = v9;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
    v32 = v31 = self;
    *p_isa = [v29 initWithDomain:v30 code:2 userInfo:v32];

    self = v31;
LABEL_27:
    p_isa = 0;
    goto LABEL_28;
  }

LABEL_29:

  v27 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMContextualUnderstandingActivityInference *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_inferredActivities;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v10 writeTo:v4];
        PBDataWriterRecallMark();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = BMContextualUnderstandingActivityInference;
  v5 = [(BMEventBase *)&v24 init];
  if (!v5)
  {
    goto LABEL_25;
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
        LOBYTE(v25[0]) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:v25 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v25[0] & 0x7F) << v8;
        if ((v25[0] & 0x80) == 0)
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

      if ((v15 >> 3) == 1)
      {
        v25[0] = 0;
        v25[1] = 0;
        if (!PBReaderPlaceMark() || (v16 = [[BMContextualUnderstandingActivityInferenceInferredActivity alloc] initByReadFrom:v4]) == 0)
        {
LABEL_26:

          goto LABEL_27;
        }

        v17 = v16;
        [v6 addObject:v16];
        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_26;
      }

      v18 = [v4 position];
    }

    while (v18 < [v4 length]);
  }

  v19 = [v6 copy];
  inferredActivities = v5->_inferredActivities;
  v5->_inferredActivities = v19;

  v21 = [v4 hasError];
  if (v21)
  {
LABEL_27:
    v22 = 0;
  }

  else
  {
LABEL_25:
    v22 = v5;
  }

  return v22;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMContextualUnderstandingActivityInference *)self inferredActivities];
  v5 = [v3 initWithFormat:@"BMContextualUnderstandingActivityInference with inferredActivities: %@", v4];

  return v5;
}

- (BMContextualUnderstandingActivityInference)initWithInferredActivities:(id)a3
{
  v5 = a3;
  v8.receiver = self;
  v8.super_class = BMContextualUnderstandingActivityInference;
  v6 = [(BMEventBase *)&v8 init];
  if (v6)
  {
    v6->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v6->_inferredActivities, a3);
  }

  return v6;
}

+ (id)protoFields
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"inferredActivities" number:1 type:14 subMessageClass:objc_opt_class()];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

id __53__BMContextualUnderstandingActivityInference_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _inferredActivitiesJSONArray];
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

    v8 = [[BMContextualUnderstandingActivityInference alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end