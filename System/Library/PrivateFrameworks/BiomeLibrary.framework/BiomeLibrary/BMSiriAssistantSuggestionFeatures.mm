@interface BMSiriAssistantSuggestionFeatures
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriAssistantSuggestionFeatures)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSiriAssistantSuggestionFeatures)initWithSuggestionDetails:(id)details appUsageFeatures:(id)features deviceFeatures:(id)deviceFeatures environmentFeatures:(id)environmentFeatures icloudFeatures:(id)icloudFeatures temporalFeatures:(id)temporalFeatures engagementLabels:(id)labels userSegmentation:(id)self0 loggingType:(int)self1;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriAssistantSuggestionFeatures

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    suggestionDetails = [(BMSiriAssistantSuggestionFeatures *)self suggestionDetails];
    suggestionDetails2 = [v5 suggestionDetails];
    v8 = suggestionDetails2;
    if (suggestionDetails == suggestionDetails2)
    {
    }

    else
    {
      suggestionDetails3 = [(BMSiriAssistantSuggestionFeatures *)self suggestionDetails];
      suggestionDetails4 = [v5 suggestionDetails];
      v11 = [suggestionDetails3 isEqual:suggestionDetails4];

      if (!v11)
      {
        goto LABEL_33;
      }
    }

    appUsageFeatures = [(BMSiriAssistantSuggestionFeatures *)self appUsageFeatures];
    appUsageFeatures2 = [v5 appUsageFeatures];
    v15 = appUsageFeatures2;
    if (appUsageFeatures == appUsageFeatures2)
    {
    }

    else
    {
      appUsageFeatures3 = [(BMSiriAssistantSuggestionFeatures *)self appUsageFeatures];
      appUsageFeatures4 = [v5 appUsageFeatures];
      v18 = [appUsageFeatures3 isEqual:appUsageFeatures4];

      if (!v18)
      {
        goto LABEL_33;
      }
    }

    deviceFeatures = [(BMSiriAssistantSuggestionFeatures *)self deviceFeatures];
    deviceFeatures2 = [v5 deviceFeatures];
    v21 = deviceFeatures2;
    if (deviceFeatures == deviceFeatures2)
    {
    }

    else
    {
      deviceFeatures3 = [(BMSiriAssistantSuggestionFeatures *)self deviceFeatures];
      deviceFeatures4 = [v5 deviceFeatures];
      v24 = [deviceFeatures3 isEqual:deviceFeatures4];

      if (!v24)
      {
        goto LABEL_33;
      }
    }

    environmentFeatures = [(BMSiriAssistantSuggestionFeatures *)self environmentFeatures];
    environmentFeatures2 = [v5 environmentFeatures];
    v27 = environmentFeatures2;
    if (environmentFeatures == environmentFeatures2)
    {
    }

    else
    {
      environmentFeatures3 = [(BMSiriAssistantSuggestionFeatures *)self environmentFeatures];
      environmentFeatures4 = [v5 environmentFeatures];
      v30 = [environmentFeatures3 isEqual:environmentFeatures4];

      if (!v30)
      {
        goto LABEL_33;
      }
    }

    icloudFeatures = [(BMSiriAssistantSuggestionFeatures *)self icloudFeatures];
    icloudFeatures2 = [v5 icloudFeatures];
    v33 = icloudFeatures2;
    if (icloudFeatures == icloudFeatures2)
    {
    }

    else
    {
      icloudFeatures3 = [(BMSiriAssistantSuggestionFeatures *)self icloudFeatures];
      icloudFeatures4 = [v5 icloudFeatures];
      v36 = [icloudFeatures3 isEqual:icloudFeatures4];

      if (!v36)
      {
        goto LABEL_33;
      }
    }

    temporalFeatures = [(BMSiriAssistantSuggestionFeatures *)self temporalFeatures];
    temporalFeatures2 = [v5 temporalFeatures];
    v39 = temporalFeatures2;
    if (temporalFeatures == temporalFeatures2)
    {
    }

    else
    {
      temporalFeatures3 = [(BMSiriAssistantSuggestionFeatures *)self temporalFeatures];
      temporalFeatures4 = [v5 temporalFeatures];
      v42 = [temporalFeatures3 isEqual:temporalFeatures4];

      if (!v42)
      {
        goto LABEL_33;
      }
    }

    engagementLabels = [(BMSiriAssistantSuggestionFeatures *)self engagementLabels];
    engagementLabels2 = [v5 engagementLabels];
    v45 = engagementLabels2;
    if (engagementLabels == engagementLabels2)
    {
    }

    else
    {
      engagementLabels3 = [(BMSiriAssistantSuggestionFeatures *)self engagementLabels];
      engagementLabels4 = [v5 engagementLabels];
      v48 = [engagementLabels3 isEqual:engagementLabels4];

      if (!v48)
      {
        goto LABEL_33;
      }
    }

    userSegmentation = [(BMSiriAssistantSuggestionFeatures *)self userSegmentation];
    userSegmentation2 = [v5 userSegmentation];
    v51 = userSegmentation2;
    if (userSegmentation == userSegmentation2)
    {
    }

    else
    {
      userSegmentation3 = [(BMSiriAssistantSuggestionFeatures *)self userSegmentation];
      userSegmentation4 = [v5 userSegmentation];
      v54 = [userSegmentation3 isEqual:userSegmentation4];

      if (!v54)
      {
LABEL_33:
        v12 = 0;
LABEL_34:

        goto LABEL_35;
      }
    }

    loggingType = [(BMSiriAssistantSuggestionFeatures *)self loggingType];
    v12 = loggingType == [v5 loggingType];
    goto LABEL_34;
  }

  v12 = 0;
