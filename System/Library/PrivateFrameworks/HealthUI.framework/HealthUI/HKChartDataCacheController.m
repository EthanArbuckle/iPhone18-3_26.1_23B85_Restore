@interface HKChartDataCacheController
- (BOOL)_anySampleShouldInvalidateCache:(id)a3;
- (BOOL)_displayTypeIsActivity:(id)a3;
- (HKChartDataCacheController)initWithHealthStore:(id)a3 unitController:(id)a4 updateController:(id)a5;
- (id)_chartCacheForDisplayType:(id)a3 timeScope:(int64_t)a4 chartCachesByDisplayTypeIdentifier:(id)a5;
- (id)_chartCacheIdentifiersFromSamples:(id)a3;
- (id)_chartCacheIdentifiersFromStartDate:(id)a3 endDate:(id)a4;
- (id)_createAlternateCurrentValueDataProviderForDisplayType:(id)a3 healthStore:(id)a4 updateController:(id)a5 dateCache:(id)a6;
- (id)_createCurrentValueDataProviderForDisplayType:(id)a3 healthStore:(id)a4 updateController:(id)a5 dateCache:(id)a6;
- (id)_generateChartCacheForDisplayType:(id)a3 timeScope:(int64_t)a4;
- (id)_timeScopeBasedChartCacheForDisplayType:(id)a3 timeScope:(int64_t)a4;
- (id)activitySummaryDataProviderWithHealthStore:(id)a3 dateCache:(id)a4 displayTypeController:(id)a5 unitController:(id)a6;
- (id)allInteractiveChartsCaches;
- (id)alternateCurrentValueDataProviderForDisplayType:(id)a3 healthStore:(id)a4 updateController:(id)a5 dateCache:(id)a6;
- (id)currentValueDataProviderForDisplayType:(id)a3 healthStore:(id)a4 updateController:(id)a5 dateCache:(id)a6;
- (id)findCustomCachesForDisplayType:(id)a3;
- (id)interactiveChartsCacheForDisplayType:(id)a3 timeScope:(int64_t)a4;
- (void)_removeCustomCachesForDisplayTypeIdentifier:(int64_t)a3;
- (void)_subscribeForUpdatesForDisplayType:(id)a3;
- (void)addCustomChartCache:(id)a3 forDisplayType:(id)a4;
- (void)removeCachesForDisplayTypeIdentifier:(int64_t)a3;
- (void)updateController:(id)a3 didReceiveHighFrequencyUpdateForType:(id)a4;
- (void)updateController:(id)a3 didReceiveUpdateForType:(id)a4 samplesAdded:(id)a5 objectsRemoved:(id)a6 recoveringFromError:(BOOL)a7;
@end

@implementation HKChartDataCacheController

- (HKChartDataCacheController)initWithHealthStore:(id)a3 unitController:(id)a4 updateController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v29.receiver = self;
  v29.super_class = HKChartDataCacheController;
  v11 = [(HKChartDataCacheController *)&v29 init];
  v12 = v11;
  if (v11)
  {
    [(HKChartDataCacheController *)v11 setHealthStore:v8];
    [(HKChartDataCacheController *)v12 setUnitController:v9];
    [(HKChartDataCacheController *)v12 setUpdateController:v10];
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 8;
    do
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [(NSArray *)v13 addObject:v15];

      --v14;
    }

    while (v14);
    chartCachesByTimeScopeAndDisplayTypeIdentifier = v12->_chartCachesByTimeScopeAndDisplayTypeIdentifier;
    v12->_chartCachesByTimeScopeAndDisplayTypeIdentifier = v13;
    v17 = v13;

    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    chartCachesByDisplayTypeIdentifier = v12->_chartCachesByDisplayTypeIdentifier;
    v12->_chartCachesByDisplayTypeIdentifier = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    chartCachesByCustomDisplayType = v12->_chartCachesByCustomDisplayType;
    v12->_chartCachesByCustomDisplayType = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
    currentValueDataProvidersByDisplayType = v12->_currentValueDataProvidersByDisplayType;
    v12->_currentValueDataProvidersByDisplayType = v22;

    v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
    alternateCurrentValueDataProvidersByDisplayType = v12->_alternateCurrentValueDataProvidersByDisplayType;
    v12->_alternateCurrentValueDataProvidersByDisplayType = v24;

    v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
    secondaryValueDataProviders = v12->_secondaryValueDataProviders;
    v12->_secondaryValueDataProviders = v26;
  }

  return v12;
}

