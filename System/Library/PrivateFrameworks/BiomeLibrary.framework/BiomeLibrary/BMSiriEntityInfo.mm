@interface BMSiriEntityInfo
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriEntityInfo)initWithExternalIdentifier:(id)identifier hashInfo:(id)info;
- (BMSiriEntityInfo)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriEntityInfo

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    externalIdentifier = [(BMSiriEntityInfo *)self externalIdentifier];
    externalIdentifier2 = [v5 externalIdentifier];
    v8 = externalIdentifier2;
    if (externalIdentifier == externalIdentifier2)
    {
    }

    else
    {
      externalIdentifier3 = [(BMSiriEntityInfo *)self externalIdentifier];
      externalIdentifier4 = [v5 externalIdentifier];
      v11 = [externalIdentifier3 isEqual:externalIdentifier4];

      if (!v11)
      {
        v12 = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    hashInfo = [(BMSiriEntityInfo *)self hashInfo];
    hashInfo2 = [v5 hashInfo];
    if (hashInfo == hashInfo2)
    {
      v12 = 1;
    }

    else
    {
      hashInfo3 = [(BMSiriEntityInfo *)self hashInfo];
      hashInfo4 = [v5 hashInfo];
      v12 = [hashInfo3 isEqual:hashInfo4];
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
  externalIdentifier = [(BMSiriEntityInfo *)self externalIdentifier];
  hashInfo = [(BMSiriEntityInfo *)self hashInfo];
  jsonDictionary = [hashInfo jsonDictionary];

  v11[0] = @"externalIdentifier";
  null = externalIdentifier;
  if (!externalIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = @"hashInfo";
  v12[0] = null;
  null2 = jsonDictionary;
  if (!jsonDictionary)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = null2;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (jsonDictionary)
  {
    if (externalIdentifier)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (externalIdentifier)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BMSiriEntityInfo)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v26[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"externalIdentifier"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v8 = 0;
        selfCopy = 0;
        goto LABEL_10;
      }

      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v17 = *MEMORY[0x1E698F240];
      v25 = *MEMORY[0x1E696A578];
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"externalIdentifier"];
      v26[0] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v18 = [v16 initWithDomain:v17 code:2 userInfo:v10];
      v8 = 0;
      selfCopy = 0;
      *error = v18;
      goto LABEL_8;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"hashInfo"];
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = 0;
LABEL_7:
    self = [(BMSiriEntityInfo *)self initWithExternalIdentifier:v8 hashInfo:v10];
    selfCopy = self;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v9;
    v22 = 0;
    v10 = [[BMSiriEntityInfoSiriEntityHashInfo alloc] initWithJSONDictionary:v14 error:&v22];
    v15 = v22;
    if (v15)
    {
      if (error)
      {
        v15 = v15;
        *error = v15;
      }

      selfCopy = 0;
      v9 = v14;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (!error)
  {
    selfCopy = 0;
    goto LABEL_9;
  }

  v21 = objc_alloc(MEMORY[0x1E696ABC0]);
  v19 = *MEMORY[0x1E698F240];
  v23 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"hashInfo"];
  v24 = v10;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  *error = [v21 initWithDomain:v19 code:2 userInfo:v20];

  selfCopy = 0;
LABEL_8:

LABEL_9:
LABEL_10:

  v12 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriEntityInfo *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_externalIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hashInfo)
  {
    PBDataWriterPlaceMark();
    [(BMSiriEntityInfoSiriEntityHashInfo *)self->_hashInfo writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v22.receiver = self;
  v22.super_class = BMSiriEntityInfo;
  v5 = [(BMEventBase *)&v22 init];
  if (!v5)
  {
    goto LABEL_28;
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
        LOBYTE(v23[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v23 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v23[0] & 0x7F) << v7;
        if ((v23[0] & 0x80) == 0)
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
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_27;
        }

        v17 = [[BMSiriEntityInfoSiriEntityHashInfo alloc] initByReadFrom:fromCopy];
        if (!v17)
        {
          goto LABEL_27;
        }

        hashInfo = v5->_hashInfo;
        v5->_hashInfo = v17;

        PBReaderRecallMark();
      }

      else if ((v14 >> 3) == 1)
      {
        v15 = PBReaderReadString();
        externalIdentifier = v5->_externalIdentifier;
        v5->_externalIdentifier = v15;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_27;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_27:
    v20 = 0;
  }

  else
  {
LABEL_28:
    v20 = v5;
  }

  return v20;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  externalIdentifier = [(BMSiriEntityInfo *)self externalIdentifier];
  hashInfo = [(BMSiriEntityInfo *)self hashInfo];
  v6 = [v3 initWithFormat:@"BMSiriEntityInfo with externalIdentifier: %@, hashInfo: %@", externalIdentifier, hashInfo];

  return v6;
}

- (BMSiriEntityInfo)initWithExternalIdentifier:(id)identifier hashInfo:(id)info
{
  identifierCopy = identifier;
  infoCopy = info;
  v11.receiver = self;
  v11.super_class = BMSiriEntityInfo;
  v9 = [(BMEventBase *)&v11 init];
  if (v9)
  {
    v9->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v9->_externalIdentifier, identifier);
    objc_storeStrong(&v9->_hashInfo, info);
  }

  return v9;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"externalIdentifier" number:1 type:13 subMessageClass:0];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hashInfo" number:2 type:14 subMessageClass:objc_opt_class()];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"externalIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"hashInfo_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_197];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __27__BMSiriEntityInfo_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 hashInfo];
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

    v8 = [[BMSiriEntityInfo alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end