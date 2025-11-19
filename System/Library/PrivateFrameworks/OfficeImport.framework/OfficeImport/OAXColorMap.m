@interface OAXColorMap
+ (id)mapColorEnumMap;
+ (void)mapColorEnumMap;
+ (void)readFromXmlNode:(_xmlNode *)a3 toColorMap:(id)a4;
+ (void)writeColorMap:(id)a3 elementName:(id)a4 to:(id)a5 state:(id)a6;
@end

@implementation OAXColorMap

+ (void)readFromXmlNode:(_xmlNode *)a3 toColorMap:(id)a4
{
  v6 = a4;
  [v6 addDefaultMappings:1];
  v7 = [a1 mapColorEnumMap];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__OAXColorMap_readFromXmlNode_toColorMap___block_invoke;
  v9[3] = &unk_2799C7A38;
  v11 = a3;
  v8 = v6;
  v10 = v8;
  [v7 enumerateValuesAndStringsUsingBlock:v9];
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

+ (void)writeColorMap:(id)a3 elementName:(id)a4 to:(id)a5 state:(id)a6
{
  v17 = a3;
  v9 = a4;
  v10 = a5;
  [v10 startElement:v9];
  v11 = 0;
  do
  {
    v12 = [v17 mappingForIndex:v11];
    v13 = [a1 mapColorEnumMap];
    v14 = [v13 stringForValue:v11];

    v15 = +[OAXColorScheme schemeColorEnumMap];
    v16 = [v15 stringForValue:v12];

    [v10 writeAttribute:v14 content:v16];
    v11 = (v11 + 1);
  }

  while (v11 != 12);
  [v10 endElement];
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