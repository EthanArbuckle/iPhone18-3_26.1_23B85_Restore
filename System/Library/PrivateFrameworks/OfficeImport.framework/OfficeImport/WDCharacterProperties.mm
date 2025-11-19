@interface WDCharacterProperties
+ (SEL)fontOverriddenSelectorForFontType:(int)a3;
+ (SEL)fontSelectorForFontType:(int)a3;
+ (SEL)setFontSelectorForFontType:(int)a3;
- (BOOL)compressHorizontalInVertical;
- (BOOL)deletionDifferentFrom:(id)a3;
- (BOOL)deletionDifferentFrom:(id)a3 mode:(int)a4;
- (BOOL)editDifferentFrom:(id)a3;
- (BOOL)editDifferentFrom:(id)a3 mode:(int)a4;
- (BOOL)embeddedObject;
- (BOOL)formattingChangedDifferentFrom:(id)a3;
- (BOOL)formattingChangedDifferentFrom:(id)a3 mode:(int)a4;
- (BOOL)horizontalInVertical;
- (BOOL)isAnythingOverriddenIn:(id)a3;
- (BOOL)isBaseStyleOverridden;
- (BOOL)isBoldForBiTextOverridden;
- (BOOL)isBoldOverridden;
- (BOOL)isBooleanProbablyDifferent:(unsigned __int8)a3 than:(unsigned __int8)a4;
- (BOOL)isBorderOverridden;
- (BOOL)isBracketTwoLinesInOneOverridden;
- (BOOL)isCapsOverridden;
- (BOOL)isCharPositionOfPictureBulletInBookmarkOverridden;
- (BOOL)isColorAuto;
- (BOOL)isColorAutoOverridden;
- (BOOL)isColorOverridden;
- (BOOL)isCompressHorizontalInVerticalOverridden;
- (BOOL)isDeletedOverridden;
- (BOOL)isDeletionDateOverridden;
- (BOOL)isDoubleStrikeThroughOverridden;
- (BOOL)isEditDateOverridden;
- (BOOL)isEditedOverridden;
- (BOOL)isEmbeddedObjectOverridden;
- (BOOL)isEmbossedOverridden;
- (BOOL)isEmphasisMarkOverridden;
- (BOOL)isExtendedFontOverridden;
- (BOOL)isFarEastFontOverridden;
- (BOOL)isFontHintOverridden;
- (BOOL)isFontOverridden;
- (BOOL)isFontOverriddenForFontType:(int)a3;
- (BOOL)isFontSizeForBiTextOverridden;
- (BOOL)isFontSizeOverridden;
- (BOOL)isFormattingChangedOverridden;
- (BOOL)isHiddenOverridden;
- (BOOL)isHighlight;
- (BOOL)isHighlightColorOverridden;
- (BOOL)isHighlightOverridden;
- (BOOL)isHorizontalInVerticalOverridden;
- (BOOL)isImprintOverridden;
- (BOOL)isIndexToAuthorIDOfDeletionOverridden;
- (BOOL)isIndexToAuthorIDOfEditOverridden;
- (BOOL)isIndexToAuthorIDOfFormattingChangeOverridden;
- (BOOL)isItalicForBiTextOverridden;
- (BOOL)isItalicOverridden;
- (BOOL)isKerningOverridden;
- (BOOL)isLanguageForBiTextOverridden;
- (BOOL)isLanguageForDefaultTextOverridden;
- (BOOL)isLanguageForFarEastOverridden;
- (BOOL)isLigatureOverridden;
- (BOOL)isListCharacterPictureBullet;
- (BOOL)isListCharacterPictureBulletOverridden;
- (BOOL)isLowerCase;
- (BOOL)isLowerCaseOverridden;
- (BOOL)isObjectIDForOle2Overridden;
- (BOOL)isOffsetToPictureDataOverridden;
- (BOOL)isOle2Overridden;
- (BOOL)isOutline2010WidthOverridden;
- (BOOL)isOutlineColorOverridden;
- (BOOL)isOutlineOverridden;
- (BOOL)isPositionOverridden;
- (BOOL)isReflectionOverridden;
- (BOOL)isRightToLeftOverridden;
- (BOOL)isShadingOverridden;
- (BOOL)isShadow2010OpacityOverridden;
- (BOOL)isShadow2010Overridden;
- (BOOL)isShadowOverridden;
- (BOOL)isSmallCapsOverridden;
- (BOOL)isSpacingOverridden;
- (BOOL)isSpecialCharacter;
- (BOOL)isSpecialCharacterOverridden;
- (BOOL)isStrikeThroughOverridden;
- (BOOL)isSymbolCharacterOverridden;
- (BOOL)isSymbolFontOverridden;
- (BOOL)isTextScaleOverridden;
- (BOOL)isTwoLinesInOneOverridden;
- (BOOL)isUnderlineColorOverridden;
- (BOOL)isUnderlineOverridden;
- (BOOL)isUseCsFontOverridden;
- (BOOL)isVerticalAlignOverridden;
- (BOOL)ole2;
- (BOOL)twoLinesInOne;
- (WDCharacterProperties)initWithDocument:(id)a3;
- (WDDocument)document;
- (float)outline2010Width;
- (float)shadow2010Opacity;
- (id)baseStyle;
- (id)border;
- (id)color;
- (id)copyWithZone:(_NSZone *)a3;
- (id)deletionDate;
- (id)description;
- (id)editDate;
- (id)extendedFont;
- (id)farEastFont;
- (id)font;
- (id)fontForFontType:(int)a3;
- (id)mutableBorder;
- (id)mutableShading;
- (id)outlineColor;
- (id)reflection;
- (id)shading;
- (id)shadow2010;
- (id)symbolFont;
- (id)underlineColor;
- (int)bold;
- (int)boldForBiText;
- (int)bracketTwoLinesInOne;
- (int)caps;
- (int)charPositionOfPictureBulletInBookmark;
- (int)deleted;
- (int)doubleStrikeThrough;
- (int)edited;
- (int)embossed;
- (int)emphasisMark;
- (int)fontHint;
- (int)formattingChanged;
- (int)hidden;
- (int)highlightColor;
- (int)imprint;
- (int)italic;
- (int)italicForBiText;
- (int)languageForBiText;
- (int)languageForDefaultText;
- (int)languageForFarEast;
- (int)ligature;
- (int)objectIDForOle2;
- (int)offsetToPictureData;
- (int)outline;
- (int)resolveMode;
- (int)reverseBooleanProperty:(int)a3;
- (int)rightToLeft;
- (int)shadow;
- (int)smallCaps;
- (int)strikeThrough;
- (int)underline;
- (int)useCsFont;
- (int)verticalAlign;
- (signed)position;
- (signed)spacing;
- (unsigned)fontSize;
- (unsigned)fontSizeForBiText;
- (unsigned)indexToAuthorIDOfDeletion;
- (unsigned)indexToAuthorIDOfEdit;
- (unsigned)indexToAuthorIDOfFormattingChange;
- (unsigned)kerning;
- (unsigned)symbolCharacter;
- (unsigned)textScale;
- (void)applyPropertiesFrom:(id)a3 ifOverriddenIn:(id)a4;
- (void)clearBaseStyle;
- (void)copyPropertiesInto:(id)a3;
- (void)negateFormattingChangesWithDefaults:(id)a3;
- (void)removeEmptyFormattingChanges:(id)a3;
- (void)setBaseStyle:(id)a3;
- (void)setBold:(int)a3;
- (void)setBoldForBiText:(int)a3;
- (void)setBracketTwoLinesInOne:(int)a3;
- (void)setCaps:(int)a3;
- (void)setCharPositionOfPictureBulletInBookmark:(int)a3;
- (void)setColor:(id)a3;
- (void)setColorAuto:(BOOL)a3;
- (void)setCompressHorizontalInVertical:(BOOL)a3;
- (void)setDeleted:(int)a3;
- (void)setDeletionDate:(id)a3;
- (void)setDoubleStrikeThrough:(int)a3;
- (void)setEditDate:(id)a3;
- (void)setEdited:(int)a3;
- (void)setEmbeddedObject:(BOOL)a3;
- (void)setEmbossed:(int)a3;
- (void)setEmphasisMark:(int)a3;
- (void)setExtendedFont:(id)a3;
- (void)setFarEastFont:(id)a3;
- (void)setFont:(id)a3;
- (void)setFont:(id)a3 forFontType:(int)a4;
- (void)setFontHint:(int)a3;
- (void)setFontSize:(unsigned __int16)a3;
- (void)setFontSizeForBiText:(unsigned __int16)a3;
- (void)setFormattingChanged:(int)a3;
- (void)setHidden:(int)a3;
- (void)setHighlight:(BOOL)a3;
- (void)setHighlightColor:(int)a3;
- (void)setHorizontalInVertical:(BOOL)a3;
- (void)setImprint:(int)a3;
- (void)setIndexToAuthorIDOfDeletion:(unsigned __int16)a3;
- (void)setIndexToAuthorIDOfEdit:(unsigned __int16)a3;
- (void)setIndexToAuthorIDOfFormattingChange:(unsigned __int16)a3;
- (void)setItalic:(int)a3;
- (void)setItalicForBiText:(int)a3;
- (void)setKerning:(unsigned __int16)a3;
- (void)setLanguageForBiText:(int)a3;
- (void)setLanguageForDefaultText:(int)a3;
- (void)setLanguageForFarEast:(int)a3;
- (void)setLigature:(int)a3;
- (void)setListCharacterPictureBullet:(BOOL)a3;
- (void)setLowerCase:(BOOL)a3;
- (void)setObjectIDForOle2:(int)a3;
- (void)setOffsetToPictureData:(int)a3;
- (void)setOle2:(BOOL)a3;
- (void)setOutline2010Width:(float)a3;
- (void)setOutline:(int)a3;
- (void)setOutlineColor:(id)a3;
- (void)setPosition:(signed __int16)a3;
- (void)setReflection:(id)a3;
- (void)setResolveMode:(int)a3;
- (void)setRightToLeft:(int)a3;
- (void)setShadow2010:(id)a3;
- (void)setShadow2010Opacity:(float)a3;
- (void)setShadow:(int)a3;
- (void)setSmallCaps:(int)a3;
- (void)setSpacing:(signed __int16)a3;
- (void)setSpecialCharacter:(BOOL)a3;
- (void)setStrikeThrough:(int)a3;
- (void)setSymbolCharacter:(unsigned __int16)a3;
- (void)setSymbolFont:(id)a3;
- (void)setTextScale:(unsigned __int16)a3;
- (void)setTwoLinesInOne:(BOOL)a3;
- (void)setUnderline:(int)a3;
- (void)setUnderlineColor:(id)a3;
- (void)setUseCsFont:(int)a3;
- (void)setVerticalAlign:(int)a3;
@end

@implementation WDCharacterProperties

- (id)mutableBorder
{
  if (!self->mTracked)
  {
    if (self->mOriginal)
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties || (v10 = objc_alloc_init(WDCharacterPropertiesValues), v11 = self->mOriginalProperties, self->mOriginalProperties = v10, v11, (mOriginalProperties = self->mOriginalProperties) != 0))
      {
        v12 = [(WDCharacterPropertiesValues *)mOriginalProperties border];

        v7 = self->mOriginalProperties;
        if (!v12)
        {
          [(WDCharacterPropertiesValues *)v7 setBorderOverridden:1];
          v8 = self->mOriginalProperties;
          goto LABEL_13;
        }

LABEL_10:
        v13 = [(WDCharacterPropertiesValues *)v7 border];
        goto LABEL_14;
      }
    }

LABEL_11:
    v13 = 0;
    goto LABEL_14;
  }

  mTrackedProperties = self->mTrackedProperties;
  if (!mTrackedProperties)
  {
    v4 = objc_alloc_init(WDCharacterPropertiesValues);
    v5 = self->mTrackedProperties;
    self->mTrackedProperties = v4;

    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_11;
    }
  }

  v6 = [(WDCharacterPropertiesValues *)mTrackedProperties border];

  v7 = self->mTrackedProperties;
  if (v6)
  {
    goto LABEL_10;
  }

  [(WDCharacterPropertiesValues *)v7 setBorderOverridden:1];
  v8 = self->mTrackedProperties;
LABEL_13:
  v13 = objc_alloc_init(WDBorder);
  [(WDCharacterPropertiesValues *)v8 setBorder:v13];
LABEL_14:

  return v13;
}

- (id)mutableShading
{
  if (!self->mTracked)
  {
    if (self->mOriginal)
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties || (v10 = objc_alloc_init(WDCharacterPropertiesValues), v11 = self->mOriginalProperties, self->mOriginalProperties = v10, v11, (mOriginalProperties = self->mOriginalProperties) != 0))
      {
        v12 = [(WDCharacterPropertiesValues *)mOriginalProperties shading];

        v7 = self->mOriginalProperties;
        if (!v12)
        {
          [(WDCharacterPropertiesValues *)v7 setShadingOverridden:1];
          v8 = self->mOriginalProperties;
          goto LABEL_13;
        }

LABEL_10:
        v13 = [(WDCharacterPropertiesValues *)v7 shading];
        goto LABEL_14;
      }
    }

LABEL_11:
    v13 = 0;
    goto LABEL_14;
  }

  mTrackedProperties = self->mTrackedProperties;
  if (!mTrackedProperties)
  {
    v4 = objc_alloc_init(WDCharacterPropertiesValues);
    v5 = self->mTrackedProperties;
    self->mTrackedProperties = v4;

    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_11;
    }
  }

  v6 = [(WDCharacterPropertiesValues *)mTrackedProperties shading];

  v7 = self->mTrackedProperties;
  if (v6)
  {
    goto LABEL_10;
  }

  [(WDCharacterPropertiesValues *)v7 setShadingOverridden:1];
  v8 = self->mTrackedProperties;
LABEL_13:
  v13 = objc_alloc_init(WDShading);
  [(WDCharacterPropertiesValues *)v8 setShading:v13];
LABEL_14:

  return v13;
}

- (void)clearBaseStyle
{
  if (self->mTracked || self->mResolved && (mTrackedProperties = self->mTrackedProperties) != 0 && [(WDCharacterPropertiesValues *)mTrackedProperties baseStyleOverridden])
  {
    v3 = 24;
  }

  else
  {
    if (!self->mOriginal)
    {
      if (!self->mResolved)
      {
        return;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDCharacterPropertiesValues *)mOriginalProperties baseStyleOverridden])
      {
        return;
      }
    }

    v3 = 16;
  }

  [*(&self->super.isa + v3) setBaseStyleOverridden:0];
  v5 = *(&self->super.isa + v3);

  [v5 setBaseStyle:0];
}

- (BOOL)isListCharacterPictureBulletOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties listCharacterPictureBulletOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 listCharacterPictureBulletOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties listCharacterPictureBulletOverridden];
}

- (BOOL)isRightToLeftOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties rightToLeftOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 rightToLeftOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties rightToLeftOverridden];
}

- (BOOL)isDeletedOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties deletedOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 deletedOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties deletedOverridden];
}

- (BOOL)isBaseStyleOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties baseStyleOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 baseStyleOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties baseStyleOverridden];
}

- (BOOL)isBoldOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties boldOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 boldOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties boldOverridden];
}

- (BOOL)isItalicOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties italicOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 italicOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties italicOverridden];
}

- (BOOL)isStrikeThroughOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties strikeThroughOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 strikeThroughOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties strikeThroughOverridden];
}

- (BOOL)isDoubleStrikeThroughOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties doubleStrikeThroughOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 doubleStrikeThroughOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties doubleStrikeThroughOverridden];
}

- (BOOL)isFontSizeOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties fontSizeOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 fontSizeOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties fontSizeOverridden];
}

- (unsigned)fontSize
{
  if (!self->mTracked && !self->mResolved || (p_mTrackedProperties = &self->mTrackedProperties, (mTrackedProperties = self->mTrackedProperties) == 0) || ![(WDCharacterPropertiesValues *)mTrackedProperties fontSizeOverridden])
  {
    if (!self->mOriginal && !self->mResolved)
    {
      return 20;
    }

    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v5 = mOriginalProperties;
    if (!mOriginalProperties)
    {
      return 20;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if (![(WDCharacterPropertiesValues *)v5 fontSizeOverridden])
    {
      return 20;
    }
  }

  v8 = *p_mTrackedProperties;

  return [(WDCharacterPropertiesValues *)v8 fontSize];
}

- (BOOL)isVerticalAlignOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties verticalAlignOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 verticalAlignOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties verticalAlignOverridden];
}

- (BOOL)isFontOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties fontOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 fontOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties fontOverridden];
}

- (BOOL)isUnderlineOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties underlineOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 underlineOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties underlineOverridden];
}

- (BOOL)isSmallCapsOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties smallCapsOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 smallCapsOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties smallCapsOverridden];
}

- (BOOL)isCapsOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties capsOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 capsOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties capsOverridden];
}

- (BOOL)isColorOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties colorOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 colorOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties colorOverridden];
}

- (BOOL)isShadingOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties shadingOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 shadingOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties shadingOverridden];
}

- (int)underline
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties underlineOverridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    LODWORD(v5) = 0;
    return v5;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (mOriginalProperties)
  {
    LODWORD(v5) = [(WDCharacterPropertiesValues *)v5 underlineOverridden];
    p_mTrackedProperties = p_mOriginalProperties;
    if (v5)
    {
LABEL_9:
      LODWORD(v5) = [(WDCharacterPropertiesValues *)*p_mTrackedProperties underline];
    }
  }

  return v5;
}

- (BOOL)isHiddenOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties hiddenOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 hiddenOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties hiddenOverridden];
}

- (int)bold
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties boldOverridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    LODWORD(v5) = 0;
    return v5;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (mOriginalProperties)
  {
    LODWORD(v5) = [(WDCharacterPropertiesValues *)v5 boldOverridden];
    p_mTrackedProperties = p_mOriginalProperties;
    if (v5)
    {
LABEL_9:
      LODWORD(v5) = [(WDCharacterPropertiesValues *)*p_mTrackedProperties bold];
    }
  }

  return v5;
}

- (int)italic
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties italicOverridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    LODWORD(v5) = 0;
    return v5;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (mOriginalProperties)
  {
    LODWORD(v5) = [(WDCharacterPropertiesValues *)v5 italicOverridden];
    p_mTrackedProperties = p_mOriginalProperties;
    if (v5)
    {
LABEL_9:
      LODWORD(v5) = [(WDCharacterPropertiesValues *)*p_mTrackedProperties italic];
    }
  }

  return v5;
}

- (id)baseStyle
{
  if (self->mTracked || self->mResolved)
  {
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties baseStyleOverridden])
      {
        v4 = self->mTrackedProperties;
LABEL_11:
        v6 = [(WDCharacterPropertiesValues *)v4 baseStyle];
        goto LABEL_13;
      }
    }
  }

  if (self->mOriginal || self->mResolved)
  {
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      if ([(WDCharacterPropertiesValues *)mOriginalProperties baseStyleOverridden])
      {
        v4 = self->mOriginalProperties;
        goto LABEL_11;
      }
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->mDocument);
  v8 = [WeakRetained styleSheet];
  v6 = [v8 defaultCharacterStyle];

LABEL_13:

  return v6;
}

- (id)color
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties colorOverridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    goto LABEL_10;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    goto LABEL_11;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if ([v5 colorOverridden])
  {
LABEL_9:
    v5 = [(WDCharacterPropertiesValues *)*p_mTrackedProperties color];
  }

  else
  {
LABEL_10:
    v5 = 0;
  }

LABEL_11:

  return v5;
}

- (id)font
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties fontOverridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    goto LABEL_10;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    goto LABEL_11;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if ([v5 fontOverridden])
  {
LABEL_9:
    v5 = [(WDCharacterPropertiesValues *)*p_mTrackedProperties font];
  }

  else
  {
LABEL_10:
    v5 = 0;
  }

LABEL_11:

  return v5;
}

- (int)caps
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties capsOverridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    LODWORD(v5) = 0;
    return v5;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (mOriginalProperties)
  {
    LODWORD(v5) = [(WDCharacterPropertiesValues *)v5 capsOverridden];
    p_mTrackedProperties = p_mOriginalProperties;
    if (v5)
    {
LABEL_9:
      LODWORD(v5) = [(WDCharacterPropertiesValues *)*p_mTrackedProperties caps];
    }
  }

  return v5;
}

- (int)verticalAlign
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties verticalAlignOverridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    LODWORD(v5) = 0;
    return v5;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (mOriginalProperties)
  {
    LODWORD(v5) = [(WDCharacterPropertiesValues *)v5 verticalAlignOverridden];
    p_mTrackedProperties = p_mOriginalProperties;
    if (v5)
    {
LABEL_9:
      LODWORD(v5) = [(WDCharacterPropertiesValues *)*p_mTrackedProperties verticalAlign];
    }
  }

  return v5;
}

- (BOOL)isListCharacterPictureBullet
{
  if (!self->mTracked && !self->mResolved || (p_mTrackedProperties = &self->mTrackedProperties, (mTrackedProperties = self->mTrackedProperties) == 0) || ![(WDCharacterPropertiesValues *)mTrackedProperties listCharacterPictureBulletOverridden])
  {
    if (!self->mOriginal && !self->mResolved)
    {
      return 0;
    }

    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v5 = mOriginalProperties;
    if (!mOriginalProperties)
    {
      return 0;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if (![(WDCharacterPropertiesValues *)v5 listCharacterPictureBulletOverridden])
    {
      return 0;
    }
  }

  v8 = *p_mTrackedProperties;

  return [(WDCharacterPropertiesValues *)v8 listCharacterPictureBullet];
}

- (BOOL)isCharPositionOfPictureBulletInBookmarkOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties charPositionOfPictureBulletInBookmarkOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 charPositionOfPictureBulletInBookmarkOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties charPositionOfPictureBulletInBookmarkOverridden];
}

- (int)charPositionOfPictureBulletInBookmark
{
  if (!self->mTracked && !self->mResolved || (p_mTrackedProperties = &self->mTrackedProperties, (mTrackedProperties = self->mTrackedProperties) == 0) || ![(WDCharacterPropertiesValues *)mTrackedProperties charPositionOfPictureBulletInBookmarkOverridden])
  {
    if (!self->mOriginal && !self->mResolved)
    {
      return 0;
    }

    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v5 = mOriginalProperties;
    if (!mOriginalProperties)
    {
      return 0;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if (![(WDCharacterPropertiesValues *)v5 charPositionOfPictureBulletInBookmarkOverridden])
    {
      return 0;
    }
  }

  v8 = *p_mTrackedProperties;

  return [(WDCharacterPropertiesValues *)v8 charPositionOfPictureBulletInBookmark];
}

- (WDDocument)document
{
  WeakRetained = objc_loadWeakRetained(&self->mDocument);

  return WeakRetained;
}

- (BOOL)isFormattingChangedOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties formattingChangedOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 formattingChangedOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties formattingChangedOverridden];
}

- (int)formattingChanged
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties formattingChangedOverridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    LODWORD(v5) = 0;
    return v5;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (mOriginalProperties)
  {
    LODWORD(v5) = [(WDCharacterPropertiesValues *)v5 formattingChangedOverridden];
    p_mTrackedProperties = p_mOriginalProperties;
    if (v5)
    {
LABEL_9:
      LODWORD(v5) = [(WDCharacterPropertiesValues *)*p_mTrackedProperties formattingChanged];
    }
  }

  return v5;
}

- (int)doubleStrikeThrough
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties doubleStrikeThroughOverridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    LODWORD(v5) = 0;
    return v5;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (mOriginalProperties)
  {
    LODWORD(v5) = [(WDCharacterPropertiesValues *)v5 doubleStrikeThroughOverridden];
    p_mTrackedProperties = p_mOriginalProperties;
    if (v5)
    {
LABEL_9:
      LODWORD(v5) = [(WDCharacterPropertiesValues *)*p_mTrackedProperties doubleStrikeThrough];
    }
  }

  return v5;
}

