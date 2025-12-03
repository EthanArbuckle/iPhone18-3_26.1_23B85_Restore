@interface OADParagraphProperties
+ (id)defaultProperties;
- (BOOL)isAnythingOverridden;
- (BOOL)isEqual:(id)equal;
- (BOOL)isHangingPunctuation;
- (BOOL)isLatinLineBreak;
- (OADParagraphProperties)init;
- (OADParagraphProperties)initWithDefaults;
- (double)nonOveridenLeftMargin;
- (float)defaultTab;
- (float)indent;
- (float)leftMargin;
- (float)rightMargin;
- (id)afterSpacing;
- (id)beforeSpacing;
- (id)bulletColor;
- (id)bulletFont;
- (id)bulletProperties;
- (id)bulletSize;
- (id)description;
- (id)lineSpacing;
- (id)tabStops;
- (int)bulletCharSet;
- (int)level;
- (unint64_t)hash;
- (unsigned)align;
- (unsigned)fontAlign;
- (unsigned)wrap;
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values;
- (void)overrideWithProperties:(id)properties;
- (void)removeUnnecessaryOverrides;
- (void)setIsHangingPunctuation:(BOOL)punctuation;
@end

@implementation OADParagraphProperties

- (OADParagraphProperties)initWithDefaults
{
  v15.receiver = self;
  v15.super_class = OADParagraphProperties;
  initWithDefaults = [(OADCharacterProperties *)&v15 initWithDefaults];
  if (initWithDefaults)
  {
    v3 = [OADPercentTextSpacing alloc];
    LODWORD(v4) = 1120403456;
    v5 = [(OADPercentTextSpacing *)v3 initWithPercent:v4];
    [(OADParagraphProperties *)initWithDefaults setLineSpacing:v5];
    v6 = [[OADPointTextSpacing alloc] initWithPoints:0];
    [(OADParagraphProperties *)initWithDefaults setBeforeSpacing:v6];
    [(OADParagraphProperties *)initWithDefaults setAfterSpacing:v6];
    array = [MEMORY[0x277CBEA60] array];
    [(OADParagraphProperties *)initWithDefaults setTabStops:array];

    [(OADParagraphProperties *)initWithDefaults setLeftMargin:0.0];
    [(OADParagraphProperties *)initWithDefaults setRightMargin:0.0];
    [(OADParagraphProperties *)initWithDefaults setLevel:0];
    [(OADParagraphProperties *)initWithDefaults setIndent:0.0];
    [(OADParagraphProperties *)initWithDefaults setAlign:0];
    LODWORD(v8) = 1116733440;
    [(OADParagraphProperties *)initWithDefaults setDefaultTab:v8];
    [(OADCharacterProperties *)initWithDefaults setIsRightToLeft:0];
    [(OADParagraphProperties *)initWithDefaults setWrap:1];
    [(OADParagraphProperties *)initWithDefaults setFontAlign:0];
    [(OADParagraphProperties *)initWithDefaults setIsLatinLineBreak:1];
    [(OADParagraphProperties *)initWithDefaults setIsHangingPunctuation:0];
    [(OADParagraphProperties *)initWithDefaults setBulletCharSet:1];
    v9 = objc_alloc_init(OADBulletSizeFollowText);
    [(OADParagraphProperties *)initWithDefaults setBulletSize:v9];
    v10 = objc_alloc_init(OADBulletColorFollowText);
    [(OADParagraphProperties *)initWithDefaults setBulletColor:v10];
    v11 = objc_alloc_init(OADBulletFontFollowText);
    [(OADParagraphProperties *)initWithDefaults setBulletFont:v11];
    v12 = objc_alloc_init(OADNullBulletProperties);
    [(OADParagraphProperties *)initWithDefaults setBulletProperties:v12];
    v13 = initWithDefaults;
  }

  return initWithDefaults;
}

- (OADParagraphProperties)init
{
  v3.receiver = self;
  v3.super_class = OADParagraphProperties;
  return [(OADProperties *)&v3 init];
}

+ (id)defaultProperties
{
  if (+[OADParagraphProperties defaultProperties]::once != -1)
  {
    +[OADParagraphProperties defaultProperties];
  }

  v3 = +[OADParagraphProperties defaultProperties]::defaultProperties;

  return v3;
}

- (float)leftMargin
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasLeftMargin];
  v3 = v2[58];

  return v3;
}

- (id)lineSpacing
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasLineSpacing];
  v3 = v2[25];
  v4 = v3;

  return v3;
}

- (id)beforeSpacing
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasBeforeSpacing];
  v3 = v2[26];
  v4 = v3;

  return v3;
}

- (id)afterSpacing
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasAfterSpacing];
  v3 = v2[27];
  v4 = v3;

  return v3;
}

- (int)level
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasLevel];
  v3 = v2[40];

  return v3;
}

- (float)indent
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasIndent];
  v3 = v2[60];

  return v3;
}

- (unsigned)align
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasAlign];
  v3 = v2[252];

  return v3;
}

- (float)defaultTab
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasDefaultTab];
  v3 = v2[61];

  return v3;
}

- (id)bulletSize
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasBulletSize];
  v3 = v2[21];
  v4 = v3;

  return v3;
}

- (id)bulletColor
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasBulletColor];
  v3 = v2[22];
  v4 = v3;

  return v3;
}

- (id)bulletFont
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasBulletFont];
  v3 = v2[23];
  v4 = v3;

  return v3;
}

- (id)bulletProperties
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasBulletProperties];
  v3 = v2[24];
  v4 = v3;

  return v3;
}

