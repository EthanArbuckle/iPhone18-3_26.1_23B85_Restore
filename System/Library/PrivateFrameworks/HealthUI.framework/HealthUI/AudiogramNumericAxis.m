@interface AudiogramNumericAxis
- (_TtC8HealthUI20AudiogramNumericAxis)initWithConfiguration:(id)a3;
- (id)findAxisLabelsInModelRange:(id)a3 zoomScale:(double)a4;
@end

@implementation AudiogramNumericAxis

- (id)findAxisLabelsInModelRange:(id)a3 zoomScale:(double)a4
{
  v5 = self;
  v6 = a3;
  v7 = sub_1C3CD7DB0(a3);

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

- (_TtC8HealthUI20AudiogramNumericAxis)initWithConfiguration:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for AudiogramNumericAxis();
  return [(HKNumericAxis *)&v5 initWithConfiguration:a3];
}

@end