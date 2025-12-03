@interface BMIntelligencePlatformEmailMessageIds
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMIntelligencePlatformEmailMessageIds)initWithCreationTimeStamp:(id)stamp classifierType:(id)type messageUUID:(id)d messageSourceType:(int)sourceType;
- (BMIntelligencePlatformEmailMessageIds)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)creationTimeStamp;
- (NSString)description;
- (NSUUID)messageUUID;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMIntelligencePlatformEmailMessageIds

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"creationTimeStamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:2];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"classifierType" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"messageUUID" dataType:6 requestOnly:0 fieldNumber:3 protoDataType:14 convertedType:3];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"messageSourceType" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    creationTimeStamp = [(BMIntelligencePlatformEmailMessageIds *)self creationTimeStamp];
    creationTimeStamp2 = [v5 creationTimeStamp];
    v8 = creationTimeStamp2;
    if (creationTimeStamp == creationTimeStamp2)
    {
    }

    else
    {
      creationTimeStamp3 = [(BMIntelligencePlatformEmailMessageIds *)self creationTimeStamp];
      creationTimeStamp4 = [v5 creationTimeStamp];
      v11 = [creationTimeStamp3 isEqual:creationTimeStamp4];

      if (!v11)
      {
        goto LABEL_13;
      }
    }

    classifierType = [(BMIntelligencePlatformEmailMessageIds *)self classifierType];
    classifierType2 = [v5 classifierType];
    v15 = classifierType2;
    if (classifierType == classifierType2)
    {
    }

    else
    {
      classifierType3 = [(BMIntelligencePlatformEmailMessageIds *)self classifierType];
      classifierType4 = [v5 classifierType];
      v18 = [classifierType3 isEqual:classifierType4];

      if (!v18)
      {
        goto LABEL_13;
      }
    }

    messageUUID = [(BMIntelligencePlatformEmailMessageIds *)self messageUUID];
    messageUUID2 = [v5 messageUUID];
    v21 = messageUUID2;
    if (messageUUID == messageUUID2)
    {
    }

    else
    {
      messageUUID3 = [(BMIntelligencePlatformEmailMessageIds *)self messageUUID];
      messageUUID4 = [v5 messageUUID];
      v24 = [messageUUID3 isEqual:messageUUID4];

      if (!v24)
      {
LABEL_13:
        v12 = 0;
LABEL_16:

        goto LABEL_17;
      }
    }

    messageSourceType = [(BMIntelligencePlatformEmailMessageIds *)self messageSourceType];
    v12 = messageSourceType == [v5 messageSourceType];
    goto LABEL_16;
  }

  v12 = 0;
LABEL_17:

  return v12;
}

- (NSUUID)messageUUID
{
  raw_messageUUID = self->_raw_messageUUID;
  if (raw_messageUUID)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_messageUUID toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)creationTimeStamp
{
  if (self->_hasRaw_creationTimeStamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_creationTimeStamp];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v19[4] = *MEMORY[0x1E69E9840];
  creationTimeStamp = [(BMIntelligencePlatformEmailMessageIds *)self creationTimeStamp];
  if (creationTimeStamp)
  {
    v4 = MEMORY[0x1E696AD98];
    creationTimeStamp2 = [(BMIntelligencePlatformEmailMessageIds *)self creationTimeStamp];
    [creationTimeStamp2 timeIntervalSince1970];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  classifierType = [(BMIntelligencePlatformEmailMessageIds *)self classifierType];
  messageUUID = [(BMIntelligencePlatformEmailMessageIds *)self messageUUID];
  uUIDString = [messageUUID UUIDString];

  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMIntelligencePlatformEmailMessageIds messageSourceType](self, "messageSourceType")}];
  v18[0] = @"creationTimeStamp";
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v19[0] = null;
  v18[1] = @"classifierType";
  null2 = classifierType;
  if (!classifierType)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v19[1] = null2;
  v18[2] = @"messageUUID";
  null3 = uUIDString;
  if (!uUIDString)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v19[2] = null3;
  v18[3] = @"messageSourceType";
  null4 = v10;
  if (!v10)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v19[3] = null4;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];
  if (v10)
  {
    if (uUIDString)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (uUIDString)
    {
LABEL_14:
      if (classifierType)
      {
        goto LABEL_15;
      }

LABEL_21:

      if (v6)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }
  }

  if (!classifierType)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (v6)
  {
    goto LABEL_16;
  }

LABEL_22:

