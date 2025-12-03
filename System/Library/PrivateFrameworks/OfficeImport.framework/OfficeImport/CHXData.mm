@interface CHXData
+ (BOOL)isHiddenDataElement:(_xmlNode *)element data:(id)data state:(id)state;
+ (id)chdDataFromXmlDataElement:(_xmlNode *)element state:(id)state;
+ (void)readNumDataFromXmlNumDataElement:(_xmlNode *)element data:(id)data state:(id)state;
+ (void)readStrDataFromXmlMultiLevelStrDataElement:(_xmlNode *)element data:(id)data state:(id)state;
+ (void)readStrDataFromXmlStrDataElement:(_xmlNode *)element data:(id)data state:(id)state;
@end

@implementation CHXData

+ (id)chdDataFromXmlDataElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  resources = [stateCopy resources];
  v43 = [CHDData dataWithResources:resources];

  if (element)
  {
    exState = [stateCopy exState];
    for (i = OCXFirstChild(element); ; i = OCXNextSibling(i))
    {
      if (!i)
      {
        dataValues = [v43 dataValues];
        [dataValues finishReading];

        goto LABEL_22;
      }

      drawingState = [stateCopy drawingState];
      oAXChartNamespace = [drawingState OAXChartNamespace];
      if (CXNodeHasName(i, oAXChartNamespace, "numRef"))
      {
        goto LABEL_7;
      }

      drawingState2 = [stateCopy drawingState];
      oAXChartNamespace2 = [drawingState2 OAXChartNamespace];
      if (CXNodeHasName(i, oAXChartNamespace2, "strRef"))
      {
        break;
      }

      drawingState3 = [stateCopy drawingState];
      oAXChartNamespace3 = [drawingState3 OAXChartNamespace];
      HasName = CXNodeHasName(i, oAXChartNamespace3, "multiLvlStrRef");

      if (!HasName)
      {
        drawingState4 = [stateCopy drawingState];
        oAXChartNamespace4 = [drawingState4 OAXChartNamespace];
        v26 = CXNodeHasName(i, oAXChartNamespace4, "numLit");

        if (v26)
        {
          [self readNumDataFromXmlNumDataElement:i data:v43 state:stateCopy];
        }

        else
        {
          drawingState5 = [stateCopy drawingState];
          oAXChartNamespace5 = [drawingState5 OAXChartNamespace];
          v39 = CXNodeHasName(i, oAXChartNamespace5, "strLit");

          if (v39)
          {
            [self readStrDataFromXmlStrDataElement:i data:v43 state:stateCopy];
          }
        }

        continue;
      }

LABEL_8:
      ignoreFormulas = [stateCopy ignoreFormulas];
      if (([stateCopy ignoreFormulas] & 1) == 0)
      {
        drawingState6 = [stateCopy drawingState];
        oAXChartNamespace6 = [drawingState6 OAXChartNamespace];
        v16 = OCXFindRequiredChild(i, oAXChartNamespace6, "f");

        v17 = [EXFormula edFormulaFromXmlFormulaElement:v16 formulaClass:objc_opt_class() state:exState];
        workbook = [exState workbook];
        [v17 setWorkbook:workbook];

        chart = [stateCopy chart];
        [v43 setFormula:v17 chart:chart];

        originalFormulaString = [v17 originalFormulaString];
        if ([originalFormulaString rangeOfString:@"#REF"] == 0x7FFFFFFFFFFFFFFFLL)
        {
        }

        else
        {
          v27 = [originalFormulaString rangeOfString:@"'#REF'"];

          if (v27 == 0x7FFFFFFFFFFFFFFFLL)
          {
            continue;
          }
        }

LABEL_17:
        drawingState7 = [stateCopy drawingState];
        oAXChartNamespace7 = [drawingState7 OAXChartNamespace];
        v30 = OCXFindChild(i, oAXChartNamespace7, "strCache");

        [self readStrDataFromXmlStrDataElement:v30 data:v43 state:stateCopy];
        drawingState8 = [stateCopy drawingState];
        oAXChartNamespace8 = [drawingState8 OAXChartNamespace];
        v33 = OCXFindChild(i, oAXChartNamespace8, "multiLvlStrCache");

        [self readStrDataFromXmlMultiLevelStrDataElement:v33 data:v43 state:stateCopy];
        drawingState9 = [stateCopy drawingState];
        oAXChartNamespace9 = [drawingState9 OAXChartNamespace];
        v36 = OCXFindChild(i, oAXChartNamespace9, "numCache");

        [self readNumDataFromXmlNumDataElement:v36 data:v43 state:stateCopy];
        continue;
      }

      if (ignoreFormulas)
      {
        goto LABEL_17;
      }
    }

LABEL_7:
    goto LABEL_8;
  }

LABEL_22:

  return v43;
}

+ (void)readNumDataFromXmlNumDataElement:(_xmlNode *)element data:(id)data state:(id)state
{
  dataCopy = data;
  stateCopy = state;
  if (element)
  {
    if (([self isHiddenDataElement:element data:dataCopy state:stateCopy] & 1) == 0)
    {
      for (i = OCXFirstChildNamed(element, "pt"); i; i = OCXNextSiblingNamed(i, "pt"))
      {
        dataValues = [dataCopy dataValues];
        v11 = [CHXDataValue chdNumberValueFromXmlDataValueElement:i state:stateCopy];
        [dataValues addDataValue:v11];
      }

      drawingState = [stateCopy drawingState];
      oAXChartNamespace = [drawingState OAXChartNamespace];
      v14 = OCXFindChild(element, oAXChartNamespace, "formatCode");

      if (v14)
      {
        v15 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:v14];
        v16 = [EDString edStringWithString:v15];
        v17 = [EDContentFormat contentFormatWithFormatString:v16];

        [dataCopy setContentFormat:v17];
      }
    }
  }
}

+ (void)readStrDataFromXmlStrDataElement:(_xmlNode *)element data:(id)data state:(id)state
{
  dataCopy = data;
  stateCopy = state;
  if (element && ([self isHiddenDataElement:element data:dataCopy state:stateCopy] & 1) == 0)
  {
    for (i = OCXFirstChildNamed(element, "pt"); i; i = OCXNextSiblingNamed(i, "pt"))
    {
      dataValues = [dataCopy dataValues];
      v11 = [CHXDataValue chdStringValueFromXmlDataValueElement:i state:stateCopy];
      [dataValues addDataValue:v11];
    }
  }
}

+ (void)readStrDataFromXmlMultiLevelStrDataElement:(_xmlNode *)element data:(id)data state:(id)state
{
  dataCopy = data;
  stateCopy = state;
  if (element)
  {
    if (([self isHiddenDataElement:element data:dataCopy state:stateCopy] & 1) == 0)
    {
      v9 = OCXFirstChildNamed(element, "lvl");
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = OCXNextSiblingNamed(v9, "lvl");
        }

        while (v9);
        [self readStrDataFromXmlStrDataElement:v10 data:dataCopy state:stateCopy];
      }
    }
  }
}

+ (BOOL)isHiddenDataElement:(_xmlNode *)element data:(id)data state:(id)state
{
  dataCopy = data;
  drawingState = [state drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v10 = OCXFindChild(element, oAXChartNamespace, "ptCount");

  v15 = 0;
  if (v10 && ((v11 = CXOptionalUnsignedLongAttribute(v10, CXNoNamespace, "val", &v15), !v15) ? (v12 = v11) : (v12 = 0), v12))
  {
    v13 = 1;
  }

  else
  {
    [dataCopy setDataValueIndexCount:?];
    v13 = 0;
  }

  return v13;
}

@end