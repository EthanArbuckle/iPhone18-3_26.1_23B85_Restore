@interface BMFeedbackLearningUserInteraction
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMFeedbackLearningUserInteraction)initWithJSONDictionary:(id)a3 error:(id *)p_isa;
- (BMFeedbackLearningUserInteraction)initWithTupleInteraction:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMFeedbackLearningUserInteraction

+ (id)columns
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"tupleInteraction_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_19115];
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
    v6 = [(BMFeedbackLearningUserInteraction *)self tupleInteraction];
    v7 = [v5 tupleInteraction];
    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      v8 = [(BMFeedbackLearningUserInteraction *)self tupleInteraction];
      v9 = [v5 tupleInteraction];
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
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [(BMFeedbackLearningUserInteraction *)self tupleInteraction];
  v3 = [v2 jsonDictionary];

  v8 = @"tupleInteraction";
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  if (!v3)
  {
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BMFeedbackLearningUserInteraction)initWithJSONDictionary:(id)a3 error:(id *)p_isa
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = [a3 objectForKeyedSubscript:@"tupleInteraction"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
LABEL_4:
    self = [(BMFeedbackLearningUserInteraction *)self initWithTupleInteraction:v7];
    p_isa = &self->super.super.isa;
LABEL_13:

    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v15 = 0;
    v7 = [[BMFeedbackLearningTupleInteraction alloc] initWithJSONDictionary:v8 error:&v15];
    v9 = v15;
    if (!v9)
    {

      goto LABEL_4;
    }

    if (p_isa)
    {
      v9 = v9;
      *p_isa = v9;
    }

LABEL_12:
    p_isa = 0;
    goto LABEL_13;
  }

  if (p_isa)
  {
    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v11 = *MEMORY[0x1E698F240];
    v16 = *MEMORY[0x1E696A578];
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"tupleInteraction"];
    v17[0] = v7;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *p_isa = [v10 initWithDomain:v11 code:2 userInfo:v12];

    goto LABEL_12;
  }

LABEL_14:

  v13 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMFeedbackLearningUserInteraction *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_tupleInteraction)
  {
    v4 = a3;
    PBDataWriterPlaceMark();
    [(BMFeedbackLearningTupleInteraction *)self->_tupleInteraction writeTo:v4];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = BMFeedbackLearningUserInteraction;
  v5 = [(BMEventBase *)&v20 init];
  if (!v5)
  {
    goto LABEL_26;
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
        LOBYTE(v21[0]) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:v21 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v21[0] & 0x7F) << v7;
        if ((v21[0] & 0x80) == 0)
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

      if ((v14 >> 3) == 1)
      {
        v21[0] = 0;
        v21[1] = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_25;
        }

        v15 = [[BMFeedbackLearningTupleInteraction alloc] initByReadFrom:v4];
        if (!v15)
        {
          goto LABEL_25;
        }

        tupleInteraction = v5->_tupleInteraction;
        v5->_tupleInteraction = v15;

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_25;
      }

      v17 = [v4 position];
    }

    while (v17 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_25:
    v18 = 0;
  }

  else
  {
LABEL_26:
    v18 = v5;
  }

  return v18;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMFeedbackLearningUserInteraction *)self tupleInteraction];
  v5 = [v3 initWithFormat:@"BMFeedbackLearningUserInteraction with tupleInteraction: %@", v4];

  return v5;
}

- (BMFeedbackLearningUserInteraction)initWithTupleInteraction:(id)a3
{
  v5 = a3;
  v8.receiver = self;
  v8.super_class = BMFeedbackLearningUserInteraction;
  v6 = [(BMEventBase *)&v8 init];
  if (v6)
  {
    v6->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v6->_tupleInteraction, a3);
  }

  return v6;
}

+ (id)protoFields
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tupleInteraction" number:1 type:14 subMessageClass:objc_opt_class()];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

id __44__BMFeedbackLearningUserInteraction_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 tupleInteraction];
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

    v8 = [[BMFeedbackLearningUserInteraction alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end