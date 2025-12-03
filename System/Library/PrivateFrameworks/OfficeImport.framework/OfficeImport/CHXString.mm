@interface CHXString
+ (id)chdFormulaFromXmlStrRefElement:(_xmlNode *)element state:(id)state;
+ (id)edStringFromXmlRichElement:(_xmlNode *)element state:(id)state;
+ (id)edStringFromXmlStrCacheElement:(_xmlNode *)element state:(id)state;
+ (void)readFromXmlTxElement:(_xmlNode *)element formula:(id *)formula lastCached:(id *)cached state:(id)state;
@end

@implementation CHXString

+ (void)readFromXmlTxElement:(_xmlNode *)element formula:(id *)formula lastCached:(id *)cached state:(id)state
{
  stateCopy = state;
  v11 = stateCopy;
  *formula = 0;
  *cached = 0;
  if (!element)
  {
    goto LABEL_13;
  }

  v31 = stateCopy;
  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  HasName = CXNodeHasName(element, oAXChartNamespace, "tx");

  v11 = v31;
  if (!HasName)
  {
    goto LABEL_13;
  }

  drawingState2 = [v31 drawingState];
  oAXChartNamespace2 = [drawingState2 OAXChartNamespace];
  v17 = OCXFindChild(element, oAXChartNamespace2, "strRef");

  if (v17)
  {
    if (([v31 ignoreFormulas] & 1) == 0)
    {
      *formula = [self chdFormulaFromXmlStrRefElement:v17 state:v31];
    }

    drawingState3 = [v31 drawingState];
    oAXChartNamespace3 = [drawingState3 OAXChartNamespace];
    v20 = OCXFindChild(v17, oAXChartNamespace3, "strCache");

    if (!v20)
    {
      goto LABEL_11;
    }

    v21 = [self edStringFromXmlStrCacheElement:v20 state:v31];
  }

  else
  {
    drawingState4 = [v31 drawingState];
    oAXChartNamespace4 = [drawingState4 OAXChartNamespace];
    v24 = OCXFindChild(element, oAXChartNamespace4, "rich");

    if (!v24)
    {
      goto LABEL_11;
    }

    v21 = [self edStringFromXmlRichElement:v24 state:v31];
  }

  *cached = v21;
LABEL_11:
  parent = element->parent;
  drawingState5 = [v31 drawingState];
  oAXChartNamespace5 = [drawingState5 OAXChartNamespace];
  v28 = OCXFindChild(parent, oAXChartNamespace5, "txPr");

  v11 = v31;
  if (v28)
  {
    v29 = *cached;
    v30 = [CHXFont edRunCollectionFromXmlTextPropertiesElement:v28 state:v31];
    [v29 setRuns:v30];

    v11 = v31;
  }

LABEL_13:
}

+ (id)edStringFromXmlRichElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  v6 = objc_alloc_init(OADTextBody);
  drawingState = [stateCopy drawingState];
  [OAXTextBody readTextBodyFromXmlNode:element textBody:v6 drawingState:drawingState];

  v28 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v27 = objc_alloc_init(EDRunsCollection);
  v8 = 0;
  v25 = v6;
  while ([(OADTextBody *)v6 paragraphCount]> v8)
  {
    if (v8)
    {
      [v28 appendString:@"\n"];
    }

    v26 = v8;
    v9 = [(OADTextBody *)v6 paragraphAtIndex:v8];
    for (i = 0; ; i = v11 + 1)
    {
      v11 = i;
      if ([v9 textRunCount] <= i)
      {
        break;
      }

      v12 = [v9 textRunAtIndex:i];
      properties = [v12 properties];
      v14 = [CHXFont edFontWithOadCharacterProperties:properties state:stateCopy];

      if (v14)
      {
        properties2 = [v12 properties];
        effects = [properties2 effects];
        v17 = stateCopy;

        v18 = [OAXEffect updateIncomingEffects:effects];

        v19 = [v28 length];
        resources = [v17 resources];
        v21 = [EDRun runWithCharIndex:v19 font:v14 effects:v18 resources:resources];
        [(EDSortedCollection *)v27 addObject:v21];

        stateCopy = v17;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        text = [v12 text];
        [v28 appendString:text];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v28 appendString:@"\n"];
        }
      }
    }

    v6 = v25;
    v8 = v26 + 1;
  }

  if ([v28 length])
  {
    v23 = [EDString edStringWithString:v28];
    if ([(EDCollection *)v27 count])
    {
      [v23 setRuns:v27];
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (id)chdFormulaFromXmlStrRefElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v8 = OCXFindRequiredChild(element, oAXChartNamespace, "f");

  v9 = objc_opt_class();
  exState = [stateCopy exState];
  v11 = [EXFormula edFormulaFromXmlFormulaElement:v8 formulaClass:v9 state:exState];

  exState2 = [stateCopy exState];
  workbook = [exState2 workbook];
  [v11 setWorkbook:workbook];

  return v11;
}

+ (id)edStringFromXmlStrCacheElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
  for (i = OCXFirstChildNamed(element, "pt"); i; i = OCXNextSiblingNamed(i, "pt"))
  {
    drawingState = [stateCopy drawingState];
    oAXChartNamespace = [drawingState OAXChartNamespace];
    v10 = OCXFindChild(i, oAXChartNamespace, "v");

    if (v10)
    {
      v11 = [EXString readStringWithAsciiCodeFromXmlStringElement:v10];
      [v6 appendString:v11];
    }
  }

  if ([v6 length])
  {
    v12 = [EDString edStringWithString:v6];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end