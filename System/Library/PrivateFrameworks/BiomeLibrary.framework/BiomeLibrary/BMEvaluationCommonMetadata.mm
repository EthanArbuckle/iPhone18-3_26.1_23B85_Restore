@interface BMEvaluationCommonMetadata
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMEvaluationCommonMetadata)initWithFeatureDomain:(id)domain bundleId:(id)id evaluationUuid:(id)uuid isHighPriority:(id)priority diagnostics:(id)diagnostics prefilledQuestions:(id)questions auxiliaryAttributes:(id)attributes systemBuild:(id)self0 modelVersion:(id)self1;
- (BMEvaluationCommonMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (NSUUID)evaluationUuid;
- (id)_prefilledQuestionsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMEvaluationCommonMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    featureDomain = [(BMEvaluationCommonMetadata *)self featureDomain];
    featureDomain2 = [v5 featureDomain];
    v8 = featureDomain2;
    if (featureDomain == featureDomain2)
    {
    }

    else
    {
      featureDomain3 = [(BMEvaluationCommonMetadata *)self featureDomain];
      featureDomain4 = [v5 featureDomain];
      v11 = [featureDomain3 isEqual:featureDomain4];

      if (!v11)
      {
        goto LABEL_34;
      }
    }

    bundleId = [(BMEvaluationCommonMetadata *)self bundleId];
    bundleId2 = [v5 bundleId];
    v15 = bundleId2;
    if (bundleId == bundleId2)
    {
    }

    else
    {
      bundleId3 = [(BMEvaluationCommonMetadata *)self bundleId];
      bundleId4 = [v5 bundleId];
      v18 = [bundleId3 isEqual:bundleId4];

      if (!v18)
      {
        goto LABEL_34;
      }
    }

    evaluationUuid = [(BMEvaluationCommonMetadata *)self evaluationUuid];
    evaluationUuid2 = [v5 evaluationUuid];
    v21 = evaluationUuid2;
    if (evaluationUuid == evaluationUuid2)
    {
    }

    else
    {
      evaluationUuid3 = [(BMEvaluationCommonMetadata *)self evaluationUuid];
      evaluationUuid4 = [v5 evaluationUuid];
      v24 = [evaluationUuid3 isEqual:evaluationUuid4];

      if (!v24)
      {
        goto LABEL_34;
      }
    }

    if (-[BMEvaluationCommonMetadata hasIsHighPriority](self, "hasIsHighPriority") || [v5 hasIsHighPriority])
    {
      if (![(BMEvaluationCommonMetadata *)self hasIsHighPriority])
      {
        goto LABEL_34;
      }

      if (![v5 hasIsHighPriority])
      {
        goto LABEL_34;
      }

      isHighPriority = [(BMEvaluationCommonMetadata *)self isHighPriority];
      if (isHighPriority != [v5 isHighPriority])
      {
        goto LABEL_34;
      }
    }

    diagnostics = [(BMEvaluationCommonMetadata *)self diagnostics];
    diagnostics2 = [v5 diagnostics];
    v28 = diagnostics2;
    if (diagnostics == diagnostics2)
    {
    }

    else
    {
      diagnostics3 = [(BMEvaluationCommonMetadata *)self diagnostics];
      diagnostics4 = [v5 diagnostics];
      v31 = [diagnostics3 isEqual:diagnostics4];

      if (!v31)
      {
        goto LABEL_34;
      }
    }

    prefilledQuestions = [(BMEvaluationCommonMetadata *)self prefilledQuestions];
    prefilledQuestions2 = [v5 prefilledQuestions];
    v34 = prefilledQuestions2;
    if (prefilledQuestions == prefilledQuestions2)
    {
    }

    else
    {
      prefilledQuestions3 = [(BMEvaluationCommonMetadata *)self prefilledQuestions];
      prefilledQuestions4 = [v5 prefilledQuestions];
      v37 = [prefilledQuestions3 isEqual:prefilledQuestions4];

      if (!v37)
      {
        goto LABEL_34;
      }
    }

    auxiliaryAttributes = [(BMEvaluationCommonMetadata *)self auxiliaryAttributes];
    auxiliaryAttributes2 = [v5 auxiliaryAttributes];
    v40 = auxiliaryAttributes2;
    if (auxiliaryAttributes == auxiliaryAttributes2)
    {
    }

    else
    {
      auxiliaryAttributes3 = [(BMEvaluationCommonMetadata *)self auxiliaryAttributes];
      auxiliaryAttributes4 = [v5 auxiliaryAttributes];
      v43 = [auxiliaryAttributes3 isEqual:auxiliaryAttributes4];

      if (!v43)
      {
        goto LABEL_34;
      }
    }

    systemBuild = [(BMEvaluationCommonMetadata *)self systemBuild];
    systemBuild2 = [v5 systemBuild];
    v46 = systemBuild2;
    if (systemBuild == systemBuild2)
    {
    }

    else
    {
      systemBuild3 = [(BMEvaluationCommonMetadata *)self systemBuild];
      systemBuild4 = [v5 systemBuild];
      v49 = [systemBuild3 isEqual:systemBuild4];

      if (!v49)
      {
LABEL_34:
        v12 = 0;
LABEL_35:

        goto LABEL_36;
      }
    }

    modelVersion = [(BMEvaluationCommonMetadata *)self modelVersion];
    modelVersion2 = [v5 modelVersion];
    if (modelVersion == modelVersion2)
    {
      v12 = 1;
    }

    else
    {
      modelVersion3 = [(BMEvaluationCommonMetadata *)self modelVersion];
      modelVersion4 = [v5 modelVersion];
      v12 = [modelVersion3 isEqual:modelVersion4];
    }

    goto LABEL_35;
  }

  v12 = 0;
