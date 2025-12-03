@interface HRInteractiveChartBloodPressureChartViewController
- (id)makeStandardCurrentValueViewDataSource;
@end

@implementation HRInteractiveChartBloodPressureChartViewController

- (id)makeStandardCurrentValueViewDataSource
{
  v3 = [_TtC15HealthRecordsUI39BloodPressureCurrentValueViewDataSource alloc];
  dateCache = [(HKInteractiveChartViewController *)self dateCache];
  healthStore = [(HKInteractiveChartViewController *)self healthStore];
  selectedRangeFormatter = [(HKInteractiveChartViewController *)self selectedRangeFormatter];
  v7 = [(BloodPressureCurrentValueViewDataSource *)v3 initWithDateCache:dateCache healthStore:healthStore selectedRangeFormatter:selectedRangeFormatter];

  [(HKCurrentValueViewDataSource *)v7 setDelegate:self];

  return v7;
}

@end