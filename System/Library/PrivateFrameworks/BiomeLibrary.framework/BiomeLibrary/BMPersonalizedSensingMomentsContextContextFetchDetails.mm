@interface BMPersonalizedSensingMomentsContextContextFetchDetails
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMPersonalizedSensingMomentsContextContextFetchDetails)initWithFetchId:(id)id timestamp:(id)timestamp clientBundleIdentifier:(id)identifier alternateClientIdentifier:(id)clientIdentifier totalContextReplyCount:(id)count batchContextReplyStartIndex:(id)index;
- (BMPersonalizedSensingMomentsContextContextFetchDetails)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)timestamp;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMPersonalizedSensingMomentsContextContextFetchDetails

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMPersonalizedSensingMomentsContextContextFetchDetails hasFetchId](self, "hasFetchId") || [v5 hasFetchId])
    {
      if (![(BMPersonalizedSensingMomentsContextContextFetchDetails *)self hasFetchId])
      {
        goto LABEL_30;
      }

      if (![v5 hasFetchId])
      {
        goto LABEL_30;
      }

      fetchId = [(BMPersonalizedSensingMomentsContextContextFetchDetails *)self fetchId];
      if (fetchId != [v5 fetchId])
      {
        goto LABEL_30;
      }
    }

    timestamp = [(BMPersonalizedSensingMomentsContextContextFetchDetails *)self timestamp];
    timestamp2 = [v5 timestamp];
    v9 = timestamp2;
    if (timestamp == timestamp2)
    {
    }

    else
    {
      timestamp3 = [(BMPersonalizedSensingMomentsContextContextFetchDetails *)self timestamp];
      timestamp4 = [v5 timestamp];
      v12 = [timestamp3 isEqual:timestamp4];

      if (!v12)
      {
        goto LABEL_30;
      }
    }

    clientBundleIdentifier = [(BMPersonalizedSensingMomentsContextContextFetchDetails *)self clientBundleIdentifier];
    clientBundleIdentifier2 = [v5 clientBundleIdentifier];
    v16 = clientBundleIdentifier2;
    if (clientBundleIdentifier == clientBundleIdentifier2)
    {
    }

    else
    {
      clientBundleIdentifier3 = [(BMPersonalizedSensingMomentsContextContextFetchDetails *)self clientBundleIdentifier];
      clientBundleIdentifier4 = [v5 clientBundleIdentifier];
      v19 = [clientBundleIdentifier3 isEqual:clientBundleIdentifier4];

      if (!v19)
      {
        goto LABEL_30;
      }
    }

    alternateClientIdentifier = [(BMPersonalizedSensingMomentsContextContextFetchDetails *)self alternateClientIdentifier];
    alternateClientIdentifier2 = [v5 alternateClientIdentifier];
    v22 = alternateClientIdentifier2;
    if (alternateClientIdentifier == alternateClientIdentifier2)
    {
    }

    else
    {
      alternateClientIdentifier3 = [(BMPersonalizedSensingMomentsContextContextFetchDetails *)self alternateClientIdentifier];
      alternateClientIdentifier4 = [v5 alternateClientIdentifier];
      v25 = [alternateClientIdentifier3 isEqual:alternateClientIdentifier4];

      if (!v25)
      {
        goto LABEL_30;
      }
    }

    if (!-[BMPersonalizedSensingMomentsContextContextFetchDetails hasTotalContextReplyCount](self, "hasTotalContextReplyCount") && ![v5 hasTotalContextReplyCount] || -[BMPersonalizedSensingMomentsContextContextFetchDetails hasTotalContextReplyCount](self, "hasTotalContextReplyCount") && objc_msgSend(v5, "hasTotalContextReplyCount") && (v26 = -[BMPersonalizedSensingMomentsContextContextFetchDetails totalContextReplyCount](self, "totalContextReplyCount"), v26 == objc_msgSend(v5, "totalContextReplyCount")))
    {
      if (!-[BMPersonalizedSensingMomentsContextContextFetchDetails hasBatchContextReplyStartIndex](self, "hasBatchContextReplyStartIndex") && ![v5 hasBatchContextReplyStartIndex])
      {
        v13 = 1;
        goto LABEL_31;
      }

      if (-[BMPersonalizedSensingMomentsContextContextFetchDetails hasBatchContextReplyStartIndex](self, "hasBatchContextReplyStartIndex") && [v5 hasBatchContextReplyStartIndex])
      {
        batchContextReplyStartIndex = [(BMPersonalizedSensingMomentsContextContextFetchDetails *)self batchContextReplyStartIndex];
        v13 = batchContextReplyStartIndex == [v5 batchContextReplyStartIndex];
LABEL_31:

        goto LABEL_32;
      }
    }

