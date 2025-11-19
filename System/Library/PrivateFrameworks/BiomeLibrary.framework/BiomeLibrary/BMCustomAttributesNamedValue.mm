@interface BMCustomAttributesNamedValue
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMCustomAttributesNamedValue)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMCustomAttributesNamedValue)initWithName:(id)a3 value:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMCustomAttributesNamedValue

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMCustomAttributesNamedValue *)self name];
    v7 = [v5 name];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMCustomAttributesNamedValue *)self name];
      v10 = [v5 name];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        v12 = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    v13 = [(BMCustomAttributesNamedValue *)self value];
    v14 = [v5 value];
    if (v13 == v14)
    {
      v12 = 1;
    }

    else
    {
      v15 = [(BMCustomAttributesNamedValue *)self value];
      v16 = [v5 value];
      v12 = [v15 isEqual:v16];
    }

    goto LABEL_11;
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (id)jsonDictionary
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = [(BMCustomAttributesNamedValue *)self name];
  v4 = [(BMCustomAttributesNamedValue *)self value];
  v5 = [v4 jsonDictionary];

  v11[0] = @"name";
  v6 = v3;
  if (!v3)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = @"value";
  v12[0] = v6;
  v7 = v5;
  if (!v5)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (v5)
  {
    if (v3)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (v3)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BMCustomAttributesNamedValue)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"name"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v8 = 0;
        v11 = 0;
        goto LABEL_10;
      }

      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v17 = *MEMORY[0x1E698F240];
      v25 = *MEMORY[0x1E696A578];
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"name"];
      v26[0] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v18 = [v16 initWithDomain:v17 code:2 userInfo:v10];
      v8 = 0;
      v11 = 0;
      *a4 = v18;
      goto LABEL_8;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 objectForKeyedSubscript:@"value"];
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = 0;
LABEL_7:
    self = [(BMCustomAttributesNamedValue *)self initWithName:v8 value:v10];
    v11 = self;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v9;
    v22 = 0;
    v10 = [[BMCustomAttributesBasicValue alloc] initWithJSONDictionary:v14 error:&v22];
    v15 = v22;
    if (v15)
    {
      if (a4)
      {
        v15 = v15;
        *a4 = v15;
      }

      v11 = 0;
      v9 = v14;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (!a4)
  {
    v11 = 0;
    goto LABEL_9;
  }

  v21 = objc_alloc(MEMORY[0x1E696ABC0]);
  v19 = *MEMORY[0x1E698F240];
  v23 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"value"];
  v24 = v10;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  *a4 = [v21 initWithDomain:v19 code:2 userInfo:v20];

  v11 = 0;
LABEL_8:

LABEL_9:
LABEL_10:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMCustomAttributesNamedValue *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_value)
  {
    PBDataWriterPlaceMark();
    [(BMCustomAttributesBasicValue *)self->_value writeTo:v4];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = BMCustomAttributesNamedValue;
  v5 = [(BMEventBase *)&v22 init];
  if (!v5)
  {
    goto LABEL_28;
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
        LOBYTE(v23[0]) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:v23 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v23[0] & 0x7F) << v7;
        if ((v23[0] & 0x80) == 0)
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
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_27;
        }

        v17 = [[BMCustomAttributesBasicValue alloc] initByReadFrom:v4];
        if (!v17)
        {
          goto LABEL_27;
        }

        value = v5->_value;
        v5->_value = v17;

        PBReaderRecallMark();
      }

      else if ((v14 >> 3) == 1)
      {
        v15 = PBReaderReadString();
        name = v5->_name;
        v5->_name = v15;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_27;
      }

      v19 = [v4 position];
    }

    while (v19 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_27:
    v20 = 0;
  }

  else
  {
LABEL_28:
    v20 = v5;
  }

  return v20;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMCustomAttributesNamedValue *)self name];
  v5 = [(BMCustomAttributesNamedValue *)self value];
  v6 = [v3 initWithFormat:@"BMCustomAttributesNamedValue with name: %@, value: %@", v4, v5];

  return v6;
}

- (BMCustomAttributesNamedValue)initWithName:(id)a3 value:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11.receiver = self;
  v11.super_class = BMCustomAttributesNamedValue;
  v9 = [(BMEventBase *)&v11 init];
  if (v9)
  {
    v9->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v9->_name, a3);
    objc_storeStrong(&v9->_value, a4);
  }

  return v9;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"name" number:1 type:13 subMessageClass:0];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"value" number:2 type:14 subMessageClass:objc_opt_class()];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"name" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"value_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_25913];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __39__BMCustomAttributesNamedValue_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 value];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
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

    v8 = [[BMCustomAttributesNamedValue alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end