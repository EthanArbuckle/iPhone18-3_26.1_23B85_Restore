@interface CHXPieDataValueProperties
+ (id)chdDataValuePropertiesFromXmlElement:(_xmlNode *)element state:(id)state;
@end

@implementation CHXPieDataValueProperties

+ (id)chdDataValuePropertiesFromXmlElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  v6 = objc_alloc_init(CHDPieDataValueProperties);
  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v9 = OCXFindChild(element, oAXChartNamespace, "explosion");

  if (v9)
  {
    explosion = CXRequiredUnsignedLongAttribute(v9, CXNoNamespace, "val");
  }

  else
  {
    currentSeries = [stateCopy currentSeries];
    explosion = [currentSeries explosion];
  }

  [(CHDPieDataValueProperties *)v6 setExplosion:explosion];

  return v6;
}

@end