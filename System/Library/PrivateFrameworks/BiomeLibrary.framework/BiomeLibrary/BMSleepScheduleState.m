@interface BMSleepScheduleState
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSleepScheduleState)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSleepScheduleState)initWithState:(int)a3 changeReason:(int)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSleepScheduleState

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSleepScheduleState *)self state];
    if (v6 == [v5 state])
    {
      v7 = [(BMSleepScheduleState *)self changeReason];
      v8 = v7 == [v5 changeReason];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)jsonDictionary
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSleepScheduleState state](self, "state")}];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSleepScheduleState changeReason](self, "changeReason")}];
  v10[0] = @"state";
  v5 = v3;
  if (!v3)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"changeReason";
  v11[0] = v5;
  v6 = v4;
  if (!v4)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (v4)
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
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BMSleepScheduleState)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"state"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v7;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v8 = 0;
          v13 = 0;
          goto LABEL_19;
        }

        v16 = objc_alloc(MEMORY[0x1E696ABC0]);
        v17 = *MEMORY[0x1E698F240];
        v25 = *MEMORY[0x1E696A578];
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"state"];
        v26[0] = v11;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
        v18 = [v16 initWithDomain:v17 code:2 userInfo:v10];
        v8 = 0;
        v13 = 0;
        *a4 = v18;
        goto LABEL_18;
      }

      v9 = [MEMORY[0x1E696AD98] numberWithInt:BMSleepScheduleStateStateFromString(v7)];
    }

    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

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
        if (a4)
        {
          v19 = objc_alloc(MEMORY[0x1E696ABC0]);
          v20 = *MEMORY[0x1E698F240];
          v23 = *MEMORY[0x1E696A578];
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"changeReason"];
          v24 = v21;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
          *a4 = [v19 initWithDomain:v20 code:2 userInfo:v22];
        }

        v11 = 0;
        v13 = 0;
        goto LABEL_18;
      }

      v12 = [MEMORY[0x1E696AD98] numberWithInt:BMSleepScheduleStateChangeReasonFromString(v10)];
    }

    v11 = v12;
  }

  else
  {
    v11 = 0;
  }

  self = -[BMSleepScheduleState initWithState:changeReason:](self, "initWithState:changeReason:", [v8 intValue], objc_msgSend(v11, "intValue"));
  v13 = self;
LABEL_18:

LABEL_19:
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSleepScheduleState *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  state = self->_state;
  v6 = a3;
  PBDataWriterWriteUint32Field();
  changeReason = self->_changeReason;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = BMSleepScheduleState;
  v5 = [(BMEventBase *)&v32 init];
  if (!v5)
  {
    goto LABEL_52;
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
        v33 = 0;
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      if ((v14 >> 3) == 1)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        while (1)
        {
          v33 = 0;
          v25 = [v4 position] + 1;
          if (v25 >= [v4 position] && (v26 = objc_msgSend(v4, "position") + 1, v26 <= objc_msgSend(v4, "length")))
          {
            v27 = [v4 data];
            [v27 getBytes:&v33 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v24 |= (v33 & 0x7F) << v22;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v21 = v23++ > 8;
          if (v21)
          {
            goto LABEL_46;
          }
        }

        if (([v4 hasError] & 1) != 0 || v24 > 5)
        {
LABEL_46:
          LODWORD(v24) = 0;
        }

        v28 = &OBJC_IVAR___BMSleepScheduleState__state;
      }

      else
      {
        if ((v14 >> 3) != 2)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_51;
          }

          goto LABEL_49;
        }

        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          v33 = 0;
          v18 = [v4 position] + 1;
          if (v18 >= [v4 position] && (v19 = objc_msgSend(v4, "position") + 1, v19 <= objc_msgSend(v4, "length")))
          {
            v20 = [v4 data];
            [v20 getBytes:&v33 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v17 |= (v33 & 0x7F) << v15;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v21 = v16++ > 8;
          if (v21)
          {
            goto LABEL_42;
          }
        }

        if (([v4 hasError] & 1) != 0 || (LODWORD(v24) = v17, v17 > 6))
        {
LABEL_42:
          LODWORD(v24) = 0;
        }

        v28 = &OBJC_IVAR___BMSleepScheduleState__changeReason;
      }

      *(&v5->super.super.isa + *v28) = v24;
LABEL_49:
      v29 = [v4 position];
    }

    while (v29 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_51:
    v30 = 0;
  }

  else
  {
LABEL_52:
    v30 = v5;
  }

  return v30;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMSleepScheduleStateStateAsString([(BMSleepScheduleState *)self state]);
  v5 = BMSleepScheduleStateChangeReasonAsString([(BMSleepScheduleState *)self changeReason]);
  v6 = [v3 initWithFormat:@"BMSleepScheduleState with state: %@, changeReason: %@", v4, v5];

  return v6;
}

- (BMSleepScheduleState)initWithState:(int)a3 changeReason:(int)a4
{
  v8.receiver = self;
  v8.super_class = BMSleepScheduleState;
  v6 = [(BMEventBase *)&v8 init];
  if (v6)
  {
    v6->_dataVersion = [objc_opt_class() latestDataVersion];
    v6->_state = a3;
    v6->_changeReason = a4;
  }

  return v6;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"state" number:1 type:4 subMessageClass:0];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"changeReason" number:2 type:4 subMessageClass:0];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"state" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"changeReason" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
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

    v8 = [[BMSleepScheduleState alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end