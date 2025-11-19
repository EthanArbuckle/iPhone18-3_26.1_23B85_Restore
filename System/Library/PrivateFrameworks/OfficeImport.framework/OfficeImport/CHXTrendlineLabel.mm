@interface CHXTrendlineLabel
+ (id)chdTrendlineLabelFromXmlTrendlineLabelElement:(_xmlNode *)a3 state:(id)a4;
@end

@implementation CHXTrendlineLabel

+ (id)chdTrendlineLabelFromXmlTrendlineLabelElement:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v6 = [v5 resources];
  v7 = [CHDTrendlineLabel trendlineLabelWithResources:v6];

  v8 = [v5 drawingState];
  v9 = [v8 OAXChartNamespace];
  v10 = OCXFindChild(a3, v9, "tx");

  if (v10)
  {
    v25 = 0;
    v26 = 0;
    [CHXString readFromXmlTxElement:v10 formula:&v26 lastCached:&v25 state:v5];
    v11 = v26;
    v12 = v25;
    v13 = [v5 chart];
    [v7 setName:v11 chart:v13];

    [v7 setLastCachedName:v12];
  }

  v14 = [v5 drawingState];
  v15 = [v14 OAXChartNamespace];
  v16 = OCXFindChild(a3, v15, "numFmt");

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
  [CHXGraphicProperties setGraphicPropertiesFromXmlElementWithGraphicProperties:v21 element:a3 state:v5];
  [v7 setGraphicProperties:v21];

  return v7;
}

@end