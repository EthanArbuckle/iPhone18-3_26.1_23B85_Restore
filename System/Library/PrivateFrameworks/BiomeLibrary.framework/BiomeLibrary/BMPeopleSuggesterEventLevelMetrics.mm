@interface BMPeopleSuggesterEventLevelMetrics
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMPeopleSuggesterEventLevelMetrics)initWithIndexSelected:(id)a3 engagedSuggestionProxyReason:(id)a4 engagedSuggestionProxy:(id)a5 engagedSuggestionProxyDebug:(id)a6 airdropShown:(id)a7 airdropEngaged:(id)a8 sharePlayAvailable:(id)a9 sharePlayEngaged:(id)a10 appSharingIntent:(id)a11 engagementType:(id)a12 suggestionAvailable:(id)a13 suggestionNumber:(id)a14 numberOfVisibleSuggestions:(id)a15 peopleSuggestionsSetting:(id)a16 transportApp:(id)a17 sourceApp:(id)a18 contentShared:(id)a19 sessionId:(id)a20 userExperienceFlow:(id)a21 sessionLatency:(id)a22 modelTimeout:(id)a23 suggestionPath:(id)a24 suggestionPathDebug:(id)a25 trialDeploymentId:(id)a26 trialExperimentId:(id)a27 trialTreatmentId:(id)a28 isPhotos:(id)a29 PSRActive:(id)a30 sessionDelayInMilliseconds:(id)a31 datestamp:(id)a32;
- (BMPeopleSuggesterEventLevelMetrics)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMPeopleSuggesterEventLevelMetrics

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMPeopleSuggesterEventLevelMetrics *)self indexSelected];
    v7 = [v5 indexSelected];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMPeopleSuggesterEventLevelMetrics *)self indexSelected];
      v10 = [v5 indexSelected];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_133;
      }
    }

    v13 = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxyReason];
    v14 = [v5 engagedSuggestionProxyReason];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxyReason];
      v17 = [v5 engagedSuggestionProxyReason];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_133;
      }
    }

    v19 = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxy];
    v20 = [v5 engagedSuggestionProxy];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxy];
      v23 = [v5 engagedSuggestionProxy];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_133;
      }
    }

    v25 = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxyDebug];
    v26 = [v5 engagedSuggestionProxyDebug];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxyDebug];
      v29 = [v5 engagedSuggestionProxyDebug];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_133;
      }
    }

    if (-[BMPeopleSuggesterEventLevelMetrics hasAirdropShown](self, "hasAirdropShown") || [v5 hasAirdropShown])
    {
      if (![(BMPeopleSuggesterEventLevelMetrics *)self hasAirdropShown])
      {
        goto LABEL_133;
      }

      if (![v5 hasAirdropShown])
      {
        goto LABEL_133;
      }

      v31 = [(BMPeopleSuggesterEventLevelMetrics *)self airdropShown];
      if (v31 != [v5 airdropShown])
      {
        goto LABEL_133;
      }
    }

    if (-[BMPeopleSuggesterEventLevelMetrics hasAirdropEngaged](self, "hasAirdropEngaged") || [v5 hasAirdropEngaged])
    {
      if (![(BMPeopleSuggesterEventLevelMetrics *)self hasAirdropEngaged])
      {
        goto LABEL_133;
      }

      if (![v5 hasAirdropEngaged])
      {
        goto LABEL_133;
      }

      v32 = [(BMPeopleSuggesterEventLevelMetrics *)self airdropEngaged];
      if (v32 != [v5 airdropEngaged])
      {
        goto LABEL_133;
      }
    }

    if (-[BMPeopleSuggesterEventLevelMetrics hasSharePlayAvailable](self, "hasSharePlayAvailable") || [v5 hasSharePlayAvailable])
    {
      if (![(BMPeopleSuggesterEventLevelMetrics *)self hasSharePlayAvailable])
      {
        goto LABEL_133;
      }

      if (![v5 hasSharePlayAvailable])
      {
        goto LABEL_133;
      }

      v33 = [(BMPeopleSuggesterEventLevelMetrics *)self sharePlayAvailable];
      if (v33 != [v5 sharePlayAvailable])
      {
        goto LABEL_133;
      }
    }

    if (-[BMPeopleSuggesterEventLevelMetrics hasSharePlayEngaged](self, "hasSharePlayEngaged") || [v5 hasSharePlayEngaged])
    {
      if (![(BMPeopleSuggesterEventLevelMetrics *)self hasSharePlayEngaged])
      {
        goto LABEL_133;
      }

      if (![v5 hasSharePlayEngaged])
      {
        goto LABEL_133;
      }

      v34 = [(BMPeopleSuggesterEventLevelMetrics *)self sharePlayEngaged];
      if (v34 != [v5 sharePlayEngaged])
      {
        goto LABEL_133;
      }
    }

    if (-[BMPeopleSuggesterEventLevelMetrics hasAppSharingIntent](self, "hasAppSharingIntent") || [v5 hasAppSharingIntent])
    {
      if (![(BMPeopleSuggesterEventLevelMetrics *)self hasAppSharingIntent])
      {
        goto LABEL_133;
      }

      if (![v5 hasAppSharingIntent])
      {
        goto LABEL_133;
      }

      v35 = [(BMPeopleSuggesterEventLevelMetrics *)self appSharingIntent];
      if (v35 != [v5 appSharingIntent])
      {
        goto LABEL_133;
      }
    }

    v36 = [(BMPeopleSuggesterEventLevelMetrics *)self engagementType];
    v37 = [v5 engagementType];
    v38 = v37;
    if (v36 == v37)
    {
    }

    else
    {
      v39 = [(BMPeopleSuggesterEventLevelMetrics *)self engagementType];
      v40 = [v5 engagementType];
      v41 = [v39 isEqual:v40];

      if (!v41)
      {
        goto LABEL_133;
      }
    }

    if (-[BMPeopleSuggesterEventLevelMetrics hasSuggestionAvailable](self, "hasSuggestionAvailable") || [v5 hasSuggestionAvailable])
    {
      if (![(BMPeopleSuggesterEventLevelMetrics *)self hasSuggestionAvailable])
      {
        goto LABEL_133;
      }

      if (![v5 hasSuggestionAvailable])
      {
        goto LABEL_133;
      }

      v42 = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionAvailable];
      if (v42 != [v5 suggestionAvailable])
      {
        goto LABEL_133;
      }
    }

    v43 = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionNumber];
    v44 = [v5 suggestionNumber];
    v45 = v44;
    if (v43 == v44)
    {
    }

    else
    {
      v46 = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionNumber];
      v47 = [v5 suggestionNumber];
      v48 = [v46 isEqual:v47];

      if (!v48)
      {
        goto LABEL_133;
      }
    }

    v49 = [(BMPeopleSuggesterEventLevelMetrics *)self numberOfVisibleSuggestions];
    v50 = [v5 numberOfVisibleSuggestions];
    v51 = v50;
    if (v49 == v50)
    {
    }

    else
    {
      v52 = [(BMPeopleSuggesterEventLevelMetrics *)self numberOfVisibleSuggestions];
      v53 = [v5 numberOfVisibleSuggestions];
      v54 = [v52 isEqual:v53];

      if (!v54)
      {
        goto LABEL_133;
      }
    }

    if (-[BMPeopleSuggesterEventLevelMetrics hasPeopleSuggestionsSetting](self, "hasPeopleSuggestionsSetting") || [v5 hasPeopleSuggestionsSetting])
    {
      if (![(BMPeopleSuggesterEventLevelMetrics *)self hasPeopleSuggestionsSetting])
      {
        goto LABEL_133;
      }

      if (![v5 hasPeopleSuggestionsSetting])
      {
        goto LABEL_133;
      }

      v55 = [(BMPeopleSuggesterEventLevelMetrics *)self peopleSuggestionsSetting];
      if (v55 != [v5 peopleSuggestionsSetting])
      {
        goto LABEL_133;
      }
    }

    v56 = [(BMPeopleSuggesterEventLevelMetrics *)self transportApp];
    v57 = [v5 transportApp];
    v58 = v57;
    if (v56 == v57)
    {
    }

    else
    {
      v59 = [(BMPeopleSuggesterEventLevelMetrics *)self transportApp];
      v60 = [v5 transportApp];
      v61 = [v59 isEqual:v60];

      if (!v61)
      {
        goto LABEL_133;
      }
    }

    v62 = [(BMPeopleSuggesterEventLevelMetrics *)self sourceApp];
    v63 = [v5 sourceApp];
    v64 = v63;
    if (v62 == v63)
    {
    }

    else
    {
      v65 = [(BMPeopleSuggesterEventLevelMetrics *)self sourceApp];
      v66 = [v5 sourceApp];
      v67 = [v65 isEqual:v66];

      if (!v67)
      {
        goto LABEL_133;
      }
    }

    v68 = [(BMPeopleSuggesterEventLevelMetrics *)self contentShared];
    v69 = [v5 contentShared];
    v70 = v69;
    if (v68 == v69)
    {
    }

    else
    {
      v71 = [(BMPeopleSuggesterEventLevelMetrics *)self contentShared];
      v72 = [v5 contentShared];
      v73 = [v71 isEqual:v72];

      if (!v73)
      {
        goto LABEL_133;
      }
    }

    v74 = [(BMPeopleSuggesterEventLevelMetrics *)self sessionId];
    v75 = [v5 sessionId];
    v76 = v75;
    if (v74 == v75)
    {
    }

    else
    {
      v77 = [(BMPeopleSuggesterEventLevelMetrics *)self sessionId];
      v78 = [v5 sessionId];
      v79 = [v77 isEqual:v78];

      if (!v79)
      {
        goto LABEL_133;
      }
    }

    v80 = [(BMPeopleSuggesterEventLevelMetrics *)self userExperienceFlow];
    v81 = [v5 userExperienceFlow];
    v82 = v81;
    if (v80 == v81)
    {
    }

    else
    {
      v83 = [(BMPeopleSuggesterEventLevelMetrics *)self userExperienceFlow];
      v84 = [v5 userExperienceFlow];
      v85 = [v83 isEqual:v84];

      if (!v85)
      {
        goto LABEL_133;
      }
    }

    if (-[BMPeopleSuggesterEventLevelMetrics hasSessionLatency](self, "hasSessionLatency") || [v5 hasSessionLatency])
    {
      if (![(BMPeopleSuggesterEventLevelMetrics *)self hasSessionLatency])
      {
        goto LABEL_133;
      }

      if (![v5 hasSessionLatency])
      {
        goto LABEL_133;
      }

      v86 = [(BMPeopleSuggesterEventLevelMetrics *)self sessionLatency];
      if (v86 != [v5 sessionLatency])
      {
        goto LABEL_133;
      }
    }

    if (-[BMPeopleSuggesterEventLevelMetrics hasModelTimeout](self, "hasModelTimeout") || [v5 hasModelTimeout])
    {
      if (![(BMPeopleSuggesterEventLevelMetrics *)self hasModelTimeout])
      {
        goto LABEL_133;
      }

      if (![v5 hasModelTimeout])
      {
        goto LABEL_133;
      }

      v87 = [(BMPeopleSuggesterEventLevelMetrics *)self modelTimeout];
      if (v87 != [v5 modelTimeout])
      {
        goto LABEL_133;
      }
    }

    v88 = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionPath];
    v89 = [v5 suggestionPath];
    v90 = v89;
    if (v88 == v89)
    {
    }

    else
    {
      v91 = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionPath];
      v92 = [v5 suggestionPath];
      v93 = [v91 isEqual:v92];

      if (!v93)
      {
        goto LABEL_133;
      }
    }

    v94 = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionPathDebug];
    v95 = [v5 suggestionPathDebug];
    v96 = v95;
    if (v94 == v95)
    {
    }

    else
    {
      v97 = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionPathDebug];
      v98 = [v5 suggestionPathDebug];
      v99 = [v97 isEqual:v98];

      if (!v99)
      {
        goto LABEL_133;
      }
    }

    v100 = [(BMPeopleSuggesterEventLevelMetrics *)self trialDeploymentId];
    v101 = [v5 trialDeploymentId];
    v102 = v101;
    if (v100 == v101)
    {
    }

    else
    {
      v103 = [(BMPeopleSuggesterEventLevelMetrics *)self trialDeploymentId];
      v104 = [v5 trialDeploymentId];
      v105 = [v103 isEqual:v104];

      if (!v105)
      {
        goto LABEL_133;
      }
    }

    v106 = [(BMPeopleSuggesterEventLevelMetrics *)self trialExperimentId];
    v107 = [v5 trialExperimentId];
    v108 = v107;
    if (v106 == v107)
    {
    }

    else
    {
      v109 = [(BMPeopleSuggesterEventLevelMetrics *)self trialExperimentId];
      v110 = [v5 trialExperimentId];
      v111 = [v109 isEqual:v110];

      if (!v111)
      {
        goto LABEL_133;
      }
    }

    v112 = [(BMPeopleSuggesterEventLevelMetrics *)self trialTreatmentId];
    v113 = [v5 trialTreatmentId];
    v114 = v113;
    if (v112 == v113)
    {
    }

    else
    {
      v115 = [(BMPeopleSuggesterEventLevelMetrics *)self trialTreatmentId];
      v116 = [v5 trialTreatmentId];
      v117 = [v115 isEqual:v116];

      if (!v117)
      {
        goto LABEL_133;
      }
    }

    if (!-[BMPeopleSuggesterEventLevelMetrics hasIsPhotos](self, "hasIsPhotos") && ![v5 hasIsPhotos] || -[BMPeopleSuggesterEventLevelMetrics hasIsPhotos](self, "hasIsPhotos") && objc_msgSend(v5, "hasIsPhotos") && (v118 = -[BMPeopleSuggesterEventLevelMetrics isPhotos](self, "isPhotos"), v118 == objc_msgSend(v5, "isPhotos")))
    {
      if (!-[BMPeopleSuggesterEventLevelMetrics hasPSRActive](self, "hasPSRActive") && ![v5 hasPSRActive] || -[BMPeopleSuggesterEventLevelMetrics hasPSRActive](self, "hasPSRActive") && objc_msgSend(v5, "hasPSRActive") && (v119 = -[BMPeopleSuggesterEventLevelMetrics PSRActive](self, "PSRActive"), v119 == objc_msgSend(v5, "PSRActive")))
      {
        if (!-[BMPeopleSuggesterEventLevelMetrics hasSessionDelayInMilliseconds](self, "hasSessionDelayInMilliseconds") && ![v5 hasSessionDelayInMilliseconds] || -[BMPeopleSuggesterEventLevelMetrics hasSessionDelayInMilliseconds](self, "hasSessionDelayInMilliseconds") && objc_msgSend(v5, "hasSessionDelayInMilliseconds") && (v120 = -[BMPeopleSuggesterEventLevelMetrics sessionDelayInMilliseconds](self, "sessionDelayInMilliseconds"), v120 == objc_msgSend(v5, "sessionDelayInMilliseconds")))
        {
          v121 = [(BMPeopleSuggesterEventLevelMetrics *)self datestamp];
          v122 = [v5 datestamp];
          if (v121 == v122)
          {
            v12 = 1;
          }

          else
          {
            v123 = [(BMPeopleSuggesterEventLevelMetrics *)self datestamp];
            v124 = [v5 datestamp];
            v12 = [v123 isEqual:v124];
          }

          goto LABEL_134;
        }
      }
    }

