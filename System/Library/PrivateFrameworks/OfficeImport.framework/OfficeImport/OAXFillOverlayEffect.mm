@interface OAXFillOverlayEffect
+ (id)blendModeEnumMap;
+ (id)readFromXmlNode:(_xmlNode *)node packagePart:(id)part drawingState:(id)state;
+ (void)blendModeEnumMap;
@end

@implementation OAXFillOverlayEffect

+ (id)blendModeEnumMap
{
  v2 = +[OAXFillOverlayEffect blendModeEnumMap]::blendModeEnumMap;
  if (!+[OAXFillOverlayEffect blendModeEnumMap]::blendModeEnumMap)
  {
    {
      +[OAXFillOverlayEffect blendModeEnumMap];
    }

    v3 = [[TCEnumerationMap alloc] initWithStructs:&+[OAXFillOverlayEffect blendModeEnumMap]::blendModeEnumStructs count:5 caseSensitive:1];
    v4 = +[OAXFillOverlayEffect blendModeEnumMap]::blendModeEnumMap;
    +[OAXFillOverlayEffect blendModeEnumMap]::blendModeEnumMap = v3;

    v2 = +[OAXFillOverlayEffect blendModeEnumMap]::blendModeEnumMap;
  }

  return v2;
}

+ (id)readFromXmlNode:(_xmlNode *)node packagePart:(id)part drawingState:(id)state
{
  partCopy = part;
  stateCopy = state;
  v10 = objc_alloc_init(OADFillOverlayEffect);
  v11 = CXRequiredStringAttribute(node, CXNoNamespace, "blend");
  blendModeEnumMap = [self blendModeEnumMap];
  v13 = [blendModeEnumMap valueForString:v11];

  [(OADFillOverlayEffect *)v10 setBlendMode:v13];
  for (i = OCXFirstChild(node); i; i = OCXNextSibling(i))
  {
    v15 = [OAXFill readFillFromXmlNode:i packagePart:partCopy drawingState:stateCopy];
    if (v15)
    {
      [(OADFillOverlayEffect *)v10 setFill:v15];

      break;
    }
  }

  return v10;
}

+ (void)blendModeEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_8, 0, &dword_25D297000);
  }
}

@end