LABEL_35:

  return v12;
}

- (id)jsonDictionary
{
  v41[9] = *MEMORY[0x1E69E9840];
  suggestionDetails = [(BMSiriAssistantSuggestionFeatures *)self suggestionDetails];
  jsonDictionary = [suggestionDetails jsonDictionary];

  appUsageFeatures = [(BMSiriAssistantSuggestionFeatures *)self appUsageFeatures];
  jsonDictionary2 = [appUsageFeatures jsonDictionary];

  deviceFeatures = [(BMSiriAssistantSuggestionFeatures *)self deviceFeatures];
  jsonDictionary3 = [deviceFeatures jsonDictionary];

  environmentFeatures = [(BMSiriAssistantSuggestionFeatures *)self environmentFeatures];
  jsonDictionary4 = [environmentFeatures jsonDictionary];

  icloudFeatures = [(BMSiriAssistantSuggestionFeatures *)self icloudFeatures];
  jsonDictionary5 = [icloudFeatures jsonDictionary];

  temporalFeatures = [(BMSiriAssistantSuggestionFeatures *)self temporalFeatures];
  jsonDictionary6 = [temporalFeatures jsonDictionary];

  engagementLabels = [(BMSiriAssistantSuggestionFeatures *)self engagementLabels];
  jsonDictionary7 = [engagementLabels jsonDictionary];

  userSegmentation = [(BMSiriAssistantSuggestionFeatures *)self userSegmentation];
  jsonDictionary8 = [userSegmentation jsonDictionary];

  v18 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriAssistantSuggestionFeatures loggingType](self, "loggingType")}];
  v40[0] = @"suggestionDetails";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v34 = null;
  v41[0] = null;
  v40[1] = @"appUsageFeatures";
  null2 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = null2;
  v41[1] = null2;
  v40[2] = @"deviceFeatures";
  null3 = jsonDictionary3;
  if (!jsonDictionary3)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = jsonDictionary;
  v32 = null3;
  v41[2] = null3;
  v40[3] = @"environmentFeatures";
  null4 = jsonDictionary4;
  if (!jsonDictionary4)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = jsonDictionary2;
  v31 = null4;
  v41[3] = null4;
  v40[4] = @"icloudFeatures";
  null5 = jsonDictionary5;
  if (!jsonDictionary5)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = jsonDictionary3;
  v41[4] = null5;
  v40[5] = @"temporalFeatures";
  null6 = jsonDictionary6;
  if (!jsonDictionary6)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v41[5] = null6;
  v40[6] = @"engagementLabels";
  null7 = jsonDictionary7;
  if (!jsonDictionary7)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = jsonDictionary5;
  v41[6] = null7;
  v40[7] = @"userSegmentation";
  null8 = jsonDictionary8;
  if (!jsonDictionary8)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v41[7] = null8;
  v40[8] = @"loggingType";
  null9 = v18;
  if (!v18)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v41[8] = null9;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:9];
  if (v18)
  {
    if (jsonDictionary8)
    {
      goto LABEL_21;
    }

LABEL_35:

    if (jsonDictionary7)
    {
      goto LABEL_22;
    }

    goto LABEL_36;
  }

  if (!jsonDictionary8)
  {
    goto LABEL_35;
  }

