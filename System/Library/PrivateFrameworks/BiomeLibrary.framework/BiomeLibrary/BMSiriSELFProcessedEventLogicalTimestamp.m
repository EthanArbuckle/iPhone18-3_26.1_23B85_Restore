@interface BMSiriSELFProcessedEventLogicalTimestamp
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriSELFProcessedEventLogicalTimestamp)initWithJSONDictionary:(id)a3 error:(id *)p_isa;
- (BMSiriSELFProcessedEventLogicalTimestamp)initWithTimestampInNanoseconds:(id)a3 clockIdentifier:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (NSUUID)clockIdentifier;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriSELFProcessedEventLogicalTimestamp

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (!-[BMSiriSELFProcessedEventLogicalTimestamp hasTimestampInNanoseconds](self, "hasTimestampInNanoseconds") && ![v5 hasTimestampInNanoseconds] || -[BMSiriSELFProcessedEventLogicalTimestamp hasTimestampInNanoseconds](self, "hasTimestampInNanoseconds") && objc_msgSend(v5, "hasTimestampInNanoseconds") && (v6 = -[BMSiriSELFProcessedEventLogicalTimestamp timestampInNanoseconds](self, "timestampInNanoseconds"), v6 == objc_msgSend(v5, "timestampInNanoseconds")))
    {
      v7 = [(BMSiriSELFProcessedEventLogicalTimestamp *)self clockIdentifier];
      v8 = [v5 clockIdentifier];
      if (v7 == v8)
      {
        v11 = 1;
      }

      else
      {
        v9 = [(BMSiriSELFProcessedEventLogicalTimestamp *)self clockIdentifier];
        v10 = [v5 clockIdentifier];
        v11 = [v9 isEqual:v10];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSUUID)clockIdentifier
{
  raw_clockIdentifier = self->_raw_clockIdentifier;
  if (raw_clockIdentifier)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_clockIdentifier toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v12[2] = *MEMORY[0x1E69E9840];
  if ([(BMSiriSELFProcessedEventLogicalTimestamp *)self hasTimestampInNanoseconds])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMSiriSELFProcessedEventLogicalTimestamp timestampInNanoseconds](self, "timestampInNanoseconds")}];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(BMSiriSELFProcessedEventLogicalTimestamp *)self clockIdentifier];
  v5 = [v4 UUIDString];

  v11[0] = @"timestampInNanoseconds";
  v6 = v3;
  if (!v3)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = @"clockIdentifier";
  v12[0] = v6;
  v7 = v5;
  if (!v5)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (v5)
  {
    if (v3)
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (v3)
    {
      goto LABEL_10;
    }
  }

LABEL_10:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BMSiriSELFProcessedEventLogicalTimestamp)initWithJSONDictionary:(id)a3 error:(id *)p_isa
{
  v31[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"timestampInNanoseconds"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"clockIdentifier"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = 0;
LABEL_7:
      self = [(BMSiriSELFProcessedEventLogicalTimestamp *)self initWithTimestampInNanoseconds:v8 clockIdentifier:v10];

      p_isa = &self->super.super.isa;
LABEL_22:

      goto LABEL_23;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v9;
      v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v11];
      if (!v12)
      {
        if (p_isa)
        {
          v20 = objc_alloc(MEMORY[0x1E696ABC0]);
          v21 = *MEMORY[0x1E698F240];
          v28 = *MEMORY[0x1E696A578];
          v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"clockIdentifier"];
          v29 = v22;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
          *p_isa = [v20 initWithDomain:v21 code:2 userInfo:v23];
        }

        p_isa = 0;
        v9 = v11;
        goto LABEL_22;
      }

      v10 = v12;

      goto LABEL_7;
    }

    if (!p_isa)
    {
      goto LABEL_22;
    }

    v16 = objc_alloc(MEMORY[0x1E696ABC0]);
    v17 = *MEMORY[0x1E698F240];
    v26 = *MEMORY[0x1E696A578];
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clockIdentifier"];
    v27 = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    *p_isa = [v16 initWithDomain:v17 code:2 userInfo:v19];

