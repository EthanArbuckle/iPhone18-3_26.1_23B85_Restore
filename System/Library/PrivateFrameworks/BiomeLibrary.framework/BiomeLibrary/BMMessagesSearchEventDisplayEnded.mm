@interface BMMessagesSearchEventDisplayEnded
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMessagesSearchEventDisplayEnded)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMMessagesSearchEventDisplayEnded)initWithReason:(int)reason;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
@end

@implementation BMMessagesSearchEventDisplayEnded

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    reason = [(BMMessagesSearchEventDisplayEnded *)self reason];
    reason2 = [v5 reason];

    v8 = reason == reason2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)jsonDictionary
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMessagesSearchEventDisplayEnded reason](self, "reason")}];
  v7 = @"reason";
  null = v2;
  if (!v2)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = null;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!v2)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BMMessagesSearchEventDisplayEnded)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = [dictionary objectForKeyedSubscript:@"reason"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    error = 0;
LABEL_9:
    self = -[BMMessagesSearchEventDisplayEnded initWithReason:](self, "initWithReason:", [error intValue]);
    selfCopy = self;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
LABEL_8:
    error = v7;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:BMMessagesSearchEventDisplayEndedReasonFromString(v6)];
    goto LABEL_8;
  }

  if (error)
  {
    v11 = objc_alloc(MEMORY[0x1E696ABC0]);
    v12 = *MEMORY[0x1E698F240];
    v15 = *MEMORY[0x1E696A578];
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"reason"];
    v16[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *error = [v11 initWithDomain:v12 code:2 userInfo:v14];

    error = 0;
  }

  selfCopy = 0;
LABEL_10:

  v9 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMessagesSearchEventDisplayEnded *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v25.receiver = self;
  v25.super_class = BMMessagesSearchEventDisplayEnded;
  v5 = [(BMEventBase *)&v25 init];
  if (!v5)
  {
    goto LABEL_37;
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
        v26 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v26 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v26 & 0x7F) << v7;
        if ((v26 & 0x80) == 0)
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

      if ((v14 >> 3) == 1)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          v26 = 0;
          v18 = [fromCopy position] + 1;
          if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 1, v19 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v26 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v26 & 0x7F) << v15;
          if ((v26 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          if (v16++ > 8)
          {
            goto LABEL_32;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v17 > 3)
        {
LABEL_32:
          LODWORD(v17) = 0;
        }

        v5->_reason = v17;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_36;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_36:
    v23 = 0;
  }

  else
  {
LABEL_37:
    v23 = v5;
  }

  return v23;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMMessagesSearchEventDisplayEndedReasonAsString([(BMMessagesSearchEventDisplayEnded *)self reason]);
  v5 = [v3 initWithFormat:@"BMMessagesSearchEventDisplayEnded with reason: %@", v4];

  return v5;
}

- (BMMessagesSearchEventDisplayEnded)initWithReason:(int)reason
{
  v6.receiver = self;
  v6.super_class = BMMessagesSearchEventDisplayEnded;
  v4 = [(BMEventBase *)&v6 init];
  if (v4)
  {
    v4->_dataVersion = [objc_opt_class() latestDataVersion];
    v4->_reason = reason;
  }

  return v4;
}

+ (id)protoFields
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"reason" number:1 type:4 subMessageClass:0];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)columns
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"reason" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
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

    v8 = [[BMMessagesSearchEventDisplayEnded alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end