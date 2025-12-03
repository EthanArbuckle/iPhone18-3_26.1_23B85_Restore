@interface AudiogramNumericAxis
- (_TtC8HealthUI20AudiogramNumericAxis)initWithConfiguration:(id)configuration;
- (id)findAxisLabelsInModelRange:(id)range zoomScale:(double)scale;
@end

@implementation AudiogramNumericAxis

- (id)findAxisLabelsInModelRange:(id)range zoomScale:(double)scale
{
  selfCopy = self;
  rangeCopy = range;
  v7 = sub_1C3CD7DB0(range);

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

- (_TtC8HealthUI20AudiogramNumericAxis)initWithConfiguration:(id)configuration
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for AudiogramNumericAxis();
  return [(HKNumericAxis *)&v5 initWithConfiguration:configuration];
}

@end