@interface BMTextImageContent
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMTextImageContent)initWithJSONDictionary:(id)dictionary error:(id *)p_isa;
- (BMTextImageContent)initWithText:(id)text imageData:(id)data metadata:(id)metadata;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMTextImageContent

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    text = [(BMTextImageContent *)self text];
    text2 = [v5 text];
    v8 = text2;
    if (text == text2)
    {
    }

    else
    {
      text3 = [(BMTextImageContent *)self text];
      text4 = [v5 text];
      v11 = [text3 isEqual:text4];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    imageData = [(BMTextImageContent *)self imageData];
    imageData2 = [v5 imageData];
    v15 = imageData2;
    if (imageData == imageData2)
    {
    }

    else
    {
      imageData3 = [(BMTextImageContent *)self imageData];
      imageData4 = [v5 imageData];
      v18 = [imageData3 isEqual:imageData4];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    metadata = [(BMTextImageContent *)self metadata];
    metadata2 = [v5 metadata];
    if (metadata == metadata2)
    {
      v12 = 1;
    }

    else
    {
      metadata3 = [(BMTextImageContent *)self metadata];
      metadata4 = [v5 metadata];
      v12 = [metadata3 isEqual:metadata4];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (id)jsonDictionary
{
  v15[3] = *MEMORY[0x1E69E9840];
  text = [(BMTextImageContent *)self text];
  imageData = [(BMTextImageContent *)self imageData];
  v5 = [imageData base64EncodedStringWithOptions:0];

  metadata = [(BMTextImageContent *)self metadata];
  jsonDictionary = [metadata jsonDictionary];

  v14[0] = @"text";
  null = text;
  if (!text)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"imageData";
  null2 = v5;
  if (!v5)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"metadata";
  null3 = jsonDictionary;
  if (!jsonDictionary)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null3;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  if (jsonDictionary)
  {
    if (v5)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (text)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (text)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BMTextImageContent)initWithJSONDictionary:(id)dictionary error:(id *)p_isa
{
  v39[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"text"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"imageData"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = 0;
LABEL_7:
      v11 = [dictionaryCopy objectForKeyedSubscript:@"metadata"];
      if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!p_isa)
          {
            goto LABEL_12;
          }

          v30 = objc_alloc(MEMORY[0x1E696ABC0]);
          v29 = *MEMORY[0x1E698F240];
          v32 = *MEMORY[0x1E696A578];
          v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"metadata"];
          v33 = v12;
          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
          *p_isa = [v30 initWithDomain:v29 code:2 userInfo:v26];

          p_isa = 0;
LABEL_11:

LABEL_12:
          goto LABEL_13;
        }

        v15 = v11;
        v31 = 0;
        v12 = [[BMCustomAttributes alloc] initWithJSONDictionary:v15 error:&v31];
        v16 = v31;
        if (v16)
        {
          if (p_isa)
          {
            v16 = v16;
            *p_isa = v16;
          }

          p_isa = 0;
          v11 = v15;
          goto LABEL_11;
        }
      }

      else
      {
        v12 = 0;
      }

      self = [(BMTextImageContent *)self initWithText:v8 imageData:v10 metadata:v12];
      p_isa = &self->super.super.isa;
      goto LABEL_11;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v9 options:0];
      if (v10)
      {
        goto LABEL_7;
      }

      if (p_isa)
      {
        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v36 = *MEMORY[0x1E696A578];
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"imageData"];
        v37 = v11;
        v23 = MEMORY[0x1E695DF20];
        v24 = &v37;
        v25 = &v36;
LABEL_34:
        v12 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:1];
        v27 = [v21 initWithDomain:v22 code:2 userInfo:v12];
        v10 = 0;
        v28 = p_isa;
        p_isa = 0;
        *v28 = v27;
        goto LABEL_11;
      }
    }

    else if (p_isa)
    {
      v21 = objc_alloc(MEMORY[0x1E696ABC0]);
      v22 = *MEMORY[0x1E698F240];
      v34 = *MEMORY[0x1E696A578];
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"imageData"];
      v35 = v11;
      v23 = MEMORY[0x1E695DF20];
      v24 = &v35;
      v25 = &v34;
      goto LABEL_34;
    }

    v10 = 0;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!p_isa)
  {
    v8 = 0;
    goto LABEL_14;
  }

  v17 = objc_alloc(MEMORY[0x1E696ABC0]);
  v18 = *MEMORY[0x1E698F240];
  v38 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"text"];
  v39[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  v19 = [v17 initWithDomain:v18 code:2 userInfo:v9];
  v8 = 0;
  v20 = p_isa;
  p_isa = 0;
  *v20 = v19;
LABEL_13:

LABEL_14:
  v13 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMTextImageContent *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_text)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_imageData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_metadata)
  {
    PBDataWriterPlaceMark();
    [(BMCustomAttributes *)self->_metadata writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v24.receiver = self;
  v24.super_class = BMTextImageContent;
  v5 = [(BMEventBase *)&v24 init];
  if (!v5)
  {
    goto LABEL_31;
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
        LOBYTE(v25[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v25 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v25[0] & 0x7F) << v7;
        if ((v25[0] & 0x80) == 0)
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
      if ((v14 >> 3) == 3)
      {
        v25[0] = 0;
        v25[1] = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_30;
        }

        v19 = [[BMCustomAttributes alloc] initByReadFrom:fromCopy];
        if (!v19)
        {
          goto LABEL_30;
        }

        metadata = v5->_metadata;
        v5->_metadata = v19;

        PBReaderRecallMark();
      }

      else
      {
        if (v15 == 2)
        {
          v16 = PBReaderReadData();
          v17 = 32;
        }

        else
        {
          if (v15 != 1)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_30;
            }

            goto LABEL_28;
          }

          v16 = PBReaderReadString();
          v17 = 24;
        }

        v18 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;
      }

LABEL_28:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_30:
    v22 = 0;
  }

  else
  {
LABEL_31:
    v22 = v5;
  }

  return v22;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  text = [(BMTextImageContent *)self text];
  imageData = [(BMTextImageContent *)self imageData];
  metadata = [(BMTextImageContent *)self metadata];
  v7 = [v3 initWithFormat:@"BMTextImageContent with text: %@, imageData: %@, metadata: %@", text, imageData, metadata];

  return v7;
}

- (BMTextImageContent)initWithText:(id)text imageData:(id)data metadata:(id)metadata
{
  textCopy = text;
  dataCopy = data;
  metadataCopy = metadata;
  v14.receiver = self;
  v14.super_class = BMTextImageContent;
  v12 = [(BMEventBase *)&v14 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_text, text);
    objc_storeStrong(&v12->_imageData, data);
    objc_storeStrong(&v12->_metadata, metadata);
  }

  return v12;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"text" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"imageData" number:2 type:14 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"metadata" number:3 type:14 subMessageClass:objc_opt_class()];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"text" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"imageData" dataType:4 requestOnly:0 fieldNumber:2 protoDataType:14 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"metadata_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_286];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __29__BMTextImageContent_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 metadata];
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

    v8 = [[BMTextImageContent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end