LABEL_16:
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BMIntelligencePlatformEmailMessageIds)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v54[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"creationTimeStamp"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = MEMORY[0x1E695DF00];
      v8 = v6;
      v9 = [v7 alloc];
      [v8 doubleValue];
      v11 = v10;

      v12 = [v9 initWithTimeIntervalSince1970:v11];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v44 = [v13 dateFromString:v6];

        goto LABEL_9;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v44 = 0;
          v24 = 0;
          selfCopy6 = self;
          goto LABEL_37;
        }

        v37 = objc_alloc(MEMORY[0x1E696ABC0]);
        v38 = *MEMORY[0x1E698F240];
        v53 = *MEMORY[0x1E696A578];
        v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"creationTimeStamp"];
        v54[0] = v39;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
        v44 = 0;
        v24 = 0;
        *error = [v37 initWithDomain:v38 code:2 userInfo:v14];
        error = v39;
        goto LABEL_51;
      }

      v12 = v6;
    }

    v44 = v12;
  }

  else
  {
    v44 = 0;
  }

LABEL_9:
  v14 = [dictionaryCopy objectForKeyedSubscript:@"classifierType"];
  if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v42 = 0;
LABEL_12:
    v15 = [dictionaryCopy objectForKeyedSubscript:@"messageUUID"];
    if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v16 = 0;
LABEL_15:
      v17 = [dictionaryCopy objectForKeyedSubscript:@"messageSourceType"];
      if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = v17;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (error)
            {
              v41 = objc_alloc(MEMORY[0x1E696ABC0]);
              v40 = *MEMORY[0x1E698F240];
              v45 = *MEMORY[0x1E696A578];
              v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"messageSourceType"];
              v46 = v31;
              v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
              *error = [v41 initWithDomain:v40 code:2 userInfo:v32];
            }

            v18 = 0;
            v24 = 0;
            error = v42;
            selfCopy6 = self;
            goto LABEL_33;
          }

          v21 = [MEMORY[0x1E696AD98] numberWithInt:BMIntelligencePlatformEmailMessageIdsSourceTypeFromString(v17)];
        }

        v18 = v21;
      }

      else
      {
        v18 = 0;
      }

      error = v42;
      selfCopy6 = -[BMIntelligencePlatformEmailMessageIds initWithCreationTimeStamp:classifierType:messageUUID:messageSourceType:](self, "initWithCreationTimeStamp:classifierType:messageUUID:messageSourceType:", v44, v42, v16, [v18 intValue]);
      v24 = selfCopy6;
LABEL_33:

      goto LABEL_34;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
      v19 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v16];
      if (v19)
      {
        v20 = v19;

        v16 = v20;
        goto LABEL_15;
      }

      if (error)
      {
        v33 = objc_alloc(MEMORY[0x1E696ABC0]);
        v34 = *MEMORY[0x1E698F240];
        v49 = *MEMORY[0x1E696A578];
        v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"messageUUID"];
        v50 = v35;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        *error = [v33 initWithDomain:v34 code:2 userInfo:v36];
      }

      v24 = 0;
      v15 = v16;
    }

    else
    {
      if (!error)
      {
        v24 = 0;
        error = v42;
        selfCopy6 = self;
        goto LABEL_35;
      }

      v26 = objc_alloc(MEMORY[0x1E696ABC0]);
      v27 = *MEMORY[0x1E698F240];
      v47 = *MEMORY[0x1E696A578];
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"messageUUID"];
      v48 = v16;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      *error = [v26 initWithDomain:v27 code:2 userInfo:v28];

      v24 = 0;
    }

    error = v42;
    selfCopy6 = self;
    goto LABEL_34;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = v14;
    goto LABEL_12;
  }

  if (!error)
  {
    v24 = 0;
LABEL_51:
    selfCopy6 = self;
    goto LABEL_36;
  }

  v22 = objc_alloc(MEMORY[0x1E696ABC0]);
  v23 = *MEMORY[0x1E698F240];
  v51 = *MEMORY[0x1E696A578];
  v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"classifierType"];
  v52 = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  v24 = 0;
  *error = [v22 initWithDomain:v23 code:2 userInfo:v16];
  error = 0;
  selfCopy6 = self;
LABEL_34:

LABEL_35:
LABEL_36:

LABEL_37:
  v29 = *MEMORY[0x1E69E9840];
  return v24;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMIntelligencePlatformEmailMessageIds *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasRaw_creationTimeStamp)
  {
    raw_creationTimeStamp = self->_raw_creationTimeStamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_classifierType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_raw_messageUUID)
  {
    PBDataWriterWriteDataField();
  }

  messageSourceType = self->_messageSourceType;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v32.receiver = self;
  v32.super_class = BMIntelligencePlatformEmailMessageIds;
  v5 = [(BMEventBase *)&v32 init];
  if (!v5)
  {
    goto LABEL_50;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_48;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v33) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v33) & 0x7F) << v7;
        if ((LOBYTE(v33) & 0x80) == 0)
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
        goto LABEL_48;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 2)
      {
        break;
      }

      if (v15 == 3)
      {
        v27 = PBReaderReadData();
        if ([(NSData *)v27 length]!= 16)
        {

          goto LABEL_49;
        }

        raw_messageUUID = v5->_raw_messageUUID;
        v5->_raw_messageUUID = v27;
LABEL_40:

        goto LABEL_47;
      }

      if (v15 != 4)
      {
LABEL_33:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_47;
      }

      v18 = 0;
      v19 = 0;
      v20 = 0;
      while (1)
      {
        LOBYTE(v33) = 0;
        v21 = [fromCopy position] + 1;
        if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v20 |= (LOBYTE(v33) & 0x7F) << v18;
        if ((LOBYTE(v33) & 0x80) == 0)
        {
          break;
        }

        v18 += 7;
        if (v19++ > 8)
        {
          goto LABEL_43;
        }
      }

      if (([fromCopy hasError] & 1) != 0 || v20 > 2)
      {
LABEL_43:
        LODWORD(v20) = 0;
      }

      v5->_messageSourceType = v20;
LABEL_47:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_48;
      }
    }

    if (v15 == 1)
    {
      v5->_hasRaw_creationTimeStamp = 1;
      v33 = 0.0;
      v25 = [fromCopy position] + 8;
      if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 8, v26 <= objc_msgSend(fromCopy, "length")))
      {
        data3 = [fromCopy data];
        [data3 getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 8}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
      }

      else
      {
        [fromCopy _setError];
      }

      v5->_raw_creationTimeStamp = v33;
      goto LABEL_47;
    }

    if (v15 != 2)
    {
      goto LABEL_33;
    }

    v16 = PBReaderReadString();
    raw_messageUUID = v5->_classifierType;
    v5->_classifierType = v16;
    goto LABEL_40;
  }

LABEL_48:
  if ([fromCopy hasError])
  {
LABEL_49:
    v30 = 0;
  }

  else
  {
LABEL_50:
    v30 = v5;
  }

  return v30;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  creationTimeStamp = [(BMIntelligencePlatformEmailMessageIds *)self creationTimeStamp];
  classifierType = [(BMIntelligencePlatformEmailMessageIds *)self classifierType];
  messageUUID = [(BMIntelligencePlatformEmailMessageIds *)self messageUUID];
  v7 = BMIntelligencePlatformEmailMessageIdsSourceTypeAsString([(BMIntelligencePlatformEmailMessageIds *)self messageSourceType]);
  v8 = [v3 initWithFormat:@"BMIntelligencePlatformEmailMessageIds with creationTimeStamp: %@, classifierType: %@, messageUUID: %@, messageSourceType: %@", creationTimeStamp, classifierType, messageUUID, v7];

  return v8;
}

- (BMIntelligencePlatformEmailMessageIds)initWithCreationTimeStamp:(id)stamp classifierType:(id)type messageUUID:(id)d messageSourceType:(int)sourceType
{
  v20[2] = *MEMORY[0x1E69E9840];
  stampCopy = stamp;
  typeCopy = type;
  dCopy = d;
  v19.receiver = self;
  v19.super_class = BMIntelligencePlatformEmailMessageIds;
  v13 = [(BMEventBase *)&v19 init];
  if (v13)
  {
    v13->_dataVersion = [objc_opt_class() latestDataVersion];
    if (stampCopy)
    {
      v13->_hasRaw_creationTimeStamp = 1;
      [stampCopy timeIntervalSince1970];
    }

    else
    {
      v13->_hasRaw_creationTimeStamp = 0;
      v14 = -1.0;
    }

    v13->_raw_creationTimeStamp = v14;
    objc_storeStrong(&v13->_classifierType, type);
    if (dCopy)
    {
      v20[0] = 0;
      v20[1] = 0;
      [dCopy getUUIDBytes:v20];
      v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v20 length:16];
      raw_messageUUID = v13->_raw_messageUUID;
      v13->_raw_messageUUID = v15;
    }

    else
    {
      raw_messageUUID = v13->_raw_messageUUID;
      v13->_raw_messageUUID = 0;
    }

    v13->_messageSourceType = sourceType;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"creationTimeStamp" number:1 type:0 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"classifierType" number:2 type:13 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"messageUUID" number:3 type:14 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"messageSourceType" number:4 type:4 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
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

    v8 = [[BMIntelligencePlatformEmailMessageIds alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[10] = 0;
    }
  }

  return v4;
}

@end