LABEL_21:
  if (jsonDictionary7)
  {
    goto LABEL_22;
  }

LABEL_36:

LABEL_22:
  if (!jsonDictionary6)
  {
  }

  if (!v26)
  {
  }

  if (!jsonDictionary4)
  {
  }

  if (v36)
  {
    if (v37)
    {
      goto LABEL_30;
    }

LABEL_38:

    if (v38)
    {
      goto LABEL_31;
    }

    goto LABEL_39;
  }

  if (!v37)
  {
    goto LABEL_38;
  }

LABEL_30:
  if (v38)
  {
    goto LABEL_31;
  }

LABEL_39:

LABEL_31:
  v29 = *MEMORY[0x1E69E9840];

  return v35;
}

- (BMSiriAssistantSuggestionFeatures)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v122[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"suggestionDetails"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"appUsageFeatures"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = 0;
LABEL_7:
      v11 = [dictionaryCopy objectForKeyedSubscript:@"deviceFeatures"];
      selfCopy = self;
      if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v24 = 0;
LABEL_110:
            self = selfCopy;
            goto LABEL_111;
          }

          v91 = objc_alloc(MEMORY[0x1E696ABC0]);
          errorCopy = error;
          v43 = v9;
          v44 = *MEMORY[0x1E698F240];
          v117 = *MEMORY[0x1E696A578];
          v45 = v10;
          v46 = v8;
          v47 = objc_alloc(MEMORY[0x1E696AEC0]);
          v71 = objc_opt_class();
          v48 = v47;
          v8 = v46;
          v10 = v45;
          v27 = [v48 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v71, @"deviceFeatures"];
          v118 = v27;
          v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
          v49 = v44;
          v9 = v43;
          v24 = 0;
          *errorCopy = [v91 initWithDomain:v49 code:2 userInfo:v12];
          goto LABEL_109;
        }

        v12 = v11;
        v102 = 0;
        v27 = [[BMSiriAssistantSuggestionFeaturesDeviceFeatures alloc] initWithJSONDictionary:v12 error:&v102];
        v28 = v102;
        if (v28)
        {
          if (error)
          {
            v28 = v28;
            *error = v28;
          }

          v24 = 0;
          goto LABEL_109;
        }

        v93 = v27;
        v89 = v10;
      }

      else
      {
        v89 = v10;
        v93 = 0;
      }

      v12 = [dictionaryCopy objectForKeyedSubscript:@"environmentFeatures"];
      errorCopy2 = error;
      v92 = v8;
      if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v90 = 0;
        goto LABEL_13;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v34 = v12;
        v101 = 0;
        v90 = [[BMSiriAssistantSuggestionFeaturesEnvironmentFeatures alloc] initWithJSONDictionary:v34 error:&v101];
        v35 = v101;
        if (v35)
        {
          v36 = v34;
          v27 = v93;
          if (errorCopy2)
          {
            v35 = v35;
            *errorCopy2 = v35;
          }

          v24 = 0;
          v10 = v89;
          v14 = v36;
          goto LABEL_108;
        }

