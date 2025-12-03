@interface CHBLine3DType
+ (id)chdChartTypeWithState:(id)state;
@end

@implementation CHBLine3DType

+ (id)chdChartTypeWithState:(id)state
{
  stateCopy = state;
  v4 = [CHDLine3DType alloc];
  chart = [stateCopy chart];
  v6 = [(CHDLine3DType *)v4 initWithChart:chart];

  [CHBLineType readWithState:stateCopy chartType:v6];
  xlCurrentPlot = [stateCopy xlCurrentPlot];
  if (xlCurrentPlot)
  {
    v8 = *(xlCurrentPlot + 8);
    if (v8)
    {
      [(CHDLine3DType *)v6 setGapDepth:*(v8 + 26)];
    }
  }

  return v6;
}

@end