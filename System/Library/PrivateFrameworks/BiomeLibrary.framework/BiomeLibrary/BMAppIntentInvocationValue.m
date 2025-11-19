@interface BMAppIntentInvocationValue
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMAppIntentInvocationValue)initWithJSONDictionary:(id)a3 error:(id *)p_isa;
- (BMAppIntentInvocationValue)initWithValueType:(id)a3 value:(id)a4 displayRepresentation:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMAppIntentInvocationValue

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"valueType" number:1 type:14 subMessageClass:objc_opt_class()];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"value" number:2 type:14 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"displayRepresentation" number:3 type:14 subMessageClass:objc_opt_class()];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMAppIntentInvocationValue *)self valueType];
    v7 = [v5 valueType];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMAppIntentInvocationValue *)self valueType];
      v10 = [v5 valueType];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v13 = [(BMAppIntentInvocationValue *)self value];
    v14 = [v5 value];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMAppIntentInvocationValue *)self value];
      v17 = [v5 value];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    v19 = [(BMAppIntentInvocationValue *)self displayRepresentation];
    v20 = [v5 displayRepresentation];
    if (v19 == v20)
    {
      v12 = 1;
    }

    else
    {
      v21 = [(BMAppIntentInvocationValue *)self displayRepresentation];
      v22 = [v5 displayRepresentation];
      v12 = [v21 isEqual:v22];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (id)jsonDictionary
{
  v16[3] = *MEMORY[0x1E69E9840];
  v3 = [(BMAppIntentInvocationValue *)self valueType];
  v4 = [v3 jsonDictionary];

  v5 = [(BMAppIntentInvocationValue *)self value];
  v6 = [v5 base64EncodedStringWithOptions:0];

  v7 = [(BMAppIntentInvocationValue *)self displayRepresentation];
  v8 = [v7 jsonDictionary];

  v15[0] = @"valueType";
  v9 = v4;
  if (!v4)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = v9;
  v15[1] = @"value";
  v10 = v6;
  if (!v6)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = v10;
  v15[2] = @"displayRepresentation";
  v11 = v8;
  if (!v8)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  if (v8)
  {
    if (v6)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (v4)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (v4)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BMAppIntentInvocationValue)initWithJSONDictionary:(id)a3 error:(id *)p_isa
{
  v41[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"valueType"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v7;
    v33 = 0;
    v8 = [[BMAppIntentInvocationValueType alloc] initWithJSONDictionary:v10 error:&v33];
    v15 = v33;
    if (v15)
    {
      if (p_isa)
      {
        v15 = v15;
        *p_isa = v15;
      }

      p_isa = 0;
      goto LABEL_14;
    }

LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"value"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = 0;
LABEL_7:
      v11 = [v6 objectForKeyedSubscript:@"displayRepresentation"];
      if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!p_isa)
          {
            goto LABEL_12;
          }

          v31 = objc_alloc(MEMORY[0x1E696ABC0]);
          v30 = *MEMORY[0x1E698F240];
          v34 = *MEMORY[0x1E696A578];
          v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"displayRepresentation"];
          v35 = v12;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
          *p_isa = [v31 initWithDomain:v30 code:2 userInfo:v27];

          p_isa = 0;
LABEL_11:

LABEL_12:
LABEL_13:

          goto LABEL_14;
        }

        v16 = v11;
        v32 = 0;
        v12 = [[BMAppIntentInvocationDisplayRepresentation alloc] initWithJSONDictionary:v16 error:&v32];
        v17 = v32;
        if (v17)
        {
          if (p_isa)
          {
            v17 = v17;
            *p_isa = v17;
          }

          p_isa = 0;
          v11 = v16;
          goto LABEL_11;
        }
      }

      else
      {
        v12 = 0;
      }

      self = [(BMAppIntentInvocationValue *)self initWithValueType:v8 value:v10 displayRepresentation:v12];
      p_isa = &self->super.super.isa;
      goto LABEL_11;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v9 options:0];
      if (v10)
      {
        goto LABEL_7;
      }

      if (p_isa)
      {
        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v38 = *MEMORY[0x1E696A578];
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"value"];
        v39 = v11;
        v24 = MEMORY[0x1E695DF20];
        v25 = &v39;
        v26 = &v38;
