@interface BMASRContextualReplayRecordRequestMetadata
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMASRContextualReplayRecordRequestMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMASRContextualReplayRecordRequestMetadata)initWithTask:(id)task language:(id)language samplingRate:(id)rate requestTimestamp:(id)timestamp ids:(id)ids;
- (BOOL)isEqual:(id)equal;
- (NSDate)requestTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMASRContextualReplayRecordRequestMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    task = [(BMASRContextualReplayRecordRequestMetadata *)self task];
    task2 = [v5 task];
    v8 = task2;
    if (task == task2)
    {
    }

    else
    {
      task3 = [(BMASRContextualReplayRecordRequestMetadata *)self task];
      task4 = [v5 task];
      v11 = [task3 isEqual:task4];

      if (!v11)
      {
        goto LABEL_18;
      }
    }

    language = [(BMASRContextualReplayRecordRequestMetadata *)self language];
    language2 = [v5 language];
    v15 = language2;
    if (language == language2)
    {
    }

    else
    {
      language3 = [(BMASRContextualReplayRecordRequestMetadata *)self language];
      language4 = [v5 language];
      v18 = [language3 isEqual:language4];

      if (!v18)
      {
        goto LABEL_18;
      }
    }

    if (-[BMASRContextualReplayRecordRequestMetadata hasSamplingRate](self, "hasSamplingRate") || [v5 hasSamplingRate])
    {
      if (![(BMASRContextualReplayRecordRequestMetadata *)self hasSamplingRate])
      {
        goto LABEL_18;
      }

      if (![v5 hasSamplingRate])
      {
        goto LABEL_18;
      }

      samplingRate = [(BMASRContextualReplayRecordRequestMetadata *)self samplingRate];
      if (samplingRate != [v5 samplingRate])
      {
        goto LABEL_18;
      }
    }

    requestTimestamp = [(BMASRContextualReplayRecordRequestMetadata *)self requestTimestamp];
    requestTimestamp2 = [v5 requestTimestamp];
    v22 = requestTimestamp2;
    if (requestTimestamp == requestTimestamp2)
    {
    }

    else
    {
      requestTimestamp3 = [(BMASRContextualReplayRecordRequestMetadata *)self requestTimestamp];
      requestTimestamp4 = [v5 requestTimestamp];
      v25 = [requestTimestamp3 isEqual:requestTimestamp4];

      if (!v25)
      {
LABEL_18:
        v12 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    v27 = [(BMASRContextualReplayRecordRequestMetadata *)self ids];
    v28 = [v5 ids];
    if (v27 == v28)
    {
      v12 = 1;
    }

    else
    {
      v29 = [(BMASRContextualReplayRecordRequestMetadata *)self ids];
      v30 = [v5 ids];
      v12 = [v29 isEqual:v30];
    }

    goto LABEL_19;
  }

  v12 = 0;
LABEL_20:

  return v12;
}

- (NSDate)requestTimestamp
{
  if (self->_hasRaw_requestTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_requestTimestamp];
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
  v27[5] = *MEMORY[0x1E69E9840];
  task = [(BMASRContextualReplayRecordRequestMetadata *)self task];
  language = [(BMASRContextualReplayRecordRequestMetadata *)self language];
  if ([(BMASRContextualReplayRecordRequestMetadata *)self hasSamplingRate])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMASRContextualReplayRecordRequestMetadata samplingRate](self, "samplingRate")}];
  }

  else
  {
    v5 = 0;
  }

  requestTimestamp = [(BMASRContextualReplayRecordRequestMetadata *)self requestTimestamp];
  if (requestTimestamp)
  {
    v7 = MEMORY[0x1E696AD98];
    requestTimestamp2 = [(BMASRContextualReplayRecordRequestMetadata *)self requestTimestamp];
    [requestTimestamp2 timeIntervalSince1970];
    v9 = [v7 numberWithDouble:?];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(BMASRContextualReplayRecordRequestMetadata *)self ids];
  jsonDictionary = [v10 jsonDictionary];

  v22 = @"task";
  null = task;
  if (!task)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null;
  v27[0] = null;
  v23 = @"language";
  null2 = language;
  if (!language)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v27[1] = null2;
  v24 = @"samplingRate";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v27[2] = null3;
  v25 = @"requestTimestamp";
  null4 = v9;
  if (!v9)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v27[3] = null4;
  v26 = @"ids";
  null5 = jsonDictionary;
  if (!jsonDictionary)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v27[4] = null5;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v22 count:{5, v20}];
  if (jsonDictionary)
  {
    if (v9)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (v9)
    {
LABEL_19:
      if (v5)
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }
  }

  if (v5)
  {
LABEL_20:
    if (language)
    {
      goto LABEL_21;
    }

LABEL_28:

    if (task)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

LABEL_27:

  if (!language)
  {
    goto LABEL_28;
  }

LABEL_21:
  if (task)
  {
    goto LABEL_22;
  }

LABEL_29:

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BMASRContextualReplayRecordRequestMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v57[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"task"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"language"];
    errorCopy = error;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v46 = 0;
          selfCopy2 = 0;
          goto LABEL_46;
        }

        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v24 = *MEMORY[0x1E698F240];
        v54 = *MEMORY[0x1E696A578];
        v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"language"];
        v55 = v45;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        v46 = 0;
        selfCopy2 = 0;
        *errorCopy = [v23 initWithDomain:v24 code:2 userInfo:v10];
        goto LABEL_45;
      }

      v46 = v9;
    }

    else
    {
      v46 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"samplingRate"];
    v44 = v8;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v45 = 0;
          selfCopy2 = 0;
          goto LABEL_45;
        }

        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v52 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"samplingRate"];
        v53 = v12;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
        v45 = 0;
        selfCopy2 = 0;
        *errorCopy = [v25 initWithDomain:v26 code:2 userInfo:v11];
