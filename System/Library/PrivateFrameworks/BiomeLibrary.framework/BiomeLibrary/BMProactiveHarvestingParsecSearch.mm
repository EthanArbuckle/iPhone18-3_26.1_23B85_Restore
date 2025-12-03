@interface BMProactiveHarvestingParsecSearch
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMProactiveHarvestingParsecSearch)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMProactiveHarvestingParsecSearch)initWithResultID:(id)d domainID:(id)iD absoluteTimestamp:(id)timestamp userInput:(id)input completedQuery:(id)query entities:(id)entities uniqueID:(id)uniqueID contentProtection:(id)self0 personaId:(id)self1;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)_entitiesJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMProactiveHarvestingParsecSearch

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    resultID = [(BMProactiveHarvestingParsecSearch *)self resultID];
    resultID2 = [v5 resultID];
    v8 = resultID2;
    if (resultID == resultID2)
    {
    }

    else
    {
      resultID3 = [(BMProactiveHarvestingParsecSearch *)self resultID];
      resultID4 = [v5 resultID];
      v11 = [resultID3 isEqual:resultID4];

      if (!v11)
      {
        goto LABEL_33;
      }
    }

    domainID = [(BMProactiveHarvestingParsecSearch *)self domainID];
    domainID2 = [v5 domainID];
    v15 = domainID2;
    if (domainID == domainID2)
    {
    }

    else
    {
      domainID3 = [(BMProactiveHarvestingParsecSearch *)self domainID];
      domainID4 = [v5 domainID];
      v18 = [domainID3 isEqual:domainID4];

      if (!v18)
      {
        goto LABEL_33;
      }
    }

    absoluteTimestamp = [(BMProactiveHarvestingParsecSearch *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v21 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMProactiveHarvestingParsecSearch *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v24 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v24)
      {
        goto LABEL_33;
      }
    }

    userInput = [(BMProactiveHarvestingParsecSearch *)self userInput];
    userInput2 = [v5 userInput];
    v27 = userInput2;
    if (userInput == userInput2)
    {
    }

    else
    {
      userInput3 = [(BMProactiveHarvestingParsecSearch *)self userInput];
      userInput4 = [v5 userInput];
      v30 = [userInput3 isEqual:userInput4];

      if (!v30)
      {
        goto LABEL_33;
      }
    }

    completedQuery = [(BMProactiveHarvestingParsecSearch *)self completedQuery];
    completedQuery2 = [v5 completedQuery];
    v33 = completedQuery2;
    if (completedQuery == completedQuery2)
    {
    }

    else
    {
      completedQuery3 = [(BMProactiveHarvestingParsecSearch *)self completedQuery];
      completedQuery4 = [v5 completedQuery];
      v36 = [completedQuery3 isEqual:completedQuery4];

      if (!v36)
      {
        goto LABEL_33;
      }
    }

    entities = [(BMProactiveHarvestingParsecSearch *)self entities];
    entities2 = [v5 entities];
    v39 = entities2;
    if (entities == entities2)
    {
    }

    else
    {
      entities3 = [(BMProactiveHarvestingParsecSearch *)self entities];
      entities4 = [v5 entities];
      v42 = [entities3 isEqual:entities4];

      if (!v42)
      {
        goto LABEL_33;
      }
    }

    uniqueID = [(BMProactiveHarvestingParsecSearch *)self uniqueID];
    uniqueID2 = [v5 uniqueID];
    v45 = uniqueID2;
    if (uniqueID == uniqueID2)
    {
    }

    else
    {
      uniqueID3 = [(BMProactiveHarvestingParsecSearch *)self uniqueID];
      uniqueID4 = [v5 uniqueID];
      v48 = [uniqueID3 isEqual:uniqueID4];

      if (!v48)
      {
        goto LABEL_33;
      }
    }

    contentProtection = [(BMProactiveHarvestingParsecSearch *)self contentProtection];
    contentProtection2 = [v5 contentProtection];
    v51 = contentProtection2;
    if (contentProtection == contentProtection2)
    {
    }

    else
    {
      contentProtection3 = [(BMProactiveHarvestingParsecSearch *)self contentProtection];
      contentProtection4 = [v5 contentProtection];
      v54 = [contentProtection3 isEqual:contentProtection4];

      if (!v54)
      {
LABEL_33:
        v12 = 0;
LABEL_34:

        goto LABEL_35;
      }
    }

    personaId = [(BMProactiveHarvestingParsecSearch *)self personaId];
    personaId2 = [v5 personaId];
    if (personaId == personaId2)
    {
      v12 = 1;
    }

    else
    {
      personaId3 = [(BMProactiveHarvestingParsecSearch *)self personaId];
      personaId4 = [v5 personaId];
      v12 = [personaId3 isEqual:personaId4];
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
  resultID = [(BMProactiveHarvestingParsecSearch *)self resultID];
  domainID = [(BMProactiveHarvestingParsecSearch *)self domainID];
  absoluteTimestamp = [(BMProactiveHarvestingParsecSearch *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v6 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMProactiveHarvestingParsecSearch *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSinceReferenceDate];
    v8 = [v6 numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  userInput = [(BMProactiveHarvestingParsecSearch *)self userInput];
  completedQuery = [(BMProactiveHarvestingParsecSearch *)self completedQuery];
  _entitiesJSONArray = [(BMProactiveHarvestingParsecSearch *)self _entitiesJSONArray];
  uniqueID = [(BMProactiveHarvestingParsecSearch *)self uniqueID];
  contentProtection = [(BMProactiveHarvestingParsecSearch *)self contentProtection];
  personaId = [(BMProactiveHarvestingParsecSearch *)self personaId];
  v34[0] = @"resultID";
  null = resultID;
  if (!resultID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v28 = null;
  v35[0] = null;
  v34[1] = @"domainID";
  null2 = domainID;
  if (!domainID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = null2;
  v35[1] = null2;
  v34[2] = @"absoluteTimestamp";
  null3 = v8;
  if (!v8)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = resultID;
  v26 = null3;
  v35[2] = null3;
  v34[3] = @"userInput";
  null4 = userInput;
  if (!userInput)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = domainID;
  v25 = null4;
  v35[3] = null4;
  v34[4] = @"completedQuery";
  null5 = completedQuery;
  if (!completedQuery)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v8;
  v35[4] = null5;
  v34[5] = @"entities";
  null6 = _entitiesJSONArray;
  if (!_entitiesJSONArray)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v35[5] = null6;
  v34[6] = @"uniqueID";
  null7 = uniqueID;
  if (!uniqueID)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v35[6] = null7;
  v34[7] = @"contentProtection";
  null8 = contentProtection;
  if (!contentProtection)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v35[7] = null8;
  v34[8] = @"personaId";
  null9 = personaId;
  if (!personaId)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v35[8] = null9;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:9];
  if (personaId)
  {
    if (contentProtection)
    {
      goto LABEL_24;
    }

LABEL_38:

    if (uniqueID)
    {
      goto LABEL_25;
    }

    goto LABEL_39;
  }

  if (!contentProtection)
  {
    goto LABEL_38;
  }

LABEL_24:
  if (uniqueID)
  {
    goto LABEL_25;
  }

LABEL_39:

LABEL_25:
  if (!_entitiesJSONArray)
  {
  }

  if (!completedQuery)
  {
  }

  if (!userInput)
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
  entities = [(BMProactiveHarvestingParsecSearch *)self entities];
  v5 = [entities countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(entities);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [entities countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMProactiveHarvestingParsecSearch)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v148[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"resultID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    errorCopy2 = error;
    error = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    errorCopy2 = error;
    error = v7;
LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"domainID"];
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
      v9 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
      v117 = v9;
      if (!v9 || (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v113 = 0;
LABEL_23:
        v35 = [dictionaryCopy objectForKeyedSubscript:@"userInput"];
        v114 = v35;
        if (v35 && (v36 = v35, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy2)
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
            errorCopy3 = error;
            v55 = objc_alloc(MEMORY[0x1E696AEC0]);
            v100 = objc_opt_class();
            v56 = v55;
            error = errorCopy3;
            v112 = [v56 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v100, @"userInput"];
            v142 = v112;
            v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v142 forKeys:&v141 count:1];
            v58 = v52;
            v8 = v51;
            v59 = v53;
            v37 = v57;
            v115 = 0;
            v24 = 0;
            *errorCopy2 = [v58 initWithDomain:v59 code:2 userInfo:v57];
            goto LABEL_101;
          }

          v115 = v36;
        }

        else
        {
          v115 = 0;
        }

        v37 = [dictionaryCopy objectForKeyedSubscript:@"completedQuery"];
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
          v38 = [dictionaryCopy objectForKeyedSubscript:@"entities"];
          null = [MEMORY[0x1E695DFB0] null];
          v40 = [v38 isEqual:null];

          selfCopy = self;
          if (v40)
          {
            errorCopy5 = error;
            v108 = dictionaryCopy;

            v38 = 0;
          }

          else
          {
            if (v38)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!errorCopy2)
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
                *errorCopy2 = [v78 initWithDomain:v79 code:2 userInfo:v50];
                goto LABEL_66;
              }
            }

            errorCopy5 = error;
            v108 = dictionaryCopy;
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
              v69 = errorCopy2;
              if (errorCopy2)
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
              if (errorCopy2)
              {
                v77 = v49;
                *errorCopy2 = v75;
              }

              v24 = 0;
              v50 = v38;
              error = errorCopy5;
              dictionaryCopy = v108;
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

              dictionaryCopy = v108;
              v46 = [v108 objectForKeyedSubscript:@"uniqueID"];
              if (!v46)
              {
                v50 = 0;
                error = errorCopy5;
                goto LABEL_74;
              }

              objc_opt_class();
              error = errorCopy5;
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

                  if (errorCopy2)
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
                    *errorCopy2 = v96;
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
                    v24 = [(BMProactiveHarvestingParsecSearch *)selfCopy initWithResultID:error domainID:v116 absoluteTimestamp:v113 userInput:v115 completedQuery:v112 entities:v120 uniqueID:v50 contentProtection:v75 personaId:v82];
                    selfCopy = v24;
                  }

                  else
                  {
                    if (errorCopy2)
                    {
                      v105 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v103 = *MEMORY[0x1E698F240];
                      v126 = *MEMORY[0x1E696A578];
                      v97 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"personaId"];
                      v127 = v97;
                      v98 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
                      *errorCopy2 = [v105 initWithDomain:v103 code:2 userInfo:v98];
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

                if (errorCopy2)
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
                  *errorCopy2 = v94;
                  goto LABEL_82;
                }

                v50 = 0;
                v24 = 0;
                v8 = v109;
                v37 = v119;
              }

LABEL_87:
              self = selfCopy;
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

          v69 = errorCopy2;
          if (errorCopy2)
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
            error = errorCopy5;
            dictionaryCopy = v108;
            goto LABEL_84;
          }

