@interface BMSafariBrowsingAssistantServerRequestContext
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSafariBrowsingAssistantServerRequestContext)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSafariBrowsingAssistantServerRequestContext)initWithWebpageViewIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier started:(id)started ended:(id)ended failed:(id)failed;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSafariBrowsingAssistantServerRequestContext

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    webpageViewIdentifier = [(BMSafariBrowsingAssistantServerRequestContext *)self webpageViewIdentifier];
    webpageViewIdentifier2 = [v5 webpageViewIdentifier];
    v8 = webpageViewIdentifier2;
    if (webpageViewIdentifier == webpageViewIdentifier2)
    {
    }

    else
    {
      webpageViewIdentifier3 = [(BMSafariBrowsingAssistantServerRequestContext *)self webpageViewIdentifier];
      webpageViewIdentifier4 = [v5 webpageViewIdentifier];
      v11 = [webpageViewIdentifier3 isEqual:webpageViewIdentifier4];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    requestIdentifier = [(BMSafariBrowsingAssistantServerRequestContext *)self requestIdentifier];
    requestIdentifier2 = [v5 requestIdentifier];
    v15 = requestIdentifier2;
    if (requestIdentifier == requestIdentifier2)
    {
    }

    else
    {
      requestIdentifier3 = [(BMSafariBrowsingAssistantServerRequestContext *)self requestIdentifier];
      requestIdentifier4 = [v5 requestIdentifier];
      v18 = [requestIdentifier3 isEqual:requestIdentifier4];

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    started = [(BMSafariBrowsingAssistantServerRequestContext *)self started];
    started2 = [v5 started];
    v21 = started2;
    if (started == started2)
    {
    }

    else
    {
      started3 = [(BMSafariBrowsingAssistantServerRequestContext *)self started];
      started4 = [v5 started];
      v24 = [started3 isEqual:started4];

      if (!v24)
      {
        goto LABEL_17;
      }
    }

    ended = [(BMSafariBrowsingAssistantServerRequestContext *)self ended];
    ended2 = [v5 ended];
    v27 = ended2;
    if (ended == ended2)
    {
    }

    else
    {
      ended3 = [(BMSafariBrowsingAssistantServerRequestContext *)self ended];
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

    failed = [(BMSafariBrowsingAssistantServerRequestContext *)self failed];
    failed2 = [v5 failed];
    if (failed == failed2)
    {
      v12 = 1;
    }

    else
    {
      failed3 = [(BMSafariBrowsingAssistantServerRequestContext *)self failed];
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
  v27[5] = *MEMORY[0x1E69E9840];
  webpageViewIdentifier = [(BMSafariBrowsingAssistantServerRequestContext *)self webpageViewIdentifier];
  v4 = [webpageViewIdentifier base64EncodedStringWithOptions:0];

  requestIdentifier = [(BMSafariBrowsingAssistantServerRequestContext *)self requestIdentifier];
  started = [(BMSafariBrowsingAssistantServerRequestContext *)self started];
  jsonDictionary = [started jsonDictionary];

  ended = [(BMSafariBrowsingAssistantServerRequestContext *)self ended];
  jsonDictionary2 = [ended jsonDictionary];

  failed = [(BMSafariBrowsingAssistantServerRequestContext *)self failed];
  jsonDictionary3 = [failed jsonDictionary];

  v22 = @"webpageViewIdentifier";
  null = v4;
  if (!v4)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null;
  v27[0] = null;
  v23 = @"requestIdentifier";
  null2 = requestIdentifier;
  if (!requestIdentifier)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v27[1] = null2;
  v24 = @"started";
  null3 = jsonDictionary;
  if (!jsonDictionary)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v27[2] = null3;
  v25 = @"ended";
  null4 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v27[3] = null4;
  v26 = @"failed";
  null5 = jsonDictionary3;
  if (!jsonDictionary3)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v27[4] = null5;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v22 count:{5, v20}];
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
    if (requestIdentifier)
    {
      goto LABEL_15;
    }

LABEL_22:

    if (v4)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_21:

  if (!requestIdentifier)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (v4)
  {
    goto LABEL_16;
  }

LABEL_23:

LABEL_16:
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BMSafariBrowsingAssistantServerRequestContext)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v63[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"webpageViewIdentifier"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"requestIdentifier"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v15 = 0;
          goto LABEL_58;
        }

        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v46 = v8;
        v27 = *MEMORY[0x1E698F240];
        v58 = *MEMORY[0x1E696A578];
        v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"requestIdentifier"];
        v59 = v16;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        v28 = v27;
        v8 = v46;
        v29 = [v26 initWithDomain:v28 code:2 userInfo:v18];
        v15 = 0;
        *error = v29;
        error = 0;
        goto LABEL_56;
      }

      v43 = v9;
    }

    else
    {
      v43 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"started"];
    selfCopy = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v15 = 0;
          error = v43;
          goto LABEL_57;
        }

        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v47 = v8;
        v33 = *MEMORY[0x1E698F240];
        v56 = *MEMORY[0x1E696A578];
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"started"];
        v57 = v18;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
        v35 = v33;
        v8 = v47;
        *error = [v32 initWithDomain:v35 code:2 userInfo:v34];

        v15 = 0;
        v16 = v10;
        error = v43;
