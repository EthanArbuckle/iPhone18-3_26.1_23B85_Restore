@interface EXNameTable
+ (id)edNameFromXmlNameElement:(_xmlNode *)element state:(id)state;
+ (void)readFrom:(_xmlNode *)from state:(id)state;
@end

@implementation EXNameTable

+ (void)readFrom:(_xmlNode *)from state:(id)state
{
  stateCopy = state;
  if (from)
  {
    v13 = stateCopy;
    resources = [stateCopy resources];
    names = [resources names];

    eXSpreadsheetMLNamespace = [v13 EXSpreadsheetMLNamespace];
    Child = OCXFindChild(from, eXSpreadsheetMLNamespace, "definedName");

    while (Child)
    {
      v11 = [self edNameFromXmlNameElement:Child state:v13];
      [names addObject:v11];

      eXSpreadsheetMLNamespace2 = [v13 EXSpreadsheetMLNamespace];
      Child = OCXFindNextChild(Child, eXSpreadsheetMLNamespace2, "definedName");
    }

    stateCopy = v13;
  }
}

+ (id)edNameFromXmlNameElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  if (element)
  {
    v6 = objc_alloc_init(EDName);
    v15 = 0;
    v7 = CXOptionalStringAttribute(element, CXNoNamespace, "name", &v15);
    v8 = v15;
    if (v7)
    {
      v9 = [EDString edStringWithString:v8];
      [(EDName *)v6 setNameString:v9];
    }

    v14 = 0;
    if (CXOptionalLongAttribute(element, CXNoNamespace, "localSheetId", &v14))
    {
      [(EDName *)v6 setSheetIndex:v14];
    }

    v10 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:element];
    v11 = [@"=" stringByAppendingString:v10];
    workbook = [stateCopy workbook];
    [(EDName *)v6 setFormulaString:v11 workbook:workbook];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end