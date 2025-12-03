@interface CHXDateAxis
+ (id)chdAxisFromXmlAxisElement:(_xmlNode *)element state:(id)state;
+ (id)stringFromTimeUnit:(int)unit;
+ (int)chdTimeUnitFromXmlTimeUnitElement:(_xmlNode *)element;
@end

@implementation CHXDateAxis

+ (id)chdAxisFromXmlAxisElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  v7 = [CHDDateAxis alloc];
  resources = [stateCopy resources];
  v9 = [(CHDDateAxis *)v7 initWithResources:resources];

  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v12 = OCXFindChild(element, oAXChartNamespace, "auto");

  if (v12)
  {
    [(CHDDateAxis *)v9 setAutomatic:CXRequiredBoolAttribute(v12, CXNoNamespace, "val")];
  }

  drawingState2 = [stateCopy drawingState];
  oAXChartNamespace2 = [drawingState2 OAXChartNamespace];
  v15 = OCXFindChild(element, oAXChartNamespace2, "majorUnit");

  if (v15)
  {
    v29 = 0.0;
    if (CXOptionalDoubleAttribute(v15, CXNoNamespace, "val", &v29))
    {
      [(CHDDateAxis *)v9 setMajorUnitValue:v29];
    }
  }

  drawingState3 = [stateCopy drawingState];
  oAXChartNamespace3 = [drawingState3 OAXChartNamespace];
  v18 = OCXFindChild(element, oAXChartNamespace3, "minorUnit");

  if (v18)
  {
    v29 = 0.0;
    if (CXOptionalDoubleAttribute(v18, CXNoNamespace, "val", &v29))
    {
      [(CHDDateAxis *)v9 setMinorUnitValue:v29];
    }
  }

  drawingState4 = [stateCopy drawingState];
  oAXChartNamespace4 = [drawingState4 OAXChartNamespace];
  v21 = OCXFindChild(element, oAXChartNamespace4, "majorTimeUnit");

  -[CHDDateAxis setMajorTimeUnit:](v9, "setMajorTimeUnit:", [self chdTimeUnitFromXmlTimeUnitElement:v21]);
  drawingState5 = [stateCopy drawingState];
  oAXChartNamespace5 = [drawingState5 OAXChartNamespace];
  v24 = OCXFindChild(element, oAXChartNamespace5, "minorTimeUnit");

  -[CHDDateAxis setMinorTimeUnit:](v9, "setMinorTimeUnit:", [self chdTimeUnitFromXmlTimeUnitElement:v24]);
  drawingState6 = [stateCopy drawingState];
  oAXChartNamespace6 = [drawingState6 OAXChartNamespace];
  v27 = OCXFindChild(element, oAXChartNamespace6, "baseTimeUnit");

  -[CHDDateAxis setBaseTimeUnit:](v9, "setBaseTimeUnit:", [self chdTimeUnitFromXmlTimeUnitElement:v27]);

  return v9;
}

+ (int)chdTimeUnitFromXmlTimeUnitElement:(_xmlNode *)element
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

+ (id)stringFromTimeUnit:(int)unit
{
  v3 = @"days";
  if (unit == 1)
  {
    v3 = @"months";
  }

  if (unit == 2)
  {
    return @"years";
  }

  else
  {
    return v3;
  }
}

@end