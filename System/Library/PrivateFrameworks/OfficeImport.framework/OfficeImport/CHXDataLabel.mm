@interface CHXDataLabel
+ (Class)chdDataValuePropertiesClassWithState:(id)state;
+ (id)chdDataLabelFromXmlDataLabelElement:(_xmlNode *)element state:(id)state;
+ (id)stringFromDataLabelPosition:(int)position;
+ (int)chdDataLabelPositionFromXmlDataLabelElement:(_xmlNode *)element state:(id)state;
+ (void)readFrom:(_xmlNode *)from dataValuePropertiesCollection:(id)collection state:(id)state;
@end

@implementation CHXDataLabel

+ (void)readFrom:(_xmlNode *)from dataValuePropertiesCollection:(id)collection state:(id)state
{
  collectionCopy = collection;
  stateCopy = state;
  v34 = [CHXFont readParagraphPropertiesFromXmlTextPropertiesParentElement:from state:stateCopy];
  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v11 = OCXFindChild(from, oAXChartNamespace, "showLeaderLines");

  if (v11 && CXRequiredBoolAttribute(v11, CXNoNamespace, "val"))
  {
    drawingState2 = [stateCopy drawingState];
    oAXChartNamespace2 = [drawingState2 OAXChartNamespace];
    v14 = OCXFindChild(from, oAXChartNamespace2, "leaderLines");

    if (v14)
    {
      v15 = objc_alloc_init(OADGraphicProperties);
      [CHXGraphicProperties setGraphicPropertiesFromXmlElementWithGraphicProperties:v15 element:v14 state:stateCopy];
      v32 = v15;
    }

    else
    {
      v32 = 0;
    }

    v16 = 1;
    [self chdDataLabelFromXmlDataLabelElement:from state:{stateCopy, v32}];
  }

  else
  {
    v16 = 0;
    [self chdDataLabelFromXmlDataLabelElement:from state:{stateCopy, 0}];
  }
  v35 = ;
  [v35 setShowLeaderLines:v16];
  if (v33)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 == 1)
  {
    [v35 setLeaderlineGraphicProperties:v33];
  }

  currentSeries = [stateCopy currentSeries];
  [currentSeries setDefaultDataLabel:v35];

  drawingState3 = [stateCopy drawingState];
  oAXChartNamespace3 = [drawingState3 OAXChartNamespace];
  v21 = OCXFindChild(from, oAXChartNamespace3, "dLbl");

  while (v21)
  {
    drawingState4 = [stateCopy drawingState];
    oAXChartNamespace4 = [drawingState4 OAXChartNamespace];
    v24 = OCXFindChild(v21, oAXChartNamespace4, "spPr");

    if (!v24)
    {
      [stateCopy pushDefaultTextProperties:v34];
    }

    v25 = [self chdDataLabelFromXmlDataLabelElement:v21 state:stateCopy];
    if (!v24)
    {
      [stateCopy popDefaultTextProperties];
    }

    [v25 setShowLeaderLines:v16];
    if (v16)
    {
      leaderlineGraphicProperties = [v35 leaderlineGraphicProperties];
      [v25 setLeaderlineGraphicProperties:leaderlineGraphicProperties];
    }

    drawingState5 = [stateCopy drawingState];
    oAXChartNamespace5 = [drawingState5 OAXChartNamespace];
    v29 = OCXFindRequiredChild(v21, oAXChartNamespace5, "idx");

    v30 = CXRequiredUnsignedLongAttribute(v29, CXNoNamespace, "val");
    v31 = [collectionCopy objectWithKey:v30];
    if (!v31)
    {
      v31 = objc_alloc_init([self chdDataValuePropertiesClassWithState:stateCopy]);
      [v31 setDataValueIndex:v30];
      [collectionCopy addObject:v31];
    }

    [v31 setDataLabel:v25];
    v21 = OCXNextSiblingNamed(v21, "dLbl");
  }
}

