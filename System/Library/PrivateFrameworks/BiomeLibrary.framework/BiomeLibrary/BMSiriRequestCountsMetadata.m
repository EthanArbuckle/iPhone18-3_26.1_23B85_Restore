@interface BMSiriRequestCountsMetadata
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriRequestCountsMetadata)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSiriRequestCountsMetadata)initWithSchedule:(int)a3 aggregationWindowStartTimestamp:(id)a4 odmId:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSDate)aggregationWindowStartTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriRequestCountsMetadata

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSiriRequestCountsMetadata *)self schedule];
    if (v6 == [v5 schedule])
    {
      v7 = [(BMSiriRequestCountsMetadata *)self aggregationWindowStartTimestamp];
      v8 = [v5 aggregationWindowStartTimestamp];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(BMSiriRequestCountsMetadata *)self aggregationWindowStartTimestamp];
        v11 = [v5 aggregationWindowStartTimestamp];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_5;
        }
      }

      v14 = [(BMSiriRequestCountsMetadata *)self odmId];
      v15 = [v5 odmId];
      if (v14 == v15)
      {
        v13 = 1;
      }

      else
      {
        v16 = [(BMSiriRequestCountsMetadata *)self odmId];
        v17 = [v5 odmId];
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

- (NSDate)aggregationWindowStartTimestamp
{
  if (self->_hasRaw_aggregationWindowStartTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_aggregationWindowStartTimestamp];
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
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriRequestCountsMetadata schedule](self, "schedule")}];
  v4 = [(BMSiriRequestCountsMetadata *)self aggregationWindowStartTimestamp];
  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = [(BMSiriRequestCountsMetadata *)self aggregationWindowStartTimestamp];
    [v6 timeIntervalSince1970];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(BMSiriRequestCountsMetadata *)self odmId];
  v15[0] = @"schedule";
  v9 = v3;
  if (!v3)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = v9;
  v15[1] = @"aggregationWindowStartTimestamp";
  v10 = v7;
  if (!v7)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = v10;
  v15[2] = @"odmId";
  v11 = v8;
  if (!v8)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  if (v8)
  {
    if (v7)
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

  if (!v7)
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

- (BMSiriRequestCountsMetadata)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v38[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"schedule"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_9:
    v10 = [v6 objectForKeyedSubscript:@"aggregationWindowStartTimestamp"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = MEMORY[0x1E695DF00];
        v13 = v10;
        v14 = [v12 alloc];
        [v13 doubleValue];
        v16 = v15;

        v17 = [v14 initWithTimeIntervalSince1970:v16];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v11 = [v18 dateFromString:v10];

          goto LABEL_17;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v11 = 0;
            v21 = 0;
            goto LABEL_22;
          }

          v32 = objc_alloc(MEMORY[0x1E696ABC0]);
          v28 = *MEMORY[0x1E698F240];
          v35 = *MEMORY[0x1E696A578];
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"aggregationWindowStartTimestamp"];
          v36 = v20;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
          v29 = [v32 initWithDomain:v28 code:2 userInfo:v19];
          v11 = 0;
          v21 = 0;
          *a4 = v29;
          goto LABEL_21;
        }

        v17 = v10;
      }

      v11 = v17;
    }

    else
    {
      v11 = 0;
    }

LABEL_17:
    v19 = [v6 objectForKeyedSubscript:@"odmId"];
    if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v31 = objc_alloc(MEMORY[0x1E696ABC0]);
          v30 = *MEMORY[0x1E698F240];
          v33 = *MEMORY[0x1E696A578];
          v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"odmId"];
          v34 = v24;
          v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
          *a4 = [v31 initWithDomain:v30 code:2 userInfo:v25];
        }

        v20 = 0;
        v21 = 0;
        goto LABEL_21;
      }

      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    self = -[BMSiriRequestCountsMetadata initWithSchedule:aggregationWindowStartTimestamp:odmId:](self, "initWithSchedule:aggregationWindowStartTimestamp:odmId:", [v8 intValue], v11, v20);
    v21 = self;