LABEL_13:
        v14 = [dictionaryCopy objectForKeyedSubscript:@"icloudFeatures"];
        v86 = v9;
        if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!error)
            {
              v24 = 0;
              v10 = v89;
              v27 = v93;
LABEL_107:
              v9 = v86;
              goto LABEL_108;
            }

            v56 = objc_alloc(MEMORY[0x1E696ABC0]);
            v84 = *MEMORY[0x1E698F240];
            v113 = *MEMORY[0x1E696A578];
            v87 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"icloudFeatures"];
            v114 = v87;
            v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
            v24 = 0;
            *errorCopy2 = [v56 initWithDomain:v84 code:2 userInfo:v15];
            goto LABEL_116;
          }

          v15 = v14;
          v100 = 0;
          v87 = [[BMSiriAssistantSuggestionFeaturesiCloudFeatures alloc] initWithJSONDictionary:v15 error:&v100];
          v42 = v100;
          if (v42)
          {
            v27 = v93;
            if (error)
            {
              v42 = v42;
              *error = v42;
            }

            v24 = 0;
            v10 = v89;
            goto LABEL_106;
          }
        }

        else
        {
          v87 = 0;
        }

        v15 = [dictionaryCopy objectForKeyedSubscript:@"temporalFeatures"];
        if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v78 = v15;
          v79 = 0;
          goto LABEL_19;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v50 = v15;
          v99 = 0;
          v20 = [[BMSiriAssistantSuggestionFeaturesTemporalFeatures alloc] initWithJSONDictionary:v50 error:&v99];
          v51 = v99;
          if (v51)
          {
            v83 = v50;
            v27 = v93;
            if (errorCopy2)
            {
              v51 = v51;
              *errorCopy2 = v51;
            }

            v24 = 0;
            v10 = v89;
            goto LABEL_105;
          }

          v78 = v15;
          v79 = v20;

          error = errorCopy2;
