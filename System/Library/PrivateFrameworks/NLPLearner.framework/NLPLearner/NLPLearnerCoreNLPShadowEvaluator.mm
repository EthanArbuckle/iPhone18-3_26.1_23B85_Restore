@interface NLPLearnerCoreNLPShadowEvaluator
+ (void)initialize;
- (BOOL)setMaxSequenceLengthForModelURL:(id)l;
- (id)evaluateModel:(CoreLanguageModelWithState *)model onSingleExample:(id)example tokenizer:(void *)tokenizer;
- (id)evaluateModel:(id)model onRecords:(id)records options:(id)options completion:(id)completion error:(id *)error;
- (id)modelCreationOptionsForModelURL:(id)l options:(id)options;
@end

@implementation NLPLearnerCoreNLPShadowEvaluator

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    sLog_3 = os_log_create("com.apple.NLPLearner", "NLPLearnerCoreNLPShadowEvaluator");

    MEMORY[0x2821F96F8]();
  }
}

- (id)modelCreationOptionsForModelURL:(id)l options:(id)options
{
  v21[5] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D00310];
  lCopy = l;
  v8 = [options objectForKeyedSubscript:v6];
  v9 = v8;
  v10 = *MEMORY[0x277D00318];
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v21[0] = lCopy;
  v12 = *MEMORY[0x277D00330];
  v20[0] = @"kCoreLMURLKey";
  v20[1] = v12;
  locale = [(NLPLearnerShadowEvaluator *)self locale];
  languageCode = [locale languageCode];
  v21[1] = languageCode;
  v21[2] = v11;
  v15 = *MEMORY[0x277D00360];
  v20[2] = v6;
  v20[3] = v15;
  v20[4] = *MEMORY[0x277D00328];
  v16 = *MEMORY[0x277D00320];
  v21[3] = *MEMORY[0x277D00358];
  v21[4] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:5];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (BOOL)setMaxSequenceLengthForModelURL:(id)l
{
  v4 = MEMORY[0x277CBEBC0];
  path = [l path];
  v6 = [path stringByAppendingPathComponent:@"modelInfo.plist"];
  v7 = [v4 fileURLWithPath:v6 isDirectory:0];

  v17 = 0;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v7 error:&v17];
  v9 = v17;
  if (!v8)
  {
    v14 = sLog_3;
    if (os_log_type_enabled(sLog_3, OS_LOG_TYPE_ERROR))
    {
      [(NLPLearnerCoreNLPShadowEvaluator *)v7 setMaxSequenceLengthForModelURL:v9, v14];
    }

    goto LABEL_8;
  }

  v10 = [v8 objectForKeyedSubscript:@"MaximumSequenceLength"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v15 = sLog_3;
    if (os_log_type_enabled(sLog_3, OS_LOG_TYPE_ERROR))
    {
      [(NLPLearnerCoreNLPShadowEvaluator *)v8 setMaxSequenceLengthForModelURL:v15];
    }

LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v12 = [v8 objectForKeyedSubscript:@"MaximumSequenceLength"];
  -[NLPLearnerCoreNLPShadowEvaluator setMaxSequenceLength:](self, "setMaxSequenceLength:", [v12 unsignedIntValue]);

  v13 = 1;
LABEL_9:

  return v13;
}

