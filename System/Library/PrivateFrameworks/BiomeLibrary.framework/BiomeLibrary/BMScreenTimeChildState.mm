@interface BMScreenTimeChildState
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMScreenTimeChildState)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMScreenTimeChildState)initWithStarting:(id)a3 eventID:(id)a4 signalDate:(id)a5 userDSID:(id)a6 state:(int)a7;
- (BOOL)isEqual:(id)a3;
- (NSDate)signalDate;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMScreenTimeChildState

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"starting" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"signalDate" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:2];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userDSID" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"state" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
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
    if (-[BMScreenTimeChildState hasStarting](self, "hasStarting") || [v5 hasStarting])
    {
      if (![(BMScreenTimeChildState *)self hasStarting])
      {
        goto LABEL_18;
      }

      if (![v5 hasStarting])
      {
        goto LABEL_18;
      }

      v6 = [(BMScreenTimeChildState *)self starting];
      if (v6 != [v5 starting])
      {
        goto LABEL_18;
      }
    }

    v7 = [(BMScreenTimeChildState *)self eventID];
    v8 = [v5 eventID];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [(BMScreenTimeChildState *)self eventID];
      v11 = [v5 eventID];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_18;
      }
    }

    v14 = [(BMScreenTimeChildState *)self signalDate];
    v15 = [v5 signalDate];
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      v17 = [(BMScreenTimeChildState *)self signalDate];
      v18 = [v5 signalDate];
      v19 = [v17 isEqual:v18];

      if (!v19)
      {
        goto LABEL_18;
      }
    }

    v20 = [(BMScreenTimeChildState *)self userDSID];
    v21 = [v5 userDSID];
    v22 = v21;
    if (v20 == v21)
    {
    }

    else
    {
      v23 = [(BMScreenTimeChildState *)self userDSID];
      v24 = [v5 userDSID];
      v25 = [v23 isEqual:v24];

      if (!v25)
      {
LABEL_18:
        v13 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    v27 = [(BMScreenTimeChildState *)self state];
    v13 = v27 == [v5 state];
    goto LABEL_19;
  }

  v13 = 0;
LABEL_20:

  return v13;
}

- (NSDate)signalDate
{
  if (self->_hasRaw_signalDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_signalDate];
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
  v26[5] = *MEMORY[0x1E69E9840];
  if ([(BMScreenTimeChildState *)self hasStarting])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMScreenTimeChildState starting](self, "starting")}];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(BMScreenTimeChildState *)self eventID];
  v5 = [(BMScreenTimeChildState *)self signalDate];
  if (v5)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = [(BMScreenTimeChildState *)self signalDate];
    [v7 timeIntervalSince1970];
    v8 = [v6 numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(BMScreenTimeChildState *)self userDSID];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMScreenTimeChildState state](self, "state")}];
  v21 = @"starting";
  v11 = v3;
  if (!v3)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v11;
  v26[0] = v11;
  v22 = @"eventID";
  v12 = v4;
  if (!v4)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v26[1] = v12;
  v23 = @"signalDate";
  v13 = v8;
  if (!v8)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = v13;
  v24 = @"userDSID";
  v14 = v9;
  if (!v9)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = v14;
  v25 = @"state";
  v15 = v10;
  if (!v10)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v21 count:{5, v19}];
  if (v10)
  {
    if (v9)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (v9)
    {
LABEL_19:
      if (v8)
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }
  }

  if (v8)
  {
LABEL_20:
    if (v4)
    {
      goto LABEL_21;
    }

LABEL_28:

    if (v3)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

LABEL_27:

  if (!v4)
  {
    goto LABEL_28;
  }

LABEL_21:
  if (v3)
  {
    goto LABEL_22;
  }

LABEL_29:

LABEL_22:
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BMScreenTimeChildState)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v54[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"starting"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v44 = 0;
LABEL_4:
    v8 = [v6 objectForKeyedSubscript:@"eventID"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v43 = 0;
          v18 = 0;
          goto LABEL_42;
        }

        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        v20 = *MEMORY[0x1E698F240];
        v51 = *MEMORY[0x1E696A578];
        v21 = a4;
        a4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"eventID"];
        v52 = a4;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
        v43 = 0;
        v18 = 0;
        *v21 = [v19 initWithDomain:v20 code:2 userInfo:v9];
        goto LABEL_41;
      }

      v43 = v8;
    }

    else
    {
      v43 = 0;
    }

    v9 = [v6 objectForKeyedSubscript:@"signalDate"];
    v41 = a4;
    v42 = v7;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = MEMORY[0x1E695DF00];
        v11 = v9;
        v12 = [v10 alloc];
        [v11 doubleValue];
        v14 = v13;

        v15 = [v12 initWithTimeIntervalSince1970:v14];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = objc_alloc_init(MEMORY[0x1E696AC80]);
          a4 = [v22 dateFromString:v9];

          goto LABEL_23;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v18 = 0;
            goto LABEL_41;
          }

          v34 = objc_alloc(MEMORY[0x1E696ABC0]);
          v35 = *MEMORY[0x1E698F240];
          v49 = *MEMORY[0x1E696A578];
          v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"signalDate"];
          v50 = v24;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
          v36 = [v34 initWithDomain:v35 code:2 userInfo:v23];
          v37 = a4;
          a4 = 0;
          v18 = 0;
          *v37 = v36;
