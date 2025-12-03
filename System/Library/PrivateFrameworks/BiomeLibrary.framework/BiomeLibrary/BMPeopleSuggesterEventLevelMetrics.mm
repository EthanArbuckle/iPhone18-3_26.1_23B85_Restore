@interface BMPeopleSuggesterEventLevelMetrics
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMPeopleSuggesterEventLevelMetrics)initWithIndexSelected:(id)selected engagedSuggestionProxyReason:(id)reason engagedSuggestionProxy:(id)proxy engagedSuggestionProxyDebug:(id)debug airdropShown:(id)shown airdropEngaged:(id)engaged sharePlayAvailable:(id)available sharePlayEngaged:(id)self0 appSharingIntent:(id)self1 engagementType:(id)self2 suggestionAvailable:(id)self3 suggestionNumber:(id)self4 numberOfVisibleSuggestions:(id)self5 peopleSuggestionsSetting:(id)self6 transportApp:(id)self7 sourceApp:(id)self8 contentShared:(id)self9 sessionId:(id)id userExperienceFlow:(id)flow sessionLatency:(id)latency modelTimeout:(id)timeout suggestionPath:(id)path suggestionPathDebug:(id)pathDebug trialDeploymentId:(id)deploymentId trialExperimentId:(id)experimentId trialTreatmentId:(id)treatmentId isPhotos:(id)photos PSRActive:(id)selected0 sessionDelayInMilliseconds:(id)selected1 datestamp:(id)selected2;
- (BMPeopleSuggesterEventLevelMetrics)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMPeopleSuggesterEventLevelMetrics

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    indexSelected = [(BMPeopleSuggesterEventLevelMetrics *)self indexSelected];
    indexSelected2 = [v5 indexSelected];
    v8 = indexSelected2;
    if (indexSelected == indexSelected2)
    {
    }

    else
    {
      indexSelected3 = [(BMPeopleSuggesterEventLevelMetrics *)self indexSelected];
      indexSelected4 = [v5 indexSelected];
      v11 = [indexSelected3 isEqual:indexSelected4];

      if (!v11)
      {
        goto LABEL_133;
      }
    }

    engagedSuggestionProxyReason = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxyReason];
    engagedSuggestionProxyReason2 = [v5 engagedSuggestionProxyReason];
    v15 = engagedSuggestionProxyReason2;
    if (engagedSuggestionProxyReason == engagedSuggestionProxyReason2)
    {
    }

    else
    {
      engagedSuggestionProxyReason3 = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxyReason];
      engagedSuggestionProxyReason4 = [v5 engagedSuggestionProxyReason];
      v18 = [engagedSuggestionProxyReason3 isEqual:engagedSuggestionProxyReason4];

      if (!v18)
      {
        goto LABEL_133;
      }
    }

    engagedSuggestionProxy = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxy];
    engagedSuggestionProxy2 = [v5 engagedSuggestionProxy];
    v21 = engagedSuggestionProxy2;
    if (engagedSuggestionProxy == engagedSuggestionProxy2)
    {
    }

    else
    {
      engagedSuggestionProxy3 = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxy];
      engagedSuggestionProxy4 = [v5 engagedSuggestionProxy];
      v24 = [engagedSuggestionProxy3 isEqual:engagedSuggestionProxy4];

      if (!v24)
      {
        goto LABEL_133;
      }
    }

    engagedSuggestionProxyDebug = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxyDebug];
    engagedSuggestionProxyDebug2 = [v5 engagedSuggestionProxyDebug];
    v27 = engagedSuggestionProxyDebug2;
    if (engagedSuggestionProxyDebug == engagedSuggestionProxyDebug2)
    {
    }

    else
    {
      engagedSuggestionProxyDebug3 = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxyDebug];
      engagedSuggestionProxyDebug4 = [v5 engagedSuggestionProxyDebug];
      v30 = [engagedSuggestionProxyDebug3 isEqual:engagedSuggestionProxyDebug4];

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

      airdropShown = [(BMPeopleSuggesterEventLevelMetrics *)self airdropShown];
      if (airdropShown != [v5 airdropShown])
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

      airdropEngaged = [(BMPeopleSuggesterEventLevelMetrics *)self airdropEngaged];
      if (airdropEngaged != [v5 airdropEngaged])
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

      sharePlayAvailable = [(BMPeopleSuggesterEventLevelMetrics *)self sharePlayAvailable];
      if (sharePlayAvailable != [v5 sharePlayAvailable])
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

      sharePlayEngaged = [(BMPeopleSuggesterEventLevelMetrics *)self sharePlayEngaged];
      if (sharePlayEngaged != [v5 sharePlayEngaged])
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

      appSharingIntent = [(BMPeopleSuggesterEventLevelMetrics *)self appSharingIntent];
      if (appSharingIntent != [v5 appSharingIntent])
      {
        goto LABEL_133;
      }
    }

    engagementType = [(BMPeopleSuggesterEventLevelMetrics *)self engagementType];
    engagementType2 = [v5 engagementType];
    v38 = engagementType2;
    if (engagementType == engagementType2)
    {
    }

    else
    {
      engagementType3 = [(BMPeopleSuggesterEventLevelMetrics *)self engagementType];
      engagementType4 = [v5 engagementType];
      v41 = [engagementType3 isEqual:engagementType4];

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

      suggestionAvailable = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionAvailable];
      if (suggestionAvailable != [v5 suggestionAvailable])
      {
        goto LABEL_133;
      }
    }

    suggestionNumber = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionNumber];
    suggestionNumber2 = [v5 suggestionNumber];
    v45 = suggestionNumber2;
    if (suggestionNumber == suggestionNumber2)
    {
    }

    else
    {
      suggestionNumber3 = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionNumber];
      suggestionNumber4 = [v5 suggestionNumber];
      v48 = [suggestionNumber3 isEqual:suggestionNumber4];

      if (!v48)
      {
        goto LABEL_133;
      }
    }

    numberOfVisibleSuggestions = [(BMPeopleSuggesterEventLevelMetrics *)self numberOfVisibleSuggestions];
    numberOfVisibleSuggestions2 = [v5 numberOfVisibleSuggestions];
    v51 = numberOfVisibleSuggestions2;
    if (numberOfVisibleSuggestions == numberOfVisibleSuggestions2)
    {
    }

    else
    {
      numberOfVisibleSuggestions3 = [(BMPeopleSuggesterEventLevelMetrics *)self numberOfVisibleSuggestions];
      numberOfVisibleSuggestions4 = [v5 numberOfVisibleSuggestions];
      v54 = [numberOfVisibleSuggestions3 isEqual:numberOfVisibleSuggestions4];

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

      peopleSuggestionsSetting = [(BMPeopleSuggesterEventLevelMetrics *)self peopleSuggestionsSetting];
      if (peopleSuggestionsSetting != [v5 peopleSuggestionsSetting])
      {
        goto LABEL_133;
      }
    }

    transportApp = [(BMPeopleSuggesterEventLevelMetrics *)self transportApp];
    transportApp2 = [v5 transportApp];
    v58 = transportApp2;
    if (transportApp == transportApp2)
    {
    }

    else
    {
      transportApp3 = [(BMPeopleSuggesterEventLevelMetrics *)self transportApp];
      transportApp4 = [v5 transportApp];
      v61 = [transportApp3 isEqual:transportApp4];

      if (!v61)
      {
        goto LABEL_133;
      }
    }

    sourceApp = [(BMPeopleSuggesterEventLevelMetrics *)self sourceApp];
    sourceApp2 = [v5 sourceApp];
    v64 = sourceApp2;
    if (sourceApp == sourceApp2)
    {
    }

    else
    {
      sourceApp3 = [(BMPeopleSuggesterEventLevelMetrics *)self sourceApp];
      sourceApp4 = [v5 sourceApp];
      v67 = [sourceApp3 isEqual:sourceApp4];

      if (!v67)
      {
        goto LABEL_133;
      }
    }

    contentShared = [(BMPeopleSuggesterEventLevelMetrics *)self contentShared];
    contentShared2 = [v5 contentShared];
    v70 = contentShared2;
    if (contentShared == contentShared2)
    {
    }

    else
    {
      contentShared3 = [(BMPeopleSuggesterEventLevelMetrics *)self contentShared];
      contentShared4 = [v5 contentShared];
      v73 = [contentShared3 isEqual:contentShared4];

      if (!v73)
      {
        goto LABEL_133;
      }
    }

    sessionId = [(BMPeopleSuggesterEventLevelMetrics *)self sessionId];
    sessionId2 = [v5 sessionId];
    v76 = sessionId2;
    if (sessionId == sessionId2)
    {
    }

    else
    {
      sessionId3 = [(BMPeopleSuggesterEventLevelMetrics *)self sessionId];
      sessionId4 = [v5 sessionId];
      v79 = [sessionId3 isEqual:sessionId4];

      if (!v79)
      {
        goto LABEL_133;
      }
    }

    userExperienceFlow = [(BMPeopleSuggesterEventLevelMetrics *)self userExperienceFlow];
    userExperienceFlow2 = [v5 userExperienceFlow];
    v82 = userExperienceFlow2;
    if (userExperienceFlow == userExperienceFlow2)
    {
    }

    else
    {
      userExperienceFlow3 = [(BMPeopleSuggesterEventLevelMetrics *)self userExperienceFlow];
      userExperienceFlow4 = [v5 userExperienceFlow];
      v85 = [userExperienceFlow3 isEqual:userExperienceFlow4];

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

      sessionLatency = [(BMPeopleSuggesterEventLevelMetrics *)self sessionLatency];
      if (sessionLatency != [v5 sessionLatency])
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

      modelTimeout = [(BMPeopleSuggesterEventLevelMetrics *)self modelTimeout];
      if (modelTimeout != [v5 modelTimeout])
      {
        goto LABEL_133;
      }
    }

    suggestionPath = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionPath];
    suggestionPath2 = [v5 suggestionPath];
    v90 = suggestionPath2;
    if (suggestionPath == suggestionPath2)
    {
    }

    else
    {
      suggestionPath3 = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionPath];
      suggestionPath4 = [v5 suggestionPath];
      v93 = [suggestionPath3 isEqual:suggestionPath4];

      if (!v93)
      {
        goto LABEL_133;
      }
    }

    suggestionPathDebug = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionPathDebug];
    suggestionPathDebug2 = [v5 suggestionPathDebug];
    v96 = suggestionPathDebug2;
    if (suggestionPathDebug == suggestionPathDebug2)
    {
    }

    else
    {
      suggestionPathDebug3 = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionPathDebug];
      suggestionPathDebug4 = [v5 suggestionPathDebug];
      v99 = [suggestionPathDebug3 isEqual:suggestionPathDebug4];

      if (!v99)
      {
        goto LABEL_133;
      }
    }

    trialDeploymentId = [(BMPeopleSuggesterEventLevelMetrics *)self trialDeploymentId];
    trialDeploymentId2 = [v5 trialDeploymentId];
    v102 = trialDeploymentId2;
    if (trialDeploymentId == trialDeploymentId2)
    {
    }

    else
    {
      trialDeploymentId3 = [(BMPeopleSuggesterEventLevelMetrics *)self trialDeploymentId];
      trialDeploymentId4 = [v5 trialDeploymentId];
      v105 = [trialDeploymentId3 isEqual:trialDeploymentId4];

      if (!v105)
      {
        goto LABEL_133;
      }
    }

    trialExperimentId = [(BMPeopleSuggesterEventLevelMetrics *)self trialExperimentId];
    trialExperimentId2 = [v5 trialExperimentId];
    v108 = trialExperimentId2;
    if (trialExperimentId == trialExperimentId2)
    {
    }

    else
    {
      trialExperimentId3 = [(BMPeopleSuggesterEventLevelMetrics *)self trialExperimentId];
      trialExperimentId4 = [v5 trialExperimentId];
      v111 = [trialExperimentId3 isEqual:trialExperimentId4];

      if (!v111)
      {
        goto LABEL_133;
      }
    }

    trialTreatmentId = [(BMPeopleSuggesterEventLevelMetrics *)self trialTreatmentId];
    trialTreatmentId2 = [v5 trialTreatmentId];
    v114 = trialTreatmentId2;
    if (trialTreatmentId == trialTreatmentId2)
    {
    }

    else
    {
      trialTreatmentId3 = [(BMPeopleSuggesterEventLevelMetrics *)self trialTreatmentId];
      trialTreatmentId4 = [v5 trialTreatmentId];
      v117 = [trialTreatmentId3 isEqual:trialTreatmentId4];

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
          datestamp = [(BMPeopleSuggesterEventLevelMetrics *)self datestamp];
          datestamp2 = [v5 datestamp];
          if (datestamp == datestamp2)
          {
            v12 = 1;
          }

          else
          {
            datestamp3 = [(BMPeopleSuggesterEventLevelMetrics *)self datestamp];
            datestamp4 = [v5 datestamp];
            v12 = [datestamp3 isEqual:datestamp4];
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
  indexSelected = [(BMPeopleSuggesterEventLevelMetrics *)self indexSelected];
  engagedSuggestionProxyReason = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxyReason];
  engagedSuggestionProxy = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxy];
  engagedSuggestionProxyDebug = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxyDebug];
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

  engagementType = [(BMPeopleSuggesterEventLevelMetrics *)self engagementType];
  if ([(BMPeopleSuggesterEventLevelMetrics *)self hasSuggestionAvailable])
  {
    v96 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics suggestionAvailable](self, "suggestionAvailable")}];
  }

  else
  {
    v96 = 0;
  }

  suggestionNumber = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionNumber];
  numberOfVisibleSuggestions = [(BMPeopleSuggesterEventLevelMetrics *)self numberOfVisibleSuggestions];
  if ([(BMPeopleSuggesterEventLevelMetrics *)self hasPeopleSuggestionsSetting])
  {
    v93 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics peopleSuggestionsSetting](self, "peopleSuggestionsSetting")}];
  }

  else
  {
    v93 = 0;
  }

  transportApp = [(BMPeopleSuggesterEventLevelMetrics *)self transportApp];
  sourceApp = [(BMPeopleSuggesterEventLevelMetrics *)self sourceApp];
  contentShared = [(BMPeopleSuggesterEventLevelMetrics *)self contentShared];
  sessionId = [(BMPeopleSuggesterEventLevelMetrics *)self sessionId];
  userExperienceFlow = [(BMPeopleSuggesterEventLevelMetrics *)self userExperienceFlow];
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

  suggestionPath = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionPath];
  suggestionPathDebug = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionPathDebug];
  trialDeploymentId = [(BMPeopleSuggesterEventLevelMetrics *)self trialDeploymentId];
  trialExperimentId = [(BMPeopleSuggesterEventLevelMetrics *)self trialExperimentId];
  trialTreatmentId = [(BMPeopleSuggesterEventLevelMetrics *)self trialTreatmentId];
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

  datestamp = [(BMPeopleSuggesterEventLevelMetrics *)self datestamp];
  v100[0] = @"indexSelected";
  null = indexSelected;
  if (!indexSelected)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v68 = null;
  v101[0] = null;
  v100[1] = @"engagedSuggestionProxyReason";
  null2 = engagedSuggestionProxyReason;
  if (!engagedSuggestionProxyReason)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v67 = null2;
  v101[1] = null2;
  v100[2] = @"engagedSuggestionProxy";
  null3 = engagedSuggestionProxy;
  if (!engagedSuggestionProxy)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v66 = null3;
  v101[2] = null3;
  v100[3] = @"engagedSuggestionProxyDebug";
  null4 = engagedSuggestionProxyDebug;
  if (!engagedSuggestionProxyDebug)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v65 = null4;
  v101[3] = null4;
  v100[4] = @"airdropShown";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v64 = null5;
  v101[4] = null5;
  v100[5] = @"airdropEngaged";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v63 = null6;
  v101[5] = null6;
  v100[6] = @"sharePlayAvailable";
  null7 = v9;
  if (!v9)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v62 = null7;
  v101[6] = null7;
  v100[7] = @"sharePlayEngaged";
  null8 = v99;
  if (!v99)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v101[7] = null8;
  v100[8] = @"appSharingIntent";
  null9 = v98;
  if (!v98)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v101[8] = null9;
  v100[9] = @"engagementType";
  null10 = engagementType;
  if (!engagementType)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = engagedSuggestionProxyDebug;
  v72 = null10;
  v101[9] = null10;
  v100[10] = @"suggestionAvailable";
  null11 = v96;
  if (!v96)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = indexSelected;
  v60 = null11;
  v101[10] = null11;
  v100[11] = @"suggestionNumber";
  null12 = suggestionNumber;
  if (!suggestionNumber)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = engagedSuggestionProxy;
  v71 = null12;
  v101[11] = null12;
  v100[12] = @"numberOfVisibleSuggestions";
  null13 = numberOfVisibleSuggestions;
  if (!numberOfVisibleSuggestions)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = null13;
  v101[12] = null13;
  v100[13] = @"peopleSuggestionsSetting";
  null14 = v93;
  if (!v93)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v59 = null14;
  v101[13] = null14;
  v100[14] = @"transportApp";
  null15 = transportApp;
  if (!transportApp)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v58 = null15;
  v101[14] = null15;
  v100[15] = @"sourceApp";
  null16 = sourceApp;
  if (!sourceApp)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v57 = null16;
  v101[15] = null16;
  v100[16] = @"contentShared";
  null17 = contentShared;
  if (!contentShared)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v56 = null17;
  v101[16] = null17;
  v100[17] = @"sessionId";
  null18 = sessionId;
  if (!sessionId)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v55 = null18;
  v101[17] = null18;
  v100[18] = @"userExperienceFlow";
  null19 = userExperienceFlow;
  if (!userExperienceFlow)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v54 = null19;
  v101[18] = null19;
  v100[19] = @"sessionLatency";
  null20 = v87;
  if (!v87)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v53 = null20;
  v101[19] = null20;
  v100[20] = @"modelTimeout";
  null21 = v86;
  if (!v86)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v52 = null21;
  v101[20] = null21;
  v100[21] = @"suggestionPath";
  null22 = suggestionPath;
  if (!suggestionPath)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v51 = null22;
  v101[21] = null22;
  v100[22] = @"suggestionPathDebug";
  null23 = suggestionPathDebug;
  if (!suggestionPathDebug)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v76 = engagedSuggestionProxyReason;
  v50 = null23;
  v101[22] = null23;
  v100[23] = @"trialDeploymentId";
  null24 = trialDeploymentId;
  if (!trialDeploymentId)
  {
    null24 = [MEMORY[0x1E695DFB0] null];
  }

  v75 = v20;
  v48 = null24;
  v101[23] = null24;
  v100[24] = @"trialExperimentId";
  null25 = trialExperimentId;
  if (!trialExperimentId)
  {
    null25 = [MEMORY[0x1E695DFB0] null];
  }

  v73 = v22;
  v74 = v8;
  v101[24] = null25;
  v100[25] = @"trialTreatmentId";
  null26 = trialTreatmentId;
  if (!trialTreatmentId)
  {
    null26 = [MEMORY[0x1E695DFB0] null];
  }

  v61 = null9;
  v70 = v24;
  v101[25] = null26;
  v100[26] = @"isPhotos";
  null27 = v80;
  if (!v80)
  {
    null27 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = v7;
  v101[26] = null27;
  v100[27] = @"PSRActive";
  null28 = v79;
  if (!v79)
  {
    null28 = [MEMORY[0x1E695DFB0] null];
  }

  v101[27] = null28;
  v100[28] = @"sessionDelayInMilliseconds";
  null29 = v78;
  if (!v78)
  {
    null29 = [MEMORY[0x1E695DFB0] null];
  }

  v101[28] = null29;
  v100[29] = @"datestamp";
  null30 = datestamp;
  if (!datestamp)
  {
    null30 = [MEMORY[0x1E695DFB0] null];
  }

  v101[29] = null30;
  v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v101 forKeys:v100 count:{30, v48}];
  if (!datestamp)
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

  if (!trialTreatmentId)
  {

    v45 = v26;
  }

  if (!trialExperimentId)
  {

    v45 = v26;
  }

  if (!trialDeploymentId)
  {

    v45 = v26;
  }

  if (!suggestionPathDebug)
  {

    v45 = v26;
  }

  if (!suggestionPath)
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

  if (!userExperienceFlow)
  {

    v45 = v26;
  }

  if (!sessionId)
  {

    v45 = v26;
  }

  if (!contentShared)
  {

    v45 = v26;
  }

  if (!sourceApp)
  {

    v45 = v26;
  }

  if (!transportApp)
  {

    v45 = v26;
  }

  if (!v93)
  {

    v45 = v26;
  }

  if (!numberOfVisibleSuggestions)
  {
  }

  if (!suggestionNumber)
  {
  }

  if (!v96)
  {
  }

  if (!engagementType)
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

