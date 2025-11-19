@interface BMSiriUserEngagementStatistics
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriUserEngagementStatistics)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSiriUserEngagementStatistics)initWithUserEngagementStatsMetadata:(id)a3 dailyAggregatedStats:(id)a4 accumulatedAggregationStats:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_accumulatedAggregationStatsJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriUserEngagementStatistics

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSiriUserEngagementStatistics *)self userEngagementStatsMetadata];
    v7 = [v5 userEngagementStatsMetadata];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSiriUserEngagementStatistics *)self userEngagementStatsMetadata];
      v10 = [v5 userEngagementStatsMetadata];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v13 = [(BMSiriUserEngagementStatistics *)self dailyAggregatedStats];
    v14 = [v5 dailyAggregatedStats];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMSiriUserEngagementStatistics *)self dailyAggregatedStats];
      v17 = [v5 dailyAggregatedStats];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    v19 = [(BMSiriUserEngagementStatistics *)self accumulatedAggregationStats];
    v20 = [v5 accumulatedAggregationStats];
    if (v19 == v20)
    {
      v12 = 1;
    }

    else
    {
      v21 = [(BMSiriUserEngagementStatistics *)self accumulatedAggregationStats];
      v22 = [v5 accumulatedAggregationStats];
      v12 = [v21 isEqual:v22];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (id)jsonDictionary
{
  v15[3] = *MEMORY[0x1E69E9840];
  v3 = [(BMSiriUserEngagementStatistics *)self userEngagementStatsMetadata];
  v4 = [v3 jsonDictionary];

  v5 = [(BMSiriUserEngagementStatistics *)self dailyAggregatedStats];
  v6 = [v5 jsonDictionary];

  v7 = [(BMSiriUserEngagementStatistics *)self _accumulatedAggregationStatsJSONArray];
  v14[0] = @"userEngagementStatsMetadata";
  v8 = v4;
  if (!v4)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = v8;
  v14[1] = @"dailyAggregatedStats";
  v9 = v6;
  if (!v6)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v9;
  v14[2] = @"accumulatedAggregationStats";
  v10 = v7;
  if (!v7)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  if (v7)
  {
    if (v6)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (v4)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (v4)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_accumulatedAggregationStatsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMSiriUserEngagementStatistics *)self accumulatedAggregationStats];
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

- (BMSiriUserEngagementStatistics)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v74[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"userEngagementStatsMetadata"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = a4;
        v31 = *MEMORY[0x1E698F240];
        v73 = *MEMORY[0x1E696A578];
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"userEngagementStatsMetadata"];
        v74[0] = v8;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:&v73 count:1];
        v27 = 0;
        *v30 = [v29 initWithDomain:v31 code:2 userInfo:v9];
        goto LABEL_50;
      }

      v27 = 0;
      goto LABEL_51;
    }

    v9 = v7;
    v63 = 0;
    v8 = [[BMSiriUserEngagementStatisticsUserEngagementStatsMetadata alloc] initWithJSONDictionary:v9 error:&v63];
    v14 = v63;
    if (v14)
    {
      if (a4)
      {
        v14 = v14;
        *a4 = v14;
      }

LABEL_37:
      v27 = 0;
      goto LABEL_50;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 objectForKeyedSubscript:@"dailyAggregatedStats"];
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a4)
    {
      v32 = objc_alloc(MEMORY[0x1E696ABC0]);
      v50 = a4;
      v33 = *MEMORY[0x1E698F240];
      v71 = *MEMORY[0x1E696A578];
      v72 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"dailyAggregatedStats"];
      v10 = v72;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
      v27 = 0;
      *v50 = [v32 initWithDomain:v33 code:2 userInfo:v11];
      goto LABEL_49;
    }

    goto LABEL_37;
  }

  v11 = v9;
  v62 = 0;
  v10 = [[BMSiriUserEngagementStatisticsAccumulatedAggregationStats alloc] initWithJSONDictionary:v11 error:&v62];
  v28 = v62;
  if (v28)
  {
    if (a4)
    {
      v28 = v28;
      *a4 = v28;
    }

    goto LABEL_54;
  }

