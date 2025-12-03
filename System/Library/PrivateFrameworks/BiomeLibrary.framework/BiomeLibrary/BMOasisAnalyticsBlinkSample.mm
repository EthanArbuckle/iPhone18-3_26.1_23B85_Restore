@interface BMOasisAnalyticsBlinkSample
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMOasisAnalyticsBlinkSample)initWithCount:(id)count medianDurationMs:(id)ms blinkDurations:(id)durations medianTimeIntervalMs:(id)intervalMs blinkIntervals:(id)intervals medianBlinkOnsetVelocity:(id)velocity medianBlinkOffsetVelocity:(id)offsetVelocity medianBlinkOpenness:(id)self0 medianEyelidOpenness:(id)self1;
- (BMOasisAnalyticsBlinkSample)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_blinkDurationsJSONArray;
- (id)_blinkIntervalsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMOasisAnalyticsBlinkSample

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

    blinkDurations = [(BMOasisAnalyticsBlinkSample *)self blinkDurations];
    blinkDurations2 = [v5 blinkDurations];
    v12 = blinkDurations2;
    if (blinkDurations == blinkDurations2)
    {
    }

    else
    {
      blinkDurations3 = [(BMOasisAnalyticsBlinkSample *)self blinkDurations];
      blinkDurations4 = [v5 blinkDurations];
      v15 = [blinkDurations3 isEqual:blinkDurations4];

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

    blinkIntervals = [(BMOasisAnalyticsBlinkSample *)self blinkIntervals];
    blinkIntervals2 = [v5 blinkIntervals];
    v22 = blinkIntervals2;
    if (blinkIntervals == blinkIntervals2)
    {
    }

    else
    {
      blinkIntervals3 = [(BMOasisAnalyticsBlinkSample *)self blinkIntervals];
      blinkIntervals4 = [v5 blinkIntervals];
      v25 = [blinkIntervals3 isEqual:blinkIntervals4];

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

  _blinkDurationsJSONArray = [(BMOasisAnalyticsBlinkSample *)self _blinkDurationsJSONArray];
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

  _blinkIntervalsJSONArray = [(BMOasisAnalyticsBlinkSample *)self _blinkIntervalsJSONArray];
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
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v43 = v3;
  v38 = null;
  v46[0] = null;
  v45[1] = @"medianDurationMs";
  null2 = v6;
  if (!v6)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = v6;
  v37 = null2;
  v46[1] = null2;
  v45[2] = @"blinkDurations";
  null3 = _blinkDurationsJSONArray;
  if (!_blinkDurationsJSONArray)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = _blinkDurationsJSONArray;
  v36 = null3;
  v46[2] = null3;
  v45[3] = @"medianTimeIntervalMs";
  null4 = v10;
  if (!v10)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = v10;
  v46[3] = null4;
  v45[4] = @"blinkIntervals";
  null5 = _blinkIntervalsJSONArray;
  if (!_blinkIntervalsJSONArray)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = _blinkIntervalsJSONArray;
  v46[4] = null5;
  v45[5] = @"medianBlinkOnsetVelocity";
  null6 = v14;
  if (!v14)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v14;
  v46[5] = null6;
  v45[6] = @"medianBlinkOffsetVelocity";
  null7 = v44;
  if (!v44)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v46[6] = null7;
  v45[7] = @"medianBlinkOpenness";
  null8 = v19;
  if (!v19)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v46[7] = null8;
  v45[8] = @"medianEyelidOpenness";
  null9 = v22;
  if (!v22)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v46[8] = null9;
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
  blinkIntervals = [(BMOasisAnalyticsBlinkSample *)self blinkIntervals];
  v5 = [blinkIntervals countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(blinkIntervals);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [blinkIntervals countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  blinkDurations = [(BMOasisAnalyticsBlinkSample *)self blinkDurations];
  v5 = [blinkDurations countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(blinkDurations);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [blinkDurations countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMOasisAnalyticsBlinkSample)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v161[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"count"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v25 = *MEMORY[0x1E698F240];
        v160 = *MEMORY[0x1E696A578];
        v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"count"];
        v161[0] = v26;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v161 forKeys:&v160 count:1];
        v28 = [v24 initWithDomain:v25 code:2 userInfo:v27];
        v7 = 0;
        selfCopy3 = 0;
        *error = v28;
        goto LABEL_110;
      }

      v7 = 0;
      selfCopy3 = 0;
      goto LABEL_111;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"medianDurationMs"];
  v120 = v6;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v30 = v8;
      if (error)
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
        selfCopy3 = 0;
        *error = [v35 initWithDomain:v33 code:2 userInfo:?];

        goto LABEL_109;
      }

      v26 = 0;
      selfCopy3 = 0;
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

  v9 = [dictionaryCopy objectForKeyedSubscript:@"blinkDurations"];
  null = [MEMORY[0x1E695DFB0] null];
  v11 = [v9 isEqual:null];

  if (v11)
  {
    selfCopy2 = self;
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
        if (error)
        {
          v43 = objc_alloc(MEMORY[0x1E696ABC0]);
          v44 = *MEMORY[0x1E698F240];
          v156 = *MEMORY[0x1E696A578];
          v122 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"blinkDurations"];
          v157 = v122;
          v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v157 forKeys:&v156 count:1];
          selfCopy3 = 0;
          *error = [v43 initWithDomain:v44 code:2 userInfo:v45];
          goto LABEL_63;
        }

        selfCopy3 = 0;
        v27 = v116;
        v26 = v119;
        goto LABEL_109;
      }
    }

    selfCopy2 = self;
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

    v17 = [dictionaryCopy objectForKeyedSubscript:@"medianTimeIntervalMs"];
    if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      v7 = v115;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        self = selfCopy2;
        if (error)
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
          selfCopy3 = 0;
          *error = [v59 initWithDomain:v57 code:2 userInfo:?];
          v27 = v116;

          goto LABEL_105;
        }

        v109 = 0;
        selfCopy3 = 0;
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

    v21 = [dictionaryCopy objectForKeyedSubscript:@"blinkIntervals"];
    null2 = [MEMORY[0x1E695DFB0] null];
    v23 = [v21 isEqual:null2];

    if (v23)
    {

      v21 = 0;
    }

    else if (v21)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        self = selfCopy2;
        if (!error)
        {
          selfCopy3 = 0;
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
        selfCopy3 = 0;
        *error = [v69 initWithDomain:v72 code:2 userInfo:v71];
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
    v111 = dictionaryCopy;
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
        errorCopy2 = error;
        if (error)
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
        if (error)
        {
          v68 = v54;
          *error = v66;
        }

        selfCopy3 = 0;
        goto LABEL_79;
      }

      [v117 addObject:v53];

      if (v47 == ++v49)
      {
        v47 = [v21 countByEnumeratingWithState:&v125 objects:v146 count:16];
        dictionaryCopy = v111;
        if (v47)
        {
          goto LABEL_51;
        }

LABEL_59:

        v51 = [dictionaryCopy objectForKeyedSubscript:@"medianBlinkOnsetVelocity"];
        if (!v51)
        {
          v55 = 0;
          self = selfCopy2;
          goto LABEL_87;
        }

        objc_opt_class();
        self = selfCopy2;
        if (objc_opt_isKindOfClass())
        {
          v55 = 0;
LABEL_87:
          v73 = [dictionaryCopy objectForKeyedSubscript:@"medianBlinkOffsetVelocity"];
          v107 = v73;
          if (!v73 || (v74 = v73, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v66 = 0;
LABEL_90:
            v75 = [dictionaryCopy objectForKeyedSubscript:@"medianBlinkOpenness"];
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
              v77 = [dictionaryCopy objectForKeyedSubscript:@"medianEyelidOpenness"];
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
                selfCopy3 = self;
              }

              else
              {
                if (error)
                {
                  v102 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v99 = *MEMORY[0x1E698F240];
                  v134 = *MEMORY[0x1E696A578];
                  v100 = v55;
                  v95 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"medianEyelidOpenness"];
                  v135 = v95;
                  v96 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
                  *error = [v102 initWithDomain:v99 code:2 userInfo:v96];

                  v55 = v100;
                }

                v101 = 0;
                selfCopy3 = 0;
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

            if (error)
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
              selfCopy3 = 0;
              *error = v94;
              v27 = v116;
              goto LABEL_98;
            }

            v113 = 0;
            selfCopy3 = 0;
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

          if (error)
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
            selfCopy3 = 0;
            *error = [v89 initWithDomain:v104 code:2 userInfo:?];
            goto LABEL_133;
          }

          v66 = 0;
          selfCopy3 = 0;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v55 = v51;
            goto LABEL_87;
          }

          if (!error)
          {
            v55 = 0;
            selfCopy3 = 0;
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
          selfCopy3 = 0;
          *error = v84;
        }

        v27 = v116;
        goto LABEL_100;
      }
    }

    errorCopy2 = error;
    if (error)
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
      selfCopy3 = 0;
      *errorCopy2 = v67;
