@interface HKSleepApneaEventInteractiveChartFormatter
- (HKSleepApneaEventInteractiveChartFormatter)initWithLocalizedCategoryName:(id)a3;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4;
@end

@implementation HKSleepApneaEventInteractiveChartFormatter

- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4
{
  sub_1C3C82884();
  v6 = sub_1C3D202B4();
  v7 = self;
  sub_1C3C822E0(v6, a4);

  sub_1C3C27CB4(0, &qword_1EC0866B0);
  v8 = sub_1C3D202A4();

  return v8;
}

- (HKSleepApneaEventInteractiveChartFormatter)initWithLocalizedCategoryName:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SleepApneaEventInteractiveChartFormatter();
  return [(HKInteractiveChartCategoryValueFormatter *)&v5 initWithLocalizedCategoryName:a3];
}

@end