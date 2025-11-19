@interface BMMessagesMediaRenderedMediaAttributes
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMessagesMediaRenderedMediaAttributes)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMMessagesMediaRenderedMediaAttributes)initWithUUID:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMessagesMediaRenderedMediaAttributes

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMessagesMediaRenderedMediaAttributes *)self UUID];
    v7 = [v5 UUID];
    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      v8 = [(BMMessagesMediaRenderedMediaAttributes *)self UUID];
      v9 = [v5 UUID];
      v10 = [v8 isEqual:v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)jsonDictionary
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [(BMMessagesMediaRenderedMediaAttributes *)self UUID];
  v7 = @"UUID";
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

- (BMMessagesMediaRenderedMediaAttributes)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = [a3 objectForKeyedSubscript:@"UUID"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    a4 = 0;
LABEL_4:
    self = [(BMMessagesMediaRenderedMediaAttributes *)self initWithUUID:a4];
    v7 = self;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a4 = v6;
    goto LABEL_4;
  }

  if (a4)
  {
    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v11 = *MEMORY[0x1E698F240];
    v14 = *MEMORY[0x1E696A578];
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"UUID"];
    v15[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *a4 = [v10 initWithDomain:v11 code:2 userInfo:v13];

    a4 = 0;
  }

  v7 = 0;
LABEL_5:

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMessagesMediaRenderedMediaAttributes *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_UUID)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = BMMessagesMediaRenderedMediaAttributes;
  v5 = [(BMEventBase *)&v20 init];
  if (!v5)
  {
    goto LABEL_24;
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
        v15 = PBReaderReadString();
        UUID = v5->_UUID;
        v5->_UUID = v15;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_23;
      }

      v17 = [v4 position];
    }

    while (v17 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_23:
    v18 = 0;
  }

  else
  {
LABEL_24:
    v18 = v5;
  }

  return v18;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMMessagesMediaRenderedMediaAttributes *)self UUID];
  v5 = [v3 initWithFormat:@"BMMessagesMediaRenderedMediaAttributes with UUID: %@", v4];

  return v5;
}

- (BMMessagesMediaRenderedMediaAttributes)initWithUUID:(id)a3
{
  v5 = a3;
  v8.receiver = self;
  v8.super_class = BMMessagesMediaRenderedMediaAttributes;
  v6 = [(BMEventBase *)&v8 init];
  if (v6)
  {
    v6->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v6->_UUID, a3);
  }

  return v6;
}

+ (id)protoFields
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"UUID" number:1 type:13 subMessageClass:0];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)columns
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"UUID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
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

    v8 = [[BMMessagesMediaRenderedMediaAttributes alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end