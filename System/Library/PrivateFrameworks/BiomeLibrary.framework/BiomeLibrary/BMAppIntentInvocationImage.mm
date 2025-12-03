@interface BMAppIntentInvocationImage
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAppIntentInvocationImage)initWithDisplayStyle:(int)style data:(id)data;
- (BMAppIntentInvocationImage)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    displayStyle = [(BMAppIntentInvocationImage *)self displayStyle];
    if (displayStyle == [v5 displayStyle])
    {
      data = [(BMAppIntentInvocationImage *)self data];
      data2 = [v5 data];
      if (data == data2)
      {
        v11 = 1;
      }

      else
      {
        data3 = [(BMAppIntentInvocationImage *)self data];
        data4 = [v5 data];
        v11 = [data3 isEqual:data4];
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
  data = [(BMAppIntentInvocationImage *)self data];
  v5 = [data base64EncodedStringWithOptions:0];

  v11[0] = @"displayStyle";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = @"data";
  v12[0] = null;
  null2 = v5;
  if (!v5)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = null2;
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

- (BMAppIntentInvocationImage)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v30[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"displayStyle"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_9:
    v10 = [dictionaryCopy objectForKeyedSubscript:@"data"];
    if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v11 = 0;
LABEL_12:
      self = -[BMAppIntentInvocationImage initWithDisplayStyle:data:](self, "initWithDisplayStyle:data:", [v8 intValue], v11);
      selfCopy = self;
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

      if (error)
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
        *error = [v15 initWithDomain:v16 code:2 userInfo:v24];
      }
    }

    else if (error)
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
    selfCopy = 0;
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

  if (!error)
  {
    v8 = 0;
    selfCopy = 0;
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
  selfCopy = 0;
  *error = v23;
LABEL_13:

LABEL_14:
  v13 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppIntentInvocationImage *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  displayStyle = self->_displayStyle;
  v6 = toCopy;
  PBDataWriterWriteUint32Field();
  if (self->_data)
  {
    PBDataWriterWriteDataField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v27.receiver = self;
  v27.super_class = BMAppIntentInvocationImage;
  v5 = [(BMEventBase *)&v27 init];
  if (!v5)
  {
    goto LABEL_39;
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
        v28 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v28 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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
          v18 = [fromCopy position] + 1;
          if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 1, v19 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v28 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        if (([fromCopy hasError] & 1) != 0 || v17 > 2)
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

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  data = [(BMAppIntentInvocationImage *)self data];
  v6 = [v3 initWithFormat:@"BMAppIntentInvocationImage with displayStyle: %@, data: %@", v4, data];

  return v6;
}

- (BMAppIntentInvocationImage)initWithDisplayStyle:(int)style data:(id)data
{
  v21 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = BMAppIntentInvocationImage;
  v7 = [(BMEventBase *)&v14 init];
  if (v7)
  {
    v7->_dataVersion = [objc_opt_class() latestDataVersion];
    v7->_displayStyle = style;
    if ([dataCopy length] <= 0x40000)
    {
      v11 = dataCopy;
      p_super = &v7->_data->super;
      v7->_data = v11;
    }

    else
    {
      p_super = __biome_log_for_category();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
      {
        v9 = objc_opt_class();
        v10 = [dataCopy length];
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