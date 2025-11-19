@interface WDSleepStageListDataProvider
- (id)_durationFormatter;
- (id)_sleepDataDictionaryFromSamples:(id)a3;
- (id)_sleepSampleBucketAtIndex:(unint64_t)a3 section:(unint64_t)a4;
- (id)sampleTypes;
- (id)secondaryTextForObject:(id)a3;
- (id)textForObject:(id)a3;
- (id)titleForSection:(unint64_t)a3;
- (id)viewControllerForItemAtIndexPath:(id)a3;
- (unint64_t)numberOfObjectsForSection:(unint64_t)a3;
- (void)_callUpdateHandler;
- (void)deleteAllData;
- (void)deleteObjectsAtIndexPath:(id)a3 healthStore:(id)a4 options:(unint64_t)a5 completion:(id)a6;
- (void)removeObjectAtIndex:(unint64_t)a3 forSection:(unint64_t)a4 sectionRemoved:(BOOL *)a5;
@end

@implementation WDSleepStageListDataProvider

- (id)sampleTypes
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [(WDSampleListDataProvider *)self displayType];
  v3 = [v2 sampleType];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_callUpdateHandler
{
  v3 = [(WDSampleListDataProvider *)self samples];
  v4 = [v3 allSamples];

  v5 = [(WDSleepStageListDataProvider *)self _sleepDataDictionaryFromSamples:v4];
  v6 = [(NSMutableDictionary *)v5 allKeys];
  v7 = [v6 sortedArrayUsingComparator:&__block_literal_global_7];

  sleepData = self->_sleepData;
  self->_sleepData = v5;
  v9 = v5;

  v10 = [v7 mutableCopy];
  orderedKeys = self->_orderedKeys;
  self->_orderedKeys = v10;

  v12.receiver = self;
  v12.super_class = WDSleepStageListDataProvider;
  [(WDSampleListDataProvider *)&v12 _callUpdateHandler];
}

uint64_t __50__WDSleepStageListDataProvider__callUpdateHandler__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)_sleepDataDictionaryFromSamples:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    v8 = &OBJC_METACLASS___WDAppSourcesListTableViewSection;
    v23 = v27;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = [&v8[75] sleep_timePeriodForSample:{v10, v23}];
        v12 = [v4 objectForKeyedSubscript:v11];
        if (!v12)
        {
          v12 = [MEMORY[0x277CBEB18] array];
          [v4 setObject:v12 forKeyedSubscript:v11];
        }

        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v27[0] = __64__WDSleepStageListDataProvider__sleepDataDictionaryFromSamples___block_invoke;
        v27[1] = &unk_2796E7A80;
        v27[2] = v10;
        v13 = [v12 hk_firstObjectPassingTest:v26];
        if (!v13)
        {
          v25 = [WDSleepStageSampleBucket alloc];
          v14 = v4;
          v15 = v7;
          v16 = [v10 value];
          v17 = [v10 sourceRevision];
          [v10 device];
          v19 = v18 = v6;
          v20 = v16;
          v7 = v15;
          v4 = v14;
          v13 = [(WDSleepStageSampleBucket *)v25 initWithSleepStage:v20 timePeriod:v11 sourceRevision:v17 device:v19];

          v6 = v18;
          v8 = &OBJC_METACLASS___WDAppSourcesListTableViewSection;

          [v12 addObject:v13];
        }

        [(WDSleepStageSampleBucket *)v13 addSample:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v6);
  }

  [v4 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_300];
  v21 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t __64__WDSleepStageListDataProvider__sleepDataDictionaryFromSamples___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 sortNumber];
  if (v6 >= [v5 sortNumber])
  {
    v8 = [v4 sortNumber];
    v7 = v8 > [v5 sortNumber];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (id)titleForSection:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_orderedKeys count])
  {
    v5 = [(NSMutableArray *)self->_orderedKeys objectAtIndexedSubscript:a3];
    v6 = [v5 sleep_titleString];
  }

  else
  {
    v6 = &stru_28641D9B8;
  }

  return v6;
}

- (unint64_t)numberOfObjectsForSection:(unint64_t)a3
{
  v4 = [(NSMutableArray *)self->_orderedKeys objectAtIndexedSubscript:a3];
  v5 = [(NSMutableDictionary *)self->_sleepData objectForKeyedSubscript:v4];
  v6 = [v5 count];

  return v6;
}

- (id)_sleepSampleBucketAtIndex:(unint64_t)a3 section:(unint64_t)a4
{
  v6 = [(NSMutableArray *)self->_orderedKeys objectAtIndexedSubscript:a4];
  v7 = [(NSMutableDictionary *)self->_sleepData objectForKeyedSubscript:v6];
  v8 = [v7 objectAtIndexedSubscript:a3];

  return v8;
}

