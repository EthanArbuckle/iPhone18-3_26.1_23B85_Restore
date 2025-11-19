@interface CHXCategoryAxis
+ (id)chdAxisFromXmlAxisElement:(_xmlNode *)a3 state:(id)a4;
+ (id)stringFromLabelAlignment:(int)a3;
+ (int)chdLabelAlignFromXmlLabelAlignElement:(_xmlNode *)a3;
@end

@implementation CHXCategoryAxis

+ (id)chdAxisFromXmlAxisElement:(_xmlNode *)a3 state:(id)a4
{
  v6 = a4;
  v7 = [CHDCategoryAxis alloc];
  v8 = [v6 resources];
  v9 = [(CHDCategoryAxis *)v7 initWithResources:v8];

  v10 = [v6 drawingState];
  v11 = [v10 OAXChartNamespace];
  v12 = OCXFindChild(a3, v11, "auto");

  if (v12)
  {
    [(CHDCategoryAxis *)v9 setAutomatic:CXRequiredBoolAttribute(v12, CXNoNamespace, "val")];
  }

  v13 = [v6 drawingState];
  v14 = [v13 OAXChartNamespace];
  v15 = OCXFindChild(a3, v14, "noMultiLvlLbl");

  if (v15)
  {
    [(CHDCategoryAxis *)v9 setNoMultipleLevelLabel:CXRequiredBoolAttribute(v15, CXNoNamespace, "val")];
  }

  v16 = [v6 drawingState];
  v17 = [v16 OAXChartNamespace];
  v18 = OCXFindChild(a3, v17, "lblAlgn");

  if (v18)
  {
    -[CHDCategoryAxis setLabelAlignment:](v9, "setLabelAlignment:", [a1 chdLabelAlignFromXmlLabelAlignElement:v18]);
  }

  v19 = [v6 drawingState];
  v20 = [v19 OAXChartNamespace];
  v21 = OCXFindChild(a3, v20, "scaling");

  if (v21)
  {
    v22 = [v6 drawingState];
    v23 = [v22 OAXChartNamespace];
    v24 = OCXFindChild(v21, v23, "orientation");

    if (v24)
    {
      v32 = 0;
      v25 = CXOptionalStringAttribute(v24, CXNoNamespace, "val", &v32);
      v26 = v32;
      v27 = v26;
      if (v25 && ![v26 compare:@"maxMin"])
      {
        [(CHDAxis *)v9 setReverseOrder:1];
      }
    }
  }

  v28 = [v6 drawingState];
  v29 = [v28 OAXChartNamespace];
  v30 = OCXFindChild(a3, v29, "tickLblSkip");

  if (v30)
  {
    [(CHDCategoryAxis *)v9 setLabelFrequency:CXRequiredLongAttribute(v30, CXNoNamespace, "val")];
  }

  return v9;
}

+ (int)chdLabelAlignFromXmlLabelAlignElement:(_xmlNode *)a3
{
  v3 = CXRequiredStringAttribute(a3, CXNoNamespace, "val");
  if ([v3 isEqualToString:@"ctr"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"l"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"r"])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

+ (id)stringFromLabelAlignment:(int)a3
{
  v3 = @"ctr";
  if (a3 == 1)
  {
    v3 = @"l";
  }

  if (a3 == 3)
  {
    return @"r";
  }

  else
  {
    return v3;
  }
}

@end