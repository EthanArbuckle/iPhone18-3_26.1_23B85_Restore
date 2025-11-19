@interface CHBArea3DType
+ (id)chdChartTypeWithState:(id)a3;
@end

@implementation CHBArea3DType

+ (id)chdChartTypeWithState:(id)a3
{
  v3 = a3;
  v4 = [CHDArea3DType alloc];
  v5 = [v3 chart];
  v6 = [(CHDArea3DType *)v4 initWithChart:v5];

  [CHBArea2DType readWithState:v3 chartType:v6];
  v7 = [v3 xlCurrentPlot];
  if (v7)
  {
    v8 = *(v7 + 8);
    if (v8)
    {
      [(CHDArea3DType *)v6 setGapDepth:*(v8 + 26)];
    }
  }

  return v6;
}

@end