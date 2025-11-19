@interface BMProactiveHarvestingPhotosKnowledgeGraphEnrichment
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMProactiveHarvestingPhotosKnowledgeGraphEnrichment)initWithAbsoluteTimestamp:(id)a3 topics:(id)a4 entities:(id)a5 locations:(id)a6 uniqueID:(id)a7 contentProtection:(id)a8 personaId:(id)a9;
- (BMProactiveHarvestingPhotosKnowledgeGraphEnrichment)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)_entitiesJSONArray;
- (id)_locationsJSONArray;
- (id)_topicsJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMProactiveHarvestingPhotosKnowledgeGraphEnrichment

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self absoluteTimestamp];
    v7 = [v5 absoluteTimestamp];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self absoluteTimestamp];
      v10 = [v5 absoluteTimestamp];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_25;
      }
    }

    v13 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self topics];
    v14 = [v5 topics];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self topics];
      v17 = [v5 topics];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_25;
      }
    }

    v19 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self entities];
    v20 = [v5 entities];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self entities];
      v23 = [v5 entities];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_25;
      }
    }

    v25 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self locations];
    v26 = [v5 locations];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self locations];
      v29 = [v5 locations];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_25;
      }
    }

    v31 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self uniqueID];
    v32 = [v5 uniqueID];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self uniqueID];
      v35 = [v5 uniqueID];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_25;
      }
    }

    v37 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self contentProtection];
    v38 = [v5 contentProtection];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self contentProtection];
      v41 = [v5 contentProtection];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
LABEL_25:
        v12 = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    v44 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self personaId];
    v45 = [v5 personaId];
    if (v44 == v45)
    {
      v12 = 1;
    }

    else
    {
      v46 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self personaId];
      v47 = [v5 personaId];
      v12 = [v46 isEqual:v47];
    }

    goto LABEL_26;
  }

  v12 = 0;
LABEL_27:

  return v12;
}

- (NSDate)absoluteTimestamp
{
  if (self->_hasRaw_absoluteTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_absoluteTimestamp];
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
  v29[7] = *MEMORY[0x1E69E9840];
  v3 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self absoluteTimestamp];
  if (v3)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self absoluteTimestamp];
    [v5 timeIntervalSinceReferenceDate];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self _topicsJSONArray];
  v8 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self _entitiesJSONArray];
  v9 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self _locationsJSONArray];
  v10 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self uniqueID];
  v11 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self contentProtection];
  v12 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self personaId];
  v28[0] = @"absoluteTimestamp";
  v13 = v6;
  if (!v6)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v13;
  v29[0] = v13;
  v28[1] = @"topics";
  v14 = v7;
  if (!v7)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v14;
  v29[1] = v14;
  v28[2] = @"entities";
  v15 = v8;
  if (!v8)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v6;
  v23 = v15;
  v29[2] = v15;
  v28[3] = @"locations";
  v16 = v9;
  if (!v9)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v7;
  v29[3] = v16;
  v28[4] = @"uniqueID";
  v17 = v10;
  if (!v10)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v29[4] = v17;
  v28[5] = @"contentProtection";
  v18 = v11;
  if (!v11)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v29[5] = v18;
  v28[6] = @"personaId";
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
      goto LABEL_20;
    }

LABEL_30:

    if (v10)
    {
      goto LABEL_21;
    }

    goto LABEL_31;
  }

  if (!v11)
  {
    goto LABEL_30;
  }

LABEL_20:
  if (v10)
  {
    goto LABEL_21;
  }

LABEL_31:

LABEL_21:
  if (!v9)
  {
  }

  if (v8)
  {
    if (v26)
    {
      goto LABEL_25;
    }

LABEL_33:

    if (v27)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

  if (!v26)
  {
    goto LABEL_33;
  }

LABEL_25:
  if (v27)
  {
    goto LABEL_26;
  }

LABEL_34:

LABEL_26:
  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)_locationsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self locations];
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

- (id)_entitiesJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self entities];
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

- (id)_topicsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self topics];
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

