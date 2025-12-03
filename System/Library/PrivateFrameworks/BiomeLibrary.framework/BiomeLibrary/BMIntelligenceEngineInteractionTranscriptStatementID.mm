@interface BMIntelligenceEngineInteractionTranscriptStatementID
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMIntelligenceEngineInteractionTranscriptStatementID)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMIntelligenceEngineInteractionTranscriptStatementID)initWithSessionId:(id)id statementIndex:(id)index;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (NSUUID)sessionId;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMIntelligenceEngineInteractionTranscriptStatementID

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    sessionId = [(BMIntelligenceEngineInteractionTranscriptStatementID *)self sessionId];
    sessionId2 = [v5 sessionId];
    v8 = sessionId2;
    if (sessionId == sessionId2)
    {
    }

    else
    {
      sessionId3 = [(BMIntelligenceEngineInteractionTranscriptStatementID *)self sessionId];
      sessionId4 = [v5 sessionId];
      v11 = [sessionId3 isEqual:sessionId4];

      if (!v11)
      {
        goto LABEL_12;
      }
    }

    if (!-[BMIntelligenceEngineInteractionTranscriptStatementID hasStatementIndex](self, "hasStatementIndex") && ![v5 hasStatementIndex])
    {
      v12 = 1;
      goto LABEL_13;
    }

    if (-[BMIntelligenceEngineInteractionTranscriptStatementID hasStatementIndex](self, "hasStatementIndex") && [v5 hasStatementIndex])
    {
      statementIndex = [(BMIntelligenceEngineInteractionTranscriptStatementID *)self statementIndex];
      v12 = statementIndex == [v5 statementIndex];
LABEL_13:

      goto LABEL_14;
    }

LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  v12 = 0;
LABEL_14:

  return v12;
}

- (NSUUID)sessionId
{
  raw_sessionId = self->_raw_sessionId;
  if (raw_sessionId)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_sessionId toType:3];
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
  sessionId = [(BMIntelligenceEngineInteractionTranscriptStatementID *)self sessionId];
  uUIDString = [sessionId UUIDString];

  if ([(BMIntelligenceEngineInteractionTranscriptStatementID *)self hasStatementIndex])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMIntelligenceEngineInteractionTranscriptStatementID statementIndex](self, "statementIndex")}];
  }

  else
  {
    v5 = 0;
  }

  v11[0] = @"sessionId";
  null = uUIDString;
  if (!uUIDString)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = @"statementIndex";
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
      goto LABEL_10;
    }
  }

  else
  {

    if (uUIDString)
    {
      goto LABEL_10;
    }
  }

LABEL_10:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BMIntelligenceEngineInteractionTranscriptStatementID)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v31[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"sessionId"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"statementIndex"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v19 = objc_alloc(MEMORY[0x1E696ABC0]);
          v20 = *MEMORY[0x1E698F240];
          v26 = *MEMORY[0x1E696A578];
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"statementIndex"];
          v27 = v21;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
          *error = [v19 initWithDomain:v20 code:2 userInfo:v22];
        }

        v10 = 0;
        selfCopy = 0;
        goto LABEL_8;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    self = [(BMIntelligenceEngineInteractionTranscriptStatementID *)self initWithSessionId:v8 statementIndex:v10];
    selfCopy = self;
LABEL_8:

    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!error)
    {
      selfCopy = 0;
      goto LABEL_11;
    }

    v16 = objc_alloc(MEMORY[0x1E696ABC0]);
    v17 = *MEMORY[0x1E698F240];
    v28 = *MEMORY[0x1E696A578];
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sessionId"];
    v29 = v8;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v18 = [v16 initWithDomain:v17 code:2 userInfo:v10];
    selfCopy = 0;
    *error = v18;
    goto LABEL_9;
  }

  v8 = v7;
  v14 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v8];
  if (v14)
  {
    v15 = v14;

    v8 = v15;
    goto LABEL_4;
  }

  if (!error)
  {
    selfCopy = 0;
    goto LABEL_10;
  }

  v23 = objc_alloc(MEMORY[0x1E696ABC0]);
  v24 = *MEMORY[0x1E698F240];
  v30 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"sessionId"];
  v31[0] = v10;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  *error = [v23 initWithDomain:v24 code:2 userInfo:v25];

  selfCopy = 0;
LABEL_9:

LABEL_10:
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMIntelligenceEngineInteractionTranscriptStatementID *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_raw_sessionId)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_hasStatementIndex)
  {
    statementIndex = self->_statementIndex;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v27.receiver = self;
  v27.super_class = BMIntelligenceEngineInteractionTranscriptStatementID;
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

      if ((v14 >> 3) == 2)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v5->_hasStatementIndex = 1;
        while (1)
        {
          v28 = 0;
          v20 = [fromCopy position] + 1;
          if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 1, v21 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v28 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v19 |= (v28 & 0x7F) << v17;
          if ((v28 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v13 = v18++ >= 9;
          if (v13)
          {
            v23 = 0;
            goto LABEL_36;
          }
        }

        if ([fromCopy hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_36:
        v5->_statementIndex = v23;
      }

      else if ((v14 >> 3) == 1)
      {
        v15 = PBReaderReadData();
        if ([(NSData *)v15 length]!= 16)
        {

          goto LABEL_39;
        }

        raw_sessionId = v5->_raw_sessionId;
        v5->_raw_sessionId = v15;
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
  sessionId = [(BMIntelligenceEngineInteractionTranscriptStatementID *)self sessionId];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMIntelligenceEngineInteractionTranscriptStatementID statementIndex](self, "statementIndex")}];
  v6 = [v3 initWithFormat:@"BMIntelligenceEngineInteractionTranscriptStatementID with sessionId: %@, statementIndex: %@", sessionId, v5];

  return v6;
}

- (BMIntelligenceEngineInteractionTranscriptStatementID)initWithSessionId:(id)id statementIndex:(id)index
{
  v15[2] = *MEMORY[0x1E69E9840];
  idCopy = id;
  indexCopy = index;
  v14.receiver = self;
  v14.super_class = BMIntelligenceEngineInteractionTranscriptStatementID;
  v8 = [(BMEventBase *)&v14 init];
  if (v8)
  {
    v8->_dataVersion = [objc_opt_class() latestDataVersion];
    if (idCopy)
    {
      v15[0] = 0;
      v15[1] = 0;
      [idCopy getUUIDBytes:v15];
      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v15 length:16];
      raw_sessionId = v8->_raw_sessionId;
      v8->_raw_sessionId = v9;
    }

    else
    {
      raw_sessionId = v8->_raw_sessionId;
      v8->_raw_sessionId = 0;
    }

    if (indexCopy)
    {
      v8->_hasStatementIndex = 1;
      unsignedIntValue = [indexCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v8->_hasStatementIndex = 0;
    }

    v8->_statementIndex = unsignedIntValue;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sessionId" number:1 type:14 subMessageClass:0];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"statementIndex" number:2 type:4 subMessageClass:0];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sessionId" dataType:6 requestOnly:0 fieldNumber:1 protoDataType:14 convertedType:3];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"statementIndex" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
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

    v8 = [[BMIntelligenceEngineInteractionTranscriptStatementID alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[7] = 0;
    }
  }

  return v4;
}

@end