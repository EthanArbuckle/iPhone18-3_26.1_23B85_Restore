@interface NLPLearnerMontrealShadowEvaluator
+ (BOOL)isInTopKPredictions:(unint64_t)a3 scores:(float *)a4 total:(unint64_t)a5 topK:(unint64_t)a6;
+ (void)initialize;
- (id)evaluateModel:(MontrealNeuralNetwork *)a3 onData:(id)a4 options:(id)a5 completion:(id)a6;
- (id)evaluateModel:(id)a3 onRecords:(id)a4 options:(id)a5 completion:(id)a6 error:(id *)a7;
- (id)prepareDataFromRecords:(id)a3 modelBundle:(id)a4 error:(id *)a5;
@end

@implementation NLPLearnerMontrealShadowEvaluator

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    sLog_1 = os_log_create("com.apple.NLPLearner", "NLPLearnerMontrealShadowEvaluator");

    MEMORY[0x2821F96F8]();
  }
}

- (id)prepareDataFromRecords:(id)a3 modelBundle:(id)a4 error:(id *)a5
{
  v23[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(NLPLearnerShadowEvaluator *)self evaluationTask];
  v11 = [(NLPLearnerShadowEvaluator *)self locale];
  v12 = [NLPLearnerTextData dataForPFL:v10 andLocale:v11];

  if ([(NLPLearnerShadowEvaluator *)self evaluationTask]== 2 || [(NLPLearnerShadowEvaluator *)self evaluationTask]== 4)
  {
    v13 = @"montrealidmap.dat";
    goto LABEL_4;
  }

  if ([(NLPLearnerShadowEvaluator *)self evaluationTask]== 1)
  {
    v13 = @"emojiClasses.plist";
LABEL_4:
    v14 = [NLPLearnerUtils getAttachmentURLByName:v13 inDirectory:v9 error:a5];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 path];
      [v12 addResource:v16];

LABEL_6:
      [v12 loadFromCoreDuet:v8 limitSamplesTo:{-[NLPLearnerShadowEvaluator maxSamples](self, "maxSamples")}];
      v17 = v12;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if ([(NLPLearnerShadowEvaluator *)self evaluationTask]== 3)
  {
    v15 = [v9 absoluteString];
    [v12 addResource:v15];
    goto LABEL_6;
  }

  if (a5)
  {
    v18 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA450];
    v23[0] = @"unknown evaluation task for PFL";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    *a5 = [v18 errorWithDomain:@"com.apple.NLPLearner.NLPShadowEvaluationErrorDomain" code:4 userInfo:v19];
  }

LABEL_13:
  v17 = 0;
LABEL_14:

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)evaluateModel:(id)a3 onRecords:(id)a4 options:(id)a5 completion:(id)a6 error:(id *)a7
{
  v35[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v12)
  {
    v16 = [v12 URLByDeletingLastPathComponent];
    v17 = [(NLPLearnerMontrealShadowEvaluator *)self prepareDataFromRecords:v13 modelBundle:v16 error:a7];

    if (![v17 numSamples])
    {
      if (a7)
      {
        v23 = MEMORY[0x277CCA9B8];
        v34 = *MEMORY[0x277CCA450];
        v35[0] = @"missing evaluation data for PFL";
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
        *a7 = [v23 errorWithDomain:@"com.apple.NLPLearner.NLPShadowEvaluationErrorDomain" code:9 userInfo:v24];

        a7 = 0;
      }

      goto LABEL_16;
    }

    v32 = *MEMORY[0x277D2A280];
    v33 = v12;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v19 = MRLNeuralNetworkCreate();
    v20 = sLog_1;
    if (v19)
    {
      v21 = v19;
      if (os_log_type_enabled(sLog_1, OS_LOG_TYPE_DEBUG))
      {
        [NLPLearnerMontrealShadowEvaluator evaluateModel:v12 onRecords:v20 options:? completion:? error:?];
      }

      a7 = [(NLPLearnerMontrealShadowEvaluator *)self evaluateModel:v21 onData:v17 options:v14 completion:v15];
      CFRelease(v21);
      goto LABEL_15;
    }

    if (os_log_type_enabled(sLog_1, OS_LOG_TYPE_ERROR))
    {
      [NLPLearnerMontrealShadowEvaluator evaluateModel:v12 onRecords:v20 options:? completion:? error:?];
      if (!a7)
      {
        goto LABEL_15;
      }
    }

    else if (!a7)
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
    *a7 = [v29 errorWithDomain:@"com.apple.NLPLearner.NLPShadowEvaluationErrorDomain" code:6 userInfo:v26];

    a7 = 0;
    goto LABEL_15;
  }

  v22 = sLog_1;
  if (os_log_type_enabled(sLog_1, OS_LOG_TYPE_ERROR))
  {
    [NLPLearnerMontrealShadowEvaluator evaluateModel:v22 onRecords:? options:? completion:? error:?];
  }

  a7 = 0;
LABEL_17:

  v27 = *MEMORY[0x277D85DE8];

  return a7;
}

