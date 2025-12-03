@interface CHXSeries
+ (Class)chxSeriesClassWithState:(id)state;
+ (id)chdSeriesFromXmlSeriesElement:(_xmlNode *)element state:(id)state;
+ (id)readFrom:(_xmlNode *)from state:(id)state;
+ (void)resolveSeriesStyle:(id)style state:(id)state;
@end

@implementation CHXSeries

+ (id)readFrom:(_xmlNode *)from state:(id)state
{
  stateCopy = state;
  stateCopy = [(objc_class *)[CHXSeries chxSeriesClassWithState:?]state:"chdSeriesFromXmlSeriesElement:state:", from, stateCopy];
  [stateCopy setCurrentSeries:stateCopy];
  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v9 = OCXFindRequiredChild(from, oAXChartNamespace, "idx");

  [stateCopy setStyleIndex:{CXRequiredUnsignedLongAttribute(v9, CXNoNamespace, "val")}];
  drawingState2 = [stateCopy drawingState];
  oAXChartNamespace2 = [drawingState2 OAXChartNamespace];
  v12 = OCXFindRequiredChild(from, oAXChartNamespace2, "order");

  [stateCopy setOrder:{CXRequiredLongAttribute(v12, CXNoNamespace, "val")}];
  v13 = objc_alloc_init(OADGraphicProperties);
  [CHXGraphicProperties setGraphicPropertiesFromXmlElementWithGraphicProperties:v13 element:from state:stateCopy];
  if ([(OADGraphicProperties *)v13 hasFill])
  {
    fill = [(OADGraphicProperties *)v13 fill];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      fill2 = [(OADGraphicProperties *)v13 fill];
      drawingState3 = [stateCopy drawingState];
      oAXChartNamespace3 = [drawingState3 OAXChartNamespace];
      v19 = OCXFindChild(from, oAXChartNamespace3, "pictureOptions");

      if (v19)
      {
        drawingState4 = [stateCopy drawingState];
        oAXChartNamespace4 = [drawingState4 OAXChartNamespace];
        v22 = OCXFindChild(v19, oAXChartNamespace4, "pictureFormat");

        if (v22)
        {
          v81 = 0;
          v23 = CXOptionalStringAttribute(v22, CXNoNamespace, "val", &v81);
          v24 = v81;
          v25 = v24;
          if (v23 && (([v24 isEqualToString:@"stackScale"] & 1) != 0 || objc_msgSend(v25, "isEqualToString:", @"stack")))
          {
            v26 = objc_alloc_init(OADTileTechnique);
            [fill2 setTechnique:v26];
          }
        }

        else
        {
          v25 = 0;
        }
      }
    }
  }

  [stateCopy setGraphicProperties:v13];
  drawingState5 = [stateCopy drawingState];
  oAXChartNamespace5 = [drawingState5 OAXChartNamespace];
  v29 = OCXFindChild(from, oAXChartNamespace5, "val");

  if (v29 || ([stateCopy drawingState], v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "OAXChartNamespace"), v31 = objc_claimAutoreleasedReturnValue(), v29 = OCXFindChild(from, v31, "yVal"), v31, v30, v29))
  {
    v32 = [CHXData chdDataFromXmlDataElement:v29 state:stateCopy];
    [stateCopy setValueData:v32];
    dataValues = [v32 dataValues];
    v34 = [dataValues count];

    if (!v34)
    {
      [stateCopy setHiddenFlag:1];
    }
  }

  drawingState6 = [stateCopy drawingState];
  oAXChartNamespace6 = [drawingState6 OAXChartNamespace];
  v37 = OCXFindChild(from, oAXChartNamespace6, "cat");

  if (v37 || ([stateCopy drawingState], v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v38, "OAXChartNamespace"), v39 = objc_claimAutoreleasedReturnValue(), v37 = OCXFindChild(from, v39, "xVal"), v39, v38, v37))
  {
    resources = [CHXData chdDataFromXmlDataElement:v37 state:stateCopy];
    [stateCopy setCategoryData:resources];
  }

  else
  {
    resources = [stateCopy resources];
    v77 = [CHDData dataWithResources:resources];
    [stateCopy setCategoryData:v77];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    drawingState7 = [stateCopy drawingState];
    oAXChartNamespace7 = [drawingState7 OAXChartNamespace];
    v43 = OCXFindChild(from, oAXChartNamespace7, "bubbleSize");

    if (v43)
    {
      v44 = [CHXData chdDataFromXmlDataElement:v43 state:stateCopy];
      [stateCopy setSizeData:v44];
    }
  }

  v45 = OCXFirstChildNamed(from, "dPt");
  while (v45)
  {
    v46 = [CHXDataValueProperties readFrom:v45 state:stateCopy];
    dataValuePropertiesCollection = [stateCopy dataValuePropertiesCollection];
    [dataValuePropertiesCollection addObject:v46];

    v45 = OCXNextSiblingNamed(v45, "dPt");
  }

  drawingState8 = [stateCopy drawingState];
  oAXChartNamespace8 = [drawingState8 OAXChartNamespace];
  v50 = OCXFindChild(from, oAXChartNamespace8, "dLbls");

  if (v50 || (parent = from->parent, [stateCopy drawingState], v52 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v52, "OAXChartNamespace"), v53 = objc_claimAutoreleasedReturnValue(), v50 = OCXFindChild(parent, v53, "dLbls"), v53, v52, v50))
  {
    dataValuePropertiesCollection2 = [stateCopy dataValuePropertiesCollection];
    [CHXDataLabel readFrom:v50 dataValuePropertiesCollection:dataValuePropertiesCollection2 state:stateCopy];
  }

  v55 = OCXFirstChildNamed(from, "errBars");
  if (v55)
  {
    v56 = [CHXErrorBar chdErrorBarFromXmlErrorBarElement:v55 state:stateCopy];
    [stateCopy setErrorBar:v56];
    v57 = OCXNextSiblingNamed(v55, "errBars");
    if (v57)
    {
      v58 = [CHXErrorBar chdErrorBarFromXmlErrorBarElement:v57 state:stateCopy];

      v56 = v58;
      [stateCopy setErrorBar:v58];
    }
  }

  v59 = OCXFirstChildNamed(from, "trendline");
  while (v59)
  {
    v60 = [CHXTrendline chdTrendlineFromXmlTrendlineElement:v59 state:stateCopy];
    trendlineCollection = [stateCopy trendlineCollection];
    [trendlineCollection addObject:v60];

    v59 = OCXNextSiblingNamed(v59, "trendline");
  }

  drawingState9 = [stateCopy drawingState];
  oAXChartNamespace9 = [drawingState9 OAXChartNamespace];
  v64 = OCXFindChild(from, oAXChartNamespace9, "tx");

  if (v64)
  {
    drawingState10 = [stateCopy drawingState];
    oAXChartNamespace10 = [drawingState10 OAXChartNamespace];
    v67 = OCXFindChild(v64, oAXChartNamespace10, "strRef");

    if (v67)
    {
      v79 = 0;
      v80 = 0;
      [CHXString readFromXmlTxElement:v64 formula:&v80 lastCached:&v79 state:stateCopy];
      v68 = v80;
      v69 = v79;
      if (v68)
      {
        [stateCopy setName:v68];
      }

      if (v69)
      {
        string = [v69 string];
        EDValue::makeWithNSString(string, &v78);

        v71 = [[CHDDataValue alloc] initWithIndex:-1 value:&v78];
        [stateCopy setLastCachedName:v71];

        EDValue::~EDValue(&v78);
      }
    }

    else
    {
      drawingState11 = [stateCopy drawingState];
      oAXChartNamespace11 = [drawingState11 OAXChartNamespace];
      v74 = OCXFindChild(v64, oAXChartNamespace11, "v");

      if (!v74)
      {
        goto LABEL_44;
      }

      v68 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:v74];
      EDValue::makeWithNSString(v68, &v78);
      v75 = [[CHDDataValue alloc] initWithIndex:-1 value:&v78];
      [stateCopy setLastCachedName:v75];

      EDValue::~EDValue(&v78);
    }
  }