- (id)interactiveChartsCacheForDisplayType:(id)a3 timeScope:(int64_t)a4
{
  v6 = a3;
  if ([v6 hk_healthQueryChartDataSourceDependsOnTimeScope])
  {
    [(HKChartDataCacheController *)self _timeScopeBasedChartCacheForDisplayType:v6 timeScope:a4];
  }

  else
  {
    [(HKChartDataCacheController *)self _chartCacheForDisplayType:v6 timeScope:a4 chartCachesByDisplayTypeIdentifier:self->_chartCachesByDisplayTypeIdentifier];
  }
  v7 = ;

  return v7;
}

- (id)allInteractiveChartsCaches
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v4 = self->_chartCachesByTimeScopeAndDisplayTypeIdentifier;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v40;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v40 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v39 + 1) + 8 * i);
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v10 = [v9 allValues];
        v11 = [v10 countByEnumeratingWithState:&v35 objects:v45 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v36;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v36 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [v3 addObject:*(*(&v35 + 1) + 8 * j)];
            }

            v12 = [v10 countByEnumeratingWithState:&v35 objects:v45 count:16];
          }

          while (v12);
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v39 objects:v46 count:16];
    }

    while (v6);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v15 = [(NSMutableDictionary *)self->_chartCachesByDisplayTypeIdentifier allValues];
  v16 = [v15 countByEnumeratingWithState:&v31 objects:v44 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v32;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [v3 addObject:*(*(&v31 + 1) + 8 * k)];
      }

      v17 = [v15 countByEnumeratingWithState:&v31 objects:v44 count:16];
    }

    while (v17);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = self->_chartCachesByCustomDisplayType;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v27 objects:v43 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v28;
    do
    {
      for (m = 0; m != v22; ++m)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v27 + 1) + 8 * m) chartCache];
        [v3 addObject:v25];
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v27 objects:v43 count:16];
    }

    while (v22);
  }

  return v3;
}

- (id)_timeScopeBasedChartCacheForDisplayType:(id)a3 timeScope:(int64_t)a4
{
  chartCachesByTimeScopeAndDisplayTypeIdentifier = self->_chartCachesByTimeScopeAndDisplayTypeIdentifier;
  v7 = a3;
  v8 = [(NSArray *)chartCachesByTimeScopeAndDisplayTypeIdentifier objectAtIndexedSubscript:a4];
  v9 = [(HKChartDataCacheController *)self _chartCacheForDisplayType:v7 timeScope:a4 chartCachesByDisplayTypeIdentifier:v8];

  return v9;
}

- (id)_chartCacheForDisplayType:(id)a3 timeScope:(int64_t)a4 chartCachesByDisplayTypeIdentifier:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "displayTypeIdentifier")}];
  v11 = [v9 objectForKeyedSubscript:v10];
  if (!v11)
  {
    v11 = [(HKChartDataCacheController *)self _generateChartCacheForDisplayType:v8 timeScope:a4];
    [v11 setShouldBufferFetchOperations:1];
    [v9 setObject:v11 forKeyedSubscript:v10];
    [(HKChartDataCacheController *)self _subscribeForUpdatesForDisplayType:v8];
  }

  return v11;
}

- (id)_generateChartCacheForDisplayType:(id)a3 timeScope:(int64_t)a4
{
  v6 = a3;
  v7 = [(HKChartDataCacheController *)self healthStore];
  v8 = [(HKChartDataCacheController *)self unitController];
  v9 = [v6 hk_healthQueryChartCacheDataSourceForTimeScope:a4 healthStore:v7 unitController:v8];

  v10 = objc_alloc_init(HKChartCache);
  [(HKChartCache *)v10 setDataSource:v9];
  v11 = +[HKOutstandingFetchOperationManager sharedOperationManager];
  [(HKChartCache *)v10 setOperationManager:v11];

  return v10;
}

