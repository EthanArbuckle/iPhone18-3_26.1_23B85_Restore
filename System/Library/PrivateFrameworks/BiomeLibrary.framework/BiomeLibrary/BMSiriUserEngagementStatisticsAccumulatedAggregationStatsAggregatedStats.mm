@interface BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats)initWithTriggeredMechanism:(int)mechanism requestCount:(id)count intendedRequestCount:(id)requestCount unintendedRequestCount:(id)unintendedRequestCount intendedRequestRatio:(id)ratio triggeredMechanismRequestRatio:(id)requestRatio modelVersion:(id)version;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    triggeredMechanism = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats *)self triggeredMechanism];
    if (triggeredMechanism != [v5 triggeredMechanism])
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

      requestCount = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats *)self requestCount];
      if (requestCount != [v5 requestCount])
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

      intendedRequestCount = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats *)self intendedRequestCount];
      if (intendedRequestCount != [v5 intendedRequestCount])
      {
        goto LABEL_31;
      }
    }

    if ((!-[BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats hasUnintendedRequestCount](self, "hasUnintendedRequestCount") && ![v5 hasUnintendedRequestCount] || -[BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats hasUnintendedRequestCount](self, "hasUnintendedRequestCount") && objc_msgSend(v5, "hasUnintendedRequestCount") && (v9 = -[BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats unintendedRequestCount](self, "unintendedRequestCount"), v9 == objc_msgSend(v5, "unintendedRequestCount"))) && (!-[BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats hasIntendedRequestRatio](self, "hasIntendedRequestRatio") && !objc_msgSend(v5, "hasIntendedRequestRatio") || -[BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats hasIntendedRequestRatio](self, "hasIntendedRequestRatio") && objc_msgSend(v5, "hasIntendedRequestRatio") && (-[BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats intendedRequestRatio](self, "intendedRequestRatio"), v11 = v10, objc_msgSend(v5, "intendedRequestRatio"), v11 == v12)) && (!-[BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats hasTriggeredMechanismRequestRatio](self, "hasTriggeredMechanismRequestRatio") && !objc_msgSend(v5, "hasTriggeredMechanismRequestRatio") || -[BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats hasTriggeredMechanismRequestRatio](self, "hasTriggeredMechanismRequestRatio") && objc_msgSend(v5, "hasTriggeredMechanismRequestRatio") && (-[BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats triggeredMechanismRequestRatio](self, "triggeredMechanismRequestRatio"), v14 = v13, objc_msgSend(v5, "triggeredMechanismRequestRatio"), v14 == v15)))
    {
      modelVersion = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats *)self modelVersion];
      modelVersion2 = [v5 modelVersion];
      if (modelVersion == modelVersion2)
      {
        v20 = 1;
      }

      else
      {
        modelVersion3 = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats *)self modelVersion];
        modelVersion4 = [v5 modelVersion];
        v20 = [modelVersion3 isEqual:modelVersion4];
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

  modelVersion = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats *)self modelVersion];
  v28[0] = @"triggeredMechanism";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v24 = null;
  v29[0] = null;
  v28[1] = @"requestCount";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v3;
  v23 = null2;
  v29[1] = null2;
  v28[2] = @"intendedRequestCount";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v4;
  v29[2] = null3;
  v28[3] = @"unintendedRequestCount";
  null4 = v27;
  if (!v27)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v29[3] = null4;
  v28[4] = @"intendedRequestRatio";
  null5 = v8;
  if (!v8)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v29[4] = null5;
  v28[5] = @"triggeredMechanismRequestRatio";
  null6 = v11;
  if (!v11)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v29[5] = null6;
  v28[6] = @"modelVersion";
  null7 = modelVersion;
  if (!modelVersion)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v29[6] = null7;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:7];
  if (modelVersion)
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

