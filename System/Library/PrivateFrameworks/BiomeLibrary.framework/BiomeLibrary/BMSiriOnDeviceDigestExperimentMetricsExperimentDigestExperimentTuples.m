@interface BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples)initWithLaunchTimeInMs:(id)a3 endpointDelayInMs:(id)a4 siriResponseTimeInMs:(id)a5 timeToUufrInMs:(id)a6 timeToFirstWordInMs:(id)a7;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_endpointDelayInMsJSONArray;
- (id)_launchTimeInMsJSONArray;
- (id)_siriResponseTimeInMsJSONArray;
- (id)_timeToFirstWordInMsJSONArray;
- (id)_timeToUufrInMsJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self launchTimeInMs];
    v7 = [v5 launchTimeInMs];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self launchTimeInMs];
      v10 = [v5 launchTimeInMs];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    v13 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self endpointDelayInMs];
    v14 = [v5 endpointDelayInMs];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self endpointDelayInMs];
      v17 = [v5 endpointDelayInMs];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    v19 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self siriResponseTimeInMs];
    v20 = [v5 siriResponseTimeInMs];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self siriResponseTimeInMs];
      v23 = [v5 siriResponseTimeInMs];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_17;
      }
    }

    v25 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self timeToUufrInMs];
    v26 = [v5 timeToUufrInMs];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self timeToUufrInMs];
      v29 = [v5 timeToUufrInMs];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
LABEL_17:
        v12 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    v31 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self timeToFirstWordInMs];
    v32 = [v5 timeToFirstWordInMs];
    if (v31 == v32)
    {
      v12 = 1;
    }

    else
    {
      v33 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self timeToFirstWordInMs];
      v34 = [v5 timeToFirstWordInMs];
      v12 = [v33 isEqual:v34];
    }

    goto LABEL_23;
  }

  v12 = 0;
LABEL_24:

  return v12;
}

- (id)jsonDictionary
{
  v23[5] = *MEMORY[0x1E69E9840];
  v3 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self _launchTimeInMsJSONArray];
  v4 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self _endpointDelayInMsJSONArray];
  v5 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self _siriResponseTimeInMsJSONArray];
  v6 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self _timeToUufrInMsJSONArray];
  v7 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self _timeToFirstWordInMsJSONArray];
  v18 = @"launchTimeInMs";
  v8 = v3;
  if (!v3)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v16 = v8;
  v23[0] = v8;
  v19 = @"endpointDelayInMs";
  v9 = v4;
  if (!v4)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = v9;
  v20 = @"siriResponseTimeInMs";
  v10 = v5;
  if (!v5)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = v10;
  v21 = @"timeToUufrInMs";
  v11 = v6;
  if (!v6)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v11;
  v22 = @"timeToFirstWordInMs";
  v12 = v7;
  if (!v7)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v18 count:{5, v16}];
  if (v7)
  {
    if (v6)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (v6)
    {
LABEL_13:
      if (v5)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  if (v5)
  {
LABEL_14:
    if (v4)
    {
      goto LABEL_15;
    }

LABEL_22:

    if (v3)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_21:

  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (v3)
  {
    goto LABEL_16;
  }

LABEL_23:

LABEL_16:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_timeToFirstWordInMsJSONArray
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self timeToFirstWordInMs];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        [v9 doubleValue];
        if (fabs(v10) == INFINITY)
        {
          v11 = [MEMORY[0x1E695DFB0] null];
          [v3 addObject:v11];
        }

        else
        {
          [v9 doubleValue];
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_timeToUufrInMsJSONArray
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self timeToUufrInMs];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        [v9 doubleValue];
        if (fabs(v10) == INFINITY)
        {
          v11 = [MEMORY[0x1E695DFB0] null];
          [v3 addObject:v11];
        }

        else
        {
          [v9 doubleValue];
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_siriResponseTimeInMsJSONArray
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self siriResponseTimeInMs];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        [v9 doubleValue];
        if (fabs(v10) == INFINITY)
        {
          v11 = [MEMORY[0x1E695DFB0] null];
          [v3 addObject:v11];
        }

        else
        {
          [v9 doubleValue];
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_endpointDelayInMsJSONArray
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self endpointDelayInMs];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        [v9 doubleValue];
        if (fabs(v10) == INFINITY)
        {
          v11 = [MEMORY[0x1E695DFB0] null];
          [v3 addObject:v11];
        }

        else
        {
          [v9 doubleValue];
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_launchTimeInMsJSONArray
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self launchTimeInMs];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        [v9 doubleValue];
        if (fabs(v10) == INFINITY)
        {
          v11 = [MEMORY[0x1E695DFB0] null];
          [v3 addObject:v11];
        }

        else
        {
          [v9 doubleValue];
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v175[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"launchTimeInMs"];
  v7 = [MEMORY[0x1E695DFB0] null];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v119 = self;

    v6 = 0;
  }

  else
  {
    if (v6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v34 = objc_alloc(MEMORY[0x1E696ABC0]);
          v35 = *MEMORY[0x1E698F240];
          v174 = *MEMORY[0x1E696A578];
          v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"launchTimeInMs"];
          v175[0] = v9;
          v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v175 forKeys:&v174 count:1];
          v26 = 0;
          *a4 = [v34 initWithDomain:v35 code:2 userInfo:v15];
          goto LABEL_118;
        }

        v26 = 0;
        goto LABEL_119;
      }
    }

    v119 = self;
  }

  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v6 = v6;
  v10 = [v6 countByEnumeratingWithState:&v137 objects:v173 count:16];
  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = v10;
  v12 = *v138;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v138 != v12)
      {
        objc_enumerationMutation(v6);
      }

      v14 = *(*(&v137 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = a4;
        if (a4)
        {
          v19 = objc_alloc(MEMORY[0x1E696ABC0]);
          v20 = *MEMORY[0x1E698F240];
          v171 = *MEMORY[0x1E696A578];
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"launchTimeInMs"];
          v172 = v21;
          v22 = MEMORY[0x1E695DF20];
          v23 = &v172;
          v24 = &v171;
LABEL_21:
          v25 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:1];
          self = v119;
          v26 = 0;
          *v18 = [v19 initWithDomain:v20 code:2 userInfo:v25];
          v15 = v6;
          goto LABEL_117;
        }

