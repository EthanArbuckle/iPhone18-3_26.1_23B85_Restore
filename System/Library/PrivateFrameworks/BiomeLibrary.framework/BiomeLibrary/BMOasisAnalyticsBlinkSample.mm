@interface BMOasisAnalyticsBlinkSample
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMOasisAnalyticsBlinkSample)initWithCount:(id)a3 medianDurationMs:(id)a4 blinkDurations:(id)a5 medianTimeIntervalMs:(id)a6 blinkIntervals:(id)a7 medianBlinkOnsetVelocity:(id)a8 medianBlinkOffsetVelocity:(id)a9 medianBlinkOpenness:(id)a10 medianEyelidOpenness:(id)a11;
- (BMOasisAnalyticsBlinkSample)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_blinkDurationsJSONArray;
- (id)_blinkIntervalsJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMOasisAnalyticsBlinkSample

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMOasisAnalyticsBlinkSample hasCount](self, "hasCount") || [v5 hasCount])
    {
      if (![(BMOasisAnalyticsBlinkSample *)self hasCount])
      {
        goto LABEL_46;
      }

      if (![v5 hasCount])
      {
        goto LABEL_46;
      }

      v6 = [(BMOasisAnalyticsBlinkSample *)self count];
      if (v6 != [v5 count])
      {
        goto LABEL_46;
      }
    }

    if (-[BMOasisAnalyticsBlinkSample hasMedianDurationMs](self, "hasMedianDurationMs") || [v5 hasMedianDurationMs])
    {
      if (![(BMOasisAnalyticsBlinkSample *)self hasMedianDurationMs])
      {
        goto LABEL_46;
      }

      if (![v5 hasMedianDurationMs])
      {
        goto LABEL_46;
      }

      [(BMOasisAnalyticsBlinkSample *)self medianDurationMs];
      v8 = v7;
      [v5 medianDurationMs];
      if (v8 != v9)
      {
        goto LABEL_46;
      }
    }

    v10 = [(BMOasisAnalyticsBlinkSample *)self blinkDurations];
    v11 = [v5 blinkDurations];
    v12 = v11;
    if (v10 == v11)
    {
    }

    else
    {
      v13 = [(BMOasisAnalyticsBlinkSample *)self blinkDurations];
      v14 = [v5 blinkDurations];
      v15 = [v13 isEqual:v14];

      if (!v15)
      {
        goto LABEL_46;
      }
    }

    if (-[BMOasisAnalyticsBlinkSample hasMedianTimeIntervalMs](self, "hasMedianTimeIntervalMs") || [v5 hasMedianTimeIntervalMs])
    {
      if (![(BMOasisAnalyticsBlinkSample *)self hasMedianTimeIntervalMs])
      {
        goto LABEL_46;
      }

      if (![v5 hasMedianTimeIntervalMs])
      {
        goto LABEL_46;
      }

      [(BMOasisAnalyticsBlinkSample *)self medianTimeIntervalMs];
      v18 = v17;
      [v5 medianTimeIntervalMs];
      if (v18 != v19)
      {
        goto LABEL_46;
      }
    }

    v20 = [(BMOasisAnalyticsBlinkSample *)self blinkIntervals];
    v21 = [v5 blinkIntervals];
    v22 = v21;
    if (v20 == v21)
    {
    }

    else
    {
      v23 = [(BMOasisAnalyticsBlinkSample *)self blinkIntervals];
      v24 = [v5 blinkIntervals];
      v25 = [v23 isEqual:v24];

      if (!v25)
      {
        goto LABEL_46;
      }
    }

    if (!-[BMOasisAnalyticsBlinkSample hasMedianBlinkOnsetVelocity](self, "hasMedianBlinkOnsetVelocity") && ![v5 hasMedianBlinkOnsetVelocity] || -[BMOasisAnalyticsBlinkSample hasMedianBlinkOnsetVelocity](self, "hasMedianBlinkOnsetVelocity") && objc_msgSend(v5, "hasMedianBlinkOnsetVelocity") && (-[BMOasisAnalyticsBlinkSample medianBlinkOnsetVelocity](self, "medianBlinkOnsetVelocity"), v27 = v26, objc_msgSend(v5, "medianBlinkOnsetVelocity"), v27 == v28))
    {
      if (!-[BMOasisAnalyticsBlinkSample hasMedianBlinkOffsetVelocity](self, "hasMedianBlinkOffsetVelocity") && ![v5 hasMedianBlinkOffsetVelocity] || -[BMOasisAnalyticsBlinkSample hasMedianBlinkOffsetVelocity](self, "hasMedianBlinkOffsetVelocity") && objc_msgSend(v5, "hasMedianBlinkOffsetVelocity") && (-[BMOasisAnalyticsBlinkSample medianBlinkOffsetVelocity](self, "medianBlinkOffsetVelocity"), v30 = v29, objc_msgSend(v5, "medianBlinkOffsetVelocity"), v30 == v31))
      {
        if (!-[BMOasisAnalyticsBlinkSample hasMedianBlinkOpenness](self, "hasMedianBlinkOpenness") && ![v5 hasMedianBlinkOpenness] || -[BMOasisAnalyticsBlinkSample hasMedianBlinkOpenness](self, "hasMedianBlinkOpenness") && objc_msgSend(v5, "hasMedianBlinkOpenness") && (-[BMOasisAnalyticsBlinkSample medianBlinkOpenness](self, "medianBlinkOpenness"), v33 = v32, objc_msgSend(v5, "medianBlinkOpenness"), v33 == v34))
        {
          if (!-[BMOasisAnalyticsBlinkSample hasMedianEyelidOpenness](self, "hasMedianEyelidOpenness") && ![v5 hasMedianEyelidOpenness])
          {
            v16 = 1;
            goto LABEL_47;
          }

          if (-[BMOasisAnalyticsBlinkSample hasMedianEyelidOpenness](self, "hasMedianEyelidOpenness") && [v5 hasMedianEyelidOpenness])
          {
            [(BMOasisAnalyticsBlinkSample *)self medianEyelidOpenness];
            v36 = v35;
            [v5 medianEyelidOpenness];
            v16 = v36 == v37;
LABEL_47:

            goto LABEL_48;
          }
        }
      }
    }

