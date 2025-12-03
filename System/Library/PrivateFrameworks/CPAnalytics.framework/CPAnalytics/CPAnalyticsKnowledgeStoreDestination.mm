@interface CPAnalyticsKnowledgeStoreDestination
- (CPAnalyticsKnowledgeStoreDestination)initWithConfig:(id)config cpAnalyticsInstance:(id)instance;
- (id)_datasetSampleFromEvent:(id)event andMatcher:(id)matcher;
- (void)_addCoreDuetDatasetSample:(id)sample toDataset:(id)dataset;
- (void)processEvent:(id)event;
@end

@implementation CPAnalyticsKnowledgeStoreDestination

- (void)_addCoreDuetDatasetSample:(id)sample toDataset:(id)dataset
{
  v28[1] = *MEMORY[0x277D85DE8];
  sampleCopy = sample;
  datasetCopy = dataset;
  v8 = MEMORY[0x277CFE1E8];
  v9 = [MEMORY[0x277CFE1B8] typeForName:@"PFLDatasetSampleSchemaVersion"];
  v10 = [v8 eventStreamWithName:datasetCopy valueType:v9];

  v11 = MEMORY[0x277CFE1F0];
  v12 = [MEMORY[0x277CFE1B8] typeForName:@"PFLDatasetSampleSchemaVersion"];
  v13 = [v11 identifierWithString:@"PFLDatasetSample-v1.0" type:v12];

  v14 = MEMORY[0x277CFE1D8];
  date = [sampleCopy date];
  date2 = [sampleCopy date];
  metadata = [sampleCopy metadata];
  v18 = [v14 eventWithStream:v10 startDate:date endDate:date2 value:v13 metadata:metadata];

  knowledgeStore = [(CPAnalyticsKnowledgeStoreDestination *)self knowledgeStore];
  v28[0] = v18;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  v21 = dispatch_get_global_queue(9, 0);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __76__CPAnalyticsKnowledgeStoreDestination__addCoreDuetDatasetSample_toDataset___block_invoke;
  v25[3] = &unk_278D612C8;
  v26 = datasetCopy;
  v27 = sampleCopy;
  v22 = sampleCopy;
  v23 = datasetCopy;
  [knowledgeStore saveObjects:v20 responseQueue:v21 withCompletion:v25];

  v24 = *MEMORY[0x277D85DE8];
}

void __76__CPAnalyticsKnowledgeStoreDestination__addCoreDuetDatasetSample_toDataset___block_invoke(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = CPAnalyticsLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_24260A000, v7, OS_LOG_TYPE_INFO, "CPAnalytics KnowledgeStore saved in %@", &v11, 0xCu);
    }

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v7 setObject:*(a1 + 32) forKeyedSubscript:@"cd_stream"];
    v9 = [*(a1 + 40) subset];
    [v7 setObject:v9 forKeyedSubscript:@"cd_subset"];

    [CPAnalyticsCoreAnalyticsHelper sendCoreAnalyticsEvent:@"com.apple.photos.coreduet.saved" withPayload:v7 shouldSanitize:0];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_error_impl(&dword_24260A000, v7, OS_LOG_TYPE_ERROR, "CPAnalytics KnowledgeStore failed to save Duet event: %@", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_datasetSampleFromEvent:(id)event andMatcher:(id)matcher
{
  eventCopy = event;
  matcherCopy = matcher;
  identifierPropertyName = [matcherCopy identifierPropertyName];
  v8 = [eventCopy propertyForKey:identifierPropertyName];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    subsetPropertyName = [matcherCopy subsetPropertyName];
    subsetPropertyValue = [matcherCopy subsetPropertyValue];
    if (subsetPropertyName)
    {
      v11 = [eventCopy propertyForKey:subsetPropertyName];

      subsetPropertyValue = v11;
    }

    v12 = [CPAnalyticsKnowledgeStoreDatasetSample alloc];
    timestamp = [eventCopy timestamp];
    v14 = [(CPAnalyticsKnowledgeStoreDatasetSample *)v12 initWithIdentifier:v8 andDate:timestamp forSubset:subsetPropertyValue];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)processEvent:(id)event
{
  v20 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  matchers = [(CPAnalyticsKnowledgeStoreDestination *)self matchers];
  v6 = [matchers countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(matchers);
      }

      v10 = *(*(&v15 + 1) + 8 * v9);
      if ([v10 doesMatch:eventCopy])
      {
        v11 = [(CPAnalyticsKnowledgeStoreDestination *)self _datasetSampleFromEvent:eventCopy andMatcher:v10];
        if (v11)
        {
          datasetName = [v10 datasetName];
          [(CPAnalyticsKnowledgeStoreDestination *)self _addCoreDuetDatasetSample:v11 toDataset:datasetName];
        }

        matchNextEvent = [v10 matchNextEvent];

        if (!matchNextEvent)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [matchers countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (CPAnalyticsKnowledgeStoreDestination)initWithConfig:(id)config cpAnalyticsInstance:(id)instance
{
  v29 = *MEMORY[0x277D85DE8];
  configCopy = config;
  v27.receiver = self;
  v27.super_class = CPAnalyticsKnowledgeStoreDestination;
  v6 = [(CPAnalyticsKnowledgeStoreDestination *)&v27 init];
  if (v6)
  {
    knowledgeStore = [MEMORY[0x277CFE208] knowledgeStore];
    knowledgeStore = v6->_knowledgeStore;
    v6->_knowledgeStore = knowledgeStore;

    v9 = [configCopy objectForKeyedSubscript:@"events"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v10, "count")}];
      matchers = v6->_matchers;
      v6->_matchers = v11;

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v13 = v10;
      v14 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v24;
        do
        {
          v17 = 0;
          do
          {
            if (*v24 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v23 + 1) + 8 * v17);
            v19 = [CPAnalyticsCoreDuetEventMatcher alloc];
            v20 = [(CPAnalyticsCoreDuetEventMatcher *)v19 initWithConfig:v18, v23];
            if (v20)
            {
              [(NSMutableArray *)v6->_matchers addObject:v20];
            }

            ++v17;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v15);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v6;
}

@end