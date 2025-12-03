@interface CHXUnsupportedType
+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)element state:(id)state;
@end

@implementation CHXUnsupportedType

+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  v6 = objc_opt_class();
  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  HasName = CXNodeHasName(element, oAXChartNamespace, "radarChart");

  if (HasName)
  {
    v6 = objc_opt_class();
  }

  drawingState2 = [stateCopy drawingState];
  oAXChartNamespace2 = [drawingState2 OAXChartNamespace];
  if (CXNodeHasName(element, oAXChartNamespace2, "surfaceChart"))
  {
  }

  else
  {
    drawingState3 = [stateCopy drawingState];
    oAXChartNamespace3 = [drawingState3 OAXChartNamespace];
    v14 = CXNodeHasName(element, oAXChartNamespace3, "surface3DChart");

    if (!v14)
    {
      goto LABEL_7;
    }
  }

  v6 = objc_opt_class();
LABEL_7:
  chart = [stateCopy chart];
  v16 = [v6 chartTypeWithChart:chart];

  return v16;
}

@end