LABEL_46:
    v16 = 0;
    goto LABEL_47;
  }

  v16 = 0;
LABEL_48:

  return v16;
}

- (id)jsonDictionary
{
  v46[9] = *MEMORY[0x1E69E9840];
  if ([(BMOasisAnalyticsBlinkSample *)self hasCount])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMOasisAnalyticsBlinkSample count](self, "count")}];
  }

  else
  {
    v3 = 0;
  }

  if (![(BMOasisAnalyticsBlinkSample *)self hasMedianDurationMs]|| ([(BMOasisAnalyticsBlinkSample *)self medianDurationMs], fabsf(v4) == INFINITY))
  {
    v6 = 0;
  }

  else
  {
    [(BMOasisAnalyticsBlinkSample *)self medianDurationMs];
    v5 = MEMORY[0x1E696AD98];
    [(BMOasisAnalyticsBlinkSample *)self medianDurationMs];
    v6 = [v5 numberWithFloat:?];
  }

  v7 = [(BMOasisAnalyticsBlinkSample *)self _blinkDurationsJSONArray];
  if (![(BMOasisAnalyticsBlinkSample *)self hasMedianTimeIntervalMs]|| ([(BMOasisAnalyticsBlinkSample *)self medianTimeIntervalMs], fabsf(v8) == INFINITY))
  {
    v10 = 0;
  }

  else
  {
    [(BMOasisAnalyticsBlinkSample *)self medianTimeIntervalMs];
    v9 = MEMORY[0x1E696AD98];
    [(BMOasisAnalyticsBlinkSample *)self medianTimeIntervalMs];
    v10 = [v9 numberWithFloat:?];
  }

  v11 = [(BMOasisAnalyticsBlinkSample *)self _blinkIntervalsJSONArray];
  if (![(BMOasisAnalyticsBlinkSample *)self hasMedianBlinkOnsetVelocity]|| ([(BMOasisAnalyticsBlinkSample *)self medianBlinkOnsetVelocity], fabsf(v12) == INFINITY))
  {
    v14 = 0;
  }

  else
  {
    [(BMOasisAnalyticsBlinkSample *)self medianBlinkOnsetVelocity];
    v13 = MEMORY[0x1E696AD98];
    [(BMOasisAnalyticsBlinkSample *)self medianBlinkOnsetVelocity];
    v14 = [v13 numberWithFloat:?];
  }

  if (![(BMOasisAnalyticsBlinkSample *)self hasMedianBlinkOffsetVelocity]|| ([(BMOasisAnalyticsBlinkSample *)self medianBlinkOffsetVelocity], fabsf(v15) == INFINITY))
  {
    v44 = 0;
  }

  else
  {
    [(BMOasisAnalyticsBlinkSample *)self medianBlinkOffsetVelocity];
    v16 = MEMORY[0x1E696AD98];
    [(BMOasisAnalyticsBlinkSample *)self medianBlinkOffsetVelocity];
    v44 = [v16 numberWithFloat:?];
  }

  if (![(BMOasisAnalyticsBlinkSample *)self hasMedianBlinkOpenness]|| ([(BMOasisAnalyticsBlinkSample *)self medianBlinkOpenness], fabsf(v17) == INFINITY))
  {
    v19 = 0;
  }

  else
  {
    [(BMOasisAnalyticsBlinkSample *)self medianBlinkOpenness];
    v18 = MEMORY[0x1E696AD98];
    [(BMOasisAnalyticsBlinkSample *)self medianBlinkOpenness];
    v19 = [v18 numberWithFloat:?];
  }

  if (![(BMOasisAnalyticsBlinkSample *)self hasMedianEyelidOpenness]|| ([(BMOasisAnalyticsBlinkSample *)self medianEyelidOpenness], fabsf(v20) == INFINITY))
  {
    v22 = 0;
  }

  else
  {
    [(BMOasisAnalyticsBlinkSample *)self medianEyelidOpenness];
    v21 = MEMORY[0x1E696AD98];
    [(BMOasisAnalyticsBlinkSample *)self medianEyelidOpenness];
    v22 = [v21 numberWithFloat:?];
  }

  v45[0] = @"count";
  v23 = v3;
  if (!v3)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = v3;
  v38 = v23;
  v46[0] = v23;
  v45[1] = @"medianDurationMs";
  v24 = v6;
  if (!v6)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = v6;
  v37 = v24;
  v46[1] = v24;
  v45[2] = @"blinkDurations";
  v25 = v7;
  if (!v7)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = v7;
  v36 = v25;
  v46[2] = v25;
  v45[3] = @"medianTimeIntervalMs";
  v26 = v10;
  if (!v10)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = v10;
  v46[3] = v26;
  v45[4] = @"blinkIntervals";
  v27 = v11;
  if (!v11)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = v11;
  v46[4] = v27;
  v45[5] = @"medianBlinkOnsetVelocity";
  v28 = v14;
  if (!v14)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v14;
  v46[5] = v28;
  v45[6] = @"medianBlinkOffsetVelocity";
  v30 = v44;
  if (!v44)
  {
    v30 = [MEMORY[0x1E695DFB0] null];
  }

  v46[6] = v30;
  v45[7] = @"medianBlinkOpenness";
  v31 = v19;
  if (!v19)
  {
    v31 = [MEMORY[0x1E695DFB0] null];
  }

  v46[7] = v31;
  v45[8] = @"medianEyelidOpenness";
  v32 = v22;
  if (!v22)
  {
    v32 = [MEMORY[0x1E695DFB0] null];
  }

  v46[8] = v32;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:9];
  if (v22)
  {
    if (v19)
    {
      goto LABEL_48;
    }
  }

  else
  {

    if (v19)
    {
      goto LABEL_48;
    }
  }

