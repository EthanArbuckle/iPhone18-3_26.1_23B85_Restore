@interface BMSiriScorecardMetrics
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriScorecardMetrics)initWithEventMetadata:(id)metadata deviceType:(id)type programCode:(id)code productId:(id)id systemBuild:(id)build dataSharingOptInStatus:(id)status viewInterface:(id)interface audioInterfaceVendorId:(id)self0 audioInterfaceProductId:(id)self1 asrLocation:(id)self2 nlLocation:(id)self3 siriInputLocale:(id)self4 dictationLocale:(id)self5 subDomain:(id)self6 totalTurnCount:(id)self7 validTurnCount:(id)self8 siriTasksStarted:(id)self9 siriTasksCompleted:(id)completed flowTasksStarted:(id)tasksStarted flowTasksCompleted:(id)tasksCompleted reliabilityRequestCount:(id)requestCount reliabilityTurnCount:(id)reliabilityTurnCount clientErrorCount:(id)errorCount undesiredResponseCount:(id)responseCount fatalResponseCount:(id)fatalResponseCount failureResponseCount:(id)failureResponseCount siriUnavailableResponseCount:(id)unavailableResponseCount siriResponseId:(id)metadata0 responseCategory:(id)metadata1 isIntelligenceEngineRequest:(id)metadata2 intelligenceEngineRouting:(id)metadata3 invocationSource:(id)metadata4;
- (BMSiriScorecardMetrics)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_intelligenceEngineRoutingJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriScorecardMetrics

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    eventMetadata = [(BMSiriScorecardMetrics *)self eventMetadata];
    eventMetadata2 = [v5 eventMetadata];
    v8 = eventMetadata2;
    if (eventMetadata == eventMetadata2)
    {
    }

    else
    {
      eventMetadata3 = [(BMSiriScorecardMetrics *)self eventMetadata];
      eventMetadata4 = [v5 eventMetadata];
      v11 = [eventMetadata3 isEqual:eventMetadata4];

      if (!v11)
      {
        goto LABEL_153;
      }
    }

    deviceType = [(BMSiriScorecardMetrics *)self deviceType];
    deviceType2 = [v5 deviceType];
    v15 = deviceType2;
    if (deviceType == deviceType2)
    {
    }

    else
    {
      deviceType3 = [(BMSiriScorecardMetrics *)self deviceType];
      deviceType4 = [v5 deviceType];
      v18 = [deviceType3 isEqual:deviceType4];

      if (!v18)
      {
        goto LABEL_153;
      }
    }

    if (-[BMSiriScorecardMetrics hasProgramCode](self, "hasProgramCode") || [v5 hasProgramCode])
    {
      if (![(BMSiriScorecardMetrics *)self hasProgramCode])
      {
        goto LABEL_153;
      }

      if (![v5 hasProgramCode])
      {
        goto LABEL_153;
      }

      programCode = [(BMSiriScorecardMetrics *)self programCode];
      if (programCode != [v5 programCode])
      {
        goto LABEL_153;
      }
    }

    if (-[BMSiriScorecardMetrics hasProductId](self, "hasProductId") || [v5 hasProductId])
    {
      if (![(BMSiriScorecardMetrics *)self hasProductId])
      {
        goto LABEL_153;
      }

      if (![v5 hasProductId])
      {
        goto LABEL_153;
      }

      productId = [(BMSiriScorecardMetrics *)self productId];
      if (productId != [v5 productId])
      {
        goto LABEL_153;
      }
    }

    systemBuild = [(BMSiriScorecardMetrics *)self systemBuild];
    systemBuild2 = [v5 systemBuild];
    v23 = systemBuild2;
    if (systemBuild == systemBuild2)
    {
    }

    else
    {
      systemBuild3 = [(BMSiriScorecardMetrics *)self systemBuild];
      systemBuild4 = [v5 systemBuild];
      v26 = [systemBuild3 isEqual:systemBuild4];

      if (!v26)
      {
        goto LABEL_153;
      }
    }

    if (-[BMSiriScorecardMetrics hasDataSharingOptInStatus](self, "hasDataSharingOptInStatus") || [v5 hasDataSharingOptInStatus])
    {
      if (![(BMSiriScorecardMetrics *)self hasDataSharingOptInStatus])
      {
        goto LABEL_153;
      }

      if (![v5 hasDataSharingOptInStatus])
      {
        goto LABEL_153;
      }

      dataSharingOptInStatus = [(BMSiriScorecardMetrics *)self dataSharingOptInStatus];
      if (dataSharingOptInStatus != [v5 dataSharingOptInStatus])
      {
        goto LABEL_153;
      }
    }

    if (-[BMSiriScorecardMetrics hasViewInterface](self, "hasViewInterface") || [v5 hasViewInterface])
    {
      if (![(BMSiriScorecardMetrics *)self hasViewInterface])
      {
        goto LABEL_153;
      }

      if (![v5 hasViewInterface])
      {
        goto LABEL_153;
      }

      viewInterface = [(BMSiriScorecardMetrics *)self viewInterface];
      if (viewInterface != [v5 viewInterface])
      {
        goto LABEL_153;
      }
    }

    audioInterfaceVendorId = [(BMSiriScorecardMetrics *)self audioInterfaceVendorId];
    audioInterfaceVendorId2 = [v5 audioInterfaceVendorId];
    v31 = audioInterfaceVendorId2;
    if (audioInterfaceVendorId == audioInterfaceVendorId2)
    {
    }

    else
    {
      audioInterfaceVendorId3 = [(BMSiriScorecardMetrics *)self audioInterfaceVendorId];
      audioInterfaceVendorId4 = [v5 audioInterfaceVendorId];
      v34 = [audioInterfaceVendorId3 isEqual:audioInterfaceVendorId4];

      if (!v34)
      {
        goto LABEL_153;
      }
    }

    audioInterfaceProductId = [(BMSiriScorecardMetrics *)self audioInterfaceProductId];
    audioInterfaceProductId2 = [v5 audioInterfaceProductId];
    v37 = audioInterfaceProductId2;
    if (audioInterfaceProductId == audioInterfaceProductId2)
    {
    }

    else
    {
      audioInterfaceProductId3 = [(BMSiriScorecardMetrics *)self audioInterfaceProductId];
      audioInterfaceProductId4 = [v5 audioInterfaceProductId];
      v40 = [audioInterfaceProductId3 isEqual:audioInterfaceProductId4];

      if (!v40)
      {
        goto LABEL_153;
      }
    }

    if (-[BMSiriScorecardMetrics hasAsrLocation](self, "hasAsrLocation") || [v5 hasAsrLocation])
    {
      if (![(BMSiriScorecardMetrics *)self hasAsrLocation])
      {
        goto LABEL_153;
      }

      if (![v5 hasAsrLocation])
      {
        goto LABEL_153;
      }

      asrLocation = [(BMSiriScorecardMetrics *)self asrLocation];
      if (asrLocation != [v5 asrLocation])
      {
        goto LABEL_153;
      }
    }

    if (-[BMSiriScorecardMetrics hasNlLocation](self, "hasNlLocation") || [v5 hasNlLocation])
    {
      if (![(BMSiriScorecardMetrics *)self hasNlLocation])
      {
        goto LABEL_153;
      }

      if (![v5 hasNlLocation])
      {
        goto LABEL_153;
      }

      nlLocation = [(BMSiriScorecardMetrics *)self nlLocation];
      if (nlLocation != [v5 nlLocation])
      {
        goto LABEL_153;
      }
    }

    siriInputLocale = [(BMSiriScorecardMetrics *)self siriInputLocale];
    siriInputLocale2 = [v5 siriInputLocale];
    v45 = siriInputLocale2;
    if (siriInputLocale == siriInputLocale2)
    {
    }

    else
    {
      siriInputLocale3 = [(BMSiriScorecardMetrics *)self siriInputLocale];
      siriInputLocale4 = [v5 siriInputLocale];
      v48 = [siriInputLocale3 isEqual:siriInputLocale4];

      if (!v48)
      {
        goto LABEL_153;
      }
    }

    dictationLocale = [(BMSiriScorecardMetrics *)self dictationLocale];
    dictationLocale2 = [v5 dictationLocale];
    v51 = dictationLocale2;
    if (dictationLocale == dictationLocale2)
    {
    }

    else
    {
      dictationLocale3 = [(BMSiriScorecardMetrics *)self dictationLocale];
      dictationLocale4 = [v5 dictationLocale];
      v54 = [dictationLocale3 isEqual:dictationLocale4];

      if (!v54)
      {
        goto LABEL_153;
      }
    }

    subDomain = [(BMSiriScorecardMetrics *)self subDomain];
    subDomain2 = [v5 subDomain];
    v57 = subDomain2;
    if (subDomain == subDomain2)
    {
    }

    else
    {
      subDomain3 = [(BMSiriScorecardMetrics *)self subDomain];
      subDomain4 = [v5 subDomain];
      v60 = [subDomain3 isEqual:subDomain4];

      if (!v60)
      {
        goto LABEL_153;
      }
    }

    if (-[BMSiriScorecardMetrics hasTotalTurnCount](self, "hasTotalTurnCount") || [v5 hasTotalTurnCount])
    {
      if (![(BMSiriScorecardMetrics *)self hasTotalTurnCount])
      {
        goto LABEL_153;
      }

      if (![v5 hasTotalTurnCount])
      {
        goto LABEL_153;
      }

      totalTurnCount = [(BMSiriScorecardMetrics *)self totalTurnCount];
      if (totalTurnCount != [v5 totalTurnCount])
      {
        goto LABEL_153;
      }
    }

    if (-[BMSiriScorecardMetrics hasValidTurnCount](self, "hasValidTurnCount") || [v5 hasValidTurnCount])
    {
      if (![(BMSiriScorecardMetrics *)self hasValidTurnCount])
      {
        goto LABEL_153;
      }

      if (![v5 hasValidTurnCount])
      {
        goto LABEL_153;
      }

      validTurnCount = [(BMSiriScorecardMetrics *)self validTurnCount];
      if (validTurnCount != [v5 validTurnCount])
      {
        goto LABEL_153;
      }
    }

    if (-[BMSiriScorecardMetrics hasSiriTasksStarted](self, "hasSiriTasksStarted") || [v5 hasSiriTasksStarted])
    {
      if (![(BMSiriScorecardMetrics *)self hasSiriTasksStarted])
      {
        goto LABEL_153;
      }

      if (![v5 hasSiriTasksStarted])
      {
        goto LABEL_153;
      }

      siriTasksStarted = [(BMSiriScorecardMetrics *)self siriTasksStarted];
      if (siriTasksStarted != [v5 siriTasksStarted])
      {
        goto LABEL_153;
      }
    }

    if (-[BMSiriScorecardMetrics hasSiriTasksCompleted](self, "hasSiriTasksCompleted") || [v5 hasSiriTasksCompleted])
    {
      if (![(BMSiriScorecardMetrics *)self hasSiriTasksCompleted])
      {
        goto LABEL_153;
      }

      if (![v5 hasSiriTasksCompleted])
      {
        goto LABEL_153;
      }

      siriTasksCompleted = [(BMSiriScorecardMetrics *)self siriTasksCompleted];
      if (siriTasksCompleted != [v5 siriTasksCompleted])
      {
        goto LABEL_153;
      }
    }

    if (-[BMSiriScorecardMetrics hasFlowTasksStarted](self, "hasFlowTasksStarted") || [v5 hasFlowTasksStarted])
    {
      if (![(BMSiriScorecardMetrics *)self hasFlowTasksStarted])
      {
        goto LABEL_153;
      }

      if (![v5 hasFlowTasksStarted])
      {
        goto LABEL_153;
      }

      flowTasksStarted = [(BMSiriScorecardMetrics *)self flowTasksStarted];
      if (flowTasksStarted != [v5 flowTasksStarted])
      {
        goto LABEL_153;
      }
    }

    if (-[BMSiriScorecardMetrics hasFlowTasksCompleted](self, "hasFlowTasksCompleted") || [v5 hasFlowTasksCompleted])
    {
      if (![(BMSiriScorecardMetrics *)self hasFlowTasksCompleted])
      {
        goto LABEL_153;
      }

      if (![v5 hasFlowTasksCompleted])
      {
        goto LABEL_153;
      }

      flowTasksCompleted = [(BMSiriScorecardMetrics *)self flowTasksCompleted];
      if (flowTasksCompleted != [v5 flowTasksCompleted])
      {
        goto LABEL_153;
      }
    }

    if (-[BMSiriScorecardMetrics hasReliabilityRequestCount](self, "hasReliabilityRequestCount") || [v5 hasReliabilityRequestCount])
    {
      if (![(BMSiriScorecardMetrics *)self hasReliabilityRequestCount])
      {
        goto LABEL_153;
      }

      if (![v5 hasReliabilityRequestCount])
      {
        goto LABEL_153;
      }

      reliabilityRequestCount = [(BMSiriScorecardMetrics *)self reliabilityRequestCount];
      if (reliabilityRequestCount != [v5 reliabilityRequestCount])
      {
        goto LABEL_153;
      }
    }

    if (-[BMSiriScorecardMetrics hasReliabilityTurnCount](self, "hasReliabilityTurnCount") || [v5 hasReliabilityTurnCount])
    {
      if (![(BMSiriScorecardMetrics *)self hasReliabilityTurnCount])
      {
        goto LABEL_153;
      }

      if (![v5 hasReliabilityTurnCount])
      {
        goto LABEL_153;
      }

      reliabilityTurnCount = [(BMSiriScorecardMetrics *)self reliabilityTurnCount];
      if (reliabilityTurnCount != [v5 reliabilityTurnCount])
      {
        goto LABEL_153;
      }
    }

    if (-[BMSiriScorecardMetrics hasClientErrorCount](self, "hasClientErrorCount") || [v5 hasClientErrorCount])
    {
      if (![(BMSiriScorecardMetrics *)self hasClientErrorCount])
      {
        goto LABEL_153;
      }

      if (![v5 hasClientErrorCount])
      {
        goto LABEL_153;
      }

      clientErrorCount = [(BMSiriScorecardMetrics *)self clientErrorCount];
      if (clientErrorCount != [v5 clientErrorCount])
      {
        goto LABEL_153;
      }
    }

    if (-[BMSiriScorecardMetrics hasUndesiredResponseCount](self, "hasUndesiredResponseCount") || [v5 hasUndesiredResponseCount])
    {
      if (![(BMSiriScorecardMetrics *)self hasUndesiredResponseCount])
      {
        goto LABEL_153;
      }

      if (![v5 hasUndesiredResponseCount])
      {
        goto LABEL_153;
      }

      undesiredResponseCount = [(BMSiriScorecardMetrics *)self undesiredResponseCount];
      if (undesiredResponseCount != [v5 undesiredResponseCount])
      {
        goto LABEL_153;
      }
    }

    if (-[BMSiriScorecardMetrics hasFatalResponseCount](self, "hasFatalResponseCount") || [v5 hasFatalResponseCount])
    {
      if (![(BMSiriScorecardMetrics *)self hasFatalResponseCount])
      {
        goto LABEL_153;
      }

      if (![v5 hasFatalResponseCount])
      {
        goto LABEL_153;
      }

      fatalResponseCount = [(BMSiriScorecardMetrics *)self fatalResponseCount];
      if (fatalResponseCount != [v5 fatalResponseCount])
      {
        goto LABEL_153;
      }
    }

    if (-[BMSiriScorecardMetrics hasFailureResponseCount](self, "hasFailureResponseCount") || [v5 hasFailureResponseCount])
    {
      if (![(BMSiriScorecardMetrics *)self hasFailureResponseCount])
      {
        goto LABEL_153;
      }

      if (![v5 hasFailureResponseCount])
      {
        goto LABEL_153;
      }

      failureResponseCount = [(BMSiriScorecardMetrics *)self failureResponseCount];
      if (failureResponseCount != [v5 failureResponseCount])
      {
        goto LABEL_153;
      }
    }

    if (-[BMSiriScorecardMetrics hasSiriUnavailableResponseCount](self, "hasSiriUnavailableResponseCount") || [v5 hasSiriUnavailableResponseCount])
    {
      if (![(BMSiriScorecardMetrics *)self hasSiriUnavailableResponseCount])
      {
        goto LABEL_153;
      }

      if (![v5 hasSiriUnavailableResponseCount])
      {
        goto LABEL_153;
      }

      siriUnavailableResponseCount = [(BMSiriScorecardMetrics *)self siriUnavailableResponseCount];
      if (siriUnavailableResponseCount != [v5 siriUnavailableResponseCount])
      {
        goto LABEL_153;
      }
    }

    siriResponseId = [(BMSiriScorecardMetrics *)self siriResponseId];
    siriResponseId2 = [v5 siriResponseId];
    v76 = siriResponseId2;
    if (siriResponseId == siriResponseId2)
    {
    }

    else
    {
      siriResponseId3 = [(BMSiriScorecardMetrics *)self siriResponseId];
      siriResponseId4 = [v5 siriResponseId];
      v79 = [siriResponseId3 isEqual:siriResponseId4];

      if (!v79)
      {
        goto LABEL_153;
      }
    }

    if (-[BMSiriScorecardMetrics hasResponseCategory](self, "hasResponseCategory") || [v5 hasResponseCategory])
    {
      if (![(BMSiriScorecardMetrics *)self hasResponseCategory])
      {
        goto LABEL_153;
      }

      if (![v5 hasResponseCategory])
      {
        goto LABEL_153;
      }

      responseCategory = [(BMSiriScorecardMetrics *)self responseCategory];
      if (responseCategory != [v5 responseCategory])
      {
        goto LABEL_153;
      }
    }

    if (-[BMSiriScorecardMetrics hasIsIntelligenceEngineRequest](self, "hasIsIntelligenceEngineRequest") || [v5 hasIsIntelligenceEngineRequest])
    {
      if (![(BMSiriScorecardMetrics *)self hasIsIntelligenceEngineRequest])
      {
        goto LABEL_153;
      }

      if (![v5 hasIsIntelligenceEngineRequest])
      {
        goto LABEL_153;
      }

      isIntelligenceEngineRequest = [(BMSiriScorecardMetrics *)self isIntelligenceEngineRequest];
      if (isIntelligenceEngineRequest != [v5 isIntelligenceEngineRequest])
      {
        goto LABEL_153;
      }
    }

    intelligenceEngineRouting = [(BMSiriScorecardMetrics *)self intelligenceEngineRouting];
    intelligenceEngineRouting2 = [v5 intelligenceEngineRouting];
    v84 = intelligenceEngineRouting2;
    if (intelligenceEngineRouting == intelligenceEngineRouting2)
    {
    }

    else
    {
      intelligenceEngineRouting3 = [(BMSiriScorecardMetrics *)self intelligenceEngineRouting];
      intelligenceEngineRouting4 = [v5 intelligenceEngineRouting];
      v87 = [intelligenceEngineRouting3 isEqual:intelligenceEngineRouting4];

      if (!v87)
      {
        goto LABEL_153;
      }
    }

    if (!-[BMSiriScorecardMetrics hasInvocationSource](self, "hasInvocationSource") && ![v5 hasInvocationSource])
    {
      v12 = 1;
      goto LABEL_154;
    }

    if (-[BMSiriScorecardMetrics hasInvocationSource](self, "hasInvocationSource") && [v5 hasInvocationSource])
    {
      invocationSource = [(BMSiriScorecardMetrics *)self invocationSource];
      v12 = invocationSource == [v5 invocationSource];
LABEL_154:

      goto LABEL_155;
    }