LABEL_40:

          v7 = v42;
LABEL_41:

          goto LABEL_42;
        }

        v15 = v9;
      }

      a4 = v15;
    }

    else
    {
      a4 = 0;
    }

LABEL_23:
    v23 = [v6 objectForKeyedSubscript:@"userDSID"];
    if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v41)
        {
          v24 = 0;
          v18 = 0;
          goto LABEL_40;
        }

        v39 = objc_alloc(MEMORY[0x1E696ABC0]);
        v28 = *MEMORY[0x1E698F240];
        v47 = *MEMORY[0x1E696A578];
        v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userDSID"];
        v48 = v26;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        v29 = [v39 initWithDomain:v28 code:2 userInfo:v25];
        v24 = 0;
        v18 = 0;
        *v41 = v29;
        goto LABEL_39;
      }

      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = [v6 objectForKeyedSubscript:@"state"];
    if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = v25;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (v41)
          {
            v40 = objc_alloc(MEMORY[0x1E696ABC0]);
            v38 = *MEMORY[0x1E698F240];
            v45 = *MEMORY[0x1E696A578];
            v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"state"];
            v46 = v32;
            v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
            *v41 = [v40 initWithDomain:v38 code:2 userInfo:v33];
          }

          v26 = 0;
          v18 = 0;
          goto LABEL_39;
        }

        v27 = [MEMORY[0x1E696AD98] numberWithInt:BMScreenTimeChildStateScreenTimeChildStateKindFromString(v25)];
      }

      v26 = v27;
    }

    else
    {
      v26 = 0;
    }

    v18 = -[BMScreenTimeChildState initWithStarting:eventID:signalDate:userDSID:state:](self, "initWithStarting:eventID:signalDate:userDSID:state:", v44, v43, a4, v24, [v26 intValue]);
    self = v18;
LABEL_39:

    goto LABEL_40;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v44 = v7;
    goto LABEL_4;
  }

  if (!a4)
  {
    v44 = 0;
    v18 = 0;
    goto LABEL_43;
  }

  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E698F240];
  v53 = *MEMORY[0x1E696A578];
  v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"starting"];
  v54[0] = v43;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
  v44 = 0;
  v18 = 0;
  *a4 = [v16 initWithDomain:v17 code:2 userInfo:v8];
LABEL_42:

LABEL_43:
  v30 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMScreenTimeChildState *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  if (self->_hasStarting)
  {
    starting = self->_starting;
    PBDataWriterWriteBOOLField();
  }

  if (self->_eventID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_signalDate)
  {
    raw_signalDate = self->_raw_signalDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_userDSID)
  {
    PBDataWriterWriteStringField();
  }

  state = self->_state;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = BMScreenTimeChildState;
  v5 = [(BMEventBase *)&v39 init];
  if (!v5)
  {
    goto LABEL_61;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_59;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v40) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v40 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v40) & 0x7F) << v7;
        if ((LOBYTE(v40) & 0x80) == 0)
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
        goto LABEL_59;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 2)
      {
        break;
      }

      if (v15 == 3)
      {
        v5->_hasRaw_signalDate = 1;
        v40 = 0.0;
        v25 = [v4 position] + 8;
        if (v25 >= [v4 position] && (v26 = objc_msgSend(v4, "position") + 8, v26 <= objc_msgSend(v4, "length")))
        {
          v35 = [v4 data];
          [v35 getBytes:&v40 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_raw_signalDate = v40;
        goto LABEL_58;
      }

      if (v15 == 4)
      {
        v23 = PBReaderReadString();
        v24 = 56;
LABEL_38:
        v27 = *(&v5->super.super.isa + v24);
        *(&v5->super.super.isa + v24) = v23;

        goto LABEL_58;
      }

      if (v15 != 5)
      {
        goto LABEL_48;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      while (1)
      {
        LOBYTE(v40) = 0;
        v19 = [v4 position] + 1;
        if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
        {
          v21 = [v4 data];
          [v21 getBytes:&v40 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v18 |= (LOBYTE(v40) & 0x7F) << v16;
        if ((LOBYTE(v40) & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        if (v17++ > 8)
        {
          goto LABEL_54;
        }
      }

      if (([v4 hasError] & 1) != 0 || v18 > 2)
      {
LABEL_54:
        LODWORD(v18) = 0;
      }

      v5->_state = v18;
LABEL_58:
      v36 = [v4 position];
      if (v36 >= [v4 length])
      {
        goto LABEL_59;
      }
    }

    if (v15 == 1)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v5->_hasStarting = 1;
      while (1)
      {
        LOBYTE(v40) = 0;
        v31 = [v4 position] + 1;
        if (v31 >= [v4 position] && (v32 = objc_msgSend(v4, "position") + 1, v32 <= objc_msgSend(v4, "length")))
        {
          v33 = [v4 data];
          [v33 getBytes:&v40 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v30 |= (LOBYTE(v40) & 0x7F) << v28;
        if ((LOBYTE(v40) & 0x80) == 0)
        {
          break;
        }

        v28 += 7;
        v13 = v29++ >= 9;
        if (v13)
        {
          LOBYTE(v34) = 0;
          goto LABEL_51;
        }
      }

      v34 = (v30 != 0) & ~[v4 hasError];
LABEL_51:
      v5->_starting = v34;
      goto LABEL_58;
    }

    if (v15 != 2)
    {
LABEL_48:
      if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_60;
      }

      goto LABEL_58;
    }

    v23 = PBReaderReadString();
    v24 = 48;
    goto LABEL_38;
  }

LABEL_59:
  if ([v4 hasError])
  {
LABEL_60:
    v37 = 0;
  }

  else
  {
LABEL_61:
    v37 = v5;
  }

  return v37;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMScreenTimeChildState starting](self, "starting")}];
  v5 = [(BMScreenTimeChildState *)self eventID];
  v6 = [(BMScreenTimeChildState *)self signalDate];
  v7 = [(BMScreenTimeChildState *)self userDSID];
  v8 = BMScreenTimeChildStateScreenTimeChildStateKindAsString([(BMScreenTimeChildState *)self state]);
  v9 = [v3 initWithFormat:@"BMScreenTimeChildState with starting: %@, eventID: %@, signalDate: %@, userDSID: %@, state: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMScreenTimeChildState)initWithStarting:(id)a3 eventID:(id)a4 signalDate:(id)a5 userDSID:(id)a6 state:(int)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = BMScreenTimeChildState;
  v16 = [(BMEventBase *)&v19 init];
  if (v16)
  {
    v16->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v12)
    {
      v16->_hasStarting = 1;
      v16->_starting = [v12 BOOLValue];
    }

    else
    {
      v16->_hasStarting = 0;
      v16->_starting = 0;
    }

    objc_storeStrong(&v16->_eventID, a4);
    if (v14)
    {
      v16->_hasRaw_signalDate = 1;
      [v14 timeIntervalSince1970];
    }

    else
    {
      v16->_hasRaw_signalDate = 0;
      v17 = -1.0;
    }

    v16->_raw_signalDate = v17;
    objc_storeStrong(&v16->_userDSID, a6);
    v16->_state = a7;
  }

  return v16;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"starting" number:1 type:12 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventID" number:2 type:13 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"signalDate" number:3 type:0 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userDSID" number:4 type:13 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"state" number:5 type:4 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
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

    v8 = [[BMScreenTimeChildState alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end