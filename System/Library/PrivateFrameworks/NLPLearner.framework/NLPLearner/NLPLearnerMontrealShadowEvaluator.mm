@interface NLPLearnerMontrealShadowEvaluator
+ (BOOL)isInTopKPredictions:(unint64_t)predictions scores:(float *)scores total:(unint64_t)total topK:(unint64_t)k;
+ (void)initialize;
- (id)evaluateModel:(MontrealNeuralNetwork *)model onData:(id)data options:(id)options completion:(id)completion;
- (id)evaluateModel:(id)model onRecords:(id)records options:(id)options completion:(id)completion error:(id *)error;
- (id)prepareDataFromRecords:(id)records modelBundle:(id)bundle error:(id *)error;
@end

@implementation NLPLearnerMontrealShadowEvaluator

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    sLog_1 = os_log_create("com.apple.NLPLearner", "NLPLearnerMontrealShadowEvaluator");

    MEMORY[0x2821F96F8]();
  }
}

- (id)prepareDataFromRecords:(id)records modelBundle:(id)bundle error:(id *)error
{
  v23[1] = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  bundleCopy = bundle;
  evaluationTask = [(NLPLearnerShadowEvaluator *)self evaluationTask];
  locale = [(NLPLearnerShadowEvaluator *)self locale];
  v12 = [NLPLearnerTextData dataForPFL:evaluationTask andLocale:locale];

  if ([(NLPLearnerShadowEvaluator *)self evaluationTask]== 2 || [(NLPLearnerShadowEvaluator *)self evaluationTask]== 4)
  {
    v13 = @"montrealidmap.dat";
    goto LABEL_4;
  }

  if ([(NLPLearnerShadowEvaluator *)self evaluationTask]== 1)
  {
    v13 = @"emojiClasses.plist";
LABEL_4:
    v14 = [NLPLearnerUtils getAttachmentURLByName:v13 inDirectory:bundleCopy error:error];
    if (v14)
    {
      absoluteString = v14;
      path = [v14 path];
      [v12 addResource:path];

LABEL_6:
      [v12 loadFromCoreDuet:recordsCopy limitSamplesTo:{-[NLPLearnerShadowEvaluator maxSamples](self, "maxSamples")}];
      v17 = v12;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if ([(NLPLearnerShadowEvaluator *)self evaluationTask]== 3)
  {
    absoluteString = [bundleCopy absoluteString];
    [v12 addResource:absoluteString];
    goto LABEL_6;
  }

  if (error)
  {
    v18 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA450];
    v23[0] = @"unknown evaluation task for PFL";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    *error = [v18 errorWithDomain:@"com.apple.NLPLearner.NLPShadowEvaluationErrorDomain" code:4 userInfo:v19];
  }

LABEL_13:
  v17 = 0;
LABEL_14:

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)evaluateModel:(id)model onRecords:(id)records options:(id)options completion:(id)completion error:(id *)error
{
  v35[1] = *MEMORY[0x277D85DE8];
  modelCopy = model;
  recordsCopy = records;
  optionsCopy = options;
  completionCopy = completion;
  if (modelCopy)
  {
    uRLByDeletingLastPathComponent = [modelCopy URLByDeletingLastPathComponent];
    v17 = [(NLPLearnerMontrealShadowEvaluator *)self prepareDataFromRecords:recordsCopy modelBundle:uRLByDeletingLastPathComponent error:error];

    if (![v17 numSamples])
    {
      if (error)
      {
        v23 = MEMORY[0x277CCA9B8];
        v34 = *MEMORY[0x277CCA450];
        v35[0] = @"missing evaluation data for PFL";
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
        *error = [v23 errorWithDomain:@"com.apple.NLPLearner.NLPShadowEvaluationErrorDomain" code:9 userInfo:v24];

        error = 0;
      }

      goto LABEL_16;
    }

    v32 = *MEMORY[0x277D2A280];
    v33 = modelCopy;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v19 = MRLNeuralNetworkCreate();
    v20 = sLog_1;
    if (v19)
    {
      v21 = v19;
      if (os_log_type_enabled(sLog_1, OS_LOG_TYPE_DEBUG))
      {
        [NLPLearnerMontrealShadowEvaluator evaluateModel:modelCopy onRecords:v20 options:? completion:? error:?];
      }

      error = [(NLPLearnerMontrealShadowEvaluator *)self evaluateModel:v21 onData:v17 options:optionsCopy completion:completionCopy];
      CFRelease(v21);
      goto LABEL_15;
    }

    if (os_log_type_enabled(sLog_1, OS_LOG_TYPE_ERROR))
    {
      [NLPLearnerMontrealShadowEvaluator evaluateModel:modelCopy onRecords:v20 options:? completion:? error:?];
      if (!error)
      {
        goto LABEL_15;
      }
    }

    else if (!error)
    {
LABEL_15:

LABEL_16:
      goto LABEL_17;
    }

    v29 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CCA450];
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"error loading nlmodel: %@", 0];
    v31 = v25;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    *error = [v29 errorWithDomain:@"com.apple.NLPLearner.NLPShadowEvaluationErrorDomain" code:6 userInfo:v26];

    error = 0;
    goto LABEL_15;
  }

  v22 = sLog_1;
  if (os_log_type_enabled(sLog_1, OS_LOG_TYPE_ERROR))
  {
    [NLPLearnerMontrealShadowEvaluator evaluateModel:v22 onRecords:? options:? completion:? error:?];
  }

  error = 0;
LABEL_17:

  v27 = *MEMORY[0x277D85DE8];

  return error;
}

