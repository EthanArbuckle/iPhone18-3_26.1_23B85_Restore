@interface BalanceYAxis
- (_TtC8HealthUI12BalanceYAxis)initWithConfiguration:(id)a3;
- (id)findAxisLabelsInModelRange:(id)a3 zoomScale:(double)a4;
@end

@implementation BalanceYAxis

- (id)findAxisLabelsInModelRange:(id)a3 zoomScale:(double)a4
{
  v5 = self;
  v6 = a3;
  v7 = sub_1C3CFA794(a3);

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

- (_TtC8HealthUI12BalanceYAxis)initWithConfiguration:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end