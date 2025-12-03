@interface BMLocationPointOfInterestCategory
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMLocationPointOfInterestCategory)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMLocationPointOfInterestCategory)initWithPoiCategory:(id)category rank:(id)rank timestamp:(id)timestamp;
- (BOOL)isEqual:(id)equal;
- (NSDate)timestamp;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMLocationPointOfInterestCategory

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"poiCategory" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rank" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timestamp" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:2];
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
    poiCategory = [(BMLocationPointOfInterestCategory *)self poiCategory];
    poiCategory2 = [v5 poiCategory];
    v8 = poiCategory2;
    if (poiCategory == poiCategory2)
    {
    }

    else
    {
      poiCategory3 = [(BMLocationPointOfInterestCategory *)self poiCategory];
      poiCategory4 = [v5 poiCategory];
      v11 = [poiCategory3 isEqual:poiCategory4];

      if (!v11)
      {
        goto LABEL_14;
      }
    }

    if (!-[BMLocationPointOfInterestCategory hasRank](self, "hasRank") && ![v5 hasRank] || -[BMLocationPointOfInterestCategory hasRank](self, "hasRank") && objc_msgSend(v5, "hasRank") && (v13 = -[BMLocationPointOfInterestCategory rank](self, "rank"), v13 == objc_msgSend(v5, "rank")))
    {
      timestamp = [(BMLocationPointOfInterestCategory *)self timestamp];
      timestamp2 = [v5 timestamp];
      if (timestamp == timestamp2)
      {
        v12 = 1;
      }

      else
      {
        timestamp3 = [(BMLocationPointOfInterestCategory *)self timestamp];
        timestamp4 = [v5 timestamp];
        v12 = [timestamp3 isEqual:timestamp4];
      }

      goto LABEL_17;
    }

LABEL_14:
    v12 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v12 = 0;
LABEL_18:

  return v12;
}

- (NSDate)timestamp
{
  if (self->_hasRaw_timestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_timestamp];
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
  v16[3] = *MEMORY[0x1E69E9840];
  poiCategory = [(BMLocationPointOfInterestCategory *)self poiCategory];
  if ([(BMLocationPointOfInterestCategory *)self hasRank])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMLocationPointOfInterestCategory rank](self, "rank")}];
  }

  else
  {
    v4 = 0;
  }

  timestamp = [(BMLocationPointOfInterestCategory *)self timestamp];
  if (timestamp)
  {
    v6 = MEMORY[0x1E696AD98];
    timestamp2 = [(BMLocationPointOfInterestCategory *)self timestamp];
    [timestamp2 timeIntervalSince1970];
    v8 = [v6 numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  v15[0] = @"poiCategory";
  null = poiCategory;
  if (!poiCategory)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = null;
  v15[1] = @"rank";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = null2;
  v15[2] = @"timestamp";
  null3 = v8;
  if (!v8)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = null3;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  if (v8)
  {
    if (v4)
    {
      goto LABEL_15;
    }

LABEL_20:

    if (poiCategory)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  if (!v4)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (poiCategory)
  {
    goto LABEL_16;
  }

LABEL_21:

LABEL_16:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BMLocationPointOfInterestCategory)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v37[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"poiCategory"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"rank"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          selfCopy = 0;
          goto LABEL_25;
        }

        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v34 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"rank"];
        v35 = v12;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        v23 = [v30 initWithDomain:v22 code:2 userInfo:v11];
        v10 = 0;
        selfCopy = 0;
        *error = v23;
        goto LABEL_24;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = MEMORY[0x1E695DF00];
        v14 = v11;
        v15 = [v13 alloc];
        [v14 doubleValue];
        v17 = v16;

        v18 = [v15 initWithTimeIntervalSince1970:v17];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v12 = [v24 dateFromString:v11];

          goto LABEL_23;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v31 = objc_alloc(MEMORY[0x1E696ABC0]);
            v29 = *MEMORY[0x1E698F240];
            v32 = *MEMORY[0x1E696A578];
            v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"timestamp"];
            v33 = v27;
            v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
            *error = [v31 initWithDomain:v29 code:2 userInfo:v28];
          }

          v12 = 0;
          selfCopy = 0;
          goto LABEL_24;
        }

        v18 = v11;
      }

      v12 = v18;
    }

    else
    {
      v12 = 0;
    }