LABEL_133:
    v12 = 0;
LABEL_134:

    goto LABEL_135;
  }

  v12 = 0;
LABEL_135:

  return v12;
}

- (id)jsonDictionary
{
  v101[30] = *MEMORY[0x1E69E9840];
  v3 = [(BMPeopleSuggesterEventLevelMetrics *)self indexSelected];
  v4 = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxyReason];
  v5 = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxy];
  v6 = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxyDebug];
  if ([(BMPeopleSuggesterEventLevelMetrics *)self hasAirdropShown])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics airdropShown](self, "airdropShown")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMPeopleSuggesterEventLevelMetrics *)self hasAirdropEngaged])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics airdropEngaged](self, "airdropEngaged")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMPeopleSuggesterEventLevelMetrics *)self hasSharePlayAvailable])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics sharePlayAvailable](self, "sharePlayAvailable")}];
  }

  else
  {
    v9 = 0;
  }

  if ([(BMPeopleSuggesterEventLevelMetrics *)self hasSharePlayEngaged])
  {
    v99 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics sharePlayEngaged](self, "sharePlayEngaged")}];
  }

  else
  {
    v99 = 0;
  }

  if ([(BMPeopleSuggesterEventLevelMetrics *)self hasAppSharingIntent])
  {
    v98 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics appSharingIntent](self, "appSharingIntent")}];
  }

  else
  {
    v98 = 0;
  }

  v97 = [(BMPeopleSuggesterEventLevelMetrics *)self engagementType];
  if ([(BMPeopleSuggesterEventLevelMetrics *)self hasSuggestionAvailable])
  {
    v96 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics suggestionAvailable](self, "suggestionAvailable")}];
  }

  else
  {
    v96 = 0;
  }

  v95 = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionNumber];
  v94 = [(BMPeopleSuggesterEventLevelMetrics *)self numberOfVisibleSuggestions];
  if ([(BMPeopleSuggesterEventLevelMetrics *)self hasPeopleSuggestionsSetting])
  {
    v93 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics peopleSuggestionsSetting](self, "peopleSuggestionsSetting")}];
  }

  else
  {
    v93 = 0;
  }

  v92 = [(BMPeopleSuggesterEventLevelMetrics *)self transportApp];
  v91 = [(BMPeopleSuggesterEventLevelMetrics *)self sourceApp];
  v90 = [(BMPeopleSuggesterEventLevelMetrics *)self contentShared];
  v89 = [(BMPeopleSuggesterEventLevelMetrics *)self sessionId];
  v88 = [(BMPeopleSuggesterEventLevelMetrics *)self userExperienceFlow];
  if ([(BMPeopleSuggesterEventLevelMetrics *)self hasSessionLatency])
  {
    v87 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPeopleSuggesterEventLevelMetrics sessionLatency](self, "sessionLatency")}];
  }

  else
  {
    v87 = 0;
  }

  if ([(BMPeopleSuggesterEventLevelMetrics *)self hasModelTimeout])
  {
    v86 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics modelTimeout](self, "modelTimeout")}];
  }

  else
  {
    v86 = 0;
  }

  v85 = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionPath];
  v84 = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionPathDebug];
  v83 = [(BMPeopleSuggesterEventLevelMetrics *)self trialDeploymentId];
  v82 = [(BMPeopleSuggesterEventLevelMetrics *)self trialExperimentId];
  v81 = [(BMPeopleSuggesterEventLevelMetrics *)self trialTreatmentId];
  if ([(BMPeopleSuggesterEventLevelMetrics *)self hasIsPhotos])
  {
    v80 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics isPhotos](self, "isPhotos")}];
  }

  else
  {
    v80 = 0;
  }

  if ([(BMPeopleSuggesterEventLevelMetrics *)self hasPSRActive])
  {
    v79 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics PSRActive](self, "PSRActive")}];
  }

  else
  {
    v79 = 0;
  }

  if ([(BMPeopleSuggesterEventLevelMetrics *)self hasSessionDelayInMilliseconds])
  {
    v78 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPeopleSuggesterEventLevelMetrics sessionDelayInMilliseconds](self, "sessionDelayInMilliseconds")}];
  }

  else
  {
    v78 = 0;
  }

  v77 = [(BMPeopleSuggesterEventLevelMetrics *)self datestamp];
  v100[0] = @"indexSelected";
  v10 = v3;
  if (!v3)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v68 = v10;
  v101[0] = v10;
  v100[1] = @"engagedSuggestionProxyReason";
  v11 = v4;
  if (!v4)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v67 = v11;
  v101[1] = v11;
  v100[2] = @"engagedSuggestionProxy";
  v12 = v5;
  if (!v5)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v66 = v12;
  v101[2] = v12;
  v100[3] = @"engagedSuggestionProxyDebug";
  v13 = v6;
  if (!v6)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v65 = v13;
  v101[3] = v13;
  v100[4] = @"airdropShown";
  v14 = v7;
  if (!v7)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v64 = v14;
  v101[4] = v14;
  v100[5] = @"airdropEngaged";
  v15 = v8;
  if (!v8)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v63 = v15;
  v101[5] = v15;
  v100[6] = @"sharePlayAvailable";
  v16 = v9;
  if (!v9)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v62 = v16;
  v101[6] = v16;
  v100[7] = @"sharePlayEngaged";
  v17 = v99;
  if (!v99)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v101[7] = v17;
  v100[8] = @"appSharingIntent";
  v18 = v98;
  if (!v98)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v101[8] = v18;
  v100[9] = @"engagementType";
  v19 = v97;
  if (!v97)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v6;
  v72 = v19;
  v101[9] = v19;
  v100[10] = @"suggestionAvailable";
  v21 = v96;
  if (!v96)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v3;
  v60 = v21;
  v101[10] = v21;
  v100[11] = @"suggestionNumber";
  v23 = v95;
  if (!v95)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v5;
  v71 = v23;
  v101[11] = v23;
  v100[12] = @"numberOfVisibleSuggestions";
  v25 = v94;
  if (!v94)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v25;
  v101[12] = v25;
  v100[13] = @"peopleSuggestionsSetting";
  v27 = v93;
  if (!v93)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v59 = v27;
  v101[13] = v27;
  v100[14] = @"transportApp";
  v28 = v92;
  if (!v92)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v58 = v28;
  v101[14] = v28;
  v100[15] = @"sourceApp";
  v29 = v91;
  if (!v91)
  {
    v29 = [MEMORY[0x1E695DFB0] null];
  }

  v57 = v29;
  v101[15] = v29;
  v100[16] = @"contentShared";
  v30 = v90;
  if (!v90)
  {
    v30 = [MEMORY[0x1E695DFB0] null];
  }

  v56 = v30;
  v101[16] = v30;
  v100[17] = @"sessionId";
  v31 = v89;
  if (!v89)
  {
    v31 = [MEMORY[0x1E695DFB0] null];
  }

  v55 = v31;
  v101[17] = v31;
  v100[18] = @"userExperienceFlow";
  v32 = v88;
  if (!v88)
  {
    v32 = [MEMORY[0x1E695DFB0] null];
  }

  v54 = v32;
  v101[18] = v32;
  v100[19] = @"sessionLatency";
  v33 = v87;
  if (!v87)
  {
    v33 = [MEMORY[0x1E695DFB0] null];
  }

  v53 = v33;
  v101[19] = v33;
  v100[20] = @"modelTimeout";
  v34 = v86;
  if (!v86)
  {
    v34 = [MEMORY[0x1E695DFB0] null];
  }

  v52 = v34;
  v101[20] = v34;
  v100[21] = @"suggestionPath";
  v35 = v85;
  if (!v85)
  {
    v35 = [MEMORY[0x1E695DFB0] null];
  }

  v51 = v35;
  v101[21] = v35;
  v100[22] = @"suggestionPathDebug";
  v36 = v84;
  if (!v84)
  {
    v36 = [MEMORY[0x1E695DFB0] null];
  }

  v76 = v4;
  v50 = v36;
  v101[22] = v36;
  v100[23] = @"trialDeploymentId";
  v37 = v83;
  if (!v83)
  {
    v37 = [MEMORY[0x1E695DFB0] null];
  }

  v75 = v20;
  v48 = v37;
  v101[23] = v37;
  v100[24] = @"trialExperimentId";
  v38 = v82;
  if (!v82)
  {
    v38 = [MEMORY[0x1E695DFB0] null];
  }

  v73 = v22;
  v74 = v8;
  v101[24] = v38;
  v100[25] = @"trialTreatmentId";
  v39 = v81;
  if (!v81)
  {
    v39 = [MEMORY[0x1E695DFB0] null];
  }

  v61 = v18;
  v70 = v24;
  v101[25] = v39;
  v100[26] = @"isPhotos";
  v40 = v80;
  if (!v80)
  {
    v40 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = v7;
  v101[26] = v40;
  v100[27] = @"PSRActive";
  v42 = v79;
  if (!v79)
  {
    v42 = [MEMORY[0x1E695DFB0] null];
  }

  v101[27] = v42;
  v100[28] = @"sessionDelayInMilliseconds";
  v43 = v78;
  if (!v78)
  {
    v43 = [MEMORY[0x1E695DFB0] null];
  }

  v101[28] = v43;
  v100[29] = @"datestamp";
  v44 = v77;
  if (!v77)
  {
    v44 = [MEMORY[0x1E695DFB0] null];
  }

  v101[29] = v44;
  v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v101 forKeys:v100 count:{30, v48}];
  if (!v77)
  {
  }

  v45 = v26;
  if (!v78)
  {

    v45 = v26;
  }

  if (!v79)
  {

    v45 = v26;
  }

  if (!v80)
  {

    v45 = v26;
  }

  if (!v81)
  {

    v45 = v26;
  }

  if (!v82)
  {

    v45 = v26;
  }

  if (!v83)
  {

    v45 = v26;
  }

  if (!v84)
  {

    v45 = v26;
  }

  if (!v85)
  {

    v45 = v26;
  }

  if (!v86)
  {

    v45 = v26;
  }

  if (!v87)
  {

    v45 = v26;
  }

  if (!v88)
  {

    v45 = v26;
  }

  if (!v89)
  {

    v45 = v26;
  }

  if (!v90)
  {

    v45 = v26;
  }

  if (!v91)
  {

    v45 = v26;
  }

  if (!v92)
  {

    v45 = v26;
  }

  if (!v93)
  {

    v45 = v26;
  }

  if (!v94)
  {
  }

  if (!v95)
  {
  }

  if (!v96)
  {
  }

  if (!v97)
  {
  }

  if (!v98)
  {
  }

  if (v99)
  {
    if (v9)
    {
      goto LABEL_143;
    }
  }

  else
  {

    if (v9)
    {
LABEL_143:
      if (v74)
      {
        goto LABEL_144;
      }

      goto LABEL_154;
    }
  }

  if (v74)
  {
LABEL_144:
    if (v41)
    {
      goto LABEL_145;
    }

    goto LABEL_155;
  }

