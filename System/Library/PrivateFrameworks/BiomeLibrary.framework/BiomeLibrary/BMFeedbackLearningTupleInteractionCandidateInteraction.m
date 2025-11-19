@interface BMFeedbackLearningTupleInteractionCandidateInteraction
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMFeedbackLearningTupleInteractionCandidateInteraction)initWithCandidateId:(id)a3 userAlignment:(id)a4;
- (BMFeedbackLearningTupleInteractionCandidateInteraction)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMFeedbackLearningTupleInteractionCandidateInteraction

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMFeedbackLearningTupleInteractionCandidateInteraction *)self candidateId];
    v7 = [v5 candidateId];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMFeedbackLearningTupleInteractionCandidateInteraction *)self candidateId];
      v10 = [v5 candidateId];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        v12 = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    v13 = [(BMFeedbackLearningTupleInteractionCandidateInteraction *)self userAlignment];
    v14 = [v5 userAlignment];
    if (v13 == v14)
    {
      v12 = 1;
    }

    else
    {
      v15 = [(BMFeedbackLearningTupleInteractionCandidateInteraction *)self userAlignment];
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
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = [(BMFeedbackLearningTupleInteractionCandidateInteraction *)self candidateId];
  v4 = [v3 jsonDictionary];

  v5 = [(BMFeedbackLearningTupleInteractionCandidateInteraction *)self userAlignment];
  v6 = [v5 jsonDictionary];

  v12[0] = @"candidateId";
  v7 = v4;
  if (!v4)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = @"userAlignment";
  v13[0] = v7;
  v8 = v6;
  if (!v6)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  if (v6)
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
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BMFeedbackLearningTupleInteractionCandidateInteraction)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v28[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"candidateId"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
    v24 = 0;
    v8 = [[BMFeedbackLearningTupleInteractionCandidateIdentifier alloc] initWithJSONDictionary:v9 error:&v24];
    v12 = v24;
    if (v12)
    {
      if (a4)
      {
        v12 = v12;
        *a4 = v12;
      }

      goto LABEL_26;
    }

LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"userAlignment"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = 0;
LABEL_7:
      self = [(BMFeedbackLearningTupleInteractionCandidateInteraction *)self initWithCandidateId:v8 userAlignment:v10];
      v11 = self;
LABEL_23:

      goto LABEL_24;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v9;
      v23 = 0;
      v10 = [[BMIntelligenceFlowUserAlignment alloc] initWithJSONDictionary:v13 error:&v23];
      v14 = v23;
      if (!v14)
      {

        goto LABEL_7;
      }

      if (a4)
      {
        v14 = v14;
        *a4 = v14;
      }

LABEL_22:
      v11 = 0;
      goto LABEL_23;
    }

    if (a4)
    {
      v22 = objc_alloc(MEMORY[0x1E696ABC0]);
      v18 = *MEMORY[0x1E698F240];
      v25 = *MEMORY[0x1E696A578];
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"userAlignment"];
      v26 = v10;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      *a4 = [v22 initWithDomain:v18 code:2 userInfo:v19];

      goto LABEL_22;
    }

LABEL_26:
    v11 = 0;
    goto LABEL_24;
  }

  if (!a4)
  {
    v11 = 0;
    goto LABEL_25;
  }

  v15 = objc_alloc(MEMORY[0x1E696ABC0]);
  v16 = *MEMORY[0x1E698F240];
  v27 = *MEMORY[0x1E696A578];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"candidateId"];
  v28[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  v17 = [v15 initWithDomain:v16 code:2 userInfo:v9];
  v11 = 0;
  *a4 = v17;
LABEL_24:

LABEL_25:
  v20 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMFeedbackLearningTupleInteractionCandidateInteraction *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_candidateId)
  {
    PBDataWriterPlaceMark();
    [(BMFeedbackLearningTupleInteractionCandidateIdentifier *)self->_candidateId writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_userAlignment)
  {
    PBDataWriterPlaceMark();
    [(BMIntelligenceFlowUserAlignment *)self->_userAlignment writeTo:v4];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = BMFeedbackLearningTupleInteractionCandidateInteraction;
  v5 = [(BMEventBase *)&v21 init];
  if (!v5)
  {
    goto LABEL_31;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v22) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v22 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v22 & 0x7F) << v7;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        if (v8++ >= 9)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      if ((v14 >> 3) == 2)
      {
        v22 = 0;
        v23 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_30;
        }

        v15 = [[BMIntelligenceFlowUserAlignment alloc] initByReadFrom:v4];
        if (!v15)
        {
          goto LABEL_30;
        }

        v16 = 32;
      }

      else
      {
        if ((v14 >> 3) != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_28;
        }

        v22 = 0;
        v23 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_30;
        }

        v15 = [[BMFeedbackLearningTupleInteractionCandidateIdentifier alloc] initByReadFrom:v4];
        if (!v15)
        {
          goto LABEL_30;
        }

        v16 = 24;
      }

      v17 = *(&v5->super.super.isa + v16);
      *(&v5->super.super.isa + v16) = v15;

      PBReaderRecallMark();
LABEL_28:
      v18 = [v4 position];
    }

    while (v18 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_30:
    v19 = 0;
  }

  else
  {
LABEL_31:
    v19 = v5;
  }

  return v19;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMFeedbackLearningTupleInteractionCandidateInteraction *)self candidateId];
  v5 = [(BMFeedbackLearningTupleInteractionCandidateInteraction *)self userAlignment];
  v6 = [v3 initWithFormat:@"BMFeedbackLearningTupleInteractionCandidateInteraction with candidateId: %@, userAlignment: %@", v4, v5];

  return v6;
}

- (BMFeedbackLearningTupleInteractionCandidateInteraction)initWithCandidateId:(id)a3 userAlignment:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11.receiver = self;
  v11.super_class = BMFeedbackLearningTupleInteractionCandidateInteraction;
  v9 = [(BMEventBase *)&v11 init];
  if (v9)
  {
    v9->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v9->_candidateId, a3);
    objc_storeStrong(&v9->_userAlignment, a4);
  }

  return v9;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"candidateId" number:1 type:14 subMessageClass:objc_opt_class()];
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
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"candidateId_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_68234];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"userAlignment_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_124];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __65__BMFeedbackLearningTupleInteractionCandidateInteraction_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 userAlignment];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __65__BMFeedbackLearningTupleInteractionCandidateInteraction_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 candidateId];
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

    v8 = [[BMFeedbackLearningTupleInteractionCandidateInteraction alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end