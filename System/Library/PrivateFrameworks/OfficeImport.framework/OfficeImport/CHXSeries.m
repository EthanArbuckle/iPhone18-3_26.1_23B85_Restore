@interface CHXSeries
+ (Class)chxSeriesClassWithState:(id)a3;
+ (id)chdSeriesFromXmlSeriesElement:(_xmlNode *)a3 state:(id)a4;
+ (id)readFrom:(_xmlNode *)a3 state:(id)a4;
+ (void)resolveSeriesStyle:(id)a3 state:(id)a4;
@end

@implementation CHXSeries

+ (id)readFrom:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v6 = [(objc_class *)[CHXSeries chxSeriesClassWithState:?]state:"chdSeriesFromXmlSeriesElement:state:", a3, v5];
  [v5 setCurrentSeries:v6];
  v7 = [v5 drawingState];
  v8 = [v7 OAXChartNamespace];
  v9 = OCXFindRequiredChild(a3, v8, "idx");

  [v6 setStyleIndex:{CXRequiredUnsignedLongAttribute(v9, CXNoNamespace, "val")}];
  v10 = [v5 drawingState];
  v11 = [v10 OAXChartNamespace];
  v12 = OCXFindRequiredChild(a3, v11, "order");

  [v6 setOrder:{CXRequiredLongAttribute(v12, CXNoNamespace, "val")}];
  v13 = objc_alloc_init(OADGraphicProperties);
  [CHXGraphicProperties setGraphicPropertiesFromXmlElementWithGraphicProperties:v13 element:a3 state:v5];
  if ([(OADGraphicProperties *)v13 hasFill])
  {
    v14 = [(OADGraphicProperties *)v13 fill];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v16 = [(OADGraphicProperties *)v13 fill];
      v17 = [v5 drawingState];
      v18 = [v17 OAXChartNamespace];
      v19 = OCXFindChild(a3, v18, "pictureOptions");

      if (v19)
      {
        v20 = [v5 drawingState];
        v21 = [v20 OAXChartNamespace];
        v22 = OCXFindChild(v19, v21, "pictureFormat");

        if (v22)
        {
          v81 = 0;
          v23 = CXOptionalStringAttribute(v22, CXNoNamespace, "val", &v81);
          v24 = v81;
          v25 = v24;
          if (v23 && (([v24 isEqualToString:@"stackScale"] & 1) != 0 || objc_msgSend(v25, "isEqualToString:", @"stack")))
          {
            v26 = objc_alloc_init(OADTileTechnique);
            [v16 setTechnique:v26];
          }
        }

        else
        {
          v25 = 0;
        }
      }
    }
  }

  [v6 setGraphicProperties:v13];
  v27 = [v5 drawingState];
  v28 = [v27 OAXChartNamespace];
  v29 = OCXFindChild(a3, v28, "val");

  if (v29 || ([v5 drawingState], v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "OAXChartNamespace"), v31 = objc_claimAutoreleasedReturnValue(), v29 = OCXFindChild(a3, v31, "yVal"), v31, v30, v29))
  {
    v32 = [CHXData chdDataFromXmlDataElement:v29 state:v5];
    [v6 setValueData:v32];
    v33 = [v32 dataValues];
    v34 = [v33 count];

    if (!v34)
    {
      [v6 setHiddenFlag:1];
    }
  }

  v35 = [v5 drawingState];
  v36 = [v35 OAXChartNamespace];
  v37 = OCXFindChild(a3, v36, "cat");

  if (v37 || ([v5 drawingState], v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v38, "OAXChartNamespace"), v39 = objc_claimAutoreleasedReturnValue(), v37 = OCXFindChild(a3, v39, "xVal"), v39, v38, v37))
  {
    v40 = [CHXData chdDataFromXmlDataElement:v37 state:v5];
    [v6 setCategoryData:v40];
  }

  else
  {
    v40 = [v5 resources];
    v77 = [CHDData dataWithResources:v40];
    [v6 setCategoryData:v77];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v41 = [v5 drawingState];
    v42 = [v41 OAXChartNamespace];
    v43 = OCXFindChild(a3, v42, "bubbleSize");

    if (v43)
    {
      v44 = [CHXData chdDataFromXmlDataElement:v43 state:v5];
      [v6 setSizeData:v44];
    }
  }

  v45 = OCXFirstChildNamed(a3, "dPt");
  while (v45)
  {
    v46 = [CHXDataValueProperties readFrom:v45 state:v5];
    v47 = [v6 dataValuePropertiesCollection];
    [v47 addObject:v46];

    v45 = OCXNextSiblingNamed(v45, "dPt");
  }

  v48 = [v5 drawingState];
  v49 = [v48 OAXChartNamespace];
  v50 = OCXFindChild(a3, v49, "dLbls");

  if (v50 || (parent = a3->parent, [v5 drawingState], v52 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v52, "OAXChartNamespace"), v53 = objc_claimAutoreleasedReturnValue(), v50 = OCXFindChild(parent, v53, "dLbls"), v53, v52, v50))
  {
    v54 = [v6 dataValuePropertiesCollection];
    [CHXDataLabel readFrom:v50 dataValuePropertiesCollection:v54 state:v5];
  }

  v55 = OCXFirstChildNamed(a3, "errBars");
  if (v55)
  {
    v56 = [CHXErrorBar chdErrorBarFromXmlErrorBarElement:v55 state:v5];
    [v6 setErrorBar:v56];
    v57 = OCXNextSiblingNamed(v55, "errBars");
    if (v57)
    {
      v58 = [CHXErrorBar chdErrorBarFromXmlErrorBarElement:v57 state:v5];

      v56 = v58;
      [v6 setErrorBar:v58];
    }
  }

  v59 = OCXFirstChildNamed(a3, "trendline");
  while (v59)
  {
    v60 = [CHXTrendline chdTrendlineFromXmlTrendlineElement:v59 state:v5];
    v61 = [v6 trendlineCollection];
    [v61 addObject:v60];

    v59 = OCXNextSiblingNamed(v59, "trendline");
  }

  v62 = [v5 drawingState];
  v63 = [v62 OAXChartNamespace];
  v64 = OCXFindChild(a3, v63, "tx");

  if (v64)
  {
    v65 = [v5 drawingState];
    v66 = [v65 OAXChartNamespace];
    v67 = OCXFindChild(v64, v66, "strRef");

    if (v67)
    {
      v79 = 0;
      v80 = 0;
      [CHXString readFromXmlTxElement:v64 formula:&v80 lastCached:&v79 state:v5];
      v68 = v80;
      v69 = v79;
      if (v68)
      {
        [v6 setName:v68];
      }

      if (v69)
      {
        v70 = [v69 string];
        EDValue::makeWithNSString(v70, &v78);

        v71 = [[CHDDataValue alloc] initWithIndex:-1 value:&v78];
        [v6 setLastCachedName:v71];

        EDValue::~EDValue(&v78);
      }
    }

    else
    {
      v72 = [v5 drawingState];
      v73 = [v72 OAXChartNamespace];
      v74 = OCXFindChild(v64, v73, "v");

      if (!v74)
      {
        goto LABEL_44;
      }

      v68 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:v74];
      EDValue::makeWithNSString(v68, &v78);
      v75 = [[CHDDataValue alloc] initWithIndex:-1 value:&v78];
      [v6 setLastCachedName:v75];

      EDValue::~EDValue(&v78);
    }
  }

