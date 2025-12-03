@interface CHXChartType
+ (Class)chxChartTypeClassWithXmlElement:(_xmlNode *)element state:(id)state;
+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)element state:(id)state;
+ (id)stringWithGroupingEnum:(int)enum;
+ (int)chdGroupingFromXmlGroupingElement:(_xmlNode *)element;
+ (int)chdShapeTypeFromXmlShapeTypeElement:(_xmlNode *)element;
+ (void)prepareChartTypeForWriting:(id)writing;
+ (void)resolveStyle:(id)style state:(id)state;
@end

@implementation CHXChartType

+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  v6 = [CHXChartType chxChartTypeClassWithXmlElement:element state:stateCopy];
  if (v6)
  {
    v7 = [(objc_class *)v6 chdChartTypeFromXmlChartTypeElement:element state:stateCopy];
    [stateCopy setCurrentChartType:v7];
    drawingState = [stateCopy drawingState];
    oAXChartNamespace = [drawingState OAXChartNamespace];
    v10 = OCXFindChild(element, oAXChartNamespace, "varyColors");

    if (v10)
    {
      [v7 setVaryColors:{CXRequiredBoolAttribute(v10, CXNoNamespace, "val")}];
    }

    v11 = OCXFirstChildNamed(element, "ser");
    while (v11)
    {
      v12 = [CHXSeries readFrom:v11 state:stateCopy];
      [v12 setChartType:v7];
      seriesCollection = [v7 seriesCollection];
      [seriesCollection addObject:v12];

      v11 = OCXNextSiblingNamed(v11, "ser");
    }

    for (i = OCXFirstChildNamed(element, "axId"); i; i = OCXNextSiblingNamed(i, "axId"))
    {
      v15 = CXRequiredUnsignedLongAttribute(i, CXNoNamespace, "val");
      axisIds = [v7 axisIds];
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v15];
      [axisIds addObject:v17];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (int)chdGroupingFromXmlGroupingElement:(_xmlNode *)element
{
  if (!element)
  {
    return 0;
  }

  v7 = 0;
  v3 = CXOptionalStringAttribute(element, CXNoNamespace, "val", &v7);
  v4 = v7;
  v5 = v4;
  if (v3)
  {
    if ([v4 isEqualToString:@"percentStacked"])
    {
      v3 = 1;
    }

    else if ([v5 isEqualToString:@"clustered"])
    {
      v3 = 0;
    }

    else if ([v5 isEqualToString:@"standard"])
    {
      v3 = 3;
    }

    else if ([v5 isEqualToString:@"stacked"])
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

+ (id)stringWithGroupingEnum:(int)enum
{
  if ((enum - 1) > 2)
  {
    return @"clustered";
  }

  else
  {
    return off_2799CD258[enum - 1];
  }
}

+ (int)chdShapeTypeFromXmlShapeTypeElement:(_xmlNode *)element
{
  if (!element)
  {
    return 0;
  }

  v7 = 0;
  v3 = CXOptionalStringAttribute(element, CXNoNamespace, "val", &v7);
  v4 = v7;
  v5 = v4;
  if (v3)
  {
    if ([v4 isEqualToString:@"cone"])
    {
      v3 = 1;
    }

    else if ([v5 isEqualToString:@"coneToMax"])
    {
      v3 = 2;
    }

    else if ([v5 isEqualToString:@"box"])
    {
      v3 = 0;
    }

    else if ([v5 isEqualToString:@"cylinder"])
    {
      v3 = 3;
    }

    else if ([v5 isEqualToString:@"pyramid"])
    {
      v3 = 4;
    }

    else if ([v5 isEqualToString:@"pyramidToMax"])
    {
      v3 = 5;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

+ (void)resolveStyle:(id)style state:(id)state
{
  styleCopy = style;
  stateCopy = state;
  if (styleCopy)
  {
    seriesCollection = [styleCopy seriesCollection];
    v7 = [seriesCollection count];
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        v9 = [seriesCollection objectAtIndex:i];
        if (v9)
        {
          [CHXSeries resolveSeriesStyle:v9 state:stateCopy];
        }
      }
    }
  }
}

+ (Class)chxChartTypeClassWithXmlElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  HasName = CXNodeHasName(element, oAXChartNamespace, "pieChart");

  if (HasName)
  {
    goto LABEL_18;
  }

  drawingState2 = [stateCopy drawingState];
  oAXChartNamespace2 = [drawingState2 OAXChartNamespace];
  v11 = CXNodeHasName(element, oAXChartNamespace2, "doughnutChart");

  if (v11)
  {
    goto LABEL_18;
  }

  drawingState3 = [stateCopy drawingState];
  oAXChartNamespace3 = [drawingState3 OAXChartNamespace];
  v14 = CXNodeHasName(element, oAXChartNamespace3, "ofPieChart");

  if (v14)
  {
    goto LABEL_18;
  }

  drawingState4 = [stateCopy drawingState];
  oAXChartNamespace4 = [drawingState4 OAXChartNamespace];
  v17 = CXNodeHasName(element, oAXChartNamespace4, "pie3DChart");

  if (v17)
  {
    goto LABEL_18;
  }

  drawingState5 = [stateCopy drawingState];
  oAXChartNamespace5 = [drawingState5 OAXChartNamespace];
  v20 = CXNodeHasName(element, oAXChartNamespace5, "barChart");

  if (v20)
  {
    goto LABEL_18;
  }

  drawingState6 = [stateCopy drawingState];
  oAXChartNamespace6 = [drawingState6 OAXChartNamespace];
  v23 = CXNodeHasName(element, oAXChartNamespace6, "bar3DChart");

  if (v23)
  {
    goto LABEL_18;
  }

  drawingState7 = [stateCopy drawingState];
  oAXChartNamespace7 = [drawingState7 OAXChartNamespace];
  v26 = CXNodeHasName(element, oAXChartNamespace7, "areaChart");

  if (v26)
  {
    goto LABEL_18;
  }

  drawingState8 = [stateCopy drawingState];
  oAXChartNamespace8 = [drawingState8 OAXChartNamespace];
  v29 = CXNodeHasName(element, oAXChartNamespace8, "area3DChart");

  if (v29)
  {
    goto LABEL_18;
  }

  drawingState9 = [stateCopy drawingState];
  oAXChartNamespace9 = [drawingState9 OAXChartNamespace];
  v32 = CXNodeHasName(element, oAXChartNamespace9, "lineChart");

  if (v32)
  {
    goto LABEL_18;
  }

  drawingState10 = [stateCopy drawingState];
  oAXChartNamespace10 = [drawingState10 OAXChartNamespace];
  v35 = CXNodeHasName(element, oAXChartNamespace10, "stockChart");

  if (v35)
  {
    goto LABEL_18;
  }

  drawingState11 = [stateCopy drawingState];
  oAXChartNamespace11 = [drawingState11 OAXChartNamespace];
  v38 = CXNodeHasName(element, oAXChartNamespace11, "line3DChart");

  if (v38)
  {
    goto LABEL_18;
  }

  drawingState12 = [stateCopy drawingState];
  oAXChartNamespace12 = [drawingState12 OAXChartNamespace];
  v41 = CXNodeHasName(element, oAXChartNamespace12, "scatterChart");

  if (v41)
  {
    goto LABEL_18;
  }

  drawingState13 = [stateCopy drawingState];
  oAXChartNamespace13 = [drawingState13 OAXChartNamespace];
  v44 = CXNodeHasName(element, oAXChartNamespace13, "bubbleChart");

  if (v44)
  {
    goto LABEL_18;
  }

  drawingState14 = [stateCopy drawingState];
  oAXChartNamespace14 = [drawingState14 OAXChartNamespace];
  if (CXNodeHasName(element, oAXChartNamespace14, "radarChart"))
  {
    goto LABEL_17;
  }

  drawingState15 = [stateCopy drawingState];
  oAXChartNamespace15 = [drawingState15 OAXChartNamespace];
  if (CXNodeHasName(element, oAXChartNamespace15, "surfaceChart"))
  {

LABEL_17:
LABEL_18:
    v48 = objc_opt_class();
    goto LABEL_19;
  }

  drawingState16 = [stateCopy drawingState];
  oAXChartNamespace16 = [drawingState16 OAXChartNamespace];
  v52 = CXNodeHasName(element, oAXChartNamespace16, "surface3DChart");

  if (v52)
  {
    goto LABEL_18;
  }

  v48 = 0;
LABEL_19:

  return v48;
}

+ (void)prepareChartTypeForWriting:(id)writing
{
  writingCopy = writing;
  axes = [writingCopy axes];
  v4 = [axes count];

  if (v4)
  {
    axes2 = [writingCopy axes];
    v6 = [axes2 objectAtIndex:0];
    axisId = [v6 axisId];

    v8 = axisId > 2;
  }

  else
  {
    v8 = 0;
  }

  axisIds = [writingCopy axisIds];
  [axisIds removeAllObjects];

  chart = [writingCopy chart];
  plotArea = [chart plotArea];
  axes3 = [plotArea axes];

  for (i = 0; i < [axes3 count]; ++i)
  {
    v14 = [axes3 objectAtIndex:i];
    axisId2 = [v14 axisId];

    if (((v8 ^ (axisId2 > 2)) & 1) == 0)
    {
      axisIds2 = [writingCopy axisIds];
      v17 = [MEMORY[0x277CCABB0] numberWithInt:axisId2];
      [axisIds2 addObject:v17];
    }
  }

  axes4 = [writingCopy axes];
  for (j = 0; j < [axes4 count]; ++j)
  {
    v20 = [axes4 objectAtIndex:j];
    axisId3 = [v20 axisId];
    if (axisId3)
    {
      v22 = axisId3 == 3;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      v23 = axisId3 + 1;
    }

    else
    {
      v23 = axisId3 - 1;
    }

    [v20 setCrossAxisId:v23];
  }
}

@end