@interface BMAppIntentInvocationImage
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMAppIntentInvocationImage)initWithDisplayStyle:(int)a3 data:(id)a4;
- (BMAppIntentInvocationImage)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMAppIntentInvocationImage

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"displayStyle" number:1 type:4 subMessageClass:0];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"data" number:2 type:14 subMessageClass:0];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMAppIntentInvocationImage *)self displayStyle];
    if (v6 == [v5 displayStyle])
    {
      v7 = [(BMAppIntentInvocationImage *)self data];
      v8 = [v5 data];
      if (v7 == v8)
      {
        v11 = 1;
      }

      else
      {
        v9 = [(BMAppIntentInvocationImage *)self data];
        v10 = [v5 data];
        v11 = [v9 isEqual:v10];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)jsonDictionary
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppIntentInvocationImage displayStyle](self, "displayStyle")}];
  v4 = [(BMAppIntentInvocationImage *)self data];
  v5 = [v4 base64EncodedStringWithOptions:0];

  v11[0] = @"displayStyle";
  v6 = v3;
  if (!v3)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = @"data";
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

- (BMAppIntentInvocationImage)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"displayStyle"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_9:
    v10 = [v6 objectForKeyedSubscript:@"data"];
    if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v11 = 0;
LABEL_12:
      self = -[BMAppIntentInvocationImage initWithDisplayStyle:data:](self, "initWithDisplayStyle:data:", [v8 intValue], v11);
      v12 = self;
      goto LABEL_13;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
      goto LABEL_12;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v10 options:0];
      if (v11)
      {
        goto LABEL_12;
      }

      if (a4)
      {
        v15 = objc_alloc(MEMORY[0x1E696ABC0]);
        v16 = *MEMORY[0x1E698F240];
        v27 = *MEMORY[0x1E696A578];
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"data"];
        v28 = v17;
        v18 = MEMORY[0x1E695DF20];
        v19 = &v28;
        v20 = &v27;
LABEL_25:
        v24 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:1];
        *a4 = [v15 initWithDomain:v16 code:2 userInfo:v24];
      }
    }

    else if (a4)
    {
      v15 = objc_alloc(MEMORY[0x1E696ABC0]);
      v16 = *MEMORY[0x1E698F240];
      v25 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"data"];
      v26 = v17;
      v18 = MEMORY[0x1E695DF20];
      v19 = &v26;
      v20 = &v25;
      goto LABEL_25;
    }

    v11 = 0;
    v12 = 0;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
LABEL_8:
    v8 = v9;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:BMAppIntentInvocationImageDisplayStyleFromString(v7)];
    goto LABEL_8;
  }

  if (!a4)
  {
    v8 = 0;
    v12 = 0;
    goto LABEL_14;
  }

  v21 = objc_alloc(MEMORY[0x1E696ABC0]);
  v22 = *MEMORY[0x1E698F240];
  v29 = *MEMORY[0x1E696A578];
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"displayStyle"];
  v30[0] = v11;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v23 = [v21 initWithDomain:v22 code:2 userInfo:v10];
  v8 = 0;
  v12 = 0;
  *a4 = v23;
LABEL_13:

LABEL_14:
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppIntentInvocationImage *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  displayStyle = self->_displayStyle;
  v6 = v4;
  PBDataWriterWriteUint32Field();
  if (self->_data)
  {
    PBDataWriterWriteDataField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = BMAppIntentInvocationImage;
  v5 = [(BMEventBase *)&v27 init];
  if (!v5)
  {
    goto LABEL_39;
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
        v28 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v28 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v28 & 0x7F) << v7;
        if ((v28 & 0x80) == 0)
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
        v22 = PBReaderReadData();
        data = v5->_data;
        v5->_data = v22;
      }

      else if ((v14 >> 3) == 1)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          v28 = 0;
          v18 = [v4 position] + 1;
          if (v18 >= [v4 position] && (v19 = objc_msgSend(v4, "position") + 1, v19 <= objc_msgSend(v4, "length")))
          {
            v20 = [v4 data];
            [v20 getBytes:&v28 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v17 |= (v28 & 0x7F) << v15;
          if ((v28 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          if (v16++ > 8)
          {
            goto LABEL_34;
          }
        }

        if (([v4 hasError] & 1) != 0 || v17 > 2)
        {
LABEL_34:
          LODWORD(v17) = 0;
        }

        v5->_displayStyle = v17;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_38;
      }

      v24 = [v4 position];
    }

    while (v24 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_38:
    v25 = 0;
  }

  else
  {
LABEL_39:
    v25 = v5;
  }

  return v25;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMAppIntentInvocationImageDisplayStyleAsString([(BMAppIntentInvocationImage *)self displayStyle]);
  v5 = [(BMAppIntentInvocationImage *)self data];
  v6 = [v3 initWithFormat:@"BMAppIntentInvocationImage with displayStyle: %@, data: %@", v4, v5];

  return v6;
}

- (BMAppIntentInvocationImage)initWithDisplayStyle:(int)a3 data:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v14.receiver = self;
  v14.super_class = BMAppIntentInvocationImage;
  v7 = [(BMEventBase *)&v14 init];
  if (v7)
  {
    v7->_dataVersion = [objc_opt_class() latestDataVersion];
    v7->_displayStyle = a3;
    if ([v6 length] <= 0x40000)
    {
      v11 = v6;
      p_super = &v7->_data->super;
      v7->_data = v11;
    }

    else
    {
      p_super = __biome_log_for_category();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
      {
        v9 = objc_opt_class();
        v10 = [v6 length];
        *buf = 138543874;
        v16 = v9;
        v17 = 2114;
        v18 = @"data";
        v19 = 2048;
        v20 = v10;
        _os_log_fault_impl(&dword_184E8D000, p_super, OS_LOG_TYPE_FAULT, "%{public}@ dropping field '%{public}@' because %llu bytes is too large", buf, 0x20u);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"displayStyle" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"data" dataType:4 requestOnly:0 fieldNumber:2 protoDataType:14 convertedType:0];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
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

    v8 = [[BMAppIntentInvocationImage alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end