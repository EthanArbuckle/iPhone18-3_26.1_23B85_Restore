@interface BMAppDocumentInteractionAppIdentity
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAppDocumentInteractionAppIdentity)initWithBundleIdentifier:(id)identifier bundleURL:(id)l bundleURLBookmarkData:(id)data;
- (BMAppDocumentInteractionAppIdentity)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAppDocumentInteractionAppIdentity

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    bundleIdentifier = [(BMAppDocumentInteractionAppIdentity *)self bundleIdentifier];
    bundleIdentifier2 = [v5 bundleIdentifier];
    v8 = bundleIdentifier2;
    if (bundleIdentifier == bundleIdentifier2)
    {
    }

    else
    {
      bundleIdentifier3 = [(BMAppDocumentInteractionAppIdentity *)self bundleIdentifier];
      bundleIdentifier4 = [v5 bundleIdentifier];
      v11 = [bundleIdentifier3 isEqual:bundleIdentifier4];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    bundleURL = [(BMAppDocumentInteractionAppIdentity *)self bundleURL];
    bundleURL2 = [v5 bundleURL];
    v15 = bundleURL2;
    if (bundleURL == bundleURL2)
    {
    }

    else
    {
      bundleURL3 = [(BMAppDocumentInteractionAppIdentity *)self bundleURL];
      bundleURL4 = [v5 bundleURL];
      v18 = [bundleURL3 isEqual:bundleURL4];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    bundleURLBookmarkData = [(BMAppDocumentInteractionAppIdentity *)self bundleURLBookmarkData];
    bundleURLBookmarkData2 = [v5 bundleURLBookmarkData];
    if (bundleURLBookmarkData == bundleURLBookmarkData2)
    {
      v12 = 1;
    }

    else
    {
      bundleURLBookmarkData3 = [(BMAppDocumentInteractionAppIdentity *)self bundleURLBookmarkData];
      bundleURLBookmarkData4 = [v5 bundleURLBookmarkData];
      v12 = [bundleURLBookmarkData3 isEqual:bundleURLBookmarkData4];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (id)jsonDictionary
{
  v14[3] = *MEMORY[0x1E69E9840];
  bundleIdentifier = [(BMAppDocumentInteractionAppIdentity *)self bundleIdentifier];
  bundleURL = [(BMAppDocumentInteractionAppIdentity *)self bundleURL];
  bundleURLBookmarkData = [(BMAppDocumentInteractionAppIdentity *)self bundleURLBookmarkData];
  v6 = [bundleURLBookmarkData base64EncodedStringWithOptions:0];

  v13[0] = @"bundleIdentifier";
  null = bundleIdentifier;
  if (!bundleIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = null;
  v13[1] = @"bundleURL";
  null2 = bundleURL;
  if (!bundleURL)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = null2;
  v13[2] = @"bundleURLBookmarkData";
  null3 = v6;
  if (!v6)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = null3;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  if (v6)
  {
    if (bundleURL)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (bundleIdentifier)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!bundleURL)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (bundleIdentifier)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BMAppDocumentInteractionAppIdentity)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v36[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"bundleIdentifier"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"bundleURL"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          selfCopy = 0;
          goto LABEL_12;
        }

        v27 = objc_alloc(MEMORY[0x1E696ABC0]);
        v19 = *MEMORY[0x1E698F240];
        v33 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleURL"];
        v34 = v12;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        v20 = [v27 initWithDomain:v19 code:2 userInfo:v11];
        v10 = 0;
        selfCopy = 0;
        *error = v20;
        goto LABEL_11;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"bundleURLBookmarkData"];
    if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = 0;
LABEL_10:
      self = [(BMAppDocumentInteractionAppIdentity *)self initWithBundleIdentifier:v8 bundleURL:v10 bundleURLBookmarkData:v12];
      selfCopy = self;
LABEL_11:

      goto LABEL_12;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v11 options:0];
      if (v12)
      {
        goto LABEL_10;
      }

      if (error)
      {
        v28 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v31 = *MEMORY[0x1E696A578];
        v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"bundleURLBookmarkData"];
        v32 = v21;
        v22 = MEMORY[0x1E695DF20];
        v23 = &v32;
        v24 = &v31;
LABEL_31:
        v25 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:1];
        *error = [v28 initWithDomain:v26 code:2 userInfo:v25];
      }
    }

    else if (error)
    {
      v28 = objc_alloc(MEMORY[0x1E696ABC0]);
      v26 = *MEMORY[0x1E698F240];
      v29 = *MEMORY[0x1E696A578];
      v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"bundleURLBookmarkData"];
      v30 = v21;
      v22 = MEMORY[0x1E695DF20];
      v23 = &v30;
      v24 = &v29;
      goto LABEL_31;
    }

    v12 = 0;
    selfCopy = 0;
    goto LABEL_11;
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
    goto LABEL_13;
  }

  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E698F240];
  v35 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleIdentifier"];
  v36[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
  v18 = [v16 initWithDomain:v17 code:2 userInfo:v9];
  v8 = 0;
  selfCopy = 0;
  *error = v18;
LABEL_12:

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppDocumentInteractionAppIdentity *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_bundleURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_bundleURLBookmarkData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v23.receiver = self;
  v23.super_class = BMAppDocumentInteractionAppIdentity;
  v5 = [(BMEventBase *)&v23 init];
  if (!v5)
  {
    goto LABEL_29;
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
        v24 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v24 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v24 & 0x7F) << v7;
        if ((v24 & 0x80) == 0)
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
        v16 = PBReaderReadData();
        v17 = &OBJC_IVAR___BMAppDocumentInteractionAppIdentity__bundleURLBookmarkData;
      }

      else if (v15 == 2)
      {
        v16 = PBReaderReadString();
        v17 = &OBJC_IVAR___BMAppDocumentInteractionAppIdentity__bundleURL;
      }

      else
      {
        if (v15 != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_28;
          }

          goto LABEL_26;
        }

        v16 = PBReaderReadString();
        v17 = &OBJC_IVAR___BMAppDocumentInteractionAppIdentity__bundleIdentifier;
      }

      v18 = *v17;
      v19 = *(&v5->super.super.isa + v18);
      *(&v5->super.super.isa + v18) = v16;

