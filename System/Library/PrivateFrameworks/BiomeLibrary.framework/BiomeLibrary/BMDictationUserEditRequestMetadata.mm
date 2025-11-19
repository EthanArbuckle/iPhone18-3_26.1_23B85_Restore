@interface BMDictationUserEditRequestMetadata
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMDictationUserEditRequestMetadata)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMDictationUserEditRequestMetadata)initWithTask:(id)a3 language:(id)a4 sampling_rate:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMDictationUserEditRequestMetadata

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMDictationUserEditRequestMetadata *)self task];
    v7 = [v5 task];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMDictationUserEditRequestMetadata *)self task];
      v10 = [v5 task];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_16;
      }
    }

    v13 = [(BMDictationUserEditRequestMetadata *)self language];
    v14 = [v5 language];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMDictationUserEditRequestMetadata *)self language];
      v17 = [v5 language];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_16;
      }
    }

    if (!-[BMDictationUserEditRequestMetadata hasSampling_rate](self, "hasSampling_rate") && ![v5 hasSampling_rate])
    {
      v12 = 1;
      goto LABEL_17;
    }

    if (-[BMDictationUserEditRequestMetadata hasSampling_rate](self, "hasSampling_rate") && [v5 hasSampling_rate])
    {
      v19 = [(BMDictationUserEditRequestMetadata *)self sampling_rate];
      v12 = v19 == [v5 sampling_rate];
LABEL_17:

      goto LABEL_18;
    }

LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  v12 = 0;
LABEL_18:

  return v12;
}

- (id)jsonDictionary
{
  v13[3] = *MEMORY[0x1E69E9840];
  v3 = [(BMDictationUserEditRequestMetadata *)self task];
  v4 = [(BMDictationUserEditRequestMetadata *)self language];
  if ([(BMDictationUserEditRequestMetadata *)self hasSampling_rate])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDictationUserEditRequestMetadata sampling_rate](self, "sampling_rate")}];
  }

  else
  {
    v5 = 0;
  }

  v12[0] = @"task";
  v6 = v3;
  if (!v3)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v6;
  v12[1] = @"language";
  v7 = v4;
  if (!v4)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v7;
  v12[2] = @"sampling_rate";
  v8 = v5;
  if (!v5)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (v5)
  {
    if (v4)
    {
      goto LABEL_12;
    }

LABEL_17:

    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (!v4)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (v3)
  {
    goto LABEL_13;
  }

LABEL_18:

LABEL_13:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BMDictationUserEditRequestMetadata)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"task"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"language"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v10 = 0;
          v13 = 0;
          goto LABEL_12;
        }

        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v18 = *MEMORY[0x1E698F240];
        v27 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"language"];
        v28 = v12;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v19 = [v23 initWithDomain:v18 code:2 userInfo:v11];
        v10 = 0;
        v13 = 0;
        *a4 = v19;
        goto LABEL_11;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"sampling_rate"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v24 = objc_alloc(MEMORY[0x1E696ABC0]);
          v22 = *MEMORY[0x1E698F240];
          v25 = *MEMORY[0x1E696A578];
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"sampling_rate"];
          v26 = v20;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
          *a4 = [v24 initWithDomain:v22 code:2 userInfo:v21];
        }

        v12 = 0;
        v13 = 0;
        goto LABEL_11;
      }

      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    self = [(BMDictationUserEditRequestMetadata *)self initWithTask:v8 language:v10 sampling_rate:v12];
    v13 = self;
LABEL_11:

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!a4)
  {
    v8 = 0;
    v13 = 0;
    goto LABEL_13;
  }

  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E698F240];
  v29 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"task"];
  v30[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v8 = 0;
  v13 = 0;
  *a4 = [v16 initWithDomain:v17 code:2 userInfo:v9];
LABEL_12:

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDictationUserEditRequestMetadata *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_task)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_language)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_hasSampling_rate)
  {
    sampling_rate = self->_sampling_rate;
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = BMDictationUserEditRequestMetadata;
  v5 = [(BMEventBase *)&v29 init];
  if (!v5)
  {
    goto LABEL_42;
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
        v30 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v30 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v30 & 0x7F) << v7;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
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
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v5->_hasSampling_rate = 1;
        while (1)
        {
          v30 = 0;
          v22 = [v4 position] + 1;
          if (v22 >= [v4 position] && (v23 = objc_msgSend(v4, "position") + 1, v23 <= objc_msgSend(v4, "length")))
          {
            v24 = [v4 data];
            [v24 getBytes:&v30 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v21 |= (v30 & 0x7F) << v19;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v13 = v20++ >= 9;
          if (v13)
          {
            v25 = 0;
            goto LABEL_38;
          }
        }

        if ([v4 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v21;
        }

LABEL_38:
        v5->_sampling_rate = v25;
      }

      else
      {
        if (v15 == 2)
        {
          v16 = PBReaderReadString();
          v17 = 40;
        }

        else
        {
          if (v15 != 1)
          {
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_41;
            }

            goto LABEL_39;
          }

          v16 = PBReaderReadString();
          v17 = 32;
        }

        v18 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;
      }

LABEL_39:
      v26 = [v4 position];
    }

    while (v26 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_41:
    v27 = 0;
  }

  else
  {
LABEL_42:
    v27 = v5;
  }

  return v27;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMDictationUserEditRequestMetadata *)self task];
  v5 = [(BMDictationUserEditRequestMetadata *)self language];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDictationUserEditRequestMetadata sampling_rate](self, "sampling_rate")}];
  v7 = [v3 initWithFormat:@"BMDictationUserEditRequestMetadata with task: %@, language: %@, sampling_rate: %@", v4, v5, v6];

  return v7;
}

- (BMDictationUserEditRequestMetadata)initWithTask:(id)a3 language:(id)a4 sampling_rate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = BMDictationUserEditRequestMetadata;
  v12 = [(BMEventBase *)&v15 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_task, a3);
    objc_storeStrong(&v12->_language, a4);
    if (v11)
    {
      v12->_hasSampling_rate = 1;
      v13 = [v11 unsignedIntValue];
    }

    else
    {
      v13 = 0;
      v12->_hasSampling_rate = 0;
    }

    v12->_sampling_rate = v13;
  }

  return v12;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"task" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"language" number:2 type:13 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sampling_rate" number:3 type:4 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"task" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"language" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sampling_rate" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

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

    v8 = [[BMDictationUserEditRequestMetadata alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end