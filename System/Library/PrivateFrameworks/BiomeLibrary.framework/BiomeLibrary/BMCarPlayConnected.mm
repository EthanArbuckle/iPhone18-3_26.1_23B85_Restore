@interface BMCarPlayConnected
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMCarPlayConnected)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMCarPlayConnected)initWithStarting:(id)starting reason:(int)reason;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMCarPlayConnected

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"starting" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"reason" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v7[0] = v2;
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
    if (!-[BMCarPlayConnected hasStarting](self, "hasStarting") && ![v5 hasStarting] || -[BMCarPlayConnected hasStarting](self, "hasStarting") && objc_msgSend(v5, "hasStarting") && (v6 = -[BMCarPlayConnected starting](self, "starting"), v6 == objc_msgSend(v5, "starting")))
    {
      reason = [(BMCarPlayConnected *)self reason];
      v7 = reason == [v5 reason];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)jsonDictionary
{
  v11[2] = *MEMORY[0x1E69E9840];
  if ([(BMCarPlayConnected *)self hasStarting])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMCarPlayConnected starting](self, "starting")}];
  }

  else
  {
    v3 = 0;
  }

  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMCarPlayConnected reason](self, "reason")}];
  v10[0] = @"starting";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"reason";
  v11[0] = null;
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (v4)
  {
    if (v3)
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (v3)
    {
      goto LABEL_10;
    }
  }

LABEL_10:
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BMCarPlayConnected)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v25[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"starting"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v8 = 0;
        selfCopy = 0;
        goto LABEL_18;
      }

      v12 = objc_alloc(MEMORY[0x1E696ABC0]);
      v13 = *MEMORY[0x1E698F240];
      v24 = *MEMORY[0x1E696A578];
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"starting"];
      v25[0] = v10;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      v14 = [v12 initWithDomain:v13 code:2 userInfo:v9];
      v8 = 0;
      selfCopy = 0;
      *error = v14;
      goto LABEL_17;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"reason"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v9;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v18 = objc_alloc(MEMORY[0x1E696ABC0]);
          v19 = *MEMORY[0x1E698F240];
          v22 = *MEMORY[0x1E696A578];
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"reason"];
          v23 = v20;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
          *error = [v18 initWithDomain:v19 code:2 userInfo:v21];
        }

        v10 = 0;
        selfCopy = 0;
        goto LABEL_17;
      }

      v11 = [MEMORY[0x1E696AD98] numberWithInt:BMCarPlayConnectedReasonFromString(v9)];
    }

    v10 = v11;
  }

  else
  {
    v10 = 0;
  }

  self = -[BMCarPlayConnected initWithStarting:reason:](self, "initWithStarting:reason:", v8, [v10 intValue]);
  selfCopy = self;
LABEL_17:

LABEL_18:
  v16 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMCarPlayConnected *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasStarting)
  {
    starting = self->_starting;
    PBDataWriterWriteBOOLField();
  }

  reason = self->_reason;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v32.receiver = self;
  v32.super_class = BMCarPlayConnected;
  v5 = [(BMEventBase *)&v32 init];
  if (!v5)
  {
    goto LABEL_49;
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
        v33 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v33 & 0x7F) << v7;
        if ((v33 & 0x80) == 0)
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

      if ((v14 >> 3) == 1)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v5->_hasStarting = 1;
        while (1)
        {
          v33 = 0;
          v25 = [fromCopy position] + 1;
          if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 1, v26 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v24 |= (v33 & 0x7F) << v22;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v13 = v23++ >= 9;
          if (v13)
          {
            LOBYTE(v28) = 0;
            goto LABEL_45;
          }
        }

        v28 = (v24 != 0) & ~[fromCopy hasError];
LABEL_45:
        v5->_starting = v28;
      }

      else if ((v14 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          v33 = 0;
          v18 = [fromCopy position] + 1;
          if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 1, v19 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v33 & 0x7F) << v15;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          if (v16++ > 8)
          {
            goto LABEL_42;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v17 > 2)
        {
LABEL_42:
          LODWORD(v17) = 0;
        }

        v5->_reason = v17;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_48;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_48:
    v30 = 0;
  }

  else
  {
LABEL_49:
    v30 = v5;
  }

  return v30;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMCarPlayConnected starting](self, "starting")}];
  v5 = BMCarPlayConnectedReasonAsString([(BMCarPlayConnected *)self reason]);
  v6 = [v3 initWithFormat:@"BMCarPlayConnected with starting: %@, reason: %@", v4, v5];

  return v6;
}

- (BMCarPlayConnected)initWithStarting:(id)starting reason:(int)reason
{
  startingCopy = starting;
  v9.receiver = self;
  v9.super_class = BMCarPlayConnected;
  v7 = [(BMEventBase *)&v9 init];
  if (v7)
  {
    v7->_dataVersion = [objc_opt_class() latestDataVersion];
    if (startingCopy)
    {
      v7->_hasStarting = 1;
      v7->_starting = [startingCopy BOOLValue];
    }

    else
    {
      v7->_hasStarting = 0;
      v7->_starting = 0;
    }

    v7->_reason = reason;
  }

  return v7;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"starting" number:1 type:12 subMessageClass:0];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"reason" number:2 type:4 subMessageClass:0];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

    v7 = [[BMCarPlayConnected alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[5] = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end