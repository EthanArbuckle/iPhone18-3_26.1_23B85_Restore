@interface CHXBubbleSeries
+ (id)chdSeriesFromXmlSeriesElement:(_xmlNode *)element state:(id)state;
@end

@implementation CHXBubbleSeries

+ (id)chdSeriesFromXmlSeriesElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  chart = [stateCopy chart];
  v7 = [(CHDSeries *)CHDBubbleSeries seriesWithChart:chart];

  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v10 = OCXFindChild(element, oAXChartNamespace, "bubble3D");

  if (v10)
  {
    [v7 setBubble3D:{CXRequiredBoolAttribute(v10, CXNoNamespace, "val")}];
  }

  drawingState2 = [stateCopy drawingState];
  oAXChartNamespace2 = [drawingState2 OAXChartNamespace];
  v13 = OCXFindChild(element, oAXChartNamespace2, "invertIfNegative");

  if (v13)
  {
    [v7 setInvertIfNegative:{CXRequiredBoolAttribute(v13, CXNoNamespace, "val")}];
  }

  drawingState3 = [stateCopy drawingState];
  oAXChartNamespace3 = [drawingState3 OAXChartNamespace];
  v16 = OCXFindChild(element, oAXChartNamespace3, "dLbls");

  if (!v16)
  {
    drawingState4 = [stateCopy drawingState];
    oAXChartNamespace4 = [drawingState4 OAXChartNamespace];
    v19 = OCXFindChild(0, oAXChartNamespace4, "showBubbleSize");

    if (v19)
    {
      v20 = CXRequiredBoolAttribute(v19, CXNoNamespace, "val");
    }

    else
    {
      v20 = 1;
    }

    [v7 setShowBubbleSize:v20];
  }

  return v7;
}

@end