@interface WDSleepStageCategoryDataProvider
- (id)_anySample;
- (id)_durationFormatter;
- (id)_sleepSampleAtIndex:(unint64_t)index section:(unint64_t)section;
- (id)objectAtIndex:(unint64_t)index forSection:(unint64_t)section;
- (id)sampleTypes;
- (id)secondaryTextForObject:(id)object;
- (id)textForObject:(id)object;
- (id)titleForSection:(unint64_t)section;
- (id)viewControllerForItemAtIndexPath:(id)path;
- (unint64_t)numberOfObjectsForSection:(unint64_t)section;
- (unint64_t)numberOfSections;
- (void)deleteObjectsAtIndexPath:(id)path healthStore:(id)store options:(unint64_t)options completion:(id)completion;
- (void)removeObjectAtIndex:(unint64_t)index forSection:(unint64_t)section sectionRemoved:(BOOL *)removed;
@end

@implementation WDSleepStageCategoryDataProvider

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

- (unint64_t)numberOfSections
{
  samples = [(WDSampleListDataProvider *)self samples];
  v3 = [samples count] > 0;

  return v3;
}

- (id)_anySample
{
  samples = [(WDSampleListDataProvider *)self samples];
  allSamples = [samples allSamples];
  firstObject = [allSamples firstObject];

  return firstObject;
}

- (id)titleForSection:(unint64_t)section
{
  _anySample = [(WDSleepStageCategoryDataProvider *)self _anySample];
  if (_anySample)
  {
    v4 = [WDTimePeriod sleep_timePeriodForSample:_anySample];
    sleep_titleString = [v4 sleep_titleString];
    value = [_anySample value];
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = v8;
    if ((value - 1) > 4)
    {
      v10 = @"IN_BED_INTERVALS";
    }

    else
    {
      v10 = off_2796E76C8[value - 1];
    }

    v12 = [v8 localizedStringForKey:v10 value:&stru_28641D9B8 table:@"HealthUI-Localizable-Acacia"];
    v11 = [v7 stringWithFormat:v12, sleep_titleString];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)numberOfObjectsForSection:(unint64_t)section
{
  samples = [(WDSampleListDataProvider *)self samples];
  v4 = [samples count];

  return v4;
}

- (id)_sleepSampleAtIndex:(unint64_t)index section:(unint64_t)section
{
  v5 = [(WDSampleListDataProvider *)self samples:index];
  allSamples = [v5 allSamples];
  v7 = [allSamples objectAtIndexedSubscript:index];

  return v7;
}

- (id)objectAtIndex:(unint64_t)index forSection:(unint64_t)section
{
  v4 = [(WDSleepStageCategoryDataProvider *)self _sleepSampleAtIndex:index section:section];
  v5 = [[_WDSleepStageSampleObject alloc] initWithSample:v4];

  return v5;
}

- (id)_durationFormatter
{
  if (_durationFormatter_onceToken != -1)
  {
    [WDSleepStageCategoryDataProvider _durationFormatter];
  }

  v3 = _durationFormatter_formatter;

  return v3;
}

uint64_t __54__WDSleepStageCategoryDataProvider__durationFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA958]);
  v1 = _durationFormatter_formatter;
  _durationFormatter_formatter = v0;

  [_durationFormatter_formatter setUnitsStyle:5];
  v2 = _durationFormatter_formatter;

  return [v2 setAllowedUnits:96];
}

- (id)textForObject:(id)object
{
  dateInterval = [object dateInterval];
  [dateInterval duration];
  v6 = v5;

  _durationFormatter = [(WDSleepStageCategoryDataProvider *)self _durationFormatter];
  v8 = [_durationFormatter stringFromTimeInterval:v6];

  return v8;
}

- (id)secondaryTextForObject:(id)object
{
  dateInterval = [object dateInterval];
  v4 = HKTimeFormatter();
  startDate = [dateInterval startDate];
  v6 = [v4 stringFromDate:startDate];

  v7 = HKTimeFormatter();
  endDate = [dateInterval endDate];
  v9 = [v7 stringFromDate:endDate];

  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v12 = [v11 localizedStringForKey:@"SLEEP_DATA_TIME_RANGE_FORMAT" value:&stru_28641D9B8 table:@"HealthUI-Localizable-Acacia"];
  v13 = [v10 stringWithFormat:v12, v6, v9];

  return v13;
}

- (void)removeObjectAtIndex:(unint64_t)index forSection:(unint64_t)section sectionRemoved:(BOOL *)removed
{
  v9 = [(WDSleepStageCategoryDataProvider *)self _sleepSampleAtIndex:index section:section];
  samples = [(WDSampleListDataProvider *)self samples];
  [samples removeSample:v9];

  samples2 = [(WDSampleListDataProvider *)self samples];
  *removed = [samples2 count] == 0;
}

- (void)deleteObjectsAtIndexPath:(id)path healthStore:(id)store options:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  storeCopy = store;
  pathCopy = path;
  v13 = [pathCopy row];
  section = [pathCopy section];

  v15 = [(WDSleepStageCategoryDataProvider *)self _sleepSampleAtIndex:v13 section:section];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __92__WDSleepStageCategoryDataProvider_deleteObjectsAtIndexPath_healthStore_options_completion___block_invoke;
  v17[3] = &unk_2796E76A8;
  v18 = completionCopy;
  v16 = completionCopy;
  [v15 deleteObjectWithHealthStore:storeCopy options:options completion:v17];
}

uint64_t __92__WDSleepStageCategoryDataProvider_deleteObjectsAtIndexPath_healthStore_options_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)viewControllerForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
  section = [pathCopy section];

  v7 = [(WDSleepStageCategoryDataProvider *)self _sleepSampleAtIndex:v5 section:section];
  v8 = [objc_alloc(MEMORY[0x277D12818]) initWithSample:v7 usingInsetStyling:1 profileName:0 delegate:self];

  return v8;
}

@end