@interface BMSiriUserEngagementStatisticsAccumulatedAggregationStats
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriUserEngagementStatisticsAccumulatedAggregationStats)initWithAggregationStartTimestamp:(id)timestamp numberOfDaysAggregation:(id)aggregation aggregationStats:(id)stats cohortType:(id)type intendedRequestRatio:(id)ratio uesScore:(id)score mitigationAssetVersion:(id)version sdsdRetryCount:(id)self0;
- (BMSiriUserEngagementStatisticsAccumulatedAggregationStats)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_aggregationStatsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriUserEngagementStatisticsAccumulatedAggregationStats

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMSiriUserEngagementStatisticsAccumulatedAggregationStats hasAggregationStartTimestamp](self, "hasAggregationStartTimestamp") || [v5 hasAggregationStartTimestamp])
    {
      if (![(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self hasAggregationStartTimestamp])
      {
        goto LABEL_40;
      }

      if (![v5 hasAggregationStartTimestamp])
      {
        goto LABEL_40;
      }

      [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self aggregationStartTimestamp];
      v7 = v6;
      [v5 aggregationStartTimestamp];
      if (v7 != v8)
      {
        goto LABEL_40;
      }
    }

    if (-[BMSiriUserEngagementStatisticsAccumulatedAggregationStats hasNumberOfDaysAggregation](self, "hasNumberOfDaysAggregation") || [v5 hasNumberOfDaysAggregation])
    {
      if (![(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self hasNumberOfDaysAggregation])
      {
        goto LABEL_40;
      }

      if (![v5 hasNumberOfDaysAggregation])
      {
        goto LABEL_40;
      }

      numberOfDaysAggregation = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self numberOfDaysAggregation];
      if (numberOfDaysAggregation != [v5 numberOfDaysAggregation])
      {
        goto LABEL_40;
      }
    }

    aggregationStats = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self aggregationStats];
    aggregationStats2 = [v5 aggregationStats];
    v12 = aggregationStats2;
    if (aggregationStats == aggregationStats2)
    {
    }

    else
    {
      aggregationStats3 = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self aggregationStats];
      aggregationStats4 = [v5 aggregationStats];
      v15 = [aggregationStats3 isEqual:aggregationStats4];

      if (!v15)
      {
        goto LABEL_40;
      }
    }

    cohortType = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self cohortType];
    cohortType2 = [v5 cohortType];
    v19 = cohortType2;
    if (cohortType == cohortType2)
    {
    }

    else
    {
      cohortType3 = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self cohortType];
      cohortType4 = [v5 cohortType];
      v22 = [cohortType3 isEqual:cohortType4];

      if (!v22)
      {
        goto LABEL_40;
      }
    }

    if (-[BMSiriUserEngagementStatisticsAccumulatedAggregationStats hasIntendedRequestRatio](self, "hasIntendedRequestRatio") || [v5 hasIntendedRequestRatio])
    {
      if (![(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self hasIntendedRequestRatio])
      {
        goto LABEL_40;
      }

      if (![v5 hasIntendedRequestRatio])
      {
        goto LABEL_40;
      }

      [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self intendedRequestRatio];
      v24 = v23;
      [v5 intendedRequestRatio];
      if (v24 != v25)
      {
        goto LABEL_40;
      }
    }

    if (-[BMSiriUserEngagementStatisticsAccumulatedAggregationStats hasUesScore](self, "hasUesScore") || [v5 hasUesScore])
    {
      if (![(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self hasUesScore])
      {
        goto LABEL_40;
      }

      if (![v5 hasUesScore])
      {
        goto LABEL_40;
      }

      [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self uesScore];
      v27 = v26;
      [v5 uesScore];
      if (v27 != v28)
      {
        goto LABEL_40;
      }
    }

    mitigationAssetVersion = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self mitigationAssetVersion];
    mitigationAssetVersion2 = [v5 mitigationAssetVersion];
    v31 = mitigationAssetVersion2;
    if (mitigationAssetVersion == mitigationAssetVersion2)
    {
    }

    else
    {
      mitigationAssetVersion3 = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self mitigationAssetVersion];
      mitigationAssetVersion4 = [v5 mitigationAssetVersion];
      v34 = [mitigationAssetVersion3 isEqual:mitigationAssetVersion4];

      if (!v34)
      {
        goto LABEL_40;
      }
    }

    if (!-[BMSiriUserEngagementStatisticsAccumulatedAggregationStats hasSdsdRetryCount](self, "hasSdsdRetryCount") && ![v5 hasSdsdRetryCount])
    {
      v16 = 1;
      goto LABEL_41;
    }

    if (-[BMSiriUserEngagementStatisticsAccumulatedAggregationStats hasSdsdRetryCount](self, "hasSdsdRetryCount") && [v5 hasSdsdRetryCount])
    {
      sdsdRetryCount = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self sdsdRetryCount];
      v16 = sdsdRetryCount == [v5 sdsdRetryCount];