LABEL_17:
    p_isa = 0;
    goto LABEL_22;
  }

  if (p_isa)
  {
    v13 = objc_alloc(MEMORY[0x1E696ABC0]);
    v14 = *MEMORY[0x1E698F240];
    v30 = *MEMORY[0x1E696A578];
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"timestampInNanoseconds"];
    v31[0] = v9;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    *p_isa = [v13 initWithDomain:v14 code:2 userInfo:v15];

    v8 = 0;
    goto LABEL_17;
  }

  v8 = 0;
LABEL_23:

  v24 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriSELFProcessedEventLogicalTimestamp *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_hasTimestampInNanoseconds)
  {
    timestampInNanoseconds = self->_timestampInNanoseconds;
    PBDataWriterWriteInt64Field();
    v4 = v6;
  }

  if (self->_raw_clockIdentifier)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = BMSiriSELFProcessedEventLogicalTimestamp;
  v5 = [(BMEventBase *)&v27 init];
  if (!v5)
  {
    goto LABEL_40;
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
        v28 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v28 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v28 & 0x7F) << v7;
        if ((v28 & 0x80) == 0)
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

      if ((v14 >> 3) == 2)
      {
        v22 = PBReaderReadData();
        if ([(NSData *)v22 length]!= 16)
        {

          goto LABEL_39;
        }

        raw_clockIdentifier = v5->_raw_clockIdentifier;
        v5->_raw_clockIdentifier = v22;
      }

      else if ((v14 >> 3) == 1)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v5->_hasTimestampInNanoseconds = 1;
        while (1)
        {
          v28 = 0;
          v18 = [v4 position] + 1;
          if (v18 >= [v4 position] && (v19 = objc_msgSend(v4, "position") + 1, v19 <= objc_msgSend(v4, "length")))
          {
            v20 = [v4 data];
            [v20 getBytes:&v28 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v17 |= (v28 & 0x7F) << v15;
          if ((v28 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v13 = v16++ >= 9;
          if (v13)
          {
            v21 = 0;
            goto LABEL_36;
          }
        }

        if ([v4 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_36:
        v5->_timestampInNanoseconds = v21;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_39;
      }

      v24 = [v4 position];
    }

    while (v24 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_39:
    v25 = 0;
  }

  else
  {
LABEL_40:
    v25 = v5;
  }

  return v25;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMSiriSELFProcessedEventLogicalTimestamp timestampInNanoseconds](self, "timestampInNanoseconds")}];
  v5 = [(BMSiriSELFProcessedEventLogicalTimestamp *)self clockIdentifier];
  v6 = [v3 initWithFormat:@"BMSiriSELFProcessedEventLogicalTimestamp with timestampInNanoseconds: %@, clockIdentifier: %@", v4, v5];

  return v6;
}

- (BMSiriSELFProcessedEventLogicalTimestamp)initWithTimestampInNanoseconds:(id)a3 clockIdentifier:(id)a4
{
  v15[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = BMSiriSELFProcessedEventLogicalTimestamp;
  v8 = [(BMEventBase *)&v14 init];
  if (v8)
  {
    v8->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v6)
    {
      v8->_hasTimestampInNanoseconds = 1;
      v9 = [v6 longLongValue];
    }

    else
    {
      v8->_hasTimestampInNanoseconds = 0;
      v9 = -1;
    }

    v8->_timestampInNanoseconds = v9;
    if (v7)
    {
      v15[0] = 0;
      v15[1] = 0;
      [v7 getUUIDBytes:v15];
      v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v15 length:16];
      raw_clockIdentifier = v8->_raw_clockIdentifier;
      v8->_raw_clockIdentifier = v10;
    }

    else
    {
      raw_clockIdentifier = v8->_raw_clockIdentifier;
      v8->_raw_clockIdentifier = 0;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timestampInNanoseconds" number:1 type:3 subMessageClass:0];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clockIdentifier" number:2 type:14 subMessageClass:0];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timestampInNanoseconds" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:3 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clockIdentifier" dataType:6 requestOnly:0 fieldNumber:2 protoDataType:14 convertedType:3];
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

    v8 = [[BMSiriSELFProcessedEventLogicalTimestamp alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[7] = 0;
    }
  }

  return v4;
}

@end