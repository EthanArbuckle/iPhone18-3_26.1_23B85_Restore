@interface BMSiriOnDeviceDigestExperimentMetricsExperimentDigest
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriOnDeviceDigestExperimentMetricsExperimentDigest)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSiriOnDeviceDigestExperimentMetricsExperimentDigest)initWithSystemBuild:(id)a3 dataSharingOptInStatus:(id)a4 viewInterface:(id)a5 audioInterfaceVendorId:(id)a6 audioInterfaceProductId:(id)a7 asrLocation:(id)a8 nlLocation:(id)a9 siriInputLocale:(id)a10 subDomain:(id)a11 responseCategory:(id)a12 experimentAllocationStatus:(id)a13 isTriggered:(id)a14 isFirstTriggerOrAfterFirstTrigger:(id)a15 codePathIdUUID:(id)a16 totalTurnCount:(id)a17 validTurnCount:(id)a18 siriTasksStarted:(id)a19 siriTasksCompleted:(id)a20 flowTasksStarted:(id)a21 flowTasksCompleted:(id)a22 reliabilityRequestCount:(id)a23 reliabilityTurnCount:(id)a24 clientErrorCount:(id)a25 undesiredResponseCount:(id)a26 fatalResponseCount:(id)a27 failureResponseCount:(id)a28 siriUnavailableResponseCount:(id)a29 usdxSessionCount:(id)a30 tuples:(id)a31 isIntelligenceEngineRequest:(id)a32 intelligenceEngineRouting:(id)a33 invocationSource:(id)a34;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_intelligenceEngineRoutingJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriOnDeviceDigestExperimentMetricsExperimentDigest

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self systemBuild];
    v7 = [v5 systemBuild];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self systemBuild];
      v10 = [v5 systemBuild];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasDataSharingOptInStatus](self, "hasDataSharingOptInStatus") || [v5 hasDataSharingOptInStatus])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasDataSharingOptInStatus])
      {
        goto LABEL_155;
      }

      if (![v5 hasDataSharingOptInStatus])
      {
        goto LABEL_155;
      }

      v13 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self dataSharingOptInStatus];
      if (v13 != [v5 dataSharingOptInStatus])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasViewInterface](self, "hasViewInterface") || [v5 hasViewInterface])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasViewInterface])
      {
        goto LABEL_155;
      }

      if (![v5 hasViewInterface])
      {
        goto LABEL_155;
      }

      v14 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self viewInterface];
      if (v14 != [v5 viewInterface])
      {
        goto LABEL_155;
      }
    }

    v15 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self audioInterfaceVendorId];
    v16 = [v5 audioInterfaceVendorId];
    v17 = v16;
    if (v15 == v16)
    {
    }

    else
    {
      v18 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self audioInterfaceVendorId];
      v19 = [v5 audioInterfaceVendorId];
      v20 = [v18 isEqual:v19];

      if (!v20)
      {
        goto LABEL_155;
      }
    }

    v21 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self audioInterfaceProductId];
    v22 = [v5 audioInterfaceProductId];
    v23 = v22;
    if (v21 == v22)
    {
    }

    else
    {
      v24 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self audioInterfaceProductId];
      v25 = [v5 audioInterfaceProductId];
      v26 = [v24 isEqual:v25];

      if (!v26)
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasAsrLocation](self, "hasAsrLocation") || [v5 hasAsrLocation])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasAsrLocation])
      {
        goto LABEL_155;
      }

      if (![v5 hasAsrLocation])
      {
        goto LABEL_155;
      }

      v27 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self asrLocation];
      if (v27 != [v5 asrLocation])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasNlLocation](self, "hasNlLocation") || [v5 hasNlLocation])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasNlLocation])
      {
        goto LABEL_155;
      }

      if (![v5 hasNlLocation])
      {
        goto LABEL_155;
      }

      v28 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self nlLocation];
      if (v28 != [v5 nlLocation])
      {
        goto LABEL_155;
      }
    }

    v29 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self siriInputLocale];
    v30 = [v5 siriInputLocale];
    v31 = v30;
    if (v29 == v30)
    {
    }

    else
    {
      v32 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self siriInputLocale];
      v33 = [v5 siriInputLocale];
      v34 = [v32 isEqual:v33];

      if (!v34)
      {
        goto LABEL_155;
      }
    }

    v35 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self subDomain];
    v36 = [v5 subDomain];
    v37 = v36;
    if (v35 == v36)
    {
    }

    else
    {
      v38 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self subDomain];
      v39 = [v5 subDomain];
      v40 = [v38 isEqual:v39];

      if (!v40)
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasResponseCategory](self, "hasResponseCategory") || [v5 hasResponseCategory])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasResponseCategory])
      {
        goto LABEL_155;
      }

      if (![v5 hasResponseCategory])
      {
        goto LABEL_155;
      }

      v41 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self responseCategory];
      if (v41 != [v5 responseCategory])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasExperimentAllocationStatus](self, "hasExperimentAllocationStatus") || [v5 hasExperimentAllocationStatus])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasExperimentAllocationStatus])
      {
        goto LABEL_155;
      }

      if (![v5 hasExperimentAllocationStatus])
      {
        goto LABEL_155;
      }

      v42 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self experimentAllocationStatus];
      if (v42 != [v5 experimentAllocationStatus])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasIsTriggered](self, "hasIsTriggered") || [v5 hasIsTriggered])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasIsTriggered])
      {
        goto LABEL_155;
      }

      if (![v5 hasIsTriggered])
      {
        goto LABEL_155;
      }

      v43 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self isTriggered];
      if (v43 != [v5 isTriggered])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasIsFirstTriggerOrAfterFirstTrigger](self, "hasIsFirstTriggerOrAfterFirstTrigger") || [v5 hasIsFirstTriggerOrAfterFirstTrigger])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasIsFirstTriggerOrAfterFirstTrigger])
      {
        goto LABEL_155;
      }

      if (![v5 hasIsFirstTriggerOrAfterFirstTrigger])
      {
        goto LABEL_155;
      }

      v44 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self isFirstTriggerOrAfterFirstTrigger];
      if (v44 != [v5 isFirstTriggerOrAfterFirstTrigger])
      {
        goto LABEL_155;
      }
    }

    v45 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self codePathIdUUID];
    v46 = [v5 codePathIdUUID];
    v47 = v46;
    if (v45 == v46)
    {
    }

    else
    {
      v48 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self codePathIdUUID];
      v49 = [v5 codePathIdUUID];
      v50 = [v48 isEqual:v49];

      if (!v50)
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasTotalTurnCount](self, "hasTotalTurnCount") || [v5 hasTotalTurnCount])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasTotalTurnCount])
      {
        goto LABEL_155;
      }

      if (![v5 hasTotalTurnCount])
      {
        goto LABEL_155;
      }

      v51 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self totalTurnCount];
      if (v51 != [v5 totalTurnCount])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasValidTurnCount](self, "hasValidTurnCount") || [v5 hasValidTurnCount])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasValidTurnCount])
      {
        goto LABEL_155;
      }

      if (![v5 hasValidTurnCount])
      {
        goto LABEL_155;
      }

      v52 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self validTurnCount];
      if (v52 != [v5 validTurnCount])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasSiriTasksStarted](self, "hasSiriTasksStarted") || [v5 hasSiriTasksStarted])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasSiriTasksStarted])
      {
        goto LABEL_155;
      }

      if (![v5 hasSiriTasksStarted])
      {
        goto LABEL_155;
      }

      v53 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self siriTasksStarted];
      if (v53 != [v5 siriTasksStarted])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasSiriTasksCompleted](self, "hasSiriTasksCompleted") || [v5 hasSiriTasksCompleted])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasSiriTasksCompleted])
      {
        goto LABEL_155;
      }

      if (![v5 hasSiriTasksCompleted])
      {
        goto LABEL_155;
      }

      v54 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self siriTasksCompleted];
      if (v54 != [v5 siriTasksCompleted])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasFlowTasksStarted](self, "hasFlowTasksStarted") || [v5 hasFlowTasksStarted])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasFlowTasksStarted])
      {
        goto LABEL_155;
      }

      if (![v5 hasFlowTasksStarted])
      {
        goto LABEL_155;
      }

      v55 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self flowTasksStarted];
      if (v55 != [v5 flowTasksStarted])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasFlowTasksCompleted](self, "hasFlowTasksCompleted") || [v5 hasFlowTasksCompleted])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasFlowTasksCompleted])
      {
        goto LABEL_155;
      }

      if (![v5 hasFlowTasksCompleted])
      {
        goto LABEL_155;
      }

      v56 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self flowTasksCompleted];
      if (v56 != [v5 flowTasksCompleted])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasReliabilityRequestCount](self, "hasReliabilityRequestCount") || [v5 hasReliabilityRequestCount])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasReliabilityRequestCount])
      {
        goto LABEL_155;
      }

      if (![v5 hasReliabilityRequestCount])
      {
        goto LABEL_155;
      }

      v57 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self reliabilityRequestCount];
      if (v57 != [v5 reliabilityRequestCount])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasReliabilityTurnCount](self, "hasReliabilityTurnCount") || [v5 hasReliabilityTurnCount])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasReliabilityTurnCount])
      {
        goto LABEL_155;
      }

      if (![v5 hasReliabilityTurnCount])
      {
        goto LABEL_155;
      }

      v58 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self reliabilityTurnCount];
      if (v58 != [v5 reliabilityTurnCount])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasClientErrorCount](self, "hasClientErrorCount") || [v5 hasClientErrorCount])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasClientErrorCount])
      {
        goto LABEL_155;
      }

      if (![v5 hasClientErrorCount])
      {
        goto LABEL_155;
      }

      v59 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self clientErrorCount];
      if (v59 != [v5 clientErrorCount])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasUndesiredResponseCount](self, "hasUndesiredResponseCount") || [v5 hasUndesiredResponseCount])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasUndesiredResponseCount])
      {
        goto LABEL_155;
      }

      if (![v5 hasUndesiredResponseCount])
      {
        goto LABEL_155;
      }

      v60 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self undesiredResponseCount];
      if (v60 != [v5 undesiredResponseCount])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasFatalResponseCount](self, "hasFatalResponseCount") || [v5 hasFatalResponseCount])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasFatalResponseCount])
      {
        goto LABEL_155;
      }

      if (![v5 hasFatalResponseCount])
      {
        goto LABEL_155;
      }

      v61 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self fatalResponseCount];
      if (v61 != [v5 fatalResponseCount])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasFailureResponseCount](self, "hasFailureResponseCount") || [v5 hasFailureResponseCount])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasFailureResponseCount])
      {
        goto LABEL_155;
      }

      if (![v5 hasFailureResponseCount])
      {
        goto LABEL_155;
      }

      v62 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self failureResponseCount];
      if (v62 != [v5 failureResponseCount])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasSiriUnavailableResponseCount](self, "hasSiriUnavailableResponseCount") || [v5 hasSiriUnavailableResponseCount])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasSiriUnavailableResponseCount])
      {
        goto LABEL_155;
      }

      if (![v5 hasSiriUnavailableResponseCount])
      {
        goto LABEL_155;
      }

      v63 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self siriUnavailableResponseCount];
      if (v63 != [v5 siriUnavailableResponseCount])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasUsdxSessionCount](self, "hasUsdxSessionCount") || [v5 hasUsdxSessionCount])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasUsdxSessionCount])
      {
        goto LABEL_155;
      }

      if (![v5 hasUsdxSessionCount])
      {
        goto LABEL_155;
      }

      v64 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self usdxSessionCount];
      if (v64 != [v5 usdxSessionCount])
      {
        goto LABEL_155;
      }
    }

    v65 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self tuples];
    v66 = [v5 tuples];
    v67 = v66;
    if (v65 == v66)
    {
    }

    else
    {
      v68 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self tuples];
      v69 = [v5 tuples];
      v70 = [v68 isEqual:v69];

      if (!v70)
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasIsIntelligenceEngineRequest](self, "hasIsIntelligenceEngineRequest") || [v5 hasIsIntelligenceEngineRequest])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasIsIntelligenceEngineRequest])
      {
        goto LABEL_155;
      }

      if (![v5 hasIsIntelligenceEngineRequest])
      {
        goto LABEL_155;
      }

      v71 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self isIntelligenceEngineRequest];
      if (v71 != [v5 isIntelligenceEngineRequest])
      {
        goto LABEL_155;
      }
    }

    v72 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self intelligenceEngineRouting];
    v73 = [v5 intelligenceEngineRouting];
    v74 = v73;
    if (v72 == v73)
    {
    }

    else
    {
      v75 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self intelligenceEngineRouting];
      v76 = [v5 intelligenceEngineRouting];
      v77 = [v75 isEqual:v76];

      if (!v77)
      {
        goto LABEL_155;
      }
    }

    if (!-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasInvocationSource](self, "hasInvocationSource") && ![v5 hasInvocationSource])
    {
      v12 = 1;
      goto LABEL_156;
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasInvocationSource](self, "hasInvocationSource") && [v5 hasInvocationSource])
    {
      v78 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self invocationSource];
      v12 = v78 == [v5 invocationSource];
LABEL_156:

      goto LABEL_157;
    }

LABEL_155:
    v12 = 0;
    goto LABEL_156;
  }

  v12 = 0;
LABEL_157:

  return v12;
}

