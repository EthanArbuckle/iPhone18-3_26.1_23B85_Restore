@interface BMDiscoverabilitySignals
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMDiscoverabilitySignals)initWithContentIdentifier:(id)identifier context:(id)context osBuild:(id)build userInfo:(id)info;
- (BMDiscoverabilitySignals)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMDiscoverabilitySignals

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"context" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"osBuild" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userInfo" dataType:4 requestOnly:0 fieldNumber:4 protoDataType:14 convertedType:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDiscoverabilitySignals *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    contentIdentifier = [(BMDiscoverabilitySignals *)self contentIdentifier];
    contentIdentifier2 = [v5 contentIdentifier];
    v8 = contentIdentifier2;
    if (contentIdentifier == contentIdentifier2)
    {
    }

    else
    {
      contentIdentifier3 = [(BMDiscoverabilitySignals *)self contentIdentifier];
      contentIdentifier4 = [v5 contentIdentifier];
      v11 = [contentIdentifier3 isEqual:contentIdentifier4];

      if (!v11)
      {
        goto LABEL_13;
      }
    }

    context = [(BMDiscoverabilitySignals *)self context];
    context2 = [v5 context];
    v15 = context2;
    if (context == context2)
    {
    }

    else
    {
      context3 = [(BMDiscoverabilitySignals *)self context];
      context4 = [v5 context];
      v18 = [context3 isEqual:context4];

      if (!v18)
      {
        goto LABEL_13;
      }
    }

    osBuild = [(BMDiscoverabilitySignals *)self osBuild];
    osBuild2 = [v5 osBuild];
    v21 = osBuild2;
    if (osBuild == osBuild2)
    {
    }

    else
    {
      osBuild3 = [(BMDiscoverabilitySignals *)self osBuild];
      osBuild4 = [v5 osBuild];
      v24 = [osBuild3 isEqual:osBuild4];

      if (!v24)
      {
LABEL_13:
        v12 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    userInfo = [(BMDiscoverabilitySignals *)self userInfo];
    userInfo2 = [v5 userInfo];
    if (userInfo == userInfo2)
    {
      v12 = 1;
    }

    else
    {
      userInfo3 = [(BMDiscoverabilitySignals *)self userInfo];
      userInfo4 = [v5 userInfo];
      v12 = [userInfo3 isEqual:userInfo4];
    }

    goto LABEL_19;
  }

  v12 = 0;
LABEL_20:

  return v12;
}

- (id)jsonDictionary
{
  v16[4] = *MEMORY[0x1E69E9840];
  contentIdentifier = [(BMDiscoverabilitySignals *)self contentIdentifier];
  context = [(BMDiscoverabilitySignals *)self context];
  osBuild = [(BMDiscoverabilitySignals *)self osBuild];
  userInfo = [(BMDiscoverabilitySignals *)self userInfo];
  v7 = [userInfo base64EncodedStringWithOptions:0];

  v15[0] = @"contentIdentifier";
  null = contentIdentifier;
  if (!contentIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = null;
  v15[1] = @"context";
  null2 = context;
  if (!context)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = null2;
  v15[2] = @"osBuild";
  null3 = osBuild;
  if (!osBuild)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = null3;
  v15[3] = @"userInfo";
  null4 = v7;
  if (!v7)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v16[3] = null4;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];
  if (v7)
  {
    if (osBuild)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (osBuild)
    {
LABEL_11:
      if (context)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (contentIdentifier)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!context)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (contentIdentifier)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BMDiscoverabilitySignals)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v44[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"contentIdentifier"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"context"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v32 = 0;
LABEL_7:
      v10 = [dictionaryCopy objectForKeyedSubscript:@"osBuild"];
      v34 = v8;
      if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v11 = 0;
            selfCopy = 0;
            error = v32;
            goto LABEL_40;
          }

          v19 = objc_alloc(MEMORY[0x1E696ABC0]);
          errorCopy = error;
          v20 = *MEMORY[0x1E698F240];
          v39 = *MEMORY[0x1E696A578];
          v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"osBuild"];
          v40 = v13;
          v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
          v21 = [v19 initWithDomain:v20 code:2 userInfo:v12];
          v11 = 0;
          selfCopy = 0;
          *errorCopy = v21;
          goto LABEL_38;
        }

        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = [dictionaryCopy objectForKeyedSubscript:@"userInfo"];
      if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v13 = 0;
LABEL_13:
        error = v32;
        self = [(BMDiscoverabilitySignals *)self initWithContentIdentifier:v34 context:v32 osBuild:v11 userInfo:v13];
        selfCopy = self;
