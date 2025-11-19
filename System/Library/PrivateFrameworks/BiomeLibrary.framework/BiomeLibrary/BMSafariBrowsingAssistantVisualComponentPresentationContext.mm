@interface BMSafariBrowsingAssistantVisualComponentPresentationContext
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSafariBrowsingAssistantVisualComponentPresentationContext)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSafariBrowsingAssistantVisualComponentPresentationContext)initWithWebpageViewIdentifier:(id)a3 visualComponent:(id)a4 started:(id)a5 ended:(id)a6;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSafariBrowsingAssistantVisualComponentPresentationContext

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)self webpageViewIdentifier];
    v7 = [v5 webpageViewIdentifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)self webpageViewIdentifier];
      v10 = [v5 webpageViewIdentifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_13;
      }
    }

    v13 = [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)self visualComponent];
    v14 = [v5 visualComponent];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)self visualComponent];
      v17 = [v5 visualComponent];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_13;
      }
    }

    v19 = [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)self started];
    v20 = [v5 started];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)self started];
      v23 = [v5 started];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
LABEL_13:
        v12 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    v25 = [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)self ended];
    v26 = [v5 ended];
    if (v25 == v26)
    {
      v12 = 1;
    }

    else
    {
      v27 = [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)self ended];
      v28 = [v5 ended];
      v12 = [v27 isEqual:v28];
    }

    goto LABEL_19;
  }

  v12 = 0;
LABEL_20:

  return v12;
}

- (id)jsonDictionary
{
  v19[4] = *MEMORY[0x1E69E9840];
  v3 = [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)self webpageViewIdentifier];
  v4 = [v3 base64EncodedStringWithOptions:0];

  v5 = [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)self visualComponent];
  v6 = [v5 jsonDictionary];

  v7 = [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)self started];
  v8 = [v7 jsonDictionary];

  v9 = [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)self ended];
  v10 = [v9 jsonDictionary];

  v18[0] = @"webpageViewIdentifier";
  v11 = v4;
  if (!v4)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v19[0] = v11;
  v18[1] = @"visualComponent";
  v12 = v6;
  if (!v6)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v19[1] = v12;
  v18[2] = @"started";
  v13 = v8;
  if (!v8)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v19[2] = v13;
  v18[3] = @"ended";
  v14 = v10;
  if (!v10)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v19[3] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];
  if (v10)
  {
    if (v8)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v8)
    {
LABEL_11:
      if (v6)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (v4)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!v6)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (v4)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BMSafariBrowsingAssistantVisualComponentPresentationContext)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v55[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"webpageViewIdentifier"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
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
      v21 = objc_alloc(MEMORY[0x1E696ABC0]);
      v22 = *MEMORY[0x1E698F240];
      v52 = *MEMORY[0x1E696A578];
      v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"webpageViewIdentifier"];
      v53 = v18;
      v23 = MEMORY[0x1E695DF20];
      v24 = &v53;
      v25 = &v52;
      goto LABEL_41;
    }

LABEL_54:
    v8 = 0;
    v16 = 0;
    goto LABEL_50;
  }

  v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v7 options:0];
  if (!v8)
  {
    if (a4)
    {
      v21 = objc_alloc(MEMORY[0x1E696ABC0]);
      v22 = *MEMORY[0x1E698F240];
      v54 = *MEMORY[0x1E696A578];
      v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"webpageViewIdentifier"];
      v55[0] = v18;
      v23 = MEMORY[0x1E695DF20];
      v24 = v55;
      v25 = &v54;
LABEL_41:
      v33 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:1];
      v34 = [v21 initWithDomain:v22 code:2 userInfo:v33];
      v8 = 0;
      v16 = 0;
      *a4 = v34;
      v15 = v33;
      goto LABEL_48;
    }

    goto LABEL_54;
  }

LABEL_4:
  v9 = [v6 objectForKeyedSubscript:@"visualComponent"];
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v40 = 0;
    goto LABEL_7;
  }

  v17 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v9;
    v45 = 0;
    v15 = [[BMSafariBrowsingAssistantVisualComponent alloc] initWithJSONDictionary:v18 error:&v45];
    v19 = v45;
    if (v19)
    {
      if (v17)
      {
        v19 = v19;
        *v17 = v19;
      }

      v16 = 0;
      goto LABEL_48;
    }

    v40 = v15;

    a4 = v17;
LABEL_7:
    v41 = v8;
    v10 = [v6 objectForKeyedSubscript:@"started"];
    v11 = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v16 = 0;
          v15 = v40;
          goto LABEL_47;
        }

        v37 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = *MEMORY[0x1E698F240];
        v48 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"started"];
        v49 = v12;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
        v31 = [v37 initWithDomain:v30 code:2 userInfo:v13];
        v16 = 0;
        v32 = a4;
        v15 = v40;
        *v32 = v31;
LABEL_46:

LABEL_47:
        v18 = v9;
        self = v11;
        v8 = v41;
        goto LABEL_48;
      }

      v13 = v10;
      v44 = 0;
      v12 = [[BMSafariBrowsingAssistantVisualComponentPresentationStarted alloc] initWithJSONDictionary:v13 error:&v44];
      v20 = v44;
      if (v20)
      {
        if (a4)
        {
          v20 = v20;
          *a4 = v20;
        }

        goto LABEL_51;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = [v6 objectForKeyedSubscript:@"ended"];
    if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = 0;
LABEL_13:
      v15 = v40;
      v16 = [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)v11 initWithWebpageViewIdentifier:v41 visualComponent:v40 started:v12 ended:v14];
      v11 = v16;
