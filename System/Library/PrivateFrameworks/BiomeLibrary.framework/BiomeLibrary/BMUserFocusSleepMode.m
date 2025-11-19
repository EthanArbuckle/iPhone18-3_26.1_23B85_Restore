@interface BMUserFocusSleepMode
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMUserFocusSleepMode)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMUserFocusSleepMode)initWithState:(int)a3 changeReason:(int)a4 expectedEndDate:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSDate)expectedEndDate;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMUserFocusSleepMode

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMUserFocusSleepMode *)self state];
    if (v6 == [v5 state] && (v7 = -[BMUserFocusSleepMode changeReason](self, "changeReason"), v7 == objc_msgSend(v5, "changeReason")))
    {
      v8 = [(BMUserFocusSleepMode *)self expectedEndDate];
      v9 = [v5 expectedEndDate];
      if (v8 == v9)
      {
        v12 = 1;
      }

      else
      {
        v10 = [(BMUserFocusSleepMode *)self expectedEndDate];
        v11 = [v5 expectedEndDate];
        v12 = [v10 isEqual:v11];
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
  v5 = [(BMUserFocusSleepMode *)self expectedEndDate];
  if (v5)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = [(BMUserFocusSleepMode *)self expectedEndDate];
    [v7 timeIntervalSinceReferenceDate];
    v8 = [v6 numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  v15[0] = @"state";
  v9 = v3;
  if (!v3)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = v9;
  v15[1] = @"changeReason";
  v10 = v4;
  if (!v4)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = v10;
  v15[2] = @"expectedEndDate";
  v11 = v8;
  if (!v8)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = v11;
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

- (BMUserFocusSleepMode)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v39[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"state"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_9:
    v10 = [v6 objectForKeyedSubscript:@"changeReason"];
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
          if (!a4)
          {
            v11 = 0;
            v22 = 0;
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
          v22 = 0;
          *a4 = v28;
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

    v13 = [v6 objectForKeyedSubscript:@"expectedEndDate"];
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
          if (a4)
          {
            v33 = objc_alloc(MEMORY[0x1E696ABC0]);
            v31 = *MEMORY[0x1E698F240];
            v34 = *MEMORY[0x1E696A578];
            v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"expectedEndDate"];
            v35 = v29;
            v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
            *a4 = [v33 initWithDomain:v31 code:2 userInfo:v30];
          }

          v14 = 0;
          v22 = 0;
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
    v22 = self;
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

  if (!a4)
  {
    v8 = 0;
    v22 = 0;
    goto LABEL_28;
  }

  v25 = objc_alloc(MEMORY[0x1E696ABC0]);
  v26 = *MEMORY[0x1E698F240];
  v38 = *MEMORY[0x1E696A578];
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"state"];
  v39[0] = v11;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  v8 = 0;
  v22 = 0;
  *a4 = [v25 initWithDomain:v26 code:2 userInfo:v10];
LABEL_27:

LABEL_28:
  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMUserFocusSleepMode *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
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

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = BMUserFocusSleepMode;
  v5 = [(BMEventBase *)&v35 init];
  if (!v5)
  {
    goto LABEL_58;
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
        LOBYTE(v36) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v36 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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
          v27 = [v4 position] + 1;
          if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 1, v28 <= objc_msgSend(v4, "length")))
          {
            v29 = [v4 data];
            [v29 getBytes:&v36 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        if (([v4 hasError] & 1) != 0 || v18 > 3)
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
          v23 = [v4 position] + 8;
          if (v23 >= [v4 position] && (v24 = objc_msgSend(v4, "position") + 8, v24 <= objc_msgSend(v4, "length")))
          {
            v31 = [v4 data];
            [v31 getBytes:&v36 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
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
          v19 = [v4 position] + 1;
          if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
          {
            v21 = [v4 data];
            [v21 getBytes:&v36 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        if (([v4 hasError] & 1) != 0 || v18 > 9)
        {
LABEL_50:
          LODWORD(v18) = 0;
        }

        v30 = 40;
      }

      *(&v5->super.super.isa + v30) = v18;
LABEL_55:
      v32 = [v4 position];
    }

    while (v32 < [v4 length]);
  }

  if ([v4 hasError])
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
  v6 = [(BMUserFocusSleepMode *)self expectedEndDate];
  v7 = [v3 initWithFormat:@"BMUserFocusSleepMode with state: %@, changeReason: %@, expectedEndDate: %@", v4, v5, v6];

  return v7;
}

- (BMUserFocusSleepMode)initWithState:(int)a3 changeReason:(int)a4 expectedEndDate:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = BMUserFocusSleepMode;
  v9 = [(BMEventBase *)&v12 init];
  if (v9)
  {
    v9->_dataVersion = [objc_opt_class() latestDataVersion];
    v9->_state = a3;
    v9->_changeReason = a4;
    if (v8)
    {
      v9->_hasRaw_expectedEndDate = 1;
      [v8 timeIntervalSinceReferenceDate];
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

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  if (a4 == 2)
  {
    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:v5];
    v7 = BMUserFocusSleepMode_v2;
  }

  else
  {
    if (a4 != 3)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:v5];
    v7 = BMUserFocusSleepMode;
  }

  v8 = [[v7 alloc] initByReadFrom:v6];
  v9 = v8;
  if (v8)
  {
    *(v8 + 32) = a4;
  }

LABEL_9:

  return v9;
}

@end