@interface BMSafariBrowsingAssistantVisualComponentPresentationContext
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSafariBrowsingAssistantVisualComponentPresentationContext)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSafariBrowsingAssistantVisualComponentPresentationContext)initWithWebpageViewIdentifier:(id)identifier visualComponent:(id)component started:(id)started ended:(id)ended;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSafariBrowsingAssistantVisualComponentPresentationContext

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    webpageViewIdentifier = [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)self webpageViewIdentifier];
    webpageViewIdentifier2 = [v5 webpageViewIdentifier];
    v8 = webpageViewIdentifier2;
    if (webpageViewIdentifier == webpageViewIdentifier2)
    {
    }

    else
    {
      webpageViewIdentifier3 = [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)self webpageViewIdentifier];
      webpageViewIdentifier4 = [v5 webpageViewIdentifier];
      v11 = [webpageViewIdentifier3 isEqual:webpageViewIdentifier4];

      if (!v11)
      {
        goto LABEL_13;
      }
    }

    visualComponent = [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)self visualComponent];
    visualComponent2 = [v5 visualComponent];
    v15 = visualComponent2;
    if (visualComponent == visualComponent2)
    {
    }

    else
    {
      visualComponent3 = [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)self visualComponent];
      visualComponent4 = [v5 visualComponent];
      v18 = [visualComponent3 isEqual:visualComponent4];

      if (!v18)
      {
        goto LABEL_13;
      }
    }

    started = [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)self started];
    started2 = [v5 started];
    v21 = started2;
    if (started == started2)
    {
    }

    else
    {
      started3 = [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)self started];
      started4 = [v5 started];
      v24 = [started3 isEqual:started4];

      if (!v24)
      {
LABEL_13:
        v12 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    ended = [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)self ended];
    ended2 = [v5 ended];
    if (ended == ended2)
    {
      v12 = 1;
    }

    else
    {
      ended3 = [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)self ended];
      ended4 = [v5 ended];
      v12 = [ended3 isEqual:ended4];
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
  webpageViewIdentifier = [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)self webpageViewIdentifier];
  v4 = [webpageViewIdentifier base64EncodedStringWithOptions:0];

  visualComponent = [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)self visualComponent];
  jsonDictionary = [visualComponent jsonDictionary];

  started = [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)self started];
  jsonDictionary2 = [started jsonDictionary];

  ended = [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)self ended];
  jsonDictionary3 = [ended jsonDictionary];

  v18[0] = @"webpageViewIdentifier";
  null = v4;
  if (!v4)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v19[0] = null;
  v18[1] = @"visualComponent";
  null2 = jsonDictionary;
  if (!jsonDictionary)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v19[1] = null2;
  v18[2] = @"started";
  null3 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v19[2] = null3;
  v18[3] = @"ended";
  null4 = jsonDictionary3;
  if (!jsonDictionary3)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v19[3] = null4;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];
  if (jsonDictionary3)
  {
    if (jsonDictionary2)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (jsonDictionary2)
    {
LABEL_11:
      if (jsonDictionary)
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

  if (!jsonDictionary)
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

- (BMSafariBrowsingAssistantVisualComponentPresentationContext)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v55[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"webpageViewIdentifier"];
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
    if (error)
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
    if (error)
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
      *error = v34;
      v15 = v33;
      goto LABEL_48;
    }

    goto LABEL_54;
  }

LABEL_4:
  v9 = [dictionaryCopy objectForKeyedSubscript:@"visualComponent"];
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v40 = 0;
    goto LABEL_7;
  }

  errorCopy = error;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v9;
    v45 = 0;
    v15 = [[BMSafariBrowsingAssistantVisualComponent alloc] initWithJSONDictionary:v18 error:&v45];
    v19 = v45;
    if (v19)
    {
      if (errorCopy)
      {
        v19 = v19;
        *errorCopy = v19;
      }

      v16 = 0;
      goto LABEL_48;
    }

    v40 = v15;

    error = errorCopy;
