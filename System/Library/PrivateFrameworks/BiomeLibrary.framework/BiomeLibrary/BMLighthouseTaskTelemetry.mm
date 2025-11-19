@interface BMLighthouseTaskTelemetry
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMLighthouseTaskTelemetry)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMLighthouseTaskTelemetry)initWithVersion:(id)a3 bucketStart:(id)a4 bucketEnd:(id)a5 taskName:(id)a6 taskState:(id)a7 latestEventTimestamp:(id)a8 countCompleted:(id)a9 countFailed:(id)a10 countDeferred:(id)a11 dailyExecutionLatency:(id)a12 crossExecutionDelay:(id)a13 executionCompletionTime:(id)a14 executionFailureTime:(id)a15 executionDeferralTime:(id)a16;
- (BOOL)isEqual:(id)a3;
- (NSDate)bucketEnd;
- (NSDate)bucketStart;
- (NSDate)latestEventTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMLighthouseTaskTelemetry

+ (id)columns
{
  v19[14] = *MEMORY[0x1E69E9840];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"version" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:2 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bucketStart" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:2];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bucketEnd" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:2];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"taskName" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"taskState" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"latestEventTimestamp" dataType:3 requestOnly:0 fieldNumber:6 protoDataType:0 convertedType:2];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"countCompleted" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:2 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"countFailed" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:2 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"countDeferred" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:2 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"dailyExecutionLatency" dataType:1 requestOnly:0 fieldNumber:10 protoDataType:0 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"crossExecutionDelay" dataType:1 requestOnly:0 fieldNumber:11 protoDataType:0 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"executionCompletionTime" dataType:1 requestOnly:0 fieldNumber:12 protoDataType:0 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"executionFailureTime" dataType:1 requestOnly:0 fieldNumber:13 protoDataType:0 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"executionDeferralTime" dataType:1 requestOnly:0 fieldNumber:14 protoDataType:0 convertedType:0];
  v19[0] = v18;
  v19[1] = v17;
  v19[2] = v16;
  v19[3] = v15;
  v19[4] = v2;
  v19[5] = v3;
  v19[6] = v4;
  v19[7] = v5;
  v19[8] = v6;
  v19[9] = v14;
  v19[10] = v7;
  v19[11] = v13;
  v19[12] = v8;
  v19[13] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:14];

  v10 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMLighthouseTaskTelemetry hasVersion](self, "hasVersion") || [v5 hasVersion])
    {
      if (![(BMLighthouseTaskTelemetry *)self hasVersion])
      {
        goto LABEL_68;
      }

      if (![v5 hasVersion])
      {
        goto LABEL_68;
      }

      v6 = [(BMLighthouseTaskTelemetry *)self version];
      if (v6 != [v5 version])
      {
        goto LABEL_68;
      }
    }

    v7 = [(BMLighthouseTaskTelemetry *)self bucketStart];
    v8 = [v5 bucketStart];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [(BMLighthouseTaskTelemetry *)self bucketStart];
      v11 = [v5 bucketStart];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_68;
      }
    }

    v14 = [(BMLighthouseTaskTelemetry *)self bucketEnd];
    v15 = [v5 bucketEnd];
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      v17 = [(BMLighthouseTaskTelemetry *)self bucketEnd];
      v18 = [v5 bucketEnd];
      v19 = [v17 isEqual:v18];

      if (!v19)
      {
        goto LABEL_68;
      }
    }

    v20 = [(BMLighthouseTaskTelemetry *)self taskName];
    v21 = [v5 taskName];
    v22 = v21;
    if (v20 == v21)
    {
    }

    else
    {
      v23 = [(BMLighthouseTaskTelemetry *)self taskName];
      v24 = [v5 taskName];
      v25 = [v23 isEqual:v24];

      if (!v25)
      {
        goto LABEL_68;
      }
    }

    v26 = [(BMLighthouseTaskTelemetry *)self taskState];
    v27 = [v5 taskState];
    v28 = v27;
    if (v26 == v27)
    {
    }

    else
    {
      v29 = [(BMLighthouseTaskTelemetry *)self taskState];
      v30 = [v5 taskState];
      v31 = [v29 isEqual:v30];

      if (!v31)
      {
        goto LABEL_68;
      }
    }

    v32 = [(BMLighthouseTaskTelemetry *)self latestEventTimestamp];
    v33 = [v5 latestEventTimestamp];
    v34 = v33;
    if (v32 == v33)
    {
    }

    else
    {
      v35 = [(BMLighthouseTaskTelemetry *)self latestEventTimestamp];
      v36 = [v5 latestEventTimestamp];
      v37 = [v35 isEqual:v36];

      if (!v37)
      {
        goto LABEL_68;
      }
    }

    if (!-[BMLighthouseTaskTelemetry hasCountCompleted](self, "hasCountCompleted") && ![v5 hasCountCompleted] || -[BMLighthouseTaskTelemetry hasCountCompleted](self, "hasCountCompleted") && objc_msgSend(v5, "hasCountCompleted") && (v38 = -[BMLighthouseTaskTelemetry countCompleted](self, "countCompleted"), v38 == objc_msgSend(v5, "countCompleted")))
    {
      if (!-[BMLighthouseTaskTelemetry hasCountFailed](self, "hasCountFailed") && ![v5 hasCountFailed] || -[BMLighthouseTaskTelemetry hasCountFailed](self, "hasCountFailed") && objc_msgSend(v5, "hasCountFailed") && (v39 = -[BMLighthouseTaskTelemetry countFailed](self, "countFailed"), v39 == objc_msgSend(v5, "countFailed")))
      {
        if (!-[BMLighthouseTaskTelemetry hasCountDeferred](self, "hasCountDeferred") && ![v5 hasCountDeferred] || -[BMLighthouseTaskTelemetry hasCountDeferred](self, "hasCountDeferred") && objc_msgSend(v5, "hasCountDeferred") && (v40 = -[BMLighthouseTaskTelemetry countDeferred](self, "countDeferred"), v40 == objc_msgSend(v5, "countDeferred")))
        {
          if (!-[BMLighthouseTaskTelemetry hasDailyExecutionLatency](self, "hasDailyExecutionLatency") && ![v5 hasDailyExecutionLatency] || -[BMLighthouseTaskTelemetry hasDailyExecutionLatency](self, "hasDailyExecutionLatency") && objc_msgSend(v5, "hasDailyExecutionLatency") && (-[BMLighthouseTaskTelemetry dailyExecutionLatency](self, "dailyExecutionLatency"), v42 = v41, objc_msgSend(v5, "dailyExecutionLatency"), v42 == v43))
          {
            if (!-[BMLighthouseTaskTelemetry hasCrossExecutionDelay](self, "hasCrossExecutionDelay") && ![v5 hasCrossExecutionDelay] || -[BMLighthouseTaskTelemetry hasCrossExecutionDelay](self, "hasCrossExecutionDelay") && objc_msgSend(v5, "hasCrossExecutionDelay") && (-[BMLighthouseTaskTelemetry crossExecutionDelay](self, "crossExecutionDelay"), v45 = v44, objc_msgSend(v5, "crossExecutionDelay"), v45 == v46))
            {
              if (!-[BMLighthouseTaskTelemetry hasExecutionCompletionTime](self, "hasExecutionCompletionTime") && ![v5 hasExecutionCompletionTime] || -[BMLighthouseTaskTelemetry hasExecutionCompletionTime](self, "hasExecutionCompletionTime") && objc_msgSend(v5, "hasExecutionCompletionTime") && (-[BMLighthouseTaskTelemetry executionCompletionTime](self, "executionCompletionTime"), v48 = v47, objc_msgSend(v5, "executionCompletionTime"), v48 == v49))
              {
                if (!-[BMLighthouseTaskTelemetry hasExecutionFailureTime](self, "hasExecutionFailureTime") && ![v5 hasExecutionFailureTime] || -[BMLighthouseTaskTelemetry hasExecutionFailureTime](self, "hasExecutionFailureTime") && objc_msgSend(v5, "hasExecutionFailureTime") && (-[BMLighthouseTaskTelemetry executionFailureTime](self, "executionFailureTime"), v51 = v50, objc_msgSend(v5, "executionFailureTime"), v51 == v52))
                {
                  if (!-[BMLighthouseTaskTelemetry hasExecutionDeferralTime](self, "hasExecutionDeferralTime") && ![v5 hasExecutionDeferralTime])
                  {
                    v13 = 1;
                    goto LABEL_69;
                  }

                  if (-[BMLighthouseTaskTelemetry hasExecutionDeferralTime](self, "hasExecutionDeferralTime") && [v5 hasExecutionDeferralTime])
                  {
                    [(BMLighthouseTaskTelemetry *)self executionDeferralTime];
                    v54 = v53;
                    [v5 executionDeferralTime];
                    v13 = v54 == v55;
LABEL_69:

                    goto LABEL_70;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_68:
    v13 = 0;
    goto LABEL_69;
  }

  v13 = 0;
LABEL_70:

  return v13;
}

- (NSDate)latestEventTimestamp
{
  if (self->_hasRaw_latestEventTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_latestEventTimestamp];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)bucketEnd
{
  if (self->_hasRaw_bucketEnd)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_bucketEnd];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)bucketStart
{
  if (self->_hasRaw_bucketStart)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_bucketStart];
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
  v63[14] = *MEMORY[0x1E69E9840];
  if ([(BMLighthouseTaskTelemetry *)self hasVersion])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLighthouseTaskTelemetry version](self, "version")}];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(BMLighthouseTaskTelemetry *)self bucketStart];
  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = [(BMLighthouseTaskTelemetry *)self bucketStart];
    [v6 timeIntervalSince1970];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(BMLighthouseTaskTelemetry *)self bucketEnd];
  if (v8)
  {
    v9 = MEMORY[0x1E696AD98];
    v10 = [(BMLighthouseTaskTelemetry *)self bucketEnd];
    [v10 timeIntervalSince1970];
    v11 = [v9 numberWithDouble:?];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(BMLighthouseTaskTelemetry *)self taskName];
  v61 = [(BMLighthouseTaskTelemetry *)self taskState];
  v13 = [(BMLighthouseTaskTelemetry *)self latestEventTimestamp];
  if (v13)
  {
    v14 = MEMORY[0x1E696AD98];
    v15 = [(BMLighthouseTaskTelemetry *)self latestEventTimestamp];
    [v15 timeIntervalSince1970];
    v60 = [v14 numberWithDouble:?];
  }

  else
  {
    v60 = 0;
  }

  if ([(BMLighthouseTaskTelemetry *)self hasCountCompleted])
  {
    v59 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLighthouseTaskTelemetry countCompleted](self, "countCompleted")}];
  }

  else
  {
    v59 = 0;
  }

  if ([(BMLighthouseTaskTelemetry *)self hasCountFailed])
  {
    v58 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLighthouseTaskTelemetry countFailed](self, "countFailed")}];
  }

  else
  {
    v58 = 0;
  }

  if ([(BMLighthouseTaskTelemetry *)self hasCountDeferred])
  {
    v57 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLighthouseTaskTelemetry countDeferred](self, "countDeferred")}];
  }

  else
  {
    v57 = 0;
  }

  if (![(BMLighthouseTaskTelemetry *)self hasDailyExecutionLatency]|| ([(BMLighthouseTaskTelemetry *)self dailyExecutionLatency], fabs(v16) == INFINITY))
  {
    v56 = 0;
  }

  else
  {
    [(BMLighthouseTaskTelemetry *)self dailyExecutionLatency];
    v17 = MEMORY[0x1E696AD98];
    [(BMLighthouseTaskTelemetry *)self dailyExecutionLatency];
    v56 = [v17 numberWithDouble:?];
  }

  if (![(BMLighthouseTaskTelemetry *)self hasCrossExecutionDelay]|| ([(BMLighthouseTaskTelemetry *)self crossExecutionDelay], fabs(v18) == INFINITY))
  {
    v55 = 0;
  }

  else
  {
    [(BMLighthouseTaskTelemetry *)self crossExecutionDelay];
    v19 = MEMORY[0x1E696AD98];
    [(BMLighthouseTaskTelemetry *)self crossExecutionDelay];
    v55 = [v19 numberWithDouble:?];
  }

  if (![(BMLighthouseTaskTelemetry *)self hasExecutionCompletionTime]|| ([(BMLighthouseTaskTelemetry *)self executionCompletionTime], fabs(v20) == INFINITY))
  {
    v54 = 0;
  }

  else
  {
    [(BMLighthouseTaskTelemetry *)self executionCompletionTime];
    v21 = MEMORY[0x1E696AD98];
    [(BMLighthouseTaskTelemetry *)self executionCompletionTime];
    v54 = [v21 numberWithDouble:?];
  }

  if (![(BMLighthouseTaskTelemetry *)self hasExecutionFailureTime]|| ([(BMLighthouseTaskTelemetry *)self executionFailureTime], fabs(v22) == INFINITY))
  {
    v53 = 0;
  }

  else
  {
    [(BMLighthouseTaskTelemetry *)self executionFailureTime];
    v23 = MEMORY[0x1E696AD98];
    [(BMLighthouseTaskTelemetry *)self executionFailureTime];
    v53 = [v23 numberWithDouble:?];
  }

  if (![(BMLighthouseTaskTelemetry *)self hasExecutionDeferralTime]|| ([(BMLighthouseTaskTelemetry *)self executionDeferralTime], fabs(v24) == INFINITY))
  {
    v26 = 0;
  }

  else
  {
    [(BMLighthouseTaskTelemetry *)self executionDeferralTime];
    v25 = MEMORY[0x1E696AD98];
    [(BMLighthouseTaskTelemetry *)self executionDeferralTime];
    v26 = [v25 numberWithDouble:?];
  }

  v62[0] = @"version";
  v27 = v3;
  if (!v3)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v48 = v27;
  v63[0] = v27;
  v62[1] = @"bucketStart";
  v28 = v7;
  if (!v7)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v47 = v28;
  v63[1] = v28;
  v62[2] = @"bucketEnd";
  v29 = v11;
  if (!v11)
  {
    v29 = [MEMORY[0x1E695DFB0] null];
  }

  v46 = v29;
  v63[2] = v29;
  v62[3] = @"taskName";
  v30 = v12;
  if (!v12)
  {
    v30 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = v30;
  v63[3] = v30;
  v62[4] = @"taskState";
  v31 = v61;
  if (!v61)
  {
    v31 = [MEMORY[0x1E695DFB0] null];
  }

  v51 = v11;
  v63[4] = v31;
  v62[5] = @"latestEventTimestamp";
  v32 = v60;
  if (!v60)
  {
    v32 = [MEMORY[0x1E695DFB0] null];
  }

  v50 = v12;
  v63[5] = v32;
  v62[6] = @"countCompleted";
  v33 = v59;
  if (!v59)
  {
    v33 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = v31;
  v63[6] = v33;
  v62[7] = @"countFailed";
  v34 = v58;
  if (!v58)
  {
    v34 = [MEMORY[0x1E695DFB0] null];
  }

  v63[7] = v34;
  v62[8] = @"countDeferred";
  v35 = v57;
  if (!v57)
  {
    v35 = [MEMORY[0x1E695DFB0] null];
  }

  v52 = v7;
  v63[8] = v35;
  v62[9] = @"dailyExecutionLatency";
  v36 = v56;
  if (!v56)
  {
    v36 = [MEMORY[0x1E695DFB0] null];
  }

  v63[9] = v36;
  v62[10] = @"crossExecutionDelay";
  v37 = v55;
  if (!v55)
  {
    v37 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = v32;
  v63[10] = v37;
  v62[11] = @"executionCompletionTime";
  v38 = v54;
  if (!v54)
  {
    v38 = [MEMORY[0x1E695DFB0] null];
  }

  v63[11] = v38;
  v62[12] = @"executionFailureTime";
  v39 = v53;
  if (!v53)
  {
    v39 = [MEMORY[0x1E695DFB0] null];
  }

  v63[12] = v39;
  v62[13] = @"executionDeferralTime";
  v40 = v26;
  if (!v26)
  {
    v40 = [MEMORY[0x1E695DFB0] null];
  }

  v63[13] = v40;
  v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:14];
  if (!v26)
  {
  }

  if (!v53)
  {
  }

  if (!v54)
  {
  }

  if (!v55)
  {
  }

  if (!v56)
  {
  }

  if (!v57)
  {
  }

  if (!v58)
  {
  }

  if (!v59)
  {
  }

  if (!v60)
  {
  }

  if (v61)
  {
    if (v50)
    {
      goto LABEL_90;
    }
  }

  else
  {

    if (v50)
    {
LABEL_90:
      if (v51)
      {
        goto LABEL_91;
      }

      goto LABEL_98;
    }
  }

  if (v51)
  {
LABEL_91:
    if (v52)
    {
      goto LABEL_92;
    }

LABEL_99:

    if (v3)
    {
      goto LABEL_93;
    }

    goto LABEL_100;
  }

LABEL_98:

  if (!v52)
  {
    goto LABEL_99;
  }

LABEL_92:
  if (v3)
  {
    goto LABEL_93;
  }

LABEL_100:

LABEL_93:
  v41 = *MEMORY[0x1E69E9840];

  return v49;
}

- (BMLighthouseTaskTelemetry)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v194[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"version"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v164 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v164 = v6;
LABEL_4:
    v7 = [v5 objectForKeyedSubscript:@"bucketStart"];
    v162 = v6;
    if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v8 = 0;
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = MEMORY[0x1E695DF00];
      v10 = v7;
      v11 = [v9 alloc];
      [v10 doubleValue];
      v13 = v12;

      v14 = [v11 initWithTimeIntervalSince1970:v13];
LABEL_11:
      v8 = v14;
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = objc_alloc_init(MEMORY[0x1E696AC80]);
      v8 = [v21 dateFromString:v7];

LABEL_16:
      v22 = [v5 objectForKeyedSubscript:@"bucketEnd"];
      v163 = v8;
      if (!v22 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v23 = 0;
        goto LABEL_24;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = MEMORY[0x1E695DF00];
        v25 = v22;
        v26 = v22;
        v27 = [v24 alloc];
        [v26 doubleValue];
        v29 = v28;

        v22 = v25;
        v30 = [v27 initWithTimeIntervalSince1970:v29];
LABEL_21:
        v23 = v30;
        goto LABEL_24;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v23 = [v31 dateFromString:v22];

LABEL_24:
        v32 = [v5 objectForKeyedSubscript:@"taskName"];
        v161 = v32;
        if (!v32 || (v33 = v32, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v158 = 0;
          goto LABEL_27;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v158 = v33;
LABEL_27:
          v157 = a4;
          v34 = [v5 objectForKeyedSubscript:@"taskState"];
          v159 = v34;
          if (v34)
          {
            v35 = v34;
            a4 = v23;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v160 = v35;
                goto LABEL_33;
              }

              if (v157)
              {
                v55 = v22;
                v56 = objc_alloc(MEMORY[0x1E696ABC0]);
                v57 = v7;
                v58 = *MEMORY[0x1E698F240];
                v185 = *MEMORY[0x1E696A578];
                v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"taskState"];
                v186 = v59;
                v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v186 forKeys:&v185 count:1];
                v61 = v56;
                v22 = v55;
                v62 = v58;
                v7 = v57;
                v156 = v60;
                v160 = 0;
                v20 = 0;
                *v157 = [v61 initWithDomain:v62 code:2 userInfo:?];
                goto LABEL_45;
              }

              v160 = 0;
              v20 = 0;
              v54 = v158;
LABEL_108:
              v19 = v164;
LABEL_148:

              goto LABEL_149;
            }
          }

          else
          {
            a4 = v23;
          }

          v160 = 0;
LABEL_33:
          v36 = [v5 objectForKeyedSubscript:@"latestEventTimestamp"];
          v156 = v36;
          if (!v36 || (v37 = v36, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v155 = 0;
LABEL_48:
            v64 = [v5 objectForKeyedSubscript:@"countCompleted"];
            v65 = a4;
            v154 = v64;
            v152 = a4;
            if (v64 && (v66 = v64, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!v157)
                {
                  a4 = v65;
                  v90 = 0;
                  v20 = 0;
                  v54 = v158;
                  v19 = v164;
LABEL_145:
                  v59 = v155;
                  goto LABEL_146;
                }

                a4 = v65;
                v83 = v22;
                v84 = objc_alloc(MEMORY[0x1E696ABC0]);
                v85 = v7;
                v86 = *MEMORY[0x1E698F240];
                v181 = *MEMORY[0x1E696A578];
                v153 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"countCompleted"];
                v182 = v153;
                v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v182 forKeys:&v181 count:1];
                v88 = v84;
                v22 = v83;
                v89 = v86;
                v7 = v85;
                v90 = 0;
                v20 = 0;
                v54 = v158;
                *v157 = [v88 initWithDomain:v89 code:2 userInfo:v87];
                v19 = v164;
LABEL_144:

                goto LABEL_145;
              }

              v151 = v66;
            }

            else
            {
              v151 = 0;
            }

            v67 = [v5 objectForKeyedSubscript:@"countFailed"];
            v150 = v67;
            if (v67 && (v68 = v67, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!v157)
                {
                  a4 = v152;
                  v153 = 0;
                  v20 = 0;
                  v54 = v158;
                  v19 = v164;
LABEL_143:
                  v87 = v150;
                  v90 = v151;
                  goto LABEL_144;
                }

                v91 = v22;
                v92 = objc_alloc(MEMORY[0x1E696ABC0]);
                v93 = *MEMORY[0x1E698F240];
                v179 = *MEMORY[0x1E696A578];
                v82 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"countFailed"];
                v180 = v82;
                v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v180 forKeys:&v179 count:1];
                v95 = v92;
                v22 = v91;
                v153 = 0;
                v20 = 0;
                v54 = v158;
                *v157 = [v95 initWithDomain:v93 code:2 userInfo:v94];
                v19 = v164;
                goto LABEL_142;
              }

              v153 = v68;
            }

            else
            {
              v153 = 0;
            }

            v69 = [v5 objectForKeyedSubscript:@"countDeferred"];
            v149 = v69;
            if (!v69 || (v70 = v69, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v145 = 0;
              goto LABEL_57;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v145 = v70;
LABEL_57:
              v71 = [v5 objectForKeyedSubscript:@"dailyExecutionLatency"];
              v144 = v22;
              v148 = v71;
              if (!v71 || (v72 = v71, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v73 = 0;
                goto LABEL_60;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v73 = v72;
LABEL_60:
                v74 = [v5 objectForKeyedSubscript:@"crossExecutionDelay"];
                v142 = v7;
                v147 = v73;
                if (!v74 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v75 = 0;
                  goto LABEL_63;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v75 = v74;
LABEL_63:
                  v76 = [v5 objectForKeyedSubscript:@"executionCompletionTime"];
                  v143 = v75;
                  if (!v76 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v146 = 0;
                    goto LABEL_66;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v146 = v76;
LABEL_66:
                    v77 = [v5 objectForKeyedSubscript:@"executionFailureTime"];
                    if (!v77 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v78 = self;
                      v79 = 0;
                      goto LABEL_69;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v78 = self;
                      v79 = v77;
LABEL_69:
                      v80 = [v5 objectForKeyedSubscript:@"executionDeferralTime"];
                      if (!v80 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v81 = 0;
LABEL_72:
                        v82 = v145;
                        v20 = [(BMLighthouseTaskTelemetry *)v78 initWithVersion:v164 bucketStart:v163 bucketEnd:v152 taskName:v158 taskState:v160 latestEventTimestamp:v155 countCompleted:v151 countFailed:v153 countDeferred:v145 dailyExecutionLatency:v147 crossExecutionDelay:v75 executionCompletionTime:v146 executionFailureTime:v79 executionDeferralTime:v81];
                        v78 = v20;
LABEL_137:
                        self = v78;

                        goto LABEL_138;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v81 = v80;
                        goto LABEL_72;
                      }

                      v20 = v157;
                      if (v157)
                      {
                        v166 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v141 = *MEMORY[0x1E698F240];
                        v167 = *MEMORY[0x1E696A578];
                        v130 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"executionDeferralTime"];
                        v168 = v130;
                        v131 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v168 forKeys:&v167 count:1];
                        *v157 = [v166 initWithDomain:v141 code:2 userInfo:v131];

                        v81 = 0;
                        v20 = 0;
                      }

                      else
                      {
                        v81 = 0;
                      }

LABEL_136:
                      v82 = v145;
                      goto LABEL_137;
                    }

                    if (v157)
                    {
                      v78 = self;
                      v127 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v128 = *MEMORY[0x1E698F240];
                      v169 = *MEMORY[0x1E696A578];
                      v81 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"executionFailureTime"];
                      v170 = v81;
                      v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v170 forKeys:&v169 count:1];
                      v129 = [v127 initWithDomain:v128 code:2 userInfo:v80];
                      v79 = 0;
                      v20 = 0;
                      *v157 = v129;
                      goto LABEL_136;
                    }

                    v79 = 0;
                    v20 = 0;
LABEL_134:
                    v82 = v145;
LABEL_138:

                    v7 = v142;
                    v54 = v158;
                    goto LABEL_139;
                  }

                  if (v157)
                  {
                    v110 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v111 = *MEMORY[0x1E698F240];
                    v171 = *MEMORY[0x1E696A578];
                    v79 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"executionCompletionTime"];
                    v172 = v79;
                    v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v172 forKeys:&v171 count:1];
                    v146 = 0;
                    v20 = 0;
                    *v157 = [v110 initWithDomain:v111 code:2 userInfo:v77];
                    goto LABEL_134;
                  }

                  v146 = 0;
                  v20 = 0;
