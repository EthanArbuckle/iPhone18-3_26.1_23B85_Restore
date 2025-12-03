@interface BMSageMetadata
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSageMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSageMetadata)initWithRawSessionId:(id)id clientId:(id)clientId clientRequestId:(id)requestId clientSessionId:(id)sessionId;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (NSUUID)rawSessionId;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSageMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    rawSessionId = [(BMSageMetadata *)self rawSessionId];
    rawSessionId2 = [v5 rawSessionId];
    v8 = rawSessionId2;
    if (rawSessionId == rawSessionId2)
    {
    }

    else
    {
      rawSessionId3 = [(BMSageMetadata *)self rawSessionId];
      rawSessionId4 = [v5 rawSessionId];
      v11 = [rawSessionId3 isEqual:rawSessionId4];

      if (!v11)
      {
        goto LABEL_13;
      }
    }

    clientId = [(BMSageMetadata *)self clientId];
    clientId2 = [v5 clientId];
    v15 = clientId2;
    if (clientId == clientId2)
    {
    }

    else
    {
      clientId3 = [(BMSageMetadata *)self clientId];
      clientId4 = [v5 clientId];
      v18 = [clientId3 isEqual:clientId4];

      if (!v18)
      {
        goto LABEL_13;
      }
    }

    clientRequestId = [(BMSageMetadata *)self clientRequestId];
    clientRequestId2 = [v5 clientRequestId];
    v21 = clientRequestId2;
    if (clientRequestId == clientRequestId2)
    {
    }

    else
    {
      clientRequestId3 = [(BMSageMetadata *)self clientRequestId];
      clientRequestId4 = [v5 clientRequestId];
      v24 = [clientRequestId3 isEqual:clientRequestId4];

      if (!v24)
      {
LABEL_13:
        v12 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    clientSessionId = [(BMSageMetadata *)self clientSessionId];
    clientSessionId2 = [v5 clientSessionId];
    if (clientSessionId == clientSessionId2)
    {
      v12 = 1;
    }

    else
    {
      clientSessionId3 = [(BMSageMetadata *)self clientSessionId];
      clientSessionId4 = [v5 clientSessionId];
      v12 = [clientSessionId3 isEqual:clientSessionId4];
    }

    goto LABEL_19;
  }

  v12 = 0;
LABEL_20:

  return v12;
}

- (NSUUID)rawSessionId
{
  raw_rawSessionId = self->_raw_rawSessionId;
  if (raw_rawSessionId)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_rawSessionId toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v16[4] = *MEMORY[0x1E69E9840];
  rawSessionId = [(BMSageMetadata *)self rawSessionId];
  uUIDString = [rawSessionId UUIDString];

  clientId = [(BMSageMetadata *)self clientId];
  clientRequestId = [(BMSageMetadata *)self clientRequestId];
  clientSessionId = [(BMSageMetadata *)self clientSessionId];
  v15[0] = @"rawSessionId";
  null = uUIDString;
  if (!uUIDString)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = null;
  v15[1] = @"clientId";
  null2 = clientId;
  if (!clientId)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = null2;
  v15[2] = @"clientRequestId";
  null3 = clientRequestId;
  if (!clientRequestId)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = null3;
  v15[3] = @"clientSessionId";
  null4 = clientSessionId;
  if (!clientSessionId)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v16[3] = null4;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];
  if (clientSessionId)
  {
    if (clientRequestId)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (clientRequestId)
    {
LABEL_11:
      if (clientId)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (uUIDString)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!clientId)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (uUIDString)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BMSageMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v49[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"rawSessionId"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"clientId"];
    v38 = v6;
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v15 = 0;
          selfCopy9 = self;
          goto LABEL_35;
        }

        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v44 = *MEMORY[0x1E696A578];
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientId"];
        v45 = v11;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        v15 = 0;
        *error = [v21 initWithDomain:v22 code:2 userInfo:v9];
        error = 0;
        selfCopy9 = self;
LABEL_34:

        v6 = v38;
LABEL_35:

        goto LABEL_36;
      }

      v37 = v8;
    }

    else
    {
      v37 = 0;
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"clientRequestId"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v11 = 0;
          v15 = 0;
          selfCopy9 = self;
          error = v37;
          goto LABEL_34;
        }

        v10 = v7;
        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v25 = *MEMORY[0x1E698F240];
        v42 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientRequestId"];
        v43 = v13;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        v26 = [v23 initWithDomain:v25 code:2 userInfo:v12];
        v11 = 0;
        v15 = 0;
        *errorCopy = v26;
        selfCopy9 = self;
        goto LABEL_32;
      }

      v10 = v7;
      v11 = v9;
    }

    else
    {
      v10 = v7;
      v11 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"clientSessionId"];
    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v13 = 0;
      selfCopy9 = self;
LABEL_13:
      error = v37;
      selfCopy9 = [(BMSageMetadata *)selfCopy9 initWithRawSessionId:v10 clientId:v37 clientRequestId:v11 clientSessionId:v13];
      v15 = selfCopy9;
