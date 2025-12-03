@interface LCFELCoreAnalyticsHandler
+ (BOOL)emitChangePointDetectionEvent:(id)event;
+ (BOOL)emitFeatureImportanceEvent:(id)event;
+ (BOOL)emitFeatureStatisticEvents:(id)events usageType:(int64_t)type batchProviderInfo:(id)info;
+ (BOOL)emitModelTrainingEvent:(id)event;
+ (BOOL)emitShadowEvaluationEvent:(id)event;
@end

@implementation LCFELCoreAnalyticsHandler

+ (BOOL)emitFeatureStatisticEvents:(id)events usageType:(int64_t)type batchProviderInfo:(id)info
{
  v109 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  infoCopy = info;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = [infoCopy positiveFeatureStatistics];
  v7 = 0x277CCA000uLL;
  v85 = infoCopy;
  v55 = [obj countByEnumeratingWithState:&v96 objects:v108 count:16];
  if (v55)
  {
    v52 = *v97;
    do
    {
      for (i = 0; i != v55; ++i)
      {
        if (*v97 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v96 + 1) + 8 * i);
        v106[0] = @"contextId";
        contextId = [infoCopy contextId];
        uUIDString = [contextId UUIDString];
        v107[0] = uUIDString;
        v106[1] = @"eventId";
        eventId = [infoCopy eventId];
        uUIDString2 = [eventId UUIDString];
        v107[1] = uUIDString2;
        v106[2] = @"featureValueStatisticId";
        uUIDString3 = [eventsCopy UUIDString];
        v107[2] = uUIDString3;
        v106[3] = @"usageType";
        v67 = [MEMORY[0x277CCABB0] numberWithInteger:type];
        v107[3] = v67;
        v106[4] = @"timeRange";
        timeRange = [infoCopy timeRange];
        v107[4] = timeRange;
        v106[5] = @"faetureStoreKey";
        featureStoreKey = [infoCopy featureStoreKey];
        v11 = featureStoreKey;
        if (!featureStoreKey)
        {
          null = [MEMORY[0x277CBEB68] null];
          v11 = null;
        }

        v107[5] = v11;
        v106[6] = @"featureCount";
        featureCount = [infoCopy featureCount];
        v107[6] = featureCount;
        v107[7] = &unk_2868047F8;
        v106[7] = @"sampleType";
        v106[8] = @"featureName";
        featureName = [v9 featureName];
        v107[8] = featureName;
        v106[9] = @"featureStat_count";
        v12 = [v9 count];
        v107[9] = v12;
        v106[10] = @"featureStat_mean";
        mean = [v9 mean];
        notANumber = [MEMORY[0x277CCA980] notANumber];
        if ([mean isEqualToNumber:notANumber])
        {
          [MEMORY[0x277CBEB68] null];
        }

        else
        {
          [v9 mean];
        }
        v15 = ;
        v107[10] = v15;
        v106[11] = @"featureStat_stddev";
        stddev = [v9 stddev];
        notANumber2 = [MEMORY[0x277CCA980] notANumber];
        if ([stddev isEqualToNumber:notANumber2])
        {
          [MEMORY[0x277CBEB68] null];
        }

        else
        {
          [v9 stddev];
        }
        v18 = ;
        v107[11] = v18;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:v106 count:12];

        if (!featureStoreKey)
        {
        }

        [LCFELCoreAnalyticsHandler myAnalyticsSendEvent:@"com.apple.LighthouseCoreMLFoundations.LCFELFeatureValueStatistic" eventPayload:v19];
        infoCopy = v85;
        v7 = 0x277CCA000uLL;
      }

      v55 = [obj countByEnumeratingWithState:&v96 objects:v108 count:16];
    }

    while (v55);
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  obja = [infoCopy negativeFeatureStatistics];
  v56 = [obja countByEnumeratingWithState:&v92 objects:v105 count:16];
  if (v56)
  {
    v53 = *v93;
    do
    {
      for (j = 0; j != v56; ++j)
      {
        if (*v93 != v53)
        {
          objc_enumerationMutation(obja);
        }

        v21 = *(*(&v92 + 1) + 8 * j);
        v103[0] = @"contextId";
        contextId2 = [infoCopy contextId];
        uUIDString4 = [contextId2 UUIDString];
        v104[0] = uUIDString4;
        v103[1] = @"eventId";
        eventId2 = [infoCopy eventId];
        uUIDString5 = [eventId2 UUIDString];
        v104[1] = uUIDString5;
        v103[2] = @"featureValueStatisticId";
        uUIDString6 = [eventsCopy UUIDString];
        v104[2] = uUIDString6;
        v103[3] = @"usageType";
        v68 = [MEMORY[0x277CCABB0] numberWithInteger:type];
        v104[3] = v68;
        v103[4] = @"timeRange";
        timeRange2 = [infoCopy timeRange];
        v104[4] = timeRange2;
        v103[5] = @"faetureStoreKey";
        featureStoreKey2 = [infoCopy featureStoreKey];
        v23 = featureStoreKey2;
        if (!featureStoreKey2)
        {
          null = [MEMORY[0x277CBEB68] null];
          v23 = null;
        }

        v104[5] = v23;
        v103[6] = @"featureCount";
        featureCount2 = [infoCopy featureCount];
        v104[6] = featureCount2;
        v104[7] = &unk_286804810;
        v103[7] = @"sampleType";
        v103[8] = @"featureName";
        featureName2 = [v21 featureName];
        v104[8] = featureName2;
        v103[9] = @"featureStat_count";
        v24 = [v21 count];
        v104[9] = v24;
        v103[10] = @"featureStat_mean";
        mean2 = [v21 mean];
        notANumber3 = [MEMORY[0x277CCA980] notANumber];
        if ([mean2 isEqualToNumber:notANumber3])
        {
          [MEMORY[0x277CBEB68] null];
        }

        else
        {
          [v21 mean];
        }
        v27 = ;
        v104[10] = v27;
        v103[11] = @"featureStat_stddev";
        stddev2 = [v21 stddev];
        notANumber4 = [MEMORY[0x277CCA980] notANumber];
        if ([stddev2 isEqualToNumber:notANumber4])
        {
          [MEMORY[0x277CBEB68] null];
        }

        else
        {
          [v21 stddev];
        }
        v30 = ;
        v104[11] = v30;
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:v103 count:12];

        if (!featureStoreKey2)
        {
        }

        [LCFELCoreAnalyticsHandler myAnalyticsSendEvent:@"com.apple.LighthouseCoreMLFoundations.LCFELFeatureValueStatistic" eventPayload:v31];
        infoCopy = v85;
        v7 = 0x277CCA000uLL;
      }

      v56 = [obja countByEnumeratingWithState:&v92 objects:v105 count:16];
    }

    while (v56);
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  totalFeatureStatistics = [infoCopy totalFeatureStatistics];
  allValues = [totalFeatureStatistics allValues];

  objb = allValues;
  v57 = [allValues countByEnumeratingWithState:&v88 objects:v102 count:16];
  if (v57)
  {
    v54 = *v89;
    do
    {
      for (k = 0; k != v57; ++k)
      {
        if (*v89 != v54)
        {
          objc_enumerationMutation(objb);
        }

        v35 = *(*(&v88 + 1) + 8 * k);
        v100[0] = @"contextId";
        contextId3 = [infoCopy contextId];
        uUIDString7 = [contextId3 UUIDString];
        v101[0] = uUIDString7;
        v100[1] = @"eventId";
        eventId3 = [infoCopy eventId];
        uUIDString8 = [eventId3 UUIDString];
        v101[1] = uUIDString8;
        v100[2] = @"featureValueStatisticId";
        uUIDString9 = [eventsCopy UUIDString];
        v101[2] = uUIDString9;
        v100[3] = @"usageType";
        v69 = [MEMORY[0x277CCABB0] numberWithInteger:type];
        v101[3] = v69;
        v100[4] = @"timeRange";
        timeRange3 = [infoCopy timeRange];
        v101[4] = timeRange3;
        v100[5] = @"faetureStoreKey";
        featureStoreKey3 = [infoCopy featureStoreKey];
        v37 = featureStoreKey3;
        if (!featureStoreKey3)
        {
          null = [MEMORY[0x277CBEB68] null];
          v37 = null;
        }

        v101[5] = v37;
        v100[6] = @"featureCount";
        featureCount3 = [infoCopy featureCount];
        v101[6] = featureCount3;
        v101[7] = &unk_286804828;
        v100[7] = @"sampleType";
        v100[8] = @"featureName";
        featureName3 = [v35 featureName];
        v101[8] = featureName3;
        v100[9] = @"featureStat_count";
        v38 = [v35 count];
        v101[9] = v38;
        v100[10] = @"featureStat_mean";
        mean3 = [v35 mean];
        notANumber5 = [*(v7 + 2432) notANumber];
        if ([mean3 isEqualToNumber:notANumber5])
        {
          [MEMORY[0x277CBEB68] null];
        }

        else
        {
          [v35 mean];
        }
        v41 = ;
        v101[10] = v41;
        v100[11] = @"featureStat_stddev";
        stddev3 = [v35 stddev];
        notANumber6 = [*(v7 + 2432) notANumber];
        if ([stddev3 isEqualToNumber:notANumber6])
        {
          [MEMORY[0x277CBEB68] null];
        }

        else
        {
          [v35 stddev];
        }
        v44 = ;
        v101[11] = v44;
        v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:12];

        if (!featureStoreKey3)
        {
        }

        [LCFELCoreAnalyticsHandler myAnalyticsSendEvent:@"com.apple.LighthouseCoreMLFoundations.LCFELFeatureValueStatistic" eventPayload:v45];
        infoCopy = v85;
        v7 = 0x277CCA000;
      }

      v57 = [objb countByEnumeratingWithState:&v88 objects:v102 count:16];
    }

    while (v57);
  }

  v46 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (BOOL)emitModelTrainingEvent:(id)event
{
  v26[7] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  uUID = [MEMORY[0x277CCAD78] UUID];
  bachProviderInfo = [eventCopy bachProviderInfo];
  if (bachProviderInfo)
  {
    [LCFELCoreAnalyticsHandler emitFeatureStatisticEvents:uUID usageType:1 batchProviderInfo:bachProviderInfo];
  }

  v23 = bachProviderInfo;
  v25[0] = @"contextId";
  contextId = [eventCopy contextId];
  uUIDString = [contextId UUIDString];
  v26[0] = uUIDString;
  v25[1] = @"eventId";
  eventId = [eventCopy eventId];
  uUIDString2 = [eventId UUIDString];
  v26[1] = uUIDString2;
  v25[2] = @"modelName";
  modelName = [eventCopy modelName];
  v26[2] = modelName;
  v25[3] = @"succeeded";
  succeeded = [eventCopy succeeded];
  v26[3] = succeeded;
  v25[4] = @"errorDomain";
  trainingError = [eventCopy trainingError];
  domain = [trainingError domain];
  null = domain;
  if (!domain)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v26[4] = null;
  v25[5] = @"errorCodeEnum";
  v10 = MEMORY[0x277CCABB0];
  trainingError2 = [eventCopy trainingError];
  v12 = [v10 numberWithInteger:{objc_msgSend(trainingError2, "code")}];
  null2 = v12;
  if (!v12)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v26[5] = null2;
  v25[6] = @"featureValueStatisticId";
  v24 = uUID;
  uUIDString3 = [uUID UUIDString];
  v26[6] = uUIDString3;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:7];

  if (!v12)
  {
  }

  if (!domain)
  {
  }

  [LCFELCoreAnalyticsHandler myAnalyticsSendEvent:@"com.apple.LighthouseCoreMLFoundations.LCFELModelTrainingEvent" eventPayload:v15];
  v16 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (BOOL)emitShadowEvaluationEvent:(id)event
{
  v28[8] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  uUID = [MEMORY[0x277CCAD78] UUID];
  inputBachProviderInfo = [eventCopy inputBachProviderInfo];
  if (inputBachProviderInfo)
  {
    [LCFELCoreAnalyticsHandler emitFeatureStatisticEvents:uUID usageType:2 batchProviderInfo:inputBachProviderInfo];
  }

  v25 = inputBachProviderInfo;
  v27[0] = @"contextId";
  contextId = [eventCopy contextId];
  uUIDString = [contextId UUIDString];
  v28[0] = uUIDString;
  v27[1] = @"eventId";
  eventId = [eventCopy eventId];
  uUIDString2 = [eventId UUIDString];
  v28[1] = uUIDString2;
  v27[2] = @"modelName";
  modelName = [eventCopy modelName];
  v28[2] = modelName;
  v27[3] = @"succeeded";
  succeeded = [eventCopy succeeded];
  v28[3] = succeeded;
  v27[4] = @"errorDomain";
  evaluationError = [eventCopy evaluationError];
  domain = [evaluationError domain];
  null = domain;
  if (!domain)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v28[4] = null;
  v27[5] = @"errorCodeEnum";
  v8 = MEMORY[0x277CCABB0];
  evaluationError2 = [eventCopy evaluationError];
  v10 = [v8 numberWithInteger:{objc_msgSend(evaluationError2, "code")}];
  null2 = v10;
  if (!v10)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v28[5] = null2;
  v27[6] = @"featureValueStatisticId";
  v26 = uUID;
  uUIDString3 = [uUID UUIDString];
  v28[6] = uUIDString3;
  v27[7] = @"accuracy";
  accuracy = [eventCopy accuracy];
  null3 = accuracy;
  if (!accuracy)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v28[7] = null3;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:8];
  if (!accuracy)
  {
  }

  if (!v10)
  {
  }

  if (!domain)
  {
  }

  [LCFELCoreAnalyticsHandler myAnalyticsSendEvent:@"com.apple.LighthouseCoreMLFoundations.LCFELShadowEvaluationEvent" eventPayload:v15];
  v16 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (BOOL)emitFeatureImportanceEvent:(id)event
{
  v98 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = [eventCopy results];
  v70 = [obj countByEnumeratingWithState:&v91 objects:v97 count:16];
  if (v70)
  {
    v69 = *v92;
    do
    {
      v4 = 0;
      do
      {
        if (*v92 != v69)
        {
          objc_enumerationMutation(obj);
        }

        v88 = v4;
        v5 = *(*(&v91 + 1) + 8 * v4);
        inputBachProviderInfo = [eventCopy inputBachProviderInfo];
        totalFeatureStatistics = [inputBachProviderInfo totalFeatureStatistics];
        featureName = [v5 featureName];
        v9 = [totalFeatureStatistics objectForKeyedSubscript:featureName];

        if (v9)
        {
          inputBachProviderInfo2 = [eventCopy inputBachProviderInfo];
          totalFeatureStatistics2 = [inputBachProviderInfo2 totalFeatureStatistics];
          featureName2 = [v5 featureName];
          v13 = [totalFeatureStatistics2 objectForKeyedSubscript:featureName2];
          v89 = [v13 count];

          inputBachProviderInfo3 = [eventCopy inputBachProviderInfo];
          totalFeatureStatistics3 = [inputBachProviderInfo3 totalFeatureStatistics];
          featureName3 = [v5 featureName];
          v17 = [totalFeatureStatistics3 objectForKeyedSubscript:featureName3];
          mean = [v17 mean];
          notANumber = [MEMORY[0x277CCA980] notANumber];
          v20 = [mean isEqualToNumber:notANumber];

          if (v20)
          {
            mean2 = 0;
          }

          else
          {
            inputBachProviderInfo4 = [eventCopy inputBachProviderInfo];
            totalFeatureStatistics4 = [inputBachProviderInfo4 totalFeatureStatistics];
            featureName4 = [v5 featureName];
            v27 = [totalFeatureStatistics4 objectForKeyedSubscript:featureName4];
            mean2 = [v27 mean];
          }

          inputBachProviderInfo5 = [eventCopy inputBachProviderInfo];
          totalFeatureStatistics5 = [inputBachProviderInfo5 totalFeatureStatistics];
          featureName5 = [v5 featureName];
          v31 = [totalFeatureStatistics5 objectForKeyedSubscript:featureName5];
          stddev = [v31 stddev];
          notANumber2 = [MEMORY[0x277CCA980] notANumber];
          v34 = [stddev isEqualToNumber:notANumber2];

          if (v34)
          {
            stddev2 = 0;
          }

          else
          {
            inputBachProviderInfo6 = [eventCopy inputBachProviderInfo];
            totalFeatureStatistics6 = [inputBachProviderInfo6 totalFeatureStatistics];
            featureName6 = [v5 featureName];
            v38 = [totalFeatureStatistics6 objectForKeyedSubscript:featureName6];
            stddev2 = [v38 stddev];
          }

          v23 = v89;
        }

        else
        {
          mean2 = 0;
          stddev2 = 0;
          v23 = &unk_286804840;
        }

        v95[0] = @"contextId";
        contextId = [eventCopy contextId];
        uUIDString = [contextId UUIDString];
        v96[0] = uUIDString;
        v95[1] = @"eventId";
        eventId = [eventCopy eventId];
        uUIDString2 = [eventId UUIDString];
        v96[1] = uUIDString2;
        v95[2] = @"succeeded";
        succeeded = [eventCopy succeeded];
        v96[2] = succeeded;
        v95[3] = @"errorDomain";
        analysisError = [eventCopy analysisError];
        domain = [analysisError domain];
        v40 = domain;
        if (!domain)
        {
          null = [MEMORY[0x277CBEB68] null];
          v40 = null;
        }

        v79 = domain;
        v96[3] = v40;
        v95[4] = @"errorCodeEnum";
        v41 = MEMORY[0x277CCABB0];
        analysisError2 = [eventCopy analysisError];
        v42 = [v41 numberWithInteger:{objc_msgSend(analysisError2, "code")}];
        v77 = v42;
        if (!v42)
        {
          null2 = [MEMORY[0x277CBEB68] null];
          v42 = null2;
        }

        v96[4] = v42;
        v95[5] = @"timeRange";
        inputBachProviderInfo7 = [eventCopy inputBachProviderInfo];
        timeRange = [inputBachProviderInfo7 timeRange];
        v96[5] = timeRange;
        v95[6] = @"faetureStoreKey";
        inputBachProviderInfo8 = [eventCopy inputBachProviderInfo];
        featureStoreKey = [inputBachProviderInfo8 featureStoreKey];
        v44 = featureStoreKey;
        if (!featureStoreKey)
        {
          null3 = [MEMORY[0x277CBEB68] null];
          v44 = null3;
        }

        v96[6] = v44;
        v95[7] = @"featureCount";
        inputBachProviderInfo9 = [eventCopy inputBachProviderInfo];
        featureCount = [inputBachProviderInfo9 featureCount];
        v96[7] = featureCount;
        v95[8] = @"featureName";
        featureName7 = [v5 featureName];
        v46 = featureName7;
        if (!featureName7)
        {
          null4 = [MEMORY[0x277CBEB68] null];
          v46 = null4;
        }

        v96[8] = v46;
        v96[9] = v23;
        v47 = mean2;
        v95[9] = @"featureStat_count";
        v95[10] = @"featureStat_mean";
        if (!mean2)
        {
          null5 = [MEMORY[0x277CBEB68] null];
          v47 = null5;
        }

        v86 = stddev2;
        v87 = mean2;
        v96[10] = v47;
        v95[11] = @"featureStat_stddev";
        v48 = stddev2;
        if (!stddev2)
        {
          null6 = [MEMORY[0x277CBEB68] null];
          v48 = null6;
        }

        v96[11] = v48;
        v95[12] = @"correlationCoefficient";
        correlationCoefficient = [v5 correlationCoefficient];
        notANumber3 = [MEMORY[0x277CCA980] notANumber];
        v90 = v23;
        if ([correlationCoefficient isEqualToNumber:notANumber3])
        {
          [MEMORY[0x277CBEB68] null];
        }

        else
        {
          [v5 correlationCoefficient];
        }
        v51 = ;
        v96[12] = v51;
        v95[13] = @"featureImportance";
        featureImportance = [v5 featureImportance];
        notANumber4 = [MEMORY[0x277CCA980] notANumber];
        if ([featureImportance isEqualToNumber:notANumber4])
        {
          [MEMORY[0x277CBEB68] null];
        }

        else
        {
          [v5 featureImportance];
        }
        v54 = ;
        v96[13] = v54;
        v95[14] = @"targetLabelFeatureName";
        v55 = eventCopy;
        targetLabelFeatureName = [eventCopy targetLabelFeatureName];
        v57 = targetLabelFeatureName;
        if (!targetLabelFeatureName)
        {
          null7 = [MEMORY[0x277CBEB68] null];
          v57 = null7;
        }

        v96[14] = v57;
        v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:15];
        if (!targetLabelFeatureName)
        {
        }

        if (!v86)
        {
        }

        eventCopy = v55;
        if (v87)
        {
          if (featureName7)
          {
            goto LABEL_41;
          }
        }

        else
        {

          if (featureName7)
          {
            goto LABEL_41;
          }
        }

LABEL_41:
        if (!featureStoreKey)
        {
        }

        if (!v77)
        {
        }

        if (!v79)
        {
        }

        [LCFELCoreAnalyticsHandler myAnalyticsSendEvent:@"com.apple.LighthouseCoreMLFoundations.LCFELFeatureImportanceEvent" eventPayload:v71];
        v4 = v88 + 1;
      }

      while (v70 != v88 + 1);
      v58 = [obj countByEnumeratingWithState:&v91 objects:v97 count:16];
      v70 = v58;
    }

    while (v58);
  }

  v59 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (BOOL)emitChangePointDetectionEvent:(id)event
{
  v94 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = [eventCopy results];
  v69 = [obj countByEnumeratingWithState:&v87 objects:v93 count:16];
  if (v69)
  {
    v67 = *v88;
    v68 = eventCopy;
    do
    {
      v4 = 0;
      do
      {
        if (*v88 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v82 = v4;
        v5 = *(*(&v87 + 1) + 8 * v4);
        v6 = MEMORY[0x277CCAAA0];
        changepointTimestamps = [v5 changepointTimestamps];
        v86 = 0;
        v8 = [v6 dataWithJSONObject:changepointTimestamps options:1 error:&v86];
        v80 = v86;

        v81 = v8;
        v85 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
        inputBachProviderInfo = [eventCopy inputBachProviderInfo];
        totalFeatureStatistics = [inputBachProviderInfo totalFeatureStatistics];
        featureName = [v5 featureName];
        v12 = [totalFeatureStatistics objectForKeyedSubscript:featureName];

        if (v12)
        {
          inputBachProviderInfo2 = [eventCopy inputBachProviderInfo];
          totalFeatureStatistics2 = [inputBachProviderInfo2 totalFeatureStatistics];
          featureName2 = [v5 featureName];
          v16 = [totalFeatureStatistics2 objectForKeyedSubscript:featureName2];
          v84 = [v16 count];

          inputBachProviderInfo3 = [eventCopy inputBachProviderInfo];
          totalFeatureStatistics3 = [inputBachProviderInfo3 totalFeatureStatistics];
          featureName3 = [v5 featureName];
          v20 = [totalFeatureStatistics3 objectForKeyedSubscript:featureName3];
          mean = [v20 mean];
          notANumber = [MEMORY[0x277CCA980] notANumber];
          v23 = [mean isEqualToNumber:notANumber];

          if (v23)
          {
            mean2 = 0;
          }

          else
          {
            inputBachProviderInfo4 = [eventCopy inputBachProviderInfo];
            totalFeatureStatistics4 = [inputBachProviderInfo4 totalFeatureStatistics];
            featureName4 = [v5 featureName];
            v30 = [totalFeatureStatistics4 objectForKeyedSubscript:featureName4];
            mean2 = [v30 mean];
          }

          inputBachProviderInfo5 = [eventCopy inputBachProviderInfo];
          totalFeatureStatistics5 = [inputBachProviderInfo5 totalFeatureStatistics];
          featureName5 = [v5 featureName];
          v34 = [totalFeatureStatistics5 objectForKeyedSubscript:featureName5];
          stddev = [v34 stddev];
          notANumber2 = [MEMORY[0x277CCA980] notANumber];
          v37 = [stddev isEqualToNumber:notANumber2];

          if (v37)
          {
            stddev2 = 0;
          }

          else
          {
            inputBachProviderInfo6 = [eventCopy inputBachProviderInfo];
            totalFeatureStatistics6 = [inputBachProviderInfo6 totalFeatureStatistics];
            featureName6 = [v5 featureName];
            v41 = [totalFeatureStatistics6 objectForKeyedSubscript:featureName6];
            stddev2 = [v41 stddev];
          }

          v25 = mean2;
        }

        else
        {
          v25 = 0;
          stddev2 = 0;
          v84 = &unk_286804840;
        }

        v91[0] = @"contextId";
        contextId = [eventCopy contextId];
        uUIDString = [contextId UUIDString];
        v92[0] = uUIDString;
        v91[1] = @"eventId";
        eventId = [eventCopy eventId];
        uUIDString2 = [eventId UUIDString];
        v92[1] = uUIDString2;
        v91[2] = @"succeeded";
        succeeded = [eventCopy succeeded];
        v92[2] = succeeded;
        v91[3] = @"errorDomain";
        analysisError = [eventCopy analysisError];
        domain = [analysisError domain];
        v43 = domain;
        if (!domain)
        {
          null = [MEMORY[0x277CBEB68] null];
          v43 = null;
        }

        v83 = stddev2;
        v92[3] = v43;
        v91[4] = @"errorCodeEnum";
        v44 = MEMORY[0x277CCABB0];
        analysisError2 = [eventCopy analysisError];
        v45 = [v44 numberWithInteger:{objc_msgSend(analysisError2, "code")}];
        v46 = v45;
        if (!v45)
        {
          null2 = [MEMORY[0x277CBEB68] null];
          v46 = null2;
        }

        v92[4] = v46;
        v91[5] = @"timeRange";
        inputBachProviderInfo7 = [eventCopy inputBachProviderInfo];
        timeRange = [inputBachProviderInfo7 timeRange];
        v92[5] = timeRange;
        v91[6] = @"faetureStoreKey";
        inputBachProviderInfo8 = [eventCopy inputBachProviderInfo];
        featureStoreKey = [inputBachProviderInfo8 featureStoreKey];
        v48 = featureStoreKey;
        if (!featureStoreKey)
        {
          null3 = [MEMORY[0x277CBEB68] null];
          v48 = null3;
        }

        v92[6] = v48;
        v91[7] = @"featureCount";
        inputBachProviderInfo9 = [eventCopy inputBachProviderInfo];
        featureCount = [inputBachProviderInfo9 featureCount];
        v92[7] = featureCount;
        v91[8] = @"featureName";
        featureName7 = [v5 featureName];
        v52 = featureName7;
        if (!featureName7)
        {
          null4 = [MEMORY[0x277CBEB68] null];
          v52 = null4;
        }

        v92[8] = v52;
        v92[9] = v84;
        v53 = v25;
        v91[9] = @"featureStat_count";
        v91[10] = @"featureStat_mean";
        if (!v25)
        {
          null5 = [MEMORY[0x277CBEB68] null];
          v53 = null5;
        }

        v92[10] = v53;
        v91[11] = @"featureStat_stddev";
        v54 = v83;
        if (!v83)
        {
          null6 = [MEMORY[0x277CBEB68] null];
          v54 = null6;
        }

        v92[11] = v54;
        v91[12] = @"changePoints_count";
        detectedChangePointCount = [v5 detectedChangePointCount];
        v91[13] = @"changePoints";
        v92[12] = detectedChangePointCount;
        v92[13] = v85;
        v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:14];

        if (!v83)
        {
        }

        if (v25)
        {
          if (featureName7)
          {
            goto LABEL_31;
          }
        }

        else
        {

          if (featureName7)
          {
            goto LABEL_31;
          }
        }

LABEL_31:
        if (!featureStoreKey)
        {
        }

        eventCopy = v68;
        if (!v45)
        {
        }

        if (!domain)
        {
        }

        [LCFELCoreAnalyticsHandler myAnalyticsSendEvent:@"com.apple.LighthouseCoreMLFoundations.LCFELChangePointDetectionEvent" eventPayload:v56];
        v4 = v82 + 1;
      }

      while (v69 != v82 + 1);
      v57 = [obj countByEnumeratingWithState:&v87 objects:v93 count:16];
      v69 = v57;
    }

    while (v57);
  }

  v58 = *MEMORY[0x277D85DE8];
  return 1;
}

@end