LABEL_129:
                  v54 = v158;
                  v82 = v145;
LABEL_139:

                  v19 = v164;
                  v73 = v147;
                  goto LABEL_140;
                }

                if (v157)
                {
                  v107 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v108 = *MEMORY[0x1E698F240];
                  v173 = *MEMORY[0x1E696A578];
                  v146 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"crossExecutionDelay"];
                  v174 = v146;
                  v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v174 forKeys:&v173 count:1];
                  v109 = v107;
                  v7 = v142;
                  v143 = 0;
                  v20 = 0;
                  *v157 = [v109 initWithDomain:v108 code:2 userInfo:v76];
                  goto LABEL_129;
                }

                v143 = 0;
                v20 = 0;
LABEL_127:
                v54 = v158;
                v19 = v164;
                v82 = v145;
LABEL_140:

                v22 = v144;
                goto LABEL_141;
              }

              if (v157)
              {
                v103 = v7;
                v104 = objc_alloc(MEMORY[0x1E696ABC0]);
                v105 = *MEMORY[0x1E698F240];
                v175 = *MEMORY[0x1E696A578];
                v143 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"dailyExecutionLatency"];
                v176 = v143;
                v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v176 forKeys:&v175 count:1];
                v106 = v104;
                v7 = v103;
                v73 = 0;
                v20 = 0;
                *v157 = [v106 initWithDomain:v105 code:2 userInfo:v74];
                goto LABEL_127;
              }

              v73 = 0;
              v20 = 0;
              v54 = v158;
              v19 = v164;
              v82 = v145;