- (void)updateController:(id)a3 didReceiveUpdateForType:(id)a4 samplesAdded:(id)a5 objectsRemoved:(id)a6 recoveringFromError:(BOOL)a7
{
  v24 = *MEMORY[0x1E69E9840];
  v10 = a5;
  if ([a6 count])
  {
    v11 = 0;
    v12 = 1;
  }

  else
  {
    v11 = 0;
    v12 = 1;
    if (![(HKChartDataCacheController *)self _anySampleShouldInvalidateCache:v10]&& !a7)
    {
      if ([v10 count])
      {
        v11 = [(HKChartDataCacheController *)self _chartCacheIdentifiersFromSamples:v10];
        v12 = 0;
      }

      else
      {
        v12 = 0;
        v11 = 0;
      }
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = [(HKChartDataCacheController *)self allInteractiveChartsCaches];
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v19 + 1) + 8 * i);
        [v18 setShouldBufferFetchOperations:0];
        if (v12)
        {
          [v18 invalidateCache];
        }

        else if (v11)
        {
          [v18 invalidateResultsForIdentifiers:v11];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }
}

- (BOOL)_anySampleShouldInvalidateCache:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696C6B8]];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v6)
  {
    v11 = 0;
    goto LABEL_17;
  }

  v7 = v6;
  v8 = *v16;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v15 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = 1;
        goto LABEL_17;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v10 quantityType];
        v11 = v12 == v4;
LABEL_16:

        goto LABEL_17;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v10 categoryType];
        v13 = [MEMORY[0x1E696C2E0] categoryTypeForIdentifier:*MEMORY[0x1E696B698]];
        v11 = v12 == v13;

        goto LABEL_16;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    v11 = 0;
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_17:

  return v11;
}

- (void)updateController:(id)a3 didReceiveHighFrequencyUpdateForType:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [MEMORY[0x1E695DF00] date];
  objc_opt_class();
  v7 = 1.0;
  if (objc_opt_isKindOfClass())
  {
    v8 = v5;
    if ([v8 isMinimumDurationRestricted])
    {
      [v8 minimumAllowedDuration];
      v7 = v9 + 1.0;
    }
  }

  v10 = [v6 dateByAddingTimeInterval:-v7];
  v11 = [(HKChartDataCacheController *)self _chartCacheIdentifiersFromStartDate:v10 endDate:v6];
  v12 = [v11 allObjects];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = [(HKChartDataCacheController *)self allInteractiveChartsCaches];
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v18 + 1) + 8 * v17++) invalidateResultsForIdentifiers:v12];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v15);
  }
}

- (id)_chartCacheIdentifiersFromSamples:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 hasUndeterminedDuration];
        v13 = [v11 startDate];
        if (v12)
        {
          [MEMORY[0x1E695DF00] now];
        }

        else
        {
          [v11 endDate];
        }
        v14 = ;
        v15 = [(HKChartDataCacheController *)self _chartCacheIdentifiersFromStartDate:v13 endDate:v14];
        [v5 unionSet:v15];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v16 = [v5 allObjects];

  return v16;
}

- (id)_chartCacheIdentifiersFromStartDate:(id)a3 endDate:(id)a4
{
  v20 = a3;
  v19 = a4;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  for (i = 0; i != 8; ++i)
  {
    v7 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:i];
    [v7 approximateSeriesPointIntervalAtResolution:0];
    v9 = v8;
    v10 = [v20 dateByAddingTimeInterval:-v8];
    v11 = [v19 dateByAddingTimeInterval:v9];
    v12 = 0;
    v13 = 1;
    do
    {
      v14 = v13;
      memset(v23, 0, sizeof(v23));
      HKGraphSeriesDataBlockPathContainingDate(v10, i, v12, v23);
      memset(v22, 0, sizeof(v22));
      HKGraphSeriesDataBlockPathContainingDate(v11, i, v12, v22);
      v15 = v23[0];
      if (v23[0] <= v22[0])
      {
        do
        {
          v21[0] = v15;
          v21[1] = i;
          v21[2] = v12;
          v16 = [MEMORY[0x1E696B098] valueWithHKGraphSeriesDataBlockPath:v21];
          [v5 addObject:v16];
        }

        while (v15++ < v22[0]);
      }

      v13 = 0;
      v12 = 1;
    }

    while ((v14 & 1) != 0);
  }

  return v5;
}