LABEL_19:
          v16 = [dictionaryCopy objectForKeyedSubscript:@"engagementLabels"];
          v83 = v16;
          if (v16 && (v17 = v16, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v20 = v79;
              if (!errorCopy2)
              {
                v24 = 0;
                v10 = v89;
                v27 = v93;
                v15 = v78;
                goto LABEL_105;
              }

              v61 = objc_alloc(MEMORY[0x1E696ABC0]);
              v77 = *MEMORY[0x1E698F240];
              v109 = *MEMORY[0x1E696A578];
              v81 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"engagementLabels"];
              v110 = v81;
              v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
              v63 = v77;
              v76 = v62;
              v24 = 0;
              *errorCopy2 = [v61 initWithDomain:v63 code:2 userInfo:?];
              v10 = v89;
              v27 = v93;
              goto LABEL_103;
            }

            v54 = v17;
            v98 = 0;
            v81 = [[BMSiriAssistantSuggestionFeaturesEngagementLabels alloc] initWithJSONDictionary:v54 error:&v98];
            v55 = v98;
            v20 = v79;
            if (v55)
            {
              v76 = v54;
              v27 = v93;
              if (errorCopy2)
              {
                v55 = v55;
                *errorCopy2 = v55;
              }

              v24 = 0;
              v10 = v89;
              goto LABEL_103;
            }

            v73 = v14;

            error = errorCopy2;
          }

          else
          {
            v73 = v14;
            v81 = 0;
          }

          v18 = [dictionaryCopy objectForKeyedSubscript:@"userSegmentation"];
          v76 = v18;
          if (v18 && (v19 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!error)
              {
                v24 = 0;
                v10 = v89;
                v27 = v93;
                v15 = v78;
                v20 = v79;
                v14 = v73;
                goto LABEL_104;
              }

              v64 = objc_alloc(MEMORY[0x1E696ABC0]);
              v65 = *MEMORY[0x1E698F240];
              v107 = *MEMORY[0x1E696A578];
              v75 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"userSegmentation"];
              v108 = v75;
              v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
              v66 = [v64 initWithDomain:v65 code:2 userInfo:v22];
              v24 = 0;
              *error = v66;
              v10 = v89;
              v27 = v93;
              v20 = v79;
              v14 = v73;
              goto LABEL_102;
            }

            v22 = v19;
            v97 = 0;
            v75 = [[BMSiriAssistantSuggestionFeaturesUserSegmentation alloc] initWithJSONDictionary:v22 error:&v97];
            v57 = v97;
            v20 = v79;
            if (v57)
            {
              v27 = v93;
              v14 = v73;
              if (errorCopy2)
              {
                v57 = v57;
                *errorCopy2 = v57;
              }

              v24 = 0;
              v10 = v89;
              goto LABEL_102;
            }
          }

          else
          {
            v75 = 0;
            v20 = v79;
          }

          v14 = v73;
          v21 = [dictionaryCopy objectForKeyedSubscript:@"loggingType"];
          if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v60 = v21;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (errorCopy2)
                {
                  v80 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v74 = *MEMORY[0x1E698F240];
                  v105 = *MEMORY[0x1E696A578];
                  v69 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"loggingType"];
                  v106 = v69;
                  v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
                  *errorCopy2 = [v80 initWithDomain:v74 code:2 userInfo:v70];
                }

                v22 = 0;
                v24 = 0;
                v10 = v89;
                goto LABEL_101;
              }

              v60 = [MEMORY[0x1E696AD98] numberWithInt:BMSiriAssistantSuggestionFeaturesLoggingTypeFromString(v21)];
            }

            v22 = v60;
          }

          else
          {
            v22 = 0;
          }

          LODWORD(v72) = [v22 intValue];
          v10 = v89;
          v24 = [(BMSiriAssistantSuggestionFeatures *)selfCopy initWithSuggestionDetails:v92 appUsageFeatures:v89 deviceFeatures:v93 environmentFeatures:v90 icloudFeatures:v87 temporalFeatures:v20 engagementLabels:v81 userSegmentation:v75 loggingType:v72];
          selfCopy = v24;
LABEL_101:

          v27 = v93;
LABEL_102:

LABEL_103:
          v15 = v78;
LABEL_104:

          goto LABEL_105;
        }

        if (error)
        {
          v85 = objc_alloc(MEMORY[0x1E696ABC0]);
          v82 = *MEMORY[0x1E698F240];
          v111 = *MEMORY[0x1E696A578];
          v112 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"temporalFeatures"];
          v20 = v112;
          v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
          v59 = v85;
          v83 = v58;
          v24 = 0;
          *errorCopy2 = [v59 initWithDomain:v82 code:2 userInfo:?];
          v10 = v89;
          v27 = v93;
LABEL_105:

LABEL_106:
          goto LABEL_107;
        }

        v24 = 0;
LABEL_116:
        v10 = v89;
        v27 = v93;
        goto LABEL_106;
      }

      if (error)
      {
        v88 = objc_alloc(MEMORY[0x1E696ABC0]);
        v52 = *MEMORY[0x1E698F240];
        v115 = *MEMORY[0x1E696A578];
        v90 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"environmentFeatures"];
        v116 = v90;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
        v53 = [v88 initWithDomain:v52 code:2 userInfo:v14];
        v24 = 0;
        *error = v53;
        v10 = v89;
        v27 = v93;
LABEL_108:

        v8 = v92;
        goto LABEL_109;
      }

      v24 = 0;
      v10 = v89;
      v27 = v93;
LABEL_109:

      goto LABEL_110;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v9;
      v103 = 0;
      v25 = [[BMSiriAssistantSuggestionFeaturesAppUsageFeatures alloc] initWithJSONDictionary:v11 error:&v103];
      v26 = v103;
      if (!v26)
      {

        v10 = v25;
        goto LABEL_7;
      }

      if (error)
      {
        v26 = v26;
        *error = v26;
      }

      v24 = 0;
LABEL_52:
      v10 = v25;
