@interface BMSleepSession
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSleepSession)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSleepSession)initWithStarting:(id)a3 uuid:(id)a4 startTimestamp:(id)a5 endTimestamp:(id)a6;
- (BOOL)isEqual:(id)a3;
- (NSDate)endTimestamp;
- (NSDate)startTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSleepSession

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMSleepSession hasStarting](self, "hasStarting") || [v5 hasStarting])
    {
      if (![(BMSleepSession *)self hasStarting])
      {
        goto LABEL_14;
      }

      if (![v5 hasStarting])
      {
        goto LABEL_14;
      }

      v6 = [(BMSleepSession *)self starting];
      if (v6 != [v5 starting])
      {
        goto LABEL_14;
      }
    }

    v7 = [(BMSleepSession *)self uuid];
    v8 = [v5 uuid];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [(BMSleepSession *)self uuid];
      v11 = [v5 uuid];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_14;
      }
    }

    v14 = [(BMSleepSession *)self startTimestamp];
    v15 = [v5 startTimestamp];
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      v17 = [(BMSleepSession *)self startTimestamp];
      v18 = [v5 startTimestamp];
      v19 = [v17 isEqual:v18];

      if (!v19)
      {
LABEL_14:
        v13 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    v21 = [(BMSleepSession *)self endTimestamp];
    v22 = [v5 endTimestamp];
    if (v21 == v22)
    {
      v13 = 1;
    }

    else
    {
      v23 = [(BMSleepSession *)self endTimestamp];
      v24 = [v5 endTimestamp];
      v13 = [v23 isEqual:v24];
    }

    goto LABEL_15;
  }

  v13 = 0;
LABEL_16:

  return v13;
}

- (NSDate)endTimestamp
{
  if (self->_hasRaw_endTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_endTimestamp];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)startTimestamp
{
  if (self->_hasRaw_startTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_startTimestamp];
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
  v21[4] = *MEMORY[0x1E69E9840];
  if ([(BMSleepSession *)self hasStarting])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSleepSession starting](self, "starting")}];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(BMSleepSession *)self uuid];
  v5 = [(BMSleepSession *)self startTimestamp];
  if (v5)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = [(BMSleepSession *)self startTimestamp];
    [v7 timeIntervalSince1970];
    v8 = [v6 numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(BMSleepSession *)self endTimestamp];
  if (v9)
  {
    v10 = MEMORY[0x1E696AD98];
    v11 = [(BMSleepSession *)self endTimestamp];
    [v11 timeIntervalSince1970];
    v12 = [v10 numberWithDouble:?];
  }

  else
  {
    v12 = 0;
  }

  v20[0] = @"starting";
  v13 = v3;
  if (!v3)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v21[0] = v13;
  v20[1] = @"uuid";
  v14 = v4;
  if (!v4)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v21[1] = v14;
  v20[2] = @"startTimestamp";
  v15 = v8;
  if (!v8)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v21[2] = v15;
  v20[3] = @"endTimestamp";
  v16 = v12;
  if (!v12)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v21[3] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4];
  if (v12)
  {
    if (v8)
    {
      goto LABEL_20;
    }
  }

  else
  {

    if (v8)
    {
LABEL_20:
      if (v4)
      {
        goto LABEL_21;
      }

LABEL_27:

      if (v3)
      {
        goto LABEL_22;
      }

      goto LABEL_28;
    }
  }

  if (!v4)
  {
    goto LABEL_27;
  }

LABEL_21:
  if (v3)
  {
    goto LABEL_22;
  }

