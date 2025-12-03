@interface BMAccessibilitySoundDetection
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAccessibilitySoundDetection)initWithAbsoluteTimestamp:(id)timestamp soundDetectionType:(id)type name:(id)name;
- (BMAccessibilitySoundDetection)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAccessibilitySoundDetection

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:1];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"soundDetectionType" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"name" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
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
    absoluteTimestamp = [(BMAccessibilitySoundDetection *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v8 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMAccessibilitySoundDetection *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v11 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    soundDetectionType = [(BMAccessibilitySoundDetection *)self soundDetectionType];
    soundDetectionType2 = [v5 soundDetectionType];
    v15 = soundDetectionType2;
    if (soundDetectionType == soundDetectionType2)
    {
    }

    else
    {
      soundDetectionType3 = [(BMAccessibilitySoundDetection *)self soundDetectionType];
      soundDetectionType4 = [v5 soundDetectionType];
      v18 = [soundDetectionType3 isEqual:soundDetectionType4];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    name = [(BMAccessibilitySoundDetection *)self name];
    name2 = [v5 name];
    if (name == name2)
    {
      v12 = 1;
    }

    else
    {
      name3 = [(BMAccessibilitySoundDetection *)self name];
      name4 = [v5 name];
      v12 = [name3 isEqual:name4];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (NSDate)absoluteTimestamp
{
  if (self->_hasRaw_absoluteTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_absoluteTimestamp];
    v4 = [v2 convertValue:v3 toType:1];
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
  absoluteTimestamp = [(BMAccessibilitySoundDetection *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v4 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMAccessibilitySoundDetection *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSinceReferenceDate];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  soundDetectionType = [(BMAccessibilitySoundDetection *)self soundDetectionType];
  name = [(BMAccessibilitySoundDetection *)self name];
  v15[0] = @"absoluteTimestamp";
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = null;
  v15[1] = @"soundDetectionType";
  null2 = soundDetectionType;
  if (!soundDetectionType)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = null2;
  v15[2] = @"name";
  null3 = name;
  if (!name)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = null3;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  if (name)
  {
    if (soundDetectionType)
    {
      goto LABEL_12;
    }

LABEL_17:

    if (v6)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (!soundDetectionType)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (v6)
  {
    goto LABEL_13;
  }

LABEL_18:

LABEL_13:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BMAccessibilitySoundDetection)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v37[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_9:
    v16 = [dictionaryCopy objectForKeyedSubscript:@"soundDetectionType"];
    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v17 = 0;
          selfCopy = 0;
          goto LABEL_17;
        }

        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v34 = *MEMORY[0x1E696A578];
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"soundDetectionType"];
        v35 = v19;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        v24 = [v30 initWithDomain:v23 code:2 userInfo:v18];
        v17 = 0;
        selfCopy = 0;
        *error = v24;
        goto LABEL_16;
      }

      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v31 = objc_alloc(MEMORY[0x1E696ABC0]);
          v29 = *MEMORY[0x1E698F240];
          v32 = *MEMORY[0x1E696A578];
          v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"name"];
          v33 = v25;
          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
          *error = [v31 initWithDomain:v29 code:2 userInfo:v26];
        }

        v19 = 0;
        selfCopy = 0;
        goto LABEL_16;
      }

      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    self = [(BMAccessibilitySoundDetection *)self initWithAbsoluteTimestamp:v8 soundDetectionType:v17 name:v19];
    selfCopy = self;
LABEL_16:

    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = MEMORY[0x1E695DF00];
    v10 = v7;
    v11 = [v9 alloc];
    [v10 doubleValue];
    v13 = v12;

    v14 = [v11 initWithTimeIntervalSinceReferenceDate:v13];
LABEL_6:
    v8 = v14;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = objc_alloc_init(MEMORY[0x1E696AC80]);
    v8 = [v15 dateFromString:v7];

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v7;
    goto LABEL_6;
  }

  if (!error)
  {
    v8 = 0;
    selfCopy = 0;
    goto LABEL_18;
  }

  v27 = objc_alloc(MEMORY[0x1E696ABC0]);
  v28 = *MEMORY[0x1E698F240];
  v36 = *MEMORY[0x1E696A578];
  v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
  v37[0] = v17;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
  v8 = 0;
  selfCopy = 0;
  *error = [v27 initWithDomain:v28 code:2 userInfo:v16];
LABEL_17:

LABEL_18:
  v21 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAccessibilitySoundDetection *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }

  if (self->_soundDetectionType)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v25.receiver = self;
  v25.super_class = BMAccessibilitySoundDetection;
  v5 = [(BMEventBase *)&v25 init];
  if (!v5)
  {
    goto LABEL_34;
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
        LOBYTE(v26) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v26 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v26) & 0x7F) << v7;
        if ((LOBYTE(v26) & 0x80) == 0)
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
        v18 = PBReaderReadString();
        v19 = 48;
      }

      else
      {
        if (v15 != 2)
        {
          if (v15 == 1)
          {
            v5->_hasRaw_absoluteTimestamp = 1;
            v26 = 0.0;
            v16 = [fromCopy position] + 8;
            if (v16 >= [fromCopy position] && (v17 = objc_msgSend(fromCopy, "position") + 8, v17 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v26 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v5->_raw_absoluteTimestamp = v26;
          }

          else if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_33;
          }

          goto LABEL_31;
        }

        v18 = PBReaderReadString();
        v19 = 40;
      }

      v20 = *(&v5->super.super.isa + v19);
      *(&v5->super.super.isa + v19) = v18;

LABEL_31:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_33:
    v23 = 0;
  }

  else
  {
LABEL_34:
    v23 = v5;
  }

  return v23;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  absoluteTimestamp = [(BMAccessibilitySoundDetection *)self absoluteTimestamp];
  soundDetectionType = [(BMAccessibilitySoundDetection *)self soundDetectionType];
  name = [(BMAccessibilitySoundDetection *)self name];
  v7 = [v3 initWithFormat:@"BMAccessibilitySoundDetection with absoluteTimestamp: %@, soundDetectionType: %@, name: %@", absoluteTimestamp, soundDetectionType, name];

  return v7;
}

- (BMAccessibilitySoundDetection)initWithAbsoluteTimestamp:(id)timestamp soundDetectionType:(id)type name:(id)name
{
  timestampCopy = timestamp;
  typeCopy = type;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = BMAccessibilitySoundDetection;
  v11 = [(BMEventBase *)&v14 init];
  if (v11)
  {
    v11->_dataVersion = [objc_opt_class() latestDataVersion];
    if (timestampCopy)
    {
      v11->_hasRaw_absoluteTimestamp = 1;
      [timestampCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v11->_hasRaw_absoluteTimestamp = 0;
      v12 = -1.0;
    }

    v11->_raw_absoluteTimestamp = v12;
    objc_storeStrong(&v11->_soundDetectionType, type);
    objc_storeStrong(&v11->_name, name);
  }

  return v11;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:1 type:0 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"soundDetectionType" number:2 type:13 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"name" number:3 type:13 subMessageClass:0];
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

    v7 = [[BMAccessibilitySoundDetection alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[8] = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end