@interface CHBPie3DType
+ (id)chdChartTypeWithState:(id)state;
@end

@implementation CHBPie3DType

+ (id)chdChartTypeWithState:(id)state
{
  stateCopy = state;
  v4 = [CHDPie3DType alloc];
  chart = [stateCopy chart];
  v6 = [(CHDPie2DType *)v4 initWithChart:chart];

  [CHBPie2DType readWithState:stateCopy chartType:v6];

  return v6;
}

@end