- (id)jsonDictionary
{
  v106[32] = *MEMORY[0x1E69E9840];
  v80 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self systemBuild];
  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasDataSharingOptInStatus])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest dataSharingOptInStatus](self, "dataSharingOptInStatus")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasViewInterface])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest viewInterface](self, "viewInterface")}];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self audioInterfaceVendorId];
  v6 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self audioInterfaceProductId];
  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasAsrLocation])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest asrLocation](self, "asrLocation")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasNlLocation])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest nlLocation](self, "nlLocation")}];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self siriInputLocale];
  v104 = [v9 jsonDictionary];

  v103 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self subDomain];
  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasResponseCategory])
  {
    v102 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest responseCategory](self, "responseCategory")}];
  }

  else
  {
    v102 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasExperimentAllocationStatus])
  {
    v101 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest experimentAllocationStatus](self, "experimentAllocationStatus")}];
  }

  else
  {
    v101 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasIsTriggered])
  {
    v100 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest isTriggered](self, "isTriggered")}];
  }

  else
  {
    v100 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasIsFirstTriggerOrAfterFirstTrigger])
  {
    v99 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest isFirstTriggerOrAfterFirstTrigger](self, "isFirstTriggerOrAfterFirstTrigger")}];
  }

  else
  {
    v99 = 0;
  }

  v98 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self codePathIdUUID];
  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasTotalTurnCount])
  {
    v97 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest totalTurnCount](self, "totalTurnCount")}];
  }

  else
  {
    v97 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasValidTurnCount])
  {
    v96 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest validTurnCount](self, "validTurnCount")}];
  }

  else
  {
    v96 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasSiriTasksStarted])
  {
    v95 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest siriTasksStarted](self, "siriTasksStarted")}];
  }

  else
  {
    v95 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasSiriTasksCompleted])
  {
    v94 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest siriTasksCompleted](self, "siriTasksCompleted")}];
  }

  else
  {
    v94 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasFlowTasksStarted])
  {
    v93 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest flowTasksStarted](self, "flowTasksStarted")}];
  }

  else
  {
    v93 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasFlowTasksCompleted])
  {
    v92 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest flowTasksCompleted](self, "flowTasksCompleted")}];
  }

  else
  {
    v92 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasReliabilityRequestCount])
  {
    v91 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest reliabilityRequestCount](self, "reliabilityRequestCount")}];
  }

  else
  {
    v91 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasReliabilityTurnCount])
  {
    v90 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest reliabilityTurnCount](self, "reliabilityTurnCount")}];
  }

  else
  {
    v90 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasClientErrorCount])
  {
    v89 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest clientErrorCount](self, "clientErrorCount")}];
  }

  else
  {
    v89 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasUndesiredResponseCount])
  {
    v88 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest undesiredResponseCount](self, "undesiredResponseCount")}];
  }

  else
  {
    v88 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasFatalResponseCount])
  {
    v87 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest fatalResponseCount](self, "fatalResponseCount")}];
  }

  else
  {
    v87 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasFailureResponseCount])
  {
    v86 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest failureResponseCount](self, "failureResponseCount")}];
  }

  else
  {
    v86 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasSiriUnavailableResponseCount])
  {
    v85 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest siriUnavailableResponseCount](self, "siriUnavailableResponseCount")}];
  }

  else
  {
    v85 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasUsdxSessionCount])
  {
    v84 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest usdxSessionCount](self, "usdxSessionCount")}];
  }

  else
  {
    v84 = 0;
  }

  v10 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self tuples];
  v83 = [v10 jsonDictionary];

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasIsIntelligenceEngineRequest])
  {
    v82 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest isIntelligenceEngineRequest](self, "isIntelligenceEngineRequest")}];
  }

  else
  {
    v82 = 0;
  }

  v81 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self _intelligenceEngineRoutingJSONArray];
  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasInvocationSource])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest invocationSource](self, "invocationSource")}];
  }

  else
  {
    v11 = 0;
  }

  v105[0] = @"systemBuild";
  v12 = v80;
  if (!v80)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v72 = v12;
  v106[0] = v12;
  v105[1] = @"dataSharingOptInStatus";
  v13 = v3;
  if (!v3)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v71 = v13;
  v106[1] = v13;
  v105[2] = @"viewInterface";
  v14 = v4;
  if (!v4)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v70 = v14;
  v106[2] = v14;
  v105[3] = @"audioInterfaceVendorId";
  v15 = v5;
  if (!v5)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v69 = v15;
  v106[3] = v15;
  v105[4] = @"audioInterfaceProductId";
  v16 = v6;
  if (!v6)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v68 = v16;
  v106[4] = v16;
  v105[5] = @"asrLocation";
  v17 = v7;
  if (!v7)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v67 = v17;
  v106[5] = v17;
  v105[6] = @"nlLocation";
  v18 = v8;
  if (!v8)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v66 = v18;
  v106[6] = v18;
  v105[7] = @"siriInputLocale";
  v19 = v104;
  if (!v104)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v106[7] = v19;
  v105[8] = @"subDomain";
  v20 = v103;
  if (!v103)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v106[8] = v20;
  v105[9] = @"responseCategory";
  v21 = v102;
  if (!v102)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v63 = v21;
  v106[9] = v21;
  v105[10] = @"experimentAllocationStatus";
  v22 = v101;
  if (!v101)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v75 = v22;
  v106[10] = v22;
  v105[11] = @"isTriggered";
  v23 = v100;
  if (!v100)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v74 = v23;
  v106[11] = v23;
  v105[12] = @"isFirstTriggerOrAfterFirstTrigger";
  v24 = v99;
  if (!v99)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v24;
  v106[12] = v24;
  v105[13] = @"codePathIdUUID";
  v26 = v98;
  if (!v98)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v62 = v26;
  v106[13] = v26;
  v105[14] = @"totalTurnCount";
  v27 = v97;
  if (!v97)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v61 = v27;
  v106[14] = v27;
  v105[15] = @"validTurnCount";
  v28 = v96;
  if (!v96)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v60 = v28;
  v106[15] = v28;
  v105[16] = @"siriTasksStarted";
  v29 = v95;
  if (!v95)
  {
    v29 = [MEMORY[0x1E695DFB0] null];
  }

  v59 = v29;
  v106[16] = v29;
  v105[17] = @"siriTasksCompleted";
  v30 = v94;
  if (!v94)
  {
    v30 = [MEMORY[0x1E695DFB0] null];
  }

  v58 = v30;
  v106[17] = v30;
  v105[18] = @"flowTasksStarted";
  v31 = v93;
  if (!v93)
  {
    v31 = [MEMORY[0x1E695DFB0] null];
  }

  v57 = v31;
  v106[18] = v31;
  v105[19] = @"flowTasksCompleted";
  v32 = v92;
  if (!v92)
  {
    v32 = [MEMORY[0x1E695DFB0] null];
  }

  v56 = v32;
  v106[19] = v32;
  v105[20] = @"reliabilityRequestCount";
  v33 = v91;
  if (!v91)
  {
    v33 = [MEMORY[0x1E695DFB0] null];
  }

  v55 = v33;
  v106[20] = v33;
  v105[21] = @"reliabilityTurnCount";
  v34 = v90;
  if (!v90)
  {
    v34 = [MEMORY[0x1E695DFB0] null];
  }

  v54 = v34;
  v106[21] = v34;
  v105[22] = @"clientErrorCount";
  v35 = v89;
  if (!v89)
  {
    v35 = [MEMORY[0x1E695DFB0] null];
  }

  v77 = v6;
  v53 = v35;
  v106[22] = v35;
  v105[23] = @"undesiredResponseCount";
  v36 = v88;
  if (!v88)
  {
    v36 = [MEMORY[0x1E695DFB0] null];
  }

  v52 = v36;
  v106[23] = v36;
  v105[24] = @"fatalResponseCount";
  v37 = v87;
  if (!v87)
  {
    v37 = [MEMORY[0x1E695DFB0] null];
  }

  v78 = v5;
  v51 = v37;
  v106[24] = v37;
  v105[25] = @"failureResponseCount";
  v38 = v86;
  if (!v86)
  {
    v38 = [MEMORY[0x1E695DFB0] null];
  }

  v65 = v19;
  v79 = v4;
  v49 = v38;
  v106[25] = v38;
  v105[26] = @"siriUnavailableResponseCount";
  v39 = v85;
  if (!v85)
  {
    v39 = [MEMORY[0x1E695DFB0] null];
  }

  v76 = v3;
  v106[26] = v39;
  v105[27] = @"usdxSessionCount";
  v40 = v84;
  if (!v84)
  {
    v40 = [MEMORY[0x1E695DFB0] null];
  }

  v64 = v20;
  v106[27] = v40;
  v105[28] = @"tuples";
  v41 = v83;
  if (!v83)
  {
    v41 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = v8;
  v106[28] = v41;
  v105[29] = @"isIntelligenceEngineRequest";
  v43 = v82;
  if (!v82)
  {
    v43 = [MEMORY[0x1E695DFB0] null];
  }

  v106[29] = v43;
  v105[30] = @"intelligenceEngineRouting";
  v44 = v81;
  if (!v81)
  {
    v44 = [MEMORY[0x1E695DFB0] null];
  }

  v106[30] = v44;
  v105[31] = @"invocationSource";
  v45 = v11;
  if (!v11)
  {
    v45 = [MEMORY[0x1E695DFB0] null];
  }

  v106[31] = v45;
  v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:v105 count:{32, v49}];
  if (!v11)
  {
  }

  v46 = v25;
  if (!v81)
  {

    v46 = v25;
  }

  if (!v82)
  {

    v46 = v25;
  }

  if (!v83)
  {

    v46 = v25;
  }

  if (!v84)
  {

    v46 = v25;
  }

  if (!v85)
  {

    v46 = v25;
  }

  if (!v86)
  {

    v46 = v25;
  }

  if (!v87)
  {

    v46 = v25;
  }

  if (!v88)
  {

    v46 = v25;
  }

  if (!v89)
  {

    v46 = v25;
  }

  if (!v90)
  {

    v46 = v25;
  }

  if (!v91)
  {

    v46 = v25;
  }

  if (!v92)
  {

    v46 = v25;
  }

  if (!v93)
  {

    v46 = v25;
  }

  if (!v94)
  {

    v46 = v25;
  }

  if (!v95)
  {

    v46 = v25;
  }

  if (!v96)
  {

    v46 = v25;
  }

  if (!v97)
  {

    v46 = v25;
  }

  if (!v98)
  {

    v46 = v25;
  }

  if (!v99)
  {
  }

  if (!v100)
  {
  }

  if (!v101)
  {
  }

  if (!v102)
  {
  }

  if (!v103)
  {
  }

  if (v104)
  {
    if (v42)
    {
      goto LABEL_187;
    }
  }

  else
  {

    if (v42)
    {
LABEL_187:
      if (v7)
      {
        goto LABEL_188;
      }

      goto LABEL_198;
    }
  }

  if (v7)
  {
LABEL_188:
    if (v77)
    {
      goto LABEL_189;
    }

    goto LABEL_199;
  }

LABEL_198:

  if (v77)
  {
LABEL_189:
    if (v78)
    {
      goto LABEL_190;
    }

    goto LABEL_200;
  }

LABEL_199:

  if (v78)
  {
LABEL_190:
    if (v79)
    {
      goto LABEL_191;
    }

    goto LABEL_201;
  }

LABEL_200:

  if (v79)
  {
LABEL_191:
    if (v76)
    {
      goto LABEL_192;
    }

LABEL_202:

    if (v80)
    {
      goto LABEL_193;
    }

    goto LABEL_203;
  }

LABEL_201:

  if (!v76)
  {
    goto LABEL_202;
  }

LABEL_192:
  if (v80)
  {
    goto LABEL_193;
  }

LABEL_203:

LABEL_193:
  v47 = *MEMORY[0x1E69E9840];

  return v73;
}

- (id)_intelligenceEngineRoutingJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self intelligenceEngineRouting];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMSiriOnDeviceDigestExperimentMetricsExperimentDigest)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v569[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"systemBuild"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v493 = 0;
    goto LABEL_4;
  }

  v26 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v493 = v7;