LABEL_56:

        v10 = v16;
LABEL_57:

        goto LABEL_58;
      }

      v16 = v10;
      v51 = 0;
      v44 = [[BMSafariBrowsingAssistantServerRequestContextStarted alloc] initWithJSONDictionary:v16 error:&v51];
      v17 = v51;
      if (v17)
      {
        if (error)
        {
          v17 = v17;
          *error = v17;
        }

        v15 = 0;
        error = v43;
        v18 = v44;
        goto LABEL_56;
      }
    }

    else
    {
      v44 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    v45 = v8;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v15 = 0;
          error = v43;
          v18 = v44;
          goto LABEL_55;
        }

        v41 = objc_alloc(MEMORY[0x1E696ABC0]);
        v36 = *MEMORY[0x1E698F240];
        v54 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"ended"];
        v55 = v12;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        v15 = 0;
        *error = [v41 initWithDomain:v36 code:2 userInfo:v13];
        goto LABEL_68;
      }

      v13 = v11;
      v50 = 0;
      v12 = [[BMSafariBrowsingAssistantServerRequestContextEnded alloc] initWithJSONDictionary:v13 error:&v50];
      v19 = v50;
      if (v19)
      {
        v18 = v44;
        if (error)
        {
          v19 = v19;
          *error = v19;
        }

        v15 = 0;
        error = v43;
        goto LABEL_54;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"failed"];
    if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = 0;
LABEL_16:
      error = v43;
      v15 = [(BMSafariBrowsingAssistantServerRequestContext *)selfCopy initWithWebpageViewIdentifier:v45 requestIdentifier:v43 started:v44 ended:v12 failed:v14];
      selfCopy = v15;
LABEL_52:

LABEL_53:
      v18 = v44;
LABEL_54:

      v8 = v45;
LABEL_55:

      v16 = v10;
      self = selfCopy;
      goto LABEL_56;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v13;
      v49 = 0;
      v14 = [[BMSafariBrowsingAssistantServerRequestContextFailed alloc] initWithJSONDictionary:v30 error:&v49];
      v31 = v49;
      if (!v31)
      {

        goto LABEL_16;
      }

      if (error)
      {
        v31 = v31;
        *error = v31;
      }

LABEL_51:
      v15 = 0;
      error = v43;
      goto LABEL_52;
    }

    if (error)
    {
      v42 = objc_alloc(MEMORY[0x1E696ABC0]);
      v40 = *MEMORY[0x1E698F240];
      v52 = *MEMORY[0x1E696A578];
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"failed"];
      v53 = v14;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      *error = [v42 initWithDomain:v40 code:2 userInfo:v30];
      goto LABEL_51;
    }

    v15 = 0;
LABEL_68:
    error = v43;
    goto LABEL_53;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v20 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E698F240];
      v60 = *MEMORY[0x1E696A578];
      v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"webpageViewIdentifier"];
      v61 = v22;
      v23 = MEMORY[0x1E695DF20];
      v24 = &v61;
      v25 = &v60;
      goto LABEL_48;
    }