- (id)evaluateModel:(id)model onRecords:(id)records options:(id)options completion:(id)completion error:(id *)error
{
  v69[1] = *MEMORY[0x277D85DE8];
  modelCopy = model;
  recordsCopy = records;
  optionsCopy = options;
  completionCopy = completion;
  if (modelCopy)
  {
    v15 = [(NLPLearnerShadowEvaluator *)self prepareDataFromRecords:recordsCopy];
    if ([v15 numSamples])
    {
      v63 = 0;
      [(NLPLearnerCoreNLPShadowEvaluator *)self modelCreationOptionsForModelURL:modelCopy options:optionsCopy];
      v16 = CoreLMCreate();
      if (v16 && [(NLPLearnerCoreNLPShadowEvaluator *)self setMaxSequenceLengthForModelURL:modelCopy])
      {
        locale = [(NLPLearnerShadowEvaluator *)self locale];
        v18 = LMStreamTokenizerCreate();

        v59 = 0;
        v60 = &v59;
        v61 = 0x2020000000;
        v62 = 0;
        v55 = 0;
        v56 = &v55;
        v57 = 0x2020000000;
        v58 = 0;
        v51 = 0;
        v52 = &v51;
        v53 = 0x2020000000;
        v54 = 0;
        v47 = 0;
        v48 = &v47;
        v49 = 0x2020000000;
        v50 = 0;
        v43 = 0;
        v44 = &v43;
        v45 = 0x2020000000;
        v46 = 0;
        getSamples = [v15 getSamples];
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __85__NLPLearnerCoreNLPShadowEvaluator_evaluateModel_onRecords_options_completion_error___block_invoke;
        v42[3] = &unk_279928A90;
        v42[10] = v16;
        v42[11] = v18;
        v42[4] = self;
        v42[5] = &v59;
        v42[6] = &v55;
        v42[7] = &v51;
        v42[8] = &v47;
        v42[9] = &v43;
        [getSamples enumerateObjectsUsingBlock:v42];

        CFRelease(v16);
        if (v18)
        {
          LMStreamTokenizerRelease();
        }

        v20 = v56[3];
        v21 = 0.0;
        v22 = 0.0;
        if (v20)
        {
          v22 = exp((-v60[6] / v20));
          *&v22 = v22;
        }

        v23 = v48[3];
        if (v23)
        {
          v21 = (v52[6] * 100.0) / v23;
        }

        v64[0] = @"MLPModelTrainerPerplexityKey";
        v24 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
        v65[0] = v24;
        v64[1] = @"MLPModelTrainerOverallAccuracyKey";
        *&v25 = v21;
        v26 = [MEMORY[0x277CCABB0] numberWithFloat:v25];
        v65[1] = v26;
        v64[2] = @"Tokens";
        v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v56[3]];
        v65[2] = v27;
        v64[3] = @"Samples";
        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v44[3]];
        v65[3] = v28;
        error = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:4];

        _Block_object_dispose(&v43, 8);
        _Block_object_dispose(&v47, 8);
        _Block_object_dispose(&v51, 8);
        _Block_object_dispose(&v55, 8);
        _Block_object_dispose(&v59, 8);
        goto LABEL_23;
      }

      v30 = v63;
      v31 = sLog_3;
      if (os_log_type_enabled(sLog_3, OS_LOG_TYPE_ERROR))
      {
        [NLPLearnerCoreNLPShadowEvaluator evaluateModel:modelCopy onRecords:v31 options:? completion:? error:?];
      }

      if (error)
      {
        v32 = MEMORY[0x277CCA9B8];
        v66 = *MEMORY[0x277CCA450];
        v33 = MEMORY[0x277CCACA8];
        v34 = [v63 description];
        v35 = [v33 stringWithFormat:@"error loading core lm model: %@", v34];
        v67 = v35;
        v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
        *error = [v32 errorWithDomain:@"com.apple.NLPLearner.NLPShadowEvaluationErrorDomain" code:6 userInfo:v36];
      }
    }

    else
    {
      if (!error)
      {
LABEL_23:

        goto LABEL_24;
      }

      v37 = MEMORY[0x277CCA9B8];
      v68 = *MEMORY[0x277CCA450];
      v69[0] = @"missing evaluation data for PFL";
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:&v68 count:1];
      *error = [v37 errorWithDomain:@"com.apple.NLPLearner.NLPShadowEvaluationErrorDomain" code:9 userInfo:v38];
    }

    error = 0;
    goto LABEL_23;
  }

  v29 = sLog_3;
  if (os_log_type_enabled(sLog_3, OS_LOG_TYPE_ERROR))
  {
    [NLPLearnerMontrealShadowEvaluator evaluateModel:v29 onRecords:? options:? completion:? error:?];
  }

  error = 0;