LABEL_33:

      v7 = v10;
      goto LABEL_34;
    }

    objc_opt_class();
    selfCopy9 = self;
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
      goto LABEL_13;
    }

    if (error)
    {
      v36 = objc_alloc(MEMORY[0x1E696ABC0]);
      v35 = *MEMORY[0x1E698F240];
      v40 = *MEMORY[0x1E696A578];
      v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientSessionId"];
      v41 = v27;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      *error = [v36 initWithDomain:v35 code:2 userInfo:v28];
    }

    v13 = 0;
    v15 = 0;
LABEL_32:
    error = v37;
    goto LABEL_33;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!error)
    {
      v15 = 0;
      selfCopy9 = self;
      goto LABEL_38;
    }

    v18 = objc_alloc(MEMORY[0x1E696ABC0]);
    v19 = *MEMORY[0x1E698F240];
    v46 = *MEMORY[0x1E696A578];
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"rawSessionId"];
    v47 = v7;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v15 = 0;
    *error = [v18 initWithDomain:v19 code:2 userInfo:v20];
    error = v20;
    selfCopy9 = self;
    goto LABEL_36;
  }

  v7 = v6;
  v16 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
  if (v16)
  {
    v17 = v16;

    v7 = v17;
    goto LABEL_4;
  }

  selfCopy9 = self;
  if (!error)
  {
    v15 = 0;
    goto LABEL_37;
  }

  v31 = objc_alloc(MEMORY[0x1E696ABC0]);
  v32 = *MEMORY[0x1E698F240];
  v48 = *MEMORY[0x1E696A578];
  v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"rawSessionId"];
  v49[0] = v33;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
  *error = [v31 initWithDomain:v32 code:2 userInfo:v34];
  error = v33;

  v15 = 0;
LABEL_36:

LABEL_37:
LABEL_38:

  v29 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSageMetadata *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_raw_rawSessionId)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_clientId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_clientRequestId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_clientSessionId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v23.receiver = self;
  v23.super_class = BMSageMetadata;
  v5 = [(BMEventBase *)&v23 init];
  if (!v5)
  {
    goto LABEL_35;
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
          v16 = &OBJC_IVAR___BMSageMetadata__clientRequestId;
        }

        else
        {
          if (v15 != 4)
          {
LABEL_25:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_34;
            }

            goto LABEL_32;
          }

          v16 = &OBJC_IVAR___BMSageMetadata__clientSessionId;
        }
      }

      else
      {
        if (v15 == 1)
        {
          v17 = PBReaderReadData();
          if ([v17 length] != 16)
          {

            goto LABEL_34;
          }

          v16 = &OBJC_IVAR___BMSageMetadata__raw_rawSessionId;
          goto LABEL_31;
        }

        v16 = &OBJC_IVAR___BMSageMetadata__clientId;
        if (v15 != 2)
        {
          goto LABEL_25;
        }
      }

      v17 = PBReaderReadString();
LABEL_31:
      v18 = *v16;
      v19 = *(&v5->super.super.isa + v18);
      *(&v5->super.super.isa + v18) = v17;

LABEL_32:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_34:
    v21 = 0;
  }

  else
  {
LABEL_35:
    v21 = v5;
  }

  return v21;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  rawSessionId = [(BMSageMetadata *)self rawSessionId];
  clientId = [(BMSageMetadata *)self clientId];
  clientRequestId = [(BMSageMetadata *)self clientRequestId];
  clientSessionId = [(BMSageMetadata *)self clientSessionId];
  v8 = [v3 initWithFormat:@"BMSageMetadata with rawSessionId: %@, clientId: %@, clientRequestId: %@, clientSessionId: %@", rawSessionId, clientId, clientRequestId, clientSessionId];

  return v8;
}

- (BMSageMetadata)initWithRawSessionId:(id)id clientId:(id)clientId clientRequestId:(id)requestId clientSessionId:(id)sessionId
{
  v20[2] = *MEMORY[0x1E69E9840];
  idCopy = id;
  clientIdCopy = clientId;
  requestIdCopy = requestId;
  sessionIdCopy = sessionId;
  v19.receiver = self;
  v19.super_class = BMSageMetadata;
  v14 = [(BMEventBase *)&v19 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    if (idCopy)
    {
      v20[0] = 0;
      v20[1] = 0;
      [idCopy getUUIDBytes:v20];
      v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v20 length:16];
      raw_rawSessionId = v14->_raw_rawSessionId;
      v14->_raw_rawSessionId = v15;
    }

    else
    {
      raw_rawSessionId = v14->_raw_rawSessionId;
      v14->_raw_rawSessionId = 0;
    }

    objc_storeStrong(&v14->_clientId, clientId);
    objc_storeStrong(&v14->_clientRequestId, requestId);
    objc_storeStrong(&v14->_clientSessionId, sessionId);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawSessionId" number:1 type:14 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientId" number:2 type:13 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientRequestId" number:3 type:13 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientSessionId" number:4 type:13 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawSessionId" dataType:6 requestOnly:0 fieldNumber:1 protoDataType:14 convertedType:3];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientId" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientRequestId" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientSessionId" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
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

    v8 = [[BMSageMetadata alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[6] = 0;
    }
  }

  return v4;
}

@end