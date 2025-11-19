@interface BMFeatureDouble
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMFeatureDouble)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMFeatureDouble)initWithValue:(id)a3 wasImputed:(id)a4 defaultValue:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMFeatureDouble

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMFeatureDouble hasValue](self, "hasValue") || [v5 hasValue])
    {
      if (![(BMFeatureDouble *)self hasValue])
      {
        goto LABEL_18;
      }

      if (![v5 hasValue])
      {
        goto LABEL_18;
      }

      [(BMFeatureDouble *)self value];
      v7 = v6;
      [v5 value];
      if (v7 != v8)
      {
        goto LABEL_18;
      }
    }

    if (-[BMFeatureDouble hasWasImputed](self, "hasWasImputed") || [v5 hasWasImputed])
    {
      if (![(BMFeatureDouble *)self hasWasImputed])
      {
        goto LABEL_18;
      }

      if (![v5 hasWasImputed])
      {
        goto LABEL_18;
      }

      v9 = [(BMFeatureDouble *)self wasImputed];
      if (v9 != [v5 wasImputed])
      {
        goto LABEL_18;
      }
    }

    if (!-[BMFeatureDouble hasDefaultValue](self, "hasDefaultValue") && ![v5 hasDefaultValue])
    {
      LOBYTE(v11) = 1;
      goto LABEL_19;
    }

    if (-[BMFeatureDouble hasDefaultValue](self, "hasDefaultValue") && [v5 hasDefaultValue])
    {
      v10 = [(BMFeatureDouble *)self defaultValue];
      v11 = v10 ^ [v5 defaultValue] ^ 1;
    }

    else
    {
LABEL_18:
      LOBYTE(v11) = 0;
    }

LABEL_19:

    goto LABEL_20;
  }

  LOBYTE(v11) = 0;
LABEL_20:

  return v11;
}

- (id)jsonDictionary
{
  v15[3] = *MEMORY[0x1E69E9840];
  if (![(BMFeatureDouble *)self hasValue]|| ([(BMFeatureDouble *)self value], fabs(v3) == INFINITY))
  {
    v5 = 0;
  }

  else
  {
    [(BMFeatureDouble *)self value];
    v4 = MEMORY[0x1E696AD98];
    [(BMFeatureDouble *)self value];
    v5 = [v4 numberWithDouble:?];
  }

  if ([(BMFeatureDouble *)self hasWasImputed])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMFeatureDouble wasImputed](self, "wasImputed")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMFeatureDouble *)self hasDefaultValue])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMFeatureDouble defaultValue](self, "defaultValue")}];
  }

  else
  {
    v7 = 0;
  }

  v14[0] = @"value";
  v8 = v5;
  if (!v5)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = v8;
  v14[1] = @"wasImputed";
  v9 = v6;
  if (!v6)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v9;
  v14[2] = @"defaultValue";
  v10 = v7;
  if (!v7)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  if (v7)
  {
    if (v6)
    {
      goto LABEL_19;
    }

LABEL_24:

    if (v5)
    {
      goto LABEL_20;
    }

    goto LABEL_25;
  }

  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_19:
  if (v5)
  {
    goto LABEL_20;
  }

LABEL_25:

LABEL_20:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BMFeatureDouble)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"value"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"wasImputed"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v10 = 0;
          v13 = 0;
          goto LABEL_12;
        }

        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v18 = *MEMORY[0x1E698F240];
        v27 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"wasImputed"];
        v28 = v12;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v19 = [v23 initWithDomain:v18 code:2 userInfo:v11];
        v10 = 0;
        v13 = 0;
        *a4 = v19;
        goto LABEL_11;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"defaultValue"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v24 = objc_alloc(MEMORY[0x1E696ABC0]);
          v22 = *MEMORY[0x1E698F240];
          v25 = *MEMORY[0x1E696A578];
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"defaultValue"];
          v26 = v20;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
          *a4 = [v24 initWithDomain:v22 code:2 userInfo:v21];
        }

        v12 = 0;
        v13 = 0;
        goto LABEL_11;
      }

      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    self = [(BMFeatureDouble *)self initWithValue:v8 wasImputed:v10 defaultValue:v12];
    v13 = self;
