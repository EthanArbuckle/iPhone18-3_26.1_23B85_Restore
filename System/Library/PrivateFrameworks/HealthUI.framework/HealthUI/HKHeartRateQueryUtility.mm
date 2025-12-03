@interface HKHeartRateQueryUtility
+ (id)_minMaxStatisticsFromChartPoints:(id)points dateInterval:(id)interval;
+ (id)_orderedDisplayTypeContextResults:(id)results;
+ (void)enumerateDisplayTypeContextsWithBlock:(id)block;
- (HKHeartRateQueryHandler)queryHandler;
- (HKHeartRateQueryUtility)initWithQueryHandler:(id)handler dateInterval:(id)interval timeScope:(int64_t)scope resultsHandler:(id)resultsHandler;
- (void)setupQueries;
@end

@implementation HKHeartRateQueryUtility

- (HKHeartRateQueryUtility)initWithQueryHandler:(id)handler dateInterval:(id)interval timeScope:(int64_t)scope resultsHandler:(id)resultsHandler
{
  handlerCopy = handler;
  intervalCopy = interval;
  resultsHandlerCopy = resultsHandler;
  v19.receiver = self;
  v19.super_class = HKHeartRateQueryUtility;
  v13 = [(HKHeartRateQueryUtility *)&v19 init];
  v14 = v13;
  if (v13)
  {
    [(HKHeartRateQueryUtility *)v13 setQueryHandler:handlerCopy];
    [(HKHeartRateQueryUtility *)v14 setDateInterval:intervalCopy];
    [(HKHeartRateQueryUtility *)v14 setTimeScope:scope];
    [(HKHeartRateQueryUtility *)v14 setResultsHandler:resultsHandlerCopy];
    v15 = HKCreateSerialDispatchQueue();
    [(HKHeartRateQueryUtility *)v14 setClientQueue:v15];

    v16 = HKCreateSerialDispatchQueue();
    [(HKHeartRateQueryUtility *)v14 setResourceQueue:v16];

    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(HKHeartRateQueryUtility *)v14 setSampleResults:v17];

    [(HKHeartRateQueryUtility *)v14 setupQueries];
  }

  return v14;
}

- (void)setupQueries
{
  v3 = dispatch_group_create();
  objc_initWeak(&location, self);
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy_;
  v12[4] = __Block_byref_object_dispose_;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__HKHeartRateQueryUtility_setupQueries__block_invoke;
  v7[3] = &unk_1E81B5620;
  v4 = v3;
  v8 = v4;
  selfCopy = self;
  objc_copyWeak(&v11, &location);
  v10 = v12;
  [HKHeartRateQueryUtility enumerateDisplayTypeContextsWithBlock:v7];
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__HKHeartRateQueryUtility_setupQueries__block_invoke_4;
  block[3] = &unk_1E81B5648;
  block[4] = self;
  block[5] = v12;
  dispatch_group_notify(v4, clientQueue, block);
  objc_destroyWeak(&v11);

  _Block_object_dispose(v12, 8);
  objc_destroyWeak(&location);
}

void __39__HKHeartRateQueryUtility_setupQueries__block_invoke(uint64_t a1, void *a2)
{
  dispatch_group_enter(*(a1 + 32));
  v4 = [*(a1 + 40) queryHandler];
  v5 = [*(a1 + 40) dateInterval];
  v6 = [*(a1 + 40) timeScope];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__HKHeartRateQueryUtility_setupQueries__block_invoke_2;
  v9[3] = &unk_1E81B55F8;
  objc_copyWeak(v12, (a1 + 56));
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v10 = v7;
  v11 = v8;
  v12[1] = a2;
  [v4 dataForHeartRateContext:a2 dateInterval:v5 timeScope:v6 resultsHandler:v9];

  objc_destroyWeak(v12);
}

void __39__HKHeartRateQueryUtility_setupQueries__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained resourceQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __39__HKHeartRateQueryUtility_setupQueries__block_invoke_3;
    v13[3] = &unk_1E81B55D0;
    v18 = *(a1 + 40);
    v14 = v7;
    v15 = v9;
    v11 = v6;
    v12 = *(a1 + 56);
    v16 = v11;
    v19 = v12;
    v17 = *(a1 + 32);
    dispatch_async(v10, v13);
  }

  else
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

