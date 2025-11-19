@interface BMMicroLocationLocalization
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMicroLocationLocalization)initWithAbsoluteTimeStamp:(id)a3 clientBundleID:(id)a4 maxProbabilityLabel:(id)a5 maxProbability:(id)a6 probabilityVector:(id)a7 numDevicesVector:(id)a8;
- (BMMicroLocationLocalization)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)absoluteTimeStamp;
- (NSString)description;
- (id)_numDevicesVectorJSONArray;
- (id)_probabilityVectorJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMicroLocationLocalization

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMicroLocationLocalization *)self absoluteTimeStamp];
    v7 = [v5 absoluteTimeStamp];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMMicroLocationLocalization *)self absoluteTimeStamp];
      v10 = [v5 absoluteTimeStamp];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_22;
      }
    }

    v13 = [(BMMicroLocationLocalization *)self clientBundleID];
    v14 = [v5 clientBundleID];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMMicroLocationLocalization *)self clientBundleID];
      v17 = [v5 clientBundleID];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_22;
      }
    }

    v19 = [(BMMicroLocationLocalization *)self maxProbabilityLabel];
    v20 = [v5 maxProbabilityLabel];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMMicroLocationLocalization *)self maxProbabilityLabel];
      v23 = [v5 maxProbabilityLabel];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_22;
      }
    }

    if (-[BMMicroLocationLocalization hasMaxProbability](self, "hasMaxProbability") || [v5 hasMaxProbability])
    {
      if (![(BMMicroLocationLocalization *)self hasMaxProbability])
      {
        goto LABEL_22;
      }

      if (![v5 hasMaxProbability])
      {
        goto LABEL_22;
      }

      [(BMMicroLocationLocalization *)self maxProbability];
      v26 = v25;
      [v5 maxProbability];
      if (v26 != v27)
      {
        goto LABEL_22;
      }
    }

    v28 = [(BMMicroLocationLocalization *)self probabilityVector];
    v29 = [v5 probabilityVector];
    v30 = v29;
    if (v28 == v29)
    {
    }

    else
    {
      v31 = [(BMMicroLocationLocalization *)self probabilityVector];
      v32 = [v5 probabilityVector];
      v33 = [v31 isEqual:v32];

      if (!v33)
      {
LABEL_22:
        v12 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    v35 = [(BMMicroLocationLocalization *)self numDevicesVector];
    v36 = [v5 numDevicesVector];
    if (v35 == v36)
    {
      v12 = 1;
    }

    else
    {
      v37 = [(BMMicroLocationLocalization *)self numDevicesVector];
      v38 = [v5 numDevicesVector];
      v12 = [v37 isEqual:v38];
    }

    goto LABEL_23;
  }

  v12 = 0;
LABEL_24:

  return v12;
}

- (NSDate)absoluteTimeStamp
{
  if (self->_hasRaw_absoluteTimeStamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_absoluteTimeStamp];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v28[6] = *MEMORY[0x1E69E9840];
  v3 = [(BMMicroLocationLocalization *)self absoluteTimeStamp];
  if (v3)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(BMMicroLocationLocalization *)self absoluteTimeStamp];
    [v5 timeIntervalSinceReferenceDate];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(BMMicroLocationLocalization *)self clientBundleID];
  v8 = [(BMMicroLocationLocalization *)self maxProbabilityLabel];
  if (![(BMMicroLocationLocalization *)self hasMaxProbability]|| ([(BMMicroLocationLocalization *)self maxProbability], fabs(v9) == INFINITY))
  {
    v11 = 0;
  }

  else
  {
    [(BMMicroLocationLocalization *)self maxProbability];
    v10 = MEMORY[0x1E696AD98];
    [(BMMicroLocationLocalization *)self maxProbability];
    v11 = [v10 numberWithDouble:?];
  }

  v12 = [(BMMicroLocationLocalization *)self _probabilityVectorJSONArray];
  v13 = [(BMMicroLocationLocalization *)self _numDevicesVectorJSONArray];
  v27[0] = @"absoluteTimeStamp";
  v14 = v6;
  if (!v6)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v14;
  v28[0] = v14;
  v27[1] = @"clientBundleID";
  v15 = v7;
  if (!v7)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v15;
  v28[1] = v15;
  v27[2] = @"maxProbabilityLabel";
  v16 = v8;
  if (!v8)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v6;
  v28[2] = v16;
  v27[3] = @"maxProbability";
  v17 = v11;
  if (!v11)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v28[3] = v17;
  v27[4] = @"probabilityVector";
  v18 = v12;
  if (!v12)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v28[4] = v18;
  v27[5] = @"numDevicesVector";
  v19 = v13;
  if (!v13)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v28[5] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:{6, v23}];
  if (v13)
  {
    if (v12)
    {
      goto LABEL_22;
    }

LABEL_30:

    if (v11)
    {
      goto LABEL_23;
    }

    goto LABEL_31;
  }

  if (!v12)
  {
    goto LABEL_30;
  }