LABEL_30:
    v13 = 0;
    goto LABEL_31;
  }

  v13 = 0;
LABEL_32:

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
  v26[6] = *MEMORY[0x1E69E9840];
  if ([(BMPersonalizedSensingMomentsContextContextFetchDetails *)self hasFetchId])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPersonalizedSensingMomentsContextContextFetchDetails fetchId](self, "fetchId")}];
  }

  else
  {
    v3 = 0;
  }

  timestamp = [(BMPersonalizedSensingMomentsContextContextFetchDetails *)self timestamp];
  if (timestamp)
  {
    v5 = MEMORY[0x1E696AD98];
    timestamp2 = [(BMPersonalizedSensingMomentsContextContextFetchDetails *)self timestamp];
    [timestamp2 timeIntervalSince1970];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  clientBundleIdentifier = [(BMPersonalizedSensingMomentsContextContextFetchDetails *)self clientBundleIdentifier];
  alternateClientIdentifier = [(BMPersonalizedSensingMomentsContextContextFetchDetails *)self alternateClientIdentifier];
  if ([(BMPersonalizedSensingMomentsContextContextFetchDetails *)self hasTotalContextReplyCount])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPersonalizedSensingMomentsContextContextFetchDetails totalContextReplyCount](self, "totalContextReplyCount")}];
  }

  else
  {
    v10 = 0;
  }

  if ([(BMPersonalizedSensingMomentsContextContextFetchDetails *)self hasBatchContextReplyStartIndex])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPersonalizedSensingMomentsContextContextFetchDetails batchContextReplyStartIndex](self, "batchContextReplyStartIndex")}];
  }

  else
  {
    v11 = 0;
  }

  v24 = v3;
  v25[0] = @"fetchId";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null;
  v23 = v7;
  v26[0] = null;
  v25[1] = @"timestamp";
  null2 = v7;
  if (!v7)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v26[1] = null2;
  v25[2] = @"clientBundleIdentifier";
  null3 = clientBundleIdentifier;
  if (!clientBundleIdentifier)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = null3;
  v25[3] = @"alternateClientIdentifier";
  null4 = alternateClientIdentifier;
  if (!alternateClientIdentifier)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = null4;
  v25[4] = @"totalContextReplyCount";
  null5 = v10;
  if (!v10)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = null5;
  v25[5] = @"batchContextReplyStartIndex";
  null6 = v11;
  if (!v11)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v26[5] = null6;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:{6, v21}];
  if (v11)
  {
    if (v10)
    {
      goto LABEL_27;
    }
  }

  else
  {

    if (v10)
    {
LABEL_27:
      if (alternateClientIdentifier)
      {
        goto LABEL_28;
      }

LABEL_38:

      if (clientBundleIdentifier)
      {
        goto LABEL_29;
      }

      goto LABEL_39;
    }
  }

  if (!alternateClientIdentifier)
  {
    goto LABEL_38;
  }

LABEL_28:
  if (clientBundleIdentifier)
  {
    goto LABEL_29;
  }

LABEL_39:

LABEL_29:
  if (!v23)
  {
  }

  if (!v24)
  {
  }

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (BMPersonalizedSensingMomentsContextContextFetchDetails)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v80[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"fetchId"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
    v66 = v9;
    if (v9 && (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = MEMORY[0x1E695DF00];
        errorCopy = error;
        v14 = v10;
        v15 = [v12 alloc];
        [v14 doubleValue];
        v17 = v16;

        error = errorCopy;
        v18 = [v15 initWithTimeIntervalSince1970:v17];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v11 = [v25 dateFromString:v10];

          goto LABEL_16;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v11 = 0;
            v24 = 0;
            goto LABEL_51;
          }

          errorCopy2 = error;
          v51 = objc_alloc(MEMORY[0x1E696ABC0]);
          v52 = *MEMORY[0x1E698F240];
          v77 = *MEMORY[0x1E696A578];
          v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"timestamp"];
          v78 = v28;
          v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
          v54 = v52;
          v27 = v53;
          v11 = 0;
          v24 = 0;
          *errorCopy2 = [v51 initWithDomain:v54 code:2 userInfo:v53];
          goto LABEL_50;
        }

        v18 = v10;
      }

      v11 = v18;
    }

    else
    {
      v11 = 0;
    }

