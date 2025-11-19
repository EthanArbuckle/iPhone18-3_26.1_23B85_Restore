@interface BMAppIntentInvocationValueTypeArrayCapabilities
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMAppIntentInvocationValueTypeArrayCapabilities)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMAppIntentInvocationValueTypeArrayCapabilities)initWithValue:(int)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
@end

@implementation BMAppIntentInvocationValueTypeArrayCapabilities

+ (id)protoFields
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"value" number:1 type:4 subMessageClass:0];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMAppIntentInvocationValueTypeArrayCapabilities *)self value];
    v7 = [v5 value];

    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)jsonDictionary
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppIntentInvocationValueTypeArrayCapabilities value](self, "value")}];
  v7 = @"value";
  v3 = v2;
  if (!v2)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!v2)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BMAppIntentInvocationValueTypeArrayCapabilities)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = [a3 objectForKeyedSubscript:@"value"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    a4 = 0;
LABEL_9:
    self = -[BMAppIntentInvocationValueTypeArrayCapabilities initWithValue:](self, "initWithValue:", [a4 intValue]);
    v8 = self;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
LABEL_8:
    a4 = v7;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:BMAppIntentInvocationValueTypeArrayCapabilitiesCapabilitiesValueFromString(v6)];
    goto LABEL_8;
  }

  if (a4)
  {
    v11 = objc_alloc(MEMORY[0x1E696ABC0]);
    v12 = *MEMORY[0x1E698F240];
    v15 = *MEMORY[0x1E696A578];
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"value"];
    v16[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *a4 = [v11 initWithDomain:v12 code:2 userInfo:v14];

    a4 = 0;
  }

  v8 = 0;
LABEL_10:

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppIntentInvocationValueTypeArrayCapabilities *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = BMAppIntentInvocationValueTypeArrayCapabilities;
  v5 = [(BMEventBase *)&v25 init];
  if (!v5)
  {
    goto LABEL_37;
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
        v26 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v26 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v26 & 0x7F) << v7;
        if ((v26 & 0x80) == 0)
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
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          v26 = 0;
          v18 = [v4 position] + 1;
          if (v18 >= [v4 position] && (v19 = objc_msgSend(v4, "position") + 1, v19 <= objc_msgSend(v4, "length")))
          {
            v20 = [v4 data];
            [v20 getBytes:&v26 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v17 |= (v26 & 0x7F) << v15;
          if ((v26 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          if (v16++ > 8)
          {
            goto LABEL_32;
          }
        }

        if (([v4 hasError] & 1) != 0 || v17 > 2)
        {
LABEL_32:
          LODWORD(v17) = 0;
        }

        v5->_value = v17;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_36;
      }

      v22 = [v4 position];
    }

    while (v22 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_36:
    v23 = 0;
  }

  else
  {
LABEL_37:
    v23 = v5;
  }

  return v23;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMAppIntentInvocationValueTypeArrayCapabilitiesCapabilitiesValueAsString([(BMAppIntentInvocationValueTypeArrayCapabilities *)self value]);
  v5 = [v3 initWithFormat:@"BMAppIntentInvocationValueTypeArrayCapabilities with value: %@", v4];

  return v5;
}

- (BMAppIntentInvocationValueTypeArrayCapabilities)initWithValue:(int)a3
{
  v6.receiver = self;
  v6.super_class = BMAppIntentInvocationValueTypeArrayCapabilities;
  v4 = [(BMEventBase *)&v6 init];
  if (v4)
  {
    v4->_dataVersion = [objc_opt_class() latestDataVersion];
    v4->_value = a3;
  }

  return v4;
}

+ (id)columns
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"value" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
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

    v8 = [[BMAppIntentInvocationValueTypeArrayCapabilities alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end