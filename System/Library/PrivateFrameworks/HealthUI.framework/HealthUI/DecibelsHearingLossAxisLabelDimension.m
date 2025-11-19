@interface DecibelsHearingLossAxisLabelDimension
- (_TtC8HealthUI37DecibelsHearingLossAxisLabelDimension)init;
- (id)stringForLocation:(id)a3 formatterForStepSize:(id)a4;
@end

@implementation DecibelsHearingLossAxisLabelDimension

- (id)stringForLocation:(id)a3 formatterForStepSize:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  [v6 doubleValue];
  v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v14.receiver = v7;
  v14.super_class = type metadata accessor for DecibelsHearingLossAxisLabelDimension();
  v11 = [(HKAxisLabelDimensionScalar *)&v14 stringForLocation:v10 formatterForStepSize:v8];

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