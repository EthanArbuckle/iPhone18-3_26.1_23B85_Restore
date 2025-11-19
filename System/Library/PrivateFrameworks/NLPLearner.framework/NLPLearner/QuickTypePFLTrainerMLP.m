@interface QuickTypePFLTrainerMLP
+ (__CFData)copyToFlatBuffer:(void *)a3;
+ (id)reportingStringForModelUpdates:(float *)a3 count:(unint64_t)a4;
+ (void)initialize;
- (BOOL)trainOn:(id)a3 forNEpochs:(unint64_t)a4;
- (QuickTypePFLTrainerMLP)initWithSeedModelPath:(id)a3 andPrivacyIdentifier:(id)a4;
- (void)writeModelToURL:(id)a3;
@end

@implementation QuickTypePFLTrainerMLP

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    sLog = os_log_create("com.apple.NLP", "QuickTypePFLTrainerMLP");

    MEMORY[0x2821F96F8]();
  }
}

+ (__CFData)copyToFlatBuffer:(void *)a3
{
  cf = 0;
  v3 = NLModelContainerCopySplitContainerData();
  if (CFArrayGetCount(v3) != 2)
  {
    __assert_rtn("+[QuickTypePFLTrainerMLP copyToFlatBuffer:]", "QuickTypePFLTrainerMLP.mm", 64, "CFArrayGetCount(containerDataArray) == 2 && NLModelContainerCopySplitContainerData is expected to return an array of size 2");
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v3, 1);
  Length = CFDataGetLength(ValueAtIndex);
  MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x277CBECE8], Length, ValueAtIndex);
  if (v3)
  {
    CFRelease(v3);
  }

  return MutableCopy;
}

+ (id)reportingStringForModelUpdates:(float *)a3 count:(unint64_t)a4
{
  v21[2] = *MEMORY[0x277D85DE8];
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
  if (a4 >= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  if (a4)
  {
    v8 = a3;
    do
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f", *v8];
      [v6 addObject:v9];

      ++v8;
      --v7;
    }

    while (v7);
  }

  v10 = [v6 componentsJoinedByString:{@", "}];
  if (a4 >= 4)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ .. %f", v10, a3[a4 - 1]];

    v10 = v11;
  }

  v20[0] = @"ModelUpdate";
  v20[1] = @"ModelShape";
  v21[0] = v10;
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%zu, )", a4];
  v21[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v19 = 0;
  v14 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v13 options:0 error:&v19];
  v15 = v19;
  if (![v14 length] || v15)
  {
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
    {
      +[QuickTypePFLTrainerMLP reportingStringForModelUpdates:count:];
    }

    v16 = 0;
  }

  else
  {
    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v14 encoding:4];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (QuickTypePFLTrainerMLP)initWithSeedModelPath:(id)a3 andPrivacyIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = QuickTypePFLTrainerMLP;
  v8 = [(QuickTypePFLTrainerMLP *)&v18 init];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277CBEBC0]);
    v10 = [v6 absoluteString];
    v11 = [v9 initWithString:v10];
    seedModelPath = v8->_seedModelPath;
    v8->_seedModelPath = v11;

    nlp::CFScopedPtr<void *>::reset(&v8->_model.m_ref, 0);
    v8->_batchSize = 1;
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:5.0];
    clippingNorm = v8->_clippingNorm;
    v8->_clippingNorm = v13;

    v8->_normBinCount = 30;
    v15 = [v7 copy];
    privacyIdentifier = v8->_privacyIdentifier;
    v8->_privacyIdentifier = v15;
  }

  return v8;
}

