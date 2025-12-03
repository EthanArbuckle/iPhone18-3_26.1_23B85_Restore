@interface OADCharacterProperties
+ (void)initialize;
- (BOOL)hasBidiFont;
- (BOOL)hasEastAsianFont;
- (BOOL)hasHAnsiFont;
- (BOOL)hasLatinFont;
- (BOOL)hasSymbolFont;
- (BOOL)isAnyCharacterPropertyOverridden;
- (BOOL)isBold;
- (BOOL)isEqual:(id)equal;
- (BOOL)isHorizontalNormalized;
- (BOOL)isItalic;
- (BOOL)isRightToLeft;
- (BOOL)isVerticalText;
- (NSString)description;
- (OADCharacterProperties)initWithDefaults;
- (float)baseline;
- (float)opacity;
- (float)size;
- (float)spacing;
- (id)bidiFont;
- (id)eastAsianFont;
- (id)effects;
- (id)fill;
- (id)hansiFont;
- (id)highlight;
- (id)latinFont;
- (id)stroke;
- (id)symbolFont;
- (id)underlineFill;
- (id)underlineStroke;
- (int)language;
- (unint64_t)hash;
- (unsigned)caps;
- (unsigned)formatKerningType;
- (unsigned)formatType;
- (unsigned)strikeThroughType;
- (unsigned)underlineType;
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values;
- (void)overrideWithCharacterProperties:(id)properties;
- (void)removeUnnecessaryOverrides;
- (void)setBidiFont:(id)font;
- (void)setEastAsianFont:(id)font;
- (void)setHAnsiFont:(id)font;
- (void)setIsBold:(BOOL)bold;
- (void)setIsHorizontalNormalized:(BOOL)normalized;
- (void)setIsItalic:(BOOL)italic;
- (void)setIsRightToLeft:(BOOL)left;
- (void)setLatinFont:(id)font;
- (void)setSymbolFont:(id)font;
@end

@implementation OADCharacterProperties

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [[OADEffect alloc] initWithType:6];
    v3 = kOADAutoTextShadowEffect;
    kOADAutoTextShadowEffect = v2;
  }
}

- (OADCharacterProperties)initWithDefaults
{
  v10.receiver = self;
  v10.super_class = OADCharacterProperties;
  initWithDefaults = [(OADProperties *)&v10 initWithDefaults];
  if (initWithDefaults)
  {
    v3 = +[OADSolidFill blackFill];
    [(OADCharacterProperties *)initWithDefaults setFill:v3];

    v4 = +[OADStroke nullStroke];
    [(OADCharacterProperties *)initWithDefaults setStroke:v4];

    array = [MEMORY[0x277CBEA60] array];
    [(OADCharacterProperties *)initWithDefaults setEffects:array];

    [(OADCharacterProperties *)initWithDefaults setHighlight:0];
    [(OADCharacterProperties *)initWithDefaults setUnderlineFill:0];
    [(OADCharacterProperties *)initWithDefaults setUnderlineStroke:0];
    LODWORD(v6) = 1.0;
    [(OADCharacterProperties *)initWithDefaults setOpacity:v6];
    [(OADCharacterProperties *)initWithDefaults setIsBold:0];
    [(OADCharacterProperties *)initWithDefaults setIsItalic:0];
    [(OADCharacterProperties *)initWithDefaults setUnderlineType:0];
    [(OADCharacterProperties *)initWithDefaults setFormatType:0];
    [(OADCharacterProperties *)initWithDefaults setFormatKerningType:0];
    [(OADCharacterProperties *)initWithDefaults setStrikeThroughType:0];
    LODWORD(v7) = 18.0;
    [(OADCharacterProperties *)initWithDefaults setSize:v7];
    [(OADCharacterProperties *)initWithDefaults setSpacing:0.0];
    [(OADCharacterProperties *)initWithDefaults setIsVerticalText:0];
    [(OADCharacterProperties *)initWithDefaults setBaseline:0.0];
    [(OADCharacterProperties *)initWithDefaults setIsHorizontalNormalized:0];
    [(OADCharacterProperties *)initWithDefaults setCaps:0];
    [(OADCharacterProperties *)initWithDefaults setLanguage:0];
    [(OADCharacterProperties *)initWithDefaults setLatinFont:&stru_286EE1130];
    [(OADCharacterProperties *)initWithDefaults setEastAsianFont:&stru_286EE1130];
    [(OADCharacterProperties *)initWithDefaults setBidiFont:&stru_286EE1130];
    [(OADCharacterProperties *)initWithDefaults setHAnsiFont:&stru_286EE1130];
    [(OADCharacterProperties *)initWithDefaults setSymbolFont:&stru_286EE1130];
    v8 = initWithDefaults;
  }

  return initWithDefaults;
}

- (id)fill
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasFill];
  v3 = v2[10];
  v4 = v3;

  return v3;
}

- (BOOL)isBold
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasIsBold];
  v3 = (v2[156] >> 5) & 1;

  return v3;
}

- (BOOL)isItalic
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasIsItalic];
  v3 = v2[156];

  return v3 >> 7;
}

- (id)effects
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasEffects];
  v3 = v2[12];
  v4 = v3;

  return v3;
}

- (unsigned)formatType
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasFormatType];
  v3 = v2[145];

  return v3;
}

- (unsigned)strikeThroughType
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasStrikeThroughType];
  v3 = v2[147];

  return v3;
}

- (float)size
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasSize];
  v3 = v2[33];

  return v3;
}

- (float)baseline
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasBaseline];
  v3 = v2[35];

  return v3;
}

- (BOOL)hasLatinFont
{
  mLatinFont = self->mLatinFont;
  if (mLatinFont && [(NSString *)mLatinFont length])
  {
    return 1;
  }

  return [(OADProperties *)self isMergedPropertyForSelector:a2];
}

- (id)latinFont
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasLatinFont];
  v3 = v2[3];

  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (BOOL)hasEastAsianFont
{
  mEastAsianFont = self->mEastAsianFont;
  if (mEastAsianFont && [(NSString *)mEastAsianFont length])
  {
    return 1;
  }

  return [(OADProperties *)self isMergedPropertyForSelector:a2];
}

- (BOOL)hasBidiFont
{
  mBidiFont = self->mBidiFont;
  if (mBidiFont && [(NSString *)mBidiFont length])
  {
    return 1;
  }

  return [(OADProperties *)self isMergedPropertyForSelector:a2];
}

- (BOOL)hasHAnsiFont
{
  mHAnsiFont = self->mHAnsiFont;
  if (mHAnsiFont && [(NSString *)mHAnsiFont length])
  {
    return 1;
  }

  return [(OADProperties *)self isMergedPropertyForSelector:a2];
}

- (BOOL)hasSymbolFont
{
  mSymbolFont = self->mSymbolFont;
  if (mSymbolFont && [(NSString *)mSymbolFont length])
  {
    return 1;
  }

  return [(OADProperties *)self isMergedPropertyForSelector:a2];
}

- (id)eastAsianFont
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasEastAsianFont];
  v3 = v2[4];

  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)symbolFont
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasSymbolFont];
  v3 = v2[7];

  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)removeUnnecessaryOverrides
{
  parent = [(OADProperties *)self parent];

  if (!parent)
  {
    return;
  }

  isMerged = [(OADProperties *)self isMerged];
  isMergedWithParent = [(OADProperties *)self isMergedWithParent];
  [(OADProperties *)self setMerged:0];
  [(OADProperties *)self setMergedWithParent:0];
  parent2 = [(OADProperties *)self parent];
  mStroke = self->mStroke;
  stroke = [parent2 stroke];
  LODWORD(mStroke) = TCObjectEqual(mStroke, stroke);

  if (mStroke)
  {
    v9 = self->mStroke;
    self->mStroke = 0;
  }

  mFill = self->mFill;
  fill = [parent2 fill];
  LODWORD(mFill) = TCObjectEqual(mFill, fill);

  if (mFill)
  {
    v12 = self->mFill;
    self->mFill = 0;
  }

  if ([(OADCharacterProperties *)self hasEffects])
  {
    parent3 = [(OADProperties *)self parent];
    effects = [(OADCharacterProperties *)self effects];
    effects2 = [parent3 effects];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(objc_object *)effects removeUnnecessaryOverrides];
      v16 = objc_opt_class();
      if (v16 != objc_opt_class())
      {
        goto LABEL_13;
      }

      isMergedWithParent2 = [(objc_object *)effects isMergedWithParent];
      [(objc_object *)effects setMergedWithParent:0];
      isAnythingOverridden = [(objc_object *)effects isAnythingOverridden];
      [(objc_object *)effects setMergedWithParent:isMergedWithParent2];
      if (isAnythingOverridden)
      {
        goto LABEL_13;
      }
    }

    else if (!TCObjectEqual(effects, effects2))
    {
LABEL_13:

      goto LABEL_14;
    }

    mEffects = self->mEffects;
    self->mEffects = 0;

    goto LABEL_13;
  }

