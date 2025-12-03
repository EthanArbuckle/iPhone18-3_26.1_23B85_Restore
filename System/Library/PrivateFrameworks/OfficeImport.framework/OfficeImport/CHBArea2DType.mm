@interface CHBArea2DType
+ (id)chdChartTypeWithState:(id)state;
+ (void)readWithState:(id)state chartType:(id)type;
@end

@implementation CHBArea2DType

+ (id)chdChartTypeWithState:(id)state
{
  stateCopy = state;
  v5 = [CHDArea2DType alloc];
  chart = [stateCopy chart];
  v7 = [(CHDArea2DType *)v5 initWithChart:chart];

  [self readWithState:stateCopy chartType:v7];

  return v7;
}

+ (void)readWithState:(id)state chartType:(id)type
{
  stateCopy = state;
  typeCopy = type;
  xlCurrentPlot = [stateCopy xlCurrentPlot];
  v7 = xlCurrentPlot;
  if (xlCurrentPlot)
  {
    isStacked = XlChartArea::isStacked((xlCurrentPlot + 144));
    [CHBChartTypeWithGrouping setGrouping:typeCopy stacked:isStacked categoryPercentage:XlChartArea::isCategoryPercentage((v7 + 144))];
  }
}

@end