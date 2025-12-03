@interface BMSiriInferredHelpfulness
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriInferredHelpfulness)initWithAbsoluteTimestamp:(id)timestamp inferredHelpfulnessScore:(id)score restatementScore:(id)restatementScore turnID:(id)d modelID:(id)iD;
- (BMSiriInferredHelpfulness)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriInferredHelpfulness

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    absoluteTimestamp = [(BMSiriInferredHelpfulness *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v8 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMSiriInferredHelpfulness *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v11 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v11)
      {
        goto LABEL_19;
      }
    }

    if (-[BMSiriInferredHelpfulness hasInferredHelpfulnessScore](self, "hasInferredHelpfulnessScore") || [v5 hasInferredHelpfulnessScore])
    {
      if (![(BMSiriInferredHelpfulness *)self hasInferredHelpfulnessScore])
      {
        goto LABEL_19;
      }

      if (![v5 hasInferredHelpfulnessScore])
      {
        goto LABEL_19;
      }

      [(BMSiriInferredHelpfulness *)self inferredHelpfulnessScore];
      v14 = v13;
      [v5 inferredHelpfulnessScore];
      if (v14 != v15)
      {
        goto LABEL_19;
      }
    }

    if (-[BMSiriInferredHelpfulness hasRestatementScore](self, "hasRestatementScore") || [v5 hasRestatementScore])
    {
      if (![(BMSiriInferredHelpfulness *)self hasRestatementScore])
      {
        goto LABEL_19;
      }

      if (![v5 hasRestatementScore])
      {
        goto LABEL_19;
      }

      [(BMSiriInferredHelpfulness *)self restatementScore];
      v17 = v16;
      [v5 restatementScore];
      if (v17 != v18)
      {
        goto LABEL_19;
      }
    }

    turnID = [(BMSiriInferredHelpfulness *)self turnID];
    turnID2 = [v5 turnID];
    v21 = turnID2;
    if (turnID == turnID2)
    {
    }

    else
    {
      turnID3 = [(BMSiriInferredHelpfulness *)self turnID];
      turnID4 = [v5 turnID];
      v24 = [turnID3 isEqual:turnID4];

      if (!v24)
      {
LABEL_19:
        v12 = 0;
LABEL_20:

        goto LABEL_21;
      }
    }

    modelID = [(BMSiriInferredHelpfulness *)self modelID];
    modelID2 = [v5 modelID];
    if (modelID == modelID2)
    {
      v12 = 1;
    }

    else
    {
      modelID3 = [(BMSiriInferredHelpfulness *)self modelID];
      modelID4 = [v5 modelID];
      v12 = [modelID3 isEqual:modelID4];
    }

    goto LABEL_20;
  }

  v12 = 0;
LABEL_21:

  return v12;
}

- (NSDate)absoluteTimestamp
{
  if (self->_hasRaw_absoluteTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_absoluteTimestamp];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v26[5] = *MEMORY[0x1E69E9840];
  absoluteTimestamp = [(BMSiriInferredHelpfulness *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v4 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMSiriInferredHelpfulness *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSinceReferenceDate];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  if (![(BMSiriInferredHelpfulness *)self hasInferredHelpfulnessScore]|| ([(BMSiriInferredHelpfulness *)self inferredHelpfulnessScore], fabs(v7) == INFINITY))
  {
    v9 = 0;
  }

  else
  {
    [(BMSiriInferredHelpfulness *)self inferredHelpfulnessScore];
    v8 = MEMORY[0x1E696AD98];
    [(BMSiriInferredHelpfulness *)self inferredHelpfulnessScore];
    v9 = [v8 numberWithDouble:?];
  }

  if (![(BMSiriInferredHelpfulness *)self hasRestatementScore]|| ([(BMSiriInferredHelpfulness *)self restatementScore], fabs(v10) == INFINITY))
  {
    v12 = 0;
  }

  else
  {
    [(BMSiriInferredHelpfulness *)self restatementScore];
    v11 = MEMORY[0x1E696AD98];
    [(BMSiriInferredHelpfulness *)self restatementScore];
    v12 = [v11 numberWithDouble:?];
  }

  turnID = [(BMSiriInferredHelpfulness *)self turnID];
  modelID = [(BMSiriInferredHelpfulness *)self modelID];
  v23 = v6;
  v25[0] = @"absoluteTimestamp";
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v26[0] = null;
  v25[1] = @"inferredHelpfulnessScore";
  null2 = v9;
  if (!v9)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v26[1] = null2;
  v25[2] = @"restatementScore";
  null3 = v12;
  if (!v12)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = null3;
  v25[3] = @"turnID";
  null4 = turnID;
  if (!turnID)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = null4;
  v25[4] = @"modelID";
  null5 = modelID;
  if (!modelID)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = null5;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:{5, v23}];
  if (modelID)
  {
    if (turnID)
    {
      goto LABEL_24;
    }
  }

  else
  {

    if (turnID)
    {
LABEL_24:
      if (v12)
      {
        goto LABEL_25;
      }

LABEL_33:

      if (v9)
      {
        goto LABEL_26;
      }

      goto LABEL_34;
    }
  }

  if (!v12)
  {
    goto LABEL_33;
  }

LABEL_25:
  if (v9)
  {
    goto LABEL_26;
  }

LABEL_34:

LABEL_26:
  if (!v24)
  {
  }

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (BMSiriInferredHelpfulness)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v57[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v47 = 0;
LABEL_9:
    v15 = [dictionaryCopy objectForKeyedSubscript:@"inferredHelpfulnessScore"];
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v22 = 0;
          goto LABEL_43;
        }

        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v25 = *MEMORY[0x1E698F240];
        v54 = *MEMORY[0x1E696A578];
        v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"inferredHelpfulnessScore"];
        v55 = v46;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        v26 = [v23 initWithDomain:v25 code:2 userInfo:v16];
        error = 0;
        v22 = 0;
        *errorCopy = v26;
        goto LABEL_42;
      }

      v45 = v15;
    }

    else
    {
      v45 = 0;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"restatementScore"];
    v44 = v7;
    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v46 = 0;
          v22 = 0;
          error = v45;
          goto LABEL_42;
        }

        selfCopy3 = self;
        v27 = objc_alloc(MEMORY[0x1E696ABC0]);
        v28 = *MEMORY[0x1E698F240];
        v52 = *MEMORY[0x1E696A578];
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"restatementScore"];
        v53 = v19;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
        v46 = 0;
        v22 = 0;
        *error = [v27 initWithDomain:v28 code:2 userInfo:v18];
        goto LABEL_50;
      }

      selfCopy3 = self;
      v46 = v16;
    }

    else
    {
      selfCopy3 = self;
      v46 = 0;
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"turnID"];
    if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v19 = 0;
      goto LABEL_18;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
