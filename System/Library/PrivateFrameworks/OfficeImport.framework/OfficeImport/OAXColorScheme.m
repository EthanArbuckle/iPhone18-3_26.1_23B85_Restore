@interface OAXColorScheme
+ (id)colorForScheme:(id)a3 colorMap:(id)a4 value:(id)a5;
+ (id)colorForScheme:(id)a3 value:(id)a4;
+ (id)schemeColorEnumMap;
+ (void)readFromXmlNode:(_xmlNode *)a3 toColorScheme:(id)a4;
+ (void)writeColorScheme:(id)a3 to:(id)a4 state:(id)a5;
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

+ (void)readFromXmlNode:(_xmlNode *)a3 toColorScheme:(id)a4
{
  v12 = a4;
  v6 = CXDefaultStringAttribute(a3, CXNoNamespace, "name", 0);
  [v12 setName:v6];

  for (i = OCXFirstChild(a3); i; i = OCXNextSibling(i))
  {
    if (i->type == XML_ELEMENT_NODE && i->name)
    {
      v8 = [MEMORY[0x277CCACA8] tc_stringWithXmlString:?];
      v9 = [a1 schemeColorEnumMap];
      v10 = [v9 valueForString:v8];

      if (v10 == -130883970)
      {
        [TCMessageException raise:OABadFormat];
      }

      v11 = [OAXColor readColorFromParentXmlNode:i];
      [v12 addColor:v11 index:v10];
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

+ (id)colorForScheme:(id)a3 value:(id)a4
{
  v4 = [a1 colorForScheme:a3 colorMap:0 value:a4];

  return v4;
}

+ (id)colorForScheme:(id)a3 colorMap:(id)a4 value:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    [TCMessageException raise:OABadFormat];
  }

  v11 = [a1 schemeColorEnumMap];
  v12 = [v11 valueForString:v10];

  if (v12 == -130883970)
  {
    if (!v9 || (+[OAXColorMap mapColorEnumMap](OAXColorMap, "mapColorEnumMap"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 valueForString:v10], v13, v12 = objc_msgSend(v9, "mappingForIndex:", v14), v12 == -130883970))
    {
      [TCMessageException raise:OABadFormat];
      v12 = 4164083326;
    }
  }

  v15 = [v8 colorForIndex:v12];

  return v15;
}

+ (void)writeColorScheme:(id)a3 to:(id)a4 state:(id)a5
{
  v15 = a3;
  v7 = a4;
  [v7 startElement:@"clrScheme"];
  v8 = [v15 name];
  [v7 writeAttribute:@"name" content:v8];

  v9 = [v15 colorCount];
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      v11 = [a1 schemeColorEnumMap];
      v12 = [v11 stringForValue:i];

      v13 = [v15 colorForIndex:i];
      v14 = v13;
      if (v12 && v13)
      {
        [v7 startElement:v12];
        [OAXColor writeColor:v14 to:v7];
        [v7 endElement];
      }
    }
  }

  [v7 endElement];
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