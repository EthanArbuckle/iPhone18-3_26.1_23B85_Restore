@interface CHXErrorBar
+ (id)chdErrorBarFromXmlErrorBarElement:(_xmlNode *)a3 state:(id)a4;
+ (id)chxErrorBarTypeFromEnum:(int)a3;
+ (id)chxErrorBarValueTypeFromEnum:(int)a3;
+ (int)chdErrorBarDirectionFromXmlElement:(_xmlNode *)a3;
+ (int)chdErrorBarTypeFromXmlElement:(_xmlNode *)a3;
+ (int)chdErrorBarValueTypeFromXmlElement:(_xmlNode *)a3;
@end

@implementation CHXErrorBar

+ (id)chdErrorBarFromXmlErrorBarElement:(_xmlNode *)a3 state:(id)a4
{
  v6 = a4;
  v7 = [CHDErrorBar alloc];
  v8 = [v6 chart];
  v9 = [(CHDErrorBar *)v7 initWithChart:v8];

  v10 = [v6 drawingState];
  v11 = [v10 OAXChartNamespace];
  v12 = OCXFindChild(a3, v11, "val");

  if (v12)
  {
    v35 = 0.0;
    if (CXOptionalDoubleAttribute(v12, CXNoNamespace, "val", &v35))
    {
      [(CHDErrorBar *)v9 setValue:v35];
    }
  }

  v13 = [v6 drawingState];
  v14 = [v13 OAXChartNamespace];
  v15 = OCXFindChild(a3, v14, "errBarType");

  -[CHDErrorBar setType:](v9, "setType:", [a1 chdErrorBarTypeFromXmlElement:v15]);
  v16 = [v6 drawingState];
  v17 = [v16 OAXChartNamespace];
  v18 = OCXFindChild(a3, v17, "errValType");

  -[CHDErrorBar setValueType:](v9, "setValueType:", [a1 chdErrorBarValueTypeFromXmlElement:v18]);
  v19 = [v6 drawingState];
  v20 = [v19 OAXChartNamespace];
  v21 = OCXFindChild(a3, v20, "errDir");

  -[CHDErrorBar setDirection:](v9, "setDirection:", [a1 chdErrorBarDirectionFromXmlElement:v21]);
  v22 = [v6 drawingState];
  v23 = [v22 OAXChartNamespace];
  v24 = OCXFindChild(a3, v23, "noEndCap");

  if (v24)
  {
    [(CHDErrorBar *)v9 setNoEndCap:CXRequiredBoolAttribute(v24, CXNoNamespace, "val")];
  }

  v25 = [v6 drawingState];
  v26 = [v25 OAXChartNamespace];
  v27 = OCXFindChild(a3, v26, "minus");

  if (v27)
  {
    v28 = [CHXData chdDataFromXmlDataElement:v27 state:v6];
    [(CHDErrorBar *)v9 setMinusValues:v28];
  }

  v29 = [v6 drawingState];
  v30 = [v29 OAXChartNamespace];
  v31 = OCXFindChild(a3, v30, "plus");

  if (v31)
  {
    v32 = [CHXData chdDataFromXmlDataElement:v31 state:v6];
    [(CHDErrorBar *)v9 setPlusValues:v32];
  }

  v33 = objc_alloc_init(OADGraphicProperties);
  [CHXGraphicProperties setGraphicPropertiesFromXmlElementWithGraphicProperties:v33 element:a3 state:v6];
  [(CHDErrorBar *)v9 setGraphicProperties:v33];

  return v9;
}

+ (int)chdErrorBarTypeFromXmlElement:(_xmlNode *)a3
{
  if (!a3)
  {
    return 0;
  }

  v7 = 0;
  v3 = CXOptionalStringAttribute(a3, CXNoNamespace, "val", &v7);
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

+ (int)chdErrorBarValueTypeFromXmlElement:(_xmlNode *)a3
{
  if (!a3)
  {
    return 2;
  }

  v15 = 0;
  v3 = CXOptionalStringAttribute(a3, CXNoNamespace, "val", &v15);
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

+ (int)chdErrorBarDirectionFromXmlElement:(_xmlNode *)a3
{
  if (!a3)
  {
    return 1;
  }

  v9 = 0;
  v3 = CXOptionalStringAttribute(a3, CXNoNamespace, "val", &v9);
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

+ (id)chxErrorBarTypeFromEnum:(int)a3
{
  v3 = @"both";
  if (a3 == 1)
  {
    v3 = @"minus";
  }

  if (a3 == 2)
  {
    return @"plus";
  }

  else
  {
    return v3;
  }
}

+ (id)chxErrorBarValueTypeFromEnum:(int)a3
{
  if ((a3 - 1) > 4)
  {
    return @"fixedVal";
  }

  else
  {
    return off_2799CD2C0[a3 - 1];
  }
}

@end