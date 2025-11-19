@interface OAXBlipEffects
+ (id)duotoneTransferModeEnumMap;
+ (id)readAlphaModFixEffect:(_xmlNode *)a3;
+ (id)readBiLevelEffect:(_xmlNode *)a3;
+ (id)readColorChangeEffect:(_xmlNode *)a3 drawingState:(id)a4;
+ (id)readDuotoneEffect:(_xmlNode *)a3;
+ (id)readGrayscaleEffect:(_xmlNode *)a3;
+ (id)readLuminanceEffect:(_xmlNode *)a3;
+ (void)readBlipEffectsFromBlipRef:(_xmlNode *)a3 toBlipRef:(id)a4 drawingState:(id)a5;
+ (void)writeAlphaModFixEffect:(id)a3 to:(id)a4;
+ (void)writeBiLevelEffect:(id)a3 to:(id)a4;
+ (void)writeBlipEffects:(id)a3 to:(id)a4;
+ (void)writeColorChangeEffect:(id)a3 to:(id)a4;
+ (void)writeDuotoneEffect:(id)a3 to:(id)a4;
+ (void)writeGrayscaleEffect:(id)a3 to:(id)a4;
+ (void)writeLuminanceEffect:(id)a3 to:(id)a4;
@end

@implementation OAXBlipEffects

+ (void)readBlipEffectsFromBlipRef:(_xmlNode *)a3 toBlipRef:(id)a4 drawingState:(id)a5
{
  v13 = a4;
  v8 = a5;
  for (i = OCXFirstChild(a3); i; i = OCXNextSibling(i))
  {
    name = i->name;
    if (xmlStrEqual(name, "lum"))
    {
      v11 = [a1 readLuminanceEffect:i];
    }

    else if (xmlStrEqual(name, "grayscl"))
    {
      v11 = [a1 readGrayscaleEffect:i];
    }

    else if (xmlStrEqual(name, "biLevel"))
    {
      v11 = [a1 readBiLevelEffect:i];
    }

    else if (xmlStrEqual(name, "clrChange"))
    {
      v11 = [a1 readColorChangeEffect:i drawingState:v8];
    }

    else if (xmlStrEqual(name, "alphaModFix"))
    {
      v11 = [a1 readAlphaModFixEffect:i];
    }

    else
    {
      if (!xmlStrEqual(name, "duotone"))
      {
        v12 = 0;
        goto LABEL_17;
      }

      v11 = [a1 readDuotoneEffect:i];
    }

    v12 = v11;
    if (v11)
    {
      [v13 addEffect:v11];
    }

LABEL_17:
  }
}

+ (void)writeBlipEffects:(id)a3 to:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 effectCount];
  if (v7)
  {
    v8 = 0;
    while (1)
    {
      v9 = [v10 effectAtIndex:v8];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [a1 writeBiLevelEffect:v9 to:v6];
        goto LABEL_15;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [a1 writeColorChangeEffect:v9 to:v6];
        goto LABEL_15;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [a1 writeDuotoneEffect:v9 to:v6];
        goto LABEL_15;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [a1 writeGrayscaleEffect:v9 to:v6];
        goto LABEL_15;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [a1 writeLuminanceEffect:v9 to:v6];
        goto LABEL_15;
      }

LABEL_16:

      if (v7 == ++v8)
      {
        goto LABEL_17;
      }
    }

    [a1 writeAlphaModFixEffect:v9 to:v6];
LABEL_15:

    goto LABEL_16;
  }

LABEL_17:
}

+ (id)readLuminanceEffect:(_xmlNode *)a3
{
  v4 = objc_alloc_init(OADLuminanceEffect);
  [OAXBaseTypes readOptionalFractionFromXmlNode:a3 name:"bright"];
  [(OADLuminanceEffect *)v4 setBrightness:?];
  [OAXBaseTypes readOptionalFractionFromXmlNode:a3 name:"contrast"];
  [(OADLuminanceEffect *)v4 setContrast:?];

  return v4;
}

+ (void)writeLuminanceEffect:(id)a3 to:(id)a4
{
  v18 = a3;
  v5 = a4;
  v6 = MEMORY[0x277CCABB0];
  [v18 brightness];
  *&v8 = v7 * 100000.0;
  v9 = [v6 numberWithFloat:v8];
  v10 = [v9 longValue];

  v11 = MEMORY[0x277CCABB0];
  [v18 contrast];
  *&v13 = v12 * 100000.0;
  v14 = [v11 numberWithFloat:v13];
  v15 = [v14 longValue];

  [v5 startOAElement:@"lum"];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v10];
  [v5 writeOAAttribute:@"bright" content:v16];

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v15];
  [v5 writeOAAttribute:@"contrast" content:v17];

  [v5 endElement];
}

+ (id)readGrayscaleEffect:(_xmlNode *)a3
{
  v3 = objc_alloc_init(OADGrayscaleEffect);

  return v3;
}

+ (void)writeGrayscaleEffect:(id)a3 to:(id)a4
{
  v4 = a4;
  [v4 startOAElement:@"grayscl"];
  [v4 endElement];
}

+ (id)readBiLevelEffect:(_xmlNode *)a3
{
  v4 = objc_alloc_init(OADBiLevelEffect);
  [OAXBaseTypes readRequiredFractionFromXmlNode:a3 name:"thresh"];
  [(OADBiLevelEffect *)v4 setThreshold:?];

  return v4;
}

