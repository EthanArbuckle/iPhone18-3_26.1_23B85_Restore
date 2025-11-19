@interface BMProactiveHarvestingParsecSearch
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMProactiveHarvestingParsecSearch)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMProactiveHarvestingParsecSearch)initWithResultID:(id)a3 domainID:(id)a4 absoluteTimestamp:(id)a5 userInput:(id)a6 completedQuery:(id)a7 entities:(id)a8 uniqueID:(id)a9 contentProtection:(id)a10 personaId:(id)a11;
- (BOOL)isEqual:(id)a3;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)_entitiesJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMProactiveHarvestingParsecSearch

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMProactiveHarvestingParsecSearch *)self resultID];
    v7 = [v5 resultID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMProactiveHarvestingParsecSearch *)self resultID];
      v10 = [v5 resultID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_33;
      }
    }

    v13 = [(BMProactiveHarvestingParsecSearch *)self domainID];
    v14 = [v5 domainID];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMProactiveHarvestingParsecSearch *)self domainID];
      v17 = [v5 domainID];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_33;
      }
    }

    v19 = [(BMProactiveHarvestingParsecSearch *)self absoluteTimestamp];
    v20 = [v5 absoluteTimestamp];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMProactiveHarvestingParsecSearch *)self absoluteTimestamp];
      v23 = [v5 absoluteTimestamp];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_33;
      }
    }

    v25 = [(BMProactiveHarvestingParsecSearch *)self userInput];
    v26 = [v5 userInput];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMProactiveHarvestingParsecSearch *)self userInput];
      v29 = [v5 userInput];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_33;
      }
    }

    v31 = [(BMProactiveHarvestingParsecSearch *)self completedQuery];
    v32 = [v5 completedQuery];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMProactiveHarvestingParsecSearch *)self completedQuery];
      v35 = [v5 completedQuery];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_33;
      }
    }

    v37 = [(BMProactiveHarvestingParsecSearch *)self entities];
    v38 = [v5 entities];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMProactiveHarvestingParsecSearch *)self entities];
      v41 = [v5 entities];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
        goto LABEL_33;
      }
    }

    v43 = [(BMProactiveHarvestingParsecSearch *)self uniqueID];
    v44 = [v5 uniqueID];
    v45 = v44;
    if (v43 == v44)
    {
    }

    else
    {
      v46 = [(BMProactiveHarvestingParsecSearch *)self uniqueID];
      v47 = [v5 uniqueID];
      v48 = [v46 isEqual:v47];

      if (!v48)
      {
        goto LABEL_33;
      }
    }

    v49 = [(BMProactiveHarvestingParsecSearch *)self contentProtection];
    v50 = [v5 contentProtection];
    v51 = v50;
    if (v49 == v50)
    {
    }

    else
    {
      v52 = [(BMProactiveHarvestingParsecSearch *)self contentProtection];
      v53 = [v5 contentProtection];
      v54 = [v52 isEqual:v53];

      if (!v54)
      {
LABEL_33:
        v12 = 0;
LABEL_34:

        goto LABEL_35;
      }
    }

    v56 = [(BMProactiveHarvestingParsecSearch *)self personaId];
    v57 = [v5 personaId];
    if (v56 == v57)
    {
      v12 = 1;
    }

    else
    {
      v58 = [(BMProactiveHarvestingParsecSearch *)self personaId];
      v59 = [v5 personaId];
      v12 = [v58 isEqual:v59];
    }

    goto LABEL_34;
  }

  v12 = 0;