LABEL_4:
    v494 = [v6 objectForKeyedSubscript:@"dataSharingOptInStatus"];
    if (!v494 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v491 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v491 = v494;
LABEL_7:
      v8 = [v6 objectForKeyedSubscript:@"viewInterface"];
      v492 = v8;
      if (!v8 || (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v489 = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v489 = v9;
LABEL_10:
        v10 = [v6 objectForKeyedSubscript:@"audioInterfaceVendorId"];
        v490 = v6;
        if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v486 = 0;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v486 = v10;
LABEL_13:
          v11 = [v6 objectForKeyedSubscript:@"audioInterfaceProductId"];
          v488 = v11;
          if (!v11 || (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v487 = 0;
            goto LABEL_16;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v487 = v12;
LABEL_16:
            v13 = [v6 objectForKeyedSubscript:@"asrLocation"];
            v485 = v13;
            if (!v13 || (v14 = v13, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v484 = 0;
              goto LABEL_19;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v484 = v14;
LABEL_19:
              v15 = [v6 objectForKeyedSubscript:@"nlLocation"];
              v483 = v15;
              if (!v15 || (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v482 = 0;
                goto LABEL_22;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v482 = v16;
LABEL_22:
                v17 = [v6 objectForKeyedSubscript:@"siriInputLocale"];
                if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v479 = v17;
                  v480 = 0;
                  goto LABEL_25;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v41 = v7;
                  v42 = self;
                  v43 = v17;
                  v500 = 0;
                  v44 = [[BMSiriOnDeviceDigestExperimentMetricsISOLocale alloc] initWithJSONDictionary:v43 error:&v500];
                  v45 = v500;
                  if (v45)
                  {
                    v39 = v486;
                    if (a4)
                    {
                      v45 = v45;
                      *a4 = v45;
                    }

                    v30 = 0;
                    a4 = v491;
                    v46 = v44;
                    self = v42;
                    v7 = v41;
                    goto LABEL_307;
                  }

                  v479 = v17;

                  v480 = v44;
                  self = v42;
                  v7 = v41;
LABEL_25:
                  v481 = [v6 objectForKeyedSubscript:@"subDomain"];
                  if (v481 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      if (!a4)
                      {
                        v18 = 0;
                        v30 = 0;
                        v39 = v486;
                        v43 = v479;
                        a4 = v491;
LABEL_306:

                        v46 = v480;
                        goto LABEL_307;
                      }

                      v126 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v127 = *MEMORY[0x1E698F240];
                      v552 = *MEMORY[0x1E696A578];
                      v128 = v7;
                      v129 = a4;
                      v130 = self;
                      v131 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v397 = objc_opt_class();
                      v132 = v131;
                      self = v130;
                      a4 = v491;
                      v133 = [v132 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v397, @"subDomain"];
                      v553 = v133;
                      v478 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v553 forKeys:&v552 count:1];
                      v134 = [v126 initWithDomain:v127 code:2 userInfo:?];
                      v18 = 0;
                      v30 = 0;
                      *v129 = v134;
                      v7 = v128;
                      v135 = v133;
                      v39 = v486;
                      v43 = v479;
                      goto LABEL_305;
                    }

                    v18 = v481;
                  }

                  else
                  {
                    v18 = 0;
                  }

                  v19 = [v6 objectForKeyedSubscript:@"responseCategory"];
                  v478 = v19;
                  if (!v19 || (v20 = v19, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v473 = 0;
                    goto LABEL_31;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v473 = v20;
LABEL_31:
                    v21 = [v6 objectForKeyedSubscript:@"experimentAllocationStatus"];
                    v476 = v21;
                    if (!v21 || (v22 = v21, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v474 = 0;
LABEL_34:
                      v23 = [v6 objectForKeyedSubscript:@"isTriggered"];
                      v472 = v23;
                      if (v23 && (v24 = v23, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                      {
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          if (!a4)
                          {
                            v470 = 0;
                            v30 = 0;
                            v39 = v486;
                            v43 = v479;
                            a4 = v491;
LABEL_302:
                            v135 = v473;
                            goto LABEL_303;
                          }

                          v155 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v471 = *MEMORY[0x1E698F240];
                          v546 = *MEMORY[0x1E696A578];
                          v156 = v18;
                          v157 = v7;
                          v158 = a4;
                          v159 = self;
                          v160 = objc_alloc(MEMORY[0x1E696AEC0]);
                          v400 = objc_opt_class();
                          v161 = v160;
                          self = v159;
                          a4 = v491;
                          v162 = v157;
                          v18 = v156;
                          v25 = [v161 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v400, @"isTriggered"];
                          v547 = v25;
                          v469 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v547 forKeys:&v546 count:1];
                          v163 = [v155 initWithDomain:v471 code:2 userInfo:?];
                          v470 = 0;
                          v30 = 0;
                          *v158 = v163;
                          v7 = v162;
                          v39 = v486;
                          v43 = v479;
                          goto LABEL_301;
                        }

                        v470 = v24;
                      }

                      else
                      {
                        v470 = 0;
                      }

                      v25 = [v6 objectForKeyedSubscript:@"isFirstTriggerOrAfterFirstTrigger"];
                      v469 = v25;
                      if (!v25)
                      {
                        v465 = v18;
                        goto LABEL_90;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v465 = v18;
                        v25 = 0;
                        goto LABEL_90;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v465 = v18;
                        v25 = v25;
LABEL_90:
                        v88 = [v6 objectForKeyedSubscript:@"codePathIdUUID"];
                        v466 = v88;
                        if (!v88 || (v89 = v88, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v468 = 0;
                          goto LABEL_93;
                        }

                        v451 = v25;
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v468 = v89;
LABEL_93:
                          v90 = [v6 objectForKeyedSubscript:@"totalTurnCount"];
                          v464 = v90;
                          if (!v90 || (v91 = v90, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v463 = 0;
                            goto LABEL_96;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v463 = v91;
LABEL_96:
                            v92 = [v6 objectForKeyedSubscript:@"validTurnCount"];
                            v462 = v92;
                            if (!v92 || (v93 = v92, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v461 = 0;
                              goto LABEL_99;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v461 = v93;
LABEL_99:
                              v94 = [v6 objectForKeyedSubscript:@"siriTasksStarted"];
                              v460 = v94;
                              if (!v94 || (v95 = v94, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v459 = 0;
                                goto LABEL_102;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v459 = v95;
LABEL_102:
                                v96 = [v6 objectForKeyedSubscript:@"siriTasksCompleted"];
                                v458 = v96;
                                if (!v96 || (v97 = v96, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v457 = 0;
                                  goto LABEL_105;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v457 = v97;
LABEL_105:
                                  v98 = [v6 objectForKeyedSubscript:@"flowTasksStarted"];
                                  v456 = v98;
                                  if (!v98 || (v99 = v98, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v455 = 0;
                                    goto LABEL_108;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v455 = v99;
LABEL_108:
                                    v100 = [v6 objectForKeyedSubscript:@"flowTasksCompleted"];
                                    v454 = v100;
                                    if (!v100 || (v101 = v100, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v453 = 0;
                                      goto LABEL_111;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v453 = v101;
LABEL_111:
                                      v102 = [v6 objectForKeyedSubscript:@"reliabilityRequestCount"];
                                      v449 = v102;
                                      if (!v102 || (v103 = v102, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v448 = 0;
                                        goto LABEL_114;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v448 = v103;
LABEL_114:
                                        v104 = [v6 objectForKeyedSubscript:@"reliabilityTurnCount"];
                                        v442 = v104;
                                        if (!v104 || (v105 = v104, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v441 = 0;
                                          goto LABEL_117;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v441 = v105;
LABEL_117:
                                          v106 = [v6 objectForKeyedSubscript:@"clientErrorCount"];
                                          v440 = v106;
                                          if (!v106 || (v107 = v106, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v439 = 0;
                                            goto LABEL_120;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v439 = v107;
LABEL_120:
                                            v108 = [v6 objectForKeyedSubscript:@"undesiredResponseCount"];
                                            v437 = v108;
                                            if (!v108 || (v109 = v108, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v436 = 0;
                                              goto LABEL_123;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v436 = v109;
LABEL_123:
                                              v110 = [v6 objectForKeyedSubscript:@"fatalResponseCount"];
                                              v435 = v110;
                                              if (!v110 || (v111 = v110, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                              {
                                                v438 = 0;
                                                goto LABEL_126;
                                              }

                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v438 = v111;
LABEL_126:
                                                v112 = [v6 objectForKeyedSubscript:@"failureResponseCount"];
                                                v433 = v112;
                                                if (!v112 || (v113 = v112, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                {
                                                  v434 = 0;
                                                  goto LABEL_129;
                                                }

                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v434 = v113;
LABEL_129:
                                                  v114 = [v6 objectForKeyedSubscript:@"siriUnavailableResponseCount"];
                                                  v431 = v114;
                                                  if (!v114 || (v115 = v114, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                  {
                                                    v432 = 0;
                                                    goto LABEL_132;
                                                  }

                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v432 = v115;
LABEL_132:
                                                    v116 = [v6 objectForKeyedSubscript:@"usdxSessionCount"];
                                                    v429 = v116;
                                                    if (!v116 || (v117 = v116, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                    {
                                                      v430 = 0;
                                                      goto LABEL_135;
                                                    }

                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      v430 = v117;
LABEL_135:
                                                      v118 = [v6 objectForKeyedSubscript:@"tuples"];
                                                      if (!v118 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                      {
                                                        v420 = v118;
                                                        v428 = 0;
                                                        goto LABEL_138;
                                                      }

                                                      v427 = v10;
                                                      v444 = v7;
                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        v292 = v118;
                                                        v293 = [BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples alloc];
                                                        v499 = 0;
                                                        v294 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)v293 initWithJSONDictionary:v292 error:&v499];
                                                        v295 = v499;
                                                        v428 = v294;
                                                        if (v295)
                                                        {
                                                          v43 = v479;
                                                          if (a4)
                                                          {
                                                            v295 = v295;
                                                            *a4 = v295;
                                                          }

                                                          v30 = 0;
                                                          v296 = v292;
                                                          v7 = v444;
                                                          v39 = v486;
                                                          a4 = v491;
                                                          v124 = v438;
                                                          goto LABEL_283;
                                                        }

                                                        v420 = v118;

                                                        v7 = v444;
                                                        v6 = v490;
LABEL_138:
                                                        v119 = [v6 objectForKeyedSubscript:@"isIntelligenceEngineRequest"];
                                                        v423 = v119;
                                                        if (v119 && (v120 = v119, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                        {
                                                          objc_opt_class();
                                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                                          {
                                                            if (a4)
                                                            {
                                                              v368 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                              v369 = *MEMORY[0x1E698F240];
                                                              v510 = *MEMORY[0x1E696A578];
                                                              v370 = v10;
                                                              v371 = v25;
                                                              v372 = v7;
                                                              v373 = a4;
                                                              v374 = self;
                                                              v375 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                              v418 = objc_opt_class();
                                                              v376 = v375;
                                                              self = v374;
                                                              v124 = v438;
                                                              a4 = v491;
                                                              v377 = v372;
                                                              v25 = v371;
                                                              v10 = v370;
                                                              v424 = [v376 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v418, @"isIntelligenceEngineRequest"];
                                                              v511 = v424;
                                                              v422 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v511 forKeys:&v510 count:1];
                                                              v378 = [v368 initWithDomain:v369 code:2 userInfo:?];
                                                              v425 = 0;
                                                              v30 = 0;
                                                              *v373 = v378;
                                                              v7 = v377;
                                                              v39 = v486;
                                                              v43 = v479;
                                                              v296 = v420;

                                                              goto LABEL_281;
                                                            }

                                                            v425 = 0;
                                                            v30 = 0;
                                                            v39 = v486;
                                                            v43 = v479;
                                                            a4 = v491;
                                                            v296 = v420;
                                                            v124 = v438;
                                                            goto LABEL_282;
                                                          }

                                                          v425 = v120;
                                                        }

                                                        else
                                                        {
                                                          v425 = 0;
                                                        }

                                                        v121 = [v6 objectForKeyedSubscript:@"intelligenceEngineRouting"];
                                                        v122 = [MEMORY[0x1E695DFB0] null];
                                                        v123 = [v121 isEqual:v122];

                                                        v124 = v438;
                                                        if (v123)
                                                        {
                                                          v450 = v25;
                                                          v426 = v10;
                                                          v125 = self;

                                                          v121 = 0;
                                                        }

                                                        else if (v121)
                                                        {
                                                          objc_opt_class();
                                                          v424 = v121;
                                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                                          {
                                                            if (!a4)
                                                            {
                                                              v30 = 0;
                                                              v39 = v486;
                                                              v43 = v479;
                                                              a4 = v491;
                                                              v296 = v420;
                                                              goto LABEL_281;
                                                            }

                                                            v379 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v380 = *MEMORY[0x1E698F240];
                                                            v508 = *MEMORY[0x1E696A578];
                                                            v421 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"intelligenceEngineRouting"];
                                                            v509 = v421;
                                                            v367 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v509 forKeys:&v508 count:1];
                                                            v381 = [v379 initWithDomain:v380 code:2 userInfo:v367];
                                                            v30 = 0;
                                                            *a4 = v381;
                                                            v39 = v486;
                                                            v43 = v479;
                                                            a4 = v491;
                                                            goto LABEL_272;
                                                          }

                                                          v450 = v25;
                                                          v426 = v10;
                                                          v125 = self;
                                                        }

                                                        else
                                                        {
                                                          v450 = v25;
                                                          v426 = v10;
                                                          v125 = self;
                                                        }

                                                        v349 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v121, "count")}];
                                                        v495 = 0u;
                                                        v496 = 0u;
                                                        v497 = 0u;
                                                        v498 = 0u;
                                                        v350 = v121;
                                                        v351 = v349;
                                                        v352 = v350;
                                                        v353 = [v350 countByEnumeratingWithState:&v495 objects:v507 count:16];
                                                        v424 = v352;
                                                        v421 = v349;
                                                        if (!v353)
                                                        {
                                                          goto LABEL_258;
                                                        }

                                                        v354 = v353;
                                                        v446 = *v496;
LABEL_251:
                                                        v355 = 0;
                                                        while (1)
                                                        {
                                                          if (*v496 != v446)
                                                          {
                                                            objc_enumerationMutation(v352);
                                                          }

                                                          v356 = *(*(&v495 + 1) + 8 * v355);
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
                                                              v365 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                              v366 = *MEMORY[0x1E698F240];
                                                              v503 = *MEMORY[0x1E696A578];
                                                              v447 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"intelligenceEngineRouting"];
                                                              v504 = v447;
                                                              v362 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v504 forKeys:&v503 count:1];
                                                              v363 = v365;
                                                              v364 = v366;
                                                              goto LABEL_265;
                                                            }

                                                            goto LABEL_266;
                                                          }

                                                          v357 = v356;
                                                          [v351 addObject:v357];

                                                          if (v354 == ++v355)
                                                          {
                                                            v354 = [v352 countByEnumeratingWithState:&v495 objects:v507 count:16];
                                                            if (v354)
                                                            {
                                                              goto LABEL_251;
                                                            }

LABEL_258:

                                                            v358 = [v490 objectForKeyedSubscript:@"invocationSource"];
                                                            v447 = v358;
                                                            if (v358)
                                                            {
                                                              v359 = v358;
                                                              objc_opt_class();
                                                              self = v125;
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                v358 = 0;
                                                                goto LABEL_276;
                                                              }

                                                              objc_opt_class();
                                                              v10 = v426;
                                                              v39 = v486;
                                                              v25 = v450;
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                v358 = v359;
                                                                v382 = v465;
                                                                v383 = v473;
                                                                v384 = v474;
                                                                v385 = v470;
                                                                goto LABEL_277;
                                                              }

                                                              v296 = v420;
                                                              if (a4)
                                                              {
                                                                v388 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                v389 = *MEMORY[0x1E698F240];
                                                                v501 = *MEMORY[0x1E696A578];
                                                                v419 = self;
                                                                v390 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"invocationSource"];
                                                                v502 = v390;
                                                                v391 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v502 forKeys:&v501 count:1];
                                                                v392 = v389;
                                                                v39 = v486;
                                                                *a4 = [v388 initWithDomain:v392 code:2 userInfo:v391];

                                                                self = v419;
                                                                v10 = v426;
                                                              }

                                                              v367 = 0;
                                                              v30 = 0;
                                                              v43 = v479;
                                                              a4 = v491;
                                                            }

                                                            else
                                                            {
                                                              self = v125;
LABEL_276:
                                                              v10 = v426;
                                                              v39 = v486;
                                                              v382 = v465;
                                                              v383 = v473;
                                                              v384 = v474;
                                                              v385 = v470;
                                                              v25 = v450;
LABEL_277:
                                                              v296 = v420;
                                                              v367 = v358;
                                                              v470 = v385;
                                                              v474 = v384;
                                                              v473 = v383;
                                                              v465 = v382;
                                                              a4 = v491;
                                                              self = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self initWithSystemBuild:v493 dataSharingOptInStatus:v491 viewInterface:v489 audioInterfaceVendorId:v39 audioInterfaceProductId:v487 asrLocation:v484 nlLocation:v482 siriInputLocale:v480 subDomain:v382 responseCategory:v383 experimentAllocationStatus:v384 isTriggered:v385 isFirstTriggerOrAfterFirstTrigger:v25 codePathIdUUID:v468 totalTurnCount:v463 validTurnCount:v461 siriTasksStarted:v459 siriTasksCompleted:v457 flowTasksStarted:v455 flowTasksCompleted:v453 reliabilityRequestCount:v448 reliabilityTurnCount:v441 clientErrorCount:v439 undesiredResponseCount:v436 fatalResponseCount:v438 failureResponseCount:v434 siriUnavailableResponseCount:v432 usdxSessionCount:v430 tuples:v428 isIntelligenceEngineRequest:v425 intelligenceEngineRouting:v421 invocationSource:v358];
                                                              v30 = self;
                                                              v43 = v479;
                                                            }

LABEL_278:

LABEL_279:
                                                            v124 = v438;

LABEL_281:
LABEL_282:

LABEL_283:
                                                            v339 = v428;
LABEL_284:

                                                            goto LABEL_285;
                                                          }
                                                        }

                                                        if (a4)
                                                        {
                                                          v360 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v361 = *MEMORY[0x1E698F240];
                                                          v505 = *MEMORY[0x1E696A578];
                                                          v447 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"intelligenceEngineRouting"];
                                                          v506 = v447;
                                                          v362 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v506 forKeys:&v505 count:1];
                                                          v363 = v360;
                                                          v364 = v361;
LABEL_265:
                                                          self = v125;
                                                          *a4 = [v363 initWithDomain:v364 code:2 userInfo:v362];

                                                          v30 = 0;
                                                          v367 = v352;
                                                          v10 = v426;
                                                          v39 = v486;
                                                          v43 = v479;
                                                          a4 = v491;
                                                          v25 = v450;
                                                          v296 = v420;
                                                          goto LABEL_278;
                                                        }

LABEL_266:
                                                        v30 = 0;
                                                        v367 = v352;
                                                        self = v125;
                                                        v10 = v426;
                                                        v39 = v486;
                                                        v43 = v479;
                                                        a4 = v491;
                                                        v25 = v450;
LABEL_272:
                                                        v296 = v420;
                                                        goto LABEL_279;
                                                      }

                                                      v296 = v118;
                                                      if (a4)
                                                      {
                                                        v340 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v341 = *MEMORY[0x1E698F240];
                                                        v512 = *MEMORY[0x1E696A578];
                                                        v342 = a4;
                                                        v343 = self;
                                                        v344 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                        v345 = v296;
                                                        v417 = objc_opt_class();
                                                        v346 = v344;
                                                        self = v343;
                                                        a4 = v491;
                                                        v347 = [v346 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v417, @"tuples"];
                                                        v513 = v347;
                                                        v348 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v513 forKeys:&v512 count:1];
                                                        *v342 = [v340 initWithDomain:v341 code:2 userInfo:v348];

                                                        v339 = v347;
                                                        v30 = 0;
                                                        v296 = v345;
                                                        v7 = v444;
                                                        v10 = v427;
                                                        v39 = v486;
                                                        v43 = v479;
                                                        v124 = v438;
                                                        goto LABEL_284;
                                                      }

                                                      v30 = 0;
                                                      v39 = v486;
                                                      v43 = v479;
                                                      a4 = v491;
                                                      v124 = v438;
LABEL_285:

                                                      v6 = v490;
                                                      goto LABEL_286;
                                                    }

                                                    if (a4)
                                                    {
                                                      v330 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                      v445 = *MEMORY[0x1E698F240];
                                                      v514 = *MEMORY[0x1E696A578];
                                                      v452 = v25;
                                                      v331 = v7;
                                                      v332 = a4;
                                                      v333 = self;
                                                      v334 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                      v416 = objc_opt_class();
                                                      v335 = v334;
                                                      self = v333;
                                                      v124 = v438;
                                                      a4 = v491;
                                                      v336 = v331;
                                                      v25 = v452;
                                                      v296 = [v335 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v416, @"usdxSessionCount"];
                                                      v515 = v296;
                                                      v337 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v515 forKeys:&v514 count:1];
                                                      v338 = [v330 initWithDomain:v445 code:2 userInfo:v337];
                                                      v430 = 0;
                                                      v30 = 0;
                                                      *v332 = v338;
                                                      v339 = v337;
                                                      v7 = v336;
                                                      v39 = v486;
                                                      v43 = v479;
                                                      goto LABEL_284;
                                                    }

                                                    v430 = 0;
                                                    v30 = 0;
                                                    v39 = v486;
                                                    v43 = v479;
                                                    a4 = v491;
                                                    v124 = v438;
LABEL_286:

                                                    goto LABEL_287;
                                                  }

                                                  if (a4)
                                                  {
                                                    v319 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v320 = *MEMORY[0x1E698F240];
                                                    v516 = *MEMORY[0x1E696A578];
                                                    v321 = v10;
                                                    v322 = v25;
                                                    v323 = v7;
                                                    v324 = a4;
                                                    v325 = self;
                                                    v326 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                    v415 = objc_opt_class();
                                                    v327 = v326;
                                                    self = v325;
                                                    v124 = v438;
                                                    a4 = v491;
                                                    v328 = v323;
                                                    v25 = v322;
                                                    v10 = v321;
                                                    v6 = v490;
                                                    v430 = [v327 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v415, @"siriUnavailableResponseCount"];
                                                    v517 = v430;
                                                    v429 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v517 forKeys:&v516 count:1];
                                                    v329 = [v319 initWithDomain:v320 code:2 userInfo:?];
                                                    v432 = 0;
                                                    v30 = 0;
                                                    *v324 = v329;
                                                    v7 = v328;
                                                    v39 = v486;
                                                    v43 = v479;
                                                    goto LABEL_286;
                                                  }

                                                  v432 = 0;
                                                  v30 = 0;
                                                  v39 = v486;
                                                  v43 = v479;
                                                  a4 = v491;
                                                  v124 = v438;
LABEL_287:

                                                  goto LABEL_288;
                                                }

                                                if (a4)
                                                {
                                                  v308 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v309 = *MEMORY[0x1E698F240];
                                                  v518 = *MEMORY[0x1E696A578];
                                                  v310 = v10;
                                                  v311 = v25;
                                                  v312 = v7;
                                                  v313 = a4;
                                                  v314 = self;
                                                  v315 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                  v414 = objc_opt_class();
                                                  v316 = v315;
                                                  self = v314;
                                                  v124 = v438;
                                                  a4 = v491;
                                                  v317 = v312;
                                                  v25 = v311;
                                                  v10 = v310;
                                                  v6 = v490;
                                                  v432 = [v316 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v414, @"failureResponseCount"];
                                                  v519 = v432;
                                                  v431 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v519 forKeys:&v518 count:1];
                                                  v318 = [v308 initWithDomain:v309 code:2 userInfo:?];
                                                  v434 = 0;
                                                  v30 = 0;
                                                  *v313 = v318;
                                                  v7 = v317;
                                                  v39 = v486;
                                                  v43 = v479;
                                                  goto LABEL_287;
                                                }

                                                v434 = 0;
                                                v30 = 0;
                                                v39 = v486;
                                                v43 = v479;
                                                a4 = v491;
                                                v124 = v438;
LABEL_288:

                                                goto LABEL_289;
                                              }

                                              if (a4)
                                              {
                                                v297 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v298 = *MEMORY[0x1E698F240];
                                                v520 = *MEMORY[0x1E696A578];
                                                v299 = v10;
                                                v300 = v25;
                                                v301 = v7;
                                                v302 = a4;
                                                v303 = self;
                                                v304 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                v413 = objc_opt_class();
                                                v305 = v304;
                                                self = v303;
                                                a4 = v491;
                                                v306 = v301;
                                                v25 = v300;
                                                v10 = v299;
                                                v6 = v490;
                                                v434 = [v305 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v413, @"fatalResponseCount"];
                                                v521 = v434;
                                                v433 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v521 forKeys:&v520 count:1];
                                                v307 = [v297 initWithDomain:v298 code:2 userInfo:?];
                                                v124 = 0;
                                                v30 = 0;
                                                *v302 = v307;
                                                v7 = v306;
                                                v39 = v486;
                                                v43 = v479;
                                                goto LABEL_288;
                                              }

                                              v124 = 0;
                                              v30 = 0;
                                              v39 = v486;
                                              v43 = v479;
                                              a4 = v491;
LABEL_289:

                                              goto LABEL_290;
                                            }

                                            if (a4)
                                            {
                                              v281 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v282 = *MEMORY[0x1E698F240];
                                              v522 = *MEMORY[0x1E696A578];
                                              v283 = v10;
                                              v284 = v25;
                                              v285 = v7;
                                              v286 = a4;
                                              v287 = self;
                                              v288 = objc_alloc(MEMORY[0x1E696AEC0]);
                                              v412 = objc_opt_class();
                                              v289 = v288;
                                              self = v287;
                                              a4 = v491;
                                              v290 = v285;
                                              v25 = v284;
                                              v10 = v283;
                                              v6 = v490;
                                              v124 = [v289 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v412, @"undesiredResponseCount"];
                                              v523 = v124;
                                              v435 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v523 forKeys:&v522 count:1];
                                              v291 = [v281 initWithDomain:v282 code:2 userInfo:?];
                                              v436 = 0;
                                              v30 = 0;
                                              *v286 = v291;
                                              v7 = v290;
                                              v39 = v486;
                                              v43 = v479;
                                              goto LABEL_289;
                                            }

                                            v436 = 0;
                                            v30 = 0;
                                            v39 = v486;
                                            v43 = v479;
                                            a4 = v491;
LABEL_290:

                                            goto LABEL_291;
                                          }

                                          if (a4)
                                          {
                                            v270 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v271 = *MEMORY[0x1E698F240];
                                            v524 = *MEMORY[0x1E696A578];
                                            v272 = v10;
                                            v273 = v25;
                                            v274 = v7;
                                            v275 = a4;
                                            v276 = self;
                                            v277 = objc_alloc(MEMORY[0x1E696AEC0]);
                                            v411 = objc_opt_class();
                                            v278 = v277;
                                            self = v276;
                                            a4 = v491;
                                            v279 = v274;
                                            v25 = v273;
                                            v10 = v272;
                                            v6 = v490;
                                            v436 = [v278 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v411, @"clientErrorCount"];
                                            v525 = v436;
                                            v437 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v525 forKeys:&v524 count:1];
                                            v280 = [v270 initWithDomain:v271 code:2 userInfo:?];
                                            v439 = 0;
                                            v30 = 0;
                                            *v275 = v280;
                                            v7 = v279;
                                            v39 = v486;
                                            v43 = v479;
                                            goto LABEL_290;
                                          }

                                          v439 = 0;
                                          v30 = 0;
                                          v39 = v486;
                                          v43 = v479;
                                          a4 = v491;
LABEL_291:

                                          goto LABEL_292;
                                        }

                                        if (a4)
                                        {
                                          v259 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v260 = *MEMORY[0x1E698F240];
                                          v526 = *MEMORY[0x1E696A578];
                                          v261 = v10;
                                          v262 = v25;
                                          v263 = v7;
                                          v264 = a4;
                                          v265 = self;
                                          v266 = objc_alloc(MEMORY[0x1E696AEC0]);
                                          v410 = objc_opt_class();
                                          v267 = v266;
                                          self = v265;
                                          a4 = v491;
                                          v268 = v263;
                                          v25 = v262;
                                          v10 = v261;
                                          v6 = v490;
                                          v439 = [v267 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v410, @"reliabilityTurnCount"];
                                          v527 = v439;
                                          v440 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v527 forKeys:&v526 count:1];
                                          v269 = [v259 initWithDomain:v260 code:2 userInfo:?];
                                          v441 = 0;
                                          v30 = 0;
                                          *v264 = v269;
                                          v7 = v268;
                                          v39 = v486;
                                          v43 = v479;
                                          goto LABEL_291;
                                        }

                                        v441 = 0;
                                        v30 = 0;
                                        v39 = v486;
                                        v43 = v479;
                                        a4 = v491;
LABEL_292:

                                        goto LABEL_293;
                                      }

                                      if (a4)
                                      {
                                        v248 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v249 = *MEMORY[0x1E698F240];
                                        v528 = *MEMORY[0x1E696A578];
                                        v250 = v10;
                                        v251 = v25;
                                        v252 = v7;
                                        v253 = a4;
                                        v254 = self;
                                        v255 = objc_alloc(MEMORY[0x1E696AEC0]);
                                        v409 = objc_opt_class();
                                        v256 = v255;
                                        self = v254;
                                        a4 = v491;
                                        v257 = v252;
                                        v25 = v251;
                                        v10 = v250;
                                        v6 = v490;
                                        v441 = [v256 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v409, @"reliabilityRequestCount"];
                                        v529 = v441;
                                        v442 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v529 forKeys:&v528 count:1];
                                        v258 = [v248 initWithDomain:v249 code:2 userInfo:?];
                                        v448 = 0;
                                        v30 = 0;
                                        *v253 = v258;
                                        v7 = v257;
                                        v39 = v486;
                                        v43 = v479;
                                        goto LABEL_292;
                                      }

                                      v448 = 0;
                                      v30 = 0;
                                      v39 = v486;
                                      v43 = v479;
                                      a4 = v491;
LABEL_293:

                                      goto LABEL_294;
                                    }

                                    if (a4)
                                    {
                                      v237 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v238 = *MEMORY[0x1E698F240];
                                      v530 = *MEMORY[0x1E696A578];
                                      v239 = v10;
                                      v240 = v25;
                                      v241 = v7;
                                      v242 = a4;
                                      v243 = self;
                                      v244 = objc_alloc(MEMORY[0x1E696AEC0]);
                                      v408 = objc_opt_class();
                                      v245 = v244;
                                      self = v243;
                                      a4 = v491;
                                      v246 = v241;
                                      v25 = v240;
                                      v10 = v239;
                                      v6 = v490;
                                      v448 = [v245 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v408, @"flowTasksCompleted"];
                                      v531 = v448;
                                      v449 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v531 forKeys:&v530 count:1];
                                      v247 = [v237 initWithDomain:v238 code:2 userInfo:?];
                                      v453 = 0;
                                      v30 = 0;
                                      *v242 = v247;
                                      v7 = v246;
                                      v39 = v486;
                                      v43 = v479;
                                      goto LABEL_293;
                                    }

                                    v453 = 0;
                                    v30 = 0;
                                    v39 = v486;
                                    v43 = v479;
                                    a4 = v491;
LABEL_294:

                                    goto LABEL_295;
                                  }

                                  if (a4)
                                  {
                                    v226 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v227 = *MEMORY[0x1E698F240];
                                    v532 = *MEMORY[0x1E696A578];
                                    v228 = v10;
                                    v229 = v25;
                                    v230 = v7;
                                    v231 = a4;
                                    v232 = self;
                                    v233 = objc_alloc(MEMORY[0x1E696AEC0]);
                                    v407 = objc_opt_class();
                                    v234 = v233;
                                    self = v232;
                                    a4 = v491;
                                    v235 = v230;
                                    v25 = v229;
                                    v10 = v228;
                                    v6 = v490;
                                    v453 = [v234 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v407, @"flowTasksStarted"];
                                    v533 = v453;
                                    v454 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v533 forKeys:&v532 count:1];
                                    v236 = [v226 initWithDomain:v227 code:2 userInfo:?];
                                    v455 = 0;
                                    v30 = 0;
                                    *v231 = v236;
                                    v7 = v235;
                                    v39 = v486;
                                    v43 = v479;
                                    goto LABEL_294;
                                  }

                                  v455 = 0;
                                  v30 = 0;
                                  v39 = v486;
                                  v43 = v479;
                                  a4 = v491;
LABEL_295:

                                  goto LABEL_296;
                                }

                                if (a4)
                                {
                                  v215 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v216 = *MEMORY[0x1E698F240];
                                  v534 = *MEMORY[0x1E696A578];
                                  v217 = v10;
                                  v218 = v25;
                                  v219 = v7;
                                  v220 = a4;
                                  v221 = self;
                                  v222 = objc_alloc(MEMORY[0x1E696AEC0]);
                                  v406 = objc_opt_class();
                                  v223 = v222;
                                  self = v221;
                                  a4 = v491;
                                  v224 = v219;
                                  v25 = v218;
                                  v10 = v217;
                                  v6 = v490;
                                  v455 = [v223 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v406, @"siriTasksCompleted"];
                                  v535 = v455;
                                  v456 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v535 forKeys:&v534 count:1];
                                  v225 = [v215 initWithDomain:v216 code:2 userInfo:?];
                                  v457 = 0;
                                  v30 = 0;
                                  *v220 = v225;
                                  v7 = v224;
                                  v39 = v486;
                                  v43 = v479;
                                  goto LABEL_295;
                                }

                                v457 = 0;
                                v30 = 0;
                                v39 = v486;
                                v43 = v479;
                                a4 = v491;
LABEL_296:

                                goto LABEL_297;
                              }

                              if (a4)
                              {
                                v204 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v205 = *MEMORY[0x1E698F240];
                                v536 = *MEMORY[0x1E696A578];
                                v206 = v10;
                                v207 = v25;
                                v208 = v7;
                                v209 = a4;
                                v210 = self;
                                v211 = objc_alloc(MEMORY[0x1E696AEC0]);
                                v405 = objc_opt_class();
                                v212 = v211;
                                self = v210;
                                a4 = v491;
                                v213 = v208;
                                v25 = v207;
                                v10 = v206;
                                v6 = v490;
                                v457 = [v212 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v405, @"siriTasksStarted"];
                                v537 = v457;
                                v458 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v537 forKeys:&v536 count:1];
                                v214 = [v204 initWithDomain:v205 code:2 userInfo:?];
                                v459 = 0;
                                v30 = 0;
                                *v209 = v214;
                                v7 = v213;
                                v39 = v486;
                                v43 = v479;
                                goto LABEL_296;
                              }

                              v459 = 0;
                              v30 = 0;
                              v39 = v486;
                              v43 = v479;
                              a4 = v491;