LABEL_36:

  return v12;
}

- (NSUUID)evaluationUuid
{
  raw_evaluationUuid = self->_raw_evaluationUuid;
  if (raw_evaluationUuid)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_evaluationUuid toType:3];
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
  featureDomain = [(BMEvaluationCommonMetadata *)self featureDomain];
  bundleId = [(BMEvaluationCommonMetadata *)self bundleId];
  evaluationUuid = [(BMEvaluationCommonMetadata *)self evaluationUuid];
  uUIDString = [evaluationUuid UUIDString];

  if ([(BMEvaluationCommonMetadata *)self hasIsHighPriority])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMEvaluationCommonMetadata isHighPriority](self, "isHighPriority")}];
  }

  else
  {
    v7 = 0;
  }

  diagnostics = [(BMEvaluationCommonMetadata *)self diagnostics];
  _prefilledQuestionsJSONArray = [(BMEvaluationCommonMetadata *)self _prefilledQuestionsJSONArray];
  auxiliaryAttributes = [(BMEvaluationCommonMetadata *)self auxiliaryAttributes];
  jsonDictionary = [auxiliaryAttributes jsonDictionary];

  systemBuild = [(BMEvaluationCommonMetadata *)self systemBuild];
  modelVersion = [(BMEvaluationCommonMetadata *)self modelVersion];
  v34[0] = @"featureDomain";
  null = featureDomain;
  if (!featureDomain)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v28 = null;
  v35[0] = null;
  v34[1] = @"bundleId";
  null2 = bundleId;
  if (!bundleId)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = null2;
  v35[1] = null2;
  v34[2] = @"evaluationUuid";
  null3 = uUIDString;
  if (!uUIDString)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = featureDomain;
  v26 = null3;
  v35[2] = null3;
  v34[3] = @"isHighPriority";
  null4 = v7;
  if (!v7)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = bundleId;
  v25 = null4;
  v35[3] = null4;
  v34[4] = @"diagnostics";
  null5 = diagnostics;
  if (!diagnostics)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = uUIDString;
  v35[4] = null5;
  v34[5] = @"prefilledQuestions";
  null6 = _prefilledQuestionsJSONArray;
  if (!_prefilledQuestionsJSONArray)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v7;
  v35[5] = null6;
  v34[6] = @"auxiliaryAttributes";
  null7 = jsonDictionary;
  if (!jsonDictionary)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v35[6] = null7;
  v34[7] = @"systemBuild";
  null8 = systemBuild;
  if (!systemBuild)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v35[7] = null8;
  v34[8] = @"modelVersion";
  null9 = modelVersion;
  if (!modelVersion)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v35[8] = null9;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:9];
  if (modelVersion)
  {
    if (systemBuild)
    {
      goto LABEL_24;
    }

LABEL_38:

    if (jsonDictionary)
    {
      goto LABEL_25;
    }

    goto LABEL_39;
  }

  if (!systemBuild)
  {
    goto LABEL_38;
  }