LABEL_35:

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
  v35[9] = *MEMORY[0x1E69E9840];
  v3 = [(BMProactiveHarvestingParsecSearch *)self resultID];
  v4 = [(BMProactiveHarvestingParsecSearch *)self domainID];
  v5 = [(BMProactiveHarvestingParsecSearch *)self absoluteTimestamp];
  if (v5)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = [(BMProactiveHarvestingParsecSearch *)self absoluteTimestamp];
    [v7 timeIntervalSinceReferenceDate];
    v8 = [v6 numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(BMProactiveHarvestingParsecSearch *)self userInput];
  v10 = [(BMProactiveHarvestingParsecSearch *)self completedQuery];
  v33 = [(BMProactiveHarvestingParsecSearch *)self _entitiesJSONArray];
  v11 = [(BMProactiveHarvestingParsecSearch *)self uniqueID];
  v12 = [(BMProactiveHarvestingParsecSearch *)self contentProtection];
  v13 = [(BMProactiveHarvestingParsecSearch *)self personaId];
  v34[0] = @"resultID";
  v14 = v3;
  if (!v3)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v14;
  v35[0] = v14;
  v34[1] = @"domainID";
  v15 = v4;
  if (!v4)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v15;
  v35[1] = v15;
  v34[2] = @"absoluteTimestamp";
  v16 = v8;
  if (!v8)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v3;
  v26 = v16;
  v35[2] = v16;
  v34[3] = @"userInput";
  v17 = v9;
  if (!v9)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v4;
  v25 = v17;
  v35[3] = v17;
  v34[4] = @"completedQuery";
  v18 = v10;
  if (!v10)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v8;
  v35[4] = v18;
  v34[5] = @"entities";
  v19 = v33;
  if (!v33)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v35[5] = v19;
  v34[6] = @"uniqueID";
  v20 = v11;
  if (!v11)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v35[6] = v20;
  v34[7] = @"contentProtection";
  v21 = v12;
  if (!v12)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v35[7] = v21;
  v34[8] = @"personaId";
  v22 = v13;
  if (!v13)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v35[8] = v22;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:9];
  if (v13)
  {
    if (v12)
    {
      goto LABEL_24;
    }

LABEL_38:

    if (v11)
    {
      goto LABEL_25;
    }

    goto LABEL_39;
  }

  if (!v12)
  {
    goto LABEL_38;
  }

LABEL_24:
  if (v11)
  {
    goto LABEL_25;
  }

LABEL_39:

LABEL_25:
  if (!v33)
  {
  }

  if (!v10)
  {
  }

  if (!v9)
  {
  }

  if (v30)
  {
    if (v31)
    {
      goto LABEL_33;
    }

LABEL_41:

    if (v32)
    {
      goto LABEL_34;
    }

    goto LABEL_42;
  }

  if (!v31)
  {
    goto LABEL_41;
  }

LABEL_33:
  if (v32)
  {
    goto LABEL_34;
  }

LABEL_42:

LABEL_34:
  v23 = *MEMORY[0x1E69E9840];

  return v29;
}

- (id)_entitiesJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMProactiveHarvestingParsecSearch *)self entities];
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

- (BMProactiveHarvestingParsecSearch)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v148[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"resultID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v118 = a4;
    a4 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v118 = a4;
    a4 = v7;
LABEL_4:
    v8 = [v6 objectForKeyedSubscript:@"domainID"];
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v116 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v116 = v8;
LABEL_7:
      v9 = [v6 objectForKeyedSubscript:@"absoluteTimestamp"];
      v117 = v9;
      if (!v9 || (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v113 = 0;
LABEL_23:
        v35 = [v6 objectForKeyedSubscript:@"userInput"];
        v114 = v35;
        if (v35 && (v36 = v35, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!v118)
            {
              v115 = 0;
              v24 = 0;
              v21 = v116;
              v31 = v113;
              goto LABEL_91;
            }

            v51 = v8;
            v52 = objc_alloc(MEMORY[0x1E696ABC0]);
            v53 = *MEMORY[0x1E698F240];
            v141 = *MEMORY[0x1E696A578];
            v54 = a4;
            v55 = objc_alloc(MEMORY[0x1E696AEC0]);
            v100 = objc_opt_class();
            v56 = v55;
            a4 = v54;
            v112 = [v56 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v100, @"userInput"];
            v142 = v112;
            v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v142 forKeys:&v141 count:1];
            v58 = v52;
            v8 = v51;
            v59 = v53;
            v37 = v57;
            v115 = 0;
            v24 = 0;
            *v118 = [v58 initWithDomain:v59 code:2 userInfo:v57];
            goto LABEL_101;
          }

          v115 = v36;
        }

        else
        {
          v115 = 0;
        }

        v37 = [v6 objectForKeyedSubscript:@"completedQuery"];
        v119 = v37;
        v110 = v7;
        if (!v37 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v109 = v8;
          v112 = 0;
          goto LABEL_29;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v109 = v8;
          v112 = v37;
LABEL_29:
          v38 = [v6 objectForKeyedSubscript:@"entities"];
          v39 = [MEMORY[0x1E695DFB0] null];
          v40 = [v38 isEqual:v39];

          v111 = self;
          if (v40)
          {
            v106 = a4;
            v108 = v6;

            v38 = 0;
          }

          else
          {
            if (v38)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!v118)
                {
                  v24 = 0;
                  v8 = v109;
                  v21 = v116;
                  v31 = v113;
                  goto LABEL_89;
                }

                v78 = objc_alloc(MEMORY[0x1E696ABC0]);
                v79 = *MEMORY[0x1E698F240];
                v137 = *MEMORY[0x1E696A578];
                v120 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"entities"];
                v138 = v120;
                v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
                v24 = 0;
                *v118 = [v78 initWithDomain:v79 code:2 userInfo:v50];
                goto LABEL_66;
              }
            }

            v106 = a4;
            v108 = v6;
          }

          v120 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v38, "count")}];
          v122 = 0u;
          v123 = 0u;
          v124 = 0u;
          v125 = 0u;
          v38 = v38;
          v41 = [v38 countByEnumeratingWithState:&v122 objects:v136 count:16];
          if (!v41)
          {
            goto LABEL_44;
          }

          v42 = v41;
          v43 = *v123;
