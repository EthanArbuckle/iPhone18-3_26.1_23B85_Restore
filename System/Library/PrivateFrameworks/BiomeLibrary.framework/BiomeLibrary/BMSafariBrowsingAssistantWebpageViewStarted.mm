@interface BMSafariBrowsingAssistantWebpageViewStarted
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSafariBrowsingAssistantWebpageViewStarted)initWithJSONDictionary:(id)a3 error:(id *)p_isa;
- (BMSafariBrowsingAssistantWebpageViewStarted)initWithWebpageViewIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSafariBrowsingAssistantWebpageViewStarted

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSafariBrowsingAssistantWebpageViewStarted *)self webpageViewIdentifier];
    v7 = [v5 webpageViewIdentifier];
    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      v8 = [(BMSafariBrowsingAssistantWebpageViewStarted *)self webpageViewIdentifier];
      v9 = [v5 webpageViewIdentifier];
      v10 = [v8 isEqual:v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)jsonDictionary
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [(BMSafariBrowsingAssistantWebpageViewStarted *)self webpageViewIdentifier];
  v3 = [v2 base64EncodedStringWithOptions:0];

  v8 = @"webpageViewIdentifier";
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  if (!v3)
  {
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BMSafariBrowsingAssistantWebpageViewStarted)initWithJSONDictionary:(id)a3 error:(id *)p_isa
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = [a3 objectForKeyedSubscript:@"webpageViewIdentifier"];
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        goto LABEL_4;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
        if (v7)
        {
          goto LABEL_4;
        }

        if (p_isa)
        {
          v10 = objc_alloc(MEMORY[0x1E696ABC0]);
          v11 = *MEMORY[0x1E698F240];
          v19 = *MEMORY[0x1E696A578];
          v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"webpageViewIdentifier"];
          v20[0] = v12;
          v13 = MEMORY[0x1E695DF20];
          v14 = v20;
          v15 = &v19;
LABEL_14:
          v16 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:1];
          *p_isa = [v10 initWithDomain:v11 code:2 userInfo:v16];

          v7 = 0;
          p_isa = 0;
          goto LABEL_5;
        }
      }

      else if (p_isa)
      {
        v10 = objc_alloc(MEMORY[0x1E696ABC0]);
        v11 = *MEMORY[0x1E698F240];
        v17 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"webpageViewIdentifier"];
        v18 = v12;
        v13 = MEMORY[0x1E695DF20];
        v14 = &v18;
        v15 = &v17;
        goto LABEL_14;
      }

      v7 = 0;
      goto LABEL_5;
    }
  }

  v7 = 0;
LABEL_4:
  self = [(BMSafariBrowsingAssistantWebpageViewStarted *)self initWithWebpageViewIdentifier:v7];
  p_isa = &self->super.super.isa;
LABEL_5:

  v8 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSafariBrowsingAssistantWebpageViewStarted *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_webpageViewIdentifier)
  {
    PBDataWriterWriteDataField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = BMSafariBrowsingAssistantWebpageViewStarted;
  v5 = [(BMEventBase *)&v20 init];
  if (!v5)
  {
    goto LABEL_24;
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
        v21 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v21 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v21 & 0x7F) << v7;
        if ((v21 & 0x80) == 0)
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

      if ((v14 >> 3) == 1)
      {
        v15 = PBReaderReadData();
        webpageViewIdentifier = v5->_webpageViewIdentifier;
        v5->_webpageViewIdentifier = v15;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_23;
      }

      v17 = [v4 position];
    }

    while (v17 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_23:
    v18 = 0;
  }

  else
  {
LABEL_24:
    v18 = v5;
  }

  return v18;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMSafariBrowsingAssistantWebpageViewStarted *)self webpageViewIdentifier];
  v5 = [v3 initWithFormat:@"BMSafariBrowsingAssistantWebpageViewStarted with webpageViewIdentifier: %@", v4];

  return v5;
}

- (BMSafariBrowsingAssistantWebpageViewStarted)initWithWebpageViewIdentifier:(id)a3
{
  v5 = a3;
  v8.receiver = self;
  v8.super_class = BMSafariBrowsingAssistantWebpageViewStarted;
  v6 = [(BMEventBase *)&v8 init];
  if (v6)
  {
    v6->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v6->_webpageViewIdentifier, a3);
  }

  return v6;
}

+ (id)protoFields
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"webpageViewIdentifier" number:1 type:14 subMessageClass:0];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)columns
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"webpageViewIdentifier" dataType:4 requestOnly:0 fieldNumber:1 protoDataType:14 convertedType:0];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
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

    v8 = [[BMSafariBrowsingAssistantWebpageViewStarted alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end