LABEL_7:
    v41 = v8;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"started"];
    selfCopy = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
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
        errorCopy2 = error;
        v15 = v40;
        *errorCopy2 = v31;
LABEL_46:

LABEL_47:
        v18 = v9;
        self = selfCopy;
        v8 = v41;
        goto LABEL_48;
      }

      v13 = v10;
      v44 = 0;
      v12 = [[BMSafariBrowsingAssistantVisualComponentPresentationStarted alloc] initWithJSONDictionary:v13 error:&v44];
      v20 = v44;
      if (v20)
      {
        if (error)
        {
          v20 = v20;
          *error = v20;
        }

        goto LABEL_51;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = 0;
LABEL_13:
      v15 = v40;
      v16 = [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)selfCopy initWithWebpageViewIdentifier:v41 visualComponent:v40 started:v12 ended:v14];
      selfCopy = v16;
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

      if (error)
      {
        v27 = v27;
        *error = v27;
      }

LABEL_44:
      v16 = 0;
      v15 = v40;
      goto LABEL_45;
    }

    if (error)
    {
      v39 = objc_alloc(MEMORY[0x1E696ABC0]);
      v38 = *MEMORY[0x1E698F240];
      v46 = *MEMORY[0x1E696A578];
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"ended"];
      v47 = v14;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      *error = [v39 initWithDomain:v38 code:2 userInfo:v26];
      goto LABEL_44;
    }

LABEL_51:
    v16 = 0;
    v15 = v40;
    goto LABEL_46;
  }

  if (!error)
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
  *errorCopy = [v42 initWithDomain:v28 code:2 userInfo:v29];

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

  if (self->_visualComponent)
  {
    PBDataWriterPlaceMark();
    [(BMSafariBrowsingAssistantVisualComponent *)self->_visualComponent writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_started)
  {
    PBDataWriterPlaceMark();
    [(BMSafariBrowsingAssistantVisualComponentPresentationStarted *)self->_started writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_ended)
  {
    PBDataWriterPlaceMark();
    [(BMSafariBrowsingAssistantVisualComponentPresentationEnded *)self->_ended writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v24.receiver = self;
  v24.super_class = BMSafariBrowsingAssistantVisualComponentPresentationContext;
  v5 = [(BMEventBase *)&v24 init];
  if (!v5)
  {
    goto LABEL_39;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_37;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v25) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v25 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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

        v16 = [[BMSafariBrowsingAssistantVisualComponent alloc] initByReadFrom:fromCopy];
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
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
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

      v16 = [[BMSafariBrowsingAssistantVisualComponentPresentationStarted alloc] initByReadFrom:fromCopy];
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

      v16 = [[BMSafariBrowsingAssistantVisualComponentPresentationEnded alloc] initByReadFrom:fromCopy];
      if (!v16)
      {
        goto LABEL_38;
      }

      v17 = 48;
    }

    goto LABEL_35;
  }

LABEL_37:
  if ([fromCopy hasError])
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
  webpageViewIdentifier = [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)self webpageViewIdentifier];
  visualComponent = [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)self visualComponent];
  started = [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)self started];
  ended = [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)self ended];
  v8 = [v3 initWithFormat:@"BMSafariBrowsingAssistantVisualComponentPresentationContext with webpageViewIdentifier: %@, visualComponent: %@, started: %@, ended: %@", webpageViewIdentifier, visualComponent, started, ended];

  return v8;
}

- (BMSafariBrowsingAssistantVisualComponentPresentationContext)initWithWebpageViewIdentifier:(id)identifier visualComponent:(id)component started:(id)started ended:(id)ended
{
  identifierCopy = identifier;
  componentCopy = component;
  startedCopy = started;
  endedCopy = ended;
  v17.receiver = self;
  v17.super_class = BMSafariBrowsingAssistantVisualComponentPresentationContext;
  v15 = [(BMEventBase *)&v17 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v15->_webpageViewIdentifier, identifier);
    objc_storeStrong(&v15->_visualComponent, component);
    objc_storeStrong(&v15->_started, started);
    objc_storeStrong(&v15->_ended, ended);
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