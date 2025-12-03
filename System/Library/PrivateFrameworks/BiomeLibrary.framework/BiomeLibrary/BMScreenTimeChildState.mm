@interface BMScreenTimeChildState
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMScreenTimeChildState)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMScreenTimeChildState)initWithStarting:(id)starting eventID:(id)d signalDate:(id)date userDSID:(id)iD state:(int)state;
- (BOOL)isEqual:(id)equal;
- (NSDate)signalDate;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

      starting = [(BMScreenTimeChildState *)self starting];
      if (starting != [v5 starting])
      {
        goto LABEL_18;
      }
    }

    eventID = [(BMScreenTimeChildState *)self eventID];
    eventID2 = [v5 eventID];
    v9 = eventID2;
    if (eventID == eventID2)
    {
    }

    else
    {
      eventID3 = [(BMScreenTimeChildState *)self eventID];
      eventID4 = [v5 eventID];
      v12 = [eventID3 isEqual:eventID4];

      if (!v12)
      {
        goto LABEL_18;
      }
    }

    signalDate = [(BMScreenTimeChildState *)self signalDate];
    signalDate2 = [v5 signalDate];
    v16 = signalDate2;
    if (signalDate == signalDate2)
    {
    }

    else
    {
      signalDate3 = [(BMScreenTimeChildState *)self signalDate];
      signalDate4 = [v5 signalDate];
      v19 = [signalDate3 isEqual:signalDate4];

      if (!v19)
      {
        goto LABEL_18;
      }
    }

    userDSID = [(BMScreenTimeChildState *)self userDSID];
    userDSID2 = [v5 userDSID];
    v22 = userDSID2;
    if (userDSID == userDSID2)
    {
    }

    else
    {
      userDSID3 = [(BMScreenTimeChildState *)self userDSID];
      userDSID4 = [v5 userDSID];
      v25 = [userDSID3 isEqual:userDSID4];

      if (!v25)
      {
LABEL_18:
        v13 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    state = [(BMScreenTimeChildState *)self state];
    v13 = state == [v5 state];
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

  eventID = [(BMScreenTimeChildState *)self eventID];
  signalDate = [(BMScreenTimeChildState *)self signalDate];
  if (signalDate)
  {
    v6 = MEMORY[0x1E696AD98];
    signalDate2 = [(BMScreenTimeChildState *)self signalDate];
    [signalDate2 timeIntervalSince1970];
    v8 = [v6 numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  userDSID = [(BMScreenTimeChildState *)self userDSID];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMScreenTimeChildState state](self, "state")}];
  v21 = @"starting";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v19 = null;
  v26[0] = null;
  v22 = @"eventID";
  null2 = eventID;
  if (!eventID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v26[1] = null2;
  v23 = @"signalDate";
  null3 = v8;
  if (!v8)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = null3;
  v24 = @"userDSID";
  null4 = userDSID;
  if (!userDSID)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = null4;
  v25 = @"state";
  null5 = v10;
  if (!v10)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = null5;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v21 count:{5, v19}];
  if (v10)
  {
    if (userDSID)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (userDSID)
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
    if (eventID)
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

  if (!eventID)
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

- (BMScreenTimeChildState)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v54[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"starting"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v44 = 0;
LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"eventID"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v43 = 0;
          v18 = 0;
          goto LABEL_42;
        }

        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        v20 = *MEMORY[0x1E698F240];
        v51 = *MEMORY[0x1E696A578];
        errorCopy = error;
        error = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"eventID"];
        errorCopy2 = error;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&errorCopy2 forKeys:&v51 count:1];
        v43 = 0;
        v18 = 0;
        *errorCopy = [v19 initWithDomain:v20 code:2 userInfo:v9];
        goto LABEL_41;
      }

      v43 = v8;
    }

    else
    {
      v43 = 0;
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"signalDate"];
    errorCopy3 = error;
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
          error = [v22 dateFromString:v9];

          goto LABEL_23;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
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
          errorCopy4 = error;
          error = 0;
          v18 = 0;
          *errorCopy4 = v36;