LABEL_14:
  if ([(OADCharacterProperties *)self hasOpacity])
  {
    parent4 = [(OADProperties *)self parent];
    [(OADCharacterProperties *)self opacity];
    v22 = v21;
    [parent4 opacity];
    if (v22 == *&v23)
    {
      LODWORD(v23) = 1.0;
      [(OADCharacterProperties *)self setOpacity:v23];
      *(self + 156) &= ~8u;
    }
  }

  if ([(OADCharacterProperties *)self hasHighlight])
  {
    parent5 = [(OADProperties *)self parent];
    highlight = [(OADCharacterProperties *)self highlight];
    highlight2 = [parent5 highlight];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(objc_object *)highlight removeUnnecessaryOverrides];
      v27 = objc_opt_class();
      if (v27 != objc_opt_class())
      {
        goto LABEL_25;
      }

      isMergedWithParent3 = [(objc_object *)highlight isMergedWithParent];
      [(objc_object *)highlight setMergedWithParent:0];
      isAnythingOverridden2 = [(objc_object *)highlight isAnythingOverridden];
      [(objc_object *)highlight setMergedWithParent:isMergedWithParent3];
      if (isAnythingOverridden2)
      {
        goto LABEL_25;
      }
    }

    else if (!TCObjectEqual(highlight, highlight2))
    {
LABEL_25:

      goto LABEL_26;
    }

    mHighlight = self->mHighlight;
    self->mHighlight = 0;

    *(self + 156) &= ~4u;
    goto LABEL_25;
  }

LABEL_26:
  if (![(OADCharacterProperties *)self hasUnderlineFill])
  {
    goto LABEL_34;
  }

  parent6 = [(OADProperties *)self parent];
  underlineFill = [(OADCharacterProperties *)self underlineFill];
  underlineFill2 = [parent6 underlineFill];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(objc_object *)underlineFill removeUnnecessaryOverrides];
    v34 = objc_opt_class();
    if (v34 != objc_opt_class())
    {
      goto LABEL_33;
    }

    isMergedWithParent4 = [(objc_object *)underlineFill isMergedWithParent];
    [(objc_object *)underlineFill setMergedWithParent:0];
    isAnythingOverridden3 = [(objc_object *)underlineFill isAnythingOverridden];
    [(objc_object *)underlineFill setMergedWithParent:isMergedWithParent4];
    if (isAnythingOverridden3)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (TCObjectEqual(underlineFill, underlineFill2))
  {
LABEL_32:
    mUnderlineFill = self->mUnderlineFill;
    self->mUnderlineFill = 0;

    *(self + 156) &= ~1u;
  }

LABEL_33:

LABEL_34:
  if (![(OADCharacterProperties *)self hasUnderlineStroke])
  {
    goto LABEL_42;
  }

  parent7 = [(OADProperties *)self parent];
  underlineStroke = [(OADCharacterProperties *)self underlineStroke];
  underlineStroke2 = [parent7 underlineStroke];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(objc_object *)underlineStroke removeUnnecessaryOverrides];
    v41 = objc_opt_class();
    if (v41 != objc_opt_class())
    {
      goto LABEL_41;
    }

    isMergedWithParent5 = [(objc_object *)underlineStroke isMergedWithParent];
    [(objc_object *)underlineStroke setMergedWithParent:0];
    isAnythingOverridden4 = [(objc_object *)underlineStroke isAnythingOverridden];
    [(objc_object *)underlineStroke setMergedWithParent:isMergedWithParent5];
    if (isAnythingOverridden4)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (TCObjectEqual(underlineStroke, underlineStroke2))
  {
LABEL_40:
    mUnderlineStroke = self->mUnderlineStroke;
    self->mUnderlineStroke = 0;

    *(self + 156) &= ~2u;
  }

LABEL_41:

LABEL_42:
  if ([(OADCharacterProperties *)self hasIsBold])
  {
    parent8 = [(OADProperties *)self parent];
    isBold = [(OADCharacterProperties *)self isBold];
    if (isBold == [parent8 isBold])
    {
      [(OADCharacterProperties *)self setIsBold:0];
      *(self + 156) &= ~0x10u;
    }
  }

  if ([(OADCharacterProperties *)self hasIsItalic])
  {
    parent9 = [(OADProperties *)self parent];
    isItalic = [(OADCharacterProperties *)self isItalic];
    if (isItalic == [parent9 isItalic])
    {
      [(OADCharacterProperties *)self setIsItalic:0];
      *(self + 156) &= ~0x40u;
    }
  }

  if ([(OADCharacterProperties *)self hasUnderlineType])
  {
    parent10 = [(OADProperties *)self parent];
    underlineType = [(OADCharacterProperties *)self underlineType];
    if (underlineType == [parent10 underlineType])
    {
      [(OADCharacterProperties *)self setUnderlineType:0];
      *(self + 157) &= ~1u;
    }
  }

  if ([(OADCharacterProperties *)self hasFormatType])
  {
    parent11 = [(OADProperties *)self parent];
    formatType = [(OADCharacterProperties *)self formatType];
    if (formatType == [parent11 formatType])
    {
      [(OADCharacterProperties *)self setFormatType:0];
      *(self + 157) &= ~2u;
    }
  }

  if ([(OADCharacterProperties *)self hasFormatKerningType])
  {
    parent12 = [(OADProperties *)self parent];
    formatKerningType = [(OADCharacterProperties *)self formatKerningType];
    if (formatKerningType == [parent12 formatKerningType])
    {
      [(OADCharacterProperties *)self setFormatKerningType:0];
      *(self + 157) &= ~4u;
    }
  }

  if ([(OADCharacterProperties *)self hasStrikeThroughType])
  {
    parent13 = [(OADProperties *)self parent];
    strikeThroughType = [(OADCharacterProperties *)self strikeThroughType];
    if (strikeThroughType == [parent13 strikeThroughType])
    {
      [(OADCharacterProperties *)self setStrikeThroughType:0];
      *(self + 157) &= ~8u;
    }
  }

  if ([(OADCharacterProperties *)self hasSize])
  {
    parent14 = [(OADProperties *)self parent];
    [(OADCharacterProperties *)self size];
    v59 = v58;
    [parent14 size];
    if (v59 == *&v60)
    {
      LODWORD(v60) = 18.0;
      [(OADCharacterProperties *)self setSize:v60];
      *(self + 157) &= ~0x10u;
    }
  }

  if ([(OADCharacterProperties *)self hasSpacing])
  {
    parent15 = [(OADProperties *)self parent];
    [(OADCharacterProperties *)self spacing];
    v63 = v62;
    [parent15 spacing];
    if (v63 == v64)
    {
      [(OADCharacterProperties *)self setSpacing:0.0];
      *(self + 157) &= ~0x20u;
    }
  }

  if ([(OADCharacterProperties *)self hasIsVerticalText])
  {
    parent16 = [(OADProperties *)self parent];
    isVerticalText = [(OADCharacterProperties *)self isVerticalText];
    if (isVerticalText == [parent16 isVerticalText])
    {
      [(OADCharacterProperties *)self setIsVerticalText:0];
      *(self + 157) &= ~0x80u;
    }
  }

  if ([(OADCharacterProperties *)self hasIsRightToLeft])
  {
    parent17 = [(OADProperties *)self parent];
    isRightToLeft = [(OADCharacterProperties *)self isRightToLeft];
    if (isRightToLeft == [parent17 isRightToLeft])
    {
      [(OADCharacterProperties *)self setIsRightToLeft:0];
      *(self + 158) &= ~2u;
    }
  }

  if ([(OADCharacterProperties *)self hasBaseline])
  {
    parent18 = [(OADProperties *)self parent];
    [(OADCharacterProperties *)self baseline];
    v71 = v70;
    [parent18 baseline];
    if (v71 == v72)
    {
      [(OADCharacterProperties *)self setBaseline:0.0];
      *(self + 158) &= ~8u;
    }
  }

  if ([(OADCharacterProperties *)self hasIsHorizontalNormalized])
  {
    parent19 = [(OADProperties *)self parent];
    isHorizontalNormalized = [(OADCharacterProperties *)self isHorizontalNormalized];
    if (isHorizontalNormalized == [parent19 isHorizontalNormalized])
    {
      [(OADCharacterProperties *)self setIsHorizontalNormalized:0];
      *(self + 158) &= ~0x10u;
    }
  }

  if ([(OADCharacterProperties *)self hasCaps])
  {
    parent20 = [(OADProperties *)self parent];
    caps = [(OADCharacterProperties *)self caps];
    if (caps == [parent20 caps])
    {
      [(OADCharacterProperties *)self setCaps:0];
      *(self + 158) &= ~0x40u;
    }
  }

  if ([(OADCharacterProperties *)self hasLanguage])
  {
    parent21 = [(OADProperties *)self parent];
    language = [(OADCharacterProperties *)self language];
    if (language == [parent21 language])
    {
      [(OADCharacterProperties *)self setLanguage:0];
      *(self + 158) &= ~0x80u;
    }
  }

  if ([(OADCharacterProperties *)self hasLatinFont])
  {
    parent22 = [(OADProperties *)self parent];
    latinFont = [(OADCharacterProperties *)self latinFont];
    latinFont2 = [parent22 latinFont];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(objc_object *)latinFont removeUnnecessaryOverrides];
      v82 = objc_opt_class();
      if (v82 != objc_opt_class())
      {
        goto LABEL_105;
      }

      isMergedWithParent6 = [(objc_object *)latinFont isMergedWithParent];
      [(objc_object *)latinFont setMergedWithParent:0];
      isAnythingOverridden5 = [(objc_object *)latinFont isAnythingOverridden];
      [(objc_object *)latinFont setMergedWithParent:isMergedWithParent6];
      if (isAnythingOverridden5)
      {
        goto LABEL_105;
      }
    }

    else if (!TCObjectEqual(latinFont, latinFont2))
    {
LABEL_105:

      goto LABEL_106;
    }

    mLatinFont = self->mLatinFont;
    self->mLatinFont = 0;

    goto LABEL_105;
  }