- (int)smallCaps
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties smallCapsOverridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    LODWORD(v5) = 0;
    return v5;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (mOriginalProperties)
  {
    LODWORD(v5) = [(WDCharacterPropertiesValues *)v5 smallCapsOverridden];
    p_mTrackedProperties = p_mOriginalProperties;
    if (v5)
    {
LABEL_9:
      LODWORD(v5) = [(WDCharacterPropertiesValues *)*p_mTrackedProperties smallCaps];
    }
  }

  return v5;
}

- (id)editDate
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties editDateOverridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    goto LABEL_10;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    goto LABEL_11;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if ([v5 editDateOverridden])
  {
LABEL_9:
    v5 = [(WDCharacterPropertiesValues *)*p_mTrackedProperties editDate];
  }

  else
  {
LABEL_10:
    v5 = 0;
  }

LABEL_11:

  return v5;
}

- (unsigned)indexToAuthorIDOfEdit
{
  if (!self->mTracked && !self->mResolved || (p_mTrackedProperties = &self->mTrackedProperties, (mTrackedProperties = self->mTrackedProperties) == 0) || ![(WDCharacterPropertiesValues *)mTrackedProperties indexToAuthorIDOfEditOverridden])
  {
    if (!self->mOriginal && !self->mResolved)
    {
      return 0;
    }

    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v5 = mOriginalProperties;
    if (!mOriginalProperties)
    {
      return 0;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if (![(WDCharacterPropertiesValues *)v5 indexToAuthorIDOfEditOverridden])
    {
      return 0;
    }
  }

  v8 = *p_mTrackedProperties;

  return [(WDCharacterPropertiesValues *)v8 indexToAuthorIDOfEdit];
}

- (id)deletionDate
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties deletionDateOverridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    goto LABEL_10;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    goto LABEL_11;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if ([v5 deletionDateOverridden])
  {
LABEL_9:
    v5 = [(WDCharacterPropertiesValues *)*p_mTrackedProperties deletionDate];
  }

  else
  {
LABEL_10:
    v5 = 0;
  }

LABEL_11:

  return v5;
}

- (unsigned)indexToAuthorIDOfDeletion
{
  if (!self->mTracked && !self->mResolved || (p_mTrackedProperties = &self->mTrackedProperties, (mTrackedProperties = self->mTrackedProperties) == 0) || ![(WDCharacterPropertiesValues *)mTrackedProperties indexToAuthorIDOfDeletionOverridden])
  {
    if (!self->mOriginal && !self->mResolved)
    {
      return 0;
    }

    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v5 = mOriginalProperties;
    if (!mOriginalProperties)
    {
      return 0;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if (![(WDCharacterPropertiesValues *)v5 indexToAuthorIDOfDeletionOverridden])
    {
      return 0;
    }
  }

  v8 = *p_mTrackedProperties;

  return [(WDCharacterPropertiesValues *)v8 indexToAuthorIDOfDeletion];
}

- (int)deleted
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties deletedOverridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    LODWORD(v5) = 0;
    return v5;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (mOriginalProperties)
  {
    LODWORD(v5) = [(WDCharacterPropertiesValues *)v5 deletedOverridden];
    p_mTrackedProperties = p_mOriginalProperties;
    if (v5)
    {
LABEL_9:
      LODWORD(v5) = [(WDCharacterPropertiesValues *)*p_mTrackedProperties deleted];
    }
  }

  return v5;
}

- (int)hidden
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties hiddenOverridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    LODWORD(v5) = 0;
    return v5;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (mOriginalProperties)
  {
    LODWORD(v5) = [(WDCharacterPropertiesValues *)v5 hiddenOverridden];
    p_mTrackedProperties = p_mOriginalProperties;
    if (v5)
    {
LABEL_9:
      LODWORD(v5) = [(WDCharacterPropertiesValues *)*p_mTrackedProperties hidden];
    }
  }

  return v5;
}

- (id)shading
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties shadingOverridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    goto LABEL_10;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    goto LABEL_11;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if ([v5 shadingOverridden])
  {
LABEL_9:
    v5 = [(WDCharacterPropertiesValues *)*p_mTrackedProperties shading];
  }

  else
  {
LABEL_10:
    v5 = 0;
  }

LABEL_11:

  return v5;
}

- (int)rightToLeft
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties rightToLeftOverridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    LODWORD(v5) = 0;
    return v5;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (mOriginalProperties)
  {
    LODWORD(v5) = [(WDCharacterPropertiesValues *)v5 rightToLeftOverridden];
    p_mTrackedProperties = p_mOriginalProperties;
    if (v5)
    {
LABEL_9:
      LODWORD(v5) = [(WDCharacterPropertiesValues *)*p_mTrackedProperties rightToLeft];
    }
  }

  return v5;
}

- (int)strikeThrough
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties strikeThroughOverridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    LODWORD(v5) = 0;
    return v5;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (mOriginalProperties)
  {
    LODWORD(v5) = [(WDCharacterPropertiesValues *)v5 strikeThroughOverridden];
    p_mTrackedProperties = p_mOriginalProperties;
    if (v5)
    {
LABEL_9:
      LODWORD(v5) = [(WDCharacterPropertiesValues *)*p_mTrackedProperties strikeThrough];
    }
  }

  return v5;
}

- (WDCharacterProperties)initWithDocument:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WDCharacterProperties;
  v5 = [(WDCharacterProperties *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mDocument, v4);
    *&v6->mOriginal = 1;
    v6->mResolved = 0;
    mOriginalProperties = v6->mOriginalProperties;
    v6->mOriginalProperties = 0;

    mTrackedProperties = v6->mTrackedProperties;
    v6->mTrackedProperties = 0;
  }

  return v6;
}

- (int)resolveMode
{
  if (self->mOriginal)
  {
    return 0;
  }

  if (self->mTracked)
  {
    return 1;
  }

  if (self->mResolved)
  {
    return 2;
  }

  return 0;
}

- (void)setResolveMode:(int)a3
{
  self->mTracked = a3 == 1;
  self->mResolved = a3 == 2;
  self->mOriginal = a3 == 0;
}

