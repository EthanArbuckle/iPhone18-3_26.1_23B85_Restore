@interface LCFELCoreAnalyticsHandler
+ (BOOL)emitChangePointDetectionEvent:(id)a3;
+ (BOOL)emitFeatureImportanceEvent:(id)a3;
+ (BOOL)emitFeatureStatisticEvents:(id)a3 usageType:(int64_t)a4 batchProviderInfo:(id)a5;
+ (BOOL)emitModelTrainingEvent:(id)a3;
+ (BOOL)emitShadowEvaluationEvent:(id)a3;
@end

@implementation LCFELCoreAnalyticsHandler

+ (BOOL)emitFeatureStatisticEvents:(id)a3 usageType:(int64_t)a4 batchProviderInfo:(id)a5
{
  v109 = *MEMORY[0x277D85DE8];
  v87 = a3;
  v6 = a5;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = [v6 positiveFeatureStatistics];
  v7 = 0x277CCA000uLL;
  v85 = v6;
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
        v82 = [v6 contextId];
        v79 = [v82 UUIDString];
        v107[0] = v79;
        v106[1] = @"eventId";
        v76 = [v6 eventId];
        v73 = [v76 UUIDString];
        v107[1] = v73;
        v106[2] = @"featureValueStatisticId";
        v70 = [v87 UUIDString];
        v107[2] = v70;
        v106[3] = @"usageType";
        v67 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
        v107[3] = v67;
        v106[4] = @"timeRange";
        v64 = [v6 timeRange];
        v107[4] = v64;
        v106[5] = @"faetureStoreKey";
        v10 = [v6 featureStoreKey];
        v11 = v10;
        if (!v10)
        {
          v51 = [MEMORY[0x277CBEB68] null];
          v11 = v51;
        }

        v107[5] = v11;
        v106[6] = @"featureCount";
        v61 = [v6 featureCount];
        v107[6] = v61;
        v107[7] = &unk_2868047F8;
        v106[7] = @"sampleType";
        v106[8] = @"featureName";
        v58 = [v9 featureName];
        v107[8] = v58;
        v106[9] = @"featureStat_count";
        v12 = [v9 count];
        v107[9] = v12;
        v106[10] = @"featureStat_mean";
        v13 = [v9 mean];
        v14 = [MEMORY[0x277CCA980] notANumber];
        if ([v13 isEqualToNumber:v14])
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
        v16 = [v9 stddev];
        v17 = [MEMORY[0x277CCA980] notANumber];
        if ([v16 isEqualToNumber:v17])
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

        if (!v10)
        {
        }

        [LCFELCoreAnalyticsHandler myAnalyticsSendEvent:@"com.apple.LighthouseCoreMLFoundations.LCFELFeatureValueStatistic" eventPayload:v19];
        v6 = v85;
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
  obja = [v6 negativeFeatureStatistics];
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
        v83 = [v6 contextId];
        v80 = [v83 UUIDString];
        v104[0] = v80;
        v103[1] = @"eventId";
        v77 = [v6 eventId];
        v74 = [v77 UUIDString];
        v104[1] = v74;
        v103[2] = @"featureValueStatisticId";
        v71 = [v87 UUIDString];
        v104[2] = v71;
        v103[3] = @"usageType";
        v68 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
        v104[3] = v68;
        v103[4] = @"timeRange";
        v65 = [v6 timeRange];
        v104[4] = v65;
        v103[5] = @"faetureStoreKey";
        v22 = [v6 featureStoreKey];
        v23 = v22;
        if (!v22)
        {
          v51 = [MEMORY[0x277CBEB68] null];
          v23 = v51;
        }

        v104[5] = v23;
        v103[6] = @"featureCount";
        v62 = [v6 featureCount];
        v104[6] = v62;
        v104[7] = &unk_286804810;
        v103[7] = @"sampleType";
        v103[8] = @"featureName";
        v59 = [v21 featureName];
        v104[8] = v59;
        v103[9] = @"featureStat_count";
        v24 = [v21 count];
        v104[9] = v24;
        v103[10] = @"featureStat_mean";
        v25 = [v21 mean];
        v26 = [MEMORY[0x277CCA980] notANumber];
        if ([v25 isEqualToNumber:v26])
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
        v28 = [v21 stddev];
        v29 = [MEMORY[0x277CCA980] notANumber];
        if ([v28 isEqualToNumber:v29])
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

        if (!v22)
        {
        }

        [LCFELCoreAnalyticsHandler myAnalyticsSendEvent:@"com.apple.LighthouseCoreMLFoundations.LCFELFeatureValueStatistic" eventPayload:v31];
        v6 = v85;
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
  v32 = [v6 totalFeatureStatistics];
  v33 = [v32 allValues];

  objb = v33;
  v57 = [v33 countByEnumeratingWithState:&v88 objects:v102 count:16];
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
        v84 = [v6 contextId];
        v81 = [v84 UUIDString];
        v101[0] = v81;
        v100[1] = @"eventId";
        v78 = [v6 eventId];
        v75 = [v78 UUIDString];
        v101[1] = v75;
        v100[2] = @"featureValueStatisticId";
        v72 = [v87 UUIDString];
        v101[2] = v72;
        v100[3] = @"usageType";
        v69 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
        v101[3] = v69;
        v100[4] = @"timeRange";
        v66 = [v6 timeRange];
        v101[4] = v66;
        v100[5] = @"faetureStoreKey";
        v36 = [v6 featureStoreKey];
        v37 = v36;
        if (!v36)
        {
          v51 = [MEMORY[0x277CBEB68] null];
          v37 = v51;
        }

        v101[5] = v37;
        v100[6] = @"featureCount";
        v63 = [v6 featureCount];
        v101[6] = v63;
        v101[7] = &unk_286804828;
        v100[7] = @"sampleType";
        v100[8] = @"featureName";
        v60 = [v35 featureName];
        v101[8] = v60;
        v100[9] = @"featureStat_count";
        v38 = [v35 count];
        v101[9] = v38;
        v100[10] = @"featureStat_mean";
        v39 = [v35 mean];
        v40 = [*(v7 + 2432) notANumber];
        if ([v39 isEqualToNumber:v40])
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
        v42 = [v35 stddev];
        v43 = [*(v7 + 2432) notANumber];
        if ([v42 isEqualToNumber:v43])
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

        if (!v36)
        {
        }

        [LCFELCoreAnalyticsHandler myAnalyticsSendEvent:@"com.apple.LighthouseCoreMLFoundations.LCFELFeatureValueStatistic" eventPayload:v45];
        v6 = v85;
        v7 = 0x277CCA000;
      }

      v57 = [objb countByEnumeratingWithState:&v88 objects:v102 count:16];
    }

    while (v57);
  }

  v46 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (BOOL)emitModelTrainingEvent:(id)a3
{
  v26[7] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAD78] UUID];
  v5 = [v3 bachProviderInfo];
  if (v5)
  {
    [LCFELCoreAnalyticsHandler emitFeatureStatisticEvents:v4 usageType:1 batchProviderInfo:v5];
  }

  v23 = v5;
  v25[0] = @"contextId";
  v22 = [v3 contextId];
  v21 = [v22 UUIDString];
  v26[0] = v21;
  v25[1] = @"eventId";
  v20 = [v3 eventId];
  v19 = [v20 UUIDString];
  v26[1] = v19;
  v25[2] = @"modelName";
  v18 = [v3 modelName];
  v26[2] = v18;
  v25[3] = @"succeeded";
  v6 = [v3 succeeded];
  v26[3] = v6;
  v25[4] = @"errorDomain";
  v7 = [v3 trainingError];
  v8 = [v7 domain];
  v9 = v8;
  if (!v8)
  {
    v9 = [MEMORY[0x277CBEB68] null];
  }

  v26[4] = v9;
  v25[5] = @"errorCodeEnum";
  v10 = MEMORY[0x277CCABB0];
  v11 = [v3 trainingError];
  v12 = [v10 numberWithInteger:{objc_msgSend(v11, "code")}];
  v13 = v12;
  if (!v12)
  {
    v13 = [MEMORY[0x277CBEB68] null];
  }

  v26[5] = v13;
  v25[6] = @"featureValueStatisticId";
  v24 = v4;
  v14 = [v4 UUIDString];
  v26[6] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:7];

  if (!v12)
  {
  }

  if (!v8)
  {
  }

  [LCFELCoreAnalyticsHandler myAnalyticsSendEvent:@"com.apple.LighthouseCoreMLFoundations.LCFELModelTrainingEvent" eventPayload:v15];
  v16 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (BOOL)emitShadowEvaluationEvent:(id)a3
{
  v28[8] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAD78] UUID];
  v5 = [v3 inputBachProviderInfo];
  if (v5)
  {
    [LCFELCoreAnalyticsHandler emitFeatureStatisticEvents:v4 usageType:2 batchProviderInfo:v5];
  }

  v25 = v5;
  v27[0] = @"contextId";
  v24 = [v3 contextId];
  v23 = [v24 UUIDString];
  v28[0] = v23;
  v27[1] = @"eventId";
  v22 = [v3 eventId];
  v21 = [v22 UUIDString];
  v28[1] = v21;
  v27[2] = @"modelName";
  v20 = [v3 modelName];
  v28[2] = v20;
  v27[3] = @"succeeded";
  v19 = [v3 succeeded];
  v28[3] = v19;
  v27[4] = @"errorDomain";
  v18 = [v3 evaluationError];
  v6 = [v18 domain];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x277CBEB68] null];
  }

  v28[4] = v7;
  v27[5] = @"errorCodeEnum";
  v8 = MEMORY[0x277CCABB0];
  v9 = [v3 evaluationError];
  v10 = [v8 numberWithInteger:{objc_msgSend(v9, "code")}];
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x277CBEB68] null];
  }

  v28[5] = v11;
  v27[6] = @"featureValueStatisticId";
  v26 = v4;
  v12 = [v4 UUIDString];
  v28[6] = v12;
  v27[7] = @"accuracy";
  v13 = [v3 accuracy];
  v14 = v13;
  if (!v13)
  {
    v14 = [MEMORY[0x277CBEB68] null];
  }

  v28[7] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:8];
  if (!v13)
  {
  }

  if (!v10)
  {
  }

  if (!v6)
  {
  }

  [LCFELCoreAnalyticsHandler myAnalyticsSendEvent:@"com.apple.LighthouseCoreMLFoundations.LCFELShadowEvaluationEvent" eventPayload:v15];
  v16 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (BOOL)emitFeatureImportanceEvent:(id)a3
{
  v98 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = [v3 results];
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
        v6 = [v3 inputBachProviderInfo];
        v7 = [v6 totalFeatureStatistics];
        v8 = [v5 featureName];
        v9 = [v7 objectForKeyedSubscript:v8];

        if (v9)
        {
          v10 = [v3 inputBachProviderInfo];
          v11 = [v10 totalFeatureStatistics];
          v12 = [v5 featureName];
          v13 = [v11 objectForKeyedSubscript:v12];
          v89 = [v13 count];

          v14 = [v3 inputBachProviderInfo];
          v15 = [v14 totalFeatureStatistics];
          v16 = [v5 featureName];
          v17 = [v15 objectForKeyedSubscript:v16];
          v18 = [v17 mean];
          v19 = [MEMORY[0x277CCA980] notANumber];
          v20 = [v18 isEqualToNumber:v19];

          if (v20)
          {
            v21 = 0;
          }

          else
          {
            v24 = [v3 inputBachProviderInfo];
            v25 = [v24 totalFeatureStatistics];
            v26 = [v5 featureName];
            v27 = [v25 objectForKeyedSubscript:v26];
            v21 = [v27 mean];
          }

          v28 = [v3 inputBachProviderInfo];
          v29 = [v28 totalFeatureStatistics];
          v30 = [v5 featureName];
          v31 = [v29 objectForKeyedSubscript:v30];
          v32 = [v31 stddev];
          v33 = [MEMORY[0x277CCA980] notANumber];
          v34 = [v32 isEqualToNumber:v33];

          if (v34)
          {
            v22 = 0;
          }

          else
          {
            v35 = [v3 inputBachProviderInfo];
            v36 = [v35 totalFeatureStatistics];
            v37 = [v5 featureName];
            v38 = [v36 objectForKeyedSubscript:v37];
            v22 = [v38 stddev];
          }

          v23 = v89;
        }

        else
        {
          v21 = 0;
          v22 = 0;
          v23 = &unk_286804840;
        }

        v95[0] = @"contextId";
        v85 = [v3 contextId];
        v84 = [v85 UUIDString];
        v96[0] = v84;
        v95[1] = @"eventId";
        v83 = [v3 eventId];
        v82 = [v83 UUIDString];
        v96[1] = v82;
        v95[2] = @"succeeded";
        v81 = [v3 succeeded];
        v96[2] = v81;
        v95[3] = @"errorDomain";
        v80 = [v3 analysisError];
        v39 = [v80 domain];
        v40 = v39;
        if (!v39)
        {
          v68 = [MEMORY[0x277CBEB68] null];
          v40 = v68;
        }

        v79 = v39;
        v96[3] = v40;
        v95[4] = @"errorCodeEnum";
        v41 = MEMORY[0x277CCABB0];
        v78 = [v3 analysisError];
        v42 = [v41 numberWithInteger:{objc_msgSend(v78, "code")}];
        v77 = v42;
        if (!v42)
        {
          v67 = [MEMORY[0x277CBEB68] null];
          v42 = v67;
        }

        v96[4] = v42;
        v95[5] = @"timeRange";
        v76 = [v3 inputBachProviderInfo];
        v75 = [v76 timeRange];
        v96[5] = v75;
        v95[6] = @"faetureStoreKey";
        v74 = [v3 inputBachProviderInfo];
        v43 = [v74 featureStoreKey];
        v44 = v43;
        if (!v43)
        {
          v66 = [MEMORY[0x277CBEB68] null];
          v44 = v66;
        }

        v96[6] = v44;
        v95[7] = @"featureCount";
        v73 = [v3 inputBachProviderInfo];
        v72 = [v73 featureCount];
        v96[7] = v72;
        v95[8] = @"featureName";
        v45 = [v5 featureName];
        v46 = v45;
        if (!v45)
        {
          v65 = [MEMORY[0x277CBEB68] null];
          v46 = v65;
        }

        v96[8] = v46;
        v96[9] = v23;
        v47 = v21;
        v95[9] = @"featureStat_count";
        v95[10] = @"featureStat_mean";
        if (!v21)
        {
          v64 = [MEMORY[0x277CBEB68] null];
          v47 = v64;
        }

        v86 = v22;
        v87 = v21;
        v96[10] = v47;
        v95[11] = @"featureStat_stddev";
        v48 = v22;
        if (!v22)
        {
          v63 = [MEMORY[0x277CBEB68] null];
          v48 = v63;
        }

        v96[11] = v48;
        v95[12] = @"correlationCoefficient";
        v49 = [v5 correlationCoefficient];
        v50 = [MEMORY[0x277CCA980] notANumber];
        v90 = v23;
        if ([v49 isEqualToNumber:v50])
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
        v52 = [v5 featureImportance];
        v53 = [MEMORY[0x277CCA980] notANumber];
        if ([v52 isEqualToNumber:v53])
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
        v55 = v3;
        v56 = [v3 targetLabelFeatureName];
        v57 = v56;
        if (!v56)
        {
          v62 = [MEMORY[0x277CBEB68] null];
          v57 = v62;
        }

        v96[14] = v57;
        v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:15];
        if (!v56)
        {
        }

        if (!v86)
        {
        }

        v3 = v55;
        if (v87)
        {
          if (v45)
          {
            goto LABEL_41;
          }
        }

        else
        {

          if (v45)
          {
            goto LABEL_41;
          }
        }

