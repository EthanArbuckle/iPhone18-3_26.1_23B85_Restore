@interface BMPersonalizedSensingMomentsContextMomentsContextFetchOptions
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMPersonalizedSensingMomentsContextMomentsContextFetchOptions)initWithContextFormat:(id)format contextRetrieval:(id)retrieval contextCount:(id)count;
- (BMPersonalizedSensingMomentsContextMomentsContextFetchOptions)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMPersonalizedSensingMomentsContextMomentsContextFetchOptions

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMPersonalizedSensingMomentsContextMomentsContextFetchOptions hasContextFormat](self, "hasContextFormat") || [v5 hasContextFormat])
    {
      if (![(BMPersonalizedSensingMomentsContextMomentsContextFetchOptions *)self hasContextFormat])
      {
        goto LABEL_18;
      }

      if (![v5 hasContextFormat])
      {
        goto LABEL_18;
      }

      contextFormat = [(BMPersonalizedSensingMomentsContextMomentsContextFetchOptions *)self contextFormat];
      if (contextFormat != [v5 contextFormat])
      {
        goto LABEL_18;
      }
    }

    if (-[BMPersonalizedSensingMomentsContextMomentsContextFetchOptions hasContextRetrieval](self, "hasContextRetrieval") || [v5 hasContextRetrieval])
    {
      if (![(BMPersonalizedSensingMomentsContextMomentsContextFetchOptions *)self hasContextRetrieval])
      {
        goto LABEL_18;
      }

      if (![v5 hasContextRetrieval])
      {
        goto LABEL_18;
      }

      contextRetrieval = [(BMPersonalizedSensingMomentsContextMomentsContextFetchOptions *)self contextRetrieval];
      if (contextRetrieval != [v5 contextRetrieval])
      {
        goto LABEL_18;
      }
    }

    if (!-[BMPersonalizedSensingMomentsContextMomentsContextFetchOptions hasContextCount](self, "hasContextCount") && ![v5 hasContextCount])
    {
      v9 = 1;
      goto LABEL_19;
    }

    if (-[BMPersonalizedSensingMomentsContextMomentsContextFetchOptions hasContextCount](self, "hasContextCount") && [v5 hasContextCount])
    {
      contextCount = [(BMPersonalizedSensingMomentsContextMomentsContextFetchOptions *)self contextCount];
      v9 = contextCount == [v5 contextCount];
    }

    else
    {
LABEL_18:
      v9 = 0;
    }

LABEL_19:

    goto LABEL_20;
  }

  v9 = 0;
LABEL_20:

  return v9;
}

- (id)jsonDictionary
{
  v13[3] = *MEMORY[0x1E69E9840];
  if ([(BMPersonalizedSensingMomentsContextMomentsContextFetchOptions *)self hasContextFormat])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPersonalizedSensingMomentsContextMomentsContextFetchOptions contextFormat](self, "contextFormat")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMPersonalizedSensingMomentsContextMomentsContextFetchOptions *)self hasContextRetrieval])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPersonalizedSensingMomentsContextMomentsContextFetchOptions contextRetrieval](self, "contextRetrieval")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMPersonalizedSensingMomentsContextMomentsContextFetchOptions *)self hasContextCount])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPersonalizedSensingMomentsContextMomentsContextFetchOptions contextCount](self, "contextCount")}];
  }

  else
  {
    v5 = 0;
  }

  v12[0] = @"contextFormat";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"contextRetrieval";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"contextCount";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (v5)
  {
    if (v4)
    {
      goto LABEL_18;
    }

LABEL_23:

    if (v3)
    {
      goto LABEL_19;
    }

    goto LABEL_24;
  }

  if (!v4)
  {
    goto LABEL_23;
  }

LABEL_18:
  if (v3)
  {
    goto LABEL_19;
  }

LABEL_24:

LABEL_19:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BMPersonalizedSensingMomentsContextMomentsContextFetchOptions)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v30[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"contextFormat"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"contextRetrieval"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          selfCopy = 0;
          goto LABEL_12;
        }

        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v18 = *MEMORY[0x1E698F240];
        v27 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"contextRetrieval"];
        v28 = v12;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v19 = [v23 initWithDomain:v18 code:2 userInfo:v11];
        v10 = 0;
        selfCopy = 0;
        *error = v19;
        goto LABEL_11;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"contextCount"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v24 = objc_alloc(MEMORY[0x1E696ABC0]);
          v22 = *MEMORY[0x1E698F240];
          v25 = *MEMORY[0x1E696A578];
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"contextCount"];
          v26 = v20;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
          *error = [v24 initWithDomain:v22 code:2 userInfo:v21];
        }

        v12 = 0;
        selfCopy = 0;
        goto LABEL_11;
      }

      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    self = [(BMPersonalizedSensingMomentsContextMomentsContextFetchOptions *)self initWithContextFormat:v8 contextRetrieval:v10 contextCount:v12];
    selfCopy = self;
