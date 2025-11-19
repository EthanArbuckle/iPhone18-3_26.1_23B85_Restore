@interface BMVisualIntelligenceCameraLookupEventServerRequestContext
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMVisualIntelligenceCameraLookupEventServerRequestContext)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMVisualIntelligenceCameraLookupEventServerRequestContext)initWithVisualLookupSessionId:(id)a3 connectionUuid:(id)a4 started:(id)a5 ended:(id)a6 failed:(id)a7;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMVisualIntelligenceCameraLookupEventServerRequestContext

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self visualLookupSessionId];
    v7 = [v5 visualLookupSessionId];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self visualLookupSessionId];
      v10 = [v5 visualLookupSessionId];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    v13 = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self connectionUuid];
    v14 = [v5 connectionUuid];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self connectionUuid];
      v17 = [v5 connectionUuid];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    v19 = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self started];
    v20 = [v5 started];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self started];
      v23 = [v5 started];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_17;
      }
    }

    v25 = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self ended];
    v26 = [v5 ended];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self ended];
      v29 = [v5 ended];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
LABEL_17:
        v12 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    v31 = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self failed];
    v32 = [v5 failed];
    if (v31 == v32)
    {
      v12 = 1;
    }

    else
    {
      v33 = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self failed];
      v34 = [v5 failed];
      v12 = [v33 isEqual:v34];
    }

    goto LABEL_23;
  }

  v12 = 0;
LABEL_24:

  return v12;
}

- (id)jsonDictionary
{
  v26[5] = *MEMORY[0x1E69E9840];
  v3 = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self visualLookupSessionId];
  v4 = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self connectionUuid];
  v5 = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self started];
  v6 = [v5 jsonDictionary];

  v7 = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self ended];
  v8 = [v7 jsonDictionary];

  v9 = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self failed];
  v10 = [v9 jsonDictionary];

  v21 = @"visualLookupSessionId";
  v11 = v3;
  if (!v3)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v11;
  v26[0] = v11;
  v22 = @"connectionUuid";
  v12 = v4;
  if (!v4)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v26[1] = v12;
  v23 = @"started";
  v13 = v6;
  if (!v6)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = v13;
  v24 = @"ended";
  v14 = v8;
  if (!v8)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = v14;
  v25 = @"failed";
  v15 = v10;
  if (!v10)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v21 count:{5, v19}];
  if (v10)
  {
    if (v8)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (v8)
    {
LABEL_13:
      if (v6)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  if (v6)
  {
LABEL_14:
    if (v4)
    {
      goto LABEL_15;
    }

LABEL_22:

    if (v3)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_21:

  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (v3)
  {
    goto LABEL_16;
  }

LABEL_23:

LABEL_16:
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BMVisualIntelligenceCameraLookupEventServerRequestContext)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v62[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"visualLookupSessionId"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"connectionUuid"];
    v47 = a4;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v20 = 0;
          v17 = 0;
          goto LABEL_53;
        }

        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v25 = self;
        v26 = *MEMORY[0x1E698F240];
        v59 = *MEMORY[0x1E696A578];
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"connectionUuid"];
        v60 = v18;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
        v28 = v26;
        self = v25;
        v49 = v27;
        v20 = 0;
        v17 = 0;
        *v47 = [v24 initWithDomain:v28 code:2 userInfo:?];
        goto LABEL_51;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"started"];
    v48 = v10;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v47)
        {
          v17 = 0;
          v20 = v10;
          goto LABEL_52;
        }

        v46 = objc_alloc(MEMORY[0x1E696ABC0]);
        v42 = *MEMORY[0x1E698F240];
        v57 = *MEMORY[0x1E696A578];
        v31 = v8;
        v32 = self;
        v33 = objc_alloc(MEMORY[0x1E696AEC0]);
        v39 = objc_opt_class();
        v34 = v33;
        self = v32;
        v8 = v31;
        v49 = [v34 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v39, @"started"];
        v58 = v49;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
        *v47 = [v46 initWithDomain:v42 code:2 userInfo:v35];

        v17 = 0;
        v18 = v11;
        goto LABEL_50;
      }

      v18 = v11;
      v52 = 0;
      v49 = [[BMVisualIntelligenceCameraLookupEventRequestMetadata alloc] initWithJSONDictionary:v18 error:&v52];
      v19 = v52;
      v20 = v48;
      if (v19)
      {
        if (v47)
        {
          v19 = v19;
          *v47 = v19;
        }

        v17 = 0;
        goto LABEL_51;
      }
    }

    else
    {
      v49 = 0;
    }

    v45 = v8;
    v12 = [v6 objectForKeyedSubscript:@"ended"];
    v13 = self;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v47)
        {
          v17 = 0;
          goto LABEL_49;
        }

        v43 = objc_alloc(MEMORY[0x1E696ABC0]);
        v40 = *MEMORY[0x1E698F240];
        v55 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"ended"];
        v56 = v14;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
        v17 = 0;
        *v47 = [v43 initWithDomain:v40 code:2 userInfo:v15];
LABEL_48:

LABEL_49:
        v18 = v11;
        self = v13;
        v8 = v45;
LABEL_50:
        v20 = v48;
LABEL_51:

        v11 = v18;
LABEL_52:

        goto LABEL_53;
      }

      v15 = v12;
      v51 = 0;
      v14 = [[BMVisualIntelligenceCameraLookupEventResponseMetadata alloc] initWithJSONDictionary:v15 error:&v51];
      v21 = v51;
      if (v21)
      {
        if (v47)
        {
          v21 = v21;
          *v47 = v21;
        }

        goto LABEL_55;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = [v6 objectForKeyedSubscript:@"failed"];
    if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v16 = 0;
LABEL_16:
      v17 = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)v13 initWithVisualLookupSessionId:v45 connectionUuid:v48 started:v49 ended:v14 failed:v16];
      v13 = v17;