LABEL_24:
  if (jsonDictionary)
  {
    goto LABEL_25;
  }

LABEL_39:

LABEL_25:
  if (!_prefilledQuestionsJSONArray)
  {
  }

  if (!diagnostics)
  {
  }

  if (!v19)
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

- (id)_prefilledQuestionsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  prefilledQuestions = [(BMEvaluationCommonMetadata *)self prefilledQuestions];
  v5 = [prefilledQuestions countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(prefilledQuestions);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [prefilledQuestions countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMEvaluationCommonMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v168[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"featureDomain"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"bundleId"];
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v133 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v133 = v8;
LABEL_7:
      v9 = [dictionaryCopy objectForKeyedSubscript:@"evaluationUuid"];
      v134 = v9;
      if (!v9 || (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v132 = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          selfCopy4 = 0;
          v35 = v133;
LABEL_107:

          goto LABEL_108;
        }

        v46 = objc_alloc(MEMORY[0x1E696ABC0]);
        v47 = v8;
        v48 = *MEMORY[0x1E698F240];
        v161 = *MEMORY[0x1E696A578];
        v49 = v7;
        v50 = objc_alloc(MEMORY[0x1E696AEC0]);
        v114 = objc_opt_class();
        v51 = v50;
        v7 = v49;
        v52 = [v51 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v114, @"evaluationUuid"];
        v162 = v52;
        v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v162 forKeys:&v161 count:1];
        v54 = v48;
        v8 = v47;
        v43 = v52;
        *error = [v46 initWithDomain:v54 code:2 userInfo:v53];

        selfCopy4 = 0;
        v35 = v133;
LABEL_106:

        goto LABEL_107;
      }

      selfCopy5 = self;
      v18 = v10;
      v19 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v18];
      if (v19)
      {
        v20 = v19;

        v132 = v20;
        self = selfCopy5;
LABEL_10:
        v11 = [dictionaryCopy objectForKeyedSubscript:@"isHighPriority"];
        v131 = v11;
        if (!v11 || (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v125 = 0;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v125 = v12;
LABEL_13:
          v13 = [dictionaryCopy objectForKeyedSubscript:@"diagnostics"];
          v129 = v13;
          if (v13 && (v14 = v13, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (error)
              {
                v65 = objc_alloc(MEMORY[0x1E696ABC0]);
                v66 = v7;
                v67 = *MEMORY[0x1E698F240];
                v157 = *MEMORY[0x1E696A578];
                v68 = v8;
                v69 = objc_alloc(MEMORY[0x1E696AEC0]);
                v116 = objc_opt_class();
                v70 = v69;
                v8 = v68;
                v15 = [v70 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v116, @"diagnostics"];
                v158 = v15;
                v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v158 forKeys:&v157 count:1];
                v72 = v67;
                v7 = v66;
                v137 = v71;
                v73 = [v65 initWithDomain:v72 code:2 userInfo:?];
                v130 = 0;
                selfCopy4 = 0;
                *error = v73;
                v43 = v132;
                v35 = v133;

                goto LABEL_102;
              }

              v130 = 0;
              selfCopy4 = 0;
              v43 = v132;
              v35 = v133;
              goto LABEL_103;
            }

            v123 = v8;
            v130 = v14;
          }

          else
          {
            v123 = v8;
            v130 = 0;
          }

          v15 = [dictionaryCopy objectForKeyedSubscript:@"prefilledQuestions"];
          null = [MEMORY[0x1E695DFB0] null];
          v17 = [(BMCustomAttributes *)v15 isEqual:null];

          if (v17)
          {
            v119 = v6;
            v121 = dictionaryCopy;
            selfCopy3 = self;

            v15 = 0;
          }

          else
          {
            if (v15)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (error)
                {
                  v83 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v84 = v7;
                  v85 = *MEMORY[0x1E698F240];
                  v155 = *MEMORY[0x1E696A578];
                  v136 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"prefilledQuestions"];
                  v156 = v136;
                  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v156 forKeys:&v155 count:1];
                  v86 = v85;
                  v7 = v84;
                  v87 = [v83 initWithDomain:v86 code:2 userInfo:v26];
                  selfCopy4 = 0;
                  *error = v87;
                  goto LABEL_68;
                }

                selfCopy4 = 0;
                v8 = v123;
                v43 = v132;
                v35 = v133;
                goto LABEL_102;
              }
            }

            v119 = v6;
            v121 = dictionaryCopy;
            selfCopy3 = self;
          }

          v136 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[BMCustomAttributes count](v15, "count")}];
          v140 = 0u;
          v141 = 0u;
          v142 = 0u;
          v143 = 0u;
          v15 = v15;
          v21 = [(BMCustomAttributes *)v15 countByEnumeratingWithState:&v140 objects:v154 count:16];
          v122 = v7;
          if (!v21)
          {
            goto LABEL_38;
          }

          v22 = v21;
          v23 = *v141;