LABEL_36:
          v44 = 0;
          while (1)
          {
            if (*v123 != v43)
            {
              objc_enumerationMutation(v38);
            }

            v45 = *(*(&v122 + 1) + 8 * v44);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              break;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v69 = v118;
              if (v118)
              {
                v70 = objc_alloc(MEMORY[0x1E696ABC0]);
                v71 = *MEMORY[0x1E698F240];
                v132 = *MEMORY[0x1E696A578];
                v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"entities"];
                v133 = v46;
                v72 = MEMORY[0x1E695DF20];
                v73 = &v133;
                v74 = &v132;
                goto LABEL_59;
              }

              goto LABEL_65;
            }

            v46 = v45;
            v47 = [BMProactiveHarvestingParsecSearchEntity alloc];
            v121 = 0;
            v48 = [(BMProactiveHarvestingParsecSearchEntity *)v47 initWithJSONDictionary:v46 error:&v121];
            v49 = v121;
            if (v49)
            {
              v75 = v49;
              if (v118)
              {
                v77 = v49;
                *v118 = v75;
              }

              v24 = 0;
              v50 = v38;
              a4 = v106;
              v6 = v108;
              v8 = v109;
              v37 = v119;
              goto LABEL_85;
            }

            [v120 addObject:v48];

            ++v44;
            v37 = v119;
            if (v42 == v44)
            {
              v42 = [v38 countByEnumeratingWithState:&v122 objects:v136 count:16];
              if (v42)
              {
                goto LABEL_36;
              }

LABEL_44:

              v6 = v108;
              v46 = [v108 objectForKeyedSubscript:@"uniqueID"];
              if (!v46)
              {
                v50 = 0;
                a4 = v106;
                goto LABEL_74;
              }

              objc_opt_class();
              a4 = v106;
              if (objc_opt_isKindOfClass())
              {
                v50 = 0;
LABEL_74:
                v80 = [v108 objectForKeyedSubscript:@"contentProtection"];
                if (v80 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v75 = v80;
                    goto LABEL_77;
                  }

                  if (v118)
                  {
                    v107 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v95 = *MEMORY[0x1E698F240];
                    v128 = *MEMORY[0x1E696A578];
                    v82 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contentProtection"];
                    v129 = v82;
                    v81 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
                    v96 = [v107 initWithDomain:v95 code:2 userInfo:v81];
                    v75 = 0;
                    v24 = 0;
                    *v118 = v96;
                    goto LABEL_81;
                  }

                  v75 = 0;
                  v24 = 0;
                }

                else
                {
                  v75 = 0;
LABEL_77:
                  v81 = [v108 objectForKeyedSubscript:@"personaId"];
                  if (!v81 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v82 = 0;
                    goto LABEL_80;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v82 = v81;
LABEL_80:
                    v24 = [(BMProactiveHarvestingParsecSearch *)v111 initWithResultID:a4 domainID:v116 absoluteTimestamp:v113 userInput:v115 completedQuery:v112 entities:v120 uniqueID:v50 contentProtection:v75 personaId:v82];
                    v111 = v24;
                  }

                  else
                  {
                    if (v118)
                    {
                      v105 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v103 = *MEMORY[0x1E698F240];
                      v126 = *MEMORY[0x1E696A578];
                      v97 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"personaId"];
                      v127 = v97;
                      v98 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
                      *v118 = [v105 initWithDomain:v103 code:2 userInfo:v98];
                    }

                    v82 = 0;
                    v24 = 0;
                  }

LABEL_81:

LABEL_82:
                  v37 = v119;
                }