- (BMPeopleSuggesterEventLevelMetrics)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v355[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"indexSelected"];
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
    v7 = [dictionaryCopy objectForKeyedSubscript:@"engagedSuggestionProxyReason"];
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
      v9 = [dictionaryCopy objectForKeyedSubscript:@"engagedSuggestionProxy"];
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
        v10 = [dictionaryCopy objectForKeyedSubscript:@"engagedSuggestionProxyDebug"];
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
          v292 = [dictionaryCopy objectForKeyedSubscript:@"airdropShown"];
          if (!v292 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            errorCopy2 = error;
            error = 0;
            goto LABEL_16;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            errorCopy2 = error;
            error = v292;
LABEL_16:
            [dictionaryCopy objectForKeyedSubscript:@"airdropEngaged"];
            v291 = v285 = error;
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
              v11 = [dictionaryCopy objectForKeyedSubscript:@"sharePlayAvailable"];
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
                v13 = [dictionaryCopy objectForKeyedSubscript:@"sharePlayEngaged"];
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
                  v284 = [dictionaryCopy objectForKeyedSubscript:@"appSharingIntent"];
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
                    v15 = [dictionaryCopy objectForKeyedSubscript:@"engagementType"];
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
                      v17 = [dictionaryCopy objectForKeyedSubscript:@"suggestionAvailable"];
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
                        v18 = [dictionaryCopy objectForKeyedSubscript:@"suggestionNumber"];
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
                          v20 = [dictionaryCopy objectForKeyedSubscript:@"numberOfVisibleSuggestions"];
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
                            v271 = [dictionaryCopy objectForKeyedSubscript:@"peopleSuggestionsSetting"];
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
                              v22 = [dictionaryCopy objectForKeyedSubscript:@"transportApp"];
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
                                v24 = [dictionaryCopy objectForKeyedSubscript:@"sourceApp"];
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
                                  v26 = [dictionaryCopy objectForKeyedSubscript:@"contentShared"];
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
                                    v28 = [dictionaryCopy objectForKeyedSubscript:@"sessionId"];
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
                                      v30 = [dictionaryCopy objectForKeyedSubscript:@"userExperienceFlow"];
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
                                        v32 = [dictionaryCopy objectForKeyedSubscript:@"sessionLatency"];
                                        v254 = v32;
                                        if (!v32 || (v33 = v32, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v255 = 0;
LABEL_61:
                                          v34 = [dictionaryCopy objectForKeyedSubscript:@"modelTimeout"];
                                          v252 = v34;
                                          if (v34 && (v35 = v34, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                          {
                                            objc_opt_class();
                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                            {
                                              if (!errorCopy2)
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
                                              *errorCopy2 = [v166 initWithDomain:v167 code:2 userInfo:?];
                                              v58 = v288;
                                              goto LABEL_273;
                                            }

                                            v253 = v35;
                                          }

                                          else
                                          {
                                            v253 = 0;
                                          }

                                          v36 = [dictionaryCopy objectForKeyedSubscript:@"suggestionPath"];
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
                                            v38 = [dictionaryCopy objectForKeyedSubscript:@"suggestionPathDebug"];
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
                                              v40 = [dictionaryCopy objectForKeyedSubscript:@"trialDeploymentId"];
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
                                                v42 = [dictionaryCopy objectForKeyedSubscript:@"trialExperimentId"];
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
                                                  v44 = [dictionaryCopy objectForKeyedSubscript:@"trialTreatmentId"];
                                                  v240 = v44;
                                                  if (!v44 || (v45 = v44, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                  {
                                                    v243 = 0;
LABEL_79:
                                                    v46 = [dictionaryCopy objectForKeyedSubscript:@"isPhotos"];
                                                    v239 = v46;
                                                    if (v46 && (v47 = v46, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                    {
                                                      objc_opt_class();
                                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                                      {
                                                        if (!errorCopy2)
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
                                                        *errorCopy2 = [v195 initWithDomain:v196 code:2 userInfo:v182];
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

                                                    v48 = [dictionaryCopy objectForKeyedSubscript:@"PSRActive"];
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
                                                          if (!errorCopy2)
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
                                                          *errorCopy2 = [v202 initWithDomain:v203 code:2 userInfo:v181];
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

                                                    v177 = [dictionaryCopy objectForKeyedSubscript:@"sessionDelayInMilliseconds"];
                                                    v237 = v48;
                                                    v235 = v177;
                                                    if (v177 && (v178 = v177, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                    {
                                                      objc_opt_class();
                                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                                      {
                                                        if (!errorCopy2)
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
                                                        *errorCopy2 = [v209 initWithDomain:v210 code:2 userInfo:?];
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

                                                    v179 = [dictionaryCopy objectForKeyedSubscript:@"datestamp"];
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
                                                          if (errorCopy2)
                                                          {
                                                            v216 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v217 = *MEMORY[0x1E698F240];
                                                            v296 = *MEMORY[0x1E696A578];
                                                            v218 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"datestamp"];
                                                            v297 = v218;
                                                            v219 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v297 forKeys:&v296 count:1];
                                                            v220 = v216;
                                                            v58 = v288;
                                                            *errorCopy2 = [v220 initWithDomain:v217 code:2 userInfo:v219];
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
                                                        v53 = [(BMPeopleSuggesterEventLevelMetrics *)self initWithIndexSelected:v287 engagedSuggestionProxyReason:v289 engagedSuggestionProxy:v58 engagedSuggestionProxyDebug:v290 airdropShown:error airdropEngaged:v286 sharePlayAvailable:v281 sharePlayEngaged:v279 appSharingIntent:v278 engagementType:v277 suggestionAvailable:v273 suggestionNumber:v270 numberOfVisibleSuggestions:v266 peopleSuggestionsSetting:v267 transportApp:v265 sourceApp:v263 contentShared:v261 sessionId:v259 userExperienceFlow:v257 sessionLatency:v255 modelTimeout:v253 suggestionPath:v251 suggestionPathDebug:v249 trialDeploymentId:v247 trialExperimentId:v245 trialTreatmentId:v243 isPhotos:v241 PSRActive:v48 sessionDelayInMilliseconds:v238 datestamp:v179];
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

                                                  if (errorCopy2)
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
                                                    *errorCopy2 = v194;
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

                                                if (errorCopy2)
                                                {
                                                  v188 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v189 = *MEMORY[0x1E698F240];
                                                  v306 = *MEMORY[0x1E696A578];
                                                  v243 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"trialExperimentId"];
                                                  v307 = v243;
                                                  v240 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v307 forKeys:&v306 count:1];
                                                  v245 = 0;
                                                  v53 = 0;
                                                  *errorCopy2 = [v188 initWithDomain:v189 code:2 userInfo:?];
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

                                              if (errorCopy2)
                                              {
                                                v186 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v187 = *MEMORY[0x1E698F240];
                                                v308 = *MEMORY[0x1E696A578];
                                                v245 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"trialDeploymentId"];
                                                v309 = v245;
                                                v242 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v309 forKeys:&v308 count:1];
                                                v247 = 0;
                                                v53 = 0;
                                                *errorCopy2 = [v186 initWithDomain:v187 code:2 userInfo:?];
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

                                            if (errorCopy2)
                                            {
                                              v175 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v176 = *MEMORY[0x1E698F240];
                                              v310 = *MEMORY[0x1E696A578];
                                              v247 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"suggestionPathDebug"];
                                              v311 = v247;
                                              v246 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v311 forKeys:&v310 count:1];
                                              v249 = 0;
                                              v53 = 0;
                                              *errorCopy2 = [v175 initWithDomain:v176 code:2 userInfo:?];
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

                                          if (errorCopy2)
                                          {
                                            v173 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v174 = *MEMORY[0x1E698F240];
                                            v312 = *MEMORY[0x1E696A578];
                                            v249 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"suggestionPath"];
                                            v313 = v249;
                                            v248 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v313 forKeys:&v312 count:1];
                                            v251 = 0;
                                            v53 = 0;
                                            *errorCopy2 = [v173 initWithDomain:v174 code:2 userInfo:?];
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

                                        if (errorCopy2)
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
                                          *errorCopy2 = [v158 initWithDomain:v159 code:2 userInfo:v165];
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

                                      if (errorCopy2)
                                      {
                                        v156 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v157 = *MEMORY[0x1E698F240];
                                        v318 = *MEMORY[0x1E696A578];
                                        v255 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userExperienceFlow"];
                                        v319 = v255;
                                        v254 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v319 forKeys:&v318 count:1];
                                        v257 = 0;
                                        v53 = 0;
                                        *errorCopy2 = [v156 initWithDomain:v157 code:2 userInfo:?];
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

                                    if (errorCopy2)
                                    {
                                      v154 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v155 = *MEMORY[0x1E698F240];
                                      v320 = *MEMORY[0x1E696A578];
                                      v257 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sessionId"];
                                      v321 = v257;
                                      v256 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v321 forKeys:&v320 count:1];
                                      v259 = 0;
                                      v53 = 0;
                                      *errorCopy2 = [v154 initWithDomain:v155 code:2 userInfo:?];
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

                                  if (errorCopy2)
                                  {
                                    v148 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v149 = *MEMORY[0x1E698F240];
                                    v322 = *MEMORY[0x1E696A578];
                                    v259 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contentShared"];
                                    v323 = v259;
                                    v258 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v323 forKeys:&v322 count:1];
                                    v261 = 0;
                                    v53 = 0;
                                    *errorCopy2 = [v148 initWithDomain:v149 code:2 userInfo:?];
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

                                if (errorCopy2)
                                {
                                  v146 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v147 = *MEMORY[0x1E698F240];
                                  v324 = *MEMORY[0x1E696A578];
                                  v261 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sourceApp"];
                                  v325 = v261;
                                  v260 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v325 forKeys:&v324 count:1];
                                  v263 = 0;
                                  v53 = 0;
                                  *errorCopy2 = [v146 initWithDomain:v147 code:2 userInfo:?];
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

                              if (errorCopy2)
                              {
                                v144 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v145 = *MEMORY[0x1E698F240];
                                v326 = *MEMORY[0x1E696A578];
                                v263 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"transportApp"];
                                v327 = v263;
                                v262 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v327 forKeys:&v326 count:1];
                                v265 = 0;
                                v53 = 0;
                                *errorCopy2 = [v144 initWithDomain:v145 code:2 userInfo:?];
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

                            if (errorCopy2)
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
                              *errorCopy2 = [v137 initWithDomain:v138 code:2 userInfo:?];
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

                          if (errorCopy2)
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
                            *errorCopy2 = v136;
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

                        if (errorCopy2)
                        {
                          v272 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v132 = *MEMORY[0x1E698F240];
                          v332 = *MEMORY[0x1E696A578];
                          v133 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"suggestionNumber"];
                          v333 = v133;
                          v268 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v333 forKeys:&v332 count:1];
                          v270 = 0;
                          v53 = 0;
                          *errorCopy2 = [v272 initWithDomain:v132 code:2 userInfo:?];
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

                      if (errorCopy2)
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
                        *errorCopy2 = v131;
                        v58 = v288;
                        goto LABEL_243;
                      }

                      v273 = 0;
                      v53 = 0;
                      v58 = v288;
LABEL_244:

                      goto LABEL_245;
                    }

                    if (errorCopy2)
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
                      *errorCopy2 = [v120 initWithDomain:v118 code:2 userInfo:v119];
                      v58 = v288;
                      v17 = v119;
                      error = v285;
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
                  if (errorCopy2)
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
                    *errorCopy2 = [v108 initWithDomain:v116 code:2 userInfo:?];
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

                if (errorCopy2)
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
                  *errorCopy2 = [v99 initWithDomain:v107 code:2 userInfo:?];
                  goto LABEL_160;
                }

                v279 = 0;
                v53 = 0;
                v58 = v288;
                v8 = v289;
LABEL_247:

                goto LABEL_248;
              }

              if (errorCopy2)
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
                *errorCopy2 = [v86 initWithDomain:v94 code:2 userInfo:?];
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

            if (errorCopy2)
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
              *errorCopy2 = [v77 initWithDomain:v85 code:2 userInfo:?];
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

          if (error)
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
            v75 = v74 = error;
            v76 = v68;
            v8 = v289;
            v291 = v75;
            error = 0;
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

        if (error)
        {
          v64 = objc_alloc(MEMORY[0x1E696ABC0]);
          v65 = *MEMORY[0x1E698F240];
          v348 = *MEMORY[0x1E696A578];
          v66 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"engagedSuggestionProxyDebug"];
          v349 = v66;
          v292 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v349 forKeys:&v348 count:1];
          v290 = 0;
          v53 = 0;
          *error = [v64 initWithDomain:v65 code:2 userInfo:?];
          v8 = v289;
          error = v66;
          goto LABEL_138;
        }

        v290 = 0;
        v53 = 0;
        v58 = v288;
LABEL_251:

        goto LABEL_252;
      }

      if (error)
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
        *error = [v293 initWithDomain:v63 code:2 userInfo:v10];
        goto LABEL_251;
      }

      v58 = 0;
      v53 = 0;
LABEL_252:

      goto LABEL_253;
    }

    if (error)
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
      *error = v59;
      goto LABEL_252;
    }

    v8 = 0;
    v53 = 0;