LABEL_22:
  if (v11)
  {
    goto LABEL_23;
  }

LABEL_31:

LABEL_23:
  if (v8)
  {
    if (v7)
    {
      goto LABEL_25;
    }

LABEL_33:

    if (v26)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

  if (!v7)
  {
    goto LABEL_33;
  }

LABEL_25:
  if (v26)
  {
    goto LABEL_26;
  }

LABEL_34:

LABEL_26:
  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)_numDevicesVectorJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMMicroLocationLocalization *)self numDevicesVector];
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

- (id)_probabilityVectorJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMMicroLocationLocalization *)self probabilityVector];
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

- (BMMicroLocationLocalization)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v148[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"absoluteTimeStamp"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = MEMORY[0x1E695DF00];
    v9 = v6;
    v10 = [v8 alloc];
    [v9 doubleValue];
    v12 = v11;

    v13 = [v10 initWithTimeIntervalSinceReferenceDate:v12];
LABEL_6:
    v7 = v13;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v83 = objc_alloc(MEMORY[0x1E696ABC0]);
        v84 = v6;
        v85 = *MEMORY[0x1E698F240];
        v147 = *MEMORY[0x1E696A578];
        v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimeStamp"];
        v148[0] = v44;
        v86 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v148 forKeys:&v147 count:1];
        v87 = v85;
        v6 = v84;
        v115 = v86;
        v88 = [v83 initWithDomain:v87 code:2 userInfo:?];
        v7 = 0;
        v45 = 0;
        *a4 = v88;
        goto LABEL_99;
      }

      v7 = 0;
      v45 = 0;
      goto LABEL_100;
    }

    v13 = v6;
    goto LABEL_6;
  }

  v14 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v7 = [v14 dateFromString:v6];