LABEL_153:
    v12 = 0;
    goto LABEL_154;
  }

  v12 = 0;
LABEL_155:

  return v12;
}

- (id)jsonDictionary
{
  v110[32] = *MEMORY[0x1E69E9840];
  eventMetadata = [(BMSiriScorecardMetrics *)self eventMetadata];
  jsonDictionary = [eventMetadata jsonDictionary];

  deviceType = [(BMSiriScorecardMetrics *)self deviceType];
  if ([(BMSiriScorecardMetrics *)self hasProgramCode])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriScorecardMetrics programCode](self, "programCode")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMSiriScorecardMetrics *)self hasProductId])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriScorecardMetrics productId](self, "productId")}];
  }

  else
  {
    v7 = 0;
  }

  systemBuild = [(BMSiriScorecardMetrics *)self systemBuild];
  if ([(BMSiriScorecardMetrics *)self hasDataSharingOptInStatus])
  {
    v84 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriScorecardMetrics dataSharingOptInStatus](self, "dataSharingOptInStatus")}];
  }

  else
  {
    v84 = 0;
  }

  if ([(BMSiriScorecardMetrics *)self hasViewInterface])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriScorecardMetrics viewInterface](self, "viewInterface")}];
  }

  else
  {
    v9 = 0;
  }

  audioInterfaceVendorId = [(BMSiriScorecardMetrics *)self audioInterfaceVendorId];
  audioInterfaceProductId = [(BMSiriScorecardMetrics *)self audioInterfaceProductId];
  if ([(BMSiriScorecardMetrics *)self hasAsrLocation])
  {
    v106 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriScorecardMetrics asrLocation](self, "asrLocation")}];
  }

  else
  {
    v106 = 0;
  }

  if ([(BMSiriScorecardMetrics *)self hasNlLocation])
  {
    v105 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriScorecardMetrics nlLocation](self, "nlLocation")}];
  }

  else
  {
    v105 = 0;
  }

  siriInputLocale = [(BMSiriScorecardMetrics *)self siriInputLocale];
  jsonDictionary2 = [siriInputLocale jsonDictionary];

  dictationLocale = [(BMSiriScorecardMetrics *)self dictationLocale];
  jsonDictionary3 = [dictationLocale jsonDictionary];

  subDomain = [(BMSiriScorecardMetrics *)self subDomain];
  if ([(BMSiriScorecardMetrics *)self hasTotalTurnCount])
  {
    v101 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriScorecardMetrics totalTurnCount](self, "totalTurnCount")}];
  }

  else
  {
    v101 = 0;
  }

  if ([(BMSiriScorecardMetrics *)self hasValidTurnCount])
  {
    v100 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriScorecardMetrics validTurnCount](self, "validTurnCount")}];
  }

  else
  {
    v100 = 0;
  }

  if ([(BMSiriScorecardMetrics *)self hasSiriTasksStarted])
  {
    v99 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriScorecardMetrics siriTasksStarted](self, "siriTasksStarted")}];
  }

  else
  {
    v99 = 0;
  }

  if ([(BMSiriScorecardMetrics *)self hasSiriTasksCompleted])
  {
    v98 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriScorecardMetrics siriTasksCompleted](self, "siriTasksCompleted")}];
  }

  else
  {
    v98 = 0;
  }

  if ([(BMSiriScorecardMetrics *)self hasFlowTasksStarted])
  {
    v97 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriScorecardMetrics flowTasksStarted](self, "flowTasksStarted")}];
  }

  else
  {
    v97 = 0;
  }

  if ([(BMSiriScorecardMetrics *)self hasFlowTasksCompleted])
  {
    v96 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriScorecardMetrics flowTasksCompleted](self, "flowTasksCompleted")}];
  }

  else
  {
    v96 = 0;
  }

  if ([(BMSiriScorecardMetrics *)self hasReliabilityRequestCount])
  {
    v95 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriScorecardMetrics reliabilityRequestCount](self, "reliabilityRequestCount")}];
  }

  else
  {
    v95 = 0;
  }

  if ([(BMSiriScorecardMetrics *)self hasReliabilityTurnCount])
  {
    v94 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriScorecardMetrics reliabilityTurnCount](self, "reliabilityTurnCount")}];
  }

  else
  {
    v94 = 0;
  }

  if ([(BMSiriScorecardMetrics *)self hasClientErrorCount])
  {
    v93 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriScorecardMetrics clientErrorCount](self, "clientErrorCount")}];
  }

  else
  {
    v93 = 0;
  }

  if ([(BMSiriScorecardMetrics *)self hasUndesiredResponseCount])
  {
    v92 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriScorecardMetrics undesiredResponseCount](self, "undesiredResponseCount")}];
  }

  else
  {
    v92 = 0;
  }

  if ([(BMSiriScorecardMetrics *)self hasFatalResponseCount])
  {
    v91 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriScorecardMetrics fatalResponseCount](self, "fatalResponseCount")}];
  }

  else
  {
    v91 = 0;
  }

  if ([(BMSiriScorecardMetrics *)self hasFailureResponseCount])
  {
    v90 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriScorecardMetrics failureResponseCount](self, "failureResponseCount")}];
  }

  else
  {
    v90 = 0;
  }

  if ([(BMSiriScorecardMetrics *)self hasSiriUnavailableResponseCount])
  {
    v89 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriScorecardMetrics siriUnavailableResponseCount](self, "siriUnavailableResponseCount")}];
  }

  else
  {
    v89 = 0;
  }

  siriResponseId = [(BMSiriScorecardMetrics *)self siriResponseId];
  if ([(BMSiriScorecardMetrics *)self hasResponseCategory])
  {
    v87 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriScorecardMetrics responseCategory](self, "responseCategory")}];
  }

  else
  {
    v87 = 0;
  }

  if ([(BMSiriScorecardMetrics *)self hasIsIntelligenceEngineRequest])
  {
    v86 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriScorecardMetrics isIntelligenceEngineRequest](self, "isIntelligenceEngineRequest")}];
  }

  else
  {
    v86 = 0;
  }

  _intelligenceEngineRoutingJSONArray = [(BMSiriScorecardMetrics *)self _intelligenceEngineRoutingJSONArray];
  if ([(BMSiriScorecardMetrics *)self hasInvocationSource])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriScorecardMetrics invocationSource](self, "invocationSource")}];
  }

  else
  {
    v12 = 0;
  }

  v109[0] = @"eventMetadata";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v76 = null;
  v110[0] = null;
  v109[1] = @"deviceType";
  null2 = deviceType;
  if (!deviceType)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v75 = null2;
  v110[1] = null2;
  v109[2] = @"programCode";
  null3 = v6;
  if (!v6)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v74 = null3;
  v110[2] = null3;
  v109[3] = @"productId";
  null4 = v7;
  if (!v7)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v73 = null4;
  v110[3] = null4;
  v109[4] = @"systemBuild";
  null5 = systemBuild;
  if (!systemBuild)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = systemBuild;
  v72 = null5;
  v110[4] = null5;
  v109[5] = @"dataSharingOptInStatus";
  null6 = v84;
  if (!v84)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = jsonDictionary;
  v71 = null6;
  v110[5] = null6;
  v109[6] = @"viewInterface";
  null7 = v9;
  if (!v9)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = deviceType;
  v70 = null7;
  v110[6] = null7;
  v109[7] = @"audioInterfaceVendorId";
  null8 = audioInterfaceVendorId;
  if (!audioInterfaceVendorId)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v110[7] = null8;
  v109[8] = @"audioInterfaceProductId";
  null9 = audioInterfaceProductId;
  if (!audioInterfaceProductId)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v110[8] = null9;
  v109[9] = @"asrLocation";
  null10 = v106;
  if (!v106)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v78 = null10;
  v110[9] = null10;
  v109[10] = @"nlLocation";
  null11 = v105;
  if (!v105)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v68 = null11;
  v110[10] = null11;
  v109[11] = @"siriInputLocale";
  null12 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = null12;
  v110[11] = null12;
  v109[12] = @"dictationLocale";
  null13 = jsonDictionary3;
  if (!jsonDictionary3)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v67 = null13;
  v110[12] = null13;
  v109[13] = @"subDomain";
  null14 = subDomain;
  if (!subDomain)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v66 = null14;
  v110[13] = null14;
  v109[14] = @"totalTurnCount";
  null15 = v101;
  if (!v101)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v65 = null15;
  v110[14] = null15;
  v109[15] = @"validTurnCount";
  null16 = v100;
  if (!v100)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v64 = null16;
  v110[15] = null16;
  v109[16] = @"siriTasksStarted";
  null17 = v99;
  if (!v99)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v63 = null17;
  v110[16] = null17;
  v109[17] = @"siriTasksCompleted";
  null18 = v98;
  if (!v98)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v62 = null18;
  v110[17] = null18;
  v109[18] = @"flowTasksStarted";
  null19 = v97;
  if (!v97)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v61 = null19;
  v110[18] = null19;
  v109[19] = @"flowTasksCompleted";
  null20 = v96;
  if (!v96)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v60 = null20;
  v110[19] = null20;
  v109[20] = @"reliabilityRequestCount";
  null21 = v95;
  if (!v95)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v59 = null21;
  v110[20] = null21;
  v109[21] = @"reliabilityTurnCount";
  null22 = v94;
  if (!v94)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v58 = null22;
  v110[21] = null22;
  v109[22] = @"clientErrorCount";
  null23 = v93;
  if (!v93)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v82 = v6;
  v57 = null23;
  v110[22] = null23;
  v109[23] = @"undesiredResponseCount";
  null24 = v92;
  if (!v92)
  {
    null24 = [MEMORY[0x1E695DFB0] null];
  }

  v79 = null9;
  v56 = null24;
  v110[23] = null24;
  v109[24] = @"fatalResponseCount";
  null25 = v91;
  if (!v91)
  {
    null25 = [MEMORY[0x1E695DFB0] null];
  }

  v55 = null25;
  v110[24] = null25;
  v109[25] = @"failureResponseCount";
  null26 = v90;
  v43 = v22;
  if (!v90)
  {
    null26 = [MEMORY[0x1E695DFB0] null];
  }

  v81 = v9;
  v83 = v20;
  v53 = null26;
  v110[25] = null26;
  v109[26] = @"siriUnavailableResponseCount";
  null27 = v89;
  if (!v89)
  {
    null27 = [MEMORY[0x1E695DFB0] null];
  }

  v69 = null8;
  v80 = v7;
  v110[26] = null27;
  v109[27] = @"siriResponseId";
  null28 = siriResponseId;
  if (!siriResponseId)
  {
    null28 = [MEMORY[0x1E695DFB0] null];
  }

  v110[27] = null28;
  v109[28] = @"responseCategory";
  null29 = v87;
  if (!v87)
  {
    null29 = [MEMORY[0x1E695DFB0] null];
  }

  v110[28] = null29;
  v109[29] = @"isIntelligenceEngineRequest";
  null30 = v86;
  if (!v86)
  {
    null30 = [MEMORY[0x1E695DFB0] null];
  }

  v110[29] = null30;
  v109[30] = @"intelligenceEngineRouting";
  null31 = _intelligenceEngineRoutingJSONArray;
  if (!_intelligenceEngineRoutingJSONArray)
  {
    null31 = [MEMORY[0x1E695DFB0] null];
  }

  v110[30] = null31;
  v109[31] = @"invocationSource";
  null32 = v12;
  if (!v12)
  {
    null32 = [MEMORY[0x1E695DFB0] null];
  }

  v110[31] = null32;
  v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v110 forKeys:v109 count:{32, v53}];
  if (!v12)
  {
  }

  v50 = v28;
  if (!_intelligenceEngineRoutingJSONArray)
  {

    v50 = v28;
  }

  if (!v86)
  {

    v50 = v28;
  }

  if (!v87)
  {

    v50 = v28;
  }

  if (!siriResponseId)
  {

    v50 = v28;
  }

  if (!v89)
  {

    v50 = v28;
  }

  if (!v90)
  {

    v50 = v28;
  }

  if (!v91)
  {

    v50 = v28;
  }

  if (!v92)
  {

    v50 = v28;
  }

  if (!v93)
  {

    v50 = v28;
  }

  if (!v94)
  {

    v50 = v28;
  }

  if (!v95)
  {

    v50 = v28;
  }

  if (!v96)
  {

    v50 = v28;
  }

  if (!v97)
  {

    v50 = v28;
  }

  if (!v98)
  {

    v50 = v28;
  }

  if (!v99)
  {

    v50 = v28;
  }

  if (!v100)
  {

    v50 = v28;
  }

  if (!v101)
  {

    v50 = v28;
  }

  if (!subDomain)
  {

    v50 = v28;
  }

  if (!jsonDictionary3)
  {

    v50 = v28;
  }

  if (!jsonDictionary2)
  {
  }

  if (!v105)
  {
  }

  if (!v106)
  {
  }

  if (!audioInterfaceProductId)
  {
  }

  if (audioInterfaceVendorId)
  {
    if (v81)
    {
      goto LABEL_181;
    }
  }

  else
  {

    if (v81)
    {
LABEL_181:
      if (v84)
      {
        goto LABEL_182;
      }

      goto LABEL_192;
    }
  }

  if (v84)
  {
LABEL_182:
    if (v18)
    {
      goto LABEL_183;
    }

    goto LABEL_193;
  }

