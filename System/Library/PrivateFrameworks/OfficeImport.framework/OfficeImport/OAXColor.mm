@interface OAXColor
+ (id)presetColorEnumMap;
+ (id)presetColorRGBEnumMap;
+ (id)readColorFromNode:(_xmlNode *)node;
+ (id)readColorFromParentXmlNode:(_xmlNode *)node;
+ (id)readHslColorFromXmlNode:(_xmlNode *)node;
+ (id)readPresetColorFromAttribute:(id)attribute;
+ (id)readPresetColorFromXmlNode:(_xmlNode *)node;
+ (id)readSRgbColorFromXmlNode:(_xmlNode *)node attribute:(const char *)attribute;
+ (id)readScRgbColorFromXmlNode:(_xmlNode *)node;
+ (id)readSchemeColorFromAttribute:(id)attribute;
+ (id)readSchemeColorFromXmlNode:(_xmlNode *)node;
+ (id)readSystemColorFromAttribute:(id)attribute;
+ (id)readSystemColorFromXmlNode:(_xmlNode *)node;
+ (id)schemeColorEnumMap;
+ (id)stringSRgbColor:(id)color;
+ (id)systemColorEnumMap;
+ (void)writeColor:(id)color to:(id)to;
+ (void)writePlaceholderColor:(id)color to:(id)to;
+ (void)writePresetColor:(id)color to:(id)to;
+ (void)writeRgbColor:(id)color to:(id)to;
+ (void)writeSchemeColor:(id)color to:(id)to;
+ (void)writeSystemColor:(id)color to:(id)to;
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

+ (id)readColorFromParentXmlNode:(_xmlNode *)node
{
  v4 = OCXFirstChild(node);
  v5 = 0;
  while (!v5 && v4)
  {
    if (v4->type == XML_ELEMENT_NODE)
    {
      v5 = [self readColorFromNode:v4];
    }

    else
    {
      v5 = 0;
    }

    v4 = OCXNextSibling(v4);
  }

  return v5;
}