LABEL_39:

        v8 = v34;
        goto LABEL_40;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
        goto LABEL_13;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v12 options:0];
        if (v13)
        {
          goto LABEL_13;
        }

        if (!error)
        {
          goto LABEL_37;
        }

        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v29 = *MEMORY[0x1E698F240];
        v37 = *MEMORY[0x1E696A578];
        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"userInfo"];
        v38 = v22;
        v23 = MEMORY[0x1E695DF20];
        v24 = &v38;
        v25 = &v37;
      }

      else
      {
        if (!error)
        {
LABEL_37:
          v13 = 0;
          selfCopy = 0;
LABEL_38:
          error = v32;
          goto LABEL_39;
        }

        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v29 = *MEMORY[0x1E698F240];
        v35 = *MEMORY[0x1E696A578];
        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"userInfo"];
        v36 = v22;
        v23 = MEMORY[0x1E695DF20];
        v24 = &v36;
        v25 = &v35;
      }

      v26 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:1];
      *error = [v31 initWithDomain:v29 code:2 userInfo:v26];

      goto LABEL_37;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = v9;
      goto LABEL_7;
    }

    if (error)
    {
      v33 = objc_alloc(MEMORY[0x1E696ABC0]);
      v18 = *MEMORY[0x1E698F240];
      v41 = *MEMORY[0x1E696A578];
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"context"];
      v42 = v11;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      selfCopy = 0;
      *error = [v33 initWithDomain:v18 code:2 userInfo:v10];
      error = 0;
LABEL_40:

      goto LABEL_41;
    }

    selfCopy = 0;
LABEL_41:

    goto LABEL_42;
  }

  if (error)
  {
    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E698F240];
    v43 = *MEMORY[0x1E696A578];
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contentIdentifier"];
    v44[0] = v17;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    v8 = 0;
    selfCopy = 0;
    *error = [v15 initWithDomain:v16 code:2 userInfo:v9];
    error = v17;
    goto LABEL_41;
  }

  v8 = 0;
  selfCopy = 0;
LABEL_42:

  v27 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_contentIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_context)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_osBuild)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_userInfo)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v23.receiver = self;
  v23.super_class = BMDiscoverabilitySignals;
  v5 = [(BMEventBase *)&v23 init];
  if (!v5)
  {
    goto LABEL_33;
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
        v24 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v24 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v24 & 0x7F) << v7;
        if ((v24 & 0x80) == 0)
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
      if ((v14 >> 3) > 2)
      {
        if (v15 == 3)
        {
          v16 = PBReaderReadString();
          v17 = &OBJC_IVAR___BMDiscoverabilitySignals__osBuild;
        }

        else
        {
          if (v15 != 4)
          {
LABEL_25:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_32;
            }

            goto LABEL_30;
          }

          v16 = PBReaderReadData();
          v17 = &OBJC_IVAR___BMDiscoverabilitySignals__userInfo;
        }
      }

      else if (v15 == 1)
      {
        v16 = PBReaderReadString();
        v17 = &OBJC_IVAR___BMDiscoverabilitySignals__contentIdentifier;
      }

      else
      {
        if (v15 != 2)
        {
          goto LABEL_25;
        }

        v16 = PBReaderReadString();
        v17 = &OBJC_IVAR___BMDiscoverabilitySignals__context;
      }

      v18 = *v17;
      v19 = *(&v5->super.super.isa + v18);
      *(&v5->super.super.isa + v18) = v16;

LABEL_30:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_32:
    v21 = 0;
  }

  else
  {
LABEL_33:
    v21 = v5;
  }

  return v21;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  contentIdentifier = [(BMDiscoverabilitySignals *)self contentIdentifier];
  context = [(BMDiscoverabilitySignals *)self context];
  osBuild = [(BMDiscoverabilitySignals *)self osBuild];
  userInfo = [(BMDiscoverabilitySignals *)self userInfo];
  v8 = [v3 initWithFormat:@"BMDiscoverabilitySignals with contentIdentifier: %@, context: %@, osBuild: %@, userInfo: %@", contentIdentifier, context, osBuild, userInfo];

  return v8;
}

- (BMDiscoverabilitySignals)initWithContentIdentifier:(id)identifier context:(id)context osBuild:(id)build userInfo:(id)info
{
  identifierCopy = identifier;
  contextCopy = context;
  buildCopy = build;
  infoCopy = info;
  v17.receiver = self;
  v17.super_class = BMDiscoverabilitySignals;
  v15 = [(BMEventBase *)&v17 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v15->_contentIdentifier, identifier);
    objc_storeStrong(&v15->_context, context);
    objc_storeStrong(&v15->_osBuild, build);
    objc_storeStrong(&v15->_userInfo, info);
  }

  return v15;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentIdentifier" number:1 type:13 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"context" number:2 type:13 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"osBuild" number:3 type:13 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userInfo" number:4 type:14 subMessageClass:0];
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

    v8 = [[BMDiscoverabilitySignals alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end