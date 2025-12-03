@interface BMSafariBrowsingAssistantUserInteractionDetected
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSafariBrowsingAssistantUserInteractionDetected)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSafariBrowsingAssistantUserInteractionDetected)initWithWebpageViewIdentifier:(id)identifier visualComponent:(id)component userInteractionType:(int)type visualComponentInteractionInfo:(id)info;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSafariBrowsingAssistantUserInteractionDetected

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    webpageViewIdentifier = [(BMSafariBrowsingAssistantUserInteractionDetected *)self webpageViewIdentifier];
    webpageViewIdentifier2 = [v5 webpageViewIdentifier];
    v8 = webpageViewIdentifier2;
    if (webpageViewIdentifier == webpageViewIdentifier2)
    {
    }

    else
    {
      webpageViewIdentifier3 = [(BMSafariBrowsingAssistantUserInteractionDetected *)self webpageViewIdentifier];
      webpageViewIdentifier4 = [v5 webpageViewIdentifier];
      v11 = [webpageViewIdentifier3 isEqual:webpageViewIdentifier4];

      if (!v11)
      {
        goto LABEL_14;
      }
    }

    visualComponent = [(BMSafariBrowsingAssistantUserInteractionDetected *)self visualComponent];
    visualComponent2 = [v5 visualComponent];
    v15 = visualComponent2;
    if (visualComponent == visualComponent2)
    {
    }

    else
    {
      visualComponent3 = [(BMSafariBrowsingAssistantUserInteractionDetected *)self visualComponent];
      visualComponent4 = [v5 visualComponent];
      v18 = [visualComponent3 isEqual:visualComponent4];

      if (!v18)
      {
        goto LABEL_14;
      }
    }

    userInteractionType = [(BMSafariBrowsingAssistantUserInteractionDetected *)self userInteractionType];
    if (userInteractionType == [v5 userInteractionType])
    {
      visualComponentInteractionInfo = [(BMSafariBrowsingAssistantUserInteractionDetected *)self visualComponentInteractionInfo];
      visualComponentInteractionInfo2 = [v5 visualComponentInteractionInfo];
      if (visualComponentInteractionInfo == visualComponentInteractionInfo2)
      {
        v12 = 1;
      }

      else
      {
        visualComponentInteractionInfo3 = [(BMSafariBrowsingAssistantUserInteractionDetected *)self visualComponentInteractionInfo];
        visualComponentInteractionInfo4 = [v5 visualComponentInteractionInfo];
        v12 = [visualComponentInteractionInfo3 isEqual:visualComponentInteractionInfo4];
      }

      goto LABEL_17;
    }

LABEL_14:
    v12 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v12 = 0;
LABEL_18:

  return v12;
}

- (id)jsonDictionary
{
  v18[4] = *MEMORY[0x1E69E9840];
  webpageViewIdentifier = [(BMSafariBrowsingAssistantUserInteractionDetected *)self webpageViewIdentifier];
  v4 = [webpageViewIdentifier base64EncodedStringWithOptions:0];

  visualComponent = [(BMSafariBrowsingAssistantUserInteractionDetected *)self visualComponent];
  jsonDictionary = [visualComponent jsonDictionary];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSafariBrowsingAssistantUserInteractionDetected userInteractionType](self, "userInteractionType")}];
  visualComponentInteractionInfo = [(BMSafariBrowsingAssistantUserInteractionDetected *)self visualComponentInteractionInfo];
  jsonDictionary2 = [visualComponentInteractionInfo jsonDictionary];

  v17[0] = @"webpageViewIdentifier";
  null = v4;
  if (!v4)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = null;
  v17[1] = @"visualComponent";
  null2 = jsonDictionary;
  if (!jsonDictionary)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = null2;
  v17[2] = @"userInteractionType";
  null3 = v7;
  if (!v7)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v18[2] = null3;
  v17[3] = @"visualComponentInteractionInfo";
  null4 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v18[3] = null4;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
  if (jsonDictionary2)
  {
    if (v7)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v7)
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
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BMSafariBrowsingAssistantUserInteractionDetected)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v57[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"webpageViewIdentifier"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = self;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v8 = 0;
          selfCopy3 = 0;
          goto LABEL_51;
        }

        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v33 = *MEMORY[0x1E698F240];
        v54 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"webpageViewIdentifier"];
        v55 = v13;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        v8 = 0;
        selfCopy3 = 0;
        *error = [v32 initWithDomain:v33 code:2 userInfo:v34];
        v16 = v34;
        self = selfCopy;
        goto LABEL_49;
      }

      v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v7 options:0];
      if (!v8)
      {
        if (!error)
        {
          v8 = 0;
          selfCopy3 = 0;
          goto LABEL_51;
        }

        v18 = objc_alloc(MEMORY[0x1E696ABC0]);
        v19 = *MEMORY[0x1E698F240];
        v56 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"webpageViewIdentifier"];
        v57[0] = v13;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:&v56 count:1];
        v21 = v19;
        self = selfCopy;
        v8 = 0;
        selfCopy3 = 0;
        *error = [v18 initWithDomain:v21 code:2 userInfo:v20];
        v16 = v20;
        goto LABEL_49;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"visualComponent"];
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v43 = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v9;
    v47 = 0;
    v43 = [[BMSafariBrowsingAssistantVisualComponent alloc] initWithJSONDictionary:v13 error:&v47];
    v14 = v47;
    if (v14)
    {
      if (error)
      {
        v14 = v14;
        *error = v14;
      }

      selfCopy3 = 0;
      v16 = v43;
      goto LABEL_49;
    }

