@interface BMLighthouseTaskStatusPushMetadata
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMLighthouseTaskStatusPushMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMLighthouseTaskStatusPushMetadata)initWithTopic:(id)topic channelID:(id)d pushType:(id)type pushPriority:(id)priority creationDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (NSDate)creationDate;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMLighthouseTaskStatusPushMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    topic = [(BMLighthouseTaskStatusPushMetadata *)self topic];
    topic2 = [v5 topic];
    v8 = topic2;
    if (topic == topic2)
    {
    }

    else
    {
      topic3 = [(BMLighthouseTaskStatusPushMetadata *)self topic];
      topic4 = [v5 topic];
      v11 = [topic3 isEqual:topic4];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    channelID = [(BMLighthouseTaskStatusPushMetadata *)self channelID];
    channelID2 = [v5 channelID];
    v15 = channelID2;
    if (channelID == channelID2)
    {
    }

    else
    {
      channelID3 = [(BMLighthouseTaskStatusPushMetadata *)self channelID];
      channelID4 = [v5 channelID];
      v18 = [channelID3 isEqual:channelID4];

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    pushType = [(BMLighthouseTaskStatusPushMetadata *)self pushType];
    pushType2 = [v5 pushType];
    v21 = pushType2;
    if (pushType == pushType2)
    {
    }

    else
    {
      pushType3 = [(BMLighthouseTaskStatusPushMetadata *)self pushType];
      pushType4 = [v5 pushType];
      v24 = [pushType3 isEqual:pushType4];

      if (!v24)
      {
        goto LABEL_17;
      }
    }

    pushPriority = [(BMLighthouseTaskStatusPushMetadata *)self pushPriority];
    pushPriority2 = [v5 pushPriority];
    v27 = pushPriority2;
    if (pushPriority == pushPriority2)
    {
    }

    else
    {
      pushPriority3 = [(BMLighthouseTaskStatusPushMetadata *)self pushPriority];
      pushPriority4 = [v5 pushPriority];
      v30 = [pushPriority3 isEqual:pushPriority4];

      if (!v30)
      {
LABEL_17:
        v12 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    creationDate = [(BMLighthouseTaskStatusPushMetadata *)self creationDate];
    creationDate2 = [v5 creationDate];
    if (creationDate == creationDate2)
    {
      v12 = 1;
    }

    else
    {
      creationDate3 = [(BMLighthouseTaskStatusPushMetadata *)self creationDate];
      creationDate4 = [v5 creationDate];
      v12 = [creationDate3 isEqual:creationDate4];
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
  topic = [(BMLighthouseTaskStatusPushMetadata *)self topic];
  channelID = [(BMLighthouseTaskStatusPushMetadata *)self channelID];
  pushType = [(BMLighthouseTaskStatusPushMetadata *)self pushType];
  pushPriority = [(BMLighthouseTaskStatusPushMetadata *)self pushPriority];
  creationDate = [(BMLighthouseTaskStatusPushMetadata *)self creationDate];
  if (creationDate)
  {
    v8 = MEMORY[0x1E696AD98];
    creationDate2 = [(BMLighthouseTaskStatusPushMetadata *)self creationDate];
    [creationDate2 timeIntervalSince1970];
    v10 = [v8 numberWithDouble:?];
  }

  else
  {
    v10 = 0;
  }

  v19 = topic;
  v21[0] = @"topic";
  null = topic;
  if (!topic)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v22[0] = null;
  v21[1] = @"channelID";
  null2 = channelID;
  if (!channelID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v22[1] = null2;
  v21[2] = @"pushType";
  null3 = pushType;
  if (!pushType)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v22[2] = null3;
  v21[3] = @"pushPriority";
  null4 = pushPriority;
  if (!pushPriority)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v22[3] = null4;
  v21[4] = @"creationDate";
  null5 = v10;
  if (!v10)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v22[4] = null5;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:{5, v19}];
  if (v10)
  {
    if (pushPriority)
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (pushPriority)
    {
LABEL_16:
      if (pushType)
      {
        goto LABEL_17;
      }

LABEL_25:

      if (channelID)
      {
        goto LABEL_18;
      }

      goto LABEL_26;
    }
  }

  if (!pushType)
  {
    goto LABEL_25;
  }

LABEL_17:
  if (channelID)
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

- (BMLighthouseTaskStatusPushMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v55[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"topic"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"channelID"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v45 = 0;
          v25 = 0;
          goto LABEL_41;
        }

        errorCopy = error;
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E698F240];
        v52 = *MEMORY[0x1E696A578];
        v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"channelID"];
        v53 = v43;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
        v45 = 0;
        v25 = 0;
        *errorCopy = [v26 initWithDomain:v27 code:2 userInfo:v10];
        goto LABEL_40;
      }

      v45 = v9;
    }

    else
    {
      v45 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"pushType"];
    v42 = v8;
    selfCopy = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v43 = 0;
          v25 = 0;
          goto LABEL_40;
        }

        errorCopy2 = error;
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = *MEMORY[0x1E698F240];
        v50 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"pushType"];
        v51 = v13;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
        v43 = 0;
        v25 = 0;
        *errorCopy2 = [v29 initWithDomain:v30 code:2 userInfo:v11];
