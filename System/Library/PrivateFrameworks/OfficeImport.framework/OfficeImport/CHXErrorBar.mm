@interface CHXErrorBar
+ (id)chdErrorBarFromXmlErrorBarElement:(_xmlNode *)element state:(id)state;
+ (id)chxErrorBarTypeFromEnum:(int)enum;
+ (id)chxErrorBarValueTypeFromEnum:(int)enum;
+ (int)chdErrorBarDirectionFromXmlElement:(_xmlNode *)element;
+ (int)chdErrorBarTypeFromXmlElement:(_xmlNode *)element;
+ (int)chdErrorBarValueTypeFromXmlElement:(_xmlNode *)element;
@end

@implementation CHXErrorBar

+ (id)chdErrorBarFromXmlErrorBarElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  v7 = [CHDErrorBar alloc];
  chart = [stateCopy chart];
  v9 = [(CHDErrorBar *)v7 initWithChart:chart];

  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v12 = OCXFindChild(element, oAXChartNamespace, "val");

  if (v12)
  {
    v35 = 0.0;
    if (CXOptionalDoubleAttribute(v12, CXNoNamespace, "val", &v35))
    {
      [(CHDErrorBar *)v9 setValue:v35];
    }
  }

  drawingState2 = [stateCopy drawingState];
  oAXChartNamespace2 = [drawingState2 OAXChartNamespace];
  v15 = OCXFindChild(element, oAXChartNamespace2, "errBarType");

  -[CHDErrorBar setType:](v9, "setType:", [self chdErrorBarTypeFromXmlElement:v15]);
  drawingState3 = [stateCopy drawingState];
  oAXChartNamespace3 = [drawingState3 OAXChartNamespace];
  v18 = OCXFindChild(element, oAXChartNamespace3, "errValType");

  -[CHDErrorBar setValueType:](v9, "setValueType:", [self chdErrorBarValueTypeFromXmlElement:v18]);
  drawingState4 = [stateCopy drawingState];
  oAXChartNamespace4 = [drawingState4 OAXChartNamespace];
  v21 = OCXFindChild(element, oAXChartNamespace4, "errDir");

  -[CHDErrorBar setDirection:](v9, "setDirection:", [self chdErrorBarDirectionFromXmlElement:v21]);
  drawingState5 = [stateCopy drawingState];
  oAXChartNamespace5 = [drawingState5 OAXChartNamespace];
  v24 = OCXFindChild(element, oAXChartNamespace5, "noEndCap");

  if (v24)
  {
    [(CHDErrorBar *)v9 setNoEndCap:CXRequiredBoolAttribute(v24, CXNoNamespace, "val")];
  }

  drawingState6 = [stateCopy drawingState];
  oAXChartNamespace6 = [drawingState6 OAXChartNamespace];
  v27 = OCXFindChild(element, oAXChartNamespace6, "minus");

  if (v27)
  {
    v28 = [CHXData chdDataFromXmlDataElement:v27 state:stateCopy];
    [(CHDErrorBar *)v9 setMinusValues:v28];
  }

  drawingState7 = [stateCopy drawingState];
  oAXChartNamespace7 = [drawingState7 OAXChartNamespace];
  v31 = OCXFindChild(element, oAXChartNamespace7, "plus");

  if (v31)
  {
    v32 = [CHXData chdDataFromXmlDataElement:v31 state:stateCopy];
    [(CHDErrorBar *)v9 setPlusValues:v32];
  }

  v33 = objc_alloc_init(OADGraphicProperties);
  [CHXGraphicProperties setGraphicPropertiesFromXmlElementWithGraphicProperties:v33 element:element state:stateCopy];
  [(CHDErrorBar *)v9 setGraphicProperties:v33];

  return v9;
}

+ (int)chdErrorBarTypeFromXmlElement:(_xmlNode *)element
{
  if (!element)
  {
    return 0;
  }

  v7 = 0;
  v3 = CXOptionalStringAttribute(element, CXNoNamespace, "val", &v7);
  v4 = v7;
  v5 = v4;
  if (v3)
  {
    [v4 isEqualToString:@"both"];
    v3 = [v5 isEqualToString:@"minus"];
    if ([v5 isEqualToString:@"plus"])
    {
      v3 = 2;
    }
  }

  return v3;
}

+ (int)chdErrorBarValueTypeFromXmlElement:(_xmlNode *)element
{
  if (!element)
  {
    return 2;
  }

  v15 = 0;
  v3 = CXOptionalStringAttribute(element, CXNoNamespace, "val", &v15);
  v4 = v15;
  v5 = v4;
  if (v3)
  {
    v6 = [v4 isEqualToString:@"cust"];
    v7 = [v5 isEqualToString:@"fixedVal"];
    v8 = [v5 isEqualToString:@"percentage"];
    v9 = [v5 isEqualToString:@"stdDev"];
    v10 = [v5 isEqualToString:@"stdErr"];
    if (v6)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v7)
    {
      v12 = 2;
    }

    else
    {
      v12 = v11;
    }

    if (v8)
    {
      v12 = 1;
    }

    if (v9)
    {
      v12 = 3;
    }

    if (v10)
    {
      v13 = 5;
    }

    else
    {
      v13 = v12;
    }
  }

  else
  {
    v13 = 2;
  }

  return v13;
}

+ (int)chdErrorBarDirectionFromXmlElement:(_xmlNode *)element
{
  if (!element)
  {
    return 1;
  }

  v9 = 0;
  v3 = CXOptionalStringAttribute(element, CXNoNamespace, "val", &v9);
  v4 = v9;
  v5 = v4;
  if (v3)
  {
    v6 = [v4 isEqualToString:@"x"];
    v7 = [v5 isEqualToString:@"y"] & 1 | ((v6 & 1) == 0);
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (id)chxErrorBarTypeFromEnum:(int)enum
{
  v3 = @"both";
  if (enum == 1)
  {
    v3 = @"minus";
  }

  if (enum == 2)
  {
    return @"plus";
  }

  else
  {
    return v3;
  }
}

+ (id)chxErrorBarValueTypeFromEnum:(int)enum
{
  if ((enum - 1) > 4)
  {
    return @"fixedVal";
  }

  else
  {
    return off_2799CD2C0[enum - 1];
  }
}

@end