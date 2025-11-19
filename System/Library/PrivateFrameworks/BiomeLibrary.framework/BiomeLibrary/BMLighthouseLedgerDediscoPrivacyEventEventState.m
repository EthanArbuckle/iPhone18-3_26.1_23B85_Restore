@interface BMLighthouseLedgerDediscoPrivacyEventEventState
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMLighthouseLedgerDediscoPrivacyEventEventState)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMLighthouseLedgerDediscoPrivacyEventEventState)initWithPhase:(int)a3 succeeded:(id)a4 errorMessage:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMLighthouseLedgerDediscoPrivacyEventEventState

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMLighthouseLedgerDediscoPrivacyEventEventState *)self phase];
    if (v6 == [v5 phase] && (!-[BMLighthouseLedgerDediscoPrivacyEventEventState hasSucceeded](self, "hasSucceeded") && !objc_msgSend(v5, "hasSucceeded") || -[BMLighthouseLedgerDediscoPrivacyEventEventState hasSucceeded](self, "hasSucceeded") && objc_msgSend(v5, "hasSucceeded") && (v7 = -[BMLighthouseLedgerDediscoPrivacyEventEventState succeeded](self, "succeeded"), v7 == objc_msgSend(v5, "succeeded"))))
    {
      v10 = [(BMLighthouseLedgerDediscoPrivacyEventEventState *)self errorMessage];
      v11 = [v5 errorMessage];
      if (v10 == v11)
      {
        v8 = 1;
      }

      else
      {
        v12 = [(BMLighthouseLedgerDediscoPrivacyEventEventState *)self errorMessage];
        v13 = [v5 errorMessage];
        v8 = [v12 isEqual:v13];
      }
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
  v13[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLighthouseLedgerDediscoPrivacyEventEventState phase](self, "phase")}];
  if ([(BMLighthouseLedgerDediscoPrivacyEventEventState *)self hasSucceeded])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMLighthouseLedgerDediscoPrivacyEventEventState succeeded](self, "succeeded")}];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(BMLighthouseLedgerDediscoPrivacyEventEventState *)self errorMessage];
  v12[0] = @"phase";
  v6 = v3;
  if (!v3)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v6;
  v12[1] = @"succeeded";
  v7 = v4;
  if (!v4)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v7;
  v12[2] = @"errorMessage";
  v8 = v5;
  if (!v5)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (v5)
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
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BMLighthouseLedgerDediscoPrivacyEventEventState)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v31[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"phase"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_9:
    v10 = [v6 objectForKeyedSubscript:@"succeeded"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v11 = 0;
          v14 = 0;
          goto LABEL_17;
        }

        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v17 = *MEMORY[0x1E698F240];
        v28 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"succeeded"];
        v29 = v13;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        v18 = [v24 initWithDomain:v17 code:2 userInfo:v12];
        v11 = 0;
        v14 = 0;
        *a4 = v18;
        goto LABEL_16;
      }

      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [v6 objectForKeyedSubscript:@"errorMessage"];
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v25 = objc_alloc(MEMORY[0x1E696ABC0]);
          v23 = *MEMORY[0x1E698F240];
          v26 = *MEMORY[0x1E696A578];
          v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"errorMessage"];
          v27 = v19;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
          *a4 = [v25 initWithDomain:v23 code:2 userInfo:v20];
        }

        v13 = 0;
        v14 = 0;
        goto LABEL_16;
      }

      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    self = -[BMLighthouseLedgerDediscoPrivacyEventEventState initWithPhase:succeeded:errorMessage:](self, "initWithPhase:succeeded:errorMessage:", [v8 intValue], v11, v13);
    v14 = self;
LABEL_16:

    goto LABEL_17;
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
    v9 = [MEMORY[0x1E696AD98] numberWithInt:BMLighthouseLedgerDediscoPrivacyEventEventPhaseFromString(v7)];
    goto LABEL_8;
  }

  if (!a4)
  {
    v8 = 0;
    v14 = 0;
    goto LABEL_18;
  }

  v21 = objc_alloc(MEMORY[0x1E696ABC0]);
  v22 = *MEMORY[0x1E698F240];
  v30 = *MEMORY[0x1E696A578];
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"phase"];
  v31[0] = v11;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v8 = 0;
  v14 = 0;
  *a4 = [v21 initWithDomain:v22 code:2 userInfo:v10];