LABEL_192:

  if (v18)
  {
LABEL_183:
    if (v80)
    {
      goto LABEL_184;
    }

    goto LABEL_194;
  }

LABEL_193:

  if (v80)
  {
LABEL_184:
    if (v82)
    {
      goto LABEL_185;
    }

    goto LABEL_195;
  }

LABEL_194:

  if (v82)
  {
LABEL_185:
    if (v43)
    {
      goto LABEL_186;
    }

LABEL_196:

    if (v83)
    {
      goto LABEL_187;
    }

    goto LABEL_197;
  }

LABEL_195:

  if (!v43)
  {
    goto LABEL_196;
  }

LABEL_186:
  if (v83)
  {
    goto LABEL_187;
  }

LABEL_197:

LABEL_187:
  v51 = *MEMORY[0x1E69E9840];

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
  intelligenceEngineRouting = [(BMSiriScorecardMetrics *)self intelligenceEngineRouting];
  v5 = [intelligenceEngineRouting countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(intelligenceEngineRouting);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [intelligenceEngineRouting countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMSiriScorecardMetrics)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v459[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v383 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
  if (v383 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v66 = objc_alloc(MEMORY[0x1E696ABC0]);
        v67 = *MEMORY[0x1E698F240];
        v458 = *MEMORY[0x1E696A578];
        v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"eventMetadata"];
        v459[0] = v7;
        v382 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v459 forKeys:&v458 count:1];
        selfCopy7 = 0;
        *error = [v66 initWithDomain:v67 code:2 userInfo:?];
        goto LABEL_330;
      }

      selfCopy7 = 0;
      goto LABEL_331;
    }

    v390 = 0;
    v382 = v383;
    v7 = [[BMSiriScorecardMetricsEventMetadata alloc] initWithJSONDictionary:v382 error:&v390];
    v64 = v390;
    if (v64)
    {
      if (error)
      {
        v64 = v64;
        *error = v64;
      }

      selfCopy7 = 0;
      goto LABEL_330;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"deviceType"];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v68 = v7;
        v69 = objc_alloc(MEMORY[0x1E696ABC0]);
        v70 = *MEMORY[0x1E698F240];
        v456 = *MEMORY[0x1E696A578];
        v71 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceType"];
        v457 = v71;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v457 forKeys:&v456 count:1];
        v72 = v69;
        v7 = v68;
        v73 = [v72 initWithDomain:v70 code:2 userInfo:v9];
        v382 = 0;
        selfCopy7 = 0;
        *error = v73;
        goto LABEL_328;
      }

      v382 = 0;
      selfCopy7 = 0;
      goto LABEL_329;
    }

    v382 = v8;
  }

  else
  {
    v382 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"programCode"];
  v381 = dictionaryCopy;
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v74 = objc_alloc(MEMORY[0x1E696ABC0]);
        v75 = *MEMORY[0x1E698F240];
        v454 = *MEMORY[0x1E696A578];
        errorCopy = error;
        v77 = v8;
        v78 = v7;
        selfCopy = self;
        v80 = objc_alloc(MEMORY[0x1E696AEC0]);
        v294 = objc_opt_class();
        v81 = v80;
        self = selfCopy;
        v7 = v78;
        v8 = v77;
        v82 = [v81 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v294, @"programCode"];
        v455 = v82;
        v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v455 forKeys:&v454 count:1];
        v84 = v75;
        v85 = v82;
        v380 = v83;
        v86 = [v74 initWithDomain:v84 code:2 userInfo:?];
        v71 = 0;
        selfCopy7 = 0;
        *errorCopy = v86;
        goto LABEL_327;
      }

      v71 = 0;
      selfCopy7 = 0;
      goto LABEL_328;
    }

    v379 = v9;
  }

  else
  {
    v379 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"productId"];
  v380 = v10;
  if (v10 && (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v89 = objc_alloc(MEMORY[0x1E696ABC0]);
        v90 = *MEMORY[0x1E698F240];
        v452 = *MEMORY[0x1E696A578];
        errorCopy2 = error;
        v92 = v8;
        v93 = v7;
        v94 = objc_alloc(MEMORY[0x1E696AEC0]);
        v295 = objc_opt_class();
        v95 = v94;
        v7 = v93;
        v8 = v92;
        v377 = [v95 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v295, @"productId"];
        v453 = v377;
        v378 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v453 forKeys:&v452 count:1];
        v96 = [v89 initWithDomain:v90 code:2 userInfo:?];
        v85 = 0;
        selfCopy7 = 0;
        *errorCopy2 = v96;
        v71 = v379;
        goto LABEL_326;
      }

      v85 = 0;
      selfCopy7 = 0;
      v71 = v379;
      goto LABEL_327;
    }

    errorCopy4 = error;
    v375 = v11;
  }

  else
  {
    errorCopy4 = error;
    v375 = 0;
  }

  v12 = [dictionaryCopy objectForKeyedSubscript:@"systemBuild"];
  v378 = v12;
  if (v12 && (v13 = v12, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!errorCopy4)
      {
        v377 = 0;
        selfCopy7 = 0;
        v71 = v379;
        v85 = v375;
        goto LABEL_326;
      }

      v97 = v8;
      v98 = v7;
      v99 = objc_alloc(MEMORY[0x1E696ABC0]);
      v100 = *MEMORY[0x1E698F240];
      v450 = *MEMORY[0x1E696A578];
      v373 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"systemBuild"];
      v451 = v373;
      v101 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v451 forKeys:&v450 count:1];
      v102 = v99;
      v7 = v98;
      v8 = v97;
      v374 = v101;
      v103 = [v102 initWithDomain:v100 code:2 userInfo:?];
      v377 = 0;
      selfCopy7 = 0;
      *errorCopy4 = v103;
      goto LABEL_159;
    }

    v377 = v13;
  }

  else
  {
    v377 = 0;
  }

  v14 = [dictionaryCopy objectForKeyedSubscript:@"dataSharingOptInStatus"];
  v374 = v14;
  if (v14)
  {
    v15 = v14;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v373 = v15;
        goto LABEL_19;
      }

      if (errorCopy4)
      {
        v104 = v9;
        v105 = v7;
        v106 = objc_alloc(MEMORY[0x1E696ABC0]);
        v107 = *MEMORY[0x1E698F240];
        v448 = *MEMORY[0x1E696A578];
        v370 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"dataSharingOptInStatus"];
        v449 = v370;
        v108 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v449 forKeys:&v448 count:1];
        v109 = v106;
        v7 = v105;
        v9 = v104;
        dictionaryCopy = v381;
        v371 = v108;
        v110 = [v109 initWithDomain:v107 code:2 userInfo:?];
        v373 = 0;
        selfCopy7 = 0;
        *errorCopy4 = v110;
        goto LABEL_165;
      }

      v373 = 0;
      selfCopy7 = 0;
LABEL_159:
      v71 = v379;
      v85 = v375;
      goto LABEL_325;
    }
  }

  v373 = 0;
LABEL_19:
  v16 = [dictionaryCopy objectForKeyedSubscript:@"viewInterface"];
  v371 = v16;
  if (v16)
  {
    v17 = v16;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v370 = v17;
        goto LABEL_22;
      }

      if (errorCopy4)
      {
        v111 = v9;
        v112 = v7;
        v113 = objc_alloc(MEMORY[0x1E696ABC0]);
        v114 = *MEMORY[0x1E698F240];
        v446 = *MEMORY[0x1E696A578];
        v368 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"viewInterface"];
        v447 = v368;
        v115 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v447 forKeys:&v446 count:1];
        v116 = v113;
        v7 = v112;
        v9 = v111;
        dictionaryCopy = v381;
        v369 = v115;
        v117 = [v116 initWithDomain:v114 code:2 userInfo:?];
        v370 = 0;
        selfCopy7 = 0;
        *errorCopy4 = v117;
        goto LABEL_172;
      }

      v370 = 0;
      selfCopy7 = 0;
LABEL_165:
      v71 = v379;
      v85 = v375;
      goto LABEL_324;
    }
  }

  v370 = 0;
LABEL_22:
  v18 = [dictionaryCopy objectForKeyedSubscript:@"audioInterfaceVendorId"];
  v369 = v18;
  if (v18)
  {
    v19 = v18;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v87 = v9;
      selfCopy3 = self;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v368 = v19;
        v9 = v87;
        dictionaryCopy = v381;
        goto LABEL_25;
      }

      if (errorCopy4)
      {
        v124 = v8;
        v125 = v7;
        v126 = objc_alloc(MEMORY[0x1E696ABC0]);
        v127 = *MEMORY[0x1E698F240];
        v444 = *MEMORY[0x1E696A578];
        v128 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"audioInterfaceVendorId"];
        v445 = v128;
        v372 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v445 forKeys:&v444 count:1];
        v129 = v126;
        v7 = v125;
        v8 = v124;
        v20 = v128;
        v130 = [v129 initWithDomain:v127 code:2 userInfo:v372];
        v368 = 0;
        selfCopy7 = 0;
        *errorCopy4 = v130;
        goto LABEL_176;
      }

      v368 = 0;
      selfCopy7 = 0;
      v9 = v87;
      dictionaryCopy = v381;
LABEL_172:
      v71 = v379;
      v85 = v375;
      goto LABEL_323;
    }
  }

  v368 = 0;
LABEL_25:
  v372 = [dictionaryCopy objectForKeyedSubscript:@"audioInterfaceProductId"];
  if (v372)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v87 = v9;
      selfCopy3 = self;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v372;
        v9 = v87;
        dictionaryCopy = v381;
        goto LABEL_28;
      }

      v20 = errorCopy4;
      if (errorCopy4)
      {
        v319 = v8;
        v131 = v7;
        v132 = objc_alloc(MEMORY[0x1E696ABC0]);
        v133 = *MEMORY[0x1E698F240];
        v442 = *MEMORY[0x1E696A578];
        v134 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"audioInterfaceProductId"];
        v443 = v134;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v443 forKeys:&v442 count:1];
        v135 = v132;
        v7 = v131;
        v8 = v319;
        v136 = [v135 initWithDomain:v133 code:2 userInfo:v21];
        selfCopy7 = 0;
        *errorCopy4 = v136;
        v20 = 0;
        v9 = v87;
        v122 = v134;
        v71 = v379;
        v85 = v375;
        goto LABEL_321;
      }

      selfCopy7 = 0;