LABEL_141:

              v94 = v149;
              goto LABEL_142;
            }

            if (v157)
            {
              v96 = v22;
              v97 = objc_alloc(MEMORY[0x1E696ABC0]);
              v98 = v7;
              v99 = *MEMORY[0x1E698F240];
              v177 = *MEMORY[0x1E696A578];
              v73 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"countDeferred"];
              v178 = v73;
              v100 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v178 forKeys:&v177 count:1];
              v101 = v97;
              v22 = v96;
              v102 = v99;
              v7 = v98;
              v148 = v100;
              v20 = 0;
              *v157 = [v101 initWithDomain:v102 code:2 userInfo:?];
              v54 = v158;
              v19 = v164;
              v82 = 0;
              goto LABEL_141;
            }

            v20 = 0;
            v54 = v158;
            v19 = v164;
            v94 = v149;
            v82 = 0;
LABEL_142:
            a4 = v152;

            goto LABEL_143;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v38 = MEMORY[0x1E695DF00];
            v39 = v22;
            v40 = v37;
            v41 = [v38 alloc];
            [v40 doubleValue];
            v43 = v42;

            v22 = v39;
            v44 = [v41 initWithTimeIntervalSince1970:v43];
LABEL_40:
            v155 = v44;
            goto LABEL_48;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v63 = objc_alloc_init(MEMORY[0x1E696AC80]);
            v155 = [v63 dateFromString:v37];

            goto LABEL_48;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v44 = v37;
            goto LABEL_40;
          }

          v59 = v157;
          if (v157)
          {
            v132 = v22;
            v133 = objc_alloc(MEMORY[0x1E696ABC0]);
            v134 = v7;
            v135 = *MEMORY[0x1E698F240];
            v183 = *MEMORY[0x1E696A578];
            v90 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"latestEventTimestamp"];
            v184 = v90;
            v136 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v184 forKeys:&v183 count:1];
            v137 = v133;
            v22 = v132;
            v138 = v135;
            v7 = v134;
            v154 = v136;
            v20 = 0;
            *v157 = [v137 initWithDomain:v138 code:2 userInfo:?];
            v59 = 0;
            v54 = v158;
            v19 = v164;
