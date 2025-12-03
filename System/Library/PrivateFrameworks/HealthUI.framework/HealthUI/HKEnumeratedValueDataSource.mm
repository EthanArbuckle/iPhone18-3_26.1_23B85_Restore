@interface HKEnumeratedValueDataSource
- (id)_enumeratedValueOrderMapping;
- (id)_enumeratedValuesToIndices:(id)indices mapping:(id)mapping;
- (id)queriesForRequest:(id)request completionHandler:(id)handler;
- (id)queryDescription;
- (void)_handleSamples:(id)samples blockStart:(id)start blockEnd:(id)end intervalComponents:(id)components completion:(id)completion;
@end

@implementation HKEnumeratedValueDataSource

- (id)queryDescription
{
  v2 = MEMORY[0x1E696AEC0];
  displayType = [(HKHealthQueryChartCacheDataSource *)self displayType];
  localization = [displayType localization];
  displayName = [localization displayName];
  v6 = [v2 stringWithFormat:@"HKEnumeratedValue(%@)", displayName];

  return v6;
}

- (id)queriesForRequest:(id)request completionHandler:(id)handler
{
  v29[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  v8 = MEMORY[0x1E696C378];
  startDate = [requestCopy startDate];
  endDate = [requestCopy endDate];
  v11 = [v8 predicateForSamplesWithStartDate:startDate endDate:endDate options:0];

  v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:*MEMORY[0x1E696BE38] ascending:1];
  displayType = [(HKHealthQueryChartCacheDataSource *)self displayType];
  sampleType = [displayType sampleType];

  v15 = objc_alloc(MEMORY[0x1E696C3C8]);
  v29[0] = v12;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __67__HKEnumeratedValueDataSource_queriesForRequest_completionHandler___block_invoke;
  v23[3] = &unk_1E81BADF0;
  v24 = sampleType;
  selfCopy = self;
  v26 = requestCopy;
  v27 = handlerCopy;
  v17 = handlerCopy;
  v18 = requestCopy;
  v19 = sampleType;
  v20 = [v15 initWithSampleType:v19 predicate:v11 limit:0 sortDescriptors:v16 resultsHandler:v23];

  [v20 setDebugIdentifier:@"charting (enumerated value)"];
  v28 = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];

  return v21;
}

void __67__HKEnumeratedValueDataSource_queriesForRequest_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = [v9 hk_isDatabaseAccessibilityError];
    _HKInitializeLogging();
    v12 = HKLogWellnessDashboard();
    v13 = v12;
    if (!v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __68__HKHandwashingEventDataSource_queriesForRequest_completionHandler___block_invoke_cold_1();
      }

      goto LABEL_8;
    }

    v14 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);

    if (v14)
    {
      v13 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __68__HKHandwashingEventDataSource_queriesForRequest_completionHandler___block_invoke_cold_2();
      }

LABEL_8:
    }
  }

  v15 = *(a1 + 40);
  v16 = [*(a1 + 48) startDate];
  v17 = [*(a1 + 48) endDate];
  v18 = [*(a1 + 48) statisticsInterval];
  [v15 _handleSamples:v8 blockStart:v16 blockEnd:v17 intervalComponents:v18 completion:*(a1 + 56)];
}

- (void)_handleSamples:(id)samples blockStart:(id)start blockEnd:(id)end intervalComponents:(id)components completion:(id)completion
{
  completionCopy = completion;
  v13 = [MEMORY[0x1E696C660] calculateIncludedValuesWithSamples:samples startDate:start endDate:end intervalComponents:components];
  array = [MEMORY[0x1E695DF70] array];
  _enumeratedValueOrderMapping = [(HKEnumeratedValueDataSource *)self _enumeratedValueOrderMapping];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __96__HKEnumeratedValueDataSource__handleSamples_blockStart_blockEnd_intervalComponents_completion___block_invoke;
  v19[3] = &unk_1E81BAE18;
  v19[4] = self;
  v16 = _enumeratedValueOrderMapping;
  v20 = v16;
  v17 = array;
  v21 = v17;
  [v13 enumerateKeysAndObjectsUsingBlock:v19];
  v18 = objc_alloc_init(HKGraphSeriesDataBlock);
  [(HKGraphSeriesDataBlock *)v18 setChartPoints:v17];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v18, 0);
  }
}

void __96__HKEnumeratedValueDataSource__handleSamples_blockStart_blockEnd_intervalComponents_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v13 = objc_alloc_init(HKEnumeratedValueChartPoint);
  v7 = [*(a1 + 32) _enumeratedValuesToIndices:v5 mapping:*(a1 + 40)];

  v8 = [v6 startDate];
  v9 = [v6 endDate];

  v10 = HKUIMidDate(v8, v9);
  [(HKEnumeratedValueChartPoint *)v13 setXValue:v10];

  [(HKEnumeratedValueChartPoint *)v13 setIndices:v7];
  v11 = *(*(a1 + 32) + 64);
  if (v11)
  {
    v12 = (*(v11 + 16))(v11, v7);
    [(HKEnumeratedValueChartPoint *)v13 setUserInfo:v12];
  }

  [*(a1 + 48) addObject:v13];
}

- (id)_enumeratedValueOrderMapping
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_enumeratedValueOrder;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [MEMORY[0x1E696AD98] numberWithInteger:{v7, v13}];
        [v3 setObject:v11 forKeyedSubscript:v10];

        ++v7;
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_enumeratedValuesToIndices:(id)indices mapping:(id)mapping
{
  v21 = *MEMORY[0x1E69E9840];
  indicesCopy = indices;
  mappingCopy = mapping;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = indicesCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [mappingCopy objectForKeyedSubscript:{*(*(&v16 + 1) + 8 * i), v16}];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [v7 sortedArrayUsingSelector:sel_compare_];

  return v14;
}

@end