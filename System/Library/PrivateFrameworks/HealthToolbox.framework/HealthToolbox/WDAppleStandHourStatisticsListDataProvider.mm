@interface WDAppleStandHourStatisticsListDataProvider
- (WDAppleStandHourStatisticsListDataProvider)initWithDisplayType:(id)type profile:(id)profile;
- (id)sampleTypes;
- (id)secondaryTextForObject:(id)object;
- (id)textForObject:(id)object;
- (id)titleForSection:(unint64_t)section;
- (id)viewControllerForItemAtIndexPath:(id)path;
- (void)_callUpdateHandler;
- (void)_removeSamplesInDateRange:(id)range;
- (void)deleteAllData;
- (void)deleteObjectsAtIndexPath:(id)path healthStore:(id)store options:(unint64_t)options completion:(id)completion;
- (void)removeObjectAtIndex:(unint64_t)index forSection:(unint64_t)section sectionRemoved:(BOOL *)removed;
@end

@implementation WDAppleStandHourStatisticsListDataProvider

- (WDAppleStandHourStatisticsListDataProvider)initWithDisplayType:(id)type profile:(id)profile
{
  profileCopy = profile;
  v18.receiver = self;
  v18.super_class = WDAppleStandHourStatisticsListDataProvider;
  v7 = [(WDSampleListDataProvider *)&v18 initWithDisplayType:type profile:profileCopy];
  v8 = v7;
  if (v7)
  {
    displayType = [(WDSampleListDataProvider *)v7 displayType];
    unitController = [profileCopy unitController];
    displayType2 = [(WDSampleListDataProvider *)v8 displayType];
    v12 = [unitController unitForDisplayType:displayType2];
    v13 = [displayType hk_valueFormatterForUnit:v12];
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
  samples = [(WDSampleListDataProvider *)self samples];
  allSamples = [samples allSamples];

  if ([allSamples count])
  {
    firstObject = [allSamples firstObject];
    startDate = [firstObject startDate];

    lastObject = [allSamples lastObject];
    endDate = [lastObject endDate];

    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v10 = [currentCalendar startOfDayForDate:startDate];

    currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
    v12 = [currentCalendar2 hk_startOfTomorrowForDate:endDate];

    v13 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v13 setDay:1];
    v14 = MEMORY[0x277CCDE30];
    samples2 = [(WDSampleListDataProvider *)self samples];
    allSamples2 = [samples2 allSamples];
    v17 = HKCalendarDateTransformNone();
    v18 = [v14 calculateTotalDurationsWithTimePeriods:allSamples2 startDate:v10 endDate:v12 intervalComponents:v13 startOfDayTransform:v17];
    v19 = [v18 mutableCopy];
    totalsByTimePeriod = self->_totalsByTimePeriod;
    self->_totalsByTimePeriod = v19;

    allKeys = [(NSMutableDictionary *)self->_totalsByTimePeriod allKeys];
    v22 = [allKeys mutableCopy];
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
  displayType = [(WDSampleListDataProvider *)self displayType];
  sampleType = [displayType sampleType];
  v7[0] = sampleType;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)titleForSection:(unint64_t)section
{
  if ([(NSMutableArray *)self->_orderedTimePeriods count])
  {
    unitController = [(WDSampleListDataProvider *)self unitController];
    displayType = [(WDSampleListDataProvider *)self displayType];
    v6 = [unitController localizedDisplayNameForDisplayType:displayType];
  }

  else
  {
    v6 = &stru_28641D9B8;
  }

  return v6;
}

- (id)textForObject:(id)object
{
  v4 = [(NSMutableDictionary *)self->_totalsByTimePeriod objectForKeyedSubscript:object];
  valueFormatter = self->_valueFormatter;
  displayType = [(WDSampleListDataProvider *)self displayType];
  unitController = [(WDSampleListDataProvider *)self unitController];
  v8 = [(HKDisplayTypeValueFormatter *)valueFormatter stringFromValue:v4 displayType:displayType unitController:unitController];

  return v8;
}

- (id)secondaryTextForObject:(id)object
{
  dateFormatter = self->_dateFormatter;
  startDate = [object startDate];
  v5 = [(NSDateFormatter *)dateFormatter stringFromDate:startDate];

  return v5;
}

- (void)removeObjectAtIndex:(unint64_t)index forSection:(unint64_t)section sectionRemoved:(BOOL *)removed
{
  removed = [(NSMutableArray *)self->_orderedTimePeriods objectAtIndexedSubscript:index, section, removed];
  [(NSMutableArray *)self->_orderedTimePeriods removeObjectAtIndex:index];
  [(NSMutableDictionary *)self->_totalsByTimePeriod removeObjectForKey:removed];
  [(WDAppleStandHourStatisticsListDataProvider *)self _removeSamplesInDateRange:removed];
}

- (void)_removeSamplesInDateRange:(id)range
{
  v30 = *MEMORY[0x277D85DE8];
  rangeCopy = range;
  startDate = [rangeCopy startDate];
  v23 = rangeCopy;
  endDate = [rangeCopy endDate];
  v24 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  selfCopy = self;
  samples = [(WDSampleListDataProvider *)self samples];
  allSamples = [samples allSamples];

  v9 = [allSamples countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(allSamples);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        startDate2 = [v13 startDate];
        IsLargerOrEqual = HKUIObjectIsLargerOrEqual();

        startDate3 = [v13 startDate];
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
          uUID = [v13 UUID];
          [v24 addObject:uUID];
        }
      }

      v10 = [allSamples countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  samples2 = [(WDSampleListDataProvider *)selfCopy samples];
  [samples2 removeSamplesWithUUIDs:v24];

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

- (void)deleteObjectsAtIndexPath:(id)path healthStore:(id)store options:(unint64_t)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  orderedTimePeriods = self->_orderedTimePeriods;
  storeCopy = store;
  v13 = -[NSMutableArray objectAtIndexedSubscript:](orderedTimePeriods, "objectAtIndexedSubscript:", [path row]);
  displayType = [(WDSampleListDataProvider *)self displayType];
  sampleType = [displayType sampleType];

  v16 = MEMORY[0x277CCD838];
  startDate = [v13 startDate];
  endDate = [v13 endDate];
  v19 = [v16 predicateForSamplesWithStartDate:startDate endDate:endDate options:1];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __102__WDAppleStandHourStatisticsListDataProvider_deleteObjectsAtIndexPath_healthStore_options_completion___block_invoke;
  v21[3] = &unk_2796E7010;
  v22 = completionCopy;
  v20 = completionCopy;
  [storeCopy deleteObjectsOfType:sampleType predicate:v19 options:optionsCopy & 2 withCompletion:v21];
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

- (id)viewControllerForItemAtIndexPath:(id)path
{
  pathCopy = path;
  displayType = [(WDSampleListDataProvider *)self displayType];
  profile = [(WDSampleListDataProvider *)self profile];
  unitController = [(WDSampleListDataProvider *)self unitController];
  v8 = [displayType wd_listViewControllerDataProviderWithProfile:profile unitController:unitController isHierarchical:0];

  orderedTimePeriods = self->_orderedTimePeriods;
  v10 = [pathCopy row];

  v11 = [(NSMutableArray *)orderedTimePeriods objectAtIndexedSubscript:v10];
  v12 = MEMORY[0x277CCD838];
  startDate = [v11 startDate];
  endDate = [v11 endDate];
  v15 = [v12 predicateForSamplesWithStartDate:startDate endDate:endDate options:0];

  defaultQueryPredicate = [(WDSampleListDataProvider *)self defaultQueryPredicate];
  v17 = HKUIPredicateMatchingPredicates();

  [v8 setDefaultQueryPredicate:v17];
  v18 = [WDDataListViewController alloc];
  displayType2 = [(WDSampleListDataProvider *)self displayType];
  profile2 = [(WDSampleListDataProvider *)self profile];
  v21 = [(WDDataListViewController *)v18 initWithDisplayType:displayType2 profile:profile2 dataProvider:v8 usingInsetStyling:1];

  return v21;
}

@end