- (id)_durationFormatter
{
  if (_durationFormatter_onceToken_0 != -1)
  {
    [WDSleepStageListDataProvider _durationFormatter];
  }

  v3 = _durationFormatter_formatter_0;

  return v3;
}

uint64_t __50__WDSleepStageListDataProvider__durationFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA958]);
  v1 = _durationFormatter_formatter_0;
  _durationFormatter_formatter_0 = v0;

  [_durationFormatter_formatter_0 setUnitsStyle:5];
  v2 = _durationFormatter_formatter_0;

  return [v2 setAllowedUnits:96];
}

- (id)textForObject:(id)a3
{
  v4 = a3;
  v5 = [(WDSleepStageListDataProvider *)self _durationFormatter];
  [v4 totalDuration];
  v6 = [v5 stringFromTimeInterval:?];

  v7 = MEMORY[0x277CCACA8];
  v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:@"INTERVALS_OF_TIME_NUMBERED_UNIT" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
  v10 = [v4 numberOfSamples];

  v11 = [v7 localizedStringWithFormat:v9, v10];

  v12 = MEMORY[0x277CCACA8];
  v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v14 = [v13 localizedStringForKey:@"SLEEP_DATA_INTERVALS_FORMAT" value:&stru_28641D9B8 table:@"HealthUI-Localizable-Acacia"];
  v15 = [v12 localizedStringWithFormat:v14, v11, v6];

  return v15;
}

- (id)secondaryTextForObject:(id)a3
{
  v3 = [a3 sleepStage];
  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = v4;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v6 = @"ASLEEP_CORE";
        goto LABEL_12;
      case 4:
        v6 = @"ASLEEP_DEEP";
        goto LABEL_12;
      case 5:
        v6 = @"ASLEEP_REM";
LABEL_12:
        v7 = @"HealthUI-Localizable-Acacia";
        goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v3 == 1)
  {
    v6 = @"ASLEEP_UNSPECIFIED";
    goto LABEL_12;
  }

  if (v3 != 2)
  {
LABEL_13:
    v6 = @"IN_BED";
    goto LABEL_14;
  }

  v6 = @"AWAKE";
LABEL_14:
  v7 = @"HealthUI-Localizable";
LABEL_15:
  v8 = [v4 localizedStringForKey:v6 value:&stru_28641D9B8 table:v7];

  return v8;
}

- (void)removeObjectAtIndex:(unint64_t)a3 forSection:(unint64_t)a4 sectionRemoved:(BOOL *)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v19 = [(NSMutableArray *)self->_orderedKeys objectAtIndexedSubscript:a4];
  v7 = [(NSMutableDictionary *)self->_sleepData objectForKeyedSubscript:?];
  v8 = [v7 objectAtIndexedSubscript:a3];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = [v8 samples];
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [(WDSampleListDataProvider *)self samples];
        [v15 removeSample:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  [v7 removeObjectAtIndex:a3];
  if ([v7 count])
  {
    v16 = 0;
  }

  else
  {
    [(NSMutableArray *)self->_orderedKeys removeObjectAtIndex:a4];
    v16 = 1;
  }

  *a5 = v16;

  v17 = *MEMORY[0x277D85DE8];
}

- (void)deleteAllData
{
  v7.receiver = self;
  v7.super_class = WDSleepStageListDataProvider;
  [(WDSampleListDataProvider *)&v7 deleteAllData];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  sleepData = self->_sleepData;
  self->_sleepData = v3;

  v5 = [MEMORY[0x277CBEB18] array];
  orderedKeys = self->_orderedKeys;
  self->_orderedKeys = v5;
}

- (void)deleteObjectsAtIndexPath:(id)a3 healthStore:(id)a4 options:(unint64_t)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [v12 row];
  v14 = [v12 section];

  v16 = [(WDSleepStageListDataProvider *)self _sleepSampleBucketAtIndex:v13 section:v14];
  v15 = [v16 samples];
  [v11 deleteObjects:v15 options:a5 withCompletion:v10];
}

- (id)viewControllerForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [WDSleepStageCategoryDataProvider alloc];
  v6 = [(WDSampleListDataProvider *)self displayType];
  v7 = [(WDSampleListDataProvider *)self profile];
  v8 = [(WDSampleListDataProvider *)v5 initWithDisplayType:v6 profile:v7];

  v9 = [v4 row];
  v10 = [v4 section];

  v11 = [(WDSleepStageListDataProvider *)self _sleepSampleBucketAtIndex:v9 section:v10];
  v12 = [v11 predicate];
  [(WDSampleListDataProvider *)v8 setDefaultQueryPredicate:v12];

  v13 = [WDDataListViewController alloc];
  v14 = [(WDSampleListDataProvider *)self displayType];
  v15 = [(WDSampleListDataProvider *)self profile];
  v16 = [(WDDataListViewController *)v13 initWithDisplayType:v14 profile:v15 dataProvider:v8 usingInsetStyling:1];

  return v16;
}

@end