- (void)negateFormattingChangesWithDefaults:(id)a3
{
  v132 = a3;
  [(WDCharacterProperties *)self setResolveMode:2];
  if ([(WDCharacterProperties *)self isFormattingChangedOverridden]&& [(WDCharacterProperties *)self formattingChanged])
  {
    [(WDCharacterProperties *)self setResolveMode:1];
    [v132 setResolveMode:2];
    mOriginalProperties = self->mOriginalProperties;
    if (!mOriginalProperties)
    {
      goto LABEL_296;
    }

    if ([(WDCharacterPropertiesValues *)mOriginalProperties baseStyleOverridden])
    {
      mTrackedProperties = self->mTrackedProperties;
      if (!mTrackedProperties || ![(WDCharacterPropertiesValues *)mTrackedProperties baseStyleOverridden])
      {
        if ([v132 isBaseStyleOverridden])
        {
          v6 = [v132 baseStyle];
          [(WDCharacterProperties *)self setBaseStyle:v6];
        }
      }
    }

    v7 = self->mOriginalProperties;
    if (!v7)
    {
      goto LABEL_296;
    }

    if ([(WDCharacterPropertiesValues *)v7 borderOverridden])
    {
      v8 = self->mTrackedProperties;
      if (!v8 || ![(WDCharacterPropertiesValues *)v8 borderOverridden])
      {
        v9 = [(WDCharacterProperties *)self mutableBorder];
        v10 = [(WDCharacterPropertiesValues *)self->mOriginalProperties border];
        v11 = [v10 style];

        if (v11)
        {
          [v9 setNullBorder];
        }

        else if ([v132 isBorderOverridden])
        {
          v12 = [v132 border];
          [v9 setBorder:v12];
        }

        else
        {
          [v9 setSingleBlackBorder];
        }
      }
    }

    v13 = self->mOriginalProperties;
    if (!v13)
    {
      goto LABEL_296;
    }

    if ([(WDCharacterPropertiesValues *)v13 shadingOverridden])
    {
      v14 = self->mTrackedProperties;
      if (!v14 || ![(WDCharacterPropertiesValues *)v14 shadingOverridden])
      {
        v15 = [(WDCharacterProperties *)self mutableShading];
        v16 = [(WDCharacterPropertiesValues *)self->mOriginalProperties shading];
        v17 = [v16 style];

        if (v17)
        {
          [v15 setStyle:0];
          v18 = +[WDShading autoForegroundColor];
          [v15 setForeground:v18];

          v19 = +[WDShading autoBackgroundColor];
          [v15 setBackground:v19];
        }

        else if ([v132 isShadingOverridden])
        {
          v19 = [v132 shading];
          [v15 setShading:v19];
        }

        else
        {
          [v15 setStyle:1];
          v20 = +[OITSUColor blackColor];
          [v15 setForeground:v20];

          v19 = +[OITSUColor whiteColor];
          [v15 setBackground:v19];
        }
      }
    }

    v21 = self->mOriginalProperties;
    if (!v21)
    {
      goto LABEL_296;
    }

    if ([(WDCharacterPropertiesValues *)v21 fontOverridden])
    {
      v22 = self->mTrackedProperties;
      if (!v22 || ![(WDCharacterPropertiesValues *)v22 fontOverridden])
      {
        if ([v132 isFontOverridden])
        {
          v23 = [v132 font];
          [(WDCharacterProperties *)self setFont:v23];
        }
      }
    }

    v24 = self->mOriginalProperties;
    if (!v24)
    {
      goto LABEL_296;
    }

    v25 = [(WDCharacterPropertiesValues *)v24 extendedFont];
    if (v25)
    {
      v26 = self->mTrackedProperties;
      if (v26)
      {
        v27 = [(WDCharacterPropertiesValues *)v26 extendedFont];

        if (v27)
        {
          goto LABEL_43;
        }
      }

      else
      {
      }

      if ([v132 isExtendedFontOverridden])
      {
        v28 = [v132 extendedFont];
        [(WDCharacterProperties *)self setExtendedFont:v28];
      }
    }

LABEL_43:
    v29 = self->mOriginalProperties;
    if (!v29)
    {
      goto LABEL_296;
    }

    v30 = [(WDCharacterPropertiesValues *)v29 farEastFont];
    if (v30)
    {
      v31 = self->mTrackedProperties;
      if (v31)
      {
        v32 = [(WDCharacterPropertiesValues *)v31 farEastFont];

        if (v32)
        {
          goto LABEL_51;
        }
      }

      else
      {
      }

      if ([v132 isFarEastFontOverridden])
      {
        v33 = [v132 farEastFont];
        [(WDCharacterProperties *)self setFarEastFont:v33];
      }
    }

LABEL_51:
    v34 = self->mOriginalProperties;
    if (v34)
    {
      v35 = [(WDCharacterPropertiesValues *)v34 symbolFont];
      if (v35)
      {
        v36 = self->mTrackedProperties;
        if (!v36)
        {

          goto LABEL_57;
        }

        v37 = [(WDCharacterPropertiesValues *)v36 symbolFont];

        if (!v37)
        {
LABEL_57:
          if ([v132 isSymbolFontOverridden])
          {
            v38 = [v132 symbolFont];
            [(WDCharacterProperties *)self setSymbolFont:v38];
          }
        }
      }

      v39 = self->mOriginalProperties;
      if (v39)
      {
        if ([(WDCharacterPropertiesValues *)v39 symbolCharacterOverridden])
        {
          v40 = self->mTrackedProperties;
          if (!v40 || ![(WDCharacterPropertiesValues *)v40 symbolCharacterOverridden])
          {
            if ([v132 isSymbolCharacterOverridden])
            {
              v41 = [v132 symbolCharacter];
            }

            else
            {
              v41 = 0;
            }

            [(WDCharacterProperties *)self setSymbolCharacter:v41];
          }
        }

        v42 = self->mOriginalProperties;
        if (v42)
        {
          if ([(WDCharacterPropertiesValues *)v42 boldOverridden])
          {
            v43 = self->mTrackedProperties;
            if (!v43 || ![(WDCharacterPropertiesValues *)v43 boldOverridden])
            {
              [(WDCharacterProperties *)self setBold:[(WDCharacterProperties *)self reverseBooleanProperty:[(WDCharacterPropertiesValues *)self->mOriginalProperties bold]]];
            }
          }

          v44 = self->mOriginalProperties;
          if (v44)
          {
            if ([(WDCharacterPropertiesValues *)v44 boldForBiTextOverridden])
            {
              v45 = self->mTrackedProperties;
              if (!v45 || ![(WDCharacterPropertiesValues *)v45 boldForBiTextOverridden])
              {
                [(WDCharacterProperties *)self setBoldForBiText:[(WDCharacterProperties *)self reverseBooleanProperty:[(WDCharacterPropertiesValues *)self->mOriginalProperties boldForBiText]]];
              }
            }

            v46 = self->mOriginalProperties;
            if (v46)
            {
              if ([(WDCharacterPropertiesValues *)v46 italicOverridden])
              {
                v47 = self->mTrackedProperties;
                if (!v47 || ![(WDCharacterPropertiesValues *)v47 italicOverridden])
                {
                  [(WDCharacterProperties *)self setItalic:[(WDCharacterProperties *)self reverseBooleanProperty:[(WDCharacterPropertiesValues *)self->mOriginalProperties italic]]];
                }
              }

              v48 = self->mOriginalProperties;
              if (v48)
              {
                if ([(WDCharacterPropertiesValues *)v48 italicForBiTextOverridden])
                {
                  v49 = self->mTrackedProperties;
                  if (!v49 || ![(WDCharacterPropertiesValues *)v49 italicForBiTextOverridden])
                  {
                    [(WDCharacterProperties *)self setItalicForBiText:[(WDCharacterProperties *)self reverseBooleanProperty:[(WDCharacterPropertiesValues *)self->mOriginalProperties italicForBiText]]];
                  }
                }

                v50 = self->mOriginalProperties;
                if (v50)
                {
                  if ([(WDCharacterPropertiesValues *)v50 outlineOverridden])
                  {
                    v51 = self->mTrackedProperties;
                    if (!v51 || ![(WDCharacterPropertiesValues *)v51 outlineOverridden])
                    {
                      [(WDCharacterProperties *)self setOutline:[(WDCharacterProperties *)self reverseBooleanProperty:[(WDCharacterPropertiesValues *)self->mOriginalProperties outline]]];
                    }
                  }

                  v52 = self->mOriginalProperties;
                  if (v52)
                  {
                    if ([(WDCharacterPropertiesValues *)v52 outlineColorOverridden])
                    {
                      v53 = self->mTrackedProperties;
                      if (!v53 || ![(WDCharacterPropertiesValues *)v53 outlineColorOverridden])
                      {
                        if ([v132 isOutlineColorOverridden])
                        {
                          [v132 outlineColor];
                        }

                        else
                        {
                          +[OITSUColor clearColor];
                        }
                        v54 = ;
                        [(WDCharacterProperties *)self setOutlineColor:v54];
                      }
                    }

                    v55 = self->mOriginalProperties;
                    if (v55)
                    {
                      if ([(WDCharacterPropertiesValues *)v55 outline2010WidthOverridden])
                      {
                        v56 = self->mTrackedProperties;
                        if (!v56 || ![(WDCharacterPropertiesValues *)v56 outline2010WidthOverridden])
                        {
                          [(WDCharacterPropertiesValues *)self->mOriginalProperties outline2010Width];
                          if (v57 == 0.0)
                          {
                            v58 = [v132 isOutline2010WidthOverridden];
                            LODWORD(v59) = 3.0;
                            if (v58)
                            {
                              [v132 outline2010Width];
                            }
                          }

                          else
                          {
                            v59 = 0.0;
                          }

                          [(WDCharacterProperties *)self setOutline2010Width:v59];
                        }
                      }

                      v60 = self->mOriginalProperties;
                      if (v60)
                      {
                        if ([(WDCharacterPropertiesValues *)v60 shadowOverridden])
                        {
                          v61 = self->mTrackedProperties;
                          if (!v61 || ![(WDCharacterPropertiesValues *)v61 shadowOverridden])
                          {
                            [(WDCharacterProperties *)self setShadow:[(WDCharacterProperties *)self reverseBooleanProperty:[(WDCharacterPropertiesValues *)self->mOriginalProperties shadow]]];
                          }
                        }

                        v62 = self->mOriginalProperties;
                        if (v62)
                        {
                          if ([(WDCharacterPropertiesValues *)v62 embossedOverridden])
                          {
                            v63 = self->mTrackedProperties;
                            if (!v63 || ![(WDCharacterPropertiesValues *)v63 embossedOverridden])
                            {
                              [(WDCharacterProperties *)self setEmbossed:[(WDCharacterProperties *)self reverseBooleanProperty:[(WDCharacterPropertiesValues *)self->mOriginalProperties embossed]]];
                            }
                          }

                          v64 = self->mOriginalProperties;
                          if (v64)
                          {
                            if ([(WDCharacterPropertiesValues *)v64 imprintOverridden])
                            {
                              v65 = self->mTrackedProperties;
                              if (!v65 || ![(WDCharacterPropertiesValues *)v65 imprintOverridden])
                              {
                                [(WDCharacterProperties *)self setImprint:[(WDCharacterProperties *)self reverseBooleanProperty:[(WDCharacterPropertiesValues *)self->mOriginalProperties imprint]]];
                              }
                            }

                            v66 = self->mOriginalProperties;
                            if (v66)
                            {
                              if ([(WDCharacterPropertiesValues *)v66 underlineOverridden])
                              {
                                v67 = self->mTrackedProperties;
                                if (!v67 || ![(WDCharacterPropertiesValues *)v67 underlineOverridden])
                                {
                                  if ([(WDCharacterPropertiesValues *)self->mOriginalProperties underline])
                                  {
                                    v68 = 0;
                                  }

                                  else if ([v132 isUnderlineOverridden])
                                  {
                                    v68 = [v132 underline];
                                  }

                                  else
                                  {
                                    v68 = 1;
                                  }

                                  [(WDCharacterProperties *)self setUnderline:v68];
                                }
                              }

                              v69 = self->mOriginalProperties;
                              if (v69)
                              {
                                if ([(WDCharacterPropertiesValues *)v69 underlineColorOverridden])
                                {
                                  v70 = self->mTrackedProperties;
                                  if (!v70 || ![(WDCharacterPropertiesValues *)v70 underlineColorOverridden])
                                  {
                                    if ([v132 isUnderlineColorOverridden])
                                    {
                                      [v132 underlineColor];
                                    }

                                    else
                                    {
                                      +[OITSUColor clearColor];
                                    }
                                    v71 = ;
                                    [(WDCharacterProperties *)self setUnderlineColor:v71];
                                  }
                                }

                                v72 = self->mOriginalProperties;
                                if (v72)
                                {
                                  if ([(WDCharacterPropertiesValues *)v72 strikeThroughOverridden])
                                  {
                                    v73 = self->mTrackedProperties;
                                    if (!v73 || ![(WDCharacterPropertiesValues *)v73 strikeThroughOverridden])
                                    {
                                      [(WDCharacterProperties *)self setStrikeThrough:[(WDCharacterProperties *)self reverseBooleanProperty:[(WDCharacterPropertiesValues *)self->mOriginalProperties strikeThrough]]];
                                    }
                                  }

                                  v74 = self->mOriginalProperties;
                                  if (v74)
                                  {
                                    if ([(WDCharacterPropertiesValues *)v74 doubleStrikeThroughOverridden])
                                    {
                                      v75 = self->mTrackedProperties;
                                      if (!v75 || ![(WDCharacterPropertiesValues *)v75 doubleStrikeThroughOverridden])
                                      {
                                        [(WDCharacterProperties *)self setDoubleStrikeThrough:[(WDCharacterProperties *)self reverseBooleanProperty:[(WDCharacterPropertiesValues *)self->mOriginalProperties doubleStrikeThrough]]];
                                      }
                                    }

                                    v76 = self->mOriginalProperties;
                                    if (v76)
                                    {
                                      if ([(WDCharacterPropertiesValues *)v76 ligatureOverridden])
                                      {
                                        v77 = self->mTrackedProperties;
                                        if (!v77 || ![(WDCharacterPropertiesValues *)v77 ligatureOverridden])
                                        {
                                          [(WDCharacterProperties *)self setLigature:0];
                                        }
                                      }

                                      v78 = self->mOriginalProperties;
                                      if (v78)
                                      {
                                        if ([(WDCharacterPropertiesValues *)v78 highlightOverridden])
                                        {
                                          v79 = self->mTrackedProperties;
                                          if (!v79 || ![(WDCharacterPropertiesValues *)v79 highlightOverridden])
                                          {
                                            [(WDCharacterProperties *)self setHighlight:[(WDCharacterPropertiesValues *)self->mOriginalProperties highlight]^ 1];
                                          }
                                        }

                                        v80 = self->mOriginalProperties;
                                        if (v80)
                                        {
                                          if ([(WDCharacterPropertiesValues *)v80 highlightColorOverridden])
                                          {
                                            v81 = self->mTrackedProperties;
                                            if (!v81 || ![(WDCharacterPropertiesValues *)v81 highlightColorOverridden])
                                            {
                                              [(WDCharacterProperties *)self setHighlightColor:0];
                                            }
                                          }

                                          v82 = self->mOriginalProperties;
                                          if (v82)
                                          {
                                            if ([(WDCharacterPropertiesValues *)v82 smallCapsOverridden])
                                            {
                                              v83 = self->mTrackedProperties;
                                              if (!v83 || ![(WDCharacterPropertiesValues *)v83 smallCapsOverridden])
                                              {
                                                [(WDCharacterProperties *)self setSmallCaps:[(WDCharacterProperties *)self reverseBooleanProperty:[(WDCharacterPropertiesValues *)self->mOriginalProperties smallCaps]]];
                                              }
                                            }

                                            v84 = self->mOriginalProperties;
                                            if (v84)
                                            {
                                              if ([(WDCharacterPropertiesValues *)v84 capsOverridden])
                                              {
                                                v85 = self->mTrackedProperties;
                                                if (!v85 || ![(WDCharacterPropertiesValues *)v85 capsOverridden])
                                                {
                                                  [(WDCharacterProperties *)self setCaps:[(WDCharacterProperties *)self reverseBooleanProperty:[(WDCharacterPropertiesValues *)self->mOriginalProperties caps]]];
                                                }
                                              }

                                              v86 = self->mOriginalProperties;
                                              if (v86)
                                              {
                                                if ([(WDCharacterPropertiesValues *)v86 lowerCaseOverridden])
                                                {
                                                  v87 = self->mTrackedProperties;
                                                  if (!v87 || ![(WDCharacterPropertiesValues *)v87 lowerCaseOverridden])
                                                  {
                                                    [(WDCharacterProperties *)self setLowerCase:[(WDCharacterPropertiesValues *)self->mOriginalProperties lowerCase]^ 1];
                                                  }
                                                }

                                                v88 = self->mOriginalProperties;
                                                if (v88)
                                                {
                                                  if ([(WDCharacterPropertiesValues *)v88 hiddenOverridden])
                                                  {
                                                    v89 = self->mTrackedProperties;
                                                    if (!v89 || ![(WDCharacterPropertiesValues *)v89 hiddenOverridden])
                                                    {
                                                      [(WDCharacterProperties *)self setHidden:[(WDCharacterProperties *)self reverseBooleanProperty:[(WDCharacterPropertiesValues *)self->mOriginalProperties hidden]]];
                                                    }
                                                  }

                                                  v90 = self->mOriginalProperties;
                                                  if (v90)
                                                  {
                                                    if ([(WDCharacterPropertiesValues *)v90 spacingOverridden])
                                                    {
                                                      v91 = self->mTrackedProperties;
                                                      if (!v91 || ![(WDCharacterPropertiesValues *)v91 spacingOverridden])
                                                      {
                                                        if ([v132 isSpacingOverridden])
                                                        {
                                                          v92 = [v132 spacing];
                                                        }

                                                        else
                                                        {
                                                          v92 = 0;
                                                        }

                                                        [(WDCharacterProperties *)self setSpacing:v92];
                                                      }
                                                    }

                                                    v93 = self->mOriginalProperties;
                                                    if (v93)
                                                    {
                                                      if ([(WDCharacterPropertiesValues *)v93 positionOverridden])
                                                      {
                                                        v94 = self->mTrackedProperties;
                                                        if (!v94 || ![(WDCharacterPropertiesValues *)v94 positionOverridden])
                                                        {
                                                          if ([v132 isPositionOverridden])
                                                          {
                                                            v95 = [v132 position];
                                                          }

                                                          else
                                                          {
                                                            v95 = 0;
                                                          }

                                                          [(WDCharacterProperties *)self setPosition:v95];
                                                        }
                                                      }

                                                      v96 = self->mOriginalProperties;
                                                      if (v96)
                                                      {
                                                        if ([(WDCharacterPropertiesValues *)v96 kerningOverridden])
                                                        {
                                                          v97 = self->mTrackedProperties;
                                                          if (!v97 || ![(WDCharacterPropertiesValues *)v97 kerningOverridden])
                                                          {
                                                            if ([v132 isKerningOverridden])
                                                            {
                                                              v98 = [v132 kerning];
                                                            }

                                                            else
                                                            {
                                                              v98 = 0;
                                                            }

                                                            [(WDCharacterProperties *)self setKerning:v98];
                                                          }
                                                        }

                                                        v99 = self->mOriginalProperties;
                                                        if (v99)
                                                        {
                                                          if ([(WDCharacterPropertiesValues *)v99 textScaleOverridden])
                                                          {
                                                            v100 = self->mTrackedProperties;
                                                            if (!v100 || ![(WDCharacterPropertiesValues *)v100 textScaleOverridden])
                                                            {
                                                              if ([v132 isTextScaleOverridden])
                                                              {
                                                                v101 = [v132 textScale];
                                                              }

                                                              else
                                                              {
                                                                v101 = 0;
                                                              }

                                                              [(WDCharacterProperties *)self setTextScale:v101];
                                                            }
                                                          }

                                                          v102 = self->mOriginalProperties;
                                                          if (v102)
                                                          {
                                                            if ([(WDCharacterPropertiesValues *)v102 fontSizeOverridden])
                                                            {
                                                              v103 = self->mTrackedProperties;
                                                              if (!v103 || ![(WDCharacterPropertiesValues *)v103 fontSizeOverridden])
                                                              {
                                                                if ([v132 isFontSizeOverridden])
                                                                {
                                                                  v104 = [v132 fontSize];
                                                                }

                                                                else
                                                                {
                                                                  v104 = 22;
                                                                }

                                                                [(WDCharacterProperties *)self setFontSize:v104];
                                                              }
                                                            }

                                                            v105 = self->mOriginalProperties;
                                                            if (v105)
                                                            {
                                                              if ([(WDCharacterPropertiesValues *)v105 verticalAlignOverridden])
                                                              {
                                                                v106 = self->mTrackedProperties;
                                                                if (!v106 || ![(WDCharacterPropertiesValues *)v106 verticalAlignOverridden])
                                                                {
                                                                  [(WDCharacterProperties *)self setVerticalAlign:0];
                                                                }
                                                              }

                                                              v107 = self->mOriginalProperties;
                                                              if (v107)
                                                              {
                                                                if ([(WDCharacterPropertiesValues *)v107 emphasisMarkOverridden])
                                                                {
                                                                  v108 = self->mTrackedProperties;
                                                                  if (!v108 || ![(WDCharacterPropertiesValues *)v108 emphasisMarkOverridden])
                                                                  {
                                                                    [(WDCharacterProperties *)self setEmphasisMark:0];
                                                                  }
                                                                }

                                                                v109 = self->mOriginalProperties;
                                                                if (v109)
                                                                {
                                                                  if ([(WDCharacterPropertiesValues *)v109 colorOverridden])
                                                                  {
                                                                    v110 = self->mTrackedProperties;
                                                                    if (!v110 || ![(WDCharacterPropertiesValues *)v110 colorOverridden])
                                                                    {
                                                                      if ([v132 isColorOverridden])
                                                                      {
                                                                        [v132 color];
                                                                      }

                                                                      else
                                                                      {
                                                                        +[OITSUColor clearColor];
                                                                      }
                                                                      v111 = ;
                                                                      [(WDCharacterProperties *)self setColor:v111];
                                                                    }
                                                                  }

                                                                  v112 = self->mOriginalProperties;
                                                                  if (v112)
                                                                  {
                                                                    if ([(WDCharacterPropertiesValues *)v112 colorAutoOverridden])
                                                                    {
                                                                      v113 = self->mTrackedProperties;
                                                                      if (!v113 || ![(WDCharacterPropertiesValues *)v113 colorAutoOverridden])
                                                                      {
                                                                        [(WDCharacterProperties *)self setColorAuto:[(WDCharacterPropertiesValues *)self->mOriginalProperties colorAuto]^ 1];
                                                                      }
                                                                    }

                                                                    v114 = self->mOriginalProperties;
                                                                    if (v114)
                                                                    {
                                                                      if ([(WDCharacterPropertiesValues *)v114 languageForDefaultTextOverridden])
                                                                      {
                                                                        v115 = self->mTrackedProperties;
                                                                        if (!v115 || ![(WDCharacterPropertiesValues *)v115 languageForDefaultTextOverridden])
                                                                        {
                                                                          if ([v132 isLanguageForDefaultTextOverridden])
                                                                          {
                                                                            v116 = [v132 languageForDefaultText];
                                                                          }

                                                                          else
                                                                          {
                                                                            v116 = 0;
                                                                          }

                                                                          [(WDCharacterProperties *)self setLanguageForDefaultText:v116];
                                                                        }
                                                                      }

                                                                      v117 = self->mOriginalProperties;
                                                                      if (v117)
                                                                      {
                                                                        if ([(WDCharacterPropertiesValues *)v117 specialCharacterOverridden])
                                                                        {
                                                                          v118 = self->mTrackedProperties;
                                                                          if (!v118 || ![(WDCharacterPropertiesValues *)v118 specialCharacterOverridden])
                                                                          {
                                                                            [(WDCharacterProperties *)self setSpecialCharacter:[(WDCharacterPropertiesValues *)self->mOriginalProperties specialCharacter]^ 1];
                                                                          }
                                                                        }

                                                                        v119 = self->mOriginalProperties;
                                                                        if (v119)
                                                                        {
                                                                          if ([(WDCharacterPropertiesValues *)v119 listCharacterPictureBulletOverridden])
                                                                          {
                                                                            v120 = self->mTrackedProperties;
                                                                            if (!v120 || ![(WDCharacterPropertiesValues *)v120 listCharacterPictureBulletOverridden])
                                                                            {
                                                                              [(WDCharacterProperties *)self setListCharacterPictureBullet:[(WDCharacterPropertiesValues *)self->mOriginalProperties listCharacterPictureBullet]^ 1];
                                                                            }
                                                                          }

                                                                          v121 = self->mOriginalProperties;
                                                                          if (v121)
                                                                          {
                                                                            if ([(WDCharacterPropertiesValues *)v121 charPositionOfPictureBulletInBookmarkOverridden])
                                                                            {
                                                                              v122 = self->mTrackedProperties;
                                                                              if (v122)
                                                                              {
                                                                                [(WDCharacterPropertiesValues *)v122 charPositionOfPictureBulletInBookmarkOverridden];
                                                                              }
                                                                            }

                                                                            v123 = self->mOriginalProperties;
                                                                            if (v123)
                                                                            {
                                                                              if ([(WDCharacterPropertiesValues *)v123 languageForFarEastOverridden])
                                                                              {
                                                                                v124 = self->mTrackedProperties;
                                                                                if (!v124 || ![(WDCharacterPropertiesValues *)v124 languageForFarEastOverridden])
                                                                                {
                                                                                  if ([v132 isLanguageForFarEastOverridden])
                                                                                  {
                                                                                    v125 = [v132 languageForFarEast];
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v125 = 0;
                                                                                  }

                                                                                  [(WDCharacterProperties *)self setLanguageForFarEast:v125];
                                                                                }
                                                                              }

                                                                              v126 = self->mOriginalProperties;
                                                                              if (v126)
                                                                              {
                                                                                if ([(WDCharacterPropertiesValues *)v126 languageForBiTextOverridden])
                                                                                {
                                                                                  v127 = self->mTrackedProperties;
                                                                                  if (!v127 || ![(WDCharacterPropertiesValues *)v127 languageForBiTextOverridden])
                                                                                  {
                                                                                    if ([v132 isLanguageForBiTextOverridden])
                                                                                    {
                                                                                      v128 = [v132 languageForBiText];
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v128 = 0;
                                                                                    }

                                                                                    [(WDCharacterProperties *)self setLanguageForBiText:v128];
                                                                                  }
                                                                                }

                                                                                v129 = self->mOriginalProperties;
                                                                                if (v129)
                                                                                {
                                                                                  if ([(WDCharacterPropertiesValues *)v129 fontSizeForBiTextOverridden])
                                                                                  {
                                                                                    v130 = self->mTrackedProperties;
                                                                                    if (!v130 || ![(WDCharacterPropertiesValues *)v130 fontSizeForBiTextOverridden])
                                                                                    {
                                                                                      if ([v132 isFontSizeForBiTextOverridden])
                                                                                      {
                                                                                        v131 = [v132 fontSizeForBiText];
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v131 = 22;
                                                                                      }

                                                                                      [(WDCharacterProperties *)self setFontSizeForBiText:v131];
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

LABEL_296:
    [(WDCharacterProperties *)self setResolveMode:2];
  }
}

- (void)applyPropertiesFrom:(id)a3 ifOverriddenIn:(id)a4
{
  v18 = a3;
  v6 = a4;
  if ([v6 isBorderOverridden] && objc_msgSend(v18, "isBorderOverridden"))
  {
    v7 = [(WDCharacterProperties *)self mutableBorder];
    v8 = [v18 border];
    [v7 setBorder:v8];
  }

  if ([v6 isShadingOverridden] && objc_msgSend(v18, "isShadingOverridden"))
  {
    v9 = [(WDCharacterProperties *)self mutableShading];
    v10 = [v18 shading];
    [v9 setShading:v10];
  }

  if ([v6 isFontOverridden] && objc_msgSend(v18, "isFontOverridden"))
  {
    v11 = [v18 font];
    [(WDCharacterProperties *)self setFont:v11];
  }

  if ([v6 isExtendedFontOverridden] && objc_msgSend(v18, "isExtendedFontOverridden"))
  {
    v12 = [v18 extendedFont];
    [(WDCharacterProperties *)self setExtendedFont:v12];
  }

  if ([v6 isFarEastFontOverridden] && objc_msgSend(v18, "isFarEastFontOverridden"))
  {
    v13 = [v18 farEastFont];
    [(WDCharacterProperties *)self setFarEastFont:v13];
  }

  if ([v6 isSymbolFontOverridden] && objc_msgSend(v18, "isSymbolFontOverridden"))
  {
    v14 = [v18 symbolFont];
    [(WDCharacterProperties *)self setSymbolFont:v14];
  }

  if ([v6 isSymbolCharacterOverridden] && objc_msgSend(v18, "isSymbolCharacterOverridden"))
  {
    -[WDCharacterProperties setSymbolCharacter:](self, "setSymbolCharacter:", [v18 symbolCharacter]);
  }

  if ([v6 isBoldOverridden] && objc_msgSend(v18, "isBoldOverridden"))
  {
    -[WDCharacterProperties setBold:](self, "setBold:", [v18 bold]);
  }

  if ([v6 isBoldForBiTextOverridden] && objc_msgSend(v18, "isBoldForBiTextOverridden"))
  {
    -[WDCharacterProperties setBoldForBiText:](self, "setBoldForBiText:", [v18 boldForBiText]);
  }

  if ([v6 isItalicOverridden] && objc_msgSend(v18, "isItalicOverridden"))
  {
    -[WDCharacterProperties setItalic:](self, "setItalic:", [v18 italic]);
  }

  if ([v6 isItalicForBiTextOverridden] && objc_msgSend(v18, "isItalicForBiTextOverridden"))
  {
    -[WDCharacterProperties setItalicForBiText:](self, "setItalicForBiText:", [v18 italicForBiText]);
  }

  if ([v6 isOutlineOverridden] && objc_msgSend(v18, "isOutlineOverridden"))
  {
    -[WDCharacterProperties setOutline:](self, "setOutline:", [v18 outline]);
  }

  if ([v6 isOutlineColorOverridden] && objc_msgSend(v18, "isOutlineColorOverridden"))
  {
    v15 = [v18 outlineColor];
    [(WDCharacterProperties *)self setOutlineColor:v15];
  }

  if ([v6 isOutline2010WidthOverridden] && objc_msgSend(v18, "isOutline2010WidthOverridden"))
  {
    [v18 outline2010Width];
    [(WDCharacterProperties *)self setOutline2010Width:?];
  }

  if ([v6 isEmbossedOverridden] && objc_msgSend(v18, "isEmbossedOverridden"))
  {
    -[WDCharacterProperties setEmbossed:](self, "setEmbossed:", [v18 embossed]);
  }

  if ([v6 isImprintOverridden] && objc_msgSend(v18, "isImprintOverridden"))
  {
    -[WDCharacterProperties setImprint:](self, "setImprint:", [v18 imprint]);
  }

  if ([v6 isShadowOverridden] && objc_msgSend(v18, "isShadowOverridden"))
  {
    -[WDCharacterProperties setShadow:](self, "setShadow:", [v18 shadow]);
  }

  if ([v6 isKerningOverridden] && objc_msgSend(v18, "isKerningOverridden"))
  {
    -[WDCharacterProperties setKerning:](self, "setKerning:", [v18 kerning]);
  }

  if ([v6 isTextScaleOverridden] && objc_msgSend(v18, "isTextScaleOverridden"))
  {
    -[WDCharacterProperties setTextScale:](self, "setTextScale:", [v18 textScale]);
  }

  if ([v6 isUnderlineColorOverridden] && objc_msgSend(v18, "isUnderlineColorOverridden"))
  {
    v16 = [v18 underlineColor];
    [(WDCharacterProperties *)self setUnderlineColor:v16];
  }

  if ([v6 isUnderlineOverridden] && objc_msgSend(v18, "isUnderlineOverridden"))
  {
    -[WDCharacterProperties setUnderline:](self, "setUnderline:", [v18 underline]);
  }

  if ([v6 isStrikeThroughOverridden] && objc_msgSend(v18, "isStrikeThroughOverridden"))
  {
    -[WDCharacterProperties setStrikeThrough:](self, "setStrikeThrough:", [v18 strikeThrough]);
  }

  if ([v6 isDoubleStrikeThroughOverridden] && objc_msgSend(v18, "isDoubleStrikeThroughOverridden"))
  {
    -[WDCharacterProperties setDoubleStrikeThrough:](self, "setDoubleStrikeThrough:", [v18 doubleStrikeThrough]);
  }

  if ([v6 isLigatureOverridden] && objc_msgSend(v18, "isLigatureOverridden"))
  {
    -[WDCharacterProperties setLigature:](self, "setLigature:", [v18 ligature]);
  }

  if ([v6 isHighlightOverridden] && objc_msgSend(v18, "isHighlightOverridden"))
  {
    -[WDCharacterProperties setHighlight:](self, "setHighlight:", [v18 isHighlight]);
  }

  if ([v6 isHighlightColorOverridden] && objc_msgSend(v18, "isHighlightColorOverridden"))
  {
    -[WDCharacterProperties setHighlightColor:](self, "setHighlightColor:", [v18 highlightColor]);
  }

  if ([v6 isSmallCapsOverridden] && objc_msgSend(v18, "isSmallCapsOverridden"))
  {
    -[WDCharacterProperties setSmallCaps:](self, "setSmallCaps:", [v18 smallCaps]);
  }

  if ([v6 isCapsOverridden] && objc_msgSend(v18, "isCapsOverridden"))
  {
    -[WDCharacterProperties setCaps:](self, "setCaps:", [v18 caps]);
  }

  if ([v6 isLowerCaseOverridden] && objc_msgSend(v18, "isLowerCaseOverridden"))
  {
    -[WDCharacterProperties setLowerCase:](self, "setLowerCase:", [v18 isLowerCase]);
  }

  if ([v6 isHiddenOverridden] && objc_msgSend(v18, "isHiddenOverridden"))
  {
    -[WDCharacterProperties setHidden:](self, "setHidden:", [v18 hidden]);
  }

  if ([v6 isSpacingOverridden] && objc_msgSend(v18, "isSpacingOverridden"))
  {
    -[WDCharacterProperties setSpacing:](self, "setSpacing:", [v18 spacing]);
  }

  if ([v6 isPositionOverridden] && objc_msgSend(v18, "isPositionOverridden"))
  {
    -[WDCharacterProperties setPosition:](self, "setPosition:", [v18 position]);
  }

  if ([v6 isFontSizeOverridden] && objc_msgSend(v18, "isFontSizeOverridden"))
  {
    -[WDCharacterProperties setFontSize:](self, "setFontSize:", [v18 fontSize]);
  }

  if ([v6 isVerticalAlignOverridden] && objc_msgSend(v18, "isVerticalAlignOverridden"))
  {
    -[WDCharacterProperties setVerticalAlign:](self, "setVerticalAlign:", [v18 verticalAlign]);
  }

  if ([v6 isEmphasisMarkOverridden] && objc_msgSend(v18, "isEmphasisMarkOverridden"))
  {
    -[WDCharacterProperties setEmphasisMark:](self, "setEmphasisMark:", [v18 emphasisMark]);
  }

  if ([v6 isColorOverridden] && objc_msgSend(v18, "isColorOverridden"))
  {
    v17 = [v18 color];
    [(WDCharacterProperties *)self setColor:v17];
  }

  if ([v6 isColorAutoOverridden] && objc_msgSend(v18, "isColorAutoOverridden"))
  {
    -[WDCharacterProperties setColorAuto:](self, "setColorAuto:", [v18 isColorAuto]);
  }

  if ([v6 isLanguageForDefaultTextOverridden] && objc_msgSend(v18, "isLanguageForDefaultTextOverridden"))
  {
    -[WDCharacterProperties setLanguageForDefaultText:](self, "setLanguageForDefaultText:", [v18 languageForDefaultText]);
  }

  if ([v6 isSpecialCharacterOverridden] && objc_msgSend(v18, "isSpecialCharacterOverridden"))
  {
    -[WDCharacterProperties setSpecialCharacter:](self, "setSpecialCharacter:", [v18 isSpecialCharacter]);
  }

  if ([v6 isListCharacterPictureBulletOverridden] && objc_msgSend(v18, "isListCharacterPictureBulletOverridden"))
  {
    -[WDCharacterProperties setListCharacterPictureBullet:](self, "setListCharacterPictureBullet:", [v18 isListCharacterPictureBullet]);
  }

  if ([v6 isCharPositionOfPictureBulletInBookmarkOverridden] && objc_msgSend(v18, "isCharPositionOfPictureBulletInBookmarkOverridden"))
  {
    -[WDCharacterProperties setCharPositionOfPictureBulletInBookmark:](self, "setCharPositionOfPictureBulletInBookmark:", [v18 charPositionOfPictureBulletInBookmark]);
  }

  if ([v6 isLanguageForFarEastOverridden] && objc_msgSend(v18, "isLanguageForFarEastOverridden"))
  {
    -[WDCharacterProperties setLanguageForFarEast:](self, "setLanguageForFarEast:", [v18 languageForFarEast]);
  }

  if ([v6 isLanguageForBiTextOverridden] && objc_msgSend(v18, "isLanguageForBiTextOverridden"))
  {
    -[WDCharacterProperties setLanguageForBiText:](self, "setLanguageForBiText:", [v18 languageForBiText]);
  }

  if ([v6 isFontSizeForBiTextOverridden] && objc_msgSend(v18, "isFontSizeForBiTextOverridden"))
  {
    -[WDCharacterProperties setFontSizeForBiText:](self, "setFontSizeForBiText:", [v18 fontSizeForBiText]);
  }
}

- (void)removeEmptyFormattingChanges:(id)a3
{
  v161 = a3;
  [v161 setResolveMode:0];
  p_mOriginalProperties = &self->mOriginalProperties;
  mOriginalProperties = self->mOriginalProperties;
  if (mOriginalProperties && -[WDCharacterPropertiesValues baseStyleOverridden](mOriginalProperties, "baseStyleOverridden") && [v161 isBaseStyleOverridden])
  {
    v6 = *p_mOriginalProperties;
    if (*p_mOriginalProperties)
    {
      v7 = [*p_mOriginalProperties baseStyle];
    }

    else
    {
      v7 = 0;
    }

    v8 = [v161 baseStyle];

    if (v6)
    {
    }

    if (v7 == v8)
    {
      [*p_mOriginalProperties setBaseStyleOverridden:0];
      [*p_mOriginalProperties setBaseStyle:0];
    }
  }

  [v161 setResolveMode:1];
  mTrackedProperties = self->mTrackedProperties;
  p_mTrackedProperties = &self->mTrackedProperties;
  v9 = mTrackedProperties;
  if (!mTrackedProperties)
  {
    goto LABEL_27;
  }

  if (-[WDCharacterPropertiesValues baseStyleOverridden](v9, "baseStyleOverridden") && [v161 isBaseStyleOverridden])
  {
    v12 = *p_mTrackedProperties;
    if (*p_mTrackedProperties)
    {
      v13 = [*p_mTrackedProperties baseStyle];
    }

    else
    {
      v13 = 0;
    }

    v14 = [v161 baseStyle];

    if (v12)
    {
    }

    if (v13 == v14)
    {
      [*p_mTrackedProperties setBaseStyleOverridden:0];
      [*p_mTrackedProperties setBaseStyle:0];
    }
  }

  if (!*p_mTrackedProperties)
  {
LABEL_27:
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 1;
    goto LABEL_266;
  }

  if (![*p_mTrackedProperties baseStyleOverridden])
  {
    goto LABEL_37;
  }

  if (!*p_mOriginalProperties || ![*p_mOriginalProperties baseStyleOverridden])
  {
    goto LABEL_38;
  }

  v15 = *p_mOriginalProperties;
  if (*p_mOriginalProperties)
  {
    v16 = [*p_mOriginalProperties baseStyle];
  }

  else
  {
    v16 = 0;
  }

  v22 = *p_mTrackedProperties;
  if (*p_mTrackedProperties)
  {
    v23 = [*p_mTrackedProperties baseStyle];
  }

  else
  {
    v23 = 0;
  }

  v24 = [v16 isEqual:v23];
  if (v22)
  {
  }

  if (v15)
  {
  }

  if (v24)
  {
LABEL_37:
    v21 = 1;
  }

  else
  {
LABEL_38:
    v21 = 0;
  }

  if (!*p_mTrackedProperties)
  {
    goto LABEL_265;
  }

  if ([*p_mTrackedProperties borderOverridden])
  {
    if (!*p_mOriginalProperties || ![*p_mOriginalProperties borderOverridden])
    {
      goto LABEL_54;
    }

    v25 = *p_mOriginalProperties;
    if (*p_mOriginalProperties)
    {
      v26 = [*p_mOriginalProperties border];
    }

    else
    {
      v26 = 0;
    }

    v27 = *p_mTrackedProperties;
    if (*p_mTrackedProperties)
    {
      v28 = [*p_mTrackedProperties border];
    }

    else
    {
      v28 = 0;
    }

    v29 = [v26 isEqual:v28];
    if (v27)
    {
    }

    if (v25)
    {
    }

    if ((v29 & 1) == 0)
    {
LABEL_54:
      v21 = 0;
    }
  }

  if (!*p_mTrackedProperties)
  {
    goto LABEL_265;
  }

  if ([*p_mTrackedProperties shadingOverridden])
  {
    if (!*p_mOriginalProperties || ![*p_mOriginalProperties shadingOverridden])
    {
      goto LABEL_70;
    }

    v30 = *p_mOriginalProperties;
    if (*p_mOriginalProperties)
    {
      v31 = [*p_mOriginalProperties shading];
    }

    else
    {
      v31 = 0;
    }

    v32 = *p_mTrackedProperties;
    if (*p_mTrackedProperties)
    {
      v33 = [*p_mTrackedProperties shading];
    }

    else
    {
      v33 = 0;
    }

    v34 = [v31 isEqual:v33];
    if (v32)
    {
    }

    if (v30)
    {
    }

    if ((v34 & 1) == 0)
    {
LABEL_70:
      v21 = 0;
    }
  }

  if (!*p_mTrackedProperties)
  {
    goto LABEL_265;
  }

  if ([*p_mTrackedProperties fontOverridden])
  {
    if (!*p_mOriginalProperties || ![*p_mOriginalProperties fontOverridden])
    {
      goto LABEL_86;
    }

    v35 = *p_mOriginalProperties;
    if (*p_mOriginalProperties)
    {
      v36 = [*p_mOriginalProperties font];
    }

    else
    {
      v36 = 0;
    }

    v37 = *p_mTrackedProperties;
    if (*p_mTrackedProperties)
    {
      v38 = [*p_mTrackedProperties font];
    }

    else
    {
      v38 = 0;
    }

    v39 = [v36 isEqual:v38];
    if (v37)
    {
    }

    if (v35)
    {
    }

    if ((v39 & 1) == 0)
    {
LABEL_86:
      v21 = 0;
    }
  }

  if (!*p_mTrackedProperties)
  {
    goto LABEL_265;
  }

  if ([*p_mTrackedProperties extendedFontOverridden])
  {
    if (!*p_mOriginalProperties || ![*p_mOriginalProperties extendedFontOverridden])
    {
      goto LABEL_102;
    }

    v40 = *p_mOriginalProperties;
    if (*p_mOriginalProperties)
    {
      v41 = [*p_mOriginalProperties extendedFont];
    }

    else
    {
      v41 = 0;
    }

    v42 = *p_mTrackedProperties;
    if (*p_mTrackedProperties)
    {
      v43 = [*p_mTrackedProperties extendedFont];
    }

    else
    {
      v43 = 0;
    }

    v44 = [v41 isEqual:v43];
    if (v42)
    {
    }

    if (v40)
    {
    }

    if ((v44 & 1) == 0)
    {
LABEL_102:
      v21 = 0;
    }
  }

  if (!*p_mTrackedProperties)
  {
    goto LABEL_265;
  }

  if ([*p_mTrackedProperties farEastFontOverridden])
  {
    if (!*p_mOriginalProperties || ![*p_mOriginalProperties farEastFontOverridden])
    {
      goto LABEL_118;
    }

    v45 = *p_mOriginalProperties;
    if (*p_mOriginalProperties)
    {
      v46 = [*p_mOriginalProperties farEastFont];
    }

    else
    {
      v46 = 0;
    }

    v47 = *p_mTrackedProperties;
    if (*p_mTrackedProperties)
    {
      v48 = [*p_mTrackedProperties farEastFont];
    }

    else
    {
      v48 = 0;
    }

    v49 = [v46 isEqual:v48];
    if (v47)
    {
    }

    if (v45)
    {
    }

    if ((v49 & 1) == 0)
    {
LABEL_118:
      v21 = 0;
    }
  }

  if (!*p_mTrackedProperties)
  {
    goto LABEL_265;
  }

  if ([*p_mTrackedProperties symbolFontOverridden])
  {
    if (!*p_mOriginalProperties || ![*p_mOriginalProperties symbolFontOverridden])
    {
      goto LABEL_134;
    }

    v50 = *p_mOriginalProperties;
    if (*p_mOriginalProperties)
    {
      v51 = [*p_mOriginalProperties symbolFont];
    }

    else
    {
      v51 = 0;
    }

    v52 = *p_mTrackedProperties;
    if (*p_mTrackedProperties)
    {
      v53 = [*p_mTrackedProperties symbolFont];
    }

    else
    {
      v53 = 0;
    }

    v54 = [v51 isEqual:v53];
    if (v52)
    {
    }

    if (v50)
    {
    }

    if ((v54 & 1) == 0)
    {
LABEL_134:
      v21 = 0;
    }
  }

  if (!*p_mTrackedProperties)
  {
    goto LABEL_265;
  }

  if ([*p_mTrackedProperties underlineColorOverridden])
  {
    if (!*p_mOriginalProperties || ![*p_mOriginalProperties underlineColorOverridden])
    {
      goto LABEL_150;
    }

    v55 = *p_mOriginalProperties;
    if (*p_mOriginalProperties)
    {
      v56 = [*p_mOriginalProperties underlineColor];
    }

    else
    {
      v56 = 0;
    }

    v57 = *p_mTrackedProperties;
    if (*p_mTrackedProperties)
    {
      v58 = [*p_mTrackedProperties underlineColor];
    }

    else
    {
      v58 = 0;
    }

    v59 = [v56 isEqual:v58];
    if (v57)
    {
    }

    if (v55)
    {
    }

    if ((v59 & 1) == 0)
    {
LABEL_150:
      v21 = 0;
    }
  }

  if (!*p_mTrackedProperties)
  {
    goto LABEL_265;
  }

  if ([*p_mTrackedProperties colorOverridden])
  {
    if (!*p_mOriginalProperties || ![*p_mOriginalProperties colorOverridden])
    {
      goto LABEL_166;
    }

    v60 = *p_mOriginalProperties;
    if (*p_mOriginalProperties)
    {
      v61 = [*p_mOriginalProperties color];
    }

    else
    {
      v61 = 0;
    }

    v62 = *p_mTrackedProperties;
    if (*p_mTrackedProperties)
    {
      v63 = [*p_mTrackedProperties color];
    }

    else
    {
      v63 = 0;
    }

    v64 = [v61 isEqual:v63];
    if (v62)
    {
    }

    if (v60)
    {
    }

    if ((v64 & 1) == 0)
    {
LABEL_166:
      v21 = 0;
    }
  }

  if (!*p_mTrackedProperties)
  {
    goto LABEL_265;
  }

  if ([*p_mTrackedProperties shadow2010Overridden])
  {
    if (!*p_mOriginalProperties || ![*p_mOriginalProperties shadow2010Overridden])
    {
      goto LABEL_182;
    }

    v65 = *p_mOriginalProperties;
    if (*p_mOriginalProperties)
    {
      v66 = [*p_mOriginalProperties shadow2010];
    }

    else
    {
      v66 = 0;
    }

    v67 = *p_mTrackedProperties;
    if (*p_mTrackedProperties)
    {
      v68 = [*p_mTrackedProperties shadow2010];
    }

    else
    {
      v68 = 0;
    }

    v69 = [v66 isEqual:v68];
    if (v67)
    {
    }

    if (v65)
    {
    }

    if ((v69 & 1) == 0)
    {
LABEL_182:
      v21 = 0;
    }
  }

  if (!*p_mTrackedProperties)
  {
    goto LABEL_265;
  }

  if ([*p_mTrackedProperties reflectionOverridden])
  {
    if (!*p_mOriginalProperties || ![*p_mOriginalProperties reflectionOverridden])
    {
      goto LABEL_198;
    }

    v70 = *p_mOriginalProperties;
    if (*p_mOriginalProperties)
    {
      v71 = [*p_mOriginalProperties reflection];
    }

    else
    {
      v71 = 0;
    }

    v72 = *p_mTrackedProperties;
    if (*p_mTrackedProperties)
    {
      v73 = [*p_mTrackedProperties reflection];
    }

    else
    {
      v73 = 0;
    }

    v74 = [v71 isEqual:v73];
    if (v72)
    {
    }

    if (v70)
    {
    }

    if ((v74 & 1) == 0)
    {
LABEL_198:
      v21 = 0;
    }
  }

  if (!*p_mTrackedProperties)
  {
    goto LABEL_265;
  }

  if (![*p_mTrackedProperties symbolCharacterOverridden])
  {
    goto LABEL_209;
  }

  if (*p_mOriginalProperties && [*p_mOriginalProperties symbolCharacterOverridden])
  {
    if (*p_mOriginalProperties)
    {
      v75 = [*p_mOriginalProperties symbolCharacter];
    }

    else
    {
      v75 = 0;
    }

    v76 = *p_mTrackedProperties;
    if (*p_mTrackedProperties)
    {
      LODWORD(v76) = [v76 symbolCharacter];
    }

    if (v75 == v76)
    {
LABEL_209:
      if (!*p_mTrackedProperties)
      {
        goto LABEL_265;
      }

      if (![*p_mTrackedProperties boldOverridden])
      {
        goto LABEL_258;
      }

      if (*p_mOriginalProperties && [*p_mOriginalProperties boldOverridden])
      {
        if (*p_mOriginalProperties)
        {
          v77 = [*p_mOriginalProperties bold];
        }

        else
        {
          v77 = 0;
        }

        v78 = *p_mTrackedProperties;
        if (*p_mTrackedProperties)
        {
          LODWORD(v78) = [v78 bold];
        }

        if (v77 == v78)
        {
LABEL_258:
          if (!*p_mTrackedProperties)
          {
            goto LABEL_265;
          }

          if (![*p_mTrackedProperties boldForBiTextOverridden])
          {
            goto LABEL_621;
          }

          if (*p_mOriginalProperties && [*p_mOriginalProperties boldForBiTextOverridden])
          {
            if (*p_mOriginalProperties)
            {
              v79 = [*p_mOriginalProperties boldForBiText];
            }

            else
            {
              v79 = 0;
            }

            v80 = *p_mTrackedProperties;
            if (*p_mTrackedProperties)
            {
              LODWORD(v80) = [v80 boldForBiText];
            }

            if (v79 == v80)
            {
LABEL_621:
              if (!*p_mTrackedProperties)
              {
                goto LABEL_265;
              }

              if (![*p_mTrackedProperties italicOverridden])
              {
                goto LABEL_622;
              }

              if (*p_mOriginalProperties && [*p_mOriginalProperties italicOverridden])
              {
                if (*p_mOriginalProperties)
                {
                  v81 = [*p_mOriginalProperties italic];
                }

                else
                {
                  v81 = 0;
                }

                v82 = *p_mTrackedProperties;
                if (*p_mTrackedProperties)
                {
                  LODWORD(v82) = [v82 italic];
                }

                if (v81 == v82)
                {
LABEL_622:
                  if (!*p_mTrackedProperties)
                  {
                    goto LABEL_265;
                  }

                  if (![*p_mTrackedProperties italicForBiTextOverridden])
                  {
                    goto LABEL_623;
                  }

                  if (*p_mOriginalProperties && [*p_mOriginalProperties italicForBiTextOverridden])
                  {
                    if (*p_mOriginalProperties)
                    {
                      v83 = [*p_mOriginalProperties italicForBiText];
                    }

                    else
                    {
                      v83 = 0;
                    }

                    v84 = *p_mTrackedProperties;
                    if (*p_mTrackedProperties)
                    {
                      LODWORD(v84) = [v84 italicForBiText];
                    }

                    if (v83 == v84)
                    {
LABEL_623:
                      if (!*p_mTrackedProperties)
                      {
                        goto LABEL_265;
                      }

                      if (![*p_mTrackedProperties outlineOverridden])
                      {
                        goto LABEL_624;
                      }

                      if (*p_mOriginalProperties && [*p_mOriginalProperties outlineOverridden])
                      {
                        if (*p_mOriginalProperties)
                        {
                          v85 = [*p_mOriginalProperties outline];
                        }

                        else
                        {
                          v85 = 0;
                        }

                        v86 = *p_mTrackedProperties;
                        if (*p_mTrackedProperties)
                        {
                          LODWORD(v86) = [v86 outline];
                        }

                        if (v85 == v86)
                        {
LABEL_624:
                          if (*p_mTrackedProperties)
                          {
                            if ([*p_mTrackedProperties outlineColorOverridden])
                            {
                              if (!*p_mOriginalProperties || ![*p_mOriginalProperties outlineColorOverridden])
                              {
                                goto LABEL_596;
                              }

                              v18 = *p_mOriginalProperties != 0;
                              if (*p_mOriginalProperties)
                              {
                                v159 = [*p_mOriginalProperties outlineColor];
                              }

                              else
                              {
                                v159 = 0;
                              }

                              v17 = *p_mTrackedProperties != 0;
                              if (*p_mTrackedProperties)
                              {
                                v158 = [*p_mTrackedProperties outlineColor];
                              }

                              else
                              {
                                v158 = 0;
                              }

                              if (v159 != v158)
                              {
LABEL_423:
                                LOBYTE(v87) = 1;
                                if (!v17)
                                {
LABEL_588:
                                  if (!v18)
                                  {
LABEL_590:
                                    if (!v87 && (v21 & 1) != 0)
                                    {
                                      if (*p_mOriginalProperties)
                                      {
                                        [*p_mOriginalProperties setFormattingChangedOverridden:0];
                                      }

                                      if (*p_mTrackedProperties)
                                      {
                                        [*p_mTrackedProperties setFormattingChangedOverridden:0];
                                      }
                                    }

                                    goto LABEL_596;
                                  }

LABEL_589:

                                  goto LABEL_590;
                                }

LABEL_275:

                                if (!v18)
                                {
                                  goto LABEL_590;
                                }

                                goto LABEL_589;
                              }
                            }

                            else
                            {
                              v18 = 0;
                              v17 = 0;
                            }

                            if (!*p_mTrackedProperties)
                            {
                              goto LABEL_455;
                            }

                            if ([*p_mTrackedProperties outline2010WidthOverridden])
                            {
                              if (!*p_mOriginalProperties || ![*p_mOriginalProperties outline2010WidthOverridden])
                              {
                                goto LABEL_423;
                              }

                              v111 = 0.0;
                              v112 = 0.0;
                              if (*p_mOriginalProperties)
                              {
                                [*p_mOriginalProperties outline2010Width];
                                v112 = v113;
                              }

                              if (*p_mTrackedProperties)
                              {
                                [*p_mTrackedProperties outline2010Width];
                                v111 = v114;
                              }

                              if (v112 != v111)
                              {
                                goto LABEL_423;
                              }
                            }

                            if (!*p_mTrackedProperties)
                            {
                              goto LABEL_455;
                            }

                            if ([*p_mTrackedProperties shadowOverridden])
                            {
                              if (!*p_mOriginalProperties || ![*p_mOriginalProperties shadowOverridden])
                              {
                                goto LABEL_423;
                              }

                              if (*p_mOriginalProperties)
                              {
                                v115 = [*p_mOriginalProperties shadow];
                              }

                              else
                              {
                                v115 = 0;
                              }

                              v124 = *p_mTrackedProperties;
                              if (*p_mTrackedProperties)
                              {
                                LODWORD(v124) = [v124 shadow];
                              }

                              if (v115 != v124)
                              {
                                goto LABEL_423;
                              }
                            }

                            if (*p_mTrackedProperties && [*p_mTrackedProperties reflectionOverridden])
                            {
                              if (!*p_mOriginalProperties || ![*p_mOriginalProperties reflectionOverridden])
                              {
                                goto LABEL_423;
                              }

                              v19 = *p_mOriginalProperties != 0;
                              if (*p_mOriginalProperties)
                              {
                                v157 = [*p_mOriginalProperties reflection];
                              }

                              else
                              {
                                v157 = 0;
                              }

                              v20 = *p_mTrackedProperties != 0;
                              if (*p_mTrackedProperties)
                              {
                                v156 = [*p_mTrackedProperties reflection];
                              }

                              else
                              {
                                v156 = 0;
                              }

                              if (v157 != v156)
                              {
LABEL_471:
                                LOBYTE(v87) = 1;
                                if (!v20)
                                {
                                  goto LABEL_586;
                                }

                                goto LABEL_273;
                              }
                            }

                            else
                            {
LABEL_455:
                              v19 = 0;
                              v20 = 0;
                            }

LABEL_266:
                            if (!*p_mTrackedProperties)
                            {
                              LOBYTE(v87) = 0;
                              if (!v20)
                              {
                                goto LABEL_586;
                              }

                              goto LABEL_273;
                            }

                            if ([*p_mTrackedProperties shadow2010Overridden])
                            {
                              if (!*p_mOriginalProperties || ![*p_mOriginalProperties shadow2010Overridden])
                              {
                                goto LABEL_471;
                              }

                              v160 = *p_mOriginalProperties != 0;
                              if (*p_mOriginalProperties)
                              {
                                v155 = [*p_mOriginalProperties shadow2010];
                              }

                              else
                              {
                                v155 = 0;
                              }

                              v90 = *p_mTrackedProperties;
                              v87 = *p_mTrackedProperties != 0;
                              if (*p_mTrackedProperties)
                              {
                                v91 = [*p_mTrackedProperties shadow2010];
                              }

                              else
                              {
                                v91 = 0;
                              }

                              v154 = v91;
                              if (v155 != v91)
                              {
                                goto LABEL_613;
                              }

                              v88 = *p_mTrackedProperties;
                              if (!*p_mTrackedProperties)
                              {
                                v92 = 0;
                                if (!v90)
                                {
                                  goto LABEL_584;
                                }

                                goto LABEL_614;
                              }
                            }

                            else
                            {
                              v87 = 0;
                              v88 = *p_mTrackedProperties;
                              if (!*p_mTrackedProperties)
                              {
                                goto LABEL_585;
                              }

                              v160 = 0;
                            }

                            if (![v88 kerningOverridden])
                            {
                              goto LABEL_625;
                            }

                            if (*p_mOriginalProperties && [*p_mOriginalProperties kerningOverridden])
                            {
                              if (*p_mOriginalProperties)
                              {
                                v89 = [*p_mOriginalProperties kerning];
                              }

                              else
                              {
                                v89 = 0;
                              }

                              v93 = *p_mTrackedProperties;
                              if (*p_mTrackedProperties)
                              {
                                LODWORD(v93) = [v93 kerning];
                              }

                              if (v89 == v93)
                              {
LABEL_625:
                                if (!*p_mTrackedProperties)
                                {
                                  goto LABEL_583;
                                }

                                if ([*p_mTrackedProperties textScaleOverridden])
                                {
                                  if (!*p_mOriginalProperties || ![*p_mOriginalProperties textScaleOverridden])
                                  {
                                    goto LABEL_613;
                                  }

                                  if (*p_mOriginalProperties)
                                  {
                                    v94 = [*p_mOriginalProperties textScale];
                                  }

                                  else
                                  {
                                    v94 = 0;
                                  }

                                  v95 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v95) = [v95 textScale];
                                  }

                                  if (v94 != v95)
                                  {
                                    goto LABEL_613;
                                  }
                                }

                                if (!*p_mTrackedProperties)
                                {
                                  goto LABEL_583;
                                }

                                if ([*p_mTrackedProperties embossedOverridden])
                                {
                                  if (!*p_mOriginalProperties || ![*p_mOriginalProperties embossedOverridden])
                                  {
                                    goto LABEL_613;
                                  }

                                  if (*p_mOriginalProperties)
                                  {
                                    v96 = [*p_mOriginalProperties embossed];
                                  }

                                  else
                                  {
                                    v96 = 0;
                                  }

                                  v97 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v97) = [v97 embossed];
                                  }

                                  if (v96 != v97)
                                  {
                                    goto LABEL_613;
                                  }
                                }

                                if (!*p_mTrackedProperties)
                                {
                                  goto LABEL_583;
                                }

                                if ([*p_mTrackedProperties imprintOverridden])
                                {
                                  if (!*p_mOriginalProperties || ![*p_mOriginalProperties imprintOverridden])
                                  {
                                    goto LABEL_613;
                                  }

                                  if (*p_mOriginalProperties)
                                  {
                                    v98 = [*p_mOriginalProperties imprint];
                                  }

                                  else
                                  {
                                    v98 = 0;
                                  }

                                  v99 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v99) = [v99 imprint];
                                  }

                                  if (v98 != v99)
                                  {
                                    goto LABEL_613;
                                  }
                                }

                                if (!*p_mTrackedProperties)
                                {
                                  goto LABEL_583;
                                }

                                if ([*p_mTrackedProperties underlineOverridden])
                                {
                                  if (!*p_mOriginalProperties || ![*p_mOriginalProperties underlineOverridden])
                                  {
                                    goto LABEL_613;
                                  }

                                  if (*p_mOriginalProperties)
                                  {
                                    v100 = [*p_mOriginalProperties underline];
                                  }

                                  else
                                  {
                                    v100 = 0;
                                  }

                                  v101 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v101) = [v101 underline];
                                  }

                                  if (v100 != v101)
                                  {
                                    goto LABEL_613;
                                  }
                                }

                                if (!*p_mTrackedProperties)
                                {
                                  goto LABEL_583;
                                }

                                if ([*p_mTrackedProperties strikeThroughOverridden])
                                {
                                  if (!*p_mOriginalProperties || ![*p_mOriginalProperties strikeThroughOverridden])
                                  {
                                    goto LABEL_613;
                                  }

                                  if (*p_mOriginalProperties)
                                  {
                                    v102 = [*p_mOriginalProperties strikeThrough];
                                  }

                                  else
                                  {
                                    v102 = 0;
                                  }

                                  v103 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v103) = [v103 strikeThrough];
                                  }

                                  if (v102 != v103)
                                  {
                                    goto LABEL_613;
                                  }
                                }

                                if (!*p_mTrackedProperties)
                                {
                                  goto LABEL_583;
                                }

                                if ([*p_mTrackedProperties doubleStrikeThroughOverridden])
                                {
                                  if (!*p_mOriginalProperties || ![*p_mOriginalProperties doubleStrikeThroughOverridden])
                                  {
                                    goto LABEL_613;
                                  }

                                  if (*p_mOriginalProperties)
                                  {
                                    v104 = [*p_mOriginalProperties doubleStrikeThrough];
                                  }

                                  else
                                  {
                                    v104 = 0;
                                  }

                                  v105 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v105) = [v105 doubleStrikeThrough];
                                  }

                                  if (v104 != v105)
                                  {
                                    goto LABEL_613;
                                  }
                                }

                                if (!*p_mTrackedProperties)
                                {
                                  goto LABEL_583;
                                }

                                if ([*p_mTrackedProperties ligatureOverridden])
                                {
                                  if (!*p_mOriginalProperties || ![*p_mOriginalProperties ligatureOverridden])
                                  {
                                    goto LABEL_613;
                                  }

                                  if (*p_mOriginalProperties)
                                  {
                                    v106 = [*p_mOriginalProperties ligature];
                                  }

                                  else
                                  {
                                    v106 = 0;
                                  }

                                  v107 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v107) = [v107 ligature];
                                  }

                                  if (v106 != v107)
                                  {
                                    goto LABEL_613;
                                  }
                                }

                                if (!*p_mTrackedProperties)
                                {
                                  goto LABEL_583;
                                }

                                if ([*p_mTrackedProperties highlightOverridden])
                                {
                                  if (!*p_mOriginalProperties || ![*p_mOriginalProperties highlightOverridden])
                                  {
                                    goto LABEL_613;
                                  }

                                  if (*p_mOriginalProperties)
                                  {
                                    v108 = [*p_mOriginalProperties highlight];
                                  }

                                  else
                                  {
                                    v108 = 0;
                                  }

                                  v109 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v109) = [v109 highlight];
                                  }

                                  if (v108 != v109)
                                  {
                                    goto LABEL_613;
                                  }
                                }

                                if (!*p_mTrackedProperties)
                                {
                                  goto LABEL_583;
                                }

                                if ([*p_mTrackedProperties highlightColorOverridden])
                                {
                                  if (!*p_mOriginalProperties || ![*p_mOriginalProperties highlightColorOverridden])
                                  {
                                    goto LABEL_613;
                                  }

                                  if (*p_mOriginalProperties)
                                  {
                                    v110 = [*p_mOriginalProperties highlightColor];
                                  }

                                  else
                                  {
                                    v110 = 0;
                                  }

                                  v116 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v116) = [v116 highlightColor];
                                  }

                                  if (v110 != v116)
                                  {
                                    goto LABEL_613;
                                  }
                                }

                                if (!*p_mTrackedProperties)
                                {
                                  goto LABEL_583;
                                }

                                if ([*p_mTrackedProperties smallCapsOverridden])
                                {
                                  if (!*p_mOriginalProperties || ![*p_mOriginalProperties smallCapsOverridden])
                                  {
                                    goto LABEL_613;
                                  }

                                  if (*p_mOriginalProperties)
                                  {
                                    v117 = [*p_mOriginalProperties smallCapsOverridden];
                                  }

                                  else
                                  {
                                    v117 = 0;
                                  }

                                  v118 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v118) = [v118 smallCapsOverridden];
                                  }

                                  if (v117 != v118)
                                  {
                                    goto LABEL_613;
                                  }
                                }

                                if (!*p_mTrackedProperties)
                                {
                                  goto LABEL_583;
                                }

                                if ([*p_mTrackedProperties capsOverridden])
                                {
                                  if (!*p_mOriginalProperties || ![*p_mOriginalProperties capsOverridden])
                                  {
                                    goto LABEL_613;
                                  }

                                  if (*p_mOriginalProperties)
                                  {
                                    v119 = [*p_mOriginalProperties capsOverridden];
                                  }

                                  else
                                  {
                                    v119 = 0;
                                  }

                                  v120 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v120) = [v120 capsOverridden];
                                  }

                                  if (v119 != v120)
                                  {
                                    goto LABEL_613;
                                  }
                                }

                                if (!*p_mTrackedProperties)
                                {
                                  goto LABEL_583;
                                }

                                if ([*p_mTrackedProperties lowerCaseOverridden])
                                {
                                  if (!*p_mOriginalProperties || ![*p_mOriginalProperties lowerCaseOverridden])
                                  {
                                    goto LABEL_613;
                                  }

                                  if (*p_mOriginalProperties)
                                  {
                                    v121 = [*p_mOriginalProperties lowerCase];
                                  }

                                  else
                                  {
                                    v121 = 0;
                                  }

                                  v122 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v122) = [v122 lowerCase];
                                  }

                                  if (v121 != v122)
                                  {
                                    goto LABEL_613;
                                  }
                                }

                                if (!*p_mTrackedProperties)
                                {
                                  goto LABEL_583;
                                }

                                if ([*p_mTrackedProperties hiddenOverridden])
                                {
                                  if (!*p_mOriginalProperties || ![*p_mOriginalProperties hiddenOverridden])
                                  {
                                    goto LABEL_613;
                                  }

                                  if (*p_mOriginalProperties)
                                  {
                                    v123 = [*p_mOriginalProperties hidden];
                                  }

                                  else
                                  {
                                    v123 = 0;
                                  }

                                  v125 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v125) = [v125 hidden];
                                  }

                                  if (v123 != v125)
                                  {
                                    goto LABEL_613;
                                  }
                                }

                                if (!*p_mTrackedProperties)
                                {
                                  goto LABEL_583;
                                }

                                if ([*p_mTrackedProperties spacingOverridden])
                                {
                                  if (!*p_mOriginalProperties || ![*p_mOriginalProperties spacingOverridden])
                                  {
                                    goto LABEL_613;
                                  }

                                  if (*p_mOriginalProperties)
                                  {
                                    v126 = [*p_mOriginalProperties spacing];
                                  }

                                  else
                                  {
                                    v126 = 0;
                                  }

                                  v127 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v127) = [v127 spacing];
                                  }

                                  if (v126 != v127)
                                  {
                                    goto LABEL_613;
                                  }
                                }

                                if (!*p_mTrackedProperties)
                                {
                                  goto LABEL_583;
                                }

                                if ([*p_mTrackedProperties positionOverridden])
                                {
                                  if (!*p_mOriginalProperties || ![*p_mOriginalProperties positionOverridden])
                                  {
                                    goto LABEL_613;
                                  }

                                  if (*p_mOriginalProperties)
                                  {
                                    v128 = [*p_mOriginalProperties position];
                                  }

                                  else
                                  {
                                    v128 = 0;
                                  }

                                  v129 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v129) = [v129 position];
                                  }

                                  if (v128 != v129)
                                  {
                                    goto LABEL_613;
                                  }
                                }

                                if (!*p_mTrackedProperties)
                                {
                                  goto LABEL_583;
                                }

                                if ([*p_mTrackedProperties fontSizeOverridden])
                                {
                                  if (!*p_mOriginalProperties || ![*p_mOriginalProperties fontSizeOverridden])
                                  {
                                    goto LABEL_613;
                                  }

                                  if (*p_mOriginalProperties)
                                  {
                                    v130 = [*p_mOriginalProperties fontSize];
                                  }

                                  else
                                  {
                                    v130 = 0;
                                  }

                                  v131 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v131) = [v131 fontSize];
                                  }

                                  if (v130 != v131)
                                  {
                                    goto LABEL_613;
                                  }
                                }

                                if (!*p_mTrackedProperties)
                                {
                                  goto LABEL_583;
                                }

                                if ([*p_mTrackedProperties verticalAlignOverridden])
                                {
                                  if (!*p_mOriginalProperties || ![*p_mOriginalProperties verticalAlignOverridden])
                                  {
                                    goto LABEL_613;
                                  }

                                  if (*p_mOriginalProperties)
                                  {
                                    v132 = [*p_mOriginalProperties verticalAlign];
                                  }

                                  else
                                  {
                                    v132 = 0;
                                  }

                                  v133 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v133) = [v133 verticalAlign];
                                  }

                                  if (v132 != v133)
                                  {
                                    goto LABEL_613;
                                  }
                                }

                                if (!*p_mTrackedProperties)
                                {
                                  goto LABEL_583;
                                }

                                if ([*p_mTrackedProperties emphasisMarkOverridden])
                                {
                                  if (!*p_mOriginalProperties || ![*p_mOriginalProperties emphasisMarkOverridden])
                                  {
                                    goto LABEL_613;
                                  }

                                  if (*p_mOriginalProperties)
                                  {
                                    v134 = [*p_mOriginalProperties emphasisMark];
                                  }

                                  else
                                  {
                                    v134 = 0;
                                  }

                                  v135 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v135) = [v135 emphasisMark];
                                  }

                                  if (v134 != v135)
                                  {
                                    goto LABEL_613;
                                  }
                                }

                                if (!*p_mTrackedProperties)
                                {
                                  goto LABEL_583;
                                }

                                if ([*p_mTrackedProperties colorAutoOverridden])
                                {
                                  if (!*p_mOriginalProperties || ![*p_mOriginalProperties colorAutoOverridden])
                                  {
                                    goto LABEL_613;
                                  }

                                  if (*p_mOriginalProperties)
                                  {
                                    v136 = [*p_mOriginalProperties colorAuto];
                                  }

                                  else
                                  {
                                    v136 = 0;
                                  }

                                  v137 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v137) = [v137 colorAuto];
                                  }

                                  if (v136 != v137)
                                  {
                                    goto LABEL_613;
                                  }
                                }

                                if (!*p_mTrackedProperties)
                                {
                                  goto LABEL_583;
                                }

                                if ([*p_mTrackedProperties languageForDefaultTextOverridden])
                                {
                                  if (!*p_mOriginalProperties || ![*p_mOriginalProperties languageForDefaultTextOverridden])
                                  {
                                    goto LABEL_613;
                                  }

                                  if (*p_mOriginalProperties)
                                  {
                                    v138 = [*p_mOriginalProperties languageForDefaultText];
                                  }

                                  else
                                  {
                                    v138 = 0;
                                  }

                                  v139 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v139) = [v139 languageForDefaultText];
                                  }

                                  if (v138 != v139)
                                  {
                                    goto LABEL_613;
                                  }
                                }

                                if (!*p_mTrackedProperties)
                                {
                                  goto LABEL_583;
                                }

                                if ([*p_mTrackedProperties specialCharacterOverridden])
                                {
                                  if (!*p_mOriginalProperties || ![*p_mOriginalProperties specialCharacterOverridden])
                                  {
                                    goto LABEL_613;
                                  }

                                  if (*p_mOriginalProperties)
                                  {
                                    v140 = [*p_mOriginalProperties specialCharacter];
                                  }

                                  else
                                  {
                                    v140 = 0;
                                  }

                                  v141 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v141) = [v141 specialCharacter];
                                  }

                                  if (v140 != v141)
                                  {
                                    goto LABEL_613;
                                  }
                                }

                                if (!*p_mTrackedProperties)
                                {
                                  goto LABEL_583;
                                }

                                if ([*p_mTrackedProperties listCharacterPictureBulletOverridden])
                                {
                                  if (!*p_mOriginalProperties || ![*p_mOriginalProperties listCharacterPictureBulletOverridden])
                                  {
                                    goto LABEL_613;
                                  }

                                  if (*p_mOriginalProperties)
                                  {
                                    v142 = [*p_mOriginalProperties listCharacterPictureBullet];
                                  }

                                  else
                                  {
                                    v142 = 0;
                                  }

                                  v143 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v143) = [v143 listCharacterPictureBullet];
                                  }

                                  if (v142 != v143)
                                  {
                                    goto LABEL_613;
                                  }
                                }

                                if (!*p_mTrackedProperties)
                                {
                                  goto LABEL_583;
                                }

                                if ([*p_mTrackedProperties charPositionOfPictureBulletInBookmarkOverridden])
                                {
                                  if (!*p_mOriginalProperties || ![*p_mOriginalProperties charPositionOfPictureBulletInBookmarkOverridden])
                                  {
                                    goto LABEL_613;
                                  }

                                  if (*p_mOriginalProperties)
                                  {
                                    v144 = [*p_mOriginalProperties charPositionOfPictureBulletInBookmark];
                                  }

                                  else
                                  {
                                    v144 = 0;
                                  }

                                  v145 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v145) = [v145 charPositionOfPictureBulletInBookmark];
                                  }

                                  if (v144 != v145)
                                  {
                                    goto LABEL_613;
                                  }
                                }

                                if (!*p_mTrackedProperties)
                                {
                                  goto LABEL_583;
                                }

                                if ([*p_mTrackedProperties languageForFarEastOverridden])
                                {
                                  if (!*p_mOriginalProperties || ![*p_mOriginalProperties languageForFarEastOverridden])
                                  {
                                    goto LABEL_613;
                                  }

                                  if (*p_mOriginalProperties)
                                  {
                                    v146 = [*p_mOriginalProperties languageForFarEast];
                                  }

                                  else
                                  {
                                    v146 = 0;
                                  }

                                  v147 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v147) = [v147 languageForFarEast];
                                  }

                                  if (v146 != v147)
                                  {
                                    goto LABEL_613;
                                  }
                                }

                                if (!*p_mTrackedProperties)
                                {
LABEL_583:
                                  v92 = 0;
                                  if (!v87)
                                  {
                                    goto LABEL_584;
                                  }

                                  goto LABEL_614;
                                }

                                if (![*p_mTrackedProperties languageForBiTextOverridden])
                                {
                                  goto LABEL_626;
                                }

                                if (*p_mOriginalProperties && [*p_mOriginalProperties languageForBiTextOverridden])
                                {
                                  if (*p_mOriginalProperties)
                                  {
                                    v148 = [*p_mOriginalProperties languageForBiText];
                                  }

                                  else
                                  {
                                    v148 = 0;
                                  }

                                  v149 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v149) = [v149 languageForBiText];
                                  }

                                  if (v148 == v149)
                                  {
LABEL_626:
                                    if (!*p_mTrackedProperties || ![*p_mTrackedProperties shadow2010OpacityOverridden])
                                    {
                                      v92 = 0;
                                      if (!v87)
                                      {
                                        goto LABEL_584;
                                      }

                                      goto LABEL_614;
                                    }

                                    if (*p_mOriginalProperties && [*p_mOriginalProperties shadow2010OpacityOverridden])
                                    {
                                      v150 = 0.0;
                                      v151 = 0.0;
                                      if (*p_mOriginalProperties)
                                      {
                                        [*p_mOriginalProperties shadow2010Opacity];
                                        v151 = v152;
                                      }

                                      if (*p_mTrackedProperties)
                                      {
                                        [*p_mTrackedProperties shadow2010Opacity];
                                        v150 = v153;
                                      }

                                      v92 = v151 != v150;
                                      if (!v87)
                                      {
LABEL_584:
                                        LOBYTE(v87) = v92;
                                        if (!v160)
                                        {
                                          goto LABEL_585;
                                        }

                                        goto LABEL_615;
                                      }

LABEL_614:

                                      LOBYTE(v87) = v92;
                                      if (!v160)
                                      {
LABEL_585:
                                        if (!v20)
                                        {
                                          goto LABEL_586;
                                        }

                                        goto LABEL_273;
                                      }

LABEL_615:

                                      LOBYTE(v87) = v92;
                                      if (!v20)
                                      {
LABEL_586:
                                        if (v19)
                                        {
LABEL_587:

                                          if (!v17)
                                          {
                                            goto LABEL_588;
                                          }

                                          goto LABEL_275;
                                        }

LABEL_274:
                                        if (!v17)
                                        {
                                          goto LABEL_588;
                                        }

                                        goto LABEL_275;
                                      }

LABEL_273:

                                      if (v19)
                                      {
                                        goto LABEL_587;
                                      }

                                      goto LABEL_274;
                                    }
                                  }
                                }
                              }
                            }

LABEL_613:
                            v92 = 1;
                            if (!v87)
                            {
                              goto LABEL_584;
                            }

                            goto LABEL_614;
                          }

LABEL_265:
                          v17 = 0;
                          v18 = 0;
                          v19 = 0;
                          v20 = 0;
                          goto LABEL_266;
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

LABEL_596:
}

- (void)setBaseStyle:(id)a3
{
  v12 = a3;
  if (self->mTracked)
  {
    mTrackedProperties = self->mTrackedProperties;
    p_mTrackedProperties = &self->mTrackedProperties;
    v4 = mTrackedProperties;
    if (mTrackedProperties || (v7 = objc_alloc_init(WDCharacterPropertiesValues), v8 = *p_mTrackedProperties, *p_mTrackedProperties = v7, v8, (v4 = *p_mTrackedProperties) != 0))
    {
LABEL_8:
      [(WDCharacterPropertiesValues *)v4 setBaseStyle:v12];
      [(WDCharacterPropertiesValues *)*p_mTrackedProperties setBaseStyleOverridden:v12 != 0];
    }
  }

  else if (self->mOriginal)
  {
    mOriginalProperties = self->mOriginalProperties;
    p_mTrackedProperties = &self->mOriginalProperties;
    v4 = mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_8;
    }

    v10 = objc_alloc_init(WDCharacterPropertiesValues);
    v11 = *p_mTrackedProperties;
    *p_mTrackedProperties = v10;

    v4 = *p_mTrackedProperties;
    if (*p_mTrackedProperties)
    {
      goto LABEL_8;
    }
  }
}

- (id)border
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties borderOverridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    goto LABEL_10;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    goto LABEL_11;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if ([v5 borderOverridden])
  {
LABEL_9:
    v5 = [(WDCharacterPropertiesValues *)*p_mTrackedProperties border];
  }

  else
  {
LABEL_10:
    v5 = 0;
  }

LABEL_11:

  return v5;
}

- (BOOL)isBorderOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties borderOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 borderOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties borderOverridden];
}

