@interface EXHeaderFooter
+ (id)edHeaderFooterFromXmlHeaderFooterElement:(_xmlNode *)element state:(id)state;
@end

@implementation EXHeaderFooter

+ (id)edHeaderFooterFromXmlHeaderFooterElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  v6 = objc_alloc_init(EDHeaderFooter);
  if (element)
  {
    v16 = 0;
    CXOptionalBoolAttribute(element, CXNoNamespace, "differentFirst", &v16);
    if (v16)
    {
      eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
      v8 = OCXFindChild(element, eXSpreadsheetMLNamespace, "firstHeader");

      eXSpreadsheetMLNamespace2 = [stateCopy EXSpreadsheetMLNamespace];
      v10 = OCXFindChild(element, eXSpreadsheetMLNamespace2, "firstFooter");
    }

    else
    {
      eXSpreadsheetMLNamespace3 = [stateCopy EXSpreadsheetMLNamespace];
      v8 = OCXFindChild(element, eXSpreadsheetMLNamespace3, "oddHeader");

      eXSpreadsheetMLNamespace2 = [stateCopy EXSpreadsheetMLNamespace];
      v10 = OCXFindChild(element, eXSpreadsheetMLNamespace2, "oddFooter");
    }

    v12 = v10;

    if (v8)
    {
      v13 = [EXString readStringWithAsciiCodeFromXmlStringElement:v8];
      if (v13)
      {
        [(EDHeaderFooter *)v6 setHeaderString:v13];
      }
    }

    if (v12)
    {
      v14 = [EXString readStringWithAsciiCodeFromXmlStringElement:v12];
      if (v14)
      {
        [(EDHeaderFooter *)v6 setFooterString:v14];
      }
    }
  }

  return v6;
}

@end