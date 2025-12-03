@interface HKHandwashingDateRangeDataSourceDelegate
- (HKHandwashingDateRangeDataSourceDelegate)initWithGoal:(double)goal;
- (id)dataForDateRange:(id)range timeScope:(int64_t)scope;
@end

@implementation HKHandwashingDateRangeDataSourceDelegate

- (HKHandwashingDateRangeDataSourceDelegate)initWithGoal:(double)goal
{
  v7.receiver = self;
  v7.super_class = HKHandwashingDateRangeDataSourceDelegate;
  v4 = [(HKHandwashingDateRangeDataSourceDelegate *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(HKHandwashingDateRangeDataSourceDelegate *)v4 setGoal:goal];
  }

  return v5;
}

- (id)dataForDateRange:(id)range timeScope:(int64_t)scope
{
  rangeCopy = range;
  v7 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:scope];
  v8 = [v7 seriesPointIntervalComponentsAtResolution:0];
  v9 = +[HKGraphZoomLevelConfiguration defaultCalendar];
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = objc_alloc(MEMORY[0x1E696AB80]);
  startDate = [rangeCopy startDate];
  endDate = [rangeCopy endDate];

  v14 = [v11 initWithStartDate:startDate endDate:endDate];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __71__HKHandwashingDateRangeDataSourceDelegate_dataForDateRange_timeScope___block_invoke;
  v19[3] = &unk_1E81BA568;
  v19[4] = self;
  v15 = v10;
  v20 = v15;
  [v9 hk_enumerateDateInterval:v14 byDateComponents:v8 block:v19];

  v16 = v20;
  v17 = v15;

  return v15;
}

void __71__HKHandwashingDateRangeDataSourceDelegate_dataForDateRange_timeScope___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HKHandwashingEventChartPoint alloc];
  v5 = [v3 startDate];
  v6 = [v3 endDate];

  v9 = [(HKHandwashingEventChartPoint *)v4 initWithStartDate:v5 endDate:v6];
  v7 = MEMORY[0x1E696AD98];
  [*(a1 + 32) goal];
  v8 = [v7 numberWithDouble:?];
  [(HKHandwashingEventChartPoint *)v9 setAverageDuration:v8];

  [*(a1 + 40) addObject:v9];
}

@end