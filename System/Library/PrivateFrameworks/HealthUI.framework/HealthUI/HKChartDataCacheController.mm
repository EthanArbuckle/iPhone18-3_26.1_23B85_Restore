@interface HKChartDataCacheController
- (BOOL)_anySampleShouldInvalidateCache:(id)cache;
- (BOOL)_displayTypeIsActivity:(id)activity;
- (HKChartDataCacheController)initWithHealthStore:(id)store unitController:(id)controller updateController:(id)updateController;
- (id)_chartCacheForDisplayType:(id)type timeScope:(int64_t)scope chartCachesByDisplayTypeIdentifier:(id)identifier;
- (id)_chartCacheIdentifiersFromSamples:(id)samples;
- (id)_chartCacheIdentifiersFromStartDate:(id)date endDate:(id)endDate;
- (id)_createAlternateCurrentValueDataProviderForDisplayType:(id)type healthStore:(id)store updateController:(id)controller dateCache:(id)cache;
- (id)_createCurrentValueDataProviderForDisplayType:(id)type healthStore:(id)store updateController:(id)controller dateCache:(id)cache;
- (id)_generateChartCacheForDisplayType:(id)type timeScope:(int64_t)scope;
- (id)_timeScopeBasedChartCacheForDisplayType:(id)type timeScope:(int64_t)scope;
- (id)activitySummaryDataProviderWithHealthStore:(id)store dateCache:(id)cache displayTypeController:(id)controller unitController:(id)unitController;
- (id)allInteractiveChartsCaches;
- (id)alternateCurrentValueDataProviderForDisplayType:(id)type healthStore:(id)store updateController:(id)controller dateCache:(id)cache;
- (id)currentValueDataProviderForDisplayType:(id)type healthStore:(id)store updateController:(id)controller dateCache:(id)cache;
- (id)findCustomCachesForDisplayType:(id)type;
- (id)interactiveChartsCacheForDisplayType:(id)type timeScope:(int64_t)scope;
- (void)_removeCustomCachesForDisplayTypeIdentifier:(int64_t)identifier;
- (void)_subscribeForUpdatesForDisplayType:(id)type;
- (void)addCustomChartCache:(id)cache forDisplayType:(id)type;
- (void)removeCachesForDisplayTypeIdentifier:(int64_t)identifier;
- (void)updateController:(id)controller didReceiveHighFrequencyUpdateForType:(id)type;
- (void)updateController:(id)controller didReceiveUpdateForType:(id)type samplesAdded:(id)added objectsRemoved:(id)removed recoveringFromError:(BOOL)error;
@end

@implementation HKChartDataCacheController

- (HKChartDataCacheController)initWithHealthStore:(id)store unitController:(id)controller updateController:(id)updateController
{
  storeCopy = store;
  controllerCopy = controller;
  updateControllerCopy = updateController;
  v29.receiver = self;
  v29.super_class = HKChartDataCacheController;
  v11 = [(HKChartDataCacheController *)&v29 init];
  v12 = v11;
  if (v11)
  {
    [(HKChartDataCacheController *)v11 setHealthStore:storeCopy];
    [(HKChartDataCacheController *)v12 setUnitController:controllerCopy];
    [(HKChartDataCacheController *)v12 setUpdateController:updateControllerCopy];
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

- (id)interactiveChartsCacheForDisplayType:(id)type timeScope:(int64_t)scope
{
  typeCopy = type;
  if ([typeCopy hk_healthQueryChartDataSourceDependsOnTimeScope])
  {
    [(HKChartDataCacheController *)self _timeScopeBasedChartCacheForDisplayType:typeCopy timeScope:scope];
  }

  else
  {
    [(HKChartDataCacheController *)self _chartCacheForDisplayType:typeCopy timeScope:scope chartCachesByDisplayTypeIdentifier:self->_chartCachesByDisplayTypeIdentifier];
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
        allValues = [v9 allValues];
        v11 = [allValues countByEnumeratingWithState:&v35 objects:v45 count:16];
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
                objc_enumerationMutation(allValues);
              }

              [v3 addObject:*(*(&v35 + 1) + 8 * j)];
            }

            v12 = [allValues countByEnumeratingWithState:&v35 objects:v45 count:16];
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
  allValues2 = [(NSMutableDictionary *)self->_chartCachesByDisplayTypeIdentifier allValues];
  v16 = [allValues2 countByEnumeratingWithState:&v31 objects:v44 count:16];
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
          objc_enumerationMutation(allValues2);
        }

        [v3 addObject:*(*(&v31 + 1) + 8 * k)];
      }

      v17 = [allValues2 countByEnumeratingWithState:&v31 objects:v44 count:16];
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

        chartCache = [*(*(&v27 + 1) + 8 * m) chartCache];
        [v3 addObject:chartCache];
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v27 objects:v43 count:16];
    }

    while (v22);
  }

  return v3;
}