LABEL_65:
          v24 = 0;
          v50 = v38;
          error = errorCopy5;
          dictionaryCopy = v108;
LABEL_66:
          v8 = v109;
          goto LABEL_87;
        }

        if (errorCopy2)
        {
          v60 = v8;
          v61 = objc_alloc(MEMORY[0x1E696ABC0]);
          v62 = *MEMORY[0x1E698F240];
          v139 = *MEMORY[0x1E696A578];
          errorCopy6 = error;
          v64 = objc_alloc(MEMORY[0x1E696AEC0]);
          v101 = objc_opt_class();
          v65 = v64;
          error = errorCopy6;
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
          *errorCopy2 = [v67 initWithDomain:v68 code:2 userInfo:?];
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

      if (errorCopy2)
      {
        v85 = v8;
        v86 = objc_alloc(MEMORY[0x1E696ABC0]);
        v87 = *MEMORY[0x1E698F240];
        v143 = *MEMORY[0x1E696A578];
        errorCopy7 = error;
        v89 = objc_alloc(MEMORY[0x1E696AEC0]);
        v102 = objc_opt_class();
        v90 = v89;
        error = errorCopy7;
        v115 = [v90 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", v102, @"absoluteTimestamp"];
        v144 = v115;
        v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
        v92 = v86;
        v8 = v85;
        v114 = v91;
        v31 = 0;
        v24 = 0;
        *errorCopy2 = [v92 initWithDomain:v87 code:2 userInfo:?];
        v21 = v116;
        goto LABEL_91;
      }

      v31 = 0;
      v24 = 0;
      v21 = v116;
LABEL_92:

      goto LABEL_93;
    }

    if (errorCopy2)
    {
      v25 = v8;
      v26 = objc_alloc(MEMORY[0x1E696ABC0]);
      v27 = *MEMORY[0x1E698F240];
      v145 = *MEMORY[0x1E696A578];
      errorCopy8 = error;
      v29 = objc_alloc(MEMORY[0x1E696AEC0]);
      v99 = objc_opt_class();
      v30 = v29;
      error = errorCopy8;
      v31 = [v30 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v99, @"domainID"];
      v146 = v31;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v146 forKeys:&v145 count:1];
      v33 = v26;
      v8 = v25;
      v117 = v32;
      v21 = 0;
      v24 = 0;
      *errorCopy2 = [v33 initWithDomain:v27 code:2 userInfo:?];
      goto LABEL_92;
    }

    v21 = 0;
    v24 = 0;
