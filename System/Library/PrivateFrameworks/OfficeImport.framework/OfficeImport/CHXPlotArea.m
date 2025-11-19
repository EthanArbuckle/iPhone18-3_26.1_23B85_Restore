@interface CHXPlotArea
+ (BOOL)isAxisElement:(_xmlNode *)a3 state:(id)a4;
+ (id)readFrom:(_xmlNode *)a3 state:(id)a4;
@end

@implementation CHXPlotArea

+ (id)readFrom:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v6 = [v5 chart];
  v36 = [v6 plotArea];

  v34 = objc_alloc_init(OADGraphicProperties);
  [CHXGraphicProperties setGraphicPropertiesFromXmlElementWithGraphicProperties:"setGraphicPropertiesFromXmlElementWithGraphicProperties:element:state:" element:? state:?];
  v7 = [v5 autoStyling];
  [v7 resolvePlotAreaGraphicProperties:v34];

  [v36 setGraphicProperties:v34];
  v8 = OCXFirstChild(a3);
  v37 = v5;
  while (v8)
  {
    if ([a1 isAxisElement:v8 state:v5])
    {
      v9 = [CHXAxis chdAxisFromXmlAxisElement:v8 state:v5];
      v10 = [v36 axes];
      [v10 addObject:v9];

      v11 = [v36 axes];
      v12 = [v11 count];

      if (v12 >= 3)
      {
        [v9 setSecondary:1];
      }

      v13 = [v37 drawingState];
      v14 = [v13 OAXChartNamespace];
      if (CXNodeHasName(v8, v14, "catAx"))
      {
LABEL_9:
      }

      else
      {
        v15 = [v37 drawingState];
        v16 = [v15 OAXChartNamespace];
        if (CXNodeHasName(v8, v16, "dateAx"))
        {

          goto LABEL_9;
        }

        v22 = [v37 drawingState];
        v23 = [v22 OAXChartNamespace];
        HasName = CXNodeHasName(v8, v23, "valAx");

        if (!HasName)
        {
          if (v12 <= 2)
          {
            v17 = 2;
          }

          else
          {
            v17 = 5;
          }

          goto LABEL_26;
        }
      }

      if ([v9 isHorizontalPosition])
      {
        if (v12 <= 2)
        {
          v17 = 0;
        }

        else
        {
          v17 = 3;
        }
      }

      else if (v12 <= 2)
      {
        v17 = 1;
      }

      else
      {
        v17 = 4;
      }

LABEL_26:
      [v9 setAxisType:v17];
      v5 = v37;
      goto LABEL_27;
    }

    v9 = [v5 drawingState];
    v18 = [v9 OAXChartNamespace];
    if (CXNodeHasName(v8, v18, "spPr"))
    {
      goto LABEL_18;
    }

    v19 = [v5 drawingState];
    v20 = [v19 OAXChartNamespace];
    v21 = CXNodeHasName(v8, v20, "layout");

    if (v21)
    {
      goto LABEL_28;
    }

    v9 = [CHXChartType chdChartTypeFromXmlChartTypeElement:v8 state:v5];
    if (v9)
    {
      v18 = [v36 chartTypes];
      [(CXNamespace *)v18 addObject:v9];
LABEL_18:
    }

LABEL_27:

LABEL_28:
    v8 = OCXNextSibling(v8);
  }

  v25 = [v36 chartTypes];
  for (i = 0; i < [v25 count]; ++i)
  {
    v27 = [v25 objectAtIndex:i];
    [CHXChartType resolveStyle:v27 state:v5];
  }

  for (j = 0; j < [v25 count]; ++j)
  {
    v29 = [v25 objectAtIndex:j];
    v30 = [v29 axisForClass:objc_opt_class()];
    v31 = [v29 axisForClass:objc_opt_class()];
    v32 = v31;
    if (v31 && v30)
    {
      [v30 setCrossBetween:{objc_msgSend(v31, "crossBetween")}];
    }
  }

  return v36;
}

+ (BOOL)isAxisElement:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v6 = [v5 drawingState];
  v7 = [v6 OAXChartNamespace];
  if (CXNodeHasName(a3, v7, "valAx"))
  {
    HasName = 1;
  }

  else
  {
    v9 = [v5 drawingState];
    v10 = [v9 OAXChartNamespace];
    if (CXNodeHasName(a3, v10, "catAx"))
    {
      HasName = 1;
    }

    else
    {
      v11 = [v5 drawingState];
      v12 = [v11 OAXChartNamespace];
      if (CXNodeHasName(a3, v12, "dateAx"))
      {
        HasName = 1;
      }

      else
      {
        v13 = [v5 drawingState];
        v14 = [v13 OAXChartNamespace];
        HasName = CXNodeHasName(a3, v14, "serAx");
      }
    }
  }

  return HasName;
}

@end