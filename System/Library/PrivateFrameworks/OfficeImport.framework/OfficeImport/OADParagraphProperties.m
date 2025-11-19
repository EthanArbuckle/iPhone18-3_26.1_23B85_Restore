@interface OADParagraphProperties
+ (id)defaultProperties;
- (BOOL)isAnythingOverridden;
- (BOOL)isEqual:(id)a3;
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
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3;
- (void)overrideWithProperties:(id)a3;
- (void)removeUnnecessaryOverrides;
- (void)setIsHangingPunctuation:(BOOL)a3;
@end

@implementation OADParagraphProperties

- (OADParagraphProperties)initWithDefaults
{
  v15.receiver = self;
  v15.super_class = OADParagraphProperties;
  v2 = [(OADCharacterProperties *)&v15 initWithDefaults];
  if (v2)
  {
    v3 = [OADPercentTextSpacing alloc];
    LODWORD(v4) = 1120403456;
    v5 = [(OADPercentTextSpacing *)v3 initWithPercent:v4];
    [(OADParagraphProperties *)v2 setLineSpacing:v5];
    v6 = [[OADPointTextSpacing alloc] initWithPoints:0];
    [(OADParagraphProperties *)v2 setBeforeSpacing:v6];
    [(OADParagraphProperties *)v2 setAfterSpacing:v6];
    v7 = [MEMORY[0x277CBEA60] array];
    [(OADParagraphProperties *)v2 setTabStops:v7];

    [(OADParagraphProperties *)v2 setLeftMargin:0.0];
    [(OADParagraphProperties *)v2 setRightMargin:0.0];
    [(OADParagraphProperties *)v2 setLevel:0];
    [(OADParagraphProperties *)v2 setIndent:0.0];
    [(OADParagraphProperties *)v2 setAlign:0];
    LODWORD(v8) = 1116733440;
    [(OADParagraphProperties *)v2 setDefaultTab:v8];
    [(OADCharacterProperties *)v2 setIsRightToLeft:0];
    [(OADParagraphProperties *)v2 setWrap:1];
    [(OADParagraphProperties *)v2 setFontAlign:0];
    [(OADParagraphProperties *)v2 setIsLatinLineBreak:1];
    [(OADParagraphProperties *)v2 setIsHangingPunctuation:0];
    [(OADParagraphProperties *)v2 setBulletCharSet:1];
    v9 = objc_alloc_init(OADBulletSizeFollowText);
    [(OADParagraphProperties *)v2 setBulletSize:v9];
    v10 = objc_alloc_init(OADBulletColorFollowText);
    [(OADParagraphProperties *)v2 setBulletColor:v10];
    v11 = objc_alloc_init(OADBulletFontFollowText);
    [(OADParagraphProperties *)v2 setBulletFont:v11];
    v12 = objc_alloc_init(OADNullBulletProperties);
    [(OADParagraphProperties *)v2 setBulletProperties:v12];
    v13 = v2;
  }

  return v2;
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
  v3 = [(OADProperties *)self parent];

  if (v3)
  {
    v4 = [(OADProperties *)self isMerged];
    v5 = [(OADProperties *)self isMergedWithParent];
    [(OADProperties *)self setMerged:0];
    [(OADProperties *)self setMergedWithParent:0];
    if (![(OADParagraphProperties *)self hasLineSpacing])
    {
      goto LABEL_10;
    }

    v6 = [(OADProperties *)self parent];
    v7 = [(OADParagraphProperties *)self lineSpacing];
    v8 = [v6 lineSpacing];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(objc_object *)v7 removeUnnecessaryOverrides];
      v9 = objc_opt_class();
      if (v9 != objc_opt_class())
      {
        goto LABEL_9;
      }

      v10 = [(objc_object *)v7 isMergedWithParent];
      [(objc_object *)v7 setMergedWithParent:0];
      v11 = [(objc_object *)v7 isAnythingOverridden];
      [(objc_object *)v7 setMergedWithParent:v10];
      if (v11)
      {
        goto LABEL_9;
      }
    }

    else if (!TCObjectEqual(v7, v8))
    {
LABEL_9:

LABEL_10:
      if (![(OADParagraphProperties *)self hasBeforeSpacing])
      {
        goto LABEL_18;
      }

      v13 = [(OADProperties *)self parent];
      v14 = [(OADParagraphProperties *)self beforeSpacing];
      v15 = [v13 beforeSpacing];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(objc_object *)v14 removeUnnecessaryOverrides];
        v16 = objc_opt_class();
        if (v16 != objc_opt_class())
        {
          goto LABEL_17;
        }

        v17 = [(objc_object *)v14 isMergedWithParent];
        [(objc_object *)v14 setMergedWithParent:0];
        v18 = [(objc_object *)v14 isAnythingOverridden];
        [(objc_object *)v14 setMergedWithParent:v17];
        if (v18)
        {
          goto LABEL_17;
        }
      }

      else if (!TCObjectEqual(v14, v15))
      {
LABEL_17:

LABEL_18:
        if (![(OADParagraphProperties *)self hasAfterSpacing])
        {
LABEL_26:
          if ([(OADParagraphProperties *)self hasTabStops])
          {
            v27 = [(OADParagraphProperties *)self tabStops];
            v28 = [(OADProperties *)self parent];
            v29 = [v28 tabStops];
            v30 = [v27 isEqualToArray:v29];

            if (v30)
            {
              mTabStops = self->mTabStops;
              self->mTabStops = 0;
            }
          }

          if ([(OADParagraphProperties *)self hasLeftMargin])
          {
            v32 = [(OADProperties *)self parent];
            [(OADParagraphProperties *)self leftMargin];
            v34 = v33;
            [v32 leftMargin];
            if (v34 == v35)
            {
              [(OADParagraphProperties *)self setLeftMargin:0.0];
              *(self + 255) &= ~8u;
            }
          }

          if ([(OADParagraphProperties *)self hasRightMargin])
          {
            v36 = [(OADProperties *)self parent];
            [(OADParagraphProperties *)self rightMargin];
            v38 = v37;
            [v36 rightMargin];
            if (v38 == v39)
            {
              [(OADParagraphProperties *)self setRightMargin:0.0];
              *(self + 255) &= ~0x10u;
            }
          }

          if ([(OADParagraphProperties *)self hasIndent])
          {
            v40 = [(OADProperties *)self parent];
            [(OADParagraphProperties *)self indent];
            v42 = v41;
            [v40 indent];
            if (v42 == v43)
            {
              [(OADParagraphProperties *)self setIndent:0.0];
              *(self + 255) &= ~0x20u;
            }
          }

          if ([(OADParagraphProperties *)self hasAlign])
          {
            v44 = [(OADProperties *)self parent];
            v45 = [(OADParagraphProperties *)self align];
            if (v45 == [v44 align])
            {
              [(OADParagraphProperties *)self setAlign:0];
              *(self + 256) &= ~1u;
            }
          }

          if ([(OADParagraphProperties *)self hasDefaultTab])
          {
            v46 = [(OADProperties *)self parent];
            [(OADParagraphProperties *)self defaultTab];
            v48 = v47;
            [v46 defaultTab];
            if (v48 == v49)
            {
              [(OADParagraphProperties *)self setDefaultTab:0.0];
              *(self + 255) &= ~0x40u;
            }
          }

          if ([(OADCharacterProperties *)self hasIsRightToLeft])
          {
            v50 = [(OADProperties *)self parent];
            v51 = [(OADCharacterProperties *)self isRightToLeft];
            if (v51 == [v50 isRightToLeft])
            {
              [(OADCharacterProperties *)self setIsRightToLeft:0];
              *(&self->super + 158) &= ~2u;
            }
          }

          if ([(OADParagraphProperties *)self hasWrap])
          {
            v52 = [(OADProperties *)self parent];
            v53 = [(OADParagraphProperties *)self wrap];
            if (v53 == [v52 wrap])
            {
              [(OADParagraphProperties *)self setWrap:0];
              *(self + 256) &= ~2u;
            }
          }

          if ([(OADParagraphProperties *)self hasFontAlign])
          {
            v54 = [(OADProperties *)self parent];
            v55 = [(OADParagraphProperties *)self fontAlign];
            if (v55 == [v54 fontAlign])
            {
              [(OADParagraphProperties *)self setFontAlign:0];
              *(self + 256) &= ~4u;
            }
          }

          if ([(OADParagraphProperties *)self hasIsLatinLineBreak])
          {
            v56 = [(OADProperties *)self parent];
            v57 = [(OADParagraphProperties *)self isLatinLineBreak];
            if (v57 == [v56 isLatinLineBreak])
            {
              [(OADParagraphProperties *)self setIsLatinLineBreak:0];
              *(self + 256) &= ~8u;
            }
          }

          if ([(OADParagraphProperties *)self hasIsHangingPunctuation])
          {
            v58 = [(OADProperties *)self parent];
            v59 = [(OADParagraphProperties *)self isHangingPunctuation];
            if (v59 == [v58 isHangingPunctuation])
            {
              [(OADParagraphProperties *)self setIsHangingPunctuation:0];
              *(self + 256) &= ~0x10u;
            }
          }

          if ([(OADParagraphProperties *)self hasBulletCharSet])
          {
            v60 = [(OADProperties *)self parent];
            v61 = [(OADParagraphProperties *)self bulletCharSet];
            if (v61 == [v60 bulletCharSet])
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

            v69 = [(OADProperties *)self parent];
            v70 = [(OADParagraphProperties *)self bulletColor];
            v71 = [v69 bulletColor];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(objc_object *)v70 removeUnnecessaryOverrides];
              v72 = objc_opt_class();
              if (v72 != objc_opt_class())
              {
                goto LABEL_88;
              }

              v73 = [(objc_object *)v70 isMergedWithParent];
              [(objc_object *)v70 setMergedWithParent:0];
              v74 = [(objc_object *)v70 isAnythingOverridden];
              [(objc_object *)v70 setMergedWithParent:v73];
              if (v74)
              {
                goto LABEL_88;
              }
            }

            else if (!TCObjectEqual(v70, v71))
            {
LABEL_88:

LABEL_89:
              if (![(OADParagraphProperties *)self hasBulletFont])
              {
                goto LABEL_97;
              }

              v76 = [(OADProperties *)self parent];
              v77 = [(OADParagraphProperties *)self bulletFont];
              v78 = [v76 bulletFont];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(objc_object *)v77 removeUnnecessaryOverrides];
                v79 = objc_opt_class();
                if (v79 != objc_opt_class())
                {
                  goto LABEL_96;
                }

                v80 = [(objc_object *)v77 isMergedWithParent];
                [(objc_object *)v77 setMergedWithParent:0];
                v81 = [(objc_object *)v77 isAnythingOverridden];
                [(objc_object *)v77 setMergedWithParent:v80];
                if (v81)
                {
                  goto LABEL_96;
                }
              }

              else if (!TCObjectEqual(v77, v78))
              {
LABEL_96:

LABEL_97:
                if (![(OADParagraphProperties *)self hasBulletProperties])
                {
LABEL_105:
                  [(OADProperties *)self setMerged:v4];
                  [(OADProperties *)self setMergedWithParent:v5];
                  v90.receiver = self;
                  v90.super_class = OADParagraphProperties;
                  [(OADCharacterProperties *)&v90 removeUnnecessaryOverrides];
                  return;
                }

                v83 = [(OADProperties *)self parent];
                v84 = [(OADParagraphProperties *)self bulletProperties];
                v85 = [v83 bulletProperties];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [(objc_object *)v84 removeUnnecessaryOverrides];
                  v86 = objc_opt_class();
                  if (v86 != objc_opt_class())
                  {
                    goto LABEL_104;
                  }

                  v87 = [(objc_object *)v84 isMergedWithParent];
                  [(objc_object *)v84 setMergedWithParent:0];
                  v88 = [(objc_object *)v84 isAnythingOverridden];
                  [(objc_object *)v84 setMergedWithParent:v87];
                  if (v88)
                  {
                    goto LABEL_104;
                  }
                }

                else if (!TCObjectEqual(v84, v85))
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

          v62 = [(OADProperties *)self parent];
          v63 = [(OADParagraphProperties *)self bulletSize];
          v64 = [v62 bulletSize];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(objc_object *)v63 removeUnnecessaryOverrides];
            v65 = objc_opt_class();
            if (v65 != objc_opt_class())
            {
              goto LABEL_80;
            }

            v66 = [(objc_object *)v63 isMergedWithParent];
            [(objc_object *)v63 setMergedWithParent:0];
            v67 = [(objc_object *)v63 isAnythingOverridden];
            [(objc_object *)v63 setMergedWithParent:v66];
            if (v67)
            {
              goto LABEL_80;
            }
          }

          else if (!TCObjectEqual(v63, v64))
          {
LABEL_80:

            goto LABEL_81;
          }

          mBulletSize = self->mBulletSize;
          self->mBulletSize = 0;

          goto LABEL_80;
        }

        v20 = [(OADProperties *)self parent];
        v21 = [(OADParagraphProperties *)self afterSpacing];
        v22 = [v20 afterSpacing];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(objc_object *)v21 removeUnnecessaryOverrides];
          v23 = objc_opt_class();
          if (v23 != objc_opt_class())
          {
            goto LABEL_25;
          }

          v24 = [(objc_object *)v21 isMergedWithParent];
          [(objc_object *)v21 setMergedWithParent:0];
          v25 = [(objc_object *)v21 isAnythingOverridden];
          [(objc_object *)v21 setMergedWithParent:v24];
          if (v25)
          {
            goto LABEL_25;
          }
        }

        else if (!TCObjectEqual(v21, v22))
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