LABEL_22:
        v26 = 0;
        v15 = v6;
        self = v119;
        goto LABEL_118;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v18 = a4;
        if (a4)
        {
          v19 = objc_alloc(MEMORY[0x1E696ABC0]);
          v20 = *MEMORY[0x1E698F240];
          v169 = *MEMORY[0x1E696A578];
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"launchTimeInMs"];
          v170 = v21;
          v22 = MEMORY[0x1E695DF20];
          v23 = &v170;
          v24 = &v169;
          goto LABEL_21;
        }

        goto LABEL_22;
      }

      [v9 addObject:v14];
    }

    v11 = [v6 countByEnumeratingWithState:&v137 objects:v173 count:16];
  }

  while (v11);
LABEL_15:

  v15 = [v5 objectForKeyedSubscript:@"endpointDelayInMs"];
  v16 = [MEMORY[0x1E695DFB0] null];
  v17 = [v15 isEqual:v16];

  v117 = v5;
  if (v17)
  {

    v15 = 0;
LABEL_25:
    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v15, "count")}];
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    v15 = v15;
    v27 = [v15 countByEnumeratingWithState:&v133 objects:v166 count:16];
    if (!v27)
    {
      goto LABEL_34;
    }

    v28 = v27;
    v29 = *v134;
    while (1)
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v134 != v29)
        {
          objc_enumerationMutation(v15);
        }

        v31 = *(*(&v133 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v36 = a4;
          if (a4)
          {
            v37 = objc_alloc(MEMORY[0x1E696ABC0]);
            v38 = *MEMORY[0x1E698F240];
            v164 = *MEMORY[0x1E696A578];
            v118 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"endpointDelayInMs"];
            v165 = v118;
            v39 = MEMORY[0x1E695DF20];
            v40 = &v165;
            v41 = &v164;
LABEL_42:
            v42 = [v39 dictionaryWithObjects:v40 forKeys:v41 count:1];
            self = v119;
            v26 = 0;
            *v36 = [v37 initWithDomain:v38 code:2 userInfo:v42];
            v25 = v15;
            v5 = v117;
            goto LABEL_116;
          }

LABEL_43:
          v26 = 0;
          v25 = v15;
          goto LABEL_44;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v36 = a4;
          if (a4)
          {
            v37 = objc_alloc(MEMORY[0x1E696ABC0]);
            v38 = *MEMORY[0x1E698F240];
            v162 = *MEMORY[0x1E696A578];
            v118 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"endpointDelayInMs"];
            v163 = v118;
            v39 = MEMORY[0x1E695DF20];
            v40 = &v163;
            v41 = &v162;
            goto LABEL_42;
          }

          goto LABEL_43;
        }

        [v21 addObject:v31];
      }

      v28 = [v15 countByEnumeratingWithState:&v133 objects:v166 count:16];
      if (!v28)
      {
LABEL_34:

        v25 = [v5 objectForKeyedSubscript:@"siriResponseTimeInMs"];
        v32 = [MEMORY[0x1E695DFB0] null];
        v33 = [v25 isEqual:v32];

        if (v33)
        {

          v25 = 0;
LABEL_48:
          v118 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v25, "count")}];
          v129 = 0u;
          v130 = 0u;
          v131 = 0u;
          v132 = 0u;
          v25 = v25;
          v43 = [v25 countByEnumeratingWithState:&v129 objects:v159 count:16];
          v113 = v21;
          if (!v43)
          {
            goto LABEL_57;
          }

          v44 = v43;
          v45 = *v130;
          while (1)
          {
            v46 = v25;
            for (k = 0; k != v44; ++k)
            {
              if (*v130 != v45)
              {
                objc_enumerationMutation(v46);
              }

              v48 = *(*(&v129 + 1) + 8 * k);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v57 = a4;
                if (a4)
                {
                  v58 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v59 = *MEMORY[0x1E698F240];
                  v157 = *MEMORY[0x1E696A578];
                  v116 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"siriResponseTimeInMs"];
                  v158 = v116;
                  v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v158 forKeys:&v157 count:1];
                  v61 = v58;
                  v62 = v59;
LABEL_65:
                  v65 = v60;
                  v5 = v117;
                  v25 = v46;
                  v26 = 0;
                  *v57 = [v61 initWithDomain:v62 code:2 userInfo:?];
                  v42 = v46;
                  self = v119;
                  goto LABEL_66;
                }

