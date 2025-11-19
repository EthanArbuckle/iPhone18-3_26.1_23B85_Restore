@interface BMPersonalizedSensingMomentsContextContextFetchDetails
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMPersonalizedSensingMomentsContextContextFetchDetails)initWithFetchId:(id)a3 timestamp:(id)a4 clientBundleIdentifier:(id)a5 alternateClientIdentifier:(id)a6 totalContextReplyCount:(id)a7 batchContextReplyStartIndex:(id)a8;
- (BMPersonalizedSensingMomentsContextContextFetchDetails)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)timestamp;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMPersonalizedSensingMomentsContextContextFetchDetails

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

      v6 = [(BMPersonalizedSensingMomentsContextContextFetchDetails *)self fetchId];
      if (v6 != [v5 fetchId])
      {
        goto LABEL_30;
      }
    }

    v7 = [(BMPersonalizedSensingMomentsContextContextFetchDetails *)self timestamp];
    v8 = [v5 timestamp];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [(BMPersonalizedSensingMomentsContextContextFetchDetails *)self timestamp];
      v11 = [v5 timestamp];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_30;
      }
    }

    v14 = [(BMPersonalizedSensingMomentsContextContextFetchDetails *)self clientBundleIdentifier];
    v15 = [v5 clientBundleIdentifier];
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      v17 = [(BMPersonalizedSensingMomentsContextContextFetchDetails *)self clientBundleIdentifier];
      v18 = [v5 clientBundleIdentifier];
      v19 = [v17 isEqual:v18];

      if (!v19)
      {
        goto LABEL_30;
      }
    }

    v20 = [(BMPersonalizedSensingMomentsContextContextFetchDetails *)self alternateClientIdentifier];
    v21 = [v5 alternateClientIdentifier];
    v22 = v21;
    if (v20 == v21)
    {
    }

    else
    {
      v23 = [(BMPersonalizedSensingMomentsContextContextFetchDetails *)self alternateClientIdentifier];
      v24 = [v5 alternateClientIdentifier];
      v25 = [v23 isEqual:v24];

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
        v27 = [(BMPersonalizedSensingMomentsContextContextFetchDetails *)self batchContextReplyStartIndex];
        v13 = v27 == [v5 batchContextReplyStartIndex];
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

  v4 = [(BMPersonalizedSensingMomentsContextContextFetchDetails *)self timestamp];
  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = [(BMPersonalizedSensingMomentsContextContextFetchDetails *)self timestamp];
    [v6 timeIntervalSince1970];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(BMPersonalizedSensingMomentsContextContextFetchDetails *)self clientBundleIdentifier];
  v9 = [(BMPersonalizedSensingMomentsContextContextFetchDetails *)self alternateClientIdentifier];
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
  v12 = v3;
  if (!v3)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v12;
  v23 = v7;
  v26[0] = v12;
  v25[1] = @"timestamp";
  v13 = v7;
  if (!v7)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v26[1] = v13;
  v25[2] = @"clientBundleIdentifier";
  v14 = v8;
  if (!v8)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = v14;
  v25[3] = @"alternateClientIdentifier";
  v15 = v9;
  if (!v9)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = v15;
  v25[4] = @"totalContextReplyCount";
  v16 = v10;
  if (!v10)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = v16;
  v25[5] = @"batchContextReplyStartIndex";
  v17 = v11;
  if (!v11)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v26[5] = v17;
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
      if (v9)
      {
        goto LABEL_28;
      }

LABEL_38:

      if (v8)
      {
        goto LABEL_29;
      }

      goto LABEL_39;
    }
  }

  if (!v9)
  {
    goto LABEL_38;
  }

LABEL_28:
  if (v8)
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