LABEL_9:
  v15 = [v5 objectForKeyedSubscript:@"clientBundleID"];
  v115 = v15;
  if (v15 && (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v35 = v7;
        v36 = objc_alloc(MEMORY[0x1E696ABC0]);
        v37 = v6;
        v38 = *MEMORY[0x1E698F240];
        v145 = *MEMORY[0x1E696A578];
        v39 = self;
        v40 = objc_alloc(MEMORY[0x1E696AEC0]);
        v103 = objc_opt_class();
        v41 = v40;
        self = v39;
        v113 = [v41 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v103, @"clientBundleID"];
        v146 = v113;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v146 forKeys:&v145 count:1];
        v42 = v36;
        v7 = v35;
        v43 = v38;
        v6 = v37;
        v44 = 0;
        v45 = 0;
        *a4 = [v42 initWithDomain:v43 code:2 userInfo:v17];
        goto LABEL_98;
      }

      v44 = 0;
      v45 = 0;
      goto LABEL_99;
    }

    v112 = v16;
  }

  else
  {
    v112 = 0;
  }

  v17 = [v5 objectForKeyedSubscript:@"maxProbabilityLabel"];
  if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v46 = v7;
        v47 = objc_alloc(MEMORY[0x1E696ABC0]);
        v48 = v6;
        v49 = *MEMORY[0x1E698F240];
        v143 = *MEMORY[0x1E696A578];
        v50 = self;
        v51 = objc_alloc(MEMORY[0x1E696AEC0]);
        v104 = objc_opt_class();
        v52 = v51;
        self = v50;
        v111 = [v52 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v104, @"maxProbabilityLabel"];
        v144 = v111;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
        v53 = v47;
        v7 = v46;
        v54 = v49;
        v6 = v48;
        v113 = 0;
        v45 = 0;
        *a4 = [v53 initWithDomain:v54 code:2 userInfo:v19];
        v44 = v112;
        goto LABEL_97;
      }

      v113 = 0;
      v45 = 0;
      v44 = v112;
      goto LABEL_98;
    }

    v113 = v17;
  }

  else
  {
    v113 = 0;
  }

  v18 = [v5 objectForKeyedSubscript:@"maxProbability"];
  v108 = v6;
  v109 = self;
  v110 = v18;
  if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v55 = v7;
        v56 = objc_alloc(MEMORY[0x1E696ABC0]);
        v57 = *MEMORY[0x1E698F240];
        v141 = *MEMORY[0x1E696A578];
        v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"maxProbability"];
        v142 = v20;
        v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v142 forKeys:&v141 count:1];
        v59 = v56;
        v7 = v55;
        v116 = v58;
        v60 = [v59 initWithDomain:v57 code:2 userInfo:?];
        v111 = 0;
        v45 = 0;
        *a4 = v60;
        v44 = v112;
        goto LABEL_95;
      }

      v111 = 0;
      v45 = 0;
      v44 = v112;
      v19 = v18;
      goto LABEL_97;
    }

    v106 = v7;
    v111 = v18;
  }

  else
  {
    v106 = v7;
    v111 = 0;
  }

  v19 = v18;
  v20 = [v5 objectForKeyedSubscript:@"probabilityVector"];
  v21 = [MEMORY[0x1E695DFB0] null];
  v22 = [v20 isEqual:v21];

  v107 = v5;
  if (v22)
  {
    v105 = v17;

    v20 = 0;
  }

  else
  {
    if (v20)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v80 = objc_alloc(MEMORY[0x1E696ABC0]);
          v81 = *MEMORY[0x1E698F240];
          v139 = *MEMORY[0x1E696A578];
          v116 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"probabilityVector"];
          v140 = v116;
          v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v140 forKeys:&v139 count:1];
          v82 = [v80 initWithDomain:v81 code:2 userInfo:v32];
          v45 = 0;
          *a4 = v82;
          self = v109;
          v7 = v106;
          v44 = v112;
          goto LABEL_94;
        }

        v45 = 0;
        self = v109;
        v7 = v106;
        v44 = v112;
        goto LABEL_96;
      }
    }

    v105 = v17;
  }

  v116 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v20, "count")}];
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v20 = v20;
  v23 = [v20 countByEnumeratingWithState:&v123 objects:v138 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v124;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v124 != v25)
        {
          objc_enumerationMutation(v20);
        }

        v27 = *(*(&v123 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v61 = a4;
          if (a4)
          {
            v62 = objc_alloc(MEMORY[0x1E696ABC0]);
            v63 = *MEMORY[0x1E698F240];
            v136 = *MEMORY[0x1E696A578];
            v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"probabilityVector"];
            v137 = v28;
            v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
            v65 = v62;
            v66 = v63;
            goto LABEL_51;
          }

LABEL_74:
          v45 = 0;
          v32 = v20;
          v5 = v107;
          self = v109;
LABEL_75:
          v7 = v106;
          v44 = v112;
          goto LABEL_93;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v61 = a4;
          if (!a4)
          {
            goto LABEL_74;
          }

          v67 = objc_alloc(MEMORY[0x1E696ABC0]);
          v68 = *MEMORY[0x1E698F240];
          v134 = *MEMORY[0x1E696A578];
          v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"probabilityVector"];
          v135 = v28;
          v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
          v65 = v67;
          v66 = v68;
LABEL_51:
          *v61 = [v65 initWithDomain:v66 code:2 userInfo:v64];