LABEL_111:

      goto LABEL_112;
    }

    if (error)
    {
      v37 = objc_alloc(MEMORY[0x1E696ABC0]);
      errorCopy3 = error;
      v38 = v9;
      v39 = *MEMORY[0x1E698F240];
      v119 = *MEMORY[0x1E696A578];
      v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"appUsageFeatures"];
      v120 = v25;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
      v40 = v39;
      v9 = v38;
      v41 = [v37 initWithDomain:v40 code:2 userInfo:v11];
      v24 = 0;
      *errorCopy3 = v41;
      goto LABEL_52;
    }

    v24 = 0;
LABEL_112:

    goto LABEL_113;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
    v104 = 0;
    v8 = [[BMSiriAssistantSuggestionFeaturesSuggestionDetails alloc] initWithJSONDictionary:v9 error:&v104];
    v23 = v104;
    if (v23)
    {
      if (error)
      {
        v23 = v23;
        *error = v23;
      }

      v24 = 0;
      goto LABEL_112;
    }

    goto LABEL_4;
  }

  if (error)
  {
    v29 = objc_alloc(MEMORY[0x1E696ABC0]);
    v30 = *MEMORY[0x1E698F240];
    v121 = *MEMORY[0x1E696A578];
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"suggestionDetails"];
    v122[0] = v8;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v122 forKeys:&v121 count:1];
    v32 = v30;
    v9 = v31;
    v33 = [v29 initWithDomain:v32 code:2 userInfo:v31];
    v24 = 0;
    *error = v33;
    goto LABEL_112;
  }

  v24 = 0;