LABEL_154:

  if (v41)
  {
LABEL_145:
    if (v75)
    {
      goto LABEL_146;
    }

    goto LABEL_156;
  }

LABEL_155:

  if (v75)
  {
LABEL_146:
    if (v70)
    {
      goto LABEL_147;
    }

    goto LABEL_157;
  }

LABEL_156:

  if (v70)
  {
LABEL_147:
    if (v76)
    {
      goto LABEL_148;
    }

LABEL_158:

    if (v73)
    {
      goto LABEL_149;
    }

    goto LABEL_159;
  }

LABEL_157:

  if (!v76)
  {
    goto LABEL_158;
  }

LABEL_148:
  if (v73)
  {
    goto LABEL_149;
  }

LABEL_159:

LABEL_149:
  v46 = *MEMORY[0x1E69E9840];

  return v69;
}

- (BMPeopleSuggesterEventLevelMetrics)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v355[1] = *MEMORY[0x1E69E9840];
  v295 = a3;
  v5 = [v295 objectForKeyedSubscript:@"indexSelected"];
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
LABEL_4:
    v7 = [v295 objectForKeyedSubscript:@"engagedSuggestionProxyReason"];
    if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v8 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
LABEL_7:
      v9 = [v295 objectForKeyedSubscript:@"engagedSuggestionProxy"];
      if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v288 = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v288 = v9;
LABEL_10:
        v10 = [v295 objectForKeyedSubscript:@"engagedSuggestionProxyDebug"];
        v289 = v8;
        v287 = v6;
        if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v290 = 0;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v290 = v10;