- (void)removeUnnecessaryOverrides
{
  parent = [(OADProperties *)self parent];

  if (parent)
  {
    isMerged = [(OADProperties *)self isMerged];
    isMergedWithParent = [(OADProperties *)self isMergedWithParent];
    [(OADProperties *)self setMerged:0];
    [(OADProperties *)self setMergedWithParent:0];
    if (![(OADParagraphProperties *)self hasLineSpacing])
    {
      goto LABEL_10;
    }

    parent2 = [(OADProperties *)self parent];
    lineSpacing = [(OADParagraphProperties *)self lineSpacing];
    lineSpacing2 = [parent2 lineSpacing];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(objc_object *)lineSpacing removeUnnecessaryOverrides];
      v9 = objc_opt_class();
      if (v9 != objc_opt_class())
      {
        goto LABEL_9;
      }

      isMergedWithParent2 = [(objc_object *)lineSpacing isMergedWithParent];
      [(objc_object *)lineSpacing setMergedWithParent:0];
      isAnythingOverridden = [(objc_object *)lineSpacing isAnythingOverridden];
      [(objc_object *)lineSpacing setMergedWithParent:isMergedWithParent2];
      if (isAnythingOverridden)
      {
        goto LABEL_9;
      }
    }

    else if (!TCObjectEqual(lineSpacing, lineSpacing2))
    {
LABEL_9:

LABEL_10:
      if (![(OADParagraphProperties *)self hasBeforeSpacing])
      {
        goto LABEL_18;
      }

      parent3 = [(OADProperties *)self parent];
      beforeSpacing = [(OADParagraphProperties *)self beforeSpacing];
      beforeSpacing2 = [parent3 beforeSpacing];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(objc_object *)beforeSpacing removeUnnecessaryOverrides];
        v16 = objc_opt_class();
        if (v16 != objc_opt_class())
        {
          goto LABEL_17;
        }

        isMergedWithParent3 = [(objc_object *)beforeSpacing isMergedWithParent];
        [(objc_object *)beforeSpacing setMergedWithParent:0];
        isAnythingOverridden2 = [(objc_object *)beforeSpacing isAnythingOverridden];
        [(objc_object *)beforeSpacing setMergedWithParent:isMergedWithParent3];
        if (isAnythingOverridden2)
        {
          goto LABEL_17;
        }
      }

      else if (!TCObjectEqual(beforeSpacing, beforeSpacing2))
      {
LABEL_17:

LABEL_18:
        if (![(OADParagraphProperties *)self hasAfterSpacing])
        {
LABEL_26:
          if ([(OADParagraphProperties *)self hasTabStops])
          {
            tabStops = [(OADParagraphProperties *)self tabStops];
            parent4 = [(OADProperties *)self parent];
            tabStops2 = [parent4 tabStops];
            v30 = [tabStops isEqualToArray:tabStops2];

            if (v30)
            {
              mTabStops = self->mTabStops;
              self->mTabStops = 0;
            }
          }

          if ([(OADParagraphProperties *)self hasLeftMargin])
          {
            parent5 = [(OADProperties *)self parent];
            [(OADParagraphProperties *)self leftMargin];
            v34 = v33;
            [parent5 leftMargin];
            if (v34 == v35)
            {
              [(OADParagraphProperties *)self setLeftMargin:0.0];
              *(self + 255) &= ~8u;
            }
          }

          if ([(OADParagraphProperties *)self hasRightMargin])
          {
            parent6 = [(OADProperties *)self parent];
            [(OADParagraphProperties *)self rightMargin];
            v38 = v37;
            [parent6 rightMargin];
            if (v38 == v39)
            {
              [(OADParagraphProperties *)self setRightMargin:0.0];
              *(self + 255) &= ~0x10u;
            }
          }

          if ([(OADParagraphProperties *)self hasIndent])
          {
            parent7 = [(OADProperties *)self parent];
            [(OADParagraphProperties *)self indent];
            v42 = v41;
            [parent7 indent];
            if (v42 == v43)
            {
              [(OADParagraphProperties *)self setIndent:0.0];
              *(self + 255) &= ~0x20u;
            }
          }

          if ([(OADParagraphProperties *)self hasAlign])
          {
            parent8 = [(OADProperties *)self parent];
            align = [(OADParagraphProperties *)self align];
            if (align == [parent8 align])
            {
              [(OADParagraphProperties *)self setAlign:0];
              *(self + 256) &= ~1u;
            }
          }

          if ([(OADParagraphProperties *)self hasDefaultTab])
          {
            parent9 = [(OADProperties *)self parent];
            [(OADParagraphProperties *)self defaultTab];
            v48 = v47;
            [parent9 defaultTab];
            if (v48 == v49)
            {
              [(OADParagraphProperties *)self setDefaultTab:0.0];
              *(self + 255) &= ~0x40u;
            }
          }

          if ([(OADCharacterProperties *)self hasIsRightToLeft])
          {
            parent10 = [(OADProperties *)self parent];
            isRightToLeft = [(OADCharacterProperties *)self isRightToLeft];
            if (isRightToLeft == [parent10 isRightToLeft])
            {
              [(OADCharacterProperties *)self setIsRightToLeft:0];
              *(&self->super + 158) &= ~2u;
            }
          }

          if ([(OADParagraphProperties *)self hasWrap])
          {
            parent11 = [(OADProperties *)self parent];
            wrap = [(OADParagraphProperties *)self wrap];
            if (wrap == [parent11 wrap])
            {
              [(OADParagraphProperties *)self setWrap:0];
              *(self + 256) &= ~2u;
            }
          }

          if ([(OADParagraphProperties *)self hasFontAlign])
          {
            parent12 = [(OADProperties *)self parent];
            fontAlign = [(OADParagraphProperties *)self fontAlign];
            if (fontAlign == [parent12 fontAlign])
            {
              [(OADParagraphProperties *)self setFontAlign:0];
              *(self + 256) &= ~4u;
            }
          }

          if ([(OADParagraphProperties *)self hasIsLatinLineBreak])
          {
            parent13 = [(OADProperties *)self parent];
            isLatinLineBreak = [(OADParagraphProperties *)self isLatinLineBreak];
            if (isLatinLineBreak == [parent13 isLatinLineBreak])
            {
              [(OADParagraphProperties *)self setIsLatinLineBreak:0];
              *(self + 256) &= ~8u;
            }
          }

          if ([(OADParagraphProperties *)self hasIsHangingPunctuation])
          {
            parent14 = [(OADProperties *)self parent];
            isHangingPunctuation = [(OADParagraphProperties *)self isHangingPunctuation];
            if (isHangingPunctuation == [parent14 isHangingPunctuation])
            {
              [(OADParagraphProperties *)self setIsHangingPunctuation:0];
              *(self + 256) &= ~0x10u;
            }
          }

          if ([(OADParagraphProperties *)self hasBulletCharSet])
          {
            parent15 = [(OADProperties *)self parent];
            bulletCharSet = [(OADParagraphProperties *)self bulletCharSet];
            if (bulletCharSet == [parent15 bulletCharSet])
            {
              [(OADParagraphProperties *)self setBulletCharSet:0];
              *(self + 255) &= ~0x80u;
            }
          }

          if (![(OADParagraphProperties *)self hasBulletSize])
          {
LABEL_81:
            if (![(OADParagraphProperties *)self hasBulletColor])
            {
              goto LABEL_89;
            }

            parent16 = [(OADProperties *)self parent];
            bulletColor = [(OADParagraphProperties *)self bulletColor];
            bulletColor2 = [parent16 bulletColor];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(objc_object *)bulletColor removeUnnecessaryOverrides];
              v72 = objc_opt_class();
              if (v72 != objc_opt_class())
              {
                goto LABEL_88;
              }

              isMergedWithParent4 = [(objc_object *)bulletColor isMergedWithParent];
              [(objc_object *)bulletColor setMergedWithParent:0];
              isAnythingOverridden3 = [(objc_object *)bulletColor isAnythingOverridden];
              [(objc_object *)bulletColor setMergedWithParent:isMergedWithParent4];
              if (isAnythingOverridden3)
              {
                goto LABEL_88;
              }
            }

            else if (!TCObjectEqual(bulletColor, bulletColor2))
            {
LABEL_88:

LABEL_89:
              if (![(OADParagraphProperties *)self hasBulletFont])
              {
                goto LABEL_97;
              }

              parent17 = [(OADProperties *)self parent];
              bulletFont = [(OADParagraphProperties *)self bulletFont];
              bulletFont2 = [parent17 bulletFont];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(objc_object *)bulletFont removeUnnecessaryOverrides];
                v79 = objc_opt_class();
                if (v79 != objc_opt_class())
                {
                  goto LABEL_96;
                }

                isMergedWithParent5 = [(objc_object *)bulletFont isMergedWithParent];
                [(objc_object *)bulletFont setMergedWithParent:0];
                isAnythingOverridden4 = [(objc_object *)bulletFont isAnythingOverridden];
                [(objc_object *)bulletFont setMergedWithParent:isMergedWithParent5];
                if (isAnythingOverridden4)
                {
                  goto LABEL_96;
                }
              }

              else if (!TCObjectEqual(bulletFont, bulletFont2))
              {
LABEL_96:

LABEL_97:
                if (![(OADParagraphProperties *)self hasBulletProperties])
                {
LABEL_105:
                  [(OADProperties *)self setMerged:isMerged];
                  [(OADProperties *)self setMergedWithParent:isMergedWithParent];
                  v90.receiver = self;
                  v90.super_class = OADParagraphProperties;
                  [(OADCharacterProperties *)&v90 removeUnnecessaryOverrides];
                  return;
                }

                parent18 = [(OADProperties *)self parent];
                bulletProperties = [(OADParagraphProperties *)self bulletProperties];
                bulletProperties2 = [parent18 bulletProperties];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [(objc_object *)bulletProperties removeUnnecessaryOverrides];
                  v86 = objc_opt_class();
                  if (v86 != objc_opt_class())
                  {
                    goto LABEL_104;
                  }

                  isMergedWithParent6 = [(objc_object *)bulletProperties isMergedWithParent];
                  [(objc_object *)bulletProperties setMergedWithParent:0];
                  isAnythingOverridden5 = [(objc_object *)bulletProperties isAnythingOverridden];
                  [(objc_object *)bulletProperties setMergedWithParent:isMergedWithParent6];
                  if (isAnythingOverridden5)
                  {
                    goto LABEL_104;
                  }
                }

                else if (!TCObjectEqual(bulletProperties, bulletProperties2))
                {
LABEL_104:

                  goto LABEL_105;
                }

                mBulletProperties = self->mBulletProperties;
                self->mBulletProperties = 0;

                goto LABEL_104;
              }

              mBulletFont = self->mBulletFont;
              self->mBulletFont = 0;

              goto LABEL_96;
            }

            mBulletColor = self->mBulletColor;
            self->mBulletColor = 0;

            goto LABEL_88;
          }

          parent19 = [(OADProperties *)self parent];
          bulletSize = [(OADParagraphProperties *)self bulletSize];
          bulletSize2 = [parent19 bulletSize];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(objc_object *)bulletSize removeUnnecessaryOverrides];
            v65 = objc_opt_class();
            if (v65 != objc_opt_class())
            {
              goto LABEL_80;
            }

            isMergedWithParent7 = [(objc_object *)bulletSize isMergedWithParent];
            [(objc_object *)bulletSize setMergedWithParent:0];
            isAnythingOverridden6 = [(objc_object *)bulletSize isAnythingOverridden];
            [(objc_object *)bulletSize setMergedWithParent:isMergedWithParent7];
            if (isAnythingOverridden6)
            {
              goto LABEL_80;
            }
          }

          else if (!TCObjectEqual(bulletSize, bulletSize2))
          {
LABEL_80:

            goto LABEL_81;
          }

          mBulletSize = self->mBulletSize;
          self->mBulletSize = 0;

          goto LABEL_80;
        }

        parent20 = [(OADProperties *)self parent];
        afterSpacing = [(OADParagraphProperties *)self afterSpacing];
        afterSpacing2 = [parent20 afterSpacing];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(objc_object *)afterSpacing removeUnnecessaryOverrides];
          v23 = objc_opt_class();
          if (v23 != objc_opt_class())
          {
            goto LABEL_25;
          }

          isMergedWithParent8 = [(objc_object *)afterSpacing isMergedWithParent];
          [(objc_object *)afterSpacing setMergedWithParent:0];
          isAnythingOverridden7 = [(objc_object *)afterSpacing isAnythingOverridden];
          [(objc_object *)afterSpacing setMergedWithParent:isMergedWithParent8];
          if (isAnythingOverridden7)
          {
            goto LABEL_25;
          }
        }

        else if (!TCObjectEqual(afterSpacing, afterSpacing2))
        {
LABEL_25:

          goto LABEL_26;
        }

        mAfterSpacing = self->mAfterSpacing;
        self->mAfterSpacing = 0;

        goto LABEL_25;
      }

      mBeforeSpacing = self->mBeforeSpacing;
      self->mBeforeSpacing = 0;

      goto LABEL_17;
    }

    mLineSpacing = self->mLineSpacing;
    self->mLineSpacing = 0;

    goto LABEL_9;
  }
}