LABEL_253:

    goto LABEL_254;
  }

  if (error)
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
    *error = [v49 initWithDomain:v52 code:2 userInfo:v7];
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
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v17 = toCopy;
  if (self->_indexSelected)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  if (self->_engagedSuggestionProxyReason)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  if (self->_engagedSuggestionProxy)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  if (self->_engagedSuggestionProxyDebug)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  if (self->_hasAirdropShown)
  {
    airdropShown = self->_airdropShown;
    PBDataWriterWriteBOOLField();
    toCopy = v17;
  }

  if (self->_hasAirdropEngaged)
  {
    airdropEngaged = self->_airdropEngaged;
    PBDataWriterWriteBOOLField();
    toCopy = v17;
  }

  if (self->_hasSharePlayAvailable)
  {
    sharePlayAvailable = self->_sharePlayAvailable;
    PBDataWriterWriteBOOLField();
    toCopy = v17;
  }

  if (self->_hasSharePlayEngaged)
  {
    sharePlayEngaged = self->_sharePlayEngaged;
    PBDataWriterWriteBOOLField();
    toCopy = v17;
  }

  if (self->_hasAppSharingIntent)
  {
    appSharingIntent = self->_appSharingIntent;
    PBDataWriterWriteBOOLField();
    toCopy = v17;
  }

  if (self->_engagementType)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  if (self->_hasSuggestionAvailable)
  {
    suggestionAvailable = self->_suggestionAvailable;
    PBDataWriterWriteBOOLField();
    toCopy = v17;
  }

  if (self->_suggestionNumber)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  if (self->_numberOfVisibleSuggestions)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  if (self->_hasPeopleSuggestionsSetting)
  {
    peopleSuggestionsSetting = self->_peopleSuggestionsSetting;
    PBDataWriterWriteBOOLField();
    toCopy = v17;
  }

  if (self->_transportApp)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  if (self->_sourceApp)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  if (self->_contentShared)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  if (self->_sessionId)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  if (self->_userExperienceFlow)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  if (self->_hasSessionLatency)
  {
    sessionLatency = self->_sessionLatency;
    PBDataWriterWriteUint32Field();
    toCopy = v17;
  }

  if (self->_hasModelTimeout)
  {
    modelTimeout = self->_modelTimeout;
    PBDataWriterWriteBOOLField();
    toCopy = v17;
  }

  if (self->_suggestionPath)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  if (self->_suggestionPathDebug)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  if (self->_trialDeploymentId)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  if (self->_trialExperimentId)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  if (self->_trialTreatmentId)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  if (self->_hasIsPhotos)
  {
    isPhotos = self->_isPhotos;
    PBDataWriterWriteBOOLField();
    toCopy = v17;
  }

  if (self->_hasPSRActive)
  {
    PSRActive = self->_PSRActive;
    PBDataWriterWriteBOOLField();
    toCopy = v17;
  }

  if (self->_hasSessionDelayInMilliseconds)
  {
    sessionDelayInMilliseconds = self->_sessionDelayInMilliseconds;
    PBDataWriterWriteUint32Field();
    toCopy = v17;
  }

  if (self->_datestamp)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
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
    position = [fromCopy position];
    if (position >= [fromCopy length] || (objc_msgSend(fromCopy, "hasError") & 1) != 0)
    {
      break;
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v105 = 0;
      v10 = [fromCopy position] + 1;
      if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
      {
        data = [fromCopy data];
        [data getBytes:&v105 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
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

    v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
    if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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
          v27 = [fromCopy position] + 1;
          if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v105 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        v30 = (v26 != 0) & ~[fromCopy hasError];
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
          v48 = [fromCopy position] + 1;
          if (v48 >= [fromCopy position] && (v49 = objc_msgSend(fromCopy, "position") + 1, v49 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v105 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        v51 = (v47 != 0) & ~[fromCopy hasError];
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
          v62 = [fromCopy position] + 1;
          if (v62 >= [fromCopy position] && (v63 = objc_msgSend(fromCopy, "position") + 1, v63 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v105 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        v65 = (v61 != 0) & ~[fromCopy hasError];
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
          v34 = [fromCopy position] + 1;
          if (v34 >= [fromCopy position] && (v35 = objc_msgSend(fromCopy, "position") + 1, v35 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v105 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        v37 = (v33 != 0) & ~[fromCopy hasError];
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
          v76 = [fromCopy position] + 1;
          if (v76 >= [fromCopy position] && (v77 = objc_msgSend(fromCopy, "position") + 1, v77 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v105 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        v79 = (v75 != 0) & ~[fromCopy hasError];
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
          v69 = [fromCopy position] + 1;
          if (v69 >= [fromCopy position] && (v70 = objc_msgSend(fromCopy, "position") + 1, v70 <= objc_msgSend(fromCopy, "length")))
          {
            data7 = [fromCopy data];
            [data7 getBytes:&v105 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        v72 = (v68 != 0) & ~[fromCopy hasError];
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
          v55 = [fromCopy position] + 1;
          if (v55 >= [fromCopy position] && (v56 = objc_msgSend(fromCopy, "position") + 1, v56 <= objc_msgSend(fromCopy, "length")))
          {
            data8 = [fromCopy data];
            [data8 getBytes:&v105 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        v58 = (v54 != 0) & ~[fromCopy hasError];
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
          v83 = [fromCopy position] + 1;
          if (v83 >= [fromCopy position] && (v84 = objc_msgSend(fromCopy, "position") + 1, v84 <= objc_msgSend(fromCopy, "length")))
          {
            data9 = [fromCopy data];
            [data9 getBytes:&v105 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        if ([fromCopy hasError])
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
          v41 = [fromCopy position] + 1;
          if (v41 >= [fromCopy position] && (v42 = objc_msgSend(fromCopy, "position") + 1, v42 <= objc_msgSend(fromCopy, "length")))
          {
            data10 = [fromCopy data];
            [data10 getBytes:&v105 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        v44 = (v40 != 0) & ~[fromCopy hasError];
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
          v97 = [fromCopy position] + 1;
          if (v97 >= [fromCopy position] && (v98 = objc_msgSend(fromCopy, "position") + 1, v98 <= objc_msgSend(fromCopy, "length")))
          {
            data11 = [fromCopy data];
            [data11 getBytes:&v105 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        v100 = (v96 != 0) & ~[fromCopy hasError];
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
          v20 = [fromCopy position] + 1;
          if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 1, v21 <= objc_msgSend(fromCopy, "length")))
          {
            data12 = [fromCopy data];
            [data12 getBytes:&v105 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        v23 = (v19 != 0) & ~[fromCopy hasError];
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
      v90 = [fromCopy position] + 1;
      if (v90 >= [fromCopy position] && (v91 = objc_msgSend(fromCopy, "position") + 1, v91 <= objc_msgSend(fromCopy, "length")))
      {
        data13 = [fromCopy data];
        [data13 getBytes:&v105 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
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

    if ([fromCopy hasError])
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

  if (([fromCopy hasError] & 1) == 0)
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
  indexSelected = [(BMPeopleSuggesterEventLevelMetrics *)self indexSelected];
  engagedSuggestionProxyReason = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxyReason];
  engagedSuggestionProxy = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxy];
  engagedSuggestionProxyDebug = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxyDebug];
  v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics airdropShown](self, "airdropShown")}];
  v32 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics airdropEngaged](self, "airdropEngaged")}];
  v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics sharePlayAvailable](self, "sharePlayAvailable")}];
  v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics sharePlayEngaged](self, "sharePlayEngaged")}];
  v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics appSharingIntent](self, "appSharingIntent")}];
  engagementType = [(BMPeopleSuggesterEventLevelMetrics *)self engagementType];
  v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics suggestionAvailable](self, "suggestionAvailable")}];
  suggestionNumber = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionNumber];
  numberOfVisibleSuggestions = [(BMPeopleSuggesterEventLevelMetrics *)self numberOfVisibleSuggestions];
  v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics peopleSuggestionsSetting](self, "peopleSuggestionsSetting")}];
  transportApp = [(BMPeopleSuggesterEventLevelMetrics *)self transportApp];
  sourceApp = [(BMPeopleSuggesterEventLevelMetrics *)self sourceApp];
  contentShared = [(BMPeopleSuggesterEventLevelMetrics *)self contentShared];
  sessionId = [(BMPeopleSuggesterEventLevelMetrics *)self sessionId];
  userExperienceFlow = [(BMPeopleSuggesterEventLevelMetrics *)self userExperienceFlow];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPeopleSuggesterEventLevelMetrics sessionLatency](self, "sessionLatency")}];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics modelTimeout](self, "modelTimeout")}];
  suggestionPath = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionPath];
  suggestionPathDebug = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionPathDebug];
  trialDeploymentId = [(BMPeopleSuggesterEventLevelMetrics *)self trialDeploymentId];
  trialExperimentId = [(BMPeopleSuggesterEventLevelMetrics *)self trialExperimentId];
  trialTreatmentId = [(BMPeopleSuggesterEventLevelMetrics *)self trialTreatmentId];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics isPhotos](self, "isPhotos")}];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics PSRActive](self, "PSRActive")}];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPeopleSuggesterEventLevelMetrics sessionDelayInMilliseconds](self, "sessionDelayInMilliseconds")}];
  datestamp = [(BMPeopleSuggesterEventLevelMetrics *)self datestamp];
  v19 = [v18 initWithFormat:@"BMPeopleSuggesterEventLevelMetrics with indexSelected: %@, engagedSuggestionProxyReason: %@, engagedSuggestionProxy: %@, engagedSuggestionProxyDebug: %@, airdropShown: %@, airdropEngaged: %@, sharePlayAvailable: %@, sharePlayEngaged: %@, appSharingIntent: %@, engagementType: %@, suggestionAvailable: %@, suggestionNumber: %@, numberOfVisibleSuggestions: %@, peopleSuggestionsSetting: %@, transportApp: %@, sourceApp: %@, contentShared: %@, sessionId: %@, userExperienceFlow: %@, sessionLatency: %@, modelTimeout: %@, suggestionPath: %@, suggestionPathDebug: %@, trialDeploymentId: %@, trialExperimentId: %@, trialTreatmentId: %@, isPhotos: %@, PSRActive: %@, sessionDelayInMilliseconds: %@, datestamp: %@", indexSelected, engagedSuggestionProxyReason, engagedSuggestionProxy, engagedSuggestionProxyDebug, v30, v32, v29, v26, v28, engagementType, v27, suggestionNumber, numberOfVisibleSuggestions, v25, transportApp, sourceApp, contentShared, sessionId, userExperienceFlow, v14, v13, suggestionPath, suggestionPathDebug, trialDeploymentId, trialExperimentId, trialTreatmentId, v5, v6, v7, datestamp];

  return v19;
}