LABEL_146:

            goto LABEL_147;
          }

          v20 = 0;
LABEL_45:
          v54 = v158;
          v19 = v164;
LABEL_147:

          goto LABEL_148;
        }

        if (a4)
        {
          v45 = a4;
          a4 = v23;
          v46 = v45;
          v47 = v22;
          v48 = objc_alloc(MEMORY[0x1E696ABC0]);
          v49 = v7;
          v50 = *MEMORY[0x1E698F240];
          v187 = *MEMORY[0x1E696A578];
          v160 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"taskName"];
          v188 = v160;
          v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v188 forKeys:&v187 count:1];
          v52 = v48;
          v22 = v47;
          v53 = v50;
          v7 = v49;
          v159 = v51;
          v54 = 0;
          v20 = 0;
          *v46 = [v52 initWithDomain:v53 code:2 userInfo:?];
          goto LABEL_108;
        }

        a4 = v23;
        v54 = 0;
        v20 = 0;
LABEL_115:
        v19 = v164;
LABEL_149:

        v8 = v163;
        goto LABEL_150;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = v22;
        goto LABEL_21;
      }

      if (a4)
      {
        v119 = objc_alloc(MEMORY[0x1E696ABC0]);
        v120 = v7;
        v121 = *MEMORY[0x1E698F240];
        v189 = *MEMORY[0x1E696A578];
        v122 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"bucketEnd"];
        v190 = v122;
        v123 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v190 forKeys:&v189 count:1];
        v124 = v121;
        v7 = v120;
        v54 = v122;
        v161 = v123;
        v125 = [v119 initWithDomain:v124 code:2 userInfo:?];
        v126 = a4;
        a4 = 0;
        v20 = 0;
        *v126 = v125;
        goto LABEL_115;
      }

      v20 = 0;
