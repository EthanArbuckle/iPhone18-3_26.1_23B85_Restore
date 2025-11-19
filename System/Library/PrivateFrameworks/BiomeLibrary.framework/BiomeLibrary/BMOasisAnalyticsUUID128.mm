@interface BMOasisAnalyticsUUID128
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMOasisAnalyticsUUID128)initWithJSONDictionary:(id)a3 error:(id *)p_isa;
- (BMOasisAnalyticsUUID128)initWithValue:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (NSUUID)value;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMOasisAnalyticsUUID128

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMOasisAnalyticsUUID128 *)self value];
    v7 = [v5 value];
    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      v8 = [(BMOasisAnalyticsUUID128 *)self value];
      v9 = [v5 value];
      v10 = [v8 isEqual:v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSUUID)value
{
  raw_value = self->_raw_value;
  if (raw_value)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_value toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [(BMOasisAnalyticsUUID128 *)self value];
  v3 = [v2 UUIDString];

  v8 = @"value";
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  if (!v3)
  {
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BMOasisAnalyticsUUID128)initWithJSONDictionary:(id)a3 error:(id *)p_isa
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = [a3 objectForKeyedSubscript:@"value"];
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v6;
        v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v10];
        if (v11)
        {
          v7 = v11;

          goto LABEL_4;
        }

        if (p_isa)
        {
          v16 = objc_alloc(MEMORY[0x1E696ABC0]);
          v17 = *MEMORY[0x1E698F240];
          v22 = *MEMORY[0x1E696A578];
          v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"value"];
          v23[0] = v18;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
          *p_isa = [v16 initWithDomain:v17 code:2 userInfo:v19];
        }
      }

      else
      {
        if (!p_isa)
        {
          goto LABEL_5;
        }

        v12 = objc_alloc(MEMORY[0x1E696ABC0]);
        v13 = *MEMORY[0x1E698F240];
        v20 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"value"];
        v21 = v14;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
        *p_isa = [v12 initWithDomain:v13 code:2 userInfo:v15];
      }

      p_isa = 0;
      goto LABEL_5;
    }
  }

  v7 = 0;
LABEL_4:
  self = [(BMOasisAnalyticsUUID128 *)self initWithValue:v7];

  p_isa = &self->super.super.isa;
LABEL_5:

  v8 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMOasisAnalyticsUUID128 *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_raw_value)
  {
    PBDataWriterWriteDataField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = BMOasisAnalyticsUUID128;
  v5 = [(BMEventBase *)&v20 init];
  if (!v5)
  {
    goto LABEL_25;
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
        v21 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v21 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v21 & 0x7F) << v7;
        if ((v21 & 0x80) == 0)
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

      if ((v14 >> 3) == 1)
      {
        v15 = PBReaderReadData();
        if ([(NSData *)v15 length]!= 16)
        {

          goto LABEL_24;
        }

        raw_value = v5->_raw_value;
        v5->_raw_value = v15;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_24;
      }

      v17 = [v4 position];
    }

    while (v17 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_24:
    v18 = 0;
  }

  else
  {
LABEL_25:
    v18 = v5;
  }

  return v18;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMOasisAnalyticsUUID128 *)self value];
  v5 = [v3 initWithFormat:@"BMOasisAnalyticsUUID128 with value: %@", v4];

  return v5;
}

- (BMOasisAnalyticsUUID128)initWithValue:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BMOasisAnalyticsUUID128;
  v5 = [(BMEventBase *)&v10 init];
  if (v5)
  {
    v5->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v4)
    {
      v11[0] = 0;
      v11[1] = 0;
      [v4 getUUIDBytes:v11];
      v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v11 length:16];
      raw_value = v5->_raw_value;
      v5->_raw_value = v6;
    }

    else
    {
      raw_value = v5->_raw_value;
      v5->_raw_value = 0;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)protoFields
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"value" number:1 type:14 subMessageClass:0];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)columns
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"value" dataType:6 requestOnly:0 fieldNumber:1 protoDataType:14 convertedType:3];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
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

    v8 = [[BMOasisAnalyticsUUID128 alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[6] = 0;
    }
  }

  return v4;
}

@end