@interface BMSiriOnDeviceDigestUsageMetrics
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriOnDeviceDigestUsageMetrics)initWithEventMetadata:(id)a3 deviceType:(id)a4 programCode:(id)a5 productId:(id)a6 systemBuild:(id)a7 dataSharingOptInStatus:(id)a8 viewInterface:(id)a9 audioInterfaceVendorId:(id)a10 audioInterfaceProductId:(id)a11 asrLocation:(id)a12 nlLocation:(id)a13 siriInputLocale:(id)a14 dictationLocale:(id)a15 subDomain:(id)a16 totalTurnCount:(id)a17 validTurnCount:(id)a18 siriTasksStarted:(id)a19 siriTasksCompleted:(id)a20 flowTasksStarted:(id)a21 flowTasksCompleted:(id)a22 reliabilityRequestCount:(id)a23 reliabilityTurnCount:(id)a24 clientErrorCount:(id)a25 undesiredResponseCount:(id)a26 fatalResponseCount:(id)a27 failureResponseCount:(id)a28 siriUnavailableResponseCount:(id)a29 asrTurnCount:(id)a30 siriResponseId:(id)a31 responseCategory:(id)a32 isIntelligenceEngineRequest:(id)a33 intelligenceEngineRouting:(id)a34 invocationSource:(id)a35;
- (BMSiriOnDeviceDigestUsageMetrics)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_intelligenceEngineRoutingJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriOnDeviceDigestUsageMetrics

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSiriOnDeviceDigestUsageMetrics *)self eventMetadata];
    v7 = [v5 eventMetadata];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSiriOnDeviceDigestUsageMetrics *)self eventMetadata];
      v10 = [v5 eventMetadata];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_158;
      }
    }

    v13 = [(BMSiriOnDeviceDigestUsageMetrics *)self deviceType];
    v14 = [v5 deviceType];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMSiriOnDeviceDigestUsageMetrics *)self deviceType];
      v17 = [v5 deviceType];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasProgramCode](self, "hasProgramCode") || [v5 hasProgramCode])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasProgramCode])
      {
        goto LABEL_158;
      }

      if (![v5 hasProgramCode])
      {
        goto LABEL_158;
      }

      v19 = [(BMSiriOnDeviceDigestUsageMetrics *)self programCode];
      if (v19 != [v5 programCode])
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasProductId](self, "hasProductId") || [v5 hasProductId])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasProductId])
      {
        goto LABEL_158;
      }

      if (![v5 hasProductId])
      {
        goto LABEL_158;
      }

      v20 = [(BMSiriOnDeviceDigestUsageMetrics *)self productId];
      if (v20 != [v5 productId])
      {
        goto LABEL_158;
      }
    }

    v21 = [(BMSiriOnDeviceDigestUsageMetrics *)self systemBuild];
    v22 = [v5 systemBuild];
    v23 = v22;
    if (v21 == v22)
    {
    }

    else
    {
      v24 = [(BMSiriOnDeviceDigestUsageMetrics *)self systemBuild];
      v25 = [v5 systemBuild];
      v26 = [v24 isEqual:v25];

      if (!v26)
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasDataSharingOptInStatus](self, "hasDataSharingOptInStatus") || [v5 hasDataSharingOptInStatus])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasDataSharingOptInStatus])
      {
        goto LABEL_158;
      }

      if (![v5 hasDataSharingOptInStatus])
      {
        goto LABEL_158;
      }

      v27 = [(BMSiriOnDeviceDigestUsageMetrics *)self dataSharingOptInStatus];
      if (v27 != [v5 dataSharingOptInStatus])
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasViewInterface](self, "hasViewInterface") || [v5 hasViewInterface])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasViewInterface])
      {
        goto LABEL_158;
      }

      if (![v5 hasViewInterface])
      {
        goto LABEL_158;
      }

      v28 = [(BMSiriOnDeviceDigestUsageMetrics *)self viewInterface];
      if (v28 != [v5 viewInterface])
      {
        goto LABEL_158;
      }
    }

    v29 = [(BMSiriOnDeviceDigestUsageMetrics *)self audioInterfaceVendorId];
    v30 = [v5 audioInterfaceVendorId];
    v31 = v30;
    if (v29 == v30)
    {
    }

    else
    {
      v32 = [(BMSiriOnDeviceDigestUsageMetrics *)self audioInterfaceVendorId];
      v33 = [v5 audioInterfaceVendorId];
      v34 = [v32 isEqual:v33];

      if (!v34)
      {
        goto LABEL_158;
      }
    }

    v35 = [(BMSiriOnDeviceDigestUsageMetrics *)self audioInterfaceProductId];
    v36 = [v5 audioInterfaceProductId];
    v37 = v36;
    if (v35 == v36)
    {
    }

    else
    {
      v38 = [(BMSiriOnDeviceDigestUsageMetrics *)self audioInterfaceProductId];
      v39 = [v5 audioInterfaceProductId];
      v40 = [v38 isEqual:v39];

      if (!v40)
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasAsrLocation](self, "hasAsrLocation") || [v5 hasAsrLocation])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasAsrLocation])
      {
        goto LABEL_158;
      }

      if (![v5 hasAsrLocation])
      {
        goto LABEL_158;
      }

      v41 = [(BMSiriOnDeviceDigestUsageMetrics *)self asrLocation];
      if (v41 != [v5 asrLocation])
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasNlLocation](self, "hasNlLocation") || [v5 hasNlLocation])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasNlLocation])
      {
        goto LABEL_158;
      }

      if (![v5 hasNlLocation])
      {
        goto LABEL_158;
      }

      v42 = [(BMSiriOnDeviceDigestUsageMetrics *)self nlLocation];
      if (v42 != [v5 nlLocation])
      {
        goto LABEL_158;
      }
    }

    v43 = [(BMSiriOnDeviceDigestUsageMetrics *)self siriInputLocale];
    v44 = [v5 siriInputLocale];
    v45 = v44;
    if (v43 == v44)
    {
    }

    else
    {
      v46 = [(BMSiriOnDeviceDigestUsageMetrics *)self siriInputLocale];
      v47 = [v5 siriInputLocale];
      v48 = [v46 isEqual:v47];

      if (!v48)
      {
        goto LABEL_158;
      }
    }

    v49 = [(BMSiriOnDeviceDigestUsageMetrics *)self dictationLocale];
    v50 = [v5 dictationLocale];
    v51 = v50;
    if (v49 == v50)
    {
    }

    else
    {
      v52 = [(BMSiriOnDeviceDigestUsageMetrics *)self dictationLocale];
      v53 = [v5 dictationLocale];
      v54 = [v52 isEqual:v53];

      if (!v54)
      {
        goto LABEL_158;
      }
    }

    v55 = [(BMSiriOnDeviceDigestUsageMetrics *)self subDomain];
    v56 = [v5 subDomain];
    v57 = v56;
    if (v55 == v56)
    {
    }

    else
    {
      v58 = [(BMSiriOnDeviceDigestUsageMetrics *)self subDomain];
      v59 = [v5 subDomain];
      v60 = [v58 isEqual:v59];

      if (!v60)
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasTotalTurnCount](self, "hasTotalTurnCount") || [v5 hasTotalTurnCount])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasTotalTurnCount])
      {
        goto LABEL_158;
      }

      if (![v5 hasTotalTurnCount])
      {
        goto LABEL_158;
      }

      v61 = [(BMSiriOnDeviceDigestUsageMetrics *)self totalTurnCount];
      if (v61 != [v5 totalTurnCount])
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasValidTurnCount](self, "hasValidTurnCount") || [v5 hasValidTurnCount])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasValidTurnCount])
      {
        goto LABEL_158;
      }

      if (![v5 hasValidTurnCount])
      {
        goto LABEL_158;
      }

      v62 = [(BMSiriOnDeviceDigestUsageMetrics *)self validTurnCount];
      if (v62 != [v5 validTurnCount])
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasSiriTasksStarted](self, "hasSiriTasksStarted") || [v5 hasSiriTasksStarted])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasSiriTasksStarted])
      {
        goto LABEL_158;
      }

      if (![v5 hasSiriTasksStarted])
      {
        goto LABEL_158;
      }

      v63 = [(BMSiriOnDeviceDigestUsageMetrics *)self siriTasksStarted];
      if (v63 != [v5 siriTasksStarted])
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasSiriTasksCompleted](self, "hasSiriTasksCompleted") || [v5 hasSiriTasksCompleted])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasSiriTasksCompleted])
      {
        goto LABEL_158;
      }

      if (![v5 hasSiriTasksCompleted])
      {
        goto LABEL_158;
      }

      v64 = [(BMSiriOnDeviceDigestUsageMetrics *)self siriTasksCompleted];
      if (v64 != [v5 siriTasksCompleted])
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasFlowTasksStarted](self, "hasFlowTasksStarted") || [v5 hasFlowTasksStarted])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasFlowTasksStarted])
      {
        goto LABEL_158;
      }

      if (![v5 hasFlowTasksStarted])
      {
        goto LABEL_158;
      }

      v65 = [(BMSiriOnDeviceDigestUsageMetrics *)self flowTasksStarted];
      if (v65 != [v5 flowTasksStarted])
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasFlowTasksCompleted](self, "hasFlowTasksCompleted") || [v5 hasFlowTasksCompleted])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasFlowTasksCompleted])
      {
        goto LABEL_158;
      }

      if (![v5 hasFlowTasksCompleted])
      {
        goto LABEL_158;
      }

      v66 = [(BMSiriOnDeviceDigestUsageMetrics *)self flowTasksCompleted];
      if (v66 != [v5 flowTasksCompleted])
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasReliabilityRequestCount](self, "hasReliabilityRequestCount") || [v5 hasReliabilityRequestCount])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasReliabilityRequestCount])
      {
        goto LABEL_158;
      }

      if (![v5 hasReliabilityRequestCount])
      {
        goto LABEL_158;
      }

      v67 = [(BMSiriOnDeviceDigestUsageMetrics *)self reliabilityRequestCount];
      if (v67 != [v5 reliabilityRequestCount])
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasReliabilityTurnCount](self, "hasReliabilityTurnCount") || [v5 hasReliabilityTurnCount])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasReliabilityTurnCount])
      {
        goto LABEL_158;
      }

      if (![v5 hasReliabilityTurnCount])
      {
        goto LABEL_158;
      }

      v68 = [(BMSiriOnDeviceDigestUsageMetrics *)self reliabilityTurnCount];
      if (v68 != [v5 reliabilityTurnCount])
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasClientErrorCount](self, "hasClientErrorCount") || [v5 hasClientErrorCount])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasClientErrorCount])
      {
        goto LABEL_158;
      }

      if (![v5 hasClientErrorCount])
      {
        goto LABEL_158;
      }

      v69 = [(BMSiriOnDeviceDigestUsageMetrics *)self clientErrorCount];
      if (v69 != [v5 clientErrorCount])
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasUndesiredResponseCount](self, "hasUndesiredResponseCount") || [v5 hasUndesiredResponseCount])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasUndesiredResponseCount])
      {
        goto LABEL_158;
      }

      if (![v5 hasUndesiredResponseCount])
      {
        goto LABEL_158;
      }

      v70 = [(BMSiriOnDeviceDigestUsageMetrics *)self undesiredResponseCount];
      if (v70 != [v5 undesiredResponseCount])
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasFatalResponseCount](self, "hasFatalResponseCount") || [v5 hasFatalResponseCount])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasFatalResponseCount])
      {
        goto LABEL_158;
      }

      if (![v5 hasFatalResponseCount])
      {
        goto LABEL_158;
      }

      v71 = [(BMSiriOnDeviceDigestUsageMetrics *)self fatalResponseCount];
      if (v71 != [v5 fatalResponseCount])
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasFailureResponseCount](self, "hasFailureResponseCount") || [v5 hasFailureResponseCount])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasFailureResponseCount])
      {
        goto LABEL_158;
      }

      if (![v5 hasFailureResponseCount])
      {
        goto LABEL_158;
      }

      v72 = [(BMSiriOnDeviceDigestUsageMetrics *)self failureResponseCount];
      if (v72 != [v5 failureResponseCount])
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasSiriUnavailableResponseCount](self, "hasSiriUnavailableResponseCount") || [v5 hasSiriUnavailableResponseCount])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasSiriUnavailableResponseCount])
      {
        goto LABEL_158;
      }

      if (![v5 hasSiriUnavailableResponseCount])
      {
        goto LABEL_158;
      }

      v73 = [(BMSiriOnDeviceDigestUsageMetrics *)self siriUnavailableResponseCount];
      if (v73 != [v5 siriUnavailableResponseCount])
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasAsrTurnCount](self, "hasAsrTurnCount") || [v5 hasAsrTurnCount])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasAsrTurnCount])
      {
        goto LABEL_158;
      }

      if (![v5 hasAsrTurnCount])
      {
        goto LABEL_158;
      }

      v74 = [(BMSiriOnDeviceDigestUsageMetrics *)self asrTurnCount];
      if (v74 != [v5 asrTurnCount])
      {
        goto LABEL_158;
      }
    }

    v75 = [(BMSiriOnDeviceDigestUsageMetrics *)self siriResponseId];
    v76 = [v5 siriResponseId];
    v77 = v76;
    if (v75 == v76)
    {
    }

    else
    {
      v78 = [(BMSiriOnDeviceDigestUsageMetrics *)self siriResponseId];
      v79 = [v5 siriResponseId];
      v80 = [v78 isEqual:v79];

      if (!v80)
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasResponseCategory](self, "hasResponseCategory") || [v5 hasResponseCategory])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasResponseCategory])
      {
        goto LABEL_158;
      }

      if (![v5 hasResponseCategory])
      {
        goto LABEL_158;
      }

      v81 = [(BMSiriOnDeviceDigestUsageMetrics *)self responseCategory];
      if (v81 != [v5 responseCategory])
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasIsIntelligenceEngineRequest](self, "hasIsIntelligenceEngineRequest") || [v5 hasIsIntelligenceEngineRequest])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasIsIntelligenceEngineRequest])
      {
        goto LABEL_158;
      }

      if (![v5 hasIsIntelligenceEngineRequest])
      {
        goto LABEL_158;
      }

      v82 = [(BMSiriOnDeviceDigestUsageMetrics *)self isIntelligenceEngineRequest];
      if (v82 != [v5 isIntelligenceEngineRequest])
      {
        goto LABEL_158;
      }
    }

    v83 = [(BMSiriOnDeviceDigestUsageMetrics *)self intelligenceEngineRouting];
    v84 = [v5 intelligenceEngineRouting];
    v85 = v84;
    if (v83 == v84)
    {
    }

    else
    {
      v86 = [(BMSiriOnDeviceDigestUsageMetrics *)self intelligenceEngineRouting];
      v87 = [v5 intelligenceEngineRouting];
      v88 = [v86 isEqual:v87];

      if (!v88)
      {
        goto LABEL_158;
      }
    }

    if (!-[BMSiriOnDeviceDigestUsageMetrics hasInvocationSource](self, "hasInvocationSource") && ![v5 hasInvocationSource])
    {
      v12 = 1;
      goto LABEL_159;
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasInvocationSource](self, "hasInvocationSource") && [v5 hasInvocationSource])
    {
      v89 = [(BMSiriOnDeviceDigestUsageMetrics *)self invocationSource];
      v12 = v89 == [v5 invocationSource];
LABEL_159:

      goto LABEL_160;
    }