- (BOOL)trainOn:(id)a3 forNEpochs:(unint64_t)a4
{
  v54[3] = *MEMORY[0x277D85DE8];
  v41 = a3;
  v53[0] = *MEMORY[0x277D2A268];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v54[0] = v6;
  v53[1] = *MEMORY[0x277D2A238];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_batchSize];
  v53[2] = *MEMORY[0x277D2A240];
  v54[1] = v7;
  v54[2] = MEMORY[0x277CBEC38];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:3];
  v9 = [v8 mutableCopy];

  v10 = [(QuickTypePFLTrainerMLP *)self learningRate];
  v11 = v10 == 0;

  if (!v11)
  {
    v12 = [(QuickTypePFLTrainerMLP *)self learningRate];
    [v9 setObject:v12 forKeyedSubscript:*MEMORY[0x277D2A258]];
  }

  v13 = [(QuickTypePFLTrainerMLP *)self gradientClipMax];
  if (v13)
  {
    v14 = [(QuickTypePFLTrainerMLP *)self gradientClipMin];
    v15 = v14 == 0;

    if (!v15)
    {
      v16 = [(QuickTypePFLTrainerMLP *)self gradientClipMin];
      [v9 setObject:v16 forKeyedSubscript:*MEMORY[0x277D2A250]];

      v17 = [(QuickTypePFLTrainerMLP *)self gradientClipMax];
      [v9 setObject:v17 forKeyedSubscript:*MEMORY[0x277D2A248]];
    }
  }

  cf = 0;
  seedModelPath = self->_seedModelPath;
  v19 = NLModelContainerCreateWithContentsOfURL();
  v49 = v19;
  if (v19 && (v20 = MLPModelTrainerCreateWithModel(), v48 = v20, CFRelease(v19), v49 = 0, v20))
  {
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __45__QuickTypePFLTrainerMLP_trainOn_forNEpochs___block_invoke;
    v46[3] = &unk_279928BF8;
    v21 = v41;
    v47 = v21;
    v22 = MEMORY[0x25F8584E0](v46);
    v23 = MLPModelTrainerEvaluateModel();
    v24 = MEMORY[0x277D2A260];
    v25 = [v23 objectForKeyedSubscript:*MEMORY[0x277D2A260]];
    initialLoss = self->_initialLoss;
    self->_initialLoss = v25;

    v27 = sLog;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      [(NSNumber *)self->_initialLoss floatValue];
      *buf = 134217984;
      v52 = v28;
      _os_log_impl(&dword_25AE22000, v27, OS_LOG_TYPE_INFO, "Initial loss: %.2f", buf, 0xCu);
    }

    [v21 rewind];
    v45 = 1;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __45__QuickTypePFLTrainerMLP_trainOn_forNEpochs___block_invoke_60;
    v42[3] = &unk_279928C20;
    v29 = v21;
    v43 = v29;
    v44 = &v45;
    v30 = MEMORY[0x25F8584E0](v42);
    v31 = sLog;
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25AE22000, v31, OS_LOG_TYPE_INFO, "Started training", buf, 2u);
    }

    v32 = MLPModelTrainerTrainModel();
    nlp::CFScopedPtr<void *>::reset(&self->_model.m_ref, v32);
    [v29 rewind];
    v33 = MLPModelTrainerEvaluateModel();
    v34 = [v33 objectForKeyedSubscript:*v24];
    trainingLoss = self->_trainingLoss;
    self->_trainingLoss = v34;

    v36 = sLog;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      [(NSNumber *)self->_trainingLoss floatValue];
      *buf = 134217984;
      v52 = v37;
      _os_log_impl(&dword_25AE22000, v36, OS_LOG_TYPE_INFO, "Training loss: %.2f", buf, 0xCu);
    }

    v38 = self->_model.m_ref != 0;
    CFRelease(v20);
  }

  else
  {
    v38 = 0;
  }

  v39 = *MEMORY[0x277D85DE8];
  return v38;
}

uint64_t __45__QuickTypePFLTrainerMLP_trainOn_forNEpochs___block_invoke(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, _BYTE *a5)
{
  result = [*(a1 + 32) nextTrainingDataBatch:a3];
  if (!result)
  {
    *a5 = 1;
  }

  return result;
}

uint64_t __45__QuickTypePFLTrainerMLP_trainOn_forNEpochs___block_invoke_60(uint64_t a1, uint64_t a2, unsigned int a3, int a4, _BYTE *a5)
{
  if (a4)
  {
    [*(a1 + 32) rewind];
  }

  if (*(a1 + 40) != a2)
  {
    return 0;
  }

  result = [*(a1 + 32) nextTrainingDataBatch:a3];
  if (!result)
  {
    *a5 = 1;
  }

  return result;
}

void __45__QuickTypePFLTrainerMLP_trainOn_forNEpochs___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = a2;
    _os_log_impl(&dword_25AE22000, v3, OS_LOG_TYPE_INFO, "PFL Training %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)writeModelToURL:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_model.m_ref)
  {
    if (NLModelContainerWriteToURL())
    {
      v5 = sLog;
      if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v8 = v4;
        _os_log_impl(&dword_25AE22000, v5, OS_LOG_TYPE_INFO, "Saved PFL model at %@", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
      {
        [QuickTypePFLTrainerMLP writeModelToURL:];
      }
    }
  }

  else if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    [QuickTypePFLTrainerMLP writeModelToURL:];
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)copyToFlatBuffer:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)reportingStringForModelUpdates:count:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)trainOn:(uint64_t *)a1 forNEpochs:.cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)trainOn:(uint64_t *)a1 forNEpochs:.cold.2(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getWeightUpdatesAddNoise:(uint8_t *)buf encryptionKey:(os_log_t)log recipe:.cold.2(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_25AE22000, log, OS_LOG_TYPE_DEBUG, "Privatization : %@. Encryption : %@", buf, 0x16u);
}

- (void)getWeightUpdatesAddNoise:(void *)a1 encryptionKey:(uint8_t *)buf recipe:(os_log_t)log .cold.5(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_25AE22000, log, OS_LOG_TYPE_DEBUG, "Added model diagnostic report: %@", buf, 0xCu);
}

- (void)getWeightUpdatesAddNoise:(uint8_t *)buf encryptionKey:(uint64_t)a2 recipe:(os_log_t)log .cold.6(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_debug_impl(&dword_25AE22000, log, OS_LOG_TYPE_DEBUG, "Encrypted data size is : %{bytes}zu", buf, 0xCu);
}

- (void)getWeightUpdatesAddNoise:encryptionKey:recipe:.cold.7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getWeightUpdatesAddNoise:(uint64_t)a3 encryptionKey:(os_log_t)log recipe:.cold.8(void *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_debug_impl(&dword_25AE22000, log, OS_LOG_TYPE_DEBUG, "Privacy parameters: norm = %@, binCount = %lu", buf, 0x16u);
}

- (void)getWeightUpdatesAddNoise:encryptionKey:recipe:.cold.9()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getWeightUpdatesAddNoise:encryptionKey:recipe:.cold.10()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)writeModelToURL:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)writeModelToURL:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end