LABEL_16:
    v26 = [dictionaryCopy objectForKeyedSubscript:@"clientBundleIdentifier"];
    v68 = v8;
    v65 = v26;
    if (v26 && (v27 = v26, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v24 = 0;
          v28 = 0;
          goto LABEL_50;
        }

        errorCopy3 = error;
        v36 = objc_alloc(MEMORY[0x1E696ABC0]);
        v37 = *MEMORY[0x1E698F240];
        v75 = *MEMORY[0x1E696A578];
        v67 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientBundleIdentifier"];
        v76 = v67;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
        v24 = 0;
        *errorCopy3 = [v36 initWithDomain:v37 code:2 userInfo:v29];
        v28 = 0;
LABEL_49:

        v8 = v68;
        v27 = v65;
LABEL_50:

        v10 = v66;
        goto LABEL_51;
      }

      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"alternateClientIdentifier"];
    if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v67 = 0;
          v24 = 0;
          goto LABEL_49;
        }

        errorCopy4 = error;
        v38 = objc_alloc(MEMORY[0x1E696ABC0]);
        v39 = v28;
        v40 = v11;
        v41 = *MEMORY[0x1E698F240];
        v73 = *MEMORY[0x1E696A578];
        v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"alternateClientIdentifier"];
        v74 = v33;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
        v42 = v41;
        v11 = v40;
        v28 = v39;
        v67 = 0;
        v24 = 0;
        *errorCopy4 = [v38 initWithDomain:v42 code:2 userInfo:v30];
        goto LABEL_48;
      }

      v67 = v29;
    }

    else
    {
      v67 = 0;
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"totalContextReplyCount"];
    v63 = v28;
    v64 = v7;
    if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v33 = 0;
          v24 = 0;
          goto LABEL_48;
        }

        selfCopy3 = self;
        v60 = objc_alloc(MEMORY[0x1E696ABC0]);
        v43 = *MEMORY[0x1E698F240];
        v71 = *MEMORY[0x1E696A578];
        v31 = v11;
        errorCopy5 = error;
        error = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"totalContextReplyCount"];
        errorCopy6 = error;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&errorCopy6 forKeys:&v71 count:1];
        v45 = [v60 initWithDomain:v43 code:2 userInfo:v34];
        v33 = 0;
        v24 = 0;
        *errorCopy5 = v45;
        goto LABEL_46;
      }

      v31 = v11;
      selfCopy3 = self;
      v33 = v30;
    }

    else
    {
      v31 = v11;
      selfCopy3 = self;
      v33 = 0;
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"batchContextReplyStartIndex"];
    if (!v34 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      error = 0;
LABEL_28:
      v11 = v31;
      v35 = v31;
      v28 = v63;
      v24 = [(BMPersonalizedSensingMomentsContextContextFetchDetails *)selfCopy3 initWithFetchId:v68 timestamp:v35 clientBundleIdentifier:v63 alternateClientIdentifier:v67 totalContextReplyCount:v33 batchContextReplyStartIndex:error];
      selfCopy3 = v24;
LABEL_47:

      self = selfCopy3;
      v7 = v64;
LABEL_48:

      goto LABEL_49;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      error = v34;
      goto LABEL_28;
    }

    if (error)
    {
      v61 = objc_alloc(MEMORY[0x1E696ABC0]);
      v56 = *MEMORY[0x1E698F240];
      v69 = *MEMORY[0x1E696A578];
      errorCopy7 = error;
      v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"batchContextReplyStartIndex"];
      v70 = v47;
      v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      *errorCopy7 = [v61 initWithDomain:v56 code:2 userInfo:v48];

      error = 0;
    }

    v24 = 0;
