@interface BMVisualIntelligenceCameraLookupEventResponseMetadata
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMVisualIntelligenceCameraLookupEventResponseMetadata)initWithHasResultRetrieved:(id)retrieved endReason:(int)reason httpErrorCode:(id)code serverErrorCode:(id)errorCode;
- (BMVisualIntelligenceCameraLookupEventResponseMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMVisualIntelligenceCameraLookupEventResponseMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMVisualIntelligenceCameraLookupEventResponseMetadata hasHasResultRetrieved](self, "hasHasResultRetrieved") || [v5 hasHasResultRetrieved])
    {
      if (![(BMVisualIntelligenceCameraLookupEventResponseMetadata *)self hasHasResultRetrieved])
      {
        goto LABEL_19;
      }

      if (![v5 hasHasResultRetrieved])
      {
        goto LABEL_19;
      }

      hasResultRetrieved = [(BMVisualIntelligenceCameraLookupEventResponseMetadata *)self hasResultRetrieved];
      if (hasResultRetrieved != [v5 hasResultRetrieved])
      {
        goto LABEL_19;
      }
    }

    endReason = [(BMVisualIntelligenceCameraLookupEventResponseMetadata *)self endReason];
    if (endReason != [v5 endReason])
    {
      goto LABEL_19;
    }

    if (-[BMVisualIntelligenceCameraLookupEventResponseMetadata hasHttpErrorCode](self, "hasHttpErrorCode") || [v5 hasHttpErrorCode])
    {
      if (![(BMVisualIntelligenceCameraLookupEventResponseMetadata *)self hasHttpErrorCode])
      {
        goto LABEL_19;
      }

      if (![v5 hasHttpErrorCode])
      {
        goto LABEL_19;
      }

      httpErrorCode = [(BMVisualIntelligenceCameraLookupEventResponseMetadata *)self httpErrorCode];
      if (httpErrorCode != [v5 httpErrorCode])
      {
        goto LABEL_19;
      }
    }

    if (!-[BMVisualIntelligenceCameraLookupEventResponseMetadata hasServerErrorCode](self, "hasServerErrorCode") && ![v5 hasServerErrorCode])
    {
      v10 = 1;
      goto LABEL_20;
    }

    if (-[BMVisualIntelligenceCameraLookupEventResponseMetadata hasServerErrorCode](self, "hasServerErrorCode") && [v5 hasServerErrorCode])
    {
      serverErrorCode = [(BMVisualIntelligenceCameraLookupEventResponseMetadata *)self serverErrorCode];
      v10 = serverErrorCode == [v5 serverErrorCode];
    }

    else
    {
LABEL_19:
      v10 = 0;
    }

LABEL_20:

    goto LABEL_21;
  }

  v10 = 0;
LABEL_21:

  return v10;
}

- (id)jsonDictionary
{
  v15[4] = *MEMORY[0x1E69E9840];
  if ([(BMVisualIntelligenceCameraLookupEventResponseMetadata *)self hasHasResultRetrieved])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMVisualIntelligenceCameraLookupEventResponseMetadata hasResultRetrieved](self, "hasResultRetrieved")}];
  }

  else
  {
    v3 = 0;
  }

  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMVisualIntelligenceCameraLookupEventResponseMetadata endReason](self, "endReason")}];
  if ([(BMVisualIntelligenceCameraLookupEventResponseMetadata *)self hasHttpErrorCode])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMVisualIntelligenceCameraLookupEventResponseMetadata httpErrorCode](self, "httpErrorCode")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMVisualIntelligenceCameraLookupEventResponseMetadata *)self hasServerErrorCode])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMVisualIntelligenceCameraLookupEventResponseMetadata serverErrorCode](self, "serverErrorCode")}];
  }

  else
  {
    v6 = 0;
  }

  v14[0] = @"hasResultRetrieved";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"endReason";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"httpErrorCode";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null3;
  v14[3] = @"serverErrorCode";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = null4;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  if (v6)
  {
    if (v5)
    {
      goto LABEL_20;
    }
  }

  else
  {

    if (v5)
    {
LABEL_20:
      if (v4)
      {
        goto LABEL_21;
      }

LABEL_27:

      if (v3)
      {
        goto LABEL_22;
      }

      goto LABEL_28;
    }
  }

  if (!v4)
  {
    goto LABEL_27;
  }

LABEL_21:
  if (v3)
  {
    goto LABEL_22;
  }

LABEL_28:

LABEL_22:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BMVisualIntelligenceCameraLookupEventResponseMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v40[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"hasResultRetrieved"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v32 = 0;
LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"endReason"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v31 = 0;
            selfCopy4 = 0;
            goto LABEL_35;
          }

          v26 = objc_alloc(MEMORY[0x1E696ABC0]);
          v27 = *MEMORY[0x1E698F240];
          v37 = *MEMORY[0x1E696A578];
          v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"endReason"];
          v38 = v16;
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
          v31 = 0;
          selfCopy4 = 0;
          *error = [v26 initWithDomain:v27 code:2 userInfo:v13];
          goto LABEL_34;
        }

        v9 = [MEMORY[0x1E696AD98] numberWithInt:BMVisualIntelligenceCameraLookupEventRequestEndReasonFromString(v8)];
      }

      v31 = v9;
    }

    else
    {
      v31 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"httpErrorCode"];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v16 = 0;
          selfCopy4 = 0;
          goto LABEL_34;
        }

        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v19 = *MEMORY[0x1E698F240];
        v35 = *MEMORY[0x1E696A578];
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"httpErrorCode"];
        v36 = v18;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        selfCopy3 = self;
        v17 = v20 = error;
        v21 = [v29 initWithDomain:v19 code:2 userInfo:v17];
        v16 = 0;
        selfCopy4 = 0;
        *v20 = v21;
        goto LABEL_32;
      }

      selfCopy3 = self;
      errorCopy2 = error;
      v16 = v13;
    }

    else
    {
      selfCopy3 = self;
      errorCopy2 = error;
      v16 = 0;
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"serverErrorCode"];
    if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v18 = 0;
LABEL_22:
      self = -[BMVisualIntelligenceCameraLookupEventResponseMetadata initWithHasResultRetrieved:endReason:httpErrorCode:serverErrorCode:](selfCopy3, "initWithHasResultRetrieved:endReason:httpErrorCode:serverErrorCode:", v32, [v31 intValue], v16, v18);
      selfCopy4 = self;
LABEL_33:

LABEL_34:
      goto LABEL_35;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
      goto LABEL_22;
    }

    if (errorCopy2)
    {
      v30 = objc_alloc(MEMORY[0x1E696ABC0]);
      v28 = *MEMORY[0x1E698F240];
      v33 = *MEMORY[0x1E696A578];
      v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"serverErrorCode"];
      v34 = v22;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      *errorCopy2 = [v30 initWithDomain:v28 code:2 userInfo:v23];
    }

    v18 = 0;
    selfCopy4 = 0;
LABEL_32:
    self = selfCopy3;
    goto LABEL_33;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = v7;
    goto LABEL_4;
  }

  if (!error)
  {
    v32 = 0;
    selfCopy4 = 0;
    goto LABEL_36;
  }

  v10 = objc_alloc(MEMORY[0x1E696ABC0]);
  v11 = *MEMORY[0x1E698F240];
  v39 = *MEMORY[0x1E696A578];
  v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"hasResultRetrieved"];
  v40[0] = v31;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
  v32 = 0;
  selfCopy4 = 0;
  *error = [v10 initWithDomain:v11 code:2 userInfo:v8];
LABEL_35:

LABEL_36:
  v24 = *MEMORY[0x1E69E9840];
  return selfCopy4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMVisualIntelligenceCameraLookupEventResponseMetadata *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasHasResultRetrieved)
  {
    hasResultRetrieved = self->_hasResultRetrieved;
    PBDataWriterWriteBOOLField();
  }

  endReason = self->_endReason;
  PBDataWriterWriteUint32Field();
  if (self->_hasHttpErrorCode)
  {
    httpErrorCode = self->_httpErrorCode;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasServerErrorCode)
  {
    serverErrorCode = self->_serverErrorCode;
    PBDataWriterWriteInt32Field();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v47.receiver = self;
  v47.super_class = BMVisualIntelligenceCameraLookupEventResponseMetadata;
  v5 = [(BMEventBase *)&v47 init];
  if (!v5)
  {
    goto LABEL_79;
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
        v48 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v48 & 0x7F) << v7;
        if ((v48 & 0x80) == 0)
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 2)
      {
        if (v15 == 3)
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v5->_hasHttpErrorCode = 1;
          while (1)
          {
            v48 = 0;
            v40 = [fromCopy position] + 1;
            if (v40 >= [fromCopy position] && (v41 = objc_msgSend(fromCopy, "position") + 1, v41 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v39 |= (v48 & 0x7F) << v37;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v13 = v38++ >= 9;
            if (v13)
            {
              v29 = 0;
              goto LABEL_74;
            }
          }

          if ([fromCopy hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v39;
          }

LABEL_74:
          v43 = 28;
        }

        else
        {
          if (v15 != 4)
          {
LABEL_41:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_78;
            }

            goto LABEL_76;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          v5->_hasServerErrorCode = 1;
          while (1)
          {
            v48 = 0;
            v26 = [fromCopy position] + 1;
            if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v25 |= (v48 & 0x7F) << v23;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v13 = v24++ >= 9;
            if (v13)
            {
              v29 = 0;
              goto LABEL_68;
            }
          }

          if ([fromCopy hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v25;
          }

LABEL_68:
          v43 = 32;
        }

        *(&v5->super.super.isa + v43) = v29;
      }

      else if (v15 == 1)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v5->_hasHasResultRetrieved = 1;
        while (1)
        {
          v48 = 0;
          v33 = [fromCopy position] + 1;
          if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 1, v34 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v32 |= (v48 & 0x7F) << v30;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v13 = v31++ >= 9;
          if (v13)
          {
            LOBYTE(v36) = 0;
            goto LABEL_70;
          }
        }

        v36 = (v32 != 0) & ~[fromCopy hasError];
LABEL_70:
        v5->_hasResultRetrieved = v36;
      }

      else
      {
        if (v15 != 2)
        {
          goto LABEL_41;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v48 = 0;
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (v48 & 0x7F) << v16;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          if (v17++ > 8)
          {
            goto LABEL_63;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v18 > 3)
        {
LABEL_63:
          LODWORD(v18) = 0;
        }

        v5->_endReason = v18;
      }

LABEL_76:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_78:
    v45 = 0;
  }

  else
  {
LABEL_79:
    v45 = v5;
  }

  return v45;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMVisualIntelligenceCameraLookupEventResponseMetadata hasResultRetrieved](self, "hasResultRetrieved")}];
  v5 = BMVisualIntelligenceCameraLookupEventRequestEndReasonAsString([(BMVisualIntelligenceCameraLookupEventResponseMetadata *)self endReason]);
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMVisualIntelligenceCameraLookupEventResponseMetadata httpErrorCode](self, "httpErrorCode")}];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMVisualIntelligenceCameraLookupEventResponseMetadata serverErrorCode](self, "serverErrorCode")}];
  v8 = [v3 initWithFormat:@"BMVisualIntelligenceCameraLookupEventResponseMetadata with hasResultRetrieved: %@, endReason: %@, httpErrorCode: %@, serverErrorCode: %@", v4, v5, v6, v7];

  return v8;
}

- (BMVisualIntelligenceCameraLookupEventResponseMetadata)initWithHasResultRetrieved:(id)retrieved endReason:(int)reason httpErrorCode:(id)code serverErrorCode:(id)errorCode
{
  retrievedCopy = retrieved;
  codeCopy = code;
  errorCodeCopy = errorCode;
  v17.receiver = self;
  v17.super_class = BMVisualIntelligenceCameraLookupEventResponseMetadata;
  v13 = [(BMEventBase *)&v17 init];
  if (v13)
  {
    v13->_dataVersion = [objc_opt_class() latestDataVersion];
    if (retrievedCopy)
    {
      v13->_hasHasResultRetrieved = 1;
      v13->_hasResultRetrieved = [retrievedCopy BOOLValue];
    }

    else
    {
      v13->_hasHasResultRetrieved = 0;
      v13->_hasResultRetrieved = 0;
    }

    v13->_endReason = reason;
    if (codeCopy)
    {
      v13->_hasHttpErrorCode = 1;
      intValue = [codeCopy intValue];
    }

    else
    {
      v13->_hasHttpErrorCode = 0;
      intValue = -1;
    }

    v13->_httpErrorCode = intValue;
    if (errorCodeCopy)
    {
      v13->_hasServerErrorCode = 1;
      intValue2 = [errorCodeCopy intValue];
    }

    else
    {
      v13->_hasServerErrorCode = 0;
      intValue2 = -1;
    }

    v13->_serverErrorCode = intValue2;
  }

  return v13;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasResultRetrieved" number:1 type:12 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"endReason" number:2 type:4 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"httpErrorCode" number:3 type:2 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"serverErrorCode" number:4 type:2 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasResultRetrieved" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"endReason" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"httpErrorCode" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:2 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"serverErrorCode" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:2 convertedType:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
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

    v8 = [[BMVisualIntelligenceCameraLookupEventResponseMetadata alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end