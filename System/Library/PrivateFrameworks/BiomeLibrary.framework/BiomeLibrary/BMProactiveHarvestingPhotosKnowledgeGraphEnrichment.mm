@interface BMProactiveHarvestingPhotosKnowledgeGraphEnrichment
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMProactiveHarvestingPhotosKnowledgeGraphEnrichment)initWithAbsoluteTimestamp:(id)timestamp topics:(id)topics entities:(id)entities locations:(id)locations uniqueID:(id)d contentProtection:(id)protection personaId:(id)id;
- (BMProactiveHarvestingPhotosKnowledgeGraphEnrichment)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)_entitiesJSONArray;
- (id)_locationsJSONArray;
- (id)_topicsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMProactiveHarvestingPhotosKnowledgeGraphEnrichment

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    absoluteTimestamp = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v8 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v11 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v11)
      {
        goto LABEL_25;
      }
    }

    topics = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self topics];
    topics2 = [v5 topics];
    v15 = topics2;
    if (topics == topics2)
    {
    }

    else
    {
      topics3 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self topics];
      topics4 = [v5 topics];
      v18 = [topics3 isEqual:topics4];

      if (!v18)
      {
        goto LABEL_25;
      }
    }

    entities = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self entities];
    entities2 = [v5 entities];
    v21 = entities2;
    if (entities == entities2)
    {
    }

    else
    {
      entities3 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self entities];
      entities4 = [v5 entities];
      v24 = [entities3 isEqual:entities4];

      if (!v24)
      {
        goto LABEL_25;
      }
    }

    locations = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self locations];
    locations2 = [v5 locations];
    v27 = locations2;
    if (locations == locations2)
    {
    }

    else
    {
      locations3 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self locations];
      locations4 = [v5 locations];
      v30 = [locations3 isEqual:locations4];

      if (!v30)
      {
        goto LABEL_25;
      }
    }

    uniqueID = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self uniqueID];
    uniqueID2 = [v5 uniqueID];
    v33 = uniqueID2;
    if (uniqueID == uniqueID2)
    {
    }

    else
    {
      uniqueID3 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self uniqueID];
      uniqueID4 = [v5 uniqueID];
      v36 = [uniqueID3 isEqual:uniqueID4];

      if (!v36)
      {
        goto LABEL_25;
      }
    }

    contentProtection = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self contentProtection];
    contentProtection2 = [v5 contentProtection];
    v39 = contentProtection2;
    if (contentProtection == contentProtection2)
    {
    }

    else
    {
      contentProtection3 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self contentProtection];
      contentProtection4 = [v5 contentProtection];
      v42 = [contentProtection3 isEqual:contentProtection4];

      if (!v42)
      {
LABEL_25:
        v12 = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    personaId = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self personaId];
    personaId2 = [v5 personaId];
    if (personaId == personaId2)
    {
      v12 = 1;
    }

    else
    {
      personaId3 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self personaId];
      personaId4 = [v5 personaId];
      v12 = [personaId3 isEqual:personaId4];
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
  absoluteTimestamp = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v4 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSinceReferenceDate];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  _topicsJSONArray = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self _topicsJSONArray];
  _entitiesJSONArray = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self _entitiesJSONArray];
  _locationsJSONArray = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self _locationsJSONArray];
  uniqueID = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self uniqueID];
  contentProtection = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self contentProtection];
  personaId = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self personaId];
  v28[0] = @"absoluteTimestamp";
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v25 = null;
  v29[0] = null;
  v28[1] = @"topics";
  null2 = _topicsJSONArray;
  if (!_topicsJSONArray)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = null2;
  v29[1] = null2;
  v28[2] = @"entities";
  null3 = _entitiesJSONArray;
  if (!_entitiesJSONArray)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v6;
  v23 = null3;
  v29[2] = null3;
  v28[3] = @"locations";
  null4 = _locationsJSONArray;
  if (!_locationsJSONArray)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = _topicsJSONArray;
  v29[3] = null4;
  v28[4] = @"uniqueID";
  null5 = uniqueID;
  if (!uniqueID)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v29[4] = null5;
  v28[5] = @"contentProtection";
  null6 = contentProtection;
  if (!contentProtection)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v29[5] = null6;
  v28[6] = @"personaId";
  null7 = personaId;
  if (!personaId)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v29[6] = null7;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:7];
  if (personaId)
  {
    if (contentProtection)
    {
      goto LABEL_20;
    }

LABEL_30:

    if (uniqueID)
    {
      goto LABEL_21;
    }

    goto LABEL_31;
  }

  if (!contentProtection)
  {
    goto LABEL_30;
  }

LABEL_20:
  if (uniqueID)
  {
    goto LABEL_21;
  }

LABEL_31:

LABEL_21:
  if (!_locationsJSONArray)
  {
  }

  if (_entitiesJSONArray)
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
  locations = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self locations];
  v5 = [locations countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(locations);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [locations countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  entities = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self entities];
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

- (id)_topicsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  topics = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self topics];
  v5 = [topics countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(topics);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [topics countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMProactiveHarvestingPhotosKnowledgeGraphEnrichment)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v155[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
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
    v15 = [dictionaryCopy objectForKeyedSubscript:@"topics"];
    null = [MEMORY[0x1E695DFB0] null];
    v17 = [v15 isEqual:null];

    if (v17)
    {
      selfCopy2 = self;

      v15 = 0;
    }

    else
    {
      if (v15)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
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
          *error = [v49 initWithDomain:v50 code:2 userInfo:v27];
          goto LABEL_52;
        }
      }

      selfCopy2 = self;
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
    v103 = dictionaryCopy;
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
        if (error)
        {
          v34 = objc_alloc(MEMORY[0x1E696ABC0]);
          v35 = *MEMORY[0x1E698F240];
          v147 = *MEMORY[0x1E696A578];
          v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"topics"];
          v148 = v23;
          v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v148 forKeys:&v147 count:1];
          v33 = 0;
          *error = [v34 initWithDomain:v35 code:2 userInfo:v32];
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
        self = selfCopy2;
        dictionaryCopy = v103;
        if (error)
        {
          v36 = v26;
          *error = v32;
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
        dictionaryCopy = v103;
        if (!v19)
        {
LABEL_24:

          v27 = [dictionaryCopy objectForKeyedSubscript:@"entities"];
          null2 = [MEMORY[0x1E695DFB0] null];
          v29 = [v27 isEqual:null2];

          if (v29)
          {

            v27 = 0;
          }

          else if (v27)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              self = selfCopy2;
              if (!error)
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
              *error = [v69 initWithDomain:v70 code:2 userInfo:v32];
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
          v104 = dictionaryCopy;
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
              errorCopy6 = error;
              if (error)
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
              if (error)
              {
                v58 = v46;
                *error = v57;
              }

              v33 = 0;
              v32 = v108;
              dictionaryCopy = v104;
              goto LABEL_119;
            }

            [v23 addObject:v45];

            if (v39 == ++v41)
            {
              v39 = [v108 countByEnumeratingWithState:&v118 objects:v144 count:16];
              dictionaryCopy = v104;
              if (!v39)
              {
LABEL_47:

                v32 = [dictionaryCopy objectForKeyedSubscript:@"locations"];
                null3 = [MEMORY[0x1E695DFB0] null];
                v48 = [v32 isEqual:null3];

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
                  v104 = dictionaryCopy;
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
                      errorCopy5 = error;
                      if (error)
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
                      if (error)
                      {
                        v82 = v67;
                        *error = v80;
                      }

                      v33 = 0;
                      goto LABEL_97;
                    }

                    [v43 addObject:v66];

                    if (v60 == ++v62)
                    {
                      v60 = [v32 countByEnumeratingWithState:&v113 objects:v137 count:16];
                      dictionaryCopy = v104;
                      if (v60)
                      {
                        goto LABEL_70;
                      }

LABEL_78:

                      v64 = [dictionaryCopy objectForKeyedSubscript:@"uniqueID"];
                      if (!v64)
                      {
                        v57 = 0;
                        errorCopy4 = error;
                        goto LABEL_105;
                      }

                      objc_opt_class();
                      errorCopy4 = error;
                      if (objc_opt_isKindOfClass())
                      {
                        v57 = 0;
                        goto LABEL_105;
                      }

                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (error)
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
                          *error = v92;
                          goto LABEL_138;
                        }

                        v57 = 0;
                        v33 = 0;
                        v15 = obj;
                        goto LABEL_118;
                      }

                      v57 = v64;
LABEL_105:
                      v80 = [dictionaryCopy objectForKeyedSubscript:@"contentProtection"];
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

                        if (errorCopy4)
                        {
                          v97 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v95 = *MEMORY[0x1E698F240];
                          v129 = *MEMORY[0x1E696A578];
                          v99 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contentProtection"];
                          v130 = v99;
                          v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
                          v80 = 0;
                          v33 = 0;
                          *errorCopy4 = [v97 initWithDomain:v95 code:2 userInfo:v93];
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

                        self = selfCopy2;
LABEL_121:

                        v27 = v108;
LABEL_122:

LABEL_124:
                        v7 = v106;
                        goto LABEL_125;
                      }

LABEL_110:
                      v86 = [dictionaryCopy objectForKeyedSubscript:@"personaId"];
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
                          if (error)
                          {
                            v100 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v98 = *MEMORY[0x1E698F240];
                            v127 = *MEMORY[0x1E696A578];
                            v96 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"personaId"];
                            v128 = v96;
                            v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
                            *error = [v100 initWithDomain:v98 code:2 userInfo:v94];
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
                      v33 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)selfCopy2 initWithAbsoluteTimestamp:v105 topics:v110 entities:v23 locations:v43 uniqueID:v57 contentProtection:v80 personaId:v86];
                      selfCopy2 = v33;
                      goto LABEL_115;
                    }
                  }

                  errorCopy5 = error;
                  if (error)
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
                    *errorCopy5 = v81;
LABEL_97:
                    v57 = v32;
                    dictionaryCopy = v104;
                    v15 = obj;
                    goto LABEL_117;
                  }

