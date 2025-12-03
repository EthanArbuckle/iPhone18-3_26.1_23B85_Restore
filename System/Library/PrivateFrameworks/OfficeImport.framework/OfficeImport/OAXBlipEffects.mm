@interface OAXBlipEffects
+ (id)duotoneTransferModeEnumMap;
+ (id)readAlphaModFixEffect:(_xmlNode *)effect;
+ (id)readBiLevelEffect:(_xmlNode *)effect;
+ (id)readColorChangeEffect:(_xmlNode *)effect drawingState:(id)state;
+ (id)readDuotoneEffect:(_xmlNode *)effect;
+ (id)readGrayscaleEffect:(_xmlNode *)effect;
+ (id)readLuminanceEffect:(_xmlNode *)effect;
+ (void)readBlipEffectsFromBlipRef:(_xmlNode *)ref toBlipRef:(id)blipRef drawingState:(id)state;
+ (void)writeAlphaModFixEffect:(id)effect to:(id)to;
+ (void)writeBiLevelEffect:(id)effect to:(id)to;
+ (void)writeBlipEffects:(id)effects to:(id)to;
+ (void)writeColorChangeEffect:(id)effect to:(id)to;
+ (void)writeDuotoneEffect:(id)effect to:(id)to;
+ (void)writeGrayscaleEffect:(id)effect to:(id)to;
+ (void)writeLuminanceEffect:(id)effect to:(id)to;
@end

@implementation OAXBlipEffects

+ (void)readBlipEffectsFromBlipRef:(_xmlNode *)ref toBlipRef:(id)blipRef drawingState:(id)state
{
  blipRefCopy = blipRef;
  stateCopy = state;
  for (i = OCXFirstChild(ref); i; i = OCXNextSibling(i))
  {
    name = i->name;
    if (xmlStrEqual(name, "lum"))
    {
      v11 = [self readLuminanceEffect:i];
    }

    else if (xmlStrEqual(name, "grayscl"))
    {
      v11 = [self readGrayscaleEffect:i];
    }

    else if (xmlStrEqual(name, "biLevel"))
    {
      v11 = [self readBiLevelEffect:i];
    }

    else if (xmlStrEqual(name, "clrChange"))
    {
      v11 = [self readColorChangeEffect:i drawingState:stateCopy];
    }

    else if (xmlStrEqual(name, "alphaModFix"))
    {
      v11 = [self readAlphaModFixEffect:i];
    }

    else
    {
      if (!xmlStrEqual(name, "duotone"))
      {
        v12 = 0;
        goto LABEL_17;
      }

      v11 = [self readDuotoneEffect:i];
    }

    v12 = v11;
    if (v11)
    {
      [blipRefCopy addEffect:v11];
    }

LABEL_17:
  }
}

+ (void)writeBlipEffects:(id)effects to:(id)to
{
  effectsCopy = effects;
  toCopy = to;
  effectCount = [effectsCopy effectCount];
  if (effectCount)
  {
    v8 = 0;
    while (1)
    {
      v9 = [effectsCopy effectAtIndex:v8];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [self writeBiLevelEffect:v9 to:toCopy];
        goto LABEL_15;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [self writeColorChangeEffect:v9 to:toCopy];
        goto LABEL_15;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [self writeDuotoneEffect:v9 to:toCopy];
        goto LABEL_15;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [self writeGrayscaleEffect:v9 to:toCopy];
        goto LABEL_15;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [self writeLuminanceEffect:v9 to:toCopy];
        goto LABEL_15;
      }

LABEL_16:

      if (effectCount == ++v8)
      {
        goto LABEL_17;
      }
    }

    [self writeAlphaModFixEffect:v9 to:toCopy];
LABEL_15:

    goto LABEL_16;
  }

LABEL_17:
}

+ (id)readLuminanceEffect:(_xmlNode *)effect
{
  v4 = objc_alloc_init(OADLuminanceEffect);
  [OAXBaseTypes readOptionalFractionFromXmlNode:effect name:"bright"];
  [(OADLuminanceEffect *)v4 setBrightness:?];
  [OAXBaseTypes readOptionalFractionFromXmlNode:effect name:"contrast"];
  [(OADLuminanceEffect *)v4 setContrast:?];

  return v4;
}

+ (void)writeLuminanceEffect:(id)effect to:(id)to
{
  effectCopy = effect;
  toCopy = to;
  v6 = MEMORY[0x277CCABB0];
  [effectCopy brightness];
  *&v8 = v7 * 100000.0;
  v9 = [v6 numberWithFloat:v8];
  longValue = [v9 longValue];

  v11 = MEMORY[0x277CCABB0];
  [effectCopy contrast];
  *&v13 = v12 * 100000.0;
  v14 = [v11 numberWithFloat:v13];
  longValue2 = [v14 longValue];

  [toCopy startOAElement:@"lum"];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue];
  [toCopy writeOAAttribute:@"bright" content:v16];

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue2];
  [toCopy writeOAAttribute:@"contrast" content:v17];

  [toCopy endElement];
}