LABEL_30:
          v24 = 0;
          while (1)
          {
            if (*v141 != v23)
            {
              objc_enumerationMutation(v15);
            }

            v25 = *(*(&v140 + 1) + 8 * v24);
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
                v75 = objc_alloc(MEMORY[0x1E696ABC0]);
                v76 = *MEMORY[0x1E698F240];
                v150 = *MEMORY[0x1E696A578];
                v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"prefilledQuestions"];
                v151 = v26;
                v77 = MEMORY[0x1E695DF20];
                v78 = &v151;
                v79 = &v150;
                goto LABEL_59;
              }

              goto LABEL_67;
            }

            v26 = v25;
            v27 = [BMEvaluationCommonMetadataQuestionAnswer alloc];
            v139 = 0;
            v28 = [(BMEvaluationCommonMetadataQuestionAnswer *)v27 initWithJSONDictionary:v26 error:&v139];
            v29 = v139;
            if (v29)
            {
              v80 = v29;
              v8 = v123;
              v43 = v132;
              v35 = v133;
              if (error)
              {
                v82 = v29;
                *error = v80;
              }

              selfCopy4 = 0;
              v118 = v15;
              v6 = v119;
              dictionaryCopy = v121;
              self = selfCopy3;
LABEL_99:

              v7 = v122;
              v26 = v118;
              goto LABEL_100;
            }

            [v136 addObject:v28];

            if (v22 == ++v24)
            {
              v22 = [(BMCustomAttributes *)v15 countByEnumeratingWithState:&v140 objects:v154 count:16];
              v7 = v122;
              if (v22)
              {
                goto LABEL_30;
              }

LABEL_38:

              dictionaryCopy = v121;
              v26 = [v121 objectForKeyedSubscript:@"auxiliaryAttributes"];
              if (!v26)
              {
                v118 = 0;
                self = selfCopy3;
                v6 = v119;
                goto LABEL_71;
              }

              objc_opt_class();
              self = selfCopy3;
              v6 = v119;
              if (objc_opt_isKindOfClass())
              {
                v118 = v26;
                v26 = 0;
                goto LABEL_71;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v80 = v26;
                v96 = [BMCustomAttributes alloc];
                v138 = 0;
                v97 = v26;
                v26 = [(BMCustomAttributes *)v96 initWithJSONDictionary:v80 error:&v138];
                v98 = v138;
                v8 = v123;
                if (v98)
                {
                  v43 = v132;
                  v35 = v133;
                  if (error)
                  {
                    v98 = v98;
                    *error = v98;
                  }

                  selfCopy4 = 0;
                  v118 = v80;
                  goto LABEL_99;
                }

                v118 = v97;

LABEL_71:
                v88 = [v121 objectForKeyedSubscript:@"systemBuild"];
                v128 = v88;
                if (!v88)
                {
                  v80 = 0;
                  v8 = v123;
                  goto LABEL_88;
                }

                v89 = v88;
                objc_opt_class();
                v8 = v123;
                if (objc_opt_isKindOfClass())
                {
                  v80 = 0;
                  goto LABEL_88;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v80 = v89;
LABEL_88:
                  v99 = [v121 objectForKeyedSubscript:@"modelVersion"];
                  if (!v99)
                  {
                    v101 = v8;
                    v102 = v6;
                    v103 = 0;
                    v100 = 0;
                    goto LABEL_95;
                  }

                  objc_opt_class();
                  v100 = v99;
                  v101 = v8;
                  if (objc_opt_isKindOfClass())
                  {
                    v102 = v6;
                    v103 = 0;
                    goto LABEL_95;
                  }

                  objc_opt_class();
                  v102 = v6;
                  if (objc_opt_isKindOfClass())
                  {
                    v103 = v99;
LABEL_95:
                    self = [(BMEvaluationCommonMetadata *)self initWithFeatureDomain:v122 bundleId:v133 evaluationUuid:v132 isHighPriority:v125 diagnostics:v130 prefilledQuestions:v136 auxiliaryAttributes:v26 systemBuild:v80 modelVersion:v103];
                    selfCopy4 = self;
                  }

                  else
                  {
                    if (error)
                    {
                      v124 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v120 = *MEMORY[0x1E698F240];
                      v144 = *MEMORY[0x1E696A578];
                      v111 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"modelVersion"];
                      v145 = v111;
                      v112 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v145 forKeys:&v144 count:1];
                      *error = [v124 initWithDomain:v120 code:2 userInfo:v112];
                    }

                    v103 = 0;
                    selfCopy4 = 0;
                  }

LABEL_96:

                  v6 = v102;
                  v8 = v101;
                }

                else
                {
                  if (error)
                  {
                    v101 = v123;
                    v102 = v6;
                    v108 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v109 = *MEMORY[0x1E698F240];
                    v146 = *MEMORY[0x1E696A578];
                    v103 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"systemBuild"];
                    v147 = v103;
                    v100 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v147 forKeys:&v146 count:1];
                    v110 = [v108 initWithDomain:v109 code:2 userInfo:v100];
                    v80 = 0;
                    selfCopy4 = 0;
                    *error = v110;
                    goto LABEL_96;
                  }

                  v80 = 0;
                  selfCopy4 = 0;
                }

