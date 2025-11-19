@interface OADCharacterProperties
+ (void)initialize;
- (BOOL)hasBidiFont;
- (BOOL)hasEastAsianFont;
- (BOOL)hasHAnsiFont;
- (BOOL)hasLatinFont;
- (BOOL)hasSymbolFont;
- (BOOL)isAnyCharacterPropertyOverridden;
- (BOOL)isBold;
- (BOOL)isEqual:(id)a3;
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
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3;
- (void)overrideWithCharacterProperties:(id)a3;
- (void)removeUnnecessaryOverrides;
- (void)setBidiFont:(id)a3;
- (void)setEastAsianFont:(id)a3;
- (void)setHAnsiFont:(id)a3;
- (void)setIsBold:(BOOL)a3;
- (void)setIsHorizontalNormalized:(BOOL)a3;
- (void)setIsItalic:(BOOL)a3;
- (void)setIsRightToLeft:(BOOL)a3;
- (void)setLatinFont:(id)a3;
- (void)setSymbolFont:(id)a3;
@end

@implementation OADCharacterProperties

+ (void)initialize
{
  if (objc_opt_class() == a1)
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
  v2 = [(OADProperties *)&v10 initWithDefaults];
  if (v2)
  {
    v3 = +[OADSolidFill blackFill];
    [(OADCharacterProperties *)v2 setFill:v3];

    v4 = +[OADStroke nullStroke];
    [(OADCharacterProperties *)v2 setStroke:v4];

    v5 = [MEMORY[0x277CBEA60] array];
    [(OADCharacterProperties *)v2 setEffects:v5];

    [(OADCharacterProperties *)v2 setHighlight:0];
    [(OADCharacterProperties *)v2 setUnderlineFill:0];
    [(OADCharacterProperties *)v2 setUnderlineStroke:0];
    LODWORD(v6) = 1.0;
    [(OADCharacterProperties *)v2 setOpacity:v6];
    [(OADCharacterProperties *)v2 setIsBold:0];
    [(OADCharacterProperties *)v2 setIsItalic:0];
    [(OADCharacterProperties *)v2 setUnderlineType:0];
    [(OADCharacterProperties *)v2 setFormatType:0];
    [(OADCharacterProperties *)v2 setFormatKerningType:0];
    [(OADCharacterProperties *)v2 setStrikeThroughType:0];
    LODWORD(v7) = 18.0;
    [(OADCharacterProperties *)v2 setSize:v7];
    [(OADCharacterProperties *)v2 setSpacing:0.0];
    [(OADCharacterProperties *)v2 setIsVerticalText:0];
    [(OADCharacterProperties *)v2 setBaseline:0.0];
    [(OADCharacterProperties *)v2 setIsHorizontalNormalized:0];
    [(OADCharacterProperties *)v2 setCaps:0];
    [(OADCharacterProperties *)v2 setLanguage:0];
    [(OADCharacterProperties *)v2 setLatinFont:&stru_286EE1130];
    [(OADCharacterProperties *)v2 setEastAsianFont:&stru_286EE1130];
    [(OADCharacterProperties *)v2 setBidiFont:&stru_286EE1130];
    [(OADCharacterProperties *)v2 setHAnsiFont:&stru_286EE1130];
    [(OADCharacterProperties *)v2 setSymbolFont:&stru_286EE1130];
    v8 = v2;
  }

  return v2;
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
  v3 = [(OADProperties *)self parent];

  if (!v3)
  {
    return;
  }

  v4 = [(OADProperties *)self isMerged];
  v5 = [(OADProperties *)self isMergedWithParent];
  [(OADProperties *)self setMerged:0];
  [(OADProperties *)self setMergedWithParent:0];
  v6 = [(OADProperties *)self parent];
  mStroke = self->mStroke;
  v8 = [v6 stroke];
  LODWORD(mStroke) = TCObjectEqual(mStroke, v8);

  if (mStroke)
  {
    v9 = self->mStroke;
    self->mStroke = 0;
  }

  mFill = self->mFill;
  v11 = [v6 fill];
  LODWORD(mFill) = TCObjectEqual(mFill, v11);

  if (mFill)
  {
    v12 = self->mFill;
    self->mFill = 0;
  }

  if ([(OADCharacterProperties *)self hasEffects])
  {
    v13 = [(OADProperties *)self parent];
    v14 = [(OADCharacterProperties *)self effects];
    v15 = [v13 effects];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(objc_object *)v14 removeUnnecessaryOverrides];
      v16 = objc_opt_class();
      if (v16 != objc_opt_class())
      {
        goto LABEL_13;
      }

      v17 = [(objc_object *)v14 isMergedWithParent];
      [(objc_object *)v14 setMergedWithParent:0];
      v18 = [(objc_object *)v14 isAnythingOverridden];
      [(objc_object *)v14 setMergedWithParent:v17];
      if (v18)
      {
        goto LABEL_13;
      }
    }

    else if (!TCObjectEqual(v14, v15))
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
    v20 = [(OADProperties *)self parent];
    [(OADCharacterProperties *)self opacity];
    v22 = v21;
    [v20 opacity];
    if (v22 == *&v23)
    {
      LODWORD(v23) = 1.0;
      [(OADCharacterProperties *)self setOpacity:v23];
      *(self + 156) &= ~8u;
    }
  }

  if ([(OADCharacterProperties *)self hasHighlight])
  {
    v24 = [(OADProperties *)self parent];
    v25 = [(OADCharacterProperties *)self highlight];
    v26 = [v24 highlight];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(objc_object *)v25 removeUnnecessaryOverrides];
      v27 = objc_opt_class();
      if (v27 != objc_opt_class())
      {
        goto LABEL_25;
      }

      v28 = [(objc_object *)v25 isMergedWithParent];
      [(objc_object *)v25 setMergedWithParent:0];
      v29 = [(objc_object *)v25 isAnythingOverridden];
      [(objc_object *)v25 setMergedWithParent:v28];
      if (v29)
      {
        goto LABEL_25;
      }
    }

    else if (!TCObjectEqual(v25, v26))
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

  v31 = [(OADProperties *)self parent];
  v32 = [(OADCharacterProperties *)self underlineFill];
  v33 = [v31 underlineFill];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(objc_object *)v32 removeUnnecessaryOverrides];
    v34 = objc_opt_class();
    if (v34 != objc_opt_class())
    {
      goto LABEL_33;
    }

    v35 = [(objc_object *)v32 isMergedWithParent];
    [(objc_object *)v32 setMergedWithParent:0];
    v36 = [(objc_object *)v32 isAnythingOverridden];
    [(objc_object *)v32 setMergedWithParent:v35];
    if (v36)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (TCObjectEqual(v32, v33))
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

  v38 = [(OADProperties *)self parent];
  v39 = [(OADCharacterProperties *)self underlineStroke];
  v40 = [v38 underlineStroke];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(objc_object *)v39 removeUnnecessaryOverrides];
    v41 = objc_opt_class();
    if (v41 != objc_opt_class())
    {
      goto LABEL_41;
    }

    v42 = [(objc_object *)v39 isMergedWithParent];
    [(objc_object *)v39 setMergedWithParent:0];
    v43 = [(objc_object *)v39 isAnythingOverridden];
    [(objc_object *)v39 setMergedWithParent:v42];
    if (v43)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (TCObjectEqual(v39, v40))
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
    v45 = [(OADProperties *)self parent];
    v46 = [(OADCharacterProperties *)self isBold];
    if (v46 == [v45 isBold])
    {
      [(OADCharacterProperties *)self setIsBold:0];
      *(self + 156) &= ~0x10u;
    }
  }

  if ([(OADCharacterProperties *)self hasIsItalic])
  {
    v47 = [(OADProperties *)self parent];
    v48 = [(OADCharacterProperties *)self isItalic];
    if (v48 == [v47 isItalic])
    {
      [(OADCharacterProperties *)self setIsItalic:0];
      *(self + 156) &= ~0x40u;
    }
  }

  if ([(OADCharacterProperties *)self hasUnderlineType])
  {
    v49 = [(OADProperties *)self parent];
    v50 = [(OADCharacterProperties *)self underlineType];
    if (v50 == [v49 underlineType])
    {
      [(OADCharacterProperties *)self setUnderlineType:0];
      *(self + 157) &= ~1u;
    }
  }

  if ([(OADCharacterProperties *)self hasFormatType])
  {
    v51 = [(OADProperties *)self parent];
    v52 = [(OADCharacterProperties *)self formatType];
    if (v52 == [v51 formatType])
    {
      [(OADCharacterProperties *)self setFormatType:0];
      *(self + 157) &= ~2u;
    }
  }

  if ([(OADCharacterProperties *)self hasFormatKerningType])
  {
    v53 = [(OADProperties *)self parent];
    v54 = [(OADCharacterProperties *)self formatKerningType];
    if (v54 == [v53 formatKerningType])
    {
      [(OADCharacterProperties *)self setFormatKerningType:0];
      *(self + 157) &= ~4u;
    }
  }

  if ([(OADCharacterProperties *)self hasStrikeThroughType])
  {
    v55 = [(OADProperties *)self parent];
    v56 = [(OADCharacterProperties *)self strikeThroughType];
    if (v56 == [v55 strikeThroughType])
    {
      [(OADCharacterProperties *)self setStrikeThroughType:0];
      *(self + 157) &= ~8u;
    }
  }

  if ([(OADCharacterProperties *)self hasSize])
  {
    v57 = [(OADProperties *)self parent];
    [(OADCharacterProperties *)self size];
    v59 = v58;
    [v57 size];
    if (v59 == *&v60)
    {
      LODWORD(v60) = 18.0;
      [(OADCharacterProperties *)self setSize:v60];
      *(self + 157) &= ~0x10u;
    }
  }

  if ([(OADCharacterProperties *)self hasSpacing])
  {
    v61 = [(OADProperties *)self parent];
    [(OADCharacterProperties *)self spacing];
    v63 = v62;
    [v61 spacing];
    if (v63 == v64)
    {
      [(OADCharacterProperties *)self setSpacing:0.0];
      *(self + 157) &= ~0x20u;
    }
  }

  if ([(OADCharacterProperties *)self hasIsVerticalText])
  {
    v65 = [(OADProperties *)self parent];
    v66 = [(OADCharacterProperties *)self isVerticalText];
    if (v66 == [v65 isVerticalText])
    {
      [(OADCharacterProperties *)self setIsVerticalText:0];
      *(self + 157) &= ~0x80u;
    }
  }

  if ([(OADCharacterProperties *)self hasIsRightToLeft])
  {
    v67 = [(OADProperties *)self parent];
    v68 = [(OADCharacterProperties *)self isRightToLeft];
    if (v68 == [v67 isRightToLeft])
    {
      [(OADCharacterProperties *)self setIsRightToLeft:0];
      *(self + 158) &= ~2u;
    }
  }

  if ([(OADCharacterProperties *)self hasBaseline])
  {
    v69 = [(OADProperties *)self parent];
    [(OADCharacterProperties *)self baseline];
    v71 = v70;
    [v69 baseline];
    if (v71 == v72)
    {
      [(OADCharacterProperties *)self setBaseline:0.0];
      *(self + 158) &= ~8u;
    }
  }

  if ([(OADCharacterProperties *)self hasIsHorizontalNormalized])
  {
    v73 = [(OADProperties *)self parent];
    v74 = [(OADCharacterProperties *)self isHorizontalNormalized];
    if (v74 == [v73 isHorizontalNormalized])
    {
      [(OADCharacterProperties *)self setIsHorizontalNormalized:0];
      *(self + 158) &= ~0x10u;
    }
  }

  if ([(OADCharacterProperties *)self hasCaps])
  {
    v75 = [(OADProperties *)self parent];
    v76 = [(OADCharacterProperties *)self caps];
    if (v76 == [v75 caps])
    {
      [(OADCharacterProperties *)self setCaps:0];
      *(self + 158) &= ~0x40u;
    }
  }

  if ([(OADCharacterProperties *)self hasLanguage])
  {
    v77 = [(OADProperties *)self parent];
    v78 = [(OADCharacterProperties *)self language];
    if (v78 == [v77 language])
    {
      [(OADCharacterProperties *)self setLanguage:0];
      *(self + 158) &= ~0x80u;
    }
  }

  if ([(OADCharacterProperties *)self hasLatinFont])
  {
    v79 = [(OADProperties *)self parent];
    v80 = [(OADCharacterProperties *)self latinFont];
    v81 = [v79 latinFont];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(objc_object *)v80 removeUnnecessaryOverrides];
      v82 = objc_opt_class();
      if (v82 != objc_opt_class())
      {
        goto LABEL_105;
      }

      v83 = [(objc_object *)v80 isMergedWithParent];
      [(objc_object *)v80 setMergedWithParent:0];
      v84 = [(objc_object *)v80 isAnythingOverridden];
      [(objc_object *)v80 setMergedWithParent:v83];
      if (v84)
      {
        goto LABEL_105;
      }
    }

    else if (!TCObjectEqual(v80, v81))
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

  v86 = [(OADProperties *)self parent];
  v87 = [(OADCharacterProperties *)self eastAsianFont];
  v88 = [v86 eastAsianFont];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(objc_object *)v87 removeUnnecessaryOverrides];
    v89 = objc_opt_class();
    if (v89 != objc_opt_class())
    {
      goto LABEL_113;
    }

    v90 = [(objc_object *)v87 isMergedWithParent];
    [(objc_object *)v87 setMergedWithParent:0];
    v91 = [(objc_object *)v87 isAnythingOverridden];
    [(objc_object *)v87 setMergedWithParent:v90];
    if (v91)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

  if (TCObjectEqual(v87, v88))
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

  v93 = [(OADProperties *)self parent];
  v94 = [(OADCharacterProperties *)self bidiFont];
  v95 = [v93 bidiFont];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(objc_object *)v94 removeUnnecessaryOverrides];
    v96 = objc_opt_class();
    if (v96 != objc_opt_class())
    {
      goto LABEL_121;
    }

    v97 = [(objc_object *)v94 isMergedWithParent];
    [(objc_object *)v94 setMergedWithParent:0];
    v98 = [(objc_object *)v94 isAnythingOverridden];
    [(objc_object *)v94 setMergedWithParent:v97];
    if (v98)
    {
      goto LABEL_121;
    }

    goto LABEL_120;
  }

  if (TCObjectEqual(v94, v95))
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

  v100 = [(OADProperties *)self parent];
  v101 = [(OADCharacterProperties *)self hansiFont];
  v102 = [v100 hansiFont];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(objc_object *)v101 removeUnnecessaryOverrides];
    v103 = objc_opt_class();
    if (v103 != objc_opt_class())
    {
      goto LABEL_129;
    }

    v104 = [(objc_object *)v101 isMergedWithParent];
    [(objc_object *)v101 setMergedWithParent:0];
    v105 = [(objc_object *)v101 isAnythingOverridden];
    [(objc_object *)v101 setMergedWithParent:v104];
    if (v105)
    {
      goto LABEL_129;
    }

    goto LABEL_128;
  }

  if (TCObjectEqual(v101, v102))
  {
LABEL_128:
    mHAnsiFont = self->mHAnsiFont;
    self->mHAnsiFont = 0;
  }

