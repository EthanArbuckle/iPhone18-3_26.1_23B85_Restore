@interface BMVisualIntelligenceCameraLookupEventVisualIntelligenceContext
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMVisualIntelligenceCameraLookupEventVisualIntelligenceContext)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMVisualIntelligenceCameraLookupEventVisualIntelligenceContext)initWithVisualLookupSessionId:(id)a3 appeared:(int)a4 disappeared:(int)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMVisualIntelligenceCameraLookupEventVisualIntelligenceContext

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMVisualIntelligenceCameraLookupEventVisualIntelligenceContext *)self visualLookupSessionId];
    v7 = [v5 visualLookupSessionId];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMVisualIntelligenceCameraLookupEventVisualIntelligenceContext *)self visualLookupSessionId];
      v10 = [v5 visualLookupSessionId];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v13 = [(BMVisualIntelligenceCameraLookupEventVisualIntelligenceContext *)self appeared];
    if (v13 == [v5 appeared])
    {
      v14 = [(BMVisualIntelligenceCameraLookupEventVisualIntelligenceContext *)self disappeared];
      v12 = v14 == [v5 disappeared];
LABEL_10:

      goto LABEL_11;
    }

LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)jsonDictionary
{
  v13[3] = *MEMORY[0x1E69E9840];
  v3 = [(BMVisualIntelligenceCameraLookupEventVisualIntelligenceContext *)self visualLookupSessionId];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMVisualIntelligenceCameraLookupEventVisualIntelligenceContext appeared](self, "appeared")}];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMVisualIntelligenceCameraLookupEventVisualIntelligenceContext disappeared](self, "disappeared")}];
  v12[0] = @"visualLookupSessionId";
  v6 = v3;
  if (!v3)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v6;
  v12[1] = @"appeared";
  v7 = v4;
  if (!v4)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v7;
  v12[2] = @"disappeared";
  v8 = v5;
  if (!v5)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (v5)
  {
    if (v4)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (v3)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (v3)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BMVisualIntelligenceCameraLookupEventVisualIntelligenceContext)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v32[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"visualLookupSessionId"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"appeared"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v9;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v10 = 0;
            v14 = 0;
            goto LABEL_26;
          }

          v25 = objc_alloc(MEMORY[0x1E696ABC0]);
          v20 = *MEMORY[0x1E698F240];
          v29 = *MEMORY[0x1E696A578];
          v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"appeared"];
          v30 = v16;
          v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
          v21 = [v25 initWithDomain:v20 code:2 userInfo:v15];
          v10 = 0;
          v14 = 0;
          *a4 = v21;
          goto LABEL_25;
        }

        v11 = [MEMORY[0x1E696AD98] numberWithInt:BMVisualIntelligenceCameraLookupEventTamaleViewAppearedReasonFromString(v9)];
      }

      v10 = v11;
    }

    else
    {
      v10 = 0;
    }

    v15 = [v6 objectForKeyedSubscript:@"disappeared"];
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v15;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (a4)
          {
            v26 = objc_alloc(MEMORY[0x1E696ABC0]);
            v24 = *MEMORY[0x1E698F240];
            v27 = *MEMORY[0x1E696A578];
            v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"disappeared"];
            v28 = v22;
            v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
            *a4 = [v26 initWithDomain:v24 code:2 userInfo:v23];
          }

          v16 = 0;
          v14 = 0;
          goto LABEL_25;
        }

        v17 = [MEMORY[0x1E696AD98] numberWithInt:BMVisualIntelligenceCameraLookupEventTamaleViewDisappearedReasonFromString(v15)];
      }

      v16 = v17;
    }

    else
    {
      v16 = 0;
    }

    self = -[BMVisualIntelligenceCameraLookupEventVisualIntelligenceContext initWithVisualLookupSessionId:appeared:disappeared:](self, "initWithVisualLookupSessionId:appeared:disappeared:", v8, [v10 intValue], objc_msgSend(v16, "intValue"));
    v14 = self;
