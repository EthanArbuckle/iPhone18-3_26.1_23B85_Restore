@interface HKBalanceChartFormatter
- (HKBalanceChartFormatter)init;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context;
@end

@implementation HKBalanceChartFormatter

- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context
{
  sub_1C3C82884();
  v6 = sub_1C3D202B4();
  selfCopy = self;
  sub_1C3CC4C08(v6, context);

  sub_1C3C27CB4(0, &qword_1EC0866B0);
  v8 = sub_1C3D202A4();

  return v8;
}

- (HKBalanceChartFormatter)init
{
  *(&self->super.super.isa + OBJC_IVAR___HKBalanceChartFormatter____lazy_storage___relativeStatFormatter) = 0;
  *(&self->super.super.isa + OBJC_IVAR___HKBalanceChartFormatter____lazy_storage___valueAttributes) = 0;
  *(&self->super.super.isa + OBJC_IVAR___HKBalanceChartFormatter____lazy_storage___unitAttributes) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for BalanceChartFormatter();
  return [(HKBalanceChartFormatter *)&v3 init];
}

@end