LABEL_48:
  if (!v44)
  {
  }

  if (!v29)
  {
  }

  if (!v39)
  {
  }

  if (!v40)
  {
  }

  if (!v41)
  {
  }

  if (!v42)
  {
  }

  if (!v43)
  {
  }

  v34 = *MEMORY[0x1E69E9840];

  return v33;
}

- (id)_blinkIntervalsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMOasisAnalyticsBlinkSample *)self blinkIntervals];
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

- (id)_blinkDurationsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMOasisAnalyticsBlinkSample *)self blinkDurations];
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

- (BMOasisAnalyticsBlinkSample)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v161[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"count"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v25 = *MEMORY[0x1E698F240];
        v160 = *MEMORY[0x1E696A578];
        v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"count"];
        v161[0] = v26;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v161 forKeys:&v160 count:1];
        v28 = [v24 initWithDomain:v25 code:2 userInfo:v27];
        v7 = 0;
        v29 = 0;
        *a4 = v28;
        goto LABEL_110;
      }

      v7 = 0;
      v29 = 0;
      goto LABEL_111;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 objectForKeyedSubscript:@"medianDurationMs"];
  v120 = v6;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v30 = v8;
      if (a4)
      {
        v31 = v7;
        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v33 = *MEMORY[0x1E698F240];
        v158 = *MEMORY[0x1E696A578];
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"medianDurationMs"];
        v159 = v9;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v159 forKeys:&v158 count:1];
        v35 = v32;
        v7 = v31;
        v27 = v30;
        v123 = v34;
        v26 = 0;
        v29 = 0;
        *a4 = [v35 initWithDomain:v33 code:2 userInfo:?];

        goto LABEL_109;
      }

      v26 = 0;
      v29 = 0;
      v27 = v8;
      goto LABEL_110;
    }

    v116 = v8;
    v119 = v8;
  }

  else
  {
    v116 = v8;
    v119 = 0;
  }

  v9 = [v5 objectForKeyedSubscript:@"blinkDurations"];
  v10 = [MEMORY[0x1E695DFB0] null];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    v112 = self;
    v115 = v7;

    v9 = 0;
  }

  else
  {
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v43 = objc_alloc(MEMORY[0x1E696ABC0]);
          v44 = *MEMORY[0x1E698F240];
          v156 = *MEMORY[0x1E696A578];
          v122 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"blinkDurations"];
          v157 = v122;
          v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v157 forKeys:&v156 count:1];
          v29 = 0;
          *a4 = [v43 initWithDomain:v44 code:2 userInfo:v45];
          goto LABEL_63;
        }

        v29 = 0;
        v27 = v116;
        v26 = v119;
        goto LABEL_109;
      }
    }

    v112 = self;
    v115 = v7;
  }

  v122 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v9 = v9;
  v12 = [v9 countByEnumeratingWithState:&v130 objects:v155 count:16];
  if (!v12)
  {
LABEL_22:

    v17 = [v5 objectForKeyedSubscript:@"medianTimeIntervalMs"];
    if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      v7 = v115;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        self = v112;
        if (a4)
        {
          v56 = objc_alloc(MEMORY[0x1E696ABC0]);
          v57 = *MEMORY[0x1E698F240];
          v149 = *MEMORY[0x1E696A578];
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"medianTimeIntervalMs"];
          v150 = v21;
          v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v150 forKeys:&v149 count:1];
          v59 = v56;
          v7 = v115;
          v118 = v58;
          v109 = 0;
          v29 = 0;
          *a4 = [v59 initWithDomain:v57 code:2 userInfo:?];
          v27 = v116;

          goto LABEL_105;
        }

        v109 = 0;
        v29 = 0;
        v27 = v116;
