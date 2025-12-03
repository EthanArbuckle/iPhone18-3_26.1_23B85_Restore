@interface BMSiriRemembersFieldFieldValueNamedValue
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriRemembersFieldFieldValueNamedValue)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSiriRemembersFieldFieldValueNamedValue)initWithName:(id)name value:(id)value;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriRemembersFieldFieldValueNamedValue

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    name = [(BMSiriRemembersFieldFieldValueNamedValue *)self name];
    name2 = [v5 name];
    v8 = name2;
    if (name == name2)
    {
    }

    else
    {
      name3 = [(BMSiriRemembersFieldFieldValueNamedValue *)self name];
      name4 = [v5 name];
      v11 = [name3 isEqual:name4];

      if (!v11)
      {
        v12 = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    value = [(BMSiriRemembersFieldFieldValueNamedValue *)self value];
    value2 = [v5 value];
    if (value == value2)
    {
      v12 = 1;
    }

    else
    {
      value3 = [(BMSiriRemembersFieldFieldValueNamedValue *)self value];
      value4 = [v5 value];
      v12 = [value3 isEqual:value4];
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
  name = [(BMSiriRemembersFieldFieldValueNamedValue *)self name];
  value = [(BMSiriRemembersFieldFieldValueNamedValue *)self value];
  jsonDictionary = [value jsonDictionary];

  v11[0] = @"name";
  null = name;
  if (!name)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = @"value";
  v12[0] = null;
  null2 = jsonDictionary;
  if (!jsonDictionary)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = null2;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (jsonDictionary)
  {
    if (name)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (name)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BMSiriRemembersFieldFieldValueNamedValue)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v26[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"name"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v8 = 0;
        selfCopy = 0;
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
      selfCopy = 0;
      *error = v18;
      goto LABEL_8;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"value"];
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = 0;
LABEL_7:
    self = [(BMSiriRemembersFieldFieldValueNamedValue *)self initWithName:v8 value:v10];
    selfCopy = self;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v9;
    v22 = 0;
    v10 = [[BMSiriRemembersFieldFieldValueBasicValue alloc] initWithJSONDictionary:v14 error:&v22];
    v15 = v22;
    if (v15)
    {
      if (error)
      {
        v15 = v15;
        *error = v15;
      }

      selfCopy = 0;
      v9 = v14;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (!error)
  {
    selfCopy = 0;
    goto LABEL_9;
  }

  v21 = objc_alloc(MEMORY[0x1E696ABC0]);
  v19 = *MEMORY[0x1E698F240];
  v23 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"value"];
  v24 = v10;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  *error = [v21 initWithDomain:v19 code:2 userInfo:v20];

  selfCopy = 0;
LABEL_8:

LABEL_9:
LABEL_10:

  v12 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriRemembersFieldFieldValueNamedValue *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_value)
  {
    PBDataWriterPlaceMark();
    [(BMSiriRemembersFieldFieldValueBasicValue *)self->_value writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v22.receiver = self;
  v22.super_class = BMSiriRemembersFieldFieldValueNamedValue;
  v5 = [(BMEventBase *)&v22 init];
  if (!v5)
  {
    goto LABEL_28;
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
        LOBYTE(v23[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v23 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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

        v17 = [[BMSiriRemembersFieldFieldValueBasicValue alloc] initByReadFrom:fromCopy];
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

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  name = [(BMSiriRemembersFieldFieldValueNamedValue *)self name];
  value = [(BMSiriRemembersFieldFieldValueNamedValue *)self value];
  v6 = [v3 initWithFormat:@"BMSiriRemembersFieldFieldValueNamedValue with name: %@, value: %@", name, value];

  return v6;
}

- (BMSiriRemembersFieldFieldValueNamedValue)initWithName:(id)name value:(id)value
{
  nameCopy = name;
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = BMSiriRemembersFieldFieldValueNamedValue;
  v9 = [(BMEventBase *)&v11 init];
  if (v9)
  {
    v9->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v9->_value, value);
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
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"value_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_18482];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __51__BMSiriRemembersFieldFieldValueNamedValue_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 value];
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

    v8 = [[BMSiriRemembersFieldFieldValueNamedValue alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end