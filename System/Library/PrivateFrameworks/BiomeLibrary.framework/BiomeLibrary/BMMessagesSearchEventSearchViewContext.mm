@interface BMMessagesSearchEventSearchViewContext
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMessagesSearchEventSearchViewContext)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMMessagesSearchEventSearchViewContext)initWithMillisecondsSinceSessionStarted:(id)started sessionId:(id)id queryId:(id)queryId appeared:(id)appeared disappeared:(id)disappeared;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMessagesSearchEventSearchViewContext

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMMessagesSearchEventSearchViewContext hasMillisecondsSinceSessionStarted](self, "hasMillisecondsSinceSessionStarted") || [v5 hasMillisecondsSinceSessionStarted])
    {
      if (![(BMMessagesSearchEventSearchViewContext *)self hasMillisecondsSinceSessionStarted])
      {
        goto LABEL_18;
      }

      if (![v5 hasMillisecondsSinceSessionStarted])
      {
        goto LABEL_18;
      }

      millisecondsSinceSessionStarted = [(BMMessagesSearchEventSearchViewContext *)self millisecondsSinceSessionStarted];
      if (millisecondsSinceSessionStarted != [v5 millisecondsSinceSessionStarted])
      {
        goto LABEL_18;
      }
    }

    sessionId = [(BMMessagesSearchEventSearchViewContext *)self sessionId];
    sessionId2 = [v5 sessionId];
    v9 = sessionId2;
    if (sessionId == sessionId2)
    {
    }

    else
    {
      sessionId3 = [(BMMessagesSearchEventSearchViewContext *)self sessionId];
      sessionId4 = [v5 sessionId];
      v12 = [sessionId3 isEqual:sessionId4];

      if (!v12)
      {
        goto LABEL_18;
      }
    }

    queryId = [(BMMessagesSearchEventSearchViewContext *)self queryId];
    queryId2 = [v5 queryId];
    v16 = queryId2;
    if (queryId == queryId2)
    {
    }

    else
    {
      queryId3 = [(BMMessagesSearchEventSearchViewContext *)self queryId];
      queryId4 = [v5 queryId];
      v19 = [queryId3 isEqual:queryId4];

      if (!v19)
      {
        goto LABEL_18;
      }
    }

    appeared = [(BMMessagesSearchEventSearchViewContext *)self appeared];
    appeared2 = [v5 appeared];
    v22 = appeared2;
    if (appeared == appeared2)
    {
    }

    else
    {
      appeared3 = [(BMMessagesSearchEventSearchViewContext *)self appeared];
      appeared4 = [v5 appeared];
      v25 = [appeared3 isEqual:appeared4];

      if (!v25)
      {
LABEL_18:
        v13 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    disappeared = [(BMMessagesSearchEventSearchViewContext *)self disappeared];
    disappeared2 = [v5 disappeared];
    if (disappeared == disappeared2)
    {
      v13 = 1;
    }

    else
    {
      disappeared3 = [(BMMessagesSearchEventSearchViewContext *)self disappeared];
      disappeared4 = [v5 disappeared];
      v13 = [disappeared3 isEqual:disappeared4];
    }

    goto LABEL_19;
  }

  v13 = 0;
LABEL_20:

  return v13;
}

