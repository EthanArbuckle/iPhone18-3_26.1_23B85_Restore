@interface OAXColor
+ (id)presetColorEnumMap;
+ (id)presetColorRGBEnumMap;
+ (id)readColorFromNode:(_xmlNode *)a3;
+ (id)readColorFromParentXmlNode:(_xmlNode *)a3;
+ (id)readHslColorFromXmlNode:(_xmlNode *)a3;
+ (id)readPresetColorFromAttribute:(id)a3;
+ (id)readPresetColorFromXmlNode:(_xmlNode *)a3;
+ (id)readSRgbColorFromXmlNode:(_xmlNode *)a3 attribute:(const char *)a4;
+ (id)readScRgbColorFromXmlNode:(_xmlNode *)a3;
+ (id)readSchemeColorFromAttribute:(id)a3;
+ (id)readSchemeColorFromXmlNode:(_xmlNode *)a3;
+ (id)readSystemColorFromAttribute:(id)a3;
+ (id)readSystemColorFromXmlNode:(_xmlNode *)a3;
+ (id)schemeColorEnumMap;
+ (id)stringSRgbColor:(id)a3;
+ (id)systemColorEnumMap;
+ (void)writeColor:(id)a3 to:(id)a4;
+ (void)writePlaceholderColor:(id)a3 to:(id)a4;
+ (void)writePresetColor:(id)a3 to:(id)a4;
+ (void)writeRgbColor:(id)a3 to:(id)a4;
+ (void)writeSchemeColor:(id)a3 to:(id)a4;
+ (void)writeSystemColor:(id)a3 to:(id)a4;
@end

@implementation OAXColor

+ (id)schemeColorEnumMap
{
  if (+[OAXColor(Private) schemeColorEnumMap]::once != -1)
  {
    +[OAXColor(Private) schemeColorEnumMap];
  }

  v3 = +[OAXColor(Private) schemeColorEnumMap]::schemeColorEnumMap;

  return v3;
}

+ (id)systemColorEnumMap
{
  if (+[OAXColor(Private) systemColorEnumMap]::once != -1)
  {
    +[OAXColor(Private) systemColorEnumMap];
  }

  v3 = +[OAXColor(Private) systemColorEnumMap]::systemColorEnumMap;

  return v3;
}

+ (id)presetColorEnumMap
{
  if (+[OAXColor(Private) presetColorEnumMap]::once != -1)
  {
    +[OAXColor(Private) presetColorEnumMap];
  }

  v3 = +[OAXColor(Private) presetColorEnumMap]::presetColorEnumMap;

  return v3;
}

+ (id)readColorFromParentXmlNode:(_xmlNode *)a3
{
  v4 = OCXFirstChild(a3);
  v5 = 0;
  while (!v5 && v4)
  {
    if (v4->type == XML_ELEMENT_NODE)
    {
      v5 = [a1 readColorFromNode:v4];
    }

    else
    {
      v5 = 0;
    }

    v4 = OCXNextSibling(v4);
  }

  return v5;
}

