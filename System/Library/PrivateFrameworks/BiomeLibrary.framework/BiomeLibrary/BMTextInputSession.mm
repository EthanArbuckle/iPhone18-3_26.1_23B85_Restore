@interface BMTextInputSession
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMTextInputSession)initWithDuration:(id)duration timestamp:(id)timestamp bundleID:(id)d sessionInput:(int)input sessionID:(id)iD;
- (BMTextInputSession)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)timestamp;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMTextInputSession

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMTextInputSession hasDuration](self, "hasDuration") || [v5 hasDuration])
    {
      if (![(BMTextInputSession *)self hasDuration])
      {
        goto LABEL_19;
      }

      if (![v5 hasDuration])
      {
        goto LABEL_19;
      }

      [(BMTextInputSession *)self duration];
      v7 = v6;
      [v5 duration];
      if (v7 != v8)
      {
        goto LABEL_19;
      }
    }

    timestamp = [(BMTextInputSession *)self timestamp];
    timestamp2 = [v5 timestamp];
    v11 = timestamp2;
    if (timestamp == timestamp2)
    {
    }

    else
    {
      timestamp3 = [(BMTextInputSession *)self timestamp];
      timestamp4 = [v5 timestamp];
      v14 = [timestamp3 isEqual:timestamp4];

      if (!v14)
      {
        goto LABEL_19;
      }
    }

    bundleID = [(BMTextInputSession *)self bundleID];
    bundleID2 = [v5 bundleID];
    v18 = bundleID2;
    if (bundleID == bundleID2)
    {
    }

    else
    {
      bundleID3 = [(BMTextInputSession *)self bundleID];
      bundleID4 = [v5 bundleID];
      v21 = [bundleID3 isEqual:bundleID4];

      if (!v21)
      {
        goto LABEL_19;
      }
    }

    sessionInput = [(BMTextInputSession *)self sessionInput];
    if (sessionInput == [v5 sessionInput])
    {
      sessionID = [(BMTextInputSession *)self sessionID];
      sessionID2 = [v5 sessionID];
      if (sessionID == sessionID2)
      {
        v15 = 1;
      }

      else
      {
        sessionID3 = [(BMTextInputSession *)self sessionID];
        sessionID4 = [v5 sessionID];
        v15 = [sessionID3 isEqual:sessionID4];
      }

      goto LABEL_20;
    }

LABEL_19:
    v15 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v15 = 0;
LABEL_21:

  return v15;
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
  v28[5] = *MEMORY[0x1E69E9840];
  if (![(BMTextInputSession *)self hasDuration]|| ([(BMTextInputSession *)self duration], fabs(v3) == INFINITY))
  {
    v5 = 0;
  }

  else
  {
    [(BMTextInputSession *)self duration];
    v4 = MEMORY[0x1E696AD98];
    [(BMTextInputSession *)self duration];
    v5 = [v4 numberWithDouble:?];
  }

  timestamp = [(BMTextInputSession *)self timestamp];
  if (timestamp)
  {
    v7 = MEMORY[0x1E696AD98];
    timestamp2 = [(BMTextInputSession *)self timestamp];
    [timestamp2 timeIntervalSince1970];
    v9 = [v7 numberWithDouble:?];
  }

  else
  {
    v9 = 0;
  }

  bundleID = [(BMTextInputSession *)self bundleID];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMTextInputSession sessionInput](self, "sessionInput")}];
  sessionID = [(BMTextInputSession *)self sessionID];
  v23 = @"duration";
  null = v5;
  if (!v5)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null;
  v28[0] = null;
  v24 = @"timestamp";
  null2 = v9;
  if (!v9)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v28[1] = null2;
  v25 = @"bundleID";
  null3 = bundleID;
  if (!bundleID)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v28[2] = null3;
  v26 = @"sessionInput";
  null4 = v11;
  if (!v11)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v28[3] = null4;
  v27 = @"sessionID";
  null5 = sessionID;
  if (!sessionID)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v28[4] = null5;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v23 count:{5, v21}];
  if (sessionID)
  {
    if (v11)
    {
      goto LABEL_20;
    }
  }

  else
  {

    if (v11)
    {
LABEL_20:
      if (bundleID)
      {
        goto LABEL_21;
      }

      goto LABEL_28;
    }
  }

  if (bundleID)
  {
LABEL_21:
    if (v9)
    {
      goto LABEL_22;
    }

LABEL_29:

    if (v5)
    {
      goto LABEL_23;
    }

    goto LABEL_30;
  }