LABEL_18:
      v20 = [dictionaryCopy objectForKeyedSubscript:@"modelID"];
      if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v21 = 0;
LABEL_21:
        error = v45;
        v22 = [(BMSiriInferredHelpfulness *)selfCopy3 initWithAbsoluteTimestamp:v47 inferredHelpfulnessScore:v45 restatementScore:v46 turnID:v19 modelID:v21];
        selfCopy3 = v22;
LABEL_40:

LABEL_41:
        self = selfCopy3;
        v7 = v44;
LABEL_42:

        goto LABEL_43;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;
        goto LABEL_21;
      }

      if (error)
      {
        v43 = objc_alloc(MEMORY[0x1E696ABC0]);
        v41 = *MEMORY[0x1E698F240];
        v48 = *MEMORY[0x1E696A578];
        v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"modelID"];
        v49 = v32;
        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
        *error = [v43 initWithDomain:v41 code:2 userInfo:v33];
      }

      v21 = 0;
      v22 = 0;
LABEL_39:
      error = v45;
      goto LABEL_40;
    }

    if (error)
    {
      v29 = objc_alloc(MEMORY[0x1E696ABC0]);
      errorCopy2 = error;
      v30 = *MEMORY[0x1E698F240];
      v50 = *MEMORY[0x1E696A578];
      v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"turnID"];
      v51 = v21;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v31 = [v29 initWithDomain:v30 code:2 userInfo:v20];
      v19 = 0;
      v22 = 0;
      *errorCopy2 = v31;
      goto LABEL_39;
    }

    v19 = 0;
    v22 = 0;
LABEL_50:
    error = v45;
    goto LABEL_41;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = MEMORY[0x1E695DF00];
    v9 = v7;
    v10 = [v8 alloc];
    [v9 doubleValue];
    v12 = v11;

    v13 = [v10 initWithTimeIntervalSinceReferenceDate:v12];
LABEL_6:
    v47 = v13;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = objc_alloc_init(MEMORY[0x1E696AC80]);
    v47 = [v14 dateFromString:v7];

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v7;
    goto LABEL_6;
  }

  if (!error)
  {
    v47 = 0;
    v22 = 0;
    goto LABEL_44;
  }

  v36 = objc_alloc(MEMORY[0x1E696ABC0]);
  errorCopy3 = error;
  v38 = *MEMORY[0x1E698F240];
  v56 = *MEMORY[0x1E696A578];
  v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
  v57[0] = v39;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:&v56 count:1];
  v40 = v38;
  error = v39;
  v47 = 0;
  v22 = 0;
  *errorCopy3 = [v36 initWithDomain:v40 code:2 userInfo:v15];
LABEL_43:

LABEL_44:
  v34 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriInferredHelpfulness *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
  }

  if (self->_hasInferredHelpfulnessScore)
  {
    inferredHelpfulnessScore = self->_inferredHelpfulnessScore;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
  }

  if (self->_hasRestatementScore)
  {
    restatementScore = self->_restatementScore;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
  }

  if (self->_turnID)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_modelID)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v33.receiver = self;
  v33.super_class = BMSiriInferredHelpfulness;
  v5 = [(BMEventBase *)&v33 init];
  if (!v5)
  {
    goto LABEL_48;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_46;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v34) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v34 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v34 & 0x7F) << v7;
        if ((v34 & 0x80) == 0)
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
        goto LABEL_46;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 2)
      {
        break;
      }

      switch(v15)
      {
        case 3:
          v5->_hasRestatementScore = 1;
          v34 = 0;
          v20 = [fromCopy position] + 8;
          if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 8, v21 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v34 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v26 = v34;
          v27 = 48;
LABEL_44:
          *(&v5->super.super.isa + v27) = v26;
          goto LABEL_45;
        case 4:
          v16 = PBReaderReadString();
          v17 = 56;
          break;
        case 5:
          v16 = PBReaderReadString();
          v17 = 64;
          break;
        default:
          goto LABEL_36;
      }

      v22 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v16;

LABEL_45:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_46;
      }
    }

    if (v15 == 1)
    {
      v5->_hasRaw_absoluteTimestamp = 1;
      v34 = 0;
      v23 = [fromCopy position] + 8;
      if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 8, v24 <= objc_msgSend(fromCopy, "length")))
      {
        data3 = [fromCopy data];
        [data3 getBytes:&v34 range:{objc_msgSend(fromCopy, "position"), 8}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
      }

      else
      {
        [fromCopy _setError];
      }

      v26 = v34;
      v27 = 24;
    }

    else
    {
      if (v15 != 2)
      {
LABEL_36:
        if (!PBReaderSkipValueWithTag())
        {
          goto LABEL_47;
        }

        goto LABEL_45;
      }

      v5->_hasInferredHelpfulnessScore = 1;
      v34 = 0;
      v18 = [fromCopy position] + 8;
      if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 8, v19 <= objc_msgSend(fromCopy, "length")))
      {
        data4 = [fromCopy data];
        [data4 getBytes:&v34 range:{objc_msgSend(fromCopy, "position"), 8}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
      }

      else
      {
        [fromCopy _setError];
      }

      v26 = v34;
      v27 = 40;
    }

    goto LABEL_44;
  }

LABEL_46:
  if ([fromCopy hasError])
  {
LABEL_47:
    v31 = 0;
  }

  else
  {
LABEL_48:
    v31 = v5;
  }

  return v31;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  absoluteTimestamp = [(BMSiriInferredHelpfulness *)self absoluteTimestamp];
  v5 = MEMORY[0x1E696AD98];
  [(BMSiriInferredHelpfulness *)self inferredHelpfulnessScore];
  v6 = [v5 numberWithDouble:?];
  v7 = MEMORY[0x1E696AD98];
  [(BMSiriInferredHelpfulness *)self restatementScore];
  v8 = [v7 numberWithDouble:?];
  turnID = [(BMSiriInferredHelpfulness *)self turnID];
  modelID = [(BMSiriInferredHelpfulness *)self modelID];
  v11 = [v3 initWithFormat:@"BMSiriInferredHelpfulness with absoluteTimestamp: %@, inferredHelpfulnessScore: %@, restatementScore: %@, turnID: %@, modelID: %@", absoluteTimestamp, v6, v8, turnID, modelID];

  return v11;
}

- (BMSiriInferredHelpfulness)initWithAbsoluteTimestamp:(id)timestamp inferredHelpfulnessScore:(id)score restatementScore:(id)restatementScore turnID:(id)d modelID:(id)iD
{
  timestampCopy = timestamp;
  scoreCopy = score;
  restatementScoreCopy = restatementScore;
  dCopy = d;
  iDCopy = iD;
  v22.receiver = self;
  v22.super_class = BMSiriInferredHelpfulness;
  v17 = [(BMEventBase *)&v22 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    if (timestampCopy)
    {
      v17->_hasRaw_absoluteTimestamp = 1;
      [timestampCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v17->_hasRaw_absoluteTimestamp = 0;
      v18 = -1.0;
    }

    v17->_raw_absoluteTimestamp = v18;
    if (scoreCopy)
    {
      v17->_hasInferredHelpfulnessScore = 1;
      [scoreCopy doubleValue];
    }

    else
    {
      v17->_hasInferredHelpfulnessScore = 0;
      v19 = -1.0;
    }

    v17->_inferredHelpfulnessScore = v19;
    if (restatementScoreCopy)
    {
      v17->_hasRestatementScore = 1;
      [restatementScoreCopy doubleValue];
    }

    else
    {
      v17->_hasRestatementScore = 0;
      v20 = -1.0;
    }

    v17->_restatementScore = v20;
    objc_storeStrong(&v17->_turnID, d);
    objc_storeStrong(&v17->_modelID, iD);
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:1 type:0 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"inferredHelpfulnessScore" number:2 type:0 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"restatementScore" number:3 type:0 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"turnID" number:4 type:13 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"modelID" number:5 type:13 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:1];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"inferredHelpfulnessScore" dataType:1 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"restatementScore" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"turnID" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"modelID" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
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
  if (version == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

    v7 = [[BMSiriInferredHelpfulness alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[9] = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end