+ (id)readColorFromNode:(_xmlNode *)node
{
  if (xmlStrEqual(node->name, "scrgbClr"))
  {
    v5 = [self readScRgbColorFromXmlNode:node];
    goto LABEL_7;
  }

  if (xmlStrEqual(node->name, "srgbClr"))
  {
    v5 = [self readSRgbColorFromXmlNode:node attribute:"val"];
    goto LABEL_7;
  }

  if (xmlStrEqual(node->name, "hslClr"))
  {
    v5 = [self readHslColorFromXmlNode:node];
LABEL_7:
    v6 = v5;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (!xmlStrEqual(node->name, "sysClr"))
  {
    if (xmlStrEqual(node->name, "schemeClr"))
    {
      v5 = [self readSchemeColorFromXmlNode:node];
    }

    else
    {
      if (!xmlStrEqual(node->name, "prstClr"))
      {
        v6 = 0;
        goto LABEL_12;
      }

      v5 = [self readPresetColorFromXmlNode:node];
    }

    goto LABEL_7;
  }

  v6 = [self readSystemColorFromXmlNode:node];
  v10 = CXDefaultStringAttribute(node, CXNoNamespace, "lastClr", 0);
  if ([v10 length])
  {
    v11 = [self readSRgbColorFromXmlNode:node attribute:"lastClr"];

    v6 = v11;
  }

  if (v6)
  {
LABEL_8:
    v7 = [OAXColorTransform readColorTransformsFromXmlNode:node];
    v8 = v7;
    if (v7 && [v7 count])
    {
      [v6 setTransforms:v8];
    }
  }

LABEL_12:

  return v6;
}

+ (id)readPresetColorFromAttribute:(id)attribute
{
  v4 = [attribute componentsSeparatedByString:@" "];
  firstObject = [v4 firstObject];
  if (firstObject && ([self presetColorEnumMap], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "valueForString:", firstObject), v6, v7 != -130883970))
  {
    presetColorRGBEnumMap = [self presetColorRGBEnumMap];
    v10 = [presetColorRGBEnumMap stringForValue:v7];

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

+ (id)readSystemColorFromAttribute:(id)attribute
{
  v4 = [attribute componentsSeparatedByString:@" "];
  firstObject = [v4 firstObject];
  if (firstObject && ([self systemColorEnumMap], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "valueForString:", firstObject), v6, v7 != -130883970))
  {
    v8 = [[OADSystemColor alloc] initWithSystemColorID:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)readSchemeColorFromAttribute:(id)attribute
{
  attributeCopy = attribute;
  schemeColorEnumMap = [self schemeColorEnumMap];
  v6 = [schemeColorEnumMap valueForString:attributeCopy];

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

+ (void)writePresetColor:(id)color to:(id)to
{
  colorCopy = color;
  toCopy = to;
  [toCopy startOAElement:@"prstClr"];
  v7 = [self stringSRgbColor:colorCopy];
  presetColorRGBEnumMap = [self presetColorRGBEnumMap];
  v9 = [presetColorRGBEnumMap valueForString:v7];

  presetColorEnumMap = [self presetColorEnumMap];
  v11 = [presetColorEnumMap stringForValue:v9];

  [toCopy writeOAAttribute:@"val" content:v11];
  transforms = [colorCopy transforms];
  [OAXColorTransform write:transforms to:toCopy];

  [toCopy endElement];
}

+ (void)writeRgbColor:(id)color to:(id)to
{
  colorCopy = color;
  toCopy = to;
  [toCopy startOAElement:@"srgbClr"];
  v7 = [self stringSRgbColor:colorCopy];
  [toCopy writeOAAttribute:@"val" content:v7];
  transforms = [colorCopy transforms];
  [OAXColorTransform write:transforms to:toCopy];

  [toCopy endElement];
}

+ (void)writeSchemeColor:(id)color to:(id)to
{
  colorCopy = color;
  toCopy = to;
  [toCopy startOAElement:@"schemeClr"];
  schemeColorEnumMap = [self schemeColorEnumMap];
  v8 = [schemeColorEnumMap stringForValue:{objc_msgSend(colorCopy, "schemeColorIndex")}];

  [toCopy writeOAAttribute:@"val" content:v8];
  transforms = [colorCopy transforms];
  [OAXColorTransform write:transforms to:toCopy];

  [toCopy endElement];
}

+ (void)writeSystemColor:(id)color to:(id)to
{
  colorCopy = color;
  toCopy = to;
  [toCopy startOAElement:@"sysClr"];
  systemColorEnumMap = [self systemColorEnumMap];
  v8 = [systemColorEnumMap stringForValue:{objc_msgSend(colorCopy, "systemColorID")}];

  [toCopy writeOAAttribute:@"val" content:v8];
  transforms = [colorCopy transforms];
  [OAXColorTransform write:transforms to:toCopy];

  [toCopy endElement];
}

+ (void)writePlaceholderColor:(id)color to:(id)to
{
  colorCopy = color;
  toCopy = to;
  [toCopy startOAElement:@"schemeClr"];
  [toCopy writeOAAttribute:@"val" content:@"phClr"];
  transforms = [colorCopy transforms];
  [OAXColorTransform write:transforms to:toCopy];

  [toCopy endElement];
}

+ (void)writeColor:(id)color to:(id)to
{
  colorCopy = color;
  toCopy = to;
  v7 = objc_opt_class();
  v8 = TSUDynamicCast(v7, colorCopy);
  if (v8)
  {
    [self writeRgbColor:v8 to:toCopy];
  }

  else
  {
    v9 = objc_opt_class();
    v10 = TSUDynamicCast(v9, colorCopy);
    if (v10)
    {
      [self writeSchemeColor:v10 to:toCopy];
    }

    else
    {
      v11 = objc_opt_class();
      v12 = TSUDynamicCast(v11, colorCopy);
      if (v12)
      {
        [self writeSystemColor:v12 to:toCopy];
      }

      else
      {
        v13 = objc_opt_class();
        v14 = TSUDynamicCast(v13, colorCopy);
        if (v14)
        {
          [self writePlaceholderColor:v14 to:toCopy];
        }

        else
        {
          v15 = objc_opt_class();
          v16 = TSUDynamicCast(v15, colorCopy);

          if (!v16)
          {
            v17 = objc_opt_class();
            TSUDynamicCast(v17, colorCopy);
          }
        }
      }
    }
  }
}

+ (id)readScRgbColorFromXmlNode:(_xmlNode *)node
{
  [OAXBaseTypes readRequiredFractionFromXmlNode:node name:"r"];
  v5 = v4;
  [OAXBaseTypes readRequiredFractionFromXmlNode:node name:"g"];
  v7 = v6;
  [OAXBaseTypes readRequiredFractionFromXmlNode:node name:"b"];
  v9 = v8;
  v10 = [OADRgbColor alloc];
  LODWORD(v11) = v5;
  LODWORD(v12) = v7;
  LODWORD(v13) = v9;
  v14 = [(OADRgbColor *)v10 initWithRed:v11 green:v12 blue:v13];

  return v14;
}

+ (id)readSRgbColorFromXmlNode:(_xmlNode *)node attribute:(const char *)attribute
{
  v4 = CXDefaultStringAttribute(node, CXNoNamespace, attribute, 0);
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

+ (id)readHslColorFromXmlNode:(_xmlNode *)node
{
  v3 = [[OADRgbColor alloc] initWithRed:0.0 green:0.0 blue:0.0];

  return v3;
}

+ (id)readPresetColorFromXmlNode:(_xmlNode *)node
{
  v4 = CXRequiredStringAttribute(node, CXNoNamespace, "val");
  if (v4)
  {
    v5 = [self readPresetColorFromAttribute:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)readSystemColorFromXmlNode:(_xmlNode *)node
{
  v4 = CXRequiredStringAttribute(node, CXNoNamespace, "val");
  if (v4)
  {
    v5 = [self readSystemColorFromAttribute:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)readSchemeColorFromXmlNode:(_xmlNode *)node
{
  v4 = CXRequiredStringAttribute(node, CXNoNamespace, "val");
  if (v4)
  {
    v5 = [self readSchemeColorFromAttribute:v4];
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

+ (id)stringSRgbColor:(id)color
{
  colorCopy = color;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = colorCopy;
    redByte = [v4 redByte];
    greenByte = [v4 greenByte];
    blueByte = [v4 blueByte];
  }

  else
  {
    greenByte = 0;
    blueByte = 0;
    redByte = 0;
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X%02X%02X", redByte, greenByte, blueByte];

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