LABEL_113:

  v67 = *MEMORY[0x1E69E9840];
  return v24;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriAssistantSuggestionFeatures *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_suggestionDetails)
  {
    PBDataWriterPlaceMark();
    [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self->_suggestionDetails writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_appUsageFeatures)
  {
    PBDataWriterPlaceMark();
    [(BMSiriAssistantSuggestionFeaturesAppUsageFeatures *)self->_appUsageFeatures writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_deviceFeatures)
  {
    PBDataWriterPlaceMark();
    [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self->_deviceFeatures writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_environmentFeatures)
  {
    PBDataWriterPlaceMark();
    [(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self->_environmentFeatures writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_icloudFeatures)
  {
    PBDataWriterPlaceMark();
    [(BMSiriAssistantSuggestionFeaturesiCloudFeatures *)self->_icloudFeatures writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_temporalFeatures)
  {
    PBDataWriterPlaceMark();
    [(BMSiriAssistantSuggestionFeaturesTemporalFeatures *)self->_temporalFeatures writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_engagementLabels)
  {
    PBDataWriterPlaceMark();
    [(BMSiriAssistantSuggestionFeaturesEngagementLabels *)self->_engagementLabels writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_userSegmentation)
  {
    PBDataWriterPlaceMark();
    [(BMSiriAssistantSuggestionFeaturesUserSegmentation *)self->_userSegmentation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  loggingType = self->_loggingType;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v29.receiver = self;
  v29.super_class = BMSiriAssistantSuggestionFeatures;
  v5 = [(BMEventBase *)&v29 init];
  if (!v5)
  {
    goto LABEL_74;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v30) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v30 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v30 & 0x7F) << v7;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        if (v8++ >= 9)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 4)
      {
        if (v15 > 2)
        {
          if (v15 == 3)
          {
            v30 = 0;
            v31 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_73;
            }

            v23 = [[BMSiriAssistantSuggestionFeaturesDeviceFeatures alloc] initByReadFrom:fromCopy];
            if (!v23)
            {
              goto LABEL_73;
            }

            v24 = 40;
            goto LABEL_63;
          }

          if (v15 == 4)
          {
            v30 = 0;
            v31 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_73;
            }

            v23 = [[BMSiriAssistantSuggestionFeaturesEnvironmentFeatures alloc] initByReadFrom:fromCopy];
            if (!v23)
            {
              goto LABEL_73;
            }

            v24 = 48;
            goto LABEL_63;
          }
        }

        else
        {
          if (v15 == 1)
          {
            v30 = 0;
            v31 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_73;
            }

            v23 = [[BMSiriAssistantSuggestionFeaturesSuggestionDetails alloc] initByReadFrom:fromCopy];
            if (!v23)
            {
              goto LABEL_73;
            }

            v24 = 24;
            goto LABEL_63;
          }

          if (v15 == 2)
          {
            v30 = 0;
            v31 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_73;
            }

            v23 = [[BMSiriAssistantSuggestionFeaturesAppUsageFeatures alloc] initByReadFrom:fromCopy];
            if (!v23)
            {
              goto LABEL_73;
            }

            v24 = 32;
            goto LABEL_63;
          }
        }
      }

      else if (v15 <= 6)
      {
        if (v15 == 5)
        {
          v30 = 0;
          v31 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_73;
          }

          v23 = [[BMSiriAssistantSuggestionFeaturesiCloudFeatures alloc] initByReadFrom:fromCopy];
          if (!v23)
          {
            goto LABEL_73;
          }

          v24 = 56;
          goto LABEL_63;
        }

        if (v15 == 6)
        {
          v30 = 0;
          v31 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_73;
          }

          v23 = [[BMSiriAssistantSuggestionFeaturesTemporalFeatures alloc] initByReadFrom:fromCopy];
          if (!v23)
          {
            goto LABEL_73;
          }

          v24 = 64;
          goto LABEL_63;
        }
      }

      else
      {
        switch(v15)
        {
          case 7:
            v30 = 0;
            v31 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_73;
            }

            v23 = [[BMSiriAssistantSuggestionFeaturesEngagementLabels alloc] initByReadFrom:fromCopy];
            if (!v23)
            {
              goto LABEL_73;
            }

            v24 = 72;
            goto LABEL_63;
          case 8:
            v30 = 0;
            v31 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_73;
            }

            v23 = [[BMSiriAssistantSuggestionFeaturesUserSegmentation alloc] initByReadFrom:fromCopy];
            if (!v23)
            {
              goto LABEL_73;
            }

            v24 = 80;
LABEL_63:
            v25 = *(&v5->super.super.isa + v24);
            *(&v5->super.super.isa + v24) = v23;

            PBReaderRecallMark();
            goto LABEL_64;
          case 9:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            while (1)
            {
              LOBYTE(v30) = 0;
              v19 = [fromCopy position] + 1;
              if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v30 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 |= (v30 & 0x7F) << v16;
              if ((v30 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              if (v17++ > 8)
              {
                goto LABEL_70;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v18 > 2)
            {
LABEL_70:
              LODWORD(v18) = 0;
            }

            v5->_loggingType = v18;
            goto LABEL_64;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_73;
      }

LABEL_64:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_73:
    v27 = 0;
  }

  else
  {
LABEL_74:
    v27 = v5;
  }

  return v27;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  suggestionDetails = [(BMSiriAssistantSuggestionFeatures *)self suggestionDetails];
  appUsageFeatures = [(BMSiriAssistantSuggestionFeatures *)self appUsageFeatures];
  deviceFeatures = [(BMSiriAssistantSuggestionFeatures *)self deviceFeatures];
  environmentFeatures = [(BMSiriAssistantSuggestionFeatures *)self environmentFeatures];
  icloudFeatures = [(BMSiriAssistantSuggestionFeatures *)self icloudFeatures];
  temporalFeatures = [(BMSiriAssistantSuggestionFeatures *)self temporalFeatures];
  engagementLabels = [(BMSiriAssistantSuggestionFeatures *)self engagementLabels];
  userSegmentation = [(BMSiriAssistantSuggestionFeatures *)self userSegmentation];
  v12 = BMSiriAssistantSuggestionFeaturesLoggingTypeAsString([(BMSiriAssistantSuggestionFeatures *)self loggingType]);
  v13 = [v3 initWithFormat:@"BMSiriAssistantSuggestionFeatures with suggestionDetails: %@, appUsageFeatures: %@, deviceFeatures: %@, environmentFeatures: %@, icloudFeatures: %@, temporalFeatures: %@, engagementLabels: %@, userSegmentation: %@, loggingType: %@", suggestionDetails, appUsageFeatures, deviceFeatures, environmentFeatures, icloudFeatures, temporalFeatures, engagementLabels, userSegmentation, v12];

  return v13;
}

- (BMSiriAssistantSuggestionFeatures)initWithSuggestionDetails:(id)details appUsageFeatures:(id)features deviceFeatures:(id)deviceFeatures environmentFeatures:(id)environmentFeatures icloudFeatures:(id)icloudFeatures temporalFeatures:(id)temporalFeatures engagementLabels:(id)labels userSegmentation:(id)self0 loggingType:(int)self1
{
  detailsCopy = details;
  featuresCopy = features;
  deviceFeaturesCopy = deviceFeatures;
  environmentFeaturesCopy = environmentFeatures;
  icloudFeaturesCopy = icloudFeatures;
  temporalFeaturesCopy = temporalFeatures;
  labelsCopy = labels;
  segmentationCopy = segmentation;
  v28.receiver = self;
  v28.super_class = BMSiriAssistantSuggestionFeatures;
  v19 = [(BMEventBase *)&v28 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v19->_suggestionDetails, details);
    objc_storeStrong(&v19->_appUsageFeatures, features);
    objc_storeStrong(&v19->_deviceFeatures, deviceFeatures);
    objc_storeStrong(&v19->_environmentFeatures, environmentFeatures);
    objc_storeStrong(&v19->_icloudFeatures, icloudFeatures);
    objc_storeStrong(&v19->_temporalFeatures, temporalFeatures);
    objc_storeStrong(&v19->_engagementLabels, labels);
    objc_storeStrong(&v19->_userSegmentation, segmentation);
    v19->_loggingType = type;
  }

  return v19;
}

+ (id)protoFields
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestionDetails" number:1 type:14 subMessageClass:objc_opt_class()];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appUsageFeatures" number:2 type:14 subMessageClass:{objc_opt_class(), v2}];
  v14[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceFeatures" number:3 type:14 subMessageClass:objc_opt_class()];
  v14[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"environmentFeatures" number:4 type:14 subMessageClass:objc_opt_class()];
  v14[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"icloudFeatures" number:5 type:14 subMessageClass:objc_opt_class()];
  v14[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"temporalFeatures" number:6 type:14 subMessageClass:objc_opt_class()];
  v14[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"engagementLabels" number:7 type:14 subMessageClass:objc_opt_class()];
  v14[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userSegmentation" number:8 type:14 subMessageClass:objc_opt_class()];
  v14[7] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"loggingType" number:9 type:4 subMessageClass:0];
  v14[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"suggestionDetails_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1168];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"appUsageFeatures_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1170];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"deviceFeatures_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1172];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"environmentFeatures_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1174];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"icloudFeatures_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1176];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"temporalFeatures_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1178];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"engagementLabels_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1180];
  v9 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"userSegmentation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1182];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"loggingType" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:4 convertedType:0];
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

id __44__BMSiriAssistantSuggestionFeatures_columns__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 userSegmentation];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __44__BMSiriAssistantSuggestionFeatures_columns__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 engagementLabels];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __44__BMSiriAssistantSuggestionFeatures_columns__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 temporalFeatures];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __44__BMSiriAssistantSuggestionFeatures_columns__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 icloudFeatures];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __44__BMSiriAssistantSuggestionFeatures_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 environmentFeatures];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __44__BMSiriAssistantSuggestionFeatures_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 deviceFeatures];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __44__BMSiriAssistantSuggestionFeatures_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 appUsageFeatures];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __44__BMSiriAssistantSuggestionFeatures_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 suggestionDetails];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
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

    v8 = [[BMSiriAssistantSuggestionFeatures alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end