LABEL_98:
                v43 = v132;
                v35 = v133;
                goto LABEL_99;
              }

              if (error)
              {
                v117 = objc_alloc(MEMORY[0x1E696ABC0]);
                v106 = *MEMORY[0x1E698F240];
                v148 = *MEMORY[0x1E696A578];
                v118 = v26;
                v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"auxiliaryAttributes"];
                v149 = v26;
                v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v149 forKeys:&v148 count:1];
                v107 = v106;
                v6 = v119;
                selfCopy4 = 0;
                *error = [v117 initWithDomain:v107 code:2 userInfo:v80];
LABEL_60:
                v8 = v123;
                goto LABEL_98;
              }

              selfCopy4 = 0;
LABEL_68:
              v8 = v123;
              v43 = v132;
              v35 = v133;
LABEL_100:

LABEL_102:
LABEL_103:
              v64 = v125;
LABEL_104:

              goto LABEL_105;
            }
          }

          errorCopy2 = error;
          if (error)
          {
            v75 = objc_alloc(MEMORY[0x1E696ABC0]);
            v76 = *MEMORY[0x1E698F240];
            v152 = *MEMORY[0x1E696A578];
            v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"prefilledQuestions"];
            v153 = v26;
            v77 = MEMORY[0x1E695DF20];
            v78 = &v153;
            v79 = &v152;