LABEL_84:
                v8 = v109;
LABEL_85:
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v50 = v46;
                  goto LABEL_74;
                }

                if (v118)
                {
                  v104 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v93 = *MEMORY[0x1E698F240];
                  v130 = *MEMORY[0x1E696A578];
                  v75 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"uniqueID"];
                  v131 = v75;
                  v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
                  v94 = [v104 initWithDomain:v93 code:2 userInfo:v80];
                  v50 = 0;
                  v24 = 0;
                  *v118 = v94;
                  goto LABEL_82;
                }

                v50 = 0;
                v24 = 0;
                v8 = v109;
                v37 = v119;
              }

LABEL_87:
              self = v111;
LABEL_88:
              v21 = v116;
              v31 = v113;

LABEL_89:
              v7 = v110;
LABEL_90:

LABEL_91:
              goto LABEL_92;
            }
          }

          v69 = v118;
          if (v118)
          {
            v70 = objc_alloc(MEMORY[0x1E696ABC0]);
            v71 = *MEMORY[0x1E698F240];
            v134 = *MEMORY[0x1E696A578];
            v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"entities"];
            v135 = v46;
            v72 = MEMORY[0x1E695DF20];
            v73 = &v135;
            v74 = &v134;
LABEL_59:
            v75 = [v72 dictionaryWithObjects:v73 forKeys:v74 count:1];
            v76 = v71;
            v37 = v119;
            v24 = 0;
            *v69 = [v70 initWithDomain:v76 code:2 userInfo:v75];
            v50 = v38;
            a4 = v106;
            v6 = v108;
            goto LABEL_84;
          }

LABEL_65:
          v24 = 0;
          v50 = v38;
          a4 = v106;
          v6 = v108;
LABEL_66:
          v8 = v109;
          goto LABEL_87;
        }

        if (v118)
        {
          v60 = v8;
          v61 = objc_alloc(MEMORY[0x1E696ABC0]);
          v62 = *MEMORY[0x1E698F240];
          v139 = *MEMORY[0x1E696A578];
          v63 = a4;
          v64 = objc_alloc(MEMORY[0x1E696AEC0]);
          v101 = objc_opt_class();
          v65 = v64;
          a4 = v63;
          v38 = [v65 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v101, @"completedQuery"];
          v140 = v38;
          v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v140 forKeys:&v139 count:1];
          v67 = v61;
          v8 = v60;
          v68 = v62;
          v37 = v119;
          v120 = v66;
          v112 = 0;
          v24 = 0;
          *v118 = [v67 initWithDomain:v68 code:2 userInfo:?];
          goto LABEL_88;
        }

        v112 = 0;
        v24 = 0;
LABEL_101:
        v21 = v116;
        v31 = v113;
        goto LABEL_90;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = MEMORY[0x1E695DF00];
        v12 = v8;
        v13 = v10;
        v14 = [v11 alloc];
        [v13 doubleValue];
        v16 = v15;

        v8 = v12;
        v17 = [v14 initWithTimeIntervalSinceReferenceDate:v16];
