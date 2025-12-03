@interface NLPLearnerExtensionWorker
- (BOOL)evaluateModel:(id)model sampleLimit:(unint64_t)limit;
- (NLPLearnerExtensionWorker)initWithLocale:(id)locale experimentName:(id)name modelURL:(id)l metricParameters:(id)parameters;
- (id)coreAnalyticsDonationFromEvaluationResults:(id)results;
- (id)coreAnalyticsEventSchema;
- (id)loadTaskData;
- (void)loadTaskData;
- (void)logEvaluationResults:(id)results;
@end

@implementation NLPLearnerExtensionWorker

- (NLPLearnerExtensionWorker)initWithLocale:(id)locale experimentName:(id)name modelURL:(id)l metricParameters:(id)parameters
{
  localeCopy = locale;
  nameCopy = name;
  lCopy = l;
  parametersCopy = parameters;
  v14 = os_log_create("com.apple.NLPLearner.NLPLearnerExtensionWorker", "NLPLearnerExtensionWorker");
  v15 = sLog;
  sLog = v14;

  v19.receiver = self;
  v19.super_class = NLPLearnerExtensionWorker;
  v16 = [(NLPLearnerExtensionWorker *)&v19 init];
  v17 = v16;
  if (v16)
  {
    [(NLPLearnerExtensionWorker *)v16 setLocale:localeCopy];
    [(NLPLearnerExtensionWorker *)v17 setExperimentName:nameCopy];
    [(NLPLearnerExtensionWorker *)v17 setModelURL:lCopy];
    [(NLPLearnerExtensionWorker *)v17 setMetricParameters:parametersCopy];
  }

  return v17;
}

- (BOOL)evaluateModel:(id)model sampleLimit:(unint64_t)limit
{
  v6 = [NLPLearnerACTShadowEvaluator alloc];
  locale = [(NLPLearnerExtensionWorker *)self locale];
  metricParameters = [(NLPLearnerExtensionWorker *)self metricParameters];
  v9 = [(NLPLearnerACTShadowEvaluator *)v6 initWithLocale:locale andMetricParameters:metricParameters];

  [(NLPLearnerShadowEvaluator *)v9 setMaxSamples:limit];
  modelURL = [(NLPLearnerExtensionWorker *)self modelURL];
  loadTaskData = [(NLPLearnerExtensionWorker *)self loadTaskData];
  v18 = 0;
  v12 = [(NLPLearnerACTShadowEvaluator *)v9 evaluateModel:modelURL onRecords:loadTaskData options:0 completion:0 error:&v18];
  v13 = v18;

  if (v13)
  {
    v14 = sLog;
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
    {
      [(NLPLearnerExtensionWorker *)v14 evaluateModel:v13 sampleLimit:?];
    }
  }

  else
  {
    if (v12)
    {
      [(NLPLearnerExtensionWorker *)self logEvaluationResults:v12];
      v15 = 1;
      goto LABEL_7;
    }

    v17 = sLog;
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
    {
      [NLPLearnerExtensionWorker evaluateModel:v17 sampleLimit:self];
    }
  }

  v15 = 0;
LABEL_7:

  return v15;
}

- (id)loadTaskData
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:0];
  v21[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];

  v4 = [MEMORY[0x277CFE1E8] eventStreamWithName:@"/app/intents"];
  v20 = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];

  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"source.bundleID IN {'com.apple.MobileSMS' argumentArray:'com.apple.mobilemail'} && structuredMetadata._DKIntentMetadataKey__intentClass IN {'INSendMessageIntent', 'MSSendMailIntent'}", MEMORY[0x277CBEBF8]];
  v7 = [MEMORY[0x277CFE1E0] eventQueryWithPredicate:v6 eventStreams:v5 offset:0 limit:4000 sortDescriptors:v3];
  knowledgeStoreWithDirectReadOnlyAccess = [MEMORY[0x277CFE208] knowledgeStoreWithDirectReadOnlyAccess];
  v17 = 0;
  v9 = [knowledgeStoreWithDirectReadOnlyAccess executeQuery:v7 error:&v17];
  v10 = v17;
  if (v10)
  {
    v11 = sLog;
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
    {
      [(NLPLearnerExtensionWorker *)v10 loadTaskData];
    }
  }

  v12 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    v14 = [v9 count];
    *buf = 134217984;
    v19 = v14;
    _os_log_impl(&dword_25AE22000, v13, OS_LOG_TYPE_INFO, "Finished querying CoreDuet, got %lu events", buf, 0xCu);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)logEvaluationResults:(id)results
{
  v11 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v5 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v10 = resultsCopy;
    _os_log_impl(&dword_25AE22000, v5, OS_LOG_TYPE_INFO, "Evaluation results: %@", buf, 0xCu);
  }

  coreAnalyticsEvent = [(NLPLearnerExtensionWorker *)self coreAnalyticsEvent];
  v7 = resultsCopy;
  AnalyticsSendEventLazy();

  v8 = *MEMORY[0x277D85DE8];
}

