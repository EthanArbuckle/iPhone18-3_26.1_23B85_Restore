@interface CHXData
+ (BOOL)isHiddenDataElement:(_xmlNode *)a3 data:(id)a4 state:(id)a5;
+ (id)chdDataFromXmlDataElement:(_xmlNode *)a3 state:(id)a4;
+ (void)readNumDataFromXmlNumDataElement:(_xmlNode *)a3 data:(id)a4 state:(id)a5;
+ (void)readStrDataFromXmlMultiLevelStrDataElement:(_xmlNode *)a3 data:(id)a4 state:(id)a5;
+ (void)readStrDataFromXmlStrDataElement:(_xmlNode *)a3 data:(id)a4 state:(id)a5;
@end

@implementation CHXData

+ (id)chdDataFromXmlDataElement:(_xmlNode *)a3 state:(id)a4
{
  v6 = a4;
  v7 = [v6 resources];
  v43 = [CHDData dataWithResources:v7];

  if (a3)
  {
    v42 = [v6 exState];
    for (i = OCXFirstChild(a3); ; i = OCXNextSibling(i))
    {
      if (!i)
      {
        v40 = [v43 dataValues];
        [v40 finishReading];

        goto LABEL_22;
      }

      v9 = [v6 drawingState];
      v10 = [v9 OAXChartNamespace];
      if (CXNodeHasName(i, v10, "numRef"))
      {
        goto LABEL_7;
      }

      v11 = [v6 drawingState];
      v12 = [v11 OAXChartNamespace];
      if (CXNodeHasName(i, v12, "strRef"))
      {
        break;
      }

      v21 = [v6 drawingState];
      v22 = [v21 OAXChartNamespace];
      HasName = CXNodeHasName(i, v22, "multiLvlStrRef");

      if (!HasName)
      {
        v24 = [v6 drawingState];
        v25 = [v24 OAXChartNamespace];
        v26 = CXNodeHasName(i, v25, "numLit");

        if (v26)
        {
          [a1 readNumDataFromXmlNumDataElement:i data:v43 state:v6];
        }

        else
        {
          v37 = [v6 drawingState];
          v38 = [v37 OAXChartNamespace];
          v39 = CXNodeHasName(i, v38, "strLit");

          if (v39)
          {
            [a1 readStrDataFromXmlStrDataElement:i data:v43 state:v6];
          }
        }

        continue;
      }

LABEL_8:
      v13 = [v6 ignoreFormulas];
      if (([v6 ignoreFormulas] & 1) == 0)
      {
        v14 = [v6 drawingState];
        v15 = [v14 OAXChartNamespace];
        v16 = OCXFindRequiredChild(i, v15, "f");

        v17 = [EXFormula edFormulaFromXmlFormulaElement:v16 formulaClass:objc_opt_class() state:v42];
        v18 = [v42 workbook];
        [v17 setWorkbook:v18];

        v19 = [v6 chart];
        [v43 setFormula:v17 chart:v19];

        v20 = [v17 originalFormulaString];
        if ([v20 rangeOfString:@"#REF"] == 0x7FFFFFFFFFFFFFFFLL)
        {
        }

        else
        {
          v27 = [v20 rangeOfString:@"'#REF'"];

          if (v27 == 0x7FFFFFFFFFFFFFFFLL)
          {
            continue;
          }
        }

LABEL_17:
        v28 = [v6 drawingState];
        v29 = [v28 OAXChartNamespace];
        v30 = OCXFindChild(i, v29, "strCache");

        [a1 readStrDataFromXmlStrDataElement:v30 data:v43 state:v6];
        v31 = [v6 drawingState];
        v32 = [v31 OAXChartNamespace];
        v33 = OCXFindChild(i, v32, "multiLvlStrCache");

        [a1 readStrDataFromXmlMultiLevelStrDataElement:v33 data:v43 state:v6];
        v34 = [v6 drawingState];
        v35 = [v34 OAXChartNamespace];
        v36 = OCXFindChild(i, v35, "numCache");

        [a1 readNumDataFromXmlNumDataElement:v36 data:v43 state:v6];
        continue;
      }

      if (v13)
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

+ (void)readNumDataFromXmlNumDataElement:(_xmlNode *)a3 data:(id)a4 state:(id)a5
{
  v18 = a4;
  v8 = a5;
  if (a3)
  {
    if (([a1 isHiddenDataElement:a3 data:v18 state:v8] & 1) == 0)
    {
      for (i = OCXFirstChildNamed(a3, "pt"); i; i = OCXNextSiblingNamed(i, "pt"))
      {
        v10 = [v18 dataValues];
        v11 = [CHXDataValue chdNumberValueFromXmlDataValueElement:i state:v8];
        [v10 addDataValue:v11];
      }

      v12 = [v8 drawingState];
      v13 = [v12 OAXChartNamespace];
      v14 = OCXFindChild(a3, v13, "formatCode");

      if (v14)
      {
        v15 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:v14];
        v16 = [EDString edStringWithString:v15];
        v17 = [EDContentFormat contentFormatWithFormatString:v16];

        [v18 setContentFormat:v17];
      }
    }
  }
}

+ (void)readStrDataFromXmlStrDataElement:(_xmlNode *)a3 data:(id)a4 state:(id)a5
{
  v12 = a4;
  v8 = a5;
  if (a3 && ([a1 isHiddenDataElement:a3 data:v12 state:v8] & 1) == 0)
  {
    for (i = OCXFirstChildNamed(a3, "pt"); i; i = OCXNextSiblingNamed(i, "pt"))
    {
      v10 = [v12 dataValues];
      v11 = [CHXDataValue chdStringValueFromXmlDataValueElement:i state:v8];
      [v10 addDataValue:v11];
    }
  }
}

+ (void)readStrDataFromXmlMultiLevelStrDataElement:(_xmlNode *)a3 data:(id)a4 state:(id)a5
{
  v11 = a4;
  v8 = a5;
  if (a3)
  {
    if (([a1 isHiddenDataElement:a3 data:v11 state:v8] & 1) == 0)
    {
      v9 = OCXFirstChildNamed(a3, "lvl");
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = OCXNextSiblingNamed(v9, "lvl");
        }

        while (v9);
        [a1 readStrDataFromXmlStrDataElement:v10 data:v11 state:v8];
      }
    }
  }
}

+ (BOOL)isHiddenDataElement:(_xmlNode *)a3 data:(id)a4 state:(id)a5
{
  v7 = a4;
  v8 = [a5 drawingState];
  v9 = [v8 OAXChartNamespace];
  v10 = OCXFindChild(a3, v9, "ptCount");

  v15 = 0;
  if (v10 && ((v11 = CXOptionalUnsignedLongAttribute(v10, CXNoNamespace, "val", &v15), !v15) ? (v12 = v11) : (v12 = 0), v12))
  {
    v13 = 1;
  }

  else
  {
    [v7 setDataValueIndexCount:?];
    v13 = 0;
  }

  return v13;
}

@end