- (id)_timeScopeBasedChartCacheForDisplayType:(id)type timeScope:(int64_t)scope
{
  chartCachesByTimeScopeAndDisplayTypeIdentifier = self->_chartCachesByTimeScopeAndDisplayTypeIdentifier;
  typeCopy = type;
  v8 = [(NSArray *)chartCachesByTimeScopeAndDisplayTypeIdentifier objectAtIndexedSubscript:scope];
  v9 = [(HKChartDataCacheController *)self _chartCacheForDisplayType:typeCopy timeScope:scope chartCachesByDisplayTypeIdentifier:v8];

  return v9;
}

- (id)_chartCacheForDisplayType:(id)type timeScope:(int64_t)scope chartCachesByDisplayTypeIdentifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(typeCopy, "displayTypeIdentifier")}];
  v11 = [identifierCopy objectForKeyedSubscript:v10];
  if (!v11)
  {
    v11 = [(HKChartDataCacheController *)self _generateChartCacheForDisplayType:typeCopy timeScope:scope];
    [v11 setShouldBufferFetchOperations:1];
    [identifierCopy setObject:v11 forKeyedSubscript:v10];
    [(HKChartDataCacheController *)self _subscribeForUpdatesForDisplayType:typeCopy];
  }

  return v11;
}

- (id)_generateChartCacheForDisplayType:(id)type timeScope:(int64_t)scope
{
  typeCopy = type;
  healthStore = [(HKChartDataCacheController *)self healthStore];
  unitController = [(HKChartDataCacheController *)self unitController];
  v9 = [typeCopy hk_healthQueryChartCacheDataSourceForTimeScope:scope healthStore:healthStore unitController:unitController];

  v10 = objc_alloc_init(HKChartCache);
  [(HKChartCache *)v10 setDataSource:v9];
  v11 = +[HKOutstandingFetchOperationManager sharedOperationManager];
  [(HKChartCache *)v10 setOperationManager:v11];

  return v10;
}

