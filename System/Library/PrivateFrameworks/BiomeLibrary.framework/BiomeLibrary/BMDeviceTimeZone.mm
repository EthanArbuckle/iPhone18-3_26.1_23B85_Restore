@interface BMDeviceTimeZone
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMDeviceTimeZone)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMDeviceTimeZone)initWithSecondsFromGMT:(id)a3 name:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (id)timeZone;
- (void)writeTo:(id)a3;
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
  v3 = [(BMDeviceTimeZone *)self name];

  if (v3)
  {
    v4 = MEMORY[0x1E695DFE8];
    v5 = [(BMDeviceTimeZone *)self name];
    v6 = [v4 timeZoneWithName:v5];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (!-[BMDeviceTimeZone hasSecondsFromGMT](self, "hasSecondsFromGMT") && ![v5 hasSecondsFromGMT] || -[BMDeviceTimeZone hasSecondsFromGMT](self, "hasSecondsFromGMT") && objc_msgSend(v5, "hasSecondsFromGMT") && (-[BMDeviceTimeZone secondsFromGMT](self, "secondsFromGMT"), v7 = v6, objc_msgSend(v5, "secondsFromGMT"), v7 == v8))
    {
      v9 = [(BMDeviceTimeZone *)self name];
      v10 = [v5 name];
      if (v9 == v10)
      {
        v13 = 1;
      }

      else
      {
        v11 = [(BMDeviceTimeZone *)self name];
        v12 = [v5 name];
        v13 = [v11 isEqual:v12];
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

  v6 = [(BMDeviceTimeZone *)self name];
  v12[0] = @"secondsFromGMT";
  v7 = v5;
  if (!v5)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = @"name";
  v13[0] = v7;
  v8 = v6;
  if (!v6)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  if (v6)
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

- (BMDeviceTimeZone)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"secondsFromGMT"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v8 = 0;
        v11 = 0;
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
      v11 = 0;
      *a4 = v16;
      goto LABEL_8;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 objectForKeyedSubscript:@"name"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v17 = objc_alloc(MEMORY[0x1E696ABC0]);
        v18 = *MEMORY[0x1E698F240];
        v21 = *MEMORY[0x1E696A578];
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"name"];
        v22 = v19;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        *a4 = [v17 initWithDomain:v18 code:2 userInfo:v20];
      }

      v10 = 0;
      v11 = 0;
      goto LABEL_8;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  self = [(BMDeviceTimeZone *)self initWithSecondsFromGMT:v8 name:v10];
  v11 = self;
LABEL_8:

LABEL_9:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDeviceTimeZone *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_hasSecondsFromGMT)
  {
    secondsFromGMT = self->_secondsFromGMT;
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = BMDeviceTimeZone;
  v5 = [(BMEventBase *)&v23 init];
  if (!v5)
  {
    goto LABEL_31;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v24) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v24 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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
        v15 = [v4 position] + 8;
        if (v15 >= [v4 position] && (v16 = objc_msgSend(v4, "position") + 8, v16 <= objc_msgSend(v4, "length")))
        {
          v19 = [v4 data];
          [v19 getBytes:&v24 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_secondsFromGMT = v24;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_30;
      }

      v20 = [v4 position];
    }

    while (v20 < [v4 length]);
  }

  if ([v4 hasError])
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
  v6 = [(BMDeviceTimeZone *)self name];
  v7 = [v3 initWithFormat:@"BMDeviceTimeZone with secondsFromGMT: %@, name: %@", v5, v6];

  return v7;
}

- (BMDeviceTimeZone)initWithSecondsFromGMT:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = BMDeviceTimeZone;
  v8 = [(BMEventBase *)&v11 init];
  if (v8)
  {
    v8->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v6)
    {
      v8->_hasSecondsFromGMT = 1;
      [v6 doubleValue];
    }

    else
    {
      v8->_hasSecondsFromGMT = 0;
      v9 = -1.0;
    }

    v8->_secondsFromGMT = v9;
    objc_storeStrong(&v8->_name, a4);
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

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

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