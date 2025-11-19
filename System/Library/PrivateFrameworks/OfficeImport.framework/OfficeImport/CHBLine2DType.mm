@interface CHBLine2DType
+ (id)chdChartTypeWithState:(id)a3;
@end

@implementation CHBLine2DType

+ (id)chdChartTypeWithState:(id)a3
{
  v3 = a3;
  v4 = [CHDLine2DType alloc];
  v5 = [v3 chart];
  v6 = [(CHDLine2DType *)v4 initWithChart:v5];

  if (*([v3 xlCurrentPlot] + 141) == 1)
  {
    if ([v3 axisGroup] == 1)
    {
      v7 = [v3 chart];
      v8 = [v7 plotArea];
      [v8 setContainsVolumeStockType:1];
    }

    else
    {
      [(CHDLine2DType *)v6 setStockType:1];
    }
  }

  [CHBLineType readWithState:v3 chartType:v6];

  return v6;
}

@end