@interface MTMetricsData
- (id)composeFieldsMaps;
- (id)debugDescription;
- (id)getAdditionalData;
- (id)getPostProcessingBlocks;
- (id)recordEvent;
- (id)toDictionary;
- (id)userAndClientIDFields;
- (void)addFields:(id)a3;
- (void)addPostProcessingBlock:(id)a3;
- (void)addPostProcessingBlocks:(id)a3;
- (void)cancelUnfinishedPromisedEventData;
@end

@implementation MTMetricsData

- (id)getAdditionalData
{
  additionalData = self->_additionalData;
  if (!additionalData)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = self->_additionalData;
    self->_additionalData = v4;

    additionalData = self->_additionalData;
  }

  return additionalData;
}

- (void)addFields:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MTMetricsData *)v5 getAdditionalData];
  v12 = &v13;
  v7 = v4;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 addObjectsFromArray:v9];
      }

      else
      {
        [v6 addObject:v9];
      }

      v10 = v12++;
      v11 = *v10;

      v9 = v11;
    }

    while (v11);
  }

  objc_sync_exit(v5);
}

- (id)getPostProcessingBlocks
{
  postProcessingBlocks = self->_postProcessingBlocks;
  if (!postProcessingBlocks)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = self->_postProcessingBlocks;
    self->_postProcessingBlocks = v4;

    postProcessingBlocks = self->_postProcessingBlocks;
  }

  return postProcessingBlocks;
}

- (void)addPostProcessingBlock:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(MTMetricsData *)v4 getPostProcessingBlocks];
  v6 = MEMORY[0x259C9F5D0](v7);
  [v5 addObject:v6];

  objc_sync_exit(v4);
}

- (void)addPostProcessingBlocks:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(MTMetricsData *)v4 getPostProcessingBlocks];
  [v5 addObjectsFromArray:v6];

  objc_sync_exit(v4);
}

- (id)composeFieldsMaps
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(MTMetricsData *)self registeredEventData];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(MTMetricsData *)self registeredEventData];
    [v3 addObjectsFromArray:v6];
  }

  v7 = [(MTMetricsData *)self baseFields];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [(MTMetricsData *)self baseFields];
    [v3 addObject:v9];
  }

  v10 = [(MTMetricsData *)self additionalBaseData];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [(MTMetricsData *)self additionalBaseData];
    [v3 addObjectsFromArray:v12];
  }

  v13 = [(MTMetricsData *)self eventSpecificFields];
  v14 = [v13 count];

  if (v14)
  {
    v15 = [(MTMetricsData *)self eventSpecificFields];
    [v3 addObject:v15];
  }

  v16 = [(MTMetricsData *)self additionalEventData];
  v17 = [v16 count];

  if (v17)
  {
    v18 = [(MTMetricsData *)self additionalEventData];
    [v3 addObjectsFromArray:v18];
  }

  v19 = [(MTMetricsData *)self configBaseFields];

  if (v19)
  {
    v20 = [(MTMetricsData *)self configBaseFields];
    [v3 addObject:v20];
  }

  v21 = [(MTMetricsData *)self callerSuppliedFields];
  v22 = [v21 eventData];
  v23 = [v22 count];

  if (v23)
  {
    v24 = [(MTMetricsData *)self callerSuppliedFields];
    v25 = [v24 eventData];
    [v3 addObjectsFromArray:v25];
  }

  v26 = [(MTMetricsData *)self additionalData];
  v27 = [v26 count];

  if (v27)
  {
    v28 = [(MTMetricsData *)self additionalData];
    [v3 addObjectsFromArray:v28];
  }

  v29 = [v3 copy];

  return v29;
}

- (id)toDictionary
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MTMetricsData *)v2 composeFieldsMaps];
  v4 = [(MTMetricsData *)v2 postProcessingBlocks];
  v5 = [v4 copy];

  objc_sync_exit(v2);
  v6 = [MTPromise promiseWithComposition:v3];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __29__MTMetricsData_toDictionary__block_invoke;
  v27 = &unk_2798CD900;
  v28 = v5;
  v29 = v2;
  v7 = v5;
  v8 = [v6 thenWithBlock:&v24];

  v9 = [(MTObject *)v2 metricsKit:v24];
  v10 = [v9 system];
  v11 = [v10 treatmentFilter];
  v12 = [v11 apply:v8];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v8;
  }

  v15 = v14;

  v16 = [(MTObject *)v2 metricsKit];
  v17 = [v16 system];
  v18 = [v17 eventFilter];
  v19 = [v18 apply:v15];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v15;
  }

  v22 = v21;

  return v21;
}

id __29__MTMetricsData_toDictionary__block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 mt_verifyEventData];
  v4 = [MTReflectUtil mergeAndCleanDictionaries:v3];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v21 + 1) + 8 * i) + 16))(*(*(&v21 + 1) + 8 * i));
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  if ([*(a1 + 40) isAnonymous])
  {
    v10 = [MEMORY[0x277CBEB68] null];
    [v4 setObject:v10 forKeyedSubscript:@"dsId"];
  }

  if ([v4 count])
  {
    v17 = [v4 copy];
    [MTPromise promiseWithResult:v17];
  }

  else
  {
    v17 = MTError(301, @"The metrics data for the event is empty. Please make sure there are fields provided for the event.", v11, v12, v13, v14, v15, v16, v21);
    [MTPromise promiseWithError:v17];
  }
  v18 = ;

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)userAndClientIDFields
{
  v2 = [(MTMetricsData *)self toDictionary];
  v3 = [v2 thenWithBlock:&__block_literal_global_7];

  return v3;
}

