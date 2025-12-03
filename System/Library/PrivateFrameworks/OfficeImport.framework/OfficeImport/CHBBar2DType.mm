@interface CHBBar2DType
+ (id)chdChartTypeWithState:(id)state;
+ (void)readWithState:(id)state chartType:(id)type;
@end

@implementation CHBBar2DType

+ (id)chdChartTypeWithState:(id)state
{
  stateCopy = state;
  v4 = [CHDBar2DType alloc];
  chart = [stateCopy chart];
  v6 = [(CHDBar2DType *)v4 initWithChart:chart];

  [CHBBar2DType readWithState:stateCopy chartType:v6];

  return v6;
}

+ (void)readWithState:(id)state chartType:(id)type
{
  stateCopy = state;
  typeCopy = type;
  xlCurrentPlot = [stateCopy xlCurrentPlot];
  v7 = xlCurrentPlot;
  if (xlCurrentPlot)
  {
    [typeCopy setOverlap:*(xlCurrentPlot + 160)];
    [typeCopy setGapWidth:*(v7 + 162)];
    [typeCopy setColumn:XlChartBar::isTranspose((v7 + 144)) ^ 1];
    isStacked = XlChartBar::isStacked((v7 + 144));
    [CHBChartTypeWithGrouping setGrouping:typeCopy stacked:isStacked categoryPercentage:XlChartBar::isCategoryPercentage((v7 + 144))];
  }
}

@end