- (void)setFont:(id)a3
{
  v12 = a3;
  if (v12)
  {
    if (self->mTracked)
    {
      mTrackedProperties = self->mTrackedProperties;
      p_mTrackedProperties = &self->mTrackedProperties;
      v4 = mTrackedProperties;
      if (mTrackedProperties || (v7 = objc_alloc_init(WDCharacterPropertiesValues), v8 = *p_mTrackedProperties, *p_mTrackedProperties = v7, v8, (v4 = *p_mTrackedProperties) != 0))
      {
LABEL_9:
        [(WDCharacterPropertiesValues *)v4 setFont:v12];
        [(WDCharacterPropertiesValues *)*p_mTrackedProperties setFontOverridden:1];
      }
    }

    else if (self->mOriginal)
    {
      mOriginalProperties = self->mOriginalProperties;
      p_mTrackedProperties = &self->mOriginalProperties;
      v4 = mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }

      v10 = objc_alloc_init(WDCharacterPropertiesValues);
      v11 = *p_mTrackedProperties;
      *p_mTrackedProperties = v10;

      v4 = *p_mTrackedProperties;
      if (*p_mTrackedProperties)
      {
        goto LABEL_9;
      }
    }
  }
}

- (id)extendedFont
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties extendedFontOverridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    goto LABEL_10;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    goto LABEL_11;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if ([v5 extendedFontOverridden])
  {
LABEL_9:
    v5 = [(WDCharacterPropertiesValues *)*p_mTrackedProperties extendedFont];
  }

  else
  {
LABEL_10:
    v5 = 0;
  }