LABEL_132:
      v19 = v164;
LABEL_150:

      v6 = v162;
      goto LABEL_151;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v7;
      goto LABEL_11;
    }

    if (a4)
    {
      v112 = objc_alloc(MEMORY[0x1E696ABC0]);
      v113 = v7;
      v114 = *MEMORY[0x1E698F240];
      v191 = *MEMORY[0x1E696A578];
      v115 = a4;
      a4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"bucketStart"];
      v192 = a4;
      v116 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v192 forKeys:&v191 count:1];
      v117 = v112;
      v22 = v116;
      v118 = v114;
      v7 = v113;
      v8 = 0;
      v20 = 0;
      *v115 = [v117 initWithDomain:v118 code:2 userInfo:v116];
      goto LABEL_132;
    }

    v8 = 0;
    v20 = 0;
    v19 = v164;
LABEL_151:

    goto LABEL_152;
  }

  if (a4)
  {
    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E698F240];
    v193 = *MEMORY[0x1E696A578];
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"version"];
    v194[0] = v8;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v194 forKeys:&v193 count:1];
    v18 = v16;
    v7 = v17;
    v19 = 0;
    v20 = 0;
    *a4 = [v15 initWithDomain:v18 code:2 userInfo:v17];
    goto LABEL_151;
  }

  v19 = 0;
  v20 = 0;
