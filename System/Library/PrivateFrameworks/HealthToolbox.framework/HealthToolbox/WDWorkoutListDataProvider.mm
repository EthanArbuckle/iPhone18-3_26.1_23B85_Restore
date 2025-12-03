@interface WDWorkoutListDataProvider
- (id)sampleTypes;
- (id)textForObject:(id)object;
- (id)timePeriodFormatter;
- (id)titleForSection:(unint64_t)section;
@end

@implementation WDWorkoutListDataProvider

- (id)sampleTypes
{
  v6[1] = *MEMORY[0x277D85DE8];
  workoutType = [MEMORY[0x277CCD720] workoutType];
  v6[0] = workoutType;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)titleForSection:(unint64_t)section
{
  samples = [(WDSampleListDataProvider *)self samples];
  if ([samples count] < 1)
  {
    v5 = &stru_28641D9B8;
  }

  else
  {
    v4 = WDBundle();
    v5 = [v4 localizedStringForKey:@"WORKOUTS" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  }

  return v5;
}

- (id)textForObject:(id)object
{
  v4 = MEMORY[0x277CCABB0];
  [object duration];
  v5 = [v4 numberWithDouble:?];
  timePeriodFormatter = [(WDWorkoutListDataProvider *)self timePeriodFormatter];
  v7 = [timePeriodFormatter stringFromNumber:v5 displayType:0 unitController:0];

  return v7;
}

- (id)timePeriodFormatter
{
  v2 = timePeriodFormatter___formatter;
  if (!timePeriodFormatter___formatter)
  {
    v3 = objc_alloc_init(MEMORY[0x277D12B48]);
    v4 = timePeriodFormatter___formatter;
    timePeriodFormatter___formatter = v3;

    v2 = timePeriodFormatter___formatter;
  }

  return v2;
}

@end