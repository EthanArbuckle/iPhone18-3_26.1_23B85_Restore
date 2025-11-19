@interface BMLighthouseLedgerTrialdEvent
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMLighthouseLedgerTrialdEvent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMLighthouseLedgerTrialdEvent)initWithTrialIdentifiers:(id)a3 contextID:(id)a4 timestamp:(id)a5 eventType:(int)a6 eventSucceeded:(id)a7;
- (BOOL)isEqual:(id)a3;
- (NSDate)timestamp;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMLighthouseLedgerTrialdEvent

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"trialIdentifiers_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_64];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contextID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timestamp" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:2];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventType" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventSucceeded" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMLighthouseLedgerTrialdEvent *)self trialIdentifiers];
    v7 = [v5 trialIdentifiers];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMLighthouseLedgerTrialdEvent *)self trialIdentifiers];
      v10 = [v5 trialIdentifiers];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_21;
      }
    }

    v13 = [(BMLighthouseLedgerTrialdEvent *)self contextID];
    v14 = [v5 contextID];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMLighthouseLedgerTrialdEvent *)self contextID];
      v17 = [v5 contextID];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_21;
      }
    }

    v19 = [(BMLighthouseLedgerTrialdEvent *)self timestamp];
    v20 = [v5 timestamp];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMLighthouseLedgerTrialdEvent *)self timestamp];
      v23 = [v5 timestamp];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_21;
      }
    }

    v25 = [(BMLighthouseLedgerTrialdEvent *)self eventType];
    if (v25 == [v5 eventType])
    {
      if (!-[BMLighthouseLedgerTrialdEvent hasEventSucceeded](self, "hasEventSucceeded") && ![v5 hasEventSucceeded])
      {
        LOBYTE(v12) = 1;
        goto LABEL_22;
      }

      if (-[BMLighthouseLedgerTrialdEvent hasEventSucceeded](self, "hasEventSucceeded") && [v5 hasEventSucceeded])
      {
        v26 = [(BMLighthouseLedgerTrialdEvent *)self eventSucceeded];
        v12 = v26 ^ [v5 eventSucceeded] ^ 1;
LABEL_22:

        goto LABEL_23;
      }
    }

LABEL_21:
    LOBYTE(v12) = 0;
    goto LABEL_22;
  }

  LOBYTE(v12) = 0;
LABEL_23:

  return v12;
}

- (NSDate)timestamp
{
  if (self->_hasRaw_timestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_timestamp];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v27[5] = *MEMORY[0x1E69E9840];
  v3 = [(BMLighthouseLedgerTrialdEvent *)self trialIdentifiers];
  v4 = [v3 jsonDictionary];

  v5 = [(BMLighthouseLedgerTrialdEvent *)self contextID];
  v6 = [(BMLighthouseLedgerTrialdEvent *)self timestamp];
  if (v6)
  {
    v7 = MEMORY[0x1E696AD98];
    v8 = [(BMLighthouseLedgerTrialdEvent *)self timestamp];
    [v8 timeIntervalSince1970];
    v9 = [v7 numberWithDouble:?];
  }

  else
  {
    v9 = 0;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLighthouseLedgerTrialdEvent eventType](self, "eventType")}];
  if ([(BMLighthouseLedgerTrialdEvent *)self hasEventSucceeded])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMLighthouseLedgerTrialdEvent eventSucceeded](self, "eventSucceeded")}];
  }

  else
  {
    v11 = 0;
  }

  v22 = @"trialIdentifiers";
  v12 = v4;
  if (!v4)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v12;
  v27[0] = v12;
  v23 = @"contextID";
  v13 = v5;
  if (!v5)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v27[1] = v13;
  v24 = @"timestamp";
  v14 = v9;
  if (!v9)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v27[2] = v14;
  v25 = @"eventType";
  v15 = v10;
  if (!v10)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v27[3] = v15;
  v26 = @"eventSucceeded";
  v16 = v11;
  if (!v11)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v27[4] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v22 count:{5, v20}];
  if (v11)
  {
    if (v10)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (v10)
    {
LABEL_19:
      if (v9)
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }
  }

  if (v9)
  {
LABEL_20:
    if (v5)
    {
      goto LABEL_21;
    }

LABEL_28:

    if (v4)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

LABEL_27:

  if (!v5)
  {
    goto LABEL_28;
  }

LABEL_21:
  if (v4)
  {
    goto LABEL_22;
  }

LABEL_29:

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BMLighthouseLedgerTrialdEvent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v60[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"trialIdentifiers"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v7;
    v50 = 0;
    v8 = [[BMLighthouseLedgerTrialIdentifiers alloc] initWithJSONDictionary:v11 error:&v50];
    v12 = v50;
    if (v12)
    {
      if (a4)
      {
        v12 = v12;
        *a4 = v12;
      }

      v13 = 0;
      goto LABEL_42;
    }

LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"contextID"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v11 = 0;
          v13 = 0;
          goto LABEL_41;
        }

        v42 = a4;
        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v25 = *MEMORY[0x1E698F240];
        v57 = *MEMORY[0x1E696A578];
        v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contextID"];
        v58 = v48;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
        v49 = 0;
        v13 = 0;
        *v42 = [v24 initWithDomain:v25 code:2 userInfo:v10];
LABEL_40:

        v11 = v49;
LABEL_41:

        goto LABEL_42;
      }

      v49 = v9;
    }

    else
    {
      v49 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"timestamp"];
    v46 = v9;
    v47 = v8;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = MEMORY[0x1E695DF00];
        v15 = a4;
        v16 = v10;
        v17 = [v14 alloc];
        [v16 doubleValue];
        v19 = v18;

        a4 = v15;
        v20 = [v17 initWithTimeIntervalSince1970:v19];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v48 = [v26 dateFromString:v10];

          goto LABEL_26;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v48 = 0;
            v13 = 0;
            goto LABEL_40;
          }

          v45 = a4;
          v38 = objc_alloc(MEMORY[0x1E696ABC0]);
          v39 = *MEMORY[0x1E698F240];
          v55 = *MEMORY[0x1E696A578];
          v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"timestamp"];
          v56 = v29;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
          v48 = 0;
          v13 = 0;
          *v45 = [v38 initWithDomain:v39 code:2 userInfo:v27];
          goto LABEL_39;
        }

        v20 = v10;
      }

      v48 = v20;
    }

    else
    {
      v48 = 0;
    }