LABEL_39:
        v12 = [v24 dictionaryWithObjects:v25 forKeys:v26 count:1];
        v28 = [v22 initWithDomain:v23 code:2 userInfo:v12];
        v10 = 0;
        v29 = p_isa;
        p_isa = 0;
        *v29 = v28;
        goto LABEL_11;
      }
    }

    else if (p_isa)
    {
      v22 = objc_alloc(MEMORY[0x1E696ABC0]);
      v23 = *MEMORY[0x1E698F240];
      v36 = *MEMORY[0x1E696A578];
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"value"];
      v37 = v11;
      v24 = MEMORY[0x1E695DF20];
      v25 = &v37;
      v26 = &v36;
      goto LABEL_39;
    }

    v10 = 0;
    goto LABEL_13;
  }

  if (!p_isa)
  {
    goto LABEL_15;
  }

  v18 = objc_alloc(MEMORY[0x1E696ABC0]);
  v19 = *MEMORY[0x1E698F240];
  v40 = *MEMORY[0x1E696A578];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"valueType"];
  v41[0] = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
  v20 = [v18 initWithDomain:v19 code:2 userInfo:v10];
  v21 = p_isa;
  p_isa = 0;
  *v21 = v20;
LABEL_14:

LABEL_15:
  v13 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppIntentInvocationValue *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_valueType)
  {
    PBDataWriterPlaceMark();
    [(BMAppIntentInvocationValueType *)self->_valueType writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_value)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_displayRepresentation)
  {
    PBDataWriterPlaceMark();
    [(BMAppIntentInvocationDisplayRepresentation *)self->_displayRepresentation writeTo:v4];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = BMAppIntentInvocationValue;
  v5 = [(BMEventBase *)&v24 init];
  if (!v5)
  {
    goto LABEL_33;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_31;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v25) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v25 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v25 & 0x7F) << v7;
        if ((v25 & 0x80) == 0)
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
        goto LABEL_31;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) == 3)
      {
        break;
      }

      if (v15 != 2)
      {
        if (v15 != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_32;
          }

          goto LABEL_30;
        }

        v25 = 0;
        v26 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_32;
        }

        v16 = [[BMAppIntentInvocationValueType alloc] initByReadFrom:v4];
        if (!v16)
        {
          goto LABEL_32;
        }

        v17 = 24;
        goto LABEL_28;
      }

      v18 = PBReaderReadData();
      value = v5->_value;
      v5->_value = v18;

LABEL_30:
      v21 = [v4 position];
      if (v21 >= [v4 length])
      {
        goto LABEL_31;
      }
    }

    v25 = 0;
    v26 = 0;
    if (!PBReaderPlaceMark())
    {
      goto LABEL_32;
    }

    v16 = [[BMAppIntentInvocationDisplayRepresentation alloc] initByReadFrom:v4];
    if (!v16)
    {
      goto LABEL_32;
    }

    v17 = 40;
LABEL_28:
    v20 = *(&v5->super.super.isa + v17);
    *(&v5->super.super.isa + v17) = v16;

    PBReaderRecallMark();
    goto LABEL_30;
  }

LABEL_31:
  if ([v4 hasError])
  {
LABEL_32:
    v22 = 0;
  }

  else
  {
LABEL_33:
    v22 = v5;
  }

  return v22;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMAppIntentInvocationValue *)self valueType];
  v5 = [(BMAppIntentInvocationValue *)self value];
  v6 = [(BMAppIntentInvocationValue *)self displayRepresentation];
  v7 = [v3 initWithFormat:@"BMAppIntentInvocationValue with valueType: %@, value: %@, displayRepresentation: %@", v4, v5, v6];

  return v7;
}

- (BMAppIntentInvocationValue)initWithValueType:(id)a3 value:(id)a4 displayRepresentation:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v14.receiver = self;
  v14.super_class = BMAppIntentInvocationValue;
  v12 = [(BMEventBase *)&v14 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_valueType, a3);
    objc_storeStrong(&v12->_value, a4);
    objc_storeStrong(&v12->_displayRepresentation, a5);
  }

  return v12;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"valueType_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_781];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"value" dataType:4 requestOnly:0 fieldNumber:2 protoDataType:14 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"displayRepresentation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_783];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __37__BMAppIntentInvocationValue_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 displayRepresentation];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __37__BMAppIntentInvocationValue_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 valueType];
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

    v8 = [[BMAppIntentInvocationValue alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end