@interface WXListDefinition
+ (id)listTypeEnumMap;
+ (void)listTypeEnumMap;
+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5;
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

+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5
{
  v8 = a4;
  v9 = a5;
  v22 = 1;
  v10 = [a1 listTypeEnumMap];
  readEnumProperty<WDListType>(a3, "multiLevelType", "val", v10, &v22, v9);

  [v8 setType:v22];
  v11 = [v9 WXMainNamespace];
  Child = OCXFindChild(a3, v11, "lvl");

  while (Child)
  {
    v13 = [v9 WXMainNamespace];
    v14 = CXRequiredLongAttribute(Child, v13, "ilvl");

    if (v14 <= 8)
    {
      while ([v8 levelCount] <= v14)
      {
        v15 = [v8 addLevel];
      }

      v16 = [v8 levelAt:v14];
      [WXListLevel readFrom:Child to:v16 state:v9];
      v17 = [v9 WXMainNamespace];
      Child = OCXFindNextChild(Child, v17, "lvl");
    }
  }

  v18 = [v9 WXMainNamespace];
  v19 = OCXFindChild(a3, v18, "numStyleLink");

  if (v19)
  {
    v20 = [v9 WXMainNamespace];
    v21 = CXDefaultStringAttribute(v19, v20, "val", 0);

    [v8 setStyleRefId:v21];
  }
}

+ (void)listTypeEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_36, 0, &dword_25D297000);
  }
}

@end