LABEL_13:
          v292 = [v295 objectForKeyedSubscript:@"airdropShown"];
          if (!v292 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v283 = a4;
            a4 = 0;
            goto LABEL_16;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v283 = a4;
            a4 = v292;
LABEL_16:
            [v295 objectForKeyedSubscript:@"airdropEngaged"];
            v291 = v285 = a4;
            if (!v291 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v286 = 0;
              goto LABEL_19;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v286 = v291;
LABEL_19:
              v11 = [v295 objectForKeyedSubscript:@"sharePlayAvailable"];
              v282 = v11;
              if (!v11 || (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v281 = 0;
                goto LABEL_22;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v281 = v12;
LABEL_22:
                v13 = [v295 objectForKeyedSubscript:@"sharePlayEngaged"];
                v280 = v13;
                if (!v13 || (v14 = v13, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v279 = 0;
                  goto LABEL_25;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v279 = v14;
LABEL_25:
                  v284 = [v295 objectForKeyedSubscript:@"appSharingIntent"];
                  if (!v284 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v278 = 0;
                    goto LABEL_28;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v278 = v284;
LABEL_28:
                    v15 = [v295 objectForKeyedSubscript:@"engagementType"];
                    v276 = v15;
                    if (!v15 || (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v277 = 0;
                      goto LABEL_31;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v277 = v16;
LABEL_31:
                      v17 = [v295 objectForKeyedSubscript:@"suggestionAvailable"];
                      v275 = v17;
                      v8 = v289;
                      if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v273 = 0;
                        goto LABEL_34;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v273 = v17;
LABEL_34:
                        v18 = [v295 objectForKeyedSubscript:@"suggestionNumber"];
                        v269 = v18;
                        if (!v18 || (v19 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v270 = 0;
                          goto LABEL_37;
                        }

                        v95 = v10;
                        v96 = v5;
                        v97 = v7;
                        v98 = v9;
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v270 = v19;
                          v7 = v97;
                          v5 = v96;
                          v10 = v95;
                          v17 = v275;
LABEL_37:
                          v20 = [v295 objectForKeyedSubscript:@"numberOfVisibleSuggestions"];
                          v268 = v20;
                          if (!v20 || (v21 = v20, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v266 = 0;
                            goto LABEL_40;
                          }

                          v95 = v10;
                          v96 = v5;
                          v97 = v7;
                          v98 = v9;
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v266 = v21;
                            v7 = v97;
                            v5 = v96;
                            v10 = v95;
                            v17 = v275;
LABEL_40:
                            v271 = [v295 objectForKeyedSubscript:@"peopleSuggestionsSetting"];
                            if (!v271 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v267 = 0;
                              goto LABEL_43;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v267 = v271;
LABEL_43:
                              v22 = [v295 objectForKeyedSubscript:@"transportApp"];
                              v264 = v22;
                              if (!v22 || (v23 = v22, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v265 = 0;
                                goto LABEL_46;
                              }

                              v121 = v10;
                              v122 = v5;
                              v123 = v7;
                              v124 = v9;
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v265 = v23;
                                v7 = v123;
                                v5 = v122;
                                v10 = v121;
                                v17 = v275;
LABEL_46:
                                v24 = [v295 objectForKeyedSubscript:@"sourceApp"];
                                v262 = v24;
                                if (!v24 || (v25 = v24, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v263 = 0;
                                  goto LABEL_49;
                                }

                                v121 = v10;
                                v122 = v5;
                                v123 = v7;
                                v124 = v9;
                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v263 = v25;
                                  v7 = v123;
                                  v5 = v122;
                                  v10 = v121;
                                  v17 = v275;
LABEL_49:
                                  v26 = [v295 objectForKeyedSubscript:@"contentShared"];
                                  v260 = v26;
                                  if (!v26 || (v27 = v26, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v261 = 0;
                                    goto LABEL_52;
                                  }

                                  v121 = v10;
                                  v122 = v5;
                                  v123 = v7;
                                  v124 = v9;
                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v261 = v27;
                                    v7 = v123;
                                    v5 = v122;
                                    v10 = v121;
                                    v17 = v275;
LABEL_52:
                                    v28 = [v295 objectForKeyedSubscript:@"sessionId"];
                                    v258 = v28;
                                    if (!v28 || (v29 = v28, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v259 = 0;
                                      goto LABEL_55;
                                    }

                                    v121 = v10;
                                    v122 = v5;
                                    v123 = v7;
                                    v124 = v9;
                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v259 = v29;
                                      v7 = v123;
                                      v5 = v122;
                                      v10 = v121;
                                      v17 = v275;
LABEL_55:
                                      v30 = [v295 objectForKeyedSubscript:@"userExperienceFlow"];
                                      v256 = v30;
                                      if (!v30 || (v31 = v30, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v257 = 0;
                                        goto LABEL_58;
                                      }

                                      v121 = v10;
                                      v122 = v5;
                                      v123 = v7;
                                      v124 = v9;
                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v257 = v31;
                                        v7 = v123;
                                        v5 = v122;
                                        v10 = v121;
                                        v17 = v275;
LABEL_58:
                                        v32 = [v295 objectForKeyedSubscript:@"sessionLatency"];
                                        v254 = v32;
                                        if (!v32 || (v33 = v32, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v255 = 0;
LABEL_61:
                                          v34 = [v295 objectForKeyedSubscript:@"modelTimeout"];
                                          v252 = v34;
                                          if (v34 && (v35 = v34, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                          {
                                            objc_opt_class();
                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                            {
                                              if (!v283)
                                              {
                                                v253 = 0;
                                                v53 = 0;
                                                v58 = v288;
                                                v17 = v275;
                                                goto LABEL_233;
                                              }

                                              v166 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v167 = *MEMORY[0x1E698F240];
                                              v314 = *MEMORY[0x1E696A578];
                                              v168 = v5;
                                              v169 = v7;
                                              v170 = v9;
                                              v171 = objc_alloc(MEMORY[0x1E696AEC0]);
                                              v229 = objc_opt_class();
                                              v172 = v171;
                                              v9 = v170;
                                              v7 = v169;
                                              v5 = v168;
                                              v251 = [v172 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v229, @"modelTimeout"];
                                              v315 = v251;
                                              v250 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v315 forKeys:&v314 count:1];
                                              v253 = 0;
                                              v53 = 0;
                                              *v283 = [v166 initWithDomain:v167 code:2 userInfo:?];
                                              v58 = v288;
                                              goto LABEL_273;
                                            }

                                            v253 = v35;
                                          }

                                          else
                                          {
                                            v253 = 0;
                                          }

                                          v36 = [v295 objectForKeyedSubscript:@"suggestionPath"];
                                          v250 = v36;
                                          if (!v36 || (v37 = v36, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v251 = 0;
                                            goto LABEL_67;
                                          }

                                          v150 = v10;
                                          v151 = v5;
                                          v152 = v7;
                                          v153 = v9;
                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v251 = v37;
                                            v7 = v152;
                                            v5 = v151;
                                            v10 = v150;
                                            v17 = v275;
LABEL_67:
                                            v38 = [v295 objectForKeyedSubscript:@"suggestionPathDebug"];
                                            v248 = v38;
                                            if (!v38 || (v39 = v38, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v249 = 0;
                                              goto LABEL_70;
                                            }

                                            v150 = v10;
                                            v151 = v5;
                                            v152 = v7;
                                            v153 = v9;
                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v249 = v39;
                                              v7 = v152;
                                              v5 = v151;
                                              v10 = v150;
                                              v17 = v275;
LABEL_70:
                                              v40 = [v295 objectForKeyedSubscript:@"trialDeploymentId"];
                                              v246 = v40;
                                              if (!v40 || (v41 = v40, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                              {
                                                v247 = 0;
                                                goto LABEL_73;
                                              }

                                              v150 = v10;
                                              v151 = v5;
                                              v152 = v7;
                                              v153 = v9;
                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v247 = v41;
                                                v7 = v152;
                                                v5 = v151;
                                                v10 = v150;
                                                v17 = v275;
LABEL_73:
                                                v42 = [v295 objectForKeyedSubscript:@"trialExperimentId"];
                                                v242 = v42;
                                                if (!v42 || (v43 = v42, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                {
                                                  v245 = 0;
                                                  goto LABEL_76;
                                                }

                                                v150 = v10;
                                                v151 = v5;
                                                v152 = v7;
                                                v153 = v9;
                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v245 = v43;
                                                  v7 = v152;
                                                  v5 = v151;
                                                  v10 = v150;
                                                  v17 = v275;
LABEL_76:
                                                  v44 = [v295 objectForKeyedSubscript:@"trialTreatmentId"];
                                                  v240 = v44;
                                                  if (!v44 || (v45 = v44, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                  {
                                                    v243 = 0;
LABEL_79:
                                                    v46 = [v295 objectForKeyedSubscript:@"isPhotos"];
                                                    v239 = v46;
                                                    if (v46 && (v47 = v46, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                    {
                                                      objc_opt_class();
                                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                                      {
                                                        if (!v283)
                                                        {
                                                          v241 = 0;
                                                          v53 = 0;
                                                          v58 = v288;
                                                          v17 = v275;
                                                          goto LABEL_226;
                                                        }

                                                        v195 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v196 = *MEMORY[0x1E698F240];
                                                        v302 = *MEMORY[0x1E696A578];
                                                        v197 = v5;
                                                        v198 = v7;
                                                        v199 = v9;
                                                        v200 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                        v230 = objc_opt_class();
                                                        v201 = v200;
                                                        v9 = v199;
                                                        v7 = v198;
                                                        v5 = v197;
                                                        v237 = [v201 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v230, @"isPhotos"];
                                                        v303 = v237;
                                                        v182 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v303 forKeys:&v302 count:1];
                                                        v241 = 0;
                                                        v53 = 0;
                                                        *v283 = [v195 initWithDomain:v196 code:2 userInfo:v182];
                                                        v58 = v288;
                                                        v17 = v275;
LABEL_225:

LABEL_226:
                                                        v183 = v239;
LABEL_227:

LABEL_228:
LABEL_229:

LABEL_230:
LABEL_231:

LABEL_232:
LABEL_233:
                                                        v165 = v252;
                                                        goto LABEL_234;
                                                      }

                                                      v241 = v47;
                                                    }

                                                    else
                                                    {
                                                      v241 = 0;
                                                    }

                                                    v48 = [v295 objectForKeyedSubscript:@"PSRActive"];
                                                    v236 = v48;
                                                    if (v48)
                                                    {
                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        v48 = 0;
                                                      }

                                                      else
                                                      {
                                                        objc_opt_class();
                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                        {
                                                          if (!v283)
                                                          {
                                                            v237 = 0;
                                                            v53 = 0;
                                                            v58 = v288;
                                                            v17 = v275;
                                                            goto LABEL_224;
                                                          }

                                                          v202 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v203 = *MEMORY[0x1E698F240];
                                                          v300 = *MEMORY[0x1E696A578];
                                                          v204 = v5;
                                                          v205 = v7;
                                                          v206 = v9;
                                                          v207 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                          v231 = objc_opt_class();
                                                          v208 = v207;
                                                          v9 = v206;
                                                          v7 = v205;
                                                          v5 = v204;
                                                          v238 = [v208 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v231, @"PSRActive"];
                                                          v301 = v238;
                                                          v181 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v301 forKeys:&v300 count:1];
                                                          v237 = 0;
                                                          v53 = 0;
                                                          *v283 = [v202 initWithDomain:v203 code:2 userInfo:v181];
                                                          v58 = v288;
                                                          v17 = v275;
LABEL_223:

LABEL_224:
                                                          v182 = v236;
                                                          goto LABEL_225;
                                                        }

                                                        v48 = v48;
                                                      }
                                                    }

                                                    v177 = [v295 objectForKeyedSubscript:@"sessionDelayInMilliseconds"];
                                                    v237 = v48;
                                                    v235 = v177;
                                                    if (v177 && (v178 = v177, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                    {
                                                      objc_opt_class();
                                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                                      {
                                                        if (!v283)
                                                        {
                                                          v238 = 0;
                                                          v53 = 0;
                                                          v58 = v288;
                                                          v17 = v275;
                                                          v181 = v235;
                                                          goto LABEL_223;
                                                        }

                                                        v209 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v210 = *MEMORY[0x1E698F240];
                                                        v298 = *MEMORY[0x1E696A578];
                                                        v211 = v5;
                                                        v212 = v7;
                                                        v213 = v9;
                                                        v214 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                        v232 = objc_opt_class();
                                                        v215 = v214;
                                                        v9 = v213;
                                                        v7 = v212;
                                                        v5 = v211;
                                                        v181 = v235;
                                                        v233 = [v215 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v232, @"sessionDelayInMilliseconds"];
                                                        v299 = v233;
                                                        v234 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v299 forKeys:&v298 count:1];
                                                        v238 = 0;
                                                        v53 = 0;
                                                        *v283 = [v209 initWithDomain:v210 code:2 userInfo:?];
                                                        v58 = v288;
                                                        v17 = v275;
                                                        goto LABEL_222;
                                                      }

                                                      v238 = v178;
                                                    }

                                                    else
                                                    {
                                                      v238 = 0;
                                                    }

                                                    v179 = [v295 objectForKeyedSubscript:@"datestamp"];
                                                    v234 = v179;
                                                    if (v179)
                                                    {
                                                      v180 = v179;
                                                      objc_opt_class();
                                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                                      {
                                                        v190 = v10;
                                                        v191 = v7;
                                                        v192 = v9;
                                                        objc_opt_class();
                                                        v58 = v288;
                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                        {
                                                          if (v283)
                                                          {
                                                            v216 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v217 = *MEMORY[0x1E698F240];
                                                            v296 = *MEMORY[0x1E696A578];
                                                            v218 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"datestamp"];
                                                            v297 = v218;
                                                            v219 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v297 forKeys:&v296 count:1];
                                                            v220 = v216;
                                                            v58 = v288;
                                                            *v283 = [v220 initWithDomain:v217 code:2 userInfo:v219];
                                                          }

                                                          v233 = 0;
                                                          v53 = 0;
                                                          v9 = v192;
                                                          v7 = v191;
                                                          v10 = v190;
                                                          v17 = v275;
                                                          goto LABEL_221;
                                                        }

                                                        v179 = v180;
                                                        v7 = v191;
                                                        v10 = v190;
                                                        v17 = v275;
LABEL_220:
                                                        v233 = v179;
                                                        v53 = [(BMPeopleSuggesterEventLevelMetrics *)self initWithIndexSelected:v287 engagedSuggestionProxyReason:v289 engagedSuggestionProxy:v58 engagedSuggestionProxyDebug:v290 airdropShown:a4 airdropEngaged:v286 sharePlayAvailable:v281 sharePlayEngaged:v279 appSharingIntent:v278 engagementType:v277 suggestionAvailable:v273 suggestionNumber:v270 numberOfVisibleSuggestions:v266 peopleSuggestionsSetting:v267 transportApp:v265 sourceApp:v263 contentShared:v261 sessionId:v259 userExperienceFlow:v257 sessionLatency:v255 modelTimeout:v253 suggestionPath:v251 suggestionPathDebug:v249 trialDeploymentId:v247 trialExperimentId:v245 trialTreatmentId:v243 isPhotos:v241 PSRActive:v48 sessionDelayInMilliseconds:v238 datestamp:v179];
                                                        self = v53;
LABEL_221:
                                                        v181 = v235;
LABEL_222:

                                                        goto LABEL_223;
                                                      }

                                                      v179 = 0;
                                                    }

                                                    v58 = v288;
                                                    goto LABEL_220;
                                                  }

                                                  v150 = v10;
                                                  v151 = v5;
                                                  v152 = v7;
                                                  v153 = v9;
                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v243 = v45;
                                                    v7 = v152;
                                                    v5 = v151;
                                                    v10 = v150;
                                                    v17 = v275;
                                                    goto LABEL_79;
                                                  }

                                                  if (v283)
                                                  {
                                                    v244 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v193 = *MEMORY[0x1E698F240];
                                                    v304 = *MEMORY[0x1E696A578];
                                                    v241 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"trialTreatmentId"];
                                                    v305 = v241;
                                                    v183 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v305 forKeys:&v304 count:1];
                                                    v194 = [v244 initWithDomain:v193 code:2 userInfo:v183];
                                                    v243 = 0;
                                                    v53 = 0;
                                                    *v283 = v194;
                                                    v7 = v152;
                                                    v5 = v151;
                                                    v58 = v288;
                                                    v10 = v150;
                                                    v17 = v275;
                                                    goto LABEL_227;
                                                  }

                                                  v243 = 0;
                                                  v53 = 0;
LABEL_288:
                                                  v9 = v153;
                                                  v7 = v152;
                                                  v5 = v151;
                                                  v58 = v288;
                                                  v10 = v150;
                                                  v17 = v275;
                                                  goto LABEL_228;
                                                }

                                                if (v283)
                                                {
                                                  v188 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v189 = *MEMORY[0x1E698F240];
                                                  v306 = *MEMORY[0x1E696A578];
                                                  v243 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"trialExperimentId"];
                                                  v307 = v243;
                                                  v240 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v307 forKeys:&v306 count:1];
                                                  v245 = 0;
                                                  v53 = 0;
                                                  *v283 = [v188 initWithDomain:v189 code:2 userInfo:?];
                                                  goto LABEL_288;
                                                }

                                                v245 = 0;
                                                v53 = 0;
LABEL_286:
                                                v9 = v153;
                                                v7 = v152;
                                                v5 = v151;
                                                v58 = v288;
                                                v10 = v150;
                                                v17 = v275;
                                                goto LABEL_229;
                                              }

                                              if (v283)
                                              {
                                                v186 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v187 = *MEMORY[0x1E698F240];
                                                v308 = *MEMORY[0x1E696A578];
                                                v245 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"trialDeploymentId"];
                                                v309 = v245;
                                                v242 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v309 forKeys:&v308 count:1];
                                                v247 = 0;
                                                v53 = 0;
                                                *v283 = [v186 initWithDomain:v187 code:2 userInfo:?];
                                                goto LABEL_286;
                                              }

                                              v247 = 0;
                                              v53 = 0;
LABEL_281:
                                              v9 = v153;
                                              v7 = v152;
                                              v5 = v151;
                                              v58 = v288;
                                              v10 = v150;
                                              v17 = v275;
                                              goto LABEL_230;
                                            }

                                            if (v283)
                                            {
                                              v175 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v176 = *MEMORY[0x1E698F240];
                                              v310 = *MEMORY[0x1E696A578];
                                              v247 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"suggestionPathDebug"];
                                              v311 = v247;
                                              v246 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v311 forKeys:&v310 count:1];
                                              v249 = 0;
                                              v53 = 0;
                                              *v283 = [v175 initWithDomain:v176 code:2 userInfo:?];
                                              goto LABEL_281;
                                            }

                                            v249 = 0;
                                            v53 = 0;
LABEL_277:
                                            v9 = v153;
                                            v7 = v152;
                                            v5 = v151;
                                            v58 = v288;
                                            v10 = v150;
                                            v17 = v275;
                                            goto LABEL_231;
                                          }

                                          if (v283)
                                          {
                                            v173 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v174 = *MEMORY[0x1E698F240];
                                            v312 = *MEMORY[0x1E696A578];
                                            v249 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"suggestionPath"];
                                            v313 = v249;
                                            v248 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v313 forKeys:&v312 count:1];
                                            v251 = 0;
                                            v53 = 0;
                                            *v283 = [v173 initWithDomain:v174 code:2 userInfo:?];
                                            goto LABEL_277;
                                          }

                                          v251 = 0;
                                          v53 = 0;
                                          v7 = v152;
                                          v5 = v151;
                                          v58 = v288;
                                          v10 = v150;
LABEL_273:
                                          v17 = v275;
                                          goto LABEL_232;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v255 = v33;
                                          goto LABEL_61;
                                        }

                                        if (v283)
                                        {
                                          v158 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v159 = *MEMORY[0x1E698F240];
                                          v316 = *MEMORY[0x1E696A578];
                                          v160 = v5;
                                          v161 = v7;
                                          v162 = v9;
                                          v163 = objc_alloc(MEMORY[0x1E696AEC0]);
                                          v228 = objc_opt_class();
                                          v164 = v163;
                                          v9 = v162;
                                          v7 = v161;
                                          v5 = v160;
                                          v253 = [v164 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v228, @"sessionLatency"];
                                          v317 = v253;
                                          v165 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v317 forKeys:&v316 count:1];
                                          v255 = 0;
                                          v53 = 0;
                                          *v283 = [v158 initWithDomain:v159 code:2 userInfo:v165];
                                          v58 = v288;
                                          v17 = v275;
LABEL_234:

LABEL_235:
                                          v133 = v266;

LABEL_236:
                                          goto LABEL_237;
                                        }

                                        v255 = 0;
                                        v53 = 0;
                                        v58 = v288;
LABEL_264:
                                        v17 = v275;
                                        goto LABEL_235;
                                      }

                                      if (v283)
                                      {
                                        v156 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v157 = *MEMORY[0x1E698F240];
                                        v318 = *MEMORY[0x1E696A578];
                                        v255 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userExperienceFlow"];
                                        v319 = v255;
                                        v254 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v319 forKeys:&v318 count:1];
                                        v257 = 0;
                                        v53 = 0;
                                        *v283 = [v156 initWithDomain:v157 code:2 userInfo:?];
                                        v7 = v123;
                                        v5 = v122;
                                        v58 = v288;
                                        v10 = v121;
                                        goto LABEL_264;
                                      }

                                      v257 = 0;
                                      v53 = 0;
LABEL_258:
                                      v9 = v124;
                                      v7 = v123;
                                      v5 = v122;
                                      v58 = v288;
                                      v10 = v121;
                                      v17 = v275;
                                      v133 = v266;
                                      goto LABEL_236;
                                    }

                                    if (v283)
                                    {
                                      v154 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v155 = *MEMORY[0x1E698F240];
                                      v320 = *MEMORY[0x1E696A578];
                                      v257 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sessionId"];
                                      v321 = v257;
                                      v256 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v321 forKeys:&v320 count:1];
                                      v259 = 0;
                                      v53 = 0;
                                      *v283 = [v154 initWithDomain:v155 code:2 userInfo:?];
                                      goto LABEL_258;
                                    }

                                    v259 = 0;
                                    v53 = 0;
LABEL_210:
                                    v9 = v124;
                                    v7 = v123;
                                    v5 = v122;
                                    v58 = v288;
                                    v10 = v121;
                                    v17 = v275;
                                    v133 = v266;
LABEL_237:

                                    goto LABEL_238;
                                  }

                                  if (v283)
                                  {
                                    v148 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v149 = *MEMORY[0x1E698F240];
                                    v322 = *MEMORY[0x1E696A578];
                                    v259 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contentShared"];
                                    v323 = v259;
                                    v258 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v323 forKeys:&v322 count:1];
                                    v261 = 0;
                                    v53 = 0;
                                    *v283 = [v148 initWithDomain:v149 code:2 userInfo:?];
                                    goto LABEL_210;
                                  }

                                  v261 = 0;
                                  v53 = 0;
LABEL_204:
                                  v9 = v124;
                                  v7 = v123;
                                  v5 = v122;
                                  v58 = v288;
                                  v10 = v121;
                                  v17 = v275;
                                  v133 = v266;
LABEL_238:

                                  goto LABEL_239;
                                }

                                if (v283)
                                {
                                  v146 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v147 = *MEMORY[0x1E698F240];
                                  v324 = *MEMORY[0x1E696A578];
                                  v261 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sourceApp"];
                                  v325 = v261;
                                  v260 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v325 forKeys:&v324 count:1];
                                  v263 = 0;
                                  v53 = 0;
                                  *v283 = [v146 initWithDomain:v147 code:2 userInfo:?];
                                  goto LABEL_204;
                                }

                                v263 = 0;
                                v53 = 0;
LABEL_198:
                                v9 = v124;
                                v7 = v123;
                                v5 = v122;
                                v58 = v288;
                                v10 = v121;
                                v17 = v275;
                                v133 = v266;
LABEL_239:

                                goto LABEL_240;
                              }

                              if (v283)
                              {
                                v144 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v145 = *MEMORY[0x1E698F240];
                                v326 = *MEMORY[0x1E696A578];
                                v263 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"transportApp"];
                                v327 = v263;
                                v262 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v327 forKeys:&v326 count:1];
                                v265 = 0;
                                v53 = 0;
                                *v283 = [v144 initWithDomain:v145 code:2 userInfo:?];
                                goto LABEL_198;
                              }

                              v265 = 0;
                              v53 = 0;
                              v7 = v123;
                              v5 = v122;
                              v58 = v288;
                              v10 = v121;
