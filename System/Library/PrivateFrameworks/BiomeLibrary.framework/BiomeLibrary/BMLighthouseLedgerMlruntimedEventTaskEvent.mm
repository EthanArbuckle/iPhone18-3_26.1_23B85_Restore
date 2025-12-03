@interface BMLighthouseLedgerMlruntimedEventTaskEvent
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMLighthouseLedgerMlruntimedEventTaskEvent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMLighthouseLedgerMlruntimedEventTaskEvent)initWithSucceeded:(id)succeeded errorDomain:(id)domain errorCode:(id)code;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMLighthouseLedgerMlruntimedEventTaskEvent

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMLighthouseLedgerMlruntimedEventTaskEvent hasSucceeded](self, "hasSucceeded") || [v5 hasSucceeded])
    {
      if (![(BMLighthouseLedgerMlruntimedEventTaskEvent *)self hasSucceeded])
      {
        goto LABEL_17;
      }

      if (![v5 hasSucceeded])
      {
        goto LABEL_17;
      }

      succeeded = [(BMLighthouseLedgerMlruntimedEventTaskEvent *)self succeeded];
      if (succeeded != [v5 succeeded])
      {
        goto LABEL_17;
      }
    }

    errorDomain = [(BMLighthouseLedgerMlruntimedEventTaskEvent *)self errorDomain];
    errorDomain2 = [v5 errorDomain];
    v9 = errorDomain2;
    if (errorDomain == errorDomain2)
    {
    }

    else
    {
      errorDomain3 = [(BMLighthouseLedgerMlruntimedEventTaskEvent *)self errorDomain];
      errorDomain4 = [v5 errorDomain];
      v12 = [errorDomain3 isEqual:errorDomain4];

      if (!v12)
      {
        goto LABEL_17;
      }
    }

    if (!-[BMLighthouseLedgerMlruntimedEventTaskEvent hasErrorCode](self, "hasErrorCode") && ![v5 hasErrorCode])
    {
      v13 = 1;
      goto LABEL_18;
    }

    if (-[BMLighthouseLedgerMlruntimedEventTaskEvent hasErrorCode](self, "hasErrorCode") && [v5 hasErrorCode])
    {
      errorCode = [(BMLighthouseLedgerMlruntimedEventTaskEvent *)self errorCode];
      v13 = errorCode == [v5 errorCode];
LABEL_18:

      goto LABEL_19;
    }

LABEL_17:
    v13 = 0;
    goto LABEL_18;
  }

  v13 = 0;
LABEL_19:

  return v13;
}

- (id)jsonDictionary
{
  v13[3] = *MEMORY[0x1E69E9840];
  if ([(BMLighthouseLedgerMlruntimedEventTaskEvent *)self hasSucceeded])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMLighthouseLedgerMlruntimedEventTaskEvent succeeded](self, "succeeded")}];
  }

  else
  {
    v3 = 0;
  }

  errorDomain = [(BMLighthouseLedgerMlruntimedEventTaskEvent *)self errorDomain];
  if ([(BMLighthouseLedgerMlruntimedEventTaskEvent *)self hasErrorCode])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLighthouseLedgerMlruntimedEventTaskEvent errorCode](self, "errorCode")}];
  }

  else
  {
    v5 = 0;
  }

  v12[0] = @"succeeded";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"errorDomain";
  null2 = errorDomain;
  if (!errorDomain)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"errorCode";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (v5)
  {
    if (errorDomain)
    {
      goto LABEL_15;
    }

LABEL_20:

    if (v3)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  if (!errorDomain)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (v3)
  {
    goto LABEL_16;
  }

LABEL_21:

LABEL_16:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BMLighthouseLedgerMlruntimedEventTaskEvent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v30[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"succeeded"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"errorDomain"];
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
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"errorDomain"];
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

    v11 = [dictionaryCopy objectForKeyedSubscript:@"errorCode"];
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
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"errorCode"];
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

    self = [(BMLighthouseLedgerMlruntimedEventTaskEvent *)self initWithSucceeded:v8 errorDomain:v10 errorCode:v12];
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
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"succeeded"];
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
  [(BMLighthouseLedgerMlruntimedEventTaskEvent *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_hasSucceeded)
  {
    succeeded = self->_succeeded;
    PBDataWriterWriteBOOLField();
    toCopy = v7;
  }

  if (self->_errorDomain)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_hasErrorCode)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v35.receiver = self;
  v35.super_class = BMLighthouseLedgerMlruntimedEventTaskEvent;
  v5 = [(BMEventBase *)&v35 init];
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
        v36 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v36 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v36 & 0x7F) << v7;
        if ((v36 & 0x80) == 0)
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
      if ((v14 >> 3) == 3)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v5->_hasErrorCode = 1;
        while (1)
        {
          v36 = 0;
          v28 = [fromCopy position] + 1;
          if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v36 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v27 |= (v36 & 0x7F) << v25;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v13 = v26++ >= 9;
          if (v13)
          {
            v31 = 0;
            goto LABEL_45;
          }
        }

        v31 = [fromCopy hasError] ? 0 : v27;