LABEL_11:

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!error)
  {
    v8 = 0;
    selfCopy = 0;
    goto LABEL_13;
  }

  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E698F240];
  v29 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"contextFormat"];
  v30[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v8 = 0;
  selfCopy = 0;
  *error = [v16 initWithDomain:v17 code:2 userInfo:v9];
LABEL_12:

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPersonalizedSensingMomentsContextMomentsContextFetchOptions *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_hasContextFormat)
  {
    contextFormat = self->_contextFormat;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
  }

  if (self->_hasContextRetrieval)
  {
    contextRetrieval = self->_contextRetrieval;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
  }

  if (self->_hasContextCount)
  {
    contextCount = self->_contextCount;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v38.receiver = self;
  v38.super_class = BMPersonalizedSensingMomentsContextMomentsContextFetchOptions;
  v5 = [(BMEventBase *)&v38 init];
  if (!v5)
  {
    goto LABEL_60;
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
        v39 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v39 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v39 & 0x7F) << v7;
        if ((v39 & 0x80) == 0)
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

      v15 = v14 >> 3;
      if ((v14 >> 3) == 3)
      {
        v30 = 0;
        v31 = 0;
        v18 = 0;
        v5->_hasContextCount = 1;
        while (1)
        {
          v39 = 0;
          v32 = [fromCopy position] + 1;
          if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 1, v33 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v39 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (v39 & 0x7F) << v30;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v22 = v31++ > 8;
          if (v22)
          {
            v23 = 0;
            v24 = &OBJC_IVAR___BMPersonalizedSensingMomentsContextMomentsContextFetchOptions__contextCount;
            goto LABEL_56;
          }
        }

        v24 = &OBJC_IVAR___BMPersonalizedSensingMomentsContextMomentsContextFetchOptions__contextCount;
      }

      else if (v15 == 2)
      {
        v25 = 0;
        v26 = 0;
        v18 = 0;
        v5->_hasContextRetrieval = 1;
        while (1)
        {
          v39 = 0;
          v27 = [fromCopy position] + 1;
          if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v39 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (v39 & 0x7F) << v25;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v22 = v26++ > 8;
          if (v22)
          {
            v23 = 0;
            v24 = &OBJC_IVAR___BMPersonalizedSensingMomentsContextMomentsContextFetchOptions__contextRetrieval;
            goto LABEL_56;
          }
        }

        v24 = &OBJC_IVAR___BMPersonalizedSensingMomentsContextMomentsContextFetchOptions__contextRetrieval;
      }

      else
      {
        if (v15 != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_59;
          }

          goto LABEL_57;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        v5->_hasContextFormat = 1;
        while (1)
        {
          v39 = 0;
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v39 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (v39 & 0x7F) << v16;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v22 = v17++ > 8;
          if (v22)
          {
            v23 = 0;
            v24 = &OBJC_IVAR___BMPersonalizedSensingMomentsContextMomentsContextFetchOptions__contextFormat;
            goto LABEL_56;
          }
        }

        v24 = &OBJC_IVAR___BMPersonalizedSensingMomentsContextMomentsContextFetchOptions__contextFormat;
      }

      if ([fromCopy hasError])
      {
        v23 = 0;
      }

      else
      {
        v23 = v18;
      }

LABEL_56:
      *(&v5->super.super.isa + *v24) = v23;
LABEL_57:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_59:
    v36 = 0;
  }

  else
  {
LABEL_60:
    v36 = v5;
  }

  return v36;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPersonalizedSensingMomentsContextMomentsContextFetchOptions contextFormat](self, "contextFormat")}];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPersonalizedSensingMomentsContextMomentsContextFetchOptions contextRetrieval](self, "contextRetrieval")}];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPersonalizedSensingMomentsContextMomentsContextFetchOptions contextCount](self, "contextCount")}];
  v7 = [v3 initWithFormat:@"BMPersonalizedSensingMomentsContextMomentsContextFetchOptions with contextFormat: %@, contextRetrieval: %@, contextCount: %@", v4, v5, v6];

  return v7;
}

- (BMPersonalizedSensingMomentsContextMomentsContextFetchOptions)initWithContextFormat:(id)format contextRetrieval:(id)retrieval contextCount:(id)count
{
  formatCopy = format;
  retrievalCopy = retrieval;
  countCopy = count;
  v16.receiver = self;
  v16.super_class = BMPersonalizedSensingMomentsContextMomentsContextFetchOptions;
  v11 = [(BMEventBase *)&v16 init];
  if (v11)
  {
    v11->_dataVersion = [objc_opt_class() latestDataVersion];
    if (formatCopy)
    {
      v11->_hasContextFormat = 1;
      unsignedIntValue = [formatCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v11->_hasContextFormat = 0;
    }

    v11->_contextFormat = unsignedIntValue;
    if (retrievalCopy)
    {
      v11->_hasContextRetrieval = 1;
      unsignedIntValue2 = [retrievalCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue2 = 0;
      v11->_hasContextRetrieval = 0;
    }

    v11->_contextRetrieval = unsignedIntValue2;
    if (countCopy)
    {
      v11->_hasContextCount = 1;
      unsignedIntValue3 = [countCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue3 = 0;
      v11->_hasContextCount = 0;
    }

    v11->_contextCount = unsignedIntValue3;
  }

  return v11;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contextFormat" number:1 type:4 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contextRetrieval" number:2 type:4 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contextCount" number:3 type:4 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contextFormat" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contextRetrieval" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contextCount" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
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

    v8 = [[BMPersonalizedSensingMomentsContextMomentsContextFetchOptions alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end