@interface CHXChart
+ (id)readFromXmlDocument:(_xmlDoc *)document chartStyleId:(int)id state:(id)state;
+ (id)readFromXmlDocument:(_xmlDoc *)document state:(id)state;
+ (int)chdDisplayBlanksAsEnumFromXmlElement:(_xmlNode *)element;
+ (void)readChartFromXmlNode:(_xmlNode *)node chart:(id)chart state:(id)state;
+ (void)readDefaultTextPropertiesFromXmlNode:(_xmlNode *)node chart:(id)chart state:(id)state;
@end

@implementation CHXChart

+ (id)readFromXmlDocument:(_xmlDoc *)document state:(id)state
{
  stateCopy = state;
  if (!document)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v7 = OCXGetRootElement(document);
  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v10 = OCXFindChild(v7, oAXChartNamespace, "style");

  if (v10 || (v12 = OCXFindChild(v7, OCXMarkupCompatibilityNamespace, "AlternateContent"), (v13 = v12) != 0) && ((v14 = OCXFindChild(v12, OCXMarkupCompatibilityNamespace, "Choice")) != 0 && ([stateCopy drawingState], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "OAXChartNamespace"), v16 = objc_claimAutoreleasedReturnValue(), v10 = OCXFindChild(v14, v16, "style"), v16, v15, v10) || (v17 = OCXFindChild(v13, OCXMarkupCompatibilityNamespace, "Fallback")) != 0 && (objc_msgSend(stateCopy, "drawingState"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "OAXChartNamespace"), v19 = objc_claimAutoreleasedReturnValue(), v10 = OCXFindChild(v17, v19, "style"), v19, v18, v10)))
  {
    v11 = CXDefaultUnsignedLongAttribute(v10, CXNoNamespace, "val", 2);
    if (v11 - 49 <= 0xFFFFFFFFFFFFFFCFLL)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }
  }

  else
  {
    v11 = 2;
  }

  v20 = [self readFromXmlDocument:document chartStyleId:v11 state:stateCopy];

  return v20;
}

+ (id)readFromXmlDocument:(_xmlDoc *)document chartStyleId:(int)id state:(id)state
{
  v5 = *&id;
  stateCopy = state;
  if (!document)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v9 = OCXGetRootElement(document);
  v10 = objc_alloc_init(CHDChart);
  [(CHDChart *)v10 setStyleId:v5];
  [stateCopy setChart:v10];
  drawingState = [stateCopy drawingState];
  client = [drawingState client];
  if (objc_opt_respondsToSelector())
  {
    autoStyling = [stateCopy autoStyling];
    v14 = objc_opt_respondsToSelector();

    if ((v14 & 1) == 0)
    {
      goto LABEL_7;
    }

    drawingState = [stateCopy autoStyling];
    client = [stateCopy drawingState];
    v12Client = [client client];
    [drawingState setAutoChartFillIsHollow:{objc_msgSend(v12Client, "chartAutoFillIsHollow")}];
  }

LABEL_7:
  drawingState2 = [stateCopy drawingState];
  client2 = [drawingState2 client];
  if (objc_opt_respondsToSelector())
  {
    autoStyling2 = [stateCopy autoStyling];
    v19 = objc_opt_respondsToSelector();

    if ((v19 & 1) == 0)
    {
      goto LABEL_11;
    }

    drawingState2 = [stateCopy autoStyling];
    client2 = [stateCopy drawingState];
    v17Client = [client2 client];
    [drawingState2 setAutoChartStrokeIsHollow:{objc_msgSend(v17Client, "chartAutoStrokeIsHollow")}];
  }

LABEL_11:
  [(CHDChart *)v10 setLogicalBounds:0.0, 0.0, 1.0, 1.0];
  drawingState3 = [stateCopy drawingState];
  excelState = [drawingState3 excelState];
  currentSheet = [excelState currentSheet];
  [(CHDChart *)v10 setSheet:currentSheet];

  [self readDefaultTextPropertiesFromXmlNode:v9 chart:v10 state:stateCopy];
  drawingState4 = [stateCopy drawingState];
  oAXChartNamespace = [drawingState4 OAXChartNamespace];
  v26 = OCXFindRequiredChild(v9, oAXChartNamespace, "chart");

  [self readChartFromXmlNode:v26 chart:v10 state:stateCopy];
  [CHXUserShapes readFromCharSpaceNode:v9 state:stateCopy];
  chartPart = [stateCopy chartPart];
  v28 = chartPart;
  if (chartPart)
  {
    v29 = [chartPart firstPartWithRelationshipOfType:@"http://schemas.openxmlformats.org/officeDocument/2006/relationships/themeOverride"];
    if (v29)
    {
      v30 = objc_alloc_init(OADThemeOverrides);
      drawingState5 = [stateCopy drawingState];
      [OAXThemeOverrides readFromPackagePart:v29 toThemeOverrides:v30 drawingState:drawingState5];

      [(CHDChart *)v10 setThemeOverrides:v30];
    }
  }

  return v10;
}

