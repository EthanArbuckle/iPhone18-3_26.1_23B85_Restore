@interface WXListDefinition
+ (id)listTypeEnumMap;
+ (void)listTypeEnumMap;
+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state;
@end

@implementation WXListDefinition

+ (id)listTypeEnumMap
{
  {
    +[WXListDefinition listTypeEnumMap];
  }

  if (+[WXListDefinition listTypeEnumMap]::onceToken != -1)
  {
    +[WXListDefinition listTypeEnumMap];
  }

  v2 = +[WXListDefinition listTypeEnumMap]::sListTypeEnumMap;

  return v2;
}

void __35__WXListDefinition_listTypeEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXListDefinition listTypeEnumMap]::sListTypeEnumStructs count:3 caseSensitive:1];
  v1 = +[WXListDefinition listTypeEnumMap]::sListTypeEnumMap;
  +[WXListDefinition listTypeEnumMap]::sListTypeEnumMap = v0;
}

+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  v22 = 1;
  listTypeEnumMap = [self listTypeEnumMap];
  readEnumProperty<WDListType>(from, "multiLevelType", "val", listTypeEnumMap, &v22, stateCopy);

  [toCopy setType:v22];
  wXMainNamespace = [stateCopy WXMainNamespace];
  Child = OCXFindChild(from, wXMainNamespace, "lvl");

  while (Child)
  {
    wXMainNamespace2 = [stateCopy WXMainNamespace];
    v14 = CXRequiredLongAttribute(Child, wXMainNamespace2, "ilvl");

    if (v14 <= 8)
    {
      while ([toCopy levelCount] <= v14)
      {
        addLevel = [toCopy addLevel];
      }

      v16 = [toCopy levelAt:v14];
      [WXListLevel readFrom:Child to:v16 state:stateCopy];
      wXMainNamespace3 = [stateCopy WXMainNamespace];
      Child = OCXFindNextChild(Child, wXMainNamespace3, "lvl");
    }
  }

  wXMainNamespace4 = [stateCopy WXMainNamespace];
  v19 = OCXFindChild(from, wXMainNamespace4, "numStyleLink");

  if (v19)
  {
    wXMainNamespace5 = [stateCopy WXMainNamespace];
    v21 = CXDefaultStringAttribute(v19, wXMainNamespace5, "val", 0);

    [toCopy setStyleRefId:v21];
  }
}

+ (void)listTypeEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_36, 0, &dword_25D297000);
  }
}

@end