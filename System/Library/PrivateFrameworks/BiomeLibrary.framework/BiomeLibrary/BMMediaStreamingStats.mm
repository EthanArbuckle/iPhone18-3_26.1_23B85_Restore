@interface BMMediaStreamingStats
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMediaStreamingStats)initWithAppName:(id)name eventName:(id)eventName measure:(id)measure extra:(id)extra;
- (BMMediaStreamingStats)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMediaStreamingStats

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    appName = [(BMMediaStreamingStats *)self appName];
    appName2 = [v5 appName];
    v8 = appName2;
    if (appName == appName2)
    {
    }

    else
    {
      appName3 = [(BMMediaStreamingStats *)self appName];
      appName4 = [v5 appName];
      v11 = [appName3 isEqual:appName4];

      if (!v11)
      {
        goto LABEL_18;
      }
    }

    eventName = [(BMMediaStreamingStats *)self eventName];
    eventName2 = [v5 eventName];
    v15 = eventName2;
    if (eventName == eventName2)
    {
    }

    else
    {
      eventName3 = [(BMMediaStreamingStats *)self eventName];
      eventName4 = [v5 eventName];
      v18 = [eventName3 isEqual:eventName4];

      if (!v18)
      {
        goto LABEL_18;
      }
    }

    if (!-[BMMediaStreamingStats hasMeasure](self, "hasMeasure") && ![v5 hasMeasure] || -[BMMediaStreamingStats hasMeasure](self, "hasMeasure") && objc_msgSend(v5, "hasMeasure") && (-[BMMediaStreamingStats measure](self, "measure"), v20 = v19, objc_msgSend(v5, "measure"), v20 == v21))
    {
      extra = [(BMMediaStreamingStats *)self extra];
      extra2 = [v5 extra];
      if (extra == extra2)
      {
        v12 = 1;
      }

      else
      {
        extra3 = [(BMMediaStreamingStats *)self extra];
        extra4 = [v5 extra];
        v12 = [extra3 isEqual:extra4];
      }

      goto LABEL_19;
    }

LABEL_18:
    v12 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v12 = 0;
LABEL_20:

  return v12;
}

- (id)jsonDictionary
{
  v17[4] = *MEMORY[0x1E69E9840];
  appName = [(BMMediaStreamingStats *)self appName];
  eventName = [(BMMediaStreamingStats *)self eventName];
  if (![(BMMediaStreamingStats *)self hasMeasure]|| ([(BMMediaStreamingStats *)self measure], fabs(v5) == INFINITY))
  {
    v7 = 0;
  }

  else
  {
    [(BMMediaStreamingStats *)self measure];
    v6 = MEMORY[0x1E696AD98];
    [(BMMediaStreamingStats *)self measure];
    v7 = [v6 numberWithDouble:?];
  }

  extra = [(BMMediaStreamingStats *)self extra];
  v16[0] = @"appName";
  null = appName;
  if (!appName)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v17[0] = null;
  v16[1] = @"eventName";
  null2 = eventName;
  if (!eventName)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v17[1] = null2;
  v16[2] = @"measure";
  null3 = v7;
  if (!v7)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v17[2] = null3;
  v16[3] = @"extra";
  null4 = extra;
  if (!extra)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v17[3] = null4;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
  if (extra)
  {
    if (v7)
    {
      goto LABEL_15;
    }
  }

  else
  {

    if (v7)
    {
LABEL_15:
      if (eventName)
      {
        goto LABEL_16;
      }

LABEL_22:

      if (appName)
      {
        goto LABEL_17;
      }

      goto LABEL_23;
    }
  }

  if (!eventName)
  {
    goto LABEL_22;
  }

LABEL_16:
  if (appName)
  {
    goto LABEL_17;
  }

LABEL_23:

LABEL_17:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BMMediaStreamingStats)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v41[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"appName"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"eventName"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v15 = 0;
          goto LABEL_34;
        }

        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v20 = *MEMORY[0x1E698F240];
        v38 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"eventName"];
        v39 = v12;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v21 = [v19 initWithDomain:v20 code:2 userInfo:v10];
        error = 0;
        v15 = 0;
        *errorCopy = v21;
        goto LABEL_33;
      }

      v32 = v9;
    }

    else
    {
      v32 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"measure"];
    v31 = v7;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v12 = 0;
          v15 = 0;
          error = v32;
          goto LABEL_33;
        }

        selfCopy3 = self;
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v36 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"measure"];
        v37 = v14;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v23 = [v29 initWithDomain:v22 code:2 userInfo:v13];
        v12 = 0;
        v15 = 0;
        *error = v23;
        goto LABEL_31;
      }

      selfCopy3 = self;
      v12 = v10;
    }

    else
    {
      selfCopy3 = self;
      v12 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"extra"];
    if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = 0;
