@interface OAXBaseStyles
+ (void)readFromXmlNode:(_xmlNode *)a3 toBaseStyles:(id)a4 packagePart:(id)a5 drawingState:(id)a6;
@end

@implementation OAXBaseStyles

+ (void)readFromXmlNode:(_xmlNode *)a3 toBaseStyles:(id)a4 packagePart:(id)a5 drawingState:(id)a6
{
  v20 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [v10 OAXMainNamespace];
  v12 = OCXFindChild(a3, v11, "clrScheme");

  if (v12)
  {
    v13 = [v20 colorScheme];
    [OAXColorScheme readFromXmlNode:v12 toColorScheme:v13];
  }

  v14 = [v10 OAXMainNamespace];
  v15 = OCXFindChild(a3, v14, "fmtScheme");

  if (v15)
  {
    v16 = [v20 styleMatrix];
    [OAXStyleMatrix readFromNode:v15 toStyleMatrix:v16 packagePart:v9 drawingState:v10];
  }

  v17 = [v10 OAXMainNamespace];
  v18 = OCXFindChild(a3, v17, "fontScheme");

  if (v18)
  {
    v19 = [v20 fontScheme];
    [OAXFontScheme readFontScheme:v18 toFontScheme:v19 drawingState:v10];
  }

  [v20 validateBaseStyles];
}

@end