LABEL_41:

      goto LABEL_42;
    }

LABEL_40:
    v16 = 0;
    goto LABEL_41;
  }

  v16 = 0;
LABEL_42:

  return v16;
}

- (id)jsonDictionary
{
  v37[8] = *MEMORY[0x1E69E9840];
  if (![(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self hasAggregationStartTimestamp]|| ([(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self aggregationStartTimestamp], fabs(v3) == INFINITY))
  {
    v5 = 0;
  }

  else
  {
    [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self aggregationStartTimestamp];
    v4 = MEMORY[0x1E696AD98];
    [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self aggregationStartTimestamp];
    v5 = [v4 numberWithDouble:?];
  }

  if ([(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self hasNumberOfDaysAggregation])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriUserEngagementStatisticsAccumulatedAggregationStats numberOfDaysAggregation](self, "numberOfDaysAggregation")}];
  }

  else
  {
    v6 = 0;
  }

  _aggregationStatsJSONArray = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self _aggregationStatsJSONArray];
  cohortType = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self cohortType];
  if (![(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self hasIntendedRequestRatio]|| ([(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self intendedRequestRatio], fabs(v9) == INFINITY))
  {
    v11 = 0;
  }

  else
  {
    [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self intendedRequestRatio];
    v10 = MEMORY[0x1E696AD98];
    [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self intendedRequestRatio];
    v11 = [v10 numberWithDouble:?];
  }

  if (![(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self hasUesScore]|| ([(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self uesScore], fabs(v12) == INFINITY))
  {
    v14 = 0;
  }

  else
  {
    [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self uesScore];
    v13 = MEMORY[0x1E696AD98];
    [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self uesScore];
    v14 = [v13 numberWithDouble:?];
  }

  mitigationAssetVersion = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self mitigationAssetVersion];
  if ([(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self hasSdsdRetryCount])
  {
    v16 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriUserEngagementStatisticsAccumulatedAggregationStats sdsdRetryCount](self, "sdsdRetryCount")}];
  }

  else
  {
    v16 = 0;
  }

  v36[0] = @"aggregationStartTimestamp";
  null = v5;
  if (!v5)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v5;
  v31 = null;
  v37[0] = null;
  v36[1] = @"numberOfDaysAggregation";
  null2 = v6;
  if (!v6)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v6;
  v30 = null2;
  v37[1] = null2;
  v36[2] = @"aggregationStats";
  null3 = _aggregationStatsJSONArray;
  if (!_aggregationStatsJSONArray)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = _aggregationStatsJSONArray;
  v29 = null3;
  v37[2] = null3;
  v36[3] = @"cohortType";
  null4 = cohortType;
  if (!cohortType)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = cohortType;
  v37[3] = null4;
  v36[4] = @"intendedRequestRatio";
  null5 = v11;
  if (!v11)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v11;
  v37[4] = null5;
  v36[5] = @"uesScore";
  null6 = v14;
  if (!v14)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v37[5] = null6;
  v36[6] = @"mitigationAssetVersion";
  null7 = mitigationAssetVersion;
  if (!mitigationAssetVersion)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v37[6] = null7;
  v36[7] = @"sdsdRetryCount";
  null8 = v16;
  if (!v16)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v37[7] = null8;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:8];
  if (v16)
  {
    if (mitigationAssetVersion)
    {
      goto LABEL_37;
    }

LABEL_52:

    if (v14)
    {
      goto LABEL_38;
    }

    goto LABEL_53;
  }

  if (!mitigationAssetVersion)
  {
    goto LABEL_52;
  }