LABEL_158:
    v12 = 0;
    goto LABEL_159;
  }

  v12 = 0;
LABEL_160:

  return v12;
}

- (id)jsonDictionary
{
  v111[33] = *MEMORY[0x1E69E9840];
  v3 = [(BMSiriOnDeviceDigestUsageMetrics *)self eventMetadata];
  v4 = [v3 jsonDictionary];

  v5 = [(BMSiriOnDeviceDigestUsageMetrics *)self deviceType];
  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasProgramCode])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestUsageMetrics programCode](self, "programCode")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasProductId])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestUsageMetrics productId](self, "productId")}];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(BMSiriOnDeviceDigestUsageMetrics *)self systemBuild];
  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasDataSharingOptInStatus])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestUsageMetrics dataSharingOptInStatus](self, "dataSharingOptInStatus")}];
  }

  else
  {
    v9 = 0;
  }

  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasViewInterface])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestUsageMetrics viewInterface](self, "viewInterface")}];
  }

  else
  {
    v10 = 0;
  }

  v108 = [(BMSiriOnDeviceDigestUsageMetrics *)self audioInterfaceVendorId];
  v107 = [(BMSiriOnDeviceDigestUsageMetrics *)self audioInterfaceProductId];
  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasAsrLocation])
  {
    v106 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestUsageMetrics asrLocation](self, "asrLocation")}];
  }

  else
  {
    v106 = 0;
  }

  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasNlLocation])
  {
    v105 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestUsageMetrics nlLocation](self, "nlLocation")}];
  }

  else
  {
    v105 = 0;
  }

  v11 = [(BMSiriOnDeviceDigestUsageMetrics *)self siriInputLocale];
  v104 = [v11 jsonDictionary];

  v12 = [(BMSiriOnDeviceDigestUsageMetrics *)self dictationLocale];
  v103 = [v12 jsonDictionary];

  v102 = [(BMSiriOnDeviceDigestUsageMetrics *)self subDomain];
  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasTotalTurnCount])
  {
    v101 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics totalTurnCount](self, "totalTurnCount")}];
  }

  else
  {
    v101 = 0;
  }

  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasValidTurnCount])
  {
    v100 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics validTurnCount](self, "validTurnCount")}];
  }

  else
  {
    v100 = 0;
  }

  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasSiriTasksStarted])
  {
    v99 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics siriTasksStarted](self, "siriTasksStarted")}];
  }

  else
  {
    v99 = 0;
  }

  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasSiriTasksCompleted])
  {
    v98 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics siriTasksCompleted](self, "siriTasksCompleted")}];
  }

  else
  {
    v98 = 0;
  }

  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasFlowTasksStarted])
  {
    v97 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics flowTasksStarted](self, "flowTasksStarted")}];
  }

  else
  {
    v97 = 0;
  }

  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasFlowTasksCompleted])
  {
    v96 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics flowTasksCompleted](self, "flowTasksCompleted")}];
  }

  else
  {
    v96 = 0;
  }

  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasReliabilityRequestCount])
  {
    v95 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics reliabilityRequestCount](self, "reliabilityRequestCount")}];
  }

  else
  {
    v95 = 0;
  }

  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasReliabilityTurnCount])
  {
    v94 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics reliabilityTurnCount](self, "reliabilityTurnCount")}];
  }

  else
  {
    v94 = 0;
  }

  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasClientErrorCount])
  {
    v93 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics clientErrorCount](self, "clientErrorCount")}];
  }

  else
  {
    v93 = 0;
  }

  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasUndesiredResponseCount])
  {
    v92 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics undesiredResponseCount](self, "undesiredResponseCount")}];
  }

  else
  {
    v92 = 0;
  }

  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasFatalResponseCount])
  {
    v91 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics fatalResponseCount](self, "fatalResponseCount")}];
  }

  else
  {
    v91 = 0;
  }

  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasFailureResponseCount])
  {
    v90 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics failureResponseCount](self, "failureResponseCount")}];
  }

  else
  {
    v90 = 0;
  }

  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasSiriUnavailableResponseCount])
  {
    v89 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics siriUnavailableResponseCount](self, "siriUnavailableResponseCount")}];
  }

  else
  {
    v89 = 0;
  }

  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasAsrTurnCount])
  {
    v88 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics asrTurnCount](self, "asrTurnCount")}];
  }

  else
  {
    v88 = 0;
  }

  v87 = [(BMSiriOnDeviceDigestUsageMetrics *)self siriResponseId];
  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasResponseCategory])
  {
    v86 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics responseCategory](self, "responseCategory")}];
  }

  else
  {
    v86 = 0;
  }

  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasIsIntelligenceEngineRequest])
  {
    v85 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriOnDeviceDigestUsageMetrics isIntelligenceEngineRequest](self, "isIntelligenceEngineRequest")}];
  }

  else
  {
    v85 = 0;
  }

  v84 = [(BMSiriOnDeviceDigestUsageMetrics *)self _intelligenceEngineRoutingJSONArray];
  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasInvocationSource])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics invocationSource](self, "invocationSource")}];
  }

  else
  {
    v13 = 0;
  }

  v110[0] = @"eventMetadata";
  v14 = v4;
  if (!v4)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v76 = v14;
  v111[0] = v14;
  v110[1] = @"deviceType";
  v15 = v5;
  if (!v5)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v75 = v15;
  v111[1] = v15;
  v110[2] = @"programCode";
  v16 = v6;
  if (!v6)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v74 = v16;
  v111[2] = v16;
  v110[3] = @"productId";
  v17 = v7;
  if (!v7)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v73 = v17;
  v111[3] = v17;
  v110[4] = @"systemBuild";
  v18 = v8;
  if (!v8)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v72 = v18;
  v111[4] = v18;
  v110[5] = @"dataSharingOptInStatus";
  v19 = v9;
  if (!v9)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v71 = v19;
  v111[5] = v19;
  v110[6] = @"viewInterface";
  v20 = v10;
  if (!v10)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v70 = v20;
  v111[6] = v20;
  v110[7] = @"audioInterfaceVendorId";
  v21 = v108;
  if (!v108)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v111[7] = v21;
  v110[8] = @"audioInterfaceProductId";
  v22 = v107;
  if (!v107)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v111[8] = v22;
  v110[9] = @"asrLocation";
  v23 = v106;
  if (!v106)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v79 = v23;
  v111[9] = v23;
  v110[10] = @"nlLocation";
  v24 = v105;
  if (!v105)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v78 = v24;
  v111[10] = v24;
  v110[11] = @"siriInputLocale";
  v25 = v104;
  if (!v104)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v109 = v25;
  v111[11] = v25;
  v110[12] = @"dictationLocale";
  v26 = v103;
  if (!v103)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v68 = v26;
  v111[12] = v26;
  v110[13] = @"subDomain";
  v27 = v102;
  if (!v102)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v67 = v27;
  v111[13] = v27;
  v110[14] = @"totalTurnCount";
  v28 = v101;
  if (!v101)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v66 = v28;
  v111[14] = v28;
  v110[15] = @"validTurnCount";
  v29 = v100;
  if (!v100)
  {
    v29 = [MEMORY[0x1E695DFB0] null];
  }

  v65 = v29;
  v111[15] = v29;
  v110[16] = @"siriTasksStarted";
  v30 = v99;
  if (!v99)
  {
    v30 = [MEMORY[0x1E695DFB0] null];
  }

  v64 = v30;
  v111[16] = v30;
  v110[17] = @"siriTasksCompleted";
  v31 = v98;
  if (!v98)
  {
    v31 = [MEMORY[0x1E695DFB0] null];
  }

  v63 = v31;
  v111[17] = v31;
  v110[18] = @"flowTasksStarted";
  v32 = v97;
  if (!v97)
  {
    v32 = [MEMORY[0x1E695DFB0] null];
  }

  v62 = v32;
  v111[18] = v32;
  v110[19] = @"flowTasksCompleted";
  v33 = v96;
  if (!v96)
  {
    v33 = [MEMORY[0x1E695DFB0] null];
  }

  v61 = v33;
  v111[19] = v33;
  v110[20] = @"reliabilityRequestCount";
  v34 = v95;
  if (!v95)
  {
    v34 = [MEMORY[0x1E695DFB0] null];
  }

  v60 = v34;
  v111[20] = v34;
  v110[21] = @"reliabilityTurnCount";
  v35 = v94;
  if (!v94)
  {
    v35 = [MEMORY[0x1E695DFB0] null];
  }

  v59 = v35;
  v111[21] = v35;
  v110[22] = @"clientErrorCount";
  v36 = v93;
  if (!v93)
  {
    v36 = [MEMORY[0x1E695DFB0] null];
  }

  v58 = v36;
  v111[22] = v36;
  v110[23] = @"undesiredResponseCount";
  v37 = v92;
  if (!v92)
  {
    v37 = [MEMORY[0x1E695DFB0] null];
  }

  v82 = v4;
  v57 = v37;
  v111[23] = v37;
  v110[24] = @"fatalResponseCount";
  v38 = v91;
  if (!v91)
  {
    v38 = [MEMORY[0x1E695DFB0] null];
  }

  v56 = v38;
  v111[24] = v38;
  v110[25] = @"failureResponseCount";
  v39 = v90;
  if (!v90)
  {
    v39 = [MEMORY[0x1E695DFB0] null];
  }

  v80 = v10;
  v55 = v39;
  v111[25] = v39;
  v110[26] = @"siriUnavailableResponseCount";
  v40 = v89;
  if (!v89)
  {
    v40 = [MEMORY[0x1E695DFB0] null];
  }

  v81 = v5;
  v54 = v40;
  v111[26] = v40;
  v110[27] = @"asrTurnCount";
  v41 = v88;
  if (!v88)
  {
    v41 = [MEMORY[0x1E695DFB0] null];
  }

  v69 = v21;
  v52 = v41;
  v111[27] = v41;
  v110[28] = @"siriResponseId";
  v42 = v87;
  if (!v87)
  {
    v42 = [MEMORY[0x1E695DFB0] null];
  }

  v83 = v13;
  v111[28] = v42;
  v110[29] = @"responseCategory";
  v43 = v86;
  if (!v86)
  {
    v43 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = v8;
  v111[29] = v43;
  v110[30] = @"isIntelligenceEngineRequest";
  v45 = v85;
  if (!v85)
  {
    v45 = [MEMORY[0x1E695DFB0] null];
  }

  v46 = v22;
  v111[30] = v45;
  v110[31] = @"intelligenceEngineRouting";
  v47 = v84;
  if (!v84)
  {
    v47 = [MEMORY[0x1E695DFB0] null];
  }

  v111[31] = v47;
  v110[32] = @"invocationSource";
  v48 = v83;
  if (!v83)
  {
    v48 = [MEMORY[0x1E695DFB0] null];
  }

  v111[32] = v48;
  v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v111 forKeys:v110 count:{33, v52}];
  if (!v83)
  {
  }

  v49 = v109;
  if (!v84)
  {

    v49 = v109;
  }

  if (!v85)
  {

    v49 = v109;
  }

  if (!v86)
  {

    v49 = v109;
  }

  if (!v87)
  {

    v49 = v109;
  }

  if (!v88)
  {

    v49 = v109;
  }

  if (!v89)
  {

    v49 = v109;
  }

  if (!v90)
  {

    v49 = v109;
  }

  if (!v91)
  {

    v49 = v109;
  }

  if (!v92)
  {

    v49 = v109;
  }

  if (!v93)
  {

    v49 = v109;
  }

  if (!v94)
  {

    v49 = v109;
  }

  if (!v95)
  {

    v49 = v109;
  }

  if (!v96)
  {

    v49 = v109;
  }

  if (!v97)
  {

    v49 = v109;
  }

  if (!v98)
  {

    v49 = v109;
  }

  if (!v99)
  {

    v49 = v109;
  }

  if (!v100)
  {

    v49 = v109;
  }

  if (!v101)
  {

    v49 = v109;
  }

  if (!v102)
  {

    v49 = v109;
  }

  if (!v103)
  {

    v49 = v109;
  }

  if (!v104)
  {
  }

  if (!v105)
  {
  }

  if (!v106)
  {
  }

  if (!v107)
  {
  }

  if (v108)
  {
    if (v80)
    {
      goto LABEL_188;
    }
  }

  else
  {

    if (v80)
    {
LABEL_188:
      if (v9)
      {
        goto LABEL_189;
      }

      goto LABEL_199;
    }
  }

  if (v9)
  {
LABEL_189:
    if (v44)
    {
      goto LABEL_190;
    }

    goto LABEL_200;
  }

