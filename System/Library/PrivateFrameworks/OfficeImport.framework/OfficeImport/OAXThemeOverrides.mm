@interface OAXThemeOverrides
+ (void)readFromPackagePart:(id)part toThemeOverrides:(id)overrides drawingState:(id)state;
@end

@implementation OAXThemeOverrides

+ (void)readFromPackagePart:(id)part toThemeOverrides:(id)overrides drawingState:(id)state
{
  partCopy = part;
  overridesCopy = overrides;
  stateCopy = state;
  v9 = OCXGetRootElement([partCopy xmlDocument]);
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v11 = OCXFindChild(v9, oAXMainNamespace, "clrScheme");

  if (v11)
  {
    v12 = objc_alloc_init(OADColorScheme);
    [overridesCopy setColorScheme:v12];
    [OAXColorScheme readFromXmlNode:v11 toColorScheme:v12];
  }

  oAXMainNamespace2 = [stateCopy OAXMainNamespace];
  v14 = OCXFindChild(v9, oAXMainNamespace2, "fontScheme");

  if (v14)
  {
    v15 = objc_alloc_init(OADFontScheme);
    [overridesCopy setFontScheme:v15];
    [OAXFontScheme readFontScheme:v14 toFontScheme:v15 drawingState:stateCopy];
  }

  v16 = OCXFindChild(v9, CXNoNamespace, "styleMatrix");
  if (v16)
  {
    v17 = objc_alloc_init(OADStyleMatrix);
    [OAXStyleMatrix readFromNode:v16 toStyleMatrix:v17 packagePart:partCopy drawingState:stateCopy];
    [overridesCopy setStyleMatrix:v17];
  }
}

@end