- (double)nonOveridenLeftMargin
{
  result = 0.0;
  if ((*(self + 255) & 8) != 0)
  {
    return self->mLeftMargin;
  }

  return result;
}

- (float)rightMargin
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasRightMargin];
  v3 = v2[59];

  return v3;
}

- (int)bulletCharSet
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasBulletCharSet];
  v3 = v2[62];

  return v3;
}

- (id)tabStops
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasTabStops];
  v3 = v2[28];
  v4 = v3;

  return v3;
}

- (unint64_t)hash
{
  v3 = [(OADBulletSize *)self->mBulletSize hash];
  v4 = [(OADBulletColor *)self->mBulletColor hash];
  v5 = [(OADBulletFont *)self->mBulletFont hash];
  v6 = [(OADBulletProperties *)self->mBulletProperties hash];
  v7 = [(OADTextSpacing *)self->mLineSpacing hash];
  v8 = [(OADTextSpacing *)self->mBeforeSpacing hash];
  v9 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(OADTextSpacing *)self->mAfterSpacing hash];
  if ([(NSArray *)self->mTabStops count])
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = [(NSArray *)self->mTabStops objectAtIndex:v10];
      v9 ^= [v12 hash];

      v10 = v11;
    }

    while ([(NSArray *)self->mTabStops count]> v11++);
  }

  mLeftMargin = self->mLeftMargin;
  mRightMargin = self->mRightMargin;
  mIndent = self->mIndent;
  mDefaultTab = self->mDefaultTab;
  mLevel = self->mLevel;
  v19 = LOBYTE(self->mBulletCharSet) ^ self->mFontAlign ^ self->mWrap ^ self->mAlign;
  v20 = ((*(self + 255) ^ (*(&self->super + 158) >> 2)) ^ (*(self + 255) >> 1)) & 1;
  v22.receiver = self;
  v22.super_class = OADParagraphProperties;
  return v9 ^ mLeftMargin ^ mRightMargin ^ mIndent ^ mDefaultTab ^ mLevel ^ v19 ^ [(OADCharacterProperties *)&v22 hash]^ v20;
}

