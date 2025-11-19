@interface OAXTextListStyle
+ (void)readNode:(_xmlNode *)a3 textListStyle:(id)a4 state:(id)a5;
@end

@implementation OAXTextListStyle

+ (void)readNode:(_xmlNode *)a3 textListStyle:(id)a4 state:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = 0;
  do
  {
    v10 = v9 + 1;
    snprintf(__str, 0x20uLL, "lvl%dpPr", v9 + 1);
    v11 = [v8 OAXMainNamespace];
    v12 = OCXFindChild(a3, v11, __str);

    if (v12)
    {
      v13 = [v7 propertiesForListLevel:v9];
      [OAXTextParaPropertyBag readParagraphProperties:v12 paragraphProperties:v13 drawingState:v8];
      [v13 setLevel:v9];
    }

    ++v9;
  }

  while (v10 != 9);
  v14 = [v8 OAXMainNamespace];
  v15 = OCXFindChild(a3, v14, "defPPr");

  if (v15)
  {
    v16 = [v8 OAXMainNamespace];
    v17 = OCXFindChild(v15, v16, "defRPr");

    if (v17)
    {
      v21 = 0;
      v18 = CXOptionalStringAttribute(v17, CXNoNamespace, "lang", &v21);
      v19 = v21;
      if (v18)
      {
        [v7 setLanguage:v19];
      }
    }

    v20 = [v7 defaultProperties];
    [OAXTextParaPropertyBag readParagraphProperties:v15 paragraphProperties:v20 drawingState:v8];
  }
}

@end