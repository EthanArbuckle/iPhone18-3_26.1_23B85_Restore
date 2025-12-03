@interface CHXStockType
+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)element state:(id)state;
@end

@implementation CHXStockType

+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  v6 = [CHXLine2DType chdChartTypeFromXmlChartTypeElement:element state:stateCopy];
  chart = [stateCopy chart];
  plotArea = [chart plotArea];
  chartTypes = [plotArea chartTypes];
  v10 = [chartTypes objectAtIndex:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    chart2 = [stateCopy chart];
    plotArea2 = [chart2 plotArea];
    [plotArea2 setContainsVolumeStockType:1];
  }

  else
  {
    [v6 setStockType:1];
  }

  return v6;
}

@end