@interface CHXLayout
+ (CGRect)boundsRectFromXmlManualLayoutElement:(_xmlNode *)a3 state:(id)a4;
+ (id)orientedBoundsFromLayoutElement:(_xmlNode *)a3 state:(id)a4;
+ (id)stringFromLayoutMode:(int)a3;
+ (void)readFrom:(_xmlNode *)a3 graphicProperties:(id)a4 state:(id)a5;
@end

@implementation CHXLayout

+ (id)orientedBoundsFromLayoutElement:(_xmlNode *)a3 state:(id)a4
{
  v6 = a4;
  v7 = [v6 drawingState];
  v8 = [v7 OAXChartNamespace];
  v9 = OCXFindChild(a3, v8, "manualLayout");

  if (v9)
  {
    [a1 boundsRectFromXmlManualLayoutElement:v9 state:v6];
    v10 = [OADOrientedBounds orientedBoundsWithBounds:"orientedBoundsWithBounds:rotation:flipX:flipY:" rotation:0 flipX:0 flipY:?];
    v11 = [v6 drawingState];
    v12 = [v11 OAXChartNamespace];
    v13 = OCXFindChild(v9, v12, "xMode");

    if (v13)
    {
      v14 = CXRequiredStringAttribute(v13, CXNoNamespace, "val");
      if ([v14 isEqualToString:@"edge"])
      {
        [v10 setXMode:1];
      }
    }

    v15 = [v6 drawingState];
    v16 = [v15 OAXChartNamespace];
    v17 = OCXFindChild(v9, v16, "yMode");

    if (v17)
    {
      v18 = CXRequiredStringAttribute(v17, CXNoNamespace, "val");
      if ([v18 isEqualToString:@"edge"])
      {
        [v10 setYMode:1];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)readFrom:(_xmlNode *)a3 graphicProperties:(id)a4 state:(id)a5
{
  v8 = a4;
  v7 = [CHXLayout orientedBoundsFromLayoutElement:a3 state:a5];
  if (v7)
  {
    [v8 setOrientedBounds:v7];
  }
}

+ (CGRect)boundsRectFromXmlManualLayoutElement:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v26 = 0.0;
  v6 = [v5 drawingState];
  v7 = [v6 OAXChartNamespace];
  v8 = OCXFindChild(a3, v7, "x");

  if (v8)
  {
    CXOptionalDoubleAttribute(v8, CXNoNamespace, "val", &v26);
    v9 = v26;
  }

  else
  {
    v9 = 0.0;
  }

  v26 = 0.0;
  v10 = [v5 drawingState];
  v11 = [v10 OAXChartNamespace];
  v12 = OCXFindChild(a3, v11, "y");

  if (v12)
  {
    CXOptionalDoubleAttribute(v12, CXNoNamespace, "val", &v26);
    v13 = v26;
  }

  else
  {
    v13 = 0.0;
  }

  v26 = 0.0;
  v14 = [v5 drawingState];
  v15 = [v14 OAXChartNamespace];
  v16 = OCXFindChild(a3, v15, "w");

  if (v16)
  {
    CXOptionalDoubleAttribute(v16, CXNoNamespace, "val", &v26);
    v17 = v26;
  }

  else
  {
    v17 = 0.0;
  }

  v26 = 0.0;
  v18 = [v5 drawingState];
  v19 = [v18 OAXChartNamespace];
  v20 = OCXFindChild(a3, v19, "h");

  if (v20)
  {
    CXOptionalDoubleAttribute(v20, CXNoNamespace, "val", &v26);
    v21 = v26;
  }

  else
  {
    v21 = 0.0;
  }

  v22 = v9;
  v23 = v13;
  v24 = v17;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

+ (id)stringFromLayoutMode:(int)a3
{
  if (a3 == 1)
  {
    return @"edge";
  }

  else
  {
    return @"factor";
  }
}

@end