LABEL_129:

LABEL_130:
  if ([(OADCharacterProperties *)self hasSymbolFont])
  {
    v107 = [(OADProperties *)self parent];
    v108 = [(OADCharacterProperties *)self symbolFont];
    v109 = [v107 symbolFont];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(objc_object *)v108 removeUnnecessaryOverrides];
      v110 = objc_opt_class();
      if (v110 != objc_opt_class())
      {
        goto LABEL_137;
      }

      v111 = [(objc_object *)v108 isMergedWithParent];
      [(objc_object *)v108 setMergedWithParent:0];
      v112 = [(objc_object *)v108 isAnythingOverridden];
      [(objc_object *)v108 setMergedWithParent:v111];
      if (v112)
      {
        goto LABEL_137;
      }
    }

    else if (!TCObjectEqual(v108, v109))
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
  v115 = [(OADProperties *)self parent];
  v116 = [v115 clickHyperlink];
  LODWORD(mClickHyperlink) = [(OADHyperlink *)mClickHyperlink isEqual:v116];

  if (mClickHyperlink)
  {
    v117 = self->mClickHyperlink;
    self->mClickHyperlink = 0;
  }

  mHoverHyperlink = self->mHoverHyperlink;
  v119 = [(OADProperties *)self parent];
  v120 = [v119 hoverHyperlink];
  LODWORD(mHoverHyperlink) = [(OADHyperlink *)mHoverHyperlink isEqual:v120];

  if (mHoverHyperlink)
  {
    v121 = self->mHoverHyperlink;
    self->mHoverHyperlink = 0;
  }

  [(OADProperties *)self setMerged:v4];
  [(OADProperties *)self setMergedWithParent:v5];
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