LABEL_192:
                              v17 = v275;
                              v133 = v266;
LABEL_240:

                              goto LABEL_241;
                            }

                            if (v283)
                            {
                              v137 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v138 = *MEMORY[0x1E698F240];
                              v328 = *MEMORY[0x1E696A578];
                              v139 = v5;
                              v140 = v7;
                              v141 = v9;
                              v142 = objc_alloc(MEMORY[0x1E696AEC0]);
                              v227 = objc_opt_class();
                              v143 = v142;
                              v9 = v141;
                              v7 = v140;
                              v5 = v139;
                              v265 = [v143 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v227, @"peopleSuggestionsSetting"];
                              v329 = v265;
                              v264 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v329 forKeys:&v328 count:1];
                              v267 = 0;
                              v53 = 0;
                              *v283 = [v137 initWithDomain:v138 code:2 userInfo:?];
                              v58 = v288;
                              goto LABEL_192;
                            }

                            v267 = 0;
                            v53 = 0;
                            v58 = v288;
                            v17 = v275;
                            v133 = v266;
LABEL_241:

                            goto LABEL_242;
                          }

                          if (v283)
                          {
                            v134 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v135 = *MEMORY[0x1E698F240];
                            v330 = *MEMORY[0x1E696A578];
                            v267 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"numberOfVisibleSuggestions"];
                            v331 = v267;
                            v271 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v331 forKeys:&v330 count:1];
                            v136 = [v134 initWithDomain:v135 code:2 userInfo:v271];
                            v133 = 0;
                            v53 = 0;
                            *v283 = v136;
                            v7 = v97;
                            v5 = v96;
                            v58 = v288;
                            v10 = v95;
                            v17 = v275;
                            goto LABEL_241;
                          }

                          v133 = 0;
                          v53 = 0;
LABEL_181:
                          v9 = v98;
                          v7 = v97;
                          v5 = v96;
                          v58 = v288;
                          v10 = v95;
                          v17 = v275;
LABEL_242:

                          goto LABEL_243;
                        }

                        if (v283)
                        {
                          v272 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v132 = *MEMORY[0x1E698F240];
                          v332 = *MEMORY[0x1E696A578];
                          v133 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"suggestionNumber"];
                          v333 = v133;
                          v268 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v333 forKeys:&v332 count:1];
                          v270 = 0;
                          v53 = 0;
                          *v283 = [v272 initWithDomain:v132 code:2 userInfo:?];
                          goto LABEL_181;
                        }

                        v270 = 0;
                        v53 = 0;
                        v7 = v97;
                        v5 = v96;
                        v58 = v288;
                        v10 = v95;
                        v17 = v275;
LABEL_243:

                        v8 = v289;
                        goto LABEL_244;
                      }

                      if (v283)
                      {
                        v125 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v274 = *MEMORY[0x1E698F240];
                        v334 = *MEMORY[0x1E696A578];
                        v126 = v5;
                        v127 = v7;
                        v128 = v9;
                        v129 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v226 = objc_opt_class();
                        v130 = v129;
                        v9 = v128;
                        v7 = v127;
                        v5 = v126;
                        v270 = [v130 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v226, @"suggestionAvailable"];
                        v335 = v270;
                        v269 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v335 forKeys:&v334 count:1];
                        v131 = [v125 initWithDomain:v274 code:2 userInfo:?];
                        v273 = 0;
                        v53 = 0;
                        *v283 = v131;
                        v58 = v288;
                        goto LABEL_243;
                      }

                      v273 = 0;
                      v53 = 0;
                      v58 = v288;
LABEL_244:

                      goto LABEL_245;
                    }

                    if (v283)
                    {
                      v117 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v118 = *MEMORY[0x1E698F240];
                      v336 = *MEMORY[0x1E696A578];
                      v273 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"engagementType"];
                      v337 = v273;
                      v119 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v337 forKeys:&v336 count:1];
                      v120 = v117;
                      v8 = v289;
                      v277 = 0;
                      v53 = 0;
                      *v283 = [v120 initWithDomain:v118 code:2 userInfo:v119];
                      v58 = v288;
                      v17 = v119;
                      a4 = v285;
                      goto LABEL_244;
                    }

                    v277 = 0;
                    v53 = 0;
                    v58 = v288;
                    v8 = v289;
LABEL_245:

                    goto LABEL_246;
                  }

                  v8 = v289;
                  if (v283)
                  {
                    v108 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v109 = *MEMORY[0x1E698F240];
                    v338 = *MEMORY[0x1E696A578];
                    v110 = v5;
                    v111 = v7;
                    v112 = v9;
                    v113 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v225 = objc_opt_class();
                    v114 = v113;
                    v9 = v112;
                    v7 = v111;
                    v5 = v110;
                    v277 = [v114 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v225, @"appSharingIntent"];
                    v339 = v277;
                    v115 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v339 forKeys:&v338 count:1];
                    v116 = v109;
                    v8 = v289;
                    v276 = v115;
                    v278 = 0;
                    v53 = 0;
                    *v283 = [v108 initWithDomain:v116 code:2 userInfo:?];
                    v58 = v288;
                    goto LABEL_245;
                  }

                  v278 = 0;
                  v53 = 0;
LABEL_160:
                  v58 = v288;
LABEL_246:

                  v6 = v287;
                  goto LABEL_247;
                }

                if (v283)
                {
                  v99 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v100 = *MEMORY[0x1E698F240];
                  v340 = *MEMORY[0x1E696A578];
                  v101 = v5;
                  v102 = v7;
                  v103 = v9;
                  v104 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v224 = objc_opt_class();
                  v105 = v104;
                  v9 = v103;
                  v7 = v102;
                  v5 = v101;
                  v278 = [v105 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v224, @"sharePlayEngaged"];
                  v341 = v278;
                  v106 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v341 forKeys:&v340 count:1];
                  v107 = v100;
                  v8 = v289;
                  v284 = v106;
                  v279 = 0;
                  v53 = 0;
                  *v283 = [v99 initWithDomain:v107 code:2 userInfo:?];
                  goto LABEL_160;
                }

                v279 = 0;
                v53 = 0;
                v58 = v288;
                v8 = v289;
LABEL_247:

                goto LABEL_248;
              }

              if (v283)
              {
                v86 = objc_alloc(MEMORY[0x1E696ABC0]);
                v87 = *MEMORY[0x1E698F240];
                v342 = *MEMORY[0x1E696A578];
                v88 = v5;
                v89 = v7;
                v90 = v9;
                v91 = objc_alloc(MEMORY[0x1E696AEC0]);
                v223 = objc_opt_class();
                v92 = v91;
                v9 = v90;
                v7 = v89;
                v5 = v88;
                v279 = [v92 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v223, @"sharePlayAvailable"];
                v343 = v279;
                v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v343 forKeys:&v342 count:1];
                v94 = v87;
                v6 = v287;
                v8 = v289;
                v280 = v93;
                v281 = 0;
                v53 = 0;
                *v283 = [v86 initWithDomain:v94 code:2 userInfo:?];
                v58 = v288;
                goto LABEL_247;
              }

              v281 = 0;
              v53 = 0;
              v58 = v288;
              v8 = v289;
