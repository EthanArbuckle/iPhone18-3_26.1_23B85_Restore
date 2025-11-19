@interface BMLighthouseTaskStatusPushMetadata
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMLighthouseTaskStatusPushMetadata)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMLighthouseTaskStatusPushMetadata)initWithTopic:(id)a3 channelID:(id)a4 pushType:(id)a5 pushPriority:(id)a6 creationDate:(id)a7;
- (BOOL)isEqual:(id)a3;
- (NSDate)creationDate;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMLighthouseTaskStatusPushMetadata

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMLighthouseTaskStatusPushMetadata *)self topic];
    v7 = [v5 topic];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMLighthouseTaskStatusPushMetadata *)self topic];
      v10 = [v5 topic];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    v13 = [(BMLighthouseTaskStatusPushMetadata *)self channelID];
    v14 = [v5 channelID];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMLighthouseTaskStatusPushMetadata *)self channelID];
      v17 = [v5 channelID];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    v19 = [(BMLighthouseTaskStatusPushMetadata *)self pushType];
    v20 = [v5 pushType];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMLighthouseTaskStatusPushMetadata *)self pushType];
      v23 = [v5 pushType];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_17;
      }
    }

    v25 = [(BMLighthouseTaskStatusPushMetadata *)self pushPriority];
    v26 = [v5 pushPriority];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMLighthouseTaskStatusPushMetadata *)self pushPriority];
      v29 = [v5 pushPriority];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
LABEL_17:
        v12 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    v31 = [(BMLighthouseTaskStatusPushMetadata *)self creationDate];
    v32 = [v5 creationDate];
    if (v31 == v32)
    {
      v12 = 1;
    }

    else
    {
      v33 = [(BMLighthouseTaskStatusPushMetadata *)self creationDate];
      v34 = [v5 creationDate];
      v12 = [v33 isEqual:v34];
    }

    goto LABEL_23;
  }

  v12 = 0;
LABEL_24:

  return v12;
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
  v22[5] = *MEMORY[0x1E69E9840];
  v3 = [(BMLighthouseTaskStatusPushMetadata *)self topic];
  v4 = [(BMLighthouseTaskStatusPushMetadata *)self channelID];
  v5 = [(BMLighthouseTaskStatusPushMetadata *)self pushType];
  v6 = [(BMLighthouseTaskStatusPushMetadata *)self pushPriority];
  v7 = [(BMLighthouseTaskStatusPushMetadata *)self creationDate];
  if (v7)
  {
    v8 = MEMORY[0x1E696AD98];
    v9 = [(BMLighthouseTaskStatusPushMetadata *)self creationDate];
    [v9 timeIntervalSince1970];
    v10 = [v8 numberWithDouble:?];
  }

  else
  {
    v10 = 0;
  }

  v19 = v3;
  v21[0] = @"topic";
  v11 = v3;
  if (!v3)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v22[0] = v11;
  v21[1] = @"channelID";
  v12 = v4;
  if (!v4)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v22[1] = v12;
  v21[2] = @"pushType";
  v13 = v5;
  if (!v5)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v22[2] = v13;
  v21[3] = @"pushPriority";
  v14 = v6;
  if (!v6)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v22[3] = v14;
  v21[4] = @"creationDate";
  v15 = v10;
  if (!v10)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v22[4] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:{5, v19}];
  if (v10)
  {
    if (v6)
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (v6)
    {
LABEL_16:
      if (v5)
      {
        goto LABEL_17;
      }

LABEL_25:

      if (v4)
      {
        goto LABEL_18;
      }

      goto LABEL_26;
    }
  }

  if (!v5)
  {
    goto LABEL_25;
  }

LABEL_17:
  if (v4)
  {
    goto LABEL_18;
  }

LABEL_26:

LABEL_18:
  if (!v20)
  {
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BMLighthouseTaskStatusPushMetadata)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v55[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"topic"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"channelID"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v45 = 0;
          v25 = 0;
          goto LABEL_41;
        }

        v39 = a4;
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E698F240];
        v52 = *MEMORY[0x1E696A578];
        v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"channelID"];
        v53 = v43;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
        v45 = 0;
        v25 = 0;
        *v39 = [v26 initWithDomain:v27 code:2 userInfo:v10];
        goto LABEL_40;
      }

      v45 = v9;
    }

    else
    {
      v45 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"pushType"];
    v42 = v8;
    v44 = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v43 = 0;
          v25 = 0;
          goto LABEL_40;
        }

        v28 = a4;
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = *MEMORY[0x1E698F240];
        v50 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"pushType"];
        v51 = v13;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
        v43 = 0;
        v25 = 0;
        *v28 = [v29 initWithDomain:v30 code:2 userInfo:v11];
LABEL_39:

        self = v44;
        v8 = v42;
