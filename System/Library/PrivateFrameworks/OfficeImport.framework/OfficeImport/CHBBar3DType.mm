@interface CHBBar3DType
+ (id)chdChartTypeWithState:(id)state;
@end

@implementation CHBBar3DType

+ (id)chdChartTypeWithState:(id)state
{
  stateCopy = state;
  v4 = [CHDBar3DType alloc];
  chart = [stateCopy chart];
  v6 = [(CHDBar3DType *)v4 initWithChart:chart];

  [CHBBar2DType readWithState:stateCopy chartType:v6];
  xlCurrentPlot = [stateCopy xlCurrentPlot];
  if (xlCurrentPlot)
  {
    v8 = *(xlCurrentPlot + 8);
    if (v8)
    {
      [(CHDBar3DType *)v6 setGapDepth:*(v8 + 26)];
    }
  }

  xlCurrentDefaultSeriesFormat = [stateCopy xlCurrentDefaultSeriesFormat];
  if (xlCurrentDefaultSeriesFormat)
  {
    [(CHDBar3DType *)v6 setShapeType:chdShapeTypeFromXlShapeTypeEnum(*(xlCurrentDefaultSeriesFormat + 76))];
  }

  return v6;
}

@end