@interface CHXPie3DType
+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)a3 state:(id)a4;
@end

@implementation CHXPie3DType

+ (id)chdChartTypeFromXmlChartTypeElement:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v6 = [v5 chart];
  v7 = [(CHDChartType *)CHDPie3DType chartTypeWithChart:v6];

  [CHXPie2DType readFrom:a3 chartType:v7 state:v5];
  v8 = [v5 chart];
  v9 = [v8 plotArea];
  v10 = [v9 graphicProperties];

  if (!v10)
  {
    v11 = [v5 chart];
    v12 = [v11 plotArea];
    v13 = objc_alloc_init(OADGraphicProperties);
    [v12 setGraphicProperties:v13];
  }

  v14 = [v5 chart];
  v15 = [v14 plotArea];
  v16 = [v15 graphicProperties];
  v17 = [v16 hasOrientedBounds];

  if (v17)
  {
    v18 = [v5 chart];
    v19 = [v18 plotArea];
    v20 = [v19 graphicProperties];
    v21 = [v20 orientedBounds];
    [v21 bounds];
    v23 = v22;
    v25 = v24;

    if (v23 == 0.0 && v25 == 0.0)
    {
      v26 = [v5 chart];
      v27 = [v26 plotArea];
      v28 = [v27 graphicProperties];
      v29 = [v28 orientedBounds];
      [v29 setBounds:{0.0305555556, 0.0509259259, 0.860964348, 0.898148148}];
    }
  }

  return v7;
}

@end