@interface HKAudiogramAverageLevelSeries
+ (id)audiogramAverageLevelSeriesWithColor:(id)color;
- (HKAudiogramAverageLevelSeries)init;
@end

@implementation HKAudiogramAverageLevelSeries

- (HKAudiogramAverageLevelSeries)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(HKLineSeries *)&v3 init];
}

+ (id)audiogramAverageLevelSeriesWithColor:(id)color
{
  colorCopy = color;
  v4 = _s8HealthUI27AudiogramAverageLevelSeriesC04makecdeF012primaryColorACSo7UIColorC_tFZ_0(colorCopy);

  return v4;
}

@end