+ (id)chdDataLabelFromXmlDataLabelElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  resources = [stateCopy resources];
  v8 = [CHDDataLabel dataLabelWithResources:resources];

  currentSeries = [stateCopy currentSeries];
  defaultDataLabel = [currentSeries defaultDataLabel];

  if (defaultDataLabel)
  {
    currentSeries2 = [stateCopy currentSeries];
    defaultDataLabel2 = [currentSeries2 defaultDataLabel];

    [v8 setPosition:{objc_msgSend(defaultDataLabel2, "position")}];
    [v8 setShowValue:{objc_msgSend(defaultDataLabel2, "isShowValue")}];
    [v8 setShowPercent:{objc_msgSend(defaultDataLabel2, "isShowPercent")}];
    [v8 setShowBubbleSize:{objc_msgSend(defaultDataLabel2, "isShowBubbleSize")}];
    [v8 setShowCategoryName:{objc_msgSend(defaultDataLabel2, "isShowCategoryName")}];
    [v8 setShowSeriesName:{objc_msgSend(defaultDataLabel2, "isShowSeriesName")}];
    [v8 setShowLegendKey:{objc_msgSend(defaultDataLabel2, "isShowLegendKey")}];
    [v8 setIsPositionAffineTransform:{objc_msgSend(defaultDataLabel2, "isPositionAffineTransform")}];
  }

  v13 = objc_alloc_init(OADGraphicProperties);
  [CHXGraphicProperties setGraphicPropertiesFromXmlElementWithGraphicProperties:v13 element:element state:stateCopy];
  [v8 setGraphicProperties:v13];
  if ([(OADDrawableProperties *)v13 hasOrientedBounds])
  {
    [v8 setIsPositionAffineTransform:1];
  }

  if ([(OADDrawableProperties *)v13 hasOrientedBounds])
  {
    v14 = 10;
  }

  else
  {
    v14 = [self chdDataLabelPositionFromXmlDataLabelElement:element state:stateCopy];
  }

  [v8 setPosition:v14];
  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v17 = OCXFindChild(element, oAXChartNamespace, "showVal");

  if (v17)
  {
    [v8 setShowValue:{CXRequiredBoolAttribute(v17, CXNoNamespace, "val")}];
  }

  drawingState2 = [stateCopy drawingState];
  oAXChartNamespace2 = [drawingState2 OAXChartNamespace];
  v20 = OCXFindChild(element, oAXChartNamespace2, "showPercent");

  if (v20)
  {
    [v8 setShowPercent:{CXRequiredBoolAttribute(v20, CXNoNamespace, "val")}];
  }

  drawingState3 = [stateCopy drawingState];
  oAXChartNamespace3 = [drawingState3 OAXChartNamespace];
  v23 = OCXFindChild(element, oAXChartNamespace3, "showBubbleSize");

  if (v23)
  {
    [v8 setShowBubbleSize:{CXRequiredBoolAttribute(v23, CXNoNamespace, "val")}];
  }

  drawingState4 = [stateCopy drawingState];
  oAXChartNamespace4 = [drawingState4 OAXChartNamespace];
  v26 = OCXFindChild(element, oAXChartNamespace4, "showCatName");

  if (v26)
  {
    [v8 setShowCategoryName:{CXRequiredBoolAttribute(v26, CXNoNamespace, "val")}];
  }

  drawingState5 = [stateCopy drawingState];
  oAXChartNamespace5 = [drawingState5 OAXChartNamespace];
  v29 = OCXFindChild(element, oAXChartNamespace5, "showLegendKey");

  if (v29)
  {
    [v8 setShowLegendKey:{CXRequiredBoolAttribute(v29, CXNoNamespace, "val")}];
  }

  drawingState6 = [stateCopy drawingState];
  oAXChartNamespace6 = [drawingState6 OAXChartNamespace];
  v32 = OCXFindChild(element, oAXChartNamespace6, "showSerName");

  if (v32)
  {
    [v8 setShowSeriesName:{CXRequiredBoolAttribute(v32, CXNoNamespace, "val")}];
  }

  drawingState7 = [stateCopy drawingState];
  oAXChartNamespace7 = [drawingState7 OAXChartNamespace];
  v35 = OCXFindChild(element, oAXChartNamespace7, "numFmt");

  if (v35)
  {
    v62 = 0;
    v36 = CXOptionalStringAttribute(v35, CXNoNamespace, "formatCode", &v62);
    v37 = v62;
    if (v36)
    {
      v38 = [EDString edStringWithString:v37];
      v39 = [EDContentFormat contentFormatWithFormatString:v38];

      [v8 setContentFormat:v39];
    }

    v61 = 0.0;
    if (CXOptionalDoubleAttribute(v35, CXNoNamespace, "sourceLinked", &v61))
    {
      [v8 setIsContentFormatDerivedFromDataPoints:{v61 == 1.0, v61}];
    }
  }

  drawingState8 = [stateCopy drawingState];
  oAXChartNamespace8 = [drawingState8 OAXChartNamespace];
  v42 = OCXFindChild(element, oAXChartNamespace8, "txPr");

  if (v42)
  {
    v43 = [CHXString edStringFromXmlRichElement:v42 state:stateCopy];
    if (!v43)
    {
      v44 = [CHXFont edRunCollectionFromXmlTextPropertiesElement:v42 state:stateCopy];
      if (v44)
      {
        v43 = +[EDString string];
        [v43 setRuns:v44];
      }

      else
      {
        v43 = 0;
      }
    }

    [v8 setString:v43];
    goto LABEL_35;
  }

  drawingState9 = [stateCopy drawingState];
  oAXChartNamespace9 = [drawingState9 OAXChartNamespace];
  v47 = OCXFindChild(element, oAXChartNamespace9, "tx");

  if (v47)
  {
    v59 = 0;
    v60 = 0;
    [CHXString readFromXmlTxElement:v47 formula:&v60 lastCached:&v59 state:stateCopy];
    v43 = v60;
    v48 = v59;
    [v8 setString:v48];

LABEL_35:
  }

  drawingState10 = [stateCopy drawingState];
  oAXChartNamespace10 = [drawingState10 OAXChartNamespace];
  v51 = OCXFindChild(element, oAXChartNamespace10, "delete");

  if (v51 && CXRequiredBoolAttribute(v51, CXNoNamespace, "val"))
  {
    [v8 setDeleted:1];
  }

  drawingState11 = [stateCopy drawingState];
  oAXChartNamespace11 = [drawingState11 OAXChartNamespace];
  v54 = OCXFindChild(element, oAXChartNamespace11, "extLst");

  if (v54)
  {
    drawingState12 = [stateCopy drawingState];
    oAXChartNamespace12 = [drawingState12 OAXChartNamespace];
    v57 = OCXFindChild(v54, oAXChartNamespace12, "ext");

    if (v57)
    {
      [v8 setExtensionDetected:1];
    }
  }

  return v8;
}