- (void)_subscribeForUpdatesForDisplayType:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 displayTypeIdentifier] == 80)
  {
    v5 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696BC90]];
    v6 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696BC88]];
    [(HKSampleTypeUpdateController *)self->_updateController addObserver:self forType:v5];
    [(HKSampleTypeUpdateController *)self->_updateController addObserver:self forType:v6];
  }

  else
  {
    if ([(HKChartDataCacheController *)self _displayTypeIsActivity:v4])
    {
      goto LABEL_5;
    }

    v7 = [v4 sampleType];
    v8 = [v7 identifier];
    v9 = *MEMORY[0x1E696C6A8];

    if (v8 == v9)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v5 = [MEMORY[0x1E696C3D0] associatedBalanceMetricsTypes];
      v13 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v26;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v26 != v15)
            {
              objc_enumerationMutation(v5);
            }

            [(HKSampleTypeUpdateController *)self->_updateController addObserver:self forType:*(*(&v25 + 1) + 8 * i)];
          }

          v14 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v14);
      }
    }

    else
    {
      v10 = [v4 sampleType];
      v11 = [v10 identifier];
      v12 = *MEMORY[0x1E696C6B0];

      if (v11 == v12)
      {
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v5 = [MEMORY[0x1E696C3D0] associatedSleepScoreTypes];
        v17 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v22;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v22 != v19)
              {
                objc_enumerationMutation(v5);
              }

              [(HKSampleTypeUpdateController *)self->_updateController addObserver:self forType:*(*(&v21 + 1) + 8 * j)];
            }

            v18 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v18);
        }
      }

      else
      {
        v5 = [v4 sampleType];
        [(HKSampleTypeUpdateController *)self->_updateController addObserver:self forType:v5];
      }
    }
  }

LABEL_5:
}

- (BOOL)_displayTypeIsActivity:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 baseDisplayType];
    v5 = [v4 isActivitySummary];
  }

  else
  {
    v5 = [v3 isActivitySummary];
  }

  return v5;
}

- (id)currentValueDataProviderForDisplayType:(id)a3 healthStore:(id)a4 updateController:(id)a5 dateCache:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(NSMutableDictionary *)self->_currentValueDataProvidersByDisplayType objectForKeyedSubscript:v10];
  if (!v14)
  {
    v14 = [(HKChartDataCacheController *)self _createCurrentValueDataProviderForDisplayType:v10 healthStore:v11 updateController:v12 dateCache:v13];
    if (v14)
    {
      [(NSMutableDictionary *)self->_currentValueDataProvidersByDisplayType setObject:v14 forKeyedSubscript:v10];
    }
  }

  return v14;
}

- (id)alternateCurrentValueDataProviderForDisplayType:(id)a3 healthStore:(id)a4 updateController:(id)a5 dateCache:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(NSMutableDictionary *)self->_alternateCurrentValueDataProvidersByDisplayType objectForKeyedSubscript:v10];
  if (!v14)
  {
    v15 = [(HKChartDataCacheController *)self _createAlternateCurrentValueDataProviderForDisplayType:v10 healthStore:v11 updateController:v12 dateCache:v13];
    if (v15)
    {
      v14 = v15;
      [(NSMutableDictionary *)self->_alternateCurrentValueDataProvidersByDisplayType setObject:v15 forKeyedSubscript:v10];
    }

    else
    {
      v16 = [(HKChartDataCacheController *)self currentValueDataProviderForDisplayType:v10 healthStore:v11 updateController:v12 dateCache:v13];
      v14 = v16;
      if (v16)
      {
        [(NSMutableDictionary *)self->_alternateCurrentValueDataProvidersByDisplayType setObject:v16 forKeyedSubscript:v10];
      }
    }
  }

  return v14;
}