LABEL_152:

  v139 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMLighthouseTaskTelemetry *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v16 = a3;
  if (self->_hasVersion)
  {
    version = self->_version;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasRaw_bucketStart)
  {
    raw_bucketStart = self->_raw_bucketStart;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRaw_bucketEnd)
  {
    raw_bucketEnd = self->_raw_bucketEnd;
    PBDataWriterWriteDoubleField();
  }

  if (self->_taskName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_taskState)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_latestEventTimestamp)
  {
    raw_latestEventTimestamp = self->_raw_latestEventTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasCountCompleted)
  {
    countCompleted = self->_countCompleted;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasCountFailed)
  {
    countFailed = self->_countFailed;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasCountDeferred)
  {
    countDeferred = self->_countDeferred;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasDailyExecutionLatency)
  {
    dailyExecutionLatency = self->_dailyExecutionLatency;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasCrossExecutionDelay)
  {
    crossExecutionDelay = self->_crossExecutionDelay;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasExecutionCompletionTime)
  {
    executionCompletionTime = self->_executionCompletionTime;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasExecutionFailureTime)
  {
    executionFailureTime = self->_executionFailureTime;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasExecutionDeferralTime)
  {
    executionDeferralTime = self->_executionDeferralTime;
    PBDataWriterWriteDoubleField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v73.receiver = self;
  v73.super_class = BMLighthouseTaskTelemetry;
  v5 = [(BMEventBase *)&v73 init];
  if (!v5)
  {
    goto LABEL_121;
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
        LOBYTE(v74) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v74 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v74 & 0x7F) << v7;
        if ((v74 & 0x80) == 0)
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

      switch((v14 >> 3))
      {
        case 1u:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v5->_hasVersion = 1;
          while (1)
          {
            LOBYTE(v74) = 0;
            v18 = [v4 position] + 1;
            if (v18 >= [v4 position] && (v19 = objc_msgSend(v4, "position") + 1, v19 <= objc_msgSend(v4, "length")))
            {
              v20 = [v4 data];
              [v20 getBytes:&v74 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v17 |= (v74 & 0x7F) << v15;
            if ((v74 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v13 = v16++ >= 9;
            if (v13)
            {
              v21 = 0;
LABEL_91:
              v59 = 80;
              goto LABEL_100;
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

          goto LABEL_91;
        case 2u:
          v5->_hasRaw_bucketStart = 1;
          v74 = 0;
          v39 = [v4 position] + 8;
          if (v39 >= [v4 position] && (v40 = objc_msgSend(v4, "position") + 8, v40 <= objc_msgSend(v4, "length")))
          {
            v66 = [v4 data];
            [v66 getBytes:&v74 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v61 = v74;
          v62 = 24;
          goto LABEL_117;
        case 3u:
          v5->_hasRaw_bucketEnd = 1;
          v74 = 0;
          v30 = [v4 position] + 8;
          if (v30 >= [v4 position] && (v31 = objc_msgSend(v4, "position") + 8, v31 <= objc_msgSend(v4, "length")))
          {
            v65 = [v4 data];
            [v65 getBytes:&v74 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v61 = v74;
          v62 = 40;
          goto LABEL_117;
        case 4u:
          v24 = PBReaderReadString();
          v25 = 96;
          goto LABEL_42;
        case 5u:
          v24 = PBReaderReadString();
          v25 = 104;
LABEL_42:
          v32 = *(&v5->super.super.isa + v25);
          *(&v5->super.super.isa + v25) = v24;

          goto LABEL_118;
        case 6u:
          v5->_hasRaw_latestEventTimestamp = 1;
          v74 = 0;
          v41 = [v4 position] + 8;
          if (v41 >= [v4 position] && (v42 = objc_msgSend(v4, "position") + 8, v42 <= objc_msgSend(v4, "length")))
          {
            v67 = [v4 data];
            [v67 getBytes:&v74 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v61 = v74;
          v62 = 56;
          goto LABEL_117;
        case 7u:
          v45 = 0;
          v46 = 0;
          v47 = 0;
          v5->_hasCountCompleted = 1;
          while (1)
          {
            LOBYTE(v74) = 0;
            v48 = [v4 position] + 1;
            if (v48 >= [v4 position] && (v49 = objc_msgSend(v4, "position") + 1, v49 <= objc_msgSend(v4, "length")))
            {
              v50 = [v4 data];
              [v50 getBytes:&v74 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v47 |= (v74 & 0x7F) << v45;
            if ((v74 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v13 = v46++ >= 9;
            if (v13)
            {
              v21 = 0;
              goto LABEL_95;
            }
          }

          if ([v4 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v47;
          }

LABEL_95:
          v59 = 84;
          goto LABEL_100;
        case 8u:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v5->_hasCountFailed = 1;
          while (1)
          {
            LOBYTE(v74) = 0;
            v36 = [v4 position] + 1;
            if (v36 >= [v4 position] && (v37 = objc_msgSend(v4, "position") + 1, v37 <= objc_msgSend(v4, "length")))
            {
              v38 = [v4 data];
              [v38 getBytes:&v74 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v35 |= (v74 & 0x7F) << v33;
            if ((v74 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v13 = v34++ >= 9;
            if (v13)
            {
              v21 = 0;
              goto LABEL_87;
            }
          }

          if ([v4 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v35;
          }

LABEL_87:
          v59 = 88;
          goto LABEL_100;
        case 9u:
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v5->_hasCountDeferred = 1;
          break;
        case 0xAu:
          v5->_hasDailyExecutionLatency = 1;
          v74 = 0;
          v28 = [v4 position] + 8;
          if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 8, v29 <= objc_msgSend(v4, "length")))
          {
            v64 = [v4 data];
            [v64 getBytes:&v74 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v61 = v74;
          v62 = 112;
          goto LABEL_117;
        case 0xBu:
          v5->_hasCrossExecutionDelay = 1;
          v74 = 0;
          v51 = [v4 position] + 8;
          if (v51 >= [v4 position] && (v52 = objc_msgSend(v4, "position") + 8, v52 <= objc_msgSend(v4, "length")))
          {
            v69 = [v4 data];
            [v69 getBytes:&v74 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v61 = v74;
          v62 = 120;
          goto LABEL_117;
        case 0xCu:
          v5->_hasExecutionCompletionTime = 1;
          v74 = 0;
          v22 = [v4 position] + 8;
          if (v22 >= [v4 position] && (v23 = objc_msgSend(v4, "position") + 8, v23 <= objc_msgSend(v4, "length")))
          {
            v60 = [v4 data];
            [v60 getBytes:&v74 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v61 = v74;
          v62 = 128;
          goto LABEL_117;
        case 0xDu:
          v5->_hasExecutionFailureTime = 1;
          v74 = 0;
          v26 = [v4 position] + 8;
          if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 8, v27 <= objc_msgSend(v4, "length")))
          {
            v63 = [v4 data];
            [v63 getBytes:&v74 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v61 = v74;
          v62 = 136;
          goto LABEL_117;
        case 0xEu:
          v5->_hasExecutionDeferralTime = 1;
          v74 = 0;
          v43 = [v4 position] + 8;
          if (v43 >= [v4 position] && (v44 = objc_msgSend(v4, "position") + 8, v44 <= objc_msgSend(v4, "length")))
          {
            v68 = [v4 data];
            [v68 getBytes:&v74 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v61 = v74;
          v62 = 144;
LABEL_117:
          *(&v5->super.super.isa + v62) = v61;
          goto LABEL_118;
        default:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_120;
          }

          goto LABEL_118;
      }

      while (1)
      {
        LOBYTE(v74) = 0;
        v56 = [v4 position] + 1;
        if (v56 >= [v4 position] && (v57 = objc_msgSend(v4, "position") + 1, v57 <= objc_msgSend(v4, "length")))
        {
          v58 = [v4 data];
          [v58 getBytes:&v74 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v55 |= (v74 & 0x7F) << v53;
        if ((v74 & 0x80) == 0)
        {
          break;
        }

        v53 += 7;
        v13 = v54++ >= 9;
        if (v13)
        {
          v21 = 0;
          goto LABEL_99;
        }
      }

      v21 = [v4 hasError] ? 0 : v55;
LABEL_99:
      v59 = 92;
LABEL_100:
      *(&v5->super.super.isa + v59) = v21;
LABEL_118:
      v70 = [v4 position];
    }

    while (v70 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_120:
    v71 = 0;
  }

  else
  {
LABEL_121:
    v71 = v5;
  }

  return v71;
}

- (NSString)description
{
  v20 = objc_alloc(MEMORY[0x1E696AEC0]);
  v19 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLighthouseTaskTelemetry version](self, "version")}];
  v24 = [(BMLighthouseTaskTelemetry *)self bucketStart];
  v23 = [(BMLighthouseTaskTelemetry *)self bucketEnd];
  v22 = [(BMLighthouseTaskTelemetry *)self taskName];
  v15 = [(BMLighthouseTaskTelemetry *)self taskState];
  v18 = [(BMLighthouseTaskTelemetry *)self latestEventTimestamp];
  v17 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLighthouseTaskTelemetry countCompleted](self, "countCompleted")}];
  v16 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLighthouseTaskTelemetry countFailed](self, "countFailed")}];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLighthouseTaskTelemetry countDeferred](self, "countDeferred")}];
  v4 = MEMORY[0x1E696AD98];
  [(BMLighthouseTaskTelemetry *)self dailyExecutionLatency];
  v5 = [v4 numberWithDouble:?];
  v6 = MEMORY[0x1E696AD98];
  [(BMLighthouseTaskTelemetry *)self crossExecutionDelay];
  v7 = [v6 numberWithDouble:?];
  v8 = MEMORY[0x1E696AD98];
  [(BMLighthouseTaskTelemetry *)self executionCompletionTime];
  v9 = [v8 numberWithDouble:?];
  v10 = MEMORY[0x1E696AD98];
  [(BMLighthouseTaskTelemetry *)self executionFailureTime];
  v11 = [v10 numberWithDouble:?];
  v12 = MEMORY[0x1E696AD98];
  [(BMLighthouseTaskTelemetry *)self executionDeferralTime];
  v13 = [v12 numberWithDouble:?];
  v21 = [v20 initWithFormat:@"BMLighthouseTaskTelemetry with version: %@, bucketStart: %@, bucketEnd: %@, taskName: %@, taskState: %@, latestEventTimestamp: %@, countCompleted: %@, countFailed: %@, countDeferred: %@, dailyExecutionLatency: %@, crossExecutionDelay: %@, executionCompletionTime: %@, executionFailureTime: %@, executionDeferralTime: %@", v19, v24, v23, v22, v15, v18, v17, v16, v3, v5, v7, v9, v11, v13];

  return v21;
}

- (BMLighthouseTaskTelemetry)initWithVersion:(id)a3 bucketStart:(id)a4 bucketEnd:(id)a5 taskName:(id)a6 taskState:(id)a7 latestEventTimestamp:(id)a8 countCompleted:(id)a9 countFailed:(id)a10 countDeferred:(id)a11 dailyExecutionLatency:(id)a12 crossExecutionDelay:(id)a13 executionCompletionTime:(id)a14 executionFailureTime:(id)a15 executionDeferralTime:(id)a16
{
  v21 = a3;
  v22 = a4;
  v23 = a5;
  obj = a6;
  v51 = a6;
  v48 = a7;
  v50 = a7;
  v24 = a8;
  v25 = v23;
  v26 = a9;
  v54 = a10;
  v27 = v22;
  v53 = a11;
  v28 = v24;
  v52 = a12;
  v29 = a13;
  v30 = a14;
  v31 = a15;
  v32 = a16;
  v55.receiver = self;
  v55.super_class = BMLighthouseTaskTelemetry;
  v33 = [(BMEventBase *)&v55 init];
  if (v33)
  {
    v33->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v21)
    {
      v33->_hasVersion = 1;
      v34 = [v21 intValue];
    }

    else
    {
      v33->_hasVersion = 0;
      v34 = -1;
    }

    v33->_version = v34;
    if (v27)
    {
      v33->_hasRaw_bucketStart = 1;
      [v27 timeIntervalSince1970];
    }

    else
    {
      v33->_hasRaw_bucketStart = 0;
      v35 = -1.0;
    }

    v33->_raw_bucketStart = v35;
    if (v25)
    {
      v33->_hasRaw_bucketEnd = 1;
      [v25 timeIntervalSince1970];
    }

    else
    {
      v33->_hasRaw_bucketEnd = 0;
      v36 = -1.0;
    }

    v33->_raw_bucketEnd = v36;
    objc_storeStrong(&v33->_taskName, obj);
    objc_storeStrong(&v33->_taskState, v48);
    if (v28)
    {
      v33->_hasRaw_latestEventTimestamp = 1;
      [v28 timeIntervalSince1970];
    }

    else
    {
      v33->_hasRaw_latestEventTimestamp = 0;
      v37 = -1.0;
    }

    v33->_raw_latestEventTimestamp = v37;
    if (v26)
    {
      v33->_hasCountCompleted = 1;
      v38 = [v26 intValue];
    }

    else
    {
      v33->_hasCountCompleted = 0;
      v38 = -1;
    }

    v33->_countCompleted = v38;
    if (v54)
    {
      v33->_hasCountFailed = 1;
      v39 = [v54 intValue];
    }

    else
    {
      v33->_hasCountFailed = 0;
      v39 = -1;
    }

    v33->_countFailed = v39;
    if (v53)
    {
      v33->_hasCountDeferred = 1;
      v40 = [v53 intValue];
    }

    else
    {
      v33->_hasCountDeferred = 0;
      v40 = -1;
    }

    v33->_countDeferred = v40;
    if (v52)
    {
      v33->_hasDailyExecutionLatency = 1;
      [v52 doubleValue];
    }

    else
    {
      v33->_hasDailyExecutionLatency = 0;
      v41 = -1.0;
    }

    v33->_dailyExecutionLatency = v41;
    if (v29)
    {
      v33->_hasCrossExecutionDelay = 1;
      [v29 doubleValue];
    }

    else
    {
      v33->_hasCrossExecutionDelay = 0;
      v42 = -1.0;
    }

    v33->_crossExecutionDelay = v42;
    if (v30)
    {
      v33->_hasExecutionCompletionTime = 1;
      [v30 doubleValue];
    }

    else
    {
      v33->_hasExecutionCompletionTime = 0;
      v43 = -1.0;
    }

    v33->_executionCompletionTime = v43;
    if (v31)
    {
      v33->_hasExecutionFailureTime = 1;
      [v31 doubleValue];
    }

    else
    {
      v33->_hasExecutionFailureTime = 0;
      v44 = -1.0;
    }

    v33->_executionFailureTime = v44;
    if (v32)
    {
      v33->_hasExecutionDeferralTime = 1;
      [v32 doubleValue];
    }

    else
    {
      v33->_hasExecutionDeferralTime = 0;
      v45 = -1.0;
    }

    v33->_executionDeferralTime = v45;
  }

  return v33;
}

+ (id)protoFields
{
  v19[14] = *MEMORY[0x1E69E9840];
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"version" number:1 type:2 subMessageClass:0];
  v19[0] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bucketStart" number:2 type:0 subMessageClass:0];
  v19[1] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bucketEnd" number:3 type:0 subMessageClass:0];
  v19[2] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"taskName" number:4 type:13 subMessageClass:0];
  v19[3] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"taskState" number:5 type:13 subMessageClass:0];
  v19[4] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"latestEventTimestamp" number:6 type:0 subMessageClass:0];
  v19[5] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"countCompleted" number:7 type:2 subMessageClass:0];
  v19[6] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"countFailed" number:8 type:2 subMessageClass:0];
  v19[7] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"countDeferred" number:9 type:2 subMessageClass:0];
  v19[8] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dailyExecutionLatency" number:10 type:0 subMessageClass:0];
  v19[9] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"crossExecutionDelay" number:11 type:0 subMessageClass:0];
  v19[10] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"executionCompletionTime" number:12 type:0 subMessageClass:0];
  v19[11] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"executionFailureTime" number:13 type:0 subMessageClass:0];
  v19[12] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"executionDeferralTime" number:14 type:0 subMessageClass:0];
  v19[13] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:14];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
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

    v8 = [[BMLighthouseTaskTelemetry alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[19] = 0;
    }
  }

  return v4;
}

@end