LABEL_297:

                              goto LABEL_298;
                            }

                            if (a4)
                            {
                              v193 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v194 = *MEMORY[0x1E698F240];
                              v538 = *MEMORY[0x1E696A578];
                              v195 = v10;
                              v196 = v25;
                              v197 = v7;
                              v198 = a4;
                              v199 = self;
                              v200 = objc_alloc(MEMORY[0x1E696AEC0]);
                              v404 = objc_opt_class();
                              v201 = v200;
                              self = v199;
                              a4 = v491;
                              v202 = v197;
                              v25 = v196;
                              v10 = v195;
                              v6 = v490;
                              v459 = [v201 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v404, @"validTurnCount"];
                              v539 = v459;
                              v460 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v539 forKeys:&v538 count:1];
                              v203 = [v193 initWithDomain:v194 code:2 userInfo:?];
                              v461 = 0;
                              v30 = 0;
                              *v198 = v203;
                              v7 = v202;
                              v39 = v486;
                              v43 = v479;
                              goto LABEL_297;
                            }

                            v461 = 0;
                            v30 = 0;
                            v39 = v486;
                            v43 = v479;
                            a4 = v491;
LABEL_298:

                            goto LABEL_299;
                          }

                          if (a4)
                          {
                            v182 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v183 = *MEMORY[0x1E698F240];
                            v540 = *MEMORY[0x1E696A578];
                            v184 = v10;
                            v185 = v25;
                            v186 = v7;
                            v187 = a4;
                            v188 = self;
                            v189 = objc_alloc(MEMORY[0x1E696AEC0]);
                            v403 = objc_opt_class();
                            v190 = v189;
                            self = v188;
                            a4 = v491;
                            v191 = v186;
                            v25 = v185;
                            v10 = v184;
                            v6 = v490;
                            v461 = [v190 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v403, @"totalTurnCount"];
                            v541 = v461;
                            v462 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v541 forKeys:&v540 count:1];
                            v192 = [v182 initWithDomain:v183 code:2 userInfo:?];
                            v463 = 0;
                            v30 = 0;
                            *v187 = v192;
                            v7 = v191;
                            v39 = v486;
                            v43 = v479;
                            goto LABEL_298;
                          }

                          v463 = 0;
                          v30 = 0;
                          v39 = v486;
                          v43 = v479;
                          a4 = v491;