LABEL_106:

        v26 = v119;
        v45 = v109;
        goto LABEL_107;
      }

      v109 = v17;
    }

    else
    {
      v109 = 0;
    }

    v21 = [v5 objectForKeyedSubscript:@"blinkIntervals"];
    v22 = [MEMORY[0x1E695DFB0] null];
    v23 = [v21 isEqual:v22];

    if (v23)
    {

      v21 = 0;
    }

    else if (v21)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        self = v112;
        if (!a4)
        {
          v29 = 0;
          goto LABEL_44;
        }

        v69 = objc_alloc(MEMORY[0x1E696ABC0]);
        v70 = *MEMORY[0x1E698F240];
        v147 = *MEMORY[0x1E696A578];
        v117 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"blinkIntervals"];
        v148 = v117;
        v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v148 forKeys:&v147 count:1];
        v72 = v70;
        v55 = v71;
        v29 = 0;
        *a4 = [v69 initWithDomain:v72 code:2 userInfo:v71];
LABEL_83:
        v27 = v116;
        goto LABEL_103;
      }
    }

    v117 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v21, "count")}];
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v21 = v21;
    v46 = [v21 countByEnumeratingWithState:&v125 objects:v146 count:16];
    if (!v46)
    {
      goto LABEL_59;
    }

    v47 = v46;
    v48 = *v126;
    v111 = v5;
LABEL_51:
    v49 = 0;
    while (1)
    {
      if (*v126 != v48)
      {
        objc_enumerationMutation(v21);
      }

      v50 = *(*(&v125 + 1) + 8 * v49);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v60 = a4;
        if (a4)
        {
          v61 = objc_alloc(MEMORY[0x1E696ABC0]);
          v62 = *MEMORY[0x1E698F240];
          v142 = *MEMORY[0x1E696A578];
          v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"blinkIntervals"];
          v143 = v51;
          v63 = MEMORY[0x1E695DF20];
          v64 = &v143;
          v65 = &v142;
          goto LABEL_75;
        }

        goto LABEL_82;
      }

      v51 = v50;
      v52 = [BMBlinkIntervalEntry alloc];
      v124 = 0;
      v53 = [(BMBlinkIntervalEntry *)v52 initWithJSONDictionary:v51 error:&v124];
      v54 = v124;
      if (v54)
      {
        v66 = v54;
        if (a4)
        {
          v68 = v54;
          *a4 = v66;
        }

        v29 = 0;
        goto LABEL_79;
      }

      [v117 addObject:v53];

      if (v47 == ++v49)
      {
        v47 = [v21 countByEnumeratingWithState:&v125 objects:v146 count:16];
        v5 = v111;
        if (v47)
        {
          goto LABEL_51;
        }

LABEL_59:

        v51 = [v5 objectForKeyedSubscript:@"medianBlinkOnsetVelocity"];
        if (!v51)
        {
          v55 = 0;
          self = v112;
          goto LABEL_87;
        }

        objc_opt_class();
        self = v112;
        if (objc_opt_isKindOfClass())
        {
          v55 = 0;
LABEL_87:
          v73 = [v5 objectForKeyedSubscript:@"medianBlinkOffsetVelocity"];
          v107 = v73;
          if (!v73 || (v74 = v73, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v66 = 0;
LABEL_90:
            v75 = [v5 objectForKeyedSubscript:@"medianBlinkOpenness"];
            v105 = v75;
            if (!v75 || (v76 = v75, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v113 = 0;
              goto LABEL_93;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v113 = v76;
LABEL_93:
              v77 = [v5 objectForKeyedSubscript:@"medianEyelidOpenness"];
              v103 = v77;
              if (!v77)
              {
LABEL_96:
                v27 = v116;
                goto LABEL_97;
              }

              v78 = v77;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v77 = 0;
                goto LABEL_96;
              }

              objc_opt_class();
              v27 = v116;
              if (objc_opt_isKindOfClass())
              {
                v77 = v78;
LABEL_97:
                v101 = v77;
                self = [(BMOasisAnalyticsBlinkSample *)self initWithCount:v115 medianDurationMs:v119 blinkDurations:v122 medianTimeIntervalMs:v109 blinkIntervals:v117 medianBlinkOnsetVelocity:v55 medianBlinkOffsetVelocity:v66 medianBlinkOpenness:v113 medianEyelidOpenness:v77];
                v29 = self;
              }

              else
              {
                if (a4)
                {
                  v102 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v99 = *MEMORY[0x1E698F240];
                  v134 = *MEMORY[0x1E696A578];
                  v100 = v55;
                  v95 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"medianEyelidOpenness"];
                  v135 = v95;
                  v96 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
                  *a4 = [v102 initWithDomain:v99 code:2 userInfo:v96];

                  v55 = v100;
                }

                v101 = 0;
                v29 = 0;
              }

LABEL_98:

LABEL_99:
LABEL_100:

LABEL_101:
LABEL_102:

LABEL_103:
              v7 = v115;

LABEL_105:
              goto LABEL_106;
            }

            if (a4)
            {
              v90 = objc_alloc(MEMORY[0x1E696ABC0]);
              v114 = *MEMORY[0x1E698F240];
              v136 = *MEMORY[0x1E696A578];
              v91 = v55;
              v92 = objc_alloc(MEMORY[0x1E696AEC0]);
              v98 = objc_opt_class();
              v93 = v92;
              v55 = v91;
              v101 = [v93 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v98, @"medianBlinkOpenness"];
              v137 = v101;
              v103 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
              v94 = [v90 initWithDomain:v114 code:2 userInfo:?];
              v113 = 0;
              v29 = 0;
              *a4 = v94;
              v27 = v116;
              goto LABEL_98;
            }

            v113 = 0;
            v29 = 0;
LABEL_133:
            v27 = v116;
            goto LABEL_99;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v66 = v74;
            goto LABEL_90;
          }

          if (a4)
          {
            v106 = objc_alloc(MEMORY[0x1E696ABC0]);
            v104 = *MEMORY[0x1E698F240];
            v138 = *MEMORY[0x1E696A578];
            v85 = v55;
            v86 = objc_alloc(MEMORY[0x1E696AEC0]);
            v97 = objc_opt_class();
            v87 = v86;
            v55 = v85;
            v113 = [v87 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v97, @"medianBlinkOffsetVelocity"];
            v139 = v113;
            v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
            v89 = v106;
            v105 = v88;
            v66 = 0;
            v29 = 0;
            *a4 = [v89 initWithDomain:v104 code:2 userInfo:?];
            goto LABEL_133;
          }

          v66 = 0;
          v29 = 0;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v55 = v51;
            goto LABEL_87;
          }

          if (!a4)
          {
            v55 = 0;
            v29 = 0;
            v27 = v116;
            goto LABEL_102;
          }

          v108 = objc_alloc(MEMORY[0x1E696ABC0]);
          v81 = *MEMORY[0x1E698F240];
          v140 = *MEMORY[0x1E696A578];
          v66 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"medianBlinkOnsetVelocity"];
          v141 = v66;
          v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v141 forKeys:&v140 count:1];
          v83 = v108;
          v107 = v82;
          v84 = [v83 initWithDomain:v81 code:2 userInfo:?];
          v55 = 0;
          v29 = 0;
          *a4 = v84;
        }

        v27 = v116;
        goto LABEL_100;
      }
    }

    v60 = a4;
    if (a4)
    {
      v61 = objc_alloc(MEMORY[0x1E696ABC0]);
      v62 = *MEMORY[0x1E698F240];
      v144 = *MEMORY[0x1E696A578];
      v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"blinkIntervals"];
      v145 = v51;
      v63 = MEMORY[0x1E695DF20];
      v64 = &v145;
      v65 = &v144;