- (void)setIsBold:(BOOL)a3
{
  if (a3)
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

- (void)setIsItalic:(BOOL)a3
{
  if (a3)
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

- (void)setIsRightToLeft:(BOOL)a3
{
  if (a3)
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

- (void)setIsHorizontalNormalized:(BOOL)a3
{
  if (a3)
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

- (void)setLatinFont:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  mLatinFont = self->mLatinFont;
  self->mLatinFont = v4;
}

- (void)setEastAsianFont:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
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

- (void)setBidiFont:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  mBidiFont = self->mBidiFont;
  self->mBidiFont = v4;
}

- (void)setHAnsiFont:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  mHAnsiFont = self->mHAnsiFont;
  self->mHAnsiFont = v4;
}

- (void)setSymbolFont:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  mSymbolFont = self->mSymbolFont;
  self->mSymbolFont = v4;
}

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3
{
  v4 = a3;
  v125.receiver = self;
  v125.super_class = OADCharacterProperties;
  [(OADProperties *)&v125 fixPropertiesForChangingParentPreservingEffectiveValues:v4];
  if ([(OADCharacterProperties *)self hasLatinFont]|| ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != v4))
  {
    v6 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasLatinFont];

    if (v6)
    {
      v7 = [(OADCharacterProperties *)self latinFont];
    }

    else
    {
      v7 = 0;
    }

    v8 = [v4 possiblyInexistentOverrideForSelector:sel_hasLatinFont];

    if (v8)
    {
      v9 = [v4 latinFont];
    }

    else
    {
      v9 = 0;
    }

    v10 = TCObjectEqual(v7, v9);
    mLatinFont = self->mLatinFont;
    if (v10)
    {
      self->mLatinFont = 0;
    }

    else if (!mLatinFont && v6)
    {
      [(OADCharacterProperties *)self setLatinFont:v7];
    }
  }

  if ([(OADCharacterProperties *)self hasEastAsianFont]|| ([(OADProperties *)self parent], v12 = objc_claimAutoreleasedReturnValue(), v12, v12 != v4))
  {
    v13 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasEastAsianFont];

    if (v13)
    {
      v14 = [(OADCharacterProperties *)self eastAsianFont];
    }

    else
    {
      v14 = 0;
    }

    v15 = [v4 possiblyInexistentOverrideForSelector:sel_hasEastAsianFont];

    if (v15)
    {
      v16 = [v4 eastAsianFont];
    }

    else
    {
      v16 = 0;
    }

    v17 = TCObjectEqual(v14, v16);
    mEastAsianFont = self->mEastAsianFont;
    if (v17)
    {
      self->mEastAsianFont = 0;
    }

    else if (!mEastAsianFont && v13)
    {
      [(OADCharacterProperties *)self setEastAsianFont:v14];
    }
  }

  if ([(OADCharacterProperties *)self hasBidiFont]|| ([(OADProperties *)self parent], v19 = objc_claimAutoreleasedReturnValue(), v19, v19 != v4))
  {
    v20 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasBidiFont];

    if (v20)
    {
      v21 = [(OADCharacterProperties *)self bidiFont];
    }

    else
    {
      v21 = 0;
    }

    v22 = [v4 possiblyInexistentOverrideForSelector:sel_hasBidiFont];

    if (v22)
    {
      v23 = [v4 bidiFont];
    }

    else
    {
      v23 = 0;
    }

    v24 = TCObjectEqual(v21, v23);
    mBidiFont = self->mBidiFont;
    if (v24)
    {
      self->mBidiFont = 0;
    }

    else if (!mBidiFont && v20)
    {
      [(OADCharacterProperties *)self setBidiFont:v21];
    }
  }

  if ([(OADCharacterProperties *)self hasHAnsiFont]|| ([(OADProperties *)self parent], v26 = objc_claimAutoreleasedReturnValue(), v26, v26 != v4))
  {
    v27 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasHAnsiFont];

    if (v27)
    {
      v28 = [(OADCharacterProperties *)self hansiFont];
    }

    else
    {
      v28 = 0;
    }

    v29 = [v4 possiblyInexistentOverrideForSelector:sel_hasHAnsiFont];

    if (v29)
    {
      v30 = [v4 hansiFont];
    }

    else
    {
      v30 = 0;
    }

    v31 = TCObjectEqual(v28, v30);
    mHAnsiFont = self->mHAnsiFont;
    if (v31)
    {
      self->mHAnsiFont = 0;
    }

    else if (!mHAnsiFont && v27)
    {
      [(OADCharacterProperties *)self setHAnsiFont:v28];
    }
  }

  if ([(OADCharacterProperties *)self hasSymbolFont]|| ([(OADProperties *)self parent], v33 = objc_claimAutoreleasedReturnValue(), v33, v33 != v4))
  {
    v34 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasSymbolFont];

    if (v34)
    {
      v35 = [(OADCharacterProperties *)self symbolFont];
    }

    else
    {
      v35 = 0;
    }

    v36 = [v4 possiblyInexistentOverrideForSelector:sel_hasSymbolFont];

    if (v36)
    {
      v37 = [v4 symbolFont];
    }

    else
    {
      v37 = 0;
    }

    v38 = TCObjectEqual(v35, v37);
    mSymbolFont = self->mSymbolFont;
    if (v38)
    {
      self->mSymbolFont = 0;
    }

    else if (!mSymbolFont && v34)
    {
      [(OADCharacterProperties *)self setSymbolFont:v35];
    }
  }

  if ([(OADCharacterProperties *)self hasFill]|| ([(OADProperties *)self parent], v40 = objc_claimAutoreleasedReturnValue(), v40, v40 != v4))
  {
    v41 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasFill];

    if (v41)
    {
      v42 = [(OADCharacterProperties *)self fill];
    }

    else
    {
      v42 = 0;
    }

    v43 = [v4 possiblyInexistentOverrideForSelector:sel_hasFill];

    if (v43)
    {
      v44 = [v4 fill];
    }

    else
    {
      v44 = 0;
    }

    v45 = TCObjectEqual(v42, v44);
    mFill = self->mFill;
    if (v45)
    {
      self->mFill = 0;
    }

    else if (!mFill && v41)
    {
      [(OADCharacterProperties *)self setFill:v42];
    }
  }

  if ([(OADCharacterProperties *)self hasStroke]|| ([(OADProperties *)self parent], v47 = objc_claimAutoreleasedReturnValue(), v47, v47 != v4))
  {
    v48 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasStroke];

    if (v48)
    {
      v49 = [(OADCharacterProperties *)self stroke];
    }

    else
    {
      v49 = 0;
    }

    v50 = [v4 possiblyInexistentOverrideForSelector:sel_hasStroke];

    if (v50)
    {
      v51 = [v4 stroke];
    }

    else
    {
      v51 = 0;
    }

    v52 = TCObjectEqual(v49, v51);
    mStroke = self->mStroke;
    if (v52)
    {
      self->mStroke = 0;
    }

    else if (!mStroke && v48)
    {
      [(OADCharacterProperties *)self setStroke:v49];
    }
  }

  if ([(OADCharacterProperties *)self hasEffects]|| ([(OADProperties *)self parent], v54 = objc_claimAutoreleasedReturnValue(), v54, v54 != v4))
  {
    v55 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasEffects];

    if (v55)
    {
      v56 = [(OADCharacterProperties *)self effects];
    }

    else
    {
      v56 = 0;
    }

    v57 = [v4 possiblyInexistentOverrideForSelector:sel_hasEffects];

    if (v57)
    {
      v58 = [v4 effects];
    }

    else
    {
      v58 = 0;
    }

    v59 = TCObjectEqual(v56, v58);
    mEffects = self->mEffects;
    if (v59)
    {
      self->mEffects = 0;
    }

    else if (!mEffects && v55)
    {
      [(OADCharacterProperties *)self setEffects:v56];
    }
  }

  if ((*(self + 156) & 1) == 0)
  {
    v63 = [(OADProperties *)self parent];

    if (v63 == v4)
    {
      goto LABEL_129;
    }

LABEL_119:
    v64 = [(OADCharacterProperties *)self underlineFill];
    v65 = objc_alloc_init(objc_opt_class());

    v66 = [(OADCharacterProperties *)self underlineFill];
    [v65 setParent:v66];

    objc_storeStrong(&self->mUnderlineFill, v65);
    *(self + 156) |= 1u;
    v67 = [v4 possiblyInexistentOverrideForSelector:sel_hasUnderlineFill];

    if (v67)
    {
      v67 = [v4 underlineFill];
    }

    mUnderlineFill = self->mUnderlineFill;
    if (mUnderlineFill != v67)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        v70 = [objc_opt_class() defaultProperties];

        v67 = v70;
      }

      [(OADProperties *)self->mUnderlineFill changeParentPreservingEffectiveValues:v67];
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

  v61 = [v4 possiblyInexistentOverrideForSelector:sel_hasUnderlineFill];
  if (!v61 || ([v4 underlineFill], v62 = objc_claimAutoreleasedReturnValue(), v62, v61, !v62))
  {
    *(self + 156) &= ~1u;
  }

