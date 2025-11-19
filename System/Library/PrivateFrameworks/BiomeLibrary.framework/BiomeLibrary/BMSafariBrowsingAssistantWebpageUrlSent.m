@interface BMSafariBrowsingAssistantWebpageUrlSent
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSafariBrowsingAssistantWebpageUrlSent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSafariBrowsingAssistantWebpageUrlSent)initWithWebpageViewIdentifier:(id)a3 url:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSafariBrowsingAssistantWebpageUrlSent

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSafariBrowsingAssistantWebpageUrlSent *)self webpageViewIdentifier];
    v7 = [v5 webpageViewIdentifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSafariBrowsingAssistantWebpageUrlSent *)self webpageViewIdentifier];
      v10 = [v5 webpageViewIdentifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        v12 = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    v13 = [(BMSafariBrowsingAssistantWebpageUrlSent *)self url];
    v14 = [v5 url];
    if (v13 == v14)
    {
      v12 = 1;
    }

    else
    {
      v15 = [(BMSafariBrowsingAssistantWebpageUrlSent *)self url];
      v16 = [v5 url];
      v12 = [v15 isEqual:v16];
    }

    goto LABEL_11;
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (id)jsonDictionary
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = [(BMSafariBrowsingAssistantWebpageUrlSent *)self webpageViewIdentifier];
  v4 = [v3 base64EncodedStringWithOptions:0];

  v5 = [(BMSafariBrowsingAssistantWebpageUrlSent *)self url];
  v11[0] = @"webpageViewIdentifier";
  v6 = v4;
  if (!v4)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = @"url";
  v12[0] = v6;
  v7 = v5;
  if (!v5)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (v5)
  {
    if (v4)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (v4)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BMSafariBrowsingAssistantWebpageUrlSent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v29[1] = *MEMORY[0x1E69E9840];
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
      v14 = objc_alloc(MEMORY[0x1E696ABC0]);
      v15 = *MEMORY[0x1E698F240];
      v26 = *MEMORY[0x1E696A578];
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"webpageViewIdentifier"];
      v27 = v10;
      v16 = MEMORY[0x1E695DF20];
      v17 = &v27;
      v18 = &v26;
      goto LABEL_23;
    }

LABEL_24:
    v8 = 0;
    v11 = 0;
    goto LABEL_9;
  }

  v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v7 options:0];
  if (!v8)
  {
    if (a4)
    {
      v14 = objc_alloc(MEMORY[0x1E696ABC0]);
      v15 = *MEMORY[0x1E698F240];
      v28 = *MEMORY[0x1E696A578];
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"webpageViewIdentifier"];
      v29[0] = v10;
      v16 = MEMORY[0x1E695DF20];
      v17 = v29;
      v18 = &v28;
LABEL_23:
      v9 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:1];
      v23 = [v14 initWithDomain:v15 code:2 userInfo:v9];
      v8 = 0;
      v11 = 0;
      *a4 = v23;
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_4:
  v9 = [v6 objectForKeyedSubscript:@"url"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        v20 = *MEMORY[0x1E698F240];
        v24 = *MEMORY[0x1E696A578];
        v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"url"];
        v25 = v21;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        *a4 = [v19 initWithDomain:v20 code:2 userInfo:v22];
      }

      v10 = 0;
      v11 = 0;
      goto LABEL_8;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  self = [(BMSafariBrowsingAssistantWebpageUrlSent *)self initWithWebpageViewIdentifier:v8 url:v10];
  v11 = self;
LABEL_8:

LABEL_9:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSafariBrowsingAssistantWebpageUrlSent *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_webpageViewIdentifier)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_url)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = BMSafariBrowsingAssistantWebpageUrlSent;
  v5 = [(BMEventBase *)&v22 init];
  if (!v5)
  {
    goto LABEL_27;
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
        v23 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v23 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v23 & 0x7F) << v7;
        if ((v23 & 0x80) == 0)
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

      if ((v14 >> 3) == 2)
      {
        v15 = PBReaderReadString();
        v16 = &OBJC_IVAR___BMSafariBrowsingAssistantWebpageUrlSent__url;
      }

      else
      {
        if ((v14 >> 3) != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_24;
        }

        v15 = PBReaderReadData();
        v16 = &OBJC_IVAR___BMSafariBrowsingAssistantWebpageUrlSent__webpageViewIdentifier;
      }

      v17 = *v16;
      v18 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v15;

LABEL_24:
      v19 = [v4 position];
    }

    while (v19 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_26:
    v20 = 0;
  }

  else
  {
LABEL_27:
    v20 = v5;
  }

  return v20;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMSafariBrowsingAssistantWebpageUrlSent *)self webpageViewIdentifier];
  v5 = [(BMSafariBrowsingAssistantWebpageUrlSent *)self url];
  v6 = [v3 initWithFormat:@"BMSafariBrowsingAssistantWebpageUrlSent with webpageViewIdentifier: %@, url: %@", v4, v5];

  return v6;
}

- (BMSafariBrowsingAssistantWebpageUrlSent)initWithWebpageViewIdentifier:(id)a3 url:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11.receiver = self;
  v11.super_class = BMSafariBrowsingAssistantWebpageUrlSent;
  v9 = [(BMEventBase *)&v11 init];
  if (v9)
  {
    v9->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v9->_webpageViewIdentifier, a3);
    objc_storeStrong(&v9->_url, a4);
  }

  return v9;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"webpageViewIdentifier" number:1 type:14 subMessageClass:0];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"url" number:2 type:13 subMessageClass:0];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"webpageViewIdentifier" dataType:4 requestOnly:0 fieldNumber:1 protoDataType:14 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"url" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
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

    v8 = [[BMSafariBrowsingAssistantWebpageUrlSent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end