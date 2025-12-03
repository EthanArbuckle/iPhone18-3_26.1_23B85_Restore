@interface BMOasisAnalyticsMetadata
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMOasisAnalyticsMetadata)initWithBootSessionId:(id)id timestampSinceBootInNanosecond:(id)nanosecond;
- (BMOasisAnalyticsMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMOasisAnalyticsMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    bootSessionId = [(BMOasisAnalyticsMetadata *)self bootSessionId];
    bootSessionId2 = [v5 bootSessionId];
    v8 = bootSessionId2;
    if (bootSessionId == bootSessionId2)
    {
    }

    else
    {
      bootSessionId3 = [(BMOasisAnalyticsMetadata *)self bootSessionId];
      bootSessionId4 = [v5 bootSessionId];
      v11 = [bootSessionId3 isEqual:bootSessionId4];

      if (!v11)
      {
        goto LABEL_12;
      }
    }

    if (!-[BMOasisAnalyticsMetadata hasTimestampSinceBootInNanosecond](self, "hasTimestampSinceBootInNanosecond") && ![v5 hasTimestampSinceBootInNanosecond])
    {
      v12 = 1;
      goto LABEL_13;
    }

    if (-[BMOasisAnalyticsMetadata hasTimestampSinceBootInNanosecond](self, "hasTimestampSinceBootInNanosecond") && [v5 hasTimestampSinceBootInNanosecond])
    {
      timestampSinceBootInNanosecond = [(BMOasisAnalyticsMetadata *)self timestampSinceBootInNanosecond];
      v12 = timestampSinceBootInNanosecond == [v5 timestampSinceBootInNanosecond];
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
  v12[2] = *MEMORY[0x1E69E9840];
  bootSessionId = [(BMOasisAnalyticsMetadata *)self bootSessionId];
  jsonDictionary = [bootSessionId jsonDictionary];

  if ([(BMOasisAnalyticsMetadata *)self hasTimestampSinceBootInNanosecond])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMOasisAnalyticsMetadata timestampSinceBootInNanosecond](self, "timestampSinceBootInNanosecond")}];
  }

  else
  {
    v5 = 0;
  }

  v11[0] = @"bootSessionId";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = @"timestampSinceBootInNanosecond";
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
    if (jsonDictionary)
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (jsonDictionary)
    {
      goto LABEL_10;
    }
  }

LABEL_10:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BMOasisAnalyticsMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v26[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"bootSessionId"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v7;
    v22 = 0;
    v8 = [[BMOasisAnalyticsUUID128 alloc] initWithJSONDictionary:v10 error:&v22];
    v14 = v22;
    if (v14)
    {
      if (error)
      {
        v14 = v14;
        *error = v14;
      }

      selfCopy = 0;
      goto LABEL_9;
    }

LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"timestampSinceBootInNanosecond"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v18 = objc_alloc(MEMORY[0x1E696ABC0]);
          v19 = *MEMORY[0x1E698F240];
          v23 = *MEMORY[0x1E696A578];
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"timestampSinceBootInNanosecond"];
          v24 = v20;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
          *error = [v18 initWithDomain:v19 code:2 userInfo:v21];
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

    self = [(BMOasisAnalyticsMetadata *)self initWithBootSessionId:v8 timestampSinceBootInNanosecond:v10];
    selfCopy = self;
LABEL_8:

    goto LABEL_9;
  }

  if (!error)
  {
    selfCopy = 0;
    goto LABEL_10;
  }

  v15 = objc_alloc(MEMORY[0x1E696ABC0]);
  v16 = *MEMORY[0x1E698F240];
  v25 = *MEMORY[0x1E696A578];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"bootSessionId"];
  v26[0] = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v17 = [v15 initWithDomain:v16 code:2 userInfo:v10];
  selfCopy = 0;
  *error = v17;
LABEL_9:

LABEL_10:
  v12 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMOasisAnalyticsMetadata *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_bootSessionId)
  {
    PBDataWriterPlaceMark();
    [(BMOasisAnalyticsUUID128 *)self->_bootSessionId writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasTimestampSinceBootInNanosecond)
  {
    timestampSinceBootInNanosecond = self->_timestampSinceBootInNanosecond;
    PBDataWriterWriteUint64Field();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v27.receiver = self;
  v27.super_class = BMOasisAnalyticsMetadata;
  v5 = [(BMEventBase *)&v27 init];
  if (!v5)
  {
    goto LABEL_41;
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
        LOBYTE(v28[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v28 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v28[0] & 0x7F) << v7;
        if ((v28[0] & 0x80) == 0)
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
        v5->_hasTimestampSinceBootInNanosecond = 1;
        while (1)
        {
          LOBYTE(v28[0]) = 0;
          v20 = [fromCopy position] + 1;
          if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 1, v21 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:v28 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v19 |= (v28[0] & 0x7F) << v17;
          if ((v28[0] & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v13 = v18++ >= 9;
          if (v13)
          {
            v23 = 0;
            goto LABEL_37;
          }
        }

        if ([fromCopy hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_37:
        v5->_timestampSinceBootInNanosecond = v23;
      }

      else if ((v14 >> 3) == 1)
      {
        v28[0] = 0;
        v28[1] = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_40;
        }

        v15 = [[BMOasisAnalyticsUUID128 alloc] initByReadFrom:fromCopy];
        if (!v15)
        {
          goto LABEL_40;
        }

        bootSessionId = v5->_bootSessionId;
        v5->_bootSessionId = v15;

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_40;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_40:
    v25 = 0;
  }

  else
  {
LABEL_41:
    v25 = v5;
  }

  return v25;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  bootSessionId = [(BMOasisAnalyticsMetadata *)self bootSessionId];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMOasisAnalyticsMetadata timestampSinceBootInNanosecond](self, "timestampSinceBootInNanosecond")}];
  v6 = [v3 initWithFormat:@"BMOasisAnalyticsMetadata with bootSessionId: %@, timestampSinceBootInNanosecond: %@", bootSessionId, v5];

  return v6;
}

- (BMOasisAnalyticsMetadata)initWithBootSessionId:(id)id timestampSinceBootInNanosecond:(id)nanosecond
{
  idCopy = id;
  nanosecondCopy = nanosecond;
  v12.receiver = self;
  v12.super_class = BMOasisAnalyticsMetadata;
  v9 = [(BMEventBase *)&v12 init];
  if (v9)
  {
    v9->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v9->_bootSessionId, id);
    if (nanosecondCopy)
    {
      v9->_hasTimestampSinceBootInNanosecond = 1;
      unsignedLongLongValue = [nanosecondCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue = 0;
      v9->_hasTimestampSinceBootInNanosecond = 0;
    }

    v9->_timestampSinceBootInNanosecond = unsignedLongLongValue;
  }

  return v9;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bootSessionId" number:1 type:14 subMessageClass:objc_opt_class()];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timestampSinceBootInNanosecond" number:2 type:5 subMessageClass:0];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"bootSessionId_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_175_95119];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timestampSinceBootInNanosecond" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:5 convertedType:0];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __35__BMOasisAnalyticsMetadata_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 bootSessionId];
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

    v8 = [[BMOasisAnalyticsMetadata alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end