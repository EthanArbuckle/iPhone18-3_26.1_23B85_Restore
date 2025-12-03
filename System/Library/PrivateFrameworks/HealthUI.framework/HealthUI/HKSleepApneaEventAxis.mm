@interface HKSleepApneaEventAxis
- (HKSleepApneaEventAxis)initWithConfiguration:(id)configuration;
- (HKSleepApneaEventAxis)initWithDisplayType:(id)type;
- (id)findAxisLabelsInModelRange:(id)range zoomScale:(double)scale;
@end

@implementation HKSleepApneaEventAxis

- (HKSleepApneaEventAxis)initWithDisplayType:(id)type
{
  *(&self->super.super.super.isa + OBJC_IVAR___HKSleepApneaEventAxis_displayType) = type;
  v5 = objc_allocWithZone(HKNumericAxisConfiguration);
  typeCopy = type;
  v7 = [v5 init];
  v8 = objc_opt_self();
  v9 = v7;
  preferredAxisStyle = [v8 preferredAxisStyle];
  [v9 setPreferredStyle_];

  v13.receiver = self;
  v13.super_class = type metadata accessor for SleepApneaEventAxis();
  v11 = [(HKNumericAxis *)&v13 initWithConfiguration:v9];

  return v11;
}

- (id)findAxisLabelsInModelRange:(id)range zoomScale:(double)scale
{
  selfCopy = self;
  rangeCopy = range;
  v7 = sub_1C3C92158(range);

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

- (HKSleepApneaEventAxis)initWithConfiguration:(id)configuration
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end