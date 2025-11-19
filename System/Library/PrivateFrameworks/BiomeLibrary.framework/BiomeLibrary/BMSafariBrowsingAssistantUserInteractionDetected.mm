@interface BMSafariBrowsingAssistantUserInteractionDetected
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSafariBrowsingAssistantUserInteractionDetected)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSafariBrowsingAssistantUserInteractionDetected)initWithWebpageViewIdentifier:(id)a3 visualComponent:(id)a4 userInteractionType:(int)a5 visualComponentInteractionInfo:(id)a6;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSafariBrowsingAssistantUserInteractionDetected

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSafariBrowsingAssistantUserInteractionDetected *)self webpageViewIdentifier];
    v7 = [v5 webpageViewIdentifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSafariBrowsingAssistantUserInteractionDetected *)self webpageViewIdentifier];
      v10 = [v5 webpageViewIdentifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_14;
      }
    }

    v13 = [(BMSafariBrowsingAssistantUserInteractionDetected *)self visualComponent];
    v14 = [v5 visualComponent];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMSafariBrowsingAssistantUserInteractionDetected *)self visualComponent];
      v17 = [v5 visualComponent];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_14;
      }
    }

    v19 = [(BMSafariBrowsingAssistantUserInteractionDetected *)self userInteractionType];
    if (v19 == [v5 userInteractionType])
    {
      v20 = [(BMSafariBrowsingAssistantUserInteractionDetected *)self visualComponentInteractionInfo];
      v21 = [v5 visualComponentInteractionInfo];
      if (v20 == v21)
      {
        v12 = 1;
      }

      else
      {
        v22 = [(BMSafariBrowsingAssistantUserInteractionDetected *)self visualComponentInteractionInfo];
        v23 = [v5 visualComponentInteractionInfo];
        v12 = [v22 isEqual:v23];
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
  v3 = [(BMSafariBrowsingAssistantUserInteractionDetected *)self webpageViewIdentifier];
  v4 = [v3 base64EncodedStringWithOptions:0];

  v5 = [(BMSafariBrowsingAssistantUserInteractionDetected *)self visualComponent];
  v6 = [v5 jsonDictionary];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSafariBrowsingAssistantUserInteractionDetected userInteractionType](self, "userInteractionType")}];
  v8 = [(BMSafariBrowsingAssistantUserInteractionDetected *)self visualComponentInteractionInfo];
  v9 = [v8 jsonDictionary];

  v17[0] = @"webpageViewIdentifier";
  v10 = v4;
  if (!v4)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = v10;
  v17[1] = @"visualComponent";
  v11 = v6;
  if (!v6)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = v11;
  v17[2] = @"userInteractionType";
  v12 = v7;
  if (!v7)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v18[2] = v12;
  v17[3] = @"visualComponentInteractionInfo";
  v13 = v9;
  if (!v9)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v18[3] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
  if (v9)
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
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BMSafariBrowsingAssistantUserInteractionDetected)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v57[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"webpageViewIdentifier"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v12 = self;
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
        if (!a4)
        {
          v8 = 0;
          v15 = 0;
          goto LABEL_51;
        }

        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v33 = *MEMORY[0x1E698F240];
        v54 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"webpageViewIdentifier"];
        v55 = v13;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        v8 = 0;
        v15 = 0;
        *a4 = [v32 initWithDomain:v33 code:2 userInfo:v34];
        v16 = v34;
        self = v12;
        goto LABEL_49;
      }

      v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v7 options:0];
      if (!v8)
      {
        if (!a4)
        {
          v8 = 0;
          v15 = 0;
          goto LABEL_51;
        }

        v18 = objc_alloc(MEMORY[0x1E696ABC0]);
        v19 = *MEMORY[0x1E698F240];
        v56 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"webpageViewIdentifier"];
        v57[0] = v13;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:&v56 count:1];
        v21 = v19;
        self = v12;
        v8 = 0;
        v15 = 0;
        *a4 = [v18 initWithDomain:v21 code:2 userInfo:v20];
        v16 = v20;
        goto LABEL_49;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 objectForKeyedSubscript:@"visualComponent"];
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
      if (a4)
      {
        v14 = v14;
        *a4 = v14;
      }

      v15 = 0;
      v16 = v43;
      goto LABEL_49;
    }

