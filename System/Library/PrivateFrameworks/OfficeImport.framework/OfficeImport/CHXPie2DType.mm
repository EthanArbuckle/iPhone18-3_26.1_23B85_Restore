@interface CHXPie2DType
+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)element state:(id)state;
+ (void)readFrom:(_xmlNode *)from chartType:(id)type state:(id)state;
@end

@implementation CHXPie2DType

+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  chart = [stateCopy chart];
  v8 = [(CHDChartType *)CHDPie2DType chartTypeWithChart:chart];

  [self readFrom:element chartType:v8 state:stateCopy];

  return v8;
}

+ (void)readFrom:(_xmlNode *)from chartType:(id)type state:(id)state
{
  typeCopy = type;
  stateCopy = state;
  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v10 = OCXFindChild(from, oAXChartNamespace, "firstSliceAng");

  if (v10)
  {
    rotationY = CXRequiredUnsignedLongAttribute(v10, CXNoNamespace, "val");
  }

  else
  {
    chart = [stateCopy chart];
    view3D = [chart view3D];

    if (view3D)
    {
      parent = from->parent->parent;
      drawingState2 = [stateCopy drawingState];
      oAXChartNamespace2 = [drawingState2 OAXChartNamespace];
      rotationY = OCXFindChild(parent, oAXChartNamespace2, "view3D");

      if (rotationY)
      {
        drawingState3 = [stateCopy drawingState];
        oAXChartNamespace3 = [drawingState3 OAXChartNamespace];
        rotationY = OCXFindChild(rotationY, oAXChartNamespace3, "rotY");

        if (rotationY)
        {
          chart2 = [stateCopy chart];
          view3D2 = [chart2 view3D];
          rotationY = [view3D2 rotationY];
        }
      }
    }

    else
    {
      rotationY = 0;
    }
  }

  [typeCopy setFirstSliceAngle:rotationY];
  chart3 = [stateCopy chart];
  plotArea = [chart3 plotArea];
  graphicProperties = [plotArea graphicProperties];

  if (!graphicProperties)
  {
    chart4 = [stateCopy chart];
    plotArea2 = [chart4 plotArea];
    v17 = objc_alloc_init(OADGraphicProperties);
    [plotArea2 setGraphicProperties:v17];
  }

  chart5 = [stateCopy chart];
  plotArea3 = [chart5 plotArea];
  graphicProperties2 = [plotArea3 graphicProperties];
  hasOrientedBounds = [graphicProperties2 hasOrientedBounds];

  if (hasOrientedBounds)
  {
    chart6 = [stateCopy chart];
    plotArea4 = [chart6 plotArea];
    graphicProperties3 = [plotArea4 graphicProperties];
    orientedBounds = [graphicProperties3 orientedBounds];
    [orientedBounds bounds];
    v27 = v26;
    v29 = v28;

    if (v27 == 0.0 && v29 == 0.0)
    {
      chart7 = [stateCopy chart];
      plotArea5 = [chart7 plotArea];
      graphicProperties4 = [plotArea5 graphicProperties];
      orientedBounds2 = [graphicProperties4 orientedBounds];
      [orientedBounds2 setBounds:{0.191593176, 0.0509259259, 0.538888889, 0.898148148}];
    }
  }
}

@end