@interface HKAudiogramAverageLevelSeries
+ (id)audiogramAverageLevelSeriesWithColor:(id)a3;
- (HKAudiogramAverageLevelSeries)init;
@end

@implementation HKAudiogramAverageLevelSeries

- (HKAudiogramAverageLevelSeries)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(HKLineSeries *)&v3 init];
}

+ (id)audiogramAverageLevelSeriesWithColor:(id)a3
{
  v3 = a3;
  v4 = _s8HealthUI27AudiogramAverageLevelSeriesC04makecdeF012primaryColorACSo7UIColorC_tFZ_0(v3);

  return v4;
}

@end