LABEL_28:

  if (!v9)
  {
    goto LABEL_29;
  }

LABEL_22:
  if (v5)
  {
    goto LABEL_23;
  }

LABEL_30:

LABEL_23:
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (BMTextInputSession)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v52[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"duration"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v42 = 0;
LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = MEMORY[0x1E695DF00];
        v10 = v8;
        v11 = [v9 alloc];
        [v10 doubleValue];
        v13 = v12;

        v14 = [v11 initWithTimeIntervalSince1970:v13];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v40 = [v19 dateFromString:v8];

          goto LABEL_16;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v18 = 0;
            goto LABEL_38;
          }

          v33 = objc_alloc(MEMORY[0x1E696ABC0]);
          v34 = *MEMORY[0x1E698F240];
          v49 = *MEMORY[0x1E696A578];
          v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"timestamp"];
          v50 = v41;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
          v18 = 0;
          *error = [v33 initWithDomain:v34 code:2 userInfo:v20];
          error = 0;
          goto LABEL_37;
        }

        v14 = v8;
      }

      v40 = v14;
    }

    else
    {
      v40 = 0;
    }

LABEL_16:
    v20 = [dictionaryCopy objectForKeyedSubscript:@"bundleID"];
    v39 = v7;
    if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v41 = 0;
          v18 = 0;
          error = v40;
          goto LABEL_37;
        }

        selfCopy3 = self;
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v47 = *MEMORY[0x1E696A578];
        v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
        v48 = v23;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        v41 = 0;
        v18 = 0;
        *error = [v25 initWithDomain:v26 code:2 userInfo:v22];
        goto LABEL_55;
      }

      selfCopy3 = self;
      v41 = v20;
    }

    else
    {
      selfCopy3 = self;
      v41 = 0;
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"sessionInput"];
    if (!v22 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v23 = 0;
      goto LABEL_31;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v22;
LABEL_30:
      v23 = v24;
LABEL_31:
      v27 = [dictionaryCopy objectForKeyedSubscript:@"sessionID"];
      if (!v27 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v28 = 0;
LABEL_34:
        error = v40;
        v18 = -[BMTextInputSession initWithDuration:timestamp:bundleID:sessionInput:sessionID:](selfCopy3, "initWithDuration:timestamp:bundleID:sessionInput:sessionID:", v42, v40, v41, [v23 intValue], v28);
        selfCopy3 = v18;
LABEL_35:

LABEL_36:
        self = selfCopy3;
        v7 = v39;
LABEL_37:

        goto LABEL_38;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = v27;
        goto LABEL_34;
      }

      if (error)
      {
        v37 = objc_alloc(MEMORY[0x1E696ABC0]);
        v35 = *MEMORY[0x1E698F240];
        v43 = *MEMORY[0x1E696A578];
        v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sessionID"];
        v44 = v31;
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        *error = [v37 initWithDomain:v35 code:2 userInfo:v32];
      }

      v28 = 0;
      v18 = 0;
LABEL_50:
      error = v40;
      goto LABEL_35;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [MEMORY[0x1E696AD98] numberWithInt:BMTextInputSessionInputFromString(v22)];
      goto LABEL_30;
    }

    if (error)
    {
      v38 = objc_alloc(MEMORY[0x1E696ABC0]);
      v36 = *MEMORY[0x1E698F240];
      v45 = *MEMORY[0x1E696A578];
      v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"sessionInput"];
      v46 = v28;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v23 = 0;
      v18 = 0;
      *error = [v38 initWithDomain:v36 code:2 userInfo:v27];
      goto LABEL_50;
    }

    v23 = 0;
    v18 = 0;
LABEL_55:
    error = v40;
    goto LABEL_36;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = v7;
    goto LABEL_4;
  }

  if (!error)
  {
    v42 = 0;
    v18 = 0;
    goto LABEL_39;
  }

  v15 = objc_alloc(MEMORY[0x1E696ABC0]);
  v16 = *MEMORY[0x1E698F240];
  v51 = *MEMORY[0x1E696A578];
  v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"duration"];
  v52[0] = v17;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
  v42 = 0;
  v18 = 0;
  *error = [v15 initWithDomain:v16 code:2 userInfo:v8];
  error = v17;
LABEL_38:

LABEL_39:
  v29 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMTextInputSession *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasDuration)
  {
    duration = self->_duration;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRaw_timestamp)
  {
    raw_timestamp = self->_raw_timestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  sessionInput = self->_sessionInput;
  PBDataWriterWriteUint32Field();
  if (self->_sessionID)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v37.receiver = self;
  v37.super_class = BMTextInputSession;
  v5 = [(BMEventBase *)&v37 init];
  if (!v5)
  {
    goto LABEL_56;
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
        LOBYTE(v38) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v38 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v38 & 0x7F) << v7;
        if ((v38 & 0x80) == 0)
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
      if ((v14 >> 3) <= 2)
      {
        if (v15 == 1)
        {
          v5->_hasDuration = 1;
          v38 = 0;
          v28 = [fromCopy position] + 8;
          if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 8, v29 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v38 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v31 = v38;
          v32 = 48;
        }

        else
        {
          if (v15 != 2)
          {
LABEL_42:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_55;
            }

            goto LABEL_53;
          }

          v5->_hasRaw_timestamp = 1;
          v38 = 0;
          v23 = [fromCopy position] + 8;
          if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 8, v24 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v38 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v31 = v38;
          v32 = 24;
        }

        *(&v5->super.super.isa + v32) = v31;
      }

      else
      {
        if (v15 == 3)
        {
          v25 = PBReaderReadString();
          v26 = 56;
LABEL_38:
          v27 = *(&v5->super.super.isa + v26);
          *(&v5->super.super.isa + v26) = v25;

          goto LABEL_53;
        }

        if (v15 == 5)
        {
          v25 = PBReaderReadString();
          v26 = 64;
          goto LABEL_38;
        }

        if (v15 != 4)
        {
          goto LABEL_42;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v38) = 0;
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v38 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (v38 & 0x7F) << v16;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          if (v17++ > 8)
          {
            goto LABEL_46;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v18 > 4)
        {
LABEL_46:
          LODWORD(v18) = 0;
        }

        v5->_sessionInput = v18;
      }

LABEL_53:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_55:
    v35 = 0;
  }

  else
  {
LABEL_56:
    v35 = v5;
  }

  return v35;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = MEMORY[0x1E696AD98];
  [(BMTextInputSession *)self duration];
  v5 = [v4 numberWithDouble:?];
  timestamp = [(BMTextInputSession *)self timestamp];
  bundleID = [(BMTextInputSession *)self bundleID];
  v8 = BMTextInputSessionInputAsString([(BMTextInputSession *)self sessionInput]);
  sessionID = [(BMTextInputSession *)self sessionID];
  v10 = [v3 initWithFormat:@"BMTextInputSession with duration: %@, timestamp: %@, bundleID: %@, sessionInput: %@, sessionID: %@", v5, timestamp, bundleID, v8, sessionID];

  return v10;
}

- (BMTextInputSession)initWithDuration:(id)duration timestamp:(id)timestamp bundleID:(id)d sessionInput:(int)input sessionID:(id)iD
{
  durationCopy = duration;
  timestampCopy = timestamp;
  dCopy = d;
  iDCopy = iD;
  v20.receiver = self;
  v20.super_class = BMTextInputSession;
  v16 = [(BMEventBase *)&v20 init];
  if (v16)
  {
    v16->_dataVersion = [objc_opt_class() latestDataVersion];
    if (durationCopy)
    {
      v16->_hasDuration = 1;
      [durationCopy doubleValue];
    }

    else
    {
      v16->_hasDuration = 0;
      v17 = -1.0;
    }

    v16->_duration = v17;
    if (timestampCopy)
    {
      v16->_hasRaw_timestamp = 1;
      [timestampCopy timeIntervalSince1970];
    }

    else
    {
      v16->_hasRaw_timestamp = 0;
      v18 = -1.0;
    }

    v16->_raw_timestamp = v18;
    objc_storeStrong(&v16->_bundleID, d);
    v16->_sessionInput = input;
    objc_storeStrong(&v16->_sessionID, iD);
  }

  return v16;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"duration" number:1 type:0 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timestamp" number:2 type:0 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:3 type:13 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sessionInput" number:4 type:4 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sessionID" number:5 type:13 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"duration" dataType:1 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timestamp" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:2];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sessionInput" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sessionID" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version)
  {
    if (version != 1)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
    v7 = BMTextInputSession;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
    v7 = BMTextInputSession_v0;
  }

  v8 = [[v7 alloc] initByReadFrom:v6];
  v9 = v8;
  if (v8)
  {
    *(v8 + 36) = version;
  }

LABEL_9:

  return v9;
}

@end