LABEL_248:

              goto LABEL_249;
            }

            if (v283)
            {
              v77 = objc_alloc(MEMORY[0x1E696ABC0]);
              v78 = *MEMORY[0x1E698F240];
              v344 = *MEMORY[0x1E696A578];
              v79 = v5;
              v80 = v7;
              v81 = v9;
              v82 = objc_alloc(MEMORY[0x1E696AEC0]);
              v222 = objc_opt_class();
              v83 = v82;
              v9 = v81;
              v7 = v80;
              v5 = v79;
              v281 = [v83 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v222, @"airdropEngaged"];
              v345 = v281;
              v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v345 forKeys:&v344 count:1];
              v85 = v78;
              v6 = v287;
              v8 = v289;
              v282 = v84;
              v286 = 0;
              v53 = 0;
              *v283 = [v77 initWithDomain:v85 code:2 userInfo:?];
              v58 = v288;
              goto LABEL_248;
            }

            v286 = 0;
            v53 = 0;
LABEL_144:
            v58 = v288;
LABEL_249:

            goto LABEL_250;
          }

          if (a4)
          {
            v67 = objc_alloc(MEMORY[0x1E696ABC0]);
            v68 = *MEMORY[0x1E698F240];
            v346 = *MEMORY[0x1E696A578];
            v69 = v5;
            v70 = v7;
            v71 = v9;
            v72 = objc_alloc(MEMORY[0x1E696AEC0]);
            v221 = objc_opt_class();
            v73 = v72;
            v9 = v71;
            v7 = v70;
            v5 = v69;
            v286 = [v73 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v221, @"airdropShown"];
            v347 = v286;
            [MEMORY[0x1E695DF20] dictionaryWithObjects:&v347 forKeys:&v346 count:1];
            v75 = v74 = a4;
            v76 = v68;
            v8 = v289;
            v291 = v75;
            a4 = 0;
            v53 = 0;
            *v74 = [v67 initWithDomain:v76 code:2 userInfo:?];
            v6 = v287;
            goto LABEL_144;
          }

          v53 = 0;
LABEL_138:
          v58 = v288;
LABEL_250:

          goto LABEL_251;
        }

        if (a4)
        {
          v64 = objc_alloc(MEMORY[0x1E696ABC0]);
          v65 = *MEMORY[0x1E698F240];
          v348 = *MEMORY[0x1E696A578];
          v66 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"engagedSuggestionProxyDebug"];
          v349 = v66;
          v292 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v349 forKeys:&v348 count:1];
          v290 = 0;
          v53 = 0;
          *a4 = [v64 initWithDomain:v65 code:2 userInfo:?];
          v8 = v289;
          a4 = v66;
          goto LABEL_138;
        }

        v290 = 0;
        v53 = 0;
        v58 = v288;
LABEL_251:

        goto LABEL_252;
      }

      if (a4)
      {
        v293 = objc_alloc(MEMORY[0x1E696ABC0]);
        v60 = v5;
        v61 = v7;
        v62 = *MEMORY[0x1E698F240];
        v350 = *MEMORY[0x1E696A578];
        v290 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"engagedSuggestionProxy"];
        v351 = v290;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v351 forKeys:&v350 count:1];
        v63 = v62;
        v7 = v61;
        v5 = v60;
        v58 = 0;
        v53 = 0;
        *a4 = [v293 initWithDomain:v63 code:2 userInfo:v10];
        goto LABEL_251;
      }

      v58 = 0;
      v53 = 0;
LABEL_252:

      goto LABEL_253;
    }

    if (a4)
    {
      v54 = objc_alloc(MEMORY[0x1E696ABC0]);
      v55 = *MEMORY[0x1E698F240];
      v352 = *MEMORY[0x1E696A578];
      v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"engagedSuggestionProxyReason"];
      v353 = v56;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v353 forKeys:&v352 count:1];
      v57 = v54;
      v58 = v56;
      v59 = [v57 initWithDomain:v55 code:2 userInfo:v9];
      v8 = 0;
      v53 = 0;
      *a4 = v59;
      goto LABEL_252;
    }

    v8 = 0;
    v53 = 0;
LABEL_253:

    goto LABEL_254;
  }

  if (a4)
  {
    v49 = objc_alloc(MEMORY[0x1E696ABC0]);
    v50 = *MEMORY[0x1E698F240];
    v354 = *MEMORY[0x1E696A578];
    v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"indexSelected"];
    v355[0] = v51;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v355 forKeys:&v354 count:1];
    v52 = v50;
    v8 = v51;
    v6 = 0;
    v53 = 0;
    *a4 = [v49 initWithDomain:v52 code:2 userInfo:v7];
    goto LABEL_253;
  }

  v6 = 0;
  v53 = 0;
