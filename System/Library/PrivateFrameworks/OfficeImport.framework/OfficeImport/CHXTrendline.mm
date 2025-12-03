@interface CHXTrendline
+ (id)chdTrendlineFromXmlTrendlineElement:(_xmlNode *)element state:(id)state;
+ (id)stringFromTrendlineTypeEnum:(int)enum;
+ (int)chdTrendlineTypeFromXmlTrendlineTypeElement:(_xmlNode *)element;
@end

@implementation CHXTrendline

+ (id)chdTrendlineFromXmlTrendlineElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  v7 = +[CHDTrendline trendline];
  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v10 = OCXFindChild(element, oAXChartNamespace, "dispEq");

  if (v10)
  {
    [v7 setDisplayEquation:{CXRequiredBoolAttribute(v10, CXNoNamespace, "val")}];
  }

  drawingState2 = [stateCopy drawingState];
  oAXChartNamespace2 = [drawingState2 OAXChartNamespace];
  v13 = OCXFindChild(element, oAXChartNamespace2, "dispRSqr");

  if (v13)
  {
    [v7 setDisplayRSquaredValue:{CXRequiredBoolAttribute(v13, CXNoNamespace, "val")}];
  }

  drawingState3 = [stateCopy drawingState];
  oAXChartNamespace3 = [drawingState3 OAXChartNamespace];
  v16 = OCXFindChild(element, oAXChartNamespace3, "backward");

  if (v16)
  {
    v43 = 0.0;
    if (CXOptionalDoubleAttribute(v16, CXNoNamespace, "val", &v43))
    {
      [v7 setBackward:v43];
    }
  }

  drawingState4 = [stateCopy drawingState];
  oAXChartNamespace4 = [drawingState4 OAXChartNamespace];
  v19 = OCXFindChild(element, oAXChartNamespace4, "forward");

  if (v19)
  {
    v43 = 0.0;
    if (CXOptionalDoubleAttribute(v19, CXNoNamespace, "val", &v43))
    {
      [v7 setForward:v43];
    }
  }

  drawingState5 = [stateCopy drawingState];
  oAXChartNamespace5 = [drawingState5 OAXChartNamespace];
  v22 = OCXFindChild(element, oAXChartNamespace5, "intercept");

  if (v22)
  {
    v43 = 0.0;
    if (CXOptionalDoubleAttribute(v22, CXNoNamespace, "val", &v43))
    {
      [v7 setInterceptYAxis:v43];
    }
  }

  drawingState6 = [stateCopy drawingState];
  oAXChartNamespace6 = [drawingState6 OAXChartNamespace];
  v25 = OCXFindChild(element, oAXChartNamespace6, "order");

  if (v25)
  {
    [v7 setPolynomialOrder:{CXRequiredLongAttribute(v25, CXNoNamespace, "val")}];
  }

  drawingState7 = [stateCopy drawingState];
  oAXChartNamespace7 = [drawingState7 OAXChartNamespace];
  v28 = OCXFindChild(element, oAXChartNamespace7, "period");

  if (v28)
  {
    [v7 setMovingAveragePeriod:{CXRequiredLongAttribute(v28, CXNoNamespace, "val")}];
  }

  drawingState8 = [stateCopy drawingState];
  oAXChartNamespace8 = [drawingState8 OAXChartNamespace];
  [v7 setType:{objc_msgSend(self, "chdTrendlineTypeFromXmlTrendlineTypeElement:", OCXFindChild(element, oAXChartNamespace8, "trendlineType"))}];

  v31 = objc_alloc_init(OADGraphicProperties);
  [CHXGraphicProperties setGraphicPropertiesFromXmlElementWithGraphicProperties:v31 element:element state:stateCopy];
  [v7 setGraphicProperties:v31];
  drawingState9 = [stateCopy drawingState];
  oAXChartNamespace9 = [drawingState9 OAXChartNamespace];
  v34 = OCXFindChild(element, oAXChartNamespace9, "trendlineLbl");

  if (v34)
  {
    v35 = [CHXTrendlineLabel chdTrendlineLabelFromXmlTrendlineLabelElement:v34 state:stateCopy];
    [v7 setLabel:v35];
  }

  drawingState10 = [stateCopy drawingState];
  oAXChartNamespace10 = [drawingState10 OAXChartNamespace];
  v38 = OCXFindChild(element, oAXChartNamespace10, "name");

  if (v38)
  {
    v39 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:v38];
    v40 = v39;
    if (v39 && [v39 length])
    {
      v41 = [EDString edStringWithString:v40];
      [v7 setName:v41];
    }
  }

  return v7;
}

+ (int)chdTrendlineTypeFromXmlTrendlineTypeElement:(_xmlNode *)element
{
  if (element)
  {
    v8 = 0;
    v3 = CXOptionalStringAttribute(element, CXNoNamespace, "val", &v8);
    v4 = v8;
    v5 = v4;
    if (v3)
    {
      if ([v4 isEqualToString:@"exp"])
      {
        v6 = 0;
LABEL_8:

        return v6;
      }

      if (([v5 isEqualToString:@"linear"] & 1) == 0)
      {
        if ([v5 isEqualToString:@"log"])
        {
          v6 = 2;
          goto LABEL_8;
        }

        if ([v5 isEqualToString:@"movingAvg"])
        {
          v6 = 3;
          goto LABEL_8;
        }

        if ([v5 isEqualToString:@"poly"])
        {
          v6 = 4;
          goto LABEL_8;
        }

        if ([v5 isEqualToString:@"power"])
        {
          v6 = 5;
          goto LABEL_8;
        }
      }
    }

    v6 = 1;
    goto LABEL_8;
  }

  return 1;
}

+ (id)stringFromTrendlineTypeEnum:(int)enum
{
  if (enum > 5)
  {
    return @"linear";
  }

  else
  {
    return off_2799CD348[enum];
  }
}

@end