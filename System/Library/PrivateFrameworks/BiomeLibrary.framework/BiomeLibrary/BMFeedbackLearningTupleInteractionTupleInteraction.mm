@interface BMFeedbackLearningTupleInteractionTupleInteraction
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMFeedbackLearningTupleInteractionTupleInteraction)initWithCandidates:(id)candidates userAlignment:(id)alignment;
- (BMFeedbackLearningTupleInteractionTupleInteraction)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_candidatesJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMFeedbackLearningTupleInteractionTupleInteraction

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    candidates = [(BMFeedbackLearningTupleInteractionTupleInteraction *)self candidates];
    candidates2 = [v5 candidates];
    v8 = candidates2;
    if (candidates == candidates2)
    {
    }

    else
    {
      candidates3 = [(BMFeedbackLearningTupleInteractionTupleInteraction *)self candidates];
      candidates4 = [v5 candidates];
      v11 = [candidates3 isEqual:candidates4];

      if (!v11)
      {
        v12 = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    userAlignment = [(BMFeedbackLearningTupleInteractionTupleInteraction *)self userAlignment];
    userAlignment2 = [v5 userAlignment];
    if (userAlignment == userAlignment2)
    {
      v12 = 1;
    }

    else
    {
      userAlignment3 = [(BMFeedbackLearningTupleInteractionTupleInteraction *)self userAlignment];
      userAlignment4 = [v5 userAlignment];
      v12 = [userAlignment3 isEqual:userAlignment4];
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
  _candidatesJSONArray = [(BMFeedbackLearningTupleInteractionTupleInteraction *)self _candidatesJSONArray];
  userAlignment = [(BMFeedbackLearningTupleInteractionTupleInteraction *)self userAlignment];
  jsonDictionary = [userAlignment jsonDictionary];

  v11[0] = @"candidates";
  null = _candidatesJSONArray;
  if (!_candidatesJSONArray)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = @"userAlignment";
  v12[0] = null;
  null2 = jsonDictionary;
  if (!jsonDictionary)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = null2;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (jsonDictionary)
  {
    if (_candidatesJSONArray)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (_candidatesJSONArray)
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
  candidates = [(BMFeedbackLearningTupleInteractionTupleInteraction *)self candidates];
  v5 = [candidates countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(candidates);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [candidates countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMFeedbackLearningTupleInteractionTupleInteraction)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v57[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"candidates"];
  null = [MEMORY[0x1E695DFB0] null];
  v8 = [v6 isEqual:null];

  if (v8)
  {
    v39 = dictionaryCopy;
    selfCopy2 = self;

    v6 = 0;
  }

  else
  {
    if (v6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v29 = objc_alloc(MEMORY[0x1E696ABC0]);
          v30 = *MEMORY[0x1E698F240];
          v56 = *MEMORY[0x1E696A578];
          v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"candidates"];
          v57[0] = v42;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:&v56 count:1];
          v31 = [v29 initWithDomain:v30 code:2 userInfo:v18];
          selfCopy3 = 0;
          *error = v31;
          goto LABEL_33;
        }

        selfCopy3 = 0;
        goto LABEL_34;
      }
    }

    v39 = dictionaryCopy;
    selfCopy2 = self;
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
        errorCopy2 = error;
        if (error)
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
          *errorCopy2 = [v20 initWithDomain:v21 code:2 userInfo:v25];

          selfCopy3 = 0;
          v18 = v6;
          dictionaryCopy = v39;
          self = selfCopy2;
          goto LABEL_32;
        }

LABEL_29:
        selfCopy3 = 0;
        v18 = v6;
        dictionaryCopy = v39;
        self = selfCopy2;
        goto LABEL_33;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        errorCopy2 = error;
        if (error)
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
        dictionaryCopy = v39;
        if (error)
        {
          v28 = v17;
          *error = v27;
        }

        selfCopy3 = 0;
        v18 = v6;
        self = selfCopy2;
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

  dictionaryCopy = v39;
  v18 = [v39 objectForKeyedSubscript:@"userAlignment"];
  if (!v18)
  {
    v14 = 0;
    self = selfCopy2;
    goto LABEL_31;
  }

  objc_opt_class();
  self = selfCopy2;
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
      if (error)
      {
        v35 = v35;
        *error = v35;
      }

      selfCopy3 = 0;
      v18 = v34;
      goto LABEL_32;
    }

LABEL_31:
    self = [(BMFeedbackLearningTupleInteractionTupleInteraction *)self initWithCandidates:v42 userAlignment:v14];
    selfCopy3 = self;
    goto LABEL_32;
  }

  if (error)
  {
    v36 = objc_alloc(MEMORY[0x1E696ABC0]);
    v37 = *MEMORY[0x1E698F240];
    v49 = *MEMORY[0x1E696A578];
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"userAlignment"];
    v50 = v14;
    v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    *error = [v36 initWithDomain:v37 code:2 userInfo:v38];

    selfCopy3 = 0;
    goto LABEL_32;
  }

  selfCopy3 = 0;
LABEL_33:

LABEL_34:
  v32 = *MEMORY[0x1E69E9840];
  return selfCopy3;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMFeedbackLearningTupleInteractionTupleInteraction *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
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
        [v10 writeTo:toCopy];
        PBDataWriterRecallMark();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (self->_userAlignment)
  {
    PBDataWriterPlaceMark();
    [(BMIntelligenceFlowUserAlignment *)self->_userAlignment writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v26.receiver = self;
  v26.super_class = BMFeedbackLearningTupleInteractionTupleInteraction;
  v5 = [(BMEventBase *)&v26 init];
  if (!v5)
  {
    goto LABEL_29;
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
        LOBYTE(v27) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v27 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        break;
      }

      if ((v15 >> 3) == 2)
      {
        v27 = 0;
        v28 = 0;
        if (!PBReaderPlaceMark() || (v18 = [[BMIntelligenceFlowUserAlignment alloc] initByReadFrom:fromCopy]) == 0)
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

        v16 = [[BMFeedbackLearningTupleInteractionCandidateIdentifier alloc] initByReadFrom:fromCopy];
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

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v21 = [v6 copy];
  candidates = v5->_candidates;
  v5->_candidates = v21;

  hasError = [fromCopy hasError];
  if (hasError)
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
  candidates = [(BMFeedbackLearningTupleInteractionTupleInteraction *)self candidates];
  userAlignment = [(BMFeedbackLearningTupleInteractionTupleInteraction *)self userAlignment];
  v6 = [v3 initWithFormat:@"BMFeedbackLearningTupleInteractionTupleInteraction with candidates: %@, userAlignment: %@", candidates, userAlignment];

  return v6;
}

- (BMFeedbackLearningTupleInteractionTupleInteraction)initWithCandidates:(id)candidates userAlignment:(id)alignment
{
  candidatesCopy = candidates;
  alignmentCopy = alignment;
  v11.receiver = self;
  v11.super_class = BMFeedbackLearningTupleInteractionTupleInteraction;
  v9 = [(BMEventBase *)&v11 init];
  if (v9)
  {
    v9->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v9->_candidates, candidates);
    objc_storeStrong(&v9->_userAlignment, alignment);
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