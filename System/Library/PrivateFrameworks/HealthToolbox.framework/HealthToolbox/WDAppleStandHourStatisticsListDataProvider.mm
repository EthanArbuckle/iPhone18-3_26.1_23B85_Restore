@interface WDAppleStandHourStatisticsListDataProvider
- (WDAppleStandHourStatisticsListDataProvider)initWithDisplayType:(id)a3 profile:(id)a4;
- (id)sampleTypes;
- (id)secondaryTextForObject:(id)a3;
- (id)textForObject:(id)a3;
- (id)titleForSection:(unint64_t)a3;
- (id)viewControllerForItemAtIndexPath:(id)a3;
- (void)_callUpdateHandler;
- (void)_removeSamplesInDateRange:(id)a3;
- (void)deleteAllData;
- (void)deleteObjectsAtIndexPath:(id)a3 healthStore:(id)a4 options:(unint64_t)a5 completion:(id)a6;
- (void)removeObjectAtIndex:(unint64_t)a3 forSection:(unint64_t)a4 sectionRemoved:(BOOL *)a5;
@end

@implementation WDAppleStandHourStatisticsListDataProvider

- (WDAppleStandHourStatisticsListDataProvider)initWithDisplayType:(id)a3 profile:(id)a4
{
  v6 = a4;
  v18.receiver = self;
  v18.super_class = WDAppleStandHourStatisticsListDataProvider;
  v7 = [(WDSampleListDataProvider *)&v18 initWithDisplayType:a3 profile:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [(WDSampleListDataProvider *)v7 displayType];
    v10 = [v6 unitController];
    v11 = [(WDSampleListDataProvider *)v8 displayType];
    v12 = [v10 unitForDisplayType:v11];
    v13 = [v9 hk_valueFormatterForUnit:v12];
    valueFormatter = v8->_valueFormatter;
    v8->_valueFormatter = v13;

    v15 = HKDateFormatterFromTemplate();
    dateFormatter = v8->_dateFormatter;
    v8->_dateFormatter = v15;
  }

  return v8;
}

- (void)_callUpdateHandler
{
  v3 = [(WDSampleListDataProvider *)self samples];
  v4 = [v3 allSamples];

  if ([v4 count])
  {
    v5 = [v4 firstObject];
    v6 = [v5 startDate];

    v7 = [v4 lastObject];
    v8 = [v7 endDate];

    v9 = [MEMORY[0x277CBEA80] currentCalendar];
    v10 = [v9 startOfDayForDate:v6];

    v11 = [MEMORY[0x277CBEA80] currentCalendar];
    v12 = [v11 hk_startOfTomorrowForDate:v8];

    v13 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v13 setDay:1];
    v14 = MEMORY[0x277CCDE30];
    v15 = [(WDSampleListDataProvider *)self samples];
    v16 = [v15 allSamples];
    v17 = HKCalendarDateTransformNone();
    v18 = [v14 calculateTotalDurationsWithTimePeriods:v16 startDate:v10 endDate:v12 intervalComponents:v13 startOfDayTransform:v17];
    v19 = [v18 mutableCopy];
    totalsByTimePeriod = self->_totalsByTimePeriod;
    self->_totalsByTimePeriod = v19;

    v21 = [(NSMutableDictionary *)self->_totalsByTimePeriod allKeys];
    v22 = [v21 mutableCopy];
    orderedTimePeriods = self->_orderedTimePeriods;
    self->_orderedTimePeriods = v22;

    [(NSMutableArray *)self->_orderedTimePeriods sortUsingComparator:&__block_literal_global_1];
  }

  else
  {
    v24 = self->_totalsByTimePeriod;
    self->_totalsByTimePeriod = 0;

    v10 = self->_orderedTimePeriods;
    self->_orderedTimePeriods = 0;
  }

  v25.receiver = self;
  v25.super_class = WDAppleStandHourStatisticsListDataProvider;
  [(WDSampleListDataProvider *)&v25 _callUpdateHandler];
}

uint64_t __64__WDAppleStandHourStatisticsListDataProvider__callUpdateHandler__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 endDate];
  v6 = [v4 endDate];

  v7 = [v5 compare:v6];
  return v7;
}

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

- (id)titleForSection:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_orderedTimePeriods count])
  {
    v4 = [(WDSampleListDataProvider *)self unitController];
    v5 = [(WDSampleListDataProvider *)self displayType];
    v6 = [v4 localizedDisplayNameForDisplayType:v5];
  }

  else
  {
    v6 = &stru_28641D9B8;
  }

  return v6;
}

- (id)textForObject:(id)a3
{
  v4 = [(NSMutableDictionary *)self->_totalsByTimePeriod objectForKeyedSubscript:a3];
  valueFormatter = self->_valueFormatter;
  v6 = [(WDSampleListDataProvider *)self displayType];
  v7 = [(WDSampleListDataProvider *)self unitController];
  v8 = [(HKDisplayTypeValueFormatter *)valueFormatter stringFromValue:v4 displayType:v6 unitController:v7];

  return v8;
}

