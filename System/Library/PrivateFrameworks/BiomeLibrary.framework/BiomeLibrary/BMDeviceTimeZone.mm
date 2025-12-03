@interface BMDeviceTimeZone
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMDeviceTimeZone)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMDeviceTimeZone)initWithSecondsFromGMT:(id)t name:(id)name;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (id)timeZone;
- (void)writeTo:(id)to;
@end

@implementation BMDeviceTimeZone

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"secondsFromGMT" dataType:1 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"name" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)timeZone
{
  name = [(BMDeviceTimeZone *)self name];

  if (name)
  {
    v4 = MEMORY[0x1E695DFE8];
    name2 = [(BMDeviceTimeZone *)self name];
    v6 = [v4 timeZoneWithName:name2];
  }

  else if ([(BMDeviceTimeZone *)self hasSecondsFromGMT])
  {
    v7 = MEMORY[0x1E695DFE8];
    [(BMDeviceTimeZone *)self secondsFromGMT];
    v6 = [v7 timeZoneForSecondsFromGMT:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (!-[BMDeviceTimeZone hasSecondsFromGMT](self, "hasSecondsFromGMT") && ![v5 hasSecondsFromGMT] || -[BMDeviceTimeZone hasSecondsFromGMT](self, "hasSecondsFromGMT") && objc_msgSend(v5, "hasSecondsFromGMT") && (-[BMDeviceTimeZone secondsFromGMT](self, "secondsFromGMT"), v7 = v6, objc_msgSend(v5, "secondsFromGMT"), v7 == v8))
    {
      name = [(BMDeviceTimeZone *)self name];
      name2 = [v5 name];
      if (name == name2)
      {
        v13 = 1;
      }

      else
      {
        name3 = [(BMDeviceTimeZone *)self name];
        name4 = [v5 name];
        v13 = [name3 isEqual:name4];
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)jsonDictionary
{
  v13[2] = *MEMORY[0x1E69E9840];
  if (![(BMDeviceTimeZone *)self hasSecondsFromGMT]|| ([(BMDeviceTimeZone *)self secondsFromGMT], fabs(v3) == INFINITY))
  {
    v5 = 0;
  }

  else
  {
    [(BMDeviceTimeZone *)self secondsFromGMT];
    v4 = MEMORY[0x1E696AD98];
    [(BMDeviceTimeZone *)self secondsFromGMT];
    v5 = [v4 numberWithDouble:?];
  }

  name = [(BMDeviceTimeZone *)self name];
  v12[0] = @"secondsFromGMT";
  null = v5;
  if (!v5)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = @"name";
  v13[0] = null;
  null2 = name;
  if (!name)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  if (name)
  {
    if (v5)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v5)
    {
      goto LABEL_11;
    }
  }

LABEL_11:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BMDeviceTimeZone)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v24[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"secondsFromGMT"];
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
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"secondsFromGMT"];
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

  v9 = [dictionaryCopy objectForKeyedSubscript:@"name"];
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
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"name"];
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

  self = [(BMDeviceTimeZone *)self initWithSecondsFromGMT:v8 name:v10];
  selfCopy = self;
LABEL_8:

LABEL_9:
  v12 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDeviceTimeZone *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_hasSecondsFromGMT)
  {
    secondsFromGMT = self->_secondsFromGMT;
    PBDataWriterWriteDoubleField();
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
  v23.receiver = self;
  v23.super_class = BMDeviceTimeZone;
  v5 = [(BMEventBase *)&v23 init];
  if (!v5)
  {
    goto LABEL_31;
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
        LOBYTE(v24) = 0;
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

        v9 |= (LOBYTE(v24) & 0x7F) << v7;
        if ((LOBYTE(v24) & 0x80) == 0)
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
        v17 = PBReaderReadString();
        name = v5->_name;
        v5->_name = v17;
      }

      else if ((v14 >> 3) == 1)
      {
        v5->_hasSecondsFromGMT = 1;
        v24 = 0.0;
        v15 = [fromCopy position] + 8;
        if (v15 >= [fromCopy position] && (v16 = objc_msgSend(fromCopy, "position") + 8, v16 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:&v24 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_secondsFromGMT = v24;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_30;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_30:
    v21 = 0;
  }

  else
  {
LABEL_31:
    v21 = v5;
  }

  return v21;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = MEMORY[0x1E696AD98];
  [(BMDeviceTimeZone *)self secondsFromGMT];
  v5 = [v4 numberWithDouble:?];
  name = [(BMDeviceTimeZone *)self name];
  v7 = [v3 initWithFormat:@"BMDeviceTimeZone with secondsFromGMT: %@, name: %@", v5, name];

  return v7;
}

- (BMDeviceTimeZone)initWithSecondsFromGMT:(id)t name:(id)name
{
  tCopy = t;
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = BMDeviceTimeZone;
  v8 = [(BMEventBase *)&v11 init];
  if (v8)
  {
    v8->_dataVersion = [objc_opt_class() latestDataVersion];
    if (tCopy)
    {
      v8->_hasSecondsFromGMT = 1;
      [tCopy doubleValue];
    }

    else
    {
      v8->_hasSecondsFromGMT = 0;
      v9 = -1.0;
    }

    v8->_secondsFromGMT = v9;
    objc_storeStrong(&v8->_name, name);
  }

  return v8;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"secondsFromGMT" number:1 type:0 subMessageClass:0];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"name" number:2 type:13 subMessageClass:0];
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

    v8 = [[BMDeviceTimeZone alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end