LABEL_106:
  if (![(OADCharacterProperties *)self hasEastAsianFont])
  {
    goto LABEL_114;
  }

  parent23 = [(OADProperties *)self parent];
  eastAsianFont = [(OADCharacterProperties *)self eastAsianFont];
  eastAsianFont2 = [parent23 eastAsianFont];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(objc_object *)eastAsianFont removeUnnecessaryOverrides];
    v89 = objc_opt_class();
    if (v89 != objc_opt_class())
    {
      goto LABEL_113;
    }

    isMergedWithParent7 = [(objc_object *)eastAsianFont isMergedWithParent];
    [(objc_object *)eastAsianFont setMergedWithParent:0];
    isAnythingOverridden6 = [(objc_object *)eastAsianFont isAnythingOverridden];
    [(objc_object *)eastAsianFont setMergedWithParent:isMergedWithParent7];
    if (isAnythingOverridden6)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

  if (TCObjectEqual(eastAsianFont, eastAsianFont2))
  {
LABEL_112:
    mEastAsianFont = self->mEastAsianFont;
    self->mEastAsianFont = 0;
  }

LABEL_113:

LABEL_114:
  if (![(OADCharacterProperties *)self hasBidiFont])
  {
    goto LABEL_122;
  }

  parent24 = [(OADProperties *)self parent];
  bidiFont = [(OADCharacterProperties *)self bidiFont];
  bidiFont2 = [parent24 bidiFont];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(objc_object *)bidiFont removeUnnecessaryOverrides];
    v96 = objc_opt_class();
    if (v96 != objc_opt_class())
    {
      goto LABEL_121;
    }

    isMergedWithParent8 = [(objc_object *)bidiFont isMergedWithParent];
    [(objc_object *)bidiFont setMergedWithParent:0];
    isAnythingOverridden7 = [(objc_object *)bidiFont isAnythingOverridden];
    [(objc_object *)bidiFont setMergedWithParent:isMergedWithParent8];
    if (isAnythingOverridden7)
    {
      goto LABEL_121;
    }

    goto LABEL_120;
  }

  if (TCObjectEqual(bidiFont, bidiFont2))
  {
LABEL_120:
    mBidiFont = self->mBidiFont;
    self->mBidiFont = 0;
  }

LABEL_121:

LABEL_122:
  if (![(OADCharacterProperties *)self hasHAnsiFont])
  {
    goto LABEL_130;
  }

  parent25 = [(OADProperties *)self parent];
  hansiFont = [(OADCharacterProperties *)self hansiFont];
  hansiFont2 = [parent25 hansiFont];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(objc_object *)hansiFont removeUnnecessaryOverrides];
    v103 = objc_opt_class();
    if (v103 != objc_opt_class())
    {
      goto LABEL_129;
    }

    isMergedWithParent9 = [(objc_object *)hansiFont isMergedWithParent];
    [(objc_object *)hansiFont setMergedWithParent:0];
    isAnythingOverridden8 = [(objc_object *)hansiFont isAnythingOverridden];
    [(objc_object *)hansiFont setMergedWithParent:isMergedWithParent9];
    if (isAnythingOverridden8)
    {
      goto LABEL_129;
    }

    goto LABEL_128;
  }

  if (TCObjectEqual(hansiFont, hansiFont2))
  {
LABEL_128:
    mHAnsiFont = self->mHAnsiFont;
    self->mHAnsiFont = 0;
  }

LABEL_129:

LABEL_130:
  if ([(OADCharacterProperties *)self hasSymbolFont])
  {
    parent26 = [(OADProperties *)self parent];
    symbolFont = [(OADCharacterProperties *)self symbolFont];
    symbolFont2 = [parent26 symbolFont];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(objc_object *)symbolFont removeUnnecessaryOverrides];
      v110 = objc_opt_class();
      if (v110 != objc_opt_class())
      {
        goto LABEL_137;
      }

      isMergedWithParent10 = [(objc_object *)symbolFont isMergedWithParent];
      [(objc_object *)symbolFont setMergedWithParent:0];
      isAnythingOverridden9 = [(objc_object *)symbolFont isAnythingOverridden];
      [(objc_object *)symbolFont setMergedWithParent:isMergedWithParent10];
      if (isAnythingOverridden9)
      {
        goto LABEL_137;
      }
    }

    else if (!TCObjectEqual(symbolFont, symbolFont2))
    {
LABEL_137:

      goto LABEL_138;
    }

    mSymbolFont = self->mSymbolFont;
    self->mSymbolFont = 0;

    goto LABEL_137;
  }

