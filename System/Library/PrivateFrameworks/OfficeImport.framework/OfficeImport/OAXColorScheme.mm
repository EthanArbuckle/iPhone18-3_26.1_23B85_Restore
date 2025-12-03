@interface OAXColorScheme
+ (id)colorForScheme:(id)scheme colorMap:(id)map value:(id)value;
+ (id)colorForScheme:(id)scheme value:(id)value;
+ (id)schemeColorEnumMap;
+ (void)readFromXmlNode:(_xmlNode *)node toColorScheme:(id)scheme;
+ (void)writeColorScheme:(id)scheme to:(id)to state:(id)state;
@end

@implementation OAXColorScheme

+ (id)schemeColorEnumMap
{
  if (+[OAXColorScheme schemeColorEnumMap]::once != -1)
  {
    +[OAXColorScheme schemeColorEnumMap];
  }

  v3 = +[OAXColorScheme schemeColorEnumMap]::schemeColorEnumMap;

  return v3;
}

+ (void)readFromXmlNode:(_xmlNode *)node toColorScheme:(id)scheme
{
  schemeCopy = scheme;
  v6 = CXDefaultStringAttribute(node, CXNoNamespace, "name", 0);
  [schemeCopy setName:v6];

  for (i = OCXFirstChild(node); i; i = OCXNextSibling(i))
  {
    if (i->type == XML_ELEMENT_NODE && i->name)
    {
      v8 = [MEMORY[0x277CCACA8] tc_stringWithXmlString:?];
      schemeColorEnumMap = [self schemeColorEnumMap];
      v10 = [schemeColorEnumMap valueForString:v8];

      if (v10 == -130883970)
      {
        [TCMessageException raise:OABadFormat];
      }

      v11 = [OAXColor readColorFromParentXmlNode:i];
      [schemeCopy addColor:v11 index:v10];
    }
  }
}

void __36__OAXColorScheme_schemeColorEnumMap__block_invoke()
{
  if ((atomic_load_explicit(&_ZGVZZ36__OAXColorScheme_schemeColorEnumMap_EUb_E22schemeColorEnumStructs, memory_order_acquire) & 1) == 0)
  {
    __36__OAXColorScheme_schemeColorEnumMap__block_invoke_cold_1();
  }

  v0 = [[TCEnumerationMap alloc] initWithStructs:&_ZZZ36__OAXColorScheme_schemeColorEnumMap_EUb_E22schemeColorEnumStructs count:12 caseSensitive:1];
  v1 = +[OAXColorScheme schemeColorEnumMap]::schemeColorEnumMap;
  +[OAXColorScheme schemeColorEnumMap]::schemeColorEnumMap = v0;
}

+ (id)colorForScheme:(id)scheme value:(id)value
{
  v4 = [self colorForScheme:scheme colorMap:0 value:value];

  return v4;
}

+ (id)colorForScheme:(id)scheme colorMap:(id)map value:(id)value
{
  schemeCopy = scheme;
  mapCopy = map;
  valueCopy = value;
  if (!valueCopy)
  {
    [TCMessageException raise:OABadFormat];
  }

  schemeColorEnumMap = [self schemeColorEnumMap];
  v12 = [schemeColorEnumMap valueForString:valueCopy];

  if (v12 == -130883970)
  {
    if (!mapCopy || (+[OAXColorMap mapColorEnumMap](OAXColorMap, "mapColorEnumMap"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 valueForString:valueCopy], v13, v12 = objc_msgSend(mapCopy, "mappingForIndex:", v14), v12 == -130883970))
    {
      [TCMessageException raise:OABadFormat];
      v12 = 4164083326;
    }
  }

  v15 = [schemeCopy colorForIndex:v12];

  return v15;
}

+ (void)writeColorScheme:(id)scheme to:(id)to state:(id)state
{
  schemeCopy = scheme;
  toCopy = to;
  [toCopy startElement:@"clrScheme"];
  name = [schemeCopy name];
  [toCopy writeAttribute:@"name" content:name];

  colorCount = [schemeCopy colorCount];
  if (colorCount)
  {
    for (i = 0; i != colorCount; ++i)
    {
      schemeColorEnumMap = [self schemeColorEnumMap];
      v12 = [schemeColorEnumMap stringForValue:i];

      v13 = [schemeCopy colorForIndex:i];
      v14 = v13;
      if (v12 && v13)
      {
        [toCopy startElement:v12];
        [OAXColor writeColor:v14 to:toCopy];
        [toCopy endElement];
      }
    }
  }

  [toCopy endElement];
}

void __36__OAXColorScheme_schemeColorEnumMap__block_invoke_cold_1()
{
  if (__cxa_guard_acquire(&_ZGVZZ36__OAXColorScheme_schemeColorEnumMap_EUb_E22schemeColorEnumStructs))
  {
    __cxa_atexit(__cxx_global_array_dtor_4, 0, &dword_25D297000);

    __cxa_guard_release(&_ZGVZZ36__OAXColorScheme_schemeColorEnumMap_EUb_E22schemeColorEnumStructs);
  }
}

@end