LABEL_79:
      v55 = v21;
      dictionaryCopy = v111;
      self = selfCopy2;
      v27 = v116;
      goto LABEL_101;
    }

LABEL_82:
    selfCopy3 = 0;
    v55 = v21;
    dictionaryCopy = v111;
    self = selfCopy2;
    goto LABEL_83;
  }

  v13 = v12;
  v14 = *v131;
  v110 = dictionaryCopy;
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
      errorCopy4 = error;
      if (!error)
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
      selfCopy3 = 0;
      *errorCopy4 = [v37 initWithDomain:v38 code:2 userInfo:v21];
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
      if (error)
      {
        v42 = v20;
        *error = v21;
      }

      selfCopy3 = 0;
LABEL_43:
      v109 = v9;
      dictionaryCopy = v110;
      self = selfCopy2;
LABEL_44:
      v7 = v115;
      v27 = v116;
      goto LABEL_105;
    }

    [v122 addObject:v19];

    if (v13 == ++v15)
    {
      v13 = [v9 countByEnumeratingWithState:&v130 objects:v155 count:16];
      dictionaryCopy = v110;
      if (!v13)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }
  }

  errorCopy4 = error;
  if (error)
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
  selfCopy3 = 0;
  v45 = v9;
  dictionaryCopy = v110;
  self = selfCopy2;
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
  return selfCopy3;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMOasisAnalyticsBlinkSample *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v36 = *MEMORY[0x1E69E9840];
  toCopy = to;
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
        [v12 writeTo:toCopy];
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
        [v19 writeTo:{toCopy, v25}];
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

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v57.receiver = self;
  v57.super_class = BMOasisAnalyticsBlinkSample;
  v5 = [(BMEventBase *)&v57 init];
  if (!v5)
  {
    goto LABEL_86;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v58) = 0;
        v12 = [fromCopy position] + 1;
        if (v12 >= [fromCopy position] && (v13 = objc_msgSend(fromCopy, "position") + 1, v13 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v58 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v16 = [fromCopy hasError] ? 0 : v11;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v16 & 7) == 4)
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
            if (!PBReaderPlaceMark() || (v33 = [[BMBlinkDurationEntry alloc] initByReadFrom:fromCopy]) == 0)
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
            v22 = [fromCopy position] + 4;
            if (v22 >= [fromCopy position] && (v23 = objc_msgSend(fromCopy, "position") + 4, v23 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v58 range:{objc_msgSend(fromCopy, "position"), 4}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
            }

            else
            {
              [fromCopy _setError];
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
              v29 = [fromCopy position] + 1;
              if (v29 >= [fromCopy position] && (v30 = objc_msgSend(fromCopy, "position") + 1, v30 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v58 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
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

            if ([fromCopy hasError])
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
            v20 = [fromCopy position] + 4;
            if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 4, v21 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v58 range:{objc_msgSend(fromCopy, "position"), 4}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
            }

            else
            {
              [fromCopy _setError];
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

          v38 = [[BMBlinkIntervalEntry alloc] initByReadFrom:fromCopy];
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
          v24 = [fromCopy position] + 4;
          if (v24 >= [fromCopy position] && (v25 = objc_msgSend(fromCopy, "position") + 4, v25 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v58 range:{objc_msgSend(fromCopy, "position"), 4}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
          }

          else
          {
            [fromCopy _setError];
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
            v36 = [fromCopy position] + 4;
            if (v36 >= [fromCopy position] && (v37 = objc_msgSend(fromCopy, "position") + 4, v37 <= objc_msgSend(fromCopy, "length")))
            {
              data6 = [fromCopy data];
              [data6 getBytes:&v58 range:{objc_msgSend(fromCopy, "position"), 4}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
            }

            else
            {
              [fromCopy _setError];
            }

            v42 = v58;
            v43 = 44;
            goto LABEL_82;
          case 8:
            v5->_hasMedianBlinkOpenness = 1;
            LODWORD(v58) = 0;
            v39 = [fromCopy position] + 4;
            if (v39 >= [fromCopy position] && (v40 = objc_msgSend(fromCopy, "position") + 4, v40 <= objc_msgSend(fromCopy, "length")))
            {
              data7 = [fromCopy data];
              [data7 getBytes:&v58 range:{objc_msgSend(fromCopy, "position"), 4}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
            }

            else
            {
              [fromCopy _setError];
            }

            v42 = v58;
            v43 = 48;
            goto LABEL_82;
          case 9:
            v5->_hasMedianEyelidOpenness = 1;
            LODWORD(v58) = 0;
            v18 = [fromCopy position] + 4;
            if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 4, v19 <= objc_msgSend(fromCopy, "length")))
            {
              data8 = [fromCopy data];
              [data8 getBytes:&v58 range:{objc_msgSend(fromCopy, "position"), 4}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
            }

            else
            {
              [fromCopy _setError];
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
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v50 = [v6 copy];
  blinkDurations = v5->_blinkDurations;
  v5->_blinkDurations = v50;

  v52 = [v7 copy];
  blinkIntervals = v5->_blinkIntervals;
  v5->_blinkIntervals = v52;

  hasError = [fromCopy hasError];
  if (hasError)
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
  blinkDurations = [(BMOasisAnalyticsBlinkSample *)self blinkDurations];
  v7 = MEMORY[0x1E696AD98];
  [(BMOasisAnalyticsBlinkSample *)self medianTimeIntervalMs];
  v8 = [v7 numberWithFloat:?];
  blinkIntervals = [(BMOasisAnalyticsBlinkSample *)self blinkIntervals];
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
  v18 = [v20 initWithFormat:@"BMOasisAnalyticsBlinkSample with count: %@, medianDurationMs: %@, blinkDurations: %@, medianTimeIntervalMs: %@, blinkIntervals: %@, medianBlinkOnsetVelocity: %@, medianBlinkOffsetVelocity: %@, medianBlinkOpenness: %@, medianEyelidOpenness: %@", v3, v5, blinkDurations, v8, blinkIntervals, v11, v13, v15, v17];

  return v18;
}

- (BMOasisAnalyticsBlinkSample)initWithCount:(id)count medianDurationMs:(id)ms blinkDurations:(id)durations medianTimeIntervalMs:(id)intervalMs blinkIntervals:(id)intervals medianBlinkOnsetVelocity:(id)velocity medianBlinkOffsetVelocity:(id)offsetVelocity medianBlinkOpenness:(id)self0 medianEyelidOpenness:(id)self1
{
  countCopy = count;
  msCopy = ms;
  durationsCopy = durations;
  intervalMsCopy = intervalMs;
  intervalsCopy = intervals;
  velocityCopy = velocity;
  offsetVelocityCopy = offsetVelocity;
  opennessCopy = openness;
  eyelidOpennessCopy = eyelidOpenness;
  v35.receiver = self;
  v35.super_class = BMOasisAnalyticsBlinkSample;
  v24 = [(BMEventBase *)&v35 init];
  if (v24)
  {
    v24->_dataVersion = [objc_opt_class() latestDataVersion];
    if (countCopy)
    {
      v24->_hasCount = 1;
      unsignedIntValue = [countCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v24->_hasCount = 0;
    }

    v24->_count = unsignedIntValue;
    if (msCopy)
    {
      v24->_hasMedianDurationMs = 1;
      [msCopy floatValue];
    }

    else
    {
      v24->_hasMedianDurationMs = 0;
      v26 = -1.0;
    }

    v24->_medianDurationMs = v26;
    objc_storeStrong(&v24->_blinkDurations, durations);
    if (intervalMsCopy)
    {
      v24->_hasMedianTimeIntervalMs = 1;
      [intervalMsCopy floatValue];
    }

    else
    {
      v24->_hasMedianTimeIntervalMs = 0;
      v27 = -1.0;
    }

    v24->_medianTimeIntervalMs = v27;
    objc_storeStrong(&v24->_blinkIntervals, intervals);
    if (velocityCopy)
    {
      v24->_hasMedianBlinkOnsetVelocity = 1;
      [velocityCopy floatValue];
    }

    else
    {
      v24->_hasMedianBlinkOnsetVelocity = 0;
      v28 = -1.0;
    }

    v24->_medianBlinkOnsetVelocity = v28;
    if (offsetVelocityCopy)
    {
      v24->_hasMedianBlinkOffsetVelocity = 1;
      [offsetVelocityCopy floatValue];
    }

    else
    {
      v24->_hasMedianBlinkOffsetVelocity = 0;
      v29 = -1.0;
    }

    v24->_medianBlinkOffsetVelocity = v29;
    if (opennessCopy)
    {
      v24->_hasMedianBlinkOpenness = 1;
      [opennessCopy floatValue];
    }

    else
    {
      v24->_hasMedianBlinkOpenness = 0;
      v30 = -1.0;
    }

    v24->_medianBlinkOpenness = v30;
    if (eyelidOpennessCopy)
    {
      v24->_hasMedianEyelidOpenness = 1;
      [eyelidOpennessCopy floatValue];
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