LABEL_21:

    goto LABEL_22;
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
    v9 = [MEMORY[0x1E696AD98] numberWithInt:BMSiriRequestCountsMetadataScheduleFromString(v7)];
    goto LABEL_8;
  }

  if (!a4)
  {
    v8 = 0;
    v21 = 0;
    goto LABEL_23;
  }

  v26 = objc_alloc(MEMORY[0x1E696ABC0]);
  v27 = *MEMORY[0x1E698F240];
  v37 = *MEMORY[0x1E696A578];
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"schedule"];
  v38[0] = v11;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
  v8 = 0;
  v21 = 0;
  *a4 = [v26 initWithDomain:v27 code:2 userInfo:v10];
LABEL_22:

LABEL_23:
  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriRequestCountsMetadata *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  schedule = self->_schedule;
  v8 = v4;
  PBDataWriterWriteUint32Field();
  if (self->_hasRaw_aggregationWindowStartTimestamp)
  {
    raw_aggregationWindowStartTimestamp = self->_raw_aggregationWindowStartTimestamp;
    PBDataWriterWriteDoubleField();
  }

  v7 = v8;
  if (self->_odmId)
  {
    PBDataWriterWriteStringField();
    v7 = v8;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = BMSiriRequestCountsMetadata;
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
        v25 = PBReaderReadString();
        odmId = v5->_odmId;
        v5->_odmId = v25;
      }

      else if (v15 == 2)
      {
        v5->_hasRaw_aggregationWindowStartTimestamp = 1;
        v32 = 0.0;
        v23 = [v4 position] + 8;
        if (v23 >= [v4 position] && (v24 = objc_msgSend(v4, "position") + 8, v24 <= objc_msgSend(v4, "length")))
        {
          v27 = [v4 data];
          [v27 getBytes:&v32 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_raw_aggregationWindowStartTimestamp = v32;
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

        if (([v4 hasError] & 1) != 0 || v18 > 3)
        {
LABEL_38:
          LODWORD(v18) = 0;
        }

        v5->_schedule = v18;
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
  v4 = BMSiriRequestCountsMetadataScheduleAsString([(BMSiriRequestCountsMetadata *)self schedule]);
  v5 = [(BMSiriRequestCountsMetadata *)self aggregationWindowStartTimestamp];
  v6 = [(BMSiriRequestCountsMetadata *)self odmId];
  v7 = [v3 initWithFormat:@"BMSiriRequestCountsMetadata with schedule: %@, aggregationWindowStartTimestamp: %@, odmId: %@", v4, v5, v6];

  return v7;
}

- (BMSiriRequestCountsMetadata)initWithSchedule:(int)a3 aggregationWindowStartTimestamp:(id)a4 odmId:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = BMSiriRequestCountsMetadata;
  v10 = [(BMEventBase *)&v13 init];
  if (v10)
  {
    v10->_dataVersion = [objc_opt_class() latestDataVersion];
    v10->_schedule = a3;
    if (v8)
    {
      v10->_hasRaw_aggregationWindowStartTimestamp = 1;
      [v8 timeIntervalSince1970];
    }

    else
    {
      v10->_hasRaw_aggregationWindowStartTimestamp = 0;
      v11 = -1.0;
    }

    v10->_raw_aggregationWindowStartTimestamp = v11;
    objc_storeStrong(&v10->_odmId, a5);
  }

  return v10;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"schedule" number:1 type:4 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"aggregationWindowStartTimestamp" number:2 type:0 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"odmId" number:3 type:13 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"schedule" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"aggregationWindowStartTimestamp" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:2];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"odmId" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
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

    v8 = [[BMSiriRequestCountsMetadata alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[8] = 0;
    }
  }

  return v4;
}

@end