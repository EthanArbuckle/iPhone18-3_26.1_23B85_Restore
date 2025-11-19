@interface CHXDataValueProperties
+ (Class)chxDataValuePropertiesClassWithState:(id)a3;
+ (id)chdDataValuePropertiesFromXmlElement:(_xmlNode *)a3 state:(id)a4;
+ (id)readFrom:(_xmlNode *)a3 state:(id)a4;
@end

@implementation CHXDataValueProperties

+ (id)readFrom:(_xmlNode *)a3 state:(id)a4
{
  v6 = a4;
  v7 = [objc_msgSend(a1 chxDataValuePropertiesClassWithState:{v6), "chdDataValuePropertiesFromXmlElement:state:", a3, v6}];
  v8 = [v6 drawingState];
  v9 = [v8 OAXChartNamespace];
  v10 = OCXFindRequiredChild(a3, v9, "idx");

  [v7 setDataValueIndex:{CXRequiredUnsignedLongAttribute(v10, CXNoNamespace, "val")}];
  v11 = [v6 drawingState];
  v12 = [v11 OAXChartNamespace];
  v13 = OCXFindChild(a3, v12, "marker");

  if (v13)
  {
    v14 = [CHXMarker chdMarkerFromXmlMarkerElement:v13 state:v6];
    [v7 setMarker:v14];
  }

  if ([CHXGraphicProperties isGraphicPropertiesContainedByXmlElement:a3 state:v6])
  {
    v15 = objc_alloc_init(OADGraphicProperties);
    [CHXGraphicProperties setGraphicPropertiesFromXmlElementWithGraphicProperties:v15 element:a3 state:v6];
    [v7 setGraphicProperties:v15];
  }

  return v7;
}

+ (id)chdDataValuePropertiesFromXmlElement:(_xmlNode *)a3 state:(id)a4
{
  v4 = objc_alloc_init(CHDDataValueProperties);

  return v4;
}

+ (Class)chxDataValuePropertiesClassWithState:(id)a3
{
  v3 = a3;
  v4 = [v3 currentChartType];
  objc_opt_class();
  objc_opt_isKindOfClass();

  v5 = objc_opt_class();

  return v5;
}

@end