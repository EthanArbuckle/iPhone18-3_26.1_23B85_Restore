@interface BMIntelligencePlatformFeatureStoreFeatureValueBasicValue
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMIntelligencePlatformFeatureStoreFeatureValueBasicValue)initWithInt_value:(id)a3 double_value:(id)a4 float_value:(id)a5 string_value:(id)a6;
- (BMIntelligencePlatformFeatureStoreFeatureValueBasicValue)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMIntelligencePlatformFeatureStoreFeatureValueBasicValue

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ((!-[BMIntelligencePlatformFeatureStoreFeatureValueBasicValue hasInt_value](self, "hasInt_value") && ![v5 hasInt_value] || -[BMIntelligencePlatformFeatureStoreFeatureValueBasicValue hasInt_value](self, "hasInt_value") && objc_msgSend(v5, "hasInt_value") && (v6 = -[BMIntelligencePlatformFeatureStoreFeatureValueBasicValue int_value](self, "int_value"), v6 == objc_msgSend(v5, "int_value"))) && (!-[BMIntelligencePlatformFeatureStoreFeatureValueBasicValue hasDouble_value](self, "hasDouble_value") && !objc_msgSend(v5, "hasDouble_value") || -[BMIntelligencePlatformFeatureStoreFeatureValueBasicValue hasDouble_value](self, "hasDouble_value") && objc_msgSend(v5, "hasDouble_value") && (-[BMIntelligencePlatformFeatureStoreFeatureValueBasicValue double_value](self, "double_value"), v8 = v7, objc_msgSend(v5, "double_value"), v8 == v9)) && (!-[BMIntelligencePlatformFeatureStoreFeatureValueBasicValue hasFloat_value](self, "hasFloat_value") && !objc_msgSend(v5, "hasFloat_value") || -[BMIntelligencePlatformFeatureStoreFeatureValueBasicValue hasFloat_value](self, "hasFloat_value") && objc_msgSend(v5, "hasFloat_value") && (-[BMIntelligencePlatformFeatureStoreFeatureValueBasicValue float_value](self, "float_value"), v11 = v10, objc_msgSend(v5, "float_value"), v11 == v12)))
    {
      v13 = [(BMIntelligencePlatformFeatureStoreFeatureValueBasicValue *)self string_value];
      v14 = [v5 string_value];
      if (v13 == v14)
      {
        v17 = 1;
      }

      else
      {
        v15 = [(BMIntelligencePlatformFeatureStoreFeatureValueBasicValue *)self string_value];
        v16 = [v5 string_value];
        v17 = [v15 isEqual:v16];
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)jsonDictionary
{
  v19[4] = *MEMORY[0x1E69E9840];
  if ([(BMIntelligencePlatformFeatureStoreFeatureValueBasicValue *)self hasInt_value])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMIntelligencePlatformFeatureStoreFeatureValueBasicValue int_value](self, "int_value")}];
  }

  else
  {
    v3 = 0;
  }

  if (![(BMIntelligencePlatformFeatureStoreFeatureValueBasicValue *)self hasDouble_value]|| ([(BMIntelligencePlatformFeatureStoreFeatureValueBasicValue *)self double_value], fabs(v4) == INFINITY))
  {
    v6 = 0;
  }

  else
  {
    [(BMIntelligencePlatformFeatureStoreFeatureValueBasicValue *)self double_value];
    v5 = MEMORY[0x1E696AD98];
    [(BMIntelligencePlatformFeatureStoreFeatureValueBasicValue *)self double_value];
    v6 = [v5 numberWithDouble:?];
  }

  if (![(BMIntelligencePlatformFeatureStoreFeatureValueBasicValue *)self hasFloat_value]|| ([(BMIntelligencePlatformFeatureStoreFeatureValueBasicValue *)self float_value], fabs(v7) == INFINITY))
  {
    v9 = 0;
  }

  else
  {
    [(BMIntelligencePlatformFeatureStoreFeatureValueBasicValue *)self float_value];
    v8 = MEMORY[0x1E696AD98];
    [(BMIntelligencePlatformFeatureStoreFeatureValueBasicValue *)self float_value];
    v9 = [v8 numberWithDouble:?];
  }

  v10 = [(BMIntelligencePlatformFeatureStoreFeatureValueBasicValue *)self string_value];
  v18[0] = @"int_value";
  v11 = v3;
  if (!v3)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v19[0] = v11;
  v18[1] = @"double_value";
  v12 = v6;
  if (!v6)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v19[1] = v12;
  v18[2] = @"float_value";
  v13 = v9;
  if (!v9)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v19[2] = v13;
  v18[3] = @"string_value";
  v14 = v10;
  if (!v10)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v19[3] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];
  if (v10)
  {
    if (v9)
    {
      goto LABEL_22;
    }
  }

  else
  {

    if (v9)
    {
LABEL_22:
      if (v6)
      {
        goto LABEL_23;
      }

LABEL_29:

      if (v3)
      {
        goto LABEL_24;
      }

      goto LABEL_30;
    }
  }

  if (!v6)
  {
    goto LABEL_29;
  }

