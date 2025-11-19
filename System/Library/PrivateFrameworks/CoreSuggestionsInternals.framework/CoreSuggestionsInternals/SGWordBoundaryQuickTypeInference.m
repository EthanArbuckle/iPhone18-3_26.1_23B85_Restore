@interface SGWordBoundaryQuickTypeInference
+ (BOOL)_probablePriorPredictionInContext:(id)a3 predictedLabel:(int64_t)a4;
+ (id)quickTypeTriggerForContext:(id)a3 localeIdentifier:(id)a4 modelConfigPath:(id)a5 espressoBinFilePath:(id)a6 useContactNames:(BOOL)a7;
@end

@implementation SGWordBoundaryQuickTypeInference

+ (BOOL)_probablePriorPredictionInContext:(id)a3 predictedLabel:(int64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__1496;
  v13[4] = __Block_byref_object_dispose__1497;
  v14 = [SGDataDetectorMatch detectionsInPlainText:v5 baseDate:0];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__SGWordBoundaryQuickTypeInference__probablePriorPredictionInContext_predictedLabel___block_invoke;
  v12[3] = &unk_27894B0F0;
  v12[4] = v13;
  v6 = MEMORY[0x2383809F0](v12);
  v7 = v6;
  if ((a4 - 1) >= 6)
  {
    v9 = sgQuicktypeLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v16 = a4;
      _os_log_fault_impl(&dword_231E60000, v9, OS_LOG_TYPE_FAULT, "SGWordBoundaryQuickTypeInference - Unexpected label %ld", buf, 0xCu);
    }

    v8 = 1;
  }

  else
  {
    v8 = (*(v6 + 16))(v6, dword_232106DB8[a4 - 1]);
  }

  _Block_object_dispose(v13, 8);
  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t __85__SGWordBoundaryQuickTypeInference__probablePriorPredictionInContext_predictedLabel___block_invoke(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v11 + 1) + 8 * v7) matchType] == a2)
        {
          v8 = 1;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)quickTypeTriggerForContext:(id)a3 localeIdentifier:(id)a4 modelConfigPath:(id)a5 espressoBinFilePath:(id)a6 useContactNames:(BOOL)a7
{
  v82 = *MEMORY[0x277D85DE8];
  v57 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [MEMORY[0x277D02548] languageForLocaleIdentifier:v12];
  v16 = [objc_alloc(MEMORY[0x277CBEB38]) initWithContentsOfFile:v13];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 objectForKeyedSubscript:@"PREDICTION_PARAMETERS"];

    if (v18)
    {
      v19 = [v17 objectForKeyedSubscript:@"PREDICTION_PARAMETERS"];
      v20 = [v19 objectForKeyedSubscript:@"TARGET_LANGUAGE"];
      v21 = v20;
      if (v20)
      {
        v22 = [v20 isEqualToString:v15];

        if (v22)
        {
          v23 = [v17 objectForKeyedSubscript:@"PREDICTION_PARAMETERS"];
          v56 = [v23 objectForKeyedSubscript:@"CONFIDENCE_THRESHOLDS"];

          if (!v56 || [v56 count]!= 7)
          {
            v36 = sgQuicktypeLogHandle();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              v40 = v56;
              if (v56)
              {
                v40 = [v56 count];
              }

              *v78 = 134218240;
              *&v78[4] = v40;
              *&v78[12] = 2048;
              *&v78[14] = 7;
              _os_log_error_impl(&dword_231E60000, v36, OS_LOG_TYPE_ERROR, "SGWordBoundaryQuickTypeInference - Unexpected number of confidence thresholds (%ld rather than %ld)", v78, 0x16u);
            }

            v34 = 0;
            goto LABEL_31;
          }

          if (quickTypeTriggerForContext_localeIdentifier_modelConfigPath_espressoBinFilePath_useContactNames__onceToken != -1)
          {
            dispatch_once(&quickTypeTriggerForContext_localeIdentifier_modelConfigPath_espressoBinFilePath_useContactNames__onceToken, &__block_literal_global_1505);
          }

          *v78 = 0;
          *&v78[8] = v78;
          *&v78[16] = 0x3032000000;
          v79 = __Block_byref_object_copy__1496;
          v80 = __Block_byref_object_dispose__1497;
          v81 = &stru_284703F00;
          v64 = 0;
          v65 = &v64;
          v66 = 0x3032000000;
          v67 = __Block_byref_object_copy__1496;
          v68 = __Block_byref_object_dispose__1497;
          v69 = 0;
          v58[0] = MEMORY[0x277D85DD0];
          v58[1] = 3221225472;
          v58[2] = __132__SGWordBoundaryQuickTypeInference_quickTypeTriggerForContext_localeIdentifier_modelConfigPath_espressoBinFilePath_useContactNames___block_invoke_31;
          v58[3] = &unk_27894B0C8;
          v61 = &v64;
          v62 = v78;
          v63 = a7;
          v59 = v15;
          v24 = v57;
          v60 = v24;
          v52 = MEMORY[0x2383809F0](v58);
          v76[0] = @"INPUT_TEXT";
          v76[1] = @"NEGATIVE_SAMPLE_CHOPLESS";
          v77[0] = v24;
          v77[1] = MEMORY[0x277CBEC38];
          v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:2];
          v25 = [(SGEspressoModel *)SGContactSharingModel modelWithConfigPath:v13 binPath:v14];
          v51 = v25;
          if (!v25)
          {
            log = sgQuicktypeLogHandle();
            if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v71 = v13;
              v72 = 2112;
              v73 = v14;
              _os_log_fault_impl(&dword_231E60000, log, OS_LOG_TYPE_FAULT, "SGWordBoundaryQuickTypeInference - Could not initialize model with config path: %@, bin path: %@", buf, 0x16u);
            }

            v34 = 0;
            goto LABEL_30;
          }

          v49 = v24;
          log = [v25 predictForInput:v55];
          v53 = [SGContactSharingModel labelForProbabilities:?];
          if (!v53)
          {
            v32 = sgQuicktypeLogHandle();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              v47 = [log objectAtIndexedSubscript:0];
              *buf = 138412290;
              v71 = v47;
              _os_log_debug_impl(&dword_231E60000, v32, OS_LOG_TYPE_DEBUG, "SGWordBoundaryQuickTypeInference - Irrelevant Label predicted with score: %@", buf, 0xCu);
            }

            goto LABEL_28;
          }

          v26 = [log objectAtIndexedSubscript:?];
          [v26 doubleValue];
          v28 = v27;
          v29 = [v56 objectAtIndexedSubscript:v53];
          [v29 doubleValue];
          v31 = v28 < v30;

          if (v31)
          {
            v32 = sgQuicktypeLogHandle();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              v50 = [log objectAtIndexedSubscript:v53];
              v33 = [v56 objectAtIndexedSubscript:v53];
              *buf = 134218498;
              v71 = v53;
              v72 = 2112;
              v73 = v50;
              v74 = 2112;
              v75 = v33;
              _os_log_debug_impl(&dword_231E60000, v32, OS_LOG_TYPE_DEBUG, "SGWordBoundaryQuickTypeInference - Predicted label (%ld) confidence (%@), falls below confidence threshold (%@)!", buf, 0x20u);
            }
          }

          else
          {
            if (![a1 _probablePriorPredictionInContext:v49 predictedLabel:v53])
            {
              v41 = sgQuicktypeLogHandle();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
              {
                v48 = [log objectAtIndexedSubscript:v53];
                *buf = 134218498;
                v71 = 4;
                v72 = 2048;
                v73 = v53;
                v74 = 2112;
                v75 = v48;
                _os_log_debug_impl(&dword_231E60000, v41, OS_LOG_TYPE_DEBUG, "SGWordBoundaryQuickTypeInference - objective: %lu, prediction: %ld, score: %@", buf, 0x20u);
              }

              v42 = quickTypeTriggerForContext_localeIdentifier_modelConfigPath_espressoBinFilePath_useContactNames__triggerForLabel;
              v43 = [MEMORY[0x277CCABB0] numberWithInteger:v53];
              v32 = [v42 objectForKeyedSubscript:v43];

              if ((v53 - 4) > 2)
              {
                v45 = v32;
                v32 = v45;
              }

              else
              {
                v52[2]();
                v44 = v65[5];
                if (v44 == *(*&v78[8] + 40))
                {
                  v46 = sgQuicktypeLogHandle();
                  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 134217984;
                    v71 = v53;
                    _os_log_debug_impl(&dword_231E60000, v46, OS_LOG_TYPE_DEBUG, "SGWordBoundaryQuickTypeInference - No name found for thirdparty objective: %ld", buf, 0xCu);
                  }

                  goto LABEL_28;
                }

                v45 = __132__SGWordBoundaryQuickTypeInference_quickTypeTriggerForContext_localeIdentifier_modelConfigPath_espressoBinFilePath_useContactNames___block_invoke_2(v32, v44);
              }

              v34 = v45;
              goto LABEL_29;
            }

            v32 = sgQuicktypeLogHandle();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v39 = [log objectAtIndexedSubscript:v53];
              *buf = 134218242;
              v71 = v53;
              v72 = 2112;
              v73 = v39;
              _os_log_impl(&dword_231E60000, v32, OS_LOG_TYPE_DEFAULT, "SGWordBoundaryQuickTypeInference - probable prior prediction of label %ld (score: %@) detected.", buf, 0x16u);
            }
          }

