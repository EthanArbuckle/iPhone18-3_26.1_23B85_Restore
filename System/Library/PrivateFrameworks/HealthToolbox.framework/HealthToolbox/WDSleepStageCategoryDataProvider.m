@interface WDSleepStageCategoryDataProvider
- (id)_anySample;
- (id)_durationFormatter;
- (id)_sleepSampleAtIndex:(unint64_t)a3 section:(unint64_t)a4;
- (id)objectAtIndex:(unint64_t)a3 forSection:(unint64_t)a4;
- (id)sampleTypes;
- (id)secondaryTextForObject:(id)a3;
- (id)textForObject:(id)a3;
- (id)titleForSection:(unint64_t)a3;
- (id)viewControllerForItemAtIndexPath:(id)a3;
- (unint64_t)numberOfObjectsForSection:(unint64_t)a3;
- (unint64_t)numberOfSections;
- (void)deleteObjectsAtIndexPath:(id)a3 healthStore:(id)a4 options:(unint64_t)a5 completion:(id)a6;
- (void)removeObjectAtIndex:(unint64_t)a3 forSection:(unint64_t)a4 sectionRemoved:(BOOL *)a5;
@end

@implementation WDSleepStageCategoryDataProvider

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

- (unint64_t)numberOfSections
{
  v2 = [(WDSampleListDataProvider *)self samples];
  v3 = [v2 count] > 0;

  return v3;
}

- (id)_anySample
{
  v2 = [(WDSampleListDataProvider *)self samples];
  v3 = [v2 allSamples];
  v4 = [v3 firstObject];

  return v4;
}

- (id)titleForSection:(unint64_t)a3
{
  v3 = [(WDSleepStageCategoryDataProvider *)self _anySample];
  if (v3)
  {
    v4 = [WDTimePeriod sleep_timePeriodForSample:v3];
    v5 = [v4 sleep_titleString];
    v6 = [v3 value];
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = v8;
    if ((v6 - 1) > 4)
    {
      v10 = @"IN_BED_INTERVALS";
    }

    else
    {
      v10 = off_2796E76C8[v6 - 1];
    }

    v12 = [v8 localizedStringForKey:v10 value:&stru_28641D9B8 table:@"HealthUI-Localizable-Acacia"];
    v11 = [v7 stringWithFormat:v12, v5];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)numberOfObjectsForSection:(unint64_t)a3
{
  v3 = [(WDSampleListDataProvider *)self samples];
  v4 = [v3 count];

  return v4;
}

- (id)_sleepSampleAtIndex:(unint64_t)a3 section:(unint64_t)a4
{
  v5 = [(WDSampleListDataProvider *)self samples:a3];
  v6 = [v5 allSamples];
  v7 = [v6 objectAtIndexedSubscript:a3];

  return v7;
}

- (id)objectAtIndex:(unint64_t)a3 forSection:(unint64_t)a4
{
  v4 = [(WDSleepStageCategoryDataProvider *)self _sleepSampleAtIndex:a3 section:a4];
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

- (id)textForObject:(id)a3
{
  v4 = [a3 dateInterval];
  [v4 duration];
  v6 = v5;

  v7 = [(WDSleepStageCategoryDataProvider *)self _durationFormatter];
  v8 = [v7 stringFromTimeInterval:v6];

  return v8;
}

- (id)secondaryTextForObject:(id)a3
{
  v3 = [a3 dateInterval];
  v4 = HKTimeFormatter();
  v5 = [v3 startDate];
  v6 = [v4 stringFromDate:v5];

  v7 = HKTimeFormatter();
  v8 = [v3 endDate];
  v9 = [v7 stringFromDate:v8];

  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v12 = [v11 localizedStringForKey:@"SLEEP_DATA_TIME_RANGE_FORMAT" value:&stru_28641D9B8 table:@"HealthUI-Localizable-Acacia"];
  v13 = [v10 stringWithFormat:v12, v6, v9];

  return v13;
}

- (void)removeObjectAtIndex:(unint64_t)a3 forSection:(unint64_t)a4 sectionRemoved:(BOOL *)a5
{
  v9 = [(WDSleepStageCategoryDataProvider *)self _sleepSampleAtIndex:a3 section:a4];
  v7 = [(WDSampleListDataProvider *)self samples];
  [v7 removeSample:v9];

  v8 = [(WDSampleListDataProvider *)self samples];
  *a5 = [v8 count] == 0;
}

- (void)deleteObjectsAtIndexPath:(id)a3 healthStore:(id)a4 options:(unint64_t)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [v12 row];
  v14 = [v12 section];

  v15 = [(WDSleepStageCategoryDataProvider *)self _sleepSampleAtIndex:v13 section:v14];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __92__WDSleepStageCategoryDataProvider_deleteObjectsAtIndexPath_healthStore_options_completion___block_invoke;
  v17[3] = &unk_2796E76A8;
  v18 = v10;
  v16 = v10;
  [v15 deleteObjectWithHealthStore:v11 options:a5 completion:v17];
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

- (id)viewControllerForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 row];
  v6 = [v4 section];

  v7 = [(WDSleepStageCategoryDataProvider *)self _sleepSampleAtIndex:v5 section:v6];
  v8 = [objc_alloc(MEMORY[0x277D12818]) initWithSample:v7 usingInsetStyling:1 profileName:0 delegate:self];

  return v8;
}

@end