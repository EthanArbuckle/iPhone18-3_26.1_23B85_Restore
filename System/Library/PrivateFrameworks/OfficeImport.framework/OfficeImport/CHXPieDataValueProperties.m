@interface CHXPieDataValueProperties
+ (id)chdDataValuePropertiesFromXmlElement:(_xmlNode *)a3 state:(id)a4;
@end

@implementation CHXPieDataValueProperties

+ (id)chdDataValuePropertiesFromXmlElement:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(CHDPieDataValueProperties);
  v7 = [v5 drawingState];
  v8 = [v7 OAXChartNamespace];
  v9 = OCXFindChild(a3, v8, "explosion");

  if (v9)
  {
    v10 = CXRequiredUnsignedLongAttribute(v9, CXNoNamespace, "val");
  }

  else
  {
    v11 = [v5 currentSeries];
    v10 = [v11 explosion];
  }

  [(CHDPieDataValueProperties *)v6 setExplosion:v10];

  return v6;
}

@end