LABEL_93:

    goto LABEL_94;
  }

  if (error)
  {
    v18 = objc_alloc(MEMORY[0x1E696ABC0]);
    v19 = *MEMORY[0x1E698F240];
    v147 = *MEMORY[0x1E696A578];
    errorCopy9 = error;
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"resultID"];
    v148[0] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v148 forKeys:&v147 count:1];
    v23 = v18;
    v8 = v22;
    error = 0;
    v24 = 0;
    *errorCopy9 = [v23 initWithDomain:v19 code:2 userInfo:v22];
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
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
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
        [v11 writeTo:toCopy];
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

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v31.receiver = self;
  v31.super_class = BMProactiveHarvestingParsecSearch;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_52;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_50;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v32[0]) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v32 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
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
      if (!PBReaderPlaceMark() || (v19 = [[BMProactiveHarvestingParsecSearchEntity alloc] initByReadFrom:fromCopy]) == 0)
      {
LABEL_54:

        goto LABEL_51;
      }

      v20 = v19;
      [v6 addObject:v19];
      PBReaderRecallMark();

LABEL_44:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
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
        v21 = [fromCopy position] + 8;
        if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 8, v22 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:v32 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
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

  hasError = [fromCopy hasError];
  if (hasError)
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
  resultID = [(BMProactiveHarvestingParsecSearch *)self resultID];
  domainID = [(BMProactiveHarvestingParsecSearch *)self domainID];
  absoluteTimestamp = [(BMProactiveHarvestingParsecSearch *)self absoluteTimestamp];
  userInput = [(BMProactiveHarvestingParsecSearch *)self userInput];
  completedQuery = [(BMProactiveHarvestingParsecSearch *)self completedQuery];
  entities = [(BMProactiveHarvestingParsecSearch *)self entities];
  uniqueID = [(BMProactiveHarvestingParsecSearch *)self uniqueID];
  contentProtection = [(BMProactiveHarvestingParsecSearch *)self contentProtection];
  personaId = [(BMProactiveHarvestingParsecSearch *)self personaId];
  v13 = [v3 initWithFormat:@"BMProactiveHarvestingParsecSearch with resultID: %@, domainID: %@, absoluteTimestamp: %@, userInput: %@, completedQuery: %@, entities: %@, uniqueID: %@, contentProtection: %@, personaId: %@", resultID, domainID, absoluteTimestamp, userInput, completedQuery, entities, uniqueID, contentProtection, personaId];

  return v13;
}

