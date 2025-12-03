@interface CHXLayout
+ (CGRect)boundsRectFromXmlManualLayoutElement:(_xmlNode *)element state:(id)state;
+ (id)orientedBoundsFromLayoutElement:(_xmlNode *)element state:(id)state;
+ (id)stringFromLayoutMode:(int)mode;
+ (void)readFrom:(_xmlNode *)from graphicProperties:(id)properties state:(id)state;
@end

@implementation CHXLayout

+ (id)orientedBoundsFromLayoutElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v9 = OCXFindChild(element, oAXChartNamespace, "manualLayout");

  if (v9)
  {
    [self boundsRectFromXmlManualLayoutElement:v9 state:stateCopy];
    v10 = [OADOrientedBounds orientedBoundsWithBounds:"orientedBoundsWithBounds:rotation:flipX:flipY:" rotation:0 flipX:0 flipY:?];
    drawingState2 = [stateCopy drawingState];
    oAXChartNamespace2 = [drawingState2 OAXChartNamespace];
    v13 = OCXFindChild(v9, oAXChartNamespace2, "xMode");

    if (v13)
    {
      v14 = CXRequiredStringAttribute(v13, CXNoNamespace, "val");
      if ([v14 isEqualToString:@"edge"])
      {
        [v10 setXMode:1];
      }
    }

    drawingState3 = [stateCopy drawingState];
    oAXChartNamespace3 = [drawingState3 OAXChartNamespace];
    v17 = OCXFindChild(v9, oAXChartNamespace3, "yMode");

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

+ (void)readFrom:(_xmlNode *)from graphicProperties:(id)properties state:(id)state
{
  propertiesCopy = properties;
  v7 = [CHXLayout orientedBoundsFromLayoutElement:from state:state];
  if (v7)
  {
    [propertiesCopy setOrientedBounds:v7];
  }
}

+ (CGRect)boundsRectFromXmlManualLayoutElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  v26 = 0.0;
  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v8 = OCXFindChild(element, oAXChartNamespace, "x");

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
  drawingState2 = [stateCopy drawingState];
  oAXChartNamespace2 = [drawingState2 OAXChartNamespace];
  v12 = OCXFindChild(element, oAXChartNamespace2, "y");

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
  drawingState3 = [stateCopy drawingState];
  oAXChartNamespace3 = [drawingState3 OAXChartNamespace];
  v16 = OCXFindChild(element, oAXChartNamespace3, "w");

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
  drawingState4 = [stateCopy drawingState];
  oAXChartNamespace4 = [drawingState4 OAXChartNamespace];
  v20 = OCXFindChild(element, oAXChartNamespace4, "h");

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

+ (id)stringFromLayoutMode:(int)mode
{
  if (mode == 1)
  {
    return @"edge";
  }

  else
  {
    return @"factor";
  }
}

@end