- (BMPeopleSuggesterEventLevelMetrics)initWithIndexSelected:(id)selected engagedSuggestionProxyReason:(id)reason engagedSuggestionProxy:(id)proxy engagedSuggestionProxyDebug:(id)debug airdropShown:(id)shown airdropEngaged:(id)engaged sharePlayAvailable:(id)available sharePlayEngaged:(id)self0 appSharingIntent:(id)self1 engagementType:(id)self2 suggestionAvailable:(id)self3 suggestionNumber:(id)self4 numberOfVisibleSuggestions:(id)self5 peopleSuggestionsSetting:(id)self6 transportApp:(id)self7 sourceApp:(id)self8 contentShared:(id)self9 sessionId:(id)id userExperienceFlow:(id)flow sessionLatency:(id)latency modelTimeout:(id)timeout suggestionPath:(id)path suggestionPathDebug:(id)pathDebug trialDeploymentId:(id)deploymentId trialExperimentId:(id)experimentId trialTreatmentId:(id)treatmentId isPhotos:(id)photos PSRActive:(id)selected0 sessionDelayInMilliseconds:(id)selected1 datestamp:(id)selected2
{
  selectedCopy = selected;
  reasonCopy = reason;
  reasonCopy2 = reason;
  proxyCopy = proxy;
  proxyCopy2 = proxy;
  debugCopy = debug;
  debugCopy2 = debug;
  shownCopy = shown;
  engagedCopy = engaged;
  availableCopy = available;
  playEngagedCopy = playEngaged;
  intentCopy = intent;
  typeCopy = type;
  suggestionAvailableCopy = suggestionAvailable;
  numberCopy = number;
  suggestionsCopy = suggestions;
  settingCopy = setting;
  appCopy = app;
  sourceAppCopy = sourceApp;
  sharedCopy = shared;
  idCopy = id;
  flowCopy = flow;
  latencyCopy = latency;
  timeoutCopy = timeout;
  pathCopy = path;
  pathDebugCopy = pathDebug;
  deploymentIdCopy = deploymentId;
  experimentIdCopy = experimentId;
  treatmentIdCopy = treatmentId;
  photosCopy = photos;
  activeCopy = active;
  millisecondsCopy = milliseconds;
  datestampCopy = datestamp;
  v76.receiver = self;
  v76.super_class = BMPeopleSuggesterEventLevelMetrics;
  v44 = [(BMEventBase *)&v76 init];
  if (v44)
  {
    v44->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v44->_indexSelected, selected);
    objc_storeStrong(&v44->_engagedSuggestionProxyReason, reasonCopy);
    objc_storeStrong(&v44->_engagedSuggestionProxy, proxyCopy);
    objc_storeStrong(&v44->_engagedSuggestionProxyDebug, debugCopy);
    if (shownCopy)
    {
      v44->_hasAirdropShown = 1;
      v44->_airdropShown = [shownCopy BOOLValue];
    }

    else
    {
      v44->_hasAirdropShown = 0;
      v44->_airdropShown = 0;
    }

    if (engagedCopy)
    {
      v44->_hasAirdropEngaged = 1;
      v44->_airdropEngaged = [engagedCopy BOOLValue];
    }

    else
    {
      v44->_hasAirdropEngaged = 0;
      v44->_airdropEngaged = 0;
    }

    if (availableCopy)
    {
      v44->_hasSharePlayAvailable = 1;
      v44->_sharePlayAvailable = [availableCopy BOOLValue];
    }

    else
    {
      v44->_hasSharePlayAvailable = 0;
      v44->_sharePlayAvailable = 0;
    }

    if (playEngagedCopy)
    {
      v44->_hasSharePlayEngaged = 1;
      v44->_sharePlayEngaged = [playEngagedCopy BOOLValue];
    }

    else
    {
      v44->_hasSharePlayEngaged = 0;
      v44->_sharePlayEngaged = 0;
    }

    if (intentCopy)
    {
      v44->_hasAppSharingIntent = 1;
      v44->_appSharingIntent = [intentCopy BOOLValue];
    }

    else
    {
      v44->_hasAppSharingIntent = 0;
      v44->_appSharingIntent = 0;
    }

    objc_storeStrong(&v44->_engagementType, type);
    if (suggestionAvailableCopy)
    {
      v44->_hasSuggestionAvailable = 1;
      v44->_suggestionAvailable = [suggestionAvailableCopy BOOLValue];
    }

    else
    {
      v44->_hasSuggestionAvailable = 0;
      v44->_suggestionAvailable = 0;
    }

    objc_storeStrong(&v44->_suggestionNumber, number);
    objc_storeStrong(&v44->_numberOfVisibleSuggestions, suggestions);
    if (settingCopy)
    {
      v44->_hasPeopleSuggestionsSetting = 1;
      v44->_peopleSuggestionsSetting = [settingCopy BOOLValue];
    }

    else
    {
      v44->_hasPeopleSuggestionsSetting = 0;
      v44->_peopleSuggestionsSetting = 0;
    }

    objc_storeStrong(&v44->_transportApp, app);
    objc_storeStrong(&v44->_sourceApp, sourceApp);
    objc_storeStrong(&v44->_contentShared, shared);
    objc_storeStrong(&v44->_sessionId, id);
    objc_storeStrong(&v44->_userExperienceFlow, flow);
    unsignedIntValue = latencyCopy;
    if (latencyCopy)
    {
      v44->_hasSessionLatency = 1;
      unsignedIntValue = [latencyCopy unsignedIntValue];
    }

    else
    {
      v44->_hasSessionLatency = 0;
    }

    v44->_sessionLatency = unsignedIntValue;
    if (timeoutCopy)
    {
      v44->_hasModelTimeout = 1;
      v44->_modelTimeout = [timeoutCopy BOOLValue];
    }

    else
    {
      v44->_hasModelTimeout = 0;
      v44->_modelTimeout = 0;
    }

    objc_storeStrong(&v44->_suggestionPath, path);
    objc_storeStrong(&v44->_suggestionPathDebug, pathDebug);
    objc_storeStrong(&v44->_trialDeploymentId, deploymentId);
    objc_storeStrong(&v44->_trialExperimentId, experimentId);
    objc_storeStrong(&v44->_trialTreatmentId, treatmentId);
    if (photosCopy)
    {
      v44->_hasIsPhotos = 1;
      v44->_isPhotos = [photosCopy BOOLValue];
    }

    else
    {
      v44->_hasIsPhotos = 0;
      v44->_isPhotos = 0;
    }

    if (activeCopy)
    {
      v44->_hasPSRActive = 1;
      v44->_PSRActive = [activeCopy BOOLValue];
    }

    else
    {
      v44->_hasPSRActive = 0;
      v44->_PSRActive = 0;
    }

    if (millisecondsCopy)
    {
      v44->_hasSessionDelayInMilliseconds = 1;
      unsignedIntValue2 = [millisecondsCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue2 = 0;
      v44->_hasSessionDelayInMilliseconds = 0;
    }

    v44->_sessionDelayInMilliseconds = unsignedIntValue2;
    objc_storeStrong(&v44->_datestamp, datestamp);
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