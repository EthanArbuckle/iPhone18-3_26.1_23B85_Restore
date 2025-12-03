@interface BMVisualIntelligenceCameraLookupEventFailureMetadata
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMVisualIntelligenceCameraLookupEventFailureMetadata)initWithFailureReason:(int)reason httpErrorCode:(id)code;
- (BMVisualIntelligenceCameraLookupEventFailureMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMVisualIntelligenceCameraLookupEventFailureMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    failureReason = [(BMVisualIntelligenceCameraLookupEventFailureMetadata *)self failureReason];
    if (failureReason != [v5 failureReason])
    {
      goto LABEL_9;
    }

    if (!-[BMVisualIntelligenceCameraLookupEventFailureMetadata hasHttpErrorCode](self, "hasHttpErrorCode") && ![v5 hasHttpErrorCode])
    {
      v8 = 1;
      goto LABEL_10;
    }

    if (-[BMVisualIntelligenceCameraLookupEventFailureMetadata hasHttpErrorCode](self, "hasHttpErrorCode") && [v5 hasHttpErrorCode])
    {
      httpErrorCode = [(BMVisualIntelligenceCameraLookupEventFailureMetadata *)self httpErrorCode];
      v8 = httpErrorCode == [v5 httpErrorCode];
    }

    else
    {
LABEL_9:
      v8 = 0;
    }

LABEL_10:

    goto LABEL_11;
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (id)jsonDictionary
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMVisualIntelligenceCameraLookupEventFailureMetadata failureReason](self, "failureReason")}];
  if ([(BMVisualIntelligenceCameraLookupEventFailureMetadata *)self hasHttpErrorCode])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMVisualIntelligenceCameraLookupEventFailureMetadata httpErrorCode](self, "httpErrorCode")}];
  }

  else
  {
    v4 = 0;
  }

  v10[0] = @"failureReason";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"httpErrorCode";
  v11[0] = null;
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (v4)
  {
    if (v3)
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (v3)
    {
      goto LABEL_10;
    }
  }

LABEL_10:
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BMVisualIntelligenceCameraLookupEventFailureMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v25[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"failureReason"];
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
        if (!error)
        {
          v8 = 0;
          selfCopy = 0;
          goto LABEL_14;
        }

        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        v20 = *MEMORY[0x1E698F240];
        v24 = *MEMORY[0x1E696A578];
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"failureReason"];
        v25[0] = v11;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
        v21 = [v19 initWithDomain:v20 code:2 userInfo:v10];
        v8 = 0;
        selfCopy = 0;
        *error = v21;
        goto LABEL_13;
      }

      v9 = [MEMORY[0x1E696AD98] numberWithInt:{bsearch_b(v7, BMVisualIntelligenceCameraLookupEventFailureReasonFromString_sortedStrings, 1uLL, 8uLL, &__block_literal_global_68) != 0}];
    }

    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"httpErrorCode"];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v15 = objc_alloc(MEMORY[0x1E696ABC0]);
        v16 = *MEMORY[0x1E698F240];
        v22 = *MEMORY[0x1E696A578];
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"httpErrorCode"];
        v23 = v17;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
        *error = [v15 initWithDomain:v16 code:2 userInfo:v18];
      }

      v11 = 0;
      selfCopy = 0;
      goto LABEL_13;
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  self = -[BMVisualIntelligenceCameraLookupEventFailureMetadata initWithFailureReason:httpErrorCode:](self, "initWithFailureReason:httpErrorCode:", [v8 intValue], v11);
  selfCopy = self;
LABEL_13:

LABEL_14:
  v13 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMVisualIntelligenceCameraLookupEventFailureMetadata *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  failureReason = self->_failureReason;
  v7 = toCopy;
  PBDataWriterWriteUint32Field();
  if (self->_hasHttpErrorCode)
  {
    httpErrorCode = self->_httpErrorCode;
    PBDataWriterWriteInt32Field();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v31.receiver = self;
  v31.super_class = BMVisualIntelligenceCameraLookupEventFailureMetadata;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_51;
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
        v32 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v32 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v32 & 0x7F) << v7;
        if ((v32 & 0x80) == 0)
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

      if ((v14 >> 3) == 2)
      {
        v22 = 0;
        v23 = 0;
        v17 = 0;
        v5->_hasHttpErrorCode = 1;
        while (1)
        {
          v32 = 0;
          v24 = [fromCopy position] + 1;
          if (v24 >= [fromCopy position] && (v25 = objc_msgSend(fromCopy, "position") + 1, v25 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v32 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v32 & 0x7F) << v22;
          if ((v32 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v21 = v23++ > 8;
          if (v21)
          {
            LODWORD(v17) = 0;
            goto LABEL_46;
          }
        }

        if ([fromCopy hasError])
        {
          LODWORD(v17) = 0;
        }

LABEL_46:
        v27 = &OBJC_IVAR___BMVisualIntelligenceCameraLookupEventFailureMetadata__httpErrorCode;
      }

      else
      {
        if ((v14 >> 3) != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_50;
          }

          goto LABEL_48;
        }

        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          v32 = 0;
          v18 = [fromCopy position] + 1;
          if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 1, v19 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v32 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v32 & 0x7F) << v15;
          if ((v32 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v21 = v16++ > 8;
          if (v21)
          {
            goto LABEL_42;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v17 > 1)
        {
LABEL_42:
          LODWORD(v17) = 0;
        }

        v27 = &OBJC_IVAR___BMVisualIntelligenceCameraLookupEventFailureMetadata__failureReason;
      }

      *(&v5->super.super.isa + *v27) = v17;
LABEL_48:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_50:
    v29 = 0;
  }

  else
  {
LABEL_51:
    v29 = v5;
  }

  return v29;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMVisualIntelligenceCameraLookupEventFailureReasonAsString([(BMVisualIntelligenceCameraLookupEventFailureMetadata *)self failureReason]);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMVisualIntelligenceCameraLookupEventFailureMetadata httpErrorCode](self, "httpErrorCode")}];
  v6 = [v3 initWithFormat:@"BMVisualIntelligenceCameraLookupEventFailureMetadata with failureReason: %@, httpErrorCode: %@", v4, v5];

  return v6;
}

- (BMVisualIntelligenceCameraLookupEventFailureMetadata)initWithFailureReason:(int)reason httpErrorCode:(id)code
{
  codeCopy = code;
  v10.receiver = self;
  v10.super_class = BMVisualIntelligenceCameraLookupEventFailureMetadata;
  v7 = [(BMEventBase *)&v10 init];
  if (v7)
  {
    v7->_dataVersion = [objc_opt_class() latestDataVersion];
    v7->_failureReason = reason;
    if (codeCopy)
    {
      v7->_hasHttpErrorCode = 1;
      intValue = [codeCopy intValue];
    }

    else
    {
      v7->_hasHttpErrorCode = 0;
      intValue = -1;
    }

    v7->_httpErrorCode = intValue;
  }

  return v7;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"failureReason" number:1 type:4 subMessageClass:0];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"httpErrorCode" number:2 type:2 subMessageClass:0];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"failureReason" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"httpErrorCode" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:2 convertedType:0];
  v7[0] = v2;
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

    v8 = [[BMVisualIntelligenceCameraLookupEventFailureMetadata alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end