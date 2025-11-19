@interface EXHeaderFooter
+ (id)edHeaderFooterFromXmlHeaderFooterElement:(_xmlNode *)a3 state:(id)a4;
@end

@implementation EXHeaderFooter

+ (id)edHeaderFooterFromXmlHeaderFooterElement:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(EDHeaderFooter);
  if (a3)
  {
    v16 = 0;
    CXOptionalBoolAttribute(a3, CXNoNamespace, "differentFirst", &v16);
    if (v16)
    {
      v7 = [v5 EXSpreadsheetMLNamespace];
      v8 = OCXFindChild(a3, v7, "firstHeader");

      v9 = [v5 EXSpreadsheetMLNamespace];
      v10 = OCXFindChild(a3, v9, "firstFooter");
    }

    else
    {
      v11 = [v5 EXSpreadsheetMLNamespace];
      v8 = OCXFindChild(a3, v11, "oddHeader");

      v9 = [v5 EXSpreadsheetMLNamespace];
      v10 = OCXFindChild(a3, v9, "oddFooter");
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