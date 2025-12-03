@interface LCFShadowEvaluation
- (id)evaluateModels:(id)models;
- (id)init:(id)init modelStore:(id)store;
@end

@implementation LCFShadowEvaluation

- (id)init:(id)init modelStore:(id)store
{
  initCopy = init;
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = LCFShadowEvaluation;
  v9 = [(LCFShadowEvaluation *)&v11 init];
  if (v9)
  {
    LCFModelMonitoringLoggingUtilsInit();
    objc_storeStrong(&v9->_featureStore, init);
    objc_storeStrong(&v9->_modelStore, store);
  }

  return v9;
}

- (id)evaluateModels:(id)models
{
  v152[1] = *MEMORY[0x277D85DE8];
  modelsCopy = models;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  featureNames = [modelsCopy featureNames];
  srcLabelName = [modelsCopy srcLabelName];
  v8 = [featureNames containsObject:srcLabelName];

  if (v8)
  {
    v9 = LCFMMLogShadowEvaluation;
    if (os_log_type_enabled(LCFMMLogShadowEvaluation, OS_LOG_TYPE_ERROR))
    {
      [(LCFShadowEvaluation *)v9 evaluateModels:modelsCopy];
    }

    v10 = 0;
    goto LABEL_77;
  }

  v116 = v5;
  featureNames2 = [modelsCopy featureNames];
  srcLabelName2 = [modelsCopy srcLabelName];
  v152[0] = srcLabelName2;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v152 count:1];
  v14 = [featureNames2 arrayByAddingObjectsFromArray:v13];

  selfCopy = self;
  v110 = v14;
  v115 = [(LCFFeatureStore *)self->_featureStore getFeatureVectors:v14 startDate:0 endDate:0 option:4];
  v15 = [MEMORY[0x277D23450] fromMLProvider:?];
  v16 = MEMORY[0x277D23458];
  featureNames3 = [modelsCopy featureNames];
  srcLabelName3 = [modelsCopy srcLabelName];
  vectorFeatureName = [modelsCopy vectorFeatureName];
  destLabelName = [modelsCopy destLabelName];
  v109 = v15;
  v21 = [v16 toMultiArrayTypeBatchProvider:v15 srcFeatureNames:featureNames3 srcLabelName:srcLabelName3 destFeatureName:vectorFeatureName destLabelName:destLabelName];

  v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v21, "count")}];
  if ([v21 count] >= 1)
  {
    v23 = 0;
    do
    {
      v24 = [v21 featuresAtIndex:v23];
      groundTruthLabelFeatureName = [modelsCopy groundTruthLabelFeatureName];
      v26 = [v24 featureValueForName:groundTruthLabelFeatureName];
      [v22 addObject:v26];

      ++v23;
    }

    while (v23 < [v21 count]);
  }

  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  obj = [modelsCopy modelNames];
  v111 = v22;
  v124 = [obj countByEnumeratingWithState:&v140 objects:v151 count:16];
  if (v124)
  {
    v123 = *v141;
    *&v27 = 138412802;
    v108 = v27;
    v28 = 0x277D23000;
    v129 = v21;
    v125 = modelsCopy;
LABEL_10:
    v29 = 0;
    while (1)
    {
      if (*v141 != v123)
      {
        objc_enumerationMutation(obj);
      }

      v30 = *(*(&v140 + 1) + 8 * v29);
      preprocessHandler = [modelsCopy preprocessHandler];

      if (preprocessHandler)
      {
        preprocessHandler2 = [modelsCopy preprocessHandler];
        v33 = (preprocessHandler2)[2](preprocessHandler2, v30, v21);
      }

      else
      {
        v33 = v21;
      }

      inferenceHandler = [modelsCopy inferenceHandler];

      v126 = v29;
      v127 = v33;
      v128 = v30;
      if (inferenceHandler)
      {
        inferenceHandler2 = [modelsCopy inferenceHandler];
        v139 = 0;
        v36 = (inferenceHandler2)[2](inferenceHandler2, v30, v33, &v139);
        v37 = v139;

        v38 = &unk_286805F80;
      }

      else
      {
        v39 = [(LCFModelStore *)selfCopy->_modelStore getModelURL:v30];
        if (!v39)
        {
          v102 = LCFMMLogShadowEvaluation;
          if (os_log_type_enabled(LCFMMLogShadowEvaluation, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v145 = v30;
            _os_log_error_impl(&dword_255F3F000, v102, OS_LOG_TYPE_ERROR, "could not find modelURl for %@", buf, 0xCu);
          }

          v36 = 0;
          v37 = 0;
          goto LABEL_74;
        }

        v40 = v39;
        v41 = [(LCFModelStore *)selfCopy->_modelStore getModelConfig:v30];
        if (v41)
        {
          v137 = 0;
          v42 = &v137;
          v43 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v40 configuration:v41 error:&v137];
        }

        else
        {
          v44 = LCFMMLogShadowEvaluation;
          if (os_log_type_enabled(LCFMMLogShadowEvaluation, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v145 = v30;
            _os_log_impl(&dword_255F3F000, v44, OS_LOG_TYPE_INFO, "MLModelConfiguration was not stored %@", buf, 0xCu);
          }

          v138 = 0;
          v42 = &v138;
          v43 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v40 error:&v138];
        }

        v45 = v43;
        v37 = *v42;
        if (!v45)
        {
          v103 = LCFMMLogShadowEvaluation;
          if (os_log_type_enabled(LCFMMLogShadowEvaluation, OS_LOG_TYPE_ERROR))
          {
            v106 = v103;
            v107 = [v37 description];
            *buf = 138412546;
            v145 = v40;
            v146 = 2112;
            v147 = v107;
            _os_log_error_impl(&dword_255F3F000, v106, OS_LOG_TYPE_ERROR, "could not load a model %@: %@", buf, 0x16u);
          }

          v36 = 0;
LABEL_74:
          v38 = &unk_286805F80;
LABEL_75:

          v10 = 0;
          v5 = v116;
          goto LABEL_76;
        }

        v120 = v41;
        v121 = v45;
        modelDescription = [v45 modelDescription];
        if ([v33 count])
        {
          v114 = v40;
          v117 = v37;
          v47 = [v33 featuresAtIndex:0];
          v131 = 0u;
          v132 = 0u;
          v133 = 0u;
          v134 = 0u;
          v113 = v47;
          featureNames4 = [v47 featureNames];
          v49 = [featureNames4 countByEnumeratingWithState:&v131 objects:v150 count:16];
          if (v49)
          {
            v50 = v49;
            v51 = *v132;
            while (2)
            {
              for (i = 0; i != v50; ++i)
              {
                if (*v132 != v51)
                {
                  objc_enumerationMutation(featureNames4);
                }

                v53 = *(*(&v131 + 1) + 8 * i);
                inputFeatureNames = [modelDescription inputFeatureNames];
                if ([inputFeatureNames containsObject:v53])
                {
                }

                else
                {
                  outputFeatureNames = [modelDescription outputFeatureNames];
                  v56 = [outputFeatureNames containsObject:v53];

                  if ((v56 & 1) == 0)
                  {
                    v70 = LCFMMLogShadowEvaluation;
                    if (os_log_type_enabled(LCFMMLogShadowEvaluation, OS_LOG_TYPE_ERROR))
                    {
                      v99 = v70;
                      inputFeatureNames2 = [modelDescription inputFeatureNames];
                      outputFeatureNames2 = [modelDescription outputFeatureNames];
                      *buf = v108;
                      v145 = v53;
                      v146 = 2112;
                      v147 = inputFeatureNames2;
                      v148 = 2112;
                      v149[0] = outputFeatureNames2;
                      _os_log_error_impl(&dword_255F3F000, v99, OS_LOG_TYPE_ERROR, "featureName %@ is not in modelDescription %@ %@", buf, 0x20u);
                    }

                    v66 = 0;
                    v36 = 0;
                    v38 = &unk_286805F80;
                    v21 = v129;
                    v37 = v117;
                    goto LABEL_48;
                  }
                }
              }

              v50 = [featureNames4 countByEnumeratingWithState:&v131 objects:v150 count:16];
              if (v50)
              {
                continue;
              }

              break;
            }
          }

          v130 = 0;
          v36 = [v121 predictionsFromBatch:v127 error:&v130];
          v118 = v130;
          v57 = 0;
          if ([v111 count])
          {
            v58 = 0;
            do
            {
              v59 = [v111 objectAtIndexedSubscript:v58];
              [v36 featuresAtIndex:v58];
              v61 = v60 = v36;
              predictedLabelFeatureName = [v125 predictedLabelFeatureName];
              v63 = [v61 featureValueForName:predictedLabelFeatureName];
              v64 = [v59 isEqualToFeatureValue:v63];

              v57 += v64;
              v36 = v60;

              ++v58;
            }

            while (v58 < [v111 count]);
          }

          v38 = [MEMORY[0x277CCABB0] numberWithDouble:{v57 / objc_msgSend(v111, "count")}];
          v65 = LCFMMLogShadowEvaluation;
          v66 = 1;
          if (os_log_type_enabled(LCFMMLogShadowEvaluation, OS_LOG_TYPE_INFO))
          {
            v67 = v65;
            v68 = [v111 count];
            *buf = 138413058;
            v145 = v128;
            v146 = 2112;
            v147 = v38;
            v148 = 1024;
            LODWORD(v149[0]) = v57;
            WORD2(v149[0]) = 2048;
            *(v149 + 6) = v68;
            _os_log_impl(&dword_255F3F000, v67, OS_LOG_TYPE_INFO, "prediction accuracy modelName:%@ accuracy:%@ matchedCount:%d cout:%lu", buf, 0x26u);
          }

          v21 = v129;
          v37 = v118;
          modelsCopy = v125;
LABEL_48:

          v28 = 0x277D23000uLL;
          v40 = v114;
        }

        else
        {
          v69 = LCFMMLogShadowEvaluation;
          if (os_log_type_enabled(LCFMMLogShadowEvaluation, OS_LOG_TYPE_ERROR))
          {
            [(LCFShadowEvaluation *)&v135 evaluateModels:v136, v69];
          }

          v36 = 0;
          v66 = 0;
          v38 = &unk_286805F80;
        }

        if (!v66)
        {
          goto LABEL_75;
        }
      }

      if (v37)
      {
        v71 = v36;
        v72 = LCFMMLogShadowEvaluation;
        if (os_log_type_enabled(LCFMMLogShadowEvaluation, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v145 = v37;
          _os_log_error_impl(&dword_255F3F000, v72, OS_LOG_TYPE_ERROR, "predictionsFromBatch failed %@", buf, 0xCu);
        }

        v73 = objc_alloc(MEMORY[0x277D23498]);
        v74 = objc_alloc(*(v28 + 1120));
        v75 = [MEMORY[0x277D23450] fromMLProvider:v21];
        srcLabelName4 = [modelsCopy srcLabelName];
        v77 = [v74 init:v75 labelFeatureName:srcLabelName4];
        v78 = [v73 init:v128 inputBachProviderInfo:v77 evaluatedPredictions:0 accuracy:v38 succeeded:&unk_286805F68 evaluationError:v37];

        [MEMORY[0x277D23478] emitShadowEvaluationEvent:v78];
        v36 = v71;
        goto LABEL_65;
      }

      metricsHandler = [modelsCopy metricsHandler];

      if (metricsHandler)
      {
        metricsHandler2 = [modelsCopy metricsHandler];
        v81 = v128;
        v78 = (metricsHandler2)[2](metricsHandler2, v128, v127, v36);
      }

      else
      {
        v78 = v36;
        v81 = v128;
      }

      [v116 setObject:v78 forKey:v81];
      if ([v78 count] < 1)
      {
        v82 = 0;
      }

      else
      {
        v82 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if ([v78 count] >= 1)
        {
          v122 = v36;
          v83 = 0;
          v84 = 0x277D23000uLL;
          do
          {
            v85 = [*(v84 + 1104) fromMLProvider:v21];
            featureProviders = [v85 featureProviders];
            v87 = [featureProviders objectAtIndexedSubscript:v83];

            v88 = [v78 featuresAtIndex:v83];
            v89 = objc_alloc(MEMORY[0x277D234A0]);
            destLabelName2 = [modelsCopy destLabelName];
            v91 = [v89 init:v87 predictedFeatureSet:v88 outputLabelFeatureName:destLabelName2];

            [v82 addObject:v91];
            v21 = v129;
            ++v83;
            v92 = [v78 count];
            v84 = 0x277D23000;
          }

          while (v83 < v92);
          v93 = 0x277D23000;
          v36 = v122;
          goto LABEL_64;
        }
      }

      v84 = 0x277D23000uLL;
      v93 = v28;
LABEL_64:
      v94 = [*(v84 + 1104) fromMLProvider:v115];
      v95 = objc_alloc(*(v93 + 1120));
      srcLabelName5 = [modelsCopy srcLabelName];
      v97 = [v95 init:v94 labelFeatureName:srcLabelName5];

      v98 = [objc_alloc(MEMORY[0x277D23498]) init:v128 inputBachProviderInfo:v97 evaluatedPredictions:v82 accuracy:v38 succeeded:&unk_286805F68 evaluationError:0];
      [MEMORY[0x277D23478] emitShadowEvaluationEvent:v98];

      v37 = 0;
LABEL_65:

      v29 = v126 + 1;
      v28 = 0x277D23000;
      if (v126 + 1 == v124)
      {
        v124 = [obj countByEnumeratingWithState:&v140 objects:v151 count:16];
        if (v124)
        {
          goto LABEL_10;
        }

        break;
      }
    }
  }

  v5 = v116;
  v10 = v116;
LABEL_76:

LABEL_77:
  v104 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)evaluateModels:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_255F3F000, log, OS_LOG_TYPE_ERROR, "batchProvider has no features", buf, 2u);
}

- (void)evaluateModels:(void *)a1 .cold.2(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 srcLabelName];
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_255F3F000, v3, OS_LOG_TYPE_ERROR, "Parameter labelName %@ is in the featureNames.", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end