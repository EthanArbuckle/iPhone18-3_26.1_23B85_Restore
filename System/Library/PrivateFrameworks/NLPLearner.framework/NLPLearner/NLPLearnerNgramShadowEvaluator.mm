@interface NLPLearnerNgramShadowEvaluator
+ (void)initialize;
- (id)evaluateModel:(id)model onRecords:(id)records options:(id)options completion:(id)completion error:(id *)error;
@end

@implementation NLPLearnerNgramShadowEvaluator

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    sLog_4 = os_log_create("com.apple.NLPLearner", "NLPLearnerNgramShadowEvaluator");

    MEMORY[0x2821F96F8]();
  }
}

- (id)evaluateModel:(id)model onRecords:(id)records options:(id)options completion:(id)completion error:(id *)error
{
  v50[1] = *MEMORY[0x277D85DE8];
  modelCopy = model;
  recordsCopy = records;
  optionsCopy = options;
  completionCopy = completion;
  v15 = [(NLPLearnerShadowEvaluator *)self prepareDataFromRecords:recordsCopy];
  if ([v15 numSamples])
  {
    v47[0] = *MEMORY[0x277D230E0];
    locale = [(NLPLearnerShadowEvaluator *)self locale];
    languageCode = [locale languageCode];
    v47[1] = *MEMORY[0x277D23078];
    v48[0] = languageCode;
    v48[1] = MEMORY[0x277CBEC28];
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];

    v19 = LMLanguageModelCreate();
    if (v19)
    {
      v39 = 0;
      v40 = &v39;
      v41 = 0x2020000000;
      v42 = 0;
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v38 = 0;
      getSamples = [v15 getSamples];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __83__NLPLearnerNgramShadowEvaluator_evaluateModel_onRecords_options_completion_error___block_invoke;
      v34[3] = &unk_279928B50;
      v34[4] = self;
      v34[5] = &v39;
      v34[6] = &v35;
      v34[7] = v19;
      [getSamples enumerateObjectsUsingBlock:v34];

      v22 = v36[3];
      if (v22)
      {
        *&v21 = (v40[6] * 100.0) / v22;
      }

      else
      {
        v21 = 0.0;
      }

      v43[0] = @"MLPModelTrainerOverallAccuracyKey";
      v29 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
      v43[1] = @"Samples";
      v44[0] = v29;
      v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "numSamples")}];
      v44[1] = v30;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];

      _Block_object_dispose(&v35, 8);
      _Block_object_dispose(&v39, 8);
    }

    else
    {
      v25 = sLog_4;
      if (os_log_type_enabled(sLog_4, OS_LOG_TYPE_ERROR))
      {
        [NLPLearnerCoreNLPShadowEvaluator evaluateModel:modelCopy onRecords:v25 options:? completion:? error:?];
      }

      if (error)
      {
        v26 = MEMORY[0x277CCA9B8];
        v45 = *MEMORY[0x277CCA450];
        v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"error loading static lm model"];
        v46 = v27;
        v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        *error = [v26 errorWithDomain:@"com.apple.NLPLearner.NLPShadowEvaluationErrorDomain" code:6 userInfo:v28];
      }

      v24 = 0;
    }

    goto LABEL_14;
  }

  if (error)
  {
    v23 = MEMORY[0x277CCA9B8];
    v49 = *MEMORY[0x277CCA450];
    v50[0] = @"missing evaluation data for PFL";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:&v49 count:1];
    [v23 errorWithDomain:@"com.apple.NLPLearner.NLPShadowEvaluationErrorDomain" code:9 userInfo:v18];
    *error = v24 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v24 = 0;
LABEL_15:

  v31 = *MEMORY[0x277D85DE8];

  return v24;
}

void __83__NLPLearnerNgramShadowEvaluator_evaluateModel_onRecords_options_completion_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = sLog_4;
    if (os_log_type_enabled(sLog_4, OS_LOG_TYPE_ERROR))
    {
      __83__NLPLearnerNgramShadowEvaluator_evaluateModel_onRecords_options_completion_error___block_invoke_cold_1(v7);
    }

    *a4 = 1;
  }

  v8 = [v6 bytes];
  v9 = [v6 length];
  v10 = (v9 >> 2) - 1;
  if (v10 >= 2)
  {
    for (i = 1; i != v10; ++i)
    {
      v12 = *(a1 + 56);
      LMLanguageModelCreatePredictionEnumerator();
      if (LMPredictionEnumeratorAdvance())
      {
        v13 = -1;
        do
        {
          if (++v13 >= [*(a1 + 32) topK])
          {
            break;
          }

          LMPredictionEnumeratorGetPrediction();
          if (!*(v8 + 4 * i))
          {
            *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) + 1.0;
            break;
          }
        }

        while ((LMPredictionEnumeratorAdvance() & 1) != 0);
      }

      LMPredictionEnumeratorRelease();
    }
  }

  if (v9 > 0xB)
  {
    *(*(*(a1 + 48) + 8) + 24) = (v9 >> 2) + *(*(*(a1 + 48) + 8) + 24) - 2;
  }
}

@end