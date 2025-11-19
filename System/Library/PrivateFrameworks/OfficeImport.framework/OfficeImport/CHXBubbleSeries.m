@interface CHXBubbleSeries
+ (id)chdSeriesFromXmlSeriesElement:(_xmlNode *)a3 state:(id)a4;
@end

@implementation CHXBubbleSeries

+ (id)chdSeriesFromXmlSeriesElement:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v6 = [v5 chart];
  v7 = [(CHDSeries *)CHDBubbleSeries seriesWithChart:v6];

  v8 = [v5 drawingState];
  v9 = [v8 OAXChartNamespace];
  v10 = OCXFindChild(a3, v9, "bubble3D");

  if (v10)
  {
    [v7 setBubble3D:{CXRequiredBoolAttribute(v10, CXNoNamespace, "val")}];
  }

  v11 = [v5 drawingState];
  v12 = [v11 OAXChartNamespace];
  v13 = OCXFindChild(a3, v12, "invertIfNegative");

  if (v13)
  {
    [v7 setInvertIfNegative:{CXRequiredBoolAttribute(v13, CXNoNamespace, "val")}];
  }

  v14 = [v5 drawingState];
  v15 = [v14 OAXChartNamespace];
  v16 = OCXFindChild(a3, v15, "dLbls");

  if (!v16)
  {
    v17 = [v5 drawingState];
    v18 = [v17 OAXChartNamespace];
    v19 = OCXFindChild(0, v18, "showBubbleSize");

    if (v19)
    {
      v20 = CXRequiredBoolAttribute(v19, CXNoNamespace, "val");
    }

    else
    {
      v20 = 1;
    }

    [v7 setShowBubbleSize:v20];
  }

  return v7;
}

@end