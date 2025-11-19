@interface BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats)initWithTriggeredMechanism:(int)a3 requestCount:(id)a4 intendedRequestCount:(id)a5 unintendedRequestCount:(id)a6 intendedRequestRatio:(id)a7 triggeredMechanismRequestRatio:(id)a8 modelVersion:(id)a9;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats *)self triggeredMechanism];
    if (v6 != [v5 triggeredMechanism])
    {
      goto LABEL_31;
    }

    if (-[BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats hasRequestCount](self, "hasRequestCount") || [v5 hasRequestCount])
    {
      if (![(BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats *)self hasRequestCount])
      {
        goto LABEL_31;
      }

      if (![v5 hasRequestCount])
      {
        goto LABEL_31;
      }

      v7 = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats *)self requestCount];
      if (v7 != [v5 requestCount])
      {
        goto LABEL_31;
      }
    }

    if (-[BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats hasIntendedRequestCount](self, "hasIntendedRequestCount") || [v5 hasIntendedRequestCount])
    {
      if (![(BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats *)self hasIntendedRequestCount])
      {
        goto LABEL_31;
      }

      if (![v5 hasIntendedRequestCount])
      {
        goto LABEL_31;
      }

      v8 = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats *)self intendedRequestCount];
      if (v8 != [v5 intendedRequestCount])
      {
        goto LABEL_31;
      }
    }

    if ((!-[BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats hasUnintendedRequestCount](self, "hasUnintendedRequestCount") && ![v5 hasUnintendedRequestCount] || -[BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats hasUnintendedRequestCount](self, "hasUnintendedRequestCount") && objc_msgSend(v5, "hasUnintendedRequestCount") && (v9 = -[BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats unintendedRequestCount](self, "unintendedRequestCount"), v9 == objc_msgSend(v5, "unintendedRequestCount"))) && (!-[BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats hasIntendedRequestRatio](self, "hasIntendedRequestRatio") && !objc_msgSend(v5, "hasIntendedRequestRatio") || -[BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats hasIntendedRequestRatio](self, "hasIntendedRequestRatio") && objc_msgSend(v5, "hasIntendedRequestRatio") && (-[BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats intendedRequestRatio](self, "intendedRequestRatio"), v11 = v10, objc_msgSend(v5, "intendedRequestRatio"), v11 == v12)) && (!-[BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats hasTriggeredMechanismRequestRatio](self, "hasTriggeredMechanismRequestRatio") && !objc_msgSend(v5, "hasTriggeredMechanismRequestRatio") || -[BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats hasTriggeredMechanismRequestRatio](self, "hasTriggeredMechanismRequestRatio") && objc_msgSend(v5, "hasTriggeredMechanismRequestRatio") && (-[BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats triggeredMechanismRequestRatio](self, "triggeredMechanismRequestRatio"), v14 = v13, objc_msgSend(v5, "triggeredMechanismRequestRatio"), v14 == v15)))
    {
      v16 = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats *)self modelVersion];
      v17 = [v5 modelVersion];
      if (v16 == v17)
      {
        v20 = 1;
      }

      else
      {
        v18 = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats *)self modelVersion];
        v19 = [v5 modelVersion];
        v20 = [v18 isEqual:v19];
      }
    }

    else
    {
LABEL_31:
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)jsonDictionary
{
  v29[7] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats triggeredMechanism](self, "triggeredMechanism")}];
  if ([(BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats *)self hasRequestCount])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats requestCount](self, "requestCount")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats *)self hasIntendedRequestCount])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats intendedRequestCount](self, "intendedRequestCount")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats *)self hasUnintendedRequestCount])
  {
    v27 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats unintendedRequestCount](self, "unintendedRequestCount")}];
  }

  else
  {
    v27 = 0;
  }

  if (![(BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats *)self hasIntendedRequestRatio]|| ([(BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats *)self intendedRequestRatio], fabs(v6) == INFINITY))
  {
    v8 = 0;
  }

  else
  {
    [(BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats *)self intendedRequestRatio];
    v7 = MEMORY[0x1E696AD98];
    [(BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats *)self intendedRequestRatio];
    v8 = [v7 numberWithDouble:?];
  }

  if (![(BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats *)self hasTriggeredMechanismRequestRatio]|| ([(BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats *)self triggeredMechanismRequestRatio], fabs(v9) == INFINITY))
  {
    v11 = 0;
  }

  else
  {
    [(BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats *)self triggeredMechanismRequestRatio];
    v10 = MEMORY[0x1E696AD98];
    [(BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats *)self triggeredMechanismRequestRatio];
    v11 = [v10 numberWithDouble:?];
  }

  v12 = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats *)self modelVersion];
  v28[0] = @"triggeredMechanism";
  v13 = v3;
  if (!v3)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v13;
  v29[0] = v13;
  v28[1] = @"requestCount";
  v14 = v4;
  if (!v4)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v3;
  v23 = v14;
  v29[1] = v14;
  v28[2] = @"intendedRequestCount";
  v15 = v5;
  if (!v5)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v4;
  v29[2] = v15;
  v28[3] = @"unintendedRequestCount";
  v16 = v27;
  if (!v27)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v29[3] = v16;
  v28[4] = @"intendedRequestRatio";
  v17 = v8;
  if (!v8)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v29[4] = v17;
  v28[5] = @"triggeredMechanismRequestRatio";
  v18 = v11;
  if (!v11)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v29[5] = v18;
  v28[6] = @"modelVersion";
  v19 = v12;
  if (!v12)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v29[6] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:7];
  if (v12)
  {
    if (v11)
    {
      goto LABEL_34;
    }

LABEL_45:

    if (v8)
    {
      goto LABEL_35;
    }

    goto LABEL_46;
  }

  if (!v11)
  {
    goto LABEL_45;
  }

