@interface SleepScoreYAxis
- (_TtC8HealthUI15SleepScoreYAxis)initWithConfiguration:(id)configuration;
- (id)findAxisLabelsInModelRange:(id)range zoomScale:(double)scale;
@end

@implementation SleepScoreYAxis

- (id)findAxisLabelsInModelRange:(id)range zoomScale:(double)scale
{
  selfCopy = self;
  rangeCopy = range;
  v7 = _s8HealthUI15SleepScoreYAxisC14findAxisLabels12inModelRange9zoomScaleSaySo11HKAxisLabelCGSgSo07HKValueK0CyyXlGSg_12CoreGraphics7CGFloatVtF_0(range);

  if (v7)
  {
    sub_1C3C3B19C();
    v8 = sub_1C3D202A4();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (_TtC8HealthUI15SleepScoreYAxis)initWithConfiguration:(id)configuration
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end