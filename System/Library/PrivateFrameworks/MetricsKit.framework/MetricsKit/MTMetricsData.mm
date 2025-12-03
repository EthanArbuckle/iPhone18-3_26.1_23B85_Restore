@interface MTMetricsData
- (id)composeFieldsMaps;
- (id)debugDescription;
- (id)getAdditionalData;
- (id)getPostProcessingBlocks;
- (id)recordEvent;
- (id)toDictionary;
- (id)userAndClientIDFields;
- (void)addFields:(id)fields;
- (void)addPostProcessingBlock:(id)block;
- (void)addPostProcessingBlocks:(id)blocks;
- (void)cancelUnfinishedPromisedEventData;
@end

@implementation MTMetricsData

- (id)getAdditionalData
{
  additionalData = self->_additionalData;
  if (!additionalData)
  {
    array = [MEMORY[0x277CBEB18] array];
    v5 = self->_additionalData;
    self->_additionalData = array;

    additionalData = self->_additionalData;
  }

  return additionalData;
}

- (void)addFields:(id)fields
{
  fieldsCopy = fields;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  getAdditionalData = [(MTMetricsData *)selfCopy getAdditionalData];
  v12 = &v13;
  v7 = fieldsCopy;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [getAdditionalData addObjectsFromArray:v9];
      }

      else
      {
        [getAdditionalData addObject:v9];
      }

      v10 = v12++;
      v11 = *v10;

      v9 = v11;
    }

    while (v11);
  }

  objc_sync_exit(selfCopy);
}

- (id)getPostProcessingBlocks
{
  postProcessingBlocks = self->_postProcessingBlocks;
  if (!postProcessingBlocks)
  {
    array = [MEMORY[0x277CBEB18] array];
    v5 = self->_postProcessingBlocks;
    self->_postProcessingBlocks = array;

    postProcessingBlocks = self->_postProcessingBlocks;
  }

  return postProcessingBlocks;
}

- (void)addPostProcessingBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  getPostProcessingBlocks = [(MTMetricsData *)selfCopy getPostProcessingBlocks];
  v6 = MEMORY[0x259C9F5D0](blockCopy);
  [getPostProcessingBlocks addObject:v6];

  objc_sync_exit(selfCopy);
}

- (void)addPostProcessingBlocks:(id)blocks
{
  blocksCopy = blocks;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  getPostProcessingBlocks = [(MTMetricsData *)selfCopy getPostProcessingBlocks];
  [getPostProcessingBlocks addObjectsFromArray:blocksCopy];

  objc_sync_exit(selfCopy);
}

- (id)composeFieldsMaps
{
  array = [MEMORY[0x277CBEB18] array];
  registeredEventData = [(MTMetricsData *)self registeredEventData];
  v5 = [registeredEventData count];

  if (v5)
  {
    registeredEventData2 = [(MTMetricsData *)self registeredEventData];
    [array addObjectsFromArray:registeredEventData2];
  }

  baseFields = [(MTMetricsData *)self baseFields];
  v8 = [baseFields count];

  if (v8)
  {
    baseFields2 = [(MTMetricsData *)self baseFields];
    [array addObject:baseFields2];
  }

  additionalBaseData = [(MTMetricsData *)self additionalBaseData];
  v11 = [additionalBaseData count];

  if (v11)
  {
    additionalBaseData2 = [(MTMetricsData *)self additionalBaseData];
    [array addObjectsFromArray:additionalBaseData2];
  }

  eventSpecificFields = [(MTMetricsData *)self eventSpecificFields];
  v14 = [eventSpecificFields count];

  if (v14)
  {
    eventSpecificFields2 = [(MTMetricsData *)self eventSpecificFields];
    [array addObject:eventSpecificFields2];
  }

  additionalEventData = [(MTMetricsData *)self additionalEventData];
  v17 = [additionalEventData count];

  if (v17)
  {
    additionalEventData2 = [(MTMetricsData *)self additionalEventData];
    [array addObjectsFromArray:additionalEventData2];
  }

  configBaseFields = [(MTMetricsData *)self configBaseFields];

  if (configBaseFields)
  {
    configBaseFields2 = [(MTMetricsData *)self configBaseFields];
    [array addObject:configBaseFields2];
  }

  callerSuppliedFields = [(MTMetricsData *)self callerSuppliedFields];
  eventData = [callerSuppliedFields eventData];
  v23 = [eventData count];

  if (v23)
  {
    callerSuppliedFields2 = [(MTMetricsData *)self callerSuppliedFields];
    eventData2 = [callerSuppliedFields2 eventData];
    [array addObjectsFromArray:eventData2];
  }

  additionalData = [(MTMetricsData *)self additionalData];
  v27 = [additionalData count];

  if (v27)
  {
    additionalData2 = [(MTMetricsData *)self additionalData];
    [array addObjectsFromArray:additionalData2];
  }

  v29 = [array copy];

  return v29;
}