- (BMProactiveHarvestingPhotosKnowledgeGraphEnrichment)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v155[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"absoluteTimestamp"];
  v106 = v6;
  if (!v6 || (v7 = v6, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v105 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = MEMORY[0x1E695DF00];
    v9 = v7;
    v10 = [v8 alloc];
    [v9 doubleValue];
    v12 = v11;

    v13 = [v10 initWithTimeIntervalSinceReferenceDate:v12];
LABEL_6:
    v105 = v13;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = objc_alloc_init(MEMORY[0x1E696AC80]);
    v105 = [v14 dateFromString:v7];

LABEL_9:
    v15 = [v5 objectForKeyedSubscript:@"topics"];
    v16 = [MEMORY[0x1E695DFB0] null];
    v17 = [v15 isEqual:v16];

    if (v17)
    {
      v102 = self;

      v15 = 0;
    }

    else
    {
      if (v15)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v33 = 0;
            v37 = v105;
            goto LABEL_124;
          }

          v49 = objc_alloc(MEMORY[0x1E696ABC0]);
          v50 = *MEMORY[0x1E698F240];
          v152 = *MEMORY[0x1E696A578];
          v110 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"topics"];
          v153 = v110;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v153 forKeys:&v152 count:1];
          v33 = 0;
          *a4 = [v49 initWithDomain:v50 code:2 userInfo:v27];
          goto LABEL_52;
        }
      }

      v102 = self;
    }

    v110 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v15, "count")}];
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    obj = v15;
    v18 = [obj countByEnumeratingWithState:&v123 objects:v151 count:16];
    if (!v18)
    {
      goto LABEL_24;
    }

    v19 = v18;
    v20 = *v124;
    v103 = v5;
LABEL_16:
    v21 = 0;
    while (1)
    {
      if (*v124 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v123 + 1) + 8 * v21);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v34 = objc_alloc(MEMORY[0x1E696ABC0]);
          v35 = *MEMORY[0x1E698F240];
          v147 = *MEMORY[0x1E696A578];
          v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"topics"];
          v148 = v23;
          v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v148 forKeys:&v147 count:1];
          v33 = 0;
          *a4 = [v34 initWithDomain:v35 code:2 userInfo:v32];
          goto LABEL_30;
        }

        goto LABEL_51;
      }

      v23 = v22;
      v24 = [BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentTopic alloc];
      v122 = 0;
      v25 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentTopic *)v24 initWithJSONDictionary:v23 error:&v122];
      v26 = v122;
      if (v26)
      {
        v32 = v26;
        self = v102;
        v5 = v103;
        if (a4)
        {
          v36 = v26;
          *a4 = v32;
        }

        v33 = 0;
        v15 = obj;
        v108 = obj;
        goto LABEL_34;
      }

      [v110 addObject:v25];

      if (v19 == ++v21)
      {
        v19 = [obj countByEnumeratingWithState:&v123 objects:v151 count:16];
        v5 = v103;
        if (!v19)
        {
LABEL_24:

          v27 = [v5 objectForKeyedSubscript:@"entities"];
          v28 = [MEMORY[0x1E695DFB0] null];
          v29 = [v27 isEqual:v28];

          if (v29)
          {

            v27 = 0;
          }

          else if (v27)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              self = v102;
              if (!a4)
              {
                v33 = 0;
                v37 = v105;
                v15 = obj;
                goto LABEL_122;
              }

              v108 = v27;
              v69 = objc_alloc(MEMORY[0x1E696ABC0]);
              v70 = *MEMORY[0x1E698F240];
              v145 = *MEMORY[0x1E696A578];
              v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"entities"];
              v146 = v23;
              v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v146 forKeys:&v145 count:1];
              v33 = 0;
              *a4 = [v69 initWithDomain:v70 code:2 userInfo:v32];
              goto LABEL_85;
            }
          }

          v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v27, "count")}];
          v118 = 0u;
          v119 = 0u;
          v120 = 0u;
          v121 = 0u;
          v108 = v27;
          v38 = [v108 countByEnumeratingWithState:&v118 objects:v144 count:16];
          if (!v38)
          {
            goto LABEL_47;
          }

          v39 = v38;
          v40 = *v119;
          v104 = v5;
