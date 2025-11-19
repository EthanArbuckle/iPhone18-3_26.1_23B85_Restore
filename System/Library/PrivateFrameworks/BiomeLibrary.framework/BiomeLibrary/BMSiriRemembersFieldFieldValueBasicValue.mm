@interface BMSiriRemembersFieldFieldValueBasicValue
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriRemembersFieldFieldValueBasicValue)initWithBoolValue:(id)a3 int64Value:(id)a4 doubleValue:(id)a5 stringValue:(id)a6;
- (BMSiriRemembersFieldFieldValueBasicValue)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriRemembersFieldFieldValueBasicValue

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ((!-[BMSiriRemembersFieldFieldValueBasicValue hasBoolValue](self, "hasBoolValue") && ![v5 hasBoolValue] || -[BMSiriRemembersFieldFieldValueBasicValue hasBoolValue](self, "hasBoolValue") && objc_msgSend(v5, "hasBoolValue") && (v6 = -[BMSiriRemembersFieldFieldValueBasicValue BOOLValue](self, "BOOLValue"), v6 == objc_msgSend(v5, "BOOLValue"))) && (!-[BMSiriRemembersFieldFieldValueBasicValue hasInt64Value](self, "hasInt64Value") && !objc_msgSend(v5, "hasInt64Value") || -[BMSiriRemembersFieldFieldValueBasicValue hasInt64Value](self, "hasInt64Value") && objc_msgSend(v5, "hasInt64Value") && (v7 = -[BMSiriRemembersFieldFieldValueBasicValue int64Value](self, "int64Value"), v7 == objc_msgSend(v5, "int64Value"))) && (!-[BMSiriRemembersFieldFieldValueBasicValue hasDoubleValue](self, "hasDoubleValue") && !objc_msgSend(v5, "hasDoubleValue") || -[BMSiriRemembersFieldFieldValueBasicValue hasDoubleValue](self, "hasDoubleValue") && objc_msgSend(v5, "hasDoubleValue") && (-[BMSiriRemembersFieldFieldValueBasicValue doubleValue](self, "doubleValue"), v9 = v8, objc_msgSend(v5, "doubleValue"), v9 == v10)))
    {
      v11 = [(BMSiriRemembersFieldFieldValueBasicValue *)self stringValue];
      v12 = [v5 stringValue];
      if (v11 == v12)
      {
        v15 = 1;
      }

      else
      {
        v13 = [(BMSiriRemembersFieldFieldValueBasicValue *)self stringValue];
        v14 = [v5 stringValue];
        v15 = [v13 isEqual:v14];
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
  if ([(BMSiriRemembersFieldFieldValueBasicValue *)self hasBoolValue])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriRemembersFieldFieldValueBasicValue BOOLValue](self, "BOOLValue")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMSiriRemembersFieldFieldValueBasicValue *)self hasInt64Value])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMSiriRemembersFieldFieldValueBasicValue int64Value](self, "int64Value")}];
  }

  else
  {
    v4 = 0;
  }

  if (![(BMSiriRemembersFieldFieldValueBasicValue *)self hasDoubleValue]|| ([(BMSiriRemembersFieldFieldValueBasicValue *)self doubleValue], fabs(v5) == INFINITY))
  {
    v7 = 0;
  }

  else
  {
    [(BMSiriRemembersFieldFieldValueBasicValue *)self doubleValue];
    v6 = MEMORY[0x1E696AD98];
    [(BMSiriRemembersFieldFieldValueBasicValue *)self doubleValue];
    v7 = [v6 numberWithDouble:?];
  }

  v8 = [(BMSiriRemembersFieldFieldValueBasicValue *)self stringValue];
  v16[0] = @"BOOLValue";
  v9 = v3;
  if (!v3)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v17[0] = v9;
  v16[1] = @"int64Value";
  v10 = v4;
  if (!v4)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v17[1] = v10;
  v16[2] = @"doubleValue";
  v11 = v7;
  if (!v7)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v17[2] = v11;
  v16[3] = @"stringValue";
  v12 = v8;
  if (!v8)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v17[3] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
  if (v8)
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

- (BMSiriRemembersFieldFieldValueBasicValue)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v41[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"BOOLValue"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"int64Value"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v15 = 0;
          goto LABEL_34;
        }

        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        v33 = a4;
        v20 = *MEMORY[0x1E698F240];
        v38 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"int64Value"];
        v39 = v12;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v21 = [v19 initWithDomain:v20 code:2 userInfo:v10];
        a4 = 0;
        v15 = 0;
        *v33 = v21;
        goto LABEL_33;
      }

      v32 = v9;
    }

    else
    {
      v32 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"doubleValue"];
    v31 = v7;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v12 = 0;
          v15 = 0;
          a4 = v32;
          goto LABEL_33;
        }

        v11 = self;
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v36 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"doubleValue"];
        v37 = v14;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v23 = [v29 initWithDomain:v22 code:2 userInfo:v13];
        v12 = 0;
        v15 = 0;
        *a4 = v23;
        goto LABEL_31;
      }

      v11 = self;
      v12 = v10;
    }

    else
    {
      v11 = self;
      v12 = 0;
    }

    v13 = [v6 objectForKeyedSubscript:@"stringValue"];
    if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = 0;
