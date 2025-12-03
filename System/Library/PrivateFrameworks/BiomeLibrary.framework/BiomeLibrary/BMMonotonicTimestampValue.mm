@interface BMMonotonicTimestampValue
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMonotonicTimestampValue)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMMonotonicTimestampValue)initWithSuspendingNanosecondsSinceBoot:(id)boot continuousNanosecondsSinceBoot:(id)sinceBoot;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMonotonicTimestampValue

- (id)jsonDictionary
{
  v11[2] = *MEMORY[0x1E69E9840];
  if ([(BMMonotonicTimestampValue *)self hasSuspendingNanosecondsSinceBoot])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMonotonicTimestampValue suspendingNanosecondsSinceBoot](self, "suspendingNanosecondsSinceBoot")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMMonotonicTimestampValue *)self hasContinuousNanosecondsSinceBoot])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMonotonicTimestampValue continuousNanosecondsSinceBoot](self, "continuousNanosecondsSinceBoot")}];
  }

  else
  {
    v4 = 0;
  }

  v10[0] = @"suspendingNanosecondsSinceBoot";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"continuousNanosecondsSinceBoot";
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
      goto LABEL_13;
    }
  }

  else
  {

    if (v3)
    {
      goto LABEL_13;
    }
  }

LABEL_13:
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMMonotonicTimestampValue hasSuspendingNanosecondsSinceBoot](self, "hasSuspendingNanosecondsSinceBoot") || [v5 hasSuspendingNanosecondsSinceBoot])
    {
      if (![(BMMonotonicTimestampValue *)self hasSuspendingNanosecondsSinceBoot])
      {
        goto LABEL_13;
      }

      if (![v5 hasSuspendingNanosecondsSinceBoot])
      {
        goto LABEL_13;
      }

      suspendingNanosecondsSinceBoot = [(BMMonotonicTimestampValue *)self suspendingNanosecondsSinceBoot];
      if (suspendingNanosecondsSinceBoot != [v5 suspendingNanosecondsSinceBoot])
      {
        goto LABEL_13;
      }
    }

    if (!-[BMMonotonicTimestampValue hasContinuousNanosecondsSinceBoot](self, "hasContinuousNanosecondsSinceBoot") && ![v5 hasContinuousNanosecondsSinceBoot])
    {
      v8 = 1;
      goto LABEL_14;
    }

    if (-[BMMonotonicTimestampValue hasContinuousNanosecondsSinceBoot](self, "hasContinuousNanosecondsSinceBoot") && [v5 hasContinuousNanosecondsSinceBoot])
    {
      continuousNanosecondsSinceBoot = [(BMMonotonicTimestampValue *)self continuousNanosecondsSinceBoot];
      v8 = continuousNanosecondsSinceBoot == [v5 continuousNanosecondsSinceBoot];
    }

    else
    {
LABEL_13:
      v8 = 0;
    }

LABEL_14:

    goto LABEL_15;
  }

  v8 = 0;
LABEL_15:

  return v8;
}

- (BMMonotonicTimestampValue)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v24[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"suspendingNanosecondsSinceBoot"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v8 = 0;
        selfCopy = 0;
        goto LABEL_9;
      }

      v14 = objc_alloc(MEMORY[0x1E696ABC0]);
      v15 = *MEMORY[0x1E698F240];
      v23 = *MEMORY[0x1E696A578];
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"suspendingNanosecondsSinceBoot"];
      v24[0] = v10;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v16 = [v14 initWithDomain:v15 code:2 userInfo:v9];
      v8 = 0;
      selfCopy = 0;
      *error = v16;
      goto LABEL_8;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"continuousNanosecondsSinceBoot"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v17 = objc_alloc(MEMORY[0x1E696ABC0]);
        v18 = *MEMORY[0x1E698F240];
        v21 = *MEMORY[0x1E696A578];
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"continuousNanosecondsSinceBoot"];
        v22 = v19;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        *error = [v17 initWithDomain:v18 code:2 userInfo:v20];
      }

      v10 = 0;
      selfCopy = 0;
      goto LABEL_8;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  self = [(BMMonotonicTimestampValue *)self initWithSuspendingNanosecondsSinceBoot:v8 continuousNanosecondsSinceBoot:v10];
  selfCopy = self;
