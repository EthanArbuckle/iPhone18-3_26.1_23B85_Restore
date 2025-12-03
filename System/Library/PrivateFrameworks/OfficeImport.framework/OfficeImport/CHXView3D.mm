@interface CHXView3D
+ (id)chdView3DFromXmlView3DElement:(_xmlNode *)element state:(id)state;
@end

@implementation CHXView3D

+ (id)chdView3DFromXmlView3DElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  v6 = objc_alloc_init(CHDView3D);
  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v9 = OCXFindChild(element, oAXChartNamespace, "rotX");

  if (v9)
  {
    [(CHDView3D *)v6 setRotationX:CXRequiredLongAttribute(v9, CXNoNamespace, "val")];
  }

  drawingState2 = [stateCopy drawingState];
  oAXChartNamespace2 = [drawingState2 OAXChartNamespace];
  v12 = OCXFindChild(element, oAXChartNamespace2, "rotY");

  if (v12)
  {
    [(CHDView3D *)v6 setRotationY:CXRequiredLongAttribute(v12, CXNoNamespace, "val")];
  }

  drawingState3 = [stateCopy drawingState];
  oAXChartNamespace3 = [drawingState3 OAXChartNamespace];
  v15 = OCXFindChild(element, oAXChartNamespace3, "hPercent");

  if (v15)
  {
    [(CHDView3D *)v6 setHeightPercent:CXRequiredLongAttribute(v15, CXNoNamespace, "val")];
  }

  drawingState4 = [stateCopy drawingState];
  oAXChartNamespace4 = [drawingState4 OAXChartNamespace];
  v18 = OCXFindChild(element, oAXChartNamespace4, "depthPercent");

  if (v18)
  {
    [(CHDView3D *)v6 setDepthPercent:CXRequiredLongAttribute(v18, CXNoNamespace, "val")];
  }

  drawingState5 = [stateCopy drawingState];
  oAXChartNamespace5 = [drawingState5 OAXChartNamespace];
  v21 = OCXFindChild(element, oAXChartNamespace5, "perspective");

  if (v21)
  {
    [(CHDView3D *)v6 setPerspective:CXRequiredLongAttribute(v21, CXNoNamespace, "val")];
  }

  drawingState6 = [stateCopy drawingState];
  oAXChartNamespace6 = [drawingState6 OAXChartNamespace];
  v24 = OCXFindChild(element, oAXChartNamespace6, "rAngAx");

  if (v24)
  {
    v25 = CXRequiredBoolAttribute(v24, CXNoNamespace, "val");
  }

  else
  {
    v25 = 0;
  }

  [(CHDView3D *)v6 setRightAngleAxes:v25];

  return v6;
}

@end