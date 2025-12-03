@interface BMUserFocusSleepMode
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMUserFocusSleepMode)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMUserFocusSleepMode)initWithState:(int)state changeReason:(int)reason expectedEndDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (NSDate)expectedEndDate;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMUserFocusSleepMode

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    state = [(BMUserFocusSleepMode *)self state];
    if (state == [v5 state] && (v7 = -[BMUserFocusSleepMode changeReason](self, "changeReason"), v7 == objc_msgSend(v5, "changeReason")))
    {
      expectedEndDate = [(BMUserFocusSleepMode *)self expectedEndDate];
      expectedEndDate2 = [v5 expectedEndDate];
      if (expectedEndDate == expectedEndDate2)
      {
        v12 = 1;
      }

      else
      {
        expectedEndDate3 = [(BMUserFocusSleepMode *)self expectedEndDate];
        expectedEndDate4 = [v5 expectedEndDate];
        v12 = [expectedEndDate3 isEqual:expectedEndDate4];
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (NSDate)expectedEndDate
{
  if (self->_hasRaw_expectedEndDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_expectedEndDate];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v16[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMUserFocusSleepMode state](self, "state")}];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMUserFocusSleepMode changeReason](self, "changeReason")}];
  expectedEndDate = [(BMUserFocusSleepMode *)self expectedEndDate];
  if (expectedEndDate)
  {
    v6 = MEMORY[0x1E696AD98];
    expectedEndDate2 = [(BMUserFocusSleepMode *)self expectedEndDate];
    [expectedEndDate2 timeIntervalSinceReferenceDate];
    v8 = [v6 numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  v15[0] = @"state";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = null;
  v15[1] = @"changeReason";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = null2;
  v15[2] = @"expectedEndDate";
  null3 = v8;
  if (!v8)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = null3;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  if (v8)
  {
    if (v4)
    {
      goto LABEL_12;
    }

LABEL_17:

    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (!v4)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (v3)
  {
    goto LABEL_13;
  }

LABEL_18:

LABEL_13:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BMUserFocusSleepMode)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v39[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"state"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_9:
    v10 = [dictionaryCopy objectForKeyedSubscript:@"changeReason"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v10;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v11 = 0;
            selfCopy = 0;
            goto LABEL_27;
          }

          v32 = objc_alloc(MEMORY[0x1E696ABC0]);
          v27 = *MEMORY[0x1E698F240];
          v36 = *MEMORY[0x1E696A578];
          v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"changeReason"];
          v37 = v14;
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
          v28 = [v32 initWithDomain:v27 code:2 userInfo:v13];
          v11 = 0;
          selfCopy = 0;
          *error = v28;
          goto LABEL_26;
        }

        v12 = [MEMORY[0x1E696AD98] numberWithInt:BMUserFocusSleepModeChangeReasonFromString(v10)];
      }

      v11 = v12;
    }

    else
    {
      v11 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"expectedEndDate"];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = MEMORY[0x1E695DF00];
        v16 = v13;
        v17 = [v15 alloc];
        [v16 doubleValue];
        v19 = v18;

        v20 = [v17 initWithTimeIntervalSinceReferenceDate:v19];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v14 = [v21 dateFromString:v13];

          goto LABEL_25;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v33 = objc_alloc(MEMORY[0x1E696ABC0]);
            v31 = *MEMORY[0x1E698F240];
            v34 = *MEMORY[0x1E696A578];
            v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"expectedEndDate"];
            v35 = v29;
            v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
            *error = [v33 initWithDomain:v31 code:2 userInfo:v30];
          }

          v14 = 0;
          selfCopy = 0;
          goto LABEL_26;
        }

        v20 = v13;
      }

      v14 = v20;
    }

    else
    {
      v14 = 0;
    }

LABEL_25:
    self = -[BMUserFocusSleepMode initWithState:changeReason:expectedEndDate:](self, "initWithState:changeReason:expectedEndDate:", [v8 intValue], objc_msgSend(v11, "intValue"), v14);
    selfCopy = self;