- (unsigned)wrap
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasWrap];
  v3 = v2[253];

  return v3;
}

- (unsigned)fontAlign
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasFontAlign];
  v3 = v2[254];

  return v3;
}

- (BOOL)isLatinLineBreak
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasIsLatinLineBreak];
  v3 = v2[255];

  return v3 & 1;
}

- (BOOL)isHangingPunctuation
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasIsHangingPunctuation];
  v3 = (v2[255] >> 1) & 1;

  return v3;
}

- (void)setIsHangingPunctuation:(BOOL)punctuation
{
  if (punctuation)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 255) = *(self + 255) & 0xFD | v3;
  *(self + 256) |= 0x10u;
}

void __43__OADParagraphProperties_defaultProperties__block_invoke()
{
  v0 = [[OADParagraphProperties alloc] initWithDefaults];
  v1 = +[OADParagraphProperties defaultProperties]::defaultProperties;
  +[OADParagraphProperties defaultProperties]::defaultProperties = v0;
}

- (void)overrideWithProperties:(id)properties
{
  propertiesCopy = properties;
  isMerged = [propertiesCopy isMerged];
  isMergedWithParent = [propertiesCopy isMergedWithParent];
  [propertiesCopy setMerged:0];
  [propertiesCopy setMergedWithParent:0];
  if ([propertiesCopy hasLineSpacing])
  {
    lineSpacing = [propertiesCopy lineSpacing];
    [(OADParagraphProperties *)self setLineSpacing:lineSpacing];
  }

  if ([propertiesCopy hasBeforeSpacing])
  {
    beforeSpacing = [propertiesCopy beforeSpacing];
    [(OADParagraphProperties *)self setBeforeSpacing:beforeSpacing];
  }

  if ([propertiesCopy hasAfterSpacing])
  {
    afterSpacing = [propertiesCopy afterSpacing];
    [(OADParagraphProperties *)self setAfterSpacing:afterSpacing];
  }

  if ([propertiesCopy hasTabStops])
  {
    tabStops = [propertiesCopy tabStops];
    [(OADParagraphProperties *)self setTabStops:tabStops];
  }

  if ([propertiesCopy hasLeftMargin])
  {
    [propertiesCopy leftMargin];
    [(OADParagraphProperties *)self setLeftMargin:?];
  }

  if ([propertiesCopy hasRightMargin])
  {
    [propertiesCopy rightMargin];
    [(OADParagraphProperties *)self setRightMargin:?];
  }

  if ([propertiesCopy hasIndent])
  {
    [propertiesCopy indent];
    [(OADParagraphProperties *)self setIndent:?];
  }

  if ([propertiesCopy hasAlign])
  {
    -[OADParagraphProperties setAlign:](self, "setAlign:", [propertiesCopy align]);
  }

  if ([propertiesCopy hasDefaultTab])
  {
    [propertiesCopy defaultTab];
    [(OADParagraphProperties *)self setDefaultTab:?];
  }

  if ([propertiesCopy hasIsRightToLeft])
  {
    -[OADCharacterProperties setIsRightToLeft:](self, "setIsRightToLeft:", [propertiesCopy isRightToLeft]);
  }

  if ([propertiesCopy hasWrap])
  {
    -[OADParagraphProperties setWrap:](self, "setWrap:", [propertiesCopy wrap]);
  }

  if ([propertiesCopy hasFontAlign])
  {
    -[OADParagraphProperties setFontAlign:](self, "setFontAlign:", [propertiesCopy fontAlign]);
  }

  if ([propertiesCopy hasIsLatinLineBreak])
  {
    -[OADParagraphProperties setIsLatinLineBreak:](self, "setIsLatinLineBreak:", [propertiesCopy isLatinLineBreak]);
  }

  if ([propertiesCopy hasIsHangingPunctuation])
  {
    -[OADParagraphProperties setIsHangingPunctuation:](self, "setIsHangingPunctuation:", [propertiesCopy isHangingPunctuation]);
  }

  if ([propertiesCopy hasBulletSize])
  {
    bulletSize = [propertiesCopy bulletSize];
    [(OADParagraphProperties *)self setBulletSize:bulletSize];
  }

  if ([propertiesCopy hasBulletColor])
  {
    bulletColor = [propertiesCopy bulletColor];
    [(OADParagraphProperties *)self setBulletColor:bulletColor];
  }

  if ([propertiesCopy hasBulletFont])
  {
    bulletFont = [propertiesCopy bulletFont];
    [(OADParagraphProperties *)self setBulletFont:bulletFont];
  }

  if ([propertiesCopy hasBulletProperties])
  {
    bulletProperties = [propertiesCopy bulletProperties];
    [(OADParagraphProperties *)self setBulletProperties:bulletProperties];
  }

  if ([propertiesCopy hasBulletCharSet])
  {
    -[OADParagraphProperties setBulletCharSet:](self, "setBulletCharSet:", [propertiesCopy bulletCharSet]);
  }

  v15.receiver = self;
  v15.super_class = OADParagraphProperties;
  [(OADCharacterProperties *)&v15 overrideWithProperties:propertiesCopy];
  [propertiesCopy setMerged:isMerged];
  [propertiesCopy setMergedWithParent:isMergedWithParent];
}