LABEL_46:
    v11 = v31;
    v28 = v63;
    goto LABEL_47;
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
    v24 = 0;
    goto LABEL_52;
  }

  errorCopy8 = error;
  v19 = objc_alloc(MEMORY[0x1E696ABC0]);
  v20 = *MEMORY[0x1E698F240];
  v79 = *MEMORY[0x1E696A578];
  v21 = v7;
  v22 = objc_alloc(MEMORY[0x1E696AEC0]);
  v55 = objc_opt_class();
  v23 = v22;
  v7 = v21;
  v11 = [v23 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v55, @"fetchId"];
  v80[0] = v11;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:&v79 count:1];
  v8 = 0;
  v24 = 0;
  *errorCopy8 = [v19 initWithDomain:v20 code:2 userInfo:v10];
LABEL_51:

LABEL_52:
  v49 = *MEMORY[0x1E69E9840];
  return v24;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPersonalizedSensingMomentsContextContextFetchDetails *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasFetchId)
  {
    fetchId = self->_fetchId;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasRaw_timestamp)
  {
    raw_timestamp = self->_raw_timestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_clientBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_alternateClientIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasTotalContextReplyCount)
  {
    totalContextReplyCount = self->_totalContextReplyCount;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasBatchContextReplyStartIndex)
  {
    batchContextReplyStartIndex = self->_batchContextReplyStartIndex;
    PBDataWriterWriteUint32Field();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v45.receiver = self;
  v45.super_class = BMPersonalizedSensingMomentsContextContextFetchDetails;
  v5 = [(BMEventBase *)&v45 init];
  if (!v5)
  {
    goto LABEL_78;
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
        LOBYTE(v46) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v46 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v46) & 0x7F) << v7;
        if ((LOBYTE(v46) & 0x80) == 0)
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
      if ((v14 >> 3) > 3)
      {
        if (v15 != 4)
        {
          if (v15 == 5)
          {
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v5->_hasTotalContextReplyCount = 1;
            while (1)
            {
              LOBYTE(v46) = 0;
              v37 = [fromCopy position] + 1;
              if (v37 >= [fromCopy position] && (v38 = objc_msgSend(fromCopy, "position") + 1, v38 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v46 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v36 |= (LOBYTE(v46) & 0x7F) << v34;
              if ((LOBYTE(v46) & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              v13 = v35++ >= 9;
              if (v13)
              {
                v24 = 0;
                goto LABEL_71;
              }
            }

            if ([fromCopy hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v36;
            }

LABEL_71:
            v40 = 44;
          }

          else
          {
            if (v15 != 6)
            {
LABEL_46:
              if (!PBReaderSkipValueWithTag())
              {
                goto LABEL_77;
              }

              goto LABEL_75;
            }

            v18 = 0;
            v19 = 0;
            v20 = 0;
            v5->_hasBatchContextReplyStartIndex = 1;
            while (1)
            {
              LOBYTE(v46) = 0;
              v21 = [fromCopy position] + 1;
              if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v46 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v20 |= (LOBYTE(v46) & 0x7F) << v18;
              if ((LOBYTE(v46) & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              v13 = v19++ >= 9;
              if (v13)
              {
                v24 = 0;
                goto LABEL_67;
              }
            }

            if ([fromCopy hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v20;
            }

LABEL_67:
            v40 = 48;
          }

          goto LABEL_72;
        }

        v16 = PBReaderReadString();
        v17 = 64;
      }

      else
      {
        if (v15 == 1)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v5->_hasFetchId = 1;
          while (1)
          {
            LOBYTE(v46) = 0;
            v28 = [fromCopy position] + 1;
            if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v46 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v27 |= (LOBYTE(v46) & 0x7F) << v25;
            if ((LOBYTE(v46) & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v13 = v26++ >= 9;
            if (v13)
            {
              v24 = 0;
              goto LABEL_63;
            }
          }

          if ([fromCopy hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v27;
          }

LABEL_63:
          v40 = 40;
LABEL_72:
          *(&v5->super.super.isa + v40) = v24;
          goto LABEL_75;
        }

        if (v15 == 2)
        {
          v5->_hasRaw_timestamp = 1;
          v46 = 0.0;
          v32 = [fromCopy position] + 8;
          if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 8, v33 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v46 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v5->_raw_timestamp = v46;
          goto LABEL_75;
        }

        if (v15 != 3)
        {
          goto LABEL_46;
        }

        v16 = PBReaderReadString();
        v17 = 56;
      }

      v31 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v16;

LABEL_75:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_77:
    v43 = 0;
  }

  else
  {
LABEL_78:
    v43 = v5;
  }

  return v43;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPersonalizedSensingMomentsContextContextFetchDetails fetchId](self, "fetchId")}];
  timestamp = [(BMPersonalizedSensingMomentsContextContextFetchDetails *)self timestamp];
  clientBundleIdentifier = [(BMPersonalizedSensingMomentsContextContextFetchDetails *)self clientBundleIdentifier];
  alternateClientIdentifier = [(BMPersonalizedSensingMomentsContextContextFetchDetails *)self alternateClientIdentifier];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPersonalizedSensingMomentsContextContextFetchDetails totalContextReplyCount](self, "totalContextReplyCount")}];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPersonalizedSensingMomentsContextContextFetchDetails batchContextReplyStartIndex](self, "batchContextReplyStartIndex")}];
  v10 = [v3 initWithFormat:@"BMPersonalizedSensingMomentsContextContextFetchDetails with fetchId: %@, timestamp: %@, clientBundleIdentifier: %@, alternateClientIdentifier: %@, totalContextReplyCount: %@, batchContextReplyStartIndex: %@", v4, timestamp, clientBundleIdentifier, alternateClientIdentifier, v8, v9];

  return v10;
}