+ (BOOL)isInTopKPredictions:(unint64_t)a3 scores:(float *)a4 total:(unint64_t)a5 topK:(unint64_t)a6
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (a6 >= a5)
  {
    result = 1;
  }

  else
  {
    v6 = (v19 - ((8 * a6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v7 = *a4;
    if (a6)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v6[v8] = v8;
        if (a4[v8] < v7)
        {
          v9 = v8;
          v7 = a4[v8];
        }

        ++v8;
      }

      while (a6 != v8);
    }

    else
    {
      v9 = 0;
    }

    v11 = a6;
    while (2)
    {
      v12 = v11;
      v13 = v7;
      while (1)
      {
        v7 = a4[v12];
        if (v7 <= v13)
        {
          v7 = v13;
          goto LABEL_21;
        }

        v6[v9] = v12;
        if (a6)
        {
          break;
        }

        ++v12;
        v13 = v7;
        if (a5 == v12)
        {
          goto LABEL_25;
        }
      }

      for (i = 0; i != a6; ++i)
      {
        if (a4[v6[i]] < v7)
        {
          v9 = i;
          v7 = a4[v6[i]];
        }
      }

LABEL_21:
      v11 = v12 + 1;
      if (a5 - 1 != v12)
      {
        continue;
      }

      break;
    }

    if (!a6)
    {
LABEL_25:
      result = 0;
      goto LABEL_26;
    }

    if (*v6 == a3)
    {
      result = 1;
    }

    else
    {
      v16 = 1;
      do
      {
        v17 = v16;
        if (a6 == v16)
        {
          break;
        }

        v18 = v6[v16++];
      }

      while (v18 != a3);
      result = v17 < a6;
    }
  }

LABEL_26:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)evaluateModel:(MontrealNeuralNetwork *)a3 onData:(id)a4 options:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (a3)
  {
    v13 = 0x277CCA000;
    if ([(NLPLearnerShadowEvaluator *)self evaluationTask]== 4)
    {
      v14 = [MEMORY[0x277CBEB38] dictionary];
      v15 = [v10 nextEvaluationDataPoint];
      if (v15)
      {
        v16 = v15;
        v36 = v14;
        v37 = v12;
        v38 = v11;
        v17 = 0;
        v40 = *MEMORY[0x277D2A270];
        v39 = *MEMORY[0x277D2A278];
        v18 = 0.0;
        v41 = v10;
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
              v29 = [v28 unsignedIntegerValue];

              if (v29 != 3 && [objc_opt_class() isInTopKPredictions:v29 scores:Output total:v25 topK:{-[NLPLearnerShadowEvaluator topK](self, "topK")}])
              {
                v18 = v18 + 1.0;
              }

              ++v26;
              Output += v27;
            }

            while (v24 != v26);
          }

          v17 = v24 + v43;

          v10 = v41;
          v30 = [v41 nextEvaluationDataPoint];

          v16 = v30;
        }

        while (v30);
        if (v17)
        {
          *&v31 = (v18 * 100.0) / v17;
        }

        else
        {
          v31 = 0.0;
        }

        v12 = v37;
        v11 = v38;
        v13 = 0x277CCA000uLL;
        v14 = v36;
      }

      else
      {
        v31 = 0.0;
      }

      v33 = [*(v13 + 2992) numberWithFloat:v31];
      [v14 setObject:v33 forKeyedSubscript:@"MLPModelTrainerOverallAccuracyKey"];
    }

    else
    {
      v45 = v12;
      v44 = v10;
      v32 = MRLNeuralNetworkCopyEvaluationResults();
      v14 = [v32 mutableCopy];
    }

    v34 = [*(v13 + 2992) numberWithUnsignedInteger:{objc_msgSend(v10, "numSamples")}];
    [v14 setObject:v34 forKeyedSubscript:@"Samples"];
  }

  else
  {
    v14 = 0;
  }

  return v14;
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