LABEL_25:

    goto LABEL_26;
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
    v14 = 0;
    goto LABEL_27;
  }

  v12 = objc_alloc(MEMORY[0x1E696ABC0]);
  v13 = *MEMORY[0x1E698F240];
  v31 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"visualLookupSessionId"];
  v32[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  v8 = 0;
  v14 = 0;
  *a4 = [v12 initWithDomain:v13 code:2 userInfo:v9];
LABEL_26:

LABEL_27:
  v18 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMVisualIntelligenceCameraLookupEventVisualIntelligenceContext *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_visualLookupSessionId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_appeared)
  {
    PBDataWriterWriteUint32Field();
    v4 = v5;
  }

  if (self->_disappeared)
  {
    PBDataWriterWriteUint32Field();
    v4 = v5;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = BMVisualIntelligenceCameraLookupEventVisualIntelligenceContext;
  v5 = [(BMEventBase *)&v34 init];
  if (!v5)
  {
    goto LABEL_54;
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
        v35 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v35 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v35 & 0x7F) << v7;
        if ((v35 & 0x80) == 0)
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) == 1)
      {
        v28 = PBReaderReadString();
        visualLookupSessionId = v5->_visualLookupSessionId;
        v5->_visualLookupSessionId = v28;
      }

      else
      {
        if (v15 == 2)
        {
          v23 = 0;
          v24 = 0;
          v18 = 0;
          while (1)
          {
            v35 = 0;
            v25 = [v4 position] + 1;
            if (v25 >= [v4 position] && (v26 = objc_msgSend(v4, "position") + 1, v26 <= objc_msgSend(v4, "length")))
            {
              v27 = [v4 data];
              [v27 getBytes:&v35 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v18 |= (v35 & 0x7F) << v23;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v22 = v24++ > 8;
            if (v22)
            {
              goto LABEL_44;
            }
          }

          if (([v4 hasError] & 1) != 0 || v18 > 3)
          {
LABEL_44:
            LODWORD(v18) = 0;
          }

          v30 = 20;
        }

        else
        {
          if (v15 != 3)
          {
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_53;
            }

            goto LABEL_51;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          while (1)
          {
            v35 = 0;
            v19 = [v4 position] + 1;
            if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
            {
              v21 = [v4 data];
              [v21 getBytes:&v35 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v18 |= (v35 & 0x7F) << v16;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v22 = v17++ > 8;
            if (v22)
            {
              goto LABEL_48;
            }
          }

          if (([v4 hasError] & 1) != 0 || v18 > 3)
          {
LABEL_48:
            LODWORD(v18) = 0;
          }

          v30 = 24;
        }

        *(&v5->super.super.isa + v30) = v18;
      }

LABEL_51:
      v31 = [v4 position];
    }

    while (v31 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_53:
    v32 = 0;
  }

  else
  {
LABEL_54:
    v32 = v5;
  }

  return v32;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMVisualIntelligenceCameraLookupEventVisualIntelligenceContext *)self visualLookupSessionId];
  v5 = BMVisualIntelligenceCameraLookupEventTamaleViewAppearedReasonAsString([(BMVisualIntelligenceCameraLookupEventVisualIntelligenceContext *)self appeared]);
  v6 = BMVisualIntelligenceCameraLookupEventTamaleViewDisappearedReasonAsString([(BMVisualIntelligenceCameraLookupEventVisualIntelligenceContext *)self disappeared]);
  v7 = [v3 initWithFormat:@"BMVisualIntelligenceCameraLookupEventVisualIntelligenceContext with visualLookupSessionId: %@, appeared: %@, disappeared: %@", v4, v5, v6];

  return v7;
}

- (BMVisualIntelligenceCameraLookupEventVisualIntelligenceContext)initWithVisualLookupSessionId:(id)a3 appeared:(int)a4 disappeared:(int)a5
{
  v9 = a3;
  v12.receiver = self;
  v12.super_class = BMVisualIntelligenceCameraLookupEventVisualIntelligenceContext;
  v10 = [(BMEventBase *)&v12 init];
  if (v10)
  {
    v10->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v10->_visualLookupSessionId, a3);
    v10->_appeared = a4;
    v10->_disappeared = a5;
  }

  return v10;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"visualLookupSessionId" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appeared" number:2 type:4 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"disappeared" number:3 type:4 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"visualLookupSessionId" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appeared" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"disappeared" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

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

    v8 = [[BMVisualIntelligenceCameraLookupEventVisualIntelligenceContext alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end