- (id)jsonDictionary
{
  v25[5] = *MEMORY[0x1E69E9840];
  if ([(BMMessagesSearchEventSearchViewContext *)self hasMillisecondsSinceSessionStarted])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventSearchViewContext millisecondsSinceSessionStarted](self, "millisecondsSinceSessionStarted")}];
  }

  else
  {
    v3 = 0;
  }

  sessionId = [(BMMessagesSearchEventSearchViewContext *)self sessionId];
  queryId = [(BMMessagesSearchEventSearchViewContext *)self queryId];
  appeared = [(BMMessagesSearchEventSearchViewContext *)self appeared];
  jsonDictionary = [appeared jsonDictionary];

  disappeared = [(BMMessagesSearchEventSearchViewContext *)self disappeared];
  jsonDictionary2 = [disappeared jsonDictionary];

  v20 = @"millisecondsSinceSessionStarted";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v18 = null;
  v25[0] = null;
  v21 = @"sessionId";
  null2 = sessionId;
  if (!sessionId)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v25[1] = null2;
  v22 = @"queryId";
  null3 = queryId;
  if (!queryId)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v25[2] = null3;
  v23 = @"appeared";
  null4 = jsonDictionary;
  if (!jsonDictionary)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v25[3] = null4;
  v24 = @"disappeared";
  null5 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v25[4] = null5;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v20 count:{5, v18}];
  if (jsonDictionary2)
  {
    if (jsonDictionary)
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (jsonDictionary)
    {
LABEL_16:
      if (queryId)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }
  }

  if (queryId)
  {
LABEL_17:
    if (sessionId)
    {
      goto LABEL_18;
    }

LABEL_25:

    if (v3)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_24:

  if (!sessionId)
  {
    goto LABEL_25;
  }

LABEL_18:
  if (v3)
  {
    goto LABEL_19;
  }

LABEL_26:

LABEL_19:
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BMMessagesSearchEventSearchViewContext)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v52[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"millisecondsSinceSessionStarted"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"sessionId"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          v16 = 0;
          goto LABEL_50;
        }

        v37 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v49 = *MEMORY[0x1E696A578];
        v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sessionId"];
        v50 = v39;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        v11 = v24 = error;
        v10 = 0;
        v16 = 0;
        *v24 = [v37 initWithDomain:v23 code:2 userInfo:v11];
        goto LABEL_49;
      }

      errorCopy2 = error;
      v10 = v9;
    }

    else
    {
      errorCopy2 = error;
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"queryId"];
    v36 = v10;
    v38 = v8;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy2)
        {
          v39 = 0;
          v16 = 0;
          goto LABEL_49;
        }

        v40 = objc_alloc(MEMORY[0x1E696ABC0]);
        v25 = *MEMORY[0x1E698F240];
        v47 = *MEMORY[0x1E696A578];
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"queryId"];
        v48 = v17;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        v26 = [v40 initWithDomain:v25 code:2 userInfo:v13];
        v39 = 0;
        v16 = 0;
        *errorCopy2 = v26;
        goto LABEL_47;
      }

      v39 = v11;
    }

    else
    {
      v39 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"appeared"];
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy2)
        {
          v16 = 0;
          goto LABEL_48;
        }

        v33 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = *MEMORY[0x1E698F240];
        v45 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"appeared"];
        v46 = v13;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        *errorCopy2 = [v33 initWithDomain:v31 code:2 userInfo:v27];

        v16 = 0;
        goto LABEL_46;
      }

      v17 = v12;
      v42 = 0;
      v13 = [[BMMessagesSearchEventSearchViewAppeared alloc] initWithJSONDictionary:v17 error:&v42];
      v18 = v42;
      if (v18)
      {
        if (errorCopy2)
        {
          v18 = v18;
          *errorCopy2 = v18;
        }

        v16 = 0;
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"disappeared"];
    if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = 0;
LABEL_16:
      v16 = [(BMMessagesSearchEventSearchViewContext *)self initWithMillisecondsSinceSessionStarted:v38 sessionId:v36 queryId:v39 appeared:v13 disappeared:v15];
      self = v16;
LABEL_44:

LABEL_45:
LABEL_46:
      v17 = v12;
LABEL_47:

      v12 = v17;
LABEL_48:

      v10 = v36;
      v8 = v38;
LABEL_49:

      goto LABEL_50;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v14;
      v41 = 0;
      v15 = [[BMMessagesSearchEventSearchViewDisappeared alloc] initWithJSONDictionary:v21 error:&v41];
      v22 = v41;
      if (!v22)
      {

        goto LABEL_16;
      }

      if (errorCopy2)
      {
        v22 = v22;
        *errorCopy2 = v22;
      }
    }

    else
    {
      if (!errorCopy2)
      {
        v16 = 0;
        goto LABEL_45;
      }

      v34 = objc_alloc(MEMORY[0x1E696ABC0]);
      v32 = *MEMORY[0x1E698F240];
      v43 = *MEMORY[0x1E696A578];
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"disappeared"];
      v44 = v15;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      *errorCopy2 = [v34 initWithDomain:v32 code:2 userInfo:v28];
    }

    v16 = 0;
    goto LABEL_44;
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
    v16 = 0;
    goto LABEL_51;
  }

  v19 = objc_alloc(MEMORY[0x1E696ABC0]);
  v20 = *MEMORY[0x1E698F240];
  v51 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"millisecondsSinceSessionStarted"];
  v52[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
  v8 = 0;
  v16 = 0;
  *error = [v19 initWithDomain:v20 code:2 userInfo:v9];
LABEL_50:

LABEL_51:
  v29 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMessagesSearchEventSearchViewContext *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasMillisecondsSinceSessionStarted)
  {
    millisecondsSinceSessionStarted = self->_millisecondsSinceSessionStarted;
    PBDataWriterWriteUint64Field();
  }

  if (self->_sessionId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_queryId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_appeared)
  {
    PBDataWriterPlaceMark();
    [(BMMessagesSearchEventSearchViewAppeared *)self->_appeared writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_disappeared)
  {
    PBDataWriterPlaceMark();
    [(BMMessagesSearchEventSearchViewDisappeared *)self->_disappeared writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v32.receiver = self;
  v32.super_class = BMMessagesSearchEventSearchViewContext;
  v5 = [(BMEventBase *)&v32 init];
  if (!v5)
  {
    goto LABEL_52;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_50;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v33) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v33 & 0x7F) << v7;
        if ((v33 & 0x80) == 0)
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
        goto LABEL_50;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 2)
      {
        break;
      }

      switch(v15)
      {
        case 3:
          v18 = PBReaderReadString();
          v19 = 40;
LABEL_29:
          v20 = *(&v5->super.super.isa + v19);
          *(&v5->super.super.isa + v19) = v18;

          goto LABEL_49;
        case 4:
          v33 = 0;
          v34 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_51;
          }

          v16 = [[BMMessagesSearchEventSearchViewAppeared alloc] initByReadFrom:fromCopy];
          if (!v16)
          {
            goto LABEL_51;
          }

          v17 = 48;
          break;
        case 5:
          v33 = 0;
          v34 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_51;
          }

          v16 = [[BMMessagesSearchEventSearchViewDisappeared alloc] initByReadFrom:fromCopy];
          if (!v16)
          {
            goto LABEL_51;
          }

          v17 = 56;
          break;
        default:
          goto LABEL_43;
      }

      v21 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v16;

      PBReaderRecallMark();