+ (id)readColorFromNode:(_xmlNode *)a3
{
  if (xmlStrEqual(a3->name, "scrgbClr"))
  {
    v5 = [a1 readScRgbColorFromXmlNode:a3];
    goto LABEL_7;
  }

  if (xmlStrEqual(a3->name, "srgbClr"))
  {
    v5 = [a1 readSRgbColorFromXmlNode:a3 attribute:"val"];
    goto LABEL_7;
  }

  if (xmlStrEqual(a3->name, "hslClr"))
  {
    v5 = [a1 readHslColorFromXmlNode:a3];
LABEL_7:
    v6 = v5;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (!xmlStrEqual(a3->name, "sysClr"))
  {
    if (xmlStrEqual(a3->name, "schemeClr"))
    {
      v5 = [a1 readSchemeColorFromXmlNode:a3];
    }

    else
    {
      if (!xmlStrEqual(a3->name, "prstClr"))
      {
        v6 = 0;
        goto LABEL_12;
      }

      v5 = [a1 readPresetColorFromXmlNode:a3];
    }

    goto LABEL_7;
  }

  v6 = [a1 readSystemColorFromXmlNode:a3];
  v10 = CXDefaultStringAttribute(a3, CXNoNamespace, "lastClr", 0);
  if ([v10 length])
  {
    v11 = [a1 readSRgbColorFromXmlNode:a3 attribute:"lastClr"];

    v6 = v11;
  }

  if (v6)
  {
LABEL_8:
    v7 = [OAXColorTransform readColorTransformsFromXmlNode:a3];
    v8 = v7;
    if (v7 && [v7 count])
    {
      [v6 setTransforms:v8];
    }
  }

LABEL_12:

  return v6;
}

+ (id)readPresetColorFromAttribute:(id)a3
{
  v4 = [a3 componentsSeparatedByString:@" "];
  v5 = [v4 firstObject];
  if (v5 && ([a1 presetColorEnumMap], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "valueForString:", v5), v6, v7 != -130883970))
  {
    v9 = [a1 presetColorRGBEnumMap];
    v10 = [v9 stringForValue:v7];

    v18 = 0;
    v11 = [MEMORY[0x277CCAC80] scannerWithString:v10];
    [v11 scanHexLongLong:&v18];

    v12 = v18;
    v13 = [OADRgbColor alloc];
    *&v14 = BYTE2(v12);
    *&v15 = BYTE1(v12);
    *&v16 = v12;
    v8 = [(OADRgbColor *)v13 initWithRedByte:v14 greenByte:v15 blueByte:v16];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)readSystemColorFromAttribute:(id)a3
{
  v4 = [a3 componentsSeparatedByString:@" "];
  v5 = [v4 firstObject];
  if (v5 && ([a1 systemColorEnumMap], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "valueForString:", v5), v6, v7 != -130883970))
  {
    v8 = [[OADSystemColor alloc] initWithSystemColorID:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)readSchemeColorFromAttribute:(id)a3
{
  v4 = a3;
  v5 = [a1 schemeColorEnumMap];
  v6 = [v5 valueForString:v4];

  if (v6 == -130883970)
  {
    v8 = [OADSchemeColor alloc];
    v6 = 0;
  }

  else
  {
    if (v6 == 17)
    {
      v7 = objc_alloc_init(OADPlaceholderColor);
      goto LABEL_7;
    }

    v8 = [OADSchemeColor alloc];
  }

  v7 = [(OADSchemeColor *)v8 initWithSchemeColorIndex:v6];
LABEL_7:
  v9 = v7;

  return v9;
}

+ (void)writePresetColor:(id)a3 to:(id)a4
{
  v13 = a3;
  v6 = a4;
  [v6 startOAElement:@"prstClr"];
  v7 = [a1 stringSRgbColor:v13];
  v8 = [a1 presetColorRGBEnumMap];
  v9 = [v8 valueForString:v7];

  v10 = [a1 presetColorEnumMap];
  v11 = [v10 stringForValue:v9];

  [v6 writeOAAttribute:@"val" content:v11];
  v12 = [v13 transforms];
  [OAXColorTransform write:v12 to:v6];

  [v6 endElement];
}

+ (void)writeRgbColor:(id)a3 to:(id)a4
{
  v9 = a3;
  v6 = a4;
  [v6 startOAElement:@"srgbClr"];
  v7 = [a1 stringSRgbColor:v9];
  [v6 writeOAAttribute:@"val" content:v7];
  v8 = [v9 transforms];
  [OAXColorTransform write:v8 to:v6];

  [v6 endElement];
}

+ (void)writeSchemeColor:(id)a3 to:(id)a4
{
  v10 = a3;
  v6 = a4;
  [v6 startOAElement:@"schemeClr"];
  v7 = [a1 schemeColorEnumMap];
  v8 = [v7 stringForValue:{objc_msgSend(v10, "schemeColorIndex")}];

  [v6 writeOAAttribute:@"val" content:v8];
  v9 = [v10 transforms];
  [OAXColorTransform write:v9 to:v6];

  [v6 endElement];
}

+ (void)writeSystemColor:(id)a3 to:(id)a4
{
  v10 = a3;
  v6 = a4;
  [v6 startOAElement:@"sysClr"];
  v7 = [a1 systemColorEnumMap];
  v8 = [v7 stringForValue:{objc_msgSend(v10, "systemColorID")}];

  [v6 writeOAAttribute:@"val" content:v8];
  v9 = [v10 transforms];
  [OAXColorTransform write:v9 to:v6];

  [v6 endElement];
}

+ (void)writePlaceholderColor:(id)a3 to:(id)a4
{
  v7 = a3;
  v5 = a4;
  [v5 startOAElement:@"schemeClr"];
  [v5 writeOAAttribute:@"val" content:@"phClr"];
  v6 = [v7 transforms];
  [OAXColorTransform write:v6 to:v5];

  [v5 endElement];
}

+ (void)writeColor:(id)a3 to:(id)a4
{
  v18 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  v8 = TSUDynamicCast(v7, v18);
  if (v8)
  {
    [a1 writeRgbColor:v8 to:v6];
  }

  else
  {
    v9 = objc_opt_class();
    v10 = TSUDynamicCast(v9, v18);
    if (v10)
    {
      [a1 writeSchemeColor:v10 to:v6];
    }

    else
    {
      v11 = objc_opt_class();
      v12 = TSUDynamicCast(v11, v18);
      if (v12)
      {
        [a1 writeSystemColor:v12 to:v6];
      }

      else
      {
        v13 = objc_opt_class();
        v14 = TSUDynamicCast(v13, v18);
        if (v14)
        {
          [a1 writePlaceholderColor:v14 to:v6];
        }

        else
        {
          v15 = objc_opt_class();
          v16 = TSUDynamicCast(v15, v18);

          if (!v16)
          {
            v17 = objc_opt_class();
            TSUDynamicCast(v17, v18);
          }
        }
      }
    }
  }
}

+ (id)readScRgbColorFromXmlNode:(_xmlNode *)a3
{
  [OAXBaseTypes readRequiredFractionFromXmlNode:a3 name:"r"];
  v5 = v4;
  [OAXBaseTypes readRequiredFractionFromXmlNode:a3 name:"g"];
  v7 = v6;
  [OAXBaseTypes readRequiredFractionFromXmlNode:a3 name:"b"];
  v9 = v8;
  v10 = [OADRgbColor alloc];
  LODWORD(v11) = v5;
  LODWORD(v12) = v7;
  LODWORD(v13) = v9;
  v14 = [(OADRgbColor *)v10 initWithRed:v11 green:v12 blue:v13];

  return v14;
}

+ (id)readSRgbColorFromXmlNode:(_xmlNode *)a3 attribute:(const char *)a4
{
  v4 = CXDefaultStringAttribute(a3, CXNoNamespace, a4, 0);
  if ([v4 length] != 6)
  {
    [TCMessageException raise:OABadFormat];
  }

  v12 = 0;
  if (sscanf([v4 UTF8String], "%x", &v12) != 1)
  {
    [TCMessageException raise:OABadFormat];
  }

  v5 = v12;
  v6 = [OADRgbColor alloc];
  *&v7 = BYTE2(v5);
  *&v8 = BYTE1(v5);
  *&v9 = v5;
  v10 = [(OADRgbColor *)v6 initWithRedByte:v7 greenByte:v8 blueByte:v9];

  return v10;
}

+ (id)readHslColorFromXmlNode:(_xmlNode *)a3
{
  v3 = [[OADRgbColor alloc] initWithRed:0.0 green:0.0 blue:0.0];

  return v3;
}

+ (id)readPresetColorFromXmlNode:(_xmlNode *)a3
{
  v4 = CXRequiredStringAttribute(a3, CXNoNamespace, "val");
  if (v4)
  {
    v5 = [a1 readPresetColorFromAttribute:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)readSystemColorFromXmlNode:(_xmlNode *)a3
{
  v4 = CXRequiredStringAttribute(a3, CXNoNamespace, "val");
  if (v4)
  {
    v5 = [a1 readSystemColorFromAttribute:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)readSchemeColorFromXmlNode:(_xmlNode *)a3
{
  v4 = CXRequiredStringAttribute(a3, CXNoNamespace, "val");
  if (v4)
  {
    v5 = [a1 readSchemeColorFromAttribute:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __39__OAXColor_Private__presetColorEnumMap__block_invoke()
{
  if ((atomic_load_explicit(&_ZGVZZ39__OAXColor_Private__presetColorEnumMap_EUb_E22presetColorEnumStructs, memory_order_acquire) & 1) == 0)
  {
    __39__OAXColor_Private__presetColorEnumMap__block_invoke_cold_1();
  }

  v0 = [[TCEnumerationMap alloc] initWithStructs:&_ZZZ39__OAXColor_Private__presetColorEnumMap_EUb_E22presetColorEnumStructs count:191 caseSensitive:1];
  v1 = +[OAXColor(Private) presetColorEnumMap]::presetColorEnumMap;
  +[OAXColor(Private) presetColorEnumMap]::presetColorEnumMap = v0;
}

void __39__OAXColor_Private__systemColorEnumMap__block_invoke()
{
  if ((atomic_load_explicit(&_ZGVZZ39__OAXColor_Private__systemColorEnumMap_EUb0_E22systemColorEnumStructs, memory_order_acquire) & 1) == 0)
  {
    __39__OAXColor_Private__systemColorEnumMap__block_invoke_cold_1();
  }

  v0 = [[TCEnumerationMap alloc] initWithStructs:&_ZZZ39__OAXColor_Private__systemColorEnumMap_EUb0_E22systemColorEnumStructs count:30 caseSensitive:1];
  v1 = +[OAXColor(Private) systemColorEnumMap]::systemColorEnumMap;
  +[OAXColor(Private) systemColorEnumMap]::systemColorEnumMap = v0;
}

void __39__OAXColor_Private__schemeColorEnumMap__block_invoke()
{
  if ((atomic_load_explicit(&_ZGVZZ39__OAXColor_Private__schemeColorEnumMap_EUb1_E22schemeColorEnumStructs, memory_order_acquire) & 1) == 0)
  {
    __39__OAXColor_Private__schemeColorEnumMap__block_invoke_cold_1();
  }

  v0 = [[TCEnumerationMap alloc] initWithStructs:&_ZZZ39__OAXColor_Private__schemeColorEnumMap_EUb1_E22schemeColorEnumStructs count:17 caseSensitive:1];
  v1 = +[OAXColor(Private) schemeColorEnumMap]::schemeColorEnumMap;
  +[OAXColor(Private) schemeColorEnumMap]::schemeColorEnumMap = v0;
}

+ (id)presetColorRGBEnumMap
{
  if (+[OAXColor(Private) presetColorRGBEnumMap]::once != -1)
  {
    +[OAXColor(Private) presetColorRGBEnumMap];
  }

  v3 = +[OAXColor(Private) presetColorRGBEnumMap]::presetColorRGBEnumMap;

  return v3;
}

void __42__OAXColor_Private__presetColorRGBEnumMap__block_invoke()
{
  if ((atomic_load_explicit(&_ZGVZZ42__OAXColor_Private__presetColorRGBEnumMap_EUb2_E25presetColorRGBEnumStructs, memory_order_acquire) & 1) == 0)
  {
    __42__OAXColor_Private__presetColorRGBEnumMap__block_invoke_cold_1();
  }

  v0 = [[TCEnumerationMultiMap alloc] initWithStructs:&_ZZZ42__OAXColor_Private__presetColorRGBEnumMap_EUb2_E25presetColorRGBEnumStructs count:191 caseSensitive:1];
  v1 = +[OAXColor(Private) presetColorRGBEnumMap]::presetColorRGBEnumMap;
  +[OAXColor(Private) presetColorRGBEnumMap]::presetColorRGBEnumMap = v0;
}

+ (id)stringSRgbColor:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 redByte];
    v6 = [v4 greenByte];
    v7 = [v4 blueByte];
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v5 = 0;
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X%02X%02X", v5, v6, v7];

  return v8;
}

void __39__OAXColor_Private__presetColorEnumMap__block_invoke_cold_1()
{
  v0 = __cxa_guard_acquire(&_ZGVZZ39__OAXColor_Private__presetColorEnumMap_EUb_E22presetColorEnumStructs);
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);

    __cxa_guard_release(&_ZGVZZ39__OAXColor_Private__presetColorEnumMap_EUb_E22presetColorEnumStructs);
  }
}

void __39__OAXColor_Private__systemColorEnumMap__block_invoke_cold_1()
{
  v0 = __cxa_guard_acquire(&_ZGVZZ39__OAXColor_Private__systemColorEnumMap_EUb0_E22systemColorEnumStructs);
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);

    __cxa_guard_release(&_ZGVZZ39__OAXColor_Private__systemColorEnumMap_EUb0_E22systemColorEnumStructs);
  }
}

void __39__OAXColor_Private__schemeColorEnumMap__block_invoke_cold_1()
{
  v0 = __cxa_guard_acquire(&_ZGVZZ39__OAXColor_Private__schemeColorEnumMap_EUb1_E22schemeColorEnumStructs);
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);

    __cxa_guard_release(&_ZGVZZ39__OAXColor_Private__schemeColorEnumMap_EUb1_E22schemeColorEnumStructs);
  }
}

void __42__OAXColor_Private__presetColorRGBEnumMap__block_invoke_cold_1()
{
  v0 = __cxa_guard_acquire(&_ZGVZZ42__OAXColor_Private__presetColorRGBEnumMap_EUb2_E25presetColorRGBEnumStructs);
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);

    __cxa_guard_release(&_ZGVZZ42__OAXColor_Private__presetColorRGBEnumMap_EUb2_E25presetColorRGBEnumStructs);
  }
}

@end