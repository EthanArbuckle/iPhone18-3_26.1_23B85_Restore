@interface CHXCategoryAxis
+ (id)chdAxisFromXmlAxisElement:(_xmlNode *)element state:(id)state;
+ (id)stringFromLabelAlignment:(int)alignment;
+ (int)chdLabelAlignFromXmlLabelAlignElement:(_xmlNode *)element;
@end

@implementation CHXCategoryAxis

+ (id)chdAxisFromXmlAxisElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  v7 = [CHDCategoryAxis alloc];
  resources = [stateCopy resources];
  v9 = [(CHDCategoryAxis *)v7 initWithResources:resources];

  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v12 = OCXFindChild(element, oAXChartNamespace, "auto");

  if (v12)
  {
    [(CHDCategoryAxis *)v9 setAutomatic:CXRequiredBoolAttribute(v12, CXNoNamespace, "val")];
  }

  drawingState2 = [stateCopy drawingState];
  oAXChartNamespace2 = [drawingState2 OAXChartNamespace];
  v15 = OCXFindChild(element, oAXChartNamespace2, "noMultiLvlLbl");

  if (v15)
  {
    [(CHDCategoryAxis *)v9 setNoMultipleLevelLabel:CXRequiredBoolAttribute(v15, CXNoNamespace, "val")];
  }

  drawingState3 = [stateCopy drawingState];
  oAXChartNamespace3 = [drawingState3 OAXChartNamespace];
  v18 = OCXFindChild(element, oAXChartNamespace3, "lblAlgn");

  if (v18)
  {
    -[CHDCategoryAxis setLabelAlignment:](v9, "setLabelAlignment:", [self chdLabelAlignFromXmlLabelAlignElement:v18]);
  }

  drawingState4 = [stateCopy drawingState];
  oAXChartNamespace4 = [drawingState4 OAXChartNamespace];
  v21 = OCXFindChild(element, oAXChartNamespace4, "scaling");

  if (v21)
  {
    drawingState5 = [stateCopy drawingState];
    oAXChartNamespace5 = [drawingState5 OAXChartNamespace];
    v24 = OCXFindChild(v21, oAXChartNamespace5, "orientation");

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

  drawingState6 = [stateCopy drawingState];
  oAXChartNamespace6 = [drawingState6 OAXChartNamespace];
  v30 = OCXFindChild(element, oAXChartNamespace6, "tickLblSkip");

  if (v30)
  {
    [(CHDCategoryAxis *)v9 setLabelFrequency:CXRequiredLongAttribute(v30, CXNoNamespace, "val")];
  }

  return v9;
}

+ (int)chdLabelAlignFromXmlLabelAlignElement:(_xmlNode *)element
{
  v3 = CXRequiredStringAttribute(element, CXNoNamespace, "val");
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

+ (id)stringFromLabelAlignment:(int)alignment
{
  v3 = @"ctr";
  if (alignment == 1)
  {
    v3 = @"l";
  }

  if (alignment == 3)
  {
    return @"r";
  }

  else
  {
    return v3;
  }
}

@end