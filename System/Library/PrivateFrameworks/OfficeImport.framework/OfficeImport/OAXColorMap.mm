@interface OAXColorMap
+ (id)mapColorEnumMap;
+ (void)mapColorEnumMap;
+ (void)readFromXmlNode:(_xmlNode *)node toColorMap:(id)map;
+ (void)writeColorMap:(id)map elementName:(id)name to:(id)to state:(id)state;
@end

@implementation OAXColorMap

+ (void)readFromXmlNode:(_xmlNode *)node toColorMap:(id)map
{
  mapCopy = map;
  [mapCopy addDefaultMappings:1];
  mapColorEnumMap = [self mapColorEnumMap];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__OAXColorMap_readFromXmlNode_toColorMap___block_invoke;
  v9[3] = &unk_2799C7A38;
  nodeCopy = node;
  v8 = mapCopy;
  v10 = v8;
  [mapColorEnumMap enumerateValuesAndStringsUsingBlock:v9];
}

void __42__OAXColorMap_readFromXmlNode_toColorMap___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 tc_xmlString];
  v6 = CXRequiredStringAttribute(*(a1 + 40), CXNoNamespace, v5);
  if (v6)
  {
    v8 = v6;
    v7 = +[OAXColorScheme schemeColorEnumMap];
    [*(a1 + 32) addMapping:objc_msgSend(v7 index:{"valueForString:", v8), a2}];

    v6 = v8;
  }
}

+ (void)writeColorMap:(id)map elementName:(id)name to:(id)to state:(id)state
{
  mapCopy = map;
  nameCopy = name;
  toCopy = to;
  [toCopy startElement:nameCopy];
  v11 = 0;
  do
  {
    v12 = [mapCopy mappingForIndex:v11];
    mapColorEnumMap = [self mapColorEnumMap];
    v14 = [mapColorEnumMap stringForValue:v11];

    v15 = +[OAXColorScheme schemeColorEnumMap];
    v16 = [v15 stringForValue:v12];

    [toCopy writeAttribute:v14 content:v16];
    v11 = (v11 + 1);
  }

  while (v11 != 12);
  [toCopy endElement];
}

+ (id)mapColorEnumMap
{
  {
    +[OAXColorMap mapColorEnumMap];
  }

  v2 = +[OAXColorMap mapColorEnumMap]::mapColorEnumMap;
  if (!+[OAXColorMap mapColorEnumMap]::mapColorEnumMap)
  {
    v3 = [[TCEnumerationMap alloc] initWithStructs:&+[OAXColorMap mapColorEnumMap]::mapColorEnumStructs count:12 caseSensitive:1];
    v4 = +[OAXColorMap mapColorEnumMap]::mapColorEnumMap;
    +[OAXColorMap mapColorEnumMap]::mapColorEnumMap = v3;

    v2 = +[OAXColorMap mapColorEnumMap]::mapColorEnumMap;
  }

  return v2;
}

+ (void)mapColorEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_3, 0, &dword_25D297000);
  }
}

@end