LABEL_37:
  if (v14)
  {
    goto LABEL_38;
  }

LABEL_53:

LABEL_38:
  if (!v22)
  {
  }

  if (!v32)
  {
  }

  if (!v33)
  {
  }

  if (!v34)
  {
  }

  if (!v35)
  {
  }

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

- (id)_aggregationStatsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  aggregationStats = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self aggregationStats];
  v5 = [aggregationStats countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(aggregationStats);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [aggregationStats countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMSiriUserEngagementStatisticsAccumulatedAggregationStats)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v121[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"aggregationStartTimestamp"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v24 = *MEMORY[0x1E698F240];
        v120 = *MEMORY[0x1E696A578];
        v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"aggregationStartTimestamp"];
        v121[0] = v25;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v121 forKeys:&v120 count:1];
        v26 = [v23 initWithDomain:v24 code:2 userInfo:v9];
        v7 = 0;
        selfCopy3 = 0;
        *error = v26;
        goto LABEL_75;
      }

      v7 = 0;
      selfCopy3 = 0;
      goto LABEL_76;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"numberOfDaysAggregation"];
  v92 = v8;
  if (v8 && (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v28 = v7;
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = *MEMORY[0x1E698F240];
        v118 = *MEMORY[0x1E696A578];
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numberOfDaysAggregation"];
        v119 = v10;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
        v32 = v29;
        v7 = v28;
        v95 = v31;
        v33 = [v32 initWithDomain:v30 code:2 userInfo:?];
        v25 = 0;
        selfCopy3 = 0;
        *error = v33;

        goto LABEL_74;
      }

      v25 = 0;
      selfCopy3 = 0;
      goto LABEL_75;
    }

    v91 = v9;
  }

  else
  {
    v91 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"aggregationStats"];
  null = [MEMORY[0x1E695DFB0] null];
  v12 = [v10 isEqual:null];

  v90 = v6;
  if (v12)
  {
    selfCopy2 = self;
    v89 = v7;

    v10 = 0;
  }

  else
  {
    if (v10)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          selfCopy3 = 0;
          v25 = v91;
          goto LABEL_74;
        }

        v43 = objc_alloc(MEMORY[0x1E696ABC0]);
        v44 = *MEMORY[0x1E698F240];
        v116 = *MEMORY[0x1E696A578];
        v94 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"aggregationStats"];
        v117 = v94;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
        v45 = [v43 initWithDomain:v44 code:2 userInfo:v22];
        selfCopy3 = 0;
        *error = v45;
LABEL_45:
        v25 = v91;
        goto LABEL_72;
      }
    }

    selfCopy2 = self;
    v89 = v7;
  }

  v94 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v10 = v10;
  v13 = [v10 countByEnumeratingWithState:&v97 objects:v115 count:16];
  if (!v13)
  {
    goto LABEL_22;
  }

  v14 = v13;
  v15 = *v98;
  v85 = dictionaryCopy;
  while (2)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v98 != v15)
      {
        objc_enumerationMutation(v10);
      }

      v17 = *(*(&v97 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy2 = error;
        if (error)
        {
          v35 = objc_alloc(MEMORY[0x1E696ABC0]);
          v36 = *MEMORY[0x1E698F240];
          v113 = *MEMORY[0x1E696A578];
          v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"aggregationStats"];
          v114 = v18;
          v37 = MEMORY[0x1E695DF20];
          v38 = &v114;
          v39 = &v113;
LABEL_37:
          v40 = [v37 dictionaryWithObjects:v38 forKeys:v39 count:1];
          v41 = [v35 initWithDomain:v36 code:2 userInfo:v40];
          selfCopy3 = 0;
          *errorCopy2 = v41;
LABEL_41:
          v22 = v10;
          dictionaryCopy = v85;
          self = selfCopy2;
          v7 = v89;
          v6 = v90;
          v25 = v91;
          goto LABEL_70;
        }

        goto LABEL_44;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        errorCopy2 = error;
        if (error)
        {
          v35 = objc_alloc(MEMORY[0x1E696ABC0]);
          v36 = *MEMORY[0x1E698F240];
          v111 = *MEMORY[0x1E696A578];
          v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"aggregationStats"];
          v112 = v18;
          v37 = MEMORY[0x1E695DF20];
          v38 = &v112;
          v39 = &v111;
          goto LABEL_37;
        }