LABEL_176:
      self = selfCopy3;
      v9 = v87;
      v71 = v379;
      v85 = v375;
      goto LABEL_322;
    }
  }

  v20 = 0;
LABEL_28:
  v21 = [dictionaryCopy objectForKeyedSubscript:@"asrLocation"];
  if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (errorCopy4)
      {
        v349 = v9;
        v140 = v7;
        v141 = objc_alloc(MEMORY[0x1E696ABC0]);
        v142 = *MEMORY[0x1E698F240];
        v440 = *MEMORY[0x1E696A578];
        v366 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"asrLocation"];
        v441 = v366;
        v143 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v441 forKeys:&v440 count:1];
        v144 = v141;
        v7 = v140;
        v9 = v349;
        v367 = v143;
        v145 = [v144 initWithDomain:v142 code:2 userInfo:?];
        selfCopy7 = 0;
        *errorCopy4 = v145;
        v71 = v379;
        v85 = v375;
        v122 = 0;
        goto LABEL_320;
      }

      selfCopy7 = 0;
      v71 = v379;
      v85 = v375;
      v122 = 0;
      goto LABEL_321;
    }

    v365 = v20;
    v364 = v21;
  }

  else
  {
    v365 = v20;
    v364 = 0;
  }

  v22 = [dictionaryCopy objectForKeyedSubscript:@"nlLocation"];
  v367 = v22;
  if (v22 && (v23 = v22, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (errorCopy4)
      {
        v350 = v9;
        v146 = v7;
        v147 = objc_alloc(MEMORY[0x1E696ABC0]);
        v148 = *MEMORY[0x1E698F240];
        v438 = *MEMORY[0x1E696A578];
        v118 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"nlLocation"];
        v439 = v118;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v439 forKeys:&v438 count:1];
        v150 = v149 = self;
        v151 = v147;
        v7 = v146;
        v9 = v350;
        v152 = [v151 initWithDomain:v148 code:2 userInfo:v150];
        v366 = 0;
        selfCopy7 = 0;
        *errorCopy4 = v152;
        v123 = v150;
        self = v149;
        v85 = v375;
        v20 = v365;
        v122 = v364;
        goto LABEL_318;
      }

      v366 = 0;
      selfCopy7 = 0;
      v71 = v379;
      v85 = v375;
      v20 = v365;
      v122 = v364;
      goto LABEL_320;
    }

    v366 = v23;
  }

  else
  {
    v366 = 0;
  }

  v24 = [dictionaryCopy objectForKeyedSubscript:@"siriInputLocale"];
  if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v348 = v9;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      selfCopy7 = errorCopy4;
      v122 = v364;
      if (errorCopy4)
      {
        v343 = objc_alloc(MEMORY[0x1E696ABC0]);
        v341 = *MEMORY[0x1E698F240];
        v436 = *MEMORY[0x1E696A578];
        v153 = v24;
        v154 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"siriInputLocale"];
        v437 = v154;
        v155 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v437 forKeys:&v436 count:1];
        *errorCopy4 = [v343 initWithDomain:v341 code:2 userInfo:v155];

        v123 = v154;
        selfCopy7 = 0;
        v118 = v153;
        v9 = v348;
        v85 = v375;
        v20 = v365;
        goto LABEL_318;
      }

      v85 = v375;
      v118 = v24;
      v20 = v365;
      goto LABEL_319;
    }

    selfCopy4 = self;
    v118 = v24;
    v119 = [BMSiriScorecardMetricsISOLocale alloc];
    v389 = 0;
    v120 = [(BMSiriScorecardMetricsISOLocale *)v119 initWithJSONDictionary:v118 error:&v389];
    v121 = v389;
    if (v121)
    {
      v85 = v375;
      if (errorCopy4)
      {
        v121 = v121;
        *errorCopy4 = v121;
      }

      selfCopy7 = 0;
      v20 = v365;
      v122 = v364;
      v123 = v120;
      self = selfCopy4;
      goto LABEL_318;
    }

    v340 = v24;

    dictionaryCopy = v381;
    v342 = v120;
    self = selfCopy4;
  }

  else
  {
    v340 = v24;
    v342 = 0;
  }

  v25 = [dictionaryCopy objectForKeyedSubscript:@"dictationLocale"];
  v344 = v25;
  if (v25)
  {
    v26 = v25;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v137 = v26;
        v138 = [BMSiriScorecardMetricsISOLocale alloc];
        v388 = 0;
        v338 = [(BMSiriScorecardMetricsISOLocale *)v138 initWithJSONDictionary:v137 error:&v388];
        v139 = v388;
        if (!v139)
        {

          dictionaryCopy = v381;
          goto LABEL_40;
        }

        v339 = v137;
        selfCopy6 = self;
        v85 = v375;
        if (errorCopy4)
        {
          v139 = v139;
          *errorCopy4 = v139;
        }

        selfCopy7 = 0;
        v20 = v365;
      }

      else
      {
        selfCopy6 = self;
        if (!errorCopy4)
        {
          selfCopy7 = 0;
          v85 = v375;
          v20 = v365;
          v122 = v364;
          v118 = v340;
          goto LABEL_317;
        }

        v156 = objc_alloc(MEMORY[0x1E696ABC0]);
        v157 = *MEMORY[0x1E698F240];
        v434 = *MEMORY[0x1E696A578];
        v338 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"dictationLocale"];
        v435 = v338;
        v339 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v435 forKeys:&v434 count:1];
        v158 = [v156 initWithDomain:v157 code:2 userInfo:?];
        selfCopy7 = 0;
        *errorCopy4 = v158;
        v85 = v375;
        v20 = v365;
      }

      v122 = v364;
      v118 = v340;
      self = selfCopy6;
      goto LABEL_316;
    }
  }

  v338 = 0;
LABEL_40:
  v27 = [dictionaryCopy objectForKeyedSubscript:@"subDomain"];
  v337 = v21;
  if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (errorCopy4)
      {
        v320 = v8;
        v159 = v7;
        v160 = objc_alloc(MEMORY[0x1E696ABC0]);
        v161 = *MEMORY[0x1E698F240];
        v432 = *MEMORY[0x1E696A578];
        v335 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"subDomain"];
        v433 = v335;
        v162 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v433 forKeys:&v432 count:1];
        v163 = v160;
        v7 = v159;
        v8 = v320;
        v336 = v162;
        v164 = [v163 initWithDomain:v161 code:2 userInfo:?];
        v339 = 0;
        selfCopy7 = 0;
        *errorCopy4 = v164;
        v165 = v27;
        v85 = v375;
        v20 = v365;
        v122 = v364;
        v118 = v340;
        goto LABEL_314;
      }

      v339 = 0;
      selfCopy7 = 0;
      v85 = v375;
      v122 = v364;
      v118 = v340;
      v165 = v27;
      v20 = v365;
      goto LABEL_315;
    }

    v334 = v27;
    v339 = v27;
    dictionaryCopy = v381;
  }

  else
  {
    v334 = v27;
    v339 = 0;
  }

  v28 = [dictionaryCopy objectForKeyedSubscript:@"totalTurnCount"];
  v336 = v28;
  if (v28 && (v29 = v28, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v166 = v365;
      if (!errorCopy4)
      {
        v335 = 0;
        selfCopy7 = 0;
        v85 = v375;
        v20 = v365;
        v122 = v364;
        v118 = v340;
        v165 = v334;
        goto LABEL_314;
      }

      v351 = v9;
      v167 = v7;
      v168 = objc_alloc(MEMORY[0x1E696ABC0]);
      v169 = *MEMORY[0x1E698F240];
      v430 = *MEMORY[0x1E696A578];
      v332 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"totalTurnCount"];
      v431 = v332;
      v170 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v431 forKeys:&v430 count:1];
      v171 = v168;
      v7 = v167;
      v9 = v351;
      v333 = v170;
      v172 = [v171 initWithDomain:v169 code:2 userInfo:?];
      v335 = 0;
      selfCopy7 = 0;
      *errorCopy4 = v172;
      goto LABEL_218;
    }

    v335 = v29;
  }

  else
  {
    v335 = 0;
  }

  v30 = [dictionaryCopy objectForKeyedSubscript:@"validTurnCount"];
  v333 = v30;
  if (v30)
  {
    v31 = v30;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v332 = v31;
        goto LABEL_49;
      }

      v166 = v365;
      if (errorCopy4)
      {
        v352 = v9;
        v173 = v7;
        v174 = objc_alloc(MEMORY[0x1E696ABC0]);
        v175 = *MEMORY[0x1E698F240];
        v428 = *MEMORY[0x1E696A578];
        v330 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"validTurnCount"];
        v429 = v330;
        v176 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v429 forKeys:&v428 count:1];
        v177 = v174;
        v7 = v173;
        v9 = v352;
        v331 = v176;
        v178 = [v177 initWithDomain:v175 code:2 userInfo:?];
        v332 = 0;
        selfCopy7 = 0;
        *errorCopy4 = v178;
        goto LABEL_224;
      }

      v332 = 0;
      selfCopy7 = 0;
LABEL_218:
      v85 = v375;
      v20 = v166;
      v122 = v364;
      v118 = v340;
      v165 = v334;
      goto LABEL_313;
    }
  }

  v332 = 0;
LABEL_49:
  v32 = [dictionaryCopy objectForKeyedSubscript:@"siriTasksStarted"];
  v331 = v32;
  if (v32)
  {
    v33 = v32;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v330 = v33;
        goto LABEL_52;
      }

      v166 = v365;
      if (errorCopy4)
      {
        v353 = v9;
        v179 = v7;
        v180 = objc_alloc(MEMORY[0x1E696ABC0]);
        v181 = *MEMORY[0x1E698F240];
        v426 = *MEMORY[0x1E696A578];
        v328 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"siriTasksStarted"];
        v427 = v328;
        v182 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v427 forKeys:&v426 count:1];
        v183 = v180;
        v7 = v179;
        v9 = v353;
        v329 = v182;
        v184 = [v183 initWithDomain:v181 code:2 userInfo:?];
        v330 = 0;
        selfCopy7 = 0;
        *errorCopy4 = v184;
        goto LABEL_230;
      }

      v330 = 0;
      selfCopy7 = 0;
LABEL_224:
      v85 = v375;
      v20 = v166;
      v122 = v364;
      v118 = v340;
      v165 = v334;
      goto LABEL_312;
    }
  }

  v330 = 0;
LABEL_52:
  v34 = [dictionaryCopy objectForKeyedSubscript:@"siriTasksCompleted"];
  v329 = v34;
  if (v34)
  {
    v35 = v34;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v328 = v35;
        goto LABEL_55;
      }

      v166 = v365;
      if (errorCopy4)
      {
        v354 = v9;
        v185 = v7;
        v186 = objc_alloc(MEMORY[0x1E696ABC0]);
        v187 = *MEMORY[0x1E698F240];
        v424 = *MEMORY[0x1E696A578];
        v326 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"siriTasksCompleted"];
        v425 = v326;
        v188 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v425 forKeys:&v424 count:1];
        v189 = v186;
        v7 = v185;
        v9 = v354;
        v327 = v188;
        v190 = [v189 initWithDomain:v187 code:2 userInfo:?];
        v328 = 0;
        selfCopy7 = 0;
        *errorCopy4 = v190;
        v85 = v375;
        v20 = v365;
        goto LABEL_253;
      }

      v328 = 0;
      selfCopy7 = 0;
LABEL_230:
      v85 = v375;
      v20 = v166;
      v122 = v364;
      v118 = v340;
      v165 = v334;
      goto LABEL_311;
    }
  }

  v328 = 0;
LABEL_55:
  v36 = [dictionaryCopy objectForKeyedSubscript:@"flowTasksStarted"];
  v327 = v36;
  if (v36)
  {
    v37 = v36;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v326 = v37;
        goto LABEL_58;
      }

      if (errorCopy4)
      {
        v355 = v9;
        v191 = v7;
        v192 = objc_alloc(MEMORY[0x1E696ABC0]);
        v193 = *MEMORY[0x1E698F240];
        v422 = *MEMORY[0x1E696A578];
        v324 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"flowTasksStarted"];
        v423 = v324;
        v194 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v423 forKeys:&v422 count:1];
        v195 = v192;
        v7 = v191;
        v9 = v355;
        v325 = v194;
        v196 = [v195 initWithDomain:v193 code:2 userInfo:?];
        v326 = 0;
        selfCopy7 = 0;
        *errorCopy4 = v196;
        goto LABEL_259;
      }

      v326 = 0;
      selfCopy7 = 0;
      v85 = v375;
      v20 = v365;
LABEL_253:
      v122 = v364;
      v118 = v340;
      v165 = v334;
      goto LABEL_310;
    }
  }

  v326 = 0;
LABEL_58:
  v38 = [dictionaryCopy objectForKeyedSubscript:@"flowTasksCompleted"];
  v325 = v38;
  if (v38)
  {
    v39 = v38;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v324 = v39;
        goto LABEL_61;
      }

      if (errorCopy4)
      {
        v356 = v9;
        v197 = v7;
        v198 = objc_alloc(MEMORY[0x1E696ABC0]);
        v199 = *MEMORY[0x1E698F240];
        v420 = *MEMORY[0x1E696A578];
        v317 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"flowTasksCompleted"];
        v421 = v317;
        v200 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v421 forKeys:&v420 count:1];
        v201 = v198;
        v7 = v197;
        v9 = v356;
        v318 = v200;
        v202 = [v201 initWithDomain:v199 code:2 userInfo:?];
        v324 = 0;
        selfCopy7 = 0;
        *errorCopy4 = v202;
        goto LABEL_265;
      }

      v324 = 0;
      selfCopy7 = 0;
LABEL_259:
      v85 = v375;
      v122 = v364;
      v118 = v340;
      v165 = v334;
      goto LABEL_309;
    }
  }

  v324 = 0;