LABEL_67:
                v26 = 0;
                v25 = v46;
                v42 = v46;
                v5 = v117;
                self = v119;
                v21 = v113;
                goto LABEL_116;
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v57 = a4;
                if (a4)
                {
                  v63 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v64 = *MEMORY[0x1E698F240];
                  v155 = *MEMORY[0x1E696A578];
                  v116 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"siriResponseTimeInMs"];
                  v156 = v116;
                  v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v156 forKeys:&v155 count:1];
                  v61 = v63;
                  v62 = v64;
                  goto LABEL_65;
                }

                goto LABEL_67;
              }

              [v118 addObject:v48];
            }

            v25 = v46;
            v44 = [v46 countByEnumeratingWithState:&v129 objects:v159 count:16];
            v21 = v113;
            if (!v44)
            {
LABEL_57:

              v5 = v117;
              v42 = [v117 objectForKeyedSubscript:@"timeToUufrInMs"];
              v49 = [MEMORY[0x1E695DFB0] null];
              v50 = [v42 isEqual:v49];

              if (v50)
              {

                v42 = 0;
LABEL_71:
                v116 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v42, "count")}];
                v125 = 0u;
                v126 = 0u;
                v127 = 0u;
                v128 = 0u;
                obj = v42;
                v66 = [obj countByEnumeratingWithState:&v125 objects:v152 count:16];
                if (!v66)
                {
                  goto LABEL_80;
                }

                v67 = v66;
                v68 = *v126;
                while (1)
                {
                  v69 = v25;
                  for (m = 0; m != v67; ++m)
                  {
                    if (*v126 != v68)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v71 = *(*(&v125 + 1) + 8 * m);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v77 = a4;
                      if (a4)
                      {
                        v78 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v79 = *MEMORY[0x1E698F240];
                        v150 = *MEMORY[0x1E696A578];
                        v111 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"timeToUufrInMs"];
                        v151 = v111;
                        v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v151 forKeys:&v150 count:1];
                        v81 = v78;
                        v82 = v79;
LABEL_89:
                        v25 = v69;
                        v42 = obj;
                        *v77 = [v81 initWithDomain:v82 code:2 userInfo:v80];

                        v26 = 0;
                        v65 = obj;
                        v5 = v117;
                        self = v119;
                        v21 = v113;
                        goto LABEL_114;
                      }