LABEL_59:
            v80 = [v77 dictionaryWithObjects:v78 forKeys:v79 count:1];
            v81 = [v75 initWithDomain:v76 code:2 userInfo:v80];
            selfCopy4 = 0;
            *errorCopy2 = v81;
            v118 = v15;
            v6 = v119;
            dictionaryCopy = v121;
            self = selfCopy3;
            goto LABEL_60;
          }

LABEL_67:
          selfCopy4 = 0;
          v26 = v15;
          v6 = v119;
          dictionaryCopy = v121;
          self = selfCopy3;
          v7 = v122;
          goto LABEL_68;
        }

        if (error)
        {
          v55 = objc_alloc(MEMORY[0x1E696ABC0]);
          v56 = v8;
          v57 = *MEMORY[0x1E698F240];
          v159 = *MEMORY[0x1E696A578];
          v58 = v7;
          v59 = objc_alloc(MEMORY[0x1E696AEC0]);
          v115 = objc_opt_class();
          v60 = v59;
          v7 = v58;
          v130 = [v60 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v115, @"isHighPriority"];
          v160 = v130;
          v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v160 forKeys:&v159 count:1];
          v62 = v57;
          v8 = v56;
          v129 = v61;
          v63 = [v55 initWithDomain:v62 code:2 userInfo:?];
          v64 = 0;
          selfCopy4 = 0;
          *error = v63;
          v43 = v132;
          v35 = v133;
          goto LABEL_104;
        }

        v64 = 0;
        selfCopy4 = 0;
        v43 = v132;
        v35 = v133;
LABEL_105:

        goto LABEL_106;
      }

      if (error)
      {
        v90 = objc_alloc(MEMORY[0x1E696ABC0]);
        v91 = v8;
        v92 = *MEMORY[0x1E698F240];
        v163 = *MEMORY[0x1E696A578];
        v93 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"evaluationUuid"];
        v164 = v93;
        v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v164 forKeys:&v163 count:1];
        v95 = v92;
        v8 = v91;
        *error = [v90 initWithDomain:v95 code:2 userInfo:v94];
      }

      selfCopy4 = 0;
      v43 = v18;
      v134 = v18;
      v35 = v133;
LABEL_77:
      self = selfCopy5;
      goto LABEL_106;
    }

    if (error)
    {
      v40 = objc_alloc(MEMORY[0x1E696ABC0]);
      v41 = v8;
      v42 = *MEMORY[0x1E698F240];
      v165 = *MEMORY[0x1E696A578];
      selfCopy5 = self;
      v134 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleId"];
      v166 = v134;
      v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v166 forKeys:&v165 count:1];
      v44 = v42;
      v8 = v41;
      v45 = [v40 initWithDomain:v44 code:2 userInfo:v43];
      v35 = 0;
      selfCopy4 = 0;
      *error = v45;
      goto LABEL_77;
    }

    v35 = 0;
    selfCopy4 = 0;
LABEL_108:

    goto LABEL_109;
  }

  if (error)
  {
    v30 = objc_alloc(MEMORY[0x1E696ABC0]);
    v31 = *MEMORY[0x1E698F240];
    v167 = *MEMORY[0x1E696A578];
    selfCopy6 = self;
    v33 = objc_alloc(MEMORY[0x1E696AEC0]);
    v113 = objc_opt_class();
    v34 = v33;
    self = selfCopy6;
    v35 = [v34 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v113, @"featureDomain"];
    v168[0] = v35;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v168 forKeys:&v167 count:1];
    v37 = v31;
    v8 = v36;
    v38 = [v30 initWithDomain:v37 code:2 userInfo:v36];
    v7 = 0;
    selfCopy4 = 0;
    *error = v38;
    goto LABEL_108;
  }

  v7 = 0;
  selfCopy4 = 0;
