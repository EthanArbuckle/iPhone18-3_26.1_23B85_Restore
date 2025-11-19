@interface HRInteractiveChartBloodPressureChartViewController
- (id)makeStandardCurrentValueViewDataSource;
@end

@implementation HRInteractiveChartBloodPressureChartViewController

- (id)makeStandardCurrentValueViewDataSource
{
  v3 = [_TtC15HealthRecordsUI39BloodPressureCurrentValueViewDataSource alloc];
  v4 = [(HKInteractiveChartViewController *)self dateCache];
  v5 = [(HKInteractiveChartViewController *)self healthStore];
  v6 = [(HKInteractiveChartViewController *)self selectedRangeFormatter];
  v7 = [(BloodPressureCurrentValueViewDataSource *)v3 initWithDateCache:v4 healthStore:v5 selectedRangeFormatter:v6];

  [(HKCurrentValueViewDataSource *)v7 setDelegate:self];

  return v7;
}

@end