LABEL_61:
  v40 = [dictionaryCopy objectForKeyedSubscript:@"reliabilityRequestCount"];
  v318 = v40;
  if (v40)
  {
    v41 = v40;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v317 = v41;
        goto LABEL_64;
      }

      if (errorCopy4)
      {
        v357 = v9;
        v203 = v7;
        v204 = objc_alloc(MEMORY[0x1E696ABC0]);
        v205 = *MEMORY[0x1E698F240];
        v418 = *MEMORY[0x1E696A578];
        v315 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"reliabilityRequestCount"];
        v419 = v315;
        v206 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v419 forKeys:&v418 count:1];
        v207 = v204;
        v7 = v203;
        v9 = v357;
        v316 = v206;
        v208 = [v207 initWithDomain:v205 code:2 userInfo:?];
        v317 = 0;
        selfCopy7 = 0;
        *errorCopy4 = v208;
        goto LABEL_269;
      }

      v317 = 0;
      selfCopy7 = 0;
LABEL_265:
      v85 = v375;
      v122 = v364;
      v118 = v340;
      v165 = v334;
      goto LABEL_308;
    }
  }

  v317 = 0;
LABEL_64:
  v42 = [dictionaryCopy objectForKeyedSubscript:@"reliabilityTurnCount"];
  v316 = v42;
  if (v42)
  {
    v43 = v42;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v315 = v43;
        goto LABEL_67;
      }

      if (errorCopy4)
      {
        v358 = v9;
        v209 = v7;
        v210 = objc_alloc(MEMORY[0x1E696ABC0]);
        v211 = *MEMORY[0x1E698F240];
        v416 = *MEMORY[0x1E696A578];
        v313 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"reliabilityTurnCount"];
        v417 = v313;
        v212 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v417 forKeys:&v416 count:1];
        v213 = v210;
        v7 = v209;
        v9 = v358;
        v314 = v212;
        v214 = [v213 initWithDomain:v211 code:2 userInfo:?];
        v315 = 0;
        selfCopy7 = 0;
        *errorCopy4 = v214;
        goto LABEL_279;
      }

      v315 = 0;
      selfCopy7 = 0;
LABEL_269:
      v85 = v375;
      v122 = v364;
      v118 = v340;
      v165 = v334;
      goto LABEL_307;
    }
  }

  v315 = 0;
LABEL_67:
  v44 = [dictionaryCopy objectForKeyedSubscript:@"clientErrorCount"];
  v314 = v44;
  if (v44)
  {
    v45 = v44;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v313 = v45;
        goto LABEL_70;
      }

      if (errorCopy4)
      {
        v359 = v9;
        v215 = v7;
        v216 = objc_alloc(MEMORY[0x1E696ABC0]);
        v217 = *MEMORY[0x1E698F240];
        v414 = *MEMORY[0x1E696A578];
        v311 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"clientErrorCount"];
        v415 = v311;
        v218 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v415 forKeys:&v414 count:1];
        v219 = v216;
        v7 = v215;
        v9 = v359;
        v312 = v218;
        v220 = [v219 initWithDomain:v217 code:2 userInfo:?];
        v313 = 0;
        selfCopy7 = 0;
        *errorCopy4 = v220;
        goto LABEL_285;
      }

      v313 = 0;
      selfCopy7 = 0;
LABEL_279:
      v85 = v375;
      v122 = v364;
      v118 = v340;
      v165 = v334;
      goto LABEL_306;
    }
  }

  v313 = 0;
LABEL_70:
  v46 = [dictionaryCopy objectForKeyedSubscript:@"undesiredResponseCount"];
  v312 = v46;
  if (v46)
  {
    v47 = v46;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v311 = v47;
        goto LABEL_73;
      }

      if (errorCopy4)
      {
        v360 = v9;
        v221 = v7;
        v222 = objc_alloc(MEMORY[0x1E696ABC0]);
        v223 = *MEMORY[0x1E698F240];
        v412 = *MEMORY[0x1E696A578];
        v309 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"undesiredResponseCount"];
        v413 = v309;
        v224 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v413 forKeys:&v412 count:1];
        v225 = v222;
        v7 = v221;
        v9 = v360;
        v308 = v224;
        v226 = [v225 initWithDomain:v223 code:2 userInfo:?];
        v311 = 0;
        selfCopy7 = 0;
        *errorCopy4 = v226;
        goto LABEL_289;
      }

      v311 = 0;
      selfCopy7 = 0;
LABEL_285:
      v85 = v375;
      v122 = v364;
      v118 = v340;
      goto LABEL_305;
    }
  }

  v311 = 0;
LABEL_73:
  v48 = [dictionaryCopy objectForKeyedSubscript:@"fatalResponseCount"];
  v308 = v48;
  if (v48)
  {
    v49 = v48;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v309 = v49;
        goto LABEL_76;
      }

      if (errorCopy4)
      {
        v361 = v9;
        v241 = v7;
        v242 = objc_alloc(MEMORY[0x1E696ABC0]);
        v243 = *MEMORY[0x1E698F240];
        v410 = *MEMORY[0x1E696A578];
        v307 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"fatalResponseCount"];
        v411 = v307;
        v244 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v411 forKeys:&v410 count:1];
        v245 = v242;
        v7 = v241;
        v9 = v361;
        v306 = v244;
        v246 = [v245 initWithDomain:v243 code:2 userInfo:?];
        v309 = 0;
        selfCopy7 = 0;
        *errorCopy4 = v246;
        goto LABEL_291;
      }

      v309 = 0;
      selfCopy7 = 0;
LABEL_289:
      v85 = v375;
      v122 = v364;
      v118 = v340;
      goto LABEL_304;
    }
  }

  v309 = 0;
LABEL_76:
  v50 = [dictionaryCopy objectForKeyedSubscript:@"failureResponseCount"];
  v306 = v50;
  if (v50)
  {
    v51 = v50;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v307 = v51;
        goto LABEL_79;
      }

      if (errorCopy4)
      {
        v362 = v9;
        v247 = v7;
        v248 = objc_alloc(MEMORY[0x1E696ABC0]);
        v249 = *MEMORY[0x1E698F240];
        v408 = *MEMORY[0x1E696A578];
        v305 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"failureResponseCount"];
        v409 = v305;
        v250 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v409 forKeys:&v408 count:1];
        v251 = v248;
        v7 = v247;
        v9 = v362;
        v304 = v250;
        v252 = [v251 initWithDomain:v249 code:2 userInfo:?];
        v307 = 0;
        selfCopy7 = 0;
        *errorCopy4 = v252;
        goto LABEL_333;
      }

      v307 = 0;
      selfCopy7 = 0;
LABEL_291:
      v85 = v375;
      v122 = v364;
      v118 = v340;
      goto LABEL_303;
    }
  }

  v307 = 0;
LABEL_79:
  v52 = [dictionaryCopy objectForKeyedSubscript:@"siriUnavailableResponseCount"];
  v304 = v52;
  if (v52)
  {
    v53 = v52;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v305 = v53;
        goto LABEL_82;
      }

      if (errorCopy4)
      {
        v363 = v9;
        v253 = v7;
        v254 = objc_alloc(MEMORY[0x1E696ABC0]);
        v255 = *MEMORY[0x1E698F240];
        v406 = *MEMORY[0x1E696A578];
        v303 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"siriUnavailableResponseCount"];
        v407 = v303;
        v256 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v407 forKeys:&v406 count:1];
        v257 = v254;
        v7 = v253;
        v9 = v363;
        v302 = v256;
        v258 = [v257 initWithDomain:v255 code:2 userInfo:?];
        v305 = 0;
        selfCopy7 = 0;
        *errorCopy4 = v258;
        v85 = v375;
        v122 = v364;
        v118 = v340;
        goto LABEL_301;
      }

      v305 = 0;
      selfCopy7 = 0;
LABEL_333:
      v85 = v375;
      v122 = v364;
      v118 = v340;
      goto LABEL_302;
    }
  }

  v305 = 0;
LABEL_82:
  v54 = [dictionaryCopy objectForKeyedSubscript:@"siriResponseId"];
  v302 = v54;
  if (v54 && (v55 = v54, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (errorCopy4)
      {
        v322 = v8;
        v265 = v7;
        v266 = objc_alloc(MEMORY[0x1E696ABC0]);
        v267 = *MEMORY[0x1E698F240];
        v404 = *MEMORY[0x1E696A578];
        v301 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"siriResponseId"];
        v405 = v301;
        v268 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v405 forKeys:&v404 count:1];
        v269 = v266;
        v7 = v265;
        v8 = v322;
        v300 = v268;
        v270 = [v269 initWithDomain:v267 code:2 userInfo:?];
        v303 = 0;
        selfCopy7 = 0;
        *errorCopy4 = v270;
        v85 = v375;
        v122 = v364;
        v118 = v340;
        goto LABEL_300;
      }

      v303 = 0;
      selfCopy7 = 0;
      v85 = v375;
      v122 = v364;
      v118 = v340;
      goto LABEL_301;
    }

    v303 = v55;
    dictionaryCopy = v381;
  }

  else
  {
    v303 = 0;
  }

  v56 = [dictionaryCopy objectForKeyedSubscript:@"responseCategory"];
  v347 = v9;
  v300 = v56;
  if (v56 && (v57 = v56, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!errorCopy4)
      {
        v301 = 0;
        selfCopy7 = 0;
        v85 = v375;
        v122 = v364;
        v118 = v340;
        goto LABEL_300;
      }

      v273 = v7;
      v274 = objc_alloc(MEMORY[0x1E696ABC0]);
      v275 = *MEMORY[0x1E698F240];
      v402 = *MEMORY[0x1E696A578];
      v299 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"responseCategory"];
      v403 = v299;
      v276 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v403 forKeys:&v402 count:1];
      v277 = v274;
      v7 = v273;
      v9 = v347;
      v298 = v276;
      v278 = [v277 initWithDomain:v275 code:2 userInfo:?];
      v301 = 0;
      selfCopy7 = 0;
      *errorCopy4 = v278;
LABEL_339:
      v85 = v375;
      v122 = v364;
      v118 = v340;
      goto LABEL_299;
    }

    v301 = v57;
  }

  else
  {
    v301 = 0;
  }

  v58 = [dictionaryCopy objectForKeyedSubscript:@"isIntelligenceEngineRequest"];
  v298 = v58;
  if (!v58 || (v59 = v58, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v60 = v7;
    v299 = 0;
    goto LABEL_91;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (errorCopy4)
    {
      v279 = v7;
      v280 = objc_alloc(MEMORY[0x1E696ABC0]);
      v281 = *MEMORY[0x1E698F240];
      v400 = *MEMORY[0x1E696A578];
      obj = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isIntelligenceEngineRequest"];
      v401 = obj;
      v282 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v401 forKeys:&v400 count:1];
      v283 = v280;
      v7 = v279;
      v9 = v347;
      v323 = v282;
      v284 = [v283 initWithDomain:v281 code:2 userInfo:?];
      v299 = 0;
      selfCopy7 = 0;
      *errorCopy4 = v284;
      v85 = v375;
      v122 = v364;
      v118 = v340;

      goto LABEL_298;
    }

    v299 = 0;
    selfCopy7 = 0;
    goto LABEL_339;
  }

  v60 = v7;
  v299 = v59;
LABEL_91:
  v61 = [v381 objectForKeyedSubscript:@"intelligenceEngineRouting"];
  null = [MEMORY[0x1E695DFB0] null];
  v63 = [v61 isEqual:null];

  if (v63)
  {

    v61 = 0;
  }

  else if (v61)
  {
    objc_opt_class();
    v7 = v60;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      obj = v61;
      if (!errorCopy4)
      {
        selfCopy7 = 0;
        v9 = v347;
        v85 = v375;
        v122 = v364;
        v118 = v340;
        goto LABEL_298;
      }

      v227 = objc_alloc(MEMORY[0x1E696ABC0]);
      v228 = *MEMORY[0x1E698F240];
      v398 = *MEMORY[0x1E696A578];
      v321 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"intelligenceEngineRouting"];
      v399 = v321;
      v229 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v399 forKeys:&v398 count:1];
      v230 = v228;
      v7 = v60;
      selfCopy7 = 0;
      *errorCopy4 = [v227 initWithDomain:v230 code:2 userInfo:v229];
LABEL_283:
      v9 = v347;
      v85 = v375;
      v122 = v364;
      v118 = v340;
      goto LABEL_296;
    }

    goto LABEL_240;
  }

  v7 = v60;
LABEL_240:
  v321 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v61, "count")}];
  v384 = 0u;
  v385 = 0u;
  v386 = 0u;
  v387 = 0u;
  v231 = v61;
  v232 = [v231 countByEnumeratingWithState:&v384 objects:v397 count:16];
  obj = v231;
  if (!v232)
  {
    goto LABEL_249;
  }

  v233 = v232;
  v296 = *v385;
  while (2)
  {
    v234 = v8;
    for (i = 0; i != v233; ++i)
    {
      if (*v385 != v296)
      {
        objc_enumerationMutation(obj);
      }

      v236 = *(*(&v384 + 1) + 8 * i);
      objc_opt_class();
      v8 = v234;
      if (objc_opt_isKindOfClass())
      {
        if (errorCopy4)
        {
          v259 = v7;
          v260 = objc_alloc(MEMORY[0x1E696ABC0]);
          v261 = *MEMORY[0x1E698F240];
          v395 = *MEMORY[0x1E696A578];
          v297 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"intelligenceEngineRouting"];
          v396 = v297;
          v262 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v396 forKeys:&v395 count:1];
          v263 = v260;
          v264 = v261;
LABEL_276:
          v85 = v375;
          *errorCopy4 = [v263 initWithDomain:v264 code:2 userInfo:v262];

          selfCopy7 = 0;
          v229 = obj;
          v7 = v259;
          v9 = v347;
          goto LABEL_277;
        }

        goto LABEL_282;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy4)
        {
          v259 = v7;
          v271 = objc_alloc(MEMORY[0x1E696ABC0]);
          v272 = *MEMORY[0x1E698F240];
          v393 = *MEMORY[0x1E696A578];
          v297 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"intelligenceEngineRouting"];
          v394 = v297;
          v262 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v394 forKeys:&v393 count:1];
          v263 = v271;
          v264 = v272;
          goto LABEL_276;
        }

LABEL_282:
        selfCopy7 = 0;
        v229 = obj;
        goto LABEL_283;
      }

      v237 = v7;
      v238 = v236;
      [v321 addObject:v238];

      v7 = v237;
    }

    v231 = obj;
    v8 = v234;
    v233 = [obj countByEnumeratingWithState:&v384 objects:v397 count:16];
    if (v233)
    {
      continue;
    }

    break;
  }