LABEL_75:
      v66 = [v63 dictionaryWithObjects:v64 forKeys:v65 count:1];
      v67 = [v61 initWithDomain:v62 code:2 userInfo:v66];
      v29 = 0;
      *v60 = v67;
LABEL_79:
      v55 = v21;
      v5 = v111;
      self = v112;
      v27 = v116;
      goto LABEL_101;
    }

LABEL_82:
    v29 = 0;
    v55 = v21;
    v5 = v111;
    self = v112;
    goto LABEL_83;
  }

  v13 = v12;
  v14 = *v131;
  v110 = v5;
LABEL_14:
  v15 = 0;
  while (1)
  {
    if (*v131 != v14)
    {
      objc_enumerationMutation(v9);
    }

    v16 = *(*(&v130 + 1) + 8 * v15);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v36 = a4;
      if (!a4)
      {
        goto LABEL_62;
      }

      v37 = objc_alloc(MEMORY[0x1E696ABC0]);
      v38 = *MEMORY[0x1E698F240];
      v151 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"blinkDurations"];
      v152 = v17;
      v39 = MEMORY[0x1E695DF20];
      v40 = &v152;
      v41 = &v151;
LABEL_39:
      v21 = [v39 dictionaryWithObjects:v40 forKeys:v41 count:1];
      v29 = 0;
      *v36 = [v37 initWithDomain:v38 code:2 userInfo:v21];
      goto LABEL_43;
    }

    v17 = v16;
    v18 = [BMBlinkDurationEntry alloc];
    v129 = 0;
    v19 = [(BMBlinkDurationEntry *)v18 initWithJSONDictionary:v17 error:&v129];
    v20 = v129;
    if (v20)
    {
      v21 = v20;
      if (a4)
      {
        v42 = v20;
        *a4 = v21;
      }

      v29 = 0;
LABEL_43:
      v109 = v9;
      v5 = v110;
      self = v112;
LABEL_44:
      v7 = v115;
      v27 = v116;
      goto LABEL_105;
    }

    [v122 addObject:v19];

    if (v13 == ++v15)
    {
      v13 = [v9 countByEnumeratingWithState:&v130 objects:v155 count:16];
      v5 = v110;
      if (!v13)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }
  }

  v36 = a4;
  if (a4)
  {
    v37 = objc_alloc(MEMORY[0x1E696ABC0]);
    v38 = *MEMORY[0x1E698F240];
    v153 = *MEMORY[0x1E696A578];
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"blinkDurations"];
    v154 = v17;
    v39 = MEMORY[0x1E695DF20];
    v40 = &v154;
    v41 = &v153;
    goto LABEL_39;
  }