LABEL_44:

  return stateCopy;
}

+ (id)chdSeriesFromXmlSeriesElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  v5 = [CHDSeries alloc];
  chart = [stateCopy chart];
  v7 = [(CHDSeries *)v5 initWithChart:chart];

  return v7;
}

+ (void)resolveSeriesStyle:(id)style state:(id)state
{
  styleCopy = style;
  stateCopy = state;
  graphicProperties = [styleCopy graphicProperties];
  if (graphicProperties)
  {
    if ([styleCopy conformsToProtocol:&unk_286FA2968])
    {
      autoStyling = [stateCopy autoStyling];
      [autoStyling resolveGraphicPropertiesOfSeries:graphicProperties forSeriesIndex:objc_msgSend(styleCopy isLine:{"styleIndex"), 1}];

      autoStyling2 = [stateCopy autoStyling];
      marker = [styleCopy marker];
      styleIndex = [styleCopy styleIndex];
      drawingState = [stateCopy drawingState];
      clientChartGraphicPropertyDefaultsBlock = [drawingState clientChartGraphicPropertyDefaultsBlock];
      [autoStyling2 resolveMarker:marker withSeriesGraphicProperties:graphicProperties forSeriesIndex:styleIndex clientGraphicPropertyDefaults:clientChartGraphicPropertyDefaultsBlock];
    }

    else
    {
      autoStyling2 = [stateCopy autoStyling];
      [autoStyling2 resolveGraphicPropertiesOfSeries:graphicProperties forSeriesIndex:{objc_msgSend(styleCopy, "styleIndex")}];
    }
  }

  dataValuePropertiesCollection = [styleCopy dataValuePropertiesCollection];
  v14 = [dataValuePropertiesCollection count];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v14)
  {
    v16 = isKindOfClass;
    for (i = 0; i != v14; ++i)
    {
      v18 = [dataValuePropertiesCollection objectAtIndex:i];
      graphicProperties2 = [v18 graphicProperties];
      if (graphicProperties2)
      {
        autoStyling3 = [stateCopy autoStyling];
        if (v16)
        {
          dataValueIndex = [v18 dataValueIndex];
        }

        else
        {
          dataValueIndex = [styleCopy styleIndex];
        }

        [autoStyling3 resolveGraphicPropertiesOfSeries:graphicProperties2 forSeriesIndex:dataValueIndex];
      }
    }
  }

  errorBarXAxis = [styleCopy errorBarXAxis];
  if (errorBarXAxis)
  {
    autoStyling4 = [stateCopy autoStyling];
    graphicProperties3 = [errorBarXAxis graphicProperties];
    [autoStyling4 resolveGraphicPropertiesOfErrorBar:graphicProperties3 forSeriesIndex:{objc_msgSend(styleCopy, "styleIndex")}];
  }

  errorBarYAxis = [styleCopy errorBarYAxis];

  if (errorBarYAxis)
  {
    autoStyling5 = [stateCopy autoStyling];
    graphicProperties4 = [errorBarYAxis graphicProperties];
    [autoStyling5 resolveGraphicPropertiesOfErrorBar:graphicProperties4 forSeriesIndex:{objc_msgSend(styleCopy, "styleIndex")}];
  }

  trendlineCollection = [styleCopy trendlineCollection];
  v29 = [trendlineCollection count];
  if (v29)
  {
    for (j = 0; j != v29; ++j)
    {
      v31 = [trendlineCollection objectAtIndex:j];
      if (v31)
      {
        autoStyling6 = [stateCopy autoStyling];
        graphicProperties5 = [v31 graphicProperties];
        [autoStyling6 resolveGraphicPropertiesOfTrendline:graphicProperties5 forSeriesIndex:{objc_msgSend(styleCopy, "styleIndex")}];
      }
    }
  }
}

+ (Class)chxSeriesClassWithState:(id)state
{
  currentChartType = [state currentChartType];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              objc_opt_isKindOfClass();
            }
          }
        }
      }
    }
  }

  v4 = objc_opt_class();

  return v4;
}

@end