LABEL_24:

  v39 = *MEMORY[0x277D85DE8];

  return error;
}

void __85__NLPLearnerCoreNLPShadowEvaluator_evaluateModel_onRecords_options_completion_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [*(a1 + 32) evaluateModel:*(a1 + 80) onSingleExample:a2 tokenizer:*(a1 + 88)];
  [v5 logfProbability];
  *(*(*(a1 + 40) + 8) + 24) = v3 + *(*(*(a1 + 40) + 8) + 24);
  *(*(*(a1 + 48) + 8) + 24) += [v5 tokenCount];
  [v5 predictedWords];
  *(*(*(a1 + 56) + 8) + 24) = v4 + *(*(*(a1 + 56) + 8) + 24);
  *(*(*(a1 + 64) + 8) + 24) += [v5 wordCount];
  *(*(*(a1 + 72) + 8) + 24) += [v5 sentenceCount];
}

- (id)evaluateModel:(CoreLanguageModelWithState *)model onSingleExample:(id)example tokenizer:(void *)tokenizer
{
  exampleCopy = example;
  v9 = 0;
  if (model && tokenizer)
  {
    if ([(NLPLearnerCoreNLPShadowEvaluator *)self maxSequenceLength])
    {
      v30 = 0;
      v31 = &v30;
      v32 = 0x2020000000;
      v33 = 0;
      v26 = 0;
      v27 = &v26;
      v28 = 0x2020000000;
      v29 = 0;
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = 0;
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      v14 = 0;
      v15 = &v14;
      v16 = 0x2020000000;
      v17 = 0;
      v13[0] = 0;
      v13[1] = v13;
      v13[2] = 0x2020000000;
      v13[3] = 0;
      strlen([exampleCopy UTF8String]);
      LMStreamTokenizerPushBytes();
      v9 = objc_alloc_init(NLPLearnerEvaluationResultCoreLM);
      LODWORD(v10) = *(v31 + 6);
      [(NLPLearnerEvaluationResultCoreLM *)v9 setLogfProbability:v10];
      [(NLPLearnerEvaluationResultCoreLM *)v9 setTokenCount:v19[3]];
      LODWORD(v11) = *(v27 + 6);
      [(NLPLearnerEvaluationResultCoreLM *)v9 setPredictedWords:v11];
      [(NLPLearnerEvaluationResultCoreLM *)v9 setWordCount:v23[3]];
      [(NLPLearnerEvaluationResultCoreLM *)v9 setSentenceCount:v15[3]];
      _Block_object_dispose(v13, 8);
      _Block_object_dispose(&v14, 8);
      _Block_object_dispose(&v18, 8);
      _Block_object_dispose(&v22, 8);
      _Block_object_dispose(&v26, 8);
      _Block_object_dispose(&v30, 8);
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

void __76__NLPLearnerCoreNLPShadowEvaluator_evaluateModel_onSingleExample_tokenizer___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v37[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a2 length:a3 encoding:4];
    v6 = *(a1 + 88);
    v7 = CoreLMCopyTokenIdsForText();
    v8 = [v7 count];
    v9 = v8 + *(*(*(a1 + 40) + 8) + 24) + 1;
    if (v9 >= [*(a1 + 32) maxSequenceLength])
    {
      *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) maxSequenceLength];
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) += v8;
      v10 = *MEMORY[0x277D00340];
      v11 = *MEMORY[0x277D00338];
      v35[0] = *MEMORY[0x277D00348];
      v35[1] = v11;
      v36[0] = v10;
      v36[1] = &unk_286C3AA20;
      v35[2] = *MEMORY[0x277D00350];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "topK")}];
      v36[2] = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:3];

      v14 = *(a1 + 88);
      v15 = CoreLMCopyPredictions();
      v16 = [v15 keysSortedByValueUsingComparator:&__block_literal_global_0];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __76__NLPLearnerCoreNLPShadowEvaluator_evaluateModel_onSingleExample_tokenizer___block_invoke_2;
      v32[3] = &unk_279928AD8;
      v17 = v5;
      v18 = *(a1 + 72);
      v33 = v17;
      v34 = v18;
      [v16 enumerateObjectsUsingBlock:v32];

      ++*(*(*(a1 + 80) + 8) + 24);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __76__NLPLearnerCoreNLPShadowEvaluator_evaluateModel_onSingleExample_tokenizer___block_invoke_3;
      v31[3] = &unk_279928B00;
      v19 = *(a1 + 88);
      v31[4] = *(a1 + 48);
      v31[5] = v19;
      [v7 enumerateObjectsUsingBlock:v31];
    }
  }

  else if (a4 == 2)
  {
    v20 = *(*(*(a1 + 40) + 8) + 24);
    if (v20 < [*(a1 + 32) maxSequenceLength])
    {
      v21 = *(a1 + 88);
      v22 = CoreLMGetSpecialTokenId();
      v23 = *(a1 + 88);
      v24 = [MEMORY[0x277CCABB0] numberWithLong:v22];
      v37[0] = v24;
      [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
      v25 = CoreLMCopyConditionalProbabilities();

      if ([v25 count] != 1)
      {
        __76__NLPLearnerCoreNLPShadowEvaluator_evaluateModel_onSingleExample_tokenizer___block_invoke_cold_1();
      }

      v26 = [v25 firstObject];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        __76__NLPLearnerCoreNLPShadowEvaluator_evaluateModel_onSingleExample_tokenizer___block_invoke_cold_2();
      }

      v27 = [v25 firstObject];
      [v27 floatValue];
      *(*(*(a1 + 48) + 8) + 24) = logf(v28) + *(*(*(a1 + 48) + 8) + 24);
      ++*(*(*(a1 + 40) + 8) + 24);
    }

    ++*(*(*(a1 + 56) + 8) + 24);
    *(*(*(a1 + 64) + 8) + 24) += *(*(*(a1 + 40) + 8) + 24);
    v29 = *(a1 + 88);
    CoreLMReset();
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __76__NLPLearnerCoreNLPShadowEvaluator_evaluateModel_onSingleExample_tokenizer___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = MEMORY[0x277CCA900];
  v7 = a2;
  v8 = [v6 whitespaceAndNewlineCharacterSet];
  v9 = [v7 stringByTrimmingCharactersInSet:v8];

  if ([v9 isEqualToString:*(a1 + 32)])
  {
    *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) + 1.0;
    *a4 = 1;
  }
}