LABEL_49:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_50;
      }
    }

    if (v15 == 1)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v5->_hasMillisecondsSinceSessionStarted = 1;
      while (1)
      {
        LOBYTE(v33) = 0;
        v25 = [fromCopy position] + 1;
        if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 1, v26 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v24 |= (v33 & 0x7F) << v22;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v22 += 7;
        v13 = v23++ >= 9;
        if (v13)
        {
          v28 = 0;
          goto LABEL_48;
        }
      }

      if ([fromCopy hasError])
      {
        v28 = 0;
      }

      else
      {
        v28 = v24;
      }

LABEL_48:
      v5->_millisecondsSinceSessionStarted = v28;
      goto LABEL_49;
    }

    if (v15 != 2)
    {
LABEL_43:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v18 = PBReaderReadString();
    v19 = 32;
    goto LABEL_29;
  }

LABEL_50:
  if ([fromCopy hasError])
  {
LABEL_51:
    v30 = 0;
  }

  else
  {
LABEL_52:
    v30 = v5;
  }

  return v30;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventSearchViewContext millisecondsSinceSessionStarted](self, "millisecondsSinceSessionStarted")}];
  sessionId = [(BMMessagesSearchEventSearchViewContext *)self sessionId];
  queryId = [(BMMessagesSearchEventSearchViewContext *)self queryId];
  appeared = [(BMMessagesSearchEventSearchViewContext *)self appeared];
  disappeared = [(BMMessagesSearchEventSearchViewContext *)self disappeared];
  v9 = [v3 initWithFormat:@"BMMessagesSearchEventSearchViewContext with millisecondsSinceSessionStarted: %@, sessionId: %@, queryId: %@, appeared: %@, disappeared: %@", v4, sessionId, queryId, appeared, disappeared];

  return v9;
}

- (BMMessagesSearchEventSearchViewContext)initWithMillisecondsSinceSessionStarted:(id)started sessionId:(id)id queryId:(id)queryId appeared:(id)appeared disappeared:(id)disappeared
{
  startedCopy = started;
  idCopy = id;
  queryIdCopy = queryId;
  appearedCopy = appeared;
  disappearedCopy = disappeared;
  v20.receiver = self;
  v20.super_class = BMMessagesSearchEventSearchViewContext;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    if (startedCopy)
    {
      v17->_hasMillisecondsSinceSessionStarted = 1;
      unsignedLongLongValue = [startedCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue = 0;
      v17->_hasMillisecondsSinceSessionStarted = 0;
    }

    v17->_millisecondsSinceSessionStarted = unsignedLongLongValue;
    objc_storeStrong(&v17->_sessionId, id);
    objc_storeStrong(&v17->_queryId, queryId);
    objc_storeStrong(&v17->_appeared, appeared);
    objc_storeStrong(&v17->_disappeared, disappeared);
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"millisecondsSinceSessionStarted" number:1 type:5 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sessionId" number:2 type:13 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"queryId" number:3 type:13 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appeared" number:4 type:14 subMessageClass:objc_opt_class()];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"disappeared" number:5 type:14 subMessageClass:objc_opt_class()];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"millisecondsSinceSessionStarted" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:5 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sessionId" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"queryId" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"appeared_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_541];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"disappeared_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_543];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __49__BMMessagesSearchEventSearchViewContext_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 disappeared];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __49__BMMessagesSearchEventSearchViewContext_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 appeared];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

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

    v8 = [[BMMessagesSearchEventSearchViewContext alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end