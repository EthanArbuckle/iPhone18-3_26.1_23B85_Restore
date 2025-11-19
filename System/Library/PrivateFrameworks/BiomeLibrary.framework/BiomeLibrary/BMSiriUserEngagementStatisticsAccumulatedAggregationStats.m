@interface BMSiriUserEngagementStatisticsAccumulatedAggregationStats
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriUserEngagementStatisticsAccumulatedAggregationStats)initWithAggregationStartTimestamp:(id)a3 numberOfDaysAggregation:(id)a4 aggregationStats:(id)a5 cohortType:(id)a6 intendedRequestRatio:(id)a7 uesScore:(id)a8 mitigationAssetVersion:(id)a9 sdsdRetryCount:(id)a10;
- (BMSiriUserEngagementStatisticsAccumulatedAggregationStats)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_aggregationStatsJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriUserEngagementStatisticsAccumulatedAggregationStats

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

      v9 = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self numberOfDaysAggregation];
      if (v9 != [v5 numberOfDaysAggregation])
      {
        goto LABEL_40;
      }
    }

    v10 = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self aggregationStats];
    v11 = [v5 aggregationStats];
    v12 = v11;
    if (v10 == v11)
    {
    }

    else
    {
      v13 = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self aggregationStats];
      v14 = [v5 aggregationStats];
      v15 = [v13 isEqual:v14];

      if (!v15)
      {
        goto LABEL_40;
      }
    }

    v17 = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self cohortType];
    v18 = [v5 cohortType];
    v19 = v18;
    if (v17 == v18)
    {
    }

    else
    {
      v20 = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self cohortType];
      v21 = [v5 cohortType];
      v22 = [v20 isEqual:v21];

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

    v29 = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self mitigationAssetVersion];
    v30 = [v5 mitigationAssetVersion];
    v31 = v30;
    if (v29 == v30)
    {
    }

    else
    {
      v32 = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self mitigationAssetVersion];
      v33 = [v5 mitigationAssetVersion];
      v34 = [v32 isEqual:v33];

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
      v35 = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self sdsdRetryCount];
      v16 = v35 == [v5 sdsdRetryCount];
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

  v7 = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self _aggregationStatsJSONArray];
  v8 = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self cohortType];
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

  v15 = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self mitigationAssetVersion];
  if ([(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self hasSdsdRetryCount])
  {
    v16 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriUserEngagementStatisticsAccumulatedAggregationStats sdsdRetryCount](self, "sdsdRetryCount")}];
  }

  else
  {
    v16 = 0;
  }

  v36[0] = @"aggregationStartTimestamp";
  v17 = v5;
  if (!v5)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v5;
  v31 = v17;
  v37[0] = v17;
  v36[1] = @"numberOfDaysAggregation";
  v18 = v6;
  if (!v6)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v6;
  v30 = v18;
  v37[1] = v18;
  v36[2] = @"aggregationStats";
  v19 = v7;
  if (!v7)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v7;
  v29 = v19;
  v37[2] = v19;
  v36[3] = @"cohortType";
  v20 = v8;
  if (!v8)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v8;
  v37[3] = v20;
  v36[4] = @"intendedRequestRatio";
  v21 = v11;
  if (!v11)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v11;
  v37[4] = v21;
  v36[5] = @"uesScore";
  v23 = v14;
  if (!v14)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v37[5] = v23;
  v36[6] = @"mitigationAssetVersion";
  v24 = v15;
  if (!v15)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v37[6] = v24;
  v36[7] = @"sdsdRetryCount";
  v25 = v16;
  if (!v16)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v37[7] = v25;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:8];
  if (v16)
  {
    if (v15)
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

  if (!v15)
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
  v4 = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self aggregationStats];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMSiriUserEngagementStatisticsAccumulatedAggregationStats)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v121[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"aggregationStartTimestamp"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v24 = *MEMORY[0x1E698F240];
        v120 = *MEMORY[0x1E696A578];
        v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"aggregationStartTimestamp"];
        v121[0] = v25;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v121 forKeys:&v120 count:1];
        v26 = [v23 initWithDomain:v24 code:2 userInfo:v9];
        v7 = 0;
        v27 = 0;
        *a4 = v26;
        goto LABEL_75;
      }

      v7 = 0;
      v27 = 0;
      goto LABEL_76;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 objectForKeyedSubscript:@"numberOfDaysAggregation"];
  v92 = v8;
  if (v8 && (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
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
        v27 = 0;
        *a4 = v33;

        goto LABEL_74;
      }

      v25 = 0;
      v27 = 0;
      goto LABEL_75;
    }

    v91 = v9;
  }

  else
  {
    v91 = 0;
  }

  v10 = [v5 objectForKeyedSubscript:@"aggregationStats"];
  v11 = [MEMORY[0x1E695DFB0] null];
  v12 = [v10 isEqual:v11];

  v90 = v6;
  if (v12)
  {
    v86 = self;
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
        if (!a4)
        {
          v27 = 0;
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
        v27 = 0;
        *a4 = v45;
LABEL_45:
        v25 = v91;
        goto LABEL_72;
      }
    }

    v86 = self;
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
  v85 = v5;
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
        v34 = a4;
        if (a4)
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
          v27 = 0;
          *v34 = v41;
