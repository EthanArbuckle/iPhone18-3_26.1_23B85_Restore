@interface HKBreathingDisturbancesAxis
+ (id)standardAxisWith:(id)a3;
- (HKBreathingDisturbancesAxis)initWithConfiguration:(id)a3;
- (id)adjustValueRangeForLabels:(id)a3;
- (id)findAxisLabelsInModelRange:(id)a3 zoomScale:(double)a4;
@end

@implementation HKBreathingDisturbancesAxis

+ (id)standardAxisWith:(id)a3
{
  v4 = objc_allocWithZone(type metadata accessor for BreathingDisturbancesAxis());
  v5 = BreathingDisturbancesAxis.init(displayType:)(a3);

  return v5;
}

- (id)findAxisLabelsInModelRange:(id)a3 zoomScale:(double)a4
{
  v5 = self;
  v6 = a3;
  v7 = sub_1C3CF5FD8(a3);

  if (v7)
  {
    sub_1C3C27CB4(0, &qword_1EC086E80);
    v8 = sub_1C3D202A4();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)adjustValueRangeForLabels:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1C3CF573C(v4);

  return v6;
}

- (HKBreathingDisturbancesAxis)initWithConfiguration:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end