LABEL_11:

  return v5;
}

- (void)setExtendedFont:(id)a3
{
  v12 = a3;
  if (v12)
  {
    if (self->mTracked)
    {
      mTrackedProperties = self->mTrackedProperties;
      p_mTrackedProperties = &self->mTrackedProperties;
      v4 = mTrackedProperties;
      if (mTrackedProperties || (v7 = objc_alloc_init(WDCharacterPropertiesValues), v8 = *p_mTrackedProperties, *p_mTrackedProperties = v7, v8, (v4 = *p_mTrackedProperties) != 0))
      {
LABEL_9:
        [(WDCharacterPropertiesValues *)v4 setExtendedFont:v12];
        [(WDCharacterPropertiesValues *)*p_mTrackedProperties setExtendedFontOverridden:1];
      }
    }

    else if (self->mOriginal)
    {
      mOriginalProperties = self->mOriginalProperties;
      p_mTrackedProperties = &self->mOriginalProperties;
      v4 = mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }

      v10 = objc_alloc_init(WDCharacterPropertiesValues);
      v11 = *p_mTrackedProperties;
      *p_mTrackedProperties = v10;

      v4 = *p_mTrackedProperties;
      if (*p_mTrackedProperties)
      {
        goto LABEL_9;
      }
    }
  }
}

- (BOOL)isExtendedFontOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties extendedFontOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 extendedFontOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties extendedFontOverridden];
}

- (id)farEastFont
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties farEastFontOverridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    goto LABEL_10;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    goto LABEL_11;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if ([v5 farEastFontOverridden])
  {
LABEL_9:
    v5 = [(WDCharacterPropertiesValues *)*p_mTrackedProperties farEastFont];
  }

  else
  {
LABEL_10:
    v5 = 0;
  }

LABEL_11:

  return v5;
}

- (void)setFarEastFont:(id)a3
{
  v12 = a3;
  if (v12)
  {
    if (self->mTracked)
    {
      mTrackedProperties = self->mTrackedProperties;
      p_mTrackedProperties = &self->mTrackedProperties;
      v4 = mTrackedProperties;
      if (mTrackedProperties || (v7 = objc_alloc_init(WDCharacterPropertiesValues), v8 = *p_mTrackedProperties, *p_mTrackedProperties = v7, v8, (v4 = *p_mTrackedProperties) != 0))
      {
LABEL_9:
        [(WDCharacterPropertiesValues *)v4 setFarEastFont:v12];
        [(WDCharacterPropertiesValues *)*p_mTrackedProperties setFarEastFontOverridden:1];
      }
    }

    else if (self->mOriginal)
    {
      mOriginalProperties = self->mOriginalProperties;
      p_mTrackedProperties = &self->mOriginalProperties;
      v4 = mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }

      v10 = objc_alloc_init(WDCharacterPropertiesValues);
      v11 = *p_mTrackedProperties;
      *p_mTrackedProperties = v10;

      v4 = *p_mTrackedProperties;
      if (*p_mTrackedProperties)
      {
        goto LABEL_9;
      }
    }
  }
}

- (BOOL)isFarEastFontOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties farEastFontOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 farEastFontOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties farEastFontOverridden];
}

- (id)symbolFont
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties symbolFontOverridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    goto LABEL_10;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    goto LABEL_11;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if ([v5 symbolFontOverridden])
  {
LABEL_9:
    v5 = [(WDCharacterPropertiesValues *)*p_mTrackedProperties symbolFont];
  }

  else
  {
LABEL_10:
    v5 = 0;
  }

LABEL_11:

  return v5;
}

- (void)setSymbolFont:(id)a3
{
  v12 = a3;
  if (v12)
  {
    if (self->mTracked)
    {
      mTrackedProperties = self->mTrackedProperties;
      p_mTrackedProperties = &self->mTrackedProperties;
      v4 = mTrackedProperties;
      if (mTrackedProperties || (v7 = objc_alloc_init(WDCharacterPropertiesValues), v8 = *p_mTrackedProperties, *p_mTrackedProperties = v7, v8, (v4 = *p_mTrackedProperties) != 0))
      {
LABEL_9:
        [(WDCharacterPropertiesValues *)v4 setSymbolFont:v12];
        [(WDCharacterPropertiesValues *)*p_mTrackedProperties setSymbolFontOverridden:1];
      }
    }

    else if (self->mOriginal)
    {
      mOriginalProperties = self->mOriginalProperties;
      p_mTrackedProperties = &self->mOriginalProperties;
      v4 = mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }

      v10 = objc_alloc_init(WDCharacterPropertiesValues);
      v11 = *p_mTrackedProperties;
      *p_mTrackedProperties = v10;

      v4 = *p_mTrackedProperties;
      if (*p_mTrackedProperties)
      {
        goto LABEL_9;
      }
    }
  }
}

- (BOOL)isSymbolFontOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties symbolFontOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 symbolFontOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties symbolFontOverridden];
}

- (id)fontForFontType:(int)a3
{
  v4 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v4 = [(WDCharacterProperties *)self extendedFont];
    }

    else if (a3 == 3)
    {
      v4 = [(WDCharacterProperties *)self symbolFont];
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v4 = [(WDCharacterProperties *)self farEastFont];
    }
  }

  else
  {
    v4 = [(WDCharacterProperties *)self font];
  }

  return v4;
}

- (BOOL)isFontOverriddenForFontType:(int)a3
{
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        return [(WDCharacterProperties *)self isSymbolFontOverridden];
      }

      return 0;
    }

    return [(WDCharacterProperties *)self isExtendedFontOverridden];
  }

  else
  {
    if (a3)
    {
      if (a3 == 1)
      {
        return [(WDCharacterProperties *)self isFarEastFontOverridden];
      }

      return 0;
    }

    return [(WDCharacterProperties *)self isFontOverridden];
  }
}

- (void)setFont:(id)a3 forFontType:(int)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      [(WDCharacterProperties *)self setFont:v6];
    }

    [(WDCharacterProperties *)self setFarEastFont:v7];
    goto LABEL_10;
  }

  if (a4 == 2)
  {
LABEL_10:
    [(WDCharacterProperties *)self setExtendedFont:v7];
    goto LABEL_11;
  }

  if (a4 == 3)
  {
LABEL_11:
    [(WDCharacterProperties *)self setSymbolFont:v7];
  }

LABEL_12:
}

+ (SEL)fontSelectorForFontType:(int)a3
{
  result = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      return sel_extendedFont;
    }

    else if (a3 == 3)
    {
      return sel_symbolFont;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      return sel_farEastFont;
    }
  }

  else
  {
    return sel_font;
  }

  return result;
}

+ (SEL)fontOverriddenSelectorForFontType:(int)a3
{
  result = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      return sel_isExtendedFontOverridden;
    }

    else if (a3 == 3)
    {
      return sel_isSymbolFontOverridden;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      return sel_isFarEastFontOverridden;
    }
  }

  else
  {
    return sel_isFontOverridden;
  }

  return result;
}

+ (SEL)setFontSelectorForFontType:(int)a3
{
  result = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      return sel_setExtendedFont_;
    }

    else if (a3 == 3)
    {
      return sel_setSymbolFont_;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      return sel_setFarEastFont_;
    }
  }

  else
  {
    return sel_setFont_;
  }

  return result;
}

- (int)fontHint
{
  if (!self->mTracked && !self->mResolved || (p_mTrackedProperties = &self->mTrackedProperties, (mTrackedProperties = self->mTrackedProperties) == 0) || ![(WDCharacterPropertiesValues *)mTrackedProperties fontHintOverridden])
  {
    if (!self->mOriginal && !self->mResolved)
    {
      return -1;
    }

    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v5 = mOriginalProperties;
    if (!mOriginalProperties)
    {
      return -1;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if (![(WDCharacterPropertiesValues *)v5 fontHintOverridden])
    {
      return -1;
    }
  }

  v8 = *p_mTrackedProperties;

  return [(WDCharacterPropertiesValues *)v8 fontHint];
}

- (void)setFontHint:(int)a3
{
  if ((a3 - 4) < 0xFFFFFFFD)
  {
    return;
  }

  v3 = *&a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_8:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setFontHint:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setFontHintOverridden:1];
}

- (BOOL)isFontHintOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties fontHintOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 fontHintOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties fontHintOverridden];
}

