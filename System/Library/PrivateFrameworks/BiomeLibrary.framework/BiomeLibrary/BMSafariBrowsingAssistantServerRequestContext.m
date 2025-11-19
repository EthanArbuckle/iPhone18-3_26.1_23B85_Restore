@interface BMSafariBrowsingAssistantServerRequestContext
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSafariBrowsingAssistantServerRequestContext)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSafariBrowsingAssistantServerRequestContext)initWithWebpageViewIdentifier:(id)a3 requestIdentifier:(id)a4 started:(id)a5 ended:(id)a6 failed:(id)a7;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSafariBrowsingAssistantServerRequestContext

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSafariBrowsingAssistantServerRequestContext *)self webpageViewIdentifier];
    v7 = [v5 webpageViewIdentifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSafariBrowsingAssistantServerRequestContext *)self webpageViewIdentifier];
      v10 = [v5 webpageViewIdentifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    v13 = [(BMSafariBrowsingAssistantServerRequestContext *)self requestIdentifier];
    v14 = [v5 requestIdentifier];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMSafariBrowsingAssistantServerRequestContext *)self requestIdentifier];
      v17 = [v5 requestIdentifier];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    v19 = [(BMSafariBrowsingAssistantServerRequestContext *)self started];
    v20 = [v5 started];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMSafariBrowsingAssistantServerRequestContext *)self started];
      v23 = [v5 started];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_17;
      }
    }

    v25 = [(BMSafariBrowsingAssistantServerRequestContext *)self ended];
    v26 = [v5 ended];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMSafariBrowsingAssistantServerRequestContext *)self ended];
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

    v31 = [(BMSafariBrowsingAssistantServerRequestContext *)self failed];
    v32 = [v5 failed];
    if (v31 == v32)
    {
      v12 = 1;
    }

    else
    {
      v33 = [(BMSafariBrowsingAssistantServerRequestContext *)self failed];
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
  v27[5] = *MEMORY[0x1E69E9840];
  v3 = [(BMSafariBrowsingAssistantServerRequestContext *)self webpageViewIdentifier];
  v4 = [v3 base64EncodedStringWithOptions:0];

  v5 = [(BMSafariBrowsingAssistantServerRequestContext *)self requestIdentifier];
  v6 = [(BMSafariBrowsingAssistantServerRequestContext *)self started];
  v7 = [v6 jsonDictionary];

  v8 = [(BMSafariBrowsingAssistantServerRequestContext *)self ended];
  v9 = [v8 jsonDictionary];

  v10 = [(BMSafariBrowsingAssistantServerRequestContext *)self failed];
  v11 = [v10 jsonDictionary];

  v22 = @"webpageViewIdentifier";
  v12 = v4;
  if (!v4)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v12;
  v27[0] = v12;
  v23 = @"requestIdentifier";
  v13 = v5;
  if (!v5)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v27[1] = v13;
  v24 = @"started";
  v14 = v7;
  if (!v7)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v27[2] = v14;
  v25 = @"ended";
  v15 = v9;
  if (!v9)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v27[3] = v15;
  v26 = @"failed";
  v16 = v11;
  if (!v11)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v27[4] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v22 count:{5, v20}];
  if (v11)
  {
    if (v9)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (v9)
    {
LABEL_13:
      if (v7)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  if (v7)
  {
LABEL_14:
    if (v5)
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

  if (!v5)
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

- (BMSafariBrowsingAssistantServerRequestContext)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v63[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"webpageViewIdentifier"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"requestIdentifier"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
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
        *a4 = v29;
        a4 = 0;
        goto LABEL_56;
      }

      v43 = v9;
    }

    else
    {
      v43 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"started"];
    v48 = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v15 = 0;
          a4 = v43;
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
        *a4 = [v32 initWithDomain:v35 code:2 userInfo:v34];

        v15 = 0;
        v16 = v10;
        a4 = v43;
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
        if (a4)
        {
          v17 = v17;
          *a4 = v17;
        }

        v15 = 0;
        a4 = v43;
        v18 = v44;
        goto LABEL_56;
      }
    }

    else
    {
      v44 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"ended"];
    v45 = v8;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v15 = 0;
          a4 = v43;
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
        *a4 = [v41 initWithDomain:v36 code:2 userInfo:v13];
        goto LABEL_68;
      }

      v13 = v11;
      v50 = 0;
      v12 = [[BMSafariBrowsingAssistantServerRequestContextEnded alloc] initWithJSONDictionary:v13 error:&v50];
      v19 = v50;
      if (v19)
      {
        v18 = v44;
        if (a4)
        {
          v19 = v19;
          *a4 = v19;
        }

        v15 = 0;
        a4 = v43;
        goto LABEL_54;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = [v6 objectForKeyedSubscript:@"failed"];
    if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = 0;
LABEL_16:
      a4 = v43;
      v15 = [(BMSafariBrowsingAssistantServerRequestContext *)v48 initWithWebpageViewIdentifier:v45 requestIdentifier:v43 started:v44 ended:v12 failed:v14];
      v48 = v15;
LABEL_52:

LABEL_53:
      v18 = v44;
LABEL_54:

      v8 = v45;
LABEL_55:

      v16 = v10;
      self = v48;
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

      if (a4)
      {
        v31 = v31;
        *a4 = v31;
      }

LABEL_51:
      v15 = 0;
      a4 = v43;
      goto LABEL_52;
    }

    if (a4)
    {
      v42 = objc_alloc(MEMORY[0x1E696ABC0]);
      v40 = *MEMORY[0x1E698F240];
      v52 = *MEMORY[0x1E696A578];
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"failed"];
      v53 = v14;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      *a4 = [v42 initWithDomain:v40 code:2 userInfo:v30];
      goto LABEL_51;
    }

    v15 = 0;