LABEL_28:
          v34 = 0;
LABEL_29:

LABEL_30:
          _Block_object_dispose(&v64, 8);

          _Block_object_dispose(v78, 8);
LABEL_31:
          v35 = v56;
LABEL_32:

          goto LABEL_33;
        }
      }

      else
      {
      }

      v35 = sgQuicktypeLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *v78 = 138412802;
        *&v78[4] = v12;
        *&v78[12] = 2112;
        *&v78[14] = v15;
        *&v78[22] = 2112;
        v79 = v21;
        _os_log_error_impl(&dword_231E60000, v35, OS_LOG_TYPE_ERROR, "SGWordBoundaryQuickTypeInference - localeIdentifier/language (%@/%@) do not match configured target language (%@)", v78, 0x20u);
      }

      v34 = 0;
      goto LABEL_32;
    }
  }

  v21 = sgQuicktypeLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *v78 = 0;
    _os_log_error_impl(&dword_231E60000, v21, OS_LOG_TYPE_ERROR, "SGWordBoundaryQuickTypeInference - Invalid model config!", v78, 2u);
  }

  v34 = 0;
LABEL_33:

  v37 = *MEMORY[0x277D85DE8];

  return v34;
}

void __132__SGWordBoundaryQuickTypeInference_quickTypeTriggerForContext_localeIdentifier_modelConfigPath_espressoBinFilePath_useContactNames___block_invoke_31(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  v4 = *(v2 + 40);
  v3 = (v2 + 40);
  if (!v4)
  {
    objc_storeStrong(v3, *(*(*(a1 + 56) + 8) + 40));
    if (*(a1 + 64))
    {
      v5 = 0;
    }

    else
    {
      v5 = 2;
    }

    v6 = [[SGNameDetector alloc] initWithLanguage:*(a1 + 32)];
    v14 = [(SGNameDetector *)v6 detectNames:*(a1 + 40) algorithm:v5];

    if ([v14 count] == 1)
    {
      v7 = [v14 firstObject];
      v8 = *(a1 + 40);
      v9 = [v7 range];
      v11 = [v8 substringWithRange:{v9, v10}];
      v12 = *(*(a1 + 48) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }
  }
}

id __132__SGWordBoundaryQuickTypeInference_quickTypeTriggerForContext_localeIdentifier_modelConfigPath_espressoBinFilePath_useContactNames___block_invoke_2(void *a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1 mutableCopy];
  v8 = quickTypeTriggerForContext_localeIdentifier_modelConfigPath_espressoBinFilePath_useContactNames__givenNameQualifier;
  v9[0] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v4 setObject:v5 forKey:quickTypeTriggerForContext_localeIdentifier_modelConfigPath_espressoBinFilePath_useContactNames__qualifiersKey];

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

