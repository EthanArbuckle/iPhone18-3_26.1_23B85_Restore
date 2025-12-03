@interface CHBLine2DType
+ (id)chdChartTypeWithState:(id)state;
@end

@implementation CHBLine2DType

+ (id)chdChartTypeWithState:(id)state
{
  stateCopy = state;
  v4 = [CHDLine2DType alloc];
  chart = [stateCopy chart];
  v6 = [(CHDLine2DType *)v4 initWithChart:chart];

  if (*([stateCopy xlCurrentPlot] + 141) == 1)
  {
    if ([stateCopy axisGroup] == 1)
    {
      chart2 = [stateCopy chart];
      plotArea = [chart2 plotArea];
      [plotArea setContainsVolumeStockType:1];
    }

    else
    {
      [(CHDLine2DType *)v6 setStockType:1];
    }
  }

  [CHBLineType readWithState:stateCopy chartType:v6];

  return v6;
}

@end