@interface BMVisualIntelligenceCameraLookupEventServerRequestContext
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMVisualIntelligenceCameraLookupEventServerRequestContext)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMVisualIntelligenceCameraLookupEventServerRequestContext)initWithVisualLookupSessionId:(id)id connectionUuid:(id)uuid started:(id)started ended:(id)ended failed:(id)failed;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMVisualIntelligenceCameraLookupEventServerRequestContext

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    visualLookupSessionId = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self visualLookupSessionId];
    visualLookupSessionId2 = [v5 visualLookupSessionId];
    v8 = visualLookupSessionId2;
    if (visualLookupSessionId == visualLookupSessionId2)
    {
    }

    else
    {
      visualLookupSessionId3 = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self visualLookupSessionId];
      visualLookupSessionId4 = [v5 visualLookupSessionId];
      v11 = [visualLookupSessionId3 isEqual:visualLookupSessionId4];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    connectionUuid = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self connectionUuid];
    connectionUuid2 = [v5 connectionUuid];
    v15 = connectionUuid2;
    if (connectionUuid == connectionUuid2)
    {
    }

    else
    {
      connectionUuid3 = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self connectionUuid];
      connectionUuid4 = [v5 connectionUuid];
      v18 = [connectionUuid3 isEqual:connectionUuid4];

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    started = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self started];
    started2 = [v5 started];
    v21 = started2;
    if (started == started2)
    {
    }

    else
    {
      started3 = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self started];
      started4 = [v5 started];
      v24 = [started3 isEqual:started4];

      if (!v24)
      {
        goto LABEL_17;
      }
    }

    ended = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self ended];
    ended2 = [v5 ended];
    v27 = ended2;
    if (ended == ended2)
    {
    }

    else
    {
      ended3 = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self ended];
      ended4 = [v5 ended];
      v30 = [ended3 isEqual:ended4];

      if (!v30)
      {
LABEL_17:
        v12 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    failed = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self failed];
    failed2 = [v5 failed];
    if (failed == failed2)
    {
      v12 = 1;
    }

    else
    {
      failed3 = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self failed];
      failed4 = [v5 failed];
      v12 = [failed3 isEqual:failed4];
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
  visualLookupSessionId = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self visualLookupSessionId];
  connectionUuid = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self connectionUuid];
  started = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self started];
  jsonDictionary = [started jsonDictionary];

  ended = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self ended];
  jsonDictionary2 = [ended jsonDictionary];

  failed = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self failed];
  jsonDictionary3 = [failed jsonDictionary];

  v21 = @"visualLookupSessionId";
  null = visualLookupSessionId;
  if (!visualLookupSessionId)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v19 = null;
  v26[0] = null;
  v22 = @"connectionUuid";
  null2 = connectionUuid;
  if (!connectionUuid)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v26[1] = null2;
  v23 = @"started";
  null3 = jsonDictionary;
  if (!jsonDictionary)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = null3;
  v24 = @"ended";
  null4 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = null4;
  v25 = @"failed";
  null5 = jsonDictionary3;
  if (!jsonDictionary3)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = null5;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v21 count:{5, v19}];
  if (jsonDictionary3)
  {
    if (jsonDictionary2)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (jsonDictionary2)
    {
LABEL_13:
      if (jsonDictionary)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  if (jsonDictionary)
  {
LABEL_14:
    if (connectionUuid)
    {
      goto LABEL_15;
    }

LABEL_22:

    if (visualLookupSessionId)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_21:

  if (!connectionUuid)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (visualLookupSessionId)
  {
    goto LABEL_16;
  }

LABEL_23:

LABEL_16:
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BMVisualIntelligenceCameraLookupEventServerRequestContext)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v62[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"visualLookupSessionId"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"connectionUuid"];
    errorCopy = error;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v20 = 0;
          v17 = 0;
          goto LABEL_53;
        }

        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        selfCopy = self;
        v26 = *MEMORY[0x1E698F240];
        v59 = *MEMORY[0x1E696A578];
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"connectionUuid"];
        v60 = v18;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
        v28 = v26;
        self = selfCopy;
        v49 = v27;
        v20 = 0;
        v17 = 0;
        *errorCopy = [v24 initWithDomain:v28 code:2 userInfo:?];
        goto LABEL_51;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"started"];
    v48 = v10;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v17 = 0;
          v20 = v10;
          goto LABEL_52;
        }

        v46 = objc_alloc(MEMORY[0x1E696ABC0]);
        v42 = *MEMORY[0x1E698F240];
        v57 = *MEMORY[0x1E696A578];
        v31 = v8;
        selfCopy2 = self;
        v33 = objc_alloc(MEMORY[0x1E696AEC0]);
        v39 = objc_opt_class();
        v34 = v33;
        self = selfCopy2;
        v8 = v31;
        v49 = [v34 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v39, @"started"];
        v58 = v49;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
        *errorCopy = [v46 initWithDomain:v42 code:2 userInfo:v35];

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
        if (errorCopy)
        {
          v19 = v19;
          *errorCopy = v19;
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
    v12 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    selfCopy3 = self;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
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
        *errorCopy = [v43 initWithDomain:v40 code:2 userInfo:v15];
LABEL_48:

LABEL_49:
        v18 = v11;
        self = selfCopy3;
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
        if (errorCopy)
        {
          v21 = v21;
          *errorCopy = v21;
        }

        goto LABEL_55;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"failed"];
    if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v16 = 0;