LABEL_129:
  if ((*(self + 156) & 2) == 0)
  {
    v71 = [(OADProperties *)self parent];

    if (v71 == v4)
    {
      goto LABEL_143;
    }

LABEL_133:
    v72 = [(OADCharacterProperties *)self underlineStroke];
    v73 = objc_alloc_init(objc_opt_class());

    v74 = [(OADCharacterProperties *)self underlineStroke];
    [v73 setParent:v74];

    objc_storeStrong(&self->mUnderlineStroke, v73);
    *(self + 156) |= 2u;
    v75 = [v4 possiblyInexistentOverrideForSelector:sel_hasUnderlineStroke];

    if (v75)
    {
      v75 = [v4 underlineStroke];
    }

    mUnderlineStroke = self->mUnderlineStroke;
    if (mUnderlineStroke != v75)
    {
      objc_opt_class();
      v77 = objc_opt_isKindOfClass();
      if ((v77 & 1) == 0)
      {
        v78 = [objc_opt_class() defaultProperties];

        v75 = v78;
      }

      [(OADProperties *)self->mUnderlineStroke changeParentPreservingEffectiveValues:v75];
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

  v123 = [v4 possiblyInexistentOverrideForSelector:sel_hasUnderlineStroke];
  if (!v123 || ([v4 underlineStroke], v124 = objc_claimAutoreleasedReturnValue(), v124, v123, !v124))
  {
    *(self + 156) &= ~2u;
  }

LABEL_143:
  if ((*(self + 156) & 4) != 0 || ([(OADProperties *)self parent], v79 = objc_claimAutoreleasedReturnValue(), v79, v79 != v4))
  {
    v80 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasHighlight];

    if (v80)
    {
      v81 = [(OADCharacterProperties *)self highlight];
    }

    else
    {
      v81 = 0;
    }

    v82 = [v4 possiblyInexistentOverrideForSelector:sel_hasHighlight];

    if (v82)
    {
      v83 = [v4 highlight];
    }

    else
    {
      v83 = 0;
    }

    if (TCObjectEqual(v81, v83))
    {
      mHighlight = self->mHighlight;
      self->mHighlight = 0;

      *(self + 156) &= ~4u;
    }

    else if ((*(self + 156) & 4) == 0 && v80)
    {
      [(OADCharacterProperties *)self setHighlight:v81];
    }
  }

  if ((*(self + 156) & 8) != 0 || ([(OADProperties *)self parent], v85 = objc_claimAutoreleasedReturnValue(), v85, v85 != v4))
  {
    [(OADCharacterProperties *)self opacity];
    v87 = v86;
    [v4 opacity];
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

  if ((*(self + 157) & 0x10) != 0 || ([(OADProperties *)self parent], v89 = objc_claimAutoreleasedReturnValue(), v89, v89 != v4))
  {
    [(OADCharacterProperties *)self size];
    v91 = v90;
    [v4 size];
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

  if ((*(self + 157) & 0x20) != 0 || ([(OADProperties *)self parent], v93 = objc_claimAutoreleasedReturnValue(), v93, v93 != v4))
  {
    [(OADCharacterProperties *)self spacing];
    v95 = v94;
    [v4 spacing];
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

  if ((*(self + 158) & 8) != 0 || ([(OADProperties *)self parent], v97 = objc_claimAutoreleasedReturnValue(), v97, v97 != v4))
  {
    [(OADCharacterProperties *)self baseline];
    v99 = v98;
    [v4 baseline];
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

  if ((*(self + 157) & 1) != 0 || ([(OADProperties *)self parent], v101 = objc_claimAutoreleasedReturnValue(), v101, v101 != v4))
  {
    v102 = [(OADCharacterProperties *)self underlineType];
    if (v102 == [v4 underlineType])
    {
      *(self + 157) &= ~1u;
    }

    else if ((*(self + 157) & 1) == 0)
    {
      [(OADCharacterProperties *)self setUnderlineType:[(OADCharacterProperties *)self underlineType]];
    }
  }

  if ((*(self + 157) & 2) != 0 || ([(OADProperties *)self parent], v103 = objc_claimAutoreleasedReturnValue(), v103, v103 != v4))
  {
    v104 = [(OADCharacterProperties *)self formatType];
    if (v104 == [v4 formatType])
    {
      *(self + 157) &= ~2u;
    }

    else if ((*(self + 157) & 2) == 0)
    {
      [(OADCharacterProperties *)self setFormatType:[(OADCharacterProperties *)self formatType]];
    }
  }

  if ((*(self + 157) & 4) != 0 || ([(OADProperties *)self parent], v105 = objc_claimAutoreleasedReturnValue(), v105, v105 != v4))
  {
    v106 = [(OADCharacterProperties *)self formatKerningType];
    if (v106 == [v4 formatKerningType])
    {
      *(self + 157) &= ~4u;
    }

    else if ((*(self + 157) & 4) == 0)
    {
      [(OADCharacterProperties *)self setFormatKerningType:[(OADCharacterProperties *)self formatKerningType]];
    }
  }

  if ((*(self + 157) & 8) != 0 || ([(OADProperties *)self parent], v107 = objc_claimAutoreleasedReturnValue(), v107, v107 != v4))
  {
    v108 = [(OADCharacterProperties *)self strikeThroughType];
    if (v108 == [v4 strikeThroughType])
    {
      *(self + 157) &= ~8u;
    }

    else if ((*(self + 157) & 8) == 0)
    {
      [(OADCharacterProperties *)self setStrikeThroughType:[(OADCharacterProperties *)self strikeThroughType]];
    }
  }

  if ((*(self + 158) & 0x40) != 0 || ([(OADProperties *)self parent], v109 = objc_claimAutoreleasedReturnValue(), v109, v109 != v4))
  {
    v110 = [(OADCharacterProperties *)self caps];
    if (v110 == [v4 caps])
    {
      *(self + 158) &= ~0x40u;
    }

    else if ((*(self + 158) & 0x40) == 0)
    {
      [(OADCharacterProperties *)self setCaps:[(OADCharacterProperties *)self caps]];
    }
  }

  if ((*(self + 156) & 0x10) != 0 || ([(OADProperties *)self parent], v111 = objc_claimAutoreleasedReturnValue(), v111, v111 != v4))
  {
    v112 = [(OADCharacterProperties *)self isBold];
    if (v112 == [v4 isBold])
    {
      *(self + 156) &= ~0x10u;
    }

    else if ((*(self + 156) & 0x10) == 0)
    {
      [(OADCharacterProperties *)self setIsBold:[(OADCharacterProperties *)self isBold]];
    }
  }

  if ((*(self + 156) & 0x40) != 0 || ([(OADProperties *)self parent], v113 = objc_claimAutoreleasedReturnValue(), v113, v113 != v4))
  {
    v114 = [(OADCharacterProperties *)self isItalic];
    if (v114 == [v4 isItalic])
    {
      *(self + 156) &= ~0x40u;
    }

    else if ((*(self + 156) & 0x40) == 0)
    {
      [(OADCharacterProperties *)self setIsItalic:[(OADCharacterProperties *)self isItalic]];
    }
  }

  if (*(self + 157) < 0 || ([(OADProperties *)self parent], v115 = objc_claimAutoreleasedReturnValue(), v115, v115 != v4))
  {
    v116 = [(OADCharacterProperties *)self isVerticalText];
    v117 = [v4 isVerticalText];
    v118 = *(self + 157);
    if (v116 == v117)
    {
      *(self + 157) = v118 & 0x7F;
    }

    else if ((v118 & 0x80000000) == 0)
    {
      [(OADCharacterProperties *)self setIsVerticalText:[(OADCharacterProperties *)self isVerticalText]];
    }
  }

  if ((*(self + 158) & 2) != 0 || ([(OADProperties *)self parent], v119 = objc_claimAutoreleasedReturnValue(), v119, v119 != v4))
  {
    v120 = [(OADCharacterProperties *)self isRightToLeft];
    if (v120 == [v4 isRightToLeft])
    {
      *(self + 158) &= ~2u;
    }

    else if ((*(self + 158) & 2) == 0)
    {
      [(OADCharacterProperties *)self setIsRightToLeft:[(OADCharacterProperties *)self isRightToLeft]];
    }
  }

  if ((*(self + 158) & 0x10) != 0 || ([(OADProperties *)self parent], v121 = objc_claimAutoreleasedReturnValue(), v121, v121 != v4))
  {
    v122 = [(OADCharacterProperties *)self isHorizontalNormalized];
    if (v122 == [v4 isHorizontalNormalized])
    {
      *(self + 158) &= ~0x10u;
    }

    else if ((*(self + 158) & 0x10) == 0)
    {
      [(OADCharacterProperties *)self setIsHorizontalNormalized:[(OADCharacterProperties *)self isHorizontalNormalized]];
    }
  }
}

- (void)overrideWithCharacterProperties:(id)a3
{
  v21 = a3;
  v4 = [v21 isMerged];
  v5 = [v21 isMergedWithParent];
  [v21 setMerged:0];
  [v21 setMergedWithParent:0];
  if ([v21 hasStroke])
  {
    v6 = [v21 stroke];
    [(OADCharacterProperties *)self setStroke:v6];
  }

  if ([v21 hasFill])
  {
    v7 = [v21 fill];
    [(OADCharacterProperties *)self setFill:v7];
  }

  if ([v21 hasOpacity])
  {
    [v21 opacity];
    [(OADCharacterProperties *)self setOpacity:?];
  }

  if ([v21 hasUnderlineType])
  {
    -[OADCharacterProperties setUnderlineType:](self, "setUnderlineType:", [v21 underlineType]);
  }

  if ([v21 hasUnderlineFill])
  {
    v8 = [v21 underlineFill];
    [(OADCharacterProperties *)self setUnderlineFill:v8];
  }

  if ([v21 hasUnderlineStroke])
  {
    v9 = [v21 underlineStroke];
    [(OADCharacterProperties *)self setUnderlineStroke:v9];
  }

  if ([v21 hasHighlight])
  {
    v10 = [v21 highlight];
    [(OADCharacterProperties *)self setHighlight:v10];
  }

  if ([v21 hasIsBold])
  {
    -[OADCharacterProperties setIsBold:](self, "setIsBold:", [v21 isBold]);
  }

  if ([v21 hasIsItalic])
  {
    -[OADCharacterProperties setIsItalic:](self, "setIsItalic:", [v21 isItalic]);
  }

  if ([v21 hasEffects])
  {
    v11 = [v21 effects];
    [(OADCharacterProperties *)self setEffects:v11];
  }

  if ([v21 hasFormatType])
  {
    -[OADCharacterProperties setFormatType:](self, "setFormatType:", [v21 formatType]);
  }

  if ([v21 hasFormatKerningType])
  {
    -[OADCharacterProperties setFormatKerningType:](self, "setFormatKerningType:", [v21 formatKerningType]);
  }

  if ([v21 hasStrikeThroughType])
  {
    -[OADCharacterProperties setStrikeThroughType:](self, "setStrikeThroughType:", [v21 strikeThroughType]);
  }

  if ([v21 hasSize])
  {
    [v21 size];
    [(OADCharacterProperties *)self setSize:?];
  }

  if ([v21 hasSpacing])
  {
    [v21 spacing];
    [(OADCharacterProperties *)self setSpacing:?];
  }

  if ([v21 hasIsVerticalText])
  {
    -[OADCharacterProperties setIsVerticalText:](self, "setIsVerticalText:", [v21 isVerticalText]);
  }

  if ([v21 hasBaseline])
  {
    [v21 baseline];
    [(OADCharacterProperties *)self setBaseline:?];
  }

  if ([v21 hasIsHorizontalNormalized])
  {
    -[OADCharacterProperties setIsHorizontalNormalized:](self, "setIsHorizontalNormalized:", [v21 isHorizontalNormalized]);
  }

  if ([v21 hasCaps])
  {
    -[OADCharacterProperties setCaps:](self, "setCaps:", [v21 caps]);
  }

  if ([v21 hasLanguage])
  {
    -[OADCharacterProperties setLanguage:](self, "setLanguage:", [v21 language]);
  }

  if ([v21 hasLatinFont])
  {
    v12 = [v21 latinFont];
    [(OADCharacterProperties *)self setLatinFont:v12];
  }

  if ([v21 hasEastAsianFont])
  {
    v13 = [v21 eastAsianFont];
    [(OADCharacterProperties *)self setEastAsianFont:v13];
  }

  if ([v21 hasBidiFont])
  {
    v14 = [v21 bidiFont];
    [(OADCharacterProperties *)self setBidiFont:v14];
  }

  if ([v21 hasHAnsiFont])
  {
    v15 = [v21 hansiFont];
    [(OADCharacterProperties *)self setHAnsiFont:v15];
  }

  if ([v21 hasSymbolFont])
  {
    v16 = [v21 symbolFont];
    [(OADCharacterProperties *)self setSymbolFont:v16];
  }

  v17 = [v21 clickHyperlink];

  if (v17)
  {
    v18 = [v21 clickHyperlink];
    [(OADCharacterProperties *)self setClickHyperlink:v18];
  }

  v19 = [v21 hoverHyperlink];

  if (v19)
  {
    v20 = [v21 hoverHyperlink];
    [(OADCharacterProperties *)self setHoverHyperlink:v20];
  }

  [v21 setMerged:v4];
  [v21 setMergedWithParent:v5];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(OADProperties *)self isMerged];
    v7 = [(OADProperties *)self isMergedWithParent];
    v8 = [v5 isMerged];
    v9 = [v5 isMergedWithParent];
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

    [(OADProperties *)self setMerged:v6];
    [(OADProperties *)self setMergedWithParent:v7];
    [v5 setMerged:v8];
    [v5 setMergedWithParent:v9];
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

  v5 = [(OADCharacterProperties *)self clickHyperlink];
  if (v5)
  {
    v3 = 1;
  }

  else
  {
    v6 = [(OADCharacterProperties *)self hoverHyperlink];
    v3 = v6 != 0;
  }

  return v3;
}

@end