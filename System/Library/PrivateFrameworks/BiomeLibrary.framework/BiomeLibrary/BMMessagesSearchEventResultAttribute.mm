@interface BMMessagesSearchEventResultAttribute
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMessagesSearchEventResultAttribute)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMMessagesSearchEventResultAttribute)initWithResultPositionIndex:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMessagesSearchEventResultAttribute

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMMessagesSearchEventResultAttribute hasResultPositionIndex](self, "hasResultPositionIndex") || [v5 hasResultPositionIndex])
    {
      if (-[BMMessagesSearchEventResultAttribute hasResultPositionIndex](self, "hasResultPositionIndex") && [v5 hasResultPositionIndex])
      {
        v6 = [(BMMessagesSearchEventResultAttribute *)self resultPositionIndex];
        v7 = v6 == [v5 resultPositionIndex];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)jsonDictionary
{
  v11[1] = *MEMORY[0x1E69E9840];
  if ([(BMMessagesSearchEventResultAttribute *)self hasResultPositionIndex])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventResultAttribute resultPositionIndex](self, "resultPositionIndex")}];
    v10 = @"resultPositionIndex";
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = v3;
      goto LABEL_6;
    }
  }

  else
  {
    v10 = @"resultPositionIndex";
  }

  v6 = [MEMORY[0x1E695DFB0] null];
  v4 = 0;
  v5 = 1;
LABEL_6:
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  if (v5)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BMMessagesSearchEventResultAttribute)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = [a3 objectForKeyedSubscript:@"resultPositionIndex"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    a4 = 0;
LABEL_4:
    self = [(BMMessagesSearchEventResultAttribute *)self initWithResultPositionIndex:a4];
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
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"resultPositionIndex"];
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
  [(BMMessagesSearchEventResultAttribute *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_hasResultPositionIndex)
  {
    resultPositionIndex = self->_resultPositionIndex;
    PBDataWriterWriteUint64Field();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = BMMessagesSearchEventResultAttribute;
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
        v13 = v8++ >= 9;
        if (v13)
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
        v5->_hasResultPositionIndex = 1;
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
          v13 = v16++ >= 9;
          if (v13)
          {
            v21 = 0;
            goto LABEL_33;
          }
        }

        v21 = [v4 hasError] ? 0 : v17;
LABEL_33:
        v5->_resultPositionIndex = v21;
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
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventResultAttribute resultPositionIndex](self, "resultPositionIndex")}];
  v5 = [v3 initWithFormat:@"BMMessagesSearchEventResultAttribute with resultPositionIndex: %@", v4];

  return v5;
}

- (BMMessagesSearchEventResultAttribute)initWithResultPositionIndex:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BMMessagesSearchEventResultAttribute;
  v5 = [(BMEventBase *)&v8 init];
  if (v5)
  {
    v5->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v4)
    {
      v5->_hasResultPositionIndex = 1;
      v6 = [v4 unsignedLongLongValue];
    }

    else
    {
      v6 = 0;
      v5->_hasResultPositionIndex = 0;
    }

    v5->_resultPositionIndex = v6;
  }

  return v5;
}

+ (id)protoFields
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"resultPositionIndex" number:1 type:5 subMessageClass:0];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)columns
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"resultPositionIndex" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:5 convertedType:0];
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

    v8 = [[BMMessagesSearchEventResultAttribute alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end