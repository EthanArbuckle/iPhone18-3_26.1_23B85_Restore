@interface CHXValueAxis
+ (id)chdAxisFromXmlAxisElement:(_xmlNode *)element state:(id)state;
+ (id)stringBuiltInUnitEnum:(int)enum;
+ (int)chdAxisBuiltInUnitFromXmlBuildInUnitElement:(_xmlNode *)element;
@end

@implementation CHXValueAxis

+ (id)chdAxisFromXmlAxisElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  v7 = [CHDValueAxis alloc];
  resources = [stateCopy resources];
  v9 = [(CHDValueAxis *)v7 initWithResources:resources];

  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v12 = OCXFindChild(element, oAXChartNamespace, "majorUnit");

  if (v12)
  {
    v39 = 0.0;
    if (CXOptionalDoubleAttribute(v12, CXNoNamespace, "val", &v39))
    {
      [(CHDValueAxis *)v9 setMajorUnitValue:v39];
    }
  }

  drawingState2 = [stateCopy drawingState];
  oAXChartNamespace2 = [drawingState2 OAXChartNamespace];
  v15 = OCXFindChild(element, oAXChartNamespace2, "minorUnit");

  if (v15)
  {
    v39 = 0.0;
    if (CXOptionalDoubleAttribute(v15, CXNoNamespace, "val", &v39))
    {
      [(CHDValueAxis *)v9 setMinorUnitValue:v39];
    }
  }

  drawingState3 = [stateCopy drawingState];
  oAXChartNamespace3 = [drawingState3 OAXChartNamespace];
  v18 = OCXFindChild(element, oAXChartNamespace3, "scaling");

  if (v18)
  {
    drawingState4 = [stateCopy drawingState];
    oAXChartNamespace4 = [drawingState4 OAXChartNamespace];
    v21 = OCXFindChild(v18, oAXChartNamespace4, "logBase");

    if (v21)
    {
      v39 = 0.0;
      if (CXOptionalDoubleAttribute(v21, CXNoNamespace, "val", &v39))
      {
        [(CHDValueAxis *)v9 setScalingLogBase:v39];
      }
    }

    drawingState5 = [stateCopy drawingState];
    oAXChartNamespace5 = [drawingState5 OAXChartNamespace];
    v24 = OCXFindChild(v18, oAXChartNamespace5, "orientation");

    if (v24)
    {
      v38 = 0;
      v25 = CXOptionalStringAttribute(v24, CXNoNamespace, "val", &v38);
      v26 = v38;
      v27 = v26;
      if (v25 && ![v26 compare:@"maxMin"])
      {
        [(CHDAxis *)v9 setReverseOrder:1];
      }
    }
  }

  drawingState6 = [stateCopy drawingState];
  oAXChartNamespace6 = [drawingState6 OAXChartNamespace];
  v30 = OCXFindChild(element, oAXChartNamespace6, "dispUnits");

  if (v30)
  {
    drawingState7 = [stateCopy drawingState];
    oAXChartNamespace7 = [drawingState7 OAXChartNamespace];
    v33 = OCXFindChild(v30, oAXChartNamespace7, "builtInUnit");

    if (v33)
    {
      -[CHDValueAxis setBuiltInUnit:](v9, "setBuiltInUnit:", [self chdAxisBuiltInUnitFromXmlBuildInUnitElement:v33]);
    }

    drawingState8 = [stateCopy drawingState];
    oAXChartNamespace8 = [drawingState8 OAXChartNamespace];
    v36 = OCXFindChild(v30, oAXChartNamespace8, "dispUnitsLbl");

    if (v36)
    {
      [(CHDValueAxis *)v9 setShowBuiltInUnitFlag:1];
    }
  }

  return v9;
}

+ (int)chdAxisBuiltInUnitFromXmlBuildInUnitElement:(_xmlNode *)element
{
  if (element)
  {
    v8 = 0;
    v3 = CXOptionalStringAttribute(element, CXNoNamespace, "val", &v8);
    v4 = v8;
    v5 = v4;
    if (v3)
    {
      if ([v4 isEqualToString:@"hundreds"])
      {
        v6 = 0;
LABEL_23:

        return v6;
      }

      if ([v5 isEqualToString:@"thousands"])
      {
        v6 = 1;
        goto LABEL_23;
      }

      if ([v5 isEqualToString:@"tenThousands"])
      {
        v6 = 2;
        goto LABEL_23;
      }

      if ([v5 isEqualToString:@"hundredThousands"])
      {
        v6 = 3;
        goto LABEL_23;
      }

      if ([v5 isEqualToString:@"millions"])
      {
        v6 = 4;
        goto LABEL_23;
      }

      if ([v5 isEqualToString:@"tenMillions"])
      {
        v6 = 5;
        goto LABEL_23;
      }

      if ([v5 isEqualToString:@"hundredMillions"])
      {
        v6 = 6;
        goto LABEL_23;
      }

      if ([v5 isEqualToString:@"billions"])
      {
        v6 = 7;
        goto LABEL_23;
      }

      if ([v5 isEqualToString:@"trillions"])
      {
        v6 = 8;
        goto LABEL_23;
      }
    }

    v6 = -1;
    goto LABEL_23;
  }

  return -1;
}

+ (id)stringBuiltInUnitEnum:(int)enum
{
  if (enum > 8)
  {
    return 0;
  }

  else
  {
    return off_2799CD378[enum];
  }
}

@end