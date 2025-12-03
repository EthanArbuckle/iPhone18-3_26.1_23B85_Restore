@interface CHXPie3DType
+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)element state:(id)state;
@end

@implementation CHXPie3DType

+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  chart = [stateCopy chart];
  v7 = [(CHDChartType *)CHDPie3DType chartTypeWithChart:chart];

  [CHXPie2DType readFrom:element chartType:v7 state:stateCopy];
  chart2 = [stateCopy chart];
  plotArea = [chart2 plotArea];
  graphicProperties = [plotArea graphicProperties];

  if (!graphicProperties)
  {
    chart3 = [stateCopy chart];
    plotArea2 = [chart3 plotArea];
    v13 = objc_alloc_init(OADGraphicProperties);
    [plotArea2 setGraphicProperties:v13];
  }

  chart4 = [stateCopy chart];
  plotArea3 = [chart4 plotArea];
  graphicProperties2 = [plotArea3 graphicProperties];
  hasOrientedBounds = [graphicProperties2 hasOrientedBounds];

  if (hasOrientedBounds)
  {
    chart5 = [stateCopy chart];
    plotArea4 = [chart5 plotArea];
    graphicProperties3 = [plotArea4 graphicProperties];
    orientedBounds = [graphicProperties3 orientedBounds];
    [orientedBounds bounds];
    v23 = v22;
    v25 = v24;

    if (v23 == 0.0 && v25 == 0.0)
    {
      chart6 = [stateCopy chart];
      plotArea5 = [chart6 plotArea];
      graphicProperties4 = [plotArea5 graphicProperties];
      orientedBounds2 = [graphicProperties4 orientedBounds];
      [orientedBounds2 setBounds:{0.0305555556, 0.0509259259, 0.860964348, 0.898148148}];
    }
  }

  return v7;
}

@end