LABEL_199:

  if (v44)
  {
LABEL_190:
    if (v7)
    {
      goto LABEL_191;
    }

    goto LABEL_201;
  }

LABEL_200:

  if (v7)
  {
LABEL_191:
    if (v6)
    {
      goto LABEL_192;
    }

    goto LABEL_202;
  }

LABEL_201:

  if (v6)
  {
LABEL_192:
    if (v81)
    {
      goto LABEL_193;
    }

LABEL_203:

    if (v82)
    {
      goto LABEL_194;
    }

    goto LABEL_204;
  }

LABEL_202:

  if (!v81)
  {
    goto LABEL_203;
  }

LABEL_193:
  if (v82)
  {
    goto LABEL_194;
  }

LABEL_204:

LABEL_194:
  v50 = *MEMORY[0x1E69E9840];

  return v77;
}

- (id)_intelligenceEngineRoutingJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMSiriOnDeviceDigestUsageMetrics *)self intelligenceEngineRouting];
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

- (BMSiriOnDeviceDigestUsageMetrics)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v398[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v320 = [v6 objectForKeyedSubscript:@"eventMetadata"];
  if (v320 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v64 = objc_alloc(MEMORY[0x1E696ABC0]);
        v65 = *MEMORY[0x1E698F240];
        v397 = *MEMORY[0x1E696A578];
        v319 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"eventMetadata"];
        v398[0] = v319;
        v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v398 forKeys:&v397 count:1];
        v67 = v64;
        v8 = v66;
        v63 = 0;
        *a4 = [v67 initWithDomain:v65 code:2 userInfo:v66];
        goto LABEL_338;
      }

      v63 = 0;
      goto LABEL_339;
    }

    v8 = v320;
    v327 = 0;
    v319 = [[BMSiriOnDeviceDigestUsageMetricsEventMetadata alloc] initWithJSONDictionary:v8 error:&v327];
    v62 = v327;
    if (v62)
    {
      if (a4)
      {
        v62 = v62;
        *a4 = v62;
      }

      v63 = 0;
      goto LABEL_338;
    }
  }

  else
  {
    v319 = 0;
  }

  v7 = [v6 objectForKeyedSubscript:@"deviceType"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v68 = objc_alloc(MEMORY[0x1E696ABC0]);
        v69 = a4;
        v70 = *MEMORY[0x1E698F240];
        v395 = *MEMORY[0x1E696A578];
        v318 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceType"];
        v396 = v318;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v396 forKeys:&v395 count:1];
        v71 = [v68 initWithDomain:v70 code:2 userInfo:v9];
        v8 = 0;
        v63 = 0;
        *v69 = v71;
        goto LABEL_336;
      }

      v8 = 0;
      v63 = 0;
      goto LABEL_337;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 objectForKeyedSubscript:@"programCode"];
  v317 = self;
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v72 = v7;
        v73 = v8;
        v74 = objc_alloc(MEMORY[0x1E696ABC0]);
        v75 = a4;
        v76 = *MEMORY[0x1E698F240];
        v393 = *MEMORY[0x1E696A578];
        a4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"programCode"];
        v394 = a4;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v394 forKeys:&v393 count:1];
        v77 = v74;
        v8 = v73;
        v7 = v72;
        v318 = 0;
        v63 = 0;
        *v75 = [v77 initWithDomain:v76 code:2 userInfo:v10];
        goto LABEL_335;
      }

      v318 = 0;
      v63 = 0;
      goto LABEL_336;
    }

    v318 = v9;
  }

  else
  {
    v318 = 0;
  }

  v10 = [v6 objectForKeyedSubscript:@"productId"];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v298 = v6;
        v80 = v7;
        v81 = v9;
        v82 = v8;
        v83 = objc_alloc(MEMORY[0x1E696ABC0]);
        v84 = *MEMORY[0x1E698F240];
        v391 = *MEMORY[0x1E696A578];
        v85 = a4;
        v316 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"productId"];
        v392 = v316;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v392 forKeys:&v391 count:1];
        v86 = v83;
        v8 = v82;
        v9 = v81;
        v7 = v80;
        v6 = v298;
        a4 = 0;
        v63 = 0;
        *v85 = [v86 initWithDomain:v84 code:2 userInfo:v11];
        goto LABEL_334;
      }

      v63 = 0;
      goto LABEL_335;
    }

    v313 = v10;
  }

  else
  {
    v313 = 0;
  }

  v11 = [v6 objectForKeyedSubscript:@"systemBuild"];
  v314 = a4;
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v316 = 0;
        v63 = 0;
        a4 = v313;
        goto LABEL_334;
      }

      v299 = v6;
      v87 = objc_alloc(MEMORY[0x1E696ABC0]);
      v88 = *MEMORY[0x1E698F240];
      v389 = *MEMORY[0x1E696A578];
      v312 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"systemBuild"];
      v390 = v312;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v390 forKeys:&v389 count:1];
      v89 = v87;
      v6 = v299;
      v316 = 0;
      v63 = 0;
      *v314 = [v89 initWithDomain:v88 code:2 userInfo:v12];
      goto LABEL_160;
    }

    v316 = v11;
  }

  else
  {
    v316 = 0;
  }

  v12 = [v6 objectForKeyedSubscript:@"dataSharingOptInStatus"];
  v311 = v8;
  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v312 = v12;
        goto LABEL_19;
      }

      if (a4)
      {
        v90 = objc_alloc(MEMORY[0x1E696ABC0]);
        v91 = *MEMORY[0x1E698F240];
        v387 = *MEMORY[0x1E696A578];
        v310 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"dataSharingOptInStatus"];
        v388 = v310;
        v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v388 forKeys:&v387 count:1];
        v93 = v90;
        v13 = v92;
        v312 = 0;
        v63 = 0;
        *v314 = [v93 initWithDomain:v91 code:2 userInfo:v92];
        goto LABEL_166;
      }

      v312 = 0;
      v63 = 0;
LABEL_160:
      a4 = v313;
      goto LABEL_333;
    }
  }

  v312 = 0;
LABEL_19:
  v13 = [v6 objectForKeyedSubscript:@"viewInterface"];
  v309 = v13;
  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v310 = v13;
        goto LABEL_22;
      }

      if (a4)
      {
        v94 = objc_alloc(MEMORY[0x1E696ABC0]);
        v95 = *MEMORY[0x1E698F240];
        v385 = *MEMORY[0x1E696A578];
        v307 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"viewInterface"];
        v386 = v307;
        v96 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v386 forKeys:&v385 count:1];
        v97 = v94;
        v13 = v309;
        v308 = v96;
        v310 = 0;
        v63 = 0;
        *v314 = [v97 initWithDomain:v95 code:2 userInfo:?];
        a4 = v313;
        goto LABEL_331;
      }

      v310 = 0;
      v63 = 0;
LABEL_166:
      a4 = v313;
      goto LABEL_332;
    }
  }

  v310 = 0;
LABEL_22:
  v14 = [v6 objectForKeyedSubscript:@"audioInterfaceVendorId"];
  v308 = v14;
  if (v14 && (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v78 = v11;
    v79 = v10;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!v314)
      {
        v307 = 0;
        v63 = 0;
        a4 = v313;
        v11 = v78;
        v13 = v309;
        goto LABEL_331;
      }

      v300 = v6;
      v102 = objc_alloc(MEMORY[0x1E696ABC0]);
      v103 = *MEMORY[0x1E698F240];
      v383 = *MEMORY[0x1E696A578];
      v305 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"audioInterfaceVendorId"];
      v384 = v305;
      v104 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v384 forKeys:&v383 count:1];
      v105 = v102;
      v6 = v300;
      v306 = v104;
      v307 = 0;
      v63 = 0;
      *v314 = [v105 initWithDomain:v103 code:2 userInfo:?];
      goto LABEL_175;
    }

    v307 = v15;
    v11 = v78;
    v13 = v309;
  }

  else
  {
    v307 = 0;
  }

  v16 = [v6 objectForKeyedSubscript:@"audioInterfaceProductId"];
  v306 = v16;
  if (v16)
  {
    v17 = v16;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v78 = v11;
      v79 = v10;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v305 = v17;
        v11 = v78;
        v13 = v309;
        goto LABEL_28;
      }

      if (v314)
      {
        v301 = v6;
        v106 = objc_alloc(MEMORY[0x1E696ABC0]);
        v107 = *MEMORY[0x1E698F240];
        v381 = *MEMORY[0x1E696A578];
        v296 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"audioInterfaceProductId"];
        v382 = v296;
        v108 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v382 forKeys:&v381 count:1];
        v109 = v106;
        v6 = v301;
        v297 = v108;
        v305 = 0;
        v63 = 0;
        *v314 = [v109 initWithDomain:v107 code:2 userInfo:?];
        a4 = v313;
        v11 = v78;
        v13 = v309;
        goto LABEL_329;
      }

      v305 = 0;
      v63 = 0;
LABEL_175:
      v10 = v79;
      a4 = v313;
      v11 = v78;
      v13 = v309;
      goto LABEL_330;
    }
  }

  v305 = 0;
LABEL_28:
  v18 = [v6 objectForKeyedSubscript:@"asrLocation"];
  v297 = v18;
  if (v18 && (v19 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!v314)
      {
        v296 = 0;
        v63 = 0;
        a4 = v313;
        goto LABEL_329;
      }

      v113 = objc_alloc(MEMORY[0x1E696ABC0]);
      v114 = *MEMORY[0x1E698F240];
      v379 = *MEMORY[0x1E696A578];
      v294 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"asrLocation"];
      v380 = v294;
      v115 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v380 forKeys:&v379 count:1];
      v116 = v113;
      v13 = v309;
      v295 = v115;
      v296 = 0;
      v63 = 0;
      *v314 = [v116 initWithDomain:v114 code:2 userInfo:?];
      goto LABEL_186;
    }

    v296 = v19;
  }

  else
  {
    v296 = 0;
  }

  v20 = [v6 objectForKeyedSubscript:@"nlLocation"];
  v304 = v7;
  v293 = v9;
  v295 = v20;
  if (v20)
  {
    v21 = v20;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v294 = v21;
        goto LABEL_34;
      }

      if (v314)
      {
        v117 = objc_alloc(MEMORY[0x1E696ABC0]);
        v118 = *MEMORY[0x1E698F240];
        v377 = *MEMORY[0x1E696A578];
        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"nlLocation"];
        v378 = v22;
        v100 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v378 forKeys:&v377 count:1];
        v294 = 0;
        v63 = 0;
        *v314 = [v117 initWithDomain:v118 code:2 userInfo:v100];
        a4 = v313;
        goto LABEL_326;
      }

      v294 = 0;
      v63 = 0;
LABEL_186:
      a4 = v313;
      goto LABEL_328;
    }
  }

  v294 = 0;
