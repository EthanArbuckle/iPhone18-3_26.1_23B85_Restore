@interface CHXUnsupportedType
+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)a3 state:(id)a4;
@end

@implementation CHXUnsupportedType

+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v6 = objc_opt_class();
  v7 = [v5 drawingState];
  v8 = [v7 OAXChartNamespace];
  HasName = CXNodeHasName(a3, v8, "radarChart");

  if (HasName)
  {
    v6 = objc_opt_class();
  }

  v10 = [v5 drawingState];
  v11 = [v10 OAXChartNamespace];
  if (CXNodeHasName(a3, v11, "surfaceChart"))
  {
  }

  else
  {
    v12 = [v5 drawingState];
    v13 = [v12 OAXChartNamespace];
    v14 = CXNodeHasName(a3, v13, "surface3DChart");

    if (!v14)
    {
      goto LABEL_7;
    }
  }

  v6 = objc_opt_class();
LABEL_7:
  v15 = [v5 chart];
  v16 = [v6 chartTypeWithChart:v15];

  return v16;
}

@end