LABEL_39:
          v41 = 0;
          while (1)
          {
            if (*v119 != v40)
            {
              objc_enumerationMutation(v108);
            }

            v42 = *(*(&v118 + 1) + 8 * v41);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              break;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v51 = a4;
              if (a4)
              {
                v52 = objc_alloc(MEMORY[0x1E696ABC0]);
                v53 = *MEMORY[0x1E698F240];
                v140 = *MEMORY[0x1E696A578];
                v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"entities"];
                v141 = v43;
                v54 = MEMORY[0x1E695DF20];
                v55 = &v141;
                v56 = &v140;
                goto LABEL_60;
              }

              goto LABEL_83;
            }

            v43 = v42;
            v44 = [BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity alloc];
            v117 = 0;
            v45 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity *)v44 initWithJSONDictionary:v43 error:&v117];
            v46 = v117;
            if (v46)
            {
              v57 = v46;
              v15 = obj;
              if (a4)
              {
                v58 = v46;
                *a4 = v57;
              }

              v33 = 0;
              v32 = v108;
              v5 = v104;
              goto LABEL_119;
            }

            [v23 addObject:v45];

            if (v39 == ++v41)
            {
              v39 = [v108 countByEnumeratingWithState:&v118 objects:v144 count:16];
              v5 = v104;
              if (!v39)
              {
LABEL_47:

                v32 = [v5 objectForKeyedSubscript:@"locations"];
                v47 = [MEMORY[0x1E695DFB0] null];
                v48 = [v32 isEqual:v47];

                if (v48)
                {

                  v32 = 0;
LABEL_68:
                  v43 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v32, "count")}];
                  v113 = 0u;
                  v114 = 0u;
                  v115 = 0u;
                  v116 = 0u;
                  v32 = v32;
                  v59 = [v32 countByEnumeratingWithState:&v113 objects:v137 count:16];
                  if (!v59)
                  {
                    goto LABEL_78;
                  }

                  v60 = v59;
                  v61 = *v114;
                  v104 = v5;
LABEL_70:
                  v62 = 0;
                  while (1)
                  {
                    if (*v114 != v61)
                    {
                      objc_enumerationMutation(v32);
                    }

                    v63 = *(*(&v113 + 1) + 8 * v62);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      break;
                    }

                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      v74 = a4;
                      if (a4)
                      {
                        v75 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v76 = *MEMORY[0x1E698F240];
                        v133 = *MEMORY[0x1E696A578];
                        v64 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"locations"];
                        v134 = v64;
                        v77 = MEMORY[0x1E695DF20];
                        v78 = &v134;
                        v79 = &v133;
                        goto LABEL_93;
                      }

                      goto LABEL_101;
                    }

                    v64 = v63;
                    v65 = [BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation alloc];
                    v112 = 0;
                    v66 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation *)v65 initWithJSONDictionary:v64 error:&v112];
                    v67 = v112;
                    if (v67)
                    {
                      v80 = v67;
                      if (a4)
                      {
                        v82 = v67;
                        *a4 = v80;
                      }

                      v33 = 0;
                      goto LABEL_97;
                    }

                    [v43 addObject:v66];

                    if (v60 == ++v62)
                    {
                      v60 = [v32 countByEnumeratingWithState:&v113 objects:v137 count:16];
                      v5 = v104;
                      if (v60)
                      {
                        goto LABEL_70;
                      }

LABEL_78:

                      v64 = [v5 objectForKeyedSubscript:@"uniqueID"];
                      if (!v64)
                      {
                        v57 = 0;
                        v68 = a4;
                        goto LABEL_105;
                      }

                      objc_opt_class();
                      v68 = a4;
                      if (objc_opt_isKindOfClass())
                      {
                        v57 = 0;
                        goto LABEL_105;
                      }

                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (a4)
                        {
                          v90 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v91 = *MEMORY[0x1E698F240];
                          v131 = *MEMORY[0x1E696A578];
                          v80 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"uniqueID"];
                          v132 = v80;
                          v101 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
                          v92 = [v90 initWithDomain:v91 code:2 userInfo:?];
                          v57 = 0;
                          v33 = 0;
                          *a4 = v92;
                          goto LABEL_138;
                        }

                        v57 = 0;
                        v33 = 0;
                        v15 = obj;
                        goto LABEL_118;
                      }

                      v57 = v64;
LABEL_105:
                      v80 = [v5 objectForKeyedSubscript:@"contentProtection"];
                      v101 = v80;
                      if (v80)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v80 = 0;
                          goto LABEL_110;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v80 = v80;
                          goto LABEL_110;
                        }

                        if (v68)
                        {
                          v97 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v95 = *MEMORY[0x1E698F240];
                          v129 = *MEMORY[0x1E696A578];
                          v99 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contentProtection"];
                          v130 = v99;
                          v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
                          v80 = 0;
                          v33 = 0;
                          *v68 = [v97 initWithDomain:v95 code:2 userInfo:v93];
                          v87 = v93;
                          v15 = obj;
                          goto LABEL_115;
                        }

                        v80 = 0;
                        v33 = 0;