LABEL_44:

        v8 = v44;
LABEL_45:

        goto LABEL_46;
      }

      v45 = v10;
    }

    else
    {
      v45 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"requestTimestamp"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = MEMORY[0x1E695DF00];
        v14 = v11;
        v15 = [v13 alloc];
        [v14 doubleValue];
        v17 = v16;

        v18 = [v15 initWithTimeIntervalSince1970:v17];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v12 = [v27 dateFromString:v11];

          goto LABEL_30;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v12 = 0;
            selfCopy2 = 0;
            goto LABEL_44;
          }

          v35 = objc_alloc(MEMORY[0x1E696ABC0]);
          selfCopy = self;
          v36 = *MEMORY[0x1E698F240];
          v50 = *MEMORY[0x1E696A578];
          v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"requestTimestamp"];
          v51 = v28;
          v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
          v37 = v36;
          self = selfCopy;
          v38 = [v35 initWithDomain:v37 code:2 userInfo:v29];
          v12 = 0;
          selfCopy2 = 0;
          *errorCopy = v38;
          goto LABEL_42;
        }

        v18 = v11;
      }

      v12 = v18;
    }

    else
    {
      v12 = 0;
    }

LABEL_30:
    v28 = [dictionaryCopy objectForKeyedSubscript:@"ids"];
    if (!v28 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v29 = 0;
LABEL_33:
      self = [(BMASRContextualReplayRecordRequestMetadata *)self initWithTask:v44 language:v46 samplingRate:v45 requestTimestamp:v12 ids:v29];
      selfCopy2 = self;
LABEL_42:

LABEL_43:
      goto LABEL_44;
    }

    selfCopy3 = self;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v28;
      v47 = 0;
      v29 = [[BMASRContextualReplayRecordJoinIds alloc] initWithJSONDictionary:v30 error:&v47];
      v31 = v47;
      if (!v31)
      {

        self = selfCopy3;
        goto LABEL_33;
      }

      if (errorCopy)
      {
        v31 = v31;
        *errorCopy = v31;
      }

      selfCopy2 = 0;
      v28 = v30;
    }

    else
    {
      if (!errorCopy)
      {
        selfCopy2 = 0;
        goto LABEL_43;
      }

      v40 = objc_alloc(MEMORY[0x1E696ABC0]);
      v39 = *MEMORY[0x1E698F240];
      v48 = *MEMORY[0x1E696A578];
      v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"ids"];
      v49 = v29;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      *errorCopy = [v40 initWithDomain:v39 code:2 userInfo:v32];

      selfCopy2 = 0;
    }

    self = selfCopy3;
    goto LABEL_42;
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
    selfCopy2 = 0;
    goto LABEL_47;
  }

  errorCopy2 = error;
  v20 = objc_alloc(MEMORY[0x1E696ABC0]);
  v21 = *MEMORY[0x1E698F240];
  v56 = *MEMORY[0x1E696A578];
  v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"task"];
  v57[0] = v46;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:&v56 count:1];
  v8 = 0;
  selfCopy2 = 0;
  *errorCopy2 = [v20 initWithDomain:v21 code:2 userInfo:v9];
LABEL_46:

LABEL_47:
  v33 = *MEMORY[0x1E69E9840];
  return selfCopy2;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMASRContextualReplayRecordRequestMetadata *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_task)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_language)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasSamplingRate)
  {
    samplingRate = self->_samplingRate;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasRaw_requestTimestamp)
  {
    raw_requestTimestamp = self->_raw_requestTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_ids)
  {
    PBDataWriterPlaceMark();
    [(BMASRContextualReplayRecordJoinIds *)self->_ids writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v34.receiver = self;
  v34.super_class = BMASRContextualReplayRecordRequestMetadata;
  v5 = [(BMEventBase *)&v34 init];
  if (!v5)
  {
    goto LABEL_53;
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
        LOBYTE(v35[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v35 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v35[0] & 0x7F) << v7;
        if ((v35[0] & 0x80) == 0)
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
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 2)
      {
        if (v15 == 1)
        {
          v18 = PBReaderReadString();
          v19 = 48;
        }

        else
        {
          if (v15 != 2)
          {
LABEL_42:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_52;
            }

            goto LABEL_50;
          }

          v18 = PBReaderReadString();
          v19 = 56;
        }

        v29 = *(&v5->super.super.isa + v19);
        *(&v5->super.super.isa + v19) = v18;
      }

      else
      {
        switch(v15)
        {
          case 3:
            v20 = 0;
            v21 = 0;
            v22 = 0;
            v5->_hasSamplingRate = 1;
            while (1)
            {
              LOBYTE(v35[0]) = 0;
              v23 = [fromCopy position] + 1;
              if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 1, v24 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:v35 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v22 |= (v35[0] & 0x7F) << v20;
              if ((v35[0] & 0x80) == 0)
              {
                break;
              }

              v20 += 7;
              v13 = v21++ >= 9;
              if (v13)
              {
                v26 = 0;
                goto LABEL_47;
              }
            }

            if ([fromCopy hasError])
            {
              v26 = 0;
            }

            else
            {
              v26 = v22;
            }

LABEL_47:
            v5->_samplingRate = v26;
            break;
          case 4:
            v5->_hasRaw_requestTimestamp = 1;
            v35[0] = 0;
            v27 = [fromCopy position] + 8;
            if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 8, v28 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:v35 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            *&v5->_raw_requestTimestamp = v35[0];
            break;
          case 5:
            v35[0] = 0;
            v35[1] = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_52;
            }

            v16 = [[BMASRContextualReplayRecordJoinIds alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_52;
            }

            ids = v5->_ids;
            v5->_ids = v16;

            PBReaderRecallMark();
            break;
          default:
            goto LABEL_42;
        }
      }

LABEL_50:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_52:
    v32 = 0;
  }

  else
  {
LABEL_53:
    v32 = v5;
  }

  return v32;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  task = [(BMASRContextualReplayRecordRequestMetadata *)self task];
  language = [(BMASRContextualReplayRecordRequestMetadata *)self language];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMASRContextualReplayRecordRequestMetadata samplingRate](self, "samplingRate")}];
  requestTimestamp = [(BMASRContextualReplayRecordRequestMetadata *)self requestTimestamp];
  v8 = [(BMASRContextualReplayRecordRequestMetadata *)self ids];
  v9 = [v3 initWithFormat:@"BMASRContextualReplayRecordRequestMetadata with task: %@, language: %@, samplingRate: %@, requestTimestamp: %@, ids: %@", task, language, v6, requestTimestamp, v8];

  return v9;
}

- (BMASRContextualReplayRecordRequestMetadata)initWithTask:(id)task language:(id)language samplingRate:(id)rate requestTimestamp:(id)timestamp ids:(id)ids
{
  taskCopy = task;
  languageCopy = language;
  rateCopy = rate;
  timestampCopy = timestamp;
  idsCopy = ids;
  v22.receiver = self;
  v22.super_class = BMASRContextualReplayRecordRequestMetadata;
  v18 = [(BMEventBase *)&v22 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_task, task);
    objc_storeStrong(&v18->_language, language);
    if (rateCopy)
    {
      v18->_hasSamplingRate = 1;
      unsignedIntValue = [rateCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v18->_hasSamplingRate = 0;
    }

    v18->_samplingRate = unsignedIntValue;
    if (timestampCopy)
    {
      v18->_hasRaw_requestTimestamp = 1;
      [timestampCopy timeIntervalSince1970];
    }

    else
    {
      v18->_hasRaw_requestTimestamp = 0;
      v20 = -1.0;
    }

    v18->_raw_requestTimestamp = v20;
    objc_storeStrong(&v18->_ids, ids);
  }

  return v18;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"task" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"language" number:2 type:13 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"samplingRate" number:3 type:4 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"requestTimestamp" number:4 type:0 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"ids" number:5 type:14 subMessageClass:objc_opt_class()];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"task" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"language" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"samplingRate" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"requestTimestamp" dataType:3 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:2];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"ids_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_104216];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __53__BMASRContextualReplayRecordRequestMetadata_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 ids];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
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

    v8 = [[BMASRContextualReplayRecordRequestMetadata alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end