LABEL_7:
    v10 = [dictionaryCopy objectForKeyedSubscript:@"userInteractionType"];
    v45 = v8;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      selfCopy4 = self;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v10;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v11 = 0;
            selfCopy3 = 0;
            v16 = v43;
            goto LABEL_48;
          }

          v35 = objc_alloc(MEMORY[0x1E696ABC0]);
          v36 = *MEMORY[0x1E698F240];
          v50 = *MEMORY[0x1E696A578];
          v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"userInteractionType"];
          v51 = v27;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
          v37 = [v35 initWithDomain:v36 code:2 userInfo:v28];
          v11 = 0;
          selfCopy3 = 0;
          *error = v37;
          goto LABEL_45;
        }

        v17 = [MEMORY[0x1E696AD98] numberWithInt:BMSafariBrowsingAssistantUserInteractionTypeFromString(v10)];
      }

      v11 = v17;
    }

    else
    {
      v11 = 0;
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"visualComponentInteractionInfo"];
    if (!v27 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v28 = 0;
LABEL_31:
      v16 = v43;
      self = -[BMSafariBrowsingAssistantUserInteractionDetected initWithWebpageViewIdentifier:visualComponent:userInteractionType:visualComponentInteractionInfo:](self, "initWithWebpageViewIdentifier:visualComponent:userInteractionType:visualComponentInteractionInfo:", v45, v43, [v11 intValue], v28);
      selfCopy3 = self;
LABEL_46:

LABEL_47:
LABEL_48:

      v13 = v9;
      v8 = v45;
      goto LABEL_49;
    }

    selfCopy4 = self;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v27;
      v46 = 0;
      v28 = [[BMSafariBrowsingAssistantVisualComponentInteractionInfo alloc] initWithJSONDictionary:v29 error:&v46];
      v30 = v46;
      if (!v30)
      {

        self = selfCopy4;
        goto LABEL_31;
      }

      if (error)
      {
        v30 = v30;
        *error = v30;
      }

      selfCopy3 = 0;
      v27 = v29;
    }

    else
    {
      if (!error)
      {
        selfCopy3 = 0;
        v16 = v43;
        goto LABEL_47;
      }

      v41 = objc_alloc(MEMORY[0x1E696ABC0]);
      v40 = *MEMORY[0x1E698F240];
      v48 = *MEMORY[0x1E696A578];
      v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"visualComponentInteractionInfo"];
      v49 = v28;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      *error = [v41 initWithDomain:v40 code:2 userInfo:v31];

      selfCopy3 = 0;
    }

LABEL_45:
    self = selfCopy4;
    v16 = v43;
    goto LABEL_46;
  }

  if (error)
  {
    v44 = objc_alloc(MEMORY[0x1E696ABC0]);
    selfCopy5 = self;
    v23 = *MEMORY[0x1E698F240];
    v52 = *MEMORY[0x1E696A578];
    errorCopy = error;
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"visualComponent"];
    v53 = v16;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v26 = v23;
    self = selfCopy5;
    *errorCopy = [v44 initWithDomain:v26 code:2 userInfo:v25];

    selfCopy3 = 0;
    v13 = v9;
LABEL_49:

    v9 = v13;
    goto LABEL_50;
  }

  selfCopy3 = 0;
LABEL_50:

LABEL_51:
  v38 = *MEMORY[0x1E69E9840];
  return selfCopy3;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSafariBrowsingAssistantUserInteractionDetected *)self writeTo:v3];
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

  userInteractionType = self->_userInteractionType;
  PBDataWriterWriteUint32Field();
  if (self->_visualComponentInteractionInfo)
  {
    PBDataWriterPlaceMark();
    [(BMSafariBrowsingAssistantVisualComponentInteractionInfo *)self->_visualComponentInteractionInfo writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v31.receiver = self;
  v31.super_class = BMSafariBrowsingAssistantUserInteractionDetected;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_49;
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
        LOBYTE(v32) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v32 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v32 & 0x7F) << v7;
        if ((v32 & 0x80) == 0)
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
      if ((v14 >> 3) > 2)
      {
        if (v15 == 4)
        {
          v32 = 0;
          v33 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_48;
          }

          v16 = [[BMSafariBrowsingAssistantVisualComponentInteractionInfo alloc] initByReadFrom:fromCopy];
          if (!v16)
          {
            goto LABEL_48;
          }

          v17 = 40;
LABEL_41:
          v27 = *(&v5->super.super.isa + v17);
          *(&v5->super.super.isa + v17) = v16;

          PBReaderRecallMark();
          goto LABEL_46;
        }

        if (v15 != 3)
        {
LABEL_35:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_48;
          }

          goto LABEL_46;
        }

        v18 = 0;
        v19 = 0;
        v20 = 0;
        while (1)
        {
          LOBYTE(v32) = 0;
          v21 = [fromCopy position] + 1;
          if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v32 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v20 |= (v32 & 0x7F) << v18;
          if ((v32 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          if (v19++ > 8)
          {
            goto LABEL_44;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v20 > 4)
        {
LABEL_44:
          LODWORD(v20) = 0;
        }

        v5->_userInteractionType = v20;
      }

      else
      {
        if (v15 != 1)
        {
          if (v15 != 2)
          {
            goto LABEL_35;
          }

          v32 = 0;
          v33 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_48;
          }

          v16 = [[BMSafariBrowsingAssistantVisualComponent alloc] initByReadFrom:fromCopy];
          if (!v16)
          {
            goto LABEL_48;
          }

          v17 = 32;
          goto LABEL_41;
        }

        v25 = PBReaderReadData();
        webpageViewIdentifier = v5->_webpageViewIdentifier;
        v5->_webpageViewIdentifier = v25;
      }

LABEL_46:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_48:
    v29 = 0;
  }

  else
  {
LABEL_49:
    v29 = v5;
  }

  return v29;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  webpageViewIdentifier = [(BMSafariBrowsingAssistantUserInteractionDetected *)self webpageViewIdentifier];
  visualComponent = [(BMSafariBrowsingAssistantUserInteractionDetected *)self visualComponent];
  v6 = BMSafariBrowsingAssistantUserInteractionTypeAsString([(BMSafariBrowsingAssistantUserInteractionDetected *)self userInteractionType]);
  visualComponentInteractionInfo = [(BMSafariBrowsingAssistantUserInteractionDetected *)self visualComponentInteractionInfo];
  v8 = [v3 initWithFormat:@"BMSafariBrowsingAssistantUserInteractionDetected with webpageViewIdentifier: %@, visualComponent: %@, userInteractionType: %@, visualComponentInteractionInfo: %@", webpageViewIdentifier, visualComponent, v6, visualComponentInteractionInfo];

  return v8;
}

- (BMSafariBrowsingAssistantUserInteractionDetected)initWithWebpageViewIdentifier:(id)identifier visualComponent:(id)component userInteractionType:(int)type visualComponentInteractionInfo:(id)info
{
  identifierCopy = identifier;
  componentCopy = component;
  infoCopy = info;
  v16.receiver = self;
  v16.super_class = BMSafariBrowsingAssistantUserInteractionDetected;
  v14 = [(BMEventBase *)&v16 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v14->_webpageViewIdentifier, identifier);
    objc_storeStrong(&v14->_visualComponent, component);
    v14->_userInteractionType = type;
    objc_storeStrong(&v14->_visualComponentInteractionInfo, info);
  }

  return v14;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"webpageViewIdentifier" number:1 type:14 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"visualComponent" number:2 type:14 subMessageClass:objc_opt_class()];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userInteractionType" number:3 type:4 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"visualComponentInteractionInfo" number:4 type:14 subMessageClass:objc_opt_class()];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"webpageViewIdentifier" dataType:4 requestOnly:0 fieldNumber:1 protoDataType:14 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"visualComponent_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_663];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userInteractionType" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"visualComponentInteractionInfo_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_665];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __59__BMSafariBrowsingAssistantUserInteractionDetected_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 visualComponentInteractionInfo];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __59__BMSafariBrowsingAssistantUserInteractionDetected_columns__block_invoke(uint64_t a1, void *a2)
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

    v8 = [[BMSafariBrowsingAssistantUserInteractionDetected alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end