LABEL_55:
          v45 = 0;
          v32 = v20;
          v5 = v107;
          self = v109;
LABEL_56:
          v7 = v106;
          v44 = v112;
          goto LABEL_92;
        }

        v28 = v27;
        v29 = [BMMicroLocationLocalizationProbabilityPerLabel alloc];
        v122 = 0;
        v30 = [(BMMicroLocationLocalizationProbabilityPerLabel *)v29 initWithJSONDictionary:v28 error:&v122];
        v31 = v122;
        if (v31)
        {
          v69 = v31;
          if (a4)
          {
            v70 = v31;
            *a4 = v69;
          }

          goto LABEL_55;
        }

        [v116 addObject:v30];
      }

      v24 = [v20 countByEnumeratingWithState:&v123 objects:v138 count:16];
    }

    while (v24);
  }

  v5 = v107;
  v32 = [v107 objectForKeyedSubscript:@"numDevicesVector"];
  v33 = [MEMORY[0x1E695DFB0] null];
  v34 = [v32 isEqual:v33];

  if (v34)
  {

    v32 = 0;
    self = v109;
  }

  else
  {
    self = v109;
    if (v32)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v45 = 0;
          goto LABEL_75;
        }

        v100 = objc_alloc(MEMORY[0x1E696ABC0]);
        v101 = *MEMORY[0x1E698F240];
        v132 = *MEMORY[0x1E696A578];
        v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"numDevicesVector"];
        v133 = v28;
        v102 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v133 forKeys:&v132 count:1];
        *a4 = [v100 initWithDomain:v101 code:2 userInfo:v102];

        v45 = 0;
        goto LABEL_56;
      }
    }
  }

  v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v32, "count")}];
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v32 = v32;
  v71 = [v32 countByEnumeratingWithState:&v118 objects:v131 count:16];
  if (!v71)
  {
    goto LABEL_69;
  }

  v72 = v71;
  v73 = *v119;
  while (2)
  {
    for (j = 0; j != v72; ++j)
    {
      if (*v119 != v73)
      {
        objc_enumerationMutation(v32);
      }

      v75 = *(*(&v118 + 1) + 8 * j);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = v107;
        self = v109;
        v44 = v112;
        v89 = a4;
        if (a4)
        {
          v90 = objc_alloc(MEMORY[0x1E696ABC0]);
          v91 = *MEMORY[0x1E698F240];
          v129 = *MEMORY[0x1E696A578];
          v76 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"numDevicesVector"];
          v130 = v76;
          v92 = MEMORY[0x1E695DF20];
          v93 = &v130;
          v94 = &v129;
LABEL_86:
          v95 = [v92 dictionaryWithObjects:v93 forKeys:v94 count:1];
          v96 = v91;
          v5 = v107;
          *v89 = [v90 initWithDomain:v96 code:2 userInfo:v95];
LABEL_90:
        }

LABEL_91:

        v45 = 0;
        v7 = v106;
        goto LABEL_92;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v5 = v107;
        self = v109;
        v44 = v112;
        v89 = a4;
        if (a4)
        {
          v90 = objc_alloc(MEMORY[0x1E696ABC0]);
          v91 = *MEMORY[0x1E698F240];
          v127 = *MEMORY[0x1E696A578];
          v76 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numDevicesVector"];
          v128 = v76;
          v92 = MEMORY[0x1E695DF20];
          v93 = &v128;
          v94 = &v127;
          goto LABEL_86;
        }

        goto LABEL_91;
      }

      v76 = v75;
      v77 = [BMMicroLocationLocalizationNumDevicesPerTechnology alloc];
      v117 = 0;
      v78 = [(BMMicroLocationLocalizationNumDevicesPerTechnology *)v77 initWithJSONDictionary:v76 error:&v117];
      v79 = v117;
      if (v79)
      {
        v95 = v79;
        if (a4)
        {
          v97 = v79;
          *a4 = v95;
        }

        v5 = v107;
        self = v109;
        v44 = v112;
        goto LABEL_90;
      }

      [v28 addObject:v78];
    }

    v72 = [v32 countByEnumeratingWithState:&v118 objects:v131 count:16];
    self = v109;
    if (v72)
    {
      continue;
    }

    break;
  }