LABEL_138:
  mClickHyperlink = self->mClickHyperlink;
  parent27 = [(OADProperties *)self parent];
  clickHyperlink = [parent27 clickHyperlink];
  LODWORD(mClickHyperlink) = [(OADHyperlink *)mClickHyperlink isEqual:clickHyperlink];

  if (mClickHyperlink)
  {
    v117 = self->mClickHyperlink;
    self->mClickHyperlink = 0;
  }

  mHoverHyperlink = self->mHoverHyperlink;
  parent28 = [(OADProperties *)self parent];
  hoverHyperlink = [parent28 hoverHyperlink];
  LODWORD(mHoverHyperlink) = [(OADHyperlink *)mHoverHyperlink isEqual:hoverHyperlink];

  if (mHoverHyperlink)
  {
    v121 = self->mHoverHyperlink;
    self->mHoverHyperlink = 0;
  }

  [(OADProperties *)self setMerged:isMerged];
  [(OADProperties *)self setMergedWithParent:isMergedWithParent];
  v122.receiver = self;
  v122.super_class = OADCharacterProperties;
  [(OADProperties *)&v122 removeUnnecessaryOverrides];
}

- (unsigned)caps
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasCaps];
  v3 = v2[148];

  return v3;
}

- (float)spacing
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasSpacing];
  v3 = v2[34];

  return v3;
}

- (unsigned)formatKerningType
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasFormatKerningType];
  v3 = v2[146];

  return v3;
}

- (id)hansiFont
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasHAnsiFont];
  v3 = v2[6];

  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (unint64_t)hash
{
  v20 = [(NSString *)self->mLatinFont hash];
  v19 = [(NSString *)self->mEastAsianFont hash];
  v3 = [(NSString *)self->mBidiFont hash];
  v4 = [(NSString *)self->mHAnsiFont hash];
  v5 = [(NSString *)self->mSymbolFont hash];
  v6 = [(OADHyperlink *)self->mClickHyperlink hash];
  v7 = [(OADHyperlink *)self->mHoverHyperlink hash];
  v8 = [(OADStroke *)self->mStroke hash];
  v9 = [(OADFill *)self->mFill hash];
  v10 = [(OADColor *)self->mHighlight hash];
  v11 = [(OADFill *)self->mUnderlineFill hash];
  v12 = v19 ^ v20 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(OADStroke *)self->mUnderlineStroke hash];
  if ([(NSArray *)self->mEffects count])
  {
    v13 = 0;
    v14 = 1;
    do
    {
      v15 = [(NSArray *)self->mEffects objectAtIndex:v13];
      v12 ^= [v15 hash];

      v13 = v14;
    }

    while ([(NSArray *)self->mEffects count]> v14++);
  }

  v17 = (self->mSize ^ self->mOpacity ^ self->mSpacing ^ self->mBaseline ^ self->mFormatType ^ self->mFormatKerningType ^ self->mStrikeThroughType ^ self->mCaps ^ ((*(self + 156) & 0x20) != 0) ^ (*(self + 156) >> 7) ^ self->mUnderlineType ^ *(self + 158) & 1 ^ ((*(self + 158) & 0x20) != 0));
  v21.receiver = self;
  v21.super_class = OADCharacterProperties;
  return v12 ^ [(OADProperties *)&v21 hash]^ v17;
}

- (float)opacity
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasOpacity];
  v3 = v2[32];

  return v3;
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = OADCharacterProperties;
  v2 = [(OADProperties *)&v4 description];

  return v2;
}

- (id)stroke
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasStroke];
  v3 = v2[11];
  v4 = v3;

  return v3;
}

- (unsigned)underlineType
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasUnderlineType];
  v3 = v2[144];

  return v3;
}

- (id)highlight
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasHighlight];
  v3 = v2[15];
  v4 = v3;

  return v3;
}

- (id)underlineFill
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasUnderlineFill];
  v3 = v2[13];
  v4 = v3;

  return v3;
}

- (id)underlineStroke
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasUnderlineStroke];
  v3 = v2[14];
  v4 = v3;

  return v3;
}

- (void)setIsBold:(BOOL)bold
{
  if (bold)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 156) = *(self + 156) & 0xDF | v3;
  *(self + 156) |= 0x10u;
}

- (void)setIsItalic:(BOOL)italic
{
  if (italic)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 156) = v3 & 0x80 | *(self + 156) & 0x7F;
  *(self + 156) |= 0x40u;
}

- (BOOL)isVerticalText
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasIsVerticalText];
  v3 = v2[158];

  return v3 & 1;
}

- (BOOL)isRightToLeft
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasIsRightToLeft];
  v3 = (v2[158] >> 2) & 1;

  return v3;
}

- (void)setIsRightToLeft:(BOOL)left
{
  if (left)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 158) = *(self + 158) & 0xFB | v3;
  *(self + 158) |= 2u;
}

- (BOOL)isHorizontalNormalized
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasIsHorizontalNormalized];
  v3 = (v2[158] >> 5) & 1;

  return v3;
}

- (void)setIsHorizontalNormalized:(BOOL)normalized
{
  if (normalized)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 158) = *(self + 158) & 0xDF | v3;
  *(self + 158) |= 0x10u;
}

- (int)language
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasLanguage];
  v3 = v2[38];

  return v3;
}

- (void)setLatinFont:(id)font
{
  fontCopy = font;
  v4 = [fontCopy copy];
  mLatinFont = self->mLatinFont;
  self->mLatinFont = v4;
}

- (void)setEastAsianFont:(id)font
{
  fontCopy = font;
  v4 = [fontCopy copy];
  mEastAsianFont = self->mEastAsianFont;
  self->mEastAsianFont = v4;
}

- (id)bidiFont
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasBidiFont];
  v3 = v2[5];

  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)setBidiFont:(id)font
{
  fontCopy = font;
  v4 = [fontCopy copy];
  mBidiFont = self->mBidiFont;
  self->mBidiFont = v4;
}

- (void)setHAnsiFont:(id)font
{
  fontCopy = font;
  v4 = [fontCopy copy];
  mHAnsiFont = self->mHAnsiFont;
  self->mHAnsiFont = v4;
}

