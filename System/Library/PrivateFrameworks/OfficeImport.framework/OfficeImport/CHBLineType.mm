@interface CHBLineType
+ (void)readWithState:(id)state chartType:(id)type;
@end

@implementation CHBLineType

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