- (id)coreAnalyticsEventSchema
{
  v11[29] = *MEMORY[0x277D85DE8];
  stringValue = [&unk_286C3A9D8 stringValue];
  v10[0] = @"actTestName";
  v10[1] = @"actTestVersion";
  v11[0] = &stru_286C38420;
  v11[1] = &stru_286C38420;
  v10[2] = @"actVersion";
  v10[3] = @"isAutocorrectionEnabled";
  v11[2] = &stru_286C38420;
  v11[3] = stringValue;
  v10[4] = @"candidate1ConfigName";
  v10[5] = @"candidate1CharacterCount";
  v11[4] = &stru_286C38420;
  v11[5] = stringValue;
  v10[6] = @"candidate1InsertedCharacterCount";
  v10[7] = @"candidate1SeparatorCount";
  v11[6] = stringValue;
  v11[7] = stringValue;
  v10[8] = @"candidate1WordCount";
  v10[9] = @"candidate1WordErrorCount";
  v11[8] = stringValue;
  v11[9] = stringValue;
  v10[10] = @"candidate1AverageJoannaWordErrorCount";
  v10[11] = @"candidate1CorrectedAwayWordErrorCount";
  v11[10] = stringValue;
  v11[11] = stringValue;
  v10[12] = @"candidate1TouchErrorRecoveryWordErrorCount";
  v10[13] = @"candidate1KnownWordCount";
  v11[12] = stringValue;
  v11[13] = stringValue;
  v10[14] = @"candidate2ConfigName";
  v10[15] = @"candidate2CharacterCount";
  v11[14] = &stru_286C38420;
  v11[15] = stringValue;
  v10[16] = @"candidate2InsertedCharacterCount";
  v10[17] = @"candidate2SeparatorCount";
  v11[16] = stringValue;
  v11[17] = stringValue;
  v10[18] = @"candidate2WordCount";
  v10[19] = @"candidate2WordErrorCount";
  v11[18] = stringValue;
  v11[19] = stringValue;
  v10[20] = @"candidate2AverageJoannaWordErrorCount";
  v10[21] = @"candidate2CorrectedAwayWordErrorCount";
  v11[20] = stringValue;
  v11[21] = stringValue;
  v10[22] = @"candidate2TouchErrorRecoveryWordErrorCount";
  v10[23] = @"candidate2KnownWordCount";
  v11[22] = stringValue;
  v11[23] = stringValue;
  v11[24] = stringValue;
  v10[24] = @"numberOfSamples";
  v10[25] = @"keyboardLanguage";
  locale = [(NLPLearnerExtensionWorker *)self locale];
  localeIdentifier = [locale localeIdentifier];
  v11[25] = localeIdentifier;
  v11[26] = stringValue;
  v10[26] = @"deploymentID";
  v10[27] = @"experimentID";
  v10[28] = @"treatmentID";
  v11[27] = @"fail";
  v11[28] = @"fail";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:29];
  v7 = [v6 mutableCopy];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)coreAnalyticsDonationFromEvaluationResults:(id)results
{
  v30 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  coreAnalyticsEventSchema = [(NLPLearnerExtensionWorker *)self coreAnalyticsEventSchema];
  experimentName = [(NLPLearnerExtensionWorker *)self experimentName];
  [coreAnalyticsEventSchema setObject:experimentName forKeyedSubscript:@"candidate1ConfigName"];

  v7 = [resultsCopy objectForKeyedSubscript:@"Samples"];
  stringValue = [v7 stringValue];
  v9 = coreAnalyticsEventSchema;
  [coreAnalyticsEventSchema setObject:stringValue forKeyedSubscript:@"numberOfSamples"];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = resultsCopy;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = [v10 objectForKeyedSubscript:v15];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([v15 isEqualToString:@"Samples"] & 1) == 0)
        {
          stringValue2 = [v16 stringValue];
          v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"candidate1%@", v15];
          [v9 setObject:stringValue2 forKeyedSubscript:v18];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v12);
  }

  [v9 setObject:&unk_286C3A9F0 forKeyedSubscript:@"deploymentID"];
  [v9 setObject:@"MLHost" forKeyedSubscript:@"experimentID"];
  experimentName2 = [(NLPLearnerExtensionWorker *)self experimentName];
  [v9 setObject:experimentName2 forKeyedSubscript:@"treatmentID"];

  v20 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v28 = v9;
    _os_log_impl(&dword_25AE22000, v20, OS_LOG_TYPE_INFO, "Donate to CoreAnalytics: %@", buf, 0xCu);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)evaluateModel:(uint64_t)a3 sampleLimit:.cold.1(void *a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 modelURL];
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = a3;
  _os_log_error_impl(&dword_25AE22000, v5, OS_LOG_TYPE_ERROR, "Failed evaluation for model: %@, Error: %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)evaluateModel:(void *)a1 sampleLimit:(void *)a2 .cold.2(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 modelURL];
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_25AE22000, v3, OS_LOG_TYPE_ERROR, "Empty evaluation results for model: %@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)loadTaskData
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_25AE22000, a2, OS_LOG_TYPE_ERROR, "Failed to query CoreDuet storage with error %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end