- (void)setSymbolFont:(id)font
{
  fontCopy = font;
  v4 = [fontCopy copy];
  mSymbolFont = self->mSymbolFont;
  self->mSymbolFont = v4;
}

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values
{
  valuesCopy = values;
  v125.receiver = self;
  v125.super_class = OADCharacterProperties;
  [(OADProperties *)&v125 fixPropertiesForChangingParentPreservingEffectiveValues:valuesCopy];
  if ([(OADCharacterProperties *)self hasLatinFont]|| ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != valuesCopy))
  {
    v6 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasLatinFont];

    if (v6)
    {
      latinFont = [(OADCharacterProperties *)self latinFont];
    }

    else
    {
      latinFont = 0;
    }

    v8 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasLatinFont];

    if (v8)
    {
      latinFont2 = [valuesCopy latinFont];
    }

    else
    {
      latinFont2 = 0;
    }

    v10 = TCObjectEqual(latinFont, latinFont2);
    mLatinFont = self->mLatinFont;
    if (v10)
    {
      self->mLatinFont = 0;
    }

    else if (!mLatinFont && v6)
    {
      [(OADCharacterProperties *)self setLatinFont:latinFont];
    }
  }

  if ([(OADCharacterProperties *)self hasEastAsianFont]|| ([(OADProperties *)self parent], v12 = objc_claimAutoreleasedReturnValue(), v12, v12 != valuesCopy))
  {
    v13 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasEastAsianFont];

    if (v13)
    {
      eastAsianFont = [(OADCharacterProperties *)self eastAsianFont];
    }

    else
    {
      eastAsianFont = 0;
    }

    v15 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasEastAsianFont];

    if (v15)
    {
      eastAsianFont2 = [valuesCopy eastAsianFont];
    }

    else
    {
      eastAsianFont2 = 0;
    }

    v17 = TCObjectEqual(eastAsianFont, eastAsianFont2);
    mEastAsianFont = self->mEastAsianFont;
    if (v17)
    {
      self->mEastAsianFont = 0;
    }

    else if (!mEastAsianFont && v13)
    {
      [(OADCharacterProperties *)self setEastAsianFont:eastAsianFont];
    }
  }

  if ([(OADCharacterProperties *)self hasBidiFont]|| ([(OADProperties *)self parent], v19 = objc_claimAutoreleasedReturnValue(), v19, v19 != valuesCopy))
  {
    v20 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasBidiFont];

    if (v20)
    {
      bidiFont = [(OADCharacterProperties *)self bidiFont];
    }

    else
    {
      bidiFont = 0;
    }

    v22 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasBidiFont];

    if (v22)
    {
      bidiFont2 = [valuesCopy bidiFont];
    }

    else
    {
      bidiFont2 = 0;
    }

    v24 = TCObjectEqual(bidiFont, bidiFont2);
    mBidiFont = self->mBidiFont;
    if (v24)
    {
      self->mBidiFont = 0;
    }

    else if (!mBidiFont && v20)
    {
      [(OADCharacterProperties *)self setBidiFont:bidiFont];
    }
  }

  if ([(OADCharacterProperties *)self hasHAnsiFont]|| ([(OADProperties *)self parent], v26 = objc_claimAutoreleasedReturnValue(), v26, v26 != valuesCopy))
  {
    v27 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasHAnsiFont];

    if (v27)
    {
      hansiFont = [(OADCharacterProperties *)self hansiFont];
    }

    else
    {
      hansiFont = 0;
    }

    v29 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasHAnsiFont];

    if (v29)
    {
      hansiFont2 = [valuesCopy hansiFont];
    }

    else
    {
      hansiFont2 = 0;
    }

    v31 = TCObjectEqual(hansiFont, hansiFont2);
    mHAnsiFont = self->mHAnsiFont;
    if (v31)
    {
      self->mHAnsiFont = 0;
    }

    else if (!mHAnsiFont && v27)
    {
      [(OADCharacterProperties *)self setHAnsiFont:hansiFont];
    }
  }

  if ([(OADCharacterProperties *)self hasSymbolFont]|| ([(OADProperties *)self parent], v33 = objc_claimAutoreleasedReturnValue(), v33, v33 != valuesCopy))
  {
    v34 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasSymbolFont];

    if (v34)
    {
      symbolFont = [(OADCharacterProperties *)self symbolFont];
    }

    else
    {
      symbolFont = 0;
    }

    v36 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasSymbolFont];

    if (v36)
    {
      symbolFont2 = [valuesCopy symbolFont];
    }

    else
    {
      symbolFont2 = 0;
    }

    v38 = TCObjectEqual(symbolFont, symbolFont2);
    mSymbolFont = self->mSymbolFont;
    if (v38)
    {
      self->mSymbolFont = 0;
    }

    else if (!mSymbolFont && v34)
    {
      [(OADCharacterProperties *)self setSymbolFont:symbolFont];
    }
  }

  if ([(OADCharacterProperties *)self hasFill]|| ([(OADProperties *)self parent], v40 = objc_claimAutoreleasedReturnValue(), v40, v40 != valuesCopy))
  {
    v41 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasFill];

    if (v41)
    {
      fill = [(OADCharacterProperties *)self fill];
    }

    else
    {
      fill = 0;
    }

    v43 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasFill];

    if (v43)
    {
      fill2 = [valuesCopy fill];
    }

    else
    {
      fill2 = 0;
    }

    v45 = TCObjectEqual(fill, fill2);
    mFill = self->mFill;
    if (v45)
    {
      self->mFill = 0;
    }

    else if (!mFill && v41)
    {
      [(OADCharacterProperties *)self setFill:fill];
    }
  }

  if ([(OADCharacterProperties *)self hasStroke]|| ([(OADProperties *)self parent], v47 = objc_claimAutoreleasedReturnValue(), v47, v47 != valuesCopy))
  {
    v48 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasStroke];

    if (v48)
    {
      stroke = [(OADCharacterProperties *)self stroke];
    }

    else
    {
      stroke = 0;
    }

    v50 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasStroke];

    if (v50)
    {
      stroke2 = [valuesCopy stroke];
    }

    else
    {
      stroke2 = 0;
    }

    v52 = TCObjectEqual(stroke, stroke2);
    mStroke = self->mStroke;
    if (v52)
    {
      self->mStroke = 0;
    }

    else if (!mStroke && v48)
    {
      [(OADCharacterProperties *)self setStroke:stroke];
    }
  }

  if ([(OADCharacterProperties *)self hasEffects]|| ([(OADProperties *)self parent], v54 = objc_claimAutoreleasedReturnValue(), v54, v54 != valuesCopy))
  {
    v55 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasEffects];

    if (v55)
    {
      effects = [(OADCharacterProperties *)self effects];
    }

    else
    {
      effects = 0;
    }

    v57 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasEffects];

    if (v57)
    {
      effects2 = [valuesCopy effects];
    }

    else
    {
      effects2 = 0;
    }

    v59 = TCObjectEqual(effects, effects2);
    mEffects = self->mEffects;
    if (v59)
    {
      self->mEffects = 0;
    }

    else if (!mEffects && v55)
    {
      [(OADCharacterProperties *)self setEffects:effects];
    }
  }

  if ((*(self + 156) & 1) == 0)
  {
    parent = [(OADProperties *)self parent];

    if (parent == valuesCopy)
    {
      goto LABEL_129;
    }

LABEL_119:
    underlineFill = [(OADCharacterProperties *)self underlineFill];
    v65 = objc_alloc_init(objc_opt_class());

    underlineFill2 = [(OADCharacterProperties *)self underlineFill];
    [v65 setParent:underlineFill2];

    objc_storeStrong(&self->mUnderlineFill, v65);
    *(self + 156) |= 1u;
    underlineFill3 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasUnderlineFill];

    if (underlineFill3)
    {
      underlineFill3 = [valuesCopy underlineFill];
    }

    mUnderlineFill = self->mUnderlineFill;
    if (mUnderlineFill != underlineFill3)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        defaultProperties = [objc_opt_class() defaultProperties];

        underlineFill3 = defaultProperties;
      }

      [(OADProperties *)self->mUnderlineFill changeParentPreservingEffectiveValues:underlineFill3];
      if ((isKindOfClass & 1) == 0 || [(OADProperties *)self->mUnderlineFill isAnythingOverridden])
      {
        goto LABEL_128;
      }

      mUnderlineFill = self->mUnderlineFill;
    }

    self->mUnderlineFill = 0;

    *(self + 156) &= ~1u;
LABEL_128:

    goto LABEL_129;
  }

  if (self->mUnderlineFill)
  {
    goto LABEL_119;
  }

  v61 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasUnderlineFill];
  if (!v61 || ([valuesCopy underlineFill], v62 = objc_claimAutoreleasedReturnValue(), v62, v61, !v62))
  {
    *(self + 156) &= ~1u;
  }

LABEL_129:
  if ((*(self + 156) & 2) == 0)
  {
    parent2 = [(OADProperties *)self parent];

    if (parent2 == valuesCopy)
    {
      goto LABEL_143;
    }

LABEL_133:
    underlineStroke = [(OADCharacterProperties *)self underlineStroke];
    v73 = objc_alloc_init(objc_opt_class());

    underlineStroke2 = [(OADCharacterProperties *)self underlineStroke];
    [v73 setParent:underlineStroke2];

    objc_storeStrong(&self->mUnderlineStroke, v73);
    *(self + 156) |= 2u;
    underlineStroke3 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasUnderlineStroke];

    if (underlineStroke3)
    {
      underlineStroke3 = [valuesCopy underlineStroke];
    }

    mUnderlineStroke = self->mUnderlineStroke;
    if (mUnderlineStroke != underlineStroke3)
    {
      objc_opt_class();
      v77 = objc_opt_isKindOfClass();
      if ((v77 & 1) == 0)
      {
        defaultProperties2 = [objc_opt_class() defaultProperties];

        underlineStroke3 = defaultProperties2;
      }

      [(OADProperties *)self->mUnderlineStroke changeParentPreservingEffectiveValues:underlineStroke3];
      if ((v77 & 1) == 0 || [(OADStroke *)self->mUnderlineStroke isAnythingOverridden])
      {
        goto LABEL_142;
      }

      mUnderlineStroke = self->mUnderlineStroke;
    }

    self->mUnderlineStroke = 0;

    *(self + 156) &= ~2u;