LABEL_138:
                        v15 = obj;
LABEL_116:

LABEL_117:
LABEL_118:

LABEL_119:
                        v37 = v105;
LABEL_120:

                        self = v102;
LABEL_121:

                        v27 = v108;
LABEL_122:

LABEL_124:
                        v7 = v106;
                        goto LABEL_125;
                      }

LABEL_110:
                      v86 = [v5 objectForKeyedSubscript:@"personaId"];
                      v87 = v86;
                      if (v86)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v86 = 0;
                          goto LABEL_113;
                        }

                        objc_opt_class();
                        v15 = obj;
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          if (a4)
                          {
                            v100 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v98 = *MEMORY[0x1E698F240];
                            v127 = *MEMORY[0x1E696A578];
                            v96 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"personaId"];
                            v128 = v96;
                            v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
                            *a4 = [v100 initWithDomain:v98 code:2 userInfo:v94];
                          }

                          v99 = 0;
                          v33 = 0;
LABEL_115:

                          goto LABEL_116;
                        }

                        v86 = v87;
                      }

                      else
                      {
LABEL_113:
                        v15 = obj;
                      }

                      v99 = v86;
                      v33 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)v102 initWithAbsoluteTimestamp:v105 topics:v110 entities:v23 locations:v43 uniqueID:v57 contentProtection:v80 personaId:v86];
                      v102 = v33;
                      goto LABEL_115;
                    }
                  }

                  v74 = a4;
                  if (a4)
                  {
                    v75 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v76 = *MEMORY[0x1E698F240];
                    v135 = *MEMORY[0x1E696A578];
                    v64 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"locations"];
                    v136 = v64;
                    v77 = MEMORY[0x1E695DF20];
                    v78 = &v136;
                    v79 = &v135;
LABEL_93:
                    v80 = [v77 dictionaryWithObjects:v78 forKeys:v79 count:1];
                    v81 = [v75 initWithDomain:v76 code:2 userInfo:v80];
                    v33 = 0;
                    *v74 = v81;
LABEL_97:
                    v57 = v32;
                    v5 = v104;
                    v15 = obj;
                    goto LABEL_117;
                  }

LABEL_101:
                  v33 = 0;
                  v57 = v32;
LABEL_61:
                  v5 = v104;
LABEL_62:
                  v37 = v105;
                  v15 = obj;
                  goto LABEL_120;
                }

                if (!v32)
                {
                  goto LABEL_68;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  goto LABEL_68;
                }

                if (a4)
                {
                  v83 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v84 = *MEMORY[0x1E698F240];
                  v138 = *MEMORY[0x1E696A578];
                  v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"locations"];
                  v139 = v43;
                  v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
                  v85 = [v83 initWithDomain:v84 code:2 userInfo:v57];
                  v33 = 0;
                  *a4 = v85;
                  goto LABEL_62;
                }

                v33 = 0;
LABEL_84:
                self = v102;
LABEL_85:
                v37 = v105;
                v15 = obj;
                goto LABEL_121;
              }

              goto LABEL_39;
            }
          }

          v51 = a4;
          if (a4)
          {
            v52 = objc_alloc(MEMORY[0x1E696ABC0]);
            v53 = *MEMORY[0x1E698F240];
            v142 = *MEMORY[0x1E696A578];
            v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"entities"];
            v143 = v43;
            v54 = MEMORY[0x1E695DF20];
            v55 = &v143;
            v56 = &v142;
LABEL_60:
            v57 = [v54 dictionaryWithObjects:v55 forKeys:v56 count:1];
            v33 = 0;
            *v51 = [v52 initWithDomain:v53 code:2 userInfo:v57];
            v32 = v108;
            goto LABEL_61;
          }

LABEL_83:
          v33 = 0;
          v32 = v108;
          v5 = v104;
          goto LABEL_84;
        }

        goto LABEL_16;
      }
    }

    if (a4)
    {
      v30 = objc_alloc(MEMORY[0x1E696ABC0]);
      v31 = *MEMORY[0x1E698F240];
      v149 = *MEMORY[0x1E696A578];
      v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"topics"];
      v150 = v23;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v150 forKeys:&v149 count:1];
      v33 = 0;
      *a4 = [v30 initWithDomain:v31 code:2 userInfo:v32];