LABEL_44:

  return v6;
}

+ (id)chdSeriesFromXmlSeriesElement:(_xmlNode *)a3 state:(id)a4
{
  v4 = a4;
  v5 = [CHDSeries alloc];
  v6 = [v4 chart];
  v7 = [(CHDSeries *)v5 initWithChart:v6];

  return v7;
}

+ (void)resolveSeriesStyle:(id)a3 state:(id)a4
{
  v34 = a3;
  v5 = a4;
  v6 = [v34 graphicProperties];
  if (v6)
  {
    if ([v34 conformsToProtocol:&unk_286FA2968])
    {
      v7 = [v5 autoStyling];
      [v7 resolveGraphicPropertiesOfSeries:v6 forSeriesIndex:objc_msgSend(v34 isLine:{"styleIndex"), 1}];

      v8 = [v5 autoStyling];
      v9 = [v34 marker];
      v10 = [v34 styleIndex];
      v11 = [v5 drawingState];
      v12 = [v11 clientChartGraphicPropertyDefaultsBlock];
      [v8 resolveMarker:v9 withSeriesGraphicProperties:v6 forSeriesIndex:v10 clientGraphicPropertyDefaults:v12];
    }

    else
    {
      v8 = [v5 autoStyling];
      [v8 resolveGraphicPropertiesOfSeries:v6 forSeriesIndex:{objc_msgSend(v34, "styleIndex")}];
    }
  }

  v13 = [v34 dataValuePropertiesCollection];
  v14 = [v13 count];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v14)
  {
    v16 = isKindOfClass;
    for (i = 0; i != v14; ++i)
    {
      v18 = [v13 objectAtIndex:i];
      v19 = [v18 graphicProperties];
      if (v19)
      {
        v20 = [v5 autoStyling];
        if (v16)
        {
          v21 = [v18 dataValueIndex];
        }

        else
        {
          v21 = [v34 styleIndex];
        }

        [v20 resolveGraphicPropertiesOfSeries:v19 forSeriesIndex:v21];
      }
    }
  }

  v22 = [v34 errorBarXAxis];
  if (v22)
  {
    v23 = [v5 autoStyling];
    v24 = [v22 graphicProperties];
    [v23 resolveGraphicPropertiesOfErrorBar:v24 forSeriesIndex:{objc_msgSend(v34, "styleIndex")}];
  }

  v25 = [v34 errorBarYAxis];

  if (v25)
  {
    v26 = [v5 autoStyling];
    v27 = [v25 graphicProperties];
    [v26 resolveGraphicPropertiesOfErrorBar:v27 forSeriesIndex:{objc_msgSend(v34, "styleIndex")}];
  }

  v28 = [v34 trendlineCollection];
  v29 = [v28 count];
  if (v29)
  {
    for (j = 0; j != v29; ++j)
    {
      v31 = [v28 objectAtIndex:j];
      if (v31)
      {
        v32 = [v5 autoStyling];
        v33 = [v31 graphicProperties];
        [v32 resolveGraphicPropertiesOfTrendline:v33 forSeriesIndex:{objc_msgSend(v34, "styleIndex")}];
      }
    }
  }
}

+ (Class)chxSeriesClassWithState:(id)a3
{
  v3 = [a3 currentChartType];
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