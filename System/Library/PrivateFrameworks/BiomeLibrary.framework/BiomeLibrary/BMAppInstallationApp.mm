@interface BMAppInstallationApp
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAppInstallationApp)initWithBundleID:(id)d personaString:(id)string isPlaceholder:(id)placeholder;
- (BMAppInstallationApp)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAppInstallationApp

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    bundleID = [(BMAppInstallationApp *)self bundleID];
    bundleID2 = [v5 bundleID];
    v8 = bundleID2;
    if (bundleID == bundleID2)
    {
    }

    else
    {
      bundleID3 = [(BMAppInstallationApp *)self bundleID];
      bundleID4 = [v5 bundleID];
      v11 = [bundleID3 isEqual:bundleID4];

      if (!v11)
      {
        goto LABEL_16;
      }
    }

    personaString = [(BMAppInstallationApp *)self personaString];
    personaString2 = [v5 personaString];
    v15 = personaString2;
    if (personaString == personaString2)
    {
    }

    else
    {
      personaString3 = [(BMAppInstallationApp *)self personaString];
      personaString4 = [v5 personaString];
      v18 = [personaString3 isEqual:personaString4];

      if (!v18)
      {
        goto LABEL_16;
      }
    }

    if (!-[BMAppInstallationApp hasIsPlaceholder](self, "hasIsPlaceholder") && ![v5 hasIsPlaceholder])
    {
      LOBYTE(v12) = 1;
      goto LABEL_17;
    }

    if (-[BMAppInstallationApp hasIsPlaceholder](self, "hasIsPlaceholder") && [v5 hasIsPlaceholder])
    {
      isPlaceholder = [(BMAppInstallationApp *)self isPlaceholder];
      v12 = isPlaceholder ^ [v5 isPlaceholder] ^ 1;
LABEL_17:

      goto LABEL_18;
    }

LABEL_16:
    LOBYTE(v12) = 0;
    goto LABEL_17;
  }

  LOBYTE(v12) = 0;
LABEL_18:

  return v12;
}

- (id)jsonDictionary
{
  v13[3] = *MEMORY[0x1E69E9840];
  bundleID = [(BMAppInstallationApp *)self bundleID];
  personaString = [(BMAppInstallationApp *)self personaString];
  if ([(BMAppInstallationApp *)self hasIsPlaceholder])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppInstallationApp isPlaceholder](self, "isPlaceholder")}];
  }

  else
  {
    v5 = 0;
  }

  v12[0] = @"bundleID";
  null = bundleID;
  if (!bundleID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"personaString";
  null2 = personaString;
  if (!personaString)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"isPlaceholder";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (v5)
  {
    if (personaString)
    {
      goto LABEL_12;
    }

LABEL_17:

    if (bundleID)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (!personaString)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (bundleID)
  {
    goto LABEL_13;
  }

LABEL_18:

LABEL_13:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BMAppInstallationApp)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v30[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"bundleID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"personaString"];
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

        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v18 = *MEMORY[0x1E698F240];
        v27 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"personaString"];
        v28 = v12;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v19 = [v23 initWithDomain:v18 code:2 userInfo:v11];
        v10 = 0;
        selfCopy = 0;
        *error = v19;
        goto LABEL_11;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"isPlaceholder"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v24 = objc_alloc(MEMORY[0x1E696ABC0]);
          v22 = *MEMORY[0x1E698F240];
          v25 = *MEMORY[0x1E696A578];
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isPlaceholder"];
          v26 = v20;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
          *error = [v24 initWithDomain:v22 code:2 userInfo:v21];
        }

        v12 = 0;
        selfCopy = 0;
        goto LABEL_11;
      }

      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    self = [(BMAppInstallationApp *)self initWithBundleID:v8 personaString:v10 isPlaceholder:v12];
    selfCopy = self;
LABEL_11:

    goto LABEL_12;
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
  v29 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
  v30[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v8 = 0;
  selfCopy = 0;
  *error = [v16 initWithDomain:v17 code:2 userInfo:v9];
LABEL_12:

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppInstallationApp *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_personaString)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_hasIsPlaceholder)
  {
    isPlaceholder = self->_isPlaceholder;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v29.receiver = self;
  v29.super_class = BMAppInstallationApp;
  v5 = [(BMEventBase *)&v29 init];
  if (!v5)
  {
    goto LABEL_40;
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
        v30 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v30 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v30 & 0x7F) << v7;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
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
      if ((v14 >> 3) == 5)
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v5->_hasIsPlaceholder = 1;
        while (1)
        {
          v30 = 0;
          v22 = [fromCopy position] + 1;
          if (v22 >= [fromCopy position] && (v23 = objc_msgSend(fromCopy, "position") + 1, v23 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v30 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v21 |= (v30 & 0x7F) << v19;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v13 = v20++ >= 9;
          if (v13)
          {
            LOBYTE(v25) = 0;
            goto LABEL_36;
          }
        }

        v25 = (v21 != 0) & ~[fromCopy hasError];
LABEL_36:
        v5->_isPlaceholder = v25;
      }

      else
      {
        if (v15 == 2)
        {
          v16 = PBReaderReadString();
          v17 = 32;
        }

        else
        {
          if (v15 != 1)
          {
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_39;
            }

            goto LABEL_37;
          }

          v16 = PBReaderReadString();
          v17 = 24;
        }

        v18 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;
      }

LABEL_37:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_39:
    v27 = 0;
  }

  else
  {
LABEL_40:
    v27 = v5;
  }

  return v27;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  bundleID = [(BMAppInstallationApp *)self bundleID];
  personaString = [(BMAppInstallationApp *)self personaString];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppInstallationApp isPlaceholder](self, "isPlaceholder")}];
  v7 = [v3 initWithFormat:@"BMAppInstallationApp with bundleID: %@, personaString: %@, isPlaceholder: %@", bundleID, personaString, v6];

  return v7;
}

- (BMAppInstallationApp)initWithBundleID:(id)d personaString:(id)string isPlaceholder:(id)placeholder
{
  dCopy = d;
  stringCopy = string;
  placeholderCopy = placeholder;
  v14.receiver = self;
  v14.super_class = BMAppInstallationApp;
  v12 = [(BMEventBase *)&v14 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_bundleID, d);
    objc_storeStrong(&v12->_personaString, string);
    if (placeholderCopy)
    {
      v12->_hasIsPlaceholder = 1;
      v12->_isPlaceholder = [placeholderCopy BOOLValue];
    }

    else
    {
      v12->_hasIsPlaceholder = 0;
      v12->_isPlaceholder = 0;
    }
  }

  return v12;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"personaString" number:2 type:13 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isPlaceholder" number:5 type:12 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"personaString" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isPlaceholder" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
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

    v8 = [[BMAppInstallationApp alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end