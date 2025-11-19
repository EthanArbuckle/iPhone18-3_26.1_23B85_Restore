@interface BMMessagesSearchEventUserInteractionDetected
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMessagesSearchEventUserInteractionDetected)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMMessagesSearchEventUserInteractionDetected)initWithMillisecondsSinceSessionStarted:(id)a3 sessionId:(id)a4 queryId:(id)a5 visualComponent:(id)a6 interactionType:(int)a7;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMessagesSearchEventUserInteractionDetected

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMMessagesSearchEventUserInteractionDetected hasMillisecondsSinceSessionStarted](self, "hasMillisecondsSinceSessionStarted") || [v5 hasMillisecondsSinceSessionStarted])
    {
      if (![(BMMessagesSearchEventUserInteractionDetected *)self hasMillisecondsSinceSessionStarted])
      {
        goto LABEL_18;
      }

      if (![v5 hasMillisecondsSinceSessionStarted])
      {
        goto LABEL_18;
      }

      v6 = [(BMMessagesSearchEventUserInteractionDetected *)self millisecondsSinceSessionStarted];
      if (v6 != [v5 millisecondsSinceSessionStarted])
      {
        goto LABEL_18;
      }
    }

    v7 = [(BMMessagesSearchEventUserInteractionDetected *)self sessionId];
    v8 = [v5 sessionId];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [(BMMessagesSearchEventUserInteractionDetected *)self sessionId];
      v11 = [v5 sessionId];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_18;
      }
    }

    v14 = [(BMMessagesSearchEventUserInteractionDetected *)self queryId];
    v15 = [v5 queryId];
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      v17 = [(BMMessagesSearchEventUserInteractionDetected *)self queryId];
      v18 = [v5 queryId];
      v19 = [v17 isEqual:v18];

      if (!v19)
      {
        goto LABEL_18;
      }
    }

    v20 = [(BMMessagesSearchEventUserInteractionDetected *)self visualComponent];
    v21 = [v5 visualComponent];
    v22 = v21;
    if (v20 == v21)
    {
    }

    else
    {
      v23 = [(BMMessagesSearchEventUserInteractionDetected *)self visualComponent];
      v24 = [v5 visualComponent];
      v25 = [v23 isEqual:v24];

      if (!v25)
      {
LABEL_18:
        v13 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    v27 = [(BMMessagesSearchEventUserInteractionDetected *)self interactionType];
    v13 = v27 == [v5 interactionType];
    goto LABEL_19;
  }

  v13 = 0;
LABEL_20:

  return v13;
}

- (id)jsonDictionary
{
  v24[5] = *MEMORY[0x1E69E9840];
  if ([(BMMessagesSearchEventUserInteractionDetected *)self hasMillisecondsSinceSessionStarted])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventUserInteractionDetected millisecondsSinceSessionStarted](self, "millisecondsSinceSessionStarted")}];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(BMMessagesSearchEventUserInteractionDetected *)self sessionId];
  v5 = [(BMMessagesSearchEventUserInteractionDetected *)self queryId];
  v6 = [(BMMessagesSearchEventUserInteractionDetected *)self visualComponent];
  v7 = [v6 jsonDictionary];

  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMessagesSearchEventUserInteractionDetected interactionType](self, "interactionType")}];
  v19 = @"millisecondsSinceSessionStarted";
  v9 = v3;
  if (!v3)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v17 = v9;
  v24[0] = v9;
  v20 = @"sessionId";
  v10 = v4;
  if (!v4)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v24[1] = v10;
  v21 = @"queryId";
  v11 = v5;
  if (!v5)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v24[2] = v11;
  v22 = @"visualComponent";
  v12 = v7;
  if (!v7)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v24[3] = v12;
  v23 = @"interactionType";
  v13 = v8;
  if (!v8)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v24[4] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v19 count:{5, v17}];
  if (v8)
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
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BMMessagesSearchEventUserInteractionDetected)initWithJSONDictionary:(id)a3 error:(id *)a4
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
          v41 = 0;
          v18 = 0;
          goto LABEL_45;
        }

        v35 = a4;
        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v24 = *MEMORY[0x1E698F240];
        v49 = *MEMORY[0x1E696A578];
        v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sessionId"];
        v50 = v39;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        v41 = 0;
        v18 = 0;
        *v35 = [v23 initWithDomain:v24 code:2 userInfo:v10];
        goto LABEL_44;
      }

      v41 = v9;
    }

    else
    {
      v41 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"queryId"];
    v38 = v8;
    v40 = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v39 = 0;
          v18 = 0;
          goto LABEL_44;
        }

        v25 = a4;
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E698F240];
        v47 = *MEMORY[0x1E696A578];
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"queryId"];
        v48 = v11;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        v39 = 0;
        v18 = 0;
        *v25 = [v26 initWithDomain:v27 code:2 userInfo:v13];
        goto LABEL_42;
      }

      v39 = v10;
    }

    else
    {
      v39 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"visualComponent"];
    v12 = a4;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v18 = 0;
          goto LABEL_43;
        }

        v36 = objc_alloc(MEMORY[0x1E696ABC0]);
        v28 = *MEMORY[0x1E698F240];
        v45 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"visualComponent"];
        v46 = v13;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        *a4 = [v36 initWithDomain:v28 code:2 userInfo:v29];

        v18 = 0;
