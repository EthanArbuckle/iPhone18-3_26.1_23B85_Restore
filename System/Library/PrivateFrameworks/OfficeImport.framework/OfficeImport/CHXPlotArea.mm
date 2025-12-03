@interface CHXPlotArea
+ (BOOL)isAxisElement:(_xmlNode *)element state:(id)state;
+ (id)readFrom:(_xmlNode *)from state:(id)state;
@end

@implementation CHXPlotArea

+ (id)readFrom:(_xmlNode *)from state:(id)state
{
  stateCopy = state;
  chart = [stateCopy chart];
  plotArea = [chart plotArea];

  v34 = objc_alloc_init(OADGraphicProperties);
  [CHXGraphicProperties setGraphicPropertiesFromXmlElementWithGraphicProperties:"setGraphicPropertiesFromXmlElementWithGraphicProperties:element:state:" element:? state:?];
  autoStyling = [stateCopy autoStyling];
  [autoStyling resolvePlotAreaGraphicProperties:v34];

  [plotArea setGraphicProperties:v34];
  v8 = OCXFirstChild(from);
  v37 = stateCopy;
  while (v8)
  {
    if ([self isAxisElement:v8 state:stateCopy])
    {
      drawingState4 = [CHXAxis chdAxisFromXmlAxisElement:v8 state:stateCopy];
      axes = [plotArea axes];
      [axes addObject:drawingState4];

      axes2 = [plotArea axes];
      v12 = [axes2 count];

      if (v12 >= 3)
      {
        [drawingState4 setSecondary:1];
      }

      drawingState = [v37 drawingState];
      oAXChartNamespace = [drawingState OAXChartNamespace];
      if (CXNodeHasName(v8, oAXChartNamespace, "catAx"))
      {
LABEL_9:
      }

      else
      {
        drawingState2 = [v37 drawingState];
        oAXChartNamespace2 = [drawingState2 OAXChartNamespace];
        if (CXNodeHasName(v8, oAXChartNamespace2, "dateAx"))
        {

          goto LABEL_9;
        }

        drawingState3 = [v37 drawingState];
        oAXChartNamespace3 = [drawingState3 OAXChartNamespace];
        HasName = CXNodeHasName(v8, oAXChartNamespace3, "valAx");

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

      if ([drawingState4 isHorizontalPosition])
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
      [drawingState4 setAxisType:v17];
      stateCopy = v37;
      goto LABEL_27;
    }

    drawingState4 = [stateCopy drawingState];
    oAXChartNamespace4 = [drawingState4 OAXChartNamespace];
    if (CXNodeHasName(v8, oAXChartNamespace4, "spPr"))
    {
      goto LABEL_18;
    }

    drawingState5 = [stateCopy drawingState];
    oAXChartNamespace5 = [drawingState5 OAXChartNamespace];
    v21 = CXNodeHasName(v8, oAXChartNamespace5, "layout");

    if (v21)
    {
      goto LABEL_28;
    }

    drawingState4 = [CHXChartType chdChartTypeFromXmlChartTypeElement:v8 state:stateCopy];
    if (drawingState4)
    {
      oAXChartNamespace4 = [plotArea chartTypes];
      [(CXNamespace *)oAXChartNamespace4 addObject:drawingState4];
LABEL_18:
    }

LABEL_27:

LABEL_28:
    v8 = OCXNextSibling(v8);
  }

  chartTypes = [plotArea chartTypes];
  for (i = 0; i < [chartTypes count]; ++i)
  {
    v27 = [chartTypes objectAtIndex:i];
    [CHXChartType resolveStyle:v27 state:stateCopy];
  }

  for (j = 0; j < [chartTypes count]; ++j)
  {
    v29 = [chartTypes objectAtIndex:j];
    v30 = [v29 axisForClass:objc_opt_class()];
    v31 = [v29 axisForClass:objc_opt_class()];
    v32 = v31;
    if (v31 && v30)
    {
      [v30 setCrossBetween:{objc_msgSend(v31, "crossBetween")}];
    }
  }

  return plotArea;
}

+ (BOOL)isAxisElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  if (CXNodeHasName(element, oAXChartNamespace, "valAx"))
  {
    HasName = 1;
  }

  else
  {
    drawingState2 = [stateCopy drawingState];
    oAXChartNamespace2 = [drawingState2 OAXChartNamespace];
    if (CXNodeHasName(element, oAXChartNamespace2, "catAx"))
    {
      HasName = 1;
    }

    else
    {
      drawingState3 = [stateCopy drawingState];
      oAXChartNamespace3 = [drawingState3 OAXChartNamespace];
      if (CXNodeHasName(element, oAXChartNamespace3, "dateAx"))
      {
        HasName = 1;
      }

      else
      {
        drawingState4 = [stateCopy drawingState];
        oAXChartNamespace4 = [drawingState4 OAXChartNamespace];
        HasName = CXNodeHasName(element, oAXChartNamespace4, "serAx");
      }
    }
  }

  return HasName;
}

@end