LABEL_26:

    goto LABEL_27;
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
    v9 = [MEMORY[0x1E696AD98] numberWithInt:BMUserFocusSleepModeStateFromString(v7)];
    goto LABEL_8;
  }

  if (!error)
  {
    v8 = 0;
    selfCopy = 0;
    goto LABEL_28;
  }

  v25 = objc_alloc(MEMORY[0x1E696ABC0]);
  v26 = *MEMORY[0x1E698F240];
  v38 = *MEMORY[0x1E696A578];
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"state"];
  v39[0] = v11;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  v8 = 0;
  selfCopy = 0;
  *error = [v25 initWithDomain:v26 code:2 userInfo:v10];
LABEL_27:

LABEL_28:
  v23 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMUserFocusSleepMode *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  state = self->_state;
  PBDataWriterWriteUint32Field();
  changeReason = self->_changeReason;
  PBDataWriterWriteUint32Field();
  if (self->_hasRaw_expectedEndDate)
  {
    raw_expectedEndDate = self->_raw_expectedEndDate;
    PBDataWriterWriteDoubleField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v35.receiver = self;
  v35.super_class = BMUserFocusSleepMode;
  v5 = [(BMEventBase *)&v35 init];
  if (!v5)
  {
    goto LABEL_58;
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
        LOBYTE(v36) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v36 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v36) & 0x7F) << v7;
        if ((LOBYTE(v36) & 0x80) == 0)
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

      v15 = v14 >> 3;
      if ((v14 >> 3) == 1)
      {
        v25 = 0;
        v26 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v36) = 0;
          v27 = [fromCopy position] + 1;
          if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v36 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (LOBYTE(v36) & 0x7F) << v25;
          if ((LOBYTE(v36) & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v22 = v26++ > 8;
          if (v22)
          {
            goto LABEL_46;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v18 > 3)
        {
LABEL_46:
          LODWORD(v18) = 0;
        }

        v30 = 36;
      }

      else
      {
        if (v15 == 3)
        {
          v5->_hasRaw_expectedEndDate = 1;
          v36 = 0.0;
          v23 = [fromCopy position] + 8;
          if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 8, v24 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v36 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v5->_raw_expectedEndDate = v36;
          goto LABEL_55;
        }

        if (v15 != 2)
        {
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_57;
          }

          goto LABEL_55;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v36) = 0;
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v36 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (LOBYTE(v36) & 0x7F) << v16;
          if ((LOBYTE(v36) & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v22 = v17++ > 8;
          if (v22)
          {
            goto LABEL_50;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v18 > 9)
        {
LABEL_50:
          LODWORD(v18) = 0;
        }

        v30 = 40;
      }

      *(&v5->super.super.isa + v30) = v18;
LABEL_55:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_57:
    v33 = 0;
  }

  else
  {
LABEL_58:
    v33 = v5;
  }

  return v33;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMUserFocusSleepModeStateAsString([(BMUserFocusSleepMode *)self state]);
  v5 = BMUserFocusSleepModeChangeReasonAsString([(BMUserFocusSleepMode *)self changeReason]);
  expectedEndDate = [(BMUserFocusSleepMode *)self expectedEndDate];
  v7 = [v3 initWithFormat:@"BMUserFocusSleepMode with state: %@, changeReason: %@, expectedEndDate: %@", v4, v5, expectedEndDate];

  return v7;
}

- (BMUserFocusSleepMode)initWithState:(int)state changeReason:(int)reason expectedEndDate:(id)date
{
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = BMUserFocusSleepMode;
  v9 = [(BMEventBase *)&v12 init];
  if (v9)
  {
    v9->_dataVersion = [objc_opt_class() latestDataVersion];
    v9->_state = state;
    v9->_changeReason = reason;
    if (dateCopy)
    {
      v9->_hasRaw_expectedEndDate = 1;
      [dateCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v9->_hasRaw_expectedEndDate = 0;
      v10 = -1.0;
    }

    v9->_raw_expectedEndDate = v10;
  }

  return v9;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"state" number:1 type:4 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"changeReason" number:2 type:4 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"expectedEndDate" number:3 type:0 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"state" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"changeReason" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"expectedEndDate" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:1];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version == 2)
  {
    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
    v7 = BMUserFocusSleepMode_v2;
  }

  else
  {
    if (version != 3)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
    v7 = BMUserFocusSleepMode;
  }

  v8 = [[v7 alloc] initByReadFrom:v6];
  v9 = v8;
  if (v8)
  {
    *(v8 + 32) = version;
  }

LABEL_9:

  return v9;
}

@end