- (void)setIsHangingPunctuation:(BOOL)a3
{
  if (a3)
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

- (void)overrideWithProperties:(id)a3
{
  v4 = a3;
  v5 = [v4 isMerged];
  v6 = [v4 isMergedWithParent];
  [v4 setMerged:0];
  [v4 setMergedWithParent:0];
  if ([v4 hasLineSpacing])
  {
    v7 = [v4 lineSpacing];
    [(OADParagraphProperties *)self setLineSpacing:v7];
  }

  if ([v4 hasBeforeSpacing])
  {
    v8 = [v4 beforeSpacing];
    [(OADParagraphProperties *)self setBeforeSpacing:v8];
  }

  if ([v4 hasAfterSpacing])
  {
    v9 = [v4 afterSpacing];
    [(OADParagraphProperties *)self setAfterSpacing:v9];
  }

  if ([v4 hasTabStops])
  {
    v10 = [v4 tabStops];
    [(OADParagraphProperties *)self setTabStops:v10];
  }

  if ([v4 hasLeftMargin])
  {
    [v4 leftMargin];
    [(OADParagraphProperties *)self setLeftMargin:?];
  }

  if ([v4 hasRightMargin])
  {
    [v4 rightMargin];
    [(OADParagraphProperties *)self setRightMargin:?];
  }

  if ([v4 hasIndent])
  {
    [v4 indent];
    [(OADParagraphProperties *)self setIndent:?];
  }

  if ([v4 hasAlign])
  {
    -[OADParagraphProperties setAlign:](self, "setAlign:", [v4 align]);
  }

  if ([v4 hasDefaultTab])
  {
    [v4 defaultTab];
    [(OADParagraphProperties *)self setDefaultTab:?];
  }

  if ([v4 hasIsRightToLeft])
  {
    -[OADCharacterProperties setIsRightToLeft:](self, "setIsRightToLeft:", [v4 isRightToLeft]);
  }

  if ([v4 hasWrap])
  {
    -[OADParagraphProperties setWrap:](self, "setWrap:", [v4 wrap]);
  }

  if ([v4 hasFontAlign])
  {
    -[OADParagraphProperties setFontAlign:](self, "setFontAlign:", [v4 fontAlign]);
  }

  if ([v4 hasIsLatinLineBreak])
  {
    -[OADParagraphProperties setIsLatinLineBreak:](self, "setIsLatinLineBreak:", [v4 isLatinLineBreak]);
  }

  if ([v4 hasIsHangingPunctuation])
  {
    -[OADParagraphProperties setIsHangingPunctuation:](self, "setIsHangingPunctuation:", [v4 isHangingPunctuation]);
  }

  if ([v4 hasBulletSize])
  {
    v11 = [v4 bulletSize];
    [(OADParagraphProperties *)self setBulletSize:v11];
  }

  if ([v4 hasBulletColor])
  {
    v12 = [v4 bulletColor];
    [(OADParagraphProperties *)self setBulletColor:v12];
  }

  if ([v4 hasBulletFont])
  {
    v13 = [v4 bulletFont];
    [(OADParagraphProperties *)self setBulletFont:v13];
  }

  if ([v4 hasBulletProperties])
  {
    v14 = [v4 bulletProperties];
    [(OADParagraphProperties *)self setBulletProperties:v14];
  }

  if ([v4 hasBulletCharSet])
  {
    -[OADParagraphProperties setBulletCharSet:](self, "setBulletCharSet:", [v4 bulletCharSet]);
  }

  v15.receiver = self;
  v15.super_class = OADParagraphProperties;
  [(OADCharacterProperties *)&v15 overrideWithProperties:v4];
  [v4 setMerged:v5];
  [v4 setMergedWithParent:v6];
}

- (BOOL)isAnythingOverridden
{
  v4.receiver = self;
  v4.super_class = OADParagraphProperties;
  return [(OADCharacterProperties *)&v4 isAnythingOverridden]|| [(OADParagraphProperties *)self hasLineSpacing]|| [(OADParagraphProperties *)self hasBeforeSpacing]|| [(OADParagraphProperties *)self hasAfterSpacing]|| [(OADParagraphProperties *)self hasTabStops]|| [(OADParagraphProperties *)self hasLeftMargin]|| [(OADParagraphProperties *)self hasRightMargin]|| [(OADParagraphProperties *)self hasLevel]|| [(OADParagraphProperties *)self hasIndent]|| [(OADParagraphProperties *)self hasAlign]|| [(OADParagraphProperties *)self hasDefaultTab]|| [(OADParagraphProperties *)self hasWrap]|| [(OADParagraphProperties *)self hasFontAlign]|| [(OADParagraphProperties *)self hasIsLatinLineBreak]|| [(OADParagraphProperties *)self hasIsHangingPunctuation]|| [(OADParagraphProperties *)self hasBulletSize]|| [(OADParagraphProperties *)self hasBulletColor]|| [(OADParagraphProperties *)self hasBulletFont]|| [(OADParagraphProperties *)self hasBulletProperties]|| [(OADParagraphProperties *)self hasBulletCharSet];
}

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3
{
  v4 = a3;
  v93.receiver = self;
  v93.super_class = OADParagraphProperties;
  [(OADCharacterProperties *)&v93 fixPropertiesForChangingParentPreservingEffectiveValues:v4];
  if ((*(self + 255) & 4) != 0 || ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != v4))
  {
    v6 = [(OADParagraphProperties *)self level];
    if (v6 == [v4 level])
    {
      *(self + 255) &= ~4u;
    }

    else if ((*(self + 255) & 4) == 0)
    {
      [(OADParagraphProperties *)self setLevel:[(OADParagraphProperties *)self level]];
    }
  }

  if ([(OADParagraphProperties *)self hasBulletSize]|| ([(OADProperties *)self parent], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 != v4))
  {
    v8 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasBulletSize];

    if (v8)
    {
      v9 = [(OADParagraphProperties *)self bulletSize];
    }

    else
    {
      v9 = 0;
    }

    v10 = [v4 possiblyInexistentOverrideForSelector:sel_hasBulletSize];

    if (v10)
    {
      v11 = [v4 bulletSize];
    }

    else
    {
      v11 = 0;
    }

    v12 = TCObjectEqual(v9, v11);
    mBulletSize = self->mBulletSize;
    if (v12)
    {
      self->mBulletSize = 0;
    }

    else if (!mBulletSize && v8)
    {
      [(OADParagraphProperties *)self setBulletSize:v9];
    }
  }

  if ([(OADParagraphProperties *)self hasBulletColor]|| ([(OADProperties *)self parent], v14 = objc_claimAutoreleasedReturnValue(), v14, v14 != v4))
  {
    v15 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasBulletColor];

    if (v15)
    {
      v16 = [(OADParagraphProperties *)self bulletColor];
    }

    else
    {
      v16 = 0;
    }

    v17 = [v4 possiblyInexistentOverrideForSelector:sel_hasBulletColor];

    if (v17)
    {
      v18 = [v4 bulletColor];
    }

    else
    {
      v18 = 0;
    }

    v19 = TCObjectEqual(v16, v18);
    mBulletColor = self->mBulletColor;
    if (v19)
    {
      self->mBulletColor = 0;
    }

    else if (!mBulletColor && v15)
    {
      [(OADParagraphProperties *)self setBulletColor:v16];
    }
  }

  if ([(OADParagraphProperties *)self hasBulletFont]|| ([(OADProperties *)self parent], v21 = objc_claimAutoreleasedReturnValue(), v21, v21 != v4))
  {
    v22 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasBulletFont];

    if (v22)
    {
      v23 = [(OADParagraphProperties *)self bulletFont];
    }

    else
    {
      v23 = 0;
    }

    v24 = [v4 possiblyInexistentOverrideForSelector:sel_hasBulletFont];

    if (v24)
    {
      v25 = [v4 bulletFont];
    }

    else
    {
      v25 = 0;
    }

    v26 = TCObjectEqual(v23, v25);
    mBulletFont = self->mBulletFont;
    if (v26)
    {
      self->mBulletFont = 0;
    }

    else if (!mBulletFont && v22)
    {
      [(OADParagraphProperties *)self setBulletFont:v23];
    }
  }

  if ([(OADParagraphProperties *)self hasBulletProperties]|| ([(OADProperties *)self parent], v28 = objc_claimAutoreleasedReturnValue(), v28, v28 != v4))
  {
    v29 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasBulletProperties];

    if (v29)
    {
      v30 = [(OADParagraphProperties *)self bulletProperties];
    }

    else
    {
      v30 = 0;
    }

    v31 = [v4 possiblyInexistentOverrideForSelector:sel_hasBulletProperties];

    if (v31)
    {
      v32 = [v4 bulletProperties];
    }

    else
    {
      v32 = 0;
    }

    v33 = TCObjectEqual(v30, v32);
    mBulletProperties = self->mBulletProperties;
    if (v33)
    {
      self->mBulletProperties = 0;
    }

    else if (!mBulletProperties && v29)
    {
      [(OADParagraphProperties *)self setBulletProperties:v30];
    }
  }

  if ([(OADParagraphProperties *)self hasLineSpacing]|| ([(OADProperties *)self parent], v35 = objc_claimAutoreleasedReturnValue(), v35, v35 != v4))
  {
    v36 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasLineSpacing];

    if (v36)
    {
      v37 = [(OADParagraphProperties *)self lineSpacing];
    }

    else
    {
      v37 = 0;
    }

    v38 = [v4 possiblyInexistentOverrideForSelector:sel_hasLineSpacing];

    if (v38)
    {
      v39 = [v4 lineSpacing];
    }

    else
    {
      v39 = 0;
    }

    v40 = TCObjectEqual(v37, v39);
    mLineSpacing = self->mLineSpacing;
    if (v40)
    {
      self->mLineSpacing = 0;
    }

    else if (!mLineSpacing && v36)
    {
      [(OADParagraphProperties *)self setLineSpacing:v37];
    }
  }

  if ([(OADParagraphProperties *)self hasBeforeSpacing]|| ([(OADProperties *)self parent], v42 = objc_claimAutoreleasedReturnValue(), v42, v42 != v4))
  {
    v43 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasBeforeSpacing];

    if (v43)
    {
      v44 = [(OADParagraphProperties *)self beforeSpacing];
    }

    else
    {
      v44 = 0;
    }

    v45 = [v4 possiblyInexistentOverrideForSelector:sel_hasBeforeSpacing];

    if (v45)
    {
      v46 = [v4 beforeSpacing];
    }

    else
    {
      v46 = 0;
    }

    v47 = TCObjectEqual(v44, v46);
    mBeforeSpacing = self->mBeforeSpacing;
    if (v47)
    {
      self->mBeforeSpacing = 0;
    }

    else if (!mBeforeSpacing && v43)
    {
      [(OADParagraphProperties *)self setBeforeSpacing:v44];
    }
  }

  if ([(OADParagraphProperties *)self hasAfterSpacing]|| ([(OADProperties *)self parent], v49 = objc_claimAutoreleasedReturnValue(), v49, v49 != v4))
  {
    v50 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasAfterSpacing];

    if (v50)
    {
      v51 = [(OADParagraphProperties *)self afterSpacing];
    }

    else
    {
      v51 = 0;
    }

    v52 = [v4 possiblyInexistentOverrideForSelector:sel_hasAfterSpacing];

    if (v52)
    {
      v53 = [v4 afterSpacing];
    }

    else
    {
      v53 = 0;
    }

    v54 = TCObjectEqual(v51, v53);
    mAfterSpacing = self->mAfterSpacing;
    if (v54)
    {
      self->mAfterSpacing = 0;
    }

    else if (!mAfterSpacing && v50)
    {
      [(OADParagraphProperties *)self setAfterSpacing:v51];
    }
  }

  if ([(OADParagraphProperties *)self hasTabStops]|| ([(OADProperties *)self parent], v56 = objc_claimAutoreleasedReturnValue(), v56, v56 != v4))
  {
    v57 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasTabStops];

    if (v57)
    {
      v58 = [(OADParagraphProperties *)self tabStops];
    }

    else
    {
      v58 = 0;
    }

    v59 = [v4 possiblyInexistentOverrideForSelector:sel_hasTabStops];

    if (v59)
    {
      v60 = [v4 tabStops];
    }

    else
    {
      v60 = 0;
    }

    v61 = TCObjectEqual(v58, v60);
    mTabStops = self->mTabStops;
    if (v61)
    {
      self->mTabStops = 0;
    }

    else if (!mTabStops && v57)
    {
      [(OADParagraphProperties *)self setTabStops:v58];
    }
  }

  if ((*(self + 255) & 8) != 0 || ([(OADProperties *)self parent], v63 = objc_claimAutoreleasedReturnValue(), v63, v63 != v4))
  {
    [(OADParagraphProperties *)self leftMargin];
    v65 = v64;
    [v4 leftMargin];
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

  if ((*(self + 255) & 0x10) != 0 || ([(OADProperties *)self parent], v67 = objc_claimAutoreleasedReturnValue(), v67, v67 != v4))
  {
    [(OADParagraphProperties *)self rightMargin];
    v69 = v68;
    [v4 rightMargin];
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

  if ((*(self + 255) & 0x20) != 0 || ([(OADProperties *)self parent], v71 = objc_claimAutoreleasedReturnValue(), v71, v71 != v4))
  {
    [(OADParagraphProperties *)self indent];
    v73 = v72;
    [v4 indent];
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

  if ((*(self + 255) & 0x40) != 0 || ([(OADProperties *)self parent], v75 = objc_claimAutoreleasedReturnValue(), v75, v75 != v4))
  {
    [(OADParagraphProperties *)self defaultTab];
    v77 = v76;
    [v4 defaultTab];
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

  if (*(self + 255) < 0 || ([(OADProperties *)self parent], v79 = objc_claimAutoreleasedReturnValue(), v79, v79 != v4))
  {
    v80 = [(OADParagraphProperties *)self bulletCharSet];
    v81 = [v4 bulletCharSet];
    v82 = *(self + 255);
    if (v80 == v81)
    {
      *(self + 255) = v82 & 0x7F;
    }

    else if ((v82 & 0x80000000) == 0)
    {
      [(OADParagraphProperties *)self setBulletCharSet:[(OADParagraphProperties *)self bulletCharSet]];
    }
  }

  if ((*(self + 256) & 1) != 0 || ([(OADProperties *)self parent], v83 = objc_claimAutoreleasedReturnValue(), v83, v83 != v4))
  {
    v84 = [(OADParagraphProperties *)self align];
    if (v84 == [v4 align])
    {
      *(self + 256) &= ~1u;
    }

    else if ((*(self + 256) & 1) == 0)
    {
      [(OADParagraphProperties *)self setAlign:[(OADParagraphProperties *)self align]];
    }
  }

  if ((*(self + 256) & 2) != 0 || ([(OADProperties *)self parent], v85 = objc_claimAutoreleasedReturnValue(), v85, v85 != v4))
  {
    v86 = [(OADParagraphProperties *)self wrap];
    if (v86 == [v4 wrap])
    {
      *(self + 256) &= ~2u;
    }

    else if ((*(self + 256) & 2) == 0)
    {
      [(OADParagraphProperties *)self setWrap:[(OADParagraphProperties *)self wrap]];
    }
  }

  if ((*(self + 256) & 4) != 0 || ([(OADProperties *)self parent], v87 = objc_claimAutoreleasedReturnValue(), v87, v87 != v4))
  {
    v88 = [(OADParagraphProperties *)self fontAlign];
    if (v88 == [v4 fontAlign])
    {
      *(self + 256) &= ~4u;
    }

    else if ((*(self + 256) & 4) == 0)
    {
      [(OADParagraphProperties *)self setFontAlign:[(OADParagraphProperties *)self fontAlign]];
    }
  }

  if ((*(self + 256) & 8) != 0 || ([(OADProperties *)self parent], v89 = objc_claimAutoreleasedReturnValue(), v89, v89 != v4))
  {
    v90 = [(OADParagraphProperties *)self isLatinLineBreak];
    if (v90 == [v4 isLatinLineBreak])
    {
      *(self + 256) &= ~8u;
    }

    else if ((*(self + 256) & 8) == 0)
    {
      [(OADParagraphProperties *)self setIsLatinLineBreak:[(OADParagraphProperties *)self isLatinLineBreak]];
    }
  }

  if ((*(self + 256) & 0x10) != 0 || ([(OADProperties *)self parent], v91 = objc_claimAutoreleasedReturnValue(), v91, v91 != v4))
  {
    v92 = [(OADParagraphProperties *)self isHangingPunctuation];
    if (v92 == [v4 isHangingPunctuation])
    {
      *(self + 256) &= ~0x10u;
    }

    else if ((*(self + 256) & 0x10) == 0)
    {
      [(OADParagraphProperties *)self setIsHangingPunctuation:[(OADParagraphProperties *)self isHangingPunctuation]];
    }
  }
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
    v10 = [(OADParagraphProperties *)self hash];
    v74 = 0;
    if (v10 == [v5 hash])
    {
      v77.receiver = self;
      v77.super_class = OADParagraphProperties;
      if ([(OADCharacterProperties *)&v77 isEqual:v5])
      {
        v11 = [v5 hasLineSpacing];
        if (v11 == [(OADParagraphProperties *)self hasLineSpacing])
        {
          if (![v5 hasLineSpacing] || (objc_msgSend(v5, "lineSpacing"), v12 = objc_claimAutoreleasedReturnValue(), -[OADParagraphProperties lineSpacing](self, "lineSpacing"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isEqual:", v13), v13, v12, (v14 & 1) != 0))
          {
            v15 = [v5 hasBeforeSpacing];
            if (v15 == [(OADParagraphProperties *)self hasBeforeSpacing])
            {
              if (![v5 hasBeforeSpacing] || (objc_msgSend(v5, "beforeSpacing"), v16 = objc_claimAutoreleasedReturnValue(), -[OADParagraphProperties beforeSpacing](self, "beforeSpacing"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "isEqual:", v17), v17, v16, (v18 & 1) != 0))
              {
                v19 = [v5 hasAfterSpacing];
                if (v19 == [(OADParagraphProperties *)self hasAfterSpacing])
                {
                  if (![v5 hasAfterSpacing] || (objc_msgSend(v5, "afterSpacing"), v20 = objc_claimAutoreleasedReturnValue(), -[OADParagraphProperties afterSpacing](self, "afterSpacing"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v20, "isEqual:", v21), v21, v20, (v22 & 1) != 0))
                  {
                    v23 = [v5 hasTabStops];
                    if (v23 == [(OADParagraphProperties *)self hasTabStops])
                    {
                      if (![v5 hasTabStops] || (objc_msgSend(v5, "tabStops"), v24 = objc_claimAutoreleasedReturnValue(), -[OADParagraphProperties tabStops](self, "tabStops"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v24, "isEqualToArray:", v25), v25, v24, (v26 & 1) != 0))
                      {
                        v27 = [v5 hasLeftMargin];
                        if (v27 == [(OADParagraphProperties *)self hasLeftMargin])
                        {
                          if (![v5 hasLeftMargin] || (objc_msgSend(v5, "leftMargin"), v29 = v28, -[OADParagraphProperties leftMargin](self, "leftMargin"), v29 == v30))
                          {
                            v31 = [v5 hasRightMargin];
                            if (v31 == [(OADParagraphProperties *)self hasRightMargin])
                            {
                              if (![v5 hasRightMargin] || (objc_msgSend(v5, "rightMargin"), v33 = v32, -[OADParagraphProperties rightMargin](self, "rightMargin"), v33 == v34))
                              {
                                v35 = [v5 hasLevel];
                                if (v35 == [(OADParagraphProperties *)self hasLevel])
                                {
                                  if (![v5 hasLevel] || (v36 = objc_msgSend(v5, "level"), v36 == -[OADParagraphProperties level](self, "level")))
                                  {
                                    v37 = [v5 hasIndent];
                                    if (v37 == [(OADParagraphProperties *)self hasIndent])
                                    {
                                      if (![v5 hasIndent] || (objc_msgSend(v5, "indent"), v39 = v38, -[OADParagraphProperties indent](self, "indent"), v39 == v40))
                                      {
                                        v41 = [v5 hasAlign];
                                        if (v41 == [(OADParagraphProperties *)self hasAlign])
                                        {
                                          if (![v5 hasAlign] || (v42 = objc_msgSend(v5, "align"), v42 == -[OADParagraphProperties align](self, "align")))
                                          {
                                            v43 = [v5 hasDefaultTab];
                                            if (v43 == [(OADParagraphProperties *)self hasDefaultTab])
                                            {
                                              if (![v5 hasDefaultTab] || (objc_msgSend(v5, "defaultTab"), v45 = v44, -[OADParagraphProperties defaultTab](self, "defaultTab"), v45 == v46))
                                              {
                                                v47 = [v5 hasIsRightToLeft];
                                                if (v47 == [(OADCharacterProperties *)self hasIsRightToLeft])
                                                {
                                                  if (![v5 hasIsRightToLeft] || (v48 = objc_msgSend(v5, "isRightToLeft"), v48 == -[OADCharacterProperties isRightToLeft](self, "isRightToLeft")))
                                                  {
                                                    v49 = [v5 hasWrap];
                                                    if (v49 == [(OADParagraphProperties *)self hasWrap])
                                                    {
                                                      if (![v5 hasWrap] || (v50 = objc_msgSend(v5, "wrap"), v50 == -[OADParagraphProperties wrap](self, "wrap")))
                                                      {
                                                        v51 = [v5 hasFontAlign];
                                                        if (v51 == [(OADParagraphProperties *)self hasFontAlign])
                                                        {
                                                          if (![v5 hasFontAlign] || (v52 = objc_msgSend(v5, "fontAlign"), v52 == -[OADParagraphProperties fontAlign](self, "fontAlign")))
                                                          {
                                                            v53 = [v5 hasIsLatinLineBreak];
                                                            if (v53 == [(OADParagraphProperties *)self hasIsLatinLineBreak])
                                                            {
                                                              if (![v5 hasIsLatinLineBreak] || (v54 = objc_msgSend(v5, "isLatinLineBreak"), v54 == -[OADParagraphProperties isLatinLineBreak](self, "isLatinLineBreak")))
                                                              {
                                                                v55 = [v5 hasIsHangingPunctuation];
                                                                if (v55 == [(OADParagraphProperties *)self hasIsHangingPunctuation])
                                                                {
                                                                  if (![v5 hasIsHangingPunctuation] || (v56 = objc_msgSend(v5, "isHangingPunctuation"), v56 == -[OADParagraphProperties isHangingPunctuation](self, "isHangingPunctuation")))
                                                                  {
                                                                    v57 = [v5 hasBulletSize];
                                                                    if (v57 == [(OADParagraphProperties *)self hasBulletSize])
                                                                    {
                                                                      if (![v5 hasBulletSize] || (objc_msgSend(v5, "bulletSize"), v58 = objc_claimAutoreleasedReturnValue(), -[OADParagraphProperties bulletSize](self, "bulletSize"), v59 = objc_claimAutoreleasedReturnValue(), v60 = objc_msgSend(v58, "isEqual:", v59), v59, v58, (v60 & 1) != 0))
                                                                      {
                                                                        v61 = [v5 hasBulletColor];
                                                                        if (v61 == [(OADParagraphProperties *)self hasBulletColor])
                                                                        {
                                                                          if (![v5 hasBulletColor] || (objc_msgSend(v5, "bulletColor"), v62 = objc_claimAutoreleasedReturnValue(), -[OADParagraphProperties bulletColor](self, "bulletColor"), v63 = objc_claimAutoreleasedReturnValue(), v64 = objc_msgSend(v62, "isEqual:", v63), v63, v62, (v64 & 1) != 0))
                                                                          {
                                                                            v65 = [v5 hasBulletFont];
                                                                            if (v65 == [(OADParagraphProperties *)self hasBulletFont])
                                                                            {
                                                                              if (![v5 hasBulletFont] || (objc_msgSend(v5, "bulletFont"), v66 = objc_claimAutoreleasedReturnValue(), -[OADParagraphProperties bulletFont](self, "bulletFont"), v67 = objc_claimAutoreleasedReturnValue(), v68 = objc_msgSend(v66, "isEqual:", v67), v67, v66, (v68 & 1) != 0))
                                                                              {
                                                                                v69 = [v5 hasBulletProperties];
                                                                                if (v69 == [(OADParagraphProperties *)self hasBulletProperties])
                                                                                {
                                                                                  if (![v5 hasBulletProperties] || (objc_msgSend(v5, "bulletProperties"), v70 = objc_claimAutoreleasedReturnValue(), -[OADParagraphProperties bulletProperties](self, "bulletProperties"), v71 = objc_claimAutoreleasedReturnValue(), v72 = objc_msgSend(v70, "isEqual:", v71), v71, v70, (v72 & 1) != 0))
                                                                                  {
                                                                                    v73 = [v5 hasBulletCharSet];
                                                                                    if (v73 == [(OADParagraphProperties *)self hasBulletCharSet])
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

    [(OADProperties *)self setMerged:v6];
    [(OADProperties *)self setMergedWithParent:v7];
    [v5 setMerged:v8];
    [v5 setMergedWithParent:v9];
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