@interface BalanceYAxis
- (_TtC8HealthUI12BalanceYAxis)initWithConfiguration:(id)configuration;
- (id)findAxisLabelsInModelRange:(id)range zoomScale:(double)scale;
@end

@implementation BalanceYAxis

- (id)findAxisLabelsInModelRange:(id)range zoomScale:(double)scale
{
  selfCopy = self;
  rangeCopy = range;
  v7 = sub_1C3CFA794(range);

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

- (_TtC8HealthUI12BalanceYAxis)initWithConfiguration:(id)configuration
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end