- (BOOL)isAnythingOverridden
{
  v4.receiver = self;
  v4.super_class = OADParagraphProperties;
  return [(OADCharacterProperties *)&v4 isAnythingOverridden]|| [(OADParagraphProperties *)self hasLineSpacing]|| [(OADParagraphProperties *)self hasBeforeSpacing]|| [(OADParagraphProperties *)self hasAfterSpacing]|| [(OADParagraphProperties *)self hasTabStops]|| [(OADParagraphProperties *)self hasLeftMargin]|| [(OADParagraphProperties *)self hasRightMargin]|| [(OADParagraphProperties *)self hasLevel]|| [(OADParagraphProperties *)self hasIndent]|| [(OADParagraphProperties *)self hasAlign]|| [(OADParagraphProperties *)self hasDefaultTab]|| [(OADParagraphProperties *)self hasWrap]|| [(OADParagraphProperties *)self hasFontAlign]|| [(OADParagraphProperties *)self hasIsLatinLineBreak]|| [(OADParagraphProperties *)self hasIsHangingPunctuation]|| [(OADParagraphProperties *)self hasBulletSize]|| [(OADParagraphProperties *)self hasBulletColor]|| [(OADParagraphProperties *)self hasBulletFont]|| [(OADParagraphProperties *)self hasBulletProperties]|| [(OADParagraphProperties *)self hasBulletCharSet];
}

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values
{
  valuesCopy = values;
  v93.receiver = self;
  v93.super_class = OADParagraphProperties;
  [(OADCharacterProperties *)&v93 fixPropertiesForChangingParentPreservingEffectiveValues:valuesCopy];
  if ((*(self + 255) & 4) != 0 || ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != valuesCopy))
  {
    level = [(OADParagraphProperties *)self level];
    if (level == [valuesCopy level])
    {
      *(self + 255) &= ~4u;
    }

    else if ((*(self + 255) & 4) == 0)
    {
      [(OADParagraphProperties *)self setLevel:[(OADParagraphProperties *)self level]];
    }
  }

  if ([(OADParagraphProperties *)self hasBulletSize]|| ([(OADProperties *)self parent], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 != valuesCopy))
  {
    v8 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasBulletSize];

    if (v8)
    {
      bulletSize = [(OADParagraphProperties *)self bulletSize];
    }

    else
    {
      bulletSize = 0;
    }

    v10 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasBulletSize];

    if (v10)
    {
      bulletSize2 = [valuesCopy bulletSize];
    }

    else
    {
      bulletSize2 = 0;
    }

    v12 = TCObjectEqual(bulletSize, bulletSize2);
    mBulletSize = self->mBulletSize;
    if (v12)
    {
      self->mBulletSize = 0;
    }

    else if (!mBulletSize && v8)
    {
      [(OADParagraphProperties *)self setBulletSize:bulletSize];
    }
  }

  if ([(OADParagraphProperties *)self hasBulletColor]|| ([(OADProperties *)self parent], v14 = objc_claimAutoreleasedReturnValue(), v14, v14 != valuesCopy))
  {
    v15 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasBulletColor];

    if (v15)
    {
      bulletColor = [(OADParagraphProperties *)self bulletColor];
    }

    else
    {
      bulletColor = 0;
    }

    v17 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasBulletColor];

    if (v17)
    {
      bulletColor2 = [valuesCopy bulletColor];
    }

    else
    {
      bulletColor2 = 0;
    }

    v19 = TCObjectEqual(bulletColor, bulletColor2);
    mBulletColor = self->mBulletColor;
    if (v19)
    {
      self->mBulletColor = 0;
    }

    else if (!mBulletColor && v15)
    {
      [(OADParagraphProperties *)self setBulletColor:bulletColor];
    }
  }

  if ([(OADParagraphProperties *)self hasBulletFont]|| ([(OADProperties *)self parent], v21 = objc_claimAutoreleasedReturnValue(), v21, v21 != valuesCopy))
  {
    v22 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasBulletFont];

    if (v22)
    {
      bulletFont = [(OADParagraphProperties *)self bulletFont];
    }

    else
    {
      bulletFont = 0;
    }

    v24 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasBulletFont];

    if (v24)
    {
      bulletFont2 = [valuesCopy bulletFont];
    }

    else
    {
      bulletFont2 = 0;
    }

    v26 = TCObjectEqual(bulletFont, bulletFont2);
    mBulletFont = self->mBulletFont;
    if (v26)
    {
      self->mBulletFont = 0;
    }

    else if (!mBulletFont && v22)
    {
      [(OADParagraphProperties *)self setBulletFont:bulletFont];
    }
  }

  if ([(OADParagraphProperties *)self hasBulletProperties]|| ([(OADProperties *)self parent], v28 = objc_claimAutoreleasedReturnValue(), v28, v28 != valuesCopy))
  {
    v29 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasBulletProperties];

    if (v29)
    {
      bulletProperties = [(OADParagraphProperties *)self bulletProperties];
    }

    else
    {
      bulletProperties = 0;
    }

    v31 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasBulletProperties];

    if (v31)
    {
      bulletProperties2 = [valuesCopy bulletProperties];
    }

    else
    {
      bulletProperties2 = 0;
    }

    v33 = TCObjectEqual(bulletProperties, bulletProperties2);
    mBulletProperties = self->mBulletProperties;
    if (v33)
    {
      self->mBulletProperties = 0;
    }

    else if (!mBulletProperties && v29)
    {
      [(OADParagraphProperties *)self setBulletProperties:bulletProperties];
    }
  }

  if ([(OADParagraphProperties *)self hasLineSpacing]|| ([(OADProperties *)self parent], v35 = objc_claimAutoreleasedReturnValue(), v35, v35 != valuesCopy))
  {
    v36 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasLineSpacing];

    if (v36)
    {
      lineSpacing = [(OADParagraphProperties *)self lineSpacing];
    }

    else
    {
      lineSpacing = 0;
    }

    v38 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasLineSpacing];

    if (v38)
    {
      lineSpacing2 = [valuesCopy lineSpacing];
    }

    else
    {
      lineSpacing2 = 0;
    }

    v40 = TCObjectEqual(lineSpacing, lineSpacing2);
    mLineSpacing = self->mLineSpacing;
    if (v40)
    {
      self->mLineSpacing = 0;
    }

    else if (!mLineSpacing && v36)
    {
      [(OADParagraphProperties *)self setLineSpacing:lineSpacing];
    }
  }

  if ([(OADParagraphProperties *)self hasBeforeSpacing]|| ([(OADProperties *)self parent], v42 = objc_claimAutoreleasedReturnValue(), v42, v42 != valuesCopy))
  {
    v43 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasBeforeSpacing];

    if (v43)
    {
      beforeSpacing = [(OADParagraphProperties *)self beforeSpacing];
    }

    else
    {
      beforeSpacing = 0;
    }

    v45 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasBeforeSpacing];

    if (v45)
    {
      beforeSpacing2 = [valuesCopy beforeSpacing];
    }

    else
    {
      beforeSpacing2 = 0;
    }

    v47 = TCObjectEqual(beforeSpacing, beforeSpacing2);
    mBeforeSpacing = self->mBeforeSpacing;
    if (v47)
    {
      self->mBeforeSpacing = 0;
    }

    else if (!mBeforeSpacing && v43)
    {
      [(OADParagraphProperties *)self setBeforeSpacing:beforeSpacing];
    }
  }

  if ([(OADParagraphProperties *)self hasAfterSpacing]|| ([(OADProperties *)self parent], v49 = objc_claimAutoreleasedReturnValue(), v49, v49 != valuesCopy))
  {
    v50 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasAfterSpacing];

    if (v50)
    {
      afterSpacing = [(OADParagraphProperties *)self afterSpacing];
    }

    else
    {
      afterSpacing = 0;
    }

    v52 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasAfterSpacing];

    if (v52)
    {
      afterSpacing2 = [valuesCopy afterSpacing];
    }

    else
    {
      afterSpacing2 = 0;
    }

    v54 = TCObjectEqual(afterSpacing, afterSpacing2);
    mAfterSpacing = self->mAfterSpacing;
    if (v54)
    {
      self->mAfterSpacing = 0;
    }

    else if (!mAfterSpacing && v50)
    {
      [(OADParagraphProperties *)self setAfterSpacing:afterSpacing];
    }
  }

  if ([(OADParagraphProperties *)self hasTabStops]|| ([(OADProperties *)self parent], v56 = objc_claimAutoreleasedReturnValue(), v56, v56 != valuesCopy))
  {
    v57 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasTabStops];

    if (v57)
    {
      tabStops = [(OADParagraphProperties *)self tabStops];
    }

    else
    {
      tabStops = 0;
    }

    v59 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasTabStops];

    if (v59)
    {
      tabStops2 = [valuesCopy tabStops];
    }

    else
    {
      tabStops2 = 0;
    }

    v61 = TCObjectEqual(tabStops, tabStops2);
    mTabStops = self->mTabStops;
    if (v61)
    {
      self->mTabStops = 0;
    }

    else if (!mTabStops && v57)
    {
      [(OADParagraphProperties *)self setTabStops:tabStops];
    }
  }

  if ((*(self + 255) & 8) != 0 || ([(OADProperties *)self parent], v63 = objc_claimAutoreleasedReturnValue(), v63, v63 != valuesCopy))
  {
    [(OADParagraphProperties *)self leftMargin];
    v65 = v64;
    [valuesCopy leftMargin];
    if (v65 == v66)
    {
      *(self + 255) &= ~8u;
    }

    else if ((*(self + 255) & 8) == 0)
    {
      [(OADParagraphProperties *)self leftMargin];
      [(OADParagraphProperties *)self setLeftMargin:?];
    }
  }

  if ((*(self + 255) & 0x10) != 0 || ([(OADProperties *)self parent], v67 = objc_claimAutoreleasedReturnValue(), v67, v67 != valuesCopy))
  {
    [(OADParagraphProperties *)self rightMargin];
    v69 = v68;
    [valuesCopy rightMargin];
    if (v69 == v70)
    {
      *(self + 255) &= ~0x10u;
    }

    else if ((*(self + 255) & 0x10) == 0)
    {
      [(OADParagraphProperties *)self rightMargin];
      [(OADParagraphProperties *)self setRightMargin:?];
    }
  }

  if ((*(self + 255) & 0x20) != 0 || ([(OADProperties *)self parent], v71 = objc_claimAutoreleasedReturnValue(), v71, v71 != valuesCopy))
  {
    [(OADParagraphProperties *)self indent];
    v73 = v72;
    [valuesCopy indent];
    if (v73 == v74)
    {
      *(self + 255) &= ~0x20u;
    }

    else if ((*(self + 255) & 0x20) == 0)
    {
      [(OADParagraphProperties *)self indent];
      [(OADParagraphProperties *)self setIndent:?];
    }
  }

  if ((*(self + 255) & 0x40) != 0 || ([(OADProperties *)self parent], v75 = objc_claimAutoreleasedReturnValue(), v75, v75 != valuesCopy))
  {
    [(OADParagraphProperties *)self defaultTab];
    v77 = v76;
    [valuesCopy defaultTab];
    if (v77 == v78)
    {
      *(self + 255) &= ~0x40u;
    }

    else if ((*(self + 255) & 0x40) == 0)
    {
      [(OADParagraphProperties *)self defaultTab];
      [(OADParagraphProperties *)self setDefaultTab:?];
    }
  }

  if (*(self + 255) < 0 || ([(OADProperties *)self parent], v79 = objc_claimAutoreleasedReturnValue(), v79, v79 != valuesCopy))
  {
    bulletCharSet = [(OADParagraphProperties *)self bulletCharSet];
    bulletCharSet2 = [valuesCopy bulletCharSet];
    v82 = *(self + 255);
    if (bulletCharSet == bulletCharSet2)
    {
      *(self + 255) = v82 & 0x7F;
    }

    else if ((v82 & 0x80000000) == 0)
    {
      [(OADParagraphProperties *)self setBulletCharSet:[(OADParagraphProperties *)self bulletCharSet]];
    }
  }

  if ((*(self + 256) & 1) != 0 || ([(OADProperties *)self parent], v83 = objc_claimAutoreleasedReturnValue(), v83, v83 != valuesCopy))
  {
    align = [(OADParagraphProperties *)self align];
    if (align == [valuesCopy align])
    {
      *(self + 256) &= ~1u;
    }

    else if ((*(self + 256) & 1) == 0)
    {
      [(OADParagraphProperties *)self setAlign:[(OADParagraphProperties *)self align]];
    }
  }

  if ((*(self + 256) & 2) != 0 || ([(OADProperties *)self parent], v85 = objc_claimAutoreleasedReturnValue(), v85, v85 != valuesCopy))
  {
    wrap = [(OADParagraphProperties *)self wrap];
    if (wrap == [valuesCopy wrap])
    {
      *(self + 256) &= ~2u;
    }

    else if ((*(self + 256) & 2) == 0)
    {
      [(OADParagraphProperties *)self setWrap:[(OADParagraphProperties *)self wrap]];
    }
  }

  if ((*(self + 256) & 4) != 0 || ([(OADProperties *)self parent], v87 = objc_claimAutoreleasedReturnValue(), v87, v87 != valuesCopy))
  {
    fontAlign = [(OADParagraphProperties *)self fontAlign];
    if (fontAlign == [valuesCopy fontAlign])
    {
      *(self + 256) &= ~4u;
    }

    else if ((*(self + 256) & 4) == 0)
    {
      [(OADParagraphProperties *)self setFontAlign:[(OADParagraphProperties *)self fontAlign]];
    }
  }

  if ((*(self + 256) & 8) != 0 || ([(OADProperties *)self parent], v89 = objc_claimAutoreleasedReturnValue(), v89, v89 != valuesCopy))
  {
    isLatinLineBreak = [(OADParagraphProperties *)self isLatinLineBreak];
    if (isLatinLineBreak == [valuesCopy isLatinLineBreak])
    {
      *(self + 256) &= ~8u;
    }

    else if ((*(self + 256) & 8) == 0)
    {
      [(OADParagraphProperties *)self setIsLatinLineBreak:[(OADParagraphProperties *)self isLatinLineBreak]];
    }
  }

  if ((*(self + 256) & 0x10) != 0 || ([(OADProperties *)self parent], v91 = objc_claimAutoreleasedReturnValue(), v91, v91 != valuesCopy))
  {
    isHangingPunctuation = [(OADParagraphProperties *)self isHangingPunctuation];
    if (isHangingPunctuation == [valuesCopy isHangingPunctuation])
    {
      *(self + 256) &= ~0x10u;
    }

    else if ((*(self + 256) & 0x10) == 0)
    {
      [(OADParagraphProperties *)self setIsHangingPunctuation:[(OADParagraphProperties *)self isHangingPunctuation]];
    }
  }
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
    v10 = [(OADParagraphProperties *)self hash];
    v74 = 0;
    if (v10 == [v5 hash])
    {
      v77.receiver = self;
      v77.super_class = OADParagraphProperties;
      if ([(OADCharacterProperties *)&v77 isEqual:v5])
      {
        hasLineSpacing = [v5 hasLineSpacing];
        if (hasLineSpacing == [(OADParagraphProperties *)self hasLineSpacing])
        {
          if (![v5 hasLineSpacing] || (objc_msgSend(v5, "lineSpacing"), v12 = objc_claimAutoreleasedReturnValue(), -[OADParagraphProperties lineSpacing](self, "lineSpacing"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isEqual:", v13), v13, v12, (v14 & 1) != 0))
          {
            hasBeforeSpacing = [v5 hasBeforeSpacing];
            if (hasBeforeSpacing == [(OADParagraphProperties *)self hasBeforeSpacing])
            {
              if (![v5 hasBeforeSpacing] || (objc_msgSend(v5, "beforeSpacing"), v16 = objc_claimAutoreleasedReturnValue(), -[OADParagraphProperties beforeSpacing](self, "beforeSpacing"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "isEqual:", v17), v17, v16, (v18 & 1) != 0))
              {
                hasAfterSpacing = [v5 hasAfterSpacing];
                if (hasAfterSpacing == [(OADParagraphProperties *)self hasAfterSpacing])
                {
                  if (![v5 hasAfterSpacing] || (objc_msgSend(v5, "afterSpacing"), v20 = objc_claimAutoreleasedReturnValue(), -[OADParagraphProperties afterSpacing](self, "afterSpacing"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v20, "isEqual:", v21), v21, v20, (v22 & 1) != 0))
                  {
                    hasTabStops = [v5 hasTabStops];
                    if (hasTabStops == [(OADParagraphProperties *)self hasTabStops])
                    {
                      if (![v5 hasTabStops] || (objc_msgSend(v5, "tabStops"), v24 = objc_claimAutoreleasedReturnValue(), -[OADParagraphProperties tabStops](self, "tabStops"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v24, "isEqualToArray:", v25), v25, v24, (v26 & 1) != 0))
                      {
                        hasLeftMargin = [v5 hasLeftMargin];
                        if (hasLeftMargin == [(OADParagraphProperties *)self hasLeftMargin])
                        {
                          if (![v5 hasLeftMargin] || (objc_msgSend(v5, "leftMargin"), v29 = v28, -[OADParagraphProperties leftMargin](self, "leftMargin"), v29 == v30))
                          {
                            hasRightMargin = [v5 hasRightMargin];
                            if (hasRightMargin == [(OADParagraphProperties *)self hasRightMargin])
                            {
                              if (![v5 hasRightMargin] || (objc_msgSend(v5, "rightMargin"), v33 = v32, -[OADParagraphProperties rightMargin](self, "rightMargin"), v33 == v34))
                              {
                                hasLevel = [v5 hasLevel];
                                if (hasLevel == [(OADParagraphProperties *)self hasLevel])
                                {
                                  if (![v5 hasLevel] || (v36 = objc_msgSend(v5, "level"), v36 == -[OADParagraphProperties level](self, "level")))
                                  {
                                    hasIndent = [v5 hasIndent];
                                    if (hasIndent == [(OADParagraphProperties *)self hasIndent])
                                    {
                                      if (![v5 hasIndent] || (objc_msgSend(v5, "indent"), v39 = v38, -[OADParagraphProperties indent](self, "indent"), v39 == v40))
                                      {
                                        hasAlign = [v5 hasAlign];
                                        if (hasAlign == [(OADParagraphProperties *)self hasAlign])
                                        {
                                          if (![v5 hasAlign] || (v42 = objc_msgSend(v5, "align"), v42 == -[OADParagraphProperties align](self, "align")))
                                          {
                                            hasDefaultTab = [v5 hasDefaultTab];
                                            if (hasDefaultTab == [(OADParagraphProperties *)self hasDefaultTab])
                                            {
                                              if (![v5 hasDefaultTab] || (objc_msgSend(v5, "defaultTab"), v45 = v44, -[OADParagraphProperties defaultTab](self, "defaultTab"), v45 == v46))
                                              {
                                                hasIsRightToLeft = [v5 hasIsRightToLeft];
                                                if (hasIsRightToLeft == [(OADCharacterProperties *)self hasIsRightToLeft])
                                                {
                                                  if (![v5 hasIsRightToLeft] || (v48 = objc_msgSend(v5, "isRightToLeft"), v48 == -[OADCharacterProperties isRightToLeft](self, "isRightToLeft")))
                                                  {
                                                    hasWrap = [v5 hasWrap];
                                                    if (hasWrap == [(OADParagraphProperties *)self hasWrap])
                                                    {
                                                      if (![v5 hasWrap] || (v50 = objc_msgSend(v5, "wrap"), v50 == -[OADParagraphProperties wrap](self, "wrap")))
                                                      {
                                                        hasFontAlign = [v5 hasFontAlign];
                                                        if (hasFontAlign == [(OADParagraphProperties *)self hasFontAlign])
                                                        {
                                                          if (![v5 hasFontAlign] || (v52 = objc_msgSend(v5, "fontAlign"), v52 == -[OADParagraphProperties fontAlign](self, "fontAlign")))
                                                          {
                                                            hasIsLatinLineBreak = [v5 hasIsLatinLineBreak];
                                                            if (hasIsLatinLineBreak == [(OADParagraphProperties *)self hasIsLatinLineBreak])
                                                            {
                                                              if (![v5 hasIsLatinLineBreak] || (v54 = objc_msgSend(v5, "isLatinLineBreak"), v54 == -[OADParagraphProperties isLatinLineBreak](self, "isLatinLineBreak")))
                                                              {
                                                                hasIsHangingPunctuation = [v5 hasIsHangingPunctuation];
                                                                if (hasIsHangingPunctuation == [(OADParagraphProperties *)self hasIsHangingPunctuation])
                                                                {
                                                                  if (![v5 hasIsHangingPunctuation] || (v56 = objc_msgSend(v5, "isHangingPunctuation"), v56 == -[OADParagraphProperties isHangingPunctuation](self, "isHangingPunctuation")))
                                                                  {
                                                                    hasBulletSize = [v5 hasBulletSize];
                                                                    if (hasBulletSize == [(OADParagraphProperties *)self hasBulletSize])
                                                                    {
                                                                      if (![v5 hasBulletSize] || (objc_msgSend(v5, "bulletSize"), v58 = objc_claimAutoreleasedReturnValue(), -[OADParagraphProperties bulletSize](self, "bulletSize"), v59 = objc_claimAutoreleasedReturnValue(), v60 = objc_msgSend(v58, "isEqual:", v59), v59, v58, (v60 & 1) != 0))
                                                                      {
                                                                        hasBulletColor = [v5 hasBulletColor];
                                                                        if (hasBulletColor == [(OADParagraphProperties *)self hasBulletColor])
                                                                        {
                                                                          if (![v5 hasBulletColor] || (objc_msgSend(v5, "bulletColor"), v62 = objc_claimAutoreleasedReturnValue(), -[OADParagraphProperties bulletColor](self, "bulletColor"), v63 = objc_claimAutoreleasedReturnValue(), v64 = objc_msgSend(v62, "isEqual:", v63), v63, v62, (v64 & 1) != 0))
                                                                          {
                                                                            hasBulletFont = [v5 hasBulletFont];
                                                                            if (hasBulletFont == [(OADParagraphProperties *)self hasBulletFont])
                                                                            {
                                                                              if (![v5 hasBulletFont] || (objc_msgSend(v5, "bulletFont"), v66 = objc_claimAutoreleasedReturnValue(), -[OADParagraphProperties bulletFont](self, "bulletFont"), v67 = objc_claimAutoreleasedReturnValue(), v68 = objc_msgSend(v66, "isEqual:", v67), v67, v66, (v68 & 1) != 0))
                                                                              {
                                                                                hasBulletProperties = [v5 hasBulletProperties];
                                                                                if (hasBulletProperties == [(OADParagraphProperties *)self hasBulletProperties])
                                                                                {
                                                                                  if (![v5 hasBulletProperties] || (objc_msgSend(v5, "bulletProperties"), v70 = objc_claimAutoreleasedReturnValue(), -[OADParagraphProperties bulletProperties](self, "bulletProperties"), v71 = objc_claimAutoreleasedReturnValue(), v72 = objc_msgSend(v70, "isEqual:", v71), v71, v70, (v72 & 1) != 0))
                                                                                  {
                                                                                    hasBulletCharSet = [v5 hasBulletCharSet];
                                                                                    if (hasBulletCharSet == [(OADParagraphProperties *)self hasBulletCharSet])
                                                                                    {
                                                                                      if (![v5 hasBulletCharSet] || (v76 = objc_msgSend(v5, "bulletCharSet"), v76 == -[OADParagraphProperties bulletCharSet](self, "bulletCharSet")))
                                                                                      {
                                                                                        v74 = 1;
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    [(OADProperties *)self setMerged:isMerged];
    [(OADProperties *)self setMergedWithParent:isMergedWithParent];
    [v5 setMerged:isMerged2];
    [v5 setMergedWithParent:isMergedWithParent2];
  }

  else
  {
    v74 = 0;
  }

  return v74;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADParagraphProperties;
  v2 = [(OADCharacterProperties *)&v4 description];

  return v2;
}

@end