- (BMPersonalizedSensingMomentsContextContextFetchDetails)initWithFetchId:(id)id timestamp:(id)timestamp clientBundleIdentifier:(id)identifier alternateClientIdentifier:(id)clientIdentifier totalContextReplyCount:(id)count batchContextReplyStartIndex:(id)index
{
  idCopy = id;
  timestampCopy = timestamp;
  identifierCopy = identifier;
  clientIdentifierCopy = clientIdentifier;
  countCopy = count;
  indexCopy = index;
  v26.receiver = self;
  v26.super_class = BMPersonalizedSensingMomentsContextContextFetchDetails;
  v20 = [(BMEventBase *)&v26 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    if (idCopy)
    {
      v20->_hasFetchId = 1;
      unsignedIntValue = [idCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v20->_hasFetchId = 0;
    }

    v20->_fetchId = unsignedIntValue;
    if (timestampCopy)
    {
      v20->_hasRaw_timestamp = 1;
      [timestampCopy timeIntervalSince1970];
    }

    else
    {
      v20->_hasRaw_timestamp = 0;
      v22 = -1.0;
    }

    v20->_raw_timestamp = v22;
    objc_storeStrong(&v20->_clientBundleIdentifier, identifier);
    objc_storeStrong(&v20->_alternateClientIdentifier, clientIdentifier);
    if (countCopy)
    {
      v20->_hasTotalContextReplyCount = 1;
      unsignedIntValue2 = [countCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue2 = 0;
      v20->_hasTotalContextReplyCount = 0;
    }

    v20->_totalContextReplyCount = unsignedIntValue2;
    if (indexCopy)
    {
      v20->_hasBatchContextReplyStartIndex = 1;
      unsignedIntValue3 = [indexCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue3 = 0;
      v20->_hasBatchContextReplyStartIndex = 0;
    }

    v20->_batchContextReplyStartIndex = unsignedIntValue3;
  }

  return v20;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fetchId" number:1 type:4 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timestamp" number:2 type:0 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientBundleIdentifier" number:3 type:13 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"alternateClientIdentifier" number:4 type:13 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalContextReplyCount" number:5 type:4 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"batchContextReplyStartIndex" number:6 type:4 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fetchId" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timestamp" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:2];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientBundleIdentifier" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"alternateClientIdentifier" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalContextReplyCount" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"batchContextReplyStartIndex" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v11[0] = v2;
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
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

    v8 = [[BMPersonalizedSensingMomentsContextContextFetchDetails alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end