@interface BMCustomAttributesBasicValue
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMCustomAttributesBasicValue)initWithBoolValue:(id)value int64Value:(id)int64Value doubleValue:(id)doubleValue stringValue:(id)stringValue;
- (BMCustomAttributesBasicValue)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMCustomAttributesBasicValue

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if ((!-[BMCustomAttributesBasicValue hasBoolValue](self, "hasBoolValue") && ![v5 hasBoolValue] || -[BMCustomAttributesBasicValue hasBoolValue](self, "hasBoolValue") && objc_msgSend(v5, "hasBoolValue") && (v6 = -[BMCustomAttributesBasicValue BOOLValue](self, "BOOLValue"), v6 == objc_msgSend(v5, "BOOLValue"))) && (!-[BMCustomAttributesBasicValue hasInt64Value](self, "hasInt64Value") && !objc_msgSend(v5, "hasInt64Value") || -[BMCustomAttributesBasicValue hasInt64Value](self, "hasInt64Value") && objc_msgSend(v5, "hasInt64Value") && (v7 = -[BMCustomAttributesBasicValue int64Value](self, "int64Value"), v7 == objc_msgSend(v5, "int64Value"))) && (!-[BMCustomAttributesBasicValue hasDoubleValue](self, "hasDoubleValue") && !objc_msgSend(v5, "hasDoubleValue") || -[BMCustomAttributesBasicValue hasDoubleValue](self, "hasDoubleValue") && objc_msgSend(v5, "hasDoubleValue") && (-[BMCustomAttributesBasicValue doubleValue](self, "doubleValue"), v9 = v8, objc_msgSend(v5, "doubleValue"), v9 == v10)))
    {
      stringValue = [(BMCustomAttributesBasicValue *)self stringValue];
      stringValue2 = [v5 stringValue];
      if (stringValue == stringValue2)
      {
        v15 = 1;
      }

      else
      {
        stringValue3 = [(BMCustomAttributesBasicValue *)self stringValue];
        stringValue4 = [v5 stringValue];
        v15 = [stringValue3 isEqual:stringValue4];
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)jsonDictionary
{
  v17[4] = *MEMORY[0x1E69E9840];
  if ([(BMCustomAttributesBasicValue *)self hasBoolValue])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMCustomAttributesBasicValue BOOLValue](self, "BOOLValue")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMCustomAttributesBasicValue *)self hasInt64Value])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMCustomAttributesBasicValue int64Value](self, "int64Value")}];
  }

  else
  {
    v4 = 0;
  }

  if (![(BMCustomAttributesBasicValue *)self hasDoubleValue]|| ([(BMCustomAttributesBasicValue *)self doubleValue], fabs(v5) == INFINITY))
  {
    v7 = 0;
  }

  else
  {
    [(BMCustomAttributesBasicValue *)self doubleValue];
    v6 = MEMORY[0x1E696AD98];
    [(BMCustomAttributesBasicValue *)self doubleValue];
    v7 = [v6 numberWithDouble:?];
  }

  stringValue = [(BMCustomAttributesBasicValue *)self stringValue];
  v16[0] = @"BOOLValue";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v17[0] = null;
  v16[1] = @"int64Value";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v17[1] = null2;
  v16[2] = @"doubleValue";
  null3 = v7;
  if (!v7)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v17[2] = null3;
  v16[3] = @"stringValue";
  null4 = stringValue;
  if (!stringValue)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v17[3] = null4;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
  if (stringValue)
  {
    if (v7)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (v7)
    {
LABEL_21:
      if (v4)
      {
        goto LABEL_22;
      }

LABEL_28:

      if (v3)
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    }
  }

  if (!v4)
  {
    goto LABEL_28;
  }

LABEL_22:
  if (v3)
  {
    goto LABEL_23;
  }

LABEL_29:

LABEL_23:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BMCustomAttributesBasicValue)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v41[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"BOOLValue"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"int64Value"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v15 = 0;
          goto LABEL_34;
        }

        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v20 = *MEMORY[0x1E698F240];
        v38 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"int64Value"];
        v39 = v12;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v21 = [v19 initWithDomain:v20 code:2 userInfo:v10];
        error = 0;
        v15 = 0;
        *errorCopy = v21;
        goto LABEL_33;
      }

      v32 = v9;
    }

    else
    {
      v32 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"doubleValue"];
    v31 = v7;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v12 = 0;
          v15 = 0;
          error = v32;
          goto LABEL_33;
        }

        selfCopy3 = self;
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v36 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"doubleValue"];
        v37 = v14;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v23 = [v29 initWithDomain:v22 code:2 userInfo:v13];
        v12 = 0;
        v15 = 0;
        *error = v23;
        goto LABEL_31;
      }

      selfCopy3 = self;
      v12 = v10;
    }

    else
    {
      selfCopy3 = self;
      v12 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"stringValue"];
    if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = 0;
LABEL_13:
      error = v32;
      v15 = [(BMCustomAttributesBasicValue *)selfCopy3 initWithBoolValue:v8 int64Value:v32 doubleValue:v12 stringValue:v14];
      selfCopy3 = v15;
LABEL_32:

      self = selfCopy3;
      v7 = v31;
LABEL_33:

      goto LABEL_34;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
      goto LABEL_13;
    }

    if (error)
    {
      v30 = objc_alloc(MEMORY[0x1E696ABC0]);
      v28 = *MEMORY[0x1E698F240];
      v34 = *MEMORY[0x1E696A578];
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"stringValue"];
      v35 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      *error = [v30 initWithDomain:v28 code:2 userInfo:v25];
    }

    v14 = 0;
    v15 = 0;