+ (void)readChartFromXmlNode:(_xmlNode *)node chart:(id)chart state:(id)state
{
  chartCopy = chart;
  stateCopy = state;
  parent = node->parent;
  v65 = objc_alloc_init(OADGraphicProperties);
  [CHXGraphicProperties setGraphicPropertiesFromXmlElementWithGraphicProperties:v65 element:parent state:stateCopy];
  autoStyling = [stateCopy autoStyling];
  [autoStyling resolveChartAreaGraphicProperties:v65];

  [chartCopy setChartAreaGraphicProperties:v65];
  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v12 = OCXFindChild(node, oAXChartNamespace, "floor");

  v13 = objc_alloc_init(OADGraphicProperties);
  [CHXGraphicProperties setGraphicPropertiesFromXmlElementWithGraphicProperties:v13 element:v12 state:stateCopy];
  autoStyling2 = [stateCopy autoStyling];
  [autoStyling2 resolveFloorGraphicProperties:v13];

  [chartCopy setFloorGraphicProperties:v13];
  drawingState2 = [stateCopy drawingState];
  oAXChartNamespace2 = [drawingState2 OAXChartNamespace];
  v17 = OCXFindChild(node, oAXChartNamespace2, "backWall");

  v18 = objc_alloc_init(OADGraphicProperties);
  [CHXGraphicProperties setGraphicPropertiesFromXmlElementWithGraphicProperties:v18 element:v17 state:stateCopy];
  autoStyling3 = [stateCopy autoStyling];
  [autoStyling3 resolveWallGraphicProperties:v18];

  [chartCopy setBackWallGraphicProperties:v18];
  drawingState3 = [stateCopy drawingState];
  oAXChartNamespace3 = [drawingState3 OAXChartNamespace];
  v22 = OCXFindChild(node, oAXChartNamespace3, "sideWall");

  v23 = objc_alloc_init(OADGraphicProperties);
  [CHXGraphicProperties setGraphicPropertiesFromXmlElementWithGraphicProperties:v23 element:v22 state:stateCopy];
  autoStyling4 = [stateCopy autoStyling];
  [autoStyling4 resolveWallGraphicProperties:v23];

  [chartCopy setSideWallGraphicProperties:v23];
  drawingState4 = [stateCopy drawingState];
  oAXChartNamespace4 = [drawingState4 OAXChartNamespace];
  v27 = OCXFindChild(node, oAXChartNamespace4, "view3D");

  if (v27)
  {
    v28 = [CHXView3D chdView3DFromXmlView3DElement:v27 state:stateCopy];
    [chartCopy setView3D:v28];
  }

  drawingState5 = [stateCopy drawingState];
  oAXChartNamespace5 = [drawingState5 OAXChartNamespace];
  v31 = OCXFindRequiredChild(node, oAXChartNamespace5, "plotArea");

  if (!v31)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v63 = [CHXPlotArea readFrom:v31 state:stateCopy];
  [chartCopy setPlotArea:?];
  drawingState6 = [stateCopy drawingState];
  oAXChartNamespace6 = [drawingState6 OAXChartNamespace];
  v34 = OCXFindChild(node, oAXChartNamespace6, "legend");

  if (v34)
  {
    v35 = [CHXLegend chdLegendFromXmlLegendElement:v34 state:stateCopy];
    [chartCopy setLegend:v35];
  }

  drawingState7 = [stateCopy drawingState];
  oAXChartNamespace7 = [drawingState7 OAXChartNamespace];
  v38 = OCXFindChild(node, oAXChartNamespace7, "title");

  if (v38)
  {
    [chartCopy setAutoTitleDeleted:0];
    v39 = [CHXTitle chdTitleFromXmlTitleElement:v38 isChartTitle:1 state:stateCopy];
    [chartCopy setTitle:v39];

    title = [chartCopy title];
    isAutoGenerated = [title isAutoGenerated];

    if (isAutoGenerated)
    {
      mainType = [chartCopy mainType];
      resources = [stateCopy resources];
      v44 = [mainType defaultTitleWithResources:resources];

      if (v44)
      {
        title2 = [chartCopy title];
        [title2 setLastCachedName:v44];
      }
    }

    title3 = [chartCopy title];
    lastCachedName = [title3 lastCachedName];

    if (!lastCachedName)
    {
      title4 = [chartCopy title];
      v49 = +[EDString string];
      [title4 setLastCachedName:v49];
    }

    title5 = [chartCopy title];
    lastCachedName2 = [title5 lastCachedName];
    runs = [lastCachedName2 runs];

    if (!runs)
    {
      title6 = [chartCopy title];
      lastCachedName3 = [title6 lastCachedName];
      title7 = [chartCopy title];
      v56 = [CHXFont defaultEdRunCollectionForTitle:title7 titleElement:v38 state:stateCopy];
      [lastCachedName3 setRuns:v56];
    }
  }

  drawingState8 = [stateCopy drawingState];
  oAXChartNamespace8 = [drawingState8 OAXChartNamespace];
  v59 = OCXFindChild(node, oAXChartNamespace8, "plotVisOnly");

  if (v59)
  {
    [chartCopy setPlotVisibleCellsOnly:{CXRequiredBoolAttribute(v59, CXNoNamespace, "val")}];
  }

  drawingState9 = [stateCopy drawingState];
  oAXChartNamespace9 = [drawingState9 OAXChartNamespace];
  v62 = OCXFindChild(node, oAXChartNamespace9, "dispBlanksAs");

  [chartCopy setDisplayBlankAs:{objc_msgSend(self, "chdDisplayBlanksAsEnumFromXmlElement:", v62)}];
}

