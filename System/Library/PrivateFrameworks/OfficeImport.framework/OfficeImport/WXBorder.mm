@interface WXBorder
+ (id)borderStylesEnumMap;
+ (void)borderStylesEnumMap;
+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state;
@end

@implementation WXBorder

+ (id)borderStylesEnumMap
{
  {
    +[WXBorder borderStylesEnumMap];
  }

  if (+[WXBorder borderStylesEnumMap]::onceToken != -1)
  {
    +[WXBorder borderStylesEnumMap];
  }

  v2 = +[WXBorder borderStylesEnumMap]::sBorderStylesEnumMap;

  return v2;
}

void __31__WXBorder_borderStylesEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXBorder borderStylesEnumMap]::sBorderStyleEnumStructs count:200 caseSensitive:1];
  v1 = +[WXBorder borderStylesEnumMap]::sBorderStylesEnumMap;
  +[WXBorder borderStylesEnumMap]::sBorderStylesEnumMap = v0;
}

+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  v24 = 0;
  borderStylesEnumMap = [self borderStylesEnumMap];
  readEnumProperty<WDBorderStyle>(from, "val", borderStylesEnumMap, &v24);

  [toCopy setStyle:v24];
  if ([toCopy style] != 253)
  {
    wXMainNamespace = [stateCopy WXMainNamespace];
    v12 = CXDefaultStringAttribute(from, wXMainNamespace, "color", 0);

    v13 = [WXShading getColorFromString:v12];
    if (!v13)
    {
      v13 = +[OITSUColor blackColor];
    }

    [toCopy setColor:v13];
    v23 = 0;
    wXMainNamespace2 = [stateCopy WXMainNamespace];
    v15 = CXOptionalLongAttribute(from, wXMainNamespace2, "sz", &v23);

    if (v15)
    {
      [toCopy setWidth:v23];
    }

    wXMainNamespace3 = [stateCopy WXMainNamespace];
    v17 = CXOptionalLongAttribute(from, wXMainNamespace3, "space", &v23);

    if (v17)
    {
      [toCopy setSpace:v23];
    }

    v22 = 0;
    wXMainNamespace4 = [stateCopy WXMainNamespace];
    v19 = CXOptionalBoolAttribute(from, wXMainNamespace4, "shadow", &v22);

    if (v19)
    {
      [toCopy setShadow:v22];
    }

    wXMainNamespace5 = [stateCopy WXMainNamespace];
    v21 = CXOptionalBoolAttribute(from, wXMainNamespace5, "frame", &v22);

    if (v21)
    {
      [toCopy setFrame:v22];
    }
  }
}

+ (void)borderStylesEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_30, 0, &dword_25D297000);
  }
}

@end