LABEL_101:
                  v33 = 0;
                  v57 = v32;
LABEL_61:
                  dictionaryCopy = v104;
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

                if (error)
                {
                  v83 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v84 = *MEMORY[0x1E698F240];
                  v138 = *MEMORY[0x1E696A578];
                  v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"locations"];
                  v139 = v43;
                  v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
                  v85 = [v83 initWithDomain:v84 code:2 userInfo:v57];
                  v33 = 0;
                  *error = v85;
                  goto LABEL_62;
                }

                v33 = 0;
LABEL_84:
                self = selfCopy2;
LABEL_85:
                v37 = v105;
                v15 = obj;
                goto LABEL_121;
              }

              goto LABEL_39;
            }
          }

          errorCopy6 = error;
          if (error)
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
            *errorCopy6 = [v52 initWithDomain:v53 code:2 userInfo:v57];
            v32 = v108;
            goto LABEL_61;
          }

LABEL_83:
          v33 = 0;
          v32 = v108;
          dictionaryCopy = v104;
          goto LABEL_84;
        }

        goto LABEL_16;
      }
    }

    if (error)
    {
      v30 = objc_alloc(MEMORY[0x1E696ABC0]);
      v31 = *MEMORY[0x1E698F240];
      v149 = *MEMORY[0x1E696A578];
      v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"topics"];
      v150 = v23;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v150 forKeys:&v149 count:1];
      v33 = 0;
      *error = [v30 initWithDomain:v31 code:2 userInfo:v32];
LABEL_30:
      v15 = obj;
      v108 = obj;
      self = selfCopy2;
      dictionaryCopy = v103;
LABEL_34:
      v37 = v105;
      goto LABEL_121;
    }

LABEL_51:
    v33 = 0;
    v15 = obj;
    v27 = obj;
    self = selfCopy2;
    dictionaryCopy = v103;
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

  if (error)
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
    *error = v73;

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
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v41 = *MEMORY[0x1E69E9840];
  toCopy = to;
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
        [v11 writeTo:toCopy];
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
        [v17 writeTo:toCopy];
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
        [v23 writeTo:{toCopy, v25}];
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

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
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
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v41) = 0;
        v13 = [fromCopy position] + 1;
        if (v13 >= [fromCopy position] && (v14 = objc_msgSend(fromCopy, "position") + 1, v14 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v17 = [fromCopy hasError] ? 0 : v12;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v17 & 7) == 4)
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
            v24 = [fromCopy position] + 8;
            if (v24 >= [fromCopy position] && (v25 = objc_msgSend(fromCopy, "position") + 8, v25 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v5->_raw_absoluteTimestamp = v41;
            goto LABEL_48;
          case 2:
            v41 = 0.0;
            v42 = 0;
            if (!PBReaderPlaceMark() || (v28 = [[BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentTopic alloc] initByReadFrom:fromCopy]) == 0)
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

            v21 = [[BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity alloc] initByReadFrom:fromCopy];
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

          v26 = [[BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation alloc] initByReadFrom:fromCopy];
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
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
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

  hasError = [fromCopy hasError];
  if (hasError)
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
  absoluteTimestamp = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self absoluteTimestamp];
  topics = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self topics];
  entities = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self entities];
  locations = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self locations];
  uniqueID = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self uniqueID];
  contentProtection = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self contentProtection];
  personaId = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self personaId];
  v11 = [v3 initWithFormat:@"BMProactiveHarvestingPhotosKnowledgeGraphEnrichment with absoluteTimestamp: %@, topics: %@, entities: %@, locations: %@, uniqueID: %@, contentProtection: %@, personaId: %@", absoluteTimestamp, topics, entities, locations, uniqueID, contentProtection, personaId];

  return v11;
}

- (BMProactiveHarvestingPhotosKnowledgeGraphEnrichment)initWithAbsoluteTimestamp:(id)timestamp topics:(id)topics entities:(id)entities locations:(id)locations uniqueID:(id)d contentProtection:(id)protection personaId:(id)id
{
  timestampCopy = timestamp;
  topicsCopy = topics;
  entitiesCopy = entities;
  locationsCopy = locations;
  dCopy = d;
  protectionCopy = protection;
  idCopy = id;
  v25.receiver = self;
  v25.super_class = BMProactiveHarvestingPhotosKnowledgeGraphEnrichment;
  v18 = [(BMEventBase *)&v25 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    if (timestampCopy)
    {
      v18->_hasRaw_absoluteTimestamp = 1;
      [timestampCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v18->_hasRaw_absoluteTimestamp = 0;
      v19 = -1.0;
    }

    v18->_raw_absoluteTimestamp = v19;
    objc_storeStrong(&v18->_topics, topics);
    objc_storeStrong(&v18->_entities, entities);
    objc_storeStrong(&v18->_locations, locations);
    objc_storeStrong(&v18->_uniqueID, d);
    objc_storeStrong(&v18->_contentProtection, protection);
    objc_storeStrong(&v18->_personaId, id);
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

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 2)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

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