+ (void)readDefaultTextPropertiesFromXmlNode:(_xmlNode *)node chart:(id)chart state:(id)state
{
  chartCopy = chart;
  stateCopy = state;
  resources = [stateCopy resources];
  v9 = [CHDDefaultTextProperty defaultTextPropertyWithResources:resources];

  [v9 setDefaultTextType:2];
  defaultTextProperties = [chartCopy defaultTextProperties];
  [defaultTextProperties addObject:v9];

  v11 = [CHXFont readParagraphPropertiesFromXmlTextPropertiesParentElement:node state:stateCopy];
  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v14 = OCXFindChild(node, oAXChartNamespace, "txPr");

  [v11 setMergedWithParent:0];
  if (([v11 hasLatinFont] & 1) == 0)
  {
    drawingState2 = [stateCopy drawingState];
    fontScheme = [drawingState2 fontScheme];
    minorFont = [fontScheme minorFont];
    latinFont = [minorFont latinFont];

    [v11 setLatinFont:latinFont];
  }

  [stateCopy setDefaultTextPropertiesHaveExplicitFontSize:{objc_msgSend(v11, "hasSize")}];
  if (([v11 hasSize] & 1) == 0)
  {
    LODWORD(v19) = 10.0;
    [v11 setSize:v19];
  }

  if (![v11 hasFill] || (objc_msgSend(v11, "fill"), v20 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v20, (isKindOfClass & 1) == 0))
  {
    autoStyling = [stateCopy autoStyling];
    autoTextFill = [autoStyling autoTextFill];

    [v11 setFill:autoTextFill];
  }

  [v11 setMergedWithParent:1];
  [stateCopy setDefaultTextProperties:v11];
  if (v14)
  {
    [CHXFont edRunCollectionFromXmlTextPropertiesElement:v14 state:stateCopy];
  }

  else
  {
    [CHXFont defaultEdRunCollectionWithState:stateCopy];
  }
  v24 = ;
  if (v24)
  {
    defaultTextProperties2 = [chartCopy defaultTextProperties];
    allTextDefaultProperties = [defaultTextProperties2 allTextDefaultProperties];
    [allTextDefaultProperties setRuns:v24];

    defaultTextProperties3 = [chartCopy defaultTextProperties];
    allTextDefaultProperties2 = [defaultTextProperties3 allTextDefaultProperties];
    [allTextDefaultProperties2 setContentFormatId:0];
  }
}

+ (int)chdDisplayBlanksAsEnumFromXmlElement:(_xmlNode *)element
{
  if (element)
  {
    v3 = CXRequiredStringAttribute(element, CXNoNamespace, "val");
    if ([v3 isEqualToString:@"span"])
    {
      v4 = 1;
LABEL_10:

      return v4;
    }

    if (([v3 isEqualToString:@"gap"] & 1) == 0)
    {
      if ([v3 isEqualToString:@"zero"])
      {
        v4 = 2;
        goto LABEL_10;
      }

      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    v4 = 0;
    goto LABEL_10;
  }

  return 0;
}

@end