- (unsigned)symbolCharacter
{
  if (!self->mTracked && !self->mResolved || (p_mTrackedProperties = &self->mTrackedProperties, (mTrackedProperties = self->mTrackedProperties) == 0) || ![(WDCharacterPropertiesValues *)mTrackedProperties symbolCharacterOverridden])
  {
    if (!self->mOriginal && !self->mResolved)
    {
      return 0;
    }

    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v5 = mOriginalProperties;
    if (!mOriginalProperties)
    {
      return 0;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if (![(WDCharacterPropertiesValues *)v5 symbolCharacterOverridden])
    {
      return 0;
    }
  }

  v8 = *p_mTrackedProperties;

  return [(WDCharacterPropertiesValues *)v8 symbolCharacter];
}

- (void)setSymbolCharacter:(unsigned __int16)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setSymbolCharacter:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setSymbolCharacterOverridden:1];
}

- (BOOL)isSymbolCharacterOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties symbolCharacterOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 symbolCharacterOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties symbolCharacterOverridden];
}

- (void)setBold:(int)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setBold:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setBoldOverridden:1];
}

- (int)boldForBiText
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties boldForBiTextOverridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    LODWORD(v5) = 0;
    return v5;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (mOriginalProperties)
  {
    LODWORD(v5) = [(WDCharacterPropertiesValues *)v5 boldForBiTextOverridden];
    p_mTrackedProperties = p_mOriginalProperties;
    if (v5)
    {
LABEL_9:
      LODWORD(v5) = [(WDCharacterPropertiesValues *)*p_mTrackedProperties boldForBiText];
    }
  }

  return v5;
}

- (void)setBoldForBiText:(int)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setBoldForBiText:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setBoldForBiTextOverridden:1];
}

- (BOOL)isBoldForBiTextOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties boldForBiTextOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 boldForBiTextOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties boldForBiTextOverridden];
}

- (void)setItalic:(int)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setItalic:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setItalicOverridden:1];
}

- (int)italicForBiText
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties italicForBiTextOverridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    LODWORD(v5) = 0;
    return v5;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (mOriginalProperties)
  {
    LODWORD(v5) = [(WDCharacterPropertiesValues *)v5 italicForBiTextOverridden];
    p_mTrackedProperties = p_mOriginalProperties;
    if (v5)
    {
LABEL_9:
      LODWORD(v5) = [(WDCharacterPropertiesValues *)*p_mTrackedProperties italicForBiText];
    }
  }

  return v5;
}

- (void)setItalicForBiText:(int)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setItalicForBiText:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setItalicForBiTextOverridden:1];
}

- (BOOL)isItalicForBiTextOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties italicForBiTextOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 italicForBiTextOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties italicForBiTextOverridden];
}

- (int)outline
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties outlineOverridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    LODWORD(v5) = 0;
    return v5;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (mOriginalProperties)
  {
    LODWORD(v5) = [(WDCharacterPropertiesValues *)v5 outlineOverridden];
    p_mTrackedProperties = p_mOriginalProperties;
    if (v5)
    {
LABEL_9:
      LODWORD(v5) = [(WDCharacterPropertiesValues *)*p_mTrackedProperties outline];
    }
  }

  return v5;
}

- (void)setOutline:(int)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setOutline:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setOutlineOverridden:1];
}

- (BOOL)isOutlineOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties outlineOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 outlineOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties outlineOverridden];
}

- (id)outlineColor
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties outlineColorOverridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    goto LABEL_10;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    goto LABEL_11;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if ([v5 outlineColorOverridden])
  {
LABEL_9:
    v5 = [(WDCharacterPropertiesValues *)*p_mTrackedProperties outlineColor];
  }

  else
  {
LABEL_10:
    v5 = 0;
  }

LABEL_11:

  return v5;
}

- (void)setOutlineColor:(id)a3
{
  v12 = a3;
  if (self->mTracked)
  {
    mTrackedProperties = self->mTrackedProperties;
    p_mTrackedProperties = &self->mTrackedProperties;
    v4 = mTrackedProperties;
    if (mTrackedProperties || (v7 = objc_alloc_init(WDCharacterPropertiesValues), v8 = *p_mTrackedProperties, *p_mTrackedProperties = v7, v8, (v4 = *p_mTrackedProperties) != 0))
    {
LABEL_8:
      [(WDCharacterPropertiesValues *)v4 setOutlineColor:v12];
      [(WDCharacterPropertiesValues *)*p_mTrackedProperties setOutlineColorOverridden:1];
    }
  }

  else if (self->mOriginal)
  {
    mOriginalProperties = self->mOriginalProperties;
    p_mTrackedProperties = &self->mOriginalProperties;
    v4 = mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_8;
    }

    v10 = objc_alloc_init(WDCharacterPropertiesValues);
    v11 = *p_mTrackedProperties;
    *p_mTrackedProperties = v10;

    v4 = *p_mTrackedProperties;
    if (*p_mTrackedProperties)
    {
      goto LABEL_8;
    }
  }
}

- (BOOL)isOutlineColorOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties outlineColorOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 outlineColorOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties outlineColorOverridden];
}

- (float)outline2010Width
{
  if (!self->mTracked && !self->mResolved || (p_mTrackedProperties = &self->mTrackedProperties, (mTrackedProperties = self->mTrackedProperties) == 0) || ![(WDCharacterPropertiesValues *)mTrackedProperties outline2010WidthOverridden])
  {
    if (!self->mOriginal && !self->mResolved)
    {
      return 0.0;
    }

    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v5 = mOriginalProperties;
    if (!mOriginalProperties)
    {
      return 0.0;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if (![(WDCharacterPropertiesValues *)v5 outline2010WidthOverridden])
    {
      return 0.0;
    }
  }

  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 outline2010Width];
  return result;
}

- (void)setOutline2010Width:(float)a3
{
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  *&v8 = a3;
  [(WDCharacterPropertiesValues *)mTrackedProperties setOutline2010Width:v8];
  v9 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v9 setOutline2010WidthOverridden:1];
}

- (BOOL)isOutline2010WidthOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties outline2010WidthOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 outline2010WidthOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties outline2010WidthOverridden];
}

- (int)embossed
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties embossedOverridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    LODWORD(v5) = 0;
    return v5;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (mOriginalProperties)
  {
    LODWORD(v5) = [(WDCharacterPropertiesValues *)v5 embossedOverridden];
    p_mTrackedProperties = p_mOriginalProperties;
    if (v5)
    {
LABEL_9:
      LODWORD(v5) = [(WDCharacterPropertiesValues *)*p_mTrackedProperties embossed];
    }
  }

  return v5;
}

- (void)setEmbossed:(int)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setEmbossed:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setEmbossedOverridden:1];
}

- (BOOL)isEmbossedOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties embossedOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 embossedOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties embossedOverridden];
}

- (int)imprint
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties imprintOverridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    LODWORD(v5) = 0;
    return v5;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (mOriginalProperties)
  {
    LODWORD(v5) = [(WDCharacterPropertiesValues *)v5 imprintOverridden];
    p_mTrackedProperties = p_mOriginalProperties;
    if (v5)
    {
LABEL_9:
      LODWORD(v5) = [(WDCharacterPropertiesValues *)*p_mTrackedProperties imprint];
    }
  }

  return v5;
}

- (void)setImprint:(int)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setImprint:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setImprintOverridden:1];
}

- (BOOL)isImprintOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties imprintOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 imprintOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties imprintOverridden];
}

- (int)shadow
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties shadowOverridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    LODWORD(v5) = 0;
    return v5;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (mOriginalProperties)
  {
    LODWORD(v5) = [(WDCharacterPropertiesValues *)v5 shadowOverridden];
    p_mTrackedProperties = p_mOriginalProperties;
    if (v5)
    {
LABEL_9:
      LODWORD(v5) = [(WDCharacterPropertiesValues *)*p_mTrackedProperties shadow];
    }
  }

  return v5;
}

- (void)setShadow:(int)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setShadow:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setShadowOverridden:1];
}

- (BOOL)isShadowOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties shadowOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 shadowOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties shadowOverridden];
}

- (float)shadow2010Opacity
{
  if (!self->mTracked && !self->mResolved || (p_mTrackedProperties = &self->mTrackedProperties, (mTrackedProperties = self->mTrackedProperties) == 0) || ![(WDCharacterPropertiesValues *)mTrackedProperties shadow2010OpacityOverridden])
  {
    if (!self->mOriginal && !self->mResolved)
    {
      return 0.0;
    }

    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v5 = mOriginalProperties;
    if (!mOriginalProperties)
    {
      return 0.0;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if (![(WDCharacterPropertiesValues *)v5 shadow2010OpacityOverridden])
    {
      return 0.0;
    }
  }

  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 shadow2010Opacity];
  return result;
}

- (void)setShadow2010Opacity:(float)a3
{
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  *&v8 = a3;
  [(WDCharacterPropertiesValues *)mTrackedProperties setShadow2010Opacity:v8];
  v9 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v9 setShadow2010OpacityOverridden:1];
}

- (BOOL)isShadow2010OpacityOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties shadow2010OpacityOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 shadow2010OpacityOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties shadow2010OpacityOverridden];
}

- (id)underlineColor
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties underlineColorOverridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    goto LABEL_10;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    goto LABEL_11;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if ([v5 underlineColorOverridden])
  {
LABEL_9:
    v5 = [(WDCharacterPropertiesValues *)*p_mTrackedProperties underlineColor];
  }

  else
  {
LABEL_10:
    v5 = 0;
  }

LABEL_11:

  return v5;
}

- (void)setUnderlineColor:(id)a3
{
  v12 = a3;
  if (self->mTracked)
  {
    mTrackedProperties = self->mTrackedProperties;
    p_mTrackedProperties = &self->mTrackedProperties;
    v4 = mTrackedProperties;
    if (mTrackedProperties || (v7 = objc_alloc_init(WDCharacterPropertiesValues), v8 = *p_mTrackedProperties, *p_mTrackedProperties = v7, v8, (v4 = *p_mTrackedProperties) != 0))
    {
LABEL_8:
      [(WDCharacterPropertiesValues *)v4 setUnderlineColor:v12];
      [(WDCharacterPropertiesValues *)*p_mTrackedProperties setUnderlineColorOverridden:1];
    }
  }

  else if (self->mOriginal)
  {
    mOriginalProperties = self->mOriginalProperties;
    p_mTrackedProperties = &self->mOriginalProperties;
    v4 = mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_8;
    }

    v10 = objc_alloc_init(WDCharacterPropertiesValues);
    v11 = *p_mTrackedProperties;
    *p_mTrackedProperties = v10;

    v4 = *p_mTrackedProperties;
    if (*p_mTrackedProperties)
    {
      goto LABEL_8;
    }
  }
}

- (BOOL)isUnderlineColorOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties underlineColorOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 underlineColorOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties underlineColorOverridden];
}

- (unsigned)kerning
{
  if (!self->mTracked && !self->mResolved || (p_mTrackedProperties = &self->mTrackedProperties, (mTrackedProperties = self->mTrackedProperties) == 0) || ![(WDCharacterPropertiesValues *)mTrackedProperties kerningOverridden])
  {
    if (!self->mOriginal && !self->mResolved)
    {
      return 0;
    }

    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v5 = mOriginalProperties;
    if (!mOriginalProperties)
    {
      return 0;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if (![(WDCharacterPropertiesValues *)v5 kerningOverridden])
    {
      return 0;
    }
  }

  v8 = *p_mTrackedProperties;

  return [(WDCharacterPropertiesValues *)v8 kerning];
}

- (void)setKerning:(unsigned __int16)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setKerning:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setKerningOverridden:1];
}

- (BOOL)isKerningOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties kerningOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 kerningOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties kerningOverridden];
}

- (unsigned)textScale
{
  if (!self->mTracked && !self->mResolved || (p_mTrackedProperties = &self->mTrackedProperties, (mTrackedProperties = self->mTrackedProperties) == 0) || ![(WDCharacterPropertiesValues *)mTrackedProperties textScaleOverridden])
  {
    if (!self->mOriginal && !self->mResolved)
    {
      return 100;
    }

    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v5 = mOriginalProperties;
    if (!mOriginalProperties)
    {
      return 100;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if (![(WDCharacterPropertiesValues *)v5 textScaleOverridden])
    {
      return 100;
    }
  }

  v8 = *p_mTrackedProperties;

  return [(WDCharacterPropertiesValues *)v8 textScale];
}

- (void)setTextScale:(unsigned __int16)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setTextScale:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setTextScaleOverridden:1];
}

- (BOOL)isTextScaleOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties textScaleOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 textScaleOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties textScaleOverridden];
}

- (void)setUnderline:(int)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setUnderline:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setUnderlineOverridden:1];
}

- (void)setStrikeThrough:(int)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setStrikeThrough:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setStrikeThroughOverridden:1];
}

- (void)setDoubleStrikeThrough:(int)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setDoubleStrikeThrough:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setDoubleStrikeThroughOverridden:1];
}

- (BOOL)isHighlight
{
  if (!self->mTracked && !self->mResolved || (p_mTrackedProperties = &self->mTrackedProperties, (mTrackedProperties = self->mTrackedProperties) == 0) || ![(WDCharacterPropertiesValues *)mTrackedProperties highlightOverridden])
  {
    if (!self->mOriginal && !self->mResolved)
    {
      return 0;
    }

    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v5 = mOriginalProperties;
    if (!mOriginalProperties)
    {
      return 0;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if (![(WDCharacterPropertiesValues *)v5 highlightOverridden])
    {
      return 0;
    }
  }

  v8 = *p_mTrackedProperties;

  return [(WDCharacterPropertiesValues *)v8 highlight];
}

- (void)setHighlight:(BOOL)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setHighlight:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setHighlightOverridden:1];
}

- (BOOL)isHighlightOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties highlightOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 highlightOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties highlightOverridden];
}

- (int)highlightColor
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties highlightColorOverridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    LODWORD(v5) = 0;
    return v5;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (mOriginalProperties)
  {
    LODWORD(v5) = [(WDCharacterPropertiesValues *)v5 highlightColorOverridden];
    p_mTrackedProperties = p_mOriginalProperties;
    if (v5)
    {
LABEL_9:
      LODWORD(v5) = [(WDCharacterPropertiesValues *)*p_mTrackedProperties highlightColor];
    }
  }

  return v5;
}

- (void)setHighlightColor:(int)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setHighlightColor:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setHighlightColorOverridden:1];
}

- (BOOL)isHighlightColorOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties highlightColorOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 highlightColorOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties highlightColorOverridden];
}

- (int)ligature
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties ligatureOverridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    LODWORD(v5) = 0;
    return v5;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (mOriginalProperties)
  {
    LODWORD(v5) = [(WDCharacterPropertiesValues *)v5 ligatureOverridden];
    p_mTrackedProperties = p_mOriginalProperties;
    if (v5)
    {
LABEL_9:
      LODWORD(v5) = [(WDCharacterPropertiesValues *)*p_mTrackedProperties ligature];
    }
  }

  return v5;
}

- (void)setLigature:(int)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setLigature:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setLigatureOverridden:1];
}

- (BOOL)isLigatureOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties ligatureOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 ligatureOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties ligatureOverridden];
}

- (void)setSmallCaps:(int)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setSmallCaps:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setSmallCapsOverridden:1];
}

- (void)setCaps:(int)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setCaps:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setCapsOverridden:1];
}

- (BOOL)isLowerCase
{
  if (!self->mTracked && !self->mResolved || (p_mTrackedProperties = &self->mTrackedProperties, (mTrackedProperties = self->mTrackedProperties) == 0) || ![(WDCharacterPropertiesValues *)mTrackedProperties lowerCaseOverridden])
  {
    if (!self->mOriginal && !self->mResolved)
    {
      return 0;
    }

    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v5 = mOriginalProperties;
    if (!mOriginalProperties)
    {
      return 0;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if (![(WDCharacterPropertiesValues *)v5 lowerCaseOverridden])
    {
      return 0;
    }
  }

  v8 = *p_mTrackedProperties;

  return [(WDCharacterPropertiesValues *)v8 lowerCase];
}

- (void)setLowerCase:(BOOL)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setLowerCase:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setLowerCaseOverridden:1];
}

- (BOOL)isLowerCaseOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties lowerCaseOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 lowerCaseOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties lowerCaseOverridden];
}

- (void)setHidden:(int)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setHidden:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setHiddenOverridden:1];
}

- (signed)spacing
{
  if (!self->mTracked && !self->mResolved || (p_mTrackedProperties = &self->mTrackedProperties, (mTrackedProperties = self->mTrackedProperties) == 0) || ![(WDCharacterPropertiesValues *)mTrackedProperties spacingOverridden])
  {
    if (!self->mOriginal && !self->mResolved)
    {
      return 0;
    }

    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v5 = mOriginalProperties;
    if (!mOriginalProperties)
    {
      return 0;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if (![(WDCharacterPropertiesValues *)v5 spacingOverridden])
    {
      return 0;
    }
  }

  v8 = *p_mTrackedProperties;

  return [(WDCharacterPropertiesValues *)v8 spacing];
}

- (void)setSpacing:(signed __int16)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setSpacing:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setSpacingOverridden:1];
}

- (BOOL)isSpacingOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties spacingOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 spacingOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties spacingOverridden];
}

- (signed)position
{
  if (!self->mTracked && !self->mResolved || (p_mTrackedProperties = &self->mTrackedProperties, (mTrackedProperties = self->mTrackedProperties) == 0) || ![(WDCharacterPropertiesValues *)mTrackedProperties positionOverridden])
  {
    if (!self->mOriginal && !self->mResolved)
    {
      return 0;
    }

    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v5 = mOriginalProperties;
    if (!mOriginalProperties)
    {
      return 0;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if (![(WDCharacterPropertiesValues *)v5 positionOverridden])
    {
      return 0;
    }
  }

  v8 = *p_mTrackedProperties;

  return [(WDCharacterPropertiesValues *)v8 position];
}

- (void)setPosition:(signed __int16)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setPosition:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setPositionOverridden:1];
}

- (BOOL)isPositionOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties positionOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 positionOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties positionOverridden];
}

- (void)setFontSize:(unsigned __int16)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setFontSize:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setFontSizeOverridden:1];
}

- (id)reflection
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties reflectionOverridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    goto LABEL_10;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    goto LABEL_11;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if ([v5 reflectionOverridden])
  {
LABEL_9:
    v5 = [(WDCharacterPropertiesValues *)*p_mTrackedProperties reflection];
  }

  else
  {
LABEL_10:
    v5 = 0;
  }

LABEL_11:

  return v5;
}

- (void)setReflection:(id)a3
{
  v12 = a3;
  if (self->mTracked)
  {
    mTrackedProperties = self->mTrackedProperties;
    p_mTrackedProperties = &self->mTrackedProperties;
    v4 = mTrackedProperties;
    if (mTrackedProperties || (v7 = objc_alloc_init(WDCharacterPropertiesValues), v8 = *p_mTrackedProperties, *p_mTrackedProperties = v7, v8, (v4 = *p_mTrackedProperties) != 0))
    {
LABEL_8:
      [(WDCharacterPropertiesValues *)v4 setReflection:v12];
      [(WDCharacterPropertiesValues *)*p_mTrackedProperties setReflectionOverridden:1];
    }
  }

  else if (self->mOriginal)
  {
    mOriginalProperties = self->mOriginalProperties;
    p_mTrackedProperties = &self->mOriginalProperties;
    v4 = mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_8;
    }

    v10 = objc_alloc_init(WDCharacterPropertiesValues);
    v11 = *p_mTrackedProperties;
    *p_mTrackedProperties = v10;

    v4 = *p_mTrackedProperties;
    if (*p_mTrackedProperties)
    {
      goto LABEL_8;
    }
  }
}

- (BOOL)isReflectionOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties reflectionOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 reflectionOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties reflectionOverridden];
}

- (id)shadow2010
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties shadow2010Overridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    goto LABEL_10;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    goto LABEL_11;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if ([v5 shadow2010Overridden])
  {
LABEL_9:
    v5 = [(WDCharacterPropertiesValues *)*p_mTrackedProperties shadow2010];
  }

  else
  {
LABEL_10:
    v5 = 0;
  }

LABEL_11:

  return v5;
}

- (void)setShadow2010:(id)a3
{
  v12 = a3;
  if (self->mTracked)
  {
    mTrackedProperties = self->mTrackedProperties;
    p_mTrackedProperties = &self->mTrackedProperties;
    v4 = mTrackedProperties;
    if (mTrackedProperties || (v7 = objc_alloc_init(WDCharacterPropertiesValues), v8 = *p_mTrackedProperties, *p_mTrackedProperties = v7, v8, (v4 = *p_mTrackedProperties) != 0))
    {
LABEL_8:
      [(WDCharacterPropertiesValues *)v4 setShadow2010:v12];
      [(WDCharacterPropertiesValues *)*p_mTrackedProperties setShadow2010Overridden:1];
    }
  }

  else if (self->mOriginal)
  {
    mOriginalProperties = self->mOriginalProperties;
    p_mTrackedProperties = &self->mOriginalProperties;
    v4 = mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_8;
    }

    v10 = objc_alloc_init(WDCharacterPropertiesValues);
    v11 = *p_mTrackedProperties;
    *p_mTrackedProperties = v10;

    v4 = *p_mTrackedProperties;
    if (*p_mTrackedProperties)
    {
      goto LABEL_8;
    }
  }
}

- (BOOL)isShadow2010Overridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties shadow2010Overridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 shadow2010Overridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties shadow2010Overridden];
}

- (void)setVerticalAlign:(int)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setVerticalAlign:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setVerticalAlignOverridden:1];
}

- (int)emphasisMark
{
  if (!self->mTracked && !self->mResolved || (p_mTrackedProperties = &self->mTrackedProperties, (mTrackedProperties = self->mTrackedProperties) == 0) || ![(WDCharacterPropertiesValues *)mTrackedProperties emphasisMarkOverridden])
  {
    if (!self->mOriginal && !self->mResolved)
    {
      return 0;
    }

    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v5 = mOriginalProperties;
    if (!mOriginalProperties)
    {
      return 0;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if (![(WDCharacterPropertiesValues *)v5 emphasisMarkOverridden])
    {
      return 0;
    }
  }

  v8 = *p_mTrackedProperties;

  return [(WDCharacterPropertiesValues *)v8 emphasisMark];
}

- (void)setEmphasisMark:(int)a3
{
  v3 = *&a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setEmphasisMark:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setEmphasisMarkOverridden:1];
}

- (BOOL)isEmphasisMarkOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties emphasisMarkOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 emphasisMarkOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties emphasisMarkOverridden];
}

- (void)setColor:(id)a3
{
  v12 = a3;
  if (self->mTracked)
  {
    mTrackedProperties = self->mTrackedProperties;
    p_mTrackedProperties = &self->mTrackedProperties;
    v4 = mTrackedProperties;
    if (mTrackedProperties || (v7 = objc_alloc_init(WDCharacterPropertiesValues), v8 = *p_mTrackedProperties, *p_mTrackedProperties = v7, v8, (v4 = *p_mTrackedProperties) != 0))
    {
LABEL_8:
      [(WDCharacterPropertiesValues *)v4 setColor:v12];
      [(WDCharacterPropertiesValues *)*p_mTrackedProperties setColorOverridden:1];
    }
  }

  else if (self->mOriginal)
  {
    mOriginalProperties = self->mOriginalProperties;
    p_mTrackedProperties = &self->mOriginalProperties;
    v4 = mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_8;
    }

    v10 = objc_alloc_init(WDCharacterPropertiesValues);
    v11 = *p_mTrackedProperties;
    *p_mTrackedProperties = v10;

    v4 = *p_mTrackedProperties;
    if (*p_mTrackedProperties)
    {
      goto LABEL_8;
    }
  }
}

- (BOOL)isColorAuto
{
  if (!self->mTracked && !self->mResolved || (p_mTrackedProperties = &self->mTrackedProperties, (mTrackedProperties = self->mTrackedProperties) == 0) || ![(WDCharacterPropertiesValues *)mTrackedProperties colorAutoOverridden])
  {
    if (!self->mOriginal && !self->mResolved)
    {
      return 0;
    }

    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v5 = mOriginalProperties;
    if (!mOriginalProperties)
    {
      return 0;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if (![(WDCharacterPropertiesValues *)v5 colorAutoOverridden])
    {
      return 0;
    }
  }

  v8 = *p_mTrackedProperties;

  return [(WDCharacterPropertiesValues *)v8 colorAuto];
}

- (void)setColorAuto:(BOOL)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setColorAuto:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setColorAutoOverridden:1];
}

