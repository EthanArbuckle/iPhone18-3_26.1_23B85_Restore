@interface HKBreathingDisturbancesAxis
+ (id)standardAxisWith:(id)with;
- (HKBreathingDisturbancesAxis)initWithConfiguration:(id)configuration;
- (id)adjustValueRangeForLabels:(id)labels;
- (id)findAxisLabelsInModelRange:(id)range zoomScale:(double)scale;
@end

@implementation HKBreathingDisturbancesAxis

+ (id)standardAxisWith:(id)with
{
  v4 = objc_allocWithZone(type metadata accessor for BreathingDisturbancesAxis());
  v5 = BreathingDisturbancesAxis.init(displayType:)(with);

  return v5;
}

- (id)findAxisLabelsInModelRange:(id)range zoomScale:(double)scale
{
  selfCopy = self;
  rangeCopy = range;
  v7 = sub_1C3CF5FD8(range);

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

- (id)adjustValueRangeForLabels:(id)labels
{
  labelsCopy = labels;
  selfCopy = self;
  v6 = sub_1C3CF573C(labelsCopy);

  return v6;
}

- (HKBreathingDisturbancesAxis)initWithConfiguration:(id)configuration
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end