LABEL_8:

LABEL_9:
  v12 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMonotonicTimestampValue *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_hasSuspendingNanosecondsSinceBoot)
  {
    suspendingNanosecondsSinceBoot = self->_suspendingNanosecondsSinceBoot;
    PBDataWriterWriteUint64Field();
    toCopy = v7;
  }

  if (self->_hasContinuousNanosecondsSinceBoot)
  {
    continuousNanosecondsSinceBoot = self->_continuousNanosecondsSinceBoot;
    PBDataWriterWriteUint64Field();
    toCopy = v7;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v32.receiver = self;
  v32.super_class = BMMonotonicTimestampValue;
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
        v24 = 0;
        v25 = 0;
        v17 = 0;
        v5->_hasContinuousNanosecondsSinceBoot = 1;
        while (1)
        {
          v33 = 0;
          v26 = [fromCopy position] + 1;
          if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 = (((v33 & 0x7F) << v24) | v17);
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v21 = v25++ > 8;
          if (v21)
          {
            v22 = 0;
            v23 = &OBJC_IVAR___BMMonotonicTimestampValue__continuousNanosecondsSinceBoot;
            goto LABEL_45;
          }
        }

        v23 = &OBJC_IVAR___BMMonotonicTimestampValue__continuousNanosecondsSinceBoot;
      }

      else
      {
        if ((v14 >> 3) != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_48;
          }

          goto LABEL_46;
        }

        v15 = 0;
        v16 = 0;
        v17 = 0;
        v5->_hasSuspendingNanosecondsSinceBoot = 1;
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

          v17 = (((v33 & 0x7F) << v15) | v17);
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v21 = v16++ > 8;
          if (v21)
          {
            v22 = 0;
            v23 = &OBJC_IVAR___BMMonotonicTimestampValue__suspendingNanosecondsSinceBoot;
            goto LABEL_45;
          }
        }

        v23 = &OBJC_IVAR___BMMonotonicTimestampValue__suspendingNanosecondsSinceBoot;
      }

      if ([fromCopy hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v17;
      }

LABEL_45:
      *(&v5->super.super.isa + *v23) = v22;
LABEL_46:
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
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMonotonicTimestampValue suspendingNanosecondsSinceBoot](self, "suspendingNanosecondsSinceBoot")}];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMonotonicTimestampValue continuousNanosecondsSinceBoot](self, "continuousNanosecondsSinceBoot")}];
  v6 = [v3 initWithFormat:@"BMMonotonicTimestampValue with suspendingNanosecondsSinceBoot: %@, continuousNanosecondsSinceBoot: %@", v4, v5];

  return v6;
}

- (BMMonotonicTimestampValue)initWithSuspendingNanosecondsSinceBoot:(id)boot continuousNanosecondsSinceBoot:(id)sinceBoot
{
  bootCopy = boot;
  sinceBootCopy = sinceBoot;
  v12.receiver = self;
  v12.super_class = BMMonotonicTimestampValue;
  v8 = [(BMEventBase *)&v12 init];
  if (v8)
  {
    v8->_dataVersion = [objc_opt_class() latestDataVersion];
    if (bootCopy)
    {
      v8->_hasSuspendingNanosecondsSinceBoot = 1;
      unsignedLongLongValue = [bootCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue = 0;
      v8->_hasSuspendingNanosecondsSinceBoot = 0;
    }

    v8->_suspendingNanosecondsSinceBoot = unsignedLongLongValue;
    if (sinceBootCopy)
    {
      v8->_hasContinuousNanosecondsSinceBoot = 1;
      unsignedLongLongValue2 = [sinceBootCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue2 = 0;
      v8->_hasContinuousNanosecondsSinceBoot = 0;
    }

    v8->_continuousNanosecondsSinceBoot = unsignedLongLongValue2;
  }

  return v8;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suspendingNanosecondsSinceBoot" number:1 type:5 subMessageClass:0];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"continuousNanosecondsSinceBoot" number:2 type:5 subMessageClass:0];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"suspendingNanosecondsSinceBoot" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:5 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"continuousNanosecondsSinceBoot" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:5 convertedType:0];
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

    v8 = [[BMMonotonicTimestampValue alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end