LABEL_34:
  v22 = [v6 objectForKeyedSubscript:@"siriInputLocale"];
  if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v98 = v22;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (v314)
      {
        v302 = objc_alloc(MEMORY[0x1E696ABC0]);
        v119 = *MEMORY[0x1E698F240];
        v375 = *MEMORY[0x1E696A578];
        v120 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"siriInputLocale"];
        v376 = v120;
        v121 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v376 forKeys:&v375 count:1];
        v122 = v119;
        v100 = v120;
        *v314 = [v302 initWithDomain:v122 code:2 userInfo:v121];

        v63 = 0;
        v22 = v98;
        a4 = v313;
        goto LABEL_326;
      }

      v63 = 0;
      a4 = v313;
      goto LABEL_327;
    }

    v22 = v22;
    v99 = [BMSiriOnDeviceDigestUsageMetricsISOLocale alloc];
    v326 = 0;
    v100 = [(BMSiriOnDeviceDigestUsageMetricsISOLocale *)v99 initWithJSONDictionary:v22 error:&v326];
    v101 = v326;
    if (v101)
    {
      a4 = v313;
      if (v314)
      {
        v101 = v101;
        *v314 = v101;
      }

      v63 = 0;
      goto LABEL_326;
    }

    v290 = v100;

    v22 = v98;
  }

  else
  {
    v290 = 0;
  }

  v23 = [v6 objectForKeyedSubscript:@"dictationLocale"];
  v291 = v23;
  if (v23 && (v24 = v23, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (v314)
      {
        v303 = objc_alloc(MEMORY[0x1E696ABC0]);
        v123 = *MEMORY[0x1E698F240];
        v373 = *MEMORY[0x1E696A578];
        v288 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"dictationLocale"];
        v374 = v288;
        v289 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v374 forKeys:&v373 count:1];
        v63 = 0;
        *v314 = [v303 initWithDomain:v123 code:2 userInfo:?];
        a4 = v313;
        v100 = v290;
        goto LABEL_324;
      }

      v63 = 0;
      a4 = v313;
      v100 = v290;
      goto LABEL_325;
    }

    v110 = v24;
    v111 = [BMSiriOnDeviceDigestUsageMetricsISOLocale alloc];
    v325 = 0;
    v288 = [(BMSiriOnDeviceDigestUsageMetricsISOLocale *)v111 initWithJSONDictionary:v110 error:&v325];
    v112 = v325;
    v100 = v290;
    if (v112)
    {
      v289 = v110;
      a4 = v313;
      if (v314)
      {
        v112 = v112;
        *v314 = v112;
      }

      v63 = 0;
      goto LABEL_324;
    }
  }

  else
  {
    v288 = 0;
  }

  v25 = [v6 objectForKeyedSubscript:@"subDomain"];
  v287 = v25;
  if (v25 && (v26 = v25, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!v314)
      {
        v289 = 0;
        v63 = 0;
        a4 = v313;
        v100 = v290;
        goto LABEL_323;
      }

      v124 = objc_alloc(MEMORY[0x1E696ABC0]);
      v125 = *MEMORY[0x1E698F240];
      v371 = *MEMORY[0x1E696A578];
      v285 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"subDomain"];
      v372 = v285;
      v286 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v372 forKeys:&v371 count:1];
      v289 = 0;
      v63 = 0;
      *v314 = [v124 initWithDomain:v125 code:2 userInfo:?];
      a4 = v313;
      goto LABEL_213;
    }

    v289 = v26;
  }

  else
  {
    v289 = 0;
  }

  v27 = [v6 objectForKeyedSubscript:@"totalTurnCount"];
  v286 = v27;
  if (v27)
  {
    v28 = v27;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v285 = v28;
        goto LABEL_46;
      }

      if (v314)
      {
        v126 = v22;
        v127 = objc_alloc(MEMORY[0x1E696ABC0]);
        v128 = *MEMORY[0x1E698F240];
        v369 = *MEMORY[0x1E696A578];
        v282 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"totalTurnCount"];
        v370 = v282;
        v129 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v370 forKeys:&v369 count:1];
        v130 = v127;
        v22 = v126;
        v284 = v129;
        v285 = 0;
        v63 = 0;
        *v314 = [v130 initWithDomain:v128 code:2 userInfo:?];
        goto LABEL_219;
      }

      v285 = 0;
      v63 = 0;
      a4 = v313;
LABEL_213:
      v100 = v290;
      goto LABEL_322;
    }
  }

  v285 = 0;
LABEL_46:
  v29 = [v6 objectForKeyedSubscript:@"validTurnCount"];
  v284 = v29;
  if (v29)
  {
    v30 = v29;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v282 = v30;
        goto LABEL_49;
      }

      if (v314)
      {
        v131 = v22;
        v132 = objc_alloc(MEMORY[0x1E696ABC0]);
        v133 = *MEMORY[0x1E698F240];
        v367 = *MEMORY[0x1E696A578];
        v280 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"validTurnCount"];
        v368 = v280;
        v134 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v368 forKeys:&v367 count:1];
        v135 = v132;
        v22 = v131;
        v281 = v134;
        v282 = 0;
        v63 = 0;
        *v314 = [v135 initWithDomain:v133 code:2 userInfo:?];
        goto LABEL_225;
      }

      v282 = 0;
      v63 = 0;
LABEL_219:
      a4 = v313;
      v100 = v290;
      goto LABEL_321;
    }
  }

  v282 = 0;
LABEL_49:
  v31 = [v6 objectForKeyedSubscript:@"siriTasksStarted"];
  v281 = v31;
  if (v31)
  {
    v32 = v31;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v280 = v32;
        goto LABEL_52;
      }

      if (v314)
      {
        v136 = v22;
        v137 = objc_alloc(MEMORY[0x1E696ABC0]);
        v138 = *MEMORY[0x1E698F240];
        v365 = *MEMORY[0x1E696A578];
        v277 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"siriTasksStarted"];
        v366 = v277;
        v139 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v366 forKeys:&v365 count:1];
        v140 = v137;
        v22 = v136;
        v278 = v139;
        v280 = 0;
        v63 = 0;
        *v314 = [v140 initWithDomain:v138 code:2 userInfo:?];
        goto LABEL_231;
      }

      v280 = 0;
      v63 = 0;
LABEL_225:
      a4 = v313;
      v100 = v290;
      goto LABEL_320;
    }
  }

  v280 = 0;
LABEL_52:
  v33 = [v6 objectForKeyedSubscript:@"siriTasksCompleted"];
  v278 = v33;
  if (v33)
  {
    v34 = v33;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v277 = v34;
        goto LABEL_55;
      }

      if (v314)
      {
        v141 = v22;
        v142 = objc_alloc(MEMORY[0x1E696ABC0]);
        v143 = *MEMORY[0x1E698F240];
        v363 = *MEMORY[0x1E696A578];
        v144 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"siriTasksCompleted"];
        v364 = v144;
        v145 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v364 forKeys:&v363 count:1];
        v146 = v142;
        v22 = v141;
        v147 = v144;
        v276 = v145;
        v277 = 0;
        v63 = 0;
        *v314 = [v146 initWithDomain:v143 code:2 userInfo:?];
        goto LABEL_237;
      }

      v277 = 0;
      v63 = 0;
LABEL_231:
      a4 = v313;
      v100 = v290;
      goto LABEL_319;
    }
  }

  v277 = 0;
LABEL_55:
  v35 = [v6 objectForKeyedSubscript:@"flowTasksStarted"];
  v276 = v35;
  if (v35)
  {
    v36 = v35;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v273 = v36;
        goto LABEL_58;
      }

      if (v314)
      {
        v148 = v22;
        v149 = objc_alloc(MEMORY[0x1E696ABC0]);
        v150 = *MEMORY[0x1E698F240];
        v361 = *MEMORY[0x1E696A578];
        v274 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"flowTasksStarted"];
        v362 = v274;
        v151 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v362 forKeys:&v361 count:1];
        v152 = v149;
        v22 = v148;
        v275 = v151;
        v147 = 0;
        v63 = 0;
        *v314 = [v152 initWithDomain:v150 code:2 userInfo:?];
        a4 = v313;
        v100 = v290;
        goto LABEL_317;
      }

      v147 = 0;
      v63 = 0;
LABEL_237:
      a4 = v313;
      v100 = v290;
      goto LABEL_318;
    }
  }

  v273 = 0;
LABEL_58:
  v37 = [v6 objectForKeyedSubscript:@"flowTasksCompleted"];
  v275 = v37;
  if (v37 && (v38 = v37, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!v314)
      {
        v274 = 0;
        v63 = 0;
        a4 = v313;
        v100 = v290;
        v147 = v273;
        goto LABEL_317;
      }

      v153 = v22;
      v154 = objc_alloc(MEMORY[0x1E696ABC0]);
      v155 = *MEMORY[0x1E698F240];
      v359 = *MEMORY[0x1E696A578];
      v271 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"flowTasksCompleted"];
      v360 = v271;
      v156 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v360 forKeys:&v359 count:1];
      v157 = v154;
      v22 = v153;
      v272 = v156;
      v274 = 0;
      v63 = 0;
      *v314 = [v157 initWithDomain:v155 code:2 userInfo:?];
      goto LABEL_249;
    }

    v274 = v38;
  }

  else
  {
    v274 = 0;
  }

  v39 = [v6 objectForKeyedSubscript:@"reliabilityRequestCount"];
  v272 = v39;
  if (v39)
  {
    v40 = v39;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v271 = v40;
        goto LABEL_64;
      }

      if (v314)
      {
        v158 = v22;
        v159 = objc_alloc(MEMORY[0x1E696ABC0]);
        v160 = *MEMORY[0x1E698F240];
        v357 = *MEMORY[0x1E696A578];
        v269 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"reliabilityRequestCount"];
        v358 = v269;
        v161 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v358 forKeys:&v357 count:1];
        v162 = v159;
        v22 = v158;
        v270 = v161;
        v271 = 0;
        v63 = 0;
        *v314 = [v162 initWithDomain:v160 code:2 userInfo:?];
        goto LABEL_271;
      }

      v271 = 0;
      v63 = 0;
LABEL_249:
      a4 = v313;
      v100 = v290;
      v147 = v273;
      goto LABEL_316;
    }
  }

  v271 = 0;
LABEL_64:
  v41 = [v6 objectForKeyedSubscript:@"reliabilityTurnCount"];
  v270 = v41;
  if (v41)
  {
    v42 = v41;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v269 = v42;
        goto LABEL_67;
      }

      if (v314)
      {
        v163 = v22;
        v164 = objc_alloc(MEMORY[0x1E696ABC0]);
        v165 = *MEMORY[0x1E698F240];
        v355 = *MEMORY[0x1E696A578];
        v267 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"reliabilityTurnCount"];
        v356 = v267;
        v166 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v356 forKeys:&v355 count:1];
        v167 = v164;
        v22 = v163;
        v268 = v166;
        v269 = 0;
        v63 = 0;
        *v314 = [v167 initWithDomain:v165 code:2 userInfo:?];
        goto LABEL_275;
      }

      v269 = 0;
      v63 = 0;
LABEL_271:
      a4 = v313;
      v100 = v290;
      v147 = v273;
      goto LABEL_315;
    }
  }

  v269 = 0;
LABEL_67:
  v43 = [v6 objectForKeyedSubscript:@"clientErrorCount"];
  v268 = v43;
  if (v43)
  {
    v44 = v43;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v267 = v44;
        goto LABEL_70;
      }

      if (v314)
      {
        v168 = v22;
        v169 = objc_alloc(MEMORY[0x1E696ABC0]);
        v170 = *MEMORY[0x1E698F240];
        v353 = *MEMORY[0x1E696A578];
        v263 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"clientErrorCount"];
        v354 = v263;
        v171 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v354 forKeys:&v353 count:1];
        v172 = v169;
        v22 = v168;
        v264 = v171;
        v267 = 0;
        v63 = 0;
        *v314 = [v172 initWithDomain:v170 code:2 userInfo:?];
        goto LABEL_284;
      }

      v267 = 0;
      v63 = 0;
LABEL_275:
      a4 = v313;
      v100 = v290;
      v147 = v273;
      goto LABEL_314;
    }
  }

  v267 = 0;
LABEL_70:
  v45 = [v6 objectForKeyedSubscript:@"undesiredResponseCount"];
  v264 = v45;
  if (v45)
  {
    v46 = v45;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v263 = v46;
        goto LABEL_73;
      }

      if (v314)
      {
        v173 = v22;
        v174 = objc_alloc(MEMORY[0x1E696ABC0]);
        v175 = *MEMORY[0x1E698F240];
        v351 = *MEMORY[0x1E696A578];
        v261 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"undesiredResponseCount"];
        v352 = v261;
        v176 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v352 forKeys:&v351 count:1];
        v177 = v174;
        v22 = v173;
        v262 = v176;
        v263 = 0;
        v63 = 0;
        *v314 = [v177 initWithDomain:v175 code:2 userInfo:?];
        goto LABEL_289;
      }

      v263 = 0;
      v63 = 0;