- (BOOL)isColorAutoOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties colorAutoOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 colorAutoOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties colorAutoOverridden];
}

- (int)languageForDefaultText
{
  if (!self->mTracked && !self->mResolved || (p_mTrackedProperties = &self->mTrackedProperties, (mTrackedProperties = self->mTrackedProperties) == 0) || ![(WDCharacterPropertiesValues *)mTrackedProperties languageForDefaultTextOverridden])
  {
    if (!self->mOriginal && !self->mResolved)
    {
      return 0;
    }

    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v5 = mOriginalProperties;
    if (!mOriginalProperties)
    {
      return 0;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if (![(WDCharacterPropertiesValues *)v5 languageForDefaultTextOverridden])
    {
      return 0;
    }
  }

  v8 = *p_mTrackedProperties;

  return [(WDCharacterPropertiesValues *)v8 languageForDefaultText];
}

- (void)setLanguageForDefaultText:(int)a3
{
  v3 = *&a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setLanguageForDefaultText:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setLanguageForDefaultTextOverridden:1];
}

- (BOOL)isLanguageForDefaultTextOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties languageForDefaultTextOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 languageForDefaultTextOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties languageForDefaultTextOverridden];
}

- (void)setRightToLeft:(int)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setRightToLeft:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setRightToLeftOverridden:1];
}

- (int)useCsFont
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties useCsFontOverridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    LODWORD(v5) = 0;
    return v5;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (mOriginalProperties)
  {
    LODWORD(v5) = [(WDCharacterPropertiesValues *)v5 useCsFontOverridden];
    p_mTrackedProperties = p_mOriginalProperties;
    if (v5)
    {
LABEL_9:
      LODWORD(v5) = [(WDCharacterPropertiesValues *)*p_mTrackedProperties useCsFont];
    }
  }

  return v5;
}

- (void)setUseCsFont:(int)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setUseCsFont:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setUseCsFontOverridden:1];
}

- (BOOL)isUseCsFontOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties useCsFontOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 useCsFontOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties useCsFontOverridden];
}

- (void)setDeleted:(int)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setDeleted:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setDeletedOverridden:1];
}

- (int)edited
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties editedOverridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    LODWORD(v5) = 0;
    return v5;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (mOriginalProperties)
  {
    LODWORD(v5) = [(WDCharacterPropertiesValues *)v5 editedOverridden];
    p_mTrackedProperties = p_mOriginalProperties;
    if (v5)
    {
LABEL_9:
      LODWORD(v5) = [(WDCharacterPropertiesValues *)*p_mTrackedProperties edited];
    }
  }

  return v5;
}

- (void)setEdited:(int)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setEdited:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setEditedOverridden:1];
}

- (BOOL)isEditedOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties editedOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 editedOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties editedOverridden];
}

- (void)setFormattingChanged:(int)a3
{
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setFormattingChanged:a3 != 0];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setFormattingChangedOverridden:1];
}

- (void)setIndexToAuthorIDOfDeletion:(unsigned __int16)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setIndexToAuthorIDOfDeletion:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setIndexToAuthorIDOfDeletionOverridden:1];
}

- (BOOL)isIndexToAuthorIDOfDeletionOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties indexToAuthorIDOfDeletionOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 indexToAuthorIDOfDeletionOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties indexToAuthorIDOfDeletionOverridden];
}

- (void)setIndexToAuthorIDOfEdit:(unsigned __int16)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setIndexToAuthorIDOfEdit:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setIndexToAuthorIDOfEditOverridden:1];
}

- (BOOL)isIndexToAuthorIDOfEditOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties indexToAuthorIDOfEditOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 indexToAuthorIDOfEditOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties indexToAuthorIDOfEditOverridden];
}

- (unsigned)indexToAuthorIDOfFormattingChange
{
  if (!self->mTracked && !self->mResolved || (p_mTrackedProperties = &self->mTrackedProperties, (mTrackedProperties = self->mTrackedProperties) == 0) || ![(WDCharacterPropertiesValues *)mTrackedProperties indexToAuthorIDOfFormattingChangeOverridden])
  {
    if (!self->mOriginal && !self->mResolved)
    {
      return 0;
    }

    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v5 = mOriginalProperties;
    if (!mOriginalProperties)
    {
      return 0;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if (![(WDCharacterPropertiesValues *)v5 indexToAuthorIDOfFormattingChangeOverridden])
    {
      return 0;
    }
  }

  v8 = *p_mTrackedProperties;

  return [(WDCharacterPropertiesValues *)v8 indexToAuthorIDOfFormattingChange];
}

- (void)setIndexToAuthorIDOfFormattingChange:(unsigned __int16)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setIndexToAuthorIDOfFormattingChange:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setIndexToAuthorIDOfFormattingChangeOverridden:1];
}

- (BOOL)isIndexToAuthorIDOfFormattingChangeOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties indexToAuthorIDOfFormattingChangeOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 indexToAuthorIDOfFormattingChangeOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties indexToAuthorIDOfFormattingChangeOverridden];
}

- (void)setDeletionDate:(id)a3
{
  v12 = a3;
  if (self->mTracked)
  {
    mTrackedProperties = self->mTrackedProperties;
    p_mTrackedProperties = &self->mTrackedProperties;
    v4 = mTrackedProperties;
    if (mTrackedProperties || (v7 = objc_alloc_init(WDCharacterPropertiesValues), v8 = *p_mTrackedProperties, *p_mTrackedProperties = v7, v8, (v4 = *p_mTrackedProperties) != 0))
    {
LABEL_8:
      [(WDCharacterPropertiesValues *)v4 setDeletionDate:v12];
      [(WDCharacterPropertiesValues *)*p_mTrackedProperties setDeletionDateOverridden:1];
    }
  }

  else if (self->mOriginal)
  {
    mOriginalProperties = self->mOriginalProperties;
    p_mTrackedProperties = &self->mOriginalProperties;
    v4 = mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_8;
    }

    v10 = objc_alloc_init(WDCharacterPropertiesValues);
    v11 = *p_mTrackedProperties;
    *p_mTrackedProperties = v10;

    v4 = *p_mTrackedProperties;
    if (*p_mTrackedProperties)
    {
      goto LABEL_8;
    }
  }
}

- (BOOL)isDeletionDateOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties deletionDateOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 deletionDateOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties deletionDateOverridden];
}

- (void)setEditDate:(id)a3
{
  v12 = a3;
  if (self->mTracked)
  {
    mTrackedProperties = self->mTrackedProperties;
    p_mTrackedProperties = &self->mTrackedProperties;
    v4 = mTrackedProperties;
    if (mTrackedProperties || (v7 = objc_alloc_init(WDCharacterPropertiesValues), v8 = *p_mTrackedProperties, *p_mTrackedProperties = v7, v8, (v4 = *p_mTrackedProperties) != 0))
    {
LABEL_8:
      [(WDCharacterPropertiesValues *)v4 setEditDate:v12];
      [(WDCharacterPropertiesValues *)*p_mTrackedProperties setEditDateOverridden:1];
    }
  }

  else if (self->mOriginal)
  {
    mOriginalProperties = self->mOriginalProperties;
    p_mTrackedProperties = &self->mOriginalProperties;
    v4 = mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_8;
    }

    v10 = objc_alloc_init(WDCharacterPropertiesValues);
    v11 = *p_mTrackedProperties;
    *p_mTrackedProperties = v10;

    v4 = *p_mTrackedProperties;
    if (*p_mTrackedProperties)
    {
      goto LABEL_8;
    }
  }
}

- (BOOL)isEditDateOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties editDateOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 editDateOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties editDateOverridden];
}

- (BOOL)deletionDifferentFrom:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(WDCharacterProperties *)self deletionDifferentFrom:v4 mode:0];
    v6 = v5 | [(WDCharacterProperties *)self deletionDifferentFrom:v4 mode:1];
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

- (BOOL)editDifferentFrom:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(WDCharacterProperties *)self editDifferentFrom:v4 mode:0];
    v6 = v5 | [(WDCharacterProperties *)self editDifferentFrom:v4 mode:1];
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

- (BOOL)formattingChangedDifferentFrom:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(WDCharacterProperties *)self formattingChangedDifferentFrom:v4 mode:0];
    v6 = v5 | [(WDCharacterProperties *)self formattingChangedDifferentFrom:v4 mode:1];
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

- (BOOL)isSpecialCharacter
{
  if (!self->mTracked && !self->mResolved || (p_mTrackedProperties = &self->mTrackedProperties, (mTrackedProperties = self->mTrackedProperties) == 0) || ![(WDCharacterPropertiesValues *)mTrackedProperties specialCharacterOverridden])
  {
    if (!self->mOriginal && !self->mResolved)
    {
      return 0;
    }

    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v5 = mOriginalProperties;
    if (!mOriginalProperties)
    {
      return 0;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if (![(WDCharacterPropertiesValues *)v5 specialCharacterOverridden])
    {
      return 0;
    }
  }

  v8 = *p_mTrackedProperties;

  return [(WDCharacterPropertiesValues *)v8 specialCharacter];
}

- (void)setSpecialCharacter:(BOOL)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setSpecialCharacter:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setSpecialCharacterOverridden:1];
}

- (BOOL)isSpecialCharacterOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties specialCharacterOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 specialCharacterOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties specialCharacterOverridden];
}

- (void)setListCharacterPictureBullet:(BOOL)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setListCharacterPictureBullet:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setListCharacterPictureBulletOverridden:1];
}

- (void)setCharPositionOfPictureBulletInBookmark:(int)a3
{
  v3 = *&a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setCharPositionOfPictureBulletInBookmark:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setCharPositionOfPictureBulletInBookmarkOverridden:1];
}

- (int)languageForFarEast
{
  if (!self->mTracked && !self->mResolved || (p_mTrackedProperties = &self->mTrackedProperties, (mTrackedProperties = self->mTrackedProperties) == 0) || ![(WDCharacterPropertiesValues *)mTrackedProperties languageForFarEastOverridden])
  {
    if (!self->mOriginal && !self->mResolved)
    {
      return 1024;
    }

    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v5 = mOriginalProperties;
    if (!mOriginalProperties)
    {
      return 1024;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if (![(WDCharacterPropertiesValues *)v5 languageForFarEastOverridden])
    {
      return 1024;
    }
  }

  v8 = *p_mTrackedProperties;

  return [(WDCharacterPropertiesValues *)v8 languageForFarEast];
}

- (void)setLanguageForFarEast:(int)a3
{
  v3 = *&a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setLanguageForFarEast:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setLanguageForFarEastOverridden:1];
}

- (BOOL)isLanguageForFarEastOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties languageForFarEastOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 languageForFarEastOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties languageForFarEastOverridden];
}

- (int)languageForBiText
{
  if (!self->mTracked && !self->mResolved || (p_mTrackedProperties = &self->mTrackedProperties, (mTrackedProperties = self->mTrackedProperties) == 0) || ![(WDCharacterPropertiesValues *)mTrackedProperties languageForBiTextOverridden])
  {
    if (!self->mOriginal && !self->mResolved)
    {
      return 0;
    }

    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v5 = mOriginalProperties;
    if (!mOriginalProperties)
    {
      return 0;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if (![(WDCharacterPropertiesValues *)v5 languageForBiTextOverridden])
    {
      return 0;
    }
  }

  v8 = *p_mTrackedProperties;

  return [(WDCharacterPropertiesValues *)v8 languageForBiText];
}

- (void)setLanguageForBiText:(int)a3
{
  v3 = *&a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setLanguageForBiText:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setLanguageForBiTextOverridden:1];
}

- (BOOL)isLanguageForBiTextOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties languageForBiTextOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 languageForBiTextOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties languageForBiTextOverridden];
}

- (unsigned)fontSizeForBiText
{
  if (!self->mTracked && !self->mResolved || (p_mTrackedProperties = &self->mTrackedProperties, (mTrackedProperties = self->mTrackedProperties) == 0) || ![(WDCharacterPropertiesValues *)mTrackedProperties fontSizeForBiTextOverridden])
  {
    if (!self->mOriginal && !self->mResolved)
    {
      return 0;
    }

    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v5 = mOriginalProperties;
    if (!mOriginalProperties)
    {
      return 0;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if (![(WDCharacterPropertiesValues *)v5 fontSizeForBiTextOverridden])
    {
      return 0;
    }
  }

  v8 = *p_mTrackedProperties;

  return [(WDCharacterPropertiesValues *)v8 fontSizeForBiText];
}

- (void)setFontSizeForBiText:(unsigned __int16)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setFontSizeForBiText:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setFontSizeForBiTextOverridden:1];
}

- (BOOL)isFontSizeForBiTextOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties fontSizeForBiTextOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 fontSizeForBiTextOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties fontSizeForBiTextOverridden];
}

- (BOOL)embeddedObject
{
  if (!self->mTracked && !self->mResolved || (p_mTrackedProperties = &self->mTrackedProperties, (mTrackedProperties = self->mTrackedProperties) == 0) || ![(WDCharacterPropertiesValues *)mTrackedProperties embeddedObjectOverridden])
  {
    if (!self->mOriginal && !self->mResolved)
    {
      return 0;
    }

    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v5 = mOriginalProperties;
    if (!mOriginalProperties)
    {
      return 0;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if (![(WDCharacterPropertiesValues *)v5 embeddedObjectOverridden])
    {
      return 0;
    }
  }

  v8 = *p_mTrackedProperties;

  return [(WDCharacterPropertiesValues *)v8 embeddedObject];
}

- (void)setEmbeddedObject:(BOOL)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setEmbeddedObject:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setEmbeddedObjectOverridden:1];
}

- (BOOL)isEmbeddedObjectOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties embeddedObjectOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 embeddedObjectOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties embeddedObjectOverridden];
}

- (BOOL)ole2
{
  if (!self->mTracked && !self->mResolved || (p_mTrackedProperties = &self->mTrackedProperties, (mTrackedProperties = self->mTrackedProperties) == 0) || ![(WDCharacterPropertiesValues *)mTrackedProperties ole2Overridden])
  {
    if (!self->mOriginal && !self->mResolved)
    {
      return 0;
    }

    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v5 = mOriginalProperties;
    if (!mOriginalProperties)
    {
      return 0;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if (![(WDCharacterPropertiesValues *)v5 ole2Overridden])
    {
      return 0;
    }
  }

  v8 = *p_mTrackedProperties;

  return [(WDCharacterPropertiesValues *)v8 ole2];
}

- (void)setOle2:(BOOL)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setOle2:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setOle2Overridden:1];
}

- (BOOL)isOle2Overridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties ole2Overridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 ole2Overridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties ole2Overridden];
}

- (int)objectIDForOle2
{
  if (!self->mTracked && !self->mResolved || (p_mTrackedProperties = &self->mTrackedProperties, (mTrackedProperties = self->mTrackedProperties) == 0) || ![(WDCharacterPropertiesValues *)mTrackedProperties objectIDForOle2Overridden])
  {
    if (!self->mOriginal && !self->mResolved)
    {
      return 0;
    }

    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v5 = mOriginalProperties;
    if (!mOriginalProperties)
    {
      return 0;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if (![(WDCharacterPropertiesValues *)v5 objectIDForOle2Overridden])
    {
      return 0;
    }
  }

  v8 = *p_mTrackedProperties;

  return [(WDCharacterPropertiesValues *)v8 objectIDForOle2];
}

- (void)setObjectIDForOle2:(int)a3
{
  v3 = *&a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setObjectIDForOle2:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setObjectIDForOle2Overridden:1];
}

- (BOOL)isObjectIDForOle2Overridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties objectIDForOle2Overridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 objectIDForOle2Overridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties objectIDForOle2Overridden];
}

- (int)offsetToPictureData
{
  if (!self->mTracked && !self->mResolved || (p_mTrackedProperties = &self->mTrackedProperties, (mTrackedProperties = self->mTrackedProperties) == 0) || ![(WDCharacterPropertiesValues *)mTrackedProperties offsetToPictureDataOverridden])
  {
    if (!self->mOriginal && !self->mResolved)
    {
      return 0;
    }

    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v5 = mOriginalProperties;
    if (!mOriginalProperties)
    {
      return 0;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if (![(WDCharacterPropertiesValues *)v5 offsetToPictureDataOverridden])
    {
      return 0;
    }
  }

  v8 = *p_mTrackedProperties;

  return [(WDCharacterPropertiesValues *)v8 offsetToPictureData];
}

- (void)setOffsetToPictureData:(int)a3
{
  v3 = *&a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setOffsetToPictureData:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setOffsetToPictureDataOverridden:1];
}

- (BOOL)isOffsetToPictureDataOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties offsetToPictureDataOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 offsetToPictureDataOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties offsetToPictureDataOverridden];
}

- (BOOL)horizontalInVertical
{
  if (!self->mTracked && !self->mResolved || (p_mTrackedProperties = &self->mTrackedProperties, (mTrackedProperties = self->mTrackedProperties) == 0) || ![(WDCharacterPropertiesValues *)mTrackedProperties horizontalInVerticalOverridden])
  {
    if (!self->mOriginal && !self->mResolved)
    {
      return 0;
    }

    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v5 = mOriginalProperties;
    if (!mOriginalProperties)
    {
      return 0;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if (![(WDCharacterPropertiesValues *)v5 horizontalInVerticalOverridden])
    {
      return 0;
    }
  }

  v8 = *p_mTrackedProperties;

  return [(WDCharacterPropertiesValues *)v8 horizontalInVertical];
}

- (void)setHorizontalInVertical:(BOOL)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setHorizontalInVertical:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setHorizontalInVerticalOverridden:1];
}

- (BOOL)isHorizontalInVerticalOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties horizontalInVerticalOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 horizontalInVerticalOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties horizontalInVerticalOverridden];
}

- (BOOL)compressHorizontalInVertical
{
  if (!self->mTracked && !self->mResolved || (p_mTrackedProperties = &self->mTrackedProperties, (mTrackedProperties = self->mTrackedProperties) == 0) || ![(WDCharacterPropertiesValues *)mTrackedProperties compressHorizontalInVerticalOverridden])
  {
    if (!self->mOriginal && !self->mResolved)
    {
      return 0;
    }

    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v5 = mOriginalProperties;
    if (!mOriginalProperties)
    {
      return 0;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if (![(WDCharacterPropertiesValues *)v5 compressHorizontalInVerticalOverridden])
    {
      return 0;
    }
  }

  v8 = *p_mTrackedProperties;

  return [(WDCharacterPropertiesValues *)v8 compressHorizontalInVertical];
}

- (void)setCompressHorizontalInVertical:(BOOL)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setCompressHorizontalInVertical:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setCompressHorizontalInVerticalOverridden:1];
}

- (BOOL)isCompressHorizontalInVerticalOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties compressHorizontalInVerticalOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 compressHorizontalInVerticalOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties compressHorizontalInVerticalOverridden];
}

- (BOOL)twoLinesInOne
{
  if (!self->mTracked && !self->mResolved || (p_mTrackedProperties = &self->mTrackedProperties, (mTrackedProperties = self->mTrackedProperties) == 0) || ![(WDCharacterPropertiesValues *)mTrackedProperties twoLinesInOneOverridden])
  {
    if (!self->mOriginal && !self->mResolved)
    {
      return 0;
    }

    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v5 = mOriginalProperties;
    if (!mOriginalProperties)
    {
      return 0;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if (![(WDCharacterPropertiesValues *)v5 twoLinesInOneOverridden])
    {
      return 0;
    }
  }

  v8 = *p_mTrackedProperties;

  return [(WDCharacterPropertiesValues *)v8 twoLinesInOne];
}

- (void)setTwoLinesInOne:(BOOL)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setTwoLinesInOne:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setTwoLinesInOneOverridden:1];
}

- (BOOL)isTwoLinesInOneOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties twoLinesInOneOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 twoLinesInOneOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties twoLinesInOneOverridden];
}

- (int)bracketTwoLinesInOne
{
  if (self->mTracked || self->mResolved)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDCharacterPropertiesValues *)mTrackedProperties bracketTwoLinesInOneOverridden])
      {
        goto LABEL_9;
      }
    }
  }

  if (!self->mOriginal && !self->mResolved)
  {
    LODWORD(v5) = 0;
    return v5;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v5 = mOriginalProperties;
  if (mOriginalProperties)
  {
    LODWORD(v5) = [(WDCharacterPropertiesValues *)v5 bracketTwoLinesInOneOverridden];
    p_mTrackedProperties = p_mOriginalProperties;
    if (v5)
    {
LABEL_9:
      LODWORD(v5) = [(WDCharacterPropertiesValues *)*p_mTrackedProperties bracketTwoLinesInOne];
    }
  }

  return v5;
}

- (void)setBracketTwoLinesInOne:(int)a3
{
  v3 = a3;
  if (self->mTracked)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!self->mOriginal)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
LABEL_6:
      v6 = objc_alloc_init(WDCharacterPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      mTrackedProperties = *p_mTrackedProperties;
      if (!*p_mTrackedProperties)
      {
        return;
      }
    }
  }

  [(WDCharacterPropertiesValues *)mTrackedProperties setBracketTwoLinesInOne:v3];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setBracketTwoLinesInOneOverridden:1];
}

- (BOOL)isBracketTwoLinesInOneOverridden
{
  if (!self->mTracked && (!self->mResolved || (mTrackedProperties = self->mTrackedProperties) == 0 || ![(WDCharacterPropertiesValues *)mTrackedProperties bracketTwoLinesInOneOverridden]))
  {
    if (self->mOriginal || self->mResolved && (v6 = self->mOriginalProperties) != 0 && [(WDCharacterPropertiesValues *)v6 bracketTwoLinesInOneOverridden])
    {
      mOriginalProperties = self->mOriginalProperties;
      if (mOriginalProperties)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

LABEL_9:

  return [(WDCharacterPropertiesValues *)mOriginalProperties bracketTwoLinesInOneOverridden];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[WDCharacterProperties allocWithZone:?]];
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->mDocument);
    objc_storeWeak(&v4->mDocument, WeakRetained);

    v4->mOriginal = self->mOriginal;
    v4->mTracked = self->mTracked;
    v4->mResolved = self->mResolved;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      v7 = [(WDCharacterPropertiesValues *)mOriginalProperties copy];
      v8 = v4->mOriginalProperties;
      v4->mOriginalProperties = v7;
    }

    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      v10 = [(WDCharacterPropertiesValues *)mTrackedProperties copy];
      v11 = v4->mTrackedProperties;
      v4->mTrackedProperties = v10;
    }

    v12 = v4;
  }

  return v4;
}

- (void)copyPropertiesInto:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4[2];
    v15 = v4;
    if (v6)
    {
      v4[2] = 0;

      v5 = v15;
    }

    v7 = v5[3];
    if (v7)
    {
      v15[3] = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->mDocument);
    objc_storeWeak(v15 + 4, WeakRetained);

    *(v15 + 8) = self->mOriginal;
    *(v15 + 9) = self->mTracked;
    *(v15 + 10) = self->mResolved;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      v10 = [(WDCharacterPropertiesValues *)mOriginalProperties copy];
      v11 = v15[2];
      v15[2] = v10;
    }

    mTrackedProperties = self->mTrackedProperties;
    v5 = v15;
    if (mTrackedProperties)
    {
      v13 = [(WDCharacterPropertiesValues *)mTrackedProperties copy];
      v14 = v15[3];
      v15[3] = v13;

      v5 = v15;
    }
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDCharacterProperties;
  v2 = [(WDCharacterProperties *)&v4 description];

  return v2;
}