LABEL_62:
  v29 = 0;
  v45 = v9;
  v5 = v110;
  self = v112;
  v7 = v115;
LABEL_63:
  v27 = v116;
  v26 = v119;
LABEL_107:

LABEL_109:
  v6 = v120;
LABEL_110:

LABEL_111:
  v79 = *MEMORY[0x1E69E9840];
  return v29;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMOasisAnalyticsBlinkSample *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_hasCount)
  {
    count = self->_count;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasMedianDurationMs)
  {
    medianDurationMs = self->_medianDurationMs;
    PBDataWriterWriteFloatField();
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = self->_blinkDurations;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      v11 = 0;
      do
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v30 + 1) + 8 * v11);
        v29 = 0;
        PBDataWriterPlaceMark();
        [v12 writeTo:v4];
        PBDataWriterRecallMark();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v9);
  }

  if (self->_hasMedianTimeIntervalMs)
  {
    medianTimeIntervalMs = self->_medianTimeIntervalMs;
    PBDataWriterWriteFloatField();
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = self->_blinkIntervals;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      v18 = 0;
      do
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v25 + 1) + 8 * v18);
        v29 = 0;
        PBDataWriterPlaceMark();
        [v19 writeTo:{v4, v25}];
        PBDataWriterRecallMark();
        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v16);
  }

  if (self->_hasMedianBlinkOnsetVelocity)
  {
    medianBlinkOnsetVelocity = self->_medianBlinkOnsetVelocity;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasMedianBlinkOffsetVelocity)
  {
    medianBlinkOffsetVelocity = self->_medianBlinkOffsetVelocity;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasMedianBlinkOpenness)
  {
    medianBlinkOpenness = self->_medianBlinkOpenness;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasMedianEyelidOpenness)
  {
    medianEyelidOpenness = self->_medianEyelidOpenness;
    PBDataWriterWriteFloatField();
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v57.receiver = self;
  v57.super_class = BMOasisAnalyticsBlinkSample;
  v5 = [(BMEventBase *)&v57 init];
  if (!v5)
  {
    goto LABEL_86;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = [v4 position];
  if (v8 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v58) = 0;
        v12 = [v4 position] + 1;
        if (v12 >= [v4 position] && (v13 = objc_msgSend(v4, "position") + 1, v13 <= objc_msgSend(v4, "length")))
        {
          v14 = [v4 data];
          [v14 getBytes:&v58 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v11 |= (v58 & 0x7F) << v9;
        if ((v58 & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        v15 = v10++ >= 9;
        if (v15)
        {
          v16 = 0;
          goto LABEL_16;
        }
      }

      v16 = [v4 hasError] ? 0 : v11;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        break;
      }

      v17 = v16 >> 3;
      if ((v16 >> 3) <= 4)
      {
        if (v17 > 2)
        {
          if (v17 == 3)
          {
            v58 = 0;
            v59 = 0;
            if (!PBReaderPlaceMark() || (v33 = [[BMBlinkDurationEntry alloc] initByReadFrom:v4]) == 0)
            {
LABEL_88:

              goto LABEL_85;
            }

            v34 = v33;
            v35 = v6;
            goto LABEL_60;
          }

          if (v17 == 4)
          {
            v5->_hasMedianTimeIntervalMs = 1;
            LODWORD(v58) = 0;
            v22 = [v4 position] + 4;
            if (v22 >= [v4 position] && (v23 = objc_msgSend(v4, "position") + 4, v23 <= objc_msgSend(v4, "length")))
            {
              v44 = [v4 data];
              [v44 getBytes:&v58 range:{objc_msgSend(v4, "position"), 4}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
            }

            else
            {
              [v4 _setError];
            }

            v42 = v58;
            v43 = 36;
            goto LABEL_82;
          }
        }

        else
        {
          if (v17 == 1)
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v5->_hasCount = 1;
            while (1)
            {
              LOBYTE(v58) = 0;
              v29 = [v4 position] + 1;
              if (v29 >= [v4 position] && (v30 = objc_msgSend(v4, "position") + 1, v30 <= objc_msgSend(v4, "length")))
              {
                v31 = [v4 data];
                [v31 getBytes:&v58 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v28 |= (v58 & 0x7F) << v26;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v26 += 7;
              v15 = v27++ >= 9;
              if (v15)
              {
                v32 = 0;
                goto LABEL_69;
              }
            }

            if ([v4 hasError])
            {
              v32 = 0;
            }

            else
            {
              v32 = v28;
            }

LABEL_69:
            v5->_count = v32;
            goto LABEL_83;
          }

          if (v17 == 2)
          {
            v5->_hasMedianDurationMs = 1;
            LODWORD(v58) = 0;
            v20 = [v4 position] + 4;
            if (v20 >= [v4 position] && (v21 = objc_msgSend(v4, "position") + 4, v21 <= objc_msgSend(v4, "length")))
            {
              v41 = [v4 data];
              [v41 getBytes:&v58 range:{objc_msgSend(v4, "position"), 4}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
            }

            else
            {
              [v4 _setError];
            }

            v42 = v58;
            v43 = 32;
            goto LABEL_82;
          }
        }
      }

      else if (v17 <= 6)
      {
        if (v17 == 5)
        {
          v58 = 0;
          v59 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_88;
          }

          v38 = [[BMBlinkIntervalEntry alloc] initByReadFrom:v4];
          if (!v38)
          {
            goto LABEL_88;
          }

          v34 = v38;
          v35 = v7;
LABEL_60:
          [v35 addObject:v34];
          PBReaderRecallMark();

          goto LABEL_83;
        }

        if (v17 == 6)
        {
          v5->_hasMedianBlinkOnsetVelocity = 1;
          LODWORD(v58) = 0;
          v24 = [v4 position] + 4;
          if (v24 >= [v4 position] && (v25 = objc_msgSend(v4, "position") + 4, v25 <= objc_msgSend(v4, "length")))
          {
            v45 = [v4 data];
            [v45 getBytes:&v58 range:{objc_msgSend(v4, "position"), 4}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
          }

          else
          {
            [v4 _setError];
          }

          v42 = v58;
          v43 = 40;
          goto LABEL_82;
        }
      }

      else
      {
        switch(v17)
        {
          case 7:
            v5->_hasMedianBlinkOffsetVelocity = 1;
            LODWORD(v58) = 0;
            v36 = [v4 position] + 4;
            if (v36 >= [v4 position] && (v37 = objc_msgSend(v4, "position") + 4, v37 <= objc_msgSend(v4, "length")))
            {
              v46 = [v4 data];
              [v46 getBytes:&v58 range:{objc_msgSend(v4, "position"), 4}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
            }

            else
            {
              [v4 _setError];
            }

            v42 = v58;
            v43 = 44;
            goto LABEL_82;
          case 8:
            v5->_hasMedianBlinkOpenness = 1;
            LODWORD(v58) = 0;
            v39 = [v4 position] + 4;
            if (v39 >= [v4 position] && (v40 = objc_msgSend(v4, "position") + 4, v40 <= objc_msgSend(v4, "length")))
            {
              v48 = [v4 data];
              [v48 getBytes:&v58 range:{objc_msgSend(v4, "position"), 4}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
            }

            else
            {
              [v4 _setError];
            }

            v42 = v58;
            v43 = 48;
            goto LABEL_82;
          case 9:
            v5->_hasMedianEyelidOpenness = 1;
            LODWORD(v58) = 0;
            v18 = [v4 position] + 4;
            if (v18 >= [v4 position] && (v19 = objc_msgSend(v4, "position") + 4, v19 <= objc_msgSend(v4, "length")))
            {
              v47 = [v4 data];
              [v47 getBytes:&v58 range:{objc_msgSend(v4, "position"), 4}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
            }

            else
            {
              [v4 _setError];
            }

            v42 = v58;
            v43 = 52;
LABEL_82:
            *(&v5->super.super.isa + v43) = v42;
            goto LABEL_83;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_88;
      }

LABEL_83:
      v49 = [v4 position];
    }

    while (v49 < [v4 length]);
  }

  v50 = [v6 copy];
  blinkDurations = v5->_blinkDurations;
  v5->_blinkDurations = v50;

  v52 = [v7 copy];
  blinkIntervals = v5->_blinkIntervals;
  v5->_blinkIntervals = v52;

  v54 = [v4 hasError];
  if (v54)
  {
LABEL_85:
    v55 = 0;
  }

  else
  {
LABEL_86:
    v55 = v5;
  }

  return v55;
}

- (NSString)description
{
  v20 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMOasisAnalyticsBlinkSample count](self, "count")}];
  v4 = MEMORY[0x1E696AD98];
  [(BMOasisAnalyticsBlinkSample *)self medianDurationMs];
  v5 = [v4 numberWithFloat:?];
  v6 = [(BMOasisAnalyticsBlinkSample *)self blinkDurations];
  v7 = MEMORY[0x1E696AD98];
  [(BMOasisAnalyticsBlinkSample *)self medianTimeIntervalMs];
  v8 = [v7 numberWithFloat:?];
  v9 = [(BMOasisAnalyticsBlinkSample *)self blinkIntervals];
  v10 = MEMORY[0x1E696AD98];
  [(BMOasisAnalyticsBlinkSample *)self medianBlinkOnsetVelocity];
  v11 = [v10 numberWithFloat:?];
  v12 = MEMORY[0x1E696AD98];
  [(BMOasisAnalyticsBlinkSample *)self medianBlinkOffsetVelocity];
  v13 = [v12 numberWithFloat:?];
  v14 = MEMORY[0x1E696AD98];
  [(BMOasisAnalyticsBlinkSample *)self medianBlinkOpenness];
  v15 = [v14 numberWithFloat:?];
  v16 = MEMORY[0x1E696AD98];
  [(BMOasisAnalyticsBlinkSample *)self medianEyelidOpenness];
  v17 = [v16 numberWithFloat:?];
  v18 = [v20 initWithFormat:@"BMOasisAnalyticsBlinkSample with count: %@, medianDurationMs: %@, blinkDurations: %@, medianTimeIntervalMs: %@, blinkIntervals: %@, medianBlinkOnsetVelocity: %@, medianBlinkOffsetVelocity: %@, medianBlinkOpenness: %@, medianEyelidOpenness: %@", v3, v5, v6, v8, v9, v11, v13, v15, v17];

  return v18;
}

- (BMOasisAnalyticsBlinkSample)initWithCount:(id)a3 medianDurationMs:(id)a4 blinkDurations:(id)a5 medianTimeIntervalMs:(id)a6 blinkIntervals:(id)a7 medianBlinkOnsetVelocity:(id)a8 medianBlinkOffsetVelocity:(id)a9 medianBlinkOpenness:(id)a10 medianEyelidOpenness:(id)a11
{
  v17 = a3;
  v18 = a4;
  v34 = a5;
  v19 = a6;
  v33 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v35.receiver = self;
  v35.super_class = BMOasisAnalyticsBlinkSample;
  v24 = [(BMEventBase *)&v35 init];
  if (v24)
  {
    v24->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v17)
    {
      v24->_hasCount = 1;
      v25 = [v17 unsignedIntValue];
    }

    else
    {
      v25 = 0;
      v24->_hasCount = 0;
    }

    v24->_count = v25;
    if (v18)
    {
      v24->_hasMedianDurationMs = 1;
      [v18 floatValue];
    }

    else
    {
      v24->_hasMedianDurationMs = 0;
      v26 = -1.0;
    }

    v24->_medianDurationMs = v26;
    objc_storeStrong(&v24->_blinkDurations, a5);
    if (v19)
    {
      v24->_hasMedianTimeIntervalMs = 1;
      [v19 floatValue];
    }

    else
    {
      v24->_hasMedianTimeIntervalMs = 0;
      v27 = -1.0;
    }

    v24->_medianTimeIntervalMs = v27;
    objc_storeStrong(&v24->_blinkIntervals, a7);
    if (v20)
    {
      v24->_hasMedianBlinkOnsetVelocity = 1;
      [v20 floatValue];
    }

    else
    {
      v24->_hasMedianBlinkOnsetVelocity = 0;
      v28 = -1.0;
    }

    v24->_medianBlinkOnsetVelocity = v28;
    if (v21)
    {
      v24->_hasMedianBlinkOffsetVelocity = 1;
      [v21 floatValue];
    }

    else
    {
      v24->_hasMedianBlinkOffsetVelocity = 0;
      v29 = -1.0;
    }

    v24->_medianBlinkOffsetVelocity = v29;
    if (v22)
    {
      v24->_hasMedianBlinkOpenness = 1;
      [v22 floatValue];
    }

    else
    {
      v24->_hasMedianBlinkOpenness = 0;
      v30 = -1.0;
    }

    v24->_medianBlinkOpenness = v30;
    if (v23)
    {
      v24->_hasMedianEyelidOpenness = 1;
      [v23 floatValue];
    }

    else
    {
      v24->_hasMedianEyelidOpenness = 0;
      v31 = -1.0;
    }

    v24->_medianEyelidOpenness = v31;
  }

  return v24;
}

+ (id)protoFields
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"count" number:1 type:4 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"medianDurationMs" number:2 type:1 subMessageClass:{0, v2}];
  v14[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"blinkDurations" number:3 type:14 subMessageClass:objc_opt_class()];
  v14[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"medianTimeIntervalMs" number:4 type:1 subMessageClass:0];
  v14[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"blinkIntervals" number:5 type:14 subMessageClass:objc_opt_class()];
  v14[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"medianBlinkOnsetVelocity" number:6 type:1 subMessageClass:0];
  v14[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"medianBlinkOffsetVelocity" number:7 type:1 subMessageClass:0];
  v14[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"medianBlinkOpenness" number:8 type:1 subMessageClass:0];
  v14[7] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"medianEyelidOpenness" number:9 type:1 subMessageClass:0];
  v14[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"count" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"medianDurationMs" dataType:1 requestOnly:0 fieldNumber:2 protoDataType:1 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"blinkDurations_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_216_112655];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"medianTimeIntervalMs" dataType:1 requestOnly:0 fieldNumber:4 protoDataType:1 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"blinkIntervals_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_218_112657];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"medianBlinkOnsetVelocity" dataType:1 requestOnly:0 fieldNumber:6 protoDataType:1 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"medianBlinkOffsetVelocity" dataType:1 requestOnly:0 fieldNumber:7 protoDataType:1 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"medianBlinkOpenness" dataType:1 requestOnly:0 fieldNumber:8 protoDataType:1 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"medianEyelidOpenness" dataType:1 requestOnly:0 fieldNumber:9 protoDataType:1 convertedType:0];
  v14[0] = v2;
  v14[1] = v3;
  v14[2] = v4;
  v14[3] = v5;
  v14[4] = v6;
  v14[5] = v7;
  v14[6] = v8;
  v14[7] = v9;
  v14[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id __38__BMOasisAnalyticsBlinkSample_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _blinkIntervalsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __38__BMOasisAnalyticsBlinkSample_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _blinkDurationsJSONArray];
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

    v8 = [[BMOasisAnalyticsBlinkSample alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[6] = 0;
    }
  }

  return v4;
}

@end