LABEL_284:
      a4 = v313;
      v100 = v290;
      v147 = v273;
      goto LABEL_313;
    }
  }

  v263 = 0;
LABEL_73:
  v47 = [v6 objectForKeyedSubscript:@"fatalResponseCount"];
  v262 = v47;
  if (v47)
  {
    v48 = v47;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v261 = v48;
        goto LABEL_76;
      }

      if (v314)
      {
        v178 = v22;
        v179 = objc_alloc(MEMORY[0x1E696ABC0]);
        v180 = *MEMORY[0x1E698F240];
        v349 = *MEMORY[0x1E696A578];
        v259 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"fatalResponseCount"];
        v350 = v259;
        v181 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v350 forKeys:&v349 count:1];
        v182 = v179;
        v22 = v178;
        v258 = v181;
        v261 = 0;
        v63 = 0;
        *v314 = [v182 initWithDomain:v180 code:2 userInfo:?];
        goto LABEL_293;
      }

      v261 = 0;
      v63 = 0;
LABEL_289:
      a4 = v313;
      v100 = v290;
      v147 = v273;
      goto LABEL_312;
    }
  }

  v261 = 0;
LABEL_76:
  v49 = [v6 objectForKeyedSubscript:@"failureResponseCount"];
  v258 = v49;
  if (v49)
  {
    v50 = v49;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v259 = v50;
        goto LABEL_79;
      }

      if (v314)
      {
        v183 = v22;
        v184 = objc_alloc(MEMORY[0x1E696ABC0]);
        v185 = *MEMORY[0x1E698F240];
        v347 = *MEMORY[0x1E696A578];
        v257 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"failureResponseCount"];
        v348 = v257;
        v186 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v348 forKeys:&v347 count:1];
        v187 = v184;
        v22 = v183;
        v256 = v186;
        v259 = 0;
        v63 = 0;
        *v314 = [v187 initWithDomain:v185 code:2 userInfo:?];
        goto LABEL_298;
      }

      v259 = 0;
      v63 = 0;
LABEL_293:
      a4 = v313;
      v100 = v290;
      v147 = v273;
      goto LABEL_311;
    }
  }

  v259 = 0;
LABEL_79:
  v51 = [v6 objectForKeyedSubscript:@"siriUnavailableResponseCount"];
  v256 = v51;
  if (v51)
  {
    v52 = v51;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v257 = v52;
        goto LABEL_82;
      }

      if (v314)
      {
        v204 = v22;
        v205 = objc_alloc(MEMORY[0x1E696ABC0]);
        v206 = *MEMORY[0x1E698F240];
        v345 = *MEMORY[0x1E696A578];
        v207 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"siriUnavailableResponseCount"];
        v346 = v207;
        v208 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v346 forKeys:&v345 count:1];
        v209 = v205;
        v22 = v204;
        v255 = v208;
        v257 = 0;
        v63 = 0;
        *v314 = [v209 initWithDomain:v206 code:2 userInfo:?];
        goto LABEL_341;
      }

      v257 = 0;
      v63 = 0;
LABEL_298:
      a4 = v313;
      v100 = v290;
      v147 = v273;
      goto LABEL_310;
    }
  }

  v257 = 0;
LABEL_82:
  v53 = [v6 objectForKeyedSubscript:@"asrTurnCount"];
  v255 = v53;
  if (v53)
  {
    v54 = v53;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v251 = v54;
        goto LABEL_85;
      }

      if (v314)
      {
        v210 = v22;
        v211 = objc_alloc(MEMORY[0x1E696ABC0]);
        v212 = *MEMORY[0x1E698F240];
        v343 = *MEMORY[0x1E696A578];
        v254 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"asrTurnCount"];
        v344 = v254;
        v213 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v344 forKeys:&v343 count:1];
        v214 = v211;
        v22 = v210;
        v253 = v213;
        v207 = 0;
        v63 = 0;
        *v314 = [v214 initWithDomain:v212 code:2 userInfo:?];
        a4 = v313;
        v100 = v290;
        v147 = v273;
        goto LABEL_308;
      }

      v207 = 0;
      v63 = 0;
LABEL_341:
      a4 = v313;
      v100 = v290;
      v147 = v273;
      goto LABEL_309;
    }
  }

  v251 = 0;
LABEL_85:
  v55 = [v6 objectForKeyedSubscript:@"siriResponseId"];
  v283 = v22;
  v253 = v55;
  if (v55 && (v56 = v55, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!v314)
      {
        v254 = 0;
        v63 = 0;
        a4 = v313;
        v100 = v290;
        v147 = v273;
        v207 = v251;
        goto LABEL_308;
      }

      v221 = objc_alloc(MEMORY[0x1E696ABC0]);
      v222 = *MEMORY[0x1E698F240];
      v341 = *MEMORY[0x1E696A578];
      v252 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"siriResponseId"];
      v342 = v252;
      v250 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v342 forKeys:&v341 count:1];
      v254 = 0;
      v63 = 0;
      *v314 = [v221 initWithDomain:v222 code:2 userInfo:?];
      a4 = v313;
      goto LABEL_346;
    }

    v254 = v56;
  }

  else
  {
    v254 = 0;
  }

  v57 = [v6 objectForKeyedSubscript:@"responseCategory"];
  v250 = v57;
  if (!v57 || (v58 = v57, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v252 = 0;
    goto LABEL_91;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v314)
    {
      v224 = v22;
      v225 = objc_alloc(MEMORY[0x1E696ABC0]);
      v226 = *MEMORY[0x1E698F240];
      v339 = *MEMORY[0x1E696A578];
      v249 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"responseCategory"];
      v340 = v249;
      v227 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v340 forKeys:&v339 count:1];
      v228 = v225;
      v22 = v224;
      v248 = v227;
      v252 = 0;
      v63 = 0;
      *v314 = [v228 initWithDomain:v226 code:2 userInfo:?];
      a4 = v313;
      goto LABEL_348;
    }

    v252 = 0;
    v63 = 0;
    a4 = v313;
LABEL_346:
    v100 = v290;
    v147 = v273;
    v207 = v251;
    goto LABEL_307;
  }

  v252 = v58;
LABEL_91:
  v279 = v12;
  v59 = [v6 objectForKeyedSubscript:@"isIntelligenceEngineRequest"];
  v248 = v59;
  v292 = v11;
  if (!v59)
  {
    v249 = 0;
    v61 = 0x1E695D000;
    goto LABEL_252;
  }

  v60 = v59;
  v61 = 0x1E695D000uLL;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v249 = v60;
      goto LABEL_252;
    }

    if (v314)
    {
      v230 = v22;
      v231 = objc_alloc(MEMORY[0x1E696ABC0]);
      v232 = *MEMORY[0x1E698F240];
      v337 = *MEMORY[0x1E696A578];
      obj = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isIntelligenceEngineRequest"];
      v338 = obj;
      v233 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v338 forKeys:&v337 count:1];
      v234 = v231;
      v22 = v230;
      v266 = v233;
      v249 = 0;
      v63 = 0;
      *v314 = [v234 initWithDomain:v232 code:2 userInfo:?];
      a4 = v313;
      v12 = v279;
      v100 = v290;
      v207 = v251;

      goto LABEL_305;
    }

    v249 = 0;
    v63 = 0;
    a4 = v313;
LABEL_348:
    v100 = v290;
    v147 = v273;
    v207 = v251;
    goto LABEL_306;
  }

  v249 = 0;
LABEL_252:
  v188 = [v6 objectForKeyedSubscript:@"intelligenceEngineRouting"];
  v189 = [*(v61 + 4016) null];
  v190 = [v188 isEqual:v189];

  if (v190)
  {

    v188 = 0;
  }

  else if (v188)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      obj = v188;
      if (!v314)
      {
        v63 = 0;
        a4 = v313;
        v11 = v292;
        v22 = v283;
        v100 = v290;
        v207 = v251;
        goto LABEL_305;
      }

      v235 = objc_alloc(MEMORY[0x1E696ABC0]);
      v236 = *MEMORY[0x1E698F240];
      v335 = *MEMORY[0x1E696A578];
      v265 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"intelligenceEngineRouting"];
      v336 = v265;
      v237 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v336 forKeys:&v335 count:1];
      v238 = [v235 initWithDomain:v236 code:2 userInfo:v237];
      v63 = 0;
      *v314 = v238;
      v229 = v237;
LABEL_296:
      a4 = v313;
      v11 = v292;
      v12 = v279;
      v22 = v283;
      v207 = v251;
      goto LABEL_304;
    }
  }

  v265 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v188, "count")}];
  v321 = 0u;
  v322 = 0u;
  v323 = 0u;
  v324 = 0u;
  v191 = v188;
  v192 = [v191 countByEnumeratingWithState:&v321 objects:v334 count:16];
  obj = v191;
  if (!v192)
  {
    goto LABEL_265;
  }

  v193 = v192;
  v194 = *v322;
  while (2)
  {
    for (i = 0; i != v193; ++i)
    {
      if (*v322 != v194)
      {
        objc_enumerationMutation(obj);
      }

      v196 = *(*(&v321 + 1) + 8 * i);
      v197 = *(v61 + 4016);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v215 = v314;
        if (v314)
        {
          v216 = objc_alloc(MEMORY[0x1E696ABC0]);
          v217 = *MEMORY[0x1E698F240];
          v332 = *MEMORY[0x1E696A578];
          v247 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"intelligenceEngineRouting"];
          v333 = v247;
          v218 = MEMORY[0x1E695DF20];
          v219 = &v333;
          v220 = &v332;
LABEL_282:
          v223 = [v218 dictionaryWithObjects:v219 forKeys:v220 count:1];
          v207 = v251;
          *v215 = [v216 initWithDomain:v217 code:2 userInfo:v223];

          v63 = 0;
          v315 = obj;
          a4 = v313;
          v11 = v292;
          v12 = v279;
          v22 = v283;
          goto LABEL_303;
        }

        goto LABEL_287;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v215 = v314;
        if (v314)
        {
          v216 = objc_alloc(MEMORY[0x1E696ABC0]);
          v217 = *MEMORY[0x1E698F240];
          v330 = *MEMORY[0x1E696A578];
          v247 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"intelligenceEngineRouting"];
          v331 = v247;
          v218 = MEMORY[0x1E695DF20];
          v219 = &v331;
          v220 = &v330;
          goto LABEL_282;
        }

LABEL_287:
        v63 = 0;
        v229 = obj;
        goto LABEL_296;
      }

      v198 = v196;
      [v265 addObject:v198];
    }

    v191 = obj;
    v193 = [obj countByEnumeratingWithState:&v321 objects:v334 count:16];
    if (v193)
    {
      continue;
    }

    break;
  }

LABEL_265:

  v199 = [v6 objectForKeyedSubscript:@"invocationSource"];
  v247 = v199;
  if (v199)
  {
    v200 = v199;
    v201 = *(v61 + 4016);
    objc_opt_class();
    v22 = v283;
    v202 = v257;
    if (objc_opt_isKindOfClass())
    {
      v199 = 0;
      a4 = v313;
      v11 = v292;
      v203 = v311;
      goto LABEL_300;
    }

    objc_opt_class();
    a4 = v313;
    v207 = v251;
    if (objc_opt_isKindOfClass())
    {
      v199 = v200;
      v11 = v292;
      v203 = v311;
      goto LABEL_301;
    }

    if (v314)
    {
      v241 = objc_alloc(MEMORY[0x1E696ABC0]);
      v242 = *MEMORY[0x1E698F240];
      v328 = *MEMORY[0x1E696A578];
      v243 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"invocationSource"];
      v329 = v243;
      v244 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v329 forKeys:&v328 count:1];
      v245 = v241;
      v22 = v283;
      v246 = v242;
      a4 = v313;
      *v314 = [v245 initWithDomain:v246 code:2 userInfo:v244];

      v207 = v251;
    }

    v315 = 0;
    v63 = 0;
    v11 = v292;
  }

  else
  {
    v203 = v311;
    a4 = v313;
    v11 = v292;
    v22 = v283;
    v202 = v257;
LABEL_300:
    v207 = v251;
LABEL_301:
    v315 = v199;
    v257 = v202;
    v63 = [(BMSiriOnDeviceDigestUsageMetrics *)v317 initWithEventMetadata:v319 deviceType:v203 programCode:v318 productId:a4 systemBuild:v316 dataSharingOptInStatus:v312 viewInterface:v310 audioInterfaceVendorId:v307 audioInterfaceProductId:v305 asrLocation:v296 nlLocation:v294 siriInputLocale:v290 dictationLocale:v288 subDomain:v289 totalTurnCount:v285 validTurnCount:v282 siriTasksStarted:v280 siriTasksCompleted:v277 flowTasksStarted:v273 flowTasksCompleted:v274 reliabilityRequestCount:v271 reliabilityTurnCount:v269 clientErrorCount:v267 undesiredResponseCount:v263 fatalResponseCount:v261 failureResponseCount:v259 siriUnavailableResponseCount:v202 asrTurnCount:v207 siriResponseId:v254 responseCategory:v252 isIntelligenceEngineRequest:v249 intelligenceEngineRouting:v265 invocationSource:v199];
    v317 = v63;
  }

  v12 = v279;
