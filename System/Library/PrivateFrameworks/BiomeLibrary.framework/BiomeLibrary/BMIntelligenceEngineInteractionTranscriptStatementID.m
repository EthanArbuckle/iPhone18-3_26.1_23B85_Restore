@interface BMIntelligenceEngineInteractionTranscriptStatementID
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMIntelligenceEngineInteractionTranscriptStatementID)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMIntelligenceEngineInteractionTranscriptStatementID)initWithSessionId:(id)a3 statementIndex:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (NSUUID)sessionId;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMIntelligenceEngineInteractionTranscriptStatementID

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMIntelligenceEngineInteractionTranscriptStatementID *)self sessionId];
    v7 = [v5 sessionId];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMIntelligenceEngineInteractionTranscriptStatementID *)self sessionId];
      v10 = [v5 sessionId];
      v11 = [v9 isEqual:v10];

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
      v13 = [(BMIntelligenceEngineInteractionTranscriptStatementID *)self statementIndex];
      v12 = v13 == [v5 statementIndex];
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
  v3 = [(BMIntelligenceEngineInteractionTranscriptStatementID *)self sessionId];
  v4 = [v3 UUIDString];

  if ([(BMIntelligenceEngineInteractionTranscriptStatementID *)self hasStatementIndex])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMIntelligenceEngineInteractionTranscriptStatementID statementIndex](self, "statementIndex")}];
  }

  else
  {
    v5 = 0;
  }

  v11[0] = @"sessionId";
  v6 = v4;
  if (!v4)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = @"statementIndex";
  v12[0] = v6;
  v7 = v5;
  if (!v5)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (v5)
  {
    if (v4)
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (v4)
    {
      goto LABEL_10;
    }
  }

LABEL_10:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BMIntelligenceEngineInteractionTranscriptStatementID)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v31[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"sessionId"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"statementIndex"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v19 = objc_alloc(MEMORY[0x1E696ABC0]);
          v20 = *MEMORY[0x1E698F240];
          v26 = *MEMORY[0x1E696A578];
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"statementIndex"];
          v27 = v21;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
          *a4 = [v19 initWithDomain:v20 code:2 userInfo:v22];
        }

        v10 = 0;
        v11 = 0;
        goto LABEL_8;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    self = [(BMIntelligenceEngineInteractionTranscriptStatementID *)self initWithSessionId:v8 statementIndex:v10];
    v11 = self;
LABEL_8:

    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!a4)
    {
      v11 = 0;
      goto LABEL_11;
    }

    v16 = objc_alloc(MEMORY[0x1E696ABC0]);
    v17 = *MEMORY[0x1E698F240];
    v28 = *MEMORY[0x1E696A578];
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sessionId"];
    v29 = v8;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v18 = [v16 initWithDomain:v17 code:2 userInfo:v10];
    v11 = 0;
    *a4 = v18;
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

  if (!a4)
  {
    v11 = 0;
    goto LABEL_10;
  }

  v23 = objc_alloc(MEMORY[0x1E696ABC0]);
  v24 = *MEMORY[0x1E698F240];
  v30 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"sessionId"];
  v31[0] = v10;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  *a4 = [v23 initWithDomain:v24 code:2 userInfo:v25];

  v11 = 0;
LABEL_9:

LABEL_10:
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMIntelligenceEngineInteractionTranscriptStatementID *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_raw_sessionId)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_hasStatementIndex)
  {
    statementIndex = self->_statementIndex;
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = BMIntelligenceEngineInteractionTranscriptStatementID;
  v5 = [(BMEventBase *)&v27 init];
  if (!v5)
  {
    goto LABEL_40;
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
        v28 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v28 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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
          v20 = [v4 position] + 1;
          if (v20 >= [v4 position] && (v21 = objc_msgSend(v4, "position") + 1, v21 <= objc_msgSend(v4, "length")))
          {
            v22 = [v4 data];
            [v22 getBytes:&v28 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        if ([v4 hasError])
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

      v24 = [v4 position];
    }

    while (v24 < [v4 length]);
  }

  if ([v4 hasError])
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
  v4 = [(BMIntelligenceEngineInteractionTranscriptStatementID *)self sessionId];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMIntelligenceEngineInteractionTranscriptStatementID statementIndex](self, "statementIndex")}];
  v6 = [v3 initWithFormat:@"BMIntelligenceEngineInteractionTranscriptStatementID with sessionId: %@, statementIndex: %@", v4, v5];

  return v6;
}

- (BMIntelligenceEngineInteractionTranscriptStatementID)initWithSessionId:(id)a3 statementIndex:(id)a4
{
  v15[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = BMIntelligenceEngineInteractionTranscriptStatementID;
  v8 = [(BMEventBase *)&v14 init];
  if (v8)
  {
    v8->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v6)
    {
      v15[0] = 0;
      v15[1] = 0;
      [v6 getUUIDBytes:v15];
      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v15 length:16];
      raw_sessionId = v8->_raw_sessionId;
      v8->_raw_sessionId = v9;
    }

    else
    {
      raw_sessionId = v8->_raw_sessionId;
      v8->_raw_sessionId = 0;
    }

    if (v7)
    {
      v8->_hasStatementIndex = 1;
      v11 = [v7 unsignedIntValue];
    }

    else
    {
      v11 = 0;
      v8->_hasStatementIndex = 0;
    }

    v8->_statementIndex = v11;
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