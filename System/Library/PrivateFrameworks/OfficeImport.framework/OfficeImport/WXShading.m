@interface WXShading
+ (id)getColorFromCString:(const char *)a3;
+ (id)getColorFromString:(id)a3;
+ (id)getStringFromColor:(id)a3;
+ (id)shadingStylesEnumMap;
+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5;
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

+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5
{
  v8 = a4;
  v9 = a5;
  v24 = 0;
  v10 = [a1 shadingStylesEnumMap];
  readEnumProperty<WDShadingStyle>(a3, "val", v10, &v24);

  v11 = v24;
  if (v24 == -130883970)
  {
    v11 = 0;
    v24 = 0;
  }

  [v8 setStyle:v11];
  v12 = [v9 WXMainNamespace];
  v13 = CXDefaultStringAttribute(a3, v12, "color", 0);

  v14 = [WXShading getColorFromString:v13];
  v15 = +[OITSUColor clearColor];
  v16 = [v14 isEqual:v15];

  if (v16)
  {
    v17 = +[WDShading autoForegroundColor];

    v14 = v17;
  }

  [v8 setForeground:v14];
  v18 = [v9 WXMainNamespace];
  v19 = CXDefaultStringAttribute(a3, v18, "fill", 0);

  v20 = [WXShading getColorFromString:v19];
  v21 = +[OITSUColor clearColor];
  v22 = [v20 isEqual:v21];

  if (v22)
  {
    v23 = +[WDShading autoBackgroundColor];

    v20 = v23;
  }

  [v8 setBackground:v20];
}

+ (id)getColorFromString:(id)a3
{
  v4 = a3;
  v5 = [a1 getColorFromCString:{objc_msgSend(v4, "UTF8String")}];

  return v5;
}

+ (id)getColorFromCString:(const char *)a3
{
  if (!a3 || !strcmp(a3, "auto"))
  {
    v4 = +[OITSUColor clearColor];
  }

  else
  {
    v7 = 0;
    v6 = 0;
    if (sscanf(a3, "%02x%02x%02x", &v7 + 4, &v7, &v6) == 3)
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

+ (id)getStringFromColor:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = +[WDShading autoBackgroundColor];
  if (v4 == v3)
  {
    goto LABEL_7;
  }

  v5 = +[WDShading autoForegroundColor];
  v6 = v5;
  if (v5 == v3)
  {

LABEL_7:
    goto LABEL_8;
  }

  v7 = +[OITSUColor clearColor];
  v8 = [v3 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    [v3 redComponent];
    v10 = v9;
    [v3 greenComponent];
    v12 = v11;
    [v3 blueComponent];
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