LABEL_39:

        self = selfCopy;
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

    v11 = [dictionaryCopy objectForKeyedSubscript:@"pushPriority"];
    errorCopy3 = error;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
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
        *errorCopy3 = v32;
        goto LABEL_38;
      }

      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"creationDate"];
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
          if (errorCopy3)
          {
            v41 = objc_alloc(MEMORY[0x1E696ABC0]);
            v38 = *MEMORY[0x1E698F240];
            v46 = *MEMORY[0x1E696A578];
            v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"creationDate"];
            v47 = v36;
            v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
            *errorCopy3 = [v41 initWithDomain:v38 code:2 userInfo:v37];
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
    v25 = [(BMLighthouseTaskStatusPushMetadata *)selfCopy initWithTopic:v42 channelID:v45 pushType:v43 pushPriority:v13 creationDate:v15];
    selfCopy = v25;
LABEL_38:

    goto LABEL_39;
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
    v25 = 0;
    goto LABEL_42;
  }

  errorCopy4 = error;
  v23 = objc_alloc(MEMORY[0x1E696ABC0]);
  v24 = *MEMORY[0x1E698F240];
  v54 = *MEMORY[0x1E696A578];
  v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"topic"];
  v55[0] = v45;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:&v54 count:1];
  v8 = 0;
  v25 = 0;
  *errorCopy4 = [v23 initWithDomain:v24 code:2 userInfo:v9];
LABEL_41:

LABEL_42:
  v34 = *MEMORY[0x1E69E9840];
  return v25;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMLighthouseTaskStatusPushMetadata *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_topic)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_channelID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_pushType)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_pushPriority)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_hasRaw_creationDate)
  {
    raw_creationDate = self->_raw_creationDate;
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v25.receiver = self;
  v25.super_class = BMLighthouseTaskStatusPushMetadata;
  v5 = [(BMEventBase *)&v25 init];
  if (!v5)
  {
    goto LABEL_40;
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
            v16 = [fromCopy position] + 8;
            if (v16 >= [fromCopy position] && (v17 = objc_msgSend(fromCopy, "position") + 8, v17 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v26 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
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
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  topic = [(BMLighthouseTaskStatusPushMetadata *)self topic];
  channelID = [(BMLighthouseTaskStatusPushMetadata *)self channelID];
  pushType = [(BMLighthouseTaskStatusPushMetadata *)self pushType];
  pushPriority = [(BMLighthouseTaskStatusPushMetadata *)self pushPriority];
  creationDate = [(BMLighthouseTaskStatusPushMetadata *)self creationDate];
  v9 = [v3 initWithFormat:@"BMLighthouseTaskStatusPushMetadata with topic: %@, channelID: %@, pushType: %@, pushPriority: %@, creationDate: %@", topic, channelID, pushType, pushPriority, creationDate];

  return v9;
}

- (BMLighthouseTaskStatusPushMetadata)initWithTopic:(id)topic channelID:(id)d pushType:(id)type pushPriority:(id)priority creationDate:(id)date
{
  topicCopy = topic;
  dCopy = d;
  typeCopy = type;
  priorityCopy = priority;
  dateCopy = date;
  v21.receiver = self;
  v21.super_class = BMLighthouseTaskStatusPushMetadata;
  v17 = [(BMEventBase *)&v21 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_topic, topic);
    objc_storeStrong(&v17->_channelID, d);
    objc_storeStrong(&v17->_pushType, type);
    objc_storeStrong(&v17->_pushPriority, priority);
    if (dateCopy)
    {
      v17->_hasRaw_creationDate = 1;
      [dateCopy timeIntervalSince1970];
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