LABEL_40:

        goto LABEL_41;
      }

      v43 = v10;
    }

    else
    {
      v43 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"pushPriority"];
    v12 = a4;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v13 = 0;
          v25 = 0;
          goto LABEL_39;
        }

        v40 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = *MEMORY[0x1E698F240];
        v48 = *MEMORY[0x1E696A578];
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"pushPriority"];
        v49 = v15;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
        v32 = [v40 initWithDomain:v31 code:2 userInfo:v14];
        v13 = 0;
        v25 = 0;
        *v12 = v32;
        goto LABEL_38;
      }

      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    v14 = [v6 objectForKeyedSubscript:@"creationDate"];
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = MEMORY[0x1E695DF00];
        v17 = v14;
        v18 = [v16 alloc];
        [v17 doubleValue];
        v20 = v19;

        v21 = [v18 initWithTimeIntervalSince1970:v20];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v33 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v15 = [v33 dateFromString:v14];

          goto LABEL_37;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (v12)
          {
            v41 = objc_alloc(MEMORY[0x1E696ABC0]);
            v38 = *MEMORY[0x1E698F240];
            v46 = *MEMORY[0x1E696A578];
            v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"creationDate"];
            v47 = v36;
            v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
            *v12 = [v41 initWithDomain:v38 code:2 userInfo:v37];
          }

          v15 = 0;
          v25 = 0;
          goto LABEL_38;
        }

        v21 = v14;
      }

      v15 = v21;
    }

    else
    {
      v15 = 0;
    }

LABEL_37:
    v25 = [(BMLighthouseTaskStatusPushMetadata *)v44 initWithTopic:v42 channelID:v45 pushType:v43 pushPriority:v13 creationDate:v15];
    v44 = v25;
LABEL_38:

    goto LABEL_39;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!a4)
  {
    v8 = 0;
    v25 = 0;
    goto LABEL_42;
  }

  v22 = a4;
  v23 = objc_alloc(MEMORY[0x1E696ABC0]);
  v24 = *MEMORY[0x1E698F240];
  v54 = *MEMORY[0x1E696A578];
  v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"topic"];
  v55[0] = v45;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:&v54 count:1];
  v8 = 0;
  v25 = 0;
  *v22 = [v23 initWithDomain:v24 code:2 userInfo:v9];
LABEL_41:

LABEL_42:
  v34 = *MEMORY[0x1E69E9840];
  return v25;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMLighthouseTaskStatusPushMetadata *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_topic)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_channelID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_pushType)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_pushPriority)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_hasRaw_creationDate)
  {
    raw_creationDate = self->_raw_creationDate;
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = BMLighthouseTaskStatusPushMetadata;
  v5 = [(BMEventBase *)&v25 init];
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
        LOBYTE(v26) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v26 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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
          v18 = PBReaderReadString();
          v19 = 40;
          goto LABEL_31;
        }

        if (v15 == 2)
        {
          v18 = PBReaderReadString();
          v19 = 48;
LABEL_31:
          v20 = *(&v5->super.super.isa + v19);
          *(&v5->super.super.isa + v19) = v18;

          goto LABEL_32;
        }
      }

      else
      {
        switch(v15)
        {
          case 3:
            v18 = PBReaderReadString();
            v19 = 56;
            goto LABEL_31;
          case 4:
            v18 = PBReaderReadString();
            v19 = 64;
            goto LABEL_31;
          case 5:
            v5->_hasRaw_creationDate = 1;
            v26 = 0.0;
            v16 = [v4 position] + 8;
            if (v16 >= [v4 position] && (v17 = objc_msgSend(v4, "position") + 8, v17 <= objc_msgSend(v4, "length")))
            {
              v22 = [v4 data];
              [v22 getBytes:&v26 range:{objc_msgSend(v4, "position"), 8}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
            }

            else
            {
              [v4 _setError];
            }

            v5->_raw_creationDate = v26;
            goto LABEL_32;
        }
      }

      if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_39;
      }

LABEL_32:
      v21 = [v4 position];
    }

    while (v21 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_39:
    v23 = 0;
  }

  else
  {
LABEL_40:
    v23 = v5;
  }

  return v23;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMLighthouseTaskStatusPushMetadata *)self topic];
  v5 = [(BMLighthouseTaskStatusPushMetadata *)self channelID];
  v6 = [(BMLighthouseTaskStatusPushMetadata *)self pushType];
  v7 = [(BMLighthouseTaskStatusPushMetadata *)self pushPriority];
  v8 = [(BMLighthouseTaskStatusPushMetadata *)self creationDate];
  v9 = [v3 initWithFormat:@"BMLighthouseTaskStatusPushMetadata with topic: %@, channelID: %@, pushType: %@, pushPriority: %@, creationDate: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMLighthouseTaskStatusPushMetadata)initWithTopic:(id)a3 channelID:(id)a4 pushType:(id)a5 pushPriority:(id)a6 creationDate:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = BMLighthouseTaskStatusPushMetadata;
  v17 = [(BMEventBase *)&v21 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_topic, a3);
    objc_storeStrong(&v17->_channelID, a4);
    objc_storeStrong(&v17->_pushType, a5);
    objc_storeStrong(&v17->_pushPriority, a6);
    if (v16)
    {
      v17->_hasRaw_creationDate = 1;
      [v16 timeIntervalSince1970];
    }

    else
    {
      v17->_hasRaw_creationDate = 0;
      v18 = -1.0;
    }

    v17->_raw_creationDate = v18;
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"topic" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"channelID" number:2 type:13 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"pushType" number:3 type:13 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"pushPriority" number:4 type:13 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"creationDate" number:5 type:0 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"topic" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"channelID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"pushType" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"pushPriority" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"creationDate" dataType:3 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:2];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
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

    v8 = [[BMLighthouseTaskStatusPushMetadata alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[8] = 0;
    }
  }

  return v4;
}

@end