id __38__MTMetricsData_userAndClientIDFields__block_invoke(uint64_t a1, void *a2)
{
  v20[3] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v20[0] = @"dsId";
  v20[1] = @"userId";
  v20[2] = @"clientId";
  [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v2 objectForKeyedSubscript:{v9, v15}];
        if (v10)
        {
          [v3 setObject:v10 forKeyedSubscript:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];
  v12 = [MTPromise promiseWithResult:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)cancelUnfinishedPromisedEventData
{
  v3 = [(MTMetricsData *)self callerSuppliedFields];
  v4 = [v3 eventData];
  [MTPromise cancelPromisesInComposition:v4];

  v5 = [(MTMetricsData *)self baseFields];
  [MTPromise cancelPromisesInComposition:v5];

  v6 = [(MTMetricsData *)self additionalBaseData];
  [MTPromise cancelPromisesInComposition:v6];

  v7 = [(MTMetricsData *)self eventSpecificFields];
  [MTPromise cancelPromisesInComposition:v7];

  v8 = [(MTMetricsData *)self additionalEventData];
  [MTPromise cancelPromisesInComposition:v8];

  v9 = [(MTMetricsData *)self configBaseFields];
  [MTPromise cancelPromisesInComposition:v9];

  v10 = [(MTMetricsData *)self additionalData];
  [MTPromise cancelPromisesInComposition:v10];
}

- (id)recordEvent
{
  v3 = [(MTMetricsData *)self toDictionary];
  v4 = [(MTObject *)self metricsKit];
  v5 = [v4 config];
  v6 = [v5 eventDataTimeout] / 1000.0;

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __28__MTMetricsData_recordEvent__block_invoke;
  v14[3] = &unk_2798CDF20;
  v14[4] = self;
  v7 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:0 repeats:v14 block:v6];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __28__MTMetricsData_recordEvent__block_invoke_10;
  v12[3] = &unk_2798CDF48;
  v13 = v7;
  v8 = v7;
  [v3 addFinishBlock:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __28__MTMetricsData_recordEvent__block_invoke_2;
  v11[3] = &unk_2798CD570;
  v11[4] = self;
  v9 = [v3 thenWithBlock:v11];
  [v9 addErrorBlock:&__block_literal_global_14];

  return v9;
}

uint64_t __28__MTMetricsData_recordEvent__block_invoke(uint64_t a1)
{
  v2 = atomic_load(&_block_invoke_logCount);
  if (v2 <= 199)
  {
    atomic_fetch_add_explicit(&_block_invoke_logCount, 1u, memory_order_relaxed);
    v3 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_impl(&dword_258F4B000, v3, OS_LOG_TYPE_DEBUG, "MetricsKit: Some promises in metrics data timed out", v5, 2u);
    }
  }

  return [*(a1 + 32) cancelUnfinishedPromisedEventData];
}

id __28__MTMetricsData_recordEvent__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![*(a1 + 32) samplingEnabled])
  {
    goto LABEL_5;
  }

  v4 = [*(a1 + 32) metricsKit];
  v5 = [v4 sampling];

  if (!v5 || [v5 isSampledInWithMetricsData:v3])
  {

LABEL_5:
    v5 = [*(a1 + 32) metricsKit];
    v6 = [v5 system];
    v7 = [v6 eventRecorder];
    v8 = [v7 recordEvent:v3 shouldSkipValidation:1];

    goto LABEL_6;
  }

  v8 = [MTPromise promiseWithResult:v3];
LABEL_6:

  return v8;
}

void __28__MTMetricsData_recordEvent__block_invoke_3(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = atomic_load(&_block_invoke_2_logCount);
  if (v3 <= 199)
  {
    atomic_fetch_add_explicit(&_block_invoke_2_logCount, 1u, memory_order_relaxed);
    v4 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_impl(&dword_258F4B000, v4, OS_LOG_TYPE_ERROR, "MetricsKit: Metrics event was not recorded. Error: %@", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MTMetricsData *)self callerSuppliedFields];
  v7 = [(MTMetricsData *)self baseFields];
  v8 = [(MTMetricsData *)self eventSpecificFields];
  v9 = [v3 stringWithFormat:@"<%@: %p, callerSuppliedFields: %@\nbaseFields: %@\neventSpecificFields: %@", v5, self, v6, v7, v8];

  v10 = [(MTMetricsData *)self performanceData];

  if (v10)
  {
    v11 = [(MTMetricsData *)self performanceData];
    [v9 appendFormat:@"\nperformanceData: %@", v11];
  }

  [v9 appendString:@">"];
  v12 = [v9 copy];

  return v12;
}

@end