- (void)updateController:(id)controller didReceiveUpdateForType:(id)type samplesAdded:(id)added objectsRemoved:(id)removed recoveringFromError:(BOOL)error
{
  v24 = *MEMORY[0x1E69E9840];
  addedCopy = added;
  if ([removed count])
  {
    v11 = 0;
    v12 = 1;
  }

  else
  {
    v11 = 0;
    v12 = 1;
    if (![(HKChartDataCacheController *)self _anySampleShouldInvalidateCache:addedCopy]&& !error)
    {
      if ([addedCopy count])
      {
        v11 = [(HKChartDataCacheController *)self _chartCacheIdentifiersFromSamples:addedCopy];
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
  allInteractiveChartsCaches = [(HKChartDataCacheController *)self allInteractiveChartsCaches];
  v14 = [allInteractiveChartsCaches countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(allInteractiveChartsCaches);
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

      v15 = [allInteractiveChartsCaches countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }
}

- (BOOL)_anySampleShouldInvalidateCache:(id)cache
{
  v20 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  v4 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696C6B8]];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = cacheCopy;
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
        quantityType = [v10 quantityType];
        v11 = quantityType == v4;
LABEL_16:

        goto LABEL_17;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        quantityType = [v10 categoryType];
        v13 = [MEMORY[0x1E696C2E0] categoryTypeForIdentifier:*MEMORY[0x1E696B698]];
        v11 = quantityType == v13;

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

- (void)updateController:(id)controller didReceiveHighFrequencyUpdateForType:(id)type
{
  v23 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  date = [MEMORY[0x1E695DF00] date];
  objc_opt_class();
  v7 = 1.0;
  if (objc_opt_isKindOfClass())
  {
    v8 = typeCopy;
    if ([v8 isMinimumDurationRestricted])
    {
      [v8 minimumAllowedDuration];
      v7 = v9 + 1.0;
    }
  }

  v10 = [date dateByAddingTimeInterval:-v7];
  v11 = [(HKChartDataCacheController *)self _chartCacheIdentifiersFromStartDate:v10 endDate:date];
  allObjects = [v11 allObjects];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  allInteractiveChartsCaches = [(HKChartDataCacheController *)self allInteractiveChartsCaches];
  v14 = [allInteractiveChartsCaches countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(allInteractiveChartsCaches);
        }

        [*(*(&v18 + 1) + 8 * v17++) invalidateResultsForIdentifiers:allObjects];
      }

      while (v15 != v17);
      v15 = [allInteractiveChartsCaches countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v15);
  }
}

- (id)_chartCacheIdentifiersFromSamples:(id)samples
{
  v23 = *MEMORY[0x1E69E9840];
  samplesCopy = samples;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = samplesCopy;
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
        hasUndeterminedDuration = [v11 hasUndeterminedDuration];
        startDate = [v11 startDate];
        if (hasUndeterminedDuration)
        {
          [MEMORY[0x1E695DF00] now];
        }

        else
        {
          [v11 endDate];
        }
        v14 = ;
        v15 = [(HKChartDataCacheController *)self _chartCacheIdentifiersFromStartDate:startDate endDate:v14];
        [v5 unionSet:v15];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  allObjects = [v5 allObjects];

  return allObjects;
}

- (id)_chartCacheIdentifiersFromStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  for (i = 0; i != 8; ++i)
  {
    v7 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:i];
    [v7 approximateSeriesPointIntervalAtResolution:0];
    v9 = v8;
    v10 = [dateCopy dateByAddingTimeInterval:-v8];
    v11 = [endDateCopy dateByAddingTimeInterval:v9];
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

- (void)_subscribeForUpdatesForDisplayType:(id)type
{
  v31 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if ([typeCopy displayTypeIdentifier] == 80)
  {
    associatedBalanceMetricsTypes = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696BC90]];
    v6 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696BC88]];
    [(HKSampleTypeUpdateController *)self->_updateController addObserver:self forType:associatedBalanceMetricsTypes];
    [(HKSampleTypeUpdateController *)self->_updateController addObserver:self forType:v6];
  }

  else
  {
    if ([(HKChartDataCacheController *)self _displayTypeIsActivity:typeCopy])
    {
      goto LABEL_5;
    }

    sampleType = [typeCopy sampleType];
    identifier = [sampleType identifier];
    v9 = *MEMORY[0x1E696C6A8];

    if (identifier == v9)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      associatedBalanceMetricsTypes = [MEMORY[0x1E696C3D0] associatedBalanceMetricsTypes];
      v13 = [associatedBalanceMetricsTypes countByEnumeratingWithState:&v25 objects:v30 count:16];
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
              objc_enumerationMutation(associatedBalanceMetricsTypes);
            }

            [(HKSampleTypeUpdateController *)self->_updateController addObserver:self forType:*(*(&v25 + 1) + 8 * i)];
          }

          v14 = [associatedBalanceMetricsTypes countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v14);
      }
    }

    else
    {
      sampleType2 = [typeCopy sampleType];
      identifier2 = [sampleType2 identifier];
      v12 = *MEMORY[0x1E696C6B0];

      if (identifier2 == v12)
      {
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        associatedBalanceMetricsTypes = [MEMORY[0x1E696C3D0] associatedSleepScoreTypes];
        v17 = [associatedBalanceMetricsTypes countByEnumeratingWithState:&v21 objects:v29 count:16];
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
                objc_enumerationMutation(associatedBalanceMetricsTypes);
              }

              [(HKSampleTypeUpdateController *)self->_updateController addObserver:self forType:*(*(&v21 + 1) + 8 * j)];
            }

            v18 = [associatedBalanceMetricsTypes countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v18);
        }
      }

      else
      {
        associatedBalanceMetricsTypes = [typeCopy sampleType];
        [(HKSampleTypeUpdateController *)self->_updateController addObserver:self forType:associatedBalanceMetricsTypes];
      }
    }
  }

