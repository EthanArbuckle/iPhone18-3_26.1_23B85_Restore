@interface BMUAFAssetMetadata
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMUAFAssetMetadata)initWithAssetName:(id)name assetSizeInBytes:(id)bytes;
- (BMUAFAssetMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMUAFAssetMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    assetName = [(BMUAFAssetMetadata *)self assetName];
    assetName2 = [v5 assetName];
    v8 = assetName2;
    if (assetName == assetName2)
    {
    }

    else
    {
      assetName3 = [(BMUAFAssetMetadata *)self assetName];
      assetName4 = [v5 assetName];
      v11 = [assetName3 isEqual:assetName4];

      if (!v11)
      {
        goto LABEL_12;
      }
    }

    if (!-[BMUAFAssetMetadata hasAssetSizeInBytes](self, "hasAssetSizeInBytes") && ![v5 hasAssetSizeInBytes])
    {
      v12 = 1;
      goto LABEL_13;
    }

    if (-[BMUAFAssetMetadata hasAssetSizeInBytes](self, "hasAssetSizeInBytes") && [v5 hasAssetSizeInBytes])
    {
      assetSizeInBytes = [(BMUAFAssetMetadata *)self assetSizeInBytes];
      v12 = assetSizeInBytes == [v5 assetSizeInBytes];
LABEL_13:

      goto LABEL_14;
    }

LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  v12 = 0;
LABEL_14:

  return v12;
}

- (id)jsonDictionary
{
  v11[2] = *MEMORY[0x1E69E9840];
  assetName = [(BMUAFAssetMetadata *)self assetName];
  if ([(BMUAFAssetMetadata *)self hasAssetSizeInBytes])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMUAFAssetMetadata assetSizeInBytes](self, "assetSizeInBytes")}];
  }

  else
  {
    v4 = 0;
  }

  v10[0] = @"assetName";
  null = assetName;
  if (!assetName)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"assetSizeInBytes";
  v11[0] = null;
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (v4)
  {
    if (assetName)
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (assetName)
    {
      goto LABEL_10;
    }
  }

LABEL_10:
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BMUAFAssetMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v24[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"assetName"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v8 = 0;
        selfCopy = 0;
        goto LABEL_9;
      }

      v14 = objc_alloc(MEMORY[0x1E696ABC0]);
      v15 = *MEMORY[0x1E698F240];
      v23 = *MEMORY[0x1E696A578];
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"assetName"];
      v24[0] = v10;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v16 = [v14 initWithDomain:v15 code:2 userInfo:v9];
      v8 = 0;
      selfCopy = 0;
      *error = v16;
      goto LABEL_8;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"assetSizeInBytes"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v17 = objc_alloc(MEMORY[0x1E696ABC0]);
        v18 = *MEMORY[0x1E698F240];
        v21 = *MEMORY[0x1E696A578];
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"assetSizeInBytes"];
        v22 = v19;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        *error = [v17 initWithDomain:v18 code:2 userInfo:v20];
      }

      v10 = 0;
      selfCopy = 0;
      goto LABEL_8;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  self = [(BMUAFAssetMetadata *)self initWithAssetName:v8 assetSizeInBytes:v10];
  selfCopy = self;
LABEL_8:

LABEL_9:
  v12 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMUAFAssetMetadata *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_assetName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_hasAssetSizeInBytes)
  {
    assetSizeInBytes = self->_assetSizeInBytes;
    PBDataWriterWriteUint64Field();
    toCopy = v6;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v27.receiver = self;
  v27.super_class = BMUAFAssetMetadata;
  v5 = [(BMEventBase *)&v27 init];
  if (!v5)
  {
    goto LABEL_39;
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
        v28 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v28 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v28 & 0x7F) << v7;
        if ((v28 & 0x80) == 0)
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

      if ((v14 >> 3) == 2)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v5->_hasAssetSizeInBytes = 1;
        while (1)
        {
          v28 = 0;
          v20 = [fromCopy position] + 1;
          if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 1, v21 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v28 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v19 |= (v28 & 0x7F) << v17;
          if ((v28 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v13 = v18++ >= 9;
          if (v13)
          {
            v23 = 0;
            goto LABEL_35;
          }
        }

        v23 = [fromCopy hasError] ? 0 : v19;
LABEL_35:
        v5->_assetSizeInBytes = v23;
      }

      else if ((v14 >> 3) == 1)
      {
        v15 = PBReaderReadString();
        assetName = v5->_assetName;
        v5->_assetName = v15;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_38;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_38:
    v25 = 0;
  }

  else
  {
LABEL_39:
    v25 = v5;
  }

  return v25;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  assetName = [(BMUAFAssetMetadata *)self assetName];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMUAFAssetMetadata assetSizeInBytes](self, "assetSizeInBytes")}];
  v6 = [v3 initWithFormat:@"BMUAFAssetMetadata with assetName: %@, assetSizeInBytes: %@", assetName, v5];

  return v6;
}

- (BMUAFAssetMetadata)initWithAssetName:(id)name assetSizeInBytes:(id)bytes
{
  nameCopy = name;
  bytesCopy = bytes;
  v12.receiver = self;
  v12.super_class = BMUAFAssetMetadata;
  v9 = [(BMEventBase *)&v12 init];
  if (v9)
  {
    v9->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v9->_assetName, name);
    if (bytesCopy)
    {
      v9->_hasAssetSizeInBytes = 1;
      unsignedLongLongValue = [bytesCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue = 0;
      v9->_hasAssetSizeInBytes = 0;
    }

    v9->_assetSizeInBytes = unsignedLongLongValue;
  }

  return v9;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assetName" number:1 type:13 subMessageClass:0];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assetSizeInBytes" number:2 type:5 subMessageClass:0];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"assetName" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"assetSizeInBytes" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:5 convertedType:0];
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

    v8 = [[BMUAFAssetMetadata alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end