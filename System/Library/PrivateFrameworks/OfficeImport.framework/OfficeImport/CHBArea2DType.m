@interface CHBArea2DType
+ (id)chdChartTypeWithState:(id)a3;
+ (void)readWithState:(id)a3 chartType:(id)a4;
@end

@implementation CHBArea2DType

+ (id)chdChartTypeWithState:(id)a3
{
  v4 = a3;
  v5 = [CHDArea2DType alloc];
  v6 = [v4 chart];
  v7 = [(CHDArea2DType *)v5 initWithChart:v6];

  [a1 readWithState:v4 chartType:v7];

  return v7;
}

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