LABEL_68:
    a4 = v43;
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
    if (a4)
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

  if (!a4)
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
  *a4 = v37;
  a4 = v22;
LABEL_58:

LABEL_59:
  v38 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSafariBrowsingAssistantServerRequestContext *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
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
    [(BMSafariBrowsingAssistantServerRequestContextStarted *)self->_started writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_ended)
  {
    PBDataWriterPlaceMark();
    [(BMSafariBrowsingAssistantServerRequestContextEnded *)self->_ended writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_failed)
  {
    PBDataWriterPlaceMark();
    [(BMSafariBrowsingAssistantServerRequestContextFailed *)self->_failed writeTo:v4];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = BMSafariBrowsingAssistantServerRequestContext;
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

            v16 = [[BMSafariBrowsingAssistantServerRequestContextStarted alloc] initByReadFrom:v4];
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

            v16 = [[BMSafariBrowsingAssistantServerRequestContextEnded alloc] initByReadFrom:v4];
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

            v16 = [[BMSafariBrowsingAssistantServerRequestContextFailed alloc] initByReadFrom:v4];
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
  v4 = [(BMSafariBrowsingAssistantServerRequestContext *)self webpageViewIdentifier];
  v5 = [(BMSafariBrowsingAssistantServerRequestContext *)self requestIdentifier];
  v6 = [(BMSafariBrowsingAssistantServerRequestContext *)self started];
  v7 = [(BMSafariBrowsingAssistantServerRequestContext *)self ended];
  v8 = [(BMSafariBrowsingAssistantServerRequestContext *)self failed];
  v9 = [v3 initWithFormat:@"BMSafariBrowsingAssistantServerRequestContext with webpageViewIdentifier: %@, requestIdentifier: %@, started: %@, ended: %@, failed: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMSafariBrowsingAssistantServerRequestContext)initWithWebpageViewIdentifier:(id)a3 requestIdentifier:(id)a4 started:(id)a5 ended:(id)a6 failed:(id)a7
{
  v19 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = BMSafariBrowsingAssistantServerRequestContext;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_webpageViewIdentifier, a3);
    objc_storeStrong(&v17->_requestIdentifier, a4);
    objc_storeStrong(&v17->_started, a5);
    objc_storeStrong(&v17->_ended, a6);
    objc_storeStrong(&v17->_failed, a7);
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