+ (BOOL)isInTopKPredictions:(unint64_t)predictions scores:(float *)scores total:(unint64_t)total topK:(unint64_t)k
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (k >= total)
  {
    result = 1;
  }

  else
  {
    v6 = (v19 - ((8 * k + 15) & 0xFFFFFFFFFFFFFFF0));
    v7 = *scores;
    if (k)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v6[v8] = v8;
        if (scores[v8] < v7)
        {
          v9 = v8;
          v7 = scores[v8];
        }

        ++v8;
      }

      while (k != v8);
    }

    else
    {
      v9 = 0;
    }

    kCopy = k;
    while (2)
    {
      v12 = kCopy;
      v13 = v7;
      while (1)
      {
        v7 = scores[v12];
        if (v7 <= v13)
        {
          v7 = v13;
          goto LABEL_21;
        }

        v6[v9] = v12;
        if (k)
        {
          break;
        }

        ++v12;
        v13 = v7;
        if (total == v12)
        {
          goto LABEL_25;
        }
      }

      for (i = 0; i != k; ++i)
      {
        if (scores[v6[i]] < v7)
        {
          v9 = i;
          v7 = scores[v6[i]];
        }
      }

LABEL_21:
      kCopy = v12 + 1;
      if (total - 1 != v12)
      {
        continue;
      }

      break;
    }

    if (!k)
    {
LABEL_25:
      result = 0;
      goto LABEL_26;
    }

    if (*v6 == predictions)
    {
      result = 1;
    }

    else
    {
      v16 = 1;
      do
      {
        v17 = v16;
        if (k == v16)
        {
          break;
        }

        v18 = v6[v16++];
      }

      while (v18 != predictions);
      result = v17 < k;
    }
  }

LABEL_26:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)evaluateModel:(MontrealNeuralNetwork *)model onData:(id)data options:(id)options completion:(id)completion
{
  dataCopy = data;
  optionsCopy = options;
  completionCopy = completion;
  if (model)
  {
    v13 = 0x277CCA000;
    if ([(NLPLearnerShadowEvaluator *)self evaluationTask]== 4)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      nextEvaluationDataPoint = [dataCopy nextEvaluationDataPoint];
      if (nextEvaluationDataPoint)
      {
        v16 = nextEvaluationDataPoint;
        v36 = dictionary;
        v37 = completionCopy;
        v38 = optionsCopy;
        v17 = 0;
        v40 = *MEMORY[0x277D2A270];
        v39 = *MEMORY[0x277D2A278];
        v18 = 0.0;
        v41 = dataCopy;
        do
        {
          v43 = v17;
          v19 = [v16 objectForKey:v40];
          v20 = [v16 objectForKey:v39];
          v21 = [v20 count];
          v42 = v19;
          [v19 bytes];
          MRLNeuralNetworkSetInput();
          MRLNeuralNetworkPredict();
          Output = MRLNeuralNetworkGetOutput();
          OutputDimension = MRLNeuralNetworkGetOutputDimension();
          v24 = v21 - 1;
          if (v21 != 1)
          {
            v25 = OutputDimension;
            v26 = 0;
            v27 = 4 * OutputDimension;
            do
            {
              v28 = [v20 objectAtIndexedSubscript:v26];
              unsignedIntegerValue = [v28 unsignedIntegerValue];

              if (unsignedIntegerValue != 3 && [objc_opt_class() isInTopKPredictions:unsignedIntegerValue scores:Output total:v25 topK:{-[NLPLearnerShadowEvaluator topK](self, "topK")}])
              {
                v18 = v18 + 1.0;
              }

              ++v26;
              Output += v27;
            }

            while (v24 != v26);
          }

          v17 = v24 + v43;

          dataCopy = v41;
          nextEvaluationDataPoint2 = [v41 nextEvaluationDataPoint];

          v16 = nextEvaluationDataPoint2;
        }

        while (nextEvaluationDataPoint2);
        if (v17)
        {
          *&v31 = (v18 * 100.0) / v17;
        }

        else
        {
          v31 = 0.0;
        }

        completionCopy = v37;
        optionsCopy = v38;
        v13 = 0x277CCA000uLL;
        dictionary = v36;
      }

      else
      {
        v31 = 0.0;
      }

      v33 = [*(v13 + 2992) numberWithFloat:v31];
      [dictionary setObject:v33 forKeyedSubscript:@"MLPModelTrainerOverallAccuracyKey"];
    }

    else
    {
      v45 = completionCopy;
      v44 = dataCopy;
      v32 = MRLNeuralNetworkCopyEvaluationResults();
      dictionary = [v32 mutableCopy];
    }

    v34 = [*(v13 + 2992) numberWithUnsignedInteger:{objc_msgSend(dataCopy, "numSamples")}];
    [dictionary setObject:v34 forKeyedSubscript:@"Samples"];
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

void *__77__NLPLearnerMontrealShadowEvaluator_evaluateModel_onData_options_completion___block_invoke(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 40);
  if (v4 && (*(v4 + 16))())
  {
    v5 = sLog_1;
    if (os_log_type_enabled(sLog_1, OS_LOG_TYPE_ERROR))
    {
      __77__NLPLearnerMontrealShadowEvaluator_evaluateModel_onData_options_completion___block_invoke_cold_1(v5);
    }

    v6 = 0;
    *a2 = 1;
  }

  else
  {
    v7 = [*(a1 + 32) nextEvaluationDataPoint];
    v6 = v7;
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      *a2 = 1;
    }
  }

  return v6;
}

- (void)evaluateModel:(uint64_t)a1 onRecords:(NSObject *)a2 options:completion:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_25AE22000, a2, OS_LOG_TYPE_DEBUG, "running evaluation for %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)evaluateModel:(uint64_t)a1 onRecords:(NSObject *)a2 options:completion:error:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25AE22000, a2, OS_LOG_TYPE_ERROR, "error loading nlmodel %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end