LABEL_26:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_28:
    v21 = 0;
  }

  else
  {
LABEL_29:
    v21 = v5;
  }

  return v21;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  bundleIdentifier = [(BMAppDocumentInteractionAppIdentity *)self bundleIdentifier];
  bundleURL = [(BMAppDocumentInteractionAppIdentity *)self bundleURL];
  bundleURLBookmarkData = [(BMAppDocumentInteractionAppIdentity *)self bundleURLBookmarkData];
  v7 = [v3 initWithFormat:@"BMAppDocumentInteractionAppIdentity with bundleIdentifier: %@, bundleURL: %@, bundleURLBookmarkData: %@", bundleIdentifier, bundleURL, bundleURLBookmarkData];

  return v7;
}

- (BMAppDocumentInteractionAppIdentity)initWithBundleIdentifier:(id)identifier bundleURL:(id)l bundleURLBookmarkData:(id)data
{
  identifierCopy = identifier;
  lCopy = l;
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = BMAppDocumentInteractionAppIdentity;
  v12 = [(BMEventBase *)&v14 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_bundleIdentifier, identifier);
    objc_storeStrong(&v12->_bundleURL, l);
    objc_storeStrong(&v12->_bundleURLBookmarkData, data);
  }

  return v12;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleIdentifier" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleURL" number:2 type:13 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleURLBookmarkData" number:3 type:14 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleURL" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleURLBookmarkData" dataType:4 requestOnly:0 fieldNumber:3 protoDataType:14 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

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

    v8 = [[BMAppDocumentInteractionAppIdentity alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end