LABEL_13:
      error = v32;
      v15 = [(BMMediaStreamingStats *)selfCopy3 initWithAppName:v8 eventName:v32 measure:v12 extra:v14];
      selfCopy3 = v15;
LABEL_32:

      self = selfCopy3;
      v7 = v31;
LABEL_33:

      goto LABEL_34;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
      goto LABEL_13;
    }

    if (error)
    {
      v30 = objc_alloc(MEMORY[0x1E696ABC0]);
      v28 = *MEMORY[0x1E698F240];
      v34 = *MEMORY[0x1E696A578];
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"extra"];
      v35 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      *error = [v30 initWithDomain:v28 code:2 userInfo:v25];
    }

    v14 = 0;
    v15 = 0;
LABEL_31:
    error = v32;
    goto LABEL_32;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!error)
  {
    v8 = 0;
    v15 = 0;
    goto LABEL_35;
  }

  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E698F240];
  v40 = *MEMORY[0x1E696A578];
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"appName"];
  v41[0] = v18;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
  v8 = 0;
  v15 = 0;
  *error = [v16 initWithDomain:v17 code:2 userInfo:v9];
  error = v18;
LABEL_34:

LABEL_35:
  v26 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMediaStreamingStats *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_appName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_eventName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_hasMeasure)
  {
    measure = self->_measure;
    PBDataWriterWriteFloatField();
    toCopy = v6;
  }

  if (self->_extra)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v25.receiver = self;
  v25.super_class = BMMediaStreamingStats;
  v5 = [(BMEventBase *)&v25 init];
  if (!v5)
  {
    goto LABEL_37;
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
        LOBYTE(v26) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v26 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v26) & 0x7F) << v7;
        if ((LOBYTE(v26) & 0x80) == 0)
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
      if ((v14 >> 3) > 2)
      {
        if (v15 == 3)
        {
          v5->_hasMeasure = 1;
          v26 = 0.0;
          v19 = [fromCopy position] + 4;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 4, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v26 range:{objc_msgSend(fromCopy, "position"), 4}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
          }

          else
          {
            [fromCopy _setError];
          }

          v5->_measure = v26;
          goto LABEL_34;
        }

        if (v15 != 4)
        {
LABEL_25:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_36;
          }

          goto LABEL_34;
        }

        v16 = PBReaderReadString();
        v17 = 48;
      }

      else if (v15 == 1)
      {
        v16 = PBReaderReadString();
        v17 = 24;
      }

      else
      {
        if (v15 != 2)
        {
          goto LABEL_25;
        }

        v16 = PBReaderReadString();
        v17 = 32;
      }

      v18 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v16;

LABEL_34:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_36:
    v23 = 0;
  }

  else
  {
LABEL_37:
    v23 = v5;
  }

  return v23;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  appName = [(BMMediaStreamingStats *)self appName];
  eventName = [(BMMediaStreamingStats *)self eventName];
  v6 = MEMORY[0x1E696AD98];
  [(BMMediaStreamingStats *)self measure];
  v7 = [v6 numberWithDouble:?];
  extra = [(BMMediaStreamingStats *)self extra];
  v9 = [v3 initWithFormat:@"BMMediaStreamingStats with appName: %@, eventName: %@, measure: %@, extra: %@", appName, eventName, v7, extra];

  return v9;
}

- (BMMediaStreamingStats)initWithAppName:(id)name eventName:(id)eventName measure:(id)measure extra:(id)extra
{
  nameCopy = name;
  eventNameCopy = eventName;
  measureCopy = measure;
  extraCopy = extra;
  v19.receiver = self;
  v19.super_class = BMMediaStreamingStats;
  v15 = [(BMEventBase *)&v19 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v15->_appName, name);
    objc_storeStrong(&v15->_eventName, eventName);
    if (measureCopy)
    {
      v15->_hasMeasure = 1;
      [measureCopy floatValue];
      v17 = v16;
    }

    else
    {
      v15->_hasMeasure = 0;
      v17 = -1.0;
    }

    v15->_measure = v17;
    objc_storeStrong(&v15->_extra, extra);
  }

  return v15;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appName" number:1 type:13 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventName" number:2 type:13 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"measure" number:3 type:1 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"extra" number:4 type:13 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appName" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventName" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"measure" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:1 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"extra" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
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

    v8 = [[BMMediaStreamingStats alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end