LABEL_5:
}

- (BOOL)_displayTypeIsActivity:(id)activity
{
  activityCopy = activity;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    baseDisplayType = [activityCopy baseDisplayType];
    isActivitySummary = [baseDisplayType isActivitySummary];
  }

  else
  {
    isActivitySummary = [activityCopy isActivitySummary];
  }

  return isActivitySummary;
}

- (id)currentValueDataProviderForDisplayType:(id)type healthStore:(id)store updateController:(id)controller dateCache:(id)cache
{
  typeCopy = type;
  storeCopy = store;
  controllerCopy = controller;
  cacheCopy = cache;
  v14 = [(NSMutableDictionary *)self->_currentValueDataProvidersByDisplayType objectForKeyedSubscript:typeCopy];
  if (!v14)
  {
    v14 = [(HKChartDataCacheController *)self _createCurrentValueDataProviderForDisplayType:typeCopy healthStore:storeCopy updateController:controllerCopy dateCache:cacheCopy];
    if (v14)
    {
      [(NSMutableDictionary *)self->_currentValueDataProvidersByDisplayType setObject:v14 forKeyedSubscript:typeCopy];
    }
  }

  return v14;
}

- (id)alternateCurrentValueDataProviderForDisplayType:(id)type healthStore:(id)store updateController:(id)controller dateCache:(id)cache
{
  typeCopy = type;
  storeCopy = store;
  controllerCopy = controller;
  cacheCopy = cache;
  v14 = [(NSMutableDictionary *)self->_alternateCurrentValueDataProvidersByDisplayType objectForKeyedSubscript:typeCopy];
  if (!v14)
  {
    v15 = [(HKChartDataCacheController *)self _createAlternateCurrentValueDataProviderForDisplayType:typeCopy healthStore:storeCopy updateController:controllerCopy dateCache:cacheCopy];
    if (v15)
    {
      v14 = v15;
      [(NSMutableDictionary *)self->_alternateCurrentValueDataProvidersByDisplayType setObject:v15 forKeyedSubscript:typeCopy];
    }

    else
    {
      v16 = [(HKChartDataCacheController *)self currentValueDataProviderForDisplayType:typeCopy healthStore:storeCopy updateController:controllerCopy dateCache:cacheCopy];
      v14 = v16;
      if (v16)
      {
        [(NSMutableDictionary *)self->_alternateCurrentValueDataProvidersByDisplayType setObject:v16 forKeyedSubscript:typeCopy];
      }
    }
  }

  return v14;
}

- (id)_createCurrentValueDataProviderForDisplayType:(id)type healthStore:(id)store updateController:(id)controller dateCache:(id)cache
{
  typeCopy = type;
  storeCopy = store;
  controllerCopy = controller;
  cacheCopy = cache;
  presentation = [typeCopy presentation];
  v14 = [presentation configurationForTimeScope:5];
  currentValue = [v14 currentValue];

  v16 = 0;
  if (currentValue <= 2)
  {
    if (currentValue == 1)
    {
      v23 = HKMostRecentValueDataProvider;
    }

    else
    {
      if (currentValue != 2)
      {
        goto LABEL_15;
      }

      v23 = HKCumulativeSumCurrentValueDataProvider;
    }
  }

  else
  {
    if (currentValue != 3)
    {
      if (currentValue == 4)
      {
        v17 = [HKCountCurrentValueDataProvider alloc];
        v18 = storeCopy;
        v19 = controllerCopy;
        v20 = cacheCopy;
        v21 = typeCopy;
        v22 = 0;
      }

      else
      {
        if (currentValue != 5)
        {
          goto LABEL_15;
        }

        v17 = [HKCountCurrentValueDataProvider alloc];
        v18 = storeCopy;
        v19 = controllerCopy;
        v20 = cacheCopy;
        v21 = typeCopy;
        v22 = 1;
      }

      v24 = [(HKCountCurrentValueDataProvider *)v17 initWithHealthStore:v18 updateController:v19 dateCache:v20 displayType:v21 countStyle:v22];
      goto LABEL_14;
    }

    v23 = HKMostRecentTimePeriodCurrentValueDataProvider;
  }

  v24 = [[v23 alloc] initWithHealthStore:storeCopy updateController:controllerCopy dateCache:cacheCopy displayType:typeCopy];
LABEL_14:
  v16 = v24;
LABEL_15:

  return v16;
}

