@interface BMFeedbackLearningTupleInteractionTupleInteraction
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMFeedbackLearningTupleInteractionTupleInteraction)initWithCandidates:(id)a3 userAlignment:(id)a4;
- (BMFeedbackLearningTupleInteractionTupleInteraction)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_candidatesJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMFeedbackLearningTupleInteractionTupleInteraction

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMFeedbackLearningTupleInteractionTupleInteraction *)self candidates];
    v7 = [v5 candidates];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMFeedbackLearningTupleInteractionTupleInteraction *)self candidates];
      v10 = [v5 candidates];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        v12 = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    v13 = [(BMFeedbackLearningTupleInteractionTupleInteraction *)self userAlignment];
    v14 = [v5 userAlignment];
    if (v13 == v14)
    {
      v12 = 1;
    }

    else
    {
      v15 = [(BMFeedbackLearningTupleInteractionTupleInteraction *)self userAlignment];
      v16 = [v5 userAlignment];
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
  v3 = [(BMFeedbackLearningTupleInteractionTupleInteraction *)self _candidatesJSONArray];
  v4 = [(BMFeedbackLearningTupleInteractionTupleInteraction *)self userAlignment];
  v5 = [v4 jsonDictionary];

  v11[0] = @"candidates";
  v6 = v3;
  if (!v3)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = @"userAlignment";
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
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)_candidatesJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMFeedbackLearningTupleInteractionTupleInteraction *)self candidates];
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

- (BMFeedbackLearningTupleInteractionTupleInteraction)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v57[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"candidates"];
  v7 = [MEMORY[0x1E695DFB0] null];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v39 = v5;
    v40 = self;

    v6 = 0;
  }

  else
  {
    if (v6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v29 = objc_alloc(MEMORY[0x1E696ABC0]);
          v30 = *MEMORY[0x1E698F240];
          v56 = *MEMORY[0x1E696A578];
          v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"candidates"];
          v57[0] = v42;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:&v56 count:1];
          v31 = [v29 initWithDomain:v30 code:2 userInfo:v18];
          v26 = 0;
          *a4 = v31;
          goto LABEL_33;
        }

        v26 = 0;
        goto LABEL_34;
      }
    }

    v39 = v5;
    v40 = self;
  }

  v42 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v6 = v6;
  v9 = [v6 countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9;
  v11 = *v46;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v46 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v45 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = a4;
        if (a4)
        {
          v20 = objc_alloc(MEMORY[0x1E696ABC0]);
          v21 = *MEMORY[0x1E698F240];
          v53 = *MEMORY[0x1E696A578];
          v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"candidates"];
          v54 = v14;
          v22 = MEMORY[0x1E695DF20];
          v23 = &v54;
          v24 = &v53;
LABEL_23:
          v25 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:1];
          *v19 = [v20 initWithDomain:v21 code:2 userInfo:v25];

          v26 = 0;
          v18 = v6;
          v5 = v39;
          self = v40;
          goto LABEL_32;
        }

