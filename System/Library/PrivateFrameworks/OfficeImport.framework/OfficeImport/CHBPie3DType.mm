@interface CHBPie3DType
+ (id)chdChartTypeWithState:(id)a3;
@end

@implementation CHBPie3DType

+ (id)chdChartTypeWithState:(id)a3
{
  v3 = a3;
  v4 = [CHDPie3DType alloc];
  v5 = [v3 chart];
  v6 = [(CHDPie2DType *)v4 initWithChart:v5];

  [CHBPie2DType readWithState:v3 chartType:v6];

  return v6;
}

@end