LABEL_249:

  v239 = [v381 objectForKeyedSubscript:@"invocationSource"];
  v297 = v239;
  if (v239)
  {
    v240 = v239;
    objc_opt_class();
    v9 = v347;
    if (objc_opt_isKindOfClass())
    {
      v239 = 0;
      goto LABEL_293;
    }

    objc_opt_class();
    v85 = v375;
    if (objc_opt_isKindOfClass())
    {
      v239 = v240;
      goto LABEL_294;
    }

    if (errorCopy4)
    {
      v287 = v8;
      v288 = v7;
      v289 = objc_alloc(MEMORY[0x1E696ABC0]);
      v290 = *MEMORY[0x1E698F240];
      v391 = *MEMORY[0x1E696A578];
      v291 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"invocationSource"];
      v392 = v291;
      v292 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v392 forKeys:&v391 count:1];
      v293 = v289;
      v7 = v288;
      v8 = v287;
      v9 = v347;
      *errorCopy4 = [v293 initWithDomain:v290 code:2 userInfo:v292];

      v85 = v375;
    }

    v229 = 0;
    selfCopy7 = 0;
LABEL_277:
    v122 = v364;
  }

  else
  {
    v9 = v347;
LABEL_293:
    v85 = v375;
LABEL_294:
    v122 = v364;
    v229 = v239;
    self = [(BMSiriScorecardMetrics *)self initWithEventMetadata:v7 deviceType:v382 programCode:v379 productId:v85 systemBuild:v377 dataSharingOptInStatus:v373 viewInterface:v370 audioInterfaceVendorId:v368 audioInterfaceProductId:v365 asrLocation:v364 nlLocation:v366 siriInputLocale:v342 dictationLocale:v338 subDomain:v339 totalTurnCount:v335 validTurnCount:v332 siriTasksStarted:v330 siriTasksCompleted:v328 flowTasksStarted:v326 flowTasksCompleted:v324 reliabilityRequestCount:v317 reliabilityTurnCount:v315 clientErrorCount:v313 undesiredResponseCount:v311 fatalResponseCount:v309 failureResponseCount:v307 siriUnavailableResponseCount:v305 siriResponseId:v303 responseCategory:v301 isIntelligenceEngineRequest:v299 intelligenceEngineRouting:v321 invocationSource:v239];
    selfCopy7 = self;
  }

  v118 = v340;

LABEL_296:
LABEL_298:

LABEL_299:
LABEL_300:

LABEL_301:
LABEL_302:

LABEL_303:
LABEL_304:

LABEL_305:
  v165 = v334;

LABEL_306:
LABEL_307:

LABEL_308:
LABEL_309:

  v20 = v365;
LABEL_310:

LABEL_311:
LABEL_312:

LABEL_313:
LABEL_314:

LABEL_315:
  v21 = v337;
LABEL_316:

LABEL_317:
  v123 = v342;
LABEL_318:

LABEL_319:
  v71 = v379;
LABEL_320:

LABEL_321:
LABEL_322:

  dictionaryCopy = v381;
LABEL_323:

LABEL_324:
LABEL_325:

LABEL_326:
LABEL_327:

LABEL_328:
LABEL_329:

LABEL_330:
LABEL_331:

  v285 = *MEMORY[0x1E69E9840];
  return selfCopy7;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriScorecardMetrics *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v39 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_eventMetadata)
  {
    v37 = 0;
    PBDataWriterPlaceMark();
    [(BMSiriScorecardMetricsEventMetadata *)self->_eventMetadata writeTo:toCopy];
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
    v37 = 0;
    PBDataWriterPlaceMark();
    [(BMSiriScorecardMetricsISOLocale *)self->_siriInputLocale writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_dictationLocale)
  {
    v37 = 0;
    PBDataWriterPlaceMark();
    [(BMSiriScorecardMetricsISOLocale *)self->_dictationLocale writeTo:toCopy];
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

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = self->_intelligenceEngineRouting;
  v27 = [(NSArray *)v26 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v34;
    do
    {
      v30 = 0;
      do
      {
        if (*v34 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [*(*(&v33 + 1) + 8 * v30) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v30;
      }

      while (v28 != v30);
      v28 = [(NSArray *)v26 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v28);
  }

  if (self->_hasInvocationSource)
  {
    invocationSource = self->_invocationSource;
    PBDataWriterWriteUint32Field();
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v172.receiver = self;
  v172.super_class = BMSiriScorecardMetrics;
  v5 = [(BMEventBase *)&v172 init];
  if (!v5)
  {
LABEL_340:
    v170 = v5;
    goto LABEL_341;
  }

  v6 = objc_opt_new();
  while (2)
  {
    position = [fromCopy position];
    if (position >= [fromCopy length] || (objc_msgSend(fromCopy, "hasError") & 1) != 0)
    {
      goto LABEL_338;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      LOBYTE(v173) = 0;
      v11 = [fromCopy position] + 1;
      if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
      {
        data = [fromCopy data];
        [data getBytes:&v173 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v10 |= (v173 & 0x7F) << v8;
      if ((v173 & 0x80) == 0)
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

    v15 = [fromCopy hasError] ? 0 : v10;
LABEL_17:
    if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
    {
LABEL_338:
      v167 = [v6 copy];
      intelligenceEngineRouting = v5->_intelligenceEngineRouting;
      v5->_intelligenceEngineRouting = v167;

      hasError = [fromCopy hasError];
      if (hasError)
      {
        goto LABEL_339;
      }

      goto LABEL_340;
    }

    switch((v15 >> 3))
    {
      case 1u:
        v173 = 0;
        v174 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_342;
        }

        v16 = [[BMSiriScorecardMetricsEventMetadata alloc] initByReadFrom:fromCopy];
        if (!v16)
        {
          goto LABEL_342;
        }

        v17 = 128;
        goto LABEL_49;
      case 2u:
        v18 = PBReaderReadString();
        v19 = 136;
        goto LABEL_180;
      case 3u:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v5->_hasProgramCode = 1;
        while (1)
        {
          LOBYTE(v173) = 0;
          v55 = [fromCopy position] + 1;
          if (v55 >= [fromCopy position] && (v56 = objc_msgSend(fromCopy, "position") + 1, v56 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v173 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v54 |= (v173 & 0x7F) << v52;
          if ((v173 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v14 = v53++ >= 9;
          if (v14)
          {
            v26 = 0;
            goto LABEL_269;
          }
        }

        if ([fromCopy hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v54;
        }

LABEL_269:
        v164 = 44;
        goto LABEL_337;
      case 4u:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        v5->_hasProductId = 1;
        while (1)
        {
          LOBYTE(v173) = 0;
          v67 = [fromCopy position] + 1;
          if (v67 >= [fromCopy position] && (v68 = objc_msgSend(fromCopy, "position") + 1, v68 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v173 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v66 |= (v173 & 0x7F) << v64;
          if ((v173 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v14 = v65++ >= 9;
          if (v14)
          {
            v26 = 0;
            goto LABEL_277;
          }
        }

        if ([fromCopy hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v66;
        }

LABEL_277:
        v164 = 48;
        goto LABEL_337;
      case 5u:
        v18 = PBReaderReadString();
        v19 = 144;
        goto LABEL_180;
      case 6u:
        v88 = 0;
        v89 = 0;
        v90 = 0;
        v5->_hasDataSharingOptInStatus = 1;
        while (1)
        {
          LOBYTE(v173) = 0;
          v91 = [fromCopy position] + 1;
          if (v91 >= [fromCopy position] && (v92 = objc_msgSend(fromCopy, "position") + 1, v92 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v173 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v90 |= (v173 & 0x7F) << v88;
          if ((v173 & 0x80) == 0)
          {
            break;
          }

          v88 += 7;
          v14 = v89++ >= 9;
          if (v14)
          {
            v26 = 0;
            goto LABEL_293;
          }
        }

        if ([fromCopy hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v90;
        }

LABEL_293:
        v164 = 52;
        goto LABEL_337;
      case 7u:
        v100 = 0;
        v101 = 0;
        v102 = 0;
        v5->_hasViewInterface = 1;
        while (1)
        {
          LOBYTE(v173) = 0;
          v103 = [fromCopy position] + 1;
          if (v103 >= [fromCopy position] && (v104 = objc_msgSend(fromCopy, "position") + 1, v104 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v173 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v102 |= (v173 & 0x7F) << v100;
          if ((v173 & 0x80) == 0)
          {
            break;
          }

          v100 += 7;
          v14 = v101++ >= 9;
          if (v14)
          {
            v26 = 0;
            goto LABEL_301;
          }
        }

        if ([fromCopy hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v102;
        }

LABEL_301:
        v164 = 56;
        goto LABEL_337;
      case 8u:
        v18 = PBReaderReadString();
        v19 = 152;
        goto LABEL_180;
      case 9u:
        v18 = PBReaderReadString();
        v19 = 160;
        goto LABEL_180;
      case 0xAu:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v5->_hasAsrLocation = 1;
        while (1)
        {
          LOBYTE(v173) = 0;
          v37 = [fromCopy position] + 1;
          if (v37 >= [fromCopy position] && (v38 = objc_msgSend(fromCopy, "position") + 1, v38 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v173 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v36 |= (v173 & 0x7F) << v34;
          if ((v173 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v14 = v35++ >= 9;
          if (v14)
          {
            v26 = 0;
            goto LABEL_257;
          }
        }

        if ([fromCopy hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v36;
        }

LABEL_257:
        v164 = 60;
        goto LABEL_337;
      case 0xBu:
        v112 = 0;
        v113 = 0;
        v114 = 0;
        v5->_hasNlLocation = 1;
        while (1)
        {
          LOBYTE(v173) = 0;
          v115 = [fromCopy position] + 1;
          if (v115 >= [fromCopy position] && (v116 = objc_msgSend(fromCopy, "position") + 1, v116 <= objc_msgSend(fromCopy, "length")))
          {
            data7 = [fromCopy data];
            [data7 getBytes:&v173 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v114 |= (v173 & 0x7F) << v112;
          if ((v173 & 0x80) == 0)
          {
            break;
          }

          v112 += 7;
          v14 = v113++ >= 9;
          if (v14)
          {
            v26 = 0;
            goto LABEL_309;
          }
        }

        if ([fromCopy hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v114;
        }

LABEL_309:
        v164 = 64;
        goto LABEL_337;
      case 0xCu:
        v173 = 0;
        v174 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_342;
        }

        v16 = [[BMSiriScorecardMetricsISOLocale alloc] initByReadFrom:fromCopy];
        if (!v16)
        {
          goto LABEL_342;
        }

        v17 = 168;
        goto LABEL_49;
      case 0xDu:
        v173 = 0;
        v174 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_342;
        }

        v16 = [[BMSiriScorecardMetricsISOLocale alloc] initByReadFrom:fromCopy];
        if (!v16)
        {
          goto LABEL_342;
        }

        v17 = 176;
LABEL_49:
        v33 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;

        PBReaderRecallMark();
        continue;
      case 0xEu:
        v18 = PBReaderReadString();
        v19 = 184;
        goto LABEL_180;
      case 0xFu:
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v5->_hasTotalTurnCount = 1;
        while (1)
        {
          LOBYTE(v173) = 0;
          v30 = [fromCopy position] + 1;
          if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 1, v31 <= objc_msgSend(fromCopy, "length")))
          {
            data8 = [fromCopy data];
            [data8 getBytes:&v173 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v29 |= (v173 & 0x7F) << v27;
          if ((v173 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v14 = v28++ >= 9;
          if (v14)
          {
            v26 = 0;
            goto LABEL_253;
          }
        }

        if ([fromCopy hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v29;
        }

LABEL_253:
        v164 = 68;
        goto LABEL_337;
      case 0x10u:
        v58 = 0;
        v59 = 0;
        v60 = 0;
        v5->_hasValidTurnCount = 1;
        while (1)
        {
          LOBYTE(v173) = 0;
          v61 = [fromCopy position] + 1;
          if (v61 >= [fromCopy position] && (v62 = objc_msgSend(fromCopy, "position") + 1, v62 <= objc_msgSend(fromCopy, "length")))
          {
            data9 = [fromCopy data];
            [data9 getBytes:&v173 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v60 |= (v173 & 0x7F) << v58;
          if ((v173 & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v14 = v59++ >= 9;
          if (v14)
          {
            v26 = 0;
            goto LABEL_273;
          }
        }

        if ([fromCopy hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v60;
        }

LABEL_273:
        v164 = 72;
        goto LABEL_337;
      case 0x11u:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v5->_hasSiriTasksStarted = 1;
        while (1)
        {
          LOBYTE(v173) = 0;
          v23 = [fromCopy position] + 1;
          if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 1, v24 <= objc_msgSend(fromCopy, "length")))
          {
            data10 = [fromCopy data];
            [data10 getBytes:&v173 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v22 |= (v173 & 0x7F) << v20;
          if ((v173 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v14 = v21++ >= 9;
          if (v14)
          {
            v26 = 0;
            goto LABEL_249;
          }
        }

        if ([fromCopy hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v22;
        }

LABEL_249:
        v164 = 76;
        goto LABEL_337;
      case 0x12u:
        v76 = 0;
        v77 = 0;
        v78 = 0;
        v5->_hasSiriTasksCompleted = 1;
        while (1)
        {
          LOBYTE(v173) = 0;
          v79 = [fromCopy position] + 1;
          if (v79 >= [fromCopy position] && (v80 = objc_msgSend(fromCopy, "position") + 1, v80 <= objc_msgSend(fromCopy, "length")))
          {
            data11 = [fromCopy data];
            [data11 getBytes:&v173 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v78 |= (v173 & 0x7F) << v76;
          if ((v173 & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v14 = v77++ >= 9;
          if (v14)
          {
            v26 = 0;
            goto LABEL_285;
          }
        }

        if ([fromCopy hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v78;
        }

LABEL_285:
        v164 = 80;
        goto LABEL_337;
      case 0x13u:
        v106 = 0;
        v107 = 0;
        v108 = 0;
        v5->_hasFlowTasksStarted = 1;
        while (1)
        {
          LOBYTE(v173) = 0;
          v109 = [fromCopy position] + 1;
          if (v109 >= [fromCopy position] && (v110 = objc_msgSend(fromCopy, "position") + 1, v110 <= objc_msgSend(fromCopy, "length")))
          {
            data12 = [fromCopy data];
            [data12 getBytes:&v173 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v108 |= (v173 & 0x7F) << v106;
          if ((v173 & 0x80) == 0)
          {
            break;
          }

          v106 += 7;
          v14 = v107++ >= 9;
          if (v14)
          {
            v26 = 0;
            goto LABEL_305;
          }
        }

        if ([fromCopy hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v108;
        }

LABEL_305:
        v164 = 84;
        goto LABEL_337;
      case 0x14u:
        v133 = 0;
        v134 = 0;
        v135 = 0;
        v5->_hasFlowTasksCompleted = 1;
        while (1)
        {
          LOBYTE(v173) = 0;
          v136 = [fromCopy position] + 1;
          if (v136 >= [fromCopy position] && (v137 = objc_msgSend(fromCopy, "position") + 1, v137 <= objc_msgSend(fromCopy, "length")))
          {
            data13 = [fromCopy data];
            [data13 getBytes:&v173 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v135 |= (v173 & 0x7F) << v133;
          if ((v173 & 0x80) == 0)
          {
            break;
          }

          v133 += 7;
          v14 = v134++ >= 9;
          if (v14)
          {
            v26 = 0;
            goto LABEL_322;
          }
        }

        if ([fromCopy hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v135;
        }

LABEL_322:
        v164 = 88;
        goto LABEL_337;
      case 0x15u:
        v82 = 0;
        v83 = 0;
        v84 = 0;
        v5->_hasReliabilityRequestCount = 1;
        while (1)
        {
          LOBYTE(v173) = 0;
          v85 = [fromCopy position] + 1;
          if (v85 >= [fromCopy position] && (v86 = objc_msgSend(fromCopy, "position") + 1, v86 <= objc_msgSend(fromCopy, "length")))
          {
            data14 = [fromCopy data];
            [data14 getBytes:&v173 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v84 |= (v173 & 0x7F) << v82;
          if ((v173 & 0x80) == 0)
          {
            break;
          }

          v82 += 7;
          v14 = v83++ >= 9;
          if (v14)
          {
            v26 = 0;
            goto LABEL_289;
          }
        }

        if ([fromCopy hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v84;
        }

LABEL_289:
        v164 = 92;
        goto LABEL_337;
      case 0x16u:
        v94 = 0;
        v95 = 0;
        v96 = 0;
        v5->_hasReliabilityTurnCount = 1;
        while (1)
        {
          LOBYTE(v173) = 0;
          v97 = [fromCopy position] + 1;
          if (v97 >= [fromCopy position] && (v98 = objc_msgSend(fromCopy, "position") + 1, v98 <= objc_msgSend(fromCopy, "length")))
          {
            data15 = [fromCopy data];
            [data15 getBytes:&v173 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v96 |= (v173 & 0x7F) << v94;
          if ((v173 & 0x80) == 0)
          {
            break;
          }

          v94 += 7;
          v14 = v95++ >= 9;
          if (v14)
          {
            v26 = 0;
            goto LABEL_297;
          }
        }

        if ([fromCopy hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v96;
        }

LABEL_297:
        v164 = 96;
        goto LABEL_337;
      case 0x17u:
        v127 = 0;
        v128 = 0;
        v129 = 0;
        v5->_hasClientErrorCount = 1;
        while (1)
        {
          LOBYTE(v173) = 0;
          v130 = [fromCopy position] + 1;
          if (v130 >= [fromCopy position] && (v131 = objc_msgSend(fromCopy, "position") + 1, v131 <= objc_msgSend(fromCopy, "length")))
          {
            data16 = [fromCopy data];
            [data16 getBytes:&v173 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v129 |= (v173 & 0x7F) << v127;
          if ((v173 & 0x80) == 0)
          {
            break;
          }

          v127 += 7;
          v14 = v128++ >= 9;
          if (v14)
          {
            v26 = 0;
            goto LABEL_318;
          }
        }

        if ([fromCopy hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v129;
        }

LABEL_318:
        v164 = 100;
        goto LABEL_337;
      case 0x18u:
        v139 = 0;
        v140 = 0;
        v141 = 0;
        v5->_hasUndesiredResponseCount = 1;
        while (1)
        {
          LOBYTE(v173) = 0;
          v142 = [fromCopy position] + 1;
          if (v142 >= [fromCopy position] && (v143 = objc_msgSend(fromCopy, "position") + 1, v143 <= objc_msgSend(fromCopy, "length")))
          {
            data17 = [fromCopy data];
            [data17 getBytes:&v173 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v141 |= (v173 & 0x7F) << v139;
          if ((v173 & 0x80) == 0)
          {
            break;
          }

          v139 += 7;
          v14 = v140++ >= 9;
          if (v14)
          {
            v26 = 0;
            goto LABEL_326;
          }
        }

        if ([fromCopy hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v141;
        }

LABEL_326:
        v164 = 104;
        goto LABEL_337;
      case 0x19u:
        v46 = 0;
        v47 = 0;
        v48 = 0;
        v5->_hasFatalResponseCount = 1;
        while (1)
        {
          LOBYTE(v173) = 0;
          v49 = [fromCopy position] + 1;
          if (v49 >= [fromCopy position] && (v50 = objc_msgSend(fromCopy, "position") + 1, v50 <= objc_msgSend(fromCopy, "length")))
          {
            data18 = [fromCopy data];
            [data18 getBytes:&v173 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v48 |= (v173 & 0x7F) << v46;
          if ((v173 & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v14 = v47++ >= 9;
          if (v14)
          {
            v26 = 0;
            goto LABEL_265;
          }
        }

        if ([fromCopy hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v48;
        }

LABEL_265:
        v164 = 108;
        goto LABEL_337;
      case 0x1Au:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v5->_hasFailureResponseCount = 1;
        while (1)
        {
          LOBYTE(v173) = 0;
          v43 = [fromCopy position] + 1;
          if (v43 >= [fromCopy position] && (v44 = objc_msgSend(fromCopy, "position") + 1, v44 <= objc_msgSend(fromCopy, "length")))
          {
            data19 = [fromCopy data];
            [data19 getBytes:&v173 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v42 |= (v173 & 0x7F) << v40;
          if ((v173 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v14 = v41++ >= 9;
          if (v14)
          {
            v26 = 0;
            goto LABEL_261;
          }
        }

        if ([fromCopy hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v42;
        }

LABEL_261:
        v164 = 112;
        goto LABEL_337;
      case 0x1Bu:
        v158 = 0;
        v159 = 0;
        v160 = 0;
        v5->_hasSiriUnavailableResponseCount = 1;
        while (1)
        {
          LOBYTE(v173) = 0;
          v161 = [fromCopy position] + 1;
          if (v161 >= [fromCopy position] && (v162 = objc_msgSend(fromCopy, "position") + 1, v162 <= objc_msgSend(fromCopy, "length")))
          {
            data20 = [fromCopy data];
            [data20 getBytes:&v173 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v160 |= (v173 & 0x7F) << v158;
          if ((v173 & 0x80) == 0)
          {
            break;
          }

          v158 += 7;
          v14 = v159++ >= 9;
          if (v14)
          {
            v26 = 0;
            goto LABEL_336;
          }
        }

        if ([fromCopy hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v160;
        }

LABEL_336:
        v164 = 116;
        goto LABEL_337;
      case 0x1Cu:
        v18 = PBReaderReadString();
        v19 = 192;
LABEL_180:
        v118 = *(&v5->super.super.isa + v19);
        *(&v5->super.super.isa + v19) = v18;

        continue;
      case 0x1Du:
        v145 = 0;
        v146 = 0;
        v147 = 0;
        v5->_hasResponseCategory = 1;
        while (1)
        {
          LOBYTE(v173) = 0;
          v148 = [fromCopy position] + 1;
          if (v148 >= [fromCopy position] && (v149 = objc_msgSend(fromCopy, "position") + 1, v149 <= objc_msgSend(fromCopy, "length")))
          {
            data21 = [fromCopy data];
            [data21 getBytes:&v173 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v147 |= (v173 & 0x7F) << v145;
          if ((v173 & 0x80) == 0)
          {
            break;
          }

          v145 += 7;
          v14 = v146++ >= 9;
          if (v14)
          {
            v26 = 0;
            goto LABEL_330;
          }
        }

        if ([fromCopy hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v147;
        }

LABEL_330:
        v164 = 120;
        goto LABEL_337;
      case 0x1Eu:
        v151 = 0;
        v152 = 0;
        v153 = 0;
        v5->_hasIsIntelligenceEngineRequest = 1;
        while (1)
        {
          LOBYTE(v173) = 0;
          v154 = [fromCopy position] + 1;
          if (v154 >= [fromCopy position] && (v155 = objc_msgSend(fromCopy, "position") + 1, v155 <= objc_msgSend(fromCopy, "length")))
          {
            data22 = [fromCopy data];
            [data22 getBytes:&v173 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v153 |= (v173 & 0x7F) << v151;
          if ((v173 & 0x80) == 0)
          {
            break;
          }

          v151 += 7;
          v14 = v152++ >= 9;
          if (v14)
          {
            LOBYTE(v157) = 0;
            goto LABEL_332;
          }
        }

        v157 = (v153 != 0) & ~[fromCopy hasError];
LABEL_332:
        v5->_isIntelligenceEngineRequest = v157;
        continue;
      case 0x1Fu:
        v119 = 0;
        v120 = 0;
        v121 = 0;
        v122 = MEMORY[0x1E696AD98];
        while (1)
        {
          LOBYTE(v173) = 0;
          v123 = [fromCopy position] + 1;
          if (v123 >= [fromCopy position] && (v124 = objc_msgSend(fromCopy, "position") + 1, v124 <= objc_msgSend(fromCopy, "length")))
          {
            data23 = [fromCopy data];
            [data23 getBytes:&v173 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v121 |= (v173 & 0x7F) << v119;
          if ((v173 & 0x80) == 0)
          {
            break;
          }

          v119 += 7;
          v14 = v120++ >= 9;
          if (v14)
          {
            v126 = 0;
            goto LABEL_313;
          }
        }

        if ([fromCopy hasError])
        {
          v126 = 0;
        }

        else
        {
          v126 = v121;
        }

LABEL_313:
        v165 = [v122 numberWithUnsignedInt:v126];
        if (v165)
        {
          v166 = v165;
          [v6 addObject:v165];

          continue;
        }

LABEL_342:

LABEL_339:
        v170 = 0;
LABEL_341:

        return v170;
      case 0x20u:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        v5->_hasInvocationSource = 1;
        while (1)
        {
          LOBYTE(v173) = 0;
          v73 = [fromCopy position] + 1;
          if (v73 >= [fromCopy position] && (v74 = objc_msgSend(fromCopy, "position") + 1, v74 <= objc_msgSend(fromCopy, "length")))
          {
            data24 = [fromCopy data];
            [data24 getBytes:&v173 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v72 |= (v173 & 0x7F) << v70;
          if ((v173 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v14 = v71++ >= 9;
          if (v14)
          {
            v26 = 0;
            goto LABEL_281;
          }
        }

        if ([fromCopy hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v72;
        }

LABEL_281:
        v164 = 124;
LABEL_337:
        *(&v5->super.super.isa + v164) = v26;
        continue;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

        goto LABEL_342;
    }
  }
}

- (NSString)description
{
  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  eventMetadata = [(BMSiriScorecardMetrics *)self eventMetadata];
  deviceType = [(BMSiriScorecardMetrics *)self deviceType];
  v36 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriScorecardMetrics programCode](self, "programCode")}];
  v32 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriScorecardMetrics productId](self, "productId")}];
  systemBuild = [(BMSiriScorecardMetrics *)self systemBuild];
  v31 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriScorecardMetrics dataSharingOptInStatus](self, "dataSharingOptInStatus")}];
  v33 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriScorecardMetrics viewInterface](self, "viewInterface")}];
  audioInterfaceVendorId = [(BMSiriScorecardMetrics *)self audioInterfaceVendorId];
  audioInterfaceProductId = [(BMSiriScorecardMetrics *)self audioInterfaceProductId];
  v28 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriScorecardMetrics asrLocation](self, "asrLocation")}];
  v27 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriScorecardMetrics nlLocation](self, "nlLocation")}];
  siriInputLocale = [(BMSiriScorecardMetrics *)self siriInputLocale];
  dictationLocale = [(BMSiriScorecardMetrics *)self dictationLocale];
  subDomain = [(BMSiriScorecardMetrics *)self subDomain];
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriScorecardMetrics totalTurnCount](self, "totalTurnCount")}];
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriScorecardMetrics validTurnCount](self, "validTurnCount")}];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriScorecardMetrics siriTasksStarted](self, "siriTasksStarted")}];
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriScorecardMetrics siriTasksCompleted](self, "siriTasksCompleted")}];
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriScorecardMetrics flowTasksStarted](self, "flowTasksStarted")}];
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriScorecardMetrics flowTasksCompleted](self, "flowTasksCompleted")}];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriScorecardMetrics reliabilityRequestCount](self, "reliabilityRequestCount")}];
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriScorecardMetrics reliabilityTurnCount](self, "reliabilityTurnCount")}];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriScorecardMetrics clientErrorCount](self, "clientErrorCount")}];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriScorecardMetrics undesiredResponseCount](self, "undesiredResponseCount")}];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriScorecardMetrics fatalResponseCount](self, "fatalResponseCount")}];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriScorecardMetrics failureResponseCount](self, "failureResponseCount")}];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriScorecardMetrics siriUnavailableResponseCount](self, "siriUnavailableResponseCount")}];
  siriResponseId = [(BMSiriScorecardMetrics *)self siriResponseId];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriScorecardMetrics responseCategory](self, "responseCategory")}];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriScorecardMetrics isIntelligenceEngineRequest](self, "isIntelligenceEngineRequest")}];
  intelligenceEngineRouting = [(BMSiriScorecardMetrics *)self intelligenceEngineRouting];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriScorecardMetrics invocationSource](self, "invocationSource")}];
  v19 = [v18 initWithFormat:@"BMSiriScorecardMetrics with eventMetadata: %@, deviceType: %@, programCode: %@, productId: %@, systemBuild: %@, dataSharingOptInStatus: %@, viewInterface: %@, audioInterfaceVendorId: %@, audioInterfaceProductId: %@, asrLocation: %@, nlLocation: %@, siriInputLocale: %@, dictationLocale: %@, subDomain: %@, totalTurnCount: %@, validTurnCount: %@, siriTasksStarted: %@, siriTasksCompleted: %@, flowTasksStarted: %@, flowTasksCompleted: %@, reliabilityRequestCount: %@, reliabilityTurnCount: %@, clientErrorCount: %@, undesiredResponseCount: %@, fatalResponseCount: %@, failureResponseCount: %@, siriUnavailableResponseCount: %@, siriResponseId: %@, responseCategory: %@, isIntelligenceEngineRequest: %@, intelligenceEngineRouting: %@, invocationSource: %@", eventMetadata, deviceType, v36, v32, systemBuild, v31, v33, audioInterfaceVendorId, audioInterfaceProductId, v28, v27, siriInputLocale, dictationLocale, subDomain, v16, v24, v15, v23, v22, v21, v14, v20, v13, v12, v11, v10, v9, siriResponseId, v4, v5, intelligenceEngineRouting, v7];

  return v19;
}

- (BMSiriScorecardMetrics)initWithEventMetadata:(id)metadata deviceType:(id)type programCode:(id)code productId:(id)id systemBuild:(id)build dataSharingOptInStatus:(id)status viewInterface:(id)interface audioInterfaceVendorId:(id)self0 audioInterfaceProductId:(id)self1 asrLocation:(id)self2 nlLocation:(id)self3 siriInputLocale:(id)self4 dictationLocale:(id)self5 subDomain:(id)self6 totalTurnCount:(id)self7 validTurnCount:(id)self8 siriTasksStarted:(id)self9 siriTasksCompleted:(id)completed flowTasksStarted:(id)tasksStarted flowTasksCompleted:(id)tasksCompleted reliabilityRequestCount:(id)requestCount reliabilityTurnCount:(id)reliabilityTurnCount clientErrorCount:(id)errorCount undesiredResponseCount:(id)responseCount fatalResponseCount:(id)fatalResponseCount failureResponseCount:(id)failureResponseCount siriUnavailableResponseCount:(id)unavailableResponseCount siriResponseId:(id)metadata0 responseCategory:(id)metadata1 isIntelligenceEngineRequest:(id)metadata2 intelligenceEngineRouting:(id)metadata3 invocationSource:(id)metadata4
{
  metadataCopy = metadata;
  typeCopy = type;
  typeCopy2 = type;
  codeCopy = code;
  idCopy = id;
  buildCopy = build;
  statusCopy = status;
  interfaceCopy = interface;
  vendorIdCopy = vendorId;
  productIdCopy = productId;
  locationCopy = location;
  nlLocationCopy = nlLocation;
  localeCopy = locale;
  dictationLocaleCopy = dictationLocale;
  domainCopy = domain;
  countCopy = count;
  turnCountCopy = turnCount;
  startedCopy = started;
  completedCopy = completed;
  tasksStartedCopy = tasksStarted;
  tasksCompletedCopy = tasksCompleted;
  requestCountCopy = requestCount;
  reliabilityTurnCountCopy = reliabilityTurnCount;
  errorCountCopy = errorCount;
  responseCountCopy = responseCount;
  fatalResponseCountCopy = fatalResponseCount;
  failureResponseCountCopy = failureResponseCount;
  unavailableResponseCountCopy = unavailableResponseCount;
  responseIdCopy = responseId;
  categoryCopy = category;
  requestCopy = request;
  routingCopy = routing;
  sourceCopy = source;
  v97.receiver = self;
  v97.super_class = BMSiriScorecardMetrics;
  v43 = [(BMEventBase *)&v97 init];
  if (v43)
  {
    v43->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v43->_eventMetadata, metadata);
    objc_storeStrong(&v43->_deviceType, typeCopy);
    if (codeCopy)
    {
      v43->_hasProgramCode = 1;
      intValue = [codeCopy intValue];
    }

    else
    {
      codeCopy = 0;
      v43->_hasProgramCode = 0;
      intValue = -1;
    }

    v43->_programCode = intValue;
    if (idCopy)
    {
      v43->_hasProductId = 1;
      intValue2 = [idCopy intValue];
    }

    else
    {
      v43->_hasProductId = 0;
      intValue2 = -1;
    }

    v43->_productId = intValue2;
    objc_storeStrong(&v43->_systemBuild, build);
    if (statusCopy)
    {
      v43->_hasDataSharingOptInStatus = 1;
      intValue3 = [statusCopy intValue];
    }

    else
    {
      v43->_hasDataSharingOptInStatus = 0;
      intValue3 = -1;
    }

    v43->_dataSharingOptInStatus = intValue3;
    if (interfaceCopy)
    {
      v43->_hasViewInterface = 1;
      intValue4 = [interfaceCopy intValue];
    }

    else
    {
      v43->_hasViewInterface = 0;
      intValue4 = -1;
    }

    v43->_viewInterface = intValue4;
    objc_storeStrong(&v43->_audioInterfaceVendorId, vendorId);
    objc_storeStrong(&v43->_audioInterfaceProductId, productId);
    if (locationCopy)
    {
      v43->_hasAsrLocation = 1;
      intValue5 = [locationCopy intValue];
    }

    else
    {
      v43->_hasAsrLocation = 0;
      intValue5 = -1;
    }

    v43->_asrLocation = intValue5;
    if (nlLocationCopy)
    {
      v43->_hasNlLocation = 1;
      intValue6 = [nlLocationCopy intValue];
    }

    else
    {
      v43->_hasNlLocation = 0;
      intValue6 = -1;
    }

    v43->_nlLocation = intValue6;
    objc_storeStrong(&v43->_siriInputLocale, locale);
    objc_storeStrong(&v43->_dictationLocale, dictationLocale);
    objc_storeStrong(&v43->_subDomain, domain);
    unsignedIntValue = countCopy;
    if (countCopy)
    {
      v43->_hasTotalTurnCount = 1;
      unsignedIntValue = [countCopy unsignedIntValue];
    }

    else
    {
      v43->_hasTotalTurnCount = 0;
    }

    v43->_totalTurnCount = unsignedIntValue;
    unsignedIntValue2 = turnCountCopy;
    if (turnCountCopy)
    {
      v43->_hasValidTurnCount = 1;
      unsignedIntValue2 = [turnCountCopy unsignedIntValue];
    }

    else
    {
      v43->_hasValidTurnCount = 0;
    }

    v43->_validTurnCount = unsignedIntValue2;
    unsignedIntValue3 = startedCopy;
    if (startedCopy)
    {
      v43->_hasSiriTasksStarted = 1;
      unsignedIntValue3 = [startedCopy unsignedIntValue];
    }

    else
    {
      v43->_hasSiriTasksStarted = 0;
    }

    v43->_siriTasksStarted = unsignedIntValue3;
    unsignedIntValue4 = completedCopy;
    if (completedCopy)
    {
      v43->_hasSiriTasksCompleted = 1;
      unsignedIntValue4 = [completedCopy unsignedIntValue];
    }

    else
    {
      v43->_hasSiriTasksCompleted = 0;
    }

    v43->_siriTasksCompleted = unsignedIntValue4;
    unsignedIntValue5 = tasksStartedCopy;
    if (tasksStartedCopy)
    {
      v43->_hasFlowTasksStarted = 1;
      unsignedIntValue5 = [tasksStartedCopy unsignedIntValue];
    }

    else
    {
      v43->_hasFlowTasksStarted = 0;
    }

    v43->_flowTasksStarted = unsignedIntValue5;
    if (tasksCompletedCopy)
    {
      v43->_hasFlowTasksCompleted = 1;
      unsignedIntValue6 = [tasksCompletedCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue6 = 0;
      v43->_hasFlowTasksCompleted = 0;
    }

    v43->_flowTasksCompleted = unsignedIntValue6;
    unsignedIntValue7 = requestCountCopy;
    if (requestCountCopy)
    {
      v43->_hasReliabilityRequestCount = 1;
      unsignedIntValue7 = [requestCountCopy unsignedIntValue];
    }

    else
    {
      v43->_hasReliabilityRequestCount = 0;
    }

    v43->_reliabilityRequestCount = unsignedIntValue7;
    unsignedIntValue8 = reliabilityTurnCountCopy;
    if (reliabilityTurnCountCopy)
    {
      v43->_hasReliabilityTurnCount = 1;
      unsignedIntValue8 = [reliabilityTurnCountCopy unsignedIntValue];
    }

    else
    {
      v43->_hasReliabilityTurnCount = 0;
    }

    v43->_reliabilityTurnCount = unsignedIntValue8;
    unsignedIntValue9 = errorCountCopy;
    if (errorCountCopy)
    {
      v43->_hasClientErrorCount = 1;
      unsignedIntValue9 = [errorCountCopy unsignedIntValue];
    }

    else
    {
      v43->_hasClientErrorCount = 0;
    }

    v43->_clientErrorCount = unsignedIntValue9;
    unsignedIntValue10 = responseCountCopy;
    if (responseCountCopy)
    {
      v43->_hasUndesiredResponseCount = 1;
      unsignedIntValue10 = [responseCountCopy unsignedIntValue];
    }

    else
    {
      v43->_hasUndesiredResponseCount = 0;
    }

    v43->_undesiredResponseCount = unsignedIntValue10;
    unsignedIntValue11 = fatalResponseCountCopy;
    if (fatalResponseCountCopy)
    {
      v43->_hasFatalResponseCount = 1;
      unsignedIntValue11 = [fatalResponseCountCopy unsignedIntValue];
    }

    else
    {
      v43->_hasFatalResponseCount = 0;
    }

    v43->_fatalResponseCount = unsignedIntValue11;
    unsignedIntValue12 = failureResponseCountCopy;
    if (failureResponseCountCopy)
    {
      v43->_hasFailureResponseCount = 1;
      unsignedIntValue12 = [failureResponseCountCopy unsignedIntValue];
    }

    else
    {
      v43->_hasFailureResponseCount = 0;
    }

    v43->_failureResponseCount = unsignedIntValue12;
    unsignedIntValue13 = unavailableResponseCountCopy;
    if (unavailableResponseCountCopy)
    {
      v43->_hasSiriUnavailableResponseCount = 1;
      unsignedIntValue13 = [unavailableResponseCountCopy unsignedIntValue];
    }

    else
    {
      v43->_hasSiriUnavailableResponseCount = 0;
    }

    v43->_siriUnavailableResponseCount = unsignedIntValue13;
    objc_storeStrong(&v43->_siriResponseId, responseId);
    unsignedIntValue14 = categoryCopy;
    if (categoryCopy)
    {
      v43->_hasResponseCategory = 1;
      unsignedIntValue14 = [categoryCopy unsignedIntValue];
    }

    else
    {
      v43->_hasResponseCategory = 0;
    }

    v43->_responseCategory = unsignedIntValue14;
    if (requestCopy)
    {
      v43->_hasIsIntelligenceEngineRequest = 1;
      v43->_isIntelligenceEngineRequest = [requestCopy BOOLValue];
    }

    else
    {
      v43->_hasIsIntelligenceEngineRequest = 0;
      v43->_isIntelligenceEngineRequest = 0;
    }

    objc_storeStrong(&v43->_intelligenceEngineRouting, routing);
    if (sourceCopy)
    {
      v43->_hasInvocationSource = 1;
      unsignedIntValue15 = [sourceCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue15 = 0;
      v43->_hasInvocationSource = 0;
    }

    v43->_invocationSource = unsignedIntValue15;
  }

  return v43;
}

+ (id)protoFields
{
  v37[32] = *MEMORY[0x1E69E9840];
  v36 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventMetadata" number:1 type:14 subMessageClass:objc_opt_class()];
  v37[0] = v36;
  v35 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceType" number:2 type:13 subMessageClass:0];
  v37[1] = v35;
  v34 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"programCode" number:3 type:2 subMessageClass:0];
  v37[2] = v34;
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"productId" number:4 type:2 subMessageClass:0];
  v37[3] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"systemBuild" number:5 type:13 subMessageClass:0];
  v37[4] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dataSharingOptInStatus" number:6 type:2 subMessageClass:0];
  v37[5] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"viewInterface" number:7 type:2 subMessageClass:0];
  v37[6] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"audioInterfaceVendorId" number:8 type:13 subMessageClass:0];
  v37[7] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"audioInterfaceProductId" number:9 type:13 subMessageClass:0];
  v37[8] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"asrLocation" number:10 type:2 subMessageClass:0];
  v37[9] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nlLocation" number:11 type:2 subMessageClass:0];
  v37[10] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"siriInputLocale" number:12 type:14 subMessageClass:objc_opt_class()];
  v37[11] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dictationLocale" number:13 type:14 subMessageClass:objc_opt_class()];
  v37[12] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subDomain" number:14 type:13 subMessageClass:0];
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
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"siriResponseId" number:28 type:13 subMessageClass:0];
  v37[27] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"responseCategory" number:29 type:4 subMessageClass:0];
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
  v15 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"eventMetadata_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_391];
  v36 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceType" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v35 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"programCode" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:2 convertedType:0];
  v34 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"productId" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:2 convertedType:0];
  v33 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"systemBuild" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"dataSharingOptInStatus" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:2 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"viewInterface" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:2 convertedType:0];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"audioInterfaceVendorId" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"audioInterfaceProductId" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"asrLocation" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:2 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nlLocation" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:2 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"siriInputLocale_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_393];
  v25 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"dictationLocale_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_395];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"subDomain" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
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
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"siriResponseId" dataType:2 requestOnly:0 fieldNumber:28 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"responseCategory" dataType:0 requestOnly:0 fieldNumber:29 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isIntelligenceEngineRequest" dataType:0 requestOnly:0 fieldNumber:30 protoDataType:12 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"intelligenceEngineRouting_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_397];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"invocationSource" dataType:0 requestOnly:0 fieldNumber:32 protoDataType:4 convertedType:0];
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
  v37[27] = v5;
  v37[28] = v6;
  v37[29] = v7;
  v37[30] = v12;
  v37[31] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:32];

  v9 = *MEMORY[0x1E69E9840];

  return v11;
}

id __33__BMSiriScorecardMetrics_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _intelligenceEngineRoutingJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __33__BMSiriScorecardMetrics_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 dictationLocale];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __33__BMSiriScorecardMetrics_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 siriInputLocale];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __33__BMSiriScorecardMetrics_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 eventMetadata];
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

    v8 = [[BMSiriScorecardMetrics alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[10] = 0;
    }
  }

  return v4;
}

@end