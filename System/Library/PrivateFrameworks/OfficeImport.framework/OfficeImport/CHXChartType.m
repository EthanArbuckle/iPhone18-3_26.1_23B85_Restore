@interface CHXChartType
+ (Class)chxChartTypeClassWithXmlElement:(_xmlNode *)a3 state:(id)a4;
+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)a3 state:(id)a4;
+ (id)stringWithGroupingEnum:(int)a3;
+ (int)chdGroupingFromXmlGroupingElement:(_xmlNode *)a3;
+ (int)chdShapeTypeFromXmlShapeTypeElement:(_xmlNode *)a3;
+ (void)prepareChartTypeForWriting:(id)a3;
+ (void)resolveStyle:(id)a3 state:(id)a4;
@end

@implementation CHXChartType

+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v6 = [CHXChartType chxChartTypeClassWithXmlElement:a3 state:v5];
  if (v6)
  {
    v7 = [(objc_class *)v6 chdChartTypeFromXmlChartTypeElement:a3 state:v5];
    [v5 setCurrentChartType:v7];
    v8 = [v5 drawingState];
    v9 = [v8 OAXChartNamespace];
    v10 = OCXFindChild(a3, v9, "varyColors");

    if (v10)
    {
      [v7 setVaryColors:{CXRequiredBoolAttribute(v10, CXNoNamespace, "val")}];
    }

    v11 = OCXFirstChildNamed(a3, "ser");
    while (v11)
    {
      v12 = [CHXSeries readFrom:v11 state:v5];
      [v12 setChartType:v7];
      v13 = [v7 seriesCollection];
      [v13 addObject:v12];

      v11 = OCXNextSiblingNamed(v11, "ser");
    }

    for (i = OCXFirstChildNamed(a3, "axId"); i; i = OCXNextSiblingNamed(i, "axId"))
    {
      v15 = CXRequiredUnsignedLongAttribute(i, CXNoNamespace, "val");
      v16 = [v7 axisIds];
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v15];
      [v16 addObject:v17];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (int)chdGroupingFromXmlGroupingElement:(_xmlNode *)a3
{
  if (!a3)
  {
    return 0;
  }

  v7 = 0;
  v3 = CXOptionalStringAttribute(a3, CXNoNamespace, "val", &v7);
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

+ (id)stringWithGroupingEnum:(int)a3
{
  if ((a3 - 1) > 2)
  {
    return @"clustered";
  }

  else
  {
    return off_2799CD258[a3 - 1];
  }
}

+ (int)chdShapeTypeFromXmlShapeTypeElement:(_xmlNode *)a3
{
  if (!a3)
  {
    return 0;
  }

  v7 = 0;
  v3 = CXOptionalStringAttribute(a3, CXNoNamespace, "val", &v7);
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

+ (void)resolveStyle:(id)a3 state:(id)a4
{
  v10 = a3;
  v5 = a4;
  if (v10)
  {
    v6 = [v10 seriesCollection];
    v7 = [v6 count];
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        v9 = [v6 objectAtIndex:i];
        if (v9)
        {
          [CHXSeries resolveSeriesStyle:v9 state:v5];
        }
      }
    }
  }
}

+ (Class)chxChartTypeClassWithXmlElement:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v6 = [v5 drawingState];
  v7 = [v6 OAXChartNamespace];
  HasName = CXNodeHasName(a3, v7, "pieChart");

  if (HasName)
  {
    goto LABEL_18;
  }

  v9 = [v5 drawingState];
  v10 = [v9 OAXChartNamespace];
  v11 = CXNodeHasName(a3, v10, "doughnutChart");

  if (v11)
  {
    goto LABEL_18;
  }

  v12 = [v5 drawingState];
  v13 = [v12 OAXChartNamespace];
  v14 = CXNodeHasName(a3, v13, "ofPieChart");

  if (v14)
  {
    goto LABEL_18;
  }

  v15 = [v5 drawingState];
  v16 = [v15 OAXChartNamespace];
  v17 = CXNodeHasName(a3, v16, "pie3DChart");

  if (v17)
  {
    goto LABEL_18;
  }

  v18 = [v5 drawingState];
  v19 = [v18 OAXChartNamespace];
  v20 = CXNodeHasName(a3, v19, "barChart");

  if (v20)
  {
    goto LABEL_18;
  }

  v21 = [v5 drawingState];
  v22 = [v21 OAXChartNamespace];
  v23 = CXNodeHasName(a3, v22, "bar3DChart");

  if (v23)
  {
    goto LABEL_18;
  }

  v24 = [v5 drawingState];
  v25 = [v24 OAXChartNamespace];
  v26 = CXNodeHasName(a3, v25, "areaChart");

  if (v26)
  {
    goto LABEL_18;
  }

  v27 = [v5 drawingState];
  v28 = [v27 OAXChartNamespace];
  v29 = CXNodeHasName(a3, v28, "area3DChart");

  if (v29)
  {
    goto LABEL_18;
  }

  v30 = [v5 drawingState];
  v31 = [v30 OAXChartNamespace];
  v32 = CXNodeHasName(a3, v31, "lineChart");

  if (v32)
  {
    goto LABEL_18;
  }

  v33 = [v5 drawingState];
  v34 = [v33 OAXChartNamespace];
  v35 = CXNodeHasName(a3, v34, "stockChart");

  if (v35)
  {
    goto LABEL_18;
  }

  v36 = [v5 drawingState];
  v37 = [v36 OAXChartNamespace];
  v38 = CXNodeHasName(a3, v37, "line3DChart");

  if (v38)
  {
    goto LABEL_18;
  }

  v39 = [v5 drawingState];
  v40 = [v39 OAXChartNamespace];
  v41 = CXNodeHasName(a3, v40, "scatterChart");

  if (v41)
  {
    goto LABEL_18;
  }

  v42 = [v5 drawingState];
  v43 = [v42 OAXChartNamespace];
  v44 = CXNodeHasName(a3, v43, "bubbleChart");

  if (v44)
  {
    goto LABEL_18;
  }

  v53 = [v5 drawingState];
  v45 = [v53 OAXChartNamespace];
  if (CXNodeHasName(a3, v45, "radarChart"))
  {
    goto LABEL_17;
  }

  v46 = [v5 drawingState];
  v47 = [v46 OAXChartNamespace];
  if (CXNodeHasName(a3, v47, "surfaceChart"))
  {

LABEL_17:
LABEL_18:
    v48 = objc_opt_class();
    goto LABEL_19;
  }

  v50 = [v5 drawingState];
  v51 = [v50 OAXChartNamespace];
  v52 = CXNodeHasName(a3, v51, "surface3DChart");

  if (v52)
  {
    goto LABEL_18;
  }

  v48 = 0;
LABEL_19:

  return v48;
}

+ (void)prepareChartTypeForWriting:(id)a3
{
  v24 = a3;
  v3 = [v24 axes];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [v24 axes];
    v6 = [v5 objectAtIndex:0];
    v7 = [v6 axisId];

    v8 = v7 > 2;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v24 axisIds];
  [v9 removeAllObjects];

  v10 = [v24 chart];
  v11 = [v10 plotArea];
  v12 = [v11 axes];

  for (i = 0; i < [v12 count]; ++i)
  {
    v14 = [v12 objectAtIndex:i];
    v15 = [v14 axisId];

    if (((v8 ^ (v15 > 2)) & 1) == 0)
    {
      v16 = [v24 axisIds];
      v17 = [MEMORY[0x277CCABB0] numberWithInt:v15];
      [v16 addObject:v17];
    }
  }

  v18 = [v24 axes];
  for (j = 0; j < [v18 count]; ++j)
  {
    v20 = [v18 objectAtIndex:j];
    v21 = [v20 axisId];
    if (v21)
    {
      v22 = v21 == 3;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      v23 = v21 + 1;
    }

    else
    {
      v23 = v21 - 1;
    }

    [v20 setCrossAxisId:v23];
  }
}

@end