LABEL_90:
                      v26 = 0;
                      v42 = obj;
                      v65 = obj;
                      v5 = v117;
                      self = v119;
                      v25 = v69;
LABEL_66:
                      v21 = v113;
                      goto LABEL_115;
                    }

                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      v77 = a4;
                      if (a4)
                      {
                        v83 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v84 = *MEMORY[0x1E698F240];
                        v148 = *MEMORY[0x1E696A578];
                        v111 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"timeToUufrInMs"];
                        v149 = v111;
                        v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v149 forKeys:&v148 count:1];
                        v81 = v83;
                        v82 = v84;
                        goto LABEL_89;
                      }

                      goto LABEL_90;
                    }

                    [v116 addObject:v71];
                  }

                  v67 = [obj countByEnumeratingWithState:&v125 objects:v152 count:16];
                  v5 = v117;
                  v25 = v69;
                  v21 = v113;
                  if (!v67)
                  {
LABEL_80:
                    v42 = obj;

                    v72 = [v5 objectForKeyedSubscript:@"timeToFirstWordInMs"];
                    v73 = [MEMORY[0x1E695DFB0] null];
                    v109 = v72;
                    LODWORD(v72) = [v72 isEqual:v73];

                    if (v72)
                    {

                      goto LABEL_95;
                    }

                    if (v109)
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (a4)
                        {
                          v104 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v105 = *MEMORY[0x1E698F240];
                          v146 = *MEMORY[0x1E696A578];
                          v112 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"timeToFirstWordInMs"];
                          v147 = v112;
                          [MEMORY[0x1E695DF20] dictionaryWithObjects:&v147 forKeys:&v146 count:1];
                          v107 = v106 = v5;
                          *a4 = [v104 initWithDomain:v105 code:2 userInfo:v107];
                          v21 = v113;

                          v5 = v106;
                          v26 = 0;
                          self = v119;
                          v65 = v109;
                        }

                        else
                        {
                          v26 = 0;
                          self = v119;
                          v65 = v109;
                        }

                        goto LABEL_115;
                      }

                      v85 = v109;
                    }

                    else
                    {
LABEL_95:
                      v85 = 0;
                    }

                    v111 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v85, "count")}];
                    v121 = 0u;
                    v122 = 0u;
                    v123 = 0u;
                    v124 = 0u;
                    v110 = v85;
                    v86 = [v110 countByEnumeratingWithState:&v121 objects:v145 count:16];
                    if (!v86)
                    {
                      goto LABEL_105;
                    }

                    v87 = v86;
                    v88 = *v122;
LABEL_98:
                    v89 = v25;
                    v90 = 0;
                    while (1)
                    {
                      if (*v122 != v88)
                      {
                        objc_enumerationMutation(v110);
                      }

                      v91 = *(*(&v121 + 1) + 8 * v90);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        break;
                      }

                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        v95 = a4;
                        v25 = v89;
                        v21 = v113;
                        v42 = obj;
                        if (a4)
                        {
                          v108 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v96 = *MEMORY[0x1E698F240];
                          v141 = *MEMORY[0x1E696A578];
                          v97 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"timeToFirstWordInMs"];
                          v142 = v97;
                          v98 = MEMORY[0x1E695DF20];
                          v99 = &v142;
                          v100 = &v141;
LABEL_112:
                          v101 = [v98 dictionaryWithObjects:v99 forKeys:v100 count:1];
                          *v95 = [v108 initWithDomain:v96 code:2 userInfo:v101];
                        }

                        goto LABEL_113;
                      }

                      [v111 addObject:v91];
                      if (v87 == ++v90)
                      {
                        v87 = [v110 countByEnumeratingWithState:&v121 objects:v145 count:16];
                        v5 = v117;
                        v25 = v89;
                        v21 = v113;
                        if (v87)
                        {
                          goto LABEL_98;
                        }

LABEL_105:
                        v65 = v110;

                        self = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)v119 initWithLaunchTimeInMs:v9 endpointDelayInMs:v21 siriResponseTimeInMs:v118 timeToUufrInMs:v116 timeToFirstWordInMs:v111];
                        v26 = self;
                        v42 = obj;