LABEL_142:

    goto LABEL_143;
  }

  if (self->mUnderlineStroke)
  {
    goto LABEL_133;
  }

  v123 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasUnderlineStroke];
  if (!v123 || ([valuesCopy underlineStroke], v124 = objc_claimAutoreleasedReturnValue(), v124, v123, !v124))
  {
    *(self + 156) &= ~2u;
  }

LABEL_143:
  if ((*(self + 156) & 4) != 0 || ([(OADProperties *)self parent], v79 = objc_claimAutoreleasedReturnValue(), v79, v79 != valuesCopy))
  {
    v80 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasHighlight];

    if (v80)
    {
      highlight = [(OADCharacterProperties *)self highlight];
    }

    else
    {
      highlight = 0;
    }

    v82 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasHighlight];

    if (v82)
    {
      highlight2 = [valuesCopy highlight];
    }

    else
    {
      highlight2 = 0;
    }

    if (TCObjectEqual(highlight, highlight2))
    {
      mHighlight = self->mHighlight;
      self->mHighlight = 0;

      *(self + 156) &= ~4u;
    }

    else if ((*(self + 156) & 4) == 0 && v80)
    {
      [(OADCharacterProperties *)self setHighlight:highlight];
    }
  }

  if ((*(self + 156) & 8) != 0 || ([(OADProperties *)self parent], v85 = objc_claimAutoreleasedReturnValue(), v85, v85 != valuesCopy))
  {
    [(OADCharacterProperties *)self opacity];
    v87 = v86;
    [valuesCopy opacity];
    if (v87 == v88)
    {
      *(self + 156) &= ~8u;
    }

    else if ((*(self + 156) & 8) == 0)
    {
      [(OADCharacterProperties *)self opacity];
      [(OADCharacterProperties *)self setOpacity:?];
    }
  }

  if ((*(self + 157) & 0x10) != 0 || ([(OADProperties *)self parent], v89 = objc_claimAutoreleasedReturnValue(), v89, v89 != valuesCopy))
  {
    [(OADCharacterProperties *)self size];
    v91 = v90;
    [valuesCopy size];
    if (v91 == v92)
    {
      *(self + 157) &= ~0x10u;
    }

    else if ((*(self + 157) & 0x10) == 0)
    {
      [(OADCharacterProperties *)self size];
      [(OADCharacterProperties *)self setSize:?];
    }
  }

  if ((*(self + 157) & 0x20) != 0 || ([(OADProperties *)self parent], v93 = objc_claimAutoreleasedReturnValue(), v93, v93 != valuesCopy))
  {
    [(OADCharacterProperties *)self spacing];
    v95 = v94;
    [valuesCopy spacing];
    if (v95 == v96)
    {
      *(self + 157) &= ~0x20u;
    }

    else if ((*(self + 157) & 0x20) == 0)
    {
      [(OADCharacterProperties *)self spacing];
      [(OADCharacterProperties *)self setSpacing:?];
    }
  }

  if ((*(self + 158) & 8) != 0 || ([(OADProperties *)self parent], v97 = objc_claimAutoreleasedReturnValue(), v97, v97 != valuesCopy))
  {
    [(OADCharacterProperties *)self baseline];
    v99 = v98;
    [valuesCopy baseline];
    if (v99 == v100)
    {
      *(self + 158) &= ~8u;
    }

    else if ((*(self + 158) & 8) == 0)
    {
      [(OADCharacterProperties *)self baseline];
      [(OADCharacterProperties *)self setBaseline:?];
    }
  }

  if ((*(self + 157) & 1) != 0 || ([(OADProperties *)self parent], v101 = objc_claimAutoreleasedReturnValue(), v101, v101 != valuesCopy))
  {
    underlineType = [(OADCharacterProperties *)self underlineType];
    if (underlineType == [valuesCopy underlineType])
    {
      *(self + 157) &= ~1u;
    }

    else if ((*(self + 157) & 1) == 0)
    {
      [(OADCharacterProperties *)self setUnderlineType:[(OADCharacterProperties *)self underlineType]];
    }
  }

  if ((*(self + 157) & 2) != 0 || ([(OADProperties *)self parent], v103 = objc_claimAutoreleasedReturnValue(), v103, v103 != valuesCopy))
  {
    formatType = [(OADCharacterProperties *)self formatType];
    if (formatType == [valuesCopy formatType])
    {
      *(self + 157) &= ~2u;
    }

    else if ((*(self + 157) & 2) == 0)
    {
      [(OADCharacterProperties *)self setFormatType:[(OADCharacterProperties *)self formatType]];
    }
  }

  if ((*(self + 157) & 4) != 0 || ([(OADProperties *)self parent], v105 = objc_claimAutoreleasedReturnValue(), v105, v105 != valuesCopy))
  {
    formatKerningType = [(OADCharacterProperties *)self formatKerningType];
    if (formatKerningType == [valuesCopy formatKerningType])
    {
      *(self + 157) &= ~4u;
    }

    else if ((*(self + 157) & 4) == 0)
    {
      [(OADCharacterProperties *)self setFormatKerningType:[(OADCharacterProperties *)self formatKerningType]];
    }
  }

  if ((*(self + 157) & 8) != 0 || ([(OADProperties *)self parent], v107 = objc_claimAutoreleasedReturnValue(), v107, v107 != valuesCopy))
  {
    strikeThroughType = [(OADCharacterProperties *)self strikeThroughType];
    if (strikeThroughType == [valuesCopy strikeThroughType])
    {
      *(self + 157) &= ~8u;
    }

    else if ((*(self + 157) & 8) == 0)
    {
      [(OADCharacterProperties *)self setStrikeThroughType:[(OADCharacterProperties *)self strikeThroughType]];
    }
  }

  if ((*(self + 158) & 0x40) != 0 || ([(OADProperties *)self parent], v109 = objc_claimAutoreleasedReturnValue(), v109, v109 != valuesCopy))
  {
    caps = [(OADCharacterProperties *)self caps];
    if (caps == [valuesCopy caps])
    {
      *(self + 158) &= ~0x40u;
    }

    else if ((*(self + 158) & 0x40) == 0)
    {
      [(OADCharacterProperties *)self setCaps:[(OADCharacterProperties *)self caps]];
    }
  }

  if ((*(self + 156) & 0x10) != 0 || ([(OADProperties *)self parent], v111 = objc_claimAutoreleasedReturnValue(), v111, v111 != valuesCopy))
  {
    isBold = [(OADCharacterProperties *)self isBold];
    if (isBold == [valuesCopy isBold])
    {
      *(self + 156) &= ~0x10u;
    }

    else if ((*(self + 156) & 0x10) == 0)
    {
      [(OADCharacterProperties *)self setIsBold:[(OADCharacterProperties *)self isBold]];
    }
  }

  if ((*(self + 156) & 0x40) != 0 || ([(OADProperties *)self parent], v113 = objc_claimAutoreleasedReturnValue(), v113, v113 != valuesCopy))
  {
    isItalic = [(OADCharacterProperties *)self isItalic];
    if (isItalic == [valuesCopy isItalic])
    {
      *(self + 156) &= ~0x40u;
    }

    else if ((*(self + 156) & 0x40) == 0)
    {
      [(OADCharacterProperties *)self setIsItalic:[(OADCharacterProperties *)self isItalic]];
    }
  }

  if (*(self + 157) < 0 || ([(OADProperties *)self parent], v115 = objc_claimAutoreleasedReturnValue(), v115, v115 != valuesCopy))
  {
    isVerticalText = [(OADCharacterProperties *)self isVerticalText];
    isVerticalText2 = [valuesCopy isVerticalText];
    v118 = *(self + 157);
    if (isVerticalText == isVerticalText2)
    {
      *(self + 157) = v118 & 0x7F;
    }

    else if ((v118 & 0x80000000) == 0)
    {
      [(OADCharacterProperties *)self setIsVerticalText:[(OADCharacterProperties *)self isVerticalText]];
    }
  }

  if ((*(self + 158) & 2) != 0 || ([(OADProperties *)self parent], v119 = objc_claimAutoreleasedReturnValue(), v119, v119 != valuesCopy))
  {
    isRightToLeft = [(OADCharacterProperties *)self isRightToLeft];
    if (isRightToLeft == [valuesCopy isRightToLeft])
    {
      *(self + 158) &= ~2u;
    }

    else if ((*(self + 158) & 2) == 0)
    {
      [(OADCharacterProperties *)self setIsRightToLeft:[(OADCharacterProperties *)self isRightToLeft]];
    }
  }

  if ((*(self + 158) & 0x10) != 0 || ([(OADProperties *)self parent], v121 = objc_claimAutoreleasedReturnValue(), v121, v121 != valuesCopy))
  {
    isHorizontalNormalized = [(OADCharacterProperties *)self isHorizontalNormalized];
    if (isHorizontalNormalized == [valuesCopy isHorizontalNormalized])
    {
      *(self + 158) &= ~0x10u;
    }

    else if ((*(self + 158) & 0x10) == 0)
    {
      [(OADCharacterProperties *)self setIsHorizontalNormalized:[(OADCharacterProperties *)self isHorizontalNormalized]];
    }
  }
}