LABEL_303:

  v229 = v315;
LABEL_304:

  v100 = v290;
LABEL_305:

  v147 = v273;
LABEL_306:

LABEL_307:
LABEL_308:

LABEL_309:
LABEL_310:

LABEL_311:
LABEL_312:

LABEL_313:
LABEL_314:

LABEL_315:
LABEL_316:

LABEL_317:
LABEL_318:

LABEL_319:
LABEL_320:

LABEL_321:
LABEL_322:

LABEL_323:
LABEL_324:

LABEL_325:
LABEL_326:

LABEL_327:
  v9 = v293;
  v7 = v304;
  v13 = v309;
LABEL_328:

LABEL_329:
LABEL_330:

LABEL_331:
LABEL_332:

  v8 = v311;
LABEL_333:

LABEL_334:
LABEL_335:

  self = v317;
LABEL_336:

LABEL_337:
LABEL_338:

LABEL_339:
  v239 = *MEMORY[0x1E69E9840];
  return v63;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriOnDeviceDigestUsageMetrics *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_eventMetadata)
  {
    v38 = 0;
    PBDataWriterPlaceMark();
    [(BMSiriOnDeviceDigestUsageMetricsEventMetadata *)self->_eventMetadata writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_deviceType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasProgramCode)
  {
    programCode = self->_programCode;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasProductId)
  {
    productId = self->_productId;
    PBDataWriterWriteInt32Field();
  }

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
    v38 = 0;
    PBDataWriterPlaceMark();
    [(BMSiriOnDeviceDigestUsageMetricsISOLocale *)self->_siriInputLocale writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_dictationLocale)
  {
    v38 = 0;
    PBDataWriterPlaceMark();
    [(BMSiriOnDeviceDigestUsageMetricsISOLocale *)self->_dictationLocale writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_subDomain)
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

  if (self->_hasAsrTurnCount)
  {
    asrTurnCount = self->_asrTurnCount;
    PBDataWriterWriteUint32Field();
  }

  if (self->_siriResponseId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasResponseCategory)
  {
    responseCategory = self->_responseCategory;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasIsIntelligenceEngineRequest)
  {
    isIntelligenceEngineRequest = self->_isIntelligenceEngineRequest;
    PBDataWriterWriteBOOLField();
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v27 = self->_intelligenceEngineRouting;
  v28 = [(NSArray *)v27 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v35;
    do
    {
      v31 = 0;
      do
      {
        if (*v35 != v30)
        {
          objc_enumerationMutation(v27);
        }

        [*(*(&v34 + 1) + 8 * v31) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v31;
      }

      while (v29 != v31);
      v29 = [(NSArray *)v27 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v29);
  }

  if (self->_hasInvocationSource)
  {
    invocationSource = self->_invocationSource;
    PBDataWriterWriteUint32Field();
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v178.receiver = self;
  v178.super_class = BMSiriOnDeviceDigestUsageMetrics;
  v5 = [(BMEventBase *)&v178 init];
  if (!v5)
  {
LABEL_353:
    v176 = v5;
    goto LABEL_354;
  }

  v6 = objc_opt_new();
  while (2)
  {
    v7 = [v4 position];
    if (v7 >= [v4 length] || (objc_msgSend(v4, "hasError") & 1) != 0)
    {
      goto LABEL_351;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      LOBYTE(v179) = 0;
      v11 = [v4 position] + 1;
      if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
      {
        v13 = [v4 data];
        [v13 getBytes:&v179 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
      }

      v10 |= (v179 & 0x7F) << v8;
      if ((v179 & 0x80) == 0)
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
LABEL_351:
      v173 = [v6 copy];
      intelligenceEngineRouting = v5->_intelligenceEngineRouting;
      v5->_intelligenceEngineRouting = v173;

      v175 = [v4 hasError];
      if (v175)
      {
        goto LABEL_352;
      }

      goto LABEL_353;
    }

    switch((v15 >> 3))
    {
      case 1u:
        v179 = 0;
        v180 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_355;
        }

        v16 = [[BMSiriOnDeviceDigestUsageMetricsEventMetadata alloc] initByReadFrom:v4];
        if (!v16)
        {
          goto LABEL_355;
        }

        v17 = 136;
        goto LABEL_57;
      case 2u:
        v37 = PBReaderReadString();
        v38 = 144;
        goto LABEL_234;
      case 3u:
        v58 = 0;
        v59 = 0;
        v60 = 0;
        v5->_hasProgramCode = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v61 = [v4 position] + 1;
          if (v61 >= [v4 position] && (v62 = objc_msgSend(v4, "position") + 1, v62 <= objc_msgSend(v4, "length")))
          {
            v63 = [v4 data];
            [v63 getBytes:&v179 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v60 |= (v179 & 0x7F) << v58;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v14 = v59++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_282;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v60;
        }

LABEL_282:
        v170 = 44;
        goto LABEL_350;
      case 4u:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        v5->_hasProductId = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v73 = [v4 position] + 1;
          if (v73 >= [v4 position] && (v74 = objc_msgSend(v4, "position") + 1, v74 <= objc_msgSend(v4, "length")))
          {
            v75 = [v4 data];
            [v75 getBytes:&v179 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v72 |= (v179 & 0x7F) << v70;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v14 = v71++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_290;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v72;
        }

LABEL_290:
        v170 = 48;
        goto LABEL_350;
      case 5u:
        v37 = PBReaderReadString();
        v38 = 152;
        goto LABEL_234;
      case 6u:
        v96 = 0;
        v97 = 0;
        v98 = 0;
        v5->_hasDataSharingOptInStatus = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v99 = [v4 position] + 1;
          if (v99 >= [v4 position] && (v100 = objc_msgSend(v4, "position") + 1, v100 <= objc_msgSend(v4, "length")))
          {
            v101 = [v4 data];
            [v101 getBytes:&v179 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v98 |= (v179 & 0x7F) << v96;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v96 += 7;
          v14 = v97++ >= 9;
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
          v24 = v98;
        }

LABEL_307:
        v170 = 52;
        goto LABEL_350;
      case 7u:
        v108 = 0;
        v109 = 0;
        v110 = 0;
        v5->_hasViewInterface = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v111 = [v4 position] + 1;
          if (v111 >= [v4 position] && (v112 = objc_msgSend(v4, "position") + 1, v112 <= objc_msgSend(v4, "length")))
          {
            v113 = [v4 data];
            [v113 getBytes:&v179 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v110 |= (v179 & 0x7F) << v108;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v108 += 7;
          v14 = v109++ >= 9;
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
          v24 = v110;
        }

LABEL_315:
        v170 = 56;
        goto LABEL_350;
      case 8u:
        v37 = PBReaderReadString();
        v38 = 160;
        goto LABEL_234;
      case 9u:
        v37 = PBReaderReadString();
        v38 = 168;
        goto LABEL_234;
      case 0xAu:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v5->_hasAsrLocation = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v43 = [v4 position] + 1;
          if (v43 >= [v4 position] && (v44 = objc_msgSend(v4, "position") + 1, v44 <= objc_msgSend(v4, "length")))
          {
            v45 = [v4 data];
            [v45 getBytes:&v179 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v42 |= (v179 & 0x7F) << v40;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v14 = v41++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_270;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v42;
        }

LABEL_270:
        v170 = 60;
        goto LABEL_350;
      case 0xBu:
        v120 = 0;
        v121 = 0;
        v122 = 0;
        v5->_hasNlLocation = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v123 = [v4 position] + 1;
          if (v123 >= [v4 position] && (v124 = objc_msgSend(v4, "position") + 1, v124 <= objc_msgSend(v4, "length")))
          {
            v125 = [v4 data];
            [v125 getBytes:&v179 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v122 |= (v179 & 0x7F) << v120;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v120 += 7;
          v14 = v121++ >= 9;
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
          v24 = v122;
        }

LABEL_323:
        v170 = 64;
        goto LABEL_350;
      case 0xCu:
        v179 = 0;
        v180 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_355;
        }

        v16 = [[BMSiriOnDeviceDigestUsageMetricsISOLocale alloc] initByReadFrom:v4];
        if (!v16)
        {
          goto LABEL_355;
        }

        v17 = 176;
        goto LABEL_57;
      case 0xDu:
        v179 = 0;
        v180 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_355;
        }

        v16 = [[BMSiriOnDeviceDigestUsageMetricsISOLocale alloc] initByReadFrom:v4];
        if (!v16)
        {
          goto LABEL_355;
        }

        v17 = 184;
LABEL_57:
        v39 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;

        PBReaderRecallMark();
        continue;
      case 0xEu:
        v37 = PBReaderReadString();
        v38 = 192;
        goto LABEL_234;
      case 0xFu:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v5->_hasTotalTurnCount = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v34 = [v4 position] + 1;
          if (v34 >= [v4 position] && (v35 = objc_msgSend(v4, "position") + 1, v35 <= objc_msgSend(v4, "length")))
          {
            v36 = [v4 data];
            [v36 getBytes:&v179 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v33 |= (v179 & 0x7F) << v31;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v14 = v32++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_266;
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

LABEL_266:
        v170 = 68;
        goto LABEL_350;
      case 0x10u:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        v5->_hasValidTurnCount = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v67 = [v4 position] + 1;
          if (v67 >= [v4 position] && (v68 = objc_msgSend(v4, "position") + 1, v68 <= objc_msgSend(v4, "length")))
          {
            v69 = [v4 data];
            [v69 getBytes:&v179 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v66 |= (v179 & 0x7F) << v64;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v14 = v65++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_286;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v66;
        }

LABEL_286:
        v170 = 72;
        goto LABEL_350;
      case 0x11u:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v5->_hasSiriTasksStarted = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v28 = [v4 position] + 1;
          if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
          {
            v30 = [v4 data];
            [v30 getBytes:&v179 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v27 |= (v179 & 0x7F) << v25;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v14 = v26++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_262;
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

LABEL_262:
        v170 = 76;
        goto LABEL_350;
      case 0x12u:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        v5->_hasSiriTasksCompleted = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v87 = [v4 position] + 1;
          if (v87 >= [v4 position] && (v88 = objc_msgSend(v4, "position") + 1, v88 <= objc_msgSend(v4, "length")))
          {
            v89 = [v4 data];
            [v89 getBytes:&v179 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v86 |= (v179 & 0x7F) << v84;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v14 = v85++ >= 9;
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
          v24 = v86;
        }

LABEL_299:
        v170 = 80;
        goto LABEL_350;
      case 0x13u:
        v114 = 0;
        v115 = 0;
        v116 = 0;
        v5->_hasFlowTasksStarted = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v117 = [v4 position] + 1;
          if (v117 >= [v4 position] && (v118 = objc_msgSend(v4, "position") + 1, v118 <= objc_msgSend(v4, "length")))
          {
            v119 = [v4 data];
            [v119 getBytes:&v179 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v116 |= (v179 & 0x7F) << v114;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v114 += 7;
          v14 = v115++ >= 9;
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
          v24 = v116;
        }

LABEL_319:
        v170 = 84;
        goto LABEL_350;
      case 0x14u:
        v145 = 0;
        v146 = 0;
        v147 = 0;
        v5->_hasFlowTasksCompleted = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v148 = [v4 position] + 1;
          if (v148 >= [v4 position] && (v149 = objc_msgSend(v4, "position") + 1, v149 <= objc_msgSend(v4, "length")))
          {
            v150 = [v4 data];
            [v150 getBytes:&v179 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v147 |= (v179 & 0x7F) << v145;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v145 += 7;
          v14 = v146++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_337;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v147;
        }

LABEL_337:
        v170 = 88;
        goto LABEL_350;
      case 0x15u:
        v90 = 0;
        v91 = 0;
        v92 = 0;
        v5->_hasReliabilityRequestCount = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v93 = [v4 position] + 1;
          if (v93 >= [v4 position] && (v94 = objc_msgSend(v4, "position") + 1, v94 <= objc_msgSend(v4, "length")))
          {
            v95 = [v4 data];
            [v95 getBytes:&v179 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v92 |= (v179 & 0x7F) << v90;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v90 += 7;
          v14 = v91++ >= 9;
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
          v24 = v92;
        }

LABEL_303:
        v170 = 92;
        goto LABEL_350;
      case 0x16u:
        v102 = 0;
        v103 = 0;
        v104 = 0;
        v5->_hasReliabilityTurnCount = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v105 = [v4 position] + 1;
          if (v105 >= [v4 position] && (v106 = objc_msgSend(v4, "position") + 1, v106 <= objc_msgSend(v4, "length")))
          {
            v107 = [v4 data];
            [v107 getBytes:&v179 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v104 |= (v179 & 0x7F) << v102;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v102 += 7;
          v14 = v103++ >= 9;
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
          v24 = v104;
        }

LABEL_311:
        v170 = 96;
        goto LABEL_350;
      case 0x17u:
        v139 = 0;
        v140 = 0;
        v141 = 0;
        v5->_hasClientErrorCount = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v142 = [v4 position] + 1;
          if (v142 >= [v4 position] && (v143 = objc_msgSend(v4, "position") + 1, v143 <= objc_msgSend(v4, "length")))
          {
            v144 = [v4 data];
            [v144 getBytes:&v179 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v141 |= (v179 & 0x7F) << v139;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v139 += 7;
          v14 = v140++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_333;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v141;
        }

LABEL_333:
        v170 = 100;
        goto LABEL_350;
      case 0x18u:
        v151 = 0;
        v152 = 0;
        v153 = 0;
        v5->_hasUndesiredResponseCount = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v154 = [v4 position] + 1;
          if (v154 >= [v4 position] && (v155 = objc_msgSend(v4, "position") + 1, v155 <= objc_msgSend(v4, "length")))
          {
            v156 = [v4 data];
            [v156 getBytes:&v179 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v153 |= (v179 & 0x7F) << v151;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v151 += 7;
          v14 = v152++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_341;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v153;
        }

LABEL_341:
        v170 = 104;
        goto LABEL_350;
      case 0x19u:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v5->_hasFatalResponseCount = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v55 = [v4 position] + 1;
          if (v55 >= [v4 position] && (v56 = objc_msgSend(v4, "position") + 1, v56 <= objc_msgSend(v4, "length")))
          {
            v57 = [v4 data];
            [v57 getBytes:&v179 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v54 |= (v179 & 0x7F) << v52;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v14 = v53++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_278;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v54;
        }

LABEL_278:
        v170 = 108;
        goto LABEL_350;
      case 0x1Au:
        v46 = 0;
        v47 = 0;
        v48 = 0;
        v5->_hasFailureResponseCount = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v49 = [v4 position] + 1;
          if (v49 >= [v4 position] && (v50 = objc_msgSend(v4, "position") + 1, v50 <= objc_msgSend(v4, "length")))
          {
            v51 = [v4 data];
            [v51 getBytes:&v179 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v48 |= (v179 & 0x7F) << v46;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v14 = v47++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_274;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v48;
        }

LABEL_274:
        v170 = 112;
        goto LABEL_350;
      case 0x1Bu:
        v164 = 0;
        v165 = 0;
        v166 = 0;
        v5->_hasSiriUnavailableResponseCount = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v167 = [v4 position] + 1;
          if (v167 >= [v4 position] && (v168 = objc_msgSend(v4, "position") + 1, v168 <= objc_msgSend(v4, "length")))
          {
            v169 = [v4 data];
            [v169 getBytes:&v179 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v166 |= (v179 & 0x7F) << v164;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v164 += 7;
          v14 = v165++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_349;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v166;
        }

LABEL_349:
        v170 = 116;
        goto LABEL_350;
      case 0x1Cu:
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v5->_hasAsrTurnCount = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v21 = [v4 position] + 1;
          if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
          {
            v23 = [v4 data];
            [v23 getBytes:&v179 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v20 |= (v179 & 0x7F) << v18;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v14 = v19++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_258;
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

LABEL_258:
        v170 = 120;
        goto LABEL_350;
      case 0x1Du:
        v37 = PBReaderReadString();
        v38 = 200;
LABEL_234:
        v157 = *(&v5->super.super.isa + v38);
        *(&v5->super.super.isa + v38) = v37;

        continue;
      case 0x1Eu:
        v158 = 0;
        v159 = 0;
        v160 = 0;
        v5->_hasResponseCategory = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v161 = [v4 position] + 1;
          if (v161 >= [v4 position] && (v162 = objc_msgSend(v4, "position") + 1, v162 <= objc_msgSend(v4, "length")))
          {
            v163 = [v4 data];
            [v163 getBytes:&v179 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v160 |= (v179 & 0x7F) << v158;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v158 += 7;
          v14 = v159++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_345;
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

LABEL_345:
        v170 = 124;
        goto LABEL_350;
      case 0x1Fu:
        v126 = 0;
        v127 = 0;
        v128 = 0;
        v5->_hasIsIntelligenceEngineRequest = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v129 = [v4 position] + 1;
          if (v129 >= [v4 position] && (v130 = objc_msgSend(v4, "position") + 1, v130 <= objc_msgSend(v4, "length")))
          {
            v131 = [v4 data];
            [v131 getBytes:&v179 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v128 |= (v179 & 0x7F) << v126;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v126 += 7;
          v14 = v127++ >= 9;
          if (v14)
          {
            LOBYTE(v132) = 0;
            goto LABEL_325;
          }
        }

        v132 = (v128 != 0) & ~[v4 hasError];
LABEL_325:
        v5->_isIntelligenceEngineRequest = v132;
        continue;
      case 0x20u:
        v76 = 0;
        v77 = 0;
        v78 = 0;
        v79 = MEMORY[0x1E696AD98];
        while (1)
        {
          LOBYTE(v179) = 0;
          v80 = [v4 position] + 1;
          if (v80 >= [v4 position] && (v81 = objc_msgSend(v4, "position") + 1, v81 <= objc_msgSend(v4, "length")))
          {
            v82 = [v4 data];
            [v82 getBytes:&v179 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v78 |= (v179 & 0x7F) << v76;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v14 = v77++ >= 9;
          if (v14)
          {
            v83 = 0;
            goto LABEL_294;
          }
        }

        if ([v4 hasError])
        {
          v83 = 0;
        }

        else
        {
          v83 = v78;
        }

LABEL_294:
        v171 = [v79 numberWithUnsignedInt:v83];
        if (v171)
        {
          v172 = v171;
          [v6 addObject:v171];

          continue;
        }

LABEL_355:

LABEL_352:
        v176 = 0;
LABEL_354:

        return v176;
      case 0x21u:
        v133 = 0;
        v134 = 0;
        v135 = 0;
        v5->_hasInvocationSource = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v136 = [v4 position] + 1;
          if (v136 >= [v4 position] && (v137 = objc_msgSend(v4, "position") + 1, v137 <= objc_msgSend(v4, "length")))
          {
            v138 = [v4 data];
            [v138 getBytes:&v179 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v135 |= (v179 & 0x7F) << v133;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v133 += 7;
          v14 = v134++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_329;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v135;
        }

LABEL_329:
        v170 = 128;
LABEL_350:
        *(&v5->super.super.isa + v170) = v24;
        continue;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

        goto LABEL_355;
    }
  }
}

- (NSString)description
{
  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  v38 = [(BMSiriOnDeviceDigestUsageMetrics *)self eventMetadata];
  v35 = [(BMSiriOnDeviceDigestUsageMetrics *)self deviceType];
  v37 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestUsageMetrics programCode](self, "programCode")}];
  v33 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestUsageMetrics productId](self, "productId")}];
  v36 = [(BMSiriOnDeviceDigestUsageMetrics *)self systemBuild];
  v32 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestUsageMetrics dataSharingOptInStatus](self, "dataSharingOptInStatus")}];
  v34 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestUsageMetrics viewInterface](self, "viewInterface")}];
  v30 = [(BMSiriOnDeviceDigestUsageMetrics *)self audioInterfaceVendorId];
  v31 = [(BMSiriOnDeviceDigestUsageMetrics *)self audioInterfaceProductId];
  v28 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestUsageMetrics asrLocation](self, "asrLocation")}];
  v29 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestUsageMetrics nlLocation](self, "nlLocation")}];
  v27 = [(BMSiriOnDeviceDigestUsageMetrics *)self siriInputLocale];
  v25 = [(BMSiriOnDeviceDigestUsageMetrics *)self dictationLocale];
  v26 = [(BMSiriOnDeviceDigestUsageMetrics *)self subDomain];
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics totalTurnCount](self, "totalTurnCount")}];
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics validTurnCount](self, "validTurnCount")}];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics siriTasksStarted](self, "siriTasksStarted")}];
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics siriTasksCompleted](self, "siriTasksCompleted")}];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics flowTasksStarted](self, "flowTasksStarted")}];
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics flowTasksCompleted](self, "flowTasksCompleted")}];
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics reliabilityRequestCount](self, "reliabilityRequestCount")}];
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics reliabilityTurnCount](self, "reliabilityTurnCount")}];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics clientErrorCount](self, "clientErrorCount")}];
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics undesiredResponseCount](self, "undesiredResponseCount")}];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics fatalResponseCount](self, "fatalResponseCount")}];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics failureResponseCount](self, "failureResponseCount")}];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics siriUnavailableResponseCount](self, "siriUnavailableResponseCount")}];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics asrTurnCount](self, "asrTurnCount")}];
  v4 = [(BMSiriOnDeviceDigestUsageMetrics *)self siriResponseId];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics responseCategory](self, "responseCategory")}];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriOnDeviceDigestUsageMetrics isIntelligenceEngineRequest](self, "isIntelligenceEngineRequest")}];
  v7 = [(BMSiriOnDeviceDigestUsageMetrics *)self intelligenceEngineRouting];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics invocationSource](self, "invocationSource")}];
  v18 = [v17 initWithFormat:@"BMSiriOnDeviceDigestUsageMetrics with eventMetadata: %@, deviceType: %@, programCode: %@, productId: %@, systemBuild: %@, dataSharingOptInStatus: %@, viewInterface: %@, audioInterfaceVendorId: %@, audioInterfaceProductId: %@, asrLocation: %@, nlLocation: %@, siriInputLocale: %@, dictationLocale: %@, subDomain: %@, totalTurnCount: %@, validTurnCount: %@, siriTasksStarted: %@, siriTasksCompleted: %@, flowTasksStarted: %@, flowTasksCompleted: %@, reliabilityRequestCount: %@, reliabilityTurnCount: %@, clientErrorCount: %@, undesiredResponseCount: %@, fatalResponseCount: %@, failureResponseCount: %@, siriUnavailableResponseCount: %@, asrTurnCount: %@, siriResponseId: %@, responseCategory: %@, isIntelligenceEngineRequest: %@, intelligenceEngineRouting: %@, invocationSource: %@", v38, v35, v37, v33, v36, v32, v34, v30, v31, v28, v29, v27, v25, v26, v16, v24, v15, v23, v14, v22, v21, v20, v13, v19, v12, v11, v10, v3, v4, v5, v6, v7, v8];

  return v18;
}