LABEL_299:

                          v18 = v465;
                          goto LABEL_300;
                        }

                        if (a4)
                        {
                          v174 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v175 = *MEMORY[0x1E698F240];
                          v542 = *MEMORY[0x1E696A578];
                          v176 = v7;
                          v177 = a4;
                          v178 = self;
                          v179 = objc_alloc(MEMORY[0x1E696AEC0]);
                          v402 = objc_opt_class();
                          v180 = v179;
                          self = v178;
                          a4 = v491;
                          v463 = [v180 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v402, @"codePathIdUUID"];
                          v543 = v463;
                          v464 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v543 forKeys:&v542 count:1];
                          v181 = [v174 initWithDomain:v175 code:2 userInfo:?];
                          v468 = 0;
                          v30 = 0;
                          *v177 = v181;
                          v7 = v176;
                          v39 = v486;
                          v43 = v479;
                          v25 = v451;
                          goto LABEL_299;
                        }

                        v468 = 0;
                        v30 = 0;
                        v39 = v486;
                        v43 = v479;
                        a4 = v491;
                        v18 = v465;
LABEL_300:

                        goto LABEL_301;
                      }

                      if (a4)
                      {
                        v164 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v467 = *MEMORY[0x1E698F240];
                        v544 = *MEMORY[0x1E696A578];
                        v165 = v18;
                        v166 = v7;
                        v167 = a4;
                        v168 = self;
                        v169 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v401 = objc_opt_class();
                        v170 = v169;
                        self = v168;
                        a4 = v491;
                        v171 = v166;
                        v18 = v165;
                        v468 = [v170 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v401, @"isFirstTriggerOrAfterFirstTrigger"];
                        v545 = v468;
                        v172 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v545 forKeys:&v544 count:1];
                        v173 = v467;
                        v466 = v172;
                        v25 = 0;
                        v30 = 0;
                        *v167 = [v164 initWithDomain:v173 code:2 userInfo:?];
                        v7 = v171;
                        v39 = v486;
                        v43 = v479;
                        goto LABEL_300;
                      }

                      v25 = 0;
                      v30 = 0;
                      v39 = v486;
                      v43 = v479;
                      a4 = v491;
LABEL_301:

                      goto LABEL_302;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v474 = v22;
                      goto LABEL_34;
                    }

                    if (a4)
                    {
                      v475 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v146 = *MEMORY[0x1E698F240];
                      v548 = *MEMORY[0x1E696A578];
                      v147 = v18;
                      v148 = v7;
                      v149 = a4;
                      v150 = self;
                      v151 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v399 = objc_opt_class();
                      v152 = v151;
                      self = v150;
                      a4 = v491;
                      v153 = v148;
                      v135 = v473;
                      v18 = v147;
                      v470 = [v152 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v399, @"experimentAllocationStatus"];
                      v549 = v470;
                      v472 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v549 forKeys:&v548 count:1];
                      v154 = [v475 initWithDomain:v146 code:2 userInfo:?];
                      v474 = 0;
                      v30 = 0;
                      *v149 = v154;
                      v7 = v153;
                      v39 = v486;
                      v43 = v479;
LABEL_303:

                      goto LABEL_304;
                    }

                    v474 = 0;
                    v30 = 0;
                    v39 = v486;
                    v43 = v479;
                    a4 = v491;
                    v135 = v473;
LABEL_304:

                    goto LABEL_305;
                  }

                  if (a4)
                  {
                    v477 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v136 = *MEMORY[0x1E698F240];
                    v550 = *MEMORY[0x1E696A578];
                    v137 = v18;
                    v138 = v7;
                    v139 = a4;
                    v140 = self;
                    v141 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v398 = objc_opt_class();
                    v142 = v141;
                    self = v140;
                    a4 = v491;
                    v143 = v138;
                    v18 = v137;
                    v474 = [v142 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v398, @"responseCategory"];
                    v551 = v474;
                    v144 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v551 forKeys:&v550 count:1];
                    v145 = v477;
                    v476 = v144;
                    v135 = 0;
                    v30 = 0;
                    *v139 = [v145 initWithDomain:v136 code:2 userInfo:?];
                    v7 = v143;
                    v39 = v486;
                    v43 = v479;
                    goto LABEL_304;
                  }

                  v135 = 0;
                  v30 = 0;
                  v39 = v486;
                  v43 = v479;
                  a4 = v491;
LABEL_305:

                  goto LABEL_306;
                }

                if (!a4)
                {
                  v30 = 0;
                  a4 = v491;
                  v39 = v486;
                  v43 = v17;
LABEL_308:

                  v33 = v489;
                  goto LABEL_309;
                }

                v81 = objc_alloc(MEMORY[0x1E696ABC0]);
                v443 = v7;
                v82 = a4;
                v83 = self;
                v84 = *MEMORY[0x1E698F240];
                v554 = *MEMORY[0x1E696A578];
                v85 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"siriInputLocale"];
                v555 = v85;
                v86 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v555 forKeys:&v554 count:1];
                v87 = v84;
                self = v83;
                *v82 = [v81 initWithDomain:v87 code:2 userInfo:v86];
                v7 = v443;

                v30 = 0;
                v43 = v17;
                v46 = v85;
                a4 = v491;
LABEL_83:
                v39 = v486;
LABEL_307:

                goto LABEL_308;
              }

              if (a4)
              {
                v71 = objc_alloc(MEMORY[0x1E696ABC0]);
                v72 = *MEMORY[0x1E698F240];
                v556 = *MEMORY[0x1E696A578];
                v73 = v7;
                v74 = a4;
                v75 = self;
                v76 = objc_alloc(MEMORY[0x1E696AEC0]);
                v396 = objc_opt_class();
                v77 = v76;
                self = v75;
                v78 = v73;
                v43 = [v77 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v396, @"nlLocation"];
                v557 = v43;
                v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v557 forKeys:&v556 count:1];
                v80 = [v71 initWithDomain:v72 code:2 userInfo:v79];
                v482 = 0;
                v30 = 0;
                *v74 = v80;
                v46 = v79;
                v7 = v78;
                a4 = v491;
                goto LABEL_83;
              }

              v482 = 0;
              v30 = 0;
              v33 = v489;
              v39 = v486;
              a4 = v491;
LABEL_309:

              goto LABEL_310;
            }

            if (a4)
            {
              v63 = objc_alloc(MEMORY[0x1E696ABC0]);
              v64 = *MEMORY[0x1E698F240];
              v558 = *MEMORY[0x1E696A578];
              v65 = v7;
              v66 = a4;
              v67 = self;
              v68 = objc_alloc(MEMORY[0x1E696AEC0]);
              v395 = objc_opt_class();
              v69 = v68;
              self = v67;
              a4 = v491;
              v482 = [v69 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v395, @"asrLocation"];
              v559 = v482;
              v483 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v559 forKeys:&v558 count:1];
              v70 = [v63 initWithDomain:v64 code:2 userInfo:?];
              v484 = 0;
              v30 = 0;
              *v66 = v70;
              v7 = v65;
              v33 = v489;
              v39 = v486;
              goto LABEL_309;
            }

            v484 = 0;
            v30 = 0;
            v33 = v489;
            v39 = v486;
            a4 = v491;
LABEL_310:

            goto LABEL_311;
          }

          if (a4)
          {
            v55 = objc_alloc(MEMORY[0x1E696ABC0]);
            v56 = *MEMORY[0x1E698F240];
            v560 = *MEMORY[0x1E696A578];
            v57 = v7;
            v58 = a4;
            v59 = self;
            v60 = objc_alloc(MEMORY[0x1E696AEC0]);
            v394 = objc_opt_class();
            v61 = v60;
            self = v59;
            a4 = v491;
            v484 = [v61 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v394, @"audioInterfaceProductId"];
            v561 = v484;
            v485 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v561 forKeys:&v560 count:1];
            v62 = [v55 initWithDomain:v56 code:2 userInfo:?];
            v487 = 0;
            v30 = 0;
            *v58 = v62;
            v7 = v57;
            v33 = v489;
            v39 = v486;
            goto LABEL_310;
          }

          v487 = 0;
          v30 = 0;
          v33 = v489;
          v39 = v486;
          a4 = v491;