- (void)overrideWithCharacterProperties:(id)properties
{
  propertiesCopy = properties;
  isMerged = [propertiesCopy isMerged];
  isMergedWithParent = [propertiesCopy isMergedWithParent];
  [propertiesCopy setMerged:0];
  [propertiesCopy setMergedWithParent:0];
  if ([propertiesCopy hasStroke])
  {
    stroke = [propertiesCopy stroke];
    [(OADCharacterProperties *)self setStroke:stroke];
  }

  if ([propertiesCopy hasFill])
  {
    fill = [propertiesCopy fill];
    [(OADCharacterProperties *)self setFill:fill];
  }

  if ([propertiesCopy hasOpacity])
  {
    [propertiesCopy opacity];
    [(OADCharacterProperties *)self setOpacity:?];
  }

  if ([propertiesCopy hasUnderlineType])
  {
    -[OADCharacterProperties setUnderlineType:](self, "setUnderlineType:", [propertiesCopy underlineType]);
  }

  if ([propertiesCopy hasUnderlineFill])
  {
    underlineFill = [propertiesCopy underlineFill];
    [(OADCharacterProperties *)self setUnderlineFill:underlineFill];
  }

  if ([propertiesCopy hasUnderlineStroke])
  {
    underlineStroke = [propertiesCopy underlineStroke];
    [(OADCharacterProperties *)self setUnderlineStroke:underlineStroke];
  }

  if ([propertiesCopy hasHighlight])
  {
    highlight = [propertiesCopy highlight];
    [(OADCharacterProperties *)self setHighlight:highlight];
  }

  if ([propertiesCopy hasIsBold])
  {
    -[OADCharacterProperties setIsBold:](self, "setIsBold:", [propertiesCopy isBold]);
  }

  if ([propertiesCopy hasIsItalic])
  {
    -[OADCharacterProperties setIsItalic:](self, "setIsItalic:", [propertiesCopy isItalic]);
  }

  if ([propertiesCopy hasEffects])
  {
    effects = [propertiesCopy effects];
    [(OADCharacterProperties *)self setEffects:effects];
  }

  if ([propertiesCopy hasFormatType])
  {
    -[OADCharacterProperties setFormatType:](self, "setFormatType:", [propertiesCopy formatType]);
  }

  if ([propertiesCopy hasFormatKerningType])
  {
    -[OADCharacterProperties setFormatKerningType:](self, "setFormatKerningType:", [propertiesCopy formatKerningType]);
  }

  if ([propertiesCopy hasStrikeThroughType])
  {
    -[OADCharacterProperties setStrikeThroughType:](self, "setStrikeThroughType:", [propertiesCopy strikeThroughType]);
  }

  if ([propertiesCopy hasSize])
  {
    [propertiesCopy size];
    [(OADCharacterProperties *)self setSize:?];
  }

  if ([propertiesCopy hasSpacing])
  {
    [propertiesCopy spacing];
    [(OADCharacterProperties *)self setSpacing:?];
  }

  if ([propertiesCopy hasIsVerticalText])
  {
    -[OADCharacterProperties setIsVerticalText:](self, "setIsVerticalText:", [propertiesCopy isVerticalText]);
  }

  if ([propertiesCopy hasBaseline])
  {
    [propertiesCopy baseline];
    [(OADCharacterProperties *)self setBaseline:?];
  }

  if ([propertiesCopy hasIsHorizontalNormalized])
  {
    -[OADCharacterProperties setIsHorizontalNormalized:](self, "setIsHorizontalNormalized:", [propertiesCopy isHorizontalNormalized]);
  }

  if ([propertiesCopy hasCaps])
  {
    -[OADCharacterProperties setCaps:](self, "setCaps:", [propertiesCopy caps]);
  }

  if ([propertiesCopy hasLanguage])
  {
    -[OADCharacterProperties setLanguage:](self, "setLanguage:", [propertiesCopy language]);
  }

  if ([propertiesCopy hasLatinFont])
  {
    latinFont = [propertiesCopy latinFont];
    [(OADCharacterProperties *)self setLatinFont:latinFont];
  }

  if ([propertiesCopy hasEastAsianFont])
  {
    eastAsianFont = [propertiesCopy eastAsianFont];
    [(OADCharacterProperties *)self setEastAsianFont:eastAsianFont];
  }

  if ([propertiesCopy hasBidiFont])
  {
    bidiFont = [propertiesCopy bidiFont];
    [(OADCharacterProperties *)self setBidiFont:bidiFont];
  }

  if ([propertiesCopy hasHAnsiFont])
  {
    hansiFont = [propertiesCopy hansiFont];
    [(OADCharacterProperties *)self setHAnsiFont:hansiFont];
  }

  if ([propertiesCopy hasSymbolFont])
  {
    symbolFont = [propertiesCopy symbolFont];
    [(OADCharacterProperties *)self setSymbolFont:symbolFont];
  }

  clickHyperlink = [propertiesCopy clickHyperlink];

  if (clickHyperlink)
  {
    clickHyperlink2 = [propertiesCopy clickHyperlink];
    [(OADCharacterProperties *)self setClickHyperlink:clickHyperlink2];
  }

  hoverHyperlink = [propertiesCopy hoverHyperlink];

  if (hoverHyperlink)
  {
    hoverHyperlink2 = [propertiesCopy hoverHyperlink];
    [(OADCharacterProperties *)self setHoverHyperlink:hoverHyperlink2];
  }

  [propertiesCopy setMerged:isMerged];
  [propertiesCopy setMergedWithParent:isMergedWithParent];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    isMerged = [(OADProperties *)self isMerged];
    isMergedWithParent = [(OADProperties *)self isMergedWithParent];
    isMerged2 = [v5 isMerged];
    isMergedWithParent2 = [v5 isMergedWithParent];
    [(OADProperties *)self setMerged:0];
    [(OADProperties *)self setMergedWithParent:0];
    [v5 setMerged:0];
    [v5 setMergedWithParent:0];
    v10 = [(OADCharacterProperties *)self hash];
    if (v10 == [v5 hash]
      && TCObjectEqual(self->mFill, v5[10])
      && TCObjectEqual(self->mStroke, v5[11])
      && TCObjectEqual(self->mEffects, v5[12])
      && TCObjectEqual(self->mHighlight, v5[15])
      && (v11 = [v5 hasOpacity], v11 == -[OADCharacterProperties hasOpacity](self, "hasOpacity"))
      && (![v5 hasOpacity] || (objc_msgSend(v5, "opacity"), v13 = v12, -[OADCharacterProperties opacity](self, "opacity"), v13 == v14))
      && (v15 = *(self + 157), ((*(v5 + 157) ^ v15) & 1) == 0)
      && ((v15 & 1) == 0 || self->mUnderlineType == *(v5 + 144))
      && (v16 = *(self + 156), ((*(v5 + 156) ^ v16) & 1) == 0)
      && ((v16 & 1) == 0 || TCObjectEqual(self->mUnderlineFill, v5[13]))
      && ((*(v5 + 156) >> 1) & 1) == (*(self + 156) & 2) >> 1
      && ((*(self + 156) & 2) == 0 || TCObjectEqual(self->mUnderlineStroke, v5[14]))
      && ((*(v5 + 156) >> 2) & 1) == (*(self + 156) & 4) >> 2
      && ((*(self + 156) & 4) == 0 || TCObjectEqual(self->mHighlight, v5[15]))
      && (v17 = [v5 hasIsBold], v17 == -[OADCharacterProperties hasIsBold](self, "hasIsBold"))
      && (![v5 hasIsBold] || (v18 = objc_msgSend(v5, "isBold"), v18 == -[OADCharacterProperties isBold](self, "isBold")))
      && (v19 = [v5 hasIsItalic], v19 == -[OADCharacterProperties hasIsItalic](self, "hasIsItalic"))
      && (![v5 hasIsItalic] || (v20 = objc_msgSend(v5, "isItalic"), v20 == -[OADCharacterProperties isItalic](self, "isItalic")))
      && (v21 = [v5 hasEffects], v21 == -[OADCharacterProperties hasEffects](self, "hasEffects"))
      && (![v5 hasEffects] || (objc_msgSend(v5, "effects"), v22 = objc_claimAutoreleasedReturnValue(), -[OADCharacterProperties effects](self, "effects"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v22, "isEqualToArray:", v23), v23, v22, (v24 & 1) != 0))
      && (v25 = [v5 hasFormatType], v25 == -[OADCharacterProperties hasFormatType](self, "hasFormatType"))
      && (![v5 hasFormatType] || (v26 = objc_msgSend(v5, "formatType"), v26 == -[OADCharacterProperties formatType](self, "formatType")))
      && (v27 = [v5 hasFormatKerningType], v27 == -[OADCharacterProperties hasFormatKerningType](self, "hasFormatKerningType"))
      && (![v5 hasFormatKerningType] || (v28 = objc_msgSend(v5, "formatKerningType"), v28 == -[OADCharacterProperties formatKerningType](self, "formatKerningType")))
      && (v29 = [v5 hasStrikeThroughType], v29 == -[OADCharacterProperties hasStrikeThroughType](self, "hasStrikeThroughType"))
      && (![v5 hasStrikeThroughType] || (v30 = objc_msgSend(v5, "strikeThroughType"), v30 == -[OADCharacterProperties strikeThroughType](self, "strikeThroughType")))
      && (v31 = [v5 hasSize], v31 == -[OADCharacterProperties hasSize](self, "hasSize"))
      && (![v5 hasSize] || (objc_msgSend(v5, "size"), v33 = v32, -[OADCharacterProperties size](self, "size"), v33 == v34))
      && (v35 = [v5 hasSpacing], v35 == -[OADCharacterProperties hasSpacing](self, "hasSpacing"))
      && (![v5 hasSpacing] || (objc_msgSend(v5, "spacing"), v37 = v36, -[OADCharacterProperties spacing](self, "spacing"), v37 == v38))
      && (v39 = [v5 hasIsVerticalText], v39 == -[OADCharacterProperties hasIsVerticalText](self, "hasIsVerticalText"))
      && (![v5 hasIsVerticalText] || (v40 = objc_msgSend(v5, "isVerticalText"), v40 == -[OADCharacterProperties isVerticalText](self, "isVerticalText")))
      && (v41 = [v5 hasBaseline], v41 == -[OADCharacterProperties hasBaseline](self, "hasBaseline"))
      && (![v5 hasBaseline] || (objc_msgSend(v5, "baseline"), v43 = v42, -[OADCharacterProperties baseline](self, "baseline"), v43 == v44))
      && (v45 = [v5 hasIsHorizontalNormalized], v45 == -[OADCharacterProperties hasIsHorizontalNormalized](self, "hasIsHorizontalNormalized"))
      && (![v5 hasIsHorizontalNormalized] || (v46 = objc_msgSend(v5, "isHorizontalNormalized"), v46 == -[OADCharacterProperties isHorizontalNormalized](self, "isHorizontalNormalized")))
      && (v47 = [v5 hasCaps], v47 == -[OADCharacterProperties hasCaps](self, "hasCaps"))
      && (![v5 hasCaps] || (v48 = objc_msgSend(v5, "caps"), v48 == -[OADCharacterProperties caps](self, "caps")))
      && (v49 = [v5 hasLanguage], v49 == -[OADCharacterProperties hasLanguage](self, "hasLanguage"))
      && (![v5 hasLanguage] || (v50 = objc_msgSend(v5, "language"), v50 == -[OADCharacterProperties language](self, "language")))
      && TCObjectEqual(self->mHoverHyperlink, v5[9])
      && TCObjectEqual(self->mClickHyperlink, v5[8])
      && TCObjectEqual(self->mLatinFont, v5[3])
      && TCObjectEqual(self->mEastAsianFont, v5[4])
      && TCObjectEqual(self->mBidiFont, v5[5])
      && TCObjectEqual(self->mHAnsiFont, v5[6])
      && TCObjectEqual(self->mSymbolFont, v5[7]))
    {
      v53.receiver = self;
      v53.super_class = OADCharacterProperties;
      v51 = [(OADProperties *)&v53 isEqual:v5];
    }

    else
    {
      v51 = 0;
    }

    [(OADProperties *)self setMerged:isMerged];
    [(OADProperties *)self setMergedWithParent:isMergedWithParent];
    [v5 setMerged:isMerged2];
    [v5 setMergedWithParent:isMergedWithParent2];
  }

  else
  {
    v51 = 0;
  }

  return v51;
}