void __132__SGWordBoundaryQuickTypeInference_quickTypeTriggerForContext_localeIdentifier_modelConfigPath_espressoBinFilePath_useContactNames___block_invoke()
{
  v43[6] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D22F30];
  v1 = *MEMORY[0x277D22FE8];
  v2 = *MEMORY[0x277D22F40];
  v3 = *MEMORY[0x277D22F18];
  v4 = *MEMORY[0x277D23050];
  v5 = *MEMORY[0x277D22FE0];
  v6 = *MEMORY[0x277D23028];
  v7 = *MEMORY[0x277D22F68];
  v8 = *MEMORY[0x277D23040];
  v9 = *MEMORY[0x277D22FF8];
  v10 = quickTypeTriggerForContext_localeIdentifier_modelConfigPath_espressoBinFilePath_useContactNames__qualifiersKey;
  quickTypeTriggerForContext_localeIdentifier_modelConfigPath_espressoBinFilePath_useContactNames__qualifiersKey = v9;
  v27 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  v14 = v4;
  v15 = v3;
  v16 = v2;
  v17 = v1;
  v18 = v0;

  objc_storeStrong(&quickTypeTriggerForContext_localeIdentifier_modelConfigPath_espressoBinFilePath_useContactNames__givenNameQualifier, *MEMORY[0x277D22F80]);
  v41[2] = v11;
  v42[0] = &unk_284749170;
  v40[0] = v18;
  v40[1] = v14;
  v41[0] = v17;
  v41[1] = v13;
  v40[2] = v12;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];
  v43[0] = v29;
  v42[1] = &unk_284749188;
  v38[0] = v18;
  v38[1] = v14;
  v39[0] = v16;
  v39[1] = v13;
  v38[2] = v12;
  v39[2] = v11;
  v28 = v11;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:3];
  v43[1] = v26;
  v42[2] = &unk_2847491A0;
  v36[0] = v18;
  v36[1] = v14;
  v37[0] = v15;
  v37[1] = v13;
  v36[2] = v12;
  v37[2] = v11;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:3];
  v43[2] = v25;
  v42[3] = &unk_2847491B8;
  v34[0] = v18;
  v34[1] = v14;
  v35[0] = v17;
  v35[1] = v13;
  v34[2] = v12;
  v35[2] = v27;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];
  v43[3] = v19;
  v42[4] = &unk_2847491D0;
  v32[0] = v18;
  v32[1] = v14;
  v33[0] = v16;
  v33[1] = v13;
  v32[2] = v12;
  v33[2] = v27;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];
  v43[4] = v20;
  v42[5] = &unk_2847491E8;
  v30[0] = v18;
  v30[1] = v14;
  v31[0] = v15;
  v31[1] = v13;
  v30[2] = v12;
  v31[2] = v27;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
  v43[5] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:6];
  v23 = quickTypeTriggerForContext_localeIdentifier_modelConfigPath_espressoBinFilePath_useContactNames__triggerForLabel;
  quickTypeTriggerForContext_localeIdentifier_modelConfigPath_espressoBinFilePath_useContactNames__triggerForLabel = v22;

  v24 = *MEMORY[0x277D85DE8];
}

@end