LABEL_17:

LABEL_18:
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMLighthouseLedgerDediscoPrivacyEventEventState *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  phase = self->_phase;
  v8 = v4;
  PBDataWriterWriteUint32Field();
  if (self->_hasSucceeded)
  {
    succeeded = self->_succeeded;
    PBDataWriterWriteBOOLField();
  }

  v7 = v8;
  if (self->_errorMessage)
  {
    PBDataWriterWriteStringField();
    v7 = v8;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = BMLighthouseLedgerDediscoPrivacyEventEventState;
  v5 = [(BMEventBase *)&v35 init];
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
        v36 = 0;
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

        v9 |= (v36 & 0x7F) << v7;
        if ((v36 & 0x80) == 0)
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) == 3)
      {
        v30 = PBReaderReadString();
        errorMessage = v5->_errorMessage;
        v5->_errorMessage = v30;
      }

      else if (v15 == 2)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v5->_hasSucceeded = 1;
        while (1)
        {
          v36 = 0;
          v26 = [v4 position] + 1;
          if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 1, v27 <= objc_msgSend(v4, "length")))
          {
            v28 = [v4 data];
            [v28 getBytes:&v36 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v25 |= (v36 & 0x7F) << v23;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v13 = v24++ >= 9;
          if (v13)
          {
            LOBYTE(v29) = 0;
            goto LABEL_43;
          }
        }

        v29 = (v25 != 0) & ~[v4 hasError];
LABEL_43:
        v5->_succeeded = v29;
      }

      else if (v15 == 1)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v36 = 0;
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

          v18 |= (v36 & 0x7F) << v16;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          if (v17++ > 8)
          {
            goto LABEL_46;
          }
        }

        if (([v4 hasError] & 1) != 0 || v18 > 5)
        {
LABEL_46:
          LODWORD(v18) = 0;
        }

        v5->_phase = v18;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_50;
      }

      v32 = [v4 position];
    }

    while (v32 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_50:
    v33 = 0;
  }

  else
  {
LABEL_51:
    v33 = v5;
  }

  return v33;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMLighthouseLedgerDediscoPrivacyEventEventPhaseAsString([(BMLighthouseLedgerDediscoPrivacyEventEventState *)self phase]);
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMLighthouseLedgerDediscoPrivacyEventEventState succeeded](self, "succeeded")}];
  v6 = [(BMLighthouseLedgerDediscoPrivacyEventEventState *)self errorMessage];
  v7 = [v3 initWithFormat:@"BMLighthouseLedgerDediscoPrivacyEventEventState with phase: %@, succeeded: %@, errorMessage: %@", v4, v5, v6];

  return v7;
}

- (BMLighthouseLedgerDediscoPrivacyEventEventState)initWithPhase:(int)a3 succeeded:(id)a4 errorMessage:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12.receiver = self;
  v12.super_class = BMLighthouseLedgerDediscoPrivacyEventEventState;
  v10 = [(BMEventBase *)&v12 init];
  if (v10)
  {
    v10->_dataVersion = [objc_opt_class() latestDataVersion];
    v10->_phase = a3;
    if (v8)
    {
      v10->_hasSucceeded = 1;
      v10->_succeeded = [v8 BOOLValue];
    }

    else
    {
      v10->_hasSucceeded = 0;
      v10->_succeeded = 0;
    }

    objc_storeStrong(&v10->_errorMessage, a5);
  }

  return v10;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"phase" number:1 type:4 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"succeeded" number:2 type:12 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"errorMessage" number:3 type:13 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"phase" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"succeeded" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"errorMessage" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

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

    v8 = [[BMLighthouseLedgerDediscoPrivacyEventEventState alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end