LABEL_45:

      goto LABEL_46;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v13;
      v43 = 0;
      v14 = [[BMSafariBrowsingAssistantVisualComponentPresentationEnded alloc] initWithJSONDictionary:v26 error:&v43];
      v27 = v43;
      if (!v27)
      {

        goto LABEL_13;
      }

      if (a4)
      {
        v27 = v27;
        *a4 = v27;
      }

LABEL_44:
      v16 = 0;
      v15 = v40;
      goto LABEL_45;
    }

    if (a4)
    {
      v39 = objc_alloc(MEMORY[0x1E696ABC0]);
      v38 = *MEMORY[0x1E698F240];
      v46 = *MEMORY[0x1E696A578];
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"ended"];
      v47 = v14;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      *a4 = [v39 initWithDomain:v38 code:2 userInfo:v26];
      goto LABEL_44;
    }

LABEL_51:
    v16 = 0;
    v15 = v40;
    goto LABEL_46;
  }

  if (!a4)
  {
    v16 = 0;
    goto LABEL_49;
  }

  v42 = objc_alloc(MEMORY[0x1E696ABC0]);
  v28 = *MEMORY[0x1E698F240];
  v50 = *MEMORY[0x1E696A578];
  v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"visualComponent"];
  v15 = v51;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
  *v17 = [v42 initWithDomain:v28 code:2 userInfo:v29];

  v16 = 0;
  v18 = v9;
LABEL_48:

  v9 = v18;
LABEL_49:

LABEL_50:
  v35 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)self writeTo:v3];
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

  if (self->_visualComponent)
  {
    PBDataWriterPlaceMark();
    [(BMSafariBrowsingAssistantVisualComponent *)self->_visualComponent writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_started)
  {
    PBDataWriterPlaceMark();
    [(BMSafariBrowsingAssistantVisualComponentPresentationStarted *)self->_started writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_ended)
  {
    PBDataWriterPlaceMark();
    [(BMSafariBrowsingAssistantVisualComponentPresentationEnded *)self->_ended writeTo:v4];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = BMSafariBrowsingAssistantVisualComponentPresentationContext;
  v5 = [(BMEventBase *)&v24 init];
  if (!v5)
  {
    goto LABEL_39;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_37;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v25) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v25 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v25 & 0x7F) << v7;
        if ((v25 & 0x80) == 0)
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
        goto LABEL_37;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 2)
      {
        break;
      }

      if (v15 != 1)
      {
        if (v15 != 2)
        {
          goto LABEL_29;
        }

        v25 = 0;
        v26 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_38;
        }

        v16 = [[BMSafariBrowsingAssistantVisualComponent alloc] initByReadFrom:v4];
        if (!v16)
        {
          goto LABEL_38;
        }

        v17 = 32;
LABEL_35:
        v20 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;

        PBReaderRecallMark();
        goto LABEL_36;
      }

      v18 = PBReaderReadData();
      webpageViewIdentifier = v5->_webpageViewIdentifier;
      v5->_webpageViewIdentifier = v18;

LABEL_36:
      v21 = [v4 position];
      if (v21 >= [v4 length])
      {
        goto LABEL_37;
      }
    }

    if (v15 == 3)
    {
      v25 = 0;
      v26 = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_38;
      }

      v16 = [[BMSafariBrowsingAssistantVisualComponentPresentationStarted alloc] initByReadFrom:v4];
      if (!v16)
      {
        goto LABEL_38;
      }

      v17 = 40;
    }

    else
    {
      if (v15 != 4)
      {
LABEL_29:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_36;
      }

      v25 = 0;
      v26 = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_38;
      }

      v16 = [[BMSafariBrowsingAssistantVisualComponentPresentationEnded alloc] initByReadFrom:v4];
      if (!v16)
      {
        goto LABEL_38;
      }

      v17 = 48;
    }

    goto LABEL_35;
  }

LABEL_37:
  if ([v4 hasError])
  {
LABEL_38:
    v22 = 0;
  }

  else
  {
LABEL_39:
    v22 = v5;
  }

  return v22;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)self webpageViewIdentifier];
  v5 = [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)self visualComponent];
  v6 = [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)self started];
  v7 = [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)self ended];
  v8 = [v3 initWithFormat:@"BMSafariBrowsingAssistantVisualComponentPresentationContext with webpageViewIdentifier: %@, visualComponent: %@, started: %@, ended: %@", v4, v5, v6, v7];

  return v8;
}

- (BMSafariBrowsingAssistantVisualComponentPresentationContext)initWithWebpageViewIdentifier:(id)a3 visualComponent:(id)a4 started:(id)a5 ended:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v17.receiver = self;
  v17.super_class = BMSafariBrowsingAssistantVisualComponentPresentationContext;
  v15 = [(BMEventBase *)&v17 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v15->_webpageViewIdentifier, a3);
    objc_storeStrong(&v15->_visualComponent, a4);
    objc_storeStrong(&v15->_started, a5);
    objc_storeStrong(&v15->_ended, a6);
  }

  return v15;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"webpageViewIdentifier" number:1 type:14 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"visualComponent" number:2 type:14 subMessageClass:objc_opt_class()];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"started" number:3 type:14 subMessageClass:objc_opt_class()];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"ended" number:4 type:14 subMessageClass:objc_opt_class()];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"webpageViewIdentifier" dataType:4 requestOnly:0 fieldNumber:1 protoDataType:14 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"visualComponent_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_420];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"started_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_422];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"ended_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_424];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __70__BMSafariBrowsingAssistantVisualComponentPresentationContext_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 ended];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __70__BMSafariBrowsingAssistantVisualComponentPresentationContext_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 started];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __70__BMSafariBrowsingAssistantVisualComponentPresentationContext_columns__block_invoke(uint64_t a1, void *a2)
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

    v8 = [[BMSafariBrowsingAssistantVisualComponentPresentationContext alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end