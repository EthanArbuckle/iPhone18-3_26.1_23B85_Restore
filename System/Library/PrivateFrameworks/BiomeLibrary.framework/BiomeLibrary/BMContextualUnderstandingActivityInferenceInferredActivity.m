@interface BMContextualUnderstandingActivityInferenceInferredActivity
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMContextualUnderstandingActivityInferenceInferredActivity)initWithActivityType:(int)a3 confidence:(id)a4;
- (BMContextualUnderstandingActivityInferenceInferredActivity)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMContextualUnderstandingActivityInferenceInferredActivity

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMContextualUnderstandingActivityInferenceInferredActivity *)self activityType];
    if (v6 != [v5 activityType])
    {
      goto LABEL_9;
    }

    if (!-[BMContextualUnderstandingActivityInferenceInferredActivity hasConfidence](self, "hasConfidence") && ![v5 hasConfidence])
    {
      v10 = 1;
      goto LABEL_10;
    }

    if (-[BMContextualUnderstandingActivityInferenceInferredActivity hasConfidence](self, "hasConfidence") && [v5 hasConfidence])
    {
      [(BMContextualUnderstandingActivityInferenceInferredActivity *)self confidence];
      v8 = v7;
      [v5 confidence];
      v10 = v8 == v9;
    }

    else
    {
LABEL_9:
      v10 = 0;
    }

LABEL_10:

    goto LABEL_11;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)jsonDictionary
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMContextualUnderstandingActivityInferenceInferredActivity activityType](self, "activityType")}];
  if (![(BMContextualUnderstandingActivityInferenceInferredActivity *)self hasConfidence]|| ([(BMContextualUnderstandingActivityInferenceInferredActivity *)self confidence], fabs(v4) == INFINITY))
  {
    v6 = 0;
  }

  else
  {
    [(BMContextualUnderstandingActivityInferenceInferredActivity *)self confidence];
    v5 = MEMORY[0x1E696AD98];
    [(BMContextualUnderstandingActivityInferenceInferredActivity *)self confidence];
    v6 = [v5 numberWithDouble:?];
  }

  v12[0] = @"activityType";
  v7 = v3;
  if (!v3)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = @"confidence";
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
    if (v3)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v3)
    {
      goto LABEL_11;
    }
  }

LABEL_11:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BMContextualUnderstandingActivityInferenceInferredActivity)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v25[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"activityType"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v7;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v8 = 0;
          v12 = 0;
          goto LABEL_14;
        }

        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        v20 = *MEMORY[0x1E698F240];
        v24 = *MEMORY[0x1E696A578];
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"activityType"];
        v25[0] = v11;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
        v21 = [v19 initWithDomain:v20 code:2 userInfo:v10];
        v8 = 0;
        v12 = 0;
        *a4 = v21;
        goto LABEL_13;
      }

      v9 = [MEMORY[0x1E696AD98] numberWithInt:BMContextualUnderstandingActivityInferenceActivityTypeFromString(v7)];
    }

    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  v10 = [v6 objectForKeyedSubscript:@"confidence"];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v15 = objc_alloc(MEMORY[0x1E696ABC0]);
        v16 = *MEMORY[0x1E698F240];
        v22 = *MEMORY[0x1E696A578];
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"confidence"];
        v23 = v17;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
        *a4 = [v15 initWithDomain:v16 code:2 userInfo:v18];
      }

      v11 = 0;
      v12 = 0;
      goto LABEL_13;
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  self = -[BMContextualUnderstandingActivityInferenceInferredActivity initWithActivityType:confidence:](self, "initWithActivityType:confidence:", [v8 intValue], v11);
  v12 = self;
LABEL_13:

LABEL_14:
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMContextualUnderstandingActivityInferenceInferredActivity *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  activityType = self->_activityType;
  v7 = v4;
  PBDataWriterWriteUint32Field();
  if (self->_hasConfidence)
  {
    confidence = self->_confidence;
    PBDataWriterWriteFloatField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = BMContextualUnderstandingActivityInferenceInferredActivity;
  v5 = [(BMEventBase *)&v28 init];
  if (!v5)
  {
    goto LABEL_43;
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
        LOBYTE(v29) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v29 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v29) & 0x7F) << v7;
        if ((LOBYTE(v29) & 0x80) == 0)
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
        v5->_hasConfidence = 1;
        v29 = 0.0;
        v22 = [v4 position] + 4;
        if (v22 >= [v4 position] && (v23 = objc_msgSend(v4, "position") + 4, v23 <= objc_msgSend(v4, "length")))
        {
          v24 = [v4 data];
          [v24 getBytes:&v29 range:{objc_msgSend(v4, "position"), 4}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_confidence = v29;
      }

      else if ((v14 >> 3) == 1)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          LOBYTE(v29) = 0;
          v18 = [v4 position] + 1;
          if (v18 >= [v4 position] && (v19 = objc_msgSend(v4, "position") + 1, v19 <= objc_msgSend(v4, "length")))
          {
            v20 = [v4 data];
            [v20 getBytes:&v29 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v17 |= (LOBYTE(v29) & 0x7F) << v15;
          if ((LOBYTE(v29) & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          if (v16++ > 8)
          {
            goto LABEL_36;
          }
        }

        if (([v4 hasError] & 1) != 0 || v17 > 3)
        {
LABEL_36:
          LODWORD(v17) = 0;
        }

        v5->_activityType = v17;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_42;
      }

      v25 = [v4 position];
    }

    while (v25 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_42:
    v26 = 0;
  }

  else
  {
LABEL_43:
    v26 = v5;
  }

  return v26;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMContextualUnderstandingActivityInferenceActivityTypeAsString([(BMContextualUnderstandingActivityInferenceInferredActivity *)self activityType]);
  v5 = MEMORY[0x1E696AD98];
  [(BMContextualUnderstandingActivityInferenceInferredActivity *)self confidence];
  v6 = [v5 numberWithDouble:?];
  v7 = [v3 initWithFormat:@"BMContextualUnderstandingActivityInferenceInferredActivity with activityType: %@, confidence: %@", v4, v6];

  return v7;
}

- (BMContextualUnderstandingActivityInferenceInferredActivity)initWithActivityType:(int)a3 confidence:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = BMContextualUnderstandingActivityInferenceInferredActivity;
  v7 = [(BMEventBase *)&v11 init];
  if (v7)
  {
    v7->_dataVersion = [objc_opt_class() latestDataVersion];
    v7->_activityType = a3;
    if (v6)
    {
      v7->_hasConfidence = 1;
      [v6 floatValue];
      v9 = v8;
    }

    else
    {
      v7->_hasConfidence = 0;
      v9 = -1.0;
    }

    v7->_confidence = v9;
  }

  return v7;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"activityType" number:1 type:4 subMessageClass:0];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"confidence" number:2 type:1 subMessageClass:0];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"activityType" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"confidence" dataType:1 requestOnly:0 fieldNumber:2 protoDataType:1 convertedType:0];
  v7[0] = v2;
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

    v8 = [[BMContextualUnderstandingActivityInferenceInferredActivity alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end