LABEL_30:
      v15 = obj;
      v108 = obj;
      self = v102;
      v5 = v103;
LABEL_34:
      v37 = v105;
      goto LABEL_121;
    }

LABEL_51:
    v33 = 0;
    v15 = obj;
    v27 = obj;
    self = v102;
    v5 = v103;
LABEL_52:
    v37 = v105;
    goto LABEL_122;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v7;
    goto LABEL_6;
  }

  if (a4)
  {
    v71 = objc_alloc(MEMORY[0x1E696ABC0]);
    v72 = *MEMORY[0x1E698F240];
    v154 = *MEMORY[0x1E696A578];
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
    v155[0] = v15;
    v111 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v155 forKeys:&v154 count:1];
    v73 = [v71 initWithDomain:v72 code:2 userInfo:?];
    v37 = 0;
    v33 = 0;
    *a4 = v73;

    goto LABEL_124;
  }

  v37 = 0;
  v33 = 0;
LABEL_125:

  v88 = *MEMORY[0x1E69E9840];
  return v33;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = self->_topics;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    do
    {
      v10 = 0;
      do
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v34 + 1) + 8 * v10);
        v33 = 0;
        PBDataWriterPlaceMark();
        [v11 writeTo:v4];
        PBDataWriterRecallMark();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v8);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = self->_entities;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      v16 = 0;
      do
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v29 + 1) + 8 * v16);
        v33 = 0;
        PBDataWriterPlaceMark();
        [v17 writeTo:v4];
        PBDataWriterRecallMark();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v14);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = self->_locations;
  v19 = [(NSArray *)v18 countByEnumeratingWithState:&v25 objects:v38 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      v22 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v25 + 1) + 8 * v22);
        v33 = 0;
        PBDataWriterPlaceMark();
        [v23 writeTo:{v4, v25}];
        PBDataWriterRecallMark();
        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSArray *)v18 countByEnumeratingWithState:&v25 objects:v38 count:16];
    }

    while (v20);
  }

  if (self->_uniqueID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contentProtection)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_personaId)
  {
    PBDataWriterWriteStringField();
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = BMProactiveHarvestingPhotosKnowledgeGraphEnrichment;
  v5 = [(BMEventBase *)&v40 init];
  if (!v5)
  {
    goto LABEL_51;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = [v4 position];
  if (v9 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v41) = 0;
        v13 = [v4 position] + 1;
        if (v13 >= [v4 position] && (v14 = objc_msgSend(v4, "position") + 1, v14 <= objc_msgSend(v4, "length")))
        {
          v15 = [v4 data];
          [v15 getBytes:&v41 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v12 |= (LOBYTE(v41) & 0x7F) << v10;
        if ((LOBYTE(v41) & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v17 = 0;
          goto LABEL_16;
        }
      }

      v17 = [v4 hasError] ? 0 : v12;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v17 & 7) == 4)
      {
        break;
      }

      v18 = v17 >> 3;
      if ((v17 >> 3) <= 3)
      {
        switch(v18)
        {
          case 1:
            v5->_hasRaw_absoluteTimestamp = 1;
            v41 = 0.0;
            v24 = [v4 position] + 8;
            if (v24 >= [v4 position] && (v25 = objc_msgSend(v4, "position") + 8, v25 <= objc_msgSend(v4, "length")))
            {
              v29 = [v4 data];
              [v29 getBytes:&v41 range:{objc_msgSend(v4, "position"), 8}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
            }

            else
            {
              [v4 _setError];
            }

            v5->_raw_absoluteTimestamp = v41;
            goto LABEL_48;
          case 2:
            v41 = 0.0;
            v42 = 0;
            if (!PBReaderPlaceMark() || (v28 = [[BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentTopic alloc] initByReadFrom:v4]) == 0)
            {
LABEL_53:

              goto LABEL_50;
            }

            v22 = v28;
            v23 = v6;
            goto LABEL_45;
          case 3:
            v41 = 0.0;
            v42 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_53;
            }

            v21 = [[BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity alloc] initByReadFrom:v4];
            if (!v21)
            {
              goto LABEL_53;
            }

            v22 = v21;
            v23 = v7;
            goto LABEL_45;
        }
      }

      else if (v18 > 5)
      {
        if (v18 == 6)
        {
          v19 = PBReaderReadString();
          v20 = 72;
          goto LABEL_41;
        }

        if (v18 == 7)
        {
          v19 = PBReaderReadString();
          v20 = 80;
          goto LABEL_41;
        }
      }

      else
      {
        if (v18 == 4)
        {
          v41 = 0.0;
          v42 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_53;
          }

          v26 = [[BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation alloc] initByReadFrom:v4];
          if (!v26)
          {
            goto LABEL_53;
          }

          v22 = v26;
          v23 = v8;
LABEL_45:
          [v23 addObject:v22];
          PBReaderRecallMark();

          goto LABEL_48;
        }

        if (v18 == 5)
        {
          v19 = PBReaderReadString();
          v20 = 64;
LABEL_41:
          v27 = *(&v5->super.super.isa + v20);
          *(&v5->super.super.isa + v20) = v19;

          goto LABEL_48;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_53;
      }

LABEL_48:
      v30 = [v4 position];
    }

    while (v30 < [v4 length]);
  }

  v31 = [v6 copy];
  topics = v5->_topics;
  v5->_topics = v31;

  v33 = [v7 copy];
  entities = v5->_entities;
  v5->_entities = v33;

  v35 = [v8 copy];
  locations = v5->_locations;
  v5->_locations = v35;

  v37 = [v4 hasError];
  if (v37)
  {
LABEL_50:
    v38 = 0;
  }

  else
  {
LABEL_51:
    v38 = v5;
  }

  return v38;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self absoluteTimestamp];
  v5 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self topics];
  v6 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self entities];
  v7 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self locations];
  v8 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self uniqueID];
  v9 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self contentProtection];
  v10 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self personaId];
  v11 = [v3 initWithFormat:@"BMProactiveHarvestingPhotosKnowledgeGraphEnrichment with absoluteTimestamp: %@, topics: %@, entities: %@, locations: %@, uniqueID: %@, contentProtection: %@, personaId: %@", v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (BMProactiveHarvestingPhotosKnowledgeGraphEnrichment)initWithAbsoluteTimestamp:(id)a3 topics:(id)a4 entities:(id)a5 locations:(id)a6 uniqueID:(id)a7 contentProtection:(id)a8 personaId:(id)a9
{
  v15 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v16 = a8;
  v17 = a9;
  v25.receiver = self;
  v25.super_class = BMProactiveHarvestingPhotosKnowledgeGraphEnrichment;
  v18 = [(BMEventBase *)&v25 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v15)
    {
      v18->_hasRaw_absoluteTimestamp = 1;
      [v15 timeIntervalSinceReferenceDate];
    }

    else
    {
      v18->_hasRaw_absoluteTimestamp = 0;
      v19 = -1.0;
    }

    v18->_raw_absoluteTimestamp = v19;
    objc_storeStrong(&v18->_topics, a4);
    objc_storeStrong(&v18->_entities, a5);
    objc_storeStrong(&v18->_locations, a6);
    objc_storeStrong(&v18->_uniqueID, a7);
    objc_storeStrong(&v18->_contentProtection, a8);
    objc_storeStrong(&v18->_personaId, a9);
  }

  return v18;
}

+ (id)protoFields
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:1 type:0 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"topics" number:2 type:14 subMessageClass:{objc_opt_class(), v2}];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"entities" number:3 type:14 subMessageClass:objc_opt_class()];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"locations" number:4 type:14 subMessageClass:objc_opt_class()];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uniqueID" number:5 type:13 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentProtection" number:6 type:13 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"personaId" number:7 type:13 subMessageClass:0];
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)columns
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:1];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"topics_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_65059];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"entities_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_269];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"locations_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_271];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uniqueID" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentProtection" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"personaId" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v12[0] = v2;
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = v6;
  v12[5] = v7;
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id __62__BMProactiveHarvestingPhotosKnowledgeGraphEnrichment_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _locationsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __62__BMProactiveHarvestingPhotosKnowledgeGraphEnrichment_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _entitiesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __62__BMProactiveHarvestingPhotosKnowledgeGraphEnrichment_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _topicsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 2)
  {
    v4 = MEMORY[0x1E69C65B8];
    v5 = a3;
    v6 = [[v4 alloc] initWithData:v5];

    v7 = [[BMProactiveHarvestingPhotosKnowledgeGraphEnrichment alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[8] = 2;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end