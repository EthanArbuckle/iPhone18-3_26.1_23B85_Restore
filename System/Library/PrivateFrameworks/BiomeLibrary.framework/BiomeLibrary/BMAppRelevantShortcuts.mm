@interface BMAppRelevantShortcuts
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAppRelevantShortcuts)initWithBundleID:(id)d keyImageProxyIdentifier:(id)identifier serializedRelevantShortcut:(id)shortcut;
- (BMAppRelevantShortcuts)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAppRelevantShortcuts

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"keyImageProxyIdentifier" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"serializedRelevantShortcut" dataType:4 requestOnly:0 fieldNumber:3 protoDataType:14 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    bundleID = [(BMAppRelevantShortcuts *)self bundleID];
    bundleID2 = [v5 bundleID];
    v8 = bundleID2;
    if (bundleID == bundleID2)
    {
    }

    else
    {
      bundleID3 = [(BMAppRelevantShortcuts *)self bundleID];
      bundleID4 = [v5 bundleID];
      v11 = [bundleID3 isEqual:bundleID4];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    keyImageProxyIdentifier = [(BMAppRelevantShortcuts *)self keyImageProxyIdentifier];
    keyImageProxyIdentifier2 = [v5 keyImageProxyIdentifier];
    v15 = keyImageProxyIdentifier2;
    if (keyImageProxyIdentifier == keyImageProxyIdentifier2)
    {
    }

    else
    {
      keyImageProxyIdentifier3 = [(BMAppRelevantShortcuts *)self keyImageProxyIdentifier];
      keyImageProxyIdentifier4 = [v5 keyImageProxyIdentifier];
      v18 = [keyImageProxyIdentifier3 isEqual:keyImageProxyIdentifier4];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    serializedRelevantShortcut = [(BMAppRelevantShortcuts *)self serializedRelevantShortcut];
    serializedRelevantShortcut2 = [v5 serializedRelevantShortcut];
    if (serializedRelevantShortcut == serializedRelevantShortcut2)
    {
      v12 = 1;
    }

    else
    {
      serializedRelevantShortcut3 = [(BMAppRelevantShortcuts *)self serializedRelevantShortcut];
      serializedRelevantShortcut4 = [v5 serializedRelevantShortcut];
      v12 = [serializedRelevantShortcut3 isEqual:serializedRelevantShortcut4];
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
  bundleID = [(BMAppRelevantShortcuts *)self bundleID];
  keyImageProxyIdentifier = [(BMAppRelevantShortcuts *)self keyImageProxyIdentifier];
  serializedRelevantShortcut = [(BMAppRelevantShortcuts *)self serializedRelevantShortcut];
  v6 = [serializedRelevantShortcut base64EncodedStringWithOptions:0];

  v13[0] = @"bundleID";
  null = bundleID;
  if (!bundleID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = null;
  v13[1] = @"keyImageProxyIdentifier";
  null2 = keyImageProxyIdentifier;
  if (!keyImageProxyIdentifier)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = null2;
  v13[2] = @"serializedRelevantShortcut";
  null3 = v6;
  if (!v6)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = null3;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  if (v6)
  {
    if (keyImageProxyIdentifier)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (bundleID)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!keyImageProxyIdentifier)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (bundleID)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BMAppRelevantShortcuts)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v36[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"bundleID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"keyImageProxyIdentifier"];
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
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"keyImageProxyIdentifier"];
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

    v11 = [dictionaryCopy objectForKeyedSubscript:@"serializedRelevantShortcut"];
    if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = 0;
LABEL_10:
      self = [(BMAppRelevantShortcuts *)self initWithBundleID:v8 keyImageProxyIdentifier:v10 serializedRelevantShortcut:v12];
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
        v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"serializedRelevantShortcut"];
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
      v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"serializedRelevantShortcut"];
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
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
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
  [(BMAppRelevantShortcuts *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_keyImageProxyIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_serializedRelevantShortcut)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v23.receiver = self;
  v23.super_class = BMAppRelevantShortcuts;
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
        v17 = &OBJC_IVAR___BMAppRelevantShortcuts__serializedRelevantShortcut;
      }

      else if (v15 == 2)
      {
        v16 = PBReaderReadString();
        v17 = &OBJC_IVAR___BMAppRelevantShortcuts__keyImageProxyIdentifier;
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
        v17 = &OBJC_IVAR___BMAppRelevantShortcuts__bundleID;
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
  bundleID = [(BMAppRelevantShortcuts *)self bundleID];
  keyImageProxyIdentifier = [(BMAppRelevantShortcuts *)self keyImageProxyIdentifier];
  serializedRelevantShortcut = [(BMAppRelevantShortcuts *)self serializedRelevantShortcut];
  v7 = [v3 initWithFormat:@"BMAppRelevantShortcuts with bundleID: %@, keyImageProxyIdentifier: %@, serializedRelevantShortcut: %@", bundleID, keyImageProxyIdentifier, serializedRelevantShortcut];

  return v7;
}

- (BMAppRelevantShortcuts)initWithBundleID:(id)d keyImageProxyIdentifier:(id)identifier serializedRelevantShortcut:(id)shortcut
{
  dCopy = d;
  identifierCopy = identifier;
  shortcutCopy = shortcut;
  v14.receiver = self;
  v14.super_class = BMAppRelevantShortcuts;
  v12 = [(BMEventBase *)&v14 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_bundleID, d);
    objc_storeStrong(&v12->_keyImageProxyIdentifier, identifier);
    objc_storeStrong(&v12->_serializedRelevantShortcut, shortcut);
  }

  return v12;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"keyImageProxyIdentifier" number:2 type:13 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"serializedRelevantShortcut" number:3 type:14 subMessageClass:0];
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

    v8 = [[BMAppRelevantShortcuts alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end