LABEL_254:

  v184 = *MEMORY[0x1E69E9840];
  return v53;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPeopleSuggesterEventLevelMetrics *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v17 = v4;
  if (self->_indexSelected)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  if (self->_engagedSuggestionProxyReason)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  if (self->_engagedSuggestionProxy)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  if (self->_engagedSuggestionProxyDebug)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  if (self->_hasAirdropShown)
  {
    airdropShown = self->_airdropShown;
    PBDataWriterWriteBOOLField();
    v4 = v17;
  }

  if (self->_hasAirdropEngaged)
  {
    airdropEngaged = self->_airdropEngaged;
    PBDataWriterWriteBOOLField();
    v4 = v17;
  }

  if (self->_hasSharePlayAvailable)
  {
    sharePlayAvailable = self->_sharePlayAvailable;
    PBDataWriterWriteBOOLField();
    v4 = v17;
  }

  if (self->_hasSharePlayEngaged)
  {
    sharePlayEngaged = self->_sharePlayEngaged;
    PBDataWriterWriteBOOLField();
    v4 = v17;
  }

  if (self->_hasAppSharingIntent)
  {
    appSharingIntent = self->_appSharingIntent;
    PBDataWriterWriteBOOLField();
    v4 = v17;
  }

  if (self->_engagementType)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  if (self->_hasSuggestionAvailable)
  {
    suggestionAvailable = self->_suggestionAvailable;
    PBDataWriterWriteBOOLField();
    v4 = v17;
  }

  if (self->_suggestionNumber)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  if (self->_numberOfVisibleSuggestions)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  if (self->_hasPeopleSuggestionsSetting)
  {
    peopleSuggestionsSetting = self->_peopleSuggestionsSetting;
    PBDataWriterWriteBOOLField();
    v4 = v17;
  }

  if (self->_transportApp)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  if (self->_sourceApp)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  if (self->_contentShared)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  if (self->_sessionId)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  if (self->_userExperienceFlow)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  if (self->_hasSessionLatency)
  {
    sessionLatency = self->_sessionLatency;
    PBDataWriterWriteUint32Field();
    v4 = v17;
  }

  if (self->_hasModelTimeout)
  {
    modelTimeout = self->_modelTimeout;
    PBDataWriterWriteBOOLField();
    v4 = v17;
  }

  if (self->_suggestionPath)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  if (self->_suggestionPathDebug)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  if (self->_trialDeploymentId)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  if (self->_trialExperimentId)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  if (self->_trialTreatmentId)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  if (self->_hasIsPhotos)
  {
    isPhotos = self->_isPhotos;
    PBDataWriterWriteBOOLField();
    v4 = v17;
  }

  if (self->_hasPSRActive)
  {
    PSRActive = self->_PSRActive;
    PBDataWriterWriteBOOLField();
    v4 = v17;
  }

  if (self->_hasSessionDelayInMilliseconds)
  {
    sessionDelayInMilliseconds = self->_sessionDelayInMilliseconds;
    PBDataWriterWriteUint32Field();
    v4 = v17;
  }

  if (self->_datestamp)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v104.receiver = self;
  v104.super_class = BMPeopleSuggesterEventLevelMetrics;
  v5 = [(BMEventBase *)&v104 init];
  if (!v5)
  {
LABEL_179:
    v102 = v5;
    goto LABEL_180;
  }

  while (1)
  {
    v6 = [v4 position];
    if (v6 >= [v4 length] || (objc_msgSend(v4, "hasError") & 1) != 0)
    {
      break;
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v105 = 0;
      v10 = [v4 position] + 1;
      if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
      {
        v12 = [v4 data];
        [v12 getBytes:&v105 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
      }

      v9 |= (v105 & 0x7F) << v7;
      if ((v105 & 0x80) == 0)
      {
        break;
      }

      v7 += 7;
      v13 = v8++ >= 9;
      if (v13)
      {
        v14 = 0;
        goto LABEL_16;
      }
    }

    v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
    if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
    {
      break;
    }

    switch((v14 >> 3))
    {
      case 1u:
        v15 = PBReaderReadString();
        v16 = 56;
        goto LABEL_138;
      case 2u:
        v15 = PBReaderReadString();
        v16 = 64;
        goto LABEL_138;
      case 3u:
        v15 = PBReaderReadString();
        v16 = 72;
        goto LABEL_138;
      case 4u:
        v15 = PBReaderReadString();
        v16 = 80;
        goto LABEL_138;
      case 5u:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v5->_hasAirdropShown = 1;
        while (1)
        {
          v105 = 0;
          v27 = [v4 position] + 1;
          if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 1, v28 <= objc_msgSend(v4, "length")))
          {
            v29 = [v4 data];
            [v29 getBytes:&v105 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v26 |= (v105 & 0x7F) << v24;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v13 = v25++ >= 9;
          if (v13)
          {
            LOBYTE(v30) = 0;
            goto LABEL_151;
          }
        }

        v30 = (v26 != 0) & ~[v4 hasError];
LABEL_151:
        v5->_airdropShown = v30;
        continue;
      case 6u:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        v5->_hasAirdropEngaged = 1;
        while (1)
        {
          v105 = 0;
          v48 = [v4 position] + 1;
          if (v48 >= [v4 position] && (v49 = objc_msgSend(v4, "position") + 1, v49 <= objc_msgSend(v4, "length")))
          {
            v50 = [v4 data];
            [v50 getBytes:&v105 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v47 |= (v105 & 0x7F) << v45;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v13 = v46++ >= 9;
          if (v13)
          {
            LOBYTE(v51) = 0;
            goto LABEL_157;
          }
        }

        v51 = (v47 != 0) & ~[v4 hasError];
LABEL_157:
        v5->_airdropEngaged = v51;
        continue;
      case 7u:
        v59 = 0;
        v60 = 0;
        v61 = 0;
        v5->_hasSharePlayAvailable = 1;
        while (1)
        {
          v105 = 0;
          v62 = [v4 position] + 1;
          if (v62 >= [v4 position] && (v63 = objc_msgSend(v4, "position") + 1, v63 <= objc_msgSend(v4, "length")))
          {
            v64 = [v4 data];
            [v64 getBytes:&v105 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v61 |= (v105 & 0x7F) << v59;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v59 += 7;
          v13 = v60++ >= 9;
          if (v13)
          {
            LOBYTE(v65) = 0;
            goto LABEL_161;
          }
        }

        v65 = (v61 != 0) & ~[v4 hasError];
LABEL_161:
        v5->_sharePlayAvailable = v65;
        continue;
      case 8u:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v5->_hasSharePlayEngaged = 1;
        while (1)
        {
          v105 = 0;
          v34 = [v4 position] + 1;
          if (v34 >= [v4 position] && (v35 = objc_msgSend(v4, "position") + 1, v35 <= objc_msgSend(v4, "length")))
          {
            v36 = [v4 data];
            [v36 getBytes:&v105 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v33 |= (v105 & 0x7F) << v31;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v13 = v32++ >= 9;
          if (v13)
          {
            LOBYTE(v37) = 0;
            goto LABEL_153;
          }
        }

        v37 = (v33 != 0) & ~[v4 hasError];
LABEL_153:
        v5->_sharePlayEngaged = v37;
        continue;
      case 9u:
        v73 = 0;
        v74 = 0;
        v75 = 0;
        v5->_hasAppSharingIntent = 1;
        while (1)
        {
          v105 = 0;
          v76 = [v4 position] + 1;
          if (v76 >= [v4 position] && (v77 = objc_msgSend(v4, "position") + 1, v77 <= objc_msgSend(v4, "length")))
          {
            v78 = [v4 data];
            [v78 getBytes:&v105 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v75 |= (v105 & 0x7F) << v73;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v73 += 7;
          v13 = v74++ >= 9;
          if (v13)
          {
            LOBYTE(v79) = 0;
            goto LABEL_165;
          }
        }

        v79 = (v75 != 0) & ~[v4 hasError];
LABEL_165:
        v5->_appSharingIntent = v79;
        continue;
      case 0xAu:
        v15 = PBReaderReadString();
        v16 = 88;
        goto LABEL_138;
      case 0xBu:
        v66 = 0;
        v67 = 0;
        v68 = 0;
        v5->_hasSuggestionAvailable = 1;
        while (1)
        {
          v105 = 0;
          v69 = [v4 position] + 1;
          if (v69 >= [v4 position] && (v70 = objc_msgSend(v4, "position") + 1, v70 <= objc_msgSend(v4, "length")))
          {
            v71 = [v4 data];
            [v71 getBytes:&v105 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v68 |= (v105 & 0x7F) << v66;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v66 += 7;
          v13 = v67++ >= 9;
          if (v13)
          {
            LOBYTE(v72) = 0;
            goto LABEL_163;
          }
        }

        v72 = (v68 != 0) & ~[v4 hasError];
LABEL_163:
        v5->_suggestionAvailable = v72;
        continue;
      case 0xCu:
        v15 = PBReaderReadString();
        v16 = 96;
        goto LABEL_138;
      case 0xDu:
        v15 = PBReaderReadString();
        v16 = 104;
        goto LABEL_138;
      case 0xEu:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v5->_hasPeopleSuggestionsSetting = 1;
        while (1)
        {
          v105 = 0;
          v55 = [v4 position] + 1;
          if (v55 >= [v4 position] && (v56 = objc_msgSend(v4, "position") + 1, v56 <= objc_msgSend(v4, "length")))
          {
            v57 = [v4 data];
            [v57 getBytes:&v105 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v54 |= (v105 & 0x7F) << v52;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v13 = v53++ >= 9;
          if (v13)
          {
            LOBYTE(v58) = 0;
            goto LABEL_159;
          }
        }

        v58 = (v54 != 0) & ~[v4 hasError];
LABEL_159:
        v5->_peopleSuggestionsSetting = v58;
        continue;
      case 0xFu:
        v15 = PBReaderReadString();
        v16 = 112;
        goto LABEL_138;
      case 0x10u:
        v15 = PBReaderReadString();
        v16 = 120;
        goto LABEL_138;
      case 0x11u:
        v15 = PBReaderReadString();
        v16 = 128;
        goto LABEL_138;
      case 0x12u:
        v15 = PBReaderReadString();
        v16 = 136;
        goto LABEL_138;
      case 0x13u:
        v15 = PBReaderReadString();
        v16 = 144;
        goto LABEL_138;
      case 0x14u:
        v80 = 0;
        v81 = 0;
        v82 = 0;
        v5->_hasSessionLatency = 1;
        while (1)
        {
          v105 = 0;
          v83 = [v4 position] + 1;
          if (v83 >= [v4 position] && (v84 = objc_msgSend(v4, "position") + 1, v84 <= objc_msgSend(v4, "length")))
          {
            v85 = [v4 data];
            [v85 getBytes:&v105 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v82 |= (v105 & 0x7F) << v80;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v80 += 7;
          v13 = v81++ >= 9;
          if (v13)
          {
            v86 = 0;
            goto LABEL_169;
          }
        }

        if ([v4 hasError])
        {
          v86 = 0;
        }

        else
        {
          v86 = v82;
        }

LABEL_169:
        v101 = 44;
        goto LABEL_174;
      case 0x15u:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v5->_hasModelTimeout = 1;
        while (1)
        {
          v105 = 0;
          v41 = [v4 position] + 1;
          if (v41 >= [v4 position] && (v42 = objc_msgSend(v4, "position") + 1, v42 <= objc_msgSend(v4, "length")))
          {
            v43 = [v4 data];
            [v43 getBytes:&v105 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v40 |= (v105 & 0x7F) << v38;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v13 = v39++ >= 9;
          if (v13)
          {
            LOBYTE(v44) = 0;
            goto LABEL_155;
          }
        }

        v44 = (v40 != 0) & ~[v4 hasError];
LABEL_155:
        v5->_modelTimeout = v44;
        continue;
      case 0x16u:
        v15 = PBReaderReadString();
        v16 = 152;
        goto LABEL_138;
      case 0x17u:
        v15 = PBReaderReadString();
        v16 = 160;
        goto LABEL_138;
      case 0x18u:
        v15 = PBReaderReadString();
        v16 = 168;
        goto LABEL_138;
      case 0x19u:
        v15 = PBReaderReadString();
        v16 = 176;
        goto LABEL_138;
      case 0x1Au:
        v15 = PBReaderReadString();
        v16 = 184;
        goto LABEL_138;
      case 0x1Bu:
        v94 = 0;
        v95 = 0;
        v96 = 0;
        v5->_hasIsPhotos = 1;
        while (1)
        {
          v105 = 0;
          v97 = [v4 position] + 1;
          if (v97 >= [v4 position] && (v98 = objc_msgSend(v4, "position") + 1, v98 <= objc_msgSend(v4, "length")))
          {
            v99 = [v4 data];
            [v99 getBytes:&v105 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v96 |= (v105 & 0x7F) << v94;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v94 += 7;
          v13 = v95++ >= 9;
          if (v13)
          {
            LOBYTE(v100) = 0;
            goto LABEL_176;
          }
        }

        v100 = (v96 != 0) & ~[v4 hasError];
LABEL_176:
        v5->_isPhotos = v100;
        continue;
      case 0x1Cu:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v5->_hasPSRActive = 1;
        while (1)
        {
          v105 = 0;
          v20 = [v4 position] + 1;
          if (v20 >= [v4 position] && (v21 = objc_msgSend(v4, "position") + 1, v21 <= objc_msgSend(v4, "length")))
          {
            v22 = [v4 data];
            [v22 getBytes:&v105 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v19 |= (v105 & 0x7F) << v17;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v13 = v18++ >= 9;
          if (v13)
          {
            LOBYTE(v23) = 0;
            goto LABEL_149;
          }
        }

        v23 = (v19 != 0) & ~[v4 hasError];
LABEL_149:
        v5->_PSRActive = v23;
        continue;
      case 0x1Du:
        v87 = 0;
        v88 = 0;
        v89 = 0;
        v5->_hasSessionDelayInMilliseconds = 1;
        break;
      case 0x1Eu:
        v15 = PBReaderReadString();
        v16 = 192;
LABEL_138:
        v93 = *(&v5->super.super.isa + v16);
        *(&v5->super.super.isa + v16) = v15;

        continue;
      default:
        if (!PBReaderSkipValueWithTag())
        {
          goto LABEL_178;
        }

        continue;
    }

    while (1)
    {
      v105 = 0;
      v90 = [v4 position] + 1;
      if (v90 >= [v4 position] && (v91 = objc_msgSend(v4, "position") + 1, v91 <= objc_msgSend(v4, "length")))
      {
        v92 = [v4 data];
        [v92 getBytes:&v105 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
      }

      v89 |= (v105 & 0x7F) << v87;
      if ((v105 & 0x80) == 0)
      {
        break;
      }

      v87 += 7;
      v13 = v88++ >= 9;
      if (v13)
      {
        v86 = 0;
        goto LABEL_173;
      }
    }

    if ([v4 hasError])
    {
      v86 = 0;
    }

    else
    {
      v86 = v89;
    }

LABEL_173:
    v101 = 48;
LABEL_174:
    *(&v5->super.super.isa + v101) = v86;
  }

  if (([v4 hasError] & 1) == 0)
  {
    goto LABEL_179;
  }

LABEL_178:
  v102 = 0;
LABEL_180:

  return v102;
}

- (NSString)description
{
  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  v35 = [(BMPeopleSuggesterEventLevelMetrics *)self indexSelected];
  v33 = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxyReason];
  v31 = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxy];
  v34 = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxyDebug];
  v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics airdropShown](self, "airdropShown")}];
  v32 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics airdropEngaged](self, "airdropEngaged")}];
  v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics sharePlayAvailable](self, "sharePlayAvailable")}];
  v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics sharePlayEngaged](self, "sharePlayEngaged")}];
  v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics appSharingIntent](self, "appSharingIntent")}];
  v24 = [(BMPeopleSuggesterEventLevelMetrics *)self engagementType];
  v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics suggestionAvailable](self, "suggestionAvailable")}];
  v22 = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionNumber];
  v17 = [(BMPeopleSuggesterEventLevelMetrics *)self numberOfVisibleSuggestions];
  v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics peopleSuggestionsSetting](self, "peopleSuggestionsSetting")}];
  v16 = [(BMPeopleSuggesterEventLevelMetrics *)self transportApp];
  v23 = [(BMPeopleSuggesterEventLevelMetrics *)self sourceApp];
  v21 = [(BMPeopleSuggesterEventLevelMetrics *)self contentShared];
  v15 = [(BMPeopleSuggesterEventLevelMetrics *)self sessionId];
  v20 = [(BMPeopleSuggesterEventLevelMetrics *)self userExperienceFlow];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPeopleSuggesterEventLevelMetrics sessionLatency](self, "sessionLatency")}];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics modelTimeout](self, "modelTimeout")}];
  v12 = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionPath];
  v11 = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionPathDebug];
  v10 = [(BMPeopleSuggesterEventLevelMetrics *)self trialDeploymentId];
  v3 = [(BMPeopleSuggesterEventLevelMetrics *)self trialExperimentId];
  v4 = [(BMPeopleSuggesterEventLevelMetrics *)self trialTreatmentId];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics isPhotos](self, "isPhotos")}];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics PSRActive](self, "PSRActive")}];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPeopleSuggesterEventLevelMetrics sessionDelayInMilliseconds](self, "sessionDelayInMilliseconds")}];
  v8 = [(BMPeopleSuggesterEventLevelMetrics *)self datestamp];
  v19 = [v18 initWithFormat:@"BMPeopleSuggesterEventLevelMetrics with indexSelected: %@, engagedSuggestionProxyReason: %@, engagedSuggestionProxy: %@, engagedSuggestionProxyDebug: %@, airdropShown: %@, airdropEngaged: %@, sharePlayAvailable: %@, sharePlayEngaged: %@, appSharingIntent: %@, engagementType: %@, suggestionAvailable: %@, suggestionNumber: %@, numberOfVisibleSuggestions: %@, peopleSuggestionsSetting: %@, transportApp: %@, sourceApp: %@, contentShared: %@, sessionId: %@, userExperienceFlow: %@, sessionLatency: %@, modelTimeout: %@, suggestionPath: %@, suggestionPathDebug: %@, trialDeploymentId: %@, trialExperimentId: %@, trialTreatmentId: %@, isPhotos: %@, PSRActive: %@, sessionDelayInMilliseconds: %@, datestamp: %@", v35, v33, v31, v34, v30, v32, v29, v26, v28, v24, v27, v22, v17, v25, v16, v23, v21, v15, v20, v14, v13, v12, v11, v10, v3, v4, v5, v6, v7, v8];

  return v19;
}