LABEL_28:

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BMSleepSession)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v52[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"starting"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v43 = 0;
LABEL_4:
    v8 = [v6 objectForKeyedSubscript:@"uuid"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v44 = 0;
          v20 = 0;
          v19 = v43;
          goto LABEL_35;
        }

        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v49 = *MEMORY[0x1E696A578];
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"uuid"];
        v50 = v10;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        v44 = 0;
        v20 = 0;
        *a4 = [v21 initWithDomain:v22 code:2 userInfo:v9];
        goto LABEL_21;
      }

      v44 = v8;
    }

    else
    {
      v44 = 0;
    }

    v42 = a4;
    v9 = [v6 objectForKeyedSubscript:@"startTimestamp"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = 0;
LABEL_24:
      v24 = [v6 objectForKeyedSubscript:@"endTimestamp"];
      if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        v19 = v43;
        if (objc_opt_isKindOfClass())
        {
          v26 = MEMORY[0x1E695DF00];
          v27 = v24;
          v28 = [v26 alloc];
          [v27 doubleValue];
          v30 = v29;

          v31 = [v28 initWithTimeIntervalSince1970:v30];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v32 = objc_alloc_init(MEMORY[0x1E696AC80]);
            v25 = [v32 dateFromString:v24];

            goto LABEL_32;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (v42)
            {
              v41 = objc_alloc(MEMORY[0x1E696ABC0]);
              v39 = *MEMORY[0x1E698F240];
              v45 = *MEMORY[0x1E696A578];
              v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"endTimestamp"];
              v46 = v37;
              v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
              *v42 = [v41 initWithDomain:v39 code:2 userInfo:v38];
            }

            v25 = 0;
            v20 = 0;
            goto LABEL_33;
          }

          v31 = v24;
        }

        v25 = v31;
      }

      else
      {
        v25 = 0;
        v19 = v43;
      }

LABEL_32:
      self = [(BMSleepSession *)self initWithStarting:v19 uuid:v44 startTimestamp:v10 endTimestamp:v25];
      v20 = self;
LABEL_33:

      goto LABEL_34;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = MEMORY[0x1E695DF00];
      v12 = v9;
      v13 = [v11 alloc];
      [v12 doubleValue];
      v15 = v14;

      v16 = [v13 initWithTimeIntervalSince1970:v15];
LABEL_16:
      v10 = v16;
      goto LABEL_24;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = objc_alloc_init(MEMORY[0x1E696AC80]);
      v10 = [v23 dateFromString:v9];

      goto LABEL_24;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v9;
      goto LABEL_16;
    }

    if (a4)
    {
      v40 = objc_alloc(MEMORY[0x1E696ABC0]);
      v35 = *MEMORY[0x1E698F240];
      v47 = *MEMORY[0x1E696A578];
      v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"startTimestamp"];
      v48 = v25;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v36 = [v40 initWithDomain:v35 code:2 userInfo:v24];
      v10 = 0;
      v20 = 0;
      *v42 = v36;
      v19 = v43;
      goto LABEL_33;
    }

    v10 = 0;
    v20 = 0;
LABEL_21:
    v19 = v43;
LABEL_34:

    goto LABEL_35;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v43 = v7;
    goto LABEL_4;
  }

  if (!a4)
  {
    v19 = 0;
    v20 = 0;
    goto LABEL_36;
  }

  v17 = objc_alloc(MEMORY[0x1E696ABC0]);
  v18 = *MEMORY[0x1E698F240];
  v51 = *MEMORY[0x1E696A578];
  v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"starting"];
  v52[0] = v44;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
  v19 = 0;
  v20 = 0;
  *a4 = [v17 initWithDomain:v18 code:2 userInfo:v8];
LABEL_35:

LABEL_36:
  v33 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSleepSession *)self writeTo:v3];
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

  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_startTimestamp)
  {
    raw_startTimestamp = self->_raw_startTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRaw_endTimestamp)
  {
    raw_endTimestamp = self->_raw_endTimestamp;
    PBDataWriterWriteDoubleField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = BMSleepSession;
  v5 = [(BMEventBase *)&v36 init];
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
        LOBYTE(v37) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v37 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v37 & 0x7F) << v7;
        if ((v37 & 0x80) == 0)
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
      if ((v14 >> 3) > 2)
      {
        if (v15 == 3)
        {
          v5->_hasRaw_startTimestamp = 1;
          v37 = 0;
          v27 = [v4 position] + 8;
          if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 8, v28 <= objc_msgSend(v4, "length")))
          {
            v32 = [v4 data];
            [v32 getBytes:&v37 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v30 = v37;
          v31 = 24;
        }

        else
        {
          if (v15 != 5)
          {
LABEL_27:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_50;
            }

            goto LABEL_48;
          }

          v5->_hasRaw_endTimestamp = 1;
          v37 = 0;
          v18 = [v4 position] + 8;
          if (v18 >= [v4 position] && (v19 = objc_msgSend(v4, "position") + 8, v19 <= objc_msgSend(v4, "length")))
          {
            v29 = [v4 data];
            [v29 getBytes:&v37 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v30 = v37;
          v31 = 40;
        }

        *(&v5->super.super.isa + v31) = v30;
      }

      else if (v15 == 1)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v5->_hasStarting = 1;
        while (1)
        {
          LOBYTE(v37) = 0;
          v23 = [v4 position] + 1;
          if (v23 >= [v4 position] && (v24 = objc_msgSend(v4, "position") + 1, v24 <= objc_msgSend(v4, "length")))
          {
            v25 = [v4 data];
            [v25 getBytes:&v37 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v22 |= (v37 & 0x7F) << v20;
          if ((v37 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v13 = v21++ >= 9;
          if (v13)
          {
            LOBYTE(v26) = 0;
            goto LABEL_42;
          }
        }

        v26 = (v22 != 0) & ~[v4 hasError];
LABEL_42:
        v5->_starting = v26;
      }

      else
      {
        if (v15 != 2)
        {
          goto LABEL_27;
        }

        v16 = PBReaderReadString();
        uuid = v5->_uuid;
        v5->_uuid = v16;
      }

LABEL_48:
      v33 = [v4 position];
    }

    while (v33 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_50:
    v34 = 0;
  }

  else
  {
LABEL_51:
    v34 = v5;
  }

  return v34;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSleepSession starting](self, "starting")}];
  v5 = [(BMSleepSession *)self uuid];
  v6 = [(BMSleepSession *)self startTimestamp];
  v7 = [(BMSleepSession *)self endTimestamp];
  v8 = [v3 initWithFormat:@"BMSleepSession with starting: %@, uuid: %@, startTimestamp: %@, endTimestamp: %@", v4, v5, v6, v7];

  return v8;
}

- (BMSleepSession)initWithStarting:(id)a3 uuid:(id)a4 startTimestamp:(id)a5 endTimestamp:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = BMSleepSession;
  v14 = [(BMEventBase *)&v18 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v10)
    {
      v14->_hasStarting = 1;
      v14->_starting = [v10 BOOLValue];
    }

    else
    {
      v14->_hasStarting = 0;
      v14->_starting = 0;
    }

    objc_storeStrong(&v14->_uuid, a4);
    if (v12)
    {
      v14->_hasRaw_startTimestamp = 1;
      [v12 timeIntervalSince1970];
    }

    else
    {
      v14->_hasRaw_startTimestamp = 0;
      v15 = -1.0;
    }

    v14->_raw_startTimestamp = v15;
    if (v13)
    {
      v14->_hasRaw_endTimestamp = 1;
      [v13 timeIntervalSince1970];
    }

    else
    {
      v14->_hasRaw_endTimestamp = 0;
      v16 = -1.0;
    }

    v14->_raw_endTimestamp = v16;
  }

  return v14;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"starting" number:1 type:12 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uuid" number:2 type:13 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"startTimestamp" number:3 type:0 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"endTimestamp" number:5 type:0 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"starting" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uuid" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"startTimestamp" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:2];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"endTimestamp" dataType:3 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:2];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
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

    v8 = [[BMSleepSession alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[13] = 0;
    }
  }

  return v4;
}

@end