- (BOOL)isAnyCharacterPropertyOverridden
{
  v7.receiver = self;
  v7.super_class = OADCharacterProperties;
  if ([(OADProperties *)&v7 isAnythingOverridden]|| [(OADCharacterProperties *)self hasFill]|| [(OADCharacterProperties *)self hasStroke]|| [(OADCharacterProperties *)self hasOpacity]|| [(OADCharacterProperties *)self hasUnderlineType]|| [(OADCharacterProperties *)self hasUnderlineFill]|| [(OADCharacterProperties *)self hasUnderlineStroke]|| [(OADCharacterProperties *)self hasHighlight]|| [(OADCharacterProperties *)self hasIsBold]|| [(OADCharacterProperties *)self hasIsItalic]|| [(OADCharacterProperties *)self hasEffects]|| [(OADCharacterProperties *)self hasFormatType]|| [(OADCharacterProperties *)self hasFormatKerningType]|| [(OADCharacterProperties *)self hasStrikeThroughType]|| [(OADCharacterProperties *)self hasSize]|| [(OADCharacterProperties *)self hasSpacing]|| [(OADCharacterProperties *)self hasIsVerticalText]|| [(OADCharacterProperties *)self hasIsRightToLeft]|| [(OADCharacterProperties *)self hasBaseline]|| [(OADCharacterProperties *)self hasIsHorizontalNormalized]|| [(OADCharacterProperties *)self hasCaps]|| [(OADCharacterProperties *)self hasLatinFont]|| [(OADCharacterProperties *)self hasEastAsianFont]|| [(OADCharacterProperties *)self hasBidiFont]|| [(OADCharacterProperties *)self hasHAnsiFont]|| [(OADCharacterProperties *)self hasSymbolFont])
  {
    return 1;
  }

  clickHyperlink = [(OADCharacterProperties *)self clickHyperlink];
  if (clickHyperlink)
  {
    v3 = 1;
  }

  else
  {
    hoverHyperlink = [(OADCharacterProperties *)self hoverHyperlink];
    v3 = hoverHyperlink != 0;
  }

  return v3;
}

@end