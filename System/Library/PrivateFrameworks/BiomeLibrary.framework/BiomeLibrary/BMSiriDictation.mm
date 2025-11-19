@interface BMSiriDictation
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriDictation)initWithAbsoluteTimestamp:(id)a3 recognizedText:(id)a4 correctedText:(id)a5;
- (BMSiriDictation)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriDictation

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:1];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"recognizedText" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"correctedText" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSiriDictation *)self absoluteTimestamp];
    v7 = [v5 absoluteTimestamp];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSiriDictation *)self absoluteTimestamp];
      v10 = [v5 absoluteTimestamp];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v13 = [(BMSiriDictation *)self recognizedText];
    v14 = [v5 recognizedText];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMSiriDictation *)self recognizedText];
      v17 = [v5 recognizedText];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    v19 = [(BMSiriDictation *)self correctedText];
    v20 = [v5 correctedText];
    if (v19 == v20)
    {
      v12 = 1;
    }

    else
    {
      v21 = [(BMSiriDictation *)self correctedText];
      v22 = [v5 correctedText];
      v12 = [v21 isEqual:v22];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (NSDate)absoluteTimestamp
{
  if (self->_hasRaw_absoluteTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_absoluteTimestamp];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v16[3] = *MEMORY[0x1E69E9840];
  v3 = [(BMSiriDictation *)self absoluteTimestamp];
  if (v3)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(BMSiriDictation *)self absoluteTimestamp];
    [v5 timeIntervalSinceReferenceDate];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(BMSiriDictation *)self recognizedText];
  v8 = [(BMSiriDictation *)self correctedText];
  v15[0] = @"absoluteTimestamp";
  v9 = v6;
  if (!v6)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = v9;
  v15[1] = @"recognizedText";
  v10 = v7;
  if (!v7)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = v10;
  v15[2] = @"correctedText";
  v11 = v8;
  if (!v8)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  if (v8)
  {
    if (v7)
    {
      goto LABEL_12;
    }

LABEL_17:

    if (v6)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (!v7)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (v6)
  {
    goto LABEL_13;
  }

LABEL_18:

LABEL_13:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BMSiriDictation)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v37[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"absoluteTimestamp"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_9:
    v16 = [v6 objectForKeyedSubscript:@"recognizedText"];
    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v17 = 0;
          v20 = 0;
          goto LABEL_17;
        }

        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v34 = *MEMORY[0x1E696A578];
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"recognizedText"];
        v35 = v19;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        v24 = [v30 initWithDomain:v23 code:2 userInfo:v18];
        v17 = 0;
        v20 = 0;
        *a4 = v24;
        goto LABEL_16;
      }

      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = [v6 objectForKeyedSubscript:@"correctedText"];
    if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v31 = objc_alloc(MEMORY[0x1E696ABC0]);
          v29 = *MEMORY[0x1E698F240];
          v32 = *MEMORY[0x1E696A578];
          v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"correctedText"];
          v33 = v25;
          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
          *a4 = [v31 initWithDomain:v29 code:2 userInfo:v26];
        }

        v19 = 0;
        v20 = 0;
        goto LABEL_16;
      }

      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    self = [(BMSiriDictation *)self initWithAbsoluteTimestamp:v8 recognizedText:v17 correctedText:v19];
    v20 = self;
LABEL_16:

    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = MEMORY[0x1E695DF00];
    v10 = v7;
    v11 = [v9 alloc];
    [v10 doubleValue];
    v13 = v12;

    v14 = [v11 initWithTimeIntervalSinceReferenceDate:v13];
LABEL_6:
    v8 = v14;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = objc_alloc_init(MEMORY[0x1E696AC80]);
    v8 = [v15 dateFromString:v7];

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v7;
    goto LABEL_6;
  }

  if (!a4)
  {
    v8 = 0;
    v20 = 0;
    goto LABEL_18;
  }

  v27 = objc_alloc(MEMORY[0x1E696ABC0]);
  v28 = *MEMORY[0x1E698F240];
  v36 = *MEMORY[0x1E696A578];
  v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
  v37[0] = v17;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
  v8 = 0;
  v20 = 0;
  *a4 = [v27 initWithDomain:v28 code:2 userInfo:v16];
LABEL_17:

LABEL_18:
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriDictation *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }

  if (self->_recognizedText)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_correctedText)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = BMSiriDictation;
  v5 = [(BMEventBase *)&v25 init];
  if (!v5)
  {
    goto LABEL_34;
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
        LOBYTE(v26) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v26 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v26) & 0x7F) << v7;
        if ((LOBYTE(v26) & 0x80) == 0)
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

      v15 = v14 >> 3;
      if ((v14 >> 3) == 3)
      {
        v18 = PBReaderReadString();
        v19 = 48;
      }

      else
      {
        if (v15 != 2)
        {
          if (v15 == 1)
          {
            v5->_hasRaw_absoluteTimestamp = 1;
            v26 = 0.0;
            v16 = [v4 position] + 8;
            if (v16 >= [v4 position] && (v17 = objc_msgSend(v4, "position") + 8, v17 <= objc_msgSend(v4, "length")))
            {
              v21 = [v4 data];
              [v21 getBytes:&v26 range:{objc_msgSend(v4, "position"), 8}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
            }

            else
            {
              [v4 _setError];
            }

            v5->_raw_absoluteTimestamp = v26;
          }

          else if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_33;
          }

          goto LABEL_31;
        }

        v18 = PBReaderReadString();
        v19 = 40;
      }

      v20 = *(&v5->super.super.isa + v19);
      *(&v5->super.super.isa + v19) = v18;

LABEL_31:
      v22 = [v4 position];
    }

    while (v22 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_33:
    v23 = 0;
  }

  else
  {
LABEL_34:
    v23 = v5;
  }

  return v23;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMSiriDictation *)self absoluteTimestamp];
  v5 = [(BMSiriDictation *)self recognizedText];
  v6 = [(BMSiriDictation *)self correctedText];
  v7 = [v3 initWithFormat:@"BMSiriDictation with absoluteTimestamp: %@, recognizedText: %@, correctedText: %@", v4, v5, v6];

  return v7;
}

- (BMSiriDictation)initWithAbsoluteTimestamp:(id)a3 recognizedText:(id)a4 correctedText:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = BMSiriDictation;
  v11 = [(BMEventBase *)&v14 init];
  if (v11)
  {
    v11->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v8)
    {
      v11->_hasRaw_absoluteTimestamp = 1;
      [v8 timeIntervalSinceReferenceDate];
    }

    else
    {
      v11->_hasRaw_absoluteTimestamp = 0;
      v12 = -1.0;
    }

    v11->_raw_absoluteTimestamp = v12;
    objc_storeStrong(&v11->_recognizedText, a4);
    objc_storeStrong(&v11->_correctedText, a5);
  }

  return v11;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:1 type:0 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"recognizedText" number:2 type:13 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"correctedText" number:3 type:13 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    v5 = a3;
    v6 = [[v4 alloc] initWithData:v5];

    v7 = [[BMSiriDictation alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[8] = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end