- (BMPersonalizedSensingMomentsContextContextFetchDetails)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v80[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"fetchId"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"timestamp"];
    v66 = v9;
    if (v9 && (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = MEMORY[0x1E695DF00];
        v13 = a4;
        v14 = v10;
        v15 = [v12 alloc];
        [v14 doubleValue];
        v17 = v16;

        a4 = v13;
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
          if (!a4)
          {
            v11 = 0;
            v24 = 0;
            goto LABEL_51;
          }

          v62 = a4;
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
          *v62 = [v51 initWithDomain:v54 code:2 userInfo:v53];
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
    v26 = [v6 objectForKeyedSubscript:@"clientBundleIdentifier"];
    v68 = v8;
    v65 = v26;
    if (v26 && (v27 = v26, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v24 = 0;
          v28 = 0;
          goto LABEL_50;
        }

        v58 = a4;
        v36 = objc_alloc(MEMORY[0x1E696ABC0]);
        v37 = *MEMORY[0x1E698F240];
        v75 = *MEMORY[0x1E696A578];
        v67 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientBundleIdentifier"];
        v76 = v67;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
        v24 = 0;
        *v58 = [v36 initWithDomain:v37 code:2 userInfo:v29];
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

    v29 = [v6 objectForKeyedSubscript:@"alternateClientIdentifier"];
    if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v67 = 0;
          v24 = 0;
          goto LABEL_49;
        }

        v59 = a4;
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
        *v59 = [v38 initWithDomain:v42 code:2 userInfo:v30];
        goto LABEL_48;
      }

      v67 = v29;
    }

    else
    {
      v67 = 0;
    }

    v30 = [v6 objectForKeyedSubscript:@"totalContextReplyCount"];
    v63 = v28;
    v64 = v7;
    if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v33 = 0;
          v24 = 0;
          goto LABEL_48;
        }

        v32 = self;
        v60 = objc_alloc(MEMORY[0x1E696ABC0]);
        v43 = *MEMORY[0x1E698F240];
        v71 = *MEMORY[0x1E696A578];
        v31 = v11;
        v44 = a4;
        a4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"totalContextReplyCount"];
        v72 = a4;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
        v45 = [v60 initWithDomain:v43 code:2 userInfo:v34];
        v33 = 0;
        v24 = 0;
        *v44 = v45;
        goto LABEL_46;
      }

      v31 = v11;
      v32 = self;
      v33 = v30;
    }

    else
    {
      v31 = v11;
      v32 = self;
      v33 = 0;
    }

    v34 = [v6 objectForKeyedSubscript:@"batchContextReplyStartIndex"];
    if (!v34 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      a4 = 0;
LABEL_28:
      v11 = v31;
      v35 = v31;
      v28 = v63;
      v24 = [(BMPersonalizedSensingMomentsContextContextFetchDetails *)v32 initWithFetchId:v68 timestamp:v35 clientBundleIdentifier:v63 alternateClientIdentifier:v67 totalContextReplyCount:v33 batchContextReplyStartIndex:a4];
      v32 = v24;
LABEL_47:

      self = v32;
      v7 = v64;
LABEL_48:

      goto LABEL_49;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a4 = v34;
      goto LABEL_28;
    }

    if (a4)
    {
      v61 = objc_alloc(MEMORY[0x1E696ABC0]);
      v56 = *MEMORY[0x1E698F240];
      v69 = *MEMORY[0x1E696A578];
      v46 = a4;
      v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"batchContextReplyStartIndex"];
      v70 = v47;
      v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      *v46 = [v61 initWithDomain:v56 code:2 userInfo:v48];

      a4 = 0;
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

  if (!a4)
  {
    v8 = 0;
    v24 = 0;
    goto LABEL_52;
  }

  v57 = a4;
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
  *v57 = [v19 initWithDomain:v20 code:2 userInfo:v10];
LABEL_51:

LABEL_52:
  v49 = *MEMORY[0x1E69E9840];
  return v24;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPersonalizedSensingMomentsContextContextFetchDetails *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
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

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v45.receiver = self;
  v45.super_class = BMPersonalizedSensingMomentsContextContextFetchDetails;
  v5 = [(BMEventBase *)&v45 init];
  if (!v5)
  {
    goto LABEL_78;
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
        LOBYTE(v46) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v46 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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
              v37 = [v4 position] + 1;
              if (v37 >= [v4 position] && (v38 = objc_msgSend(v4, "position") + 1, v38 <= objc_msgSend(v4, "length")))
              {
                v39 = [v4 data];
                [v39 getBytes:&v46 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
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

            if ([v4 hasError])
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
              v21 = [v4 position] + 1;
              if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
              {
                v23 = [v4 data];
                [v23 getBytes:&v46 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
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

            if ([v4 hasError])
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
            v28 = [v4 position] + 1;
            if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
            {
              v30 = [v4 data];
              [v30 getBytes:&v46 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if ([v4 hasError])
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
          v32 = [v4 position] + 8;
          if (v32 >= [v4 position] && (v33 = objc_msgSend(v4, "position") + 8, v33 <= objc_msgSend(v4, "length")))
          {
            v41 = [v4 data];
            [v41 getBytes:&v46 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
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
      v42 = [v4 position];
    }

    while (v42 < [v4 length]);
  }

  if ([v4 hasError])
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
  v5 = [(BMPersonalizedSensingMomentsContextContextFetchDetails *)self timestamp];
  v6 = [(BMPersonalizedSensingMomentsContextContextFetchDetails *)self clientBundleIdentifier];
  v7 = [(BMPersonalizedSensingMomentsContextContextFetchDetails *)self alternateClientIdentifier];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPersonalizedSensingMomentsContextContextFetchDetails totalContextReplyCount](self, "totalContextReplyCount")}];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPersonalizedSensingMomentsContextContextFetchDetails batchContextReplyStartIndex](self, "batchContextReplyStartIndex")}];
  v10 = [v3 initWithFormat:@"BMPersonalizedSensingMomentsContextContextFetchDetails with fetchId: %@, timestamp: %@, clientBundleIdentifier: %@, alternateClientIdentifier: %@, totalContextReplyCount: %@, batchContextReplyStartIndex: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BMPersonalizedSensingMomentsContextContextFetchDetails)initWithFetchId:(id)a3 timestamp:(id)a4 clientBundleIdentifier:(id)a5 alternateClientIdentifier:(id)a6 totalContextReplyCount:(id)a7 batchContextReplyStartIndex:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v26.receiver = self;
  v26.super_class = BMPersonalizedSensingMomentsContextContextFetchDetails;
  v20 = [(BMEventBase *)&v26 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v14)
    {
      v20->_hasFetchId = 1;
      v21 = [v14 unsignedIntValue];
    }

    else
    {
      v21 = 0;
      v20->_hasFetchId = 0;
    }

    v20->_fetchId = v21;
    if (v15)
    {
      v20->_hasRaw_timestamp = 1;
      [v15 timeIntervalSince1970];
    }

    else
    {
      v20->_hasRaw_timestamp = 0;
      v22 = -1.0;
    }

    v20->_raw_timestamp = v22;
    objc_storeStrong(&v20->_clientBundleIdentifier, a5);
    objc_storeStrong(&v20->_alternateClientIdentifier, a6);
    if (v18)
    {
      v20->_hasTotalContextReplyCount = 1;
      v23 = [v18 unsignedIntValue];
    }

    else
    {
      v23 = 0;
      v20->_hasTotalContextReplyCount = 0;
    }

    v20->_totalContextReplyCount = v23;
    if (v19)
    {
      v20->_hasBatchContextReplyStartIndex = 1;
      v24 = [v19 unsignedIntValue];
    }

    else
    {
      v24 = 0;
      v20->_hasBatchContextReplyStartIndex = 0;
    }

    v20->_batchContextReplyStartIndex = v24;
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