- (id)_createCurrentValueDataProviderForDisplayType:(id)a3 healthStore:(id)a4 updateController:(id)a5 dateCache:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v9 presentation];
  v14 = [v13 configurationForTimeScope:5];
  v15 = [v14 currentValue];

  v16 = 0;
  if (v15 <= 2)
  {
    if (v15 == 1)
    {
      v23 = HKMostRecentValueDataProvider;
    }

    else
    {
      if (v15 != 2)
      {
        goto LABEL_15;
      }

      v23 = HKCumulativeSumCurrentValueDataProvider;
    }
  }

  else
  {
    if (v15 != 3)
    {
      if (v15 == 4)
      {
        v17 = [HKCountCurrentValueDataProvider alloc];
        v18 = v10;
        v19 = v11;
        v20 = v12;
        v21 = v9;
        v22 = 0;
      }

      else
      {
        if (v15 != 5)
        {
          goto LABEL_15;
        }

        v17 = [HKCountCurrentValueDataProvider alloc];
        v18 = v10;
        v19 = v11;
        v20 = v12;
        v21 = v9;
        v22 = 1;
      }

      v24 = [(HKCountCurrentValueDataProvider *)v17 initWithHealthStore:v18 updateController:v19 dateCache:v20 displayType:v21 countStyle:v22];
      goto LABEL_14;
    }

    v23 = HKMostRecentTimePeriodCurrentValueDataProvider;
  }

  v24 = [[v23 alloc] initWithHealthStore:v10 updateController:v11 dateCache:v12 displayType:v9];
LABEL_14:
  v16 = v24;
LABEL_15:

  return v16;
}

- (id)_createAlternateCurrentValueDataProviderForDisplayType:(id)a3 healthStore:(id)a4 updateController:(id)a5 dateCache:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v9 presentation];
  v14 = [v13 configurationForTimeScope:5];
  v15 = [v14 currentValue];

  if (v15 == 6)
  {
    v16 = [(HKValueDataProvider *)[HKLastUpdatedDayCurrentValueDataProvider alloc] initWithHealthStore:v10 updateController:v11 dateCache:v12 displayType:v9];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)activitySummaryDataProviderWithHealthStore:(id)a3 dateCache:(id)a4 displayTypeController:(id)a5 unitController:(id)a6
{
  activitySummaryDataProvider = self->_activitySummaryDataProvider;
  if (!activitySummaryDataProvider)
  {
    v11 = a6;
    v12 = a5;
    v13 = a4;
    v14 = a3;
    v15 = [[HKActivitySummaryDataProvider alloc] initWithHealthStore:v14 dateCache:v13 displayTypeController:v12 unitController:v11];

    v16 = self->_activitySummaryDataProvider;
    self->_activitySummaryDataProvider = v15;

    activitySummaryDataProvider = self->_activitySummaryDataProvider;
  }

  return activitySummaryDataProvider;
}

- (void)addCustomChartCache:(id)a3 forDisplayType:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[_HKCustomCacheDisplayTypeTuple alloc] initWithCustomCache:v7 displayType:v6];

  [(NSMutableArray *)self->_chartCachesByCustomDisplayType addObject:v8];
  [(HKChartDataCacheController *)self _subscribeForUpdatesForDisplayType:v6];
}

- (void)_removeCustomCachesForDisplayTypeIdentifier:(int64_t)a3
{
  v9 = objc_alloc_init(MEMORY[0x1E696AD50]);
  if ([(NSMutableArray *)self->_chartCachesByCustomDisplayType count])
  {
    v5 = 0;
    do
    {
      v6 = [(NSMutableArray *)self->_chartCachesByCustomDisplayType objectAtIndexedSubscript:v5];
      v7 = [v6 displayType];
      v8 = [v7 displayTypeIdentifier];

      if (v8 == a3)
      {
        [v9 addIndex:v5];
      }

      ++v5;
    }

    while (v5 < [(NSMutableArray *)self->_chartCachesByCustomDisplayType count]);
  }

  [(NSMutableArray *)self->_chartCachesByCustomDisplayType removeObjectsAtIndexes:v9];
}

- (id)findCustomCachesForDisplayType:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_chartCachesByCustomDisplayType;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 displayType];
        v13 = [v12 isEqual:v4];

        if (v13)
        {
          v14 = [v11 chartCache];
          [v5 addObject:v14];
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)removeCachesForDisplayTypeIdentifier:(int64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_chartCachesByTimeScopeAndDisplayTypeIdentifier;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) removeObjectForKey:{v5, v11}];
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [(NSMutableDictionary *)self->_chartCachesByDisplayTypeIdentifier removeObjectForKey:v5];
  [(HKChartDataCacheController *)self _removeCustomCachesForDisplayTypeIdentifier:a3];
}

@end