- (BMSiriOnDeviceDigestUsageMetrics)initWithEventMetadata:(id)a3 deviceType:(id)a4 programCode:(id)a5 productId:(id)a6 systemBuild:(id)a7 dataSharingOptInStatus:(id)a8 viewInterface:(id)a9 audioInterfaceVendorId:(id)a10 audioInterfaceProductId:(id)a11 asrLocation:(id)a12 nlLocation:(id)a13 siriInputLocale:(id)a14 dictationLocale:(id)a15 subDomain:(id)a16 totalTurnCount:(id)a17 validTurnCount:(id)a18 siriTasksStarted:(id)a19 siriTasksCompleted:(id)a20 flowTasksStarted:(id)a21 flowTasksCompleted:(id)a22 reliabilityRequestCount:(id)a23 reliabilityTurnCount:(id)a24 clientErrorCount:(id)a25 undesiredResponseCount:(id)a26 fatalResponseCount:(id)a27 failureResponseCount:(id)a28 siriUnavailableResponseCount:(id)a29 asrTurnCount:(id)a30 siriResponseId:(id)a31 responseCategory:(id)a32 isIntelligenceEngineRequest:(id)a33 intelligenceEngineRouting:(id)a34 invocationSource:(id)a35
{
  v78 = a3;
  v67 = a4;
  v77 = a4;
  v39 = a5;
  v92 = a6;
  v76 = a7;
  v99 = a8;
  v89 = a9;
  v75 = a10;
  v74 = a11;
  v96 = a12;
  v97 = a13;
  v73 = a14;
  v72 = a15;
  v71 = a16;
  v95 = a17;
  v94 = a18;
  v93 = a19;
  v91 = a20;
  v90 = a21;
  v88 = a22;
  v87 = a23;
  v86 = a24;
  v85 = a25;
  v84 = a26;
  v83 = a27;
  v82 = a28;
  v81 = a29;
  v80 = a30;
  v70 = a31;
  v79 = a32;
  v40 = a33;
  v69 = a34;
  v41 = a35;
  v100.receiver = self;
  v100.super_class = BMSiriOnDeviceDigestUsageMetrics;
  v42 = [(BMEventBase *)&v100 init];
  if (v42)
  {
    v42->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v42->_eventMetadata, a3);
    objc_storeStrong(&v42->_deviceType, v67);
    if (v39)
    {
      v42->_hasProgramCode = 1;
      v43 = [v39 intValue];
    }

    else
    {
      v39 = 0;
      v42->_hasProgramCode = 0;
      v43 = -1;
    }

    v42->_programCode = v43;
    if (v92)
    {
      v42->_hasProductId = 1;
      v44 = [v92 intValue];
    }

    else
    {
      v42->_hasProductId = 0;
      v44 = -1;
    }

    v42->_productId = v44;
    objc_storeStrong(&v42->_systemBuild, a7);
    if (v99)
    {
      v42->_hasDataSharingOptInStatus = 1;
      v45 = [v99 intValue];
    }

    else
    {
      v42->_hasDataSharingOptInStatus = 0;
      v45 = -1;
    }

    v42->_dataSharingOptInStatus = v45;
    if (v89)
    {
      v42->_hasViewInterface = 1;
      v46 = [v89 intValue];
    }

    else
    {
      v42->_hasViewInterface = 0;
      v46 = -1;
    }

    v42->_viewInterface = v46;
    objc_storeStrong(&v42->_audioInterfaceVendorId, a10);
    objc_storeStrong(&v42->_audioInterfaceProductId, a11);
    if (v96)
    {
      v42->_hasAsrLocation = 1;
      v47 = [v96 intValue];
    }

    else
    {
      v42->_hasAsrLocation = 0;
      v47 = -1;
    }

    v42->_asrLocation = v47;
    if (v97)
    {
      v42->_hasNlLocation = 1;
      v48 = [v97 intValue];
    }

    else
    {
      v42->_hasNlLocation = 0;
      v48 = -1;
    }

    v42->_nlLocation = v48;
    objc_storeStrong(&v42->_siriInputLocale, a14);
    objc_storeStrong(&v42->_dictationLocale, a15);
    objc_storeStrong(&v42->_subDomain, a16);
    if (v95)
    {
      v42->_hasTotalTurnCount = 1;
      v49 = [v95 unsignedIntValue];
    }

    else
    {
      v49 = 0;
      v42->_hasTotalTurnCount = 0;
    }

    v42->_totalTurnCount = v49;
    v50 = v94;
    if (v94)
    {
      v42->_hasValidTurnCount = 1;
      v50 = [v94 unsignedIntValue];
    }

    else
    {
      v42->_hasValidTurnCount = 0;
    }

    v42->_validTurnCount = v50;
    v51 = v93;
    if (v93)
    {
      v42->_hasSiriTasksStarted = 1;
      v51 = [v93 unsignedIntValue];
    }

    else
    {
      v42->_hasSiriTasksStarted = 0;
    }

    v42->_siriTasksStarted = v51;
    v52 = v91;
    if (v91)
    {
      v42->_hasSiriTasksCompleted = 1;
      v52 = [v91 unsignedIntValue];
    }

    else
    {
      v42->_hasSiriTasksCompleted = 0;
    }

    v42->_siriTasksCompleted = v52;
    v53 = v90;
    if (v90)
    {
      v42->_hasFlowTasksStarted = 1;
      v53 = [v90 unsignedIntValue];
    }

    else
    {
      v42->_hasFlowTasksStarted = 0;
    }

    v42->_flowTasksStarted = v53;
    v54 = v88;
    if (v88)
    {
      v42->_hasFlowTasksCompleted = 1;
      v54 = [v88 unsignedIntValue];
    }

    else
    {
      v42->_hasFlowTasksCompleted = 0;
    }

    v42->_flowTasksCompleted = v54;
    v55 = v87;
    if (v87)
    {
      v42->_hasReliabilityRequestCount = 1;
      v55 = [v87 unsignedIntValue];
    }

    else
    {
      v42->_hasReliabilityRequestCount = 0;
    }

    v42->_reliabilityRequestCount = v55;
    v56 = v86;
    if (v86)
    {
      v42->_hasReliabilityTurnCount = 1;
      v56 = [v86 unsignedIntValue];
    }

    else
    {
      v42->_hasReliabilityTurnCount = 0;
    }

    v42->_reliabilityTurnCount = v56;
    v57 = v85;
    if (v85)
    {
      v42->_hasClientErrorCount = 1;
      v57 = [v85 unsignedIntValue];
    }

    else
    {
      v42->_hasClientErrorCount = 0;
    }

    v42->_clientErrorCount = v57;
    v58 = v84;
    if (v84)
    {
      v42->_hasUndesiredResponseCount = 1;
      v58 = [v84 unsignedIntValue];
    }

    else
    {
      v42->_hasUndesiredResponseCount = 0;
    }

    v42->_undesiredResponseCount = v58;
    v59 = v83;
    if (v83)
    {
      v42->_hasFatalResponseCount = 1;
      v59 = [v83 unsignedIntValue];
    }

    else
    {
      v42->_hasFatalResponseCount = 0;
    }

    v42->_fatalResponseCount = v59;
    v60 = v82;
    if (v82)
    {
      v42->_hasFailureResponseCount = 1;
      v60 = [v82 unsignedIntValue];
    }

    else
    {
      v42->_hasFailureResponseCount = 0;
    }

    v42->_failureResponseCount = v60;
    v61 = v81;
    if (v81)
    {
      v42->_hasSiriUnavailableResponseCount = 1;
      v61 = [v81 unsignedIntValue];
    }

    else
    {
      v42->_hasSiriUnavailableResponseCount = 0;
    }

    v42->_siriUnavailableResponseCount = v61;
    v62 = v80;
    if (v80)
    {
      v42->_hasAsrTurnCount = 1;
      v62 = [v80 unsignedIntValue];
    }

    else
    {
      v42->_hasAsrTurnCount = 0;
    }

    v42->_asrTurnCount = v62;
    objc_storeStrong(&v42->_siriResponseId, a31);
    v63 = v79;
    if (v79)
    {
      v42->_hasResponseCategory = 1;
      v63 = [v79 unsignedIntValue];
    }

    else
    {
      v42->_hasResponseCategory = 0;
    }

    v42->_responseCategory = v63;
    if (v40)
    {
      v42->_hasIsIntelligenceEngineRequest = 1;
      v42->_isIntelligenceEngineRequest = [v40 BOOLValue];
    }

    else
    {
      v42->_hasIsIntelligenceEngineRequest = 0;
      v42->_isIntelligenceEngineRequest = 0;
    }

    objc_storeStrong(&v42->_intelligenceEngineRouting, a34);
    if (v41)
    {
      v42->_hasInvocationSource = 1;
      v64 = [v41 unsignedIntValue];
    }

    else
    {
      v64 = 0;
      v42->_hasInvocationSource = 0;
    }

    v42->_invocationSource = v64;
  }

  return v42;
}