LABEL_26:
    v27 = [v6 objectForKeyedSubscript:@"eventType"];
    v28 = a4;
    if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = v27;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v29 = 0;
            v13 = 0;
            goto LABEL_39;
          }

          v44 = objc_alloc(MEMORY[0x1E696ABC0]);
          v41 = *MEMORY[0x1E698F240];
          v53 = *MEMORY[0x1E696A578];
          v37 = a4;
          v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"eventType"];
          v54 = v28;
          v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
          v29 = 0;
          v13 = 0;
          *v37 = [v44 initWithDomain:v41 code:2 userInfo:v31];
          goto LABEL_38;
        }

        v30 = [MEMORY[0x1E696AD98] numberWithInt:BMLighthouseLedgerTrialdEventEventTypeFromString(v27)];
      }

      v29 = v30;
    }

    else
    {
      v29 = 0;
    }

    v31 = [v6 objectForKeyedSubscript:@"eventSucceeded"];
    if (v31 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v28)
        {
          v34 = v28;
          v43 = objc_alloc(MEMORY[0x1E696ABC0]);
          v40 = *MEMORY[0x1E698F240];
          v51 = *MEMORY[0x1E696A578];
          v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"eventSucceeded"];
          v52 = v35;
          v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
          *v34 = [v43 initWithDomain:v40 code:2 userInfo:v36];

          v28 = 0;
        }

        v13 = 0;
        goto LABEL_38;
      }

      v28 = v31;
    }

    else
    {
      v28 = 0;
    }

    v13 = -[BMLighthouseLedgerTrialdEvent initWithTrialIdentifiers:contextID:timestamp:eventType:eventSucceeded:](self, "initWithTrialIdentifiers:contextID:timestamp:eventType:eventSucceeded:", v47, v49, v48, [v29 intValue], v28);
    self = v13;
LABEL_38:

LABEL_39:
    v9 = v46;
    v8 = v47;
    goto LABEL_40;
  }

  if (!a4)
  {
    v13 = 0;
    goto LABEL_43;
  }

  v21 = a4;
  v22 = objc_alloc(MEMORY[0x1E696ABC0]);
  v23 = *MEMORY[0x1E698F240];
  v59 = *MEMORY[0x1E696A578];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"trialIdentifiers"];
  v60[0] = v8;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:&v59 count:1];
  v13 = 0;
  *v21 = [v22 initWithDomain:v23 code:2 userInfo:v11];
LABEL_42:

LABEL_43:
  v32 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMLighthouseLedgerTrialdEvent *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_trialIdentifiers)
  {
    PBDataWriterPlaceMark();
    [(BMLighthouseLedgerTrialIdentifiers *)self->_trialIdentifiers writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_contextID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_timestamp)
  {
    raw_timestamp = self->_raw_timestamp;
    PBDataWriterWriteDoubleField();
  }

  eventType = self->_eventType;
  PBDataWriterWriteUint32Field();
  if (self->_hasEventSucceeded)
  {
    eventSucceeded = self->_eventSucceeded;
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = BMLighthouseLedgerTrialdEvent;
  v5 = [(BMEventBase *)&v40 init];
  if (!v5)
  {
    goto LABEL_62;
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
        LOBYTE(v41[0]) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:v41 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v41[0] & 0x7F) << v7;
        if ((v41[0] & 0x80) == 0)
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
      if ((v14 >> 3) <= 2)
      {
        if (v15 == 1)
        {
          v41[0] = 0;
          v41[1] = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_61;
          }

          v34 = [[BMLighthouseLedgerTrialIdentifiers alloc] initByReadFrom:v4];
          if (!v34)
          {
            goto LABEL_61;
          }

          trialIdentifiers = v5->_trialIdentifiers;
          v5->_trialIdentifiers = v34;

          PBReaderRecallMark();
        }

        else
        {
          if (v15 != 2)
          {
LABEL_49:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_61;
            }

            goto LABEL_59;
          }

          v23 = PBReaderReadString();
          contextID = v5->_contextID;
          v5->_contextID = v23;
        }
      }

      else
      {
        switch(v15)
        {
          case 3:
            v5->_hasRaw_timestamp = 1;
            v41[0] = 0;
            v25 = [v4 position] + 8;
            if (v25 >= [v4 position] && (v26 = objc_msgSend(v4, "position") + 8, v26 <= objc_msgSend(v4, "length")))
            {
              v36 = [v4 data];
              [v36 getBytes:v41 range:{objc_msgSend(v4, "position"), 8}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
            }

            else
            {
              [v4 _setError];
            }

            *&v5->_raw_timestamp = v41[0];
            break;
          case 5:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            v5->_hasEventSucceeded = 1;
            while (1)
            {
              LOBYTE(v41[0]) = 0;
              v30 = [v4 position] + 1;
              if (v30 >= [v4 position] && (v31 = objc_msgSend(v4, "position") + 1, v31 <= objc_msgSend(v4, "length")))
              {
                v32 = [v4 data];
                [v32 getBytes:v41 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v29 |= (v41[0] & 0x7F) << v27;
              if ((v41[0] & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v13 = v28++ >= 9;
              if (v13)
              {
                LOBYTE(v33) = 0;
                goto LABEL_52;
              }
            }

            v33 = (v29 != 0) & ~[v4 hasError];
LABEL_52:
            v5->_eventSucceeded = v33;
            break;
          case 4:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            while (1)
            {
              LOBYTE(v41[0]) = 0;
              v19 = [v4 position] + 1;
              if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
              {
                v21 = [v4 data];
                [v21 getBytes:v41 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v18 |= (v41[0] & 0x7F) << v16;
              if ((v41[0] & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              if (v17++ > 8)
              {
                goto LABEL_55;
              }
            }

            if (([v4 hasError] & 1) != 0 || v18 > 3)
            {
LABEL_55:
              LODWORD(v18) = 0;
            }

            v5->_eventType = v18;
            break;
          default:
            goto LABEL_49;
        }
      }

LABEL_59:
      v37 = [v4 position];
    }

    while (v37 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_61:
    v38 = 0;
  }

  else
  {
LABEL_62:
    v38 = v5;
  }

  return v38;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMLighthouseLedgerTrialdEvent *)self trialIdentifiers];
  v5 = [(BMLighthouseLedgerTrialdEvent *)self contextID];
  v6 = [(BMLighthouseLedgerTrialdEvent *)self timestamp];
  v7 = BMLighthouseLedgerTrialdEventEventTypeAsString([(BMLighthouseLedgerTrialdEvent *)self eventType]);
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMLighthouseLedgerTrialdEvent eventSucceeded](self, "eventSucceeded")}];
  v9 = [v3 initWithFormat:@"BMLighthouseLedgerTrialdEvent with trialIdentifiers: %@, contextID: %@, timestamp: %@, eventType: %@, eventSucceeded: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMLighthouseLedgerTrialdEvent)initWithTrialIdentifiers:(id)a3 contextID:(id)a4 timestamp:(id)a5 eventType:(int)a6 eventSucceeded:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = BMLighthouseLedgerTrialdEvent;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_trialIdentifiers, a3);
    objc_storeStrong(&v17->_contextID, a4);
    if (v15)
    {
      v17->_hasRaw_timestamp = 1;
      [v15 timeIntervalSince1970];
    }

    else
    {
      v17->_hasRaw_timestamp = 0;
      v18 = -1.0;
    }

    v17->_raw_timestamp = v18;
    v17->_eventType = a6;
    if (v16)
    {
      v17->_hasEventSucceeded = 1;
      v17->_eventSucceeded = [v16 BOOLValue];
    }

    else
    {
      v17->_hasEventSucceeded = 0;
      v17->_eventSucceeded = 0;
    }
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trialIdentifiers" number:1 type:14 subMessageClass:objc_opt_class()];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contextID" number:2 type:13 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timestamp" number:3 type:0 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventType" number:4 type:4 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventSucceeded" number:5 type:12 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __40__BMLighthouseLedgerTrialdEvent_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 trialIdentifiers];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

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

    v8 = [[BMLighthouseLedgerTrialdEvent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end