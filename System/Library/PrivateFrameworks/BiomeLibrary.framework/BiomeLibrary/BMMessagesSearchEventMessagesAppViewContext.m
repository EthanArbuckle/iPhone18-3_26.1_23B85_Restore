@interface BMMessagesSearchEventMessagesAppViewContext
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMessagesSearchEventMessagesAppViewContext)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMMessagesSearchEventMessagesAppViewContext)initWithMillisecondsSinceSessionStarted:(id)a3 sessionId:(id)a4 queryId:(id)a5 appeared:(id)a6 disappeared:(id)a7;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMessagesSearchEventMessagesAppViewContext

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMMessagesSearchEventMessagesAppViewContext hasMillisecondsSinceSessionStarted](self, "hasMillisecondsSinceSessionStarted") || [v5 hasMillisecondsSinceSessionStarted])
    {
      if (![(BMMessagesSearchEventMessagesAppViewContext *)self hasMillisecondsSinceSessionStarted])
      {
        goto LABEL_18;
      }

      if (![v5 hasMillisecondsSinceSessionStarted])
      {
        goto LABEL_18;
      }

      v6 = [(BMMessagesSearchEventMessagesAppViewContext *)self millisecondsSinceSessionStarted];
      if (v6 != [v5 millisecondsSinceSessionStarted])
      {
        goto LABEL_18;
      }
    }

    v7 = [(BMMessagesSearchEventMessagesAppViewContext *)self sessionId];
    v8 = [v5 sessionId];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [(BMMessagesSearchEventMessagesAppViewContext *)self sessionId];
      v11 = [v5 sessionId];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_18;
      }
    }

    v14 = [(BMMessagesSearchEventMessagesAppViewContext *)self queryId];
    v15 = [v5 queryId];
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      v17 = [(BMMessagesSearchEventMessagesAppViewContext *)self queryId];
      v18 = [v5 queryId];
      v19 = [v17 isEqual:v18];

      if (!v19)
      {
        goto LABEL_18;
      }
    }

    v20 = [(BMMessagesSearchEventMessagesAppViewContext *)self appeared];
    v21 = [v5 appeared];
    v22 = v21;
    if (v20 == v21)
    {
    }

    else
    {
      v23 = [(BMMessagesSearchEventMessagesAppViewContext *)self appeared];
      v24 = [v5 appeared];
      v25 = [v23 isEqual:v24];

      if (!v25)
      {
LABEL_18:
        v13 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    v27 = [(BMMessagesSearchEventMessagesAppViewContext *)self disappeared];
    v28 = [v5 disappeared];
    if (v27 == v28)
    {
      v13 = 1;
    }

    else
    {
      v29 = [(BMMessagesSearchEventMessagesAppViewContext *)self disappeared];
      v30 = [v5 disappeared];
      v13 = [v29 isEqual:v30];
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
  if ([(BMMessagesSearchEventMessagesAppViewContext *)self hasMillisecondsSinceSessionStarted])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventMessagesAppViewContext millisecondsSinceSessionStarted](self, "millisecondsSinceSessionStarted")}];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(BMMessagesSearchEventMessagesAppViewContext *)self sessionId];
  v5 = [(BMMessagesSearchEventMessagesAppViewContext *)self queryId];
  v6 = [(BMMessagesSearchEventMessagesAppViewContext *)self appeared];
  v7 = [v6 jsonDictionary];

  v8 = [(BMMessagesSearchEventMessagesAppViewContext *)self disappeared];
  v9 = [v8 jsonDictionary];

  v20 = @"millisecondsSinceSessionStarted";
  v10 = v3;
  if (!v3)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v10;
  v25[0] = v10;
  v21 = @"sessionId";
  v11 = v4;
  if (!v4)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v25[1] = v11;
  v22 = @"queryId";
  v12 = v5;
  if (!v5)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v25[2] = v12;
  v23 = @"appeared";
  v13 = v7;
  if (!v7)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v25[3] = v13;
  v24 = @"disappeared";
  v14 = v9;
  if (!v9)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v25[4] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v20 count:{5, v18}];
  if (v9)
  {
    if (v7)
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (v7)
    {
LABEL_16:
      if (v5)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }
  }

  if (v5)
  {
LABEL_17:
    if (v4)
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

  if (!v4)
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

- (BMMessagesSearchEventMessagesAppViewContext)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v52[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"millisecondsSinceSessionStarted"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"sessionId"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
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
        v11 = v24 = a4;
        v10 = 0;
        v16 = 0;
        *v24 = [v37 initWithDomain:v23 code:2 userInfo:v11];
        goto LABEL_49;
      }

      v35 = a4;
      v10 = v9;
    }

    else
    {
      v35 = a4;
      v10 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"queryId"];
    v36 = v10;
    v38 = v8;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v35)
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
        *v35 = v26;
        goto LABEL_47;
      }

      v39 = v11;
    }

    else
    {
      v39 = 0;
    }

    v12 = [v6 objectForKeyedSubscript:@"appeared"];
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v35)
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
        *v35 = [v33 initWithDomain:v31 code:2 userInfo:v27];

        v16 = 0;
        goto LABEL_46;
      }

      v17 = v12;
      v42 = 0;
      v13 = [[BMMessagesSearchEventMessagesAppViewAppeared alloc] initWithJSONDictionary:v17 error:&v42];
      v18 = v42;
      if (v18)
      {
        if (v35)
        {
          v18 = v18;
          *v35 = v18;
        }

        v16 = 0;
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = [v6 objectForKeyedSubscript:@"disappeared"];
    if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = 0;
LABEL_16:
      v16 = [(BMMessagesSearchEventMessagesAppViewContext *)self initWithMillisecondsSinceSessionStarted:v38 sessionId:v36 queryId:v39 appeared:v13 disappeared:v15];
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
      v15 = [[BMMessagesSearchEventMessagesAppViewDisappeared alloc] initWithJSONDictionary:v21 error:&v41];
      v22 = v41;
      if (!v22)
      {

        goto LABEL_16;
      }

      if (v35)
      {
        v22 = v22;
        *v35 = v22;
      }
    }

    else
    {
      if (!v35)
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
      *v35 = [v34 initWithDomain:v32 code:2 userInfo:v28];
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

  if (!a4)
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
  *a4 = [v19 initWithDomain:v20 code:2 userInfo:v9];
LABEL_50:

LABEL_51:
  v29 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMessagesSearchEventMessagesAppViewContext *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
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
    [(BMMessagesSearchEventMessagesAppViewAppeared *)self->_appeared writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_disappeared)
  {
    PBDataWriterPlaceMark();
    [(BMMessagesSearchEventMessagesAppViewDisappeared *)self->_disappeared writeTo:v4];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = BMMessagesSearchEventMessagesAppViewContext;
  v5 = [(BMEventBase *)&v32 init];
  if (!v5)
  {
    goto LABEL_52;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_50;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v33) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v33 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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

          v16 = [[BMMessagesSearchEventMessagesAppViewAppeared alloc] initByReadFrom:v4];
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

          v16 = [[BMMessagesSearchEventMessagesAppViewDisappeared alloc] initByReadFrom:v4];
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
      v29 = [v4 position];
      if (v29 >= [v4 length])
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
        v25 = [v4 position] + 1;
        if (v25 >= [v4 position] && (v26 = objc_msgSend(v4, "position") + 1, v26 <= objc_msgSend(v4, "length")))
        {
          v27 = [v4 data];
          [v27 getBytes:&v33 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      if ([v4 hasError])
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
  if ([v4 hasError])
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
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventMessagesAppViewContext millisecondsSinceSessionStarted](self, "millisecondsSinceSessionStarted")}];
  v5 = [(BMMessagesSearchEventMessagesAppViewContext *)self sessionId];
  v6 = [(BMMessagesSearchEventMessagesAppViewContext *)self queryId];
  v7 = [(BMMessagesSearchEventMessagesAppViewContext *)self appeared];
  v8 = [(BMMessagesSearchEventMessagesAppViewContext *)self disappeared];
  v9 = [v3 initWithFormat:@"BMMessagesSearchEventMessagesAppViewContext with millisecondsSinceSessionStarted: %@, sessionId: %@, queryId: %@, appeared: %@, disappeared: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMMessagesSearchEventMessagesAppViewContext)initWithMillisecondsSinceSessionStarted:(id)a3 sessionId:(id)a4 queryId:(id)a5 appeared:(id)a6 disappeared:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = BMMessagesSearchEventMessagesAppViewContext;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v12)
    {
      v17->_hasMillisecondsSinceSessionStarted = 1;
      v18 = [v12 unsignedLongLongValue];
    }

    else
    {
      v18 = 0;
      v17->_hasMillisecondsSinceSessionStarted = 0;
    }

    v17->_millisecondsSinceSessionStarted = v18;
    objc_storeStrong(&v17->_sessionId, a4);
    objc_storeStrong(&v17->_queryId, a5);
    objc_storeStrong(&v17->_appeared, a6);
    objc_storeStrong(&v17->_disappeared, a7);
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
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"appeared_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_718];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"disappeared_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_720];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __54__BMMessagesSearchEventMessagesAppViewContext_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 disappeared];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __54__BMMessagesSearchEventMessagesAppViewContext_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 appeared];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

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

    v8 = [[BMMessagesSearchEventMessagesAppViewContext alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end