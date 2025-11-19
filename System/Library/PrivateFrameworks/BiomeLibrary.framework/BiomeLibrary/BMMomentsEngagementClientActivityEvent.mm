@interface BMMomentsEngagementClientActivityEvent
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMomentsEngagementClientActivityEvent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMMomentsEngagementClientActivityEvent)initWithType:(int)a3 clientIdentifier:(id)a4 timestamp:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSDate)timestamp;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMomentsEngagementClientActivityEvent

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMomentsEngagementClientActivityEvent *)self type];
    if (v6 == [v5 type])
    {
      v7 = [(BMMomentsEngagementClientActivityEvent *)self clientIdentifier];
      v8 = [v5 clientIdentifier];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(BMMomentsEngagementClientActivityEvent *)self clientIdentifier];
        v11 = [v5 clientIdentifier];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_5;
        }
      }

      v14 = [(BMMomentsEngagementClientActivityEvent *)self timestamp];
      v15 = [v5 timestamp];
      if (v14 == v15)
      {
        v13 = 1;
      }

      else
      {
        v16 = [(BMMomentsEngagementClientActivityEvent *)self timestamp];
        v17 = [v5 timestamp];
        v13 = [v16 isEqual:v17];
      }

      goto LABEL_12;
    }

LABEL_5:
    v13 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v13 = 0;
LABEL_13:

  return v13;
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
  v16[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagementClientActivityEvent type](self, "type")}];
  v4 = [(BMMomentsEngagementClientActivityEvent *)self clientIdentifier];
  v5 = [(BMMomentsEngagementClientActivityEvent *)self timestamp];
  if (v5)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = [(BMMomentsEngagementClientActivityEvent *)self timestamp];
    [v7 timeIntervalSince1970];
    v8 = [v6 numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  v15[0] = @"type";
  v9 = v3;
  if (!v3)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = v9;
  v15[1] = @"clientIdentifier";
  v10 = v4;
  if (!v4)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = v10;
  v15[2] = @"timestamp";
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

- (BMMomentsEngagementClientActivityEvent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v38[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"type"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_9:
    v10 = [v6 objectForKeyedSubscript:@"clientIdentifier"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v11 = 0;
          v22 = 0;
          goto LABEL_26;
        }

        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v20 = *MEMORY[0x1E698F240];
        v35 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientIdentifier"];
        v36 = v13;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        v21 = [v31 initWithDomain:v20 code:2 userInfo:v12];
        v11 = 0;
        v22 = 0;
        *a4 = v21;
        goto LABEL_25;
      }

      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [v6 objectForKeyedSubscript:@"timestamp"];
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = MEMORY[0x1E695DF00];
        v15 = v12;
        v16 = [v14 alloc];
        [v15 doubleValue];
        v18 = v17;

        v19 = [v16 initWithTimeIntervalSince1970:v18];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v13 = [v23 dateFromString:v12];

          goto LABEL_24;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (a4)
          {
            v32 = objc_alloc(MEMORY[0x1E696ABC0]);
            v30 = *MEMORY[0x1E698F240];
            v33 = *MEMORY[0x1E696A578];
            v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"timestamp"];
            v34 = v28;
            v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
            *a4 = [v32 initWithDomain:v30 code:2 userInfo:v29];
          }

          v13 = 0;
          v22 = 0;
          goto LABEL_25;
        }

        v19 = v12;
      }

      v13 = v19;
    }

    else
    {
      v13 = 0;
    }

LABEL_24:
    self = -[BMMomentsEngagementClientActivityEvent initWithType:clientIdentifier:timestamp:](self, "initWithType:clientIdentifier:timestamp:", [v8 intValue], v11, v13);
    v22 = self;
LABEL_25:

    goto LABEL_26;
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
    v9 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEngagementClientActivityEventTypeFromString(v7)];
    goto LABEL_8;
  }

  if (!a4)
  {
    v8 = 0;
    v22 = 0;
    goto LABEL_27;
  }

  v26 = objc_alloc(MEMORY[0x1E696ABC0]);
  v27 = *MEMORY[0x1E698F240];
  v37 = *MEMORY[0x1E696A578];
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"type"];
  v38[0] = v11;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
  v8 = 0;
  v22 = 0;
  *a4 = [v26 initWithDomain:v27 code:2 userInfo:v10];
LABEL_26:

LABEL_27:
  v24 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMomentsEngagementClientActivityEvent *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  type = self->_type;
  v7 = v4;
  PBDataWriterWriteUint32Field();
  if (self->_clientIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_timestamp)
  {
    raw_timestamp = self->_raw_timestamp;
    PBDataWriterWriteDoubleField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = BMMomentsEngagementClientActivityEvent;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_45;
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
        LOBYTE(v32) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v32 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v32) & 0x7F) << v7;
        if ((LOBYTE(v32) & 0x80) == 0)
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
      if ((v14 >> 3) == 3)
      {
        v5->_hasRaw_timestamp = 1;
        v32 = 0.0;
        v25 = [v4 position] + 8;
        if (v25 >= [v4 position] && (v26 = objc_msgSend(v4, "position") + 8, v26 <= objc_msgSend(v4, "length")))
        {
          v27 = [v4 data];
          [v27 getBytes:&v32 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_raw_timestamp = v32;
      }

      else if (v15 == 2)
      {
        v23 = PBReaderReadString();
        clientIdentifier = v5->_clientIdentifier;
        v5->_clientIdentifier = v23;
      }

      else if (v15 == 1)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v32) = 0;
          v19 = [v4 position] + 1;
          if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
          {
            v21 = [v4 data];
            [v21 getBytes:&v32 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v18 |= (LOBYTE(v32) & 0x7F) << v16;
          if ((LOBYTE(v32) & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          if (v17++ > 8)
          {
            goto LABEL_38;
          }
        }

        if (([v4 hasError] & 1) != 0 || v18 > 4)
        {
LABEL_38:
          LODWORD(v18) = 0;
        }

        v5->_type = v18;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_44;
      }

      v28 = [v4 position];
    }

    while (v28 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_44:
    v29 = 0;
  }

  else
  {
LABEL_45:
    v29 = v5;
  }

  return v29;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMMomentsEngagementClientActivityEventTypeAsString([(BMMomentsEngagementClientActivityEvent *)self type]);
  v5 = [(BMMomentsEngagementClientActivityEvent *)self clientIdentifier];
  v6 = [(BMMomentsEngagementClientActivityEvent *)self timestamp];
  v7 = [v3 initWithFormat:@"BMMomentsEngagementClientActivityEvent with type: %@, clientIdentifier: %@, timestamp: %@", v4, v5, v6];

  return v7;
}

- (BMMomentsEngagementClientActivityEvent)initWithType:(int)a3 clientIdentifier:(id)a4 timestamp:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = BMMomentsEngagementClientActivityEvent;
  v11 = [(BMEventBase *)&v14 init];
  if (v11)
  {
    v11->_dataVersion = [objc_opt_class() latestDataVersion];
    v11->_type = a3;
    objc_storeStrong(&v11->_clientIdentifier, a4);
    if (v10)
    {
      v11->_hasRaw_timestamp = 1;
      [v10 timeIntervalSince1970];
    }

    else
    {
      v11->_hasRaw_timestamp = 0;
      v12 = -1.0;
    }

    v11->_raw_timestamp = v12;
  }

  return v11;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"type" number:1 type:4 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientIdentifier" number:2 type:13 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timestamp" number:3 type:0 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"type" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientIdentifier" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timestamp" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:2];
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

    v8 = [[BMMomentsEngagementClientActivityEvent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[8] = 0;
    }
  }

  return v4;
}

@end