LABEL_109:

  v104 = *MEMORY[0x1E69E9840];
  return selfCopy4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMEvaluationCommonMetadata *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_featureDomain)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_raw_evaluationUuid)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_hasIsHighPriority)
  {
    isHighPriority = self->_isHighPriority;
    PBDataWriterWriteBOOLField();
  }

  if (self->_diagnostics)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_prefilledQuestions;
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

  if (self->_auxiliaryAttributes)
  {
    PBDataWriterPlaceMark();
    [(BMCustomAttributes *)self->_auxiliaryAttributes writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_systemBuild)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_modelVersion)
  {
    PBDataWriterWriteStringField();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v38.receiver = self;
  v38.super_class = BMEvaluationCommonMetadata;
  v5 = [(BMEventBase *)&v38 init];
  if (!v5)
  {
    goto LABEL_62;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_60;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v39) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v39 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v39 & 0x7F) << v8;
        if ((v39 & 0x80) == 0)
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

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_60;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 4)
      {
        break;
      }

      if (v16 <= 6)
      {
        if (v16 == 5)
        {
          v17 = PBReaderReadString();
          v18 = 48;
          goto LABEL_52;
        }

        if (v16 != 6)
        {
          goto LABEL_56;
        }

        v39 = 0;
        v40 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_65;
        }

        v26 = [[BMEvaluationCommonMetadataQuestionAnswer alloc] initByReadFrom:fromCopy];
        if (!v26)
        {
          goto LABEL_65;
        }

        v27 = v26;
        [v6 addObject:v26];
        PBReaderRecallMark();
      }

      else
      {
        if (v16 != 7)
        {
          if (v16 == 8)
          {
            v17 = PBReaderReadString();
            v18 = 72;
LABEL_52:
            raw_evaluationUuid = *(&v5->super.super.isa + v18);
            *(&v5->super.super.isa + v18) = v17;
LABEL_53:

            goto LABEL_54;
          }

          if (v16 == 9)
          {
            v17 = PBReaderReadString();
            v18 = 80;
            goto LABEL_52;
          }

LABEL_56:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_65;
          }

          goto LABEL_54;
        }

        v39 = 0;
        v40 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_65;
        }

        v30 = [[BMCustomAttributes alloc] initByReadFrom:fromCopy];
        if (!v30)
        {
          goto LABEL_65;
        }

        auxiliaryAttributes = v5->_auxiliaryAttributes;
        v5->_auxiliaryAttributes = v30;

        PBReaderRecallMark();
      }

LABEL_54:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_60;
      }
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v28 = PBReaderReadData();
        if ([(NSData *)v28 length]!= 16)
        {

LABEL_65:
          goto LABEL_61;
        }

        raw_evaluationUuid = v5->_raw_evaluationUuid;
        v5->_raw_evaluationUuid = v28;
        goto LABEL_53;
      }

      if (v16 == 4)
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v5->_hasIsHighPriority = 1;
        while (1)
        {
          LOBYTE(v39) = 0;
          v22 = [fromCopy position] + 1;
          if (v22 >= [fromCopy position] && (v23 = objc_msgSend(fromCopy, "position") + 1, v23 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v39 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v21 |= (v39 & 0x7F) << v19;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v14 = v20++ >= 9;
          if (v14)
          {
            LOBYTE(v25) = 0;
            goto LABEL_59;
          }
        }

        v25 = (v21 != 0) & ~[fromCopy hasError];
LABEL_59:
        v5->_isHighPriority = v25;
        goto LABEL_54;
      }
    }

    else
    {
      if (v16 == 1)
      {
        v17 = PBReaderReadString();
        v18 = 32;
        goto LABEL_52;
      }

      if (v16 == 2)
      {
        v17 = PBReaderReadString();
        v18 = 40;
        goto LABEL_52;
      }
    }

    goto LABEL_56;
  }