LABEL_44:
        selfCopy3 = 0;
        v22 = v10;
        dictionaryCopy = v85;
        self = selfCopy2;
        v7 = v89;
        v6 = v90;
        goto LABEL_45;
      }

      v18 = v17;
      v19 = [BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats alloc];
      v96 = 0;
      v20 = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats *)v19 initWithJSONDictionary:v18 error:&v96];
      v21 = v96;
      if (v21)
      {
        v40 = v21;
        if (error)
        {
          v42 = v21;
          *error = v40;
        }

        selfCopy3 = 0;
        goto LABEL_41;
      }

      [v94 addObject:v20];
    }

    v14 = [v10 countByEnumeratingWithState:&v97 objects:v115 count:16];
    dictionaryCopy = v85;
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_22:

  v18 = [dictionaryCopy objectForKeyedSubscript:@"cohortType"];
  if (!v18)
  {
    v22 = 0;
    self = selfCopy2;
    goto LABEL_49;
  }

  objc_opt_class();
  self = selfCopy2;
  if (objc_opt_isKindOfClass())
  {
    v22 = 0;
    goto LABEL_49;
  }

  objc_opt_class();
  v7 = v89;
  if (objc_opt_isKindOfClass())
  {
    v22 = v18;
LABEL_49:
    v46 = [dictionaryCopy objectForKeyedSubscript:@"intendedRequestRatio"];
    v83 = v46;
    if (!v46)
    {
      v40 = 0;
      goto LABEL_55;
    }

    v47 = v46;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = 0;
LABEL_55:
      v48 = [dictionaryCopy objectForKeyedSubscript:@"uesScore"];
      v82 = v22;
      v78 = v48;
      if (!v48 || (v49 = v48, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v87 = 0;
LABEL_58:
        v50 = [dictionaryCopy objectForKeyedSubscript:@"mitigationAssetVersion"];
        v77 = v50;
        if (v50 && (v51 = v50, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v79 = v51;
            goto LABEL_61;
          }

          if (error)
          {
            v81 = objc_alloc(MEMORY[0x1E696ABC0]);
            v70 = *MEMORY[0x1E698F240];
            v103 = *MEMORY[0x1E696A578];
            v53 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"mitigationAssetVersion"];
            v104 = v53;
            v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
            v71 = [v81 initWithDomain:v70 code:2 userInfo:v52];
            v79 = 0;
            selfCopy3 = 0;
            *error = v71;
            v25 = v91;
            goto LABEL_65;
          }

          v79 = 0;
          selfCopy3 = 0;
          v25 = v91;
        }

        else
        {
          v79 = 0;
LABEL_61:
          v52 = [dictionaryCopy objectForKeyedSubscript:@"sdsdRetryCount"];
          if (!v52 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v53 = 0;
            v25 = v91;
            goto LABEL_64;
          }

          objc_opt_class();
          v25 = v91;
          if (objc_opt_isKindOfClass())
          {
            v53 = v52;
LABEL_64:
            self = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self initWithAggregationStartTimestamp:v89 numberOfDaysAggregation:v25 aggregationStats:v94 cohortType:v82 intendedRequestRatio:v40 uesScore:v87 mitigationAssetVersion:v79 sdsdRetryCount:v53];
            selfCopy3 = self;
          }

          else
          {
            if (error)
            {
              v76 = objc_alloc(MEMORY[0x1E696ABC0]);
              v75 = *MEMORY[0x1E698F240];
              v101 = *MEMORY[0x1E696A578];
              v72 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"sdsdRetryCount"];
              v102 = v72;
              v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
              *error = [v76 initWithDomain:v75 code:2 userInfo:v73];
            }

            v53 = 0;
            selfCopy3 = 0;
          }

LABEL_65:

          v22 = v82;
        }

        v54 = v77;
LABEL_67:

        v7 = v89;
LABEL_68:

LABEL_69:
LABEL_70:

        goto LABEL_71;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v87 = v49;
        goto LABEL_58;
      }

      if (error)
      {
        v88 = objc_alloc(MEMORY[0x1E696ABC0]);
        v67 = *MEMORY[0x1E698F240];
        v105 = *MEMORY[0x1E696A578];
        v79 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"uesScore"];
        v106 = v79;
        v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
        v68 = v67;
        v22 = v82;
        v69 = [v88 initWithDomain:v68 code:2 userInfo:v54];
        v87 = 0;
        selfCopy3 = 0;
        *error = v69;
        v25 = v91;
        goto LABEL_67;
      }

      v87 = 0;
      selfCopy3 = 0;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v40 = v47;
        goto LABEL_55;
      }

      if (!error)
      {
        v40 = 0;
        selfCopy3 = 0;
        v7 = v89;
        v25 = v91;
        goto LABEL_69;
      }

      v80 = objc_alloc(MEMORY[0x1E696ABC0]);
      v62 = *MEMORY[0x1E698F240];
      v107 = *MEMORY[0x1E696A578];
      v63 = v22;
      v64 = objc_alloc(MEMORY[0x1E696AEC0]);
      v74 = objc_opt_class();
      v65 = v64;
      v22 = v63;
      v87 = [v65 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v74, @"intendedRequestRatio"];
      v108 = v87;
      v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
      v66 = [v80 initWithDomain:v62 code:2 userInfo:?];
      v40 = 0;
      selfCopy3 = 0;
      *error = v66;
    }

    v7 = v89;
    v25 = v91;
    goto LABEL_68;
  }

  if (error)
  {
    v57 = objc_alloc(MEMORY[0x1E696ABC0]);
    v58 = *MEMORY[0x1E698F240];
    v109 = *MEMORY[0x1E696A578];
    v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"cohortType"];
    v110 = v40;
    v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
    v60 = v57;
    v7 = v89;
    v84 = v59;
    v61 = [v60 initWithDomain:v58 code:2 userInfo:?];
    v22 = 0;
    selfCopy3 = 0;
    *error = v61;
    v25 = v91;

    goto LABEL_70;
  }

  v22 = 0;
  selfCopy3 = 0;
  v25 = v91;
LABEL_71:

LABEL_72:
LABEL_74:

  v9 = v92;
LABEL_75:

LABEL_76:
  v55 = *MEMORY[0x1E69E9840];
  return selfCopy3;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v22 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_hasAggregationStartTimestamp)
  {
    aggregationStartTimestamp = self->_aggregationStartTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasNumberOfDaysAggregation)
  {
    numberOfDaysAggregation = self->_numberOfDaysAggregation;
    PBDataWriterWriteInt32Field();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_aggregationStats;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v12 writeTo:toCopy];
        PBDataWriterRecallMark();
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  if (self->_cohortType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasIntendedRequestRatio)
  {
    intendedRequestRatio = self->_intendedRequestRatio;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasUesScore)
  {
    uesScore = self->_uesScore;
    PBDataWriterWriteDoubleField();
  }

  if (self->_mitigationAssetVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasSdsdRetryCount)
  {
    sdsdRetryCount = self->_sdsdRetryCount;
    PBDataWriterWriteInt32Field();
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v53.receiver = self;
  v53.super_class = BMSiriUserEngagementStatisticsAccumulatedAggregationStats;
  v5 = [(BMEventBase *)&v53 init];
  if (!v5)
  {
    goto LABEL_83;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_81;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v54[0]) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v54 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v54[0] & 0x7F) << v8;
        if ((v54[0] & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_81;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) > 4)
      {
        break;
      }

      if (v16 > 2)
      {
        if (v16 == 3)
        {
          v38 = PBReaderReadString();
          v39 = 56;
LABEL_61:
          v40 = *(&v5->super.super.isa + v39);
          *(&v5->super.super.isa + v39) = v38;

          goto LABEL_80;
        }

        if (v16 == 4)
        {
          v5->_hasIntendedRequestRatio = 1;
          v54[0] = 0;
          v21 = [fromCopy position] + 8;
          if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 8, v22 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:v54 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v43 = v54[0];
          v44 = 64;
LABEL_79:
          *(&v5->super.super.isa + v44) = v43;
          goto LABEL_80;
        }

LABEL_62:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_85;
        }

        goto LABEL_80;
      }

      if (v16 == 1)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v5->_hasNumberOfDaysAggregation = 1;
        while (1)
        {
          LOBYTE(v54[0]) = 0;
          v33 = [fromCopy position] + 1;
          if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 1, v34 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:v54 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v32 |= (v54[0] & 0x7F) << v30;
          if ((v54[0] & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v14 = v31++ >= 9;
          if (v14)
          {
            v29 = 0;
            goto LABEL_67;
          }
        }

        if ([fromCopy hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v32;
        }

LABEL_67:
        v41 = 28;
LABEL_72:
        *(&v5->super.super.isa + v41) = v29;
        goto LABEL_80;
      }

      if (v16 != 2)
      {
        goto LABEL_62;
      }

      v54[0] = 0;
      v54[1] = 0;
      if (!PBReaderPlaceMark() || (v17 = [[BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats alloc] initByReadFrom:fromCopy]) == 0)
      {
LABEL_85:

        goto LABEL_82;
      }

      v18 = v17;
      [v6 addObject:v17];
      PBReaderRecallMark();

LABEL_80:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_81;
      }
    }

    if (v16 > 6)
    {
      if (v16 == 7)
      {
        v38 = PBReaderReadString();
        v39 = 80;
        goto LABEL_61;
      }

      if (v16 == 8)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v5->_hasSdsdRetryCount = 1;
        while (1)
        {
          LOBYTE(v54[0]) = 0;
          v26 = [fromCopy position] + 1;
          if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:v54 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v25 |= (v54[0] & 0x7F) << v23;
          if ((v54[0] & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v14 = v24++ >= 9;
          if (v14)
          {
            v29 = 0;
            goto LABEL_71;
          }
        }

        if ([fromCopy hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v25;
        }

LABEL_71:
        v41 = 32;
        goto LABEL_72;
      }
    }

    else
    {
      if (v16 == 5)
      {
        v5->_hasAggregationStartTimestamp = 1;
        v54[0] = 0;
        v36 = [fromCopy position] + 8;
        if (v36 >= [fromCopy position] && (v37 = objc_msgSend(fromCopy, "position") + 8, v37 <= objc_msgSend(fromCopy, "length")))
        {
          data5 = [fromCopy data];
          [data5 getBytes:v54 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v43 = v54[0];
        v44 = 40;
        goto LABEL_79;
      }

      if (v16 == 6)
      {
        v5->_hasUesScore = 1;
        v54[0] = 0;
        v19 = [fromCopy position] + 8;
        if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 8, v20 <= objc_msgSend(fromCopy, "length")))
        {
          data6 = [fromCopy data];
          [data6 getBytes:v54 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v43 = v54[0];
        v44 = 72;
        goto LABEL_79;
      }
    }

    goto LABEL_62;
  }

LABEL_81:
  v48 = [v6 copy];
  aggregationStats = v5->_aggregationStats;
  v5->_aggregationStats = v48;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_82:
    v51 = 0;
  }

  else
  {
LABEL_83:
    v51 = v5;
  }

  return v51;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = MEMORY[0x1E696AD98];
  [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self aggregationStartTimestamp];
  v5 = [v4 numberWithDouble:?];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriUserEngagementStatisticsAccumulatedAggregationStats numberOfDaysAggregation](self, "numberOfDaysAggregation")}];
  aggregationStats = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self aggregationStats];
  cohortType = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self cohortType];
  v9 = MEMORY[0x1E696AD98];
  [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self intendedRequestRatio];
  v10 = [v9 numberWithDouble:?];
  v11 = MEMORY[0x1E696AD98];
  [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self uesScore];
  v12 = [v11 numberWithDouble:?];
  mitigationAssetVersion = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self mitigationAssetVersion];
  v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriUserEngagementStatisticsAccumulatedAggregationStats sdsdRetryCount](self, "sdsdRetryCount")}];
  v15 = [v3 initWithFormat:@"BMSiriUserEngagementStatisticsAccumulatedAggregationStats with aggregationStartTimestamp: %@, numberOfDaysAggregation: %@, aggregationStats: %@, cohortType: %@, intendedRequestRatio: %@, uesScore: %@, mitigationAssetVersion: %@, sdsdRetryCount: %@", v5, v6, aggregationStats, cohortType, v10, v12, mitigationAssetVersion, v14];

  return v15;
}

