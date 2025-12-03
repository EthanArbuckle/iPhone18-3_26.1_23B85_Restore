@interface OAXBaseStyles
+ (void)readFromXmlNode:(_xmlNode *)node toBaseStyles:(id)styles packagePart:(id)part drawingState:(id)state;
@end

@implementation OAXBaseStyles

+ (void)readFromXmlNode:(_xmlNode *)node toBaseStyles:(id)styles packagePart:(id)part drawingState:(id)state
{
  stylesCopy = styles;
  partCopy = part;
  stateCopy = state;
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v12 = OCXFindChild(node, oAXMainNamespace, "clrScheme");

  if (v12)
  {
    colorScheme = [stylesCopy colorScheme];
    [OAXColorScheme readFromXmlNode:v12 toColorScheme:colorScheme];
  }

  oAXMainNamespace2 = [stateCopy OAXMainNamespace];
  v15 = OCXFindChild(node, oAXMainNamespace2, "fmtScheme");

  if (v15)
  {
    styleMatrix = [stylesCopy styleMatrix];
    [OAXStyleMatrix readFromNode:v15 toStyleMatrix:styleMatrix packagePart:partCopy drawingState:stateCopy];
  }

  oAXMainNamespace3 = [stateCopy OAXMainNamespace];
  v18 = OCXFindChild(node, oAXMainNamespace3, "fontScheme");

  if (v18)
  {
    fontScheme = [stylesCopy fontScheme];
    [OAXFontScheme readFontScheme:v18 toFontScheme:fontScheme drawingState:stateCopy];
  }

  [stylesCopy validateBaseStyles];
}

@end