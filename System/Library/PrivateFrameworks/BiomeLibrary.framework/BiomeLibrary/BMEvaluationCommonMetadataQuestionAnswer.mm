@interface BMEvaluationCommonMetadataQuestionAnswer
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMEvaluationCommonMetadataQuestionAnswer)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMEvaluationCommonMetadataQuestionAnswer)initWithQuestion:(id)a3 answer:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_answerJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMEvaluationCommonMetadataQuestionAnswer

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMEvaluationCommonMetadataQuestionAnswer *)self question];
    v7 = [v5 question];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMEvaluationCommonMetadataQuestionAnswer *)self question];
      v10 = [v5 question];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        v12 = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    v13 = [(BMEvaluationCommonMetadataQuestionAnswer *)self answer];
    v14 = [v5 answer];
    if (v13 == v14)
    {
      v12 = 1;
    }

    else
    {
      v15 = [(BMEvaluationCommonMetadataQuestionAnswer *)self answer];
      v16 = [v5 answer];
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
  v3 = [(BMEvaluationCommonMetadataQuestionAnswer *)self question];
  v4 = [(BMEvaluationCommonMetadataQuestionAnswer *)self _answerJSONArray];
  v10[0] = @"question";
  v5 = v3;
  if (!v3)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"answer";
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

- (id)_answerJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMEvaluationCommonMetadataQuestionAnswer *)self answer];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMEvaluationCommonMetadataQuestionAnswer)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v54[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"question"];
  v41 = v6;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = *MEMORY[0x1E698F240];
        v53 = *MEMORY[0x1E696A578];
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"question"];
        v54[0] = v9;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
        v32 = [v30 initWithDomain:v31 code:2 userInfo:v14];
        v8 = 0;
        v20 = 0;
        *a4 = v32;
        goto LABEL_27;
      }

      v8 = 0;
      v20 = 0;
      goto LABEL_29;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 objectForKeyedSubscript:@"answer"];
  v10 = [MEMORY[0x1E695DFB0] null];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    v12 = v7;
    v13 = v8;
    v40 = a4;

    v9 = 0;
LABEL_9:
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v9 = v9;
    v15 = [v9 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (!v15)
    {
      goto LABEL_18;
    }

    v16 = v15;
    v17 = *v43;
    v39 = self;
LABEL_11:
    v18 = 0;
    while (1)
    {
      if (*v43 != v17)
      {
        objc_enumerationMutation(v9);
      }

      v19 = *(*(&v42 + 1) + 8 * v18);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v21 = v40;
        v8 = v13;
        v7 = v12;
        if (v40)
        {
          v27 = objc_alloc(MEMORY[0x1E696ABC0]);
          v23 = *MEMORY[0x1E698F240];
          v46 = *MEMORY[0x1E696A578];
          v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"answer"];
          v47 = v24;
          v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
          v26 = v27;
LABEL_25:
          *v21 = [v26 initWithDomain:v23 code:2 userInfo:v25];
        }

        goto LABEL_26;
      }

      [v14 addObject:v19];
      if (v16 == ++v18)
      {
        v16 = [v9 countByEnumeratingWithState:&v42 objects:v50 count:16];
        self = v39;
        if (v16)
        {
          goto LABEL_11;
        }

LABEL_18:

        v8 = v13;
        self = [(BMEvaluationCommonMetadataQuestionAnswer *)self initWithQuestion:v13 answer:v14];
        v20 = self;
        v7 = v12;
LABEL_27:

        goto LABEL_28;
      }
    }

    v21 = v40;
    v8 = v13;
    v7 = v12;
    if (v40)
    {
      v22 = objc_alloc(MEMORY[0x1E696ABC0]);
      v23 = *MEMORY[0x1E698F240];
      v48 = *MEMORY[0x1E696A578];
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"answer"];
      v49 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v26 = v22;
      goto LABEL_25;
    }

LABEL_26:

    v20 = 0;
    self = v39;
    goto LABEL_27;
  }

  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = v7;
    v13 = v8;
    v40 = a4;
    goto LABEL_9;
  }

  if (a4)
  {
    v33 = objc_alloc(MEMORY[0x1E696ABC0]);
    v34 = a4;
    v35 = self;
    v36 = *MEMORY[0x1E698F240];
    v51 = *MEMORY[0x1E696A578];
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"answer"];
    v52 = v14;
    v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    v38 = v36;
    self = v35;
    *v34 = [v33 initWithDomain:v38 code:2 userInfo:v37];

    v20 = 0;
    goto LABEL_27;
  }

  v20 = 0;
LABEL_28:
  v6 = v41;

LABEL_29:
  v28 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMEvaluationCommonMetadataQuestionAnswer *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_question)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_answer;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = BMEvaluationCommonMetadataQuestionAnswer;
  v5 = [(BMEventBase *)&v25 init];
  if (!v5)
  {
    goto LABEL_28;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_26;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v26 = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:&v26 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v26 & 0x7F) << v8;
        if ((v26 & 0x80) == 0)
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
        goto LABEL_26;
      }

      if ((v15 >> 3) == 2)
      {
        break;
      }

      if ((v15 >> 3) == 1)
      {
        v16 = PBReaderReadString();
        question = v5->_question;
        v5->_question = v16;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
LABEL_30:

        goto LABEL_27;
      }

LABEL_25:
      v19 = [v4 position];
      if (v19 >= [v4 length])
      {
        goto LABEL_26;
      }
    }

    v18 = PBReaderReadString();
    if (!v18)
    {
      goto LABEL_30;
    }

    question = v18;
    [v6 addObject:v18];
    goto LABEL_23;
  }

LABEL_26:
  v20 = [v6 copy];
  answer = v5->_answer;
  v5->_answer = v20;

  v22 = [v4 hasError];
  if (v22)
  {
LABEL_27:
    v23 = 0;
  }

  else
  {
LABEL_28:
    v23 = v5;
  }

  return v23;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMEvaluationCommonMetadataQuestionAnswer *)self question];
  v5 = [(BMEvaluationCommonMetadataQuestionAnswer *)self answer];
  v6 = [v3 initWithFormat:@"BMEvaluationCommonMetadataQuestionAnswer with question: %@, answer: %@", v4, v5];

  return v6;
}

- (BMEvaluationCommonMetadataQuestionAnswer)initWithQuestion:(id)a3 answer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11.receiver = self;
  v11.super_class = BMEvaluationCommonMetadataQuestionAnswer;
  v9 = [(BMEventBase *)&v11 init];
  if (v9)
  {
    v9->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v9->_question, a3);
    objc_storeStrong(&v9->_answer, a4);
  }

  return v9;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"question" number:1 type:13 subMessageClass:0];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"answer" number:2 type:13 subMessageClass:0];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"question" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"answer_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_312];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __51__BMEvaluationCommonMetadataQuestionAnswer_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _answerJSONArray];
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

    v8 = [[BMEvaluationCommonMetadataQuestionAnswer alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end