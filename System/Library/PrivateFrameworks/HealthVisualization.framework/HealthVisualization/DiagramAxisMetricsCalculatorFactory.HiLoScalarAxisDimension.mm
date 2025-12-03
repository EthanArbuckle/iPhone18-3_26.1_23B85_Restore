@interface DiagramAxisMetricsCalculatorFactory.HiLoScalarAxisDimension
- (_TtCC19HealthVisualization35DiagramAxisMetricsCalculatorFactory23HiLoScalarAxisDimension)init;
- (id)stringForLocation:(id)location formatterForStepSize:(id)size;
@end

@implementation DiagramAxisMetricsCalculatorFactory.HiLoScalarAxisDimension

- (id)stringForLocation:(id)location formatterForStepSize:(id)size
{
  selfCopy = self;
  locationCopy = location;
  sizeCopy = size;
  sub_1D14FCDF0(location);
  v10 = v9;

  if (v10)
  {
    v11 = sub_1D15A3EF8();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (_TtCC19HealthVisualization35DiagramAxisMetricsCalculatorFactory23HiLoScalarAxisDimension)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end