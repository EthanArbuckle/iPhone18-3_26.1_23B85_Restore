@interface CHXDataValueProperties
+ (Class)chxDataValuePropertiesClassWithState:(id)state;
+ (id)chdDataValuePropertiesFromXmlElement:(_xmlNode *)element state:(id)state;
+ (id)readFrom:(_xmlNode *)from state:(id)state;
@end

@implementation CHXDataValueProperties

+ (id)readFrom:(_xmlNode *)from state:(id)state
{
  stateCopy = state;
  v7 = [objc_msgSend(self chxDataValuePropertiesClassWithState:{stateCopy), "chdDataValuePropertiesFromXmlElement:state:", from, stateCopy}];
  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v10 = OCXFindRequiredChild(from, oAXChartNamespace, "idx");

  [v7 setDataValueIndex:{CXRequiredUnsignedLongAttribute(v10, CXNoNamespace, "val")}];
  drawingState2 = [stateCopy drawingState];
  oAXChartNamespace2 = [drawingState2 OAXChartNamespace];
  v13 = OCXFindChild(from, oAXChartNamespace2, "marker");

  if (v13)
  {
    v14 = [CHXMarker chdMarkerFromXmlMarkerElement:v13 state:stateCopy];
    [v7 setMarker:v14];
  }

  if ([CHXGraphicProperties isGraphicPropertiesContainedByXmlElement:from state:stateCopy])
  {
    v15 = objc_alloc_init(OADGraphicProperties);
    [CHXGraphicProperties setGraphicPropertiesFromXmlElementWithGraphicProperties:v15 element:from state:stateCopy];
    [v7 setGraphicProperties:v15];
  }

  return v7;
}

+ (id)chdDataValuePropertiesFromXmlElement:(_xmlNode *)element state:(id)state
{
  v4 = objc_alloc_init(CHDDataValueProperties);

  return v4;
}

+ (Class)chxDataValuePropertiesClassWithState:(id)state
{
  stateCopy = state;
  currentChartType = [stateCopy currentChartType];
  objc_opt_class();
  objc_opt_isKindOfClass();

  v5 = objc_opt_class();

  return v5;
}

@end