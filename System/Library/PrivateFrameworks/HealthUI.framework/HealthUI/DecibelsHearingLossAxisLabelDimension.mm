@interface DecibelsHearingLossAxisLabelDimension
- (_TtC8HealthUI37DecibelsHearingLossAxisLabelDimension)init;
- (id)stringForLocation:(id)location formatterForStepSize:(id)size;
@end

@implementation DecibelsHearingLossAxisLabelDimension

- (id)stringForLocation:(id)location formatterForStepSize:(id)size
{
  locationCopy = location;
  selfCopy = self;
  sizeCopy = size;
  [locationCopy doubleValue];
  initWithDouble_ = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v14.receiver = selfCopy;
  v14.super_class = type metadata accessor for DecibelsHearingLossAxisLabelDimension();
  v11 = [(HKAxisLabelDimensionScalar *)&v14 stringForLocation:initWithDouble_ formatterForStepSize:sizeCopy];

  if (v11)
  {
    sub_1C3D20104();

    v12 = sub_1C3D200C4();
  }

  else
  {

    v12 = 0;
  }

  return v12;
}

- (_TtC8HealthUI37DecibelsHearingLossAxisLabelDimension)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DecibelsHearingLossAxisLabelDimension();
  return [(DecibelsHearingLossAxisLabelDimension *)&v3 init];
}

@end