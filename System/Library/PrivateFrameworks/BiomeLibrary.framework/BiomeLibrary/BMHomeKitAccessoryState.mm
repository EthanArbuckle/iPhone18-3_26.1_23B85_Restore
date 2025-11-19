@interface BMHomeKitAccessoryState
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMHomeKitAccessoryState)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMHomeKitAccessoryState)initWithMediaPropertyType:(id)a3 valueType:(int)a4 dataValue:(id)a5 stringValue:(id)a6 numValue:(id)a7;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMHomeKitAccessoryState

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMHomeKitAccessoryState *)self mediaPropertyType];
    v7 = [v5 mediaPropertyType];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMHomeKitAccessoryState *)self mediaPropertyType];
      v10 = [v5 mediaPropertyType];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_21;
      }
    }

    v13 = [(BMHomeKitAccessoryState *)self valueType];
    if (v13 == [v5 valueType])
    {
      v14 = [(BMHomeKitAccessoryState *)self dataValue];
      v15 = [v5 dataValue];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(BMHomeKitAccessoryState *)self dataValue];
        v18 = [v5 dataValue];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_21;
        }
      }

      v20 = [(BMHomeKitAccessoryState *)self stringValue];
      v21 = [v5 stringValue];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(BMHomeKitAccessoryState *)self stringValue];
        v24 = [v5 stringValue];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_21;
        }
      }

      if (!-[BMHomeKitAccessoryState hasNumValue](self, "hasNumValue") && ![v5 hasNumValue])
      {
        v12 = 1;
        goto LABEL_22;
      }

      if (-[BMHomeKitAccessoryState hasNumValue](self, "hasNumValue") && [v5 hasNumValue])
      {
        [(BMHomeKitAccessoryState *)self numValue];
        v27 = v26;
        [v5 numValue];
        v12 = v27 == v28;
LABEL_22:

        goto LABEL_23;
      }
    }

LABEL_21:
    v12 = 0;
    goto LABEL_22;
  }

  v12 = 0;
LABEL_23:

  return v12;
}

- (id)jsonDictionary
{
  v26[5] = *MEMORY[0x1E69E9840];
  v3 = [(BMHomeKitAccessoryState *)self mediaPropertyType];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMHomeKitAccessoryState valueType](self, "valueType")}];
  v5 = [(BMHomeKitAccessoryState *)self dataValue];
  v6 = [v5 base64EncodedStringWithOptions:0];

  v7 = [(BMHomeKitAccessoryState *)self stringValue];
  if (![(BMHomeKitAccessoryState *)self hasNumValue]|| ([(BMHomeKitAccessoryState *)self numValue], fabs(v8) == INFINITY))
  {
    v10 = 0;
  }

  else
  {
    [(BMHomeKitAccessoryState *)self numValue];
    v9 = MEMORY[0x1E696AD98];
    [(BMHomeKitAccessoryState *)self numValue];
    v10 = [v9 numberWithDouble:?];
  }

  v21 = @"mediaPropertyType";
  v11 = v3;
  if (!v3)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v11;
  v26[0] = v11;
  v22 = @"valueType";
  v12 = v4;
  if (!v4)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v26[1] = v12;
  v23 = @"dataValue";
  v13 = v6;
  if (!v6)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = v13;
  v24 = @"stringValue";
  v14 = v7;
  if (!v7)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = v14;
  v25 = @"numValue";
  v15 = v10;
  if (!v10)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v21 count:{5, v19}];
  if (v10)
  {
    if (v7)
    {
      goto LABEL_17;
    }
  }

  else
  {

    if (v7)
    {
LABEL_17:
      if (v6)
      {
        goto LABEL_18;
      }

      goto LABEL_25;
    }
  }

  if (v6)
  {
LABEL_18:
    if (v4)
    {
      goto LABEL_19;
    }

LABEL_26:

    if (v3)
    {
      goto LABEL_20;
    }

    goto LABEL_27;
  }

LABEL_25:

  if (!v4)
  {
    goto LABEL_26;
  }

LABEL_19:
  if (v3)
  {
    goto LABEL_20;
  }

LABEL_27:

LABEL_20:
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BMHomeKitAccessoryState)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v52[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"mediaPropertyType"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v40 = 0;
LABEL_4:
    v8 = [v6 objectForKeyedSubscript:@"valueType"];
    v39 = v8;
    if (v8 && (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v14 = 0;
            goto LABEL_45;
          }

          v32 = objc_alloc(MEMORY[0x1E696ABC0]);
          v33 = *MEMORY[0x1E698F240];
          v49 = *MEMORY[0x1E696A578];
          v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"valueType"];
          v50 = v16;
          v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
          v14 = 0;
          *a4 = [v32 initWithDomain:v33 code:2 userInfo:v15];
          a4 = 0;
          goto LABEL_44;
        }

        v10 = [MEMORY[0x1E696AD98] numberWithInt:BMHomeKitAccessoryStateValueTypeFromString(v9)];
      }

      v37 = v10;
    }

    else
    {
      v37 = 0;
    }

    v15 = [v6 objectForKeyedSubscript:@"dataValue"];
    v38 = v7;
    if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v16 = 0;
      goto LABEL_19;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
      goto LABEL_19;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v15 options:0];
      if (v16)
      {
LABEL_19:
        v17 = [v6 objectForKeyedSubscript:@"stringValue"];
        if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v18 = 0;
          goto LABEL_22;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v17;
LABEL_22:
          v19 = [v6 objectForKeyedSubscript:@"numValue"];
          if (!v19 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v20 = 0;
LABEL_25:
            a4 = v37;
            v14 = -[BMHomeKitAccessoryState initWithMediaPropertyType:valueType:dataValue:stringValue:numValue:](self, "initWithMediaPropertyType:valueType:dataValue:stringValue:numValue:", v40, [v37 intValue], v16, v18, v20);
            self = v14;
LABEL_42:

LABEL_43:
            v7 = v38;
LABEL_44:

            v9 = v39;
            goto LABEL_45;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = v19;
            goto LABEL_25;
          }

          if (a4)
          {
            v36 = objc_alloc(MEMORY[0x1E696ABC0]);
            v34 = *MEMORY[0x1E698F240];
            v41 = *MEMORY[0x1E696A578];
            v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numValue"];
            v42 = v28;
            v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
            *a4 = [v36 initWithDomain:v34 code:2 userInfo:v29];
          }

          v20 = 0;
          v14 = 0;
LABEL_41:
          a4 = v37;
          goto LABEL_42;
        }

        if (a4)
        {
          v35 = objc_alloc(MEMORY[0x1E696ABC0]);
          v26 = *MEMORY[0x1E698F240];
          v43 = *MEMORY[0x1E696A578];
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"stringValue"];
          v44 = v20;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
          v27 = [v35 initWithDomain:v26 code:2 userInfo:v19];
          v18 = 0;
          v14 = 0;
          *a4 = v27;
          goto LABEL_41;
        }

        v18 = 0;
        v14 = 0;
LABEL_54:
        a4 = v37;
        goto LABEL_43;
      }

      if (a4)
      {
        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v47 = *MEMORY[0x1E696A578];
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"dataValue"];
        v48 = v18;
        v23 = MEMORY[0x1E695DF20];
        v24 = &v48;
        v25 = &v47;
LABEL_51:
        v17 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:1];
        v16 = 0;
        v14 = 0;
        *a4 = [v21 initWithDomain:v22 code:2 userInfo:v17];
        goto LABEL_54;
      }
    }

    else if (a4)
    {
      v21 = objc_alloc(MEMORY[0x1E696ABC0]);
      v22 = *MEMORY[0x1E698F240];
      v45 = *MEMORY[0x1E696A578];
      v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"dataValue"];
      v46 = v18;
      v23 = MEMORY[0x1E695DF20];
      v24 = &v46;
      v25 = &v45;
      goto LABEL_51;
    }

    v16 = 0;
    v14 = 0;
    a4 = v37;
    goto LABEL_44;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v40 = v7;
    goto LABEL_4;
  }

  if (!a4)
  {
    v40 = 0;
    v14 = 0;
    goto LABEL_46;
  }

  v11 = objc_alloc(MEMORY[0x1E696ABC0]);
  v12 = *MEMORY[0x1E698F240];
  v51 = *MEMORY[0x1E696A578];
  v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"mediaPropertyType"];
  v52[0] = v13;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
  v40 = 0;
  v14 = 0;
  *a4 = [v11 initWithDomain:v12 code:2 userInfo:v9];
  a4 = v13;
LABEL_45:

LABEL_46:
  v30 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMHomeKitAccessoryState *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  if (self->_mediaPropertyType)
  {
    PBDataWriterWriteStringField();
  }

  valueType = self->_valueType;
  PBDataWriterWriteUint32Field();
  if (self->_dataValue)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
  }

  v5 = v7;
  if (self->_hasNumValue)
  {
    numValue = self->_numValue;
    PBDataWriterWriteDoubleField();
    v5 = v7;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = BMHomeKitAccessoryState;
  v5 = [(BMEventBase *)&v32 init];
  if (!v5)
  {
    goto LABEL_51;
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
        LOBYTE(v33) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v33 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v33) & 0x7F) << v7;
        if ((LOBYTE(v33) & 0x80) == 0)
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

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 2)
      {
        if (v15 == 1)
        {
          v25 = PBReaderReadString();
          v26 = 32;
          goto LABEL_39;
        }

        if (v15 != 2)
        {
LABEL_40:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_50;
          }

          goto LABEL_48;
        }

        v18 = 0;
        v19 = 0;
        v20 = 0;
        while (1)
        {
          LOBYTE(v33) = 0;
          v21 = [v4 position] + 1;
          if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
          {
            v23 = [v4 data];
            [v23 getBytes:&v33 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v20 |= (LOBYTE(v33) & 0x7F) << v18;
          if ((LOBYTE(v33) & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          if (v19++ > 8)
          {
            goto LABEL_44;
          }
        }

        if (([v4 hasError] & 1) != 0 || v20 > 3)
        {
LABEL_44:
          LODWORD(v20) = 0;
        }

        v5->_valueType = v20;
      }

      else
      {
        if (v15 == 3)
        {
          v25 = PBReaderReadData();
          v26 = 40;
LABEL_39:
          v27 = *(&v5->super.super.isa + v26);
          *(&v5->super.super.isa + v26) = v25;

          goto LABEL_48;
        }

        if (v15 == 4)
        {
          v25 = PBReaderReadString();
          v26 = 48;
          goto LABEL_39;
        }

        if (v15 != 5)
        {
          goto LABEL_40;
        }

        v5->_hasNumValue = 1;
        v33 = 0.0;
        v16 = [v4 position] + 8;
        if (v16 >= [v4 position] && (v17 = objc_msgSend(v4, "position") + 8, v17 <= objc_msgSend(v4, "length")))
        {
          v28 = [v4 data];
          [v28 getBytes:&v33 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_numValue = v33;
      }

LABEL_48:
      v29 = [v4 position];
    }

    while (v29 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_50:
    v30 = 0;
  }

  else
  {
LABEL_51:
    v30 = v5;
  }

  return v30;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMHomeKitAccessoryState *)self mediaPropertyType];
  v5 = BMHomeKitAccessoryStateValueTypeAsString([(BMHomeKitAccessoryState *)self valueType]);
  v6 = [(BMHomeKitAccessoryState *)self dataValue];
  v7 = [(BMHomeKitAccessoryState *)self stringValue];
  v8 = MEMORY[0x1E696AD98];
  [(BMHomeKitAccessoryState *)self numValue];
  v9 = [v8 numberWithDouble:?];
  v10 = [v3 initWithFormat:@"BMHomeKitAccessoryState with mediaPropertyType: %@, valueType: %@, dataValue: %@, stringValue: %@, numValue: %@", v4, v5, v6, v7, v9];

  return v10;
}

- (BMHomeKitAccessoryState)initWithMediaPropertyType:(id)a3 valueType:(int)a4 dataValue:(id)a5 stringValue:(id)a6 numValue:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = BMHomeKitAccessoryState;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_mediaPropertyType, a3);
    v17->_valueType = a4;
    objc_storeStrong(&v17->_dataValue, a5);
    objc_storeStrong(&v17->_stringValue, a6);
    if (v16)
    {
      v17->_hasNumValue = 1;
      [v16 doubleValue];
    }

    else
    {
      v17->_hasNumValue = 0;
      v18 = -1.0;
    }

    v17->_numValue = v18;
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mediaPropertyType" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"valueType" number:2 type:4 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dataValue" number:3 type:14 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stringValue" number:4 type:13 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numValue" number:5 type:0 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mediaPropertyType" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"valueType" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"dataValue" dataType:4 requestOnly:0 fieldNumber:3 protoDataType:14 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"stringValue" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numValue" dataType:1 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  if (a4)
  {
    if (a4 != 1)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:v5];
    v7 = BMHomeKitAccessoryState;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:v5];
    v7 = BMHomeKitAccessoryState_v0;
  }

  v8 = [[v7 alloc] initByReadFrom:v6];
  v9 = v8;
  if (v8)
  {
    *(v8 + 20) = a4;
  }

LABEL_9:

  return v9;
}

@end