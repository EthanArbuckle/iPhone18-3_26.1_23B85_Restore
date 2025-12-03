@interface BMFeedbackEvaluationResponse
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMFeedbackEvaluationResponse)initWithEvaluationUuid:(id)uuid userResponse:(int)response;
- (BMFeedbackEvaluationResponse)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (NSUUID)evaluationUuid;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    evaluationUuid = [(BMFeedbackEvaluationResponse *)self evaluationUuid];
    evaluationUuid2 = [v5 evaluationUuid];
    v8 = evaluationUuid2;
    if (evaluationUuid == evaluationUuid2)
    {
    }

    else
    {
      evaluationUuid3 = [(BMFeedbackEvaluationResponse *)self evaluationUuid];
      evaluationUuid4 = [v5 evaluationUuid];
      v11 = [evaluationUuid3 isEqual:evaluationUuid4];

      if (!v11)
      {
        v12 = 0;
LABEL_8:

        goto LABEL_9;
      }
    }

    userResponse = [(BMFeedbackEvaluationResponse *)self userResponse];
    v12 = userResponse == [v5 userResponse];
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
  evaluationUuid = [(BMFeedbackEvaluationResponse *)self evaluationUuid];
  uUIDString = [evaluationUuid UUIDString];

  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMFeedbackEvaluationResponse userResponse](self, "userResponse")}];
  v11[0] = @"evaluationUuid";
  null = uUIDString;
  if (!uUIDString)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = @"userResponse";
  v12[0] = null;
  null2 = v5;
  if (!v5)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = null2;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (v5)
  {
    if (uUIDString)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (uUIDString)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BMFeedbackEvaluationResponse)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v32[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"evaluationUuid"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"userResponse"];
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
          if (error)
          {
            v20 = objc_alloc(MEMORY[0x1E696ABC0]);
            v21 = *MEMORY[0x1E698F240];
            v27 = *MEMORY[0x1E696A578];
            v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"userResponse"];
            v28 = v22;
            v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
            *error = [v20 initWithDomain:v21 code:2 userInfo:v23];
          }

          v10 = 0;
          selfCopy = 0;
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
    selfCopy = self;
LABEL_18:

    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!error)
    {
      selfCopy = 0;
      goto LABEL_21;
    }

    v14 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E698F240];
    v29 = *MEMORY[0x1E696A578];
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"evaluationUuid"];
    v30 = v8;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v16 = [v14 initWithDomain:v15 code:2 userInfo:v10];
    selfCopy = 0;
    *error = v16;
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

  if (!error)
  {
    selfCopy = 0;
    goto LABEL_20;
  }

  v24 = objc_alloc(MEMORY[0x1E696ABC0]);
  v25 = *MEMORY[0x1E698F240];
  v31 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"evaluationUuid"];
  v32[0] = v10;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  *error = [v24 initWithDomain:v25 code:2 userInfo:v26];

  selfCopy = 0;
LABEL_19:

LABEL_20:
LABEL_21:

  v18 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMFeedbackEvaluationResponse *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_raw_evaluationUuid)
  {
    PBDataWriterWriteDataField();
  }

  userResponse = self->_userResponse;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v27.receiver = self;
  v27.super_class = BMFeedbackEvaluationResponse;
  v5 = [(BMEventBase *)&v27 init];
  if (!v5)
  {
    goto LABEL_40;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v28 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v28 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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
          v18 = [fromCopy position] + 1;
          if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 1, v19 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v28 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        if (([fromCopy hasError] & 1) != 0 || v17 > 7)
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

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  evaluationUuid = [(BMFeedbackEvaluationResponse *)self evaluationUuid];
  v5 = BMFeedbackEvaluationResponseUserResponseAsString([(BMFeedbackEvaluationResponse *)self userResponse]);
  v6 = [v3 initWithFormat:@"BMFeedbackEvaluationResponse with evaluationUuid: %@, userResponse: %@", evaluationUuid, v5];

  return v6;
}

- (BMFeedbackEvaluationResponse)initWithEvaluationUuid:(id)uuid userResponse:(int)response
{
  v13[2] = *MEMORY[0x1E69E9840];
  uuidCopy = uuid;
  v12.receiver = self;
  v12.super_class = BMFeedbackEvaluationResponse;
  v7 = [(BMEventBase *)&v12 init];
  if (v7)
  {
    v7->_dataVersion = [objc_opt_class() latestDataVersion];
    if (uuidCopy)
    {
      v13[0] = 0;
      v13[1] = 0;
      [uuidCopy getUUIDBytes:v13];
      v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v13 length:16];
      raw_evaluationUuid = v7->_raw_evaluationUuid;
      v7->_raw_evaluationUuid = v8;
    }

    else
    {
      raw_evaluationUuid = v7->_raw_evaluationUuid;
      v7->_raw_evaluationUuid = 0;
    }

    v7->_userResponse = response;
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