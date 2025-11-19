@interface CHBBar2DType
+ (id)chdChartTypeWithState:(id)a3;
+ (void)readWithState:(id)a3 chartType:(id)a4;
@end

@implementation CHBBar2DType

+ (id)chdChartTypeWithState:(id)a3
{
  v3 = a3;
  v4 = [CHDBar2DType alloc];
  v5 = [v3 chart];
  v6 = [(CHDBar2DType *)v4 initWithChart:v5];

  [CHBBar2DType readWithState:v3 chartType:v6];

  return v6;
}

+ (void)readWithState:(id)a3 chartType:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [v9 xlCurrentPlot];
  v7 = v6;
  if (v6)
  {
    [v5 setOverlap:*(v6 + 160)];
    [v5 setGapWidth:*(v7 + 162)];
    [v5 setColumn:XlChartBar::isTranspose((v7 + 144)) ^ 1];
    isStacked = XlChartBar::isStacked((v7 + 144));
    [CHBChartTypeWithGrouping setGrouping:v5 stacked:isStacked categoryPercentage:XlChartBar::isCategoryPercentage((v7 + 144))];
  }
}

@end