LABEL_29:
        v26 = 0;
        v18 = v6;
        v5 = v39;
        self = v40;
        goto LABEL_33;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v19 = a4;
        if (a4)
        {
          v20 = objc_alloc(MEMORY[0x1E696ABC0]);
          v21 = *MEMORY[0x1E698F240];
          v51 = *MEMORY[0x1E696A578];
          v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"candidates"];
          v52 = v14;
          v22 = MEMORY[0x1E695DF20];
          v23 = &v52;
          v24 = &v51;
          goto LABEL_23;
        }

        goto LABEL_29;
      }

      v14 = v13;
      v15 = [BMFeedbackLearningTupleInteractionCandidateIdentifier alloc];
      v44 = 0;
      v16 = [(BMFeedbackLearningTupleInteractionCandidateIdentifier *)v15 initWithJSONDictionary:v14 error:&v44];
      v17 = v44;
      if (v17)
      {
        v27 = v17;
        v5 = v39;
        if (a4)
        {
          v28 = v17;
          *a4 = v27;
        }

        v26 = 0;
        v18 = v6;
        self = v40;
LABEL_32:

        goto LABEL_33;
      }

      [v42 addObject:v16];
    }

    v10 = [v6 countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_16:

  v5 = v39;
  v18 = [v39 objectForKeyedSubscript:@"userAlignment"];
  if (!v18)
  {
    v14 = 0;
    self = v40;
    goto LABEL_31;
  }

  objc_opt_class();
  self = v40;
  if (objc_opt_isKindOfClass())
  {
    v14 = 0;
    goto LABEL_31;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = v18;
    v43 = 0;
    v14 = [[BMIntelligenceFlowUserAlignment alloc] initWithJSONDictionary:v34 error:&v43];
    v35 = v43;
    if (v35)
    {
      if (a4)
      {
        v35 = v35;
        *a4 = v35;
      }

      v26 = 0;
      v18 = v34;
      goto LABEL_32;
    }

LABEL_31:
    self = [(BMFeedbackLearningTupleInteractionTupleInteraction *)self initWithCandidates:v42 userAlignment:v14];
    v26 = self;
    goto LABEL_32;
  }

  if (a4)
  {
    v36 = objc_alloc(MEMORY[0x1E696ABC0]);
    v37 = *MEMORY[0x1E698F240];
    v49 = *MEMORY[0x1E696A578];
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"userAlignment"];
    v50 = v14;
    v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    *a4 = [v36 initWithDomain:v37 code:2 userInfo:v38];

    v26 = 0;
    goto LABEL_32;
  }

  v26 = 0;
LABEL_33:

LABEL_34:
  v32 = *MEMORY[0x1E69E9840];
  return v26;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMFeedbackLearningTupleInteractionTupleInteraction *)self writeTo:v3];
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
  v5 = self->_candidates;
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

  if (self->_userAlignment)
  {
    PBDataWriterPlaceMark();
    [(BMIntelligenceFlowUserAlignment *)self->_userAlignment writeTo:v4];
    PBDataWriterRecallMark();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = BMFeedbackLearningTupleInteractionTupleInteraction;
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
        if (!PBReaderPlaceMark() || (v18 = [[BMIntelligenceFlowUserAlignment alloc] initByReadFrom:v4]) == 0)
        {
LABEL_30:

          goto LABEL_31;
        }

        userAlignment = v5->_userAlignment;
        v5->_userAlignment = v18;

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

        v16 = [[BMFeedbackLearningTupleInteractionCandidateIdentifier alloc] initByReadFrom:v4];
        if (!v16)
        {
          goto LABEL_30;
        }

        v17 = v16;
        [v6 addObject:v16];
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
  candidates = v5->_candidates;
  v5->_candidates = v21;

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
  v4 = [(BMFeedbackLearningTupleInteractionTupleInteraction *)self candidates];
  v5 = [(BMFeedbackLearningTupleInteractionTupleInteraction *)self userAlignment];
  v6 = [v3 initWithFormat:@"BMFeedbackLearningTupleInteractionTupleInteraction with candidates: %@, userAlignment: %@", v4, v5];

  return v6;
}

- (BMFeedbackLearningTupleInteractionTupleInteraction)initWithCandidates:(id)a3 userAlignment:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11.receiver = self;
  v11.super_class = BMFeedbackLearningTupleInteractionTupleInteraction;
  v9 = [(BMEventBase *)&v11 init];
  if (v9)
  {
    v9->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v9->_candidates, a3);
    objc_storeStrong(&v9->_userAlignment, a4);
  }

  return v9;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"candidates" number:1 type:14 subMessageClass:objc_opt_class()];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userAlignment" number:2 type:14 subMessageClass:objc_opt_class()];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"candidates_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_160];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"userAlignment_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_162_68269];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __61__BMFeedbackLearningTupleInteractionTupleInteraction_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 userAlignment];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __61__BMFeedbackLearningTupleInteractionTupleInteraction_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _candidatesJSONArray];
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

    v8 = [[BMFeedbackLearningTupleInteractionTupleInteraction alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end