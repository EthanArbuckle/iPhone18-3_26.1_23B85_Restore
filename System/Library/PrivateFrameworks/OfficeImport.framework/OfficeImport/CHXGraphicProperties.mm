@interface CHXGraphicProperties
+ (BOOL)isGraphicPropertiesContainedByXmlElement:(_xmlNode *)element state:(id)state;
+ (id)oadGraphicPropertiesFromXmlElementWithGraphicProperties:(_xmlNode *)properties state:(id)state;
+ (void)setGraphicPropertiesFromXmlElementWithGraphicProperties:(id)properties element:(_xmlNode *)element state:(id)state;
@end

@implementation CHXGraphicProperties

+ (id)oadGraphicPropertiesFromXmlElementWithGraphicProperties:(_xmlNode *)properties state:(id)state
{
  stateCopy = state;
  v7 = objc_alloc_init(OADGraphicProperties);
  [self setGraphicPropertiesFromXmlElementWithGraphicProperties:v7 element:properties state:stateCopy];

  return v7;
}

+ (void)setGraphicPropertiesFromXmlElementWithGraphicProperties:(id)properties element:(_xmlNode *)element state:(id)state
{
  propertiesCopy = properties;
  stateCopy = state;
  if (propertiesCopy && element)
  {
    drawingState = [stateCopy drawingState];
    oAXChartNamespace = [drawingState OAXChartNamespace];
    v10 = OCXFindChild(element, oAXChartNamespace, "spPr");

    if (v10)
    {
      drawingState2 = [stateCopy drawingState];
      [OAXGraphic readPropertiesFromXmlNode:v10 graphicProperties:propertiesCopy drawingState:drawingState2];
    }

    drawingState3 = [stateCopy drawingState];
    oAXChartNamespace2 = [drawingState3 OAXChartNamespace];
    v14 = OCXFindChild(element, oAXChartNamespace2, "layout");

    if (v14)
    {
      [CHXLayout readFrom:v14 graphicProperties:propertiesCopy state:stateCopy];
    }
  }
}

+ (BOOL)isGraphicPropertiesContainedByXmlElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  if (OCXFindChild(element, oAXChartNamespace, "spPr"))
  {
    v8 = 1;
  }

  else
  {
    drawingState2 = [stateCopy drawingState];
    oAXChartNamespace2 = [drawingState2 OAXChartNamespace];
    v8 = OCXFindChild(element, oAXChartNamespace2, "layout") != 0;
  }

  return v8;
}

@end