LABEL_13:
      a4 = v32;
      v15 = [(BMSiriRemembersFieldFieldValueBasicValue *)v11 initWithBoolValue:v8 int64Value:v32 doubleValue:v12 stringValue:v14];
      v11 = v15;
LABEL_32:

      self = v11;
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

    if (a4)
    {
      v30 = objc_alloc(MEMORY[0x1E696ABC0]);
      v28 = *MEMORY[0x1E698F240];
      v34 = *MEMORY[0x1E696A578];
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"stringValue"];
      v35 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      *a4 = [v30 initWithDomain:v28 code:2 userInfo:v25];
    }

    v14 = 0;
    v15 = 0;
LABEL_31:
    a4 = v32;
    goto LABEL_32;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!a4)
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
  *a4 = [v16 initWithDomain:v17 code:2 userInfo:v9];
  a4 = v18;
LABEL_34:

LABEL_35:
  v26 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriRemembersFieldFieldValueBasicValue *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_hasBoolValue)
  {
    BOOLValue = self->_BOOLValue;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }

  if (self->_hasInt64Value)
  {
    int64Value = self->_int64Value;
    PBDataWriterWriteInt64Field();
    v4 = v8;
  }

  if (self->_hasDoubleValue)
  {
    doubleValue = self->_doubleValue;
    PBDataWriterWriteDoubleField();
    v4 = v8;
  }

  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = BMSiriRemembersFieldFieldValueBasicValue;
  v5 = [(BMEventBase *)&v38 init];
  if (!v5)
  {
    goto LABEL_58;
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
        LOBYTE(v39) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v39 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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
          v32 = [v4 position] + 8;
          if (v32 >= [v4 position] && (v33 = objc_msgSend(v4, "position") + 8, v33 <= objc_msgSend(v4, "length")))
          {
            v34 = [v4 data];
            [v34 getBytes:&v39 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
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
          v28 = [v4 position] + 1;
          if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
          {
            v30 = [v4 data];
            [v30 getBytes:&v39 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        v31 = (v27 != 0) & ~[v4 hasError];
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
          v19 = [v4 position] + 1;
          if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
          {
            v21 = [v4 data];
            [v21 getBytes:&v39 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        if ([v4 hasError])
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
      v35 = [v4 position];
    }

    while (v35 < [v4 length]);
  }

  if ([v4 hasError])
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
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriRemembersFieldFieldValueBasicValue BOOLValue](self, "BOOLValue")}];
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMSiriRemembersFieldFieldValueBasicValue int64Value](self, "int64Value")}];
  v6 = MEMORY[0x1E696AD98];
  [(BMSiriRemembersFieldFieldValueBasicValue *)self doubleValue];
  v7 = [v6 numberWithDouble:?];
  v8 = [(BMSiriRemembersFieldFieldValueBasicValue *)self stringValue];
  v9 = [v3 initWithFormat:@"BMSiriRemembersFieldFieldValueBasicValue with BOOLValue: %@, int64Value: %@, doubleValue: %@, stringValue: %@", v4, v5, v7, v8];

  return v9;
}

- (BMSiriRemembersFieldFieldValueBasicValue)initWithBoolValue:(id)a3 int64Value:(id)a4 doubleValue:(id)a5 stringValue:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = BMSiriRemembersFieldFieldValueBasicValue;
  v14 = [(BMEventBase *)&v18 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v10)
    {
      v14->_hasBoolValue = 1;
      v14->_BOOLValue = [v10 BOOLValue];
    }

    else
    {
      v14->_hasBoolValue = 0;
      v14->_BOOLValue = 0;
    }

    if (v11)
    {
      v14->_hasInt64Value = 1;
      v15 = [v11 longLongValue];
    }

    else
    {
      v14->_hasInt64Value = 0;
      v15 = -1;
    }

    v14->_int64Value = v15;
    if (v12)
    {
      v14->_hasDoubleValue = 1;
      [v12 doubleValue];
    }

    else
    {
      v14->_hasDoubleValue = 0;
      v16 = -1.0;
    }

    v14->_doubleValue = v16;
    objc_storeStrong(&v14->_stringValue, a6);
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

    v8 = [[BMSiriRemembersFieldFieldValueBasicValue alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end