- (BMProactiveHarvestingParsecSearch)initWithResultID:(id)d domainID:(id)iD absoluteTimestamp:(id)timestamp userInput:(id)input completedQuery:(id)query entities:(id)entities uniqueID:(id)uniqueID contentProtection:(id)self0 personaId:(id)self1
{
  dCopy = d;
  iDCopy = iD;
  timestampCopy = timestamp;
  inputCopy = input;
  queryCopy = query;
  obj = entities;
  entitiesCopy = entities;
  uniqueIDCopy = uniqueID;
  protectionCopy = protection;
  idCopy = id;
  v31.receiver = self;
  v31.super_class = BMProactiveHarvestingParsecSearch;
  v21 = [(BMEventBase *)&v31 init];
  if (v21)
  {
    v21->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v21->_resultID, d);
    objc_storeStrong(&v21->_domainID, iD);
    if (timestampCopy)
    {
      v21->_hasRaw_absoluteTimestamp = 1;
      [timestampCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v21->_hasRaw_absoluteTimestamp = 0;
      v22 = -1.0;
    }

    v21->_raw_absoluteTimestamp = v22;
    objc_storeStrong(&v21->_userInput, input);
    objc_storeStrong(&v21->_completedQuery, query);
    objc_storeStrong(&v21->_entities, obj);
    objc_storeStrong(&v21->_uniqueID, uniqueID);
    objc_storeStrong(&v21->_contentProtection, protection);
    objc_storeStrong(&v21->_personaId, id);
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

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 2)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

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