LABEL_47:

      goto LABEL_48;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v15;
      v50 = 0;
      v16 = [[BMVisualIntelligenceCameraLookupEventFailureMetadata alloc] initWithJSONDictionary:v29 error:&v50];
      v30 = v50;
      if (!v30)
      {

        goto LABEL_16;
      }

      if (v47)
      {
        v30 = v30;
        *v47 = v30;
      }

LABEL_46:
      v17 = 0;
      goto LABEL_47;
    }

    if (v47)
    {
      v44 = objc_alloc(MEMORY[0x1E696ABC0]);
      v41 = *MEMORY[0x1E698F240];
      v53 = *MEMORY[0x1E696A578];
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"failed"];
      v54 = v16;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      *v47 = [v44 initWithDomain:v41 code:2 userInfo:v36];

      goto LABEL_46;
    }

LABEL_55:
    v17 = 0;
    goto LABEL_48;
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
    v17 = 0;
    goto LABEL_54;
  }

  v22 = objc_alloc(MEMORY[0x1E696ABC0]);
  v23 = *MEMORY[0x1E698F240];
  v61 = *MEMORY[0x1E696A578];
  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"visualLookupSessionId"];
  v62[0] = v20;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:&v61 count:1];
  v8 = 0;
  v17 = 0;
  *a4 = [v22 initWithDomain:v23 code:2 userInfo:v9];
LABEL_53:

LABEL_54:
  v37 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_visualLookupSessionId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_connectionUuid)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_started)
  {
    PBDataWriterPlaceMark();
    [(BMVisualIntelligenceCameraLookupEventRequestMetadata *)self->_started writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_ended)
  {
    PBDataWriterPlaceMark();
    [(BMVisualIntelligenceCameraLookupEventResponseMetadata *)self->_ended writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_failed)
  {
    PBDataWriterPlaceMark();
    [(BMVisualIntelligenceCameraLookupEventFailureMetadata *)self->_failed writeTo:v4];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = BMVisualIntelligenceCameraLookupEventServerRequestContext;
  v5 = [(BMEventBase *)&v25 init];
  if (!v5)
  {
    goto LABEL_41;
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
        LOBYTE(v26) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v26 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v26 & 0x7F) << v7;
        if ((v26 & 0x80) == 0)
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
      if ((v14 >> 3) <= 2)
      {
        if (v15 == 1)
        {
          v18 = PBReaderReadString();
          v19 = 24;
        }

        else
        {
          if (v15 != 2)
          {
LABEL_37:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_40;
            }

            goto LABEL_38;
          }

          v18 = PBReaderReadString();
          v19 = 32;
        }

        v21 = *(&v5->super.super.isa + v19);
        *(&v5->super.super.isa + v19) = v18;
      }

      else
      {
        switch(v15)
        {
          case 3:
            v26 = 0;
            v27 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_40;
            }

            v16 = [[BMVisualIntelligenceCameraLookupEventRequestMetadata alloc] initByReadFrom:v4];
            if (!v16)
            {
              goto LABEL_40;
            }

            v17 = 40;
            break;
          case 4:
            v26 = 0;
            v27 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_40;
            }

            v16 = [[BMVisualIntelligenceCameraLookupEventResponseMetadata alloc] initByReadFrom:v4];
            if (!v16)
            {
              goto LABEL_40;
            }

            v17 = 48;
            break;
          case 5:
            v26 = 0;
            v27 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_40;
            }

            v16 = [[BMVisualIntelligenceCameraLookupEventFailureMetadata alloc] initByReadFrom:v4];
            if (!v16)
            {
              goto LABEL_40;
            }

            v17 = 56;
            break;
          default:
            goto LABEL_37;
        }

        v20 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;

        PBReaderRecallMark();
      }

LABEL_38:
      v22 = [v4 position];
    }

    while (v22 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_40:
    v23 = 0;
  }

  else
  {
LABEL_41:
    v23 = v5;
  }

  return v23;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self visualLookupSessionId];
  v5 = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self connectionUuid];
  v6 = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self started];
  v7 = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self ended];
  v8 = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self failed];
  v9 = [v3 initWithFormat:@"BMVisualIntelligenceCameraLookupEventServerRequestContext with visualLookupSessionId: %@, connectionUuid: %@, started: %@, ended: %@, failed: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMVisualIntelligenceCameraLookupEventServerRequestContext)initWithVisualLookupSessionId:(id)a3 connectionUuid:(id)a4 started:(id)a5 ended:(id)a6 failed:(id)a7
{
  v19 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = BMVisualIntelligenceCameraLookupEventServerRequestContext;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_visualLookupSessionId, a3);
    objc_storeStrong(&v17->_connectionUuid, a4);
    objc_storeStrong(&v17->_started, a5);
    objc_storeStrong(&v17->_ended, a6);
    objc_storeStrong(&v17->_failed, a7);
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"visualLookupSessionId" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"connectionUuid" number:2 type:13 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"started" number:3 type:14 subMessageClass:objc_opt_class()];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"ended" number:4 type:14 subMessageClass:objc_opt_class()];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"failed" number:5 type:14 subMessageClass:objc_opt_class()];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"visualLookupSessionId" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"connectionUuid" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"started_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_331];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"ended_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_333];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"failed_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_335];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __68__BMVisualIntelligenceCameraLookupEventServerRequestContext_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 failed];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __68__BMVisualIntelligenceCameraLookupEventServerRequestContext_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 ended];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __68__BMVisualIntelligenceCameraLookupEventServerRequestContext_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 started];
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

    v8 = [[BMVisualIntelligenceCameraLookupEventServerRequestContext alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end