LABEL_63:
    v8 = 0;
    v15 = 0;
    goto LABEL_59;
  }

  v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v7 options:0];
  if (v8)
  {
    goto LABEL_4;
  }

  if (!error)
  {
    goto LABEL_63;
  }

  v20 = objc_alloc(MEMORY[0x1E696ABC0]);
  v21 = *MEMORY[0x1E698F240];
  v62 = *MEMORY[0x1E696A578];
  v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"webpageViewIdentifier"];
  v63[0] = v22;
  v23 = MEMORY[0x1E695DF20];
  v24 = v63;
  v25 = &v62;
LABEL_48:
  v9 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:1];
  v37 = [v20 initWithDomain:v21 code:2 userInfo:v9];
  v8 = 0;
  v15 = 0;
  *error = v37;
  error = v22;
LABEL_58:

LABEL_59:
  v38 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSafariBrowsingAssistantServerRequestContext *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_webpageViewIdentifier)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_requestIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_started)
  {
    PBDataWriterPlaceMark();
    [(BMSafariBrowsingAssistantServerRequestContextStarted *)self->_started writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_ended)
  {
    PBDataWriterPlaceMark();
    [(BMSafariBrowsingAssistantServerRequestContextEnded *)self->_ended writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_failed)
  {
    PBDataWriterPlaceMark();
    [(BMSafariBrowsingAssistantServerRequestContextFailed *)self->_failed writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v25.receiver = self;
  v25.super_class = BMSafariBrowsingAssistantServerRequestContext;
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
          v18 = PBReaderReadData();
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

            v16 = [[BMSafariBrowsingAssistantServerRequestContextStarted alloc] initByReadFrom:fromCopy];
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

            v16 = [[BMSafariBrowsingAssistantServerRequestContextEnded alloc] initByReadFrom:fromCopy];
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

            v16 = [[BMSafariBrowsingAssistantServerRequestContextFailed alloc] initByReadFrom:fromCopy];
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
  webpageViewIdentifier = [(BMSafariBrowsingAssistantServerRequestContext *)self webpageViewIdentifier];
  requestIdentifier = [(BMSafariBrowsingAssistantServerRequestContext *)self requestIdentifier];
  started = [(BMSafariBrowsingAssistantServerRequestContext *)self started];
  ended = [(BMSafariBrowsingAssistantServerRequestContext *)self ended];
  failed = [(BMSafariBrowsingAssistantServerRequestContext *)self failed];
  v9 = [v3 initWithFormat:@"BMSafariBrowsingAssistantServerRequestContext with webpageViewIdentifier: %@, requestIdentifier: %@, started: %@, ended: %@, failed: %@", webpageViewIdentifier, requestIdentifier, started, ended, failed];

  return v9;
}

- (BMSafariBrowsingAssistantServerRequestContext)initWithWebpageViewIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier started:(id)started ended:(id)ended failed:(id)failed
{
  identifierCopy = identifier;
  requestIdentifierCopy = requestIdentifier;
  startedCopy = started;
  endedCopy = ended;
  failedCopy = failed;
  v20.receiver = self;
  v20.super_class = BMSafariBrowsingAssistantServerRequestContext;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_webpageViewIdentifier, identifier);
    objc_storeStrong(&v17->_requestIdentifier, requestIdentifier);
    objc_storeStrong(&v17->_started, started);
    objc_storeStrong(&v17->_ended, ended);
    objc_storeStrong(&v17->_failed, failed);
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"webpageViewIdentifier" number:1 type:14 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"requestIdentifier" number:2 type:13 subMessageClass:{0, v2}];
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
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"webpageViewIdentifier" dataType:4 requestOnly:0 fieldNumber:1 protoDataType:14 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"requestIdentifier" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"started_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_764];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"ended_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_766];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"failed_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_768];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __56__BMSafariBrowsingAssistantServerRequestContext_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 failed];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __56__BMSafariBrowsingAssistantServerRequestContext_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 ended];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __56__BMSafariBrowsingAssistantServerRequestContext_columns__block_invoke(uint64_t a1, void *a2)
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

    v8 = [[BMSafariBrowsingAssistantServerRequestContext alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end