LABEL_311:

          goto LABEL_312;
        }

        if (a4)
        {
          v47 = objc_alloc(MEMORY[0x1E696ABC0]);
          v48 = *MEMORY[0x1E698F240];
          v562 = *MEMORY[0x1E696A578];
          v49 = v7;
          v50 = a4;
          v51 = self;
          v52 = objc_alloc(MEMORY[0x1E696AEC0]);
          v393 = objc_opt_class();
          v53 = v52;
          self = v51;
          a4 = v491;
          v487 = [v53 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v393, @"audioInterfaceVendorId"];
          v563 = v487;
          v488 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v563 forKeys:&v562 count:1];
          v54 = [v47 initWithDomain:v48 code:2 userInfo:?];
          v39 = 0;
          v30 = 0;
          *v50 = v54;
          v7 = v49;
          v33 = v489;
          v6 = v490;
          goto LABEL_311;
        }

        v39 = 0;
        v30 = 0;
        v33 = v489;
LABEL_146:
        a4 = v491;
LABEL_312:

        goto LABEL_313;
      }

      if (a4)
      {
        v35 = objc_alloc(MEMORY[0x1E696ABC0]);
        v36 = *MEMORY[0x1E698F240];
        v564 = *MEMORY[0x1E696A578];
        v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"viewInterface"];
        v565 = v37;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v565 forKeys:&v564 count:1];
        v38 = v36;
        v39 = v37;
        v40 = [v35 initWithDomain:v38 code:2 userInfo:v10];
        v33 = 0;
        v30 = 0;
        *a4 = v40;
        goto LABEL_146;
      }

      v33 = 0;
      v30 = 0;
      a4 = v491;
LABEL_313:

      goto LABEL_314;
    }

    if (a4)
    {
      v31 = objc_alloc(MEMORY[0x1E696ABC0]);
      v32 = *MEMORY[0x1E698F240];
      v566 = *MEMORY[0x1E696A578];
      v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"dataSharingOptInStatus"];
      v567 = v33;
      v492 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v567 forKeys:&v566 count:1];
      v34 = [v31 initWithDomain:v32 code:2 userInfo:?];
      v30 = 0;
      *a4 = v34;
      a4 = 0;
      goto LABEL_313;
    }

    v30 = 0;
LABEL_314:

    goto LABEL_315;
  }

  if (a4)
  {
    v27 = objc_alloc(MEMORY[0x1E696ABC0]);
    v28 = *MEMORY[0x1E698F240];
    v568 = *MEMORY[0x1E696A578];
    a4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"systemBuild"];
    v569[0] = a4;
    v494 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v569 forKeys:&v568 count:1];
    v29 = [v27 initWithDomain:v28 code:2 userInfo:?];
    v493 = 0;
    v30 = 0;
    *v26 = v29;
    goto LABEL_314;
  }

  v493 = 0;
  v30 = 0;