LABEL_7:
  v11 = [v6 objectForKeyedSubscript:@"accumulatedAggregationStats"];
  v12 = [MEMORY[0x1E695DFB0] null];
  v13 = [v11 isEqual:v12];

  v56 = v7;
  if (!v13)
  {
    if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v53 = v10;
      v54 = self;
      v49 = a4;
      v51 = v8;
      v52 = v6;
      goto LABEL_17;
    }

    if (a4)
    {
      v55 = objc_alloc(MEMORY[0x1E696ABC0]);
      v44 = *MEMORY[0x1E698F240];
      v69 = *MEMORY[0x1E696A578];
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"accumulatedAggregationStats"];
      v70 = v15;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      v45 = v10;
      v47 = v46 = a4;
      *v46 = [v55 initWithDomain:v44 code:2 userInfo:v47];
      v10 = v45;

      v27 = 0;
      goto LABEL_48;
    }

LABEL_54:
    v27 = 0;
    goto LABEL_49;
  }

  v53 = v10;
  v54 = self;
  v49 = a4;
  v51 = v8;
  v52 = v6;

  v11 = 0;
LABEL_17:
  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v11 = v11;
  v16 = [v11 countByEnumeratingWithState:&v58 objects:v68 count:16];
  v17 = 0x1E695D000uLL;
  if (!v16)
  {
    goto LABEL_27;
  }

  v18 = v16;
  v19 = *v59;
  v48 = v9;
  while (2)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v59 != v19)
      {
        objc_enumerationMutation(v11);
      }

      v21 = *(*(&v58 + 1) + 8 * i);
      v22 = *(v17 + 4016);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v51;
        v6 = v52;
        v34 = v49;
        if (v49)
        {
          v35 = objc_alloc(MEMORY[0x1E696ABC0]);
          v36 = *MEMORY[0x1E698F240];
          v66 = *MEMORY[0x1E696A578];
          v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"accumulatedAggregationStats"];
          v67 = v23;
          v37 = MEMORY[0x1E695DF20];
          v38 = &v67;
          v39 = &v66;
LABEL_42:
          v40 = [v37 dictionaryWithObjects:v38 forKeys:v39 count:1];
          *v34 = [v35 initWithDomain:v36 code:2 userInfo:v40];
LABEL_46:
        }

LABEL_47:

        v27 = 0;
        v10 = v53;
        self = v54;
        v9 = v48;
        goto LABEL_48;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = v51;
        v6 = v52;
        v34 = v49;
        if (v49)
        {
          v35 = objc_alloc(MEMORY[0x1E696ABC0]);
          v36 = *MEMORY[0x1E698F240];
          v64 = *MEMORY[0x1E696A578];
          v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"accumulatedAggregationStats"];
          v65 = v23;
          v37 = MEMORY[0x1E695DF20];
          v38 = &v65;
          v39 = &v64;
          goto LABEL_42;
        }

        goto LABEL_47;
      }

      v23 = v21;
      v24 = [BMSiriUserEngagementStatisticsAccumulatedAggregationStats alloc];
      v57 = 0;
      v25 = [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)v24 initWithJSONDictionary:v23 error:&v57];
      v26 = v57;
      if (v26)
      {
        v40 = v26;
        if (v49)
        {
          v41 = v26;
          *v49 = v40;
        }

        v8 = v51;
        v6 = v52;
        goto LABEL_46;
      }

      [v15 addObject:v25];

      v17 = 0x1E695D000;
    }

    v18 = [v11 countByEnumeratingWithState:&v58 objects:v68 count:16];
    v9 = v48;
    if (v18)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v10 = v53;
  v8 = v51;
  self = [(BMSiriUserEngagementStatistics *)v54 initWithUserEngagementStatsMetadata:v51 dailyAggregatedStats:v53 accumulatedAggregationStats:v15];
  v27 = self;
  v6 = v52;
LABEL_48:

  v7 = v56;
LABEL_49:

LABEL_50:
LABEL_51:

  v42 = *MEMORY[0x1E69E9840];
  return v27;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriUserEngagementStatistics *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_userEngagementStatsMetadata)
  {
    v16 = 0;
    PBDataWriterPlaceMark();
    [(BMSiriUserEngagementStatisticsUserEngagementStatsMetadata *)self->_userEngagementStatsMetadata writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_dailyAggregatedStats)
  {
    v16 = 0;
    PBDataWriterPlaceMark();
    [(BMSiriUserEngagementStatisticsAccumulatedAggregationStats *)self->_dailyAggregatedStats writeTo:v4];
    PBDataWriterRecallMark();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_accumulatedAggregationStats;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v16 = 0;
        PBDataWriterPlaceMark();
        [v10 writeTo:{v4, v12}];
        PBDataWriterRecallMark();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = BMSiriUserEngagementStatistics;
  v5 = [(BMEventBase *)&v28 init];
  if (!v5)
  {
    goto LABEL_34;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_33;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v29) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:&v29 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v29 & 0x7F) << v8;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        if (v9++ >= 9)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [v4 hasError] ? 0 : v10;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_33;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) == 1)
      {
        break;
      }

      if (v16 == 2)
      {
        v29 = 0;
        v30 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_35;
        }

        v19 = [[BMSiriUserEngagementStatisticsAccumulatedAggregationStats alloc] initByReadFrom:v4];
        if (!v19)
        {
          goto LABEL_35;
        }

        v20 = v19;
        [v6 addObject:v19];
        PBReaderRecallMark();
      }

      else
      {
        if (v16 == 3)
        {
          v29 = 0;
          v30 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_35;
          }

          v17 = [[BMSiriUserEngagementStatisticsUserEngagementStatsMetadata alloc] initByReadFrom:v4];
          if (!v17)
          {
            goto LABEL_35;
          }

          v18 = 24;
LABEL_30:
          v21 = *(&v5->super.super.isa + v18);
          *(&v5->super.super.isa + v18) = v17;

          PBReaderRecallMark();
          goto LABEL_32;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_35;
        }
      }

LABEL_32:
      v22 = [v4 position];
      if (v22 >= [v4 length])
      {
        goto LABEL_33;
      }
    }

    v29 = 0;
    v30 = 0;
    if (!PBReaderPlaceMark() || (v17 = [[BMSiriUserEngagementStatisticsAccumulatedAggregationStats alloc] initByReadFrom:v4]) == 0)
    {
LABEL_35:

      goto LABEL_36;
    }

    v18 = 32;
    goto LABEL_30;
  }

LABEL_33:
  v23 = [v6 copy];
  accumulatedAggregationStats = v5->_accumulatedAggregationStats;
  v5->_accumulatedAggregationStats = v23;

  v25 = [v4 hasError];
  if (v25)
  {
LABEL_36:
    v26 = 0;
  }

  else
  {
LABEL_34:
    v26 = v5;
  }

  return v26;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMSiriUserEngagementStatistics *)self userEngagementStatsMetadata];
  v5 = [(BMSiriUserEngagementStatistics *)self dailyAggregatedStats];
  v6 = [(BMSiriUserEngagementStatistics *)self accumulatedAggregationStats];
  v7 = [v3 initWithFormat:@"BMSiriUserEngagementStatistics with userEngagementStatsMetadata: %@, dailyAggregatedStats: %@, accumulatedAggregationStats: %@", v4, v5, v6];

  return v7;
}

- (BMSiriUserEngagementStatistics)initWithUserEngagementStatsMetadata:(id)a3 dailyAggregatedStats:(id)a4 accumulatedAggregationStats:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v14.receiver = self;
  v14.super_class = BMSiriUserEngagementStatistics;
  v12 = [(BMEventBase *)&v14 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_userEngagementStatsMetadata, a3);
    objc_storeStrong(&v12->_dailyAggregatedStats, a4);
    objc_storeStrong(&v12->_accumulatedAggregationStats, a5);
  }

  return v12;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userEngagementStatsMetadata" number:3 type:14 subMessageClass:objc_opt_class()];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dailyAggregatedStats" number:1 type:14 subMessageClass:{objc_opt_class(), v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"accumulatedAggregationStats" number:2 type:14 subMessageClass:objc_opt_class()];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"userEngagementStatsMetadata_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_381];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"dailyAggregatedStats_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_383];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"accumulatedAggregationStats_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_385];
  v8[0] = v3;
  v8[1] = v4;
  v8[2] = v2;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __41__BMSiriUserEngagementStatistics_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _accumulatedAggregationStatsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __41__BMSiriUserEngagementStatistics_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 dailyAggregatedStats];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __41__BMSiriUserEngagementStatistics_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 userEngagementStatsMetadata];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
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

    v8 = [[BMSiriUserEngagementStatistics alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end