- (BMSiriUserEngagementStatisticsAccumulatedAggregationStats)initWithAggregationStartTimestamp:(id)timestamp numberOfDaysAggregation:(id)aggregation aggregationStats:(id)stats cohortType:(id)type intendedRequestRatio:(id)ratio uesScore:(id)score mitigationAssetVersion:(id)version sdsdRetryCount:(id)self0
{
  timestampCopy = timestamp;
  aggregationCopy = aggregation;
  statsCopy = stats;
  typeCopy = type;
  ratioCopy = ratio;
  scoreCopy = score;
  versionCopy = version;
  countCopy = count;
  v31.receiver = self;
  v31.super_class = BMSiriUserEngagementStatisticsAccumulatedAggregationStats;
  v22 = [(BMEventBase *)&v31 init];
  if (v22)
  {
    v22->_dataVersion = [objc_opt_class() latestDataVersion];
    if (timestampCopy)
    {
      v22->_hasAggregationStartTimestamp = 1;
      [timestampCopy doubleValue];
    }

    else
    {
      v22->_hasAggregationStartTimestamp = 0;
      v23 = -1.0;
    }

    v22->_aggregationStartTimestamp = v23;
    if (aggregationCopy)
    {
      v22->_hasNumberOfDaysAggregation = 1;
      intValue = [aggregationCopy intValue];
    }

    else
    {
      v22->_hasNumberOfDaysAggregation = 0;
      intValue = -1;
    }

    v22->_numberOfDaysAggregation = intValue;
    objc_storeStrong(&v22->_aggregationStats, stats);
    objc_storeStrong(&v22->_cohortType, type);
    if (ratioCopy)
    {
      v22->_hasIntendedRequestRatio = 1;
      [ratioCopy doubleValue];
    }

    else
    {
      v22->_hasIntendedRequestRatio = 0;
      v25 = -1.0;
    }

    v22->_intendedRequestRatio = v25;
    if (scoreCopy)
    {
      v22->_hasUesScore = 1;
      [scoreCopy doubleValue];
    }

    else
    {
      v22->_hasUesScore = 0;
      v26 = -1.0;
    }

    v22->_uesScore = v26;
    objc_storeStrong(&v22->_mitigationAssetVersion, version);
    if (countCopy)
    {
      v22->_hasSdsdRetryCount = 1;
      intValue2 = [countCopy intValue];
    }

    else
    {
      v22->_hasSdsdRetryCount = 0;
      intValue2 = -1;
    }

    v22->_sdsdRetryCount = intValue2;
  }

  return v22;
}

+ (id)protoFields
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"aggregationStartTimestamp" number:5 type:0 subMessageClass:0];
  v13[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfDaysAggregation" number:1 type:2 subMessageClass:0];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"aggregationStats" number:2 type:14 subMessageClass:objc_opt_class()];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cohortType" number:3 type:13 subMessageClass:0];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"intendedRequestRatio" number:4 type:0 subMessageClass:0];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uesScore" number:6 type:0 subMessageClass:0];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mitigationAssetVersion" number:7 type:13 subMessageClass:0];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sdsdRetryCount" number:8 type:2 subMessageClass:0];
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)columns
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"aggregationStartTimestamp" dataType:1 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numberOfDaysAggregation" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:2 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"aggregationStats_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_296_83964];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cohortType" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"intendedRequestRatio" dataType:1 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uesScore" dataType:1 requestOnly:0 fieldNumber:6 protoDataType:0 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mitigationAssetVersion" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sdsdRetryCount" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:2 convertedType:0];
  v13[0] = v3;
  v13[1] = v4;
  v13[2] = v5;
  v13[3] = v6;
  v13[4] = v2;
  v13[5] = v7;
  v13[6] = v8;
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __68__BMSiriUserEngagementStatisticsAccumulatedAggregationStats_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _aggregationStatsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
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

    v8 = [[BMSiriUserEngagementStatisticsAccumulatedAggregationStats alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[6] = 0;
    }
  }

  return v4;
}

@end