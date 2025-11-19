@interface OAXThemeOverrides
+ (void)readFromPackagePart:(id)a3 toThemeOverrides:(id)a4 drawingState:(id)a5;
@end

@implementation OAXThemeOverrides

+ (void)readFromPackagePart:(id)a3 toThemeOverrides:(id)a4 drawingState:(id)a5
{
  v18 = a3;
  v7 = a4;
  v8 = a5;
  v9 = OCXGetRootElement([v18 xmlDocument]);
  v10 = [v8 OAXMainNamespace];
  v11 = OCXFindChild(v9, v10, "clrScheme");

  if (v11)
  {
    v12 = objc_alloc_init(OADColorScheme);
    [v7 setColorScheme:v12];
    [OAXColorScheme readFromXmlNode:v11 toColorScheme:v12];
  }

  v13 = [v8 OAXMainNamespace];
  v14 = OCXFindChild(v9, v13, "fontScheme");

  if (v14)
  {
    v15 = objc_alloc_init(OADFontScheme);
    [v7 setFontScheme:v15];
    [OAXFontScheme readFontScheme:v14 toFontScheme:v15 drawingState:v8];
  }

  v16 = OCXFindChild(v9, CXNoNamespace, "styleMatrix");
  if (v16)
  {
    v17 = objc_alloc_init(OADStyleMatrix);
    [OAXStyleMatrix readFromNode:v16 toStyleMatrix:v17 packagePart:v18 drawingState:v8];
    [v7 setStyleMatrix:v17];
  }
}

@end