- (BMPeopleSuggesterEventLevelMetrics)initWithIndexSelected:(id)a3 engagedSuggestionProxyReason:(id)a4 engagedSuggestionProxy:(id)a5 engagedSuggestionProxyDebug:(id)a6 airdropShown:(id)a7 airdropEngaged:(id)a8 sharePlayAvailable:(id)a9 sharePlayEngaged:(id)a10 appSharingIntent:(id)a11 engagementType:(id)a12 suggestionAvailable:(id)a13 suggestionNumber:(id)a14 numberOfVisibleSuggestions:(id)a15 peopleSuggestionsSetting:(id)a16 transportApp:(id)a17 sourceApp:(id)a18 contentShared:(id)a19 sessionId:(id)a20 userExperienceFlow:(id)a21 sessionLatency:(id)a22 modelTimeout:(id)a23 suggestionPath:(id)a24 suggestionPathDebug:(id)a25 trialDeploymentId:(id)a26 trialExperimentId:(id)a27 trialTreatmentId:(id)a28 isPhotos:(id)a29 PSRActive:(id)a30 sessionDelayInMilliseconds:(id)a31 datestamp:(id)a32
{
  v68 = a3;
  v49 = a4;
  v67 = a4;
  v50 = a5;
  v66 = a5;
  v51 = a6;
  v65 = a6;
  v73 = a7;
  v75 = a8;
  v72 = a9;
  v36 = a10;
  v37 = a11;
  v64 = a12;
  v38 = a13;
  v39 = a14;
  v63 = a15;
  v40 = a16;
  v62 = a17;
  v61 = a18;
  v60 = a19;
  v59 = a20;
  v58 = a21;
  v71 = a22;
  v70 = a23;
  v57 = a24;
  v56 = a25;
  v55 = a26;
  v54 = a27;
  v53 = a28;
  v69 = a29;
  v41 = a30;
  v42 = a31;
  v43 = a32;
  v76.receiver = self;
  v76.super_class = BMPeopleSuggesterEventLevelMetrics;
  v44 = [(BMEventBase *)&v76 init];
  if (v44)
  {
    v44->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v44->_indexSelected, a3);
    objc_storeStrong(&v44->_engagedSuggestionProxyReason, v49);
    objc_storeStrong(&v44->_engagedSuggestionProxy, v50);
    objc_storeStrong(&v44->_engagedSuggestionProxyDebug, v51);
    if (v73)
    {
      v44->_hasAirdropShown = 1;
      v44->_airdropShown = [v73 BOOLValue];
    }

    else
    {
      v44->_hasAirdropShown = 0;
      v44->_airdropShown = 0;
    }

    if (v75)
    {
      v44->_hasAirdropEngaged = 1;
      v44->_airdropEngaged = [v75 BOOLValue];
    }

    else
    {
      v44->_hasAirdropEngaged = 0;
      v44->_airdropEngaged = 0;
    }

    if (v72)
    {
      v44->_hasSharePlayAvailable = 1;
      v44->_sharePlayAvailable = [v72 BOOLValue];
    }

    else
    {
      v44->_hasSharePlayAvailable = 0;
      v44->_sharePlayAvailable = 0;
    }

    if (v36)
    {
      v44->_hasSharePlayEngaged = 1;
      v44->_sharePlayEngaged = [v36 BOOLValue];
    }

    else
    {
      v44->_hasSharePlayEngaged = 0;
      v44->_sharePlayEngaged = 0;
    }

    if (v37)
    {
      v44->_hasAppSharingIntent = 1;
      v44->_appSharingIntent = [v37 BOOLValue];
    }

    else
    {
      v44->_hasAppSharingIntent = 0;
      v44->_appSharingIntent = 0;
    }

    objc_storeStrong(&v44->_engagementType, a12);
    if (v38)
    {
      v44->_hasSuggestionAvailable = 1;
      v44->_suggestionAvailable = [v38 BOOLValue];
    }

    else
    {
      v44->_hasSuggestionAvailable = 0;
      v44->_suggestionAvailable = 0;
    }

    objc_storeStrong(&v44->_suggestionNumber, a14);
    objc_storeStrong(&v44->_numberOfVisibleSuggestions, a15);
    if (v40)
    {
      v44->_hasPeopleSuggestionsSetting = 1;
      v44->_peopleSuggestionsSetting = [v40 BOOLValue];
    }

    else
    {
      v44->_hasPeopleSuggestionsSetting = 0;
      v44->_peopleSuggestionsSetting = 0;
    }

    objc_storeStrong(&v44->_transportApp, a17);
    objc_storeStrong(&v44->_sourceApp, a18);
    objc_storeStrong(&v44->_contentShared, a19);
    objc_storeStrong(&v44->_sessionId, a20);
    objc_storeStrong(&v44->_userExperienceFlow, a21);
    v45 = v71;
    if (v71)
    {
      v44->_hasSessionLatency = 1;
      v45 = [v71 unsignedIntValue];
    }

    else
    {
      v44->_hasSessionLatency = 0;
    }

    v44->_sessionLatency = v45;
    if (v70)
    {
      v44->_hasModelTimeout = 1;
      v44->_modelTimeout = [v70 BOOLValue];
    }

    else
    {
      v44->_hasModelTimeout = 0;
      v44->_modelTimeout = 0;
    }

    objc_storeStrong(&v44->_suggestionPath, a24);
    objc_storeStrong(&v44->_suggestionPathDebug, a25);
    objc_storeStrong(&v44->_trialDeploymentId, a26);
    objc_storeStrong(&v44->_trialExperimentId, a27);
    objc_storeStrong(&v44->_trialTreatmentId, a28);
    if (v69)
    {
      v44->_hasIsPhotos = 1;
      v44->_isPhotos = [v69 BOOLValue];
    }

    else
    {
      v44->_hasIsPhotos = 0;
      v44->_isPhotos = 0;
    }

    if (v41)
    {
      v44->_hasPSRActive = 1;
      v44->_PSRActive = [v41 BOOLValue];
    }

    else
    {
      v44->_hasPSRActive = 0;
      v44->_PSRActive = 0;
    }

    if (v42)
    {
      v44->_hasSessionDelayInMilliseconds = 1;
      v46 = [v42 unsignedIntValue];
    }

    else
    {
      v46 = 0;
      v44->_hasSessionDelayInMilliseconds = 0;
    }

    v44->_sessionDelayInMilliseconds = v46;
    objc_storeStrong(&v44->_datestamp, a32);
  }

  return v44;
}

+ (id)protoFields
{
  v35[30] = *MEMORY[0x1E69E9840];
  v34 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"indexSelected" number:1 type:13 subMessageClass:0];
  v35[0] = v34;
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"engagedSuggestionProxyReason" number:2 type:13 subMessageClass:0];
  v35[1] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"engagedSuggestionProxy" number:3 type:13 subMessageClass:0];
  v35[2] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"engagedSuggestionProxyDebug" number:4 type:13 subMessageClass:0];
  v35[3] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"airdropShown" number:5 type:12 subMessageClass:0];
  v35[4] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"airdropEngaged" number:6 type:12 subMessageClass:0];
  v35[5] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sharePlayAvailable" number:7 type:12 subMessageClass:0];
  v35[6] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sharePlayEngaged" number:8 type:12 subMessageClass:0];
  v35[7] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appSharingIntent" number:9 type:12 subMessageClass:0];
  v35[8] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"engagementType" number:10 type:13 subMessageClass:0];
  v35[9] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestionAvailable" number:11 type:12 subMessageClass:0];
  v35[10] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestionNumber" number:12 type:13 subMessageClass:0];
  v35[11] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfVisibleSuggestions" number:13 type:13 subMessageClass:0];
  v35[12] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"peopleSuggestionsSetting" number:14 type:12 subMessageClass:0];
  v35[13] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"transportApp" number:15 type:13 subMessageClass:0];
  v35[14] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceApp" number:16 type:13 subMessageClass:0];
  v35[15] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentShared" number:17 type:13 subMessageClass:0];
  v35[16] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sessionId" number:18 type:13 subMessageClass:0];
  v35[17] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userExperienceFlow" number:19 type:13 subMessageClass:0];
  v35[18] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sessionLatency" number:20 type:4 subMessageClass:0];
  v35[19] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"modelTimeout" number:21 type:12 subMessageClass:0];
  v35[20] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestionPath" number:22 type:13 subMessageClass:0];
  v35[21] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestionPathDebug" number:23 type:13 subMessageClass:0];
  v35[22] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trialDeploymentId" number:24 type:13 subMessageClass:0];
  v35[23] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trialExperimentId" number:25 type:13 subMessageClass:0];
  v35[24] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trialTreatmentId" number:26 type:13 subMessageClass:0];
  v35[25] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isPhotos" number:27 type:12 subMessageClass:0];
  v35[26] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"PSRActive" number:28 type:12 subMessageClass:0];
  v35[27] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sessionDelayInMilliseconds" number:29 type:4 subMessageClass:0];
  v35[28] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"datestamp" number:30 type:13 subMessageClass:0];
  v35[29] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:30];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v35[30] = *MEMORY[0x1E69E9840];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"indexSelected" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v34 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"engagedSuggestionProxyReason" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v33 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"engagedSuggestionProxy" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"engagedSuggestionProxyDebug" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"airdropShown" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"airdropEngaged" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sharePlayAvailable" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sharePlayEngaged" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appSharingIntent" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"engagementType" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"suggestionAvailable" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:12 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"suggestionNumber" dataType:2 requestOnly:0 fieldNumber:12 protoDataType:13 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numberOfVisibleSuggestions" dataType:2 requestOnly:0 fieldNumber:13 protoDataType:13 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"peopleSuggestionsSetting" dataType:0 requestOnly:0 fieldNumber:14 protoDataType:12 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"transportApp" dataType:2 requestOnly:0 fieldNumber:15 protoDataType:13 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceApp" dataType:2 requestOnly:0 fieldNumber:16 protoDataType:13 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentShared" dataType:2 requestOnly:0 fieldNumber:17 protoDataType:13 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sessionId" dataType:2 requestOnly:0 fieldNumber:18 protoDataType:13 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userExperienceFlow" dataType:2 requestOnly:0 fieldNumber:19 protoDataType:13 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sessionLatency" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:4 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"modelTimeout" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"suggestionPath" dataType:2 requestOnly:0 fieldNumber:22 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"suggestionPathDebug" dataType:2 requestOnly:0 fieldNumber:23 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"trialDeploymentId" dataType:2 requestOnly:0 fieldNumber:24 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"trialExperimentId" dataType:2 requestOnly:0 fieldNumber:25 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"trialTreatmentId" dataType:2 requestOnly:0 fieldNumber:26 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isPhotos" dataType:0 requestOnly:0 fieldNumber:27 protoDataType:12 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"PSRActive" dataType:0 requestOnly:0 fieldNumber:28 protoDataType:12 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sessionDelayInMilliseconds" dataType:0 requestOnly:0 fieldNumber:29 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"datestamp" dataType:2 requestOnly:0 fieldNumber:30 protoDataType:13 convertedType:0];
  v35[0] = v15;
  v35[1] = v34;
  v35[2] = v33;
  v35[3] = v32;
  v35[4] = v31;
  v35[5] = v30;
  v35[6] = v29;
  v35[7] = v28;
  v35[8] = v27;
  v35[9] = v26;
  v35[10] = v25;
  v35[11] = v24;
  v35[12] = v23;
  v35[13] = v22;
  v35[14] = v21;
  v35[15] = v20;
  v35[16] = v19;
  v35[17] = v18;
  v35[18] = v17;
  v35[19] = v16;
  v35[20] = v2;
  v35[21] = v3;
  v35[22] = v4;
  v35[23] = v14;
  v35[24] = v5;
  v35[25] = v6;
  v35[26] = v7;
  v35[27] = v13;
  v35[28] = v12;
  v35[29] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:30];

  v9 = *MEMORY[0x1E69E9840];

  return v11;
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

    v8 = [[BMPeopleSuggesterEventLevelMetrics alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[10] = 0;
    }
  }

  return v4;
}

@end