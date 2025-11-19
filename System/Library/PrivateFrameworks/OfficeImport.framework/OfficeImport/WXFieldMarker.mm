@interface WXFieldMarker
+ (id)fieldMarkerTypeEnumMap;
+ (void)fieldMarkerTypeEnumMap;
+ (void)readFrom:(_xmlNode *)a3 to:(id)a4;
@end

@implementation WXFieldMarker

+ (id)fieldMarkerTypeEnumMap
{
  {
    +[WXFieldMarker fieldMarkerTypeEnumMap];
  }

  if (+[WXFieldMarker fieldMarkerTypeEnumMap]::onceToken != -1)
  {
    +[WXFieldMarker fieldMarkerTypeEnumMap];
  }

  v2 = +[WXFieldMarker fieldMarkerTypeEnumMap]::sFieldMarkerTypeEnumMap;

  return v2;
}

void __39__WXFieldMarker_fieldMarkerTypeEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXFieldMarker fieldMarkerTypeEnumMap]::sFieldMarkerTypeStructs count:3 caseSensitive:1];
  v1 = +[WXFieldMarker fieldMarkerTypeEnumMap]::sFieldMarkerTypeEnumMap;
  +[WXFieldMarker fieldMarkerTypeEnumMap]::sFieldMarkerTypeEnumMap = v0;
}

+ (void)readFrom:(_xmlNode *)a3 to:(id)a4
{
  v14 = a4;
  Prop = xmlGetProp(a3, "fldCharType");
  v7 = [a1 fieldMarkerTypeEnumMap];
  v8 = [MEMORY[0x277CCACA8] tc_stringWithXmlString:Prop];
  v9 = [v7 valueForString:v8];

  if (v9 != -130883970)
  {
    [v14 setFieldMarkerType:v9];
    if (v9 == 19)
    {
      v10 = OCXFirstChild(a3);
      v11 = v10;
      if (v10)
      {
        if (xmlStrEqual(v10->name, "fldData"))
        {
          v12 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:v11];
          v13 = decodeBase64(v12);
          [v14 setData:v13];
        }
      }
    }
  }

  free(Prop);
}

+ (void)fieldMarkerTypeEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_34, 0, &dword_25D297000);
  }
}

@end