LABEL_34:
  if (v8)
  {
    goto LABEL_35;
  }

LABEL_46:

LABEL_35:
  if (!v27)
  {
  }

  if (!v5)
  {
  }

  if (v25)
  {
    if (v26)
    {
      goto LABEL_41;
    }
  }

  else
  {

    if (v26)
    {
      goto LABEL_41;
    }
  }

LABEL_41:
  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v86[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"triggeredMechanism"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_9:
    v10 = [v6 objectForKeyedSubscript:@"requestCount"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v11 = 0;
          v21 = 0;
          goto LABEL_34;
        }

        v25 = a4;
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E698F240];
        v83 = *MEMORY[0x1E696A578];
        v72 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"requestCount"];
        v84 = v72;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
        v29 = [v26 initWithDomain:v27 code:2 userInfo:v28];
        v11 = 0;
        v21 = 0;
        *v25 = v29;
        v12 = v28;
        goto LABEL_33;
      }

      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [v6 objectForKeyedSubscript:@"intendedRequestCount"];
    v69 = v10;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v72 = 0;
          v21 = 0;
          goto LABEL_33;
        }

        v71 = a4;
        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = *MEMORY[0x1E698F240];
        v81 = *MEMORY[0x1E696A578];
        v32 = v11;
        v33 = objc_alloc(MEMORY[0x1E696AEC0]);
        v59 = objc_opt_class();
        v34 = v33;
        v11 = v32;
        v22 = [v34 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v59, @"intendedRequestCount"];
        v82 = v22;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
        v35 = [v30 initWithDomain:v31 code:2 userInfo:v13];
        v72 = 0;
        v21 = 0;
        *v71 = v35;
LABEL_32:

        v10 = v69;