void __39__HKHeartRateQueryUtility_setupQueries__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 64) + 8);
  if (!v2)
  {
    v2 = *(v3 + 40);
  }

  objc_storeStrong((v3 + 40), v2);
  v4 = objc_opt_class();
  v5 = *(a1 + 48);
  v6 = [*(a1 + 40) dateInterval];
  v10 = [v4 _minMaxStatisticsFromChartPoints:v5 dateInterval:v6];

  v7 = [[HKHeartRateDisplayTypeContextResult alloc] initWithContext:*(a1 + 72) statistics:v10];
  v8 = [*(a1 + 40) sampleResults];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 72)];
  [v8 setObject:v7 forKeyedSubscript:v9];

  dispatch_group_leave(*(a1 + 56));
}

void __39__HKHeartRateQueryUtility_setupQueries__block_invoke_4(uint64_t a1)
{
  v6 = [*(a1 + 32) resultsHandler];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = [*(a1 + 32) sampleResults];
  v5 = [v3 _orderedDisplayTypeContextResults:v4];
  v6[2](v6, v2, v5, *(*(*(a1 + 40) + 8) + 40));
}

+ (void)enumerateDisplayTypeContextsWithBlock:(id)block
{
  for (i = 0; i != 7; ++i)
  {
    (*(block + 2))(block, i);
  }
}

+ (id)_minMaxStatisticsFromChartPoints:(id)points dateInterval:(id)interval
{
  v39 = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  intervalCopy = interval;
  if (!pointsCopy || ![pointsCopy count])
  {
    v21 = 0;
    goto LABEL_21;
  }

  v33 = intervalCopy;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = pointsCopy;
  v8 = [v7 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (!v8)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_20;
  }

  v9 = v8;
  v10 = 0;
  v11 = 0;
  v12 = *v35;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v35 != v12)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v34 + 1) + 8 * i);
      if (!v11 || ([*(*(&v34 + 1) + 8 * i) minYValue], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "compare:", v11), v15, v16 == -1))
      {
        minYValue = [v14 minYValue];

        v11 = minYValue;
        if (v10)
        {
LABEL_13:
          maxYValue = [v14 maxYValue];
          v19 = [maxYValue compare:v10];

          if (v19 != 1)
          {
            continue;
          }
        }
      }

      else if (v10)
      {
        goto LABEL_13;
      }

      maxYValue2 = [v14 maxYValue];

      v10 = maxYValue2;
    }

    v9 = [v7 countByEnumeratingWithState:&v34 objects:v38 count:16];
  }

  while (v9);
LABEL_20:

  v22 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BD30]];
  v23 = objc_alloc(MEMORY[0x1E696C4C0]);
  intervalCopy = v33;
  startDate = [v33 startDate];
  endDate = [v33 endDate];
  v21 = [v23 initWithDataType:v22 startDate:startDate endDate:endDate];

  v26 = MEMORY[0x1E696C348];
  _countPerMinuteUnit = [MEMORY[0x1E696C510] _countPerMinuteUnit];
  [v11 doubleValue];
  v28 = [v26 quantityWithUnit:_countPerMinuteUnit doubleValue:?];
  [v21 setMinimumQuantity:v28];

  v29 = MEMORY[0x1E696C348];
  _countPerMinuteUnit2 = [MEMORY[0x1E696C510] _countPerMinuteUnit];
  [v10 doubleValue];
  v31 = [v29 quantityWithUnit:_countPerMinuteUnit2 doubleValue:?];
  [v21 setMaximumQuantity:v31];

LABEL_21:

  return v21;
}

+ (id)_orderedDisplayTypeContextResults:(id)results
{
  resultsCopy = results;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__HKHeartRateQueryUtility__orderedDisplayTypeContextResults___block_invoke;
  v10[3] = &unk_1E81B5670;
  v11 = resultsCopy;
  v5 = v4;
  v12 = v5;
  v6 = resultsCopy;
  [HKHeartRateQueryUtility enumerateDisplayTypeContextsWithBlock:v10];
  v7 = v12;
  v8 = v5;

  return v5;
}

void __61__HKHeartRateQueryUtility__orderedDisplayTypeContextResults___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  v6 = [v3 objectForKeyedSubscript:v4];

  v5 = v6;
  if (v6)
  {
    [*(a1 + 40) addObject:v6];
    v5 = v6;
  }
}

- (HKHeartRateQueryHandler)queryHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_queryHandler);

  return WeakRetained;
}

@end