LABEL_69:

  v7 = v106;
  v44 = v112;
  self = [(BMMicroLocationLocalization *)self initWithAbsoluteTimeStamp:v106 clientBundleID:v112 maxProbabilityLabel:v113 maxProbability:v111 probabilityVector:v116 numDevicesVector:v28];
  v45 = self;
  v5 = v107;
LABEL_92:

LABEL_93:
  v17 = v105;
LABEL_94:

LABEL_95:
  v19 = v110;
LABEL_96:

  v6 = v108;
LABEL_97:

LABEL_98:
LABEL_99:

LABEL_100:
  v98 = *MEMORY[0x1E69E9840];
  return v45;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMicroLocationLocalization *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_hasRaw_absoluteTimeStamp)
  {
    raw_absoluteTimeStamp = self->_raw_absoluteTimeStamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_clientBundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_maxProbabilityLabel)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasMaxProbability)
  {
    maxProbability = self->_maxProbability;
    PBDataWriterWriteDoubleField();
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = self->_probabilityVector;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * v11);
        v24 = 0;
        PBDataWriterPlaceMark();
        [v12 writeTo:v4];
        PBDataWriterRecallMark();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = self->_numDevicesVector;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v20 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v20 + 1) + 8 * v17);
        v24 = 0;
        PBDataWriterPlaceMark();
        [v18 writeTo:{v4, v20}];
        PBDataWriterRecallMark();
        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v20 objects:v29 count:16];
    }

    while (v15);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = BMMicroLocationLocalization;
  v5 = [(BMEventBase *)&v41 init];
  if (!v5)
  {
    goto LABEL_51;
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
        LOBYTE(v42) = 0;
        v12 = [v4 position] + 1;
        if (v12 >= [v4 position] && (v13 = objc_msgSend(v4, "position") + 1, v13 <= objc_msgSend(v4, "length")))
        {
          v14 = [v4 data];
          [v14 getBytes:&v42 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v11 |= (v42 & 0x7F) << v9;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        if (v10++ >= 9)
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
      if ((v16 >> 3) > 3)
      {
        switch(v17)
        {
          case 4:
            v5->_hasMaxProbability = 1;
            v42 = 0;
            v25 = [v4 position] + 8;
            if (v25 >= [v4 position] && (v26 = objc_msgSend(v4, "position") + 8, v26 <= objc_msgSend(v4, "length")))
            {
              v32 = [v4 data];
              [v32 getBytes:&v42 range:{objc_msgSend(v4, "position"), 8}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
            }

            else
            {
              [v4 _setError];
            }

            v30 = v42;
            v31 = 56;
            goto LABEL_47;
          case 5:
            v42 = 0;
            v43 = 0;
            if (!PBReaderPlaceMark() || (v28 = [[BMMicroLocationLocalizationProbabilityPerLabel alloc] initByReadFrom:v4]) == 0)
            {
LABEL_53:

              goto LABEL_50;
            }

            v21 = v28;
            v22 = v6;
            goto LABEL_42;
          case 6:
            v42 = 0;
            v43 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_53;
            }

            v20 = [[BMMicroLocationLocalizationNumDevicesPerTechnology alloc] initByReadFrom:v4];
            if (!v20)
            {
              goto LABEL_53;
            }

            v21 = v20;
            v22 = v7;
LABEL_42:
            [v22 addObject:v21];
            PBReaderRecallMark();

            goto LABEL_48;
        }
      }

      else
      {
        switch(v17)
        {
          case 1:
            v5->_hasRaw_absoluteTimeStamp = 1;
            v42 = 0;
            v23 = [v4 position] + 8;
            if (v23 >= [v4 position] && (v24 = objc_msgSend(v4, "position") + 8, v24 <= objc_msgSend(v4, "length")))
            {
              v29 = [v4 data];
              [v29 getBytes:&v42 range:{objc_msgSend(v4, "position"), 8}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
            }

            else
            {
              [v4 _setError];
            }

            v30 = v42;
            v31 = 24;
LABEL_47:
            *(&v5->super.super.isa + v31) = v30;
            goto LABEL_48;
          case 2:
            v18 = PBReaderReadString();
            v19 = 40;
            goto LABEL_38;
          case 3:
            v18 = PBReaderReadString();
            v19 = 48;
LABEL_38:
            v27 = *(&v5->super.super.isa + v19);
            *(&v5->super.super.isa + v19) = v18;

            goto LABEL_48;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_53;
      }

LABEL_48:
      v33 = [v4 position];
    }

    while (v33 < [v4 length]);
  }

  v34 = [v6 copy];
  probabilityVector = v5->_probabilityVector;
  v5->_probabilityVector = v34;

  v36 = [v7 copy];
  numDevicesVector = v5->_numDevicesVector;
  v5->_numDevicesVector = v36;

  v38 = [v4 hasError];
  if (v38)
  {
LABEL_50:
    v39 = 0;
  }

  else
  {
LABEL_51:
    v39 = v5;
  }

  return v39;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMMicroLocationLocalization *)self absoluteTimeStamp];
  v5 = [(BMMicroLocationLocalization *)self clientBundleID];
  v6 = [(BMMicroLocationLocalization *)self maxProbabilityLabel];
  v7 = MEMORY[0x1E696AD98];
  [(BMMicroLocationLocalization *)self maxProbability];
  v8 = [v7 numberWithDouble:?];
  v9 = [(BMMicroLocationLocalization *)self probabilityVector];
  v10 = [(BMMicroLocationLocalization *)self numDevicesVector];
  v11 = [v3 initWithFormat:@"BMMicroLocationLocalization with absoluteTimeStamp: %@, clientBundleID: %@, maxProbabilityLabel: %@, maxProbability: %@, probabilityVector: %@, numDevicesVector: %@", v4, v5, v6, v8, v9, v10];

  return v11;
}

