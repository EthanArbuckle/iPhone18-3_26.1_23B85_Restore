@interface CHXTrendlineLabel
+ (id)chdTrendlineLabelFromXmlTrendlineLabelElement:(_xmlNode *)element state:(id)state;
@end

@implementation CHXTrendlineLabel

+ (id)chdTrendlineLabelFromXmlTrendlineLabelElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  resources = [stateCopy resources];
  v7 = [CHDTrendlineLabel trendlineLabelWithResources:resources];

  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v10 = OCXFindChild(element, oAXChartNamespace, "tx");

  if (v10)
  {
    v25 = 0;
    v26 = 0;
    [CHXString readFromXmlTxElement:v10 formula:&v26 lastCached:&v25 state:stateCopy];
    v11 = v26;
    v12 = v25;
    chart = [stateCopy chart];
    [v7 setName:v11 chart:chart];

    [v7 setLastCachedName:v12];
  }

  drawingState2 = [stateCopy drawingState];
  oAXChartNamespace2 = [drawingState2 OAXChartNamespace];
  v16 = OCXFindChild(element, oAXChartNamespace2, "numFmt");

  if (v16)
  {
    v24 = 0;
    v17 = CXOptionalStringAttribute(v16, CXNoNamespace, "formatCode", &v24);
    v18 = v24;
    if (v17)
    {
      v19 = [EDString edStringWithString:v18];
      v20 = [EDContentFormat contentFormatWithFormatString:v19];

      [v7 setContentFormat:v20];
    }

    v23 = 0.0;
    if (CXOptionalDoubleAttribute(v16, CXNoNamespace, "sourceLinked", &v23))
    {
      [v7 setIsContentFormatDerivedFromDataPoints:{v23 == 1.0, v23}];
    }
  }

  v21 = objc_alloc_init(OADGraphicProperties);
  [CHXGraphicProperties setGraphicPropertiesFromXmlElementWithGraphicProperties:v21 element:element state:stateCopy];
  [v7 setGraphicProperties:v21];

  return v7;
}

@end