+ (void)writeBiLevelEffect:(id)a3 to:(id)a4
{
  v12 = a3;
  v5 = a4;
  v6 = MEMORY[0x277CCABB0];
  [v12 threshold];
  *&v8 = v7 * 100000.0;
  v9 = [v6 numberWithFloat:v8];
  v10 = [v9 longValue];

  [v5 startOAElement:@"biLevel"];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v10];
  [v5 writeOAAttribute:@"thresh" content:v11];

  [v5 endElement];
}

+ (id)readColorChangeEffect:(_xmlNode *)a3 drawingState:(id)a4
{
  v5 = a4;
  v6 = [v5 OAXMainNamespace];
  v7 = OCXFindChild(a3, v6, "clrFrom");

  if (v7 && (v8 = OCXFirstChild(v7)) != 0)
  {
    v9 = [OAXColor readColorFromNode:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 OAXMainNamespace];
  v11 = OCXFindChild(a3, v10, "clrTo");

  if (v11)
  {
    v12 = OCXFirstChild(v11);
    if (v12)
    {
      v11 = [OAXColor readColorFromNode:v12];
    }

    else
    {
      v11 = 0;
    }
  }

  v13 = objc_alloc_init(OADColorChangeEffect);
  [(OADColorChangeEffect *)v13 setFromColor:v9];
  [(OADColorChangeEffect *)v13 setToColor:v11];

  return v13;
}

+ (void)writeColorChangeEffect:(id)a3 to:(id)a4
{
  v8 = a3;
  v5 = a4;
  [v5 startOAElement:@"clrChange"];
  [v5 startOAElement:@"clrFrom"];
  v6 = [v8 fromColor];
  [OAXColor writeColor:v6 to:v5];

  [v5 endElement];
  [v5 startOAElement:@"clrTo"];
  v7 = [v8 toColor];
  [OAXColor writeColor:v7 to:v5];

  [v5 endElement];
  [v5 endElement];
}

+ (id)readAlphaModFixEffect:(_xmlNode *)a3
{
  v4 = objc_alloc_init(OADAlphaModFixEffect);
  v7 = 0.0;
  if (CXOptionalFractionAttribute(a3, CXNoNamespace, "amt", &v7))
  {
    HIDWORD(v5) = HIDWORD(v7);
    *&v5 = v7;
    [(OADAlphaModFixEffect *)v4 setAlpha:v5];
  }

  return v4;
}

+ (void)writeAlphaModFixEffect:(id)a3 to:(id)a4
{
  v12 = a3;
  v5 = a4;
  v6 = MEMORY[0x277CCABB0];
  [v12 alpha];
  *&v8 = v7 * 100000.0;
  v9 = [v6 numberWithFloat:v8];
  v10 = [v9 longValue];

  [v5 startOAElement:@"alphaModFix"];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v10];
  [v5 writeOAAttribute:@"amt" content:v11];

  [v5 endElement];
}

+ (id)readDuotoneEffect:(_xmlNode *)a3
{
  v5 = OCXFirstChild(a3);
  if (v5)
  {
    v6 = [OAXColor readColorFromNode:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = OCXNextSibling(v5);
  if (v7)
  {
    v8 = [OAXColor readColorFromNode:v7];
    v9 = v8;
    v10 = 0;
    if (v6 && v8)
    {
      v10 = objc_alloc_init(OADDuotoneEffect);
      [(OADDuotoneEffect *)v10 setColor1:v6];
      [(OADDuotoneEffect *)v10 setColor2:v9];
      v11 = CXDefaultStringAttribute(a3, CXNoNamespace, "xfr1", 0);
      if (v11)
      {
        v12 = [a1 duotoneTransferModeEnumMap];
        v13 = [v12 valueForString:v11];

        [(OADDuotoneEffect *)v10 setTransferMode1:v13];
      }

      v14 = CXDefaultStringAttribute(a3, CXNoNamespace, "xfr2", 0);

      if (v14)
      {
        v15 = [a1 duotoneTransferModeEnumMap];
        v16 = [v15 valueForString:v14];

        [(OADDuotoneEffect *)v10 setTransferMode2:v16];
      }
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  return v10;
}

+ (void)writeDuotoneEffect:(id)a3 to:(id)a4
{
  v8 = a3;
  v5 = a4;
  [v5 startOAElement:@"duotone"];
  v6 = [v8 color1];
  [OAXColor writeColor:v6 to:v5];

  v7 = [v8 color2];
  [OAXColor writeColor:v7 to:v5];

  [v5 endElement];
}

+ (id)duotoneTransferModeEnumMap
{
  v2 = +[OAXBlipEffects(Private) duotoneTransferModeEnumMap]::duotoneTransferModeEnumMap;
  if (!+[OAXBlipEffects(Private) duotoneTransferModeEnumMap]::duotoneTransferModeEnumMap)
  {
    {
      +[OAXBlipEffects(Private) duotoneTransferModeEnumMap];
    }

    v3 = [[TCEnumerationMap alloc] initWithStructs:&+[OAXBlipEffects(Private) duotoneTransferModeEnumMap]::duotoneTransferModeEnumStructs count:14 caseSensitive:1];
    v4 = +[OAXBlipEffects(Private) duotoneTransferModeEnumMap]::duotoneTransferModeEnumMap;
    +[OAXBlipEffects(Private) duotoneTransferModeEnumMap]::duotoneTransferModeEnumMap = v3;

    v2 = +[OAXBlipEffects(Private) duotoneTransferModeEnumMap]::duotoneTransferModeEnumMap;
  }

  return v2;
}

@end