- (BMMicroLocationLocalization)initWithAbsoluteTimeStamp:(id)a3 clientBundleID:(id)a4 maxProbabilityLabel:(id)a5 maxProbability:(id)a6 probabilityVector:(id)a7 numDevicesVector:(id)a8
{
  v14 = a3;
  v23 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v24.receiver = self;
  v24.super_class = BMMicroLocationLocalization;
  v19 = [(BMEventBase *)&v24 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v14)
    {
      v19->_hasRaw_absoluteTimeStamp = 1;
      [v14 timeIntervalSinceReferenceDate];
    }

    else
    {
      v19->_hasRaw_absoluteTimeStamp = 0;
      v20 = -1.0;
    }

    v19->_raw_absoluteTimeStamp = v20;
    objc_storeStrong(&v19->_clientBundleID, a4);
    objc_storeStrong(&v19->_maxProbabilityLabel, a5);
    if (v16)
    {
      v19->_hasMaxProbability = 1;
      [v16 doubleValue];
    }

    else
    {
      v19->_hasMaxProbability = 0;
      v21 = -1.0;
    }

    v19->_maxProbability = v21;
    objc_storeStrong(&v19->_probabilityVector, a7);
    objc_storeStrong(&v19->_numDevicesVector, a8);
  }

  return v19;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimeStamp" number:1 type:0 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientBundleID" number:2 type:13 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"maxProbabilityLabel" number:3 type:13 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"maxProbability" number:4 type:0 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"probabilityVector" number:5 type:14 subMessageClass:objc_opt_class()];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numDevicesVector" number:6 type:14 subMessageClass:objc_opt_class()];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimeStamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:1];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientBundleID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"maxProbabilityLabel" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"maxProbability" dataType:1 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"probabilityVector_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_40712];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numDevicesVector_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_199_40713];
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

id __38__BMMicroLocationLocalization_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _numDevicesVectorJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __38__BMMicroLocationLocalization_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _probabilityVectorJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    v5 = a3;
    v6 = [[v4 alloc] initWithData:v5];

    v7 = [[BMMicroLocationLocalization alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[9] = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end