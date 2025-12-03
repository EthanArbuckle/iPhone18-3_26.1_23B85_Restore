@interface BMAppDocumentInteractionFileIdentity
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAppDocumentInteractionFileIdentity)initWithItemURL:(id)l itemURLBookmarkData:(id)data;
- (BMAppDocumentInteractionFileIdentity)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAppDocumentInteractionFileIdentity

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    itemURL = [(BMAppDocumentInteractionFileIdentity *)self itemURL];
    itemURL2 = [v5 itemURL];
    v8 = itemURL2;
    if (itemURL == itemURL2)
    {
    }

    else
    {
      itemURL3 = [(BMAppDocumentInteractionFileIdentity *)self itemURL];
      itemURL4 = [v5 itemURL];
      v11 = [itemURL3 isEqual:itemURL4];

      if (!v11)
      {
        v12 = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    itemURLBookmarkData = [(BMAppDocumentInteractionFileIdentity *)self itemURLBookmarkData];
    itemURLBookmarkData2 = [v5 itemURLBookmarkData];
    if (itemURLBookmarkData == itemURLBookmarkData2)
    {
      v12 = 1;
    }

    else
    {
      itemURLBookmarkData3 = [(BMAppDocumentInteractionFileIdentity *)self itemURLBookmarkData];
      itemURLBookmarkData4 = [v5 itemURLBookmarkData];
      v12 = [itemURLBookmarkData3 isEqual:itemURLBookmarkData4];
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
  itemURL = [(BMAppDocumentInteractionFileIdentity *)self itemURL];
  itemURLBookmarkData = [(BMAppDocumentInteractionFileIdentity *)self itemURLBookmarkData];
  v5 = [itemURLBookmarkData base64EncodedStringWithOptions:0];

  v11[0] = @"itemURL";
  null = itemURL;
  if (!itemURL)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = @"itemURLBookmarkData";
  v12[0] = null;
  null2 = v5;
  if (!v5)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = null2;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (v5)
  {
    if (itemURL)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (itemURL)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BMAppDocumentInteractionFileIdentity)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v29[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"itemURL"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"itemURLBookmarkData"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = 0;
LABEL_7:
      self = [(BMAppDocumentInteractionFileIdentity *)self initWithItemURL:v8 itemURLBookmarkData:v10];
      selfCopy = self;
      goto LABEL_8;
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

      if (error)
      {
        v17 = objc_alloc(MEMORY[0x1E696ABC0]);
        v18 = *MEMORY[0x1E698F240];
        v26 = *MEMORY[0x1E696A578];
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"itemURLBookmarkData"];
        v27 = v19;
        v20 = MEMORY[0x1E695DF20];
        v21 = &v27;
        v22 = &v26;
LABEL_22:
        v23 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:1];
        *error = [v17 initWithDomain:v18 code:2 userInfo:v23];
      }
    }

    else if (error)
    {
      v17 = objc_alloc(MEMORY[0x1E696ABC0]);
      v18 = *MEMORY[0x1E698F240];
      v24 = *MEMORY[0x1E696A578];
      v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"itemURLBookmarkData"];
      v25 = v19;
      v20 = MEMORY[0x1E695DF20];
      v21 = &v25;
      v22 = &v24;
      goto LABEL_22;
    }

    v10 = 0;
    selfCopy = 0;
    goto LABEL_8;
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
    selfCopy = 0;
    goto LABEL_9;
  }

  v14 = objc_alloc(MEMORY[0x1E696ABC0]);
  v15 = *MEMORY[0x1E698F240];
  v28 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"itemURL"];
  v29[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  v16 = [v14 initWithDomain:v15 code:2 userInfo:v9];
  v8 = 0;
  selfCopy = 0;
  *error = v16;
LABEL_8:

LABEL_9:
  v12 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppDocumentInteractionFileIdentity *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_itemURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_itemURLBookmarkData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v22.receiver = self;
  v22.super_class = BMAppDocumentInteractionFileIdentity;
  v5 = [(BMEventBase *)&v22 init];
  if (!v5)
  {
    goto LABEL_27;
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
        v23 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v23 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      if ((v14 >> 3) == 2)
      {
        v15 = PBReaderReadData();
        v16 = &OBJC_IVAR___BMAppDocumentInteractionFileIdentity__itemURLBookmarkData;
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

        v15 = PBReaderReadString();
        v16 = &OBJC_IVAR___BMAppDocumentInteractionFileIdentity__itemURL;
      }

      v17 = *v16;
      v18 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v15;

LABEL_24:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  itemURL = [(BMAppDocumentInteractionFileIdentity *)self itemURL];
  itemURLBookmarkData = [(BMAppDocumentInteractionFileIdentity *)self itemURLBookmarkData];
  v6 = [v3 initWithFormat:@"BMAppDocumentInteractionFileIdentity with itemURL: %@, itemURLBookmarkData: %@", itemURL, itemURLBookmarkData];

  return v6;
}

- (BMAppDocumentInteractionFileIdentity)initWithItemURL:(id)l itemURLBookmarkData:(id)data
{
  lCopy = l;
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = BMAppDocumentInteractionFileIdentity;
  v9 = [(BMEventBase *)&v11 init];
  if (v9)
  {
    v9->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v9->_itemURL, l);
    objc_storeStrong(&v9->_itemURLBookmarkData, data);
  }

  return v9;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"itemURL" number:1 type:13 subMessageClass:0];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"itemURLBookmarkData" number:2 type:14 subMessageClass:0];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"itemURL" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"itemURLBookmarkData" dataType:4 requestOnly:0 fieldNumber:2 protoDataType:14 convertedType:0];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
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

    v8 = [[BMAppDocumentInteractionFileIdentity alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end