LABEL_315:

  v386 = *MEMORY[0x1E69E9840];
  return v30;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_systemBuild)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasDataSharingOptInStatus)
  {
    dataSharingOptInStatus = self->_dataSharingOptInStatus;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasViewInterface)
  {
    viewInterface = self->_viewInterface;
    PBDataWriterWriteInt32Field();
  }

  if (self->_audioInterfaceVendorId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_audioInterfaceProductId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasAsrLocation)
  {
    asrLocation = self->_asrLocation;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasNlLocation)
  {
    nlLocation = self->_nlLocation;
    PBDataWriterWriteInt32Field();
  }

  if (self->_siriInputLocale)
  {
    v39 = 0;
    PBDataWriterPlaceMark();
    [(BMSiriOnDeviceDigestExperimentMetricsISOLocale *)self->_siriInputLocale writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_subDomain)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasResponseCategory)
  {
    responseCategory = self->_responseCategory;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasExperimentAllocationStatus)
  {
    experimentAllocationStatus = self->_experimentAllocationStatus;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasIsTriggered)
  {
    isTriggered = self->_isTriggered;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsFirstTriggerOrAfterFirstTrigger)
  {
    isFirstTriggerOrAfterFirstTrigger = self->_isFirstTriggerOrAfterFirstTrigger;
    PBDataWriterWriteBOOLField();
  }

  if (self->_codePathIdUUID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasTotalTurnCount)
  {
    totalTurnCount = self->_totalTurnCount;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasValidTurnCount)
  {
    validTurnCount = self->_validTurnCount;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasSiriTasksStarted)
  {
    siriTasksStarted = self->_siriTasksStarted;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasSiriTasksCompleted)
  {
    siriTasksCompleted = self->_siriTasksCompleted;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasFlowTasksStarted)
  {
    flowTasksStarted = self->_flowTasksStarted;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasFlowTasksCompleted)
  {
    flowTasksCompleted = self->_flowTasksCompleted;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasReliabilityRequestCount)
  {
    reliabilityRequestCount = self->_reliabilityRequestCount;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasReliabilityTurnCount)
  {
    reliabilityTurnCount = self->_reliabilityTurnCount;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasClientErrorCount)
  {
    clientErrorCount = self->_clientErrorCount;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasUndesiredResponseCount)
  {
    undesiredResponseCount = self->_undesiredResponseCount;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasFatalResponseCount)
  {
    fatalResponseCount = self->_fatalResponseCount;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasFailureResponseCount)
  {
    failureResponseCount = self->_failureResponseCount;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasSiriUnavailableResponseCount)
  {
    siriUnavailableResponseCount = self->_siriUnavailableResponseCount;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasUsdxSessionCount)
  {
    usdxSessionCount = self->_usdxSessionCount;
    PBDataWriterWriteUint32Field();
  }

  if (self->_tuples)
  {
    v39 = 0;
    PBDataWriterPlaceMark();
    [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self->_tuples writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_hasIsIntelligenceEngineRequest)
  {
    isIntelligenceEngineRequest = self->_isIntelligenceEngineRequest;
    PBDataWriterWriteBOOLField();
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v28 = self->_intelligenceEngineRouting;
  v29 = [(NSArray *)v28 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v36;
    do
    {
      v32 = 0;
      do
      {
        if (*v36 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [*(*(&v35 + 1) + 8 * v32) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v32;
      }

      while (v30 != v32);
      v30 = [(NSArray *)v28 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v30);
  }

  if (self->_hasInvocationSource)
  {
    invocationSource = self->_invocationSource;
    PBDataWriterWriteUint32Field();
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v186.receiver = self;
  v186.super_class = BMSiriOnDeviceDigestExperimentMetricsExperimentDigest;
  v5 = [(BMEventBase *)&v186 init];
  if (!v5)
  {
LABEL_358:
    v184 = v5;
    goto LABEL_359;
  }

  v6 = objc_opt_new();
  while (2)
  {
    v7 = [v4 position];
    if (v7 >= [v4 length] || (objc_msgSend(v4, "hasError") & 1) != 0)
    {
      goto LABEL_356;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      LOBYTE(v187) = 0;
      v11 = [v4 position] + 1;
      if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
      {
        v13 = [v4 data];
        [v13 getBytes:&v187 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
      }

      v10 |= (v187 & 0x7F) << v8;
      if ((v187 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      v14 = v9++ >= 9;
      if (v14)
      {
        v15 = 0;
        goto LABEL_17;
      }
    }

    v15 = [v4 hasError] ? 0 : v10;
LABEL_17:
    if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
    {
LABEL_356:
      v181 = [v6 copy];
      intelligenceEngineRouting = v5->_intelligenceEngineRouting;
      v5->_intelligenceEngineRouting = v181;

      v183 = [v4 hasError];
      if (v183)
      {
        goto LABEL_357;
      }

      goto LABEL_358;
    }

    switch((v15 >> 3))
    {
      case 1u:
        v16 = PBReaderReadString();
        v17 = 136;
        goto LABEL_199;
      case 2u:
        v83 = 0;
        v84 = 0;
        v85 = 0;
        v5->_hasDataSharingOptInStatus = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v86 = [v4 position] + 1;
          if (v86 >= [v4 position] && (v87 = objc_msgSend(v4, "position") + 1, v87 <= objc_msgSend(v4, "length")))
          {
            v88 = [v4 data];
            [v88 getBytes:&v187 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v85 |= (v187 & 0x7F) << v83;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v83 += 7;
          v14 = v84++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_299;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v85;
        }

LABEL_299:
        v178 = 48;
        goto LABEL_355;
      case 3u:
        v69 = 0;
        v70 = 0;
        v71 = 0;
        v5->_hasViewInterface = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v72 = [v4 position] + 1;
          if (v72 >= [v4 position] && (v73 = objc_msgSend(v4, "position") + 1, v73 <= objc_msgSend(v4, "length")))
          {
            v74 = [v4 data];
            [v74 getBytes:&v187 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v71 |= (v187 & 0x7F) << v69;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v69 += 7;
          v14 = v70++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_291;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v71;
        }

LABEL_291:
        v178 = 52;
        goto LABEL_355;
      case 4u:
        v16 = PBReaderReadString();
        v17 = 144;
        goto LABEL_199;
      case 5u:
        v16 = PBReaderReadString();
        v17 = 152;
        goto LABEL_199;
      case 6u:
        v107 = 0;
        v108 = 0;
        v109 = 0;
        v5->_hasAsrLocation = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v110 = [v4 position] + 1;
          if (v110 >= [v4 position] && (v111 = objc_msgSend(v4, "position") + 1, v111 <= objc_msgSend(v4, "length")))
          {
            v112 = [v4 data];
            [v112 getBytes:&v187 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v109 |= (v187 & 0x7F) << v107;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v107 += 7;
          v14 = v108++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_315;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v109;
        }

LABEL_315:
        v178 = 56;
        goto LABEL_355;
      case 7u:
        v119 = 0;
        v120 = 0;
        v121 = 0;
        v5->_hasNlLocation = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v122 = [v4 position] + 1;
          if (v122 >= [v4 position] && (v123 = objc_msgSend(v4, "position") + 1, v123 <= objc_msgSend(v4, "length")))
          {
            v124 = [v4 data];
            [v124 getBytes:&v187 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v121 |= (v187 & 0x7F) << v119;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v119 += 7;
          v14 = v120++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_323;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v121;
        }

LABEL_323:
        v178 = 60;
        goto LABEL_355;
      case 8u:
        v187 = 0;
        v188 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_360;
        }

        v81 = [[BMSiriOnDeviceDigestExperimentMetricsISOLocale alloc] initByReadFrom:v4];
        if (!v81)
        {
          goto LABEL_360;
        }

        v82 = 160;
        goto LABEL_241;
      case 9u:
        v16 = PBReaderReadString();
        v17 = 168;
        goto LABEL_199;
      case 0xAu:
        v51 = 0;
        v52 = 0;
        v53 = 0;
        v5->_hasResponseCategory = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v54 = [v4 position] + 1;
          if (v54 >= [v4 position] && (v55 = objc_msgSend(v4, "position") + 1, v55 <= objc_msgSend(v4, "length")))
          {
            v56 = [v4 data];
            [v56 getBytes:&v187 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v53 |= (v187 & 0x7F) << v51;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v14 = v52++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_279;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v53;
        }

LABEL_279:
        v178 = 64;
        goto LABEL_355;
      case 0xBu:
        v131 = 0;
        v132 = 0;
        v133 = 0;
        v5->_hasExperimentAllocationStatus = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v134 = [v4 position] + 1;
          if (v134 >= [v4 position] && (v135 = objc_msgSend(v4, "position") + 1, v135 <= objc_msgSend(v4, "length")))
          {
            v136 = [v4 data];
            [v136 getBytes:&v187 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v133 |= (v187 & 0x7F) << v131;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v131 += 7;
          v14 = v132++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_331;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v133;
        }

LABEL_331:
        v178 = 68;
        goto LABEL_355;
      case 0xCu:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v5->_hasIsTriggered = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v40 = [v4 position] + 1;
          if (v40 >= [v4 position] && (v41 = objc_msgSend(v4, "position") + 1, v41 <= objc_msgSend(v4, "length")))
          {
            v42 = [v4 data];
            [v42 getBytes:&v187 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v39 |= (v187 & 0x7F) << v37;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v14 = v38++ >= 9;
          if (v14)
          {
            LOBYTE(v43) = 0;
            goto LABEL_273;
          }
        }

        v43 = (v39 != 0) & ~[v4 hasError];
LABEL_273:
        v5->_isTriggered = v43;
        continue;
      case 0xDu:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v5->_hasIsFirstTriggerOrAfterFirstTrigger = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v47 = [v4 position] + 1;
          if (v47 >= [v4 position] && (v48 = objc_msgSend(v4, "position") + 1, v48 <= objc_msgSend(v4, "length")))
          {
            v49 = [v4 data];
            [v49 getBytes:&v187 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v46 |= (v187 & 0x7F) << v44;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v14 = v45++ >= 9;
          if (v14)
          {
            LOBYTE(v50) = 0;
            goto LABEL_275;
          }
        }

        v50 = (v46 != 0) & ~[v4 hasError];
LABEL_275:
        v5->_isFirstTriggerOrAfterFirstTrigger = v50;
        continue;
      case 0xEu:
        v16 = PBReaderReadString();
        v17 = 176;
LABEL_199:
        v137 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;

        continue;
      case 0xFu:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v5->_hasTotalTurnCount = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v34 = [v4 position] + 1;
          if (v34 >= [v4 position] && (v35 = objc_msgSend(v4, "position") + 1, v35 <= objc_msgSend(v4, "length")))
          {
            v36 = [v4 data];
            [v36 getBytes:&v187 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v33 |= (v187 & 0x7F) << v31;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v14 = v32++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_271;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v33;
        }

LABEL_271:
        v178 = 72;
        goto LABEL_355;
      case 0x10u:
        v75 = 0;
        v76 = 0;
        v77 = 0;
        v5->_hasValidTurnCount = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v78 = [v4 position] + 1;
          if (v78 >= [v4 position] && (v79 = objc_msgSend(v4, "position") + 1, v79 <= objc_msgSend(v4, "length")))
          {
            v80 = [v4 data];
            [v80 getBytes:&v187 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v77 |= (v187 & 0x7F) << v75;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v75 += 7;
          v14 = v76++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_295;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v77;
        }

LABEL_295:
        v178 = 76;
        goto LABEL_355;
      case 0x11u:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v5->_hasSiriTasksStarted = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v28 = [v4 position] + 1;
          if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
          {
            v30 = [v4 data];
            [v30 getBytes:&v187 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v27 |= (v187 & 0x7F) << v25;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v14 = v26++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_267;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v27;
        }

LABEL_267:
        v178 = 80;
        goto LABEL_355;
      case 0x12u:
        v95 = 0;
        v96 = 0;
        v97 = 0;
        v5->_hasSiriTasksCompleted = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v98 = [v4 position] + 1;
          if (v98 >= [v4 position] && (v99 = objc_msgSend(v4, "position") + 1, v99 <= objc_msgSend(v4, "length")))
          {
            v100 = [v4 data];
            [v100 getBytes:&v187 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v97 |= (v187 & 0x7F) << v95;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v95 += 7;
          v14 = v96++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_307;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v97;
        }

LABEL_307:
        v178 = 84;
        goto LABEL_355;
      case 0x13u:
        v125 = 0;
        v126 = 0;
        v127 = 0;
        v5->_hasFlowTasksStarted = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v128 = [v4 position] + 1;
          if (v128 >= [v4 position] && (v129 = objc_msgSend(v4, "position") + 1, v129 <= objc_msgSend(v4, "length")))
          {
            v130 = [v4 data];
            [v130 getBytes:&v187 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v127 |= (v187 & 0x7F) << v125;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v125 += 7;
          v14 = v126++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_327;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v127;
        }

LABEL_327:
        v178 = 88;
        goto LABEL_355;
      case 0x14u:
        v152 = 0;
        v153 = 0;
        v154 = 0;
        v5->_hasFlowTasksCompleted = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v155 = [v4 position] + 1;
          if (v155 >= [v4 position] && (v156 = objc_msgSend(v4, "position") + 1, v156 <= objc_msgSend(v4, "length")))
          {
            v157 = [v4 data];
            [v157 getBytes:&v187 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v154 |= (v187 & 0x7F) << v152;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v152 += 7;
          v14 = v153++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_344;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v154;
        }

LABEL_344:
        v178 = 92;
        goto LABEL_355;
      case 0x15u:
        v101 = 0;
        v102 = 0;
        v103 = 0;
        v5->_hasReliabilityRequestCount = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v104 = [v4 position] + 1;
          if (v104 >= [v4 position] && (v105 = objc_msgSend(v4, "position") + 1, v105 <= objc_msgSend(v4, "length")))
          {
            v106 = [v4 data];
            [v106 getBytes:&v187 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v103 |= (v187 & 0x7F) << v101;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v101 += 7;
          v14 = v102++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_311;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v103;
        }

LABEL_311:
        v178 = 96;
        goto LABEL_355;
      case 0x16u:
        v113 = 0;
        v114 = 0;
        v115 = 0;
        v5->_hasReliabilityTurnCount = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v116 = [v4 position] + 1;
          if (v116 >= [v4 position] && (v117 = objc_msgSend(v4, "position") + 1, v117 <= objc_msgSend(v4, "length")))
          {
            v118 = [v4 data];
            [v118 getBytes:&v187 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v115 |= (v187 & 0x7F) << v113;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v113 += 7;
          v14 = v114++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_319;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v115;
        }

LABEL_319:
        v178 = 100;
        goto LABEL_355;
      case 0x17u:
        v146 = 0;
        v147 = 0;
        v148 = 0;
        v5->_hasClientErrorCount = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v149 = [v4 position] + 1;
          if (v149 >= [v4 position] && (v150 = objc_msgSend(v4, "position") + 1, v150 <= objc_msgSend(v4, "length")))
          {
            v151 = [v4 data];
            [v151 getBytes:&v187 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v148 |= (v187 & 0x7F) << v146;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v146 += 7;
          v14 = v147++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_340;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v148;
        }

LABEL_340:
        v178 = 104;
        goto LABEL_355;
      case 0x18u:
        v158 = 0;
        v159 = 0;
        v160 = 0;
        v5->_hasUndesiredResponseCount = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v161 = [v4 position] + 1;
          if (v161 >= [v4 position] && (v162 = objc_msgSend(v4, "position") + 1, v162 <= objc_msgSend(v4, "length")))
          {
            v163 = [v4 data];
            [v163 getBytes:&v187 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v160 |= (v187 & 0x7F) << v158;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v158 += 7;
          v14 = v159++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_348;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v160;
        }

LABEL_348:
        v178 = 108;
        goto LABEL_355;
      case 0x19u:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        v5->_hasFatalResponseCount = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v66 = [v4 position] + 1;
          if (v66 >= [v4 position] && (v67 = objc_msgSend(v4, "position") + 1, v67 <= objc_msgSend(v4, "length")))
          {
            v68 = [v4 data];
            [v68 getBytes:&v187 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v65 |= (v187 & 0x7F) << v63;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v14 = v64++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_287;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v65;
        }

LABEL_287:
        v178 = 112;
        goto LABEL_355;
      case 0x1Au:
        v57 = 0;
        v58 = 0;
        v59 = 0;
        v5->_hasFailureResponseCount = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v60 = [v4 position] + 1;
          if (v60 >= [v4 position] && (v61 = objc_msgSend(v4, "position") + 1, v61 <= objc_msgSend(v4, "length")))
          {
            v62 = [v4 data];
            [v62 getBytes:&v187 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v59 |= (v187 & 0x7F) << v57;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v57 += 7;
          v14 = v58++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_283;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v59;
        }

LABEL_283:
        v178 = 116;
        goto LABEL_355;
      case 0x1Bu:
        v172 = 0;
        v173 = 0;
        v174 = 0;
        v5->_hasSiriUnavailableResponseCount = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v175 = [v4 position] + 1;
          if (v175 >= [v4 position] && (v176 = objc_msgSend(v4, "position") + 1, v176 <= objc_msgSend(v4, "length")))
          {
            v177 = [v4 data];
            [v177 getBytes:&v187 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v174 |= (v187 & 0x7F) << v172;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v172 += 7;
          v14 = v173++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_354;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v174;
        }

LABEL_354:
        v178 = 120;
        goto LABEL_355;
      case 0x1Cu:
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v5->_hasUsdxSessionCount = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v21 = [v4 position] + 1;
          if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
          {
            v23 = [v4 data];
            [v23 getBytes:&v187 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v20 |= (v187 & 0x7F) << v18;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v14 = v19++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_263;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v20;
        }

LABEL_263:
        v178 = 124;
        goto LABEL_355;
      case 0x1Du:
        v187 = 0;
        v188 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_360;
        }

        v81 = [[BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples alloc] initByReadFrom:v4];
        if (!v81)
        {
          goto LABEL_360;
        }

        v82 = 184;
LABEL_241:
        v164 = *(&v5->super.super.isa + v82);
        *(&v5->super.super.isa + v82) = v81;

        PBReaderRecallMark();
        continue;
      case 0x1Eu:
        v165 = 0;
        v166 = 0;
        v167 = 0;
        v5->_hasIsIntelligenceEngineRequest = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v168 = [v4 position] + 1;
          if (v168 >= [v4 position] && (v169 = objc_msgSend(v4, "position") + 1, v169 <= objc_msgSend(v4, "length")))
          {
            v170 = [v4 data];
            [v170 getBytes:&v187 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v167 |= (v187 & 0x7F) << v165;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v165 += 7;
          v14 = v166++ >= 9;
          if (v14)
          {
            LOBYTE(v171) = 0;
            goto LABEL_350;
          }
        }

        v171 = (v167 != 0) & ~[v4 hasError];
LABEL_350:
        v5->_isIntelligenceEngineRequest = v171;
        continue;
      case 0x1Fu:
        v138 = 0;
        v139 = 0;
        v140 = 0;
        v141 = MEMORY[0x1E696AD98];
        while (1)
        {
          LOBYTE(v187) = 0;
          v142 = [v4 position] + 1;
          if (v142 >= [v4 position] && (v143 = objc_msgSend(v4, "position") + 1, v143 <= objc_msgSend(v4, "length")))
          {
            v144 = [v4 data];
            [v144 getBytes:&v187 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v140 |= (v187 & 0x7F) << v138;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v138 += 7;
          v14 = v139++ >= 9;
          if (v14)
          {
            v145 = 0;
            goto LABEL_335;
          }
        }

        if ([v4 hasError])
        {
          v145 = 0;
        }

        else
        {
          v145 = v140;
        }

LABEL_335:
        v179 = [v141 numberWithUnsignedInt:v145];
        if (v179)
        {
          v180 = v179;
          [v6 addObject:v179];

          continue;
        }

LABEL_360:

LABEL_357:
        v184 = 0;
LABEL_359:

        return v184;
      case 0x20u:
        v89 = 0;
        v90 = 0;
        v91 = 0;
        v5->_hasInvocationSource = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v92 = [v4 position] + 1;
          if (v92 >= [v4 position] && (v93 = objc_msgSend(v4, "position") + 1, v93 <= objc_msgSend(v4, "length")))
          {
            v94 = [v4 data];
            [v94 getBytes:&v187 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v91 |= (v187 & 0x7F) << v89;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v89 += 7;
          v14 = v90++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_303;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v91;
        }

LABEL_303:
        v178 = 128;
LABEL_355:
        *(&v5->super.super.isa + v178) = v24;
        continue;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

        goto LABEL_360;
    }
  }
}

- (NSString)description
{
  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  v37 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self systemBuild];
  v35 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest dataSharingOptInStatus](self, "dataSharingOptInStatus")}];
  v36 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest viewInterface](self, "viewInterface")}];
  v33 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self audioInterfaceVendorId];
  v34 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self audioInterfaceProductId];
  v32 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest asrLocation](self, "asrLocation")}];
  v30 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest nlLocation](self, "nlLocation")}];
  v31 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self siriInputLocale];
  v28 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self subDomain];
  v29 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest responseCategory](self, "responseCategory")}];
  v27 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest experimentAllocationStatus](self, "experimentAllocationStatus")}];
  v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest isTriggered](self, "isTriggered")}];
  v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest isFirstTriggerOrAfterFirstTrigger](self, "isFirstTriggerOrAfterFirstTrigger")}];
  v16 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self codePathIdUUID];
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest totalTurnCount](self, "totalTurnCount")}];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest validTurnCount](self, "validTurnCount")}];
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest siriTasksStarted](self, "siriTasksStarted")}];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest siriTasksCompleted](self, "siriTasksCompleted")}];
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest flowTasksStarted](self, "flowTasksStarted")}];
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest flowTasksCompleted](self, "flowTasksCompleted")}];
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest reliabilityRequestCount](self, "reliabilityRequestCount")}];
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest reliabilityTurnCount](self, "reliabilityTurnCount")}];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest clientErrorCount](self, "clientErrorCount")}];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest undesiredResponseCount](self, "undesiredResponseCount")}];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest fatalResponseCount](self, "fatalResponseCount")}];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest failureResponseCount](self, "failureResponseCount")}];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest siriUnavailableResponseCount](self, "siriUnavailableResponseCount")}];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest usdxSessionCount](self, "usdxSessionCount")}];
  v5 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self tuples];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest isIntelligenceEngineRequest](self, "isIntelligenceEngineRequest")}];
  v7 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self intelligenceEngineRouting];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest invocationSource](self, "invocationSource")}];
  v18 = [v17 initWithFormat:@"BMSiriOnDeviceDigestExperimentMetricsExperimentDigest with systemBuild: %@, dataSharingOptInStatus: %@, viewInterface: %@, audioInterfaceVendorId: %@, audioInterfaceProductId: %@, asrLocation: %@, nlLocation: %@, siriInputLocale: %@, subDomain: %@, responseCategory: %@, experimentAllocationStatus: %@, isTriggered: %@, isFirstTriggerOrAfterFirstTrigger: %@, codePathIdUUID: %@, totalTurnCount: %@, validTurnCount: %@, siriTasksStarted: %@, siriTasksCompleted: %@, flowTasksStarted: %@, flowTasksCompleted: %@, reliabilityRequestCount: %@, reliabilityTurnCount: %@, clientErrorCount: %@, undesiredResponseCount: %@, fatalResponseCount: %@, failureResponseCount: %@, siriUnavailableResponseCount: %@, usdxSessionCount: %@, tuples: %@, isIntelligenceEngineRequest: %@, intelligenceEngineRouting: %@, invocationSource: %@", v37, v35, v36, v33, v34, v32, v30, v31, v28, v29, v27, v25, v26, v16, v24, v15, v23, v14, v22, v21, v20, v19, v13, v12, v11, v10, v3, v4, v5, v6, v7, v8];

  return v18;
}