LABEL_31:
    error = v32;
    goto LABEL_32;
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
    v15 = 0;
    goto LABEL_35;
  }

  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E698F240];
  v40 = *MEMORY[0x1E696A578];
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"BOOLValue"];
  v41[0] = v18;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
  v8 = 0;
  v15 = 0;
  *error = [v16 initWithDomain:v17 code:2 userInfo:v9];
  error = v18;
LABEL_34:

LABEL_35:
  v26 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMCustomAttributesBasicValue *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_hasBoolValue)
  {
    BOOLValue = self->_BOOLValue;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }

  if (self->_hasInt64Value)
  {
    int64Value = self->_int64Value;
    PBDataWriterWriteInt64Field();
    toCopy = v8;
  }

  if (self->_hasDoubleValue)
  {
    doubleValue = self->_doubleValue;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
  }

  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v38.receiver = self;
  v38.super_class = BMCustomAttributesBasicValue;
  v5 = [(BMEventBase *)&v38 init];
  if (!v5)
  {
    goto LABEL_58;
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
        LOBYTE(v39) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v39 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v39) & 0x7F) << v7;
        if ((LOBYTE(v39) & 0x80) == 0)
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
      if ((v14 >> 3) > 2)
      {
        if (v15 == 3)
        {
          v5->_hasDoubleValue = 1;
          v39 = 0.0;
          v32 = [fromCopy position] + 8;
          if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 8, v33 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v39 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v5->_doubleValue = v39;
        }

        else
        {
          if (v15 != 4)
          {
LABEL_33:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_57;
            }

            goto LABEL_55;
          }

          v23 = PBReaderReadString();
          stringValue = v5->_stringValue;
          v5->_stringValue = v23;
        }
      }

      else if (v15 == 1)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v5->_hasBoolValue = 1;
        while (1)
        {
          LOBYTE(v39) = 0;
          v28 = [fromCopy position] + 1;
          if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v39 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v27 |= (LOBYTE(v39) & 0x7F) << v25;
          if ((LOBYTE(v39) & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v13 = v26++ >= 9;
          if (v13)
          {
            LOBYTE(v31) = 0;
            goto LABEL_52;
          }
        }

        v31 = (v27 != 0) & ~[fromCopy hasError];
LABEL_52:
        v5->_BOOLValue = v31;
      }

      else
      {
        if (v15 != 2)
        {
          goto LABEL_33;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        v5->_hasInt64Value = 1;
        while (1)
        {
          LOBYTE(v39) = 0;
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v39 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (LOBYTE(v39) & 0x7F) << v16;
          if ((LOBYTE(v39) & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v13 = v17++ >= 9;
          if (v13)
          {
            v22 = 0;
            goto LABEL_50;
          }
        }

        if ([fromCopy hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_50:
        v5->_int64Value = v22;
      }

LABEL_55:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_57:
    v36 = 0;
  }

  else
  {
LABEL_58:
    v36 = v5;
  }

  return v36;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMCustomAttributesBasicValue BOOLValue](self, "BOOLValue")}];
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMCustomAttributesBasicValue int64Value](self, "int64Value")}];
  v6 = MEMORY[0x1E696AD98];
  [(BMCustomAttributesBasicValue *)self doubleValue];
  v7 = [v6 numberWithDouble:?];
  stringValue = [(BMCustomAttributesBasicValue *)self stringValue];
  v9 = [v3 initWithFormat:@"BMCustomAttributesBasicValue with BOOLValue: %@, int64Value: %@, doubleValue: %@, stringValue: %@", v4, v5, v7, stringValue];

  return v9;
}

- (BMCustomAttributesBasicValue)initWithBoolValue:(id)value int64Value:(id)int64Value doubleValue:(id)doubleValue stringValue:(id)stringValue
{
  valueCopy = value;
  int64ValueCopy = int64Value;
  doubleValueCopy = doubleValue;
  stringValueCopy = stringValue;
  v18.receiver = self;
  v18.super_class = BMCustomAttributesBasicValue;
  v14 = [(BMEventBase *)&v18 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    if (valueCopy)
    {
      v14->_hasBoolValue = 1;
      v14->_BOOLValue = [valueCopy BOOLValue];
    }

    else
    {
      v14->_hasBoolValue = 0;
      v14->_BOOLValue = 0;
    }

    if (int64ValueCopy)
    {
      v14->_hasInt64Value = 1;
      longLongValue = [int64ValueCopy longLongValue];
    }

    else
    {
      v14->_hasInt64Value = 0;
      longLongValue = -1;
    }

    v14->_int64Value = longLongValue;
    if (doubleValueCopy)
    {
      v14->_hasDoubleValue = 1;
      [doubleValueCopy doubleValue];
    }

    else
    {
      v14->_hasDoubleValue = 0;
      v16 = -1.0;
    }

    v14->_doubleValue = v16;
    objc_storeStrong(&v14->_stringValue, stringValue);
  }

  return v14;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"BOOLValue" number:1 type:12 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"int64Value" number:2 type:3 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"doubleValue" number:3 type:0 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stringValue" number:4 type:13 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"BOOLValue" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"int64Value" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:3 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"doubleValue" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"stringValue" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
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

    v8 = [[BMCustomAttributesBasicValue alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end