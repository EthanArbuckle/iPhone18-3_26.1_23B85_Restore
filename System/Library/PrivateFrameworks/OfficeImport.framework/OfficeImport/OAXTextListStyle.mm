@interface OAXTextListStyle
+ (void)readNode:(_xmlNode *)node textListStyle:(id)style state:(id)state;
@end

@implementation OAXTextListStyle

+ (void)readNode:(_xmlNode *)node textListStyle:(id)style state:(id)state
{
  v23 = *MEMORY[0x277D85DE8];
  styleCopy = style;
  stateCopy = state;
  v9 = 0;
  do
  {
    v10 = v9 + 1;
    snprintf(__str, 0x20uLL, "lvl%dpPr", v9 + 1);
    oAXMainNamespace = [stateCopy OAXMainNamespace];
    v12 = OCXFindChild(node, oAXMainNamespace, __str);

    if (v12)
    {
      v13 = [styleCopy propertiesForListLevel:v9];
      [OAXTextParaPropertyBag readParagraphProperties:v12 paragraphProperties:v13 drawingState:stateCopy];
      [v13 setLevel:v9];
    }

    ++v9;
  }

  while (v10 != 9);
  oAXMainNamespace2 = [stateCopy OAXMainNamespace];
  v15 = OCXFindChild(node, oAXMainNamespace2, "defPPr");

  if (v15)
  {
    oAXMainNamespace3 = [stateCopy OAXMainNamespace];
    v17 = OCXFindChild(v15, oAXMainNamespace3, "defRPr");

    if (v17)
    {
      v21 = 0;
      v18 = CXOptionalStringAttribute(v17, CXNoNamespace, "lang", &v21);
      v19 = v21;
      if (v18)
      {
        [styleCopy setLanguage:v19];
      }
    }

    defaultProperties = [styleCopy defaultProperties];
    [OAXTextParaPropertyBag readParagraphProperties:v15 paragraphProperties:defaultProperties drawingState:stateCopy];
  }
}

@end