LABEL_45:
        v5->_errorCode = v31;
      }

      else if (v15 == 2)
      {
        v23 = PBReaderReadString();
        errorDomain = v5->_errorDomain;
        v5->_errorDomain = v23;
      }

      else if (v15 == 1)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v5->_hasSucceeded = 1;
        while (1)
        {
          v36 = 0;
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v36 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (v36 & 0x7F) << v16;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v13 = v17++ >= 9;
          if (v13)
          {
            LOBYTE(v22) = 0;
            goto LABEL_47;
          }
        }

        v22 = (v18 != 0) & ~[fromCopy hasError];
LABEL_47:
        v5->_succeeded = v22;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_50;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_50:
    v33 = 0;
  }

  else
  {
LABEL_51:
    v33 = v5;
  }

  return v33;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMLighthouseLedgerMlruntimedEventTaskEvent succeeded](self, "succeeded")}];
  errorDomain = [(BMLighthouseLedgerMlruntimedEventTaskEvent *)self errorDomain];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLighthouseLedgerMlruntimedEventTaskEvent errorCode](self, "errorCode")}];
  v7 = [v3 initWithFormat:@"BMLighthouseLedgerMlruntimedEventTaskEvent with succeeded: %@, errorDomain: %@, errorCode: %@", v4, errorDomain, v6];

  return v7;
}

- (BMLighthouseLedgerMlruntimedEventTaskEvent)initWithSucceeded:(id)succeeded errorDomain:(id)domain errorCode:(id)code
{
  succeededCopy = succeeded;
  domainCopy = domain;
  codeCopy = code;
  v14.receiver = self;
  v14.super_class = BMLighthouseLedgerMlruntimedEventTaskEvent;
  v11 = [(BMEventBase *)&v14 init];
  if (v11)
  {
    v11->_dataVersion = [objc_opt_class() latestDataVersion];
    if (succeededCopy)
    {
      v11->_hasSucceeded = 1;
      v11->_succeeded = [succeededCopy BOOLValue];
    }

    else
    {
      v11->_hasSucceeded = 0;
      v11->_succeeded = 0;
    }

    objc_storeStrong(&v11->_errorDomain, domain);
    if (codeCopy)
    {
      v11->_hasErrorCode = 1;
      intValue = [codeCopy intValue];
    }

    else
    {
      v11->_hasErrorCode = 0;
      intValue = -1;
    }

    v11->_errorCode = intValue;
  }

  return v11;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"succeeded" number:1 type:12 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"errorDomain" number:2 type:13 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"errorCode" number:3 type:2 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"succeeded" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"errorDomain" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"errorCode" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:2 convertedType:0];
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

    v8 = [[BMLighthouseLedgerMlruntimedEventTaskEvent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end