- (BMSiriOnDeviceDigestExperimentMetricsExperimentDigest)initWithSystemBuild:(id)a3 dataSharingOptInStatus:(id)a4 viewInterface:(id)a5 audioInterfaceVendorId:(id)a6 audioInterfaceProductId:(id)a7 asrLocation:(id)a8 nlLocation:(id)a9 siriInputLocale:(id)a10 subDomain:(id)a11 responseCategory:(id)a12 experimentAllocationStatus:(id)a13 isTriggered:(id)a14 isFirstTriggerOrAfterFirstTrigger:(id)a15 codePathIdUUID:(id)a16 totalTurnCount:(id)a17 validTurnCount:(id)a18 siriTasksStarted:(id)a19 siriTasksCompleted:(id)a20 flowTasksStarted:(id)a21 flowTasksCompleted:(id)a22 reliabilityRequestCount:(id)a23 reliabilityTurnCount:(id)a24 clientErrorCount:(id)a25 undesiredResponseCount:(id)a26 fatalResponseCount:(id)a27 failureResponseCount:(id)a28 siriUnavailableResponseCount:(id)a29 usdxSessionCount:(id)a30 tuples:(id)a31 isIntelligenceEngineRequest:(id)a32 intelligenceEngineRouting:(id)a33 invocationSource:(id)a34
{
  v81 = a3;
  v96 = a4;
  v97 = a5;
  v71 = a6;
  v80 = a6;
  v72 = a7;
  v79 = a7;
  v92 = a8;
  v95 = a9;
  v78 = a10;
  v77 = a11;
  v93 = a12;
  v91 = a13;
  v90 = a14;
  v89 = a15;
  v76 = a16;
  v38 = a17;
  v39 = a18;
  v40 = a19;
  v41 = a20;
  v42 = a21;
  v43 = a22;
  v44 = a23;
  v45 = a24;
  v88 = a25;
  v87 = a26;
  v86 = a27;
  v85 = a28;
  v84 = a29;
  v83 = a30;
  v75 = a31;
  v82 = a32;
  v74 = a33;
  v46 = a34;
  v98.receiver = self;
  v98.super_class = BMSiriOnDeviceDigestExperimentMetricsExperimentDigest;
  v47 = [(BMEventBase *)&v98 init];
  if (v47)
  {
    v47->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v47->_systemBuild, a3);
    if (v96)
    {
      v47->_hasDataSharingOptInStatus = 1;
      v48 = [v96 intValue];
    }

    else
    {
      v47->_hasDataSharingOptInStatus = 0;
      v48 = -1;
    }

    v47->_dataSharingOptInStatus = v48;
    if (v97)
    {
      v47->_hasViewInterface = 1;
      v49 = [v97 intValue];
    }

    else
    {
      v47->_hasViewInterface = 0;
      v49 = -1;
    }

    v47->_viewInterface = v49;
    objc_storeStrong(&v47->_audioInterfaceVendorId, v71);
    objc_storeStrong(&v47->_audioInterfaceProductId, v72);
    if (v92)
    {
      v47->_hasAsrLocation = 1;
      v50 = [v92 intValue];
    }

    else
    {
      v47->_hasAsrLocation = 0;
      v50 = -1;
    }

    v47->_asrLocation = v50;
    if (v95)
    {
      v47->_hasNlLocation = 1;
      v51 = [v95 intValue];
    }

    else
    {
      v47->_hasNlLocation = 0;
      v51 = -1;
    }

    v47->_nlLocation = v51;
    objc_storeStrong(&v47->_siriInputLocale, a10);
    objc_storeStrong(&v47->_subDomain, a11);
    if (v93)
    {
      v47->_hasResponseCategory = 1;
      v52 = [v93 intValue];
    }

    else
    {
      v47->_hasResponseCategory = 0;
      v52 = -1;
    }

    v47->_responseCategory = v52;
    if (v91)
    {
      v47->_hasExperimentAllocationStatus = 1;
      v53 = [v91 intValue];
    }

    else
    {
      v47->_hasExperimentAllocationStatus = 0;
      v53 = -1;
    }

    v47->_experimentAllocationStatus = v53;
    if (v90)
    {
      v47->_hasIsTriggered = 1;
      v47->_isTriggered = [v90 BOOLValue];
    }

    else
    {
      v47->_hasIsTriggered = 0;
      v47->_isTriggered = 0;
    }

    if (v89)
    {
      v47->_hasIsFirstTriggerOrAfterFirstTrigger = 1;
      v47->_isFirstTriggerOrAfterFirstTrigger = [v89 BOOLValue];
    }

    else
    {
      v47->_hasIsFirstTriggerOrAfterFirstTrigger = 0;
      v47->_isFirstTriggerOrAfterFirstTrigger = 0;
    }

    objc_storeStrong(&v47->_codePathIdUUID, a16);
    if (v38)
    {
      v47->_hasTotalTurnCount = 1;
      v54 = [v38 unsignedIntValue];
    }

    else
    {
      v54 = 0;
      v47->_hasTotalTurnCount = 0;
    }

    v47->_totalTurnCount = v54;
    if (v39)
    {
      v47->_hasValidTurnCount = 1;
      v55 = [v39 unsignedIntValue];
    }

    else
    {
      v55 = 0;
      v47->_hasValidTurnCount = 0;
    }

    v47->_validTurnCount = v55;
    if (v40)
    {
      v47->_hasSiriTasksStarted = 1;
      v56 = [v40 unsignedIntValue];
    }

    else
    {
      v56 = 0;
      v47->_hasSiriTasksStarted = 0;
    }

    v47->_siriTasksStarted = v56;
    if (v41)
    {
      v47->_hasSiriTasksCompleted = 1;
      v57 = [v41 unsignedIntValue];
    }

    else
    {
      v57 = 0;
      v47->_hasSiriTasksCompleted = 0;
    }

    v47->_siriTasksCompleted = v57;
    if (v42)
    {
      v47->_hasFlowTasksStarted = 1;
      v58 = [v42 unsignedIntValue];
    }

    else
    {
      v58 = 0;
      v47->_hasFlowTasksStarted = 0;
    }

    v47->_flowTasksStarted = v58;
    if (v43)
    {
      v47->_hasFlowTasksCompleted = 1;
      v59 = [v43 unsignedIntValue];
    }

    else
    {
      v59 = 0;
      v47->_hasFlowTasksCompleted = 0;
    }

    v47->_flowTasksCompleted = v59;
    if (v44)
    {
      v47->_hasReliabilityRequestCount = 1;
      v60 = [v44 unsignedIntValue];
    }

    else
    {
      v60 = 0;
      v47->_hasReliabilityRequestCount = 0;
    }

    v47->_reliabilityRequestCount = v60;
    if (v45)
    {
      v47->_hasReliabilityTurnCount = 1;
      v61 = [v45 unsignedIntValue];
    }

    else
    {
      v61 = 0;
      v47->_hasReliabilityTurnCount = 0;
    }

    v47->_reliabilityTurnCount = v61;
    v62 = v88;
    if (v88)
    {
      v47->_hasClientErrorCount = 1;
      v62 = [v88 unsignedIntValue];
    }

    else
    {
      v47->_hasClientErrorCount = 0;
    }

    v47->_clientErrorCount = v62;
    v63 = v87;
    if (v87)
    {
      v47->_hasUndesiredResponseCount = 1;
      v63 = [v87 unsignedIntValue];
    }

    else
    {
      v47->_hasUndesiredResponseCount = 0;
    }

    v47->_undesiredResponseCount = v63;
    v64 = v86;
    if (v86)
    {
      v47->_hasFatalResponseCount = 1;
      v64 = [v86 unsignedIntValue];
    }

    else
    {
      v47->_hasFatalResponseCount = 0;
    }

    v47->_fatalResponseCount = v64;
    v65 = v85;
    if (v85)
    {
      v47->_hasFailureResponseCount = 1;
      v65 = [v85 unsignedIntValue];
    }

    else
    {
      v47->_hasFailureResponseCount = 0;
    }

    v47->_failureResponseCount = v65;
    v66 = v84;
    if (v84)
    {
      v47->_hasSiriUnavailableResponseCount = 1;
      v66 = [v84 unsignedIntValue];
    }

    else
    {
      v47->_hasSiriUnavailableResponseCount = 0;
    }

    v47->_siriUnavailableResponseCount = v66;
    v67 = v83;
    if (v83)
    {
      v47->_hasUsdxSessionCount = 1;
      v67 = [v83 unsignedIntValue];
    }

    else
    {
      v47->_hasUsdxSessionCount = 0;
    }

    v47->_usdxSessionCount = v67;
    objc_storeStrong(&v47->_tuples, a31);
    if (v82)
    {
      v47->_hasIsIntelligenceEngineRequest = 1;
      v47->_isIntelligenceEngineRequest = [v82 BOOLValue];
    }

    else
    {
      v47->_hasIsIntelligenceEngineRequest = 0;
      v47->_isIntelligenceEngineRequest = 0;
    }

    objc_storeStrong(&v47->_intelligenceEngineRouting, a33);
    if (v46)
    {
      v47->_hasInvocationSource = 1;
      v68 = [v46 unsignedIntValue];
    }

    else
    {
      v68 = 0;
      v47->_hasInvocationSource = 0;
    }

    v47->_invocationSource = v68;
  }

  return v47;
}

+ (id)protoFields
{
  v37[32] = *MEMORY[0x1E69E9840];
  v36 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"systemBuild" number:1 type:13 subMessageClass:0];
  v37[0] = v36;
  v35 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dataSharingOptInStatus" number:2 type:2 subMessageClass:0];
  v37[1] = v35;
  v34 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"viewInterface" number:3 type:2 subMessageClass:0];
  v37[2] = v34;
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"audioInterfaceVendorId" number:4 type:13 subMessageClass:0];
  v37[3] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"audioInterfaceProductId" number:5 type:13 subMessageClass:0];
  v37[4] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"asrLocation" number:6 type:2 subMessageClass:0];
  v37[5] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nlLocation" number:7 type:2 subMessageClass:0];
  v37[6] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"siriInputLocale" number:8 type:14 subMessageClass:objc_opt_class()];
  v37[7] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subDomain" number:9 type:13 subMessageClass:0];
  v37[8] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"responseCategory" number:10 type:2 subMessageClass:0];
  v37[9] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"experimentAllocationStatus" number:11 type:2 subMessageClass:0];
  v37[10] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isTriggered" number:12 type:12 subMessageClass:0];
  v37[11] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isFirstTriggerOrAfterFirstTrigger" number:13 type:12 subMessageClass:0];
  v37[12] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"codePathIdUUID" number:14 type:13 subMessageClass:0];
  v37[13] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalTurnCount" number:15 type:4 subMessageClass:0];
  v37[14] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"validTurnCount" number:16 type:4 subMessageClass:0];
  v37[15] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"siriTasksStarted" number:17 type:4 subMessageClass:0];
  v37[16] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"siriTasksCompleted" number:18 type:4 subMessageClass:0];
  v37[17] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"flowTasksStarted" number:19 type:4 subMessageClass:0];
  v37[18] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"flowTasksCompleted" number:20 type:4 subMessageClass:0];
  v37[19] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"reliabilityRequestCount" number:21 type:4 subMessageClass:0];
  v37[20] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"reliabilityTurnCount" number:22 type:4 subMessageClass:0];
  v37[21] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientErrorCount" number:23 type:4 subMessageClass:0];
  v37[22] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"undesiredResponseCount" number:24 type:4 subMessageClass:0];
  v37[23] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fatalResponseCount" number:25 type:4 subMessageClass:0];
  v37[24] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"failureResponseCount" number:26 type:4 subMessageClass:0];
  v37[25] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"siriUnavailableResponseCount" number:27 type:4 subMessageClass:0];
  v37[26] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"usdxSessionCount" number:28 type:4 subMessageClass:0];
  v37[27] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tuples" number:29 type:14 subMessageClass:objc_opt_class()];
  v37[28] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isIntelligenceEngineRequest" number:30 type:12 subMessageClass:0];
  v37[29] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"intelligenceEngineRouting" number:31 type:4 subMessageClass:0];
  v37[30] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"invocationSource" number:32 type:4 subMessageClass:0];
  v37[31] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:32];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v37[32] = *MEMORY[0x1E69E9840];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"systemBuild" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v36 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"dataSharingOptInStatus" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:2 convertedType:0];
  v35 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"viewInterface" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:2 convertedType:0];
  v34 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"audioInterfaceVendorId" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v33 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"audioInterfaceProductId" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"asrLocation" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:2 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nlLocation" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:2 convertedType:0];
  v30 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"siriInputLocale_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_445];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"subDomain" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"responseCategory" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:2 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"experimentAllocationStatus" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:2 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isTriggered" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:12 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isFirstTriggerOrAfterFirstTrigger" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:12 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"codePathIdUUID" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalTurnCount" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:4 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"validTurnCount" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:4 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"siriTasksStarted" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:4 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"siriTasksCompleted" dataType:0 requestOnly:0 fieldNumber:18 protoDataType:4 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"flowTasksStarted" dataType:0 requestOnly:0 fieldNumber:19 protoDataType:4 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"flowTasksCompleted" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:4 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"reliabilityRequestCount" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:4 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"reliabilityTurnCount" dataType:0 requestOnly:0 fieldNumber:22 protoDataType:4 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientErrorCount" dataType:0 requestOnly:0 fieldNumber:23 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"undesiredResponseCount" dataType:0 requestOnly:0 fieldNumber:24 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fatalResponseCount" dataType:0 requestOnly:0 fieldNumber:25 protoDataType:4 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"failureResponseCount" dataType:0 requestOnly:0 fieldNumber:26 protoDataType:4 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"siriUnavailableResponseCount" dataType:0 requestOnly:0 fieldNumber:27 protoDataType:4 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"usdxSessionCount" dataType:0 requestOnly:0 fieldNumber:28 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"tuples_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_447];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isIntelligenceEngineRequest" dataType:0 requestOnly:0 fieldNumber:30 protoDataType:12 convertedType:0];
  v11 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"intelligenceEngineRouting_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_449];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"invocationSource" dataType:0 requestOnly:0 fieldNumber:32 protoDataType:4 convertedType:0];
  v37[0] = v15;
  v37[1] = v36;
  v37[2] = v35;
  v37[3] = v34;
  v37[4] = v33;
  v37[5] = v32;
  v37[6] = v31;
  v37[7] = v30;
  v37[8] = v29;
  v37[9] = v28;
  v37[10] = v27;
  v37[11] = v26;
  v37[12] = v25;
  v37[13] = v24;
  v37[14] = v23;
  v37[15] = v22;
  v37[16] = v21;
  v37[17] = v20;
  v37[18] = v19;
  v37[19] = v18;
  v37[20] = v17;
  v37[21] = v16;
  v37[22] = v2;
  v37[23] = v3;
  v37[24] = v4;
  v37[25] = v14;
  v37[26] = v13;
  v37[27] = v12;
  v37[28] = v5;
  v37[29] = v6;
  v37[30] = v11;
  v37[31] = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:32];

  v8 = *MEMORY[0x1E69E9840];

  return v10;
}

id __64__BMSiriOnDeviceDigestExperimentMetricsExperimentDigest_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _intelligenceEngineRoutingJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __64__BMSiriOnDeviceDigestExperimentMetricsExperimentDigest_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 tuples];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __64__BMSiriOnDeviceDigestExperimentMetricsExperimentDigest_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 siriInputLocale];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
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

    v8 = [[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[11] = 0;
    }
  }

  return v4;
}

@end