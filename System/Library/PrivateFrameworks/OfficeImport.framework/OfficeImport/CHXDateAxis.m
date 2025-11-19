@interface CHXDateAxis
+ (id)chdAxisFromXmlAxisElement:(_xmlNode *)a3 state:(id)a4;
+ (id)stringFromTimeUnit:(int)a3;
+ (int)chdTimeUnitFromXmlTimeUnitElement:(_xmlNode *)a3;
@end

@implementation CHXDateAxis

+ (id)chdAxisFromXmlAxisElement:(_xmlNode *)a3 state:(id)a4
{
  v6 = a4;
  v7 = [CHDDateAxis alloc];
  v8 = [v6 resources];
  v9 = [(CHDDateAxis *)v7 initWithResources:v8];

  v10 = [v6 drawingState];
  v11 = [v10 OAXChartNamespace];
  v12 = OCXFindChild(a3, v11, "auto");

  if (v12)
  {
    [(CHDDateAxis *)v9 setAutomatic:CXRequiredBoolAttribute(v12, CXNoNamespace, "val")];
  }

  v13 = [v6 drawingState];
  v14 = [v13 OAXChartNamespace];
  v15 = OCXFindChild(a3, v14, "majorUnit");

  if (v15)
  {
    v29 = 0.0;
    if (CXOptionalDoubleAttribute(v15, CXNoNamespace, "val", &v29))
    {
      [(CHDDateAxis *)v9 setMajorUnitValue:v29];
    }
  }

  v16 = [v6 drawingState];
  v17 = [v16 OAXChartNamespace];
  v18 = OCXFindChild(a3, v17, "minorUnit");

  if (v18)
  {
    v29 = 0.0;
    if (CXOptionalDoubleAttribute(v18, CXNoNamespace, "val", &v29))
    {
      [(CHDDateAxis *)v9 setMinorUnitValue:v29];
    }
  }

  v19 = [v6 drawingState];
  v20 = [v19 OAXChartNamespace];
  v21 = OCXFindChild(a3, v20, "majorTimeUnit");

  -[CHDDateAxis setMajorTimeUnit:](v9, "setMajorTimeUnit:", [a1 chdTimeUnitFromXmlTimeUnitElement:v21]);
  v22 = [v6 drawingState];
  v23 = [v22 OAXChartNamespace];
  v24 = OCXFindChild(a3, v23, "minorTimeUnit");

  -[CHDDateAxis setMinorTimeUnit:](v9, "setMinorTimeUnit:", [a1 chdTimeUnitFromXmlTimeUnitElement:v24]);
  v25 = [v6 drawingState];
  v26 = [v25 OAXChartNamespace];
  v27 = OCXFindChild(a3, v26, "baseTimeUnit");

  -[CHDDateAxis setBaseTimeUnit:](v9, "setBaseTimeUnit:", [a1 chdTimeUnitFromXmlTimeUnitElement:v27]);

  return v9;
}

+ (int)chdTimeUnitFromXmlTimeUnitElement:(_xmlNode *)a3
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
    if ([v4 isEqualToString:@"days"])
    {
      v3 = 0;
    }

    else if ([v5 isEqualToString:@"months"])
    {
      v3 = 1;
    }

    else if ([v5 isEqualToString:@"years"])
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

+ (id)stringFromTimeUnit:(int)a3
{
  v3 = @"days";
  if (a3 == 1)
  {
    v3 = @"months";
  }

  if (a3 == 2)
  {
    return @"years";
  }

  else
  {
    return v3;
  }
}

@end