LABEL_11:

    goto LABEL_12;
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
    v13 = 0;
    goto LABEL_13;
  }

  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E698F240];
  v29 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"value"];
  v30[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v8 = 0;
  v13 = 0;
  *a4 = [v16 initWithDomain:v17 code:2 userInfo:v9];
LABEL_12:

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMFeatureDouble *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_hasValue)
  {
    value = self->_value;
    PBDataWriterWriteDoubleField();
    v4 = v8;
  }

  if (self->_hasWasImputed)
  {
    wasImputed = self->_wasImputed;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }

  if (self->_hasDefaultValue)
  {
    defaultValue = self->_defaultValue;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = BMFeatureDouble;
  v5 = [(BMEventBase *)&v36 init];
  if (!v5)
  {
    goto LABEL_54;
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
        LOBYTE(v37) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v37 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v37) & 0x7F) << v7;
        if ((LOBYTE(v37) & 0x80) == 0)
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
      if ((v14 >> 3) == 3)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v5->_hasDefaultValue = 1;
        while (1)
        {
          LOBYTE(v37) = 0;
          v28 = [v4 position] + 1;
          if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
          {
            v30 = [v4 data];
            [v30 getBytes:&v37 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v27 |= (LOBYTE(v37) & 0x7F) << v25;
          if ((LOBYTE(v37) & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v13 = v26++ >= 9;
          if (v13)
          {
            LOBYTE(v24) = 0;
            goto LABEL_47;
          }
        }

        v24 = (v27 != 0) & ~[v4 hasError];
LABEL_47:
        v31 = 19;
      }

      else
      {
        if (v15 != 2)
        {
          if (v15 == 1)
          {
            v5->_hasValue = 1;
            v37 = 0.0;
            v16 = [v4 position] + 8;
            if (v16 >= [v4 position] && (v17 = objc_msgSend(v4, "position") + 8, v17 <= objc_msgSend(v4, "length")))
            {
              v32 = [v4 data];
              [v32 getBytes:&v37 range:{objc_msgSend(v4, "position"), 8}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
            }

            else
            {
              [v4 _setError];
            }

            v5->_value = v37;
          }

          else if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_53;
          }

          goto LABEL_51;
        }

        v18 = 0;
        v19 = 0;
        v20 = 0;
        v5->_hasWasImputed = 1;
        while (1)
        {
          LOBYTE(v37) = 0;
          v21 = [v4 position] + 1;
          if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
          {
            v23 = [v4 data];
            [v23 getBytes:&v37 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v20 |= (LOBYTE(v37) & 0x7F) << v18;
          if ((LOBYTE(v37) & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v13 = v19++ >= 9;
          if (v13)
          {
            LOBYTE(v24) = 0;
            goto LABEL_45;
          }
        }

        v24 = (v20 != 0) & ~[v4 hasError];
LABEL_45:
        v31 = 17;
      }

      *(&v5->super.super.isa + v31) = v24;
LABEL_51:
      v33 = [v4 position];
    }

    while (v33 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_53:
    v34 = 0;
  }

  else
  {
LABEL_54:
    v34 = v5;
  }

  return v34;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = MEMORY[0x1E696AD98];
  [(BMFeatureDouble *)self value];
  v5 = [v4 numberWithDouble:?];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMFeatureDouble wasImputed](self, "wasImputed")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMFeatureDouble defaultValue](self, "defaultValue")}];
  v8 = [v3 initWithFormat:@"BMFeatureDouble with value: %@, wasImputed: %@, defaultValue: %@", v5, v6, v7];

  return v8;
}

- (BMFeatureDouble)initWithValue:(id)a3 wasImputed:(id)a4 defaultValue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = BMFeatureDouble;
  v11 = [(BMEventBase *)&v14 init];
  if (v11)
  {
    v11->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v8)
    {
      v11->_hasValue = 1;
      [v8 doubleValue];
    }

    else
    {
      v11->_hasValue = 0;
      v12 = -1.0;
    }

    v11->_value = v12;
    if (v9)
    {
      v11->_hasWasImputed = 1;
      v11->_wasImputed = [v9 BOOLValue];
    }

    else
    {
      v11->_hasWasImputed = 0;
      v11->_wasImputed = 0;
    }

    if (v10)
    {
      v11->_hasDefaultValue = 1;
      v11->_defaultValue = [v10 BOOLValue];
    }

    else
    {
      v11->_hasDefaultValue = 0;
      v11->_defaultValue = 0;
    }
  }

  return v11;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"value" number:1 type:0 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"wasImputed" number:2 type:12 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"defaultValue" number:3 type:12 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"value" dataType:1 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"wasImputed" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"defaultValue" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

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

    v8 = [[BMFeatureDouble alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[6] = 0;
    }
  }

  return v4;
}

@end