+ (id)readGrayscaleEffect:(_xmlNode *)effect
{
  v3 = objc_alloc_init(OADGrayscaleEffect);

  return v3;
}

+ (void)writeGrayscaleEffect:(id)effect to:(id)to
{
  toCopy = to;
  [toCopy startOAElement:@"grayscl"];
  [toCopy endElement];
}

+ (id)readBiLevelEffect:(_xmlNode *)effect
{
  v4 = objc_alloc_init(OADBiLevelEffect);
  [OAXBaseTypes readRequiredFractionFromXmlNode:effect name:"thresh"];
  [(OADBiLevelEffect *)v4 setThreshold:?];

  return v4;
}

+ (void)writeBiLevelEffect:(id)effect to:(id)to
{
  effectCopy = effect;
  toCopy = to;
  v6 = MEMORY[0x277CCABB0];
  [effectCopy threshold];
  *&v8 = v7 * 100000.0;
  v9 = [v6 numberWithFloat:v8];
  longValue = [v9 longValue];

  [toCopy startOAElement:@"biLevel"];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue];
  [toCopy writeOAAttribute:@"thresh" content:v11];

  [toCopy endElement];
}

+ (id)readColorChangeEffect:(_xmlNode *)effect drawingState:(id)state
{
  stateCopy = state;
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v7 = OCXFindChild(effect, oAXMainNamespace, "clrFrom");

  if (v7 && (v8 = OCXFirstChild(v7)) != 0)
  {
    v9 = [OAXColor readColorFromNode:v8];
  }

  else
  {
    v9 = 0;
  }

  oAXMainNamespace2 = [stateCopy OAXMainNamespace];
  v11 = OCXFindChild(effect, oAXMainNamespace2, "clrTo");

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

+ (void)writeColorChangeEffect:(id)effect to:(id)to
{
  effectCopy = effect;
  toCopy = to;
  [toCopy startOAElement:@"clrChange"];
  [toCopy startOAElement:@"clrFrom"];
  fromColor = [effectCopy fromColor];
  [OAXColor writeColor:fromColor to:toCopy];

  [toCopy endElement];
  [toCopy startOAElement:@"clrTo"];
  toColor = [effectCopy toColor];
  [OAXColor writeColor:toColor to:toCopy];

  [toCopy endElement];
  [toCopy endElement];
}

+ (id)readAlphaModFixEffect:(_xmlNode *)effect
{
  v4 = objc_alloc_init(OADAlphaModFixEffect);
  v7 = 0.0;
  if (CXOptionalFractionAttribute(effect, CXNoNamespace, "amt", &v7))
  {
    HIDWORD(v5) = HIDWORD(v7);
    *&v5 = v7;
    [(OADAlphaModFixEffect *)v4 setAlpha:v5];
  }

  return v4;
}

+ (void)writeAlphaModFixEffect:(id)effect to:(id)to
{
  effectCopy = effect;
  toCopy = to;
  v6 = MEMORY[0x277CCABB0];
  [effectCopy alpha];
  *&v8 = v7 * 100000.0;
  v9 = [v6 numberWithFloat:v8];
  longValue = [v9 longValue];

  [toCopy startOAElement:@"alphaModFix"];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue];
  [toCopy writeOAAttribute:@"amt" content:v11];

  [toCopy endElement];
}

+ (id)readDuotoneEffect:(_xmlNode *)effect
{
  v5 = OCXFirstChild(effect);
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
      v11 = CXDefaultStringAttribute(effect, CXNoNamespace, "xfr1", 0);
      if (v11)
      {
        duotoneTransferModeEnumMap = [self duotoneTransferModeEnumMap];
        v13 = [duotoneTransferModeEnumMap valueForString:v11];

        [(OADDuotoneEffect *)v10 setTransferMode1:v13];
      }

      v14 = CXDefaultStringAttribute(effect, CXNoNamespace, "xfr2", 0);

      if (v14)
      {
        duotoneTransferModeEnumMap2 = [self duotoneTransferModeEnumMap];
        v16 = [duotoneTransferModeEnumMap2 valueForString:v14];

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

+ (void)writeDuotoneEffect:(id)effect to:(id)to
{
  effectCopy = effect;
  toCopy = to;
  [toCopy startOAElement:@"duotone"];
  color1 = [effectCopy color1];
  [OAXColor writeColor:color1 to:toCopy];

  color2 = [effectCopy color2];
  [OAXColor writeColor:color2 to:toCopy];

  [toCopy endElement];
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