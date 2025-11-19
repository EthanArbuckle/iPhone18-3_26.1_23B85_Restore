@interface OAXFillOverlayEffect
+ (id)blendModeEnumMap;
+ (id)readFromXmlNode:(_xmlNode *)a3 packagePart:(id)a4 drawingState:(id)a5;
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

+ (id)readFromXmlNode:(_xmlNode *)a3 packagePart:(id)a4 drawingState:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(OADFillOverlayEffect);
  v11 = CXRequiredStringAttribute(a3, CXNoNamespace, "blend");
  v12 = [a1 blendModeEnumMap];
  v13 = [v12 valueForString:v11];

  [(OADFillOverlayEffect *)v10 setBlendMode:v13];
  for (i = OCXFirstChild(a3); i; i = OCXNextSibling(i))
  {
    v15 = [OAXFill readFillFromXmlNode:i packagePart:v8 drawingState:v9];
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