LABEL_60:
  v33 = [v6 copy];
  prefilledQuestions = v5->_prefilledQuestions;
  v5->_prefilledQuestions = v33;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_61:
    v36 = 0;
  }

  else
  {
LABEL_62:
    v36 = v5;
  }

  return v36;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  featureDomain = [(BMEvaluationCommonMetadata *)self featureDomain];
  bundleId = [(BMEvaluationCommonMetadata *)self bundleId];
  evaluationUuid = [(BMEvaluationCommonMetadata *)self evaluationUuid];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMEvaluationCommonMetadata isHighPriority](self, "isHighPriority")}];
  diagnostics = [(BMEvaluationCommonMetadata *)self diagnostics];
  prefilledQuestions = [(BMEvaluationCommonMetadata *)self prefilledQuestions];
  auxiliaryAttributes = [(BMEvaluationCommonMetadata *)self auxiliaryAttributes];
  systemBuild = [(BMEvaluationCommonMetadata *)self systemBuild];
  modelVersion = [(BMEvaluationCommonMetadata *)self modelVersion];
  v13 = [v3 initWithFormat:@"BMEvaluationCommonMetadata with featureDomain: %@, bundleId: %@, evaluationUuid: %@, isHighPriority: %@, diagnostics: %@, prefilledQuestions: %@, auxiliaryAttributes: %@, systemBuild: %@, modelVersion: %@", featureDomain, bundleId, evaluationUuid, v7, diagnostics, prefilledQuestions, auxiliaryAttributes, systemBuild, modelVersion];

  return v13;
}

- (BMEvaluationCommonMetadata)initWithFeatureDomain:(id)domain bundleId:(id)id evaluationUuid:(id)uuid isHighPriority:(id)priority diagnostics:(id)diagnostics prefilledQuestions:(id)questions auxiliaryAttributes:(id)attributes systemBuild:(id)self0 modelVersion:(id)self1
{
  v33[2] = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  idCopy = id;
  uuidCopy = uuid;
  priorityCopy = priority;
  diagnosticsCopy = diagnostics;
  questionsCopy = questions;
  attributesCopy = attributes;
  buildCopy = build;
  versionCopy = version;
  v32.receiver = self;
  v32.super_class = BMEvaluationCommonMetadata;
  v20 = [(BMEventBase *)&v32 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v20->_featureDomain, domain);
    objc_storeStrong(&v20->_bundleId, id);
    if (uuidCopy)
    {
      v33[0] = 0;
      v33[1] = 0;
      [uuidCopy getUUIDBytes:v33];
      v21 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v33 length:16];
      raw_evaluationUuid = v20->_raw_evaluationUuid;
      v20->_raw_evaluationUuid = v21;
    }

    else
    {
      raw_evaluationUuid = v20->_raw_evaluationUuid;
      v20->_raw_evaluationUuid = 0;
    }

    if (priorityCopy)
    {
      v20->_hasIsHighPriority = 1;
      v20->_isHighPriority = [priorityCopy BOOLValue];
    }

    else
    {
      v20->_hasIsHighPriority = 0;
      v20->_isHighPriority = 0;
    }

    objc_storeStrong(&v20->_diagnostics, diagnostics);
    objc_storeStrong(&v20->_prefilledQuestions, questions);
    objc_storeStrong(&v20->_auxiliaryAttributes, attributes);
    objc_storeStrong(&v20->_systemBuild, build);
    objc_storeStrong(&v20->_modelVersion, version);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v20;
}

+ (id)protoFields
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"featureDomain" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleId" number:2 type:13 subMessageClass:{0, v2}];
  v14[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"evaluationUuid" number:3 type:14 subMessageClass:0];
  v14[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isHighPriority" number:4 type:12 subMessageClass:0];
  v14[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"diagnostics" number:5 type:13 subMessageClass:0];
  v14[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"prefilledQuestions" number:6 type:14 subMessageClass:objc_opt_class()];
  v14[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"auxiliaryAttributes" number:7 type:14 subMessageClass:objc_opt_class()];
  v14[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"systemBuild" number:8 type:13 subMessageClass:0];
  v14[7] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"modelVersion" number:9 type:13 subMessageClass:0];
  v14[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"featureDomain" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleId" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"evaluationUuid" dataType:6 requestOnly:0 fieldNumber:3 protoDataType:14 convertedType:3];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isHighPriority" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"diagnostics" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"prefilledQuestions_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_375];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"auxiliaryAttributes_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_377];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"systemBuild" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"modelVersion" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
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

id __37__BMEvaluationCommonMetadata_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 auxiliaryAttributes];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __37__BMEvaluationCommonMetadata_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _prefilledQuestionsJSONArray];
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

    v8 = [[BMEvaluationCommonMetadata alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[7] = 0;
    }
  }

  return v4;
}

@end