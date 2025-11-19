@interface HKSleepApneaEventAxis
- (HKSleepApneaEventAxis)initWithConfiguration:(id)a3;
- (HKSleepApneaEventAxis)initWithDisplayType:(id)a3;
- (id)findAxisLabelsInModelRange:(id)a3 zoomScale:(double)a4;
@end

@implementation HKSleepApneaEventAxis

- (HKSleepApneaEventAxis)initWithDisplayType:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___HKSleepApneaEventAxis_displayType) = a3;
  v5 = objc_allocWithZone(HKNumericAxisConfiguration);
  v6 = a3;
  v7 = [v5 init];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 preferredAxisStyle];
  [v9 setPreferredStyle_];

  v13.receiver = self;
  v13.super_class = type metadata accessor for SleepApneaEventAxis();
  v11 = [(HKNumericAxis *)&v13 initWithConfiguration:v9];

  return v11;
}

- (id)findAxisLabelsInModelRange:(id)a3 zoomScale:(double)a4
{
  v5 = self;
  v6 = a3;
  v7 = sub_1C3C92158(a3);

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

- (HKSleepApneaEventAxis)initWithConfiguration:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end