+ (int)chdDataLabelPositionFromXmlDataLabelElement:(_xmlNode *)element state:(id)state
{
  drawingState = [state drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v7 = OCXFindChild(element, oAXChartNamespace, "dLblPos");

  if (!v7)
  {
    return 0;
  }

  v8 = CXRequiredStringAttribute(v7, CXNoNamespace, "val");
  if ([v8 isEqualToString:@"bestFit"])
  {
    v9 = 9;
  }

  else if ([v8 isEqualToString:@"b"])
  {
    v9 = 6;
  }

  else if ([v8 isEqualToString:@"ctr"])
  {
    v9 = 3;
  }

  else if ([v8 isEqualToString:@"inBase"])
  {
    v9 = 4;
  }

  else if ([v8 isEqualToString:@"inEnd"])
  {
    v9 = 2;
  }

  else if ([v8 isEqualToString:@"l"])
  {
    v9 = 7;
  }

  else if ([v8 isEqualToString:@"outEnd"])
  {
    v9 = 1;
  }

  else if ([v8 isEqualToString:@"r"])
  {
    v9 = 8;
  }

  else if ([v8 isEqualToString:@"t"])
  {
    v9 = 5;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (Class)chdDataValuePropertiesClassWithState:(id)state
{
  currentChartType = [state currentChartType];
  objc_opt_class();
  objc_opt_isKindOfClass();
  v4 = objc_opt_class();

  return v4;
}

+ (id)stringFromDataLabelPosition:(int)position
{
  if ((position - 1) > 9)
  {
    return @"ctr";
  }

  else
  {
    return off_2799CD270[position - 1];
  }
}

@end