+ (id)protoFields
{
  v38[33] = *MEMORY[0x1E69E9840];
  v37 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventMetadata" number:1 type:14 subMessageClass:objc_opt_class()];
  v38[0] = v37;
  v36 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceType" number:2 type:13 subMessageClass:0];
  v38[1] = v36;
  v35 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"programCode" number:3 type:2 subMessageClass:0];
  v38[2] = v35;
  v34 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"productId" number:4 type:2 subMessageClass:0];
  v38[3] = v34;
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"systemBuild" number:5 type:13 subMessageClass:0];
  v38[4] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dataSharingOptInStatus" number:6 type:2 subMessageClass:0];
  v38[5] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"viewInterface" number:7 type:2 subMessageClass:0];
  v38[6] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"audioInterfaceVendorId" number:8 type:13 subMessageClass:0];
  v38[7] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"audioInterfaceProductId" number:9 type:13 subMessageClass:0];
  v38[8] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"asrLocation" number:10 type:2 subMessageClass:0];
  v38[9] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nlLocation" number:11 type:2 subMessageClass:0];
  v38[10] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"siriInputLocale" number:12 type:14 subMessageClass:objc_opt_class()];
  v38[11] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dictationLocale" number:13 type:14 subMessageClass:objc_opt_class()];
  v38[12] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subDomain" number:14 type:13 subMessageClass:0];
  v38[13] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalTurnCount" number:15 type:4 subMessageClass:0];
  v38[14] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"validTurnCount" number:16 type:4 subMessageClass:0];
  v38[15] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"siriTasksStarted" number:17 type:4 subMessageClass:0];
  v38[16] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"siriTasksCompleted" number:18 type:4 subMessageClass:0];
  v38[17] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"flowTasksStarted" number:19 type:4 subMessageClass:0];
  v38[18] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"flowTasksCompleted" number:20 type:4 subMessageClass:0];
  v38[19] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"reliabilityRequestCount" number:21 type:4 subMessageClass:0];
  v38[20] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"reliabilityTurnCount" number:22 type:4 subMessageClass:0];
  v38[21] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientErrorCount" number:23 type:4 subMessageClass:0];
  v38[22] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"undesiredResponseCount" number:24 type:4 subMessageClass:0];
  v38[23] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fatalResponseCount" number:25 type:4 subMessageClass:0];
  v38[24] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"failureResponseCount" number:26 type:4 subMessageClass:0];
  v38[25] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"siriUnavailableResponseCount" number:27 type:4 subMessageClass:0];
  v38[26] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"asrTurnCount" number:28 type:4 subMessageClass:0];
  v38[27] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"siriResponseId" number:29 type:13 subMessageClass:0];
  v38[28] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"responseCategory" number:30 type:4 subMessageClass:0];
  v38[29] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isIntelligenceEngineRequest" number:31 type:12 subMessageClass:0];
  v38[30] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"intelligenceEngineRouting" number:32 type:4 subMessageClass:0];
  v38[31] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"invocationSource" number:33 type:4 subMessageClass:0];
  v38[32] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:33];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v38[33] = *MEMORY[0x1E69E9840];
  v15 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"eventMetadata_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_370];
  v37 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceType" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v36 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"programCode" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:2 convertedType:0];
  v35 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"productId" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:2 convertedType:0];
  v34 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"systemBuild" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v33 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"dataSharingOptInStatus" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:2 convertedType:0];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"viewInterface" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:2 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"audioInterfaceVendorId" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"audioInterfaceProductId" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"asrLocation" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:2 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nlLocation" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:2 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"siriInputLocale_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_372];
  v26 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"dictationLocale_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_374];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"subDomain" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalTurnCount" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:4 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"validTurnCount" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:4 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"siriTasksStarted" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:4 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"siriTasksCompleted" dataType:0 requestOnly:0 fieldNumber:18 protoDataType:4 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"flowTasksStarted" dataType:0 requestOnly:0 fieldNumber:19 protoDataType:4 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"flowTasksCompleted" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:4 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"reliabilityRequestCount" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:4 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"reliabilityTurnCount" dataType:0 requestOnly:0 fieldNumber:22 protoDataType:4 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientErrorCount" dataType:0 requestOnly:0 fieldNumber:23 protoDataType:4 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"undesiredResponseCount" dataType:0 requestOnly:0 fieldNumber:24 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fatalResponseCount" dataType:0 requestOnly:0 fieldNumber:25 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"failureResponseCount" dataType:0 requestOnly:0 fieldNumber:26 protoDataType:4 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"siriUnavailableResponseCount" dataType:0 requestOnly:0 fieldNumber:27 protoDataType:4 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"asrTurnCount" dataType:0 requestOnly:0 fieldNumber:28 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"siriResponseId" dataType:2 requestOnly:0 fieldNumber:29 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"responseCategory" dataType:0 requestOnly:0 fieldNumber:30 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isIntelligenceEngineRequest" dataType:0 requestOnly:0 fieldNumber:31 protoDataType:12 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"intelligenceEngineRouting_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_376];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"invocationSource" dataType:0 requestOnly:0 fieldNumber:33 protoDataType:4 convertedType:0];
  v38[0] = v15;
  v38[1] = v37;
  v38[2] = v36;
  v38[3] = v35;
  v38[4] = v34;
  v38[5] = v33;
  v38[6] = v32;
  v38[7] = v31;
  v38[8] = v30;
  v38[9] = v29;
  v38[10] = v28;
  v38[11] = v27;
  v38[12] = v26;
  v38[13] = v25;
  v38[14] = v24;
  v38[15] = v23;
  v38[16] = v22;
  v38[17] = v21;
  v38[18] = v20;
  v38[19] = v19;
  v38[20] = v18;
  v38[21] = v17;
  v38[22] = v16;
  v38[23] = v2;
  v38[24] = v3;
  v38[25] = v4;
  v38[26] = v14;
  v38[27] = v13;
  v38[28] = v5;
  v38[29] = v6;
  v38[30] = v7;
  v38[31] = v12;
  v38[32] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:33];

  v9 = *MEMORY[0x1E69E9840];

  return v11;
}

id __43__BMSiriOnDeviceDigestUsageMetrics_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _intelligenceEngineRoutingJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __43__BMSiriOnDeviceDigestUsageMetrics_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 dictationLocale];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __43__BMSiriOnDeviceDigestUsageMetrics_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 siriInputLocale];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __43__BMSiriOnDeviceDigestUsageMetrics_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 eventMetadata];
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

    v8 = [[BMSiriOnDeviceDigestUsageMetrics alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[10] = 0;
    }
  }

  return v4;
}

@end