LABEL_16:
        v113 = v17;
        goto LABEL_23;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v34 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v113 = [v34 dateFromString:v10];

        goto LABEL_23;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v10;
        goto LABEL_16;
      }

      if (v118)
      {
        v85 = v8;
        v86 = objc_alloc(MEMORY[0x1E696ABC0]);
        v87 = *MEMORY[0x1E698F240];
        v143 = *MEMORY[0x1E696A578];
        v88 = a4;
        v89 = objc_alloc(MEMORY[0x1E696AEC0]);
        v102 = objc_opt_class();
        v90 = v89;
        a4 = v88;
        v115 = [v90 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", v102, @"absoluteTimestamp"];
        v144 = v115;
        v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
        v92 = v86;
        v8 = v85;
        v114 = v91;
        v31 = 0;
        v24 = 0;
        *v118 = [v92 initWithDomain:v87 code:2 userInfo:?];
        v21 = v116;
        goto LABEL_91;
      }

      v31 = 0;
      v24 = 0;
      v21 = v116;
LABEL_92:

      goto LABEL_93;
    }

    if (v118)
    {
      v25 = v8;
      v26 = objc_alloc(MEMORY[0x1E696ABC0]);
      v27 = *MEMORY[0x1E698F240];
      v145 = *MEMORY[0x1E696A578];
      v28 = a4;
      v29 = objc_alloc(MEMORY[0x1E696AEC0]);
      v99 = objc_opt_class();
      v30 = v29;
      a4 = v28;
      v31 = [v30 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v99, @"domainID"];
      v146 = v31;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v146 forKeys:&v145 count:1];
      v33 = v26;
      v8 = v25;
      v117 = v32;
      v21 = 0;
      v24 = 0;
      *v118 = [v33 initWithDomain:v27 code:2 userInfo:?];
      goto LABEL_92;
    }

    v21 = 0;
    v24 = 0;
LABEL_93:

    goto LABEL_94;
  }

  if (a4)
  {
    v18 = objc_alloc(MEMORY[0x1E696ABC0]);
    v19 = *MEMORY[0x1E698F240];
    v147 = *MEMORY[0x1E696A578];
    v20 = a4;
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"resultID"];
    v148[0] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v148 forKeys:&v147 count:1];
    v23 = v18;
    v8 = v22;
    a4 = 0;
    v24 = 0;
    *v20 = [v23 initWithDomain:v19 code:2 userInfo:v22];
    goto LABEL_93;
  }

  v24 = 0;
LABEL_94:

  v83 = *MEMORY[0x1E69E9840];
  return v24;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMProactiveHarvestingParsecSearch *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_resultID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_domainID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_userInput)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_completedQuery)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_entities;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v11 writeTo:v4];
        PBDataWriterRecallMark();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
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

  v12 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = BMProactiveHarvestingParsecSearch;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_52;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_50;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v32[0]) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:v32 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v32[0] & 0x7F) << v8;
        if ((v32[0] & 0x80) == 0)
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
        goto LABEL_50;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 4)
      {
        break;
      }

      if (v16 > 6)
      {
        switch(v16)
        {
          case 7:
            v17 = PBReaderReadString();
            v18 = 80;
            goto LABEL_43;
          case 8:
            v17 = PBReaderReadString();
            v18 = 88;
            goto LABEL_43;
          case 9:
            v17 = PBReaderReadString();
            v18 = 96;
LABEL_43:
            v23 = *(&v5->super.super.isa + v18);
            *(&v5->super.super.isa + v18) = v17;

            goto LABEL_44;
        }

LABEL_46:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_44;
      }

      if (v16 == 5)
      {
        v17 = PBReaderReadString();
        v18 = 64;
        goto LABEL_43;
      }

      if (v16 != 6)
      {
        goto LABEL_46;
      }

      v32[0] = 0;
      v32[1] = 0;
      if (!PBReaderPlaceMark() || (v19 = [[BMProactiveHarvestingParsecSearchEntity alloc] initByReadFrom:v4]) == 0)
      {
LABEL_54:

        goto LABEL_51;
      }

      v20 = v19;
      [v6 addObject:v19];
      PBReaderRecallMark();

LABEL_44:
      v24 = [v4 position];
      if (v24 >= [v4 length])
      {
        goto LABEL_50;
      }
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v5->_hasRaw_absoluteTimestamp = 1;
        v32[0] = 0;
        v21 = [v4 position] + 8;
        if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 8, v22 <= objc_msgSend(v4, "length")))
        {
          v25 = [v4 data];
          [v25 getBytes:v32 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        *&v5->_raw_absoluteTimestamp = v32[0];
        goto LABEL_44;
      }

      if (v16 == 4)
      {
        v17 = PBReaderReadString();
        v18 = 56;
        goto LABEL_43;
      }
    }

    else
    {
      if (v16 == 1)
      {
        v17 = PBReaderReadString();
        v18 = 40;
        goto LABEL_43;
      }

      if (v16 == 2)
      {
        v17 = PBReaderReadString();
        v18 = 48;
        goto LABEL_43;
      }
    }

    goto LABEL_46;
  }