- (id)toDictionary
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  composeFieldsMaps = [(MTMetricsData *)selfCopy composeFieldsMaps];
  postProcessingBlocks = [(MTMetricsData *)selfCopy postProcessingBlocks];
  v5 = [postProcessingBlocks copy];

  objc_sync_exit(selfCopy);
  v6 = [MTPromise promiseWithComposition:composeFieldsMaps];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __29__MTMetricsData_toDictionary__block_invoke;
  v27 = &unk_2798CD900;
  v28 = v5;
  v29 = selfCopy;
  v7 = v5;
  v8 = [v6 thenWithBlock:&v24];

  v9 = [(MTObject *)selfCopy metricsKit:v24];
  system = [v9 system];
  treatmentFilter = [system treatmentFilter];
  v12 = [treatmentFilter apply:v8];
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

  metricsKit = [(MTObject *)selfCopy metricsKit];
  system2 = [metricsKit system];
  eventFilter = [system2 eventFilter];
  v19 = [eventFilter apply:v15];
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
  toDictionary = [(MTMetricsData *)self toDictionary];
  v3 = [toDictionary thenWithBlock:&__block_literal_global_7];

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
  callerSuppliedFields = [(MTMetricsData *)self callerSuppliedFields];
  eventData = [callerSuppliedFields eventData];
  [MTPromise cancelPromisesInComposition:eventData];

  baseFields = [(MTMetricsData *)self baseFields];
  [MTPromise cancelPromisesInComposition:baseFields];

  additionalBaseData = [(MTMetricsData *)self additionalBaseData];
  [MTPromise cancelPromisesInComposition:additionalBaseData];

  eventSpecificFields = [(MTMetricsData *)self eventSpecificFields];
  [MTPromise cancelPromisesInComposition:eventSpecificFields];

  additionalEventData = [(MTMetricsData *)self additionalEventData];
  [MTPromise cancelPromisesInComposition:additionalEventData];

  configBaseFields = [(MTMetricsData *)self configBaseFields];
  [MTPromise cancelPromisesInComposition:configBaseFields];

  additionalData = [(MTMetricsData *)self additionalData];
  [MTPromise cancelPromisesInComposition:additionalData];
}

- (id)recordEvent
{
  toDictionary = [(MTMetricsData *)self toDictionary];
  metricsKit = [(MTObject *)self metricsKit];
  config = [metricsKit config];
  v6 = [config eventDataTimeout] / 1000.0;

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
  [toDictionary addFinishBlock:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __28__MTMetricsData_recordEvent__block_invoke_2;
  v11[3] = &unk_2798CD570;
  v11[4] = self;
  v9 = [toDictionary thenWithBlock:v11];
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
  callerSuppliedFields = [(MTMetricsData *)self callerSuppliedFields];
  baseFields = [(MTMetricsData *)self baseFields];
  eventSpecificFields = [(MTMetricsData *)self eventSpecificFields];
  v9 = [v3 stringWithFormat:@"<%@: %p, callerSuppliedFields: %@\nbaseFields: %@\neventSpecificFields: %@", v5, self, callerSuppliedFields, baseFields, eventSpecificFields];

  performanceData = [(MTMetricsData *)self performanceData];

  if (performanceData)
  {
    performanceData2 = [(MTMetricsData *)self performanceData];
    [v9 appendFormat:@"\nperformanceData: %@", performanceData2];
  }

  [v9 appendString:@">"];
  v12 = [v9 copy];

  return v12;
}

@end