LABEL_23:
  if (v3)
  {
    goto LABEL_24;
  }

LABEL_30:

LABEL_24:
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BMIntelligencePlatformFeatureStoreFeatureValueBasicValue)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v41[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"int_value"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"double_value"];
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
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"double_value"];
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

    v10 = [v6 objectForKeyedSubscript:@"float_value"];
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
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"float_value"];
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

    v13 = [v6 objectForKeyedSubscript:@"string_value"];
    if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = 0;
LABEL_13:
      a4 = v32;
      v15 = [(BMIntelligencePlatformFeatureStoreFeatureValueBasicValue *)v11 initWithInt_value:v8 double_value:v32 float_value:v12 string_value:v14];
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
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"string_value"];
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
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"int_value"];
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
  [(BMIntelligencePlatformFeatureStoreFeatureValueBasicValue *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_hasInt_value)
  {
    int_value = self->_int_value;
    PBDataWriterWriteInt64Field();
    v4 = v8;
  }

  if (self->_hasDouble_value)
  {
    double_value = self->_double_value;
    PBDataWriterWriteDoubleField();
    v4 = v8;
  }

  if (self->_hasFloat_value)
  {
    float_value = self->_float_value;
    PBDataWriterWriteFloatField();
    v4 = v8;
  }

  if (self->_string_value)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = BMIntelligencePlatformFeatureStoreFeatureValueBasicValue;
  v5 = [(BMEventBase *)&v36 init];
  if (!v5)
  {
    goto LABEL_53;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_51;
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
        goto LABEL_51;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 2)
      {
        break;
      }

      if (v15 == 3)
      {
        v5->_hasFloat_value = 1;
        LODWORD(v37) = 0;
        v27 = [v4 position] + 4;
        if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 4, v28 <= objc_msgSend(v4, "length")))
        {
          v32 = [v4 data];
          [v32 getBytes:&v37 range:{objc_msgSend(v4, "position"), 4}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
        }

        else
        {
          [v4 _setError];
        }

        v30 = *&v37;
        v31 = 40;
LABEL_49:
        *(&v5->super.super.isa + v31) = v30;
        goto LABEL_50;
      }

      if (v15 != 4)
      {
LABEL_27:
        if (!PBReaderSkipValueWithTag())
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      v18 = PBReaderReadString();
      string_value = v5->_string_value;
      v5->_string_value = v18;

LABEL_50:
      v33 = [v4 position];
      if (v33 >= [v4 length])
      {
        goto LABEL_51;
      }
    }

    if (v15 == 1)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v5->_hasInt_value = 1;
      while (1)
      {
        LOBYTE(v37) = 0;
        v23 = [v4 position] + 1;
        if (v23 >= [v4 position] && (v24 = objc_msgSend(v4, "position") + 1, v24 <= objc_msgSend(v4, "length")))
        {
          v25 = [v4 data];
          [v25 getBytes:&v37 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v22 |= (LOBYTE(v37) & 0x7F) << v20;
        if ((LOBYTE(v37) & 0x80) == 0)
        {
          break;
        }

        v20 += 7;
        v13 = v21++ >= 9;
        if (v13)
        {
          v26 = 0;
          goto LABEL_44;
        }
      }

      if ([v4 hasError])
      {
        v26 = 0;
      }

      else
      {
        v26 = v22;
      }

LABEL_44:
      v5->_int_value = v26;
      goto LABEL_50;
    }

    if (v15 != 2)
    {
      goto LABEL_27;
    }

    v5->_hasDouble_value = 1;
    v37 = 0.0;
    v16 = [v4 position] + 8;
    if (v16 >= [v4 position] && (v17 = objc_msgSend(v4, "position") + 8, v17 <= objc_msgSend(v4, "length")))
    {
      v29 = [v4 data];
      [v29 getBytes:&v37 range:{objc_msgSend(v4, "position"), 8}];

      [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
    }

    else
    {
      [v4 _setError];
    }

    v30 = v37;
    v31 = 32;
    goto LABEL_49;
  }

LABEL_51:
  if ([v4 hasError])
  {
LABEL_52:
    v34 = 0;
  }

  else
  {
LABEL_53:
    v34 = v5;
  }

  return v34;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMIntelligencePlatformFeatureStoreFeatureValueBasicValue int_value](self, "int_value")}];
  v5 = MEMORY[0x1E696AD98];
  [(BMIntelligencePlatformFeatureStoreFeatureValueBasicValue *)self double_value];
  v6 = [v5 numberWithDouble:?];
  v7 = MEMORY[0x1E696AD98];
  [(BMIntelligencePlatformFeatureStoreFeatureValueBasicValue *)self float_value];
  v8 = [v7 numberWithDouble:?];
  v9 = [(BMIntelligencePlatformFeatureStoreFeatureValueBasicValue *)self string_value];
  v10 = [v3 initWithFormat:@"BMIntelligencePlatformFeatureStoreFeatureValueBasicValue with int_value: %@, double_value: %@, float_value: %@, string_value: %@", v4, v6, v8, v9];

  return v10;
}

