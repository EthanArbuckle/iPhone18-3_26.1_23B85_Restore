@interface CHXStockType
+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)a3 state:(id)a4;
@end

@implementation CHXStockType

+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v6 = [CHXLine2DType chdChartTypeFromXmlChartTypeElement:a3 state:v5];
  v7 = [v5 chart];
  v8 = [v7 plotArea];
  v9 = [v8 chartTypes];
  v10 = [v9 objectAtIndex:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v12 = [v5 chart];
    v13 = [v12 plotArea];
    [v13 setContainsVolumeStockType:1];
  }

  else
  {
    [v6 setStockType:1];
  }

  return v6;
}

@end