@interface CHXTrendline
+ (id)chdTrendlineFromXmlTrendlineElement:(_xmlNode *)a3 state:(id)a4;
+ (id)stringFromTrendlineTypeEnum:(int)a3;
+ (int)chdTrendlineTypeFromXmlTrendlineTypeElement:(_xmlNode *)a3;
@end

@implementation CHXTrendline

+ (id)chdTrendlineFromXmlTrendlineElement:(_xmlNode *)a3 state:(id)a4
{
  v6 = a4;
  v7 = +[CHDTrendline trendline];
  v8 = [v6 drawingState];
  v9 = [v8 OAXChartNamespace];
  v10 = OCXFindChild(a3, v9, "dispEq");

  if (v10)
  {
    [v7 setDisplayEquation:{CXRequiredBoolAttribute(v10, CXNoNamespace, "val")}];
  }

  v11 = [v6 drawingState];
  v12 = [v11 OAXChartNamespace];
  v13 = OCXFindChild(a3, v12, "dispRSqr");

  if (v13)
  {
    [v7 setDisplayRSquaredValue:{CXRequiredBoolAttribute(v13, CXNoNamespace, "val")}];
  }

  v14 = [v6 drawingState];
  v15 = [v14 OAXChartNamespace];
  v16 = OCXFindChild(a3, v15, "backward");

  if (v16)
  {
    v43 = 0.0;
    if (CXOptionalDoubleAttribute(v16, CXNoNamespace, "val", &v43))
    {
      [v7 setBackward:v43];
    }
  }

  v17 = [v6 drawingState];
  v18 = [v17 OAXChartNamespace];
  v19 = OCXFindChild(a3, v18, "forward");

  if (v19)
  {
    v43 = 0.0;
    if (CXOptionalDoubleAttribute(v19, CXNoNamespace, "val", &v43))
    {
      [v7 setForward:v43];
    }
  }

  v20 = [v6 drawingState];
  v21 = [v20 OAXChartNamespace];
  v22 = OCXFindChild(a3, v21, "intercept");

  if (v22)
  {
    v43 = 0.0;
    if (CXOptionalDoubleAttribute(v22, CXNoNamespace, "val", &v43))
    {
      [v7 setInterceptYAxis:v43];
    }
  }

  v23 = [v6 drawingState];
  v24 = [v23 OAXChartNamespace];
  v25 = OCXFindChild(a3, v24, "order");

  if (v25)
  {
    [v7 setPolynomialOrder:{CXRequiredLongAttribute(v25, CXNoNamespace, "val")}];
  }

  v26 = [v6 drawingState];
  v27 = [v26 OAXChartNamespace];
  v28 = OCXFindChild(a3, v27, "period");

  if (v28)
  {
    [v7 setMovingAveragePeriod:{CXRequiredLongAttribute(v28, CXNoNamespace, "val")}];
  }

  v29 = [v6 drawingState];
  v30 = [v29 OAXChartNamespace];
  [v7 setType:{objc_msgSend(a1, "chdTrendlineTypeFromXmlTrendlineTypeElement:", OCXFindChild(a3, v30, "trendlineType"))}];

  v31 = objc_alloc_init(OADGraphicProperties);
  [CHXGraphicProperties setGraphicPropertiesFromXmlElementWithGraphicProperties:v31 element:a3 state:v6];
  [v7 setGraphicProperties:v31];
  v32 = [v6 drawingState];
  v33 = [v32 OAXChartNamespace];
  v34 = OCXFindChild(a3, v33, "trendlineLbl");

  if (v34)
  {
    v35 = [CHXTrendlineLabel chdTrendlineLabelFromXmlTrendlineLabelElement:v34 state:v6];
    [v7 setLabel:v35];
  }

  v36 = [v6 drawingState];
  v37 = [v36 OAXChartNamespace];
  v38 = OCXFindChild(a3, v37, "name");

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

+ (int)chdTrendlineTypeFromXmlTrendlineTypeElement:(_xmlNode *)a3
{
  if (a3)
  {
    v8 = 0;
    v3 = CXOptionalStringAttribute(a3, CXNoNamespace, "val", &v8);
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

+ (id)stringFromTrendlineTypeEnum:(int)a3
{
  if (a3 > 5)
  {
    return @"linear";
  }

  else
  {
    return off_2799CD348[a3];
  }
}

@end