LABEL_33:

        goto LABEL_34;
      }

      v72 = v12;
    }

    else
    {
      v72 = 0;
    }

    v13 = [v6 objectForKeyedSubscript:@"unintendedRequestCount"];
    v65 = v12;
    v66 = v7;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v22 = 0;
          v21 = 0;
          goto LABEL_32;
        }

        v36 = a4;
        v37 = objc_alloc(MEMORY[0x1E696ABC0]);
        v38 = *MEMORY[0x1E698F240];
        v79 = *MEMORY[0x1E696A578];
        v39 = v11;
        v40 = objc_alloc(MEMORY[0x1E696AEC0]);
        v60 = objc_opt_class();
        v41 = v40;
        v11 = v39;
        v70 = [v41 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v60, @"unintendedRequestCount"];
        v80 = v70;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
        v42 = [v37 initWithDomain:v38 code:2 userInfo:v14];
        v22 = 0;
        v21 = 0;
        *v36 = v42;
        v12 = v65;
        goto LABEL_31;
      }

      v68 = v13;
    }

    else
    {
      v68 = 0;
    }

    v14 = [v6 objectForKeyedSubscript:@"intendedRequestRatio"];
    v67 = v8;
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v70 = 0;
          v21 = 0;
          goto LABEL_30;
        }

        v17 = self;
        v43 = a4;
        v44 = objc_alloc(MEMORY[0x1E696ABC0]);
        v45 = *MEMORY[0x1E698F240];
        v77 = *MEMORY[0x1E696A578];
        v46 = v11;
        v47 = objc_alloc(MEMORY[0x1E696AEC0]);
        v61 = objc_opt_class();
        v48 = v47;
        v11 = v46;
        v18 = [v48 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v61, @"intendedRequestRatio"];
        v78 = v18;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
        v49 = [v44 initWithDomain:v45 code:2 userInfo:v16];
        v70 = 0;
        v21 = 0;
        *v43 = v49;
        goto LABEL_69;
      }

      v15 = a4;
      v70 = v14;
    }

    else
    {
      v15 = a4;
      v70 = 0;
    }

    v16 = [v6 objectForKeyedSubscript:@"triggeredMechanismRequestRatio"];
    v64 = v11;
    if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v17 = self;
      v18 = 0;
      goto LABEL_24;
    }

    objc_opt_class();
    v17 = self;
    if (objc_opt_isKindOfClass())
    {
      v18 = v16;
LABEL_24:
      v19 = [v6 objectForKeyedSubscript:@"modelVersion"];
      if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (v15)
          {
            v63 = objc_alloc(MEMORY[0x1E696ABC0]);
            v62 = *MEMORY[0x1E698F240];
            v73 = *MEMORY[0x1E696A578];
            v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"modelVersion"];
            v74 = v57;
            v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
            *v15 = [v63 initWithDomain:v62 code:2 userInfo:v58];
          }

          v20 = 0;
          v21 = 0;
          goto LABEL_28;
        }

        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v21 = -[BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats initWithTriggeredMechanism:requestCount:intendedRequestCount:unintendedRequestCount:intendedRequestRatio:triggeredMechanismRequestRatio:modelVersion:](v17, "initWithTriggeredMechanism:requestCount:intendedRequestCount:unintendedRequestCount:intendedRequestRatio:triggeredMechanismRequestRatio:modelVersion:", [v67 intValue], v64, v72, v68, v70, v18, v20);
      v17 = v21;
LABEL_28:
      v12 = v65;

      v11 = v64;
LABEL_29:

      self = v17;
      v8 = v67;
LABEL_30:
      v22 = v68;
LABEL_31:

      v7 = v66;
      goto LABEL_32;
    }

    if (v15)
    {
      v54 = objc_alloc(MEMORY[0x1E696ABC0]);
      v55 = *MEMORY[0x1E698F240];
      v75 = *MEMORY[0x1E696A578];
      v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"triggeredMechanismRequestRatio"];
      v76 = v20;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
      v56 = [v54 initWithDomain:v55 code:2 userInfo:v19];
      v18 = 0;
      v21 = 0;
      *v15 = v56;
      goto LABEL_28;
    }

    v18 = 0;
    v21 = 0;
LABEL_69:
    v12 = v65;
    goto LABEL_29;
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
    v9 = [MEMORY[0x1E696AD98] numberWithInt:BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStatsTriggeredMechanismFromString(v7)];
    goto LABEL_8;
  }

  if (!a4)
  {
    v8 = 0;
    v21 = 0;
    goto LABEL_35;
  }

  v50 = a4;
  v51 = objc_alloc(MEMORY[0x1E696ABC0]);
  v52 = *MEMORY[0x1E698F240];
  v85 = *MEMORY[0x1E696A578];
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"triggeredMechanism"];
  v86[0] = v11;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:&v85 count:1];
  v53 = [v51 initWithDomain:v52 code:2 userInfo:v10];
  v8 = 0;
  v21 = 0;
  *v50 = v53;
LABEL_34:

LABEL_35:
  v23 = *MEMORY[0x1E69E9840];
  return v21;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  triggeredMechanism = self->_triggeredMechanism;
  v12 = v4;
  PBDataWriterWriteUint32Field();
  if (self->_hasRequestCount)
  {
    requestCount = self->_requestCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasIntendedRequestCount)
  {
    intendedRequestCount = self->_intendedRequestCount;
    PBDataWriterWriteInt32Field();
  }

  v8 = v12;
  if (self->_hasUnintendedRequestCount)
  {
    unintendedRequestCount = self->_unintendedRequestCount;
    PBDataWriterWriteInt32Field();
    v8 = v12;
  }

  if (self->_hasIntendedRequestRatio)
  {
    intendedRequestRatio = self->_intendedRequestRatio;
    PBDataWriterWriteDoubleField();
    v8 = v12;
  }

  if (self->_hasTriggeredMechanismRequestRatio)
  {
    triggeredMechanismRequestRatio = self->_triggeredMechanismRequestRatio;
    PBDataWriterWriteDoubleField();
    v8 = v12;
  }

  if (self->_modelVersion)
  {
    PBDataWriterWriteStringField();
    v8 = v12;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v56.receiver = self;
  v56.super_class = BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats;
  v5 = [(BMEventBase *)&v56 init];
  if (!v5)
  {
    goto LABEL_97;
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
        LOBYTE(v57) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v57 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v57 & 0x7F) << v7;
        if ((v57 & 0x80) == 0)
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
      if ((v14 >> 3) <= 3)
      {
        switch(v15)
        {
          case 1:
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v5->_hasRequestCount = 1;
            while (1)
            {
              LOBYTE(v57) = 0;
              v35 = [v4 position] + 1;
              if (v35 >= [v4 position] && (v36 = objc_msgSend(v4, "position") + 1, v36 <= objc_msgSend(v4, "length")))
              {
                v37 = [v4 data];
                [v37 getBytes:&v57 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v34 |= (v57 & 0x7F) << v32;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v13 = v33++ >= 9;
              if (v13)
              {
                v24 = 0;
                goto LABEL_75;
              }
            }

            if ([v4 hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v34;
            }

LABEL_75:
            v48 = 32;
            break;
          case 2:
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v5->_hasIntendedRequestCount = 1;
            while (1)
            {
              LOBYTE(v57) = 0;
              v45 = [v4 position] + 1;
              if (v45 >= [v4 position] && (v46 = objc_msgSend(v4, "position") + 1, v46 <= objc_msgSend(v4, "length")))
              {
                v47 = [v4 data];
                [v47 getBytes:&v57 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v44 |= (v57 & 0x7F) << v42;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              v13 = v43++ >= 9;
              if (v13)
              {
                v24 = 0;
                goto LABEL_87;
              }
            }

            if ([v4 hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v44;
            }

LABEL_87:
            v48 = 36;
            break;
          case 3:
            v18 = 0;
            v19 = 0;
            v20 = 0;
            v5->_hasUnintendedRequestCount = 1;
            while (1)
            {
              LOBYTE(v57) = 0;
              v21 = [v4 position] + 1;
              if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
              {
                v23 = [v4 data];
                [v23 getBytes:&v57 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v20 |= (v57 & 0x7F) << v18;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              v13 = v19++ >= 9;
              if (v13)
              {
                v24 = 0;
                goto LABEL_83;
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

LABEL_83:
            v48 = 40;
            break;
          default:
            goto LABEL_57;
        }

        *(&v5->super.super.isa + v48) = v24;
      }

      else if (v15 > 5)
      {
        if (v15 == 6)
        {
          v40 = PBReaderReadString();
          modelVersion = v5->_modelVersion;
          v5->_modelVersion = v40;
        }

        else
        {
          if (v15 != 7)
          {
LABEL_57:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_96;
            }

            goto LABEL_94;
          }

          v25 = 0;
          v26 = 0;
          v27 = 0;
          while (1)
          {
            LOBYTE(v57) = 0;
            v28 = [v4 position] + 1;
            if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
            {
              v30 = [v4 data];
              [v30 getBytes:&v57 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v27 |= (v57 & 0x7F) << v25;
            if ((v57 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            if (v26++ > 8)
            {
              goto LABEL_78;
            }
          }

          if (([v4 hasError] & 1) != 0 || v27 > 3)
          {
LABEL_78:
            LODWORD(v27) = 0;
          }

          v5->_triggeredMechanism = v27;
        }
      }

      else
      {
        if (v15 == 4)
        {
          v5->_hasIntendedRequestRatio = 1;
          v57 = 0;
          v38 = [v4 position] + 8;
          if (v38 >= [v4 position] && (v39 = objc_msgSend(v4, "position") + 8, v39 <= objc_msgSend(v4, "length")))
          {
            v49 = [v4 data];
            [v49 getBytes:&v57 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v50 = v57;
          v51 = 48;
        }

        else
        {
          if (v15 != 5)
          {
            goto LABEL_57;
          }

          v5->_hasTriggeredMechanismRequestRatio = 1;
          v57 = 0;
          v16 = [v4 position] + 8;
          if (v16 >= [v4 position] && (v17 = objc_msgSend(v4, "position") + 8, v17 <= objc_msgSend(v4, "length")))
          {
            v52 = [v4 data];
            [v52 getBytes:&v57 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v50 = v57;
          v51 = 56;
        }

        *(&v5->super.super.isa + v51) = v50;
      }

LABEL_94:
      v53 = [v4 position];
    }

    while (v53 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_96:
    v54 = 0;
  }

  else
  {
LABEL_97:
    v54 = v5;
  }

  return v54;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStatsTriggeredMechanismAsString([(BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats *)self triggeredMechanism]);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats requestCount](self, "requestCount")}];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats intendedRequestCount](self, "intendedRequestCount")}];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats unintendedRequestCount](self, "unintendedRequestCount")}];
  v8 = MEMORY[0x1E696AD98];
  [(BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats *)self intendedRequestRatio];
  v9 = [v8 numberWithDouble:?];
  v10 = MEMORY[0x1E696AD98];
  [(BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats *)self triggeredMechanismRequestRatio];
  v11 = [v10 numberWithDouble:?];
  v12 = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats *)self modelVersion];
  v13 = [v3 initWithFormat:@"BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats with triggeredMechanism: %@, requestCount: %@, intendedRequestCount: %@, unintendedRequestCount: %@, intendedRequestRatio: %@, triggeredMechanismRequestRatio: %@, modelVersion: %@", v4, v5, v6, v7, v9, v11, v12];

  return v13;
}

- (BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats)initWithTriggeredMechanism:(int)a3 requestCount:(id)a4 intendedRequestCount:(id)a5 unintendedRequestCount:(id)a6 intendedRequestRatio:(id)a7 triggeredMechanismRequestRatio:(id)a8 modelVersion:(id)a9
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v28.receiver = self;
  v28.super_class = BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats;
  v21 = [(BMEventBase *)&v28 init];
  if (v21)
  {
    v21->_dataVersion = [objc_opt_class() latestDataVersion];
    v21->_triggeredMechanism = a3;
    if (v15)
    {
      v21->_hasRequestCount = 1;
      v22 = [v15 intValue];
    }

    else
    {
      v21->_hasRequestCount = 0;
      v22 = -1;
    }

    v21->_requestCount = v22;
    if (v16)
    {
      v21->_hasIntendedRequestCount = 1;
      v23 = [v16 intValue];
    }

    else
    {
      v21->_hasIntendedRequestCount = 0;
      v23 = -1;
    }

    v21->_intendedRequestCount = v23;
    if (v17)
    {
      v21->_hasUnintendedRequestCount = 1;
      v24 = [v17 intValue];
    }

    else
    {
      v21->_hasUnintendedRequestCount = 0;
      v24 = -1;
    }

    v21->_unintendedRequestCount = v24;
    if (v18)
    {
      v21->_hasIntendedRequestRatio = 1;
      [v18 doubleValue];
    }

    else
    {
      v21->_hasIntendedRequestRatio = 0;
      v25 = -1.0;
    }

    v21->_intendedRequestRatio = v25;
    if (v19)
    {
      v21->_hasTriggeredMechanismRequestRatio = 1;
      [v19 doubleValue];
    }

    else
    {
      v21->_hasTriggeredMechanismRequestRatio = 0;
      v26 = -1.0;
    }

    v21->_triggeredMechanismRequestRatio = v26;
    objc_storeStrong(&v21->_modelVersion, a9);
  }

  return v21;
}

+ (id)protoFields
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"triggeredMechanism" number:7 type:4 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"requestCount" number:1 type:2 subMessageClass:{0, v2}];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"intendedRequestCount" number:2 type:2 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"unintendedRequestCount" number:3 type:2 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"intendedRequestRatio" number:4 type:0 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"triggeredMechanismRequestRatio" number:5 type:0 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"modelVersion" number:6 type:13 subMessageClass:0];
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)columns
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"triggeredMechanism" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"requestCount" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:2 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"intendedRequestCount" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:2 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"unintendedRequestCount" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:2 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"intendedRequestRatio" dataType:1 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"triggeredMechanismRequestRatio" dataType:1 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"modelVersion" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v12[0] = v3;
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v12[6] = v2;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
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

    v8 = [[BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[6] = 0;
    }
  }

  return v4;
}

@end