LABEL_41:
        if (!v43)
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

+ (BOOL)emitChangePointDetectionEvent:(id)a3
{
  v94 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = [v3 results];
  v69 = [obj countByEnumeratingWithState:&v87 objects:v93 count:16];
  if (v69)
  {
    v67 = *v88;
    v68 = v3;
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
        v7 = [v5 changepointTimestamps];
        v86 = 0;
        v8 = [v6 dataWithJSONObject:v7 options:1 error:&v86];
        v80 = v86;

        v81 = v8;
        v85 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
        v9 = [v3 inputBachProviderInfo];
        v10 = [v9 totalFeatureStatistics];
        v11 = [v5 featureName];
        v12 = [v10 objectForKeyedSubscript:v11];

        if (v12)
        {
          v13 = [v3 inputBachProviderInfo];
          v14 = [v13 totalFeatureStatistics];
          v15 = [v5 featureName];
          v16 = [v14 objectForKeyedSubscript:v15];
          v84 = [v16 count];

          v17 = [v3 inputBachProviderInfo];
          v18 = [v17 totalFeatureStatistics];
          v19 = [v5 featureName];
          v20 = [v18 objectForKeyedSubscript:v19];
          v21 = [v20 mean];
          v22 = [MEMORY[0x277CCA980] notANumber];
          v23 = [v21 isEqualToNumber:v22];

          if (v23)
          {
            v24 = 0;
          }

          else
          {
            v27 = [v3 inputBachProviderInfo];
            v28 = [v27 totalFeatureStatistics];
            v29 = [v5 featureName];
            v30 = [v28 objectForKeyedSubscript:v29];
            v24 = [v30 mean];
          }

          v31 = [v3 inputBachProviderInfo];
          v32 = [v31 totalFeatureStatistics];
          v33 = [v5 featureName];
          v34 = [v32 objectForKeyedSubscript:v33];
          v35 = [v34 stddev];
          v36 = [MEMORY[0x277CCA980] notANumber];
          v37 = [v35 isEqualToNumber:v36];

          if (v37)
          {
            v26 = 0;
          }

          else
          {
            v38 = [v3 inputBachProviderInfo];
            v39 = [v38 totalFeatureStatistics];
            v40 = [v5 featureName];
            v41 = [v39 objectForKeyedSubscript:v40];
            v26 = [v41 stddev];
          }

          v25 = v24;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v84 = &unk_286804840;
        }

        v91[0] = @"contextId";
        v79 = [v3 contextId];
        v78 = [v79 UUIDString];
        v92[0] = v78;
        v91[1] = @"eventId";
        v77 = [v3 eventId];
        v76 = [v77 UUIDString];
        v92[1] = v76;
        v91[2] = @"succeeded";
        v75 = [v3 succeeded];
        v92[2] = v75;
        v91[3] = @"errorDomain";
        v74 = [v3 analysisError];
        v42 = [v74 domain];
        v43 = v42;
        if (!v42)
        {
          v66 = [MEMORY[0x277CBEB68] null];
          v43 = v66;
        }

        v83 = v26;
        v92[3] = v43;
        v91[4] = @"errorCodeEnum";
        v44 = MEMORY[0x277CCABB0];
        v73 = [v3 analysisError];
        v45 = [v44 numberWithInteger:{objc_msgSend(v73, "code")}];
        v46 = v45;
        if (!v45)
        {
          v65 = [MEMORY[0x277CBEB68] null];
          v46 = v65;
        }

        v92[4] = v46;
        v91[5] = @"timeRange";
        v72 = [v3 inputBachProviderInfo];
        v71 = [v72 timeRange];
        v92[5] = v71;
        v91[6] = @"faetureStoreKey";
        v70 = [v3 inputBachProviderInfo];
        v47 = [v70 featureStoreKey];
        v48 = v47;
        if (!v47)
        {
          v64 = [MEMORY[0x277CBEB68] null];
          v48 = v64;
        }

        v92[6] = v48;
        v91[7] = @"featureCount";
        v49 = [v3 inputBachProviderInfo];
        v50 = [v49 featureCount];
        v92[7] = v50;
        v91[8] = @"featureName";
        v51 = [v5 featureName];
        v52 = v51;
        if (!v51)
        {
          v63 = [MEMORY[0x277CBEB68] null];
          v52 = v63;
        }

        v92[8] = v52;
        v92[9] = v84;
        v53 = v25;
        v91[9] = @"featureStat_count";
        v91[10] = @"featureStat_mean";
        if (!v25)
        {
          v62 = [MEMORY[0x277CBEB68] null];
          v53 = v62;
        }

        v92[10] = v53;
        v91[11] = @"featureStat_stddev";
        v54 = v83;
        if (!v83)
        {
          v61 = [MEMORY[0x277CBEB68] null];
          v54 = v61;
        }

        v92[11] = v54;
        v91[12] = @"changePoints_count";
        v55 = [v5 detectedChangePointCount];
        v91[13] = @"changePoints";
        v92[12] = v55;
        v92[13] = v85;
        v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:14];

        if (!v83)
        {
        }

        if (v25)
        {
          if (v51)
          {
            goto LABEL_31;
          }
        }

        else
        {

          if (v51)
          {
            goto LABEL_31;
          }
        }

LABEL_31:
        if (!v47)
        {
        }

        v3 = v68;
        if (!v45)
        {
        }

        if (!v42)
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