LABEL_16:
      v17 = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)selfCopy3 initWithVisualLookupSessionId:v45 connectionUuid:v48 started:v49 ended:v14 failed:v16];
      selfCopy3 = v17;
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

      if (errorCopy)
      {
        v30 = v30;
        *errorCopy = v30;
      }

LABEL_46:
      v17 = 0;
      goto LABEL_47;
    }

    if (errorCopy)
    {
      v44 = objc_alloc(MEMORY[0x1E696ABC0]);
      v41 = *MEMORY[0x1E698F240];
      v53 = *MEMORY[0x1E696A578];
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"failed"];
      v54 = v16;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      *errorCopy = [v44 initWithDomain:v41 code:2 userInfo:v36];

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

  if (!error)
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
  *error = [v22 initWithDomain:v23 code:2 userInfo:v9];
LABEL_53:

LABEL_54:
  v37 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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
    [(BMVisualIntelligenceCameraLookupEventRequestMetadata *)self->_started writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_ended)
  {
    PBDataWriterPlaceMark();
    [(BMVisualIntelligenceCameraLookupEventResponseMetadata *)self->_ended writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_failed)
  {
    PBDataWriterPlaceMark();
    [(BMVisualIntelligenceCameraLookupEventFailureMetadata *)self->_failed writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v25.receiver = self;
  v25.super_class = BMVisualIntelligenceCameraLookupEventServerRequestContext;
  v5 = [(BMEventBase *)&v25 init];
  if (!v5)
  {
    goto LABEL_41;
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
        LOBYTE(v26) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v26 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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

            v16 = [[BMVisualIntelligenceCameraLookupEventRequestMetadata alloc] initByReadFrom:fromCopy];
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

            v16 = [[BMVisualIntelligenceCameraLookupEventResponseMetadata alloc] initByReadFrom:fromCopy];
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

            v16 = [[BMVisualIntelligenceCameraLookupEventFailureMetadata alloc] initByReadFrom:fromCopy];
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
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  visualLookupSessionId = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self visualLookupSessionId];
  connectionUuid = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self connectionUuid];
  started = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self started];
  ended = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self ended];
  failed = [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self failed];
  v9 = [v3 initWithFormat:@"BMVisualIntelligenceCameraLookupEventServerRequestContext with visualLookupSessionId: %@, connectionUuid: %@, started: %@, ended: %@, failed: %@", visualLookupSessionId, connectionUuid, started, ended, failed];

  return v9;
}

- (BMVisualIntelligenceCameraLookupEventServerRequestContext)initWithVisualLookupSessionId:(id)id connectionUuid:(id)uuid started:(id)started ended:(id)ended failed:(id)failed
{
  idCopy = id;
  uuidCopy = uuid;
  startedCopy = started;
  endedCopy = ended;
  failedCopy = failed;
  v20.receiver = self;
  v20.super_class = BMVisualIntelligenceCameraLookupEventServerRequestContext;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_visualLookupSessionId, id);
    objc_storeStrong(&v17->_connectionUuid, uuid);
    objc_storeStrong(&v17->_started, started);
    objc_storeStrong(&v17->_ended, ended);
    objc_storeStrong(&v17->_failed, failed);
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