- (BMIntelligencePlatformFeatureStoreFeatureValueBasicValue)initWithInt_value:(id)a3 double_value:(id)a4 float_value:(id)a5 string_value:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = BMIntelligencePlatformFeatureStoreFeatureValueBasicValue;
  v14 = [(BMEventBase *)&v20 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v10)
    {
      v14->_hasInt_value = 1;
      v15 = [v10 longLongValue];
    }

    else
    {
      v14->_hasInt_value = 0;
      v15 = -1;
    }

    v14->_int_value = v15;
    if (v11)
    {
      v14->_hasDouble_value = 1;
      [v11 doubleValue];
    }

    else
    {
      v14->_hasDouble_value = 0;
      v16 = -1.0;
    }

    v14->_double_value = v16;
    if (v12)
    {
      v14->_hasFloat_value = 1;
      [v12 floatValue];
      v18 = v17;
    }

    else
    {
      v14->_hasFloat_value = 0;
      v18 = -1.0;
    }

    v14->_float_value = v18;
    objc_storeStrong(&v14->_string_value, a6);
  }

  return v14;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"int_value" number:1 type:3 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"double_value" number:2 type:0 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"float_value" number:3 type:1 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"string_value" number:4 type:13 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"int_value" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:3 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"double_value" dataType:1 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"float_value" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:1 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"string_value" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
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

    v8 = [[BMIntelligencePlatformFeatureStoreFeatureValueBasicValue alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end