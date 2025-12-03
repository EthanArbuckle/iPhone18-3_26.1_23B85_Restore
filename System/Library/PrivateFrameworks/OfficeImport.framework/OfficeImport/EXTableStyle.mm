@interface EXTableStyle
+ (id)edTableStyleFromXmlTableStyleElement:(_xmlNode *)element state:(id)state;
@end

@implementation EXTableStyle

+ (id)edTableStyleFromXmlTableStyleElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  if (element)
  {
    v6 = +[EDTableStyle tableStyle];
    v15 = 0;
    v7 = CXOptionalStringAttribute(element, CXNoNamespace, "name", &v15);
    v8 = v15;
    if (v7)
    {
      [v6 setName:v8];
    }

    tableStyleElements = [v6 tableStyleElements];
    eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
    Child = OCXFindChild(element, eXSpreadsheetMLNamespace, "tableStyleElement");

    while (Child)
    {
      v12 = [EXTableStyleElement edTableStyleElementFromXmlTableStyleElement:Child state:stateCopy];
      [tableStyleElements addObject:v12];

      eXSpreadsheetMLNamespace2 = [stateCopy EXSpreadsheetMLNamespace];
      Child = OCXFindNextChild(Child, eXSpreadsheetMLNamespace2, "tableStyleElement");
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end