- (BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v86[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"triggeredMechanism"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_9:
    v10 = [dictionaryCopy objectForKeyedSubscript:@"requestCount"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v11 = 0;
          v21 = 0;
          goto LABEL_34;
        }

        errorCopy = error;
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E698F240];
        v83 = *MEMORY[0x1E696A578];
        v72 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"requestCount"];
        v84 = v72;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
        v29 = [v26 initWithDomain:v27 code:2 userInfo:v28];
        v11 = 0;
        v21 = 0;
        *errorCopy = v29;
        v12 = v28;
        goto LABEL_33;
      }

      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"intendedRequestCount"];
    v69 = v10;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v72 = 0;
          v21 = 0;
          goto LABEL_33;
        }

        errorCopy2 = error;
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
        *errorCopy2 = v35;
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

    v13 = [dictionaryCopy objectForKeyedSubscript:@"unintendedRequestCount"];
    v65 = v12;
    v66 = v7;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v22 = 0;
          v21 = 0;
          goto LABEL_32;
        }

        errorCopy3 = error;
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
        *errorCopy3 = v42;
        v12 = v65;
        goto LABEL_31;
      }

      v68 = v13;
    }

    else
    {
      v68 = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"intendedRequestRatio"];
    v67 = v8;
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v70 = 0;
          v21 = 0;
          goto LABEL_30;
        }

        selfCopy3 = self;
        errorCopy4 = error;
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
        *errorCopy4 = v49;
        goto LABEL_69;
      }

      errorCopy6 = error;
      v70 = v14;
    }

    else
    {
      errorCopy6 = error;
      v70 = 0;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"triggeredMechanismRequestRatio"];
    v64 = v11;
    if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      selfCopy3 = self;
      v18 = 0;
      goto LABEL_24;
    }

    objc_opt_class();
    selfCopy3 = self;
    if (objc_opt_isKindOfClass())
    {
      v18 = v16;
LABEL_24:
      v19 = [dictionaryCopy objectForKeyedSubscript:@"modelVersion"];
      if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (errorCopy6)
          {
            v63 = objc_alloc(MEMORY[0x1E696ABC0]);
            v62 = *MEMORY[0x1E698F240];
            v73 = *MEMORY[0x1E696A578];
            v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"modelVersion"];
            v74 = v57;
            v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
            *errorCopy6 = [v63 initWithDomain:v62 code:2 userInfo:v58];
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

      v21 = -[BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats initWithTriggeredMechanism:requestCount:intendedRequestCount:unintendedRequestCount:intendedRequestRatio:triggeredMechanismRequestRatio:modelVersion:](selfCopy3, "initWithTriggeredMechanism:requestCount:intendedRequestCount:unintendedRequestCount:intendedRequestRatio:triggeredMechanismRequestRatio:modelVersion:", [v67 intValue], v64, v72, v68, v70, v18, v20);
      selfCopy3 = v21;
LABEL_28:
      v12 = v65;

      v11 = v64;
LABEL_29:

      self = selfCopy3;
      v8 = v67;
LABEL_30:
      v22 = v68;
LABEL_31:

      v7 = v66;
      goto LABEL_32;
    }

    if (errorCopy6)
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
      *errorCopy6 = v56;
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

  if (!error)
  {
    v8 = 0;
    v21 = 0;
    goto LABEL_35;
  }

  errorCopy7 = error;
  v51 = objc_alloc(MEMORY[0x1E696ABC0]);
  v52 = *MEMORY[0x1E698F240];
  v85 = *MEMORY[0x1E696A578];
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"triggeredMechanism"];
  v86[0] = v11;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:&v85 count:1];
  v53 = [v51 initWithDomain:v52 code:2 userInfo:v10];
  v8 = 0;
  v21 = 0;
  *errorCopy7 = v53;
LABEL_34:

LABEL_35:
  v23 = *MEMORY[0x1E69E9840];
  return v21;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  triggeredMechanism = self->_triggeredMechanism;
  v12 = toCopy;
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

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v56.receiver = self;
  v56.super_class = BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats;
  v5 = [(BMEventBase *)&v56 init];
  if (!v5)
  {
    goto LABEL_97;
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
        LOBYTE(v57) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v57 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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
              v35 = [fromCopy position] + 1;
              if (v35 >= [fromCopy position] && (v36 = objc_msgSend(fromCopy, "position") + 1, v36 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v57 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
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

            if ([fromCopy hasError])
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
              v45 = [fromCopy position] + 1;
              if (v45 >= [fromCopy position] && (v46 = objc_msgSend(fromCopy, "position") + 1, v46 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v57 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
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

            if ([fromCopy hasError])
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
              v21 = [fromCopy position] + 1;
              if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
              {
                data4 = [fromCopy data];
                [data4 getBytes:&v57 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
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

            if ([fromCopy hasError])
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
            v28 = [fromCopy position] + 1;
            if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:&v57 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          if (([fromCopy hasError] & 1) != 0 || v27 > 3)
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
          v38 = [fromCopy position] + 8;
          if (v38 >= [fromCopy position] && (v39 = objc_msgSend(fromCopy, "position") + 8, v39 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v57 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
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
          v16 = [fromCopy position] + 8;
          if (v16 >= [fromCopy position] && (v17 = objc_msgSend(fromCopy, "position") + 8, v17 <= objc_msgSend(fromCopy, "length")))
          {
            data7 = [fromCopy data];
            [data7 getBytes:&v57 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v50 = v57;
          v51 = 56;
        }

        *(&v5->super.super.isa + v51) = v50;
      }

LABEL_94:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  modelVersion = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats *)self modelVersion];
  v13 = [v3 initWithFormat:@"BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats with triggeredMechanism: %@, requestCount: %@, intendedRequestCount: %@, unintendedRequestCount: %@, intendedRequestRatio: %@, triggeredMechanismRequestRatio: %@, modelVersion: %@", v4, v5, v6, v7, v9, v11, modelVersion];

  return v13;
}

- (BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats)initWithTriggeredMechanism:(int)mechanism requestCount:(id)count intendedRequestCount:(id)requestCount unintendedRequestCount:(id)unintendedRequestCount intendedRequestRatio:(id)ratio triggeredMechanismRequestRatio:(id)requestRatio modelVersion:(id)version
{
  countCopy = count;
  requestCountCopy = requestCount;
  unintendedRequestCountCopy = unintendedRequestCount;
  ratioCopy = ratio;
  requestRatioCopy = requestRatio;
  versionCopy = version;
  v28.receiver = self;
  v28.super_class = BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats;
  v21 = [(BMEventBase *)&v28 init];
  if (v21)
  {
    v21->_dataVersion = [objc_opt_class() latestDataVersion];
    v21->_triggeredMechanism = mechanism;
    if (countCopy)
    {
      v21->_hasRequestCount = 1;
      intValue = [countCopy intValue];
    }

    else
    {
      v21->_hasRequestCount = 0;
      intValue = -1;
    }

    v21->_requestCount = intValue;
    if (requestCountCopy)
    {
      v21->_hasIntendedRequestCount = 1;
      intValue2 = [requestCountCopy intValue];
    }

    else
    {
      v21->_hasIntendedRequestCount = 0;
      intValue2 = -1;
    }

    v21->_intendedRequestCount = intValue2;
    if (unintendedRequestCountCopy)
    {
      v21->_hasUnintendedRequestCount = 1;
      intValue3 = [unintendedRequestCountCopy intValue];
    }

    else
    {
      v21->_hasUnintendedRequestCount = 0;
      intValue3 = -1;
    }

    v21->_unintendedRequestCount = intValue3;
    if (ratioCopy)
    {
      v21->_hasIntendedRequestRatio = 1;
      [ratioCopy doubleValue];
    }

    else
    {
      v21->_hasIntendedRequestRatio = 0;
      v25 = -1.0;
    }

    v21->_intendedRequestRatio = v25;
    if (requestRatioCopy)
    {
      v21->_hasTriggeredMechanismRequestRatio = 1;
      [requestRatioCopy doubleValue];
    }

    else
    {
      v21->_hasTriggeredMechanismRequestRatio = 0;
      v26 = -1.0;
    }

    v21->_triggeredMechanismRequestRatio = v26;
    objc_storeStrong(&v21->_modelVersion, version);
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