- (BOOL)isAnythingOverriddenIn:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if (([v3 baseStyleOverridden] & 1) != 0
      || ([v4 borderOverridden] & 1) != 0
      || ([v4 shadingOverridden] & 1) != 0
      || ([v4 fontOverridden] & 1) != 0
      || ([v4 extendedFontOverridden] & 1) != 0
      || ([v4 farEastFontOverridden] & 1) != 0
      || ([v4 symbolCharacterOverridden] & 1) != 0
      || ([v4 symbolFontOverridden] & 1) != 0
      || ([v4 boldOverridden] & 1) != 0
      || ([v4 boldForBiTextOverridden] & 1) != 0
      || ([v4 italicOverridden] & 1) != 0
      || ([v4 italicForBiTextOverridden] & 1) != 0
      || ([v4 outlineOverridden] & 1) != 0
      || ([v4 outlineColorOverridden] & 1) != 0
      || ([v4 outline2010WidthOverridden] & 1) != 0
      || ([v4 shadowOverridden] & 1) != 0
      || ([v4 embossedOverridden] & 1) != 0
      || ([v4 imprintOverridden] & 1) != 0
      || ([v4 underlineOverridden] & 1) != 0
      || ([v4 underlineColorOverridden] & 1) != 0
      || ([v4 strikeThroughOverridden] & 1) != 0
      || ([v4 doubleStrikeThroughOverridden] & 1) != 0
      || ([v4 ligatureOverridden] & 1) != 0
      || ([v4 highlightOverridden] & 1) != 0
      || ([v4 highlightColorOverridden] & 1) != 0
      || ([v4 smallCapsOverridden] & 1) != 0
      || ([v4 capsOverridden] & 1) != 0
      || ([v4 lowerCaseOverridden] & 1) != 0
      || ([v4 hiddenOverridden] & 1) != 0
      || ([v4 spacingOverridden] & 1) != 0
      || ([v4 positionOverridden] & 1) != 0
      || ([v4 kerningOverridden] & 1) != 0
      || ([v4 textScaleOverridden] & 1) != 0
      || ([v4 fontSizeOverridden] & 1) != 0
      || ([v4 rightToLeftOverridden] & 1) != 0
      || ([v4 useCsFontOverridden] & 1) != 0
      || ([v4 verticalAlignOverridden] & 1) != 0
      || ([v4 emphasisMarkOverridden] & 1) != 0
      || ([v4 reflectionOverridden] & 1) != 0
      || ([v4 shadow2010Overridden] & 1) != 0
      || ([v4 shadow2010OpacityOverridden] & 1) != 0
      || ([v4 colorOverridden] & 1) != 0
      || ([v4 colorAutoOverridden] & 1) != 0
      || ([v4 languageForDefaultTextOverridden] & 1) != 0
      || ([v4 deletedOverridden] & 1) != 0
      || ([v4 editedOverridden] & 1) != 0
      || ([v4 formattingChangedOverridden] & 1) != 0
      || ([v4 indexToAuthorIDOfDeletionOverridden] & 1) != 0
      || ([v4 indexToAuthorIDOfEditOverridden] & 1) != 0
      || ([v4 indexToAuthorIDOfFormattingChangeOverridden] & 1) != 0
      || ([v4 deletionDateOverridden] & 1) != 0
      || ([v4 editDateOverridden] & 1) != 0
      || ([v4 specialCharacterOverridden] & 1) != 0
      || ([v4 listCharacterPictureBulletOverridden] & 1) != 0
      || ([v4 charPositionOfPictureBulletInBookmarkOverridden] & 1) != 0
      || ([v4 languageForFarEastOverridden] & 1) != 0
      || ([v4 languageForBiTextOverridden] & 1) != 0)
    {
      v5 = 1;
    }

    else
    {
      v5 = [v4 fontSizeForBiTextOverridden];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isBooleanProbablyDifferent:(unsigned __int8)a3 than:(unsigned __int8)a4
{
  if (a3 == 129)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3;
  }

  if (v4 == 128)
  {
    v4 = 0;
  }

  if (a4 == 129)
  {
    v5 = 1;
  }

  else
  {
    v5 = a4;
  }

  if (v5 == 128)
  {
    v5 = 0;
  }

  return v4 != v5;
}

- (BOOL)deletionDifferentFrom:(id)a3 mode:(int)a4
{
  v6 = a3;
  if (v6)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        v8 = 0;
        v10 = 0;
LABEL_22:
        LOBYTE(self) = 1;
        goto LABEL_24;
      }

      v7 = 24;
    }

    else
    {
      v7 = 16;
    }

    v8 = *(&self->super.isa + v7);
    v9 = *&v6[v7];
    if (v8 | v9)
    {
      v10 = v9;
      if (!v8)
      {
        LOBYTE(self) = [(WDCharacterProperties *)self isAnythingOverriddenIn:v9];
        v8 = 0;
        goto LABEL_24;
      }

      if (v9)
      {
        v11 = [v8 deletedOverridden];
        if (v11 == [v10 deletedOverridden] && (!objc_msgSend(v8, "deletedOverridden") || !-[WDCharacterProperties isBooleanProbablyDifferent:than:](self, "isBooleanProbablyDifferent:than:", objc_msgSend(v8, "deleted"), objc_msgSend(v10, "deleted"))))
        {
          v12 = [v8 indexToAuthorIDOfDeletionOverridden];
          if (v12 == [v10 indexToAuthorIDOfDeletionOverridden])
          {
            if (![v8 indexToAuthorIDOfDeletionOverridden] || (v13 = objc_msgSend(v8, "indexToAuthorIDOfDeletion"), v13 == objc_msgSend(v10, "indexToAuthorIDOfDeletion")))
            {
              v14 = [v8 deletionDateOverridden];
              if (v14 == [v10 deletionDateOverridden])
              {
                if ([v8 deletionDateOverridden])
                {
                  v15 = [v8 deletionDate];
                  v16 = [v10 deletionDate];
                  LODWORD(self) = [v15 isEqualToDate:v16] ^ 1;
                }

                else
                {
                  LOBYTE(self) = 0;
                }

                goto LABEL_24;
              }
            }
          }
        }

        goto LABEL_22;
      }

      LOBYTE(self) = [(WDCharacterProperties *)self isAnythingOverriddenIn:v8];
    }

    else
    {
      LOBYTE(self) = 0;
      v8 = 0;
    }

    v10 = 0;
LABEL_24:

    goto LABEL_25;
  }

  LOBYTE(self) = 1;
LABEL_25:

  return self;
}

- (BOOL)editDifferentFrom:(id)a3 mode:(int)a4
{
  v6 = a3;
  if (v6)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        v8 = 0;
        v10 = 0;
LABEL_22:
        LOBYTE(self) = 1;
        goto LABEL_24;
      }

      v7 = 24;
    }

    else
    {
      v7 = 16;
    }

    v8 = *(&self->super.isa + v7);
    v9 = *&v6[v7];
    if (v8 | v9)
    {
      v10 = v9;
      if (!v8)
      {
        LOBYTE(self) = [(WDCharacterProperties *)self isAnythingOverriddenIn:v9];
        v8 = 0;
        goto LABEL_24;
      }

      if (v9)
      {
        v11 = [v8 editedOverridden];
        if (v11 == [v10 editedOverridden] && (!objc_msgSend(v8, "editedOverridden") || !-[WDCharacterProperties isBooleanProbablyDifferent:than:](self, "isBooleanProbablyDifferent:than:", objc_msgSend(v8, "edited"), objc_msgSend(v10, "edited"))))
        {
          v12 = [v8 indexToAuthorIDOfEditOverridden];
          if (v12 == [v10 indexToAuthorIDOfEditOverridden])
          {
            if (![v8 indexToAuthorIDOfEditOverridden] || (v13 = objc_msgSend(v8, "indexToAuthorIDOfEdit"), v13 == objc_msgSend(v10, "indexToAuthorIDOfEdit")))
            {
              v14 = [v8 editDateOverridden];
              if (v14 == [v10 editDateOverridden])
              {
                if ([v8 editDateOverridden])
                {
                  v15 = [v8 editDate];
                  v16 = [v10 editDate];
                  LODWORD(self) = [v15 isEqualToDate:v16] ^ 1;
                }

                else
                {
                  LOBYTE(self) = 0;
                }

                goto LABEL_24;
              }
            }
          }
        }

        goto LABEL_22;
      }

      LOBYTE(self) = [(WDCharacterProperties *)self isAnythingOverriddenIn:v8];
    }

    else
    {
      LOBYTE(self) = 0;
      v8 = 0;
    }

    v10 = 0;
LABEL_24:

    goto LABEL_25;
  }

  LOBYTE(self) = 1;
LABEL_25:

  return self;
}

- (BOOL)formattingChangedDifferentFrom:(id)a3 mode:(int)a4
{
  v6 = a3;
  if (v6)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        v9 = 0;
        v11 = 0;
        goto LABEL_117;
      }

      v7 = 24;
    }

    else
    {
      v7 = 16;
    }

    v9 = *(&self->super.isa + v7);
    v10 = *&v6[v7];
    if (v9 | v10)
    {
      v11 = v10;
      if (!v9)
      {
        v8 = [(WDCharacterProperties *)self isAnythingOverriddenIn:v10];
        v9 = 0;
        goto LABEL_119;
      }

      if (v10)
      {
        v12 = [v9 formattingChangedOverridden];
        if (v12 == [v11 formattingChangedOverridden] && (!objc_msgSend(v9, "formattingChangedOverridden") || !-[WDCharacterProperties isBooleanProbablyDifferent:than:](self, "isBooleanProbablyDifferent:than:", objc_msgSend(v9, "formattingChanged"), objc_msgSend(v11, "formattingChanged"))))
        {
          v13 = [v9 indexToAuthorIDOfFormattingChangeOverridden];
          if (v13 == [v11 indexToAuthorIDOfFormattingChangeOverridden])
          {
            if (![v9 indexToAuthorIDOfFormattingChangeOverridden] || (v14 = objc_msgSend(v9, "indexToAuthorIDOfFormattingChange"), v14 == objc_msgSend(v11, "indexToAuthorIDOfFormattingChange")))
            {
              v15 = [v9 baseStyleOverridden];
              if (v15 == [v11 baseStyleOverridden])
              {
                if (![v9 baseStyleOverridden] || (objc_msgSend(v9, "baseStyle"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "baseStyle"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "isEqual:", v17), v17, v16, (v18 & 1) != 0))
                {
                  v19 = [v9 borderOverridden];
                  if (v19 == [v11 borderOverridden])
                  {
                    if (![v9 borderOverridden] || (objc_msgSend(v9, "border"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "border"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v20, "isEqual:", v21), v21, v20, (v22 & 1) != 0))
                    {
                      v23 = [v9 shadingOverridden];
                      if (v23 == [v11 shadingOverridden])
                      {
                        if (![v9 shadingOverridden] || (objc_msgSend(v9, "shading"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "shading"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v24, "isEqual:", v25), v25, v24, (v26 & 1) != 0))
                        {
                          v27 = [v9 fontOverridden];
                          if (v27 == [v11 fontOverridden])
                          {
                            if (![v9 fontOverridden] || (objc_msgSend(v9, "font"), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "font"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v28, "isEqual:", v29), v29, v28, (v30 & 1) != 0))
                            {
                              v31 = [v9 extendedFontOverridden];
                              if (v31 == [v11 extendedFontOverridden])
                              {
                                if (![v9 extendedFontOverridden] || (objc_msgSend(v9, "extendedFont"), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "extendedFont"), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v32, "isEqual:", v33), v33, v32, (v34 & 1) != 0))
                                {
                                  v35 = [v9 farEastFontOverridden];
                                  if (v35 == [v11 farEastFontOverridden])
                                  {
                                    if (![v9 farEastFontOverridden] || (objc_msgSend(v9, "farEastFont"), v36 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "farEastFont"), v37 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend(v36, "isEqual:", v37), v37, v36, (v38 & 1) != 0))
                                    {
                                      v39 = [v9 symbolFontOverridden];
                                      if (v39 == [v11 symbolFontOverridden])
                                      {
                                        if (![v9 symbolFontOverridden] || (objc_msgSend(v9, "symbolFont"), v40 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "symbolFont"), v41 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend(v40, "isEqual:", v41), v41, v40, (v42 & 1) != 0))
                                        {
                                          v43 = [v9 outlineColorOverridden];
                                          if (v43 == [v11 outlineColorOverridden])
                                          {
                                            if (![v9 outlineColorOverridden] || (objc_msgSend(v9, "outlineColor"), v44 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "outlineColor"), v45 = objc_claimAutoreleasedReturnValue(), v46 = objc_msgSend(v44, "isEqual:", v45), v45, v44, (v46 & 1) != 0))
                                            {
                                              v47 = [v9 underlineColorOverridden];
                                              if (v47 == [v11 underlineColorOverridden])
                                              {
                                                if (![v9 underlineColorOverridden] || (objc_msgSend(v9, "underlineColor"), v48 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "underlineColor"), v49 = objc_claimAutoreleasedReturnValue(), v50 = objc_msgSend(v48, "isEqual:", v49), v49, v48, (v50 & 1) != 0))
                                                {
                                                  v51 = [v9 colorOverridden];
                                                  if (v51 == [v11 colorOverridden])
                                                  {
                                                    if (![v9 colorOverridden] || (objc_msgSend(v9, "color"), v52 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "color"), v53 = objc_claimAutoreleasedReturnValue(), v54 = objc_msgSend(v52, "isEqual:", v53), v53, v52, (v54 & 1) != 0))
                                                    {
                                                      v55 = [v9 symbolCharacterOverridden];
                                                      if (v55 == [v11 symbolCharacterOverridden])
                                                      {
                                                        v56 = [v9 symbolCharacter];
                                                        if (v56 == [v11 symbolCharacter])
                                                        {
                                                          v57 = [v9 boldOverridden];
                                                          if (v57 == [v11 boldOverridden])
                                                          {
                                                            v58 = [v9 bold];
                                                            if (v58 == [v11 bold])
                                                            {
                                                              v59 = [v9 boldForBiTextOverridden];
                                                              if (v59 == [v11 boldForBiTextOverridden])
                                                              {
                                                                v60 = [v9 boldForBiText];
                                                                if (v60 == [v11 boldForBiText])
                                                                {
                                                                  v61 = [v9 italicOverridden];
                                                                  if (v61 == [v11 italicOverridden])
                                                                  {
                                                                    v62 = [v9 italic];
                                                                    if (v62 == [v11 italic])
                                                                    {
                                                                      v63 = [v9 italicForBiTextOverridden];
                                                                      if (v63 == [v11 italicForBiTextOverridden])
                                                                      {
                                                                        v64 = [v9 italicForBiText];
                                                                        if (v64 == [v11 italicForBiText])
                                                                        {
                                                                          v65 = [v9 outlineOverridden];
                                                                          if (v65 == [v11 outlineOverridden])
                                                                          {
                                                                            v66 = [v9 outline];
                                                                            if (v66 == [v11 outline])
                                                                            {
                                                                              v67 = [v9 outline2010WidthOverridden];
                                                                              if (v67 == [v11 outline2010WidthOverridden])
                                                                              {
                                                                                [v9 outline2010Width];
                                                                                v69 = v68;
                                                                                [v11 outline2010Width];
                                                                                if (v69 == v70)
                                                                                {
                                                                                  v71 = [v9 shadowOverridden];
                                                                                  if (v71 == [v11 shadowOverridden])
                                                                                  {
                                                                                    v72 = [v9 shadow];
                                                                                    if (v72 == [v11 shadow])
                                                                                    {
                                                                                      v73 = [v9 embossedOverridden];
                                                                                      if (v73 == [v11 embossedOverridden])
                                                                                      {
                                                                                        v74 = [v9 embossed];
                                                                                        if (v74 == [v11 embossed])
                                                                                        {
                                                                                          v75 = [v9 imprintOverridden];
                                                                                          if (v75 == [v11 imprintOverridden])
                                                                                          {
                                                                                            v76 = [v9 imprint];
                                                                                            if (v76 == [v11 imprint])
                                                                                            {
                                                                                              v77 = [v9 underlineOverridden];
                                                                                              if (v77 == [v11 underlineOverridden])
                                                                                              {
                                                                                                v78 = [v9 underline];
                                                                                                if (v78 == [v11 underline])
                                                                                                {
                                                                                                  v79 = [v9 strikeThroughOverridden];
                                                                                                  if (v79 == [v11 strikeThroughOverridden])
                                                                                                  {
                                                                                                    v80 = [v9 strikeThrough];
                                                                                                    if (v80 == [v11 strikeThrough])
                                                                                                    {
                                                                                                      v81 = [v9 doubleStrikeThroughOverridden];
                                                                                                      if (v81 == [v11 doubleStrikeThroughOverridden])
                                                                                                      {
                                                                                                        v82 = [v9 doubleStrikeThrough];
                                                                                                        if (v82 == [v11 doubleStrikeThrough])
                                                                                                        {
                                                                                                          v83 = [v9 ligatureOverridden];
                                                                                                          if (v83 == [v11 ligatureOverridden])
                                                                                                          {
                                                                                                            v84 = [v9 ligature];
                                                                                                            if (v84 == [v11 ligature])
                                                                                                            {
                                                                                                              v85 = [v9 highlightOverridden];
                                                                                                              if (v85 == [v11 highlightOverridden])
                                                                                                              {
                                                                                                                v86 = [v9 highlight];
                                                                                                                if (v86 == [v11 highlight])
                                                                                                                {
                                                                                                                  v87 = [v9 highlightColorOverridden];
                                                                                                                  if (v87 == [v11 highlightColorOverridden])
                                                                                                                  {
                                                                                                                    v88 = [v9 highlightColor];
                                                                                                                    if (v88 == [v11 highlightColor])
                                                                                                                    {
                                                                                                                      v89 = [v9 smallCapsOverridden];
                                                                                                                      if (v89 == [v11 smallCapsOverridden])
                                                                                                                      {
                                                                                                                        v90 = [v9 smallCaps];
                                                                                                                        if (v90 == [v11 smallCaps])
                                                                                                                        {
                                                                                                                          v91 = [v9 capsOverridden];
                                                                                                                          if (v91 == [v11 capsOverridden])
                                                                                                                          {
                                                                                                                            v92 = [v9 caps];
                                                                                                                            if (v92 == [v11 caps])
                                                                                                                            {
                                                                                                                              v93 = [v9 lowerCaseOverridden];
                                                                                                                              if (v93 == [v11 lowerCaseOverridden])
                                                                                                                              {
                                                                                                                                v94 = [v9 lowerCase];
                                                                                                                                if (v94 == [v11 lowerCase])
                                                                                                                                {
                                                                                                                                  v95 = [v9 hiddenOverridden];
                                                                                                                                  if (v95 == [v11 hiddenOverridden])
                                                                                                                                  {
                                                                                                                                    v96 = [v9 hidden];
                                                                                                                                    if (v96 == [v11 hidden])
                                                                                                                                    {
                                                                                                                                      v97 = [v9 spacingOverridden];
                                                                                                                                      if (v97 == [v11 spacingOverridden])
                                                                                                                                      {
                                                                                                                                        v98 = [v9 spacing];
                                                                                                                                        if (v98 == [v11 spacing])
                                                                                                                                        {
                                                                                                                                          v99 = [v9 positionOverridden];
                                                                                                                                          if (v99 == [v11 positionOverridden])
                                                                                                                                          {
                                                                                                                                            v100 = [v9 position];
                                                                                                                                            if (v100 == [v11 position])
                                                                                                                                            {
                                                                                                                                              v101 = [v9 kerningOverridden];
                                                                                                                                              if (v101 == [v11 kerningOverridden])
                                                                                                                                              {
                                                                                                                                                v102 = [v9 kerning];
                                                                                                                                                if (v102 == [v11 kerning])
                                                                                                                                                {
                                                                                                                                                  v103 = [v9 textScaleOverridden];
                                                                                                                                                  if (v103 == [v11 textScaleOverridden])
                                                                                                                                                  {
                                                                                                                                                    v104 = [v9 textScale];
                                                                                                                                                    if (v104 == [v11 textScale])
                                                                                                                                                    {
                                                                                                                                                      v105 = [v9 fontSizeOverridden];
                                                                                                                                                      if (v105 == [v11 fontSizeOverridden])
                                                                                                                                                      {
                                                                                                                                                        v106 = [v9 fontSize];
                                                                                                                                                        if (v106 == [v11 fontSize])
                                                                                                                                                        {
                                                                                                                                                          v107 = [v9 verticalAlignOverridden];
                                                                                                                                                          if (v107 == [v11 verticalAlignOverridden])
                                                                                                                                                          {
                                                                                                                                                            v108 = [v9 verticalAlign];
                                                                                                                                                            if (v108 == [v11 verticalAlign])
                                                                                                                                                            {
                                                                                                                                                              v109 = [v9 emphasisMarkOverridden];
                                                                                                                                                              if (v109 == [v11 emphasisMarkOverridden])
                                                                                                                                                              {
                                                                                                                                                                v110 = [v9 emphasisMark];
                                                                                                                                                                if (v110 == [v11 emphasisMark])
                                                                                                                                                                {
                                                                                                                                                                  v111 = [v9 colorAutoOverridden];
                                                                                                                                                                  if (v111 == [v11 colorAutoOverridden])
                                                                                                                                                                  {
                                                                                                                                                                    v112 = [v9 colorAuto];
                                                                                                                                                                    if (v112 == [v11 colorAuto])
                                                                                                                                                                    {
                                                                                                                                                                      v113 = [v9 languageForDefaultTextOverridden];
                                                                                                                                                                      if (v113 == [v11 languageForDefaultTextOverridden])
                                                                                                                                                                      {
                                                                                                                                                                        v114 = [v9 languageForDefaultText];
                                                                                                                                                                        if (v114 == [v11 languageForDefaultText])
                                                                                                                                                                        {
                                                                                                                                                                          v115 = [v9 specialCharacterOverridden];
                                                                                                                                                                          if (v115 == [v11 specialCharacterOverridden])
                                                                                                                                                                          {
                                                                                                                                                                            v116 = [v9 specialCharacter];
                                                                                                                                                                            if (v116 == [v11 specialCharacter])
                                                                                                                                                                            {
                                                                                                                                                                              v117 = [v9 listCharacterPictureBulletOverridden];
                                                                                                                                                                              if (v117 == [v11 listCharacterPictureBulletOverridden])
                                                                                                                                                                              {
                                                                                                                                                                                v118 = [v9 listCharacterPictureBullet];
                                                                                                                                                                                if (v118 == [v11 listCharacterPictureBullet])
                                                                                                                                                                                {
                                                                                                                                                                                  v119 = [v9 charPositionOfPictureBulletInBookmarkOverridden];
                                                                                                                                                                                  if (v119 == [v11 charPositionOfPictureBulletInBookmarkOverridden])
                                                                                                                                                                                  {
                                                                                                                                                                                    v120 = [v9 charPositionOfPictureBulletInBookmark];
                                                                                                                                                                                    if (v120 == [v11 charPositionOfPictureBulletInBookmark])
                                                                                                                                                                                    {
                                                                                                                                                                                      v121 = [v9 languageForFarEastOverridden];
                                                                                                                                                                                      if (v121 == [v11 languageForFarEastOverridden])
                                                                                                                                                                                      {
                                                                                                                                                                                        v122 = [v9 languageForFarEast];
                                                                                                                                                                                        if (v122 == [v11 languageForFarEast])
                                                                                                                                                                                        {
                                                                                                                                                                                          v123 = [v9 languageForBiTextOverridden];
                                                                                                                                                                                          if (v123 == [v11 languageForBiTextOverridden])
                                                                                                                                                                                          {
                                                                                                                                                                                            v124 = [v9 languageForBiText];
                                                                                                                                                                                            v8 = v124 != [v11 languageForBiText];
LABEL_119:

                                                                                                                                                                                            goto LABEL_120;
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
                  }
                }
              }
            }
          }
        }

LABEL_117:
        v8 = 1;
        goto LABEL_119;
      }

      v8 = [(WDCharacterProperties *)self isAnythingOverriddenIn:v9];
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    v11 = 0;
    goto LABEL_119;
  }

  v8 = 1;
LABEL_120:

  return v8;
}

- (int)reverseBooleanProperty:(int)a3
{
  if (a3 > 127)
  {
    if (a3 != 128)
    {
      if (a3 == 129)
      {
        return 128;
      }

      return 0;
    }

    return 129;
  }

  else
  {
    return !a3;
  }
}

@end