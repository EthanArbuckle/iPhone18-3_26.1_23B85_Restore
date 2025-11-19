@interface BMLighthouseTaskStatusPullMetadata
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMLighthouseTaskStatusPullMetadata)initWithCreationDate:(id)a3;
- (BMLighthouseTaskStatusPullMetadata)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)creationDate;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMLighthouseTaskStatusPullMetadata

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMLighthouseTaskStatusPullMetadata *)self creationDate];
    v7 = [v5 creationDate];
    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      v8 = [(BMLighthouseTaskStatusPullMetadata *)self creationDate];
      v9 = [v5 creationDate];
      v10 = [v8 isEqual:v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSDate)creationDate
{
  if (self->_hasRaw_creationDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_creationDate];
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
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [(BMLighthouseTaskStatusPullMetadata *)self creationDate];
  if (v3)
  {
    v4 = v3;
    v5 = MEMORY[0x1E696AD98];
    v6 = [(BMLighthouseTaskStatusPullMetadata *)self creationDate];
    [v6 timeIntervalSince1970];
    v7 = [v5 numberWithDouble:?];

    v13 = @"creationDate";
    if (v7)
    {
      v8 = 0;
      v9 = v7;
      goto LABEL_6;
    }
  }

  else
  {
    v13 = @"creationDate";
  }

  v9 = [MEMORY[0x1E695DFB0] null];
  v7 = 0;
  v8 = 1;
LABEL_6:
  v14[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  if (v8)
  {
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BMLighthouseTaskStatusPullMetadata)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = [a3 objectForKeyedSubscript:@"creationDate"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    a4 = 0;
LABEL_9:
    self = [(BMLighthouseTaskStatusPullMetadata *)self initWithCreationDate:a4];
    v14 = self;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = MEMORY[0x1E695DF00];
    v8 = v6;
    v9 = [v7 alloc];
    [v8 doubleValue];
    v11 = v10;

    v12 = [v9 initWithTimeIntervalSince1970:v11];
LABEL_6:
    a4 = v12;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = objc_alloc_init(MEMORY[0x1E696AC80]);
    a4 = [v13 dateFromString:v6];

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v6;
    goto LABEL_6;
  }

  if (a4)
  {
    v17 = objc_alloc(MEMORY[0x1E696ABC0]);
    v18 = *MEMORY[0x1E698F240];
    v21 = *MEMORY[0x1E696A578];
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"creationDate"];
    v22[0] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    *a4 = [v17 initWithDomain:v18 code:2 userInfo:v20];

    a4 = 0;
  }

  v14 = 0;
LABEL_10:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMLighthouseTaskStatusPullMetadata *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_hasRaw_creationDate)
  {
    raw_creationDate = self->_raw_creationDate;
    PBDataWriterWriteDoubleField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = BMLighthouseTaskStatusPullMetadata;
  v5 = [(BMEventBase *)&v21 init];
  if (!v5)
  {
    goto LABEL_29;
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
        LOBYTE(v22) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v22 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v22) & 0x7F) << v7;
        if ((LOBYTE(v22) & 0x80) == 0)
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

      if ((v14 >> 3) == 1)
      {
        v5->_hasRaw_creationDate = 1;
        v22 = 0.0;
        v15 = [v4 position] + 8;
        if (v15 >= [v4 position] && (v16 = objc_msgSend(v4, "position") + 8, v16 <= objc_msgSend(v4, "length")))
        {
          v17 = [v4 data];
          [v17 getBytes:&v22 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_raw_creationDate = v22;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_28;
      }

      v18 = [v4 position];
    }

    while (v18 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_28:
    v19 = 0;
  }

  else
  {
LABEL_29:
    v19 = v5;
  }

  return v19;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMLighthouseTaskStatusPullMetadata *)self creationDate];
  v5 = [v3 initWithFormat:@"BMLighthouseTaskStatusPullMetadata with creationDate: %@", v4];

  return v5;
}

- (BMLighthouseTaskStatusPullMetadata)initWithCreationDate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BMLighthouseTaskStatusPullMetadata;
  v5 = [(BMEventBase *)&v8 init];
  if (v5)
  {
    v5->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v4)
    {
      v5->_hasRaw_creationDate = 1;
      [v4 timeIntervalSince1970];
    }

    else
    {
      v5->_hasRaw_creationDate = 0;
      v6 = -1.0;
    }

    v5->_raw_creationDate = v6;
  }

  return v5;
}

+ (id)protoFields
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"creationDate" number:1 type:0 subMessageClass:0];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)columns
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"creationDate" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:2];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
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

    v8 = [[BMLighthouseTaskStatusPullMetadata alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[8] = 0;
    }
  }

  return v4;
}

@end