LABEL_7:
    v10 = [v6 objectForKeyedSubscript:@"userInteractionType"];
    v45 = v8;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v42 = self;
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
          if (!a4)
          {
            v11 = 0;
            v15 = 0;
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
          v15 = 0;
          *a4 = v37;
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

    v27 = [v6 objectForKeyedSubscript:@"visualComponentInteractionInfo"];
    if (!v27 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v28 = 0;
LABEL_31:
      v16 = v43;
      self = -[BMSafariBrowsingAssistantUserInteractionDetected initWithWebpageViewIdentifier:visualComponent:userInteractionType:visualComponentInteractionInfo:](self, "initWithWebpageViewIdentifier:visualComponent:userInteractionType:visualComponentInteractionInfo:", v45, v43, [v11 intValue], v28);
      v15 = self;
LABEL_46:

LABEL_47:
LABEL_48:

      v13 = v9;
      v8 = v45;
      goto LABEL_49;
    }

    v42 = self;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v27;
      v46 = 0;
      v28 = [[BMSafariBrowsingAssistantVisualComponentInteractionInfo alloc] initWithJSONDictionary:v29 error:&v46];
      v30 = v46;
      if (!v30)
      {

        self = v42;
        goto LABEL_31;
      }

      if (a4)
      {
        v30 = v30;
        *a4 = v30;
      }

      v15 = 0;
      v27 = v29;
    }

    else
    {
      if (!a4)
      {
        v15 = 0;
        v16 = v43;
        goto LABEL_47;
      }

      v41 = objc_alloc(MEMORY[0x1E696ABC0]);
      v40 = *MEMORY[0x1E698F240];
      v48 = *MEMORY[0x1E696A578];
      v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"visualComponentInteractionInfo"];
      v49 = v28;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      *a4 = [v41 initWithDomain:v40 code:2 userInfo:v31];

      v15 = 0;
    }

LABEL_45:
    self = v42;
    v16 = v43;
    goto LABEL_46;
  }

  if (a4)
  {
    v44 = objc_alloc(MEMORY[0x1E696ABC0]);
    v22 = self;
    v23 = *MEMORY[0x1E698F240];
    v52 = *MEMORY[0x1E696A578];
    v24 = a4;
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"visualComponent"];
    v53 = v16;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v26 = v23;
    self = v22;
    *v24 = [v44 initWithDomain:v26 code:2 userInfo:v25];

    v15 = 0;
    v13 = v9;
LABEL_49:

    v9 = v13;
    goto LABEL_50;
  }

  v15 = 0;
LABEL_50:

LABEL_51:
  v38 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSafariBrowsingAssistantUserInteractionDetected *)self writeTo:v3];
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

  userInteractionType = self->_userInteractionType;
  PBDataWriterWriteUint32Field();
  if (self->_visualComponentInteractionInfo)
  {
    PBDataWriterPlaceMark();
    [(BMSafariBrowsingAssistantVisualComponentInteractionInfo *)self->_visualComponentInteractionInfo writeTo:v4];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = BMSafariBrowsingAssistantUserInteractionDetected;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_49;
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
        LOBYTE(v32) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v32 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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

          v16 = [[BMSafariBrowsingAssistantVisualComponentInteractionInfo alloc] initByReadFrom:v4];
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
          v21 = [v4 position] + 1;
          if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
          {
            v23 = [v4 data];
            [v23 getBytes:&v32 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        if (([v4 hasError] & 1) != 0 || v20 > 4)
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

          v16 = [[BMSafariBrowsingAssistantVisualComponent alloc] initByReadFrom:v4];
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
      v28 = [v4 position];
    }

    while (v28 < [v4 length]);
  }

  if ([v4 hasError])
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
  v4 = [(BMSafariBrowsingAssistantUserInteractionDetected *)self webpageViewIdentifier];
  v5 = [(BMSafariBrowsingAssistantUserInteractionDetected *)self visualComponent];
  v6 = BMSafariBrowsingAssistantUserInteractionTypeAsString([(BMSafariBrowsingAssistantUserInteractionDetected *)self userInteractionType]);
  v7 = [(BMSafariBrowsingAssistantUserInteractionDetected *)self visualComponentInteractionInfo];
  v8 = [v3 initWithFormat:@"BMSafariBrowsingAssistantUserInteractionDetected with webpageViewIdentifier: %@, visualComponent: %@, userInteractionType: %@, visualComponentInteractionInfo: %@", v4, v5, v6, v7];

  return v8;
}

- (BMSafariBrowsingAssistantUserInteractionDetected)initWithWebpageViewIdentifier:(id)a3 visualComponent:(id)a4 userInteractionType:(int)a5 visualComponentInteractionInfo:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v16.receiver = self;
  v16.super_class = BMSafariBrowsingAssistantUserInteractionDetected;
  v14 = [(BMEventBase *)&v16 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v14->_webpageViewIdentifier, a3);
    objc_storeStrong(&v14->_visualComponent, a4);
    v14->_userInteractionType = a5;
    objc_storeStrong(&v14->_visualComponentInteractionInfo, a6);
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