LABEL_23:
    self = [(BMLocationPointOfInterestCategory *)self initWithPoiCategory:v8 rank:v10 timestamp:v12];
    selfCopy = self;
LABEL_24:

    goto LABEL_25;
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
    goto LABEL_26;
  }

  v19 = objc_alloc(MEMORY[0x1E696ABC0]);
  v20 = *MEMORY[0x1E698F240];
  v36 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"poiCategory"];
  v37[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
  v8 = 0;
  selfCopy = 0;
  *error = [v19 initWithDomain:v20 code:2 userInfo:v9];
LABEL_25:

LABEL_26:
  v25 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMLocationPointOfInterestCategory *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_poiCategory)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_hasRank)
  {
    rank = self->_rank;
    PBDataWriterWriteUint32Field();
    toCopy = v7;
  }

  if (self->_hasRaw_timestamp)
  {
    raw_timestamp = self->_raw_timestamp;
    PBDataWriterWriteDoubleField();
    toCopy = v7;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v31.receiver = self;
  v31.super_class = BMLocationPointOfInterestCategory;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_45;
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
        LOBYTE(v32) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v32 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v32) & 0x7F) << v7;
        if ((LOBYTE(v32) & 0x80) == 0)
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
      if ((v14 >> 3) == 3)
      {
        v5->_hasRaw_timestamp = 1;
        v32 = 0.0;
        v25 = [fromCopy position] + 8;
        if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 8, v26 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:&v32 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_raw_timestamp = v32;
      }

      else if (v15 == 2)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v5->_hasRank = 1;
        while (1)
        {
          LOBYTE(v32) = 0;
          v21 = [fromCopy position] + 1;
          if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v32 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v20 |= (LOBYTE(v32) & 0x7F) << v18;
          if ((LOBYTE(v32) & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v13 = v19++ >= 9;
          if (v13)
          {
            v24 = 0;
            goto LABEL_39;
          }
        }

        v24 = [fromCopy hasError] ? 0 : v20;
LABEL_39:
        v5->_rank = v24;
      }

      else if (v15 == 1)
      {
        v16 = PBReaderReadString();
        poiCategory = v5->_poiCategory;
        v5->_poiCategory = v16;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_44;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_44:
    v29 = 0;
  }

  else
  {
LABEL_45:
    v29 = v5;
  }

  return v29;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  poiCategory = [(BMLocationPointOfInterestCategory *)self poiCategory];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMLocationPointOfInterestCategory rank](self, "rank")}];
  timestamp = [(BMLocationPointOfInterestCategory *)self timestamp];
  v7 = [v3 initWithFormat:@"BMLocationPointOfInterestCategory with poiCategory: %@, rank: %@, timestamp: %@", poiCategory, v5, timestamp];

  return v7;
}

- (BMLocationPointOfInterestCategory)initWithPoiCategory:(id)category rank:(id)rank timestamp:(id)timestamp
{
  categoryCopy = category;
  rankCopy = rank;
  timestampCopy = timestamp;
  v16.receiver = self;
  v16.super_class = BMLocationPointOfInterestCategory;
  v12 = [(BMEventBase *)&v16 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_poiCategory, category);
    if (rankCopy)
    {
      v12->_hasRank = 1;
      unsignedIntValue = [rankCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v12->_hasRank = 0;
    }

    v12->_rank = unsignedIntValue;
    if (timestampCopy)
    {
      v12->_hasRaw_timestamp = 1;
      [timestampCopy timeIntervalSince1970];
    }

    else
    {
      v12->_hasRaw_timestamp = 0;
      v14 = -1.0;
    }

    v12->_raw_timestamp = v14;
  }

  return v12;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"poiCategory" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rank" number:2 type:4 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timestamp" number:3 type:0 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

    v7 = [[BMLocationPointOfInterestCategory alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[9] = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end