- (id)_createAlternateCurrentValueDataProviderForDisplayType:(id)type healthStore:(id)store updateController:(id)controller dateCache:(id)cache
{
  typeCopy = type;
  storeCopy = store;
  controllerCopy = controller;
  cacheCopy = cache;
  presentation = [typeCopy presentation];
  v14 = [presentation configurationForTimeScope:5];
  currentValue = [v14 currentValue];

  if (currentValue == 6)
  {
    v16 = [(HKValueDataProvider *)[HKLastUpdatedDayCurrentValueDataProvider alloc] initWithHealthStore:storeCopy updateController:controllerCopy dateCache:cacheCopy displayType:typeCopy];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)activitySummaryDataProviderWithHealthStore:(id)store dateCache:(id)cache displayTypeController:(id)controller unitController:(id)unitController
{
  activitySummaryDataProvider = self->_activitySummaryDataProvider;
  if (!activitySummaryDataProvider)
  {
    unitControllerCopy = unitController;
    controllerCopy = controller;
    cacheCopy = cache;
    storeCopy = store;
    v15 = [[HKActivitySummaryDataProvider alloc] initWithHealthStore:storeCopy dateCache:cacheCopy displayTypeController:controllerCopy unitController:unitControllerCopy];

    v16 = self->_activitySummaryDataProvider;
    self->_activitySummaryDataProvider = v15;

    activitySummaryDataProvider = self->_activitySummaryDataProvider;
  }

  return activitySummaryDataProvider;
}

- (void)addCustomChartCache:(id)cache forDisplayType:(id)type
{
  typeCopy = type;
  cacheCopy = cache;
  v8 = [[_HKCustomCacheDisplayTypeTuple alloc] initWithCustomCache:cacheCopy displayType:typeCopy];

  [(NSMutableArray *)self->_chartCachesByCustomDisplayType addObject:v8];
  [(HKChartDataCacheController *)self _subscribeForUpdatesForDisplayType:typeCopy];
}

- (void)_removeCustomCachesForDisplayTypeIdentifier:(int64_t)identifier
{
  v9 = objc_alloc_init(MEMORY[0x1E696AD50]);
  if ([(NSMutableArray *)self->_chartCachesByCustomDisplayType count])
  {
    v5 = 0;
    do
    {
      v6 = [(NSMutableArray *)self->_chartCachesByCustomDisplayType objectAtIndexedSubscript:v5];
      displayType = [v6 displayType];
      displayTypeIdentifier = [displayType displayTypeIdentifier];

      if (displayTypeIdentifier == identifier)
      {
        [v9 addIndex:v5];
      }

      ++v5;
    }

    while (v5 < [(NSMutableArray *)self->_chartCachesByCustomDisplayType count]);
  }

  [(NSMutableArray *)self->_chartCachesByCustomDisplayType removeObjectsAtIndexes:v9];
}

- (id)findCustomCachesForDisplayType:(id)type
{
  v21 = *MEMORY[0x1E69E9840];
  typeCopy = type;
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
        displayType = [v11 displayType];
        v13 = [displayType isEqual:typeCopy];

        if (v13)
        {
          chartCache = [v11 chartCache];
          [v5 addObject:chartCache];
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)removeCachesForDisplayTypeIdentifier:(int64_t)identifier
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
  [(HKChartDataCacheController *)self _removeCustomCachesForDisplayTypeIdentifier:identifier];
}

@end