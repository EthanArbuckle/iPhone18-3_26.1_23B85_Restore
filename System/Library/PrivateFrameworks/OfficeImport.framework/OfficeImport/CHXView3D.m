@interface CHXView3D
+ (id)chdView3DFromXmlView3DElement:(_xmlNode *)a3 state:(id)a4;
@end

@implementation CHXView3D

+ (id)chdView3DFromXmlView3DElement:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(CHDView3D);
  v7 = [v5 drawingState];
  v8 = [v7 OAXChartNamespace];
  v9 = OCXFindChild(a3, v8, "rotX");

  if (v9)
  {
    [(CHDView3D *)v6 setRotationX:CXRequiredLongAttribute(v9, CXNoNamespace, "val")];
  }

  v10 = [v5 drawingState];
  v11 = [v10 OAXChartNamespace];
  v12 = OCXFindChild(a3, v11, "rotY");

  if (v12)
  {
    [(CHDView3D *)v6 setRotationY:CXRequiredLongAttribute(v12, CXNoNamespace, "val")];
  }

  v13 = [v5 drawingState];
  v14 = [v13 OAXChartNamespace];
  v15 = OCXFindChild(a3, v14, "hPercent");

  if (v15)
  {
    [(CHDView3D *)v6 setHeightPercent:CXRequiredLongAttribute(v15, CXNoNamespace, "val")];
  }

  v16 = [v5 drawingState];
  v17 = [v16 OAXChartNamespace];
  v18 = OCXFindChild(a3, v17, "depthPercent");

  if (v18)
  {
    [(CHDView3D *)v6 setDepthPercent:CXRequiredLongAttribute(v18, CXNoNamespace, "val")];
  }

  v19 = [v5 drawingState];
  v20 = [v19 OAXChartNamespace];
  v21 = OCXFindChild(a3, v20, "perspective");

  if (v21)
  {
    [(CHDView3D *)v6 setPerspective:CXRequiredLongAttribute(v21, CXNoNamespace, "val")];
  }

  v22 = [v5 drawingState];
  v23 = [v22 OAXChartNamespace];
  v24 = OCXFindChild(a3, v23, "rAngAx");

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