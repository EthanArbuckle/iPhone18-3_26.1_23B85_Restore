@interface CHBArea3DType
+ (id)chdChartTypeWithState:(id)state;
@end

@implementation CHBArea3DType

+ (id)chdChartTypeWithState:(id)state
{
  stateCopy = state;
  v4 = [CHDArea3DType alloc];
  chart = [stateCopy chart];
  v6 = [(CHDArea3DType *)v4 initWithChart:chart];

  [CHBArea2DType readWithState:stateCopy chartType:v6];
  xlCurrentPlot = [stateCopy xlCurrentPlot];
  if (xlCurrentPlot)
  {
    v8 = *(xlCurrentPlot + 8);
    if (v8)
    {
      [(CHDArea3DType *)v6 setGapDepth:*(v8 + 26)];
    }
  }

  return v6;
}

@end