LABEL_114:

LABEL_115:
LABEL_116:

LABEL_117:
                        goto LABEL_118;
                      }
                    }

                    v95 = a4;
                    v25 = v89;
                    v21 = v113;
                    v42 = obj;
                    if (a4)
                    {
                      v108 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v96 = *MEMORY[0x1E698F240];
                      v143 = *MEMORY[0x1E696A578];
                      v97 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"timeToFirstWordInMs"];
                      v144 = v97;
                      v98 = MEMORY[0x1E695DF20];
                      v99 = &v144;
                      v100 = &v143;
                      goto LABEL_112;
                    }

LABEL_113:
                    v65 = v110;

                    v26 = 0;
                    v5 = v117;
                    self = v119;
                    goto LABEL_114;
                  }
                }
              }

              if (!v42)
              {
                goto LABEL_71;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                goto LABEL_71;
              }

              if (a4)
              {
                obja = objc_alloc(MEMORY[0x1E696ABC0]);
                v92 = *MEMORY[0x1E698F240];
                v153 = *MEMORY[0x1E696A578];
                v116 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"timeToUufrInMs"];
                v154 = v116;
                v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v154 forKeys:&v153 count:1];
                v94 = [obja initWithDomain:v92 code:2 userInfo:v93];
                v26 = 0;
                *a4 = v94;
                v65 = v93;
                self = v119;
                goto LABEL_115;
              }

              v26 = 0;
LABEL_84:
              self = v119;
              goto LABEL_116;
            }
          }
        }

        if (!v25)
        {
          goto LABEL_48;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_48;
        }

        if (a4)
        {
          v74 = objc_alloc(MEMORY[0x1E696ABC0]);
          v75 = *MEMORY[0x1E698F240];
          v160 = *MEMORY[0x1E696A578];
          v118 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"siriResponseTimeInMs"];
          v161 = v118;
          v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v161 forKeys:&v160 count:1];
          v76 = [v74 initWithDomain:v75 code:2 userInfo:v42];
          v26 = 0;
          *a4 = v76;
          goto LABEL_84;
        }

        v26 = 0;
LABEL_44:
        self = v119;
        goto LABEL_117;
      }
    }
  }

  if (!v15)
  {
    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_25;
  }

  self = v119;
  if (a4)
  {
    v51 = objc_alloc(MEMORY[0x1E696ABC0]);
    v52 = v5;
    v53 = *MEMORY[0x1E698F240];
    v167 = *MEMORY[0x1E696A578];
    v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"endpointDelayInMs"];
    v168 = v54;
    v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v168 forKeys:&v167 count:1];
    v56 = v53;
    v5 = v52;
    v26 = 0;
    *a4 = [v51 initWithDomain:v56 code:2 userInfo:v55];
    v25 = v55;
    v21 = v54;
    goto LABEL_117;
  }

  v26 = 0;
LABEL_118:

LABEL_119:
  v102 = *MEMORY[0x1E69E9840];
  return v26;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v5 = self->_launchTimeInMs;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v48;
    do
    {
      v9 = 0;
      do
      {
        if (*v48 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v47 + 1) + 8 * v9) floatValue];
        PBDataWriterWriteFloatField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v7);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = self->_endpointDelayInMs;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v43 objects:v54 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v44;
    do
    {
      v14 = 0;
      do
      {
        if (*v44 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v43 + 1) + 8 * v14) floatValue];
        PBDataWriterWriteFloatField();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v43 objects:v54 count:16];
    }

    while (v12);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v15 = self->_siriResponseTimeInMs;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v39 objects:v53 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v40;
    do
    {
      v19 = 0;
      do
      {
        if (*v40 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v39 + 1) + 8 * v19) floatValue];
        PBDataWriterWriteFloatField();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v39 objects:v53 count:16];
    }

    while (v17);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v20 = self->_timeToUufrInMs;
  v21 = [(NSArray *)v20 countByEnumeratingWithState:&v35 objects:v52 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v36;
    do
    {
      v24 = 0;
      do
      {
        if (*v36 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v35 + 1) + 8 * v24) floatValue];
        PBDataWriterWriteFloatField();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSArray *)v20 countByEnumeratingWithState:&v35 objects:v52 count:16];
    }

    while (v22);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v25 = self->_timeToFirstWordInMs;
  v26 = [(NSArray *)v25 countByEnumeratingWithState:&v31 objects:v51 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v32;
    do
    {
      v29 = 0;
      do
      {
        if (*v32 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [*(*(&v31 + 1) + 8 * v29) floatValue];
        PBDataWriterWriteFloatField();
        ++v29;
      }

      while (v27 != v29);
      v27 = [(NSArray *)v25 countByEnumeratingWithState:&v31 objects:v51 count:16];
    }

    while (v27);
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v66.receiver = self;
  v66.super_class = BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples;
  v5 = [(BMEventBase *)&v66 init];
  if (!v5)
  {
LABEL_59:
    v63 = v5;
    goto LABEL_62;
  }

  v65 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  while (1)
  {
    v10 = [v4 position];
    if (v10 >= [v4 length] || (objc_msgSend(v4, "hasError") & 1) != 0)
    {
      break;
    }

    v11 = 0;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      LOBYTE(v67) = 0;
      v14 = [v4 position] + 1;
      if (v14 >= [v4 position] && (v15 = objc_msgSend(v4, "position") + 1, v15 <= objc_msgSend(v4, "length")))
      {
        v16 = [v4 data];
        [v16 getBytes:&v67 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
      }

      v13 |= (v67 & 0x7F) << v11;
      if ((v67 & 0x80) == 0)
      {
        break;
      }

      v11 += 7;
      if (v12++ >= 9)
      {
        v18 = 0;
        goto LABEL_17;
      }
    }

    v18 = [v4 hasError] ? 0 : v13;
LABEL_17:
    if (([v4 hasError] & 1) != 0 || (v18 & 7) == 4)
    {
      break;
    }

    v19 = v18 >> 3;
    if ((v18 >> 3) <= 2)
    {
      if (v19 == 1)
      {
        v36 = MEMORY[0x1E696AD98];
        v67 = 0;
        v37 = [v4 position] + 4;
        if (v37 >= [v4 position] && (v38 = objc_msgSend(v4, "position") + 4, v38 <= objc_msgSend(v4, "length")))
        {
          v46 = [v4 data];
          [v46 getBytes:&v67 range:{objc_msgSend(v4, "position"), 4}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
        }

        else
        {
          [v4 _setError];
        }

        LODWORD(v39) = v67;
        v47 = [v36 numberWithFloat:v39];
        if (!v47)
        {
LABEL_60:

          goto LABEL_61;
        }

        v42 = v47;
        v43 = v65;
      }

      else
      {
        if (v19 != 2)
        {
          goto LABEL_40;
        }

        v24 = MEMORY[0x1E696AD98];
        v67 = 0;
        v25 = [v4 position] + 4;
        if (v25 >= [v4 position] && (v26 = objc_msgSend(v4, "position") + 4, v26 <= objc_msgSend(v4, "length")))
        {
          v50 = [v4 data];
          [v50 getBytes:&v67 range:{objc_msgSend(v4, "position"), 4}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
        }

        else
        {
          [v4 _setError];
        }

        LODWORD(v27) = v67;
        v51 = [v24 numberWithFloat:v27];
        if (!v51)
        {
          goto LABEL_60;
        }

        v42 = v51;
        v43 = v6;
      }

LABEL_57:
      [v43 addObject:v42];
    }

    else
    {
      switch(v19)
      {
        case 3:
          v28 = MEMORY[0x1E696AD98];
          v67 = 0;
          v29 = [v4 position] + 4;
          if (v29 >= [v4 position] && (v30 = objc_msgSend(v4, "position") + 4, v30 <= objc_msgSend(v4, "length")))
          {
            v40 = [v4 data];
            [v40 getBytes:&v67 range:{objc_msgSend(v4, "position"), 4}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
          }

          else
          {
            [v4 _setError];
          }

          LODWORD(v31) = v67;
          v41 = [v28 numberWithFloat:v31];
          if (!v41)
          {
            goto LABEL_60;
          }

          v42 = v41;
          v43 = v7;
          goto LABEL_57;
        case 4:
          v32 = MEMORY[0x1E696AD98];
          v67 = 0;
          v33 = [v4 position] + 4;
          if (v33 >= [v4 position] && (v34 = objc_msgSend(v4, "position") + 4, v34 <= objc_msgSend(v4, "length")))
          {
            v44 = [v4 data];
            [v44 getBytes:&v67 range:{objc_msgSend(v4, "position"), 4}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
          }

          else
          {
            [v4 _setError];
          }

          LODWORD(v35) = v67;
          v45 = [v32 numberWithFloat:v35];
          if (!v45)
          {
            goto LABEL_60;
          }

          v42 = v45;
          v43 = v8;
          goto LABEL_57;
        case 5:
          v20 = MEMORY[0x1E696AD98];
          v67 = 0;
          v21 = [v4 position] + 4;
          if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 4, v22 <= objc_msgSend(v4, "length")))
          {
            v48 = [v4 data];
            [v48 getBytes:&v67 range:{objc_msgSend(v4, "position"), 4}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
          }

          else
          {
            [v4 _setError];
          }

          LODWORD(v23) = v67;
          v49 = [v20 numberWithFloat:v23];
          if (!v49)
          {
            goto LABEL_60;
          }

          v42 = v49;
          v43 = v9;
          goto LABEL_57;
      }

LABEL_40:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_60;
      }
    }
  }

  v52 = [v65 copy];
  launchTimeInMs = v5->_launchTimeInMs;
  v5->_launchTimeInMs = v52;

  v54 = [v6 copy];
  endpointDelayInMs = v5->_endpointDelayInMs;
  v5->_endpointDelayInMs = v54;

  v56 = [v7 copy];
  siriResponseTimeInMs = v5->_siriResponseTimeInMs;
  v5->_siriResponseTimeInMs = v56;

  v58 = [v8 copy];
  timeToUufrInMs = v5->_timeToUufrInMs;
  v5->_timeToUufrInMs = v58;

  v60 = [v9 copy];
  timeToFirstWordInMs = v5->_timeToFirstWordInMs;
  v5->_timeToFirstWordInMs = v60;

  v62 = [v4 hasError];
  if ((v62 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_61:
  v63 = 0;
LABEL_62:

  return v63;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self launchTimeInMs];
  v5 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self endpointDelayInMs];
  v6 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self siriResponseTimeInMs];
  v7 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self timeToUufrInMs];
  v8 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self timeToFirstWordInMs];
  v9 = [v3 initWithFormat:@"BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples with launchTimeInMs: %@, endpointDelayInMs: %@, siriResponseTimeInMs: %@, timeToUufrInMs: %@, timeToFirstWordInMs: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples)initWithLaunchTimeInMs:(id)a3 endpointDelayInMs:(id)a4 siriResponseTimeInMs:(id)a5 timeToUufrInMs:(id)a6 timeToFirstWordInMs:(id)a7
{
  v19 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_launchTimeInMs, a3);
    objc_storeStrong(&v17->_endpointDelayInMs, a4);
    objc_storeStrong(&v17->_siriResponseTimeInMs, a5);
    objc_storeStrong(&v17->_timeToUufrInMs, a6);
    objc_storeStrong(&v17->_timeToFirstWordInMs, a7);
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"launchTimeInMs" number:1 type:1 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"endpointDelayInMs" number:2 type:1 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"siriResponseTimeInMs" number:3 type:1 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeToUufrInMs" number:4 type:1 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeToFirstWordInMs" number:5 type:1 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"launchTimeInMs_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_289];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"endpointDelayInMs_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_291];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"siriResponseTimeInMs_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_293];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"timeToUufrInMs_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_295_54277];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"timeToFirstWordInMs_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_297];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __80__BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples_columns__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _timeToFirstWordInMsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __80__BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _timeToUufrInMsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __80__BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _siriResponseTimeInMsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __80__BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _endpointDelayInMsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __80__BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _launchTimeInMsJSONArray];
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

    v8 = [[BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end