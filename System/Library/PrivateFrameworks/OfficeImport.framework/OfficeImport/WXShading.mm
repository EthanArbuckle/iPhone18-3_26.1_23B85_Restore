@interface WXShading
+ (id)getColorFromCString:(const char *)string;
+ (id)getColorFromString:(id)string;
+ (id)getStringFromColor:(id)color;
+ (id)shadingStylesEnumMap;
+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state;
+ (void)shadingStylesEnumMap;
@end

@implementation WXShading

+ (id)shadingStylesEnumMap
{
  {
    +[WXShading shadingStylesEnumMap];
  }

  if (+[WXShading shadingStylesEnumMap]::onceToken != -1)
  {
    +[WXShading shadingStylesEnumMap];
  }

  v2 = +[WXShading shadingStylesEnumMap]::sShadingStylesEnumMap;

  return v2;
}

void __33__WXShading_shadingStylesEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXShading shadingStylesEnumMap]::sShadingStylesEnumStructs count:38 caseSensitive:1];
  v1 = +[WXShading shadingStylesEnumMap]::sShadingStylesEnumMap;
  +[WXShading shadingStylesEnumMap]::sShadingStylesEnumMap = v0;
}

+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  v24 = 0;
  shadingStylesEnumMap = [self shadingStylesEnumMap];
  readEnumProperty<WDShadingStyle>(from, "val", shadingStylesEnumMap, &v24);

  v11 = v24;
  if (v24 == -130883970)
  {
    v11 = 0;
    v24 = 0;
  }

  [toCopy setStyle:v11];
  wXMainNamespace = [stateCopy WXMainNamespace];
  v13 = CXDefaultStringAttribute(from, wXMainNamespace, "color", 0);

  v14 = [WXShading getColorFromString:v13];
  v15 = +[OITSUColor clearColor];
  v16 = [v14 isEqual:v15];

  if (v16)
  {
    v17 = +[WDShading autoForegroundColor];

    v14 = v17;
  }

  [toCopy setForeground:v14];
  wXMainNamespace2 = [stateCopy WXMainNamespace];
  v19 = CXDefaultStringAttribute(from, wXMainNamespace2, "fill", 0);

  v20 = [WXShading getColorFromString:v19];
  v21 = +[OITSUColor clearColor];
  v22 = [v20 isEqual:v21];

  if (v22)
  {
    v23 = +[WDShading autoBackgroundColor];

    v20 = v23;
  }

  [toCopy setBackground:v20];
}

+ (id)getColorFromString:(id)string
{
  stringCopy = string;
  v5 = [self getColorFromCString:{objc_msgSend(stringCopy, "UTF8String")}];

  return v5;
}

+ (id)getColorFromCString:(const char *)string
{
  if (!string || !strcmp(string, "auto"))
  {
    v4 = +[OITSUColor clearColor];
  }

  else
  {
    v7 = 0;
    v6 = 0;
    if (sscanf(string, "%02x%02x%02x", &v7 + 4, &v7, &v6) == 3)
    {
      v4 = [OITSUColor colorWithCalibratedRed:SHIDWORD(v7) / 255.0 green:v7 / 255.0 blue:v6 / 255.0 alpha:1.0];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (id)getStringFromColor:(id)color
{
  colorCopy = color;
  if (!colorCopy)
  {
    goto LABEL_8;
  }

  v4 = +[WDShading autoBackgroundColor];
  if (v4 == colorCopy)
  {
    goto LABEL_7;
  }

  v5 = +[WDShading autoForegroundColor];
  v6 = v5;
  if (v5 == colorCopy)
  {

LABEL_7:
    goto LABEL_8;
  }

  v7 = +[OITSUColor clearColor];
  v8 = [colorCopy isEqual:v7];

  if ((v8 & 1) == 0)
  {
    [colorCopy redComponent];
    v10 = v9;
    [colorCopy greenComponent];
    v12 = v11;
    [colorCopy blueComponent];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x%02x%02x", (v10 * 255.0), (v12 * 255.0), (v13 * 255.0)];
    goto LABEL_9;
  }

LABEL_8:
  v14 = @"auto";
LABEL_9:

  return v14;
}

+ (void)shadingStylesEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_41, 0, &dword_25D297000);
  }
}

@end