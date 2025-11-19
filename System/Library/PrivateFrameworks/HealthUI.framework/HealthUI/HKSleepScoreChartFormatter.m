@interface HKSleepScoreChartFormatter
- (HKSleepScoreChartFormatter)init;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4;
@end

@implementation HKSleepScoreChartFormatter

- (HKSleepScoreChartFormatter)init
{
  *(&self->super.super.isa + OBJC_IVAR___HKSleepScoreChartFormatter____lazy_storage___valueAttributes) = 0;
  *(&self->super.super.isa + OBJC_IVAR___HKSleepScoreChartFormatter____lazy_storage___unitAttributes) = 0;
  v3 = OBJC_IVAR___HKSleepScoreChartFormatter_dataSourceContext;
  v4 = sub_1C3D1E654();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  v6.receiver = self;
  v6.super_class = type metadata accessor for SleepScoreChartFormatter();
  return [(HKSleepScoreChartFormatter *)&v6 init];
}

- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4
{
  sub_1C3C82884();
  v6 = sub_1C3D202B4();
  v7 = self;
  sub_1C3CAA4E0(v6, a4);

  sub_1C3C27CB4(0, &qword_1EC0866B0);
  v8 = sub_1C3D202A4();

  return v8;
}

@end