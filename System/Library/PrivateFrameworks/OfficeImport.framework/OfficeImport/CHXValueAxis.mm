@interface CHXValueAxis
+ (id)chdAxisFromXmlAxisElement:(_xmlNode *)a3 state:(id)a4;
+ (id)stringBuiltInUnitEnum:(int)a3;
+ (int)chdAxisBuiltInUnitFromXmlBuildInUnitElement:(_xmlNode *)a3;
@end

@implementation CHXValueAxis

+ (id)chdAxisFromXmlAxisElement:(_xmlNode *)a3 state:(id)a4
{
  v6 = a4;
  v7 = [CHDValueAxis alloc];
  v8 = [v6 resources];
  v9 = [(CHDValueAxis *)v7 initWithResources:v8];

  v10 = [v6 drawingState];
  v11 = [v10 OAXChartNamespace];
  v12 = OCXFindChild(a3, v11, "majorUnit");

  if (v12)
  {
    v39 = 0.0;
    if (CXOptionalDoubleAttribute(v12, CXNoNamespace, "val", &v39))
    {
      [(CHDValueAxis *)v9 setMajorUnitValue:v39];
    }
  }

  v13 = [v6 drawingState];
  v14 = [v13 OAXChartNamespace];
  v15 = OCXFindChild(a3, v14, "minorUnit");

  if (v15)
  {
    v39 = 0.0;
    if (CXOptionalDoubleAttribute(v15, CXNoNamespace, "val", &v39))
    {
      [(CHDValueAxis *)v9 setMinorUnitValue:v39];
    }
  }

  v16 = [v6 drawingState];
  v17 = [v16 OAXChartNamespace];
  v18 = OCXFindChild(a3, v17, "scaling");

  if (v18)
  {
    v19 = [v6 drawingState];
    v20 = [v19 OAXChartNamespace];
    v21 = OCXFindChild(v18, v20, "logBase");

    if (v21)
    {
      v39 = 0.0;
      if (CXOptionalDoubleAttribute(v21, CXNoNamespace, "val", &v39))
      {
        [(CHDValueAxis *)v9 setScalingLogBase:v39];
      }
    }

    v22 = [v6 drawingState];
    v23 = [v22 OAXChartNamespace];
    v24 = OCXFindChild(v18, v23, "orientation");

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

  v28 = [v6 drawingState];
  v29 = [v28 OAXChartNamespace];
  v30 = OCXFindChild(a3, v29, "dispUnits");

  if (v30)
  {
    v31 = [v6 drawingState];
    v32 = [v31 OAXChartNamespace];
    v33 = OCXFindChild(v30, v32, "builtInUnit");

    if (v33)
    {
      -[CHDValueAxis setBuiltInUnit:](v9, "setBuiltInUnit:", [a1 chdAxisBuiltInUnitFromXmlBuildInUnitElement:v33]);
    }

    v34 = [v6 drawingState];
    v35 = [v34 OAXChartNamespace];
    v36 = OCXFindChild(v30, v35, "dispUnitsLbl");

    if (v36)
    {
      [(CHDValueAxis *)v9 setShowBuiltInUnitFlag:1];
    }
  }

  return v9;
}

+ (int)chdAxisBuiltInUnitFromXmlBuildInUnitElement:(_xmlNode *)a3
{
  if (a3)
  {
    v8 = 0;
    v3 = CXOptionalStringAttribute(a3, CXNoNamespace, "val", &v8);
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

+ (id)stringBuiltInUnitEnum:(int)a3
{
  if (a3 > 8)
  {
    return 0;
  }

  else
  {
    return off_2799CD378[a3];
  }
}

@end