LABEL_42:

LABEL_43:
        self = v40;
        v8 = v38;
LABEL_44:

        goto LABEL_45;
      }

      v16 = v11;
      v42 = 0;
      v13 = [[BMMessagesSearchEventVisualComponent alloc] initWithJSONDictionary:v16 error:&v42];
      v17 = v42;
      if (v17)
      {
        if (v12)
        {
          v17 = v17;
          *v12 = v17;
        }

        v18 = 0;
        v11 = v16;
        goto LABEL_42;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = [v6 objectForKeyedSubscript:@"interactionType"];
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v14;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (v12)
          {
            v37 = objc_alloc(MEMORY[0x1E696ABC0]);
            v34 = *MEMORY[0x1E698F240];
            v43 = *MEMORY[0x1E696A578];
            v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"interactionType"];
            v44 = v32;
            v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
            *v12 = [v37 initWithDomain:v34 code:2 userInfo:v33];
          }

          v15 = 0;
          v18 = 0;
          goto LABEL_41;
        }

        v22 = [MEMORY[0x1E696AD98] numberWithInt:BMMessagesSearchEventInteractionTypeFromString(v14)];
      }

      v15 = v22;
    }

    else
    {
      v15 = 0;
    }

    v18 = -[BMMessagesSearchEventUserInteractionDetected initWithMillisecondsSinceSessionStarted:sessionId:queryId:visualComponent:interactionType:](v40, "initWithMillisecondsSinceSessionStarted:sessionId:queryId:visualComponent:interactionType:", v38, v41, v39, v13, [v15 intValue]);
    v40 = v18;
LABEL_41:

    goto LABEL_42;
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
    v18 = 0;
    goto LABEL_46;
  }

  v19 = a4;
  v20 = objc_alloc(MEMORY[0x1E696ABC0]);
  v21 = *MEMORY[0x1E698F240];
  v51 = *MEMORY[0x1E696A578];
  v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"millisecondsSinceSessionStarted"];
  v52[0] = v41;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
  v8 = 0;
  v18 = 0;
  *v19 = [v20 initWithDomain:v21 code:2 userInfo:v9];
LABEL_45:

LABEL_46:
  v30 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMessagesSearchEventUserInteractionDetected *)self writeTo:v3];
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

  if (self->_visualComponent)
  {
    PBDataWriterPlaceMark();
    [(BMMessagesSearchEventVisualComponent *)self->_visualComponent writeTo:v4];
    PBDataWriterRecallMark();
  }

  interactionType = self->_interactionType;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = BMMessagesSearchEventUserInteractionDetected;
  v5 = [(BMEventBase *)&v38 init];
  if (!v5)
  {
    goto LABEL_61;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_59;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v39[0]) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:v39 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v39[0] & 0x7F) << v7;
        if ((v39[0] & 0x80) == 0)
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
        goto LABEL_59;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 2)
      {
        break;
      }

      switch(v15)
      {
        case 3:
          v23 = PBReaderReadString();
          v24 = 48;
LABEL_35:
          v25 = *(&v5->super.super.isa + v24);
          *(&v5->super.super.isa + v24) = v23;

          break;
        case 4:
          v39[0] = 0;
          v39[1] = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_60;
          }

          v26 = [[BMMessagesSearchEventVisualComponent alloc] initByReadFrom:v4];
          if (!v26)
          {
            goto LABEL_60;
          }

          visualComponent = v5->_visualComponent;
          v5->_visualComponent = v26;

          PBReaderRecallMark();
          break;
        case 5:
          v16 = 0;
          v17 = 0;
          v18 = 0;
          while (1)
          {
            LOBYTE(v39[0]) = 0;
            v19 = [v4 position] + 1;
            if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
            {
              v21 = [v4 data];
              [v21 getBytes:v39 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v18 |= (v39[0] & 0x7F) << v16;
            if ((v39[0] & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            if (v17++ > 8)
            {
              goto LABEL_56;
            }
          }

          if (([v4 hasError] & 1) != 0 || v18 > 3)
          {
LABEL_56:
            LODWORD(v18) = 0;
          }

          v5->_interactionType = v18;
          break;
        default:
          goto LABEL_48;
      }

LABEL_58:
      v35 = [v4 position];
      if (v35 >= [v4 length])
      {
        goto LABEL_59;
      }
    }

    if (v15 == 1)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v5->_hasMillisecondsSinceSessionStarted = 1;
      while (1)
      {
        LOBYTE(v39[0]) = 0;
        v31 = [v4 position] + 1;
        if (v31 >= [v4 position] && (v32 = objc_msgSend(v4, "position") + 1, v32 <= objc_msgSend(v4, "length")))
        {
          v33 = [v4 data];
          [v33 getBytes:v39 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v30 |= (v39[0] & 0x7F) << v28;
        if ((v39[0] & 0x80) == 0)
        {
          break;
        }

        v28 += 7;
        v13 = v29++ >= 9;
        if (v13)
        {
          v34 = 0;
          goto LABEL_53;
        }
      }

      if ([v4 hasError])
      {
        v34 = 0;
      }

      else
      {
        v34 = v30;
      }

LABEL_53:
      v5->_millisecondsSinceSessionStarted = v34;
      goto LABEL_58;
    }

    if (v15 != 2)
    {
LABEL_48:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_58;
    }

    v23 = PBReaderReadString();
    v24 = 40;
    goto LABEL_35;
  }

LABEL_59:
  if ([v4 hasError])
  {
LABEL_60:
    v36 = 0;
  }

  else
  {
LABEL_61:
    v36 = v5;
  }

  return v36;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventUserInteractionDetected millisecondsSinceSessionStarted](self, "millisecondsSinceSessionStarted")}];
  v5 = [(BMMessagesSearchEventUserInteractionDetected *)self sessionId];
  v6 = [(BMMessagesSearchEventUserInteractionDetected *)self queryId];
  v7 = [(BMMessagesSearchEventUserInteractionDetected *)self visualComponent];
  v8 = BMMessagesSearchEventInteractionTypeAsString([(BMMessagesSearchEventUserInteractionDetected *)self interactionType]);
  v9 = [v3 initWithFormat:@"BMMessagesSearchEventUserInteractionDetected with millisecondsSinceSessionStarted: %@, sessionId: %@, queryId: %@, visualComponent: %@, interactionType: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMMessagesSearchEventUserInteractionDetected)initWithMillisecondsSinceSessionStarted:(id)a3 sessionId:(id)a4 queryId:(id)a5 visualComponent:(id)a6 interactionType:(int)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = BMMessagesSearchEventUserInteractionDetected;
  v16 = [(BMEventBase *)&v19 init];
  if (v16)
  {
    v16->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v12)
    {
      v16->_hasMillisecondsSinceSessionStarted = 1;
      v17 = [v12 unsignedLongLongValue];
    }

    else
    {
      v17 = 0;
      v16->_hasMillisecondsSinceSessionStarted = 0;
    }

    v16->_millisecondsSinceSessionStarted = v17;
    objc_storeStrong(&v16->_sessionId, a4);
    objc_storeStrong(&v16->_queryId, a5);
    objc_storeStrong(&v16->_visualComponent, a6);
    v16->_interactionType = a7;
  }

  return v16;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"millisecondsSinceSessionStarted" number:1 type:5 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sessionId" number:2 type:13 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"queryId" number:3 type:13 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"visualComponent" number:4 type:14 subMessageClass:objc_opt_class()];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"interactionType" number:5 type:4 subMessageClass:0];
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
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"visualComponent_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_454_104900];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"interactionType" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __55__BMMessagesSearchEventUserInteractionDetected_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 visualComponent];
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

    v8 = [[BMMessagesSearchEventUserInteractionDetected alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end