LABEL_50:
  v26 = [v6 copy];
  entities = v5->_entities;
  v5->_entities = v26;

  v28 = [v4 hasError];
  if (v28)
  {
LABEL_51:
    v29 = 0;
  }

  else
  {
LABEL_52:
    v29 = v5;
  }

  return v29;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMProactiveHarvestingParsecSearch *)self resultID];
  v5 = [(BMProactiveHarvestingParsecSearch *)self domainID];
  v6 = [(BMProactiveHarvestingParsecSearch *)self absoluteTimestamp];
  v7 = [(BMProactiveHarvestingParsecSearch *)self userInput];
  v8 = [(BMProactiveHarvestingParsecSearch *)self completedQuery];
  v9 = [(BMProactiveHarvestingParsecSearch *)self entities];
  v10 = [(BMProactiveHarvestingParsecSearch *)self uniqueID];
  v11 = [(BMProactiveHarvestingParsecSearch *)self contentProtection];
  v12 = [(BMProactiveHarvestingParsecSearch *)self personaId];
  v13 = [v3 initWithFormat:@"BMProactiveHarvestingParsecSearch with resultID: %@, domainID: %@, absoluteTimestamp: %@, userInput: %@, completedQuery: %@, entities: %@, uniqueID: %@, contentProtection: %@, personaId: %@", v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (BMProactiveHarvestingParsecSearch)initWithResultID:(id)a3 domainID:(id)a4 absoluteTimestamp:(id)a5 userInput:(id)a6 completedQuery:(id)a7 entities:(id)a8 uniqueID:(id)a9 contentProtection:(id)a10 personaId:(id)a11
{
  v30 = a3;
  v29 = a4;
  v18 = a5;
  v28 = a6;
  v27 = a7;
  obj = a8;
  v26 = a8;
  v25 = a9;
  v19 = a10;
  v20 = a11;
  v31.receiver = self;
  v31.super_class = BMProactiveHarvestingParsecSearch;
  v21 = [(BMEventBase *)&v31 init];
  if (v21)
  {
    v21->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v21->_resultID, a3);
    objc_storeStrong(&v21->_domainID, a4);
    if (v18)
    {
      v21->_hasRaw_absoluteTimestamp = 1;
      [v18 timeIntervalSinceReferenceDate];
    }

    else
    {
      v21->_hasRaw_absoluteTimestamp = 0;
      v22 = -1.0;
    }

    v21->_raw_absoluteTimestamp = v22;
    objc_storeStrong(&v21->_userInput, a6);
    objc_storeStrong(&v21->_completedQuery, a7);
    objc_storeStrong(&v21->_entities, obj);
    objc_storeStrong(&v21->_uniqueID, a9);
    objc_storeStrong(&v21->_contentProtection, a10);
    objc_storeStrong(&v21->_personaId, a11);
  }

  return v21;
}

+ (id)protoFields
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"resultID" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"domainID" number:2 type:13 subMessageClass:{0, v2}];
  v14[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:3 type:0 subMessageClass:0];
  v14[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userInput" number:4 type:13 subMessageClass:0];
  v14[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"completedQuery" number:5 type:13 subMessageClass:0];
  v14[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"entities" number:6 type:14 subMessageClass:objc_opt_class()];
  v14[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uniqueID" number:7 type:13 subMessageClass:0];
  v14[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentProtection" number:8 type:13 subMessageClass:0];
  v14[7] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"personaId" number:9 type:13 subMessageClass:0];
  v14[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"resultID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"domainID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:1];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userInput" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"completedQuery" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"entities_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_228_22468];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uniqueID" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentProtection" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"personaId" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
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

id __44__BMProactiveHarvestingParsecSearch_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _entitiesJSONArray];
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

    v7 = [[BMProactiveHarvestingParsecSearch alloc] initByReadFrom:v6];
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