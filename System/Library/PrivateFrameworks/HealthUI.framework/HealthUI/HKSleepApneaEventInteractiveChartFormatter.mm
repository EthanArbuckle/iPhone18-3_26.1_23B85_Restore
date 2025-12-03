@interface HKSleepApneaEventInteractiveChartFormatter
- (HKSleepApneaEventInteractiveChartFormatter)initWithLocalizedCategoryName:(id)name;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context;
@end

@implementation HKSleepApneaEventInteractiveChartFormatter

- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context
{
  sub_1C3C82884();
  v6 = sub_1C3D202B4();
  selfCopy = self;
  sub_1C3C822E0(v6, context);

  sub_1C3C27CB4(0, &qword_1EC0866B0);
  v8 = sub_1C3D202A4();

  return v8;
}

- (HKSleepApneaEventInteractiveChartFormatter)initWithLocalizedCategoryName:(id)name
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SleepApneaEventInteractiveChartFormatter();
  return [(HKInteractiveChartCategoryValueFormatter *)&v5 initWithLocalizedCategoryName:name];
}

@end