void __76__NLPLearnerCoreNLPShadowEvaluator_evaluateModel_onSingleExample_tokenizer___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v6 = [MEMORY[0x277CBEA60] arrayWithObject:?];
  v7 = *(a1 + 40);
  v8 = CoreLMCopyConditionalProbabilities();
  if ([v8 count] != 1)
  {
    __76__NLPLearnerCoreNLPShadowEvaluator_evaluateModel_onSingleExample_tokenizer___block_invoke_3_cold_1();
  }

  v9 = [v8 firstObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __76__NLPLearnerCoreNLPShadowEvaluator_evaluateModel_onSingleExample_tokenizer___block_invoke_3_cold_2();
  }

  v10 = [v8 firstObject];
  [v10 floatValue];
  v12 = logf(v11);
  v13 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = v12 + *(*(*(a1 + 32) + 8) + 24);
  *a4 = CoreLMUpdateWithContext() ^ 1;
}

- (void)setMaxSequenceLengthForModelURL:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25AE22000, a2, OS_LOG_TYPE_ERROR, "modelInfo '%@' missing 'MaximumSequenceLength' parameter", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setMaxSequenceLengthForModelURL:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_25AE22000, log, OS_LOG_TYPE_ERROR, "Failed to load '%@', error: '%@'", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)evaluateModel:(uint64_t)a1 onRecords:(NSObject *)a2 options:completion:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25AE22000, a2, OS_LOG_TYPE_ERROR, "error loading coreLM %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end