- (id)secondaryTextForObject:(id)a3
{
  dateFormatter = self->_dateFormatter;
  v4 = [a3 startDate];
  v5 = [(NSDateFormatter *)dateFormatter stringFromDate:v4];

  return v5;
}

- (void)removeObjectAtIndex:(unint64_t)a3 forSection:(unint64_t)a4 sectionRemoved:(BOOL *)a5
{
  v7 = [(NSMutableArray *)self->_orderedTimePeriods objectAtIndexedSubscript:a3, a4, a5];
  [(NSMutableArray *)self->_orderedTimePeriods removeObjectAtIndex:a3];
  [(NSMutableDictionary *)self->_totalsByTimePeriod removeObjectForKey:v7];
  [(WDAppleStandHourStatisticsListDataProvider *)self _removeSamplesInDateRange:v7];
}

- (void)_removeSamplesInDateRange:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 startDate];
  v23 = v4;
  v6 = [v4 endDate];
  v24 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v22 = self;
  v7 = [(WDSampleListDataProvider *)self samples];
  v8 = [v7 allSamples];

  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = [v13 startDate];
        IsLargerOrEqual = HKUIObjectIsLargerOrEqual();

        v16 = [v13 startDate];
        IsSmaller = HKUIObjectIsSmaller();

        if (IsLargerOrEqual)
        {
          v18 = IsSmaller == 0;
        }

        else
        {
          v18 = 1;
        }

        if (!v18)
        {
          v19 = [v13 UUID];
          [v24 addObject:v19];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  v20 = [(WDSampleListDataProvider *)v22 samples];
  [v20 removeSamplesWithUUIDs:v24];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)deleteAllData
{
  v3.receiver = self;
  v3.super_class = WDAppleStandHourStatisticsListDataProvider;
  [(WDSampleListDataProvider *)&v3 deleteAllData];
  [(NSMutableArray *)self->_orderedTimePeriods removeAllObjects];
  [(NSMutableDictionary *)self->_totalsByTimePeriod removeAllObjects];
}

- (void)deleteObjectsAtIndexPath:(id)a3 healthStore:(id)a4 options:(unint64_t)a5 completion:(id)a6
{
  v6 = a5;
  v10 = a6;
  orderedTimePeriods = self->_orderedTimePeriods;
  v12 = a4;
  v13 = -[NSMutableArray objectAtIndexedSubscript:](orderedTimePeriods, "objectAtIndexedSubscript:", [a3 row]);
  v14 = [(WDSampleListDataProvider *)self displayType];
  v15 = [v14 sampleType];

  v16 = MEMORY[0x277CCD838];
  v17 = [v13 startDate];
  v18 = [v13 endDate];
  v19 = [v16 predicateForSamplesWithStartDate:v17 endDate:v18 options:1];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __102__WDAppleStandHourStatisticsListDataProvider_deleteObjectsAtIndexPath_healthStore_options_completion___block_invoke;
  v21[3] = &unk_2796E7010;
  v22 = v10;
  v20 = v10;
  [v12 deleteObjectsOfType:v15 predicate:v19 options:v6 & 2 withCompletion:v21];
}

uint64_t __102__WDAppleStandHourStatisticsListDataProvider_deleteObjectsAtIndexPath_healthStore_options_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a4);
  }

  return result;
}

- (id)viewControllerForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(WDSampleListDataProvider *)self displayType];
  v6 = [(WDSampleListDataProvider *)self profile];
  v7 = [(WDSampleListDataProvider *)self unitController];
  v8 = [v5 wd_listViewControllerDataProviderWithProfile:v6 unitController:v7 isHierarchical:0];

  orderedTimePeriods = self->_orderedTimePeriods;
  v10 = [v4 row];

  v11 = [(NSMutableArray *)orderedTimePeriods objectAtIndexedSubscript:v10];
  v12 = MEMORY[0x277CCD838];
  v13 = [v11 startDate];
  v14 = [v11 endDate];
  v15 = [v12 predicateForSamplesWithStartDate:v13 endDate:v14 options:0];

  v16 = [(WDSampleListDataProvider *)self defaultQueryPredicate];
  v17 = HKUIPredicateMatchingPredicates();

  [v8 setDefaultQueryPredicate:v17];
  v18 = [WDDataListViewController alloc];
  v19 = [(WDSampleListDataProvider *)self displayType];
  v20 = [(WDSampleListDataProvider *)self profile];
  v21 = [(WDDataListViewController *)v18 initWithDisplayType:v19 profile:v20 dataProvider:v8 usingInsetStyling:1];

  return v21;
}

@end