LABEL_40:

          v7 = v42;
LABEL_41:

          goto LABEL_42;
        }

        v15 = v9;
      }

      error = v15;
    }

    else
    {
      error = 0;
    }

LABEL_23:
    v23 = [dictionaryCopy objectForKeyedSubscript:@"userDSID"];
    if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy3)
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
        *errorCopy3 = v29;
        goto LABEL_39;
      }

      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"state"];
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
          if (errorCopy3)
          {
            v40 = objc_alloc(MEMORY[0x1E696ABC0]);
            v38 = *MEMORY[0x1E698F240];
            v45 = *MEMORY[0x1E696A578];
            v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"state"];
            v46 = v32;
            v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
            *errorCopy3 = [v40 initWithDomain:v38 code:2 userInfo:v33];
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

    v18 = -[BMScreenTimeChildState initWithStarting:eventID:signalDate:userDSID:state:](self, "initWithStarting:eventID:signalDate:userDSID:state:", v44, v43, error, v24, [v26 intValue]);
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

  if (!error)
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
  *error = [v16 initWithDomain:v17 code:2 userInfo:v8];
LABEL_42:

LABEL_43:
  v30 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMScreenTimeChildState *)self writeTo:v3];
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

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v39.receiver = self;
  v39.super_class = BMScreenTimeChildState;
  v5 = [(BMEventBase *)&v39 init];
  if (!v5)
  {
    goto LABEL_61;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_59;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v40) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v40 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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
        v25 = [fromCopy position] + 8;
        if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 8, v26 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:&v40 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
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
        v19 = [fromCopy position] + 1;
        if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
        {
          data3 = [fromCopy data];
          [data3 getBytes:&v40 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      if (([fromCopy hasError] & 1) != 0 || v18 > 2)
      {
LABEL_54:
        LODWORD(v18) = 0;
      }

      v5->_state = v18;
LABEL_58:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
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
        v31 = [fromCopy position] + 1;
        if (v31 >= [fromCopy position] && (v32 = objc_msgSend(fromCopy, "position") + 1, v32 <= objc_msgSend(fromCopy, "length")))
        {
          data4 = [fromCopy data];
          [data4 getBytes:&v40 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v34 = (v30 != 0) & ~[fromCopy hasError];
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
  if ([fromCopy hasError])
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
  eventID = [(BMScreenTimeChildState *)self eventID];
  signalDate = [(BMScreenTimeChildState *)self signalDate];
  userDSID = [(BMScreenTimeChildState *)self userDSID];
  v8 = BMScreenTimeChildStateScreenTimeChildStateKindAsString([(BMScreenTimeChildState *)self state]);
  v9 = [v3 initWithFormat:@"BMScreenTimeChildState with starting: %@, eventID: %@, signalDate: %@, userDSID: %@, state: %@", v4, eventID, signalDate, userDSID, v8];

  return v9;
}

- (BMScreenTimeChildState)initWithStarting:(id)starting eventID:(id)d signalDate:(id)date userDSID:(id)iD state:(int)state
{
  startingCopy = starting;
  dCopy = d;
  dateCopy = date;
  iDCopy = iD;
  v19.receiver = self;
  v19.super_class = BMScreenTimeChildState;
  v16 = [(BMEventBase *)&v19 init];
  if (v16)
  {
    v16->_dataVersion = [objc_opt_class() latestDataVersion];
    if (startingCopy)
    {
      v16->_hasStarting = 1;
      v16->_starting = [startingCopy BOOLValue];
    }

    else
    {
      v16->_hasStarting = 0;
      v16->_starting = 0;
    }

    objc_storeStrong(&v16->_eventID, d);
    if (dateCopy)
    {
      v16->_hasRaw_signalDate = 1;
      [dateCopy timeIntervalSince1970];
    }

    else
    {
      v16->_hasRaw_signalDate = 0;
      v17 = -1.0;
    }

    v16->_raw_signalDate = v17;
    objc_storeStrong(&v16->_userDSID, iD);
    v16->_state = state;
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