LABEL_41:
          v22 = v10;
          v5 = v85;
          self = v86;
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
        v34 = a4;
        if (a4)
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
        v27 = 0;
        v22 = v10;
        v5 = v85;
        self = v86;
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
        if (a4)
        {
          v42 = v21;
          *a4 = v40;
        }

        v27 = 0;
        goto LABEL_41;
      }

      [v94 addObject:v20];
    }

    v14 = [v10 countByEnumeratingWithState:&v97 objects:v115 count:16];
    v5 = v85;
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_22:

  v18 = [v5 objectForKeyedSubscript:@"cohortType"];
  if (!v18)
  {
    v22 = 0;
    self = v86;
    goto LABEL_49;
  }

  objc_opt_class();
  self = v86;
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
    v46 = [v5 objectForKeyedSubscript:@"intendedRequestRatio"];
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
      v48 = [v5 objectForKeyedSubscript:@"uesScore"];
      v82 = v22;
      v78 = v48;
      if (!v48 || (v49 = v48, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v87 = 0;
LABEL_58:
        v50 = [v5 objectForKeyedSubscript:@"mitigationAssetVersion"];
        v77 = v50;
        if (v50 && (v51 = v50, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v79 = v51;
            goto LABEL_61;
          }

          if (a4)
          {
            v81 = objc_alloc(MEMORY[0x1E696ABC0]);
            v70 = *MEMORY[0x1E698F240];
            v103 = *MEMORY[0x1E696A578];
            v53 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"mitigationAssetVersion"];
            v104 = v53;
            v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
            v71 = [v81 initWithDomain:v70 code:2 userInfo:v52];
            v79 = 0;
            v27 = 0;
            *a4 = v71;
            v25 = v91;
            goto LABEL_65;
          }

          v79 = 0;
          v27 = 0;
          v25 = v91;
        }

        else
        {
          v79 = 0;
LABEL_61:
          v52 = [v5 objectForKeyedSubscript:@"sdsdRetryCount"];
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
            v27 = self;
          }

          else
          {
            if (a4)
            {
              v76 = objc_alloc(MEMORY[0x1E696ABC0]);
              v75 = *MEMORY[0x1E698F240];
              v101 = *MEMORY[0x1E696A578];
              v72 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"sdsdRetryCount"];
              v102 = v72;
              v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
              *a4 = [v76 initWithDomain:v75 code:2 userInfo:v73];
            }

            v53 = 0;
            v27 = 0;
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

      if (a4)
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
        v27 = 0;
        *a4 = v69;
        v25 = v91;
        goto LABEL_67;
      }

      v87 = 0;
      v27 = 0;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v40 = v47;
        goto LABEL_55;
      }

      if (!a4)
      {
        v40 = 0;
        v27 = 0;
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
      v27 = 0;
      *a4 = v66;
    }

    v7 = v89;
    v25 = v91;
    goto LABEL_68;
  }

  if (a4)
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
    v27 = 0;
    *a4 = v61;
    v25 = v91;

    goto LABEL_70;
  }

  v22 = 0;
  v27 = 0;
  v25 = v91;
LABEL_71:

LABEL_72:
LABEL_74:

  v9 = v92;
LABEL_75:

LABEL_76:
  v55 = *MEMORY[0x1E69E9840];
  return v27;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
        [v12 writeTo:v4];
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

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v53.receiver = self;
  v53.super_class = BMSiriUserEngagementStatisticsAccumulatedAggregationStats;
  v5 = [(BMEventBase *)&v53 init];
  if (!v5)
  {
    goto LABEL_83;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_81;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v54[0]) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:v54 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v15 = [v4 hasError] ? 0 : v10;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
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
          v21 = [v4 position] + 8;
          if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 8, v22 <= objc_msgSend(v4, "length")))
          {
            v46 = [v4 data];
            [v46 getBytes:v54 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
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
          v33 = [v4 position] + 1;
          if (v33 >= [v4 position] && (v34 = objc_msgSend(v4, "position") + 1, v34 <= objc_msgSend(v4, "length")))
          {
            v35 = [v4 data];
            [v35 getBytes:v54 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        if ([v4 hasError])
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
      if (!PBReaderPlaceMark() || (v17 = [[BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStats alloc] initByReadFrom:v4]) == 0)
      {
LABEL_85:

        goto LABEL_82;
      }

      v18 = v17;
      [v6 addObject:v17];
      PBReaderRecallMark();

LABEL_80:
      v47 = [v4 position];
      if (v47 >= [v4 length])
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
          v26 = [v4 position] + 1;
          if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 1, v27 <= objc_msgSend(v4, "length")))
          {
            v28 = [v4 data];
            [v28 getBytes:v54 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        if ([v4 hasError])
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
        v36 = [v4 position] + 8;
        if (v36 >= [v4 position] && (v37 = objc_msgSend(v4, "position") + 8, v37 <= objc_msgSend(v4, "length")))
        {
          v42 = [v4 data];
          [v42 getBytes:v54 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v43 = v54[0];
        v44 = 40;
        goto LABEL_79;
      }

      if (v16 == 6)
      {
        v5->_hasUesScore = 1;
        v54[0] = 0;
        v19 = [v4 position] + 8;
        if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 8, v20 <= objc_msgSend(v4, "length")))
        {
          v45 = [v4 data];
          [v45 getBytes:v54 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
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

  v50 = [v4 hasError];
  if (v50)
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
  v7 = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self aggregationStats];
  v8 = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self cohortType];
  v9 = MEMORY[0x1E696AD98];
  [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self intendedRequestRatio];
  v10 = [v9 numberWithDouble:?];
  v11 = MEMORY[0x1E696AD98];
  [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self uesScore];
  v12 = [v11 numberWithDouble:?];
  v13 = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self mitigationAssetVersion];
  v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriUserEngagementStatisticsAccumulatedAggregationStats sdsdRetryCount](self, "sdsdRetryCount")}];
  v15 = [v3 initWithFormat:@"BMSiriUserEngagementStatisticsAccumulatedAggregationStats with aggregationStartTimestamp: %@, numberOfDaysAggregation: %@, aggregationStats: %@, cohortType: %@, intendedRequestRatio: %@, uesScore: %@, mitigationAssetVersion: %@, sdsdRetryCount: %@", v5, v6, v7, v8, v10, v12, v13, v14];

  return v15;
}

- (BMSiriUserEngagementStatisticsAccumulatedAggregationStats)initWithAggregationStartTimestamp:(id)a3 numberOfDaysAggregation:(id)a4 aggregationStats:(id)a5 cohortType:(id)a6 intendedRequestRatio:(id)a7 uesScore:(id)a8 mitigationAssetVersion:(id)a9 sdsdRetryCount:(id)a10
{
  v16 = a3;
  v17 = a4;
  v30 = a5;
  v29 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v31.receiver = self;
  v31.super_class = BMSiriUserEngagementStatisticsAccumulatedAggregationStats;
  v22 = [(BMEventBase *)&v31 init];
  if (v22)
  {
    v22->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v16)
    {
      v22->_hasAggregationStartTimestamp = 1;
      [v16 doubleValue];
    }

    else
    {
      v22->_hasAggregationStartTimestamp = 0;
      v23 = -1.0;
    }

    v22->_aggregationStartTimestamp = v23;
    if (v17)
    {
      v22->_hasNumberOfDaysAggregation = 1;
      v24 = [v17 intValue];
    }

    else
    {
      v22->_hasNumberOfDaysAggregation = 0;
      v24 = -1;
    }

    v22->_numberOfDaysAggregation = v24;
    objc_storeStrong(&v22->_aggregationStats, a5);
    objc_storeStrong(&v22->_cohortType, a6);
    if (v18)
    {
      v22->_hasIntendedRequestRatio = 1;
      [v18 doubleValue];
    }

    else
    {
      v22->_hasIntendedRequestRatio = 0;
      v25 = -1.0;
    }

    v22->_intendedRequestRatio = v25;
    if (v19)
    {
      v22->_hasUesScore = 1;
      [v19 doubleValue];
    }

    else
    {
      v22->_hasUesScore = 0;
      v26 = -1.0;
    }

    v22->_uesScore = v26;
    objc_storeStrong(&v22->_mitigationAssetVersion, a9);
    if (v21)
    {
      v22->_hasSdsdRetryCount = 1;
      v27 = [v21 intValue];
    }

    else
    {
      v22->_hasSdsdRetryCount = 0;
      v27 = -1;
    }

    v22->_sdsdRetryCount = v27;
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