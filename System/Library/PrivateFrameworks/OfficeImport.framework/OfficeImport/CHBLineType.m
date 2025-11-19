@interface CHBLineType
+ (void)readWithState:(id)a3 chartType:(id)a4;
@end

@implementation CHBLineType

+ (void)readWithState:(id)a3 chartType:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [v9 xlCurrentPlot];
  v7 = v6;
  if (v6)
  {
    isStacked = XlChartArea::isStacked((v6 + 144));
    [CHBChartTypeWithGrouping setGrouping:v5 stacked:isStacked categoryPercentage:XlChartArea::isCategoryPercentage((v7 + 144))];
  }
}

@end