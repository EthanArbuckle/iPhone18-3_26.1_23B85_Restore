@interface BMFeedbackEvaluationResponse
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMFeedbackEvaluationResponse)initWithEvaluationUuid:(id)a3 userResponse:(int)a4;
- (BMFeedbackEvaluationResponse)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (NSUUID)evaluationUuid;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMFeedbackEvaluationResponse

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"evaluationUuid" dataType:6 requestOnly:0 fieldNumber:1 protoDataType:14 convertedType:3];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userResponse" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
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
    v6 = [(BMFeedbackEvaluationResponse *)self evaluationUuid];
    v7 = [v5 evaluationUuid];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMFeedbackEvaluationResponse *)self evaluationUuid];
      v10 = [v5 evaluationUuid];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        v12 = 0;
LABEL_8:

        goto LABEL_9;
      }
    }

    v13 = [(BMFeedbackEvaluationResponse *)self userResponse];
    v12 = v13 == [v5 userResponse];
    goto LABEL_8;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (NSUUID)evaluationUuid
{
  raw_evaluationUuid = self->_raw_evaluationUuid;
  if (raw_evaluationUuid)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_evaluationUuid toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = [(BMFeedbackEvaluationResponse *)self evaluationUuid];
  v4 = [v3 UUIDString];

  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMFeedbackEvaluationResponse userResponse](self, "userResponse")}];
  v11[0] = @"evaluationUuid";
  v6 = v4;
  if (!v4)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = @"userResponse";
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

- (BMFeedbackEvaluationResponse)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v32[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"evaluationUuid"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"userResponse"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v9;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (a4)
          {
            v20 = objc_alloc(MEMORY[0x1E696ABC0]);
            v21 = *MEMORY[0x1E698F240];
            v27 = *MEMORY[0x1E696A578];
            v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"userResponse"];
            v28 = v22;
            v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
            *a4 = [v20 initWithDomain:v21 code:2 userInfo:v23];
          }

          v10 = 0;
          v17 = 0;
          goto LABEL_18;
        }

        v13 = [MEMORY[0x1E696AD98] numberWithInt:BMFeedbackEvaluationResponseUserResponseFromString(v9)];
      }

      v10 = v13;
    }

    else
    {
      v10 = 0;
    }

    self = -[BMFeedbackEvaluationResponse initWithEvaluationUuid:userResponse:](self, "initWithEvaluationUuid:userResponse:", v8, [v10 intValue]);
    v17 = self;
LABEL_18:

    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!a4)
    {
      v17 = 0;
      goto LABEL_21;
    }

    v14 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E698F240];
    v29 = *MEMORY[0x1E696A578];
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"evaluationUuid"];
    v30 = v8;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v16 = [v14 initWithDomain:v15 code:2 userInfo:v10];
    v17 = 0;
    *a4 = v16;
    goto LABEL_19;
  }

  v8 = v7;
  v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v8];
  if (v11)
  {
    v12 = v11;

    v8 = v12;
    goto LABEL_4;
  }

  if (!a4)
  {
    v17 = 0;
    goto LABEL_20;
  }

  v24 = objc_alloc(MEMORY[0x1E696ABC0]);
  v25 = *MEMORY[0x1E698F240];
  v31 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"evaluationUuid"];
  v32[0] = v10;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  *a4 = [v24 initWithDomain:v25 code:2 userInfo:v26];

  v17 = 0;
LABEL_19:

LABEL_20:
LABEL_21:

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMFeedbackEvaluationResponse *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  if (self->_raw_evaluationUuid)
  {
    PBDataWriterWriteDataField();
  }

  userResponse = self->_userResponse;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = BMFeedbackEvaluationResponse;
  v5 = [(BMEventBase *)&v27 init];
  if (!v5)
  {
    goto LABEL_40;
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
        v28 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v28 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v28 & 0x7F) << v7;
        if ((v28 & 0x80) == 0)
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
        v22 = PBReaderReadData();
        if ([(NSData *)v22 length]!= 16)
        {

          goto LABEL_39;
        }

        raw_evaluationUuid = v5->_raw_evaluationUuid;
        v5->_raw_evaluationUuid = v22;
      }

      else if ((v14 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          v28 = 0;
          v18 = [v4 position] + 1;
          if (v18 >= [v4 position] && (v19 = objc_msgSend(v4, "position") + 1, v19 <= objc_msgSend(v4, "length")))
          {
            v20 = [v4 data];
            [v20 getBytes:&v28 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v17 |= (v28 & 0x7F) << v15;
          if ((v28 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          if (v16++ > 8)
          {
            goto LABEL_35;
          }
        }

        if (([v4 hasError] & 1) != 0 || v17 > 7)
        {
LABEL_35:
          LODWORD(v17) = 0;
        }

        v5->_userResponse = v17;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_39;
      }

      v24 = [v4 position];
    }

    while (v24 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_39:
    v25 = 0;
  }

  else
  {
LABEL_40:
    v25 = v5;
  }

  return v25;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMFeedbackEvaluationResponse *)self evaluationUuid];
  v5 = BMFeedbackEvaluationResponseUserResponseAsString([(BMFeedbackEvaluationResponse *)self userResponse]);
  v6 = [v3 initWithFormat:@"BMFeedbackEvaluationResponse with evaluationUuid: %@, userResponse: %@", v4, v5];

  return v6;
}

- (BMFeedbackEvaluationResponse)initWithEvaluationUuid:(id)a3 userResponse:(int)a4
{
  v13[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v12.receiver = self;
  v12.super_class = BMFeedbackEvaluationResponse;
  v7 = [(BMEventBase *)&v12 init];
  if (v7)
  {
    v7->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v6)
    {
      v13[0] = 0;
      v13[1] = 0;
      [v6 getUUIDBytes:v13];
      v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v13 length:16];
      raw_evaluationUuid = v7->_raw_evaluationUuid;
      v7->_raw_evaluationUuid = v8;
    }

    else
    {
      raw_evaluationUuid = v7->_raw_evaluationUuid;
      v7->_raw_evaluationUuid = 0;
    }

    v7->_userResponse = a4;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"evaluationUuid" number:1 type:14 subMessageClass:0];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userResponse" number:2 type:4 subMessageClass:0];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

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

    v8 = [[BMFeedbackEvaluationResponse alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[6] = 0;
    }
  }

  return v4;
}

@end