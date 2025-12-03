@interface WDCharacterProperties
+ (SEL)fontOverriddenSelectorForFontType:(int)type;
+ (SEL)fontSelectorForFontType:(int)type;
+ (SEL)setFontSelectorForFontType:(int)type;
- (BOOL)compressHorizontalInVertical;
- (BOOL)deletionDifferentFrom:(id)from;
- (BOOL)deletionDifferentFrom:(id)from mode:(int)mode;
- (BOOL)editDifferentFrom:(id)from;
- (BOOL)editDifferentFrom:(id)from mode:(int)mode;
- (BOOL)embeddedObject;
- (BOOL)formattingChangedDifferentFrom:(id)from;
- (BOOL)formattingChangedDifferentFrom:(id)from mode:(int)mode;
- (BOOL)horizontalInVertical;
- (BOOL)isAnythingOverriddenIn:(id)in;
- (BOOL)isBaseStyleOverridden;
- (BOOL)isBoldForBiTextOverridden;
- (BOOL)isBoldOverridden;
- (BOOL)isBooleanProbablyDifferent:(unsigned __int8)different than:(unsigned __int8)than;
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
- (BOOL)isFontOverriddenForFontType:(int)type;
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
- (WDCharacterProperties)initWithDocument:(id)document;
- (WDDocument)document;
- (float)outline2010Width;
- (float)shadow2010Opacity;
- (id)baseStyle;
- (id)border;
- (id)color;
- (id)copyWithZone:(_NSZone *)zone;
- (id)deletionDate;
- (id)description;
- (id)editDate;
- (id)extendedFont;
- (id)farEastFont;
- (id)font;
- (id)fontForFontType:(int)type;
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
- (int)reverseBooleanProperty:(int)property;
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
- (void)applyPropertiesFrom:(id)from ifOverriddenIn:(id)in;
- (void)clearBaseStyle;
- (void)copyPropertiesInto:(id)into;
- (void)negateFormattingChangesWithDefaults:(id)defaults;
- (void)removeEmptyFormattingChanges:(id)changes;
- (void)setBaseStyle:(id)style;
- (void)setBold:(int)bold;
- (void)setBoldForBiText:(int)text;
- (void)setBracketTwoLinesInOne:(int)one;
- (void)setCaps:(int)caps;
- (void)setCharPositionOfPictureBulletInBookmark:(int)bookmark;
- (void)setColor:(id)color;
- (void)setColorAuto:(BOOL)auto;
- (void)setCompressHorizontalInVertical:(BOOL)vertical;
- (void)setDeleted:(int)deleted;
- (void)setDeletionDate:(id)date;
- (void)setDoubleStrikeThrough:(int)through;
- (void)setEditDate:(id)date;
- (void)setEdited:(int)edited;
- (void)setEmbeddedObject:(BOOL)object;
- (void)setEmbossed:(int)embossed;
- (void)setEmphasisMark:(int)mark;
- (void)setExtendedFont:(id)font;
- (void)setFarEastFont:(id)font;
- (void)setFont:(id)font;
- (void)setFont:(id)font forFontType:(int)type;
- (void)setFontHint:(int)hint;
- (void)setFontSize:(unsigned __int16)size;
- (void)setFontSizeForBiText:(unsigned __int16)text;
- (void)setFormattingChanged:(int)changed;
- (void)setHidden:(int)hidden;
- (void)setHighlight:(BOOL)highlight;
- (void)setHighlightColor:(int)color;
- (void)setHorizontalInVertical:(BOOL)vertical;
- (void)setImprint:(int)imprint;
- (void)setIndexToAuthorIDOfDeletion:(unsigned __int16)deletion;
- (void)setIndexToAuthorIDOfEdit:(unsigned __int16)edit;
- (void)setIndexToAuthorIDOfFormattingChange:(unsigned __int16)change;
- (void)setItalic:(int)italic;
- (void)setItalicForBiText:(int)text;
- (void)setKerning:(unsigned __int16)kerning;
- (void)setLanguageForBiText:(int)text;
- (void)setLanguageForDefaultText:(int)text;
- (void)setLanguageForFarEast:(int)east;
- (void)setLigature:(int)ligature;
- (void)setListCharacterPictureBullet:(BOOL)bullet;
- (void)setLowerCase:(BOOL)case;
- (void)setObjectIDForOle2:(int)ole2;
- (void)setOffsetToPictureData:(int)data;
- (void)setOle2:(BOOL)ole2;
- (void)setOutline2010Width:(float)width;
- (void)setOutline:(int)outline;
- (void)setOutlineColor:(id)color;
- (void)setPosition:(signed __int16)position;
- (void)setReflection:(id)reflection;
- (void)setResolveMode:(int)mode;
- (void)setRightToLeft:(int)left;
- (void)setShadow2010:(id)shadow2010;
- (void)setShadow2010Opacity:(float)opacity;
- (void)setShadow:(int)shadow;
- (void)setSmallCaps:(int)caps;
- (void)setSpacing:(signed __int16)spacing;
- (void)setSpecialCharacter:(BOOL)character;
- (void)setStrikeThrough:(int)through;
- (void)setSymbolCharacter:(unsigned __int16)character;
- (void)setSymbolFont:(id)font;
- (void)setTextScale:(unsigned __int16)scale;
- (void)setTwoLinesInOne:(BOOL)one;
- (void)setUnderline:(int)underline;
- (void)setUnderlineColor:(id)color;
- (void)setUseCsFont:(int)font;
- (void)setVerticalAlign:(int)align;
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
        border = [(WDCharacterPropertiesValues *)mOriginalProperties border];

        v7 = self->mOriginalProperties;
        if (!border)
        {
          [(WDCharacterPropertiesValues *)v7 setBorderOverridden:1];
          v8 = self->mOriginalProperties;
          goto LABEL_13;
        }

LABEL_10:
        border2 = [(WDCharacterPropertiesValues *)v7 border];
        goto LABEL_14;
      }
    }

LABEL_11:
    border2 = 0;
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

  border3 = [(WDCharacterPropertiesValues *)mTrackedProperties border];

  v7 = self->mTrackedProperties;
  if (border3)
  {
    goto LABEL_10;
  }

  [(WDCharacterPropertiesValues *)v7 setBorderOverridden:1];
  v8 = self->mTrackedProperties;
LABEL_13:
  border2 = objc_alloc_init(WDBorder);
  [(WDCharacterPropertiesValues *)v8 setBorder:border2];
LABEL_14:

  return border2;
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
        shading = [(WDCharacterPropertiesValues *)mOriginalProperties shading];

        v7 = self->mOriginalProperties;
        if (!shading)
        {
          [(WDCharacterPropertiesValues *)v7 setShadingOverridden:1];
          v8 = self->mOriginalProperties;
          goto LABEL_13;
        }

LABEL_10:
        shading2 = [(WDCharacterPropertiesValues *)v7 shading];
        goto LABEL_14;
      }
    }

LABEL_11:
    shading2 = 0;
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

  shading3 = [(WDCharacterPropertiesValues *)mTrackedProperties shading];

  v7 = self->mTrackedProperties;
  if (shading3)
  {
    goto LABEL_10;
  }

  [(WDCharacterPropertiesValues *)v7 setShadingOverridden:1];
  v8 = self->mTrackedProperties;
LABEL_13:
  shading2 = objc_alloc_init(WDShading);
  [(WDCharacterPropertiesValues *)v8 setShading:shading2];
LABEL_14:

  return shading2;
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
        baseStyle = [(WDCharacterPropertiesValues *)v4 baseStyle];
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
  styleSheet = [WeakRetained styleSheet];
  baseStyle = [styleSheet defaultCharacterStyle];

LABEL_13:

  return baseStyle;
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
  color = mOriginalProperties;
  if (!mOriginalProperties)
  {
    goto LABEL_11;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if ([color colorOverridden])
  {
LABEL_9:
    color = [(WDCharacterPropertiesValues *)*p_mTrackedProperties color];
  }

  else
  {
LABEL_10:
    color = 0;
  }

LABEL_11:

  return color;
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
  font = mOriginalProperties;
  if (!mOriginalProperties)
  {
    goto LABEL_11;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if ([font fontOverridden])
  {
LABEL_9:
    font = [(WDCharacterPropertiesValues *)*p_mTrackedProperties font];
  }

  else
  {
LABEL_10:
    font = 0;
  }

LABEL_11:

  return font;
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
  editDate = mOriginalProperties;
  if (!mOriginalProperties)
  {
    goto LABEL_11;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if ([editDate editDateOverridden])
  {
LABEL_9:
    editDate = [(WDCharacterPropertiesValues *)*p_mTrackedProperties editDate];
  }

  else
  {
LABEL_10:
    editDate = 0;
  }

LABEL_11:

  return editDate;
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
  deletionDate = mOriginalProperties;
  if (!mOriginalProperties)
  {
    goto LABEL_11;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if ([deletionDate deletionDateOverridden])
  {
LABEL_9:
    deletionDate = [(WDCharacterPropertiesValues *)*p_mTrackedProperties deletionDate];
  }

  else
  {
LABEL_10:
    deletionDate = 0;
  }

LABEL_11:

  return deletionDate;
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
  shading = mOriginalProperties;
  if (!mOriginalProperties)
  {
    goto LABEL_11;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if ([shading shadingOverridden])
  {
LABEL_9:
    shading = [(WDCharacterPropertiesValues *)*p_mTrackedProperties shading];
  }

  else
  {
LABEL_10:
    shading = 0;
  }

LABEL_11:

  return shading;
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

- (WDCharacterProperties)initWithDocument:(id)document
{
  documentCopy = document;
  v10.receiver = self;
  v10.super_class = WDCharacterProperties;
  v5 = [(WDCharacterProperties *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mDocument, documentCopy);
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

- (void)setResolveMode:(int)mode
{
  self->mTracked = mode == 1;
  self->mResolved = mode == 2;
  self->mOriginal = mode == 0;
}

- (void)negateFormattingChangesWithDefaults:(id)defaults
{
  defaultsCopy = defaults;
  [(WDCharacterProperties *)self setResolveMode:2];
  if ([(WDCharacterProperties *)self isFormattingChangedOverridden]&& [(WDCharacterProperties *)self formattingChanged])
  {
    [(WDCharacterProperties *)self setResolveMode:1];
    [defaultsCopy setResolveMode:2];
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
        if ([defaultsCopy isBaseStyleOverridden])
        {
          baseStyle = [defaultsCopy baseStyle];
          [(WDCharacterProperties *)self setBaseStyle:baseStyle];
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
        mutableBorder = [(WDCharacterProperties *)self mutableBorder];
        border = [(WDCharacterPropertiesValues *)self->mOriginalProperties border];
        style = [border style];

        if (style)
        {
          [mutableBorder setNullBorder];
        }

        else if ([defaultsCopy isBorderOverridden])
        {
          border2 = [defaultsCopy border];
          [mutableBorder setBorder:border2];
        }

        else
        {
          [mutableBorder setSingleBlackBorder];
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
        mutableShading = [(WDCharacterProperties *)self mutableShading];
        shading = [(WDCharacterPropertiesValues *)self->mOriginalProperties shading];
        style2 = [shading style];

        if (style2)
        {
          [mutableShading setStyle:0];
          v18 = +[WDShading autoForegroundColor];
          [mutableShading setForeground:v18];

          shading2 = +[WDShading autoBackgroundColor];
          [mutableShading setBackground:shading2];
        }

        else if ([defaultsCopy isShadingOverridden])
        {
          shading2 = [defaultsCopy shading];
          [mutableShading setShading:shading2];
        }

        else
        {
          [mutableShading setStyle:1];
          v20 = +[OITSUColor blackColor];
          [mutableShading setForeground:v20];

          shading2 = +[OITSUColor whiteColor];
          [mutableShading setBackground:shading2];
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
        if ([defaultsCopy isFontOverridden])
        {
          font = [defaultsCopy font];
          [(WDCharacterProperties *)self setFont:font];
        }
      }
    }

    v24 = self->mOriginalProperties;
    if (!v24)
    {
      goto LABEL_296;
    }

    extendedFont = [(WDCharacterPropertiesValues *)v24 extendedFont];
    if (extendedFont)
    {
      v26 = self->mTrackedProperties;
      if (v26)
      {
        extendedFont2 = [(WDCharacterPropertiesValues *)v26 extendedFont];

        if (extendedFont2)
        {
          goto LABEL_43;
        }
      }

      else
      {
      }

      if ([defaultsCopy isExtendedFontOverridden])
      {
        extendedFont3 = [defaultsCopy extendedFont];
        [(WDCharacterProperties *)self setExtendedFont:extendedFont3];
      }
    }

LABEL_43:
    v29 = self->mOriginalProperties;
    if (!v29)
    {
      goto LABEL_296;
    }

    farEastFont = [(WDCharacterPropertiesValues *)v29 farEastFont];
    if (farEastFont)
    {
      v31 = self->mTrackedProperties;
      if (v31)
      {
        farEastFont2 = [(WDCharacterPropertiesValues *)v31 farEastFont];

        if (farEastFont2)
        {
          goto LABEL_51;
        }
      }

      else
      {
      }

      if ([defaultsCopy isFarEastFontOverridden])
      {
        farEastFont3 = [defaultsCopy farEastFont];
        [(WDCharacterProperties *)self setFarEastFont:farEastFont3];
      }
    }

LABEL_51:
    v34 = self->mOriginalProperties;
    if (v34)
    {
      symbolFont = [(WDCharacterPropertiesValues *)v34 symbolFont];
      if (symbolFont)
      {
        v36 = self->mTrackedProperties;
        if (!v36)
        {

          goto LABEL_57;
        }

        symbolFont2 = [(WDCharacterPropertiesValues *)v36 symbolFont];

        if (!symbolFont2)
        {
LABEL_57:
          if ([defaultsCopy isSymbolFontOverridden])
          {
            symbolFont3 = [defaultsCopy symbolFont];
            [(WDCharacterProperties *)self setSymbolFont:symbolFont3];
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
            if ([defaultsCopy isSymbolCharacterOverridden])
            {
              symbolCharacter = [defaultsCopy symbolCharacter];
            }

            else
            {
              symbolCharacter = 0;
            }

            [(WDCharacterProperties *)self setSymbolCharacter:symbolCharacter];
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
                        if ([defaultsCopy isOutlineColorOverridden])
                        {
                          [defaultsCopy outlineColor];
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
                            isOutline2010WidthOverridden = [defaultsCopy isOutline2010WidthOverridden];
                            LODWORD(v59) = 3.0;
                            if (isOutline2010WidthOverridden)
                            {
                              [defaultsCopy outline2010Width];
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
                                    underline = 0;
                                  }

                                  else if ([defaultsCopy isUnderlineOverridden])
                                  {
                                    underline = [defaultsCopy underline];
                                  }

                                  else
                                  {
                                    underline = 1;
                                  }

                                  [(WDCharacterProperties *)self setUnderline:underline];
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
                                    if ([defaultsCopy isUnderlineColorOverridden])
                                    {
                                      [defaultsCopy underlineColor];
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
                                                        if ([defaultsCopy isSpacingOverridden])
                                                        {
                                                          spacing = [defaultsCopy spacing];
                                                        }

                                                        else
                                                        {
                                                          spacing = 0;
                                                        }

                                                        [(WDCharacterProperties *)self setSpacing:spacing];
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
                                                          if ([defaultsCopy isPositionOverridden])
                                                          {
                                                            position = [defaultsCopy position];
                                                          }

                                                          else
                                                          {
                                                            position = 0;
                                                          }

                                                          [(WDCharacterProperties *)self setPosition:position];
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
                                                            if ([defaultsCopy isKerningOverridden])
                                                            {
                                                              kerning = [defaultsCopy kerning];
                                                            }

                                                            else
                                                            {
                                                              kerning = 0;
                                                            }

                                                            [(WDCharacterProperties *)self setKerning:kerning];
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
                                                              if ([defaultsCopy isTextScaleOverridden])
                                                              {
                                                                textScale = [defaultsCopy textScale];
                                                              }

                                                              else
                                                              {
                                                                textScale = 0;
                                                              }

                                                              [(WDCharacterProperties *)self setTextScale:textScale];
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
                                                                if ([defaultsCopy isFontSizeOverridden])
                                                                {
                                                                  fontSize = [defaultsCopy fontSize];
                                                                }

                                                                else
                                                                {
                                                                  fontSize = 22;
                                                                }

                                                                [(WDCharacterProperties *)self setFontSize:fontSize];
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
                                                                      if ([defaultsCopy isColorOverridden])
                                                                      {
                                                                        [defaultsCopy color];
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
                                                                          if ([defaultsCopy isLanguageForDefaultTextOverridden])
                                                                          {
                                                                            languageForDefaultText = [defaultsCopy languageForDefaultText];
                                                                          }

                                                                          else
                                                                          {
                                                                            languageForDefaultText = 0;
                                                                          }

                                                                          [(WDCharacterProperties *)self setLanguageForDefaultText:languageForDefaultText];
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
                                                                                  if ([defaultsCopy isLanguageForFarEastOverridden])
                                                                                  {
                                                                                    languageForFarEast = [defaultsCopy languageForFarEast];
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    languageForFarEast = 0;
                                                                                  }

                                                                                  [(WDCharacterProperties *)self setLanguageForFarEast:languageForFarEast];
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
                                                                                    if ([defaultsCopy isLanguageForBiTextOverridden])
                                                                                    {
                                                                                      languageForBiText = [defaultsCopy languageForBiText];
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      languageForBiText = 0;
                                                                                    }

                                                                                    [(WDCharacterProperties *)self setLanguageForBiText:languageForBiText];
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
                                                                                      if ([defaultsCopy isFontSizeForBiTextOverridden])
                                                                                      {
                                                                                        fontSizeForBiText = [defaultsCopy fontSizeForBiText];
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        fontSizeForBiText = 22;
                                                                                      }

                                                                                      [(WDCharacterProperties *)self setFontSizeForBiText:fontSizeForBiText];
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

- (void)applyPropertiesFrom:(id)from ifOverriddenIn:(id)in
{
  fromCopy = from;
  inCopy = in;
  if ([inCopy isBorderOverridden] && objc_msgSend(fromCopy, "isBorderOverridden"))
  {
    mutableBorder = [(WDCharacterProperties *)self mutableBorder];
    border = [fromCopy border];
    [mutableBorder setBorder:border];
  }

  if ([inCopy isShadingOverridden] && objc_msgSend(fromCopy, "isShadingOverridden"))
  {
    mutableShading = [(WDCharacterProperties *)self mutableShading];
    shading = [fromCopy shading];
    [mutableShading setShading:shading];
  }

  if ([inCopy isFontOverridden] && objc_msgSend(fromCopy, "isFontOverridden"))
  {
    font = [fromCopy font];
    [(WDCharacterProperties *)self setFont:font];
  }

  if ([inCopy isExtendedFontOverridden] && objc_msgSend(fromCopy, "isExtendedFontOverridden"))
  {
    extendedFont = [fromCopy extendedFont];
    [(WDCharacterProperties *)self setExtendedFont:extendedFont];
  }

  if ([inCopy isFarEastFontOverridden] && objc_msgSend(fromCopy, "isFarEastFontOverridden"))
  {
    farEastFont = [fromCopy farEastFont];
    [(WDCharacterProperties *)self setFarEastFont:farEastFont];
  }

  if ([inCopy isSymbolFontOverridden] && objc_msgSend(fromCopy, "isSymbolFontOverridden"))
  {
    symbolFont = [fromCopy symbolFont];
    [(WDCharacterProperties *)self setSymbolFont:symbolFont];
  }

  if ([inCopy isSymbolCharacterOverridden] && objc_msgSend(fromCopy, "isSymbolCharacterOverridden"))
  {
    -[WDCharacterProperties setSymbolCharacter:](self, "setSymbolCharacter:", [fromCopy symbolCharacter]);
  }

  if ([inCopy isBoldOverridden] && objc_msgSend(fromCopy, "isBoldOverridden"))
  {
    -[WDCharacterProperties setBold:](self, "setBold:", [fromCopy bold]);
  }

  if ([inCopy isBoldForBiTextOverridden] && objc_msgSend(fromCopy, "isBoldForBiTextOverridden"))
  {
    -[WDCharacterProperties setBoldForBiText:](self, "setBoldForBiText:", [fromCopy boldForBiText]);
  }

  if ([inCopy isItalicOverridden] && objc_msgSend(fromCopy, "isItalicOverridden"))
  {
    -[WDCharacterProperties setItalic:](self, "setItalic:", [fromCopy italic]);
  }

  if ([inCopy isItalicForBiTextOverridden] && objc_msgSend(fromCopy, "isItalicForBiTextOverridden"))
  {
    -[WDCharacterProperties setItalicForBiText:](self, "setItalicForBiText:", [fromCopy italicForBiText]);
  }

  if ([inCopy isOutlineOverridden] && objc_msgSend(fromCopy, "isOutlineOverridden"))
  {
    -[WDCharacterProperties setOutline:](self, "setOutline:", [fromCopy outline]);
  }

  if ([inCopy isOutlineColorOverridden] && objc_msgSend(fromCopy, "isOutlineColorOverridden"))
  {
    outlineColor = [fromCopy outlineColor];
    [(WDCharacterProperties *)self setOutlineColor:outlineColor];
  }

  if ([inCopy isOutline2010WidthOverridden] && objc_msgSend(fromCopy, "isOutline2010WidthOverridden"))
  {
    [fromCopy outline2010Width];
    [(WDCharacterProperties *)self setOutline2010Width:?];
  }

  if ([inCopy isEmbossedOverridden] && objc_msgSend(fromCopy, "isEmbossedOverridden"))
  {
    -[WDCharacterProperties setEmbossed:](self, "setEmbossed:", [fromCopy embossed]);
  }

  if ([inCopy isImprintOverridden] && objc_msgSend(fromCopy, "isImprintOverridden"))
  {
    -[WDCharacterProperties setImprint:](self, "setImprint:", [fromCopy imprint]);
  }

  if ([inCopy isShadowOverridden] && objc_msgSend(fromCopy, "isShadowOverridden"))
  {
    -[WDCharacterProperties setShadow:](self, "setShadow:", [fromCopy shadow]);
  }

  if ([inCopy isKerningOverridden] && objc_msgSend(fromCopy, "isKerningOverridden"))
  {
    -[WDCharacterProperties setKerning:](self, "setKerning:", [fromCopy kerning]);
  }

  if ([inCopy isTextScaleOverridden] && objc_msgSend(fromCopy, "isTextScaleOverridden"))
  {
    -[WDCharacterProperties setTextScale:](self, "setTextScale:", [fromCopy textScale]);
  }

  if ([inCopy isUnderlineColorOverridden] && objc_msgSend(fromCopy, "isUnderlineColorOverridden"))
  {
    underlineColor = [fromCopy underlineColor];
    [(WDCharacterProperties *)self setUnderlineColor:underlineColor];
  }

  if ([inCopy isUnderlineOverridden] && objc_msgSend(fromCopy, "isUnderlineOverridden"))
  {
    -[WDCharacterProperties setUnderline:](self, "setUnderline:", [fromCopy underline]);
  }

  if ([inCopy isStrikeThroughOverridden] && objc_msgSend(fromCopy, "isStrikeThroughOverridden"))
  {
    -[WDCharacterProperties setStrikeThrough:](self, "setStrikeThrough:", [fromCopy strikeThrough]);
  }

  if ([inCopy isDoubleStrikeThroughOverridden] && objc_msgSend(fromCopy, "isDoubleStrikeThroughOverridden"))
  {
    -[WDCharacterProperties setDoubleStrikeThrough:](self, "setDoubleStrikeThrough:", [fromCopy doubleStrikeThrough]);
  }

  if ([inCopy isLigatureOverridden] && objc_msgSend(fromCopy, "isLigatureOverridden"))
  {
    -[WDCharacterProperties setLigature:](self, "setLigature:", [fromCopy ligature]);
  }

  if ([inCopy isHighlightOverridden] && objc_msgSend(fromCopy, "isHighlightOverridden"))
  {
    -[WDCharacterProperties setHighlight:](self, "setHighlight:", [fromCopy isHighlight]);
  }

  if ([inCopy isHighlightColorOverridden] && objc_msgSend(fromCopy, "isHighlightColorOverridden"))
  {
    -[WDCharacterProperties setHighlightColor:](self, "setHighlightColor:", [fromCopy highlightColor]);
  }

  if ([inCopy isSmallCapsOverridden] && objc_msgSend(fromCopy, "isSmallCapsOverridden"))
  {
    -[WDCharacterProperties setSmallCaps:](self, "setSmallCaps:", [fromCopy smallCaps]);
  }

  if ([inCopy isCapsOverridden] && objc_msgSend(fromCopy, "isCapsOverridden"))
  {
    -[WDCharacterProperties setCaps:](self, "setCaps:", [fromCopy caps]);
  }

  if ([inCopy isLowerCaseOverridden] && objc_msgSend(fromCopy, "isLowerCaseOverridden"))
  {
    -[WDCharacterProperties setLowerCase:](self, "setLowerCase:", [fromCopy isLowerCase]);
  }

  if ([inCopy isHiddenOverridden] && objc_msgSend(fromCopy, "isHiddenOverridden"))
  {
    -[WDCharacterProperties setHidden:](self, "setHidden:", [fromCopy hidden]);
  }

  if ([inCopy isSpacingOverridden] && objc_msgSend(fromCopy, "isSpacingOverridden"))
  {
    -[WDCharacterProperties setSpacing:](self, "setSpacing:", [fromCopy spacing]);
  }

  if ([inCopy isPositionOverridden] && objc_msgSend(fromCopy, "isPositionOverridden"))
  {
    -[WDCharacterProperties setPosition:](self, "setPosition:", [fromCopy position]);
  }

  if ([inCopy isFontSizeOverridden] && objc_msgSend(fromCopy, "isFontSizeOverridden"))
  {
    -[WDCharacterProperties setFontSize:](self, "setFontSize:", [fromCopy fontSize]);
  }

  if ([inCopy isVerticalAlignOverridden] && objc_msgSend(fromCopy, "isVerticalAlignOverridden"))
  {
    -[WDCharacterProperties setVerticalAlign:](self, "setVerticalAlign:", [fromCopy verticalAlign]);
  }

  if ([inCopy isEmphasisMarkOverridden] && objc_msgSend(fromCopy, "isEmphasisMarkOverridden"))
  {
    -[WDCharacterProperties setEmphasisMark:](self, "setEmphasisMark:", [fromCopy emphasisMark]);
  }

  if ([inCopy isColorOverridden] && objc_msgSend(fromCopy, "isColorOverridden"))
  {
    color = [fromCopy color];
    [(WDCharacterProperties *)self setColor:color];
  }

  if ([inCopy isColorAutoOverridden] && objc_msgSend(fromCopy, "isColorAutoOverridden"))
  {
    -[WDCharacterProperties setColorAuto:](self, "setColorAuto:", [fromCopy isColorAuto]);
  }

  if ([inCopy isLanguageForDefaultTextOverridden] && objc_msgSend(fromCopy, "isLanguageForDefaultTextOverridden"))
  {
    -[WDCharacterProperties setLanguageForDefaultText:](self, "setLanguageForDefaultText:", [fromCopy languageForDefaultText]);
  }

  if ([inCopy isSpecialCharacterOverridden] && objc_msgSend(fromCopy, "isSpecialCharacterOverridden"))
  {
    -[WDCharacterProperties setSpecialCharacter:](self, "setSpecialCharacter:", [fromCopy isSpecialCharacter]);
  }

  if ([inCopy isListCharacterPictureBulletOverridden] && objc_msgSend(fromCopy, "isListCharacterPictureBulletOverridden"))
  {
    -[WDCharacterProperties setListCharacterPictureBullet:](self, "setListCharacterPictureBullet:", [fromCopy isListCharacterPictureBullet]);
  }

  if ([inCopy isCharPositionOfPictureBulletInBookmarkOverridden] && objc_msgSend(fromCopy, "isCharPositionOfPictureBulletInBookmarkOverridden"))
  {
    -[WDCharacterProperties setCharPositionOfPictureBulletInBookmark:](self, "setCharPositionOfPictureBulletInBookmark:", [fromCopy charPositionOfPictureBulletInBookmark]);
  }

  if ([inCopy isLanguageForFarEastOverridden] && objc_msgSend(fromCopy, "isLanguageForFarEastOverridden"))
  {
    -[WDCharacterProperties setLanguageForFarEast:](self, "setLanguageForFarEast:", [fromCopy languageForFarEast]);
  }

  if ([inCopy isLanguageForBiTextOverridden] && objc_msgSend(fromCopy, "isLanguageForBiTextOverridden"))
  {
    -[WDCharacterProperties setLanguageForBiText:](self, "setLanguageForBiText:", [fromCopy languageForBiText]);
  }

  if ([inCopy isFontSizeForBiTextOverridden] && objc_msgSend(fromCopy, "isFontSizeForBiTextOverridden"))
  {
    -[WDCharacterProperties setFontSizeForBiText:](self, "setFontSizeForBiText:", [fromCopy fontSizeForBiText]);
  }
}

- (void)removeEmptyFormattingChanges:(id)changes
{
  changesCopy = changes;
  [changesCopy setResolveMode:0];
  p_mOriginalProperties = &self->mOriginalProperties;
  mOriginalProperties = self->mOriginalProperties;
  if (mOriginalProperties && -[WDCharacterPropertiesValues baseStyleOverridden](mOriginalProperties, "baseStyleOverridden") && [changesCopy isBaseStyleOverridden])
  {
    v6 = *p_mOriginalProperties;
    if (*p_mOriginalProperties)
    {
      baseStyle = [*p_mOriginalProperties baseStyle];
    }

    else
    {
      baseStyle = 0;
    }

    baseStyle2 = [changesCopy baseStyle];

    if (v6)
    {
    }

    if (baseStyle == baseStyle2)
    {
      [*p_mOriginalProperties setBaseStyleOverridden:0];
      [*p_mOriginalProperties setBaseStyle:0];
    }
  }

  [changesCopy setResolveMode:1];
  mTrackedProperties = self->mTrackedProperties;
  p_mTrackedProperties = &self->mTrackedProperties;
  v9 = mTrackedProperties;
  if (!mTrackedProperties)
  {
    goto LABEL_27;
  }

  if (-[WDCharacterPropertiesValues baseStyleOverridden](v9, "baseStyleOverridden") && [changesCopy isBaseStyleOverridden])
  {
    v12 = *p_mTrackedProperties;
    if (*p_mTrackedProperties)
    {
      baseStyle3 = [*p_mTrackedProperties baseStyle];
    }

    else
    {
      baseStyle3 = 0;
    }

    baseStyle4 = [changesCopy baseStyle];

    if (v12)
    {
    }

    if (baseStyle3 == baseStyle4)
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
    baseStyle5 = [*p_mOriginalProperties baseStyle];
  }

  else
  {
    baseStyle5 = 0;
  }

  v22 = *p_mTrackedProperties;
  if (*p_mTrackedProperties)
  {
    baseStyle6 = [*p_mTrackedProperties baseStyle];
  }

  else
  {
    baseStyle6 = 0;
  }

  v24 = [baseStyle5 isEqual:baseStyle6];
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
      border = [*p_mOriginalProperties border];
    }

    else
    {
      border = 0;
    }

    v27 = *p_mTrackedProperties;
    if (*p_mTrackedProperties)
    {
      border2 = [*p_mTrackedProperties border];
    }

    else
    {
      border2 = 0;
    }

    v29 = [border isEqual:border2];
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
      shading = [*p_mOriginalProperties shading];
    }

    else
    {
      shading = 0;
    }

    v32 = *p_mTrackedProperties;
    if (*p_mTrackedProperties)
    {
      shading2 = [*p_mTrackedProperties shading];
    }

    else
    {
      shading2 = 0;
    }

    v34 = [shading isEqual:shading2];
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
      font = [*p_mOriginalProperties font];
    }

    else
    {
      font = 0;
    }

    v37 = *p_mTrackedProperties;
    if (*p_mTrackedProperties)
    {
      font2 = [*p_mTrackedProperties font];
    }

    else
    {
      font2 = 0;
    }

    v39 = [font isEqual:font2];
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
      extendedFont = [*p_mOriginalProperties extendedFont];
    }

    else
    {
      extendedFont = 0;
    }

    v42 = *p_mTrackedProperties;
    if (*p_mTrackedProperties)
    {
      extendedFont2 = [*p_mTrackedProperties extendedFont];
    }

    else
    {
      extendedFont2 = 0;
    }

    v44 = [extendedFont isEqual:extendedFont2];
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
      farEastFont = [*p_mOriginalProperties farEastFont];
    }

    else
    {
      farEastFont = 0;
    }

    v47 = *p_mTrackedProperties;
    if (*p_mTrackedProperties)
    {
      farEastFont2 = [*p_mTrackedProperties farEastFont];
    }

    else
    {
      farEastFont2 = 0;
    }

    v49 = [farEastFont isEqual:farEastFont2];
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
      symbolFont = [*p_mOriginalProperties symbolFont];
    }

    else
    {
      symbolFont = 0;
    }

    v52 = *p_mTrackedProperties;
    if (*p_mTrackedProperties)
    {
      symbolFont2 = [*p_mTrackedProperties symbolFont];
    }

    else
    {
      symbolFont2 = 0;
    }

    v54 = [symbolFont isEqual:symbolFont2];
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
      underlineColor = [*p_mOriginalProperties underlineColor];
    }

    else
    {
      underlineColor = 0;
    }

    v57 = *p_mTrackedProperties;
    if (*p_mTrackedProperties)
    {
      underlineColor2 = [*p_mTrackedProperties underlineColor];
    }

    else
    {
      underlineColor2 = 0;
    }

    v59 = [underlineColor isEqual:underlineColor2];
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
      color = [*p_mOriginalProperties color];
    }

    else
    {
      color = 0;
    }

    v62 = *p_mTrackedProperties;
    if (*p_mTrackedProperties)
    {
      color2 = [*p_mTrackedProperties color];
    }

    else
    {
      color2 = 0;
    }

    v64 = [color isEqual:color2];
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
      shadow2010 = [*p_mOriginalProperties shadow2010];
    }

    else
    {
      shadow2010 = 0;
    }

    v67 = *p_mTrackedProperties;
    if (*p_mTrackedProperties)
    {
      shadow20102 = [*p_mTrackedProperties shadow2010];
    }

    else
    {
      shadow20102 = 0;
    }

    v69 = [shadow2010 isEqual:shadow20102];
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
      reflection = [*p_mOriginalProperties reflection];
    }

    else
    {
      reflection = 0;
    }

    v72 = *p_mTrackedProperties;
    if (*p_mTrackedProperties)
    {
      reflection2 = [*p_mTrackedProperties reflection];
    }

    else
    {
      reflection2 = 0;
    }

    v74 = [reflection isEqual:reflection2];
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
      symbolCharacter = [*p_mOriginalProperties symbolCharacter];
    }

    else
    {
      symbolCharacter = 0;
    }

    v76 = *p_mTrackedProperties;
    if (*p_mTrackedProperties)
    {
      LODWORD(v76) = [v76 symbolCharacter];
    }

    if (symbolCharacter == v76)
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
          bold = [*p_mOriginalProperties bold];
        }

        else
        {
          bold = 0;
        }

        v78 = *p_mTrackedProperties;
        if (*p_mTrackedProperties)
        {
          LODWORD(v78) = [v78 bold];
        }

        if (bold == v78)
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
              boldForBiText = [*p_mOriginalProperties boldForBiText];
            }

            else
            {
              boldForBiText = 0;
            }

            v80 = *p_mTrackedProperties;
            if (*p_mTrackedProperties)
            {
              LODWORD(v80) = [v80 boldForBiText];
            }

            if (boldForBiText == v80)
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
                  italic = [*p_mOriginalProperties italic];
                }

                else
                {
                  italic = 0;
                }

                v82 = *p_mTrackedProperties;
                if (*p_mTrackedProperties)
                {
                  LODWORD(v82) = [v82 italic];
                }

                if (italic == v82)
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
                      italicForBiText = [*p_mOriginalProperties italicForBiText];
                    }

                    else
                    {
                      italicForBiText = 0;
                    }

                    v84 = *p_mTrackedProperties;
                    if (*p_mTrackedProperties)
                    {
                      LODWORD(v84) = [v84 italicForBiText];
                    }

                    if (italicForBiText == v84)
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
                          outline = [*p_mOriginalProperties outline];
                        }

                        else
                        {
                          outline = 0;
                        }

                        v86 = *p_mTrackedProperties;
                        if (*p_mTrackedProperties)
                        {
                          LODWORD(v86) = [v86 outline];
                        }

                        if (outline == v86)
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
                                outlineColor = [*p_mOriginalProperties outlineColor];
                              }

                              else
                              {
                                outlineColor = 0;
                              }

                              v17 = *p_mTrackedProperties != 0;
                              if (*p_mTrackedProperties)
                              {
                                outlineColor2 = [*p_mTrackedProperties outlineColor];
                              }

                              else
                              {
                                outlineColor2 = 0;
                              }

                              if (outlineColor != outlineColor2)
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
                                shadow = [*p_mOriginalProperties shadow];
                              }

                              else
                              {
                                shadow = 0;
                              }

                              v124 = *p_mTrackedProperties;
                              if (*p_mTrackedProperties)
                              {
                                LODWORD(v124) = [v124 shadow];
                              }

                              if (shadow != v124)
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
                                reflection3 = [*p_mOriginalProperties reflection];
                              }

                              else
                              {
                                reflection3 = 0;
                              }

                              v20 = *p_mTrackedProperties != 0;
                              if (*p_mTrackedProperties)
                              {
                                reflection4 = [*p_mTrackedProperties reflection];
                              }

                              else
                              {
                                reflection4 = 0;
                              }

                              if (reflection3 != reflection4)
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
                                shadow20103 = [*p_mOriginalProperties shadow2010];
                              }

                              else
                              {
                                shadow20103 = 0;
                              }

                              v90 = *p_mTrackedProperties;
                              v87 = *p_mTrackedProperties != 0;
                              if (*p_mTrackedProperties)
                              {
                                shadow20104 = [*p_mTrackedProperties shadow2010];
                              }

                              else
                              {
                                shadow20104 = 0;
                              }

                              v154 = shadow20104;
                              if (shadow20103 != shadow20104)
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
                                kerning = [*p_mOriginalProperties kerning];
                              }

                              else
                              {
                                kerning = 0;
                              }

                              v93 = *p_mTrackedProperties;
                              if (*p_mTrackedProperties)
                              {
                                LODWORD(v93) = [v93 kerning];
                              }

                              if (kerning == v93)
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
                                    textScale = [*p_mOriginalProperties textScale];
                                  }

                                  else
                                  {
                                    textScale = 0;
                                  }

                                  v95 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v95) = [v95 textScale];
                                  }

                                  if (textScale != v95)
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
                                    embossed = [*p_mOriginalProperties embossed];
                                  }

                                  else
                                  {
                                    embossed = 0;
                                  }

                                  v97 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v97) = [v97 embossed];
                                  }

                                  if (embossed != v97)
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
                                    imprint = [*p_mOriginalProperties imprint];
                                  }

                                  else
                                  {
                                    imprint = 0;
                                  }

                                  v99 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v99) = [v99 imprint];
                                  }

                                  if (imprint != v99)
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
                                    underline = [*p_mOriginalProperties underline];
                                  }

                                  else
                                  {
                                    underline = 0;
                                  }

                                  v101 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v101) = [v101 underline];
                                  }

                                  if (underline != v101)
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
                                    strikeThrough = [*p_mOriginalProperties strikeThrough];
                                  }

                                  else
                                  {
                                    strikeThrough = 0;
                                  }

                                  v103 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v103) = [v103 strikeThrough];
                                  }

                                  if (strikeThrough != v103)
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
                                    doubleStrikeThrough = [*p_mOriginalProperties doubleStrikeThrough];
                                  }

                                  else
                                  {
                                    doubleStrikeThrough = 0;
                                  }

                                  v105 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v105) = [v105 doubleStrikeThrough];
                                  }

                                  if (doubleStrikeThrough != v105)
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
                                    ligature = [*p_mOriginalProperties ligature];
                                  }

                                  else
                                  {
                                    ligature = 0;
                                  }

                                  v107 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v107) = [v107 ligature];
                                  }

                                  if (ligature != v107)
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
                                    highlight = [*p_mOriginalProperties highlight];
                                  }

                                  else
                                  {
                                    highlight = 0;
                                  }

                                  v109 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v109) = [v109 highlight];
                                  }

                                  if (highlight != v109)
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
                                    highlightColor = [*p_mOriginalProperties highlightColor];
                                  }

                                  else
                                  {
                                    highlightColor = 0;
                                  }

                                  v116 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v116) = [v116 highlightColor];
                                  }

                                  if (highlightColor != v116)
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
                                    smallCapsOverridden = [*p_mOriginalProperties smallCapsOverridden];
                                  }

                                  else
                                  {
                                    smallCapsOverridden = 0;
                                  }

                                  v118 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v118) = [v118 smallCapsOverridden];
                                  }

                                  if (smallCapsOverridden != v118)
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
                                    capsOverridden = [*p_mOriginalProperties capsOverridden];
                                  }

                                  else
                                  {
                                    capsOverridden = 0;
                                  }

                                  v120 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v120) = [v120 capsOverridden];
                                  }

                                  if (capsOverridden != v120)
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
                                    lowerCase = [*p_mOriginalProperties lowerCase];
                                  }

                                  else
                                  {
                                    lowerCase = 0;
                                  }

                                  v122 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v122) = [v122 lowerCase];
                                  }

                                  if (lowerCase != v122)
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
                                    hidden = [*p_mOriginalProperties hidden];
                                  }

                                  else
                                  {
                                    hidden = 0;
                                  }

                                  v125 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v125) = [v125 hidden];
                                  }

                                  if (hidden != v125)
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
                                    spacing = [*p_mOriginalProperties spacing];
                                  }

                                  else
                                  {
                                    spacing = 0;
                                  }

                                  v127 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v127) = [v127 spacing];
                                  }

                                  if (spacing != v127)
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
                                    position = [*p_mOriginalProperties position];
                                  }

                                  else
                                  {
                                    position = 0;
                                  }

                                  v129 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v129) = [v129 position];
                                  }

                                  if (position != v129)
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
                                    fontSize = [*p_mOriginalProperties fontSize];
                                  }

                                  else
                                  {
                                    fontSize = 0;
                                  }

                                  v131 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v131) = [v131 fontSize];
                                  }

                                  if (fontSize != v131)
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
                                    verticalAlign = [*p_mOriginalProperties verticalAlign];
                                  }

                                  else
                                  {
                                    verticalAlign = 0;
                                  }

                                  v133 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v133) = [v133 verticalAlign];
                                  }

                                  if (verticalAlign != v133)
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
                                    emphasisMark = [*p_mOriginalProperties emphasisMark];
                                  }

                                  else
                                  {
                                    emphasisMark = 0;
                                  }

                                  v135 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v135) = [v135 emphasisMark];
                                  }

                                  if (emphasisMark != v135)
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
                                    colorAuto = [*p_mOriginalProperties colorAuto];
                                  }

                                  else
                                  {
                                    colorAuto = 0;
                                  }

                                  v137 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v137) = [v137 colorAuto];
                                  }

                                  if (colorAuto != v137)
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
                                    languageForDefaultText = [*p_mOriginalProperties languageForDefaultText];
                                  }

                                  else
                                  {
                                    languageForDefaultText = 0;
                                  }

                                  v139 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v139) = [v139 languageForDefaultText];
                                  }

                                  if (languageForDefaultText != v139)
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
                                    specialCharacter = [*p_mOriginalProperties specialCharacter];
                                  }

                                  else
                                  {
                                    specialCharacter = 0;
                                  }

                                  v141 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v141) = [v141 specialCharacter];
                                  }

                                  if (specialCharacter != v141)
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
                                    listCharacterPictureBullet = [*p_mOriginalProperties listCharacterPictureBullet];
                                  }

                                  else
                                  {
                                    listCharacterPictureBullet = 0;
                                  }

                                  v143 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v143) = [v143 listCharacterPictureBullet];
                                  }

                                  if (listCharacterPictureBullet != v143)
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
                                    charPositionOfPictureBulletInBookmark = [*p_mOriginalProperties charPositionOfPictureBulletInBookmark];
                                  }

                                  else
                                  {
                                    charPositionOfPictureBulletInBookmark = 0;
                                  }

                                  v145 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v145) = [v145 charPositionOfPictureBulletInBookmark];
                                  }

                                  if (charPositionOfPictureBulletInBookmark != v145)
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
                                    languageForFarEast = [*p_mOriginalProperties languageForFarEast];
                                  }

                                  else
                                  {
                                    languageForFarEast = 0;
                                  }

                                  v147 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v147) = [v147 languageForFarEast];
                                  }

                                  if (languageForFarEast != v147)
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
                                    languageForBiText = [*p_mOriginalProperties languageForBiText];
                                  }

                                  else
                                  {
                                    languageForBiText = 0;
                                  }

                                  v149 = *p_mTrackedProperties;
                                  if (*p_mTrackedProperties)
                                  {
                                    LODWORD(v149) = [v149 languageForBiText];
                                  }

                                  if (languageForBiText == v149)
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

- (void)setBaseStyle:(id)style
{
  styleCopy = style;
  if (self->mTracked)
  {
    mTrackedProperties = self->mTrackedProperties;
    p_mTrackedProperties = &self->mTrackedProperties;
    v4 = mTrackedProperties;
    if (mTrackedProperties || (v7 = objc_alloc_init(WDCharacterPropertiesValues), v8 = *p_mTrackedProperties, *p_mTrackedProperties = v7, v8, (v4 = *p_mTrackedProperties) != 0))
    {
LABEL_8:
      [(WDCharacterPropertiesValues *)v4 setBaseStyle:styleCopy];
      [(WDCharacterPropertiesValues *)*p_mTrackedProperties setBaseStyleOverridden:styleCopy != 0];
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
  border = mOriginalProperties;
  if (!mOriginalProperties)
  {
    goto LABEL_11;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if ([border borderOverridden])
  {
LABEL_9:
    border = [(WDCharacterPropertiesValues *)*p_mTrackedProperties border];
  }

  else
  {
LABEL_10:
    border = 0;
  }

LABEL_11:

  return border;
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

- (void)setFont:(id)font
{
  fontCopy = font;
  if (fontCopy)
  {
    if (self->mTracked)
    {
      mTrackedProperties = self->mTrackedProperties;
      p_mTrackedProperties = &self->mTrackedProperties;
      v4 = mTrackedProperties;
      if (mTrackedProperties || (v7 = objc_alloc_init(WDCharacterPropertiesValues), v8 = *p_mTrackedProperties, *p_mTrackedProperties = v7, v8, (v4 = *p_mTrackedProperties) != 0))
      {
LABEL_9:
        [(WDCharacterPropertiesValues *)v4 setFont:fontCopy];
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
  extendedFont = mOriginalProperties;
  if (!mOriginalProperties)
  {
    goto LABEL_11;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if ([extendedFont extendedFontOverridden])
  {
LABEL_9:
    extendedFont = [(WDCharacterPropertiesValues *)*p_mTrackedProperties extendedFont];
  }

  else
  {
LABEL_10:
    extendedFont = 0;
  }

LABEL_11:

  return extendedFont;
}

- (void)setExtendedFont:(id)font
{
  fontCopy = font;
  if (fontCopy)
  {
    if (self->mTracked)
    {
      mTrackedProperties = self->mTrackedProperties;
      p_mTrackedProperties = &self->mTrackedProperties;
      v4 = mTrackedProperties;
      if (mTrackedProperties || (v7 = objc_alloc_init(WDCharacterPropertiesValues), v8 = *p_mTrackedProperties, *p_mTrackedProperties = v7, v8, (v4 = *p_mTrackedProperties) != 0))
      {
LABEL_9:
        [(WDCharacterPropertiesValues *)v4 setExtendedFont:fontCopy];
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
  farEastFont = mOriginalProperties;
  if (!mOriginalProperties)
  {
    goto LABEL_11;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if ([farEastFont farEastFontOverridden])
  {
LABEL_9:
    farEastFont = [(WDCharacterPropertiesValues *)*p_mTrackedProperties farEastFont];
  }

  else
  {
LABEL_10:
    farEastFont = 0;
  }

LABEL_11:

  return farEastFont;
}

- (void)setFarEastFont:(id)font
{
  fontCopy = font;
  if (fontCopy)
  {
    if (self->mTracked)
    {
      mTrackedProperties = self->mTrackedProperties;
      p_mTrackedProperties = &self->mTrackedProperties;
      v4 = mTrackedProperties;
      if (mTrackedProperties || (v7 = objc_alloc_init(WDCharacterPropertiesValues), v8 = *p_mTrackedProperties, *p_mTrackedProperties = v7, v8, (v4 = *p_mTrackedProperties) != 0))
      {
LABEL_9:
        [(WDCharacterPropertiesValues *)v4 setFarEastFont:fontCopy];
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
  symbolFont = mOriginalProperties;
  if (!mOriginalProperties)
  {
    goto LABEL_11;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if ([symbolFont symbolFontOverridden])
  {
LABEL_9:
    symbolFont = [(WDCharacterPropertiesValues *)*p_mTrackedProperties symbolFont];
  }

  else
  {
LABEL_10:
    symbolFont = 0;
  }

LABEL_11:

  return symbolFont;
}

- (void)setSymbolFont:(id)font
{
  fontCopy = font;
  if (fontCopy)
  {
    if (self->mTracked)
    {
      mTrackedProperties = self->mTrackedProperties;
      p_mTrackedProperties = &self->mTrackedProperties;
      v4 = mTrackedProperties;
      if (mTrackedProperties || (v7 = objc_alloc_init(WDCharacterPropertiesValues), v8 = *p_mTrackedProperties, *p_mTrackedProperties = v7, v8, (v4 = *p_mTrackedProperties) != 0))
      {
LABEL_9:
        [(WDCharacterPropertiesValues *)v4 setSymbolFont:fontCopy];
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

- (id)fontForFontType:(int)type
{
  extendedFont = 0;
  if (type > 1)
  {
    if (type == 2)
    {
      extendedFont = [(WDCharacterProperties *)self extendedFont];
    }

    else if (type == 3)
    {
      extendedFont = [(WDCharacterProperties *)self symbolFont];
    }
  }

  else if (type)
  {
    if (type == 1)
    {
      extendedFont = [(WDCharacterProperties *)self farEastFont];
    }
  }

  else
  {
    extendedFont = [(WDCharacterProperties *)self font];
  }

  return extendedFont;
}

- (BOOL)isFontOverriddenForFontType:(int)type
{
  if (type > 1)
  {
    if (type != 2)
    {
      if (type == 3)
      {
        return [(WDCharacterProperties *)self isSymbolFontOverridden];
      }

      return 0;
    }

    return [(WDCharacterProperties *)self isExtendedFontOverridden];
  }

  else
  {
    if (type)
    {
      if (type == 1)
      {
        return [(WDCharacterProperties *)self isFarEastFontOverridden];
      }

      return 0;
    }

    return [(WDCharacterProperties *)self isFontOverridden];
  }
}

- (void)setFont:(id)font forFontType:(int)type
{
  fontCopy = font;
  v7 = fontCopy;
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      [(WDCharacterProperties *)self setFont:fontCopy];
    }

    [(WDCharacterProperties *)self setFarEastFont:v7];
    goto LABEL_10;
  }

  if (type == 2)
  {
LABEL_10:
    [(WDCharacterProperties *)self setExtendedFont:v7];
    goto LABEL_11;
  }

  if (type == 3)
  {
LABEL_11:
    [(WDCharacterProperties *)self setSymbolFont:v7];
  }

LABEL_12:
}

+ (SEL)fontSelectorForFontType:(int)type
{
  result = 0;
  if (type > 1)
  {
    if (type == 2)
    {
      return sel_extendedFont;
    }

    else if (type == 3)
    {
      return sel_symbolFont;
    }
  }

  else if (type)
  {
    if (type == 1)
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

+ (SEL)fontOverriddenSelectorForFontType:(int)type
{
  result = 0;
  if (type > 1)
  {
    if (type == 2)
    {
      return sel_isExtendedFontOverridden;
    }

    else if (type == 3)
    {
      return sel_isSymbolFontOverridden;
    }
  }

  else if (type)
  {
    if (type == 1)
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

+ (SEL)setFontSelectorForFontType:(int)type
{
  result = 0;
  if (type > 1)
  {
    if (type == 2)
    {
      return sel_setExtendedFont_;
    }

    else if (type == 3)
    {
      return sel_setSymbolFont_;
    }
  }

  else if (type)
  {
    if (type == 1)
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

- (void)setFontHint:(int)hint
{
  if ((hint - 4) < 0xFFFFFFFD)
  {
    return;
  }

  v3 = *&hint;
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

- (void)setSymbolCharacter:(unsigned __int16)character
{
  characterCopy = character;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setSymbolCharacter:characterCopy];
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

- (void)setBold:(int)bold
{
  boldCopy = bold;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setBold:boldCopy];
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

- (void)setBoldForBiText:(int)text
{
  textCopy = text;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setBoldForBiText:textCopy];
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

- (void)setItalic:(int)italic
{
  italicCopy = italic;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setItalic:italicCopy];
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

- (void)setItalicForBiText:(int)text
{
  textCopy = text;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setItalicForBiText:textCopy];
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

- (void)setOutline:(int)outline
{
  outlineCopy = outline;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setOutline:outlineCopy];
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
  outlineColor = mOriginalProperties;
  if (!mOriginalProperties)
  {
    goto LABEL_11;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if ([outlineColor outlineColorOverridden])
  {
LABEL_9:
    outlineColor = [(WDCharacterPropertiesValues *)*p_mTrackedProperties outlineColor];
  }

  else
  {
LABEL_10:
    outlineColor = 0;
  }

LABEL_11:

  return outlineColor;
}

- (void)setOutlineColor:(id)color
{
  colorCopy = color;
  if (self->mTracked)
  {
    mTrackedProperties = self->mTrackedProperties;
    p_mTrackedProperties = &self->mTrackedProperties;
    v4 = mTrackedProperties;
    if (mTrackedProperties || (v7 = objc_alloc_init(WDCharacterPropertiesValues), v8 = *p_mTrackedProperties, *p_mTrackedProperties = v7, v8, (v4 = *p_mTrackedProperties) != 0))
    {
LABEL_8:
      [(WDCharacterPropertiesValues *)v4 setOutlineColor:colorCopy];
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

- (void)setOutline2010Width:(float)width
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

  *&v8 = width;
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

- (void)setEmbossed:(int)embossed
{
  embossedCopy = embossed;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setEmbossed:embossedCopy];
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

- (void)setImprint:(int)imprint
{
  imprintCopy = imprint;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setImprint:imprintCopy];
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

- (void)setShadow:(int)shadow
{
  shadowCopy = shadow;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setShadow:shadowCopy];
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

- (void)setShadow2010Opacity:(float)opacity
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

  *&v8 = opacity;
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
  underlineColor = mOriginalProperties;
  if (!mOriginalProperties)
  {
    goto LABEL_11;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if ([underlineColor underlineColorOverridden])
  {
LABEL_9:
    underlineColor = [(WDCharacterPropertiesValues *)*p_mTrackedProperties underlineColor];
  }

  else
  {
LABEL_10:
    underlineColor = 0;
  }

LABEL_11:

  return underlineColor;
}

- (void)setUnderlineColor:(id)color
{
  colorCopy = color;
  if (self->mTracked)
  {
    mTrackedProperties = self->mTrackedProperties;
    p_mTrackedProperties = &self->mTrackedProperties;
    v4 = mTrackedProperties;
    if (mTrackedProperties || (v7 = objc_alloc_init(WDCharacterPropertiesValues), v8 = *p_mTrackedProperties, *p_mTrackedProperties = v7, v8, (v4 = *p_mTrackedProperties) != 0))
    {
LABEL_8:
      [(WDCharacterPropertiesValues *)v4 setUnderlineColor:colorCopy];
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

- (void)setKerning:(unsigned __int16)kerning
{
  kerningCopy = kerning;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setKerning:kerningCopy];
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

- (void)setTextScale:(unsigned __int16)scale
{
  scaleCopy = scale;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setTextScale:scaleCopy];
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

- (void)setUnderline:(int)underline
{
  underlineCopy = underline;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setUnderline:underlineCopy];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setUnderlineOverridden:1];
}

- (void)setStrikeThrough:(int)through
{
  throughCopy = through;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setStrikeThrough:throughCopy];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setStrikeThroughOverridden:1];
}

- (void)setDoubleStrikeThrough:(int)through
{
  throughCopy = through;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setDoubleStrikeThrough:throughCopy];
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

- (void)setHighlight:(BOOL)highlight
{
  highlightCopy = highlight;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setHighlight:highlightCopy];
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

- (void)setHighlightColor:(int)color
{
  colorCopy = color;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setHighlightColor:colorCopy];
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

- (void)setLigature:(int)ligature
{
  ligatureCopy = ligature;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setLigature:ligatureCopy];
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

- (void)setSmallCaps:(int)caps
{
  capsCopy = caps;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setSmallCaps:capsCopy];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setSmallCapsOverridden:1];
}

- (void)setCaps:(int)caps
{
  capsCopy = caps;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setCaps:capsCopy];
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

- (void)setLowerCase:(BOOL)case
{
  caseCopy = case;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setLowerCase:caseCopy];
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

- (void)setHidden:(int)hidden
{
  hiddenCopy = hidden;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setHidden:hiddenCopy];
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

- (void)setSpacing:(signed __int16)spacing
{
  spacingCopy = spacing;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setSpacing:spacingCopy];
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

- (void)setPosition:(signed __int16)position
{
  positionCopy = position;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setPosition:positionCopy];
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

- (void)setFontSize:(unsigned __int16)size
{
  sizeCopy = size;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setFontSize:sizeCopy];
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
  reflection = mOriginalProperties;
  if (!mOriginalProperties)
  {
    goto LABEL_11;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if ([reflection reflectionOverridden])
  {
LABEL_9:
    reflection = [(WDCharacterPropertiesValues *)*p_mTrackedProperties reflection];
  }

  else
  {
LABEL_10:
    reflection = 0;
  }

LABEL_11:

  return reflection;
}

- (void)setReflection:(id)reflection
{
  reflectionCopy = reflection;
  if (self->mTracked)
  {
    mTrackedProperties = self->mTrackedProperties;
    p_mTrackedProperties = &self->mTrackedProperties;
    v4 = mTrackedProperties;
    if (mTrackedProperties || (v7 = objc_alloc_init(WDCharacterPropertiesValues), v8 = *p_mTrackedProperties, *p_mTrackedProperties = v7, v8, (v4 = *p_mTrackedProperties) != 0))
    {
LABEL_8:
      [(WDCharacterPropertiesValues *)v4 setReflection:reflectionCopy];
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
  shadow2010 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    goto LABEL_11;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if ([shadow2010 shadow2010Overridden])
  {
LABEL_9:
    shadow2010 = [(WDCharacterPropertiesValues *)*p_mTrackedProperties shadow2010];
  }

  else
  {
LABEL_10:
    shadow2010 = 0;
  }

LABEL_11:

  return shadow2010;
}

- (void)setShadow2010:(id)shadow2010
{
  shadow2010Copy = shadow2010;
  if (self->mTracked)
  {
    mTrackedProperties = self->mTrackedProperties;
    p_mTrackedProperties = &self->mTrackedProperties;
    v4 = mTrackedProperties;
    if (mTrackedProperties || (v7 = objc_alloc_init(WDCharacterPropertiesValues), v8 = *p_mTrackedProperties, *p_mTrackedProperties = v7, v8, (v4 = *p_mTrackedProperties) != 0))
    {
LABEL_8:
      [(WDCharacterPropertiesValues *)v4 setShadow2010:shadow2010Copy];
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

- (void)setVerticalAlign:(int)align
{
  alignCopy = align;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setVerticalAlign:alignCopy];
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

- (void)setEmphasisMark:(int)mark
{
  v3 = *&mark;
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

- (void)setColor:(id)color
{
  colorCopy = color;
  if (self->mTracked)
  {
    mTrackedProperties = self->mTrackedProperties;
    p_mTrackedProperties = &self->mTrackedProperties;
    v4 = mTrackedProperties;
    if (mTrackedProperties || (v7 = objc_alloc_init(WDCharacterPropertiesValues), v8 = *p_mTrackedProperties, *p_mTrackedProperties = v7, v8, (v4 = *p_mTrackedProperties) != 0))
    {
LABEL_8:
      [(WDCharacterPropertiesValues *)v4 setColor:colorCopy];
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

- (void)setColorAuto:(BOOL)auto
{
  autoCopy = auto;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setColorAuto:autoCopy];
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

- (void)setLanguageForDefaultText:(int)text
{
  v3 = *&text;
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

- (void)setRightToLeft:(int)left
{
  leftCopy = left;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setRightToLeft:leftCopy];
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

- (void)setUseCsFont:(int)font
{
  fontCopy = font;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setUseCsFont:fontCopy];
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

- (void)setDeleted:(int)deleted
{
  deletedCopy = deleted;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setDeleted:deletedCopy];
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

- (void)setEdited:(int)edited
{
  editedCopy = edited;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setEdited:editedCopy];
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

- (void)setFormattingChanged:(int)changed
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setFormattingChanged:changed != 0];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setFormattingChangedOverridden:1];
}

- (void)setIndexToAuthorIDOfDeletion:(unsigned __int16)deletion
{
  deletionCopy = deletion;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setIndexToAuthorIDOfDeletion:deletionCopy];
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

- (void)setIndexToAuthorIDOfEdit:(unsigned __int16)edit
{
  editCopy = edit;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setIndexToAuthorIDOfEdit:editCopy];
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

- (void)setIndexToAuthorIDOfFormattingChange:(unsigned __int16)change
{
  changeCopy = change;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setIndexToAuthorIDOfFormattingChange:changeCopy];
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

- (void)setDeletionDate:(id)date
{
  dateCopy = date;
  if (self->mTracked)
  {
    mTrackedProperties = self->mTrackedProperties;
    p_mTrackedProperties = &self->mTrackedProperties;
    v4 = mTrackedProperties;
    if (mTrackedProperties || (v7 = objc_alloc_init(WDCharacterPropertiesValues), v8 = *p_mTrackedProperties, *p_mTrackedProperties = v7, v8, (v4 = *p_mTrackedProperties) != 0))
    {
LABEL_8:
      [(WDCharacterPropertiesValues *)v4 setDeletionDate:dateCopy];
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

- (void)setEditDate:(id)date
{
  dateCopy = date;
  if (self->mTracked)
  {
    mTrackedProperties = self->mTrackedProperties;
    p_mTrackedProperties = &self->mTrackedProperties;
    v4 = mTrackedProperties;
    if (mTrackedProperties || (v7 = objc_alloc_init(WDCharacterPropertiesValues), v8 = *p_mTrackedProperties, *p_mTrackedProperties = v7, v8, (v4 = *p_mTrackedProperties) != 0))
    {
LABEL_8:
      [(WDCharacterPropertiesValues *)v4 setEditDate:dateCopy];
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

- (BOOL)deletionDifferentFrom:(id)from
{
  fromCopy = from;
  if (fromCopy)
  {
    v5 = [(WDCharacterProperties *)self deletionDifferentFrom:fromCopy mode:0];
    v6 = v5 | [(WDCharacterProperties *)self deletionDifferentFrom:fromCopy mode:1];
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

- (BOOL)editDifferentFrom:(id)from
{
  fromCopy = from;
  if (fromCopy)
  {
    v5 = [(WDCharacterProperties *)self editDifferentFrom:fromCopy mode:0];
    v6 = v5 | [(WDCharacterProperties *)self editDifferentFrom:fromCopy mode:1];
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

- (BOOL)formattingChangedDifferentFrom:(id)from
{
  fromCopy = from;
  if (fromCopy)
  {
    v5 = [(WDCharacterProperties *)self formattingChangedDifferentFrom:fromCopy mode:0];
    v6 = v5 | [(WDCharacterProperties *)self formattingChangedDifferentFrom:fromCopy mode:1];
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

- (void)setSpecialCharacter:(BOOL)character
{
  characterCopy = character;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setSpecialCharacter:characterCopy];
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

- (void)setListCharacterPictureBullet:(BOOL)bullet
{
  bulletCopy = bullet;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setListCharacterPictureBullet:bulletCopy];
  v8 = *p_mTrackedProperties;

  [(WDCharacterPropertiesValues *)v8 setListCharacterPictureBulletOverridden:1];
}

- (void)setCharPositionOfPictureBulletInBookmark:(int)bookmark
{
  v3 = *&bookmark;
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

- (void)setLanguageForFarEast:(int)east
{
  v3 = *&east;
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

- (void)setLanguageForBiText:(int)text
{
  v3 = *&text;
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

- (void)setFontSizeForBiText:(unsigned __int16)text
{
  textCopy = text;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setFontSizeForBiText:textCopy];
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

- (void)setEmbeddedObject:(BOOL)object
{
  objectCopy = object;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setEmbeddedObject:objectCopy];
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

- (void)setOle2:(BOOL)ole2
{
  ole2Copy = ole2;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setOle2:ole2Copy];
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

- (void)setObjectIDForOle2:(int)ole2
{
  v3 = *&ole2;
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

- (void)setOffsetToPictureData:(int)data
{
  v3 = *&data;
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

- (void)setHorizontalInVertical:(BOOL)vertical
{
  verticalCopy = vertical;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setHorizontalInVertical:verticalCopy];
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

- (void)setCompressHorizontalInVertical:(BOOL)vertical
{
  verticalCopy = vertical;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setCompressHorizontalInVertical:verticalCopy];
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

- (void)setTwoLinesInOne:(BOOL)one
{
  oneCopy = one;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setTwoLinesInOne:oneCopy];
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

- (void)setBracketTwoLinesInOne:(int)one
{
  oneCopy = one;
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

  [(WDCharacterPropertiesValues *)mTrackedProperties setBracketTwoLinesInOne:oneCopy];
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

- (id)copyWithZone:(_NSZone *)zone
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

- (void)copyPropertiesInto:(id)into
{
  intoCopy = into;
  v5 = intoCopy;
  if (intoCopy)
  {
    v6 = intoCopy[2];
    v15 = intoCopy;
    if (v6)
    {
      intoCopy[2] = 0;

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

- (BOOL)isAnythingOverriddenIn:(id)in
{
  inCopy = in;
  v4 = inCopy;
  if (inCopy)
  {
    if (([inCopy baseStyleOverridden] & 1) != 0
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
      fontSizeForBiTextOverridden = 1;
    }

    else
    {
      fontSizeForBiTextOverridden = [v4 fontSizeForBiTextOverridden];
    }
  }

  else
  {
    fontSizeForBiTextOverridden = 0;
  }

  return fontSizeForBiTextOverridden;
}

- (BOOL)isBooleanProbablyDifferent:(unsigned __int8)different than:(unsigned __int8)than
{
  if (different == 129)
  {
    differentCopy = 1;
  }

  else
  {
    differentCopy = different;
  }

  if (differentCopy == 128)
  {
    differentCopy = 0;
  }

  if (than == 129)
  {
    thanCopy = 1;
  }

  else
  {
    thanCopy = than;
  }

  if (thanCopy == 128)
  {
    thanCopy = 0;
  }

  return differentCopy != thanCopy;
}

- (BOOL)deletionDifferentFrom:(id)from mode:(int)mode
{
  fromCopy = from;
  if (fromCopy)
  {
    if (mode)
    {
      if (mode != 1)
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
    v9 = *&fromCopy[v7];
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
        deletedOverridden = [v8 deletedOverridden];
        if (deletedOverridden == [v10 deletedOverridden] && (!objc_msgSend(v8, "deletedOverridden") || !-[WDCharacterProperties isBooleanProbablyDifferent:than:](self, "isBooleanProbablyDifferent:than:", objc_msgSend(v8, "deleted"), objc_msgSend(v10, "deleted"))))
        {
          indexToAuthorIDOfDeletionOverridden = [v8 indexToAuthorIDOfDeletionOverridden];
          if (indexToAuthorIDOfDeletionOverridden == [v10 indexToAuthorIDOfDeletionOverridden])
          {
            if (![v8 indexToAuthorIDOfDeletionOverridden] || (v13 = objc_msgSend(v8, "indexToAuthorIDOfDeletion"), v13 == objc_msgSend(v10, "indexToAuthorIDOfDeletion")))
            {
              deletionDateOverridden = [v8 deletionDateOverridden];
              if (deletionDateOverridden == [v10 deletionDateOverridden])
              {
                if ([v8 deletionDateOverridden])
                {
                  deletionDate = [v8 deletionDate];
                  deletionDate2 = [v10 deletionDate];
                  LODWORD(self) = [deletionDate isEqualToDate:deletionDate2] ^ 1;
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

- (BOOL)editDifferentFrom:(id)from mode:(int)mode
{
  fromCopy = from;
  if (fromCopy)
  {
    if (mode)
    {
      if (mode != 1)
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
    v9 = *&fromCopy[v7];
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
        editedOverridden = [v8 editedOverridden];
        if (editedOverridden == [v10 editedOverridden] && (!objc_msgSend(v8, "editedOverridden") || !-[WDCharacterProperties isBooleanProbablyDifferent:than:](self, "isBooleanProbablyDifferent:than:", objc_msgSend(v8, "edited"), objc_msgSend(v10, "edited"))))
        {
          indexToAuthorIDOfEditOverridden = [v8 indexToAuthorIDOfEditOverridden];
          if (indexToAuthorIDOfEditOverridden == [v10 indexToAuthorIDOfEditOverridden])
          {
            if (![v8 indexToAuthorIDOfEditOverridden] || (v13 = objc_msgSend(v8, "indexToAuthorIDOfEdit"), v13 == objc_msgSend(v10, "indexToAuthorIDOfEdit")))
            {
              editDateOverridden = [v8 editDateOverridden];
              if (editDateOverridden == [v10 editDateOverridden])
              {
                if ([v8 editDateOverridden])
                {
                  editDate = [v8 editDate];
                  editDate2 = [v10 editDate];
                  LODWORD(self) = [editDate isEqualToDate:editDate2] ^ 1;
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

- (BOOL)formattingChangedDifferentFrom:(id)from mode:(int)mode
{
  fromCopy = from;
  if (fromCopy)
  {
    if (mode)
    {
      if (mode != 1)
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
    v10 = *&fromCopy[v7];
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
        formattingChangedOverridden = [v9 formattingChangedOverridden];
        if (formattingChangedOverridden == [v11 formattingChangedOverridden] && (!objc_msgSend(v9, "formattingChangedOverridden") || !-[WDCharacterProperties isBooleanProbablyDifferent:than:](self, "isBooleanProbablyDifferent:than:", objc_msgSend(v9, "formattingChanged"), objc_msgSend(v11, "formattingChanged"))))
        {
          indexToAuthorIDOfFormattingChangeOverridden = [v9 indexToAuthorIDOfFormattingChangeOverridden];
          if (indexToAuthorIDOfFormattingChangeOverridden == [v11 indexToAuthorIDOfFormattingChangeOverridden])
          {
            if (![v9 indexToAuthorIDOfFormattingChangeOverridden] || (v14 = objc_msgSend(v9, "indexToAuthorIDOfFormattingChange"), v14 == objc_msgSend(v11, "indexToAuthorIDOfFormattingChange")))
            {
              baseStyleOverridden = [v9 baseStyleOverridden];
              if (baseStyleOverridden == [v11 baseStyleOverridden])
              {
                if (![v9 baseStyleOverridden] || (objc_msgSend(v9, "baseStyle"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "baseStyle"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "isEqual:", v17), v17, v16, (v18 & 1) != 0))
                {
                  borderOverridden = [v9 borderOverridden];
                  if (borderOverridden == [v11 borderOverridden])
                  {
                    if (![v9 borderOverridden] || (objc_msgSend(v9, "border"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "border"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v20, "isEqual:", v21), v21, v20, (v22 & 1) != 0))
                    {
                      shadingOverridden = [v9 shadingOverridden];
                      if (shadingOverridden == [v11 shadingOverridden])
                      {
                        if (![v9 shadingOverridden] || (objc_msgSend(v9, "shading"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "shading"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v24, "isEqual:", v25), v25, v24, (v26 & 1) != 0))
                        {
                          fontOverridden = [v9 fontOverridden];
                          if (fontOverridden == [v11 fontOverridden])
                          {
                            if (![v9 fontOverridden] || (objc_msgSend(v9, "font"), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "font"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v28, "isEqual:", v29), v29, v28, (v30 & 1) != 0))
                            {
                              extendedFontOverridden = [v9 extendedFontOverridden];
                              if (extendedFontOverridden == [v11 extendedFontOverridden])
                              {
                                if (![v9 extendedFontOverridden] || (objc_msgSend(v9, "extendedFont"), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "extendedFont"), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v32, "isEqual:", v33), v33, v32, (v34 & 1) != 0))
                                {
                                  farEastFontOverridden = [v9 farEastFontOverridden];
                                  if (farEastFontOverridden == [v11 farEastFontOverridden])
                                  {
                                    if (![v9 farEastFontOverridden] || (objc_msgSend(v9, "farEastFont"), v36 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "farEastFont"), v37 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend(v36, "isEqual:", v37), v37, v36, (v38 & 1) != 0))
                                    {
                                      symbolFontOverridden = [v9 symbolFontOverridden];
                                      if (symbolFontOverridden == [v11 symbolFontOverridden])
                                      {
                                        if (![v9 symbolFontOverridden] || (objc_msgSend(v9, "symbolFont"), v40 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "symbolFont"), v41 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend(v40, "isEqual:", v41), v41, v40, (v42 & 1) != 0))
                                        {
                                          outlineColorOverridden = [v9 outlineColorOverridden];
                                          if (outlineColorOverridden == [v11 outlineColorOverridden])
                                          {
                                            if (![v9 outlineColorOverridden] || (objc_msgSend(v9, "outlineColor"), v44 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "outlineColor"), v45 = objc_claimAutoreleasedReturnValue(), v46 = objc_msgSend(v44, "isEqual:", v45), v45, v44, (v46 & 1) != 0))
                                            {
                                              underlineColorOverridden = [v9 underlineColorOverridden];
                                              if (underlineColorOverridden == [v11 underlineColorOverridden])
                                              {
                                                if (![v9 underlineColorOverridden] || (objc_msgSend(v9, "underlineColor"), v48 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "underlineColor"), v49 = objc_claimAutoreleasedReturnValue(), v50 = objc_msgSend(v48, "isEqual:", v49), v49, v48, (v50 & 1) != 0))
                                                {
                                                  colorOverridden = [v9 colorOverridden];
                                                  if (colorOverridden == [v11 colorOverridden])
                                                  {
                                                    if (![v9 colorOverridden] || (objc_msgSend(v9, "color"), v52 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "color"), v53 = objc_claimAutoreleasedReturnValue(), v54 = objc_msgSend(v52, "isEqual:", v53), v53, v52, (v54 & 1) != 0))
                                                    {
                                                      symbolCharacterOverridden = [v9 symbolCharacterOverridden];
                                                      if (symbolCharacterOverridden == [v11 symbolCharacterOverridden])
                                                      {
                                                        symbolCharacter = [v9 symbolCharacter];
                                                        if (symbolCharacter == [v11 symbolCharacter])
                                                        {
                                                          boldOverridden = [v9 boldOverridden];
                                                          if (boldOverridden == [v11 boldOverridden])
                                                          {
                                                            bold = [v9 bold];
                                                            if (bold == [v11 bold])
                                                            {
                                                              boldForBiTextOverridden = [v9 boldForBiTextOverridden];
                                                              if (boldForBiTextOverridden == [v11 boldForBiTextOverridden])
                                                              {
                                                                boldForBiText = [v9 boldForBiText];
                                                                if (boldForBiText == [v11 boldForBiText])
                                                                {
                                                                  italicOverridden = [v9 italicOverridden];
                                                                  if (italicOverridden == [v11 italicOverridden])
                                                                  {
                                                                    italic = [v9 italic];
                                                                    if (italic == [v11 italic])
                                                                    {
                                                                      italicForBiTextOverridden = [v9 italicForBiTextOverridden];
                                                                      if (italicForBiTextOverridden == [v11 italicForBiTextOverridden])
                                                                      {
                                                                        italicForBiText = [v9 italicForBiText];
                                                                        if (italicForBiText == [v11 italicForBiText])
                                                                        {
                                                                          outlineOverridden = [v9 outlineOverridden];
                                                                          if (outlineOverridden == [v11 outlineOverridden])
                                                                          {
                                                                            outline = [v9 outline];
                                                                            if (outline == [v11 outline])
                                                                            {
                                                                              outline2010WidthOverridden = [v9 outline2010WidthOverridden];
                                                                              if (outline2010WidthOverridden == [v11 outline2010WidthOverridden])
                                                                              {
                                                                                [v9 outline2010Width];
                                                                                v69 = v68;
                                                                                [v11 outline2010Width];
                                                                                if (v69 == v70)
                                                                                {
                                                                                  shadowOverridden = [v9 shadowOverridden];
                                                                                  if (shadowOverridden == [v11 shadowOverridden])
                                                                                  {
                                                                                    shadow = [v9 shadow];
                                                                                    if (shadow == [v11 shadow])
                                                                                    {
                                                                                      embossedOverridden = [v9 embossedOverridden];
                                                                                      if (embossedOverridden == [v11 embossedOverridden])
                                                                                      {
                                                                                        embossed = [v9 embossed];
                                                                                        if (embossed == [v11 embossed])
                                                                                        {
                                                                                          imprintOverridden = [v9 imprintOverridden];
                                                                                          if (imprintOverridden == [v11 imprintOverridden])
                                                                                          {
                                                                                            imprint = [v9 imprint];
                                                                                            if (imprint == [v11 imprint])
                                                                                            {
                                                                                              underlineOverridden = [v9 underlineOverridden];
                                                                                              if (underlineOverridden == [v11 underlineOverridden])
                                                                                              {
                                                                                                underline = [v9 underline];
                                                                                                if (underline == [v11 underline])
                                                                                                {
                                                                                                  strikeThroughOverridden = [v9 strikeThroughOverridden];
                                                                                                  if (strikeThroughOverridden == [v11 strikeThroughOverridden])
                                                                                                  {
                                                                                                    strikeThrough = [v9 strikeThrough];
                                                                                                    if (strikeThrough == [v11 strikeThrough])
                                                                                                    {
                                                                                                      doubleStrikeThroughOverridden = [v9 doubleStrikeThroughOverridden];
                                                                                                      if (doubleStrikeThroughOverridden == [v11 doubleStrikeThroughOverridden])
                                                                                                      {
                                                                                                        doubleStrikeThrough = [v9 doubleStrikeThrough];
                                                                                                        if (doubleStrikeThrough == [v11 doubleStrikeThrough])
                                                                                                        {
                                                                                                          ligatureOverridden = [v9 ligatureOverridden];
                                                                                                          if (ligatureOverridden == [v11 ligatureOverridden])
                                                                                                          {
                                                                                                            ligature = [v9 ligature];
                                                                                                            if (ligature == [v11 ligature])
                                                                                                            {
                                                                                                              highlightOverridden = [v9 highlightOverridden];
                                                                                                              if (highlightOverridden == [v11 highlightOverridden])
                                                                                                              {
                                                                                                                highlight = [v9 highlight];
                                                                                                                if (highlight == [v11 highlight])
                                                                                                                {
                                                                                                                  highlightColorOverridden = [v9 highlightColorOverridden];
                                                                                                                  if (highlightColorOverridden == [v11 highlightColorOverridden])
                                                                                                                  {
                                                                                                                    highlightColor = [v9 highlightColor];
                                                                                                                    if (highlightColor == [v11 highlightColor])
                                                                                                                    {
                                                                                                                      smallCapsOverridden = [v9 smallCapsOverridden];
                                                                                                                      if (smallCapsOverridden == [v11 smallCapsOverridden])
                                                                                                                      {
                                                                                                                        smallCaps = [v9 smallCaps];
                                                                                                                        if (smallCaps == [v11 smallCaps])
                                                                                                                        {
                                                                                                                          capsOverridden = [v9 capsOverridden];
                                                                                                                          if (capsOverridden == [v11 capsOverridden])
                                                                                                                          {
                                                                                                                            caps = [v9 caps];
                                                                                                                            if (caps == [v11 caps])
                                                                                                                            {
                                                                                                                              lowerCaseOverridden = [v9 lowerCaseOverridden];
                                                                                                                              if (lowerCaseOverridden == [v11 lowerCaseOverridden])
                                                                                                                              {
                                                                                                                                lowerCase = [v9 lowerCase];
                                                                                                                                if (lowerCase == [v11 lowerCase])
                                                                                                                                {
                                                                                                                                  hiddenOverridden = [v9 hiddenOverridden];
                                                                                                                                  if (hiddenOverridden == [v11 hiddenOverridden])
                                                                                                                                  {
                                                                                                                                    hidden = [v9 hidden];
                                                                                                                                    if (hidden == [v11 hidden])
                                                                                                                                    {
                                                                                                                                      spacingOverridden = [v9 spacingOverridden];
                                                                                                                                      if (spacingOverridden == [v11 spacingOverridden])
                                                                                                                                      {
                                                                                                                                        spacing = [v9 spacing];
                                                                                                                                        if (spacing == [v11 spacing])
                                                                                                                                        {
                                                                                                                                          positionOverridden = [v9 positionOverridden];
                                                                                                                                          if (positionOverridden == [v11 positionOverridden])
                                                                                                                                          {
                                                                                                                                            position = [v9 position];
                                                                                                                                            if (position == [v11 position])
                                                                                                                                            {
                                                                                                                                              kerningOverridden = [v9 kerningOverridden];
                                                                                                                                              if (kerningOverridden == [v11 kerningOverridden])
                                                                                                                                              {
                                                                                                                                                kerning = [v9 kerning];
                                                                                                                                                if (kerning == [v11 kerning])
                                                                                                                                                {
                                                                                                                                                  textScaleOverridden = [v9 textScaleOverridden];
                                                                                                                                                  if (textScaleOverridden == [v11 textScaleOverridden])
                                                                                                                                                  {
                                                                                                                                                    textScale = [v9 textScale];
                                                                                                                                                    if (textScale == [v11 textScale])
                                                                                                                                                    {
                                                                                                                                                      fontSizeOverridden = [v9 fontSizeOverridden];
                                                                                                                                                      if (fontSizeOverridden == [v11 fontSizeOverridden])
                                                                                                                                                      {
                                                                                                                                                        fontSize = [v9 fontSize];
                                                                                                                                                        if (fontSize == [v11 fontSize])
                                                                                                                                                        {
                                                                                                                                                          verticalAlignOverridden = [v9 verticalAlignOverridden];
                                                                                                                                                          if (verticalAlignOverridden == [v11 verticalAlignOverridden])
                                                                                                                                                          {
                                                                                                                                                            verticalAlign = [v9 verticalAlign];
                                                                                                                                                            if (verticalAlign == [v11 verticalAlign])
                                                                                                                                                            {
                                                                                                                                                              emphasisMarkOverridden = [v9 emphasisMarkOverridden];
                                                                                                                                                              if (emphasisMarkOverridden == [v11 emphasisMarkOverridden])
                                                                                                                                                              {
                                                                                                                                                                emphasisMark = [v9 emphasisMark];
                                                                                                                                                                if (emphasisMark == [v11 emphasisMark])
                                                                                                                                                                {
                                                                                                                                                                  colorAutoOverridden = [v9 colorAutoOverridden];
                                                                                                                                                                  if (colorAutoOverridden == [v11 colorAutoOverridden])
                                                                                                                                                                  {
                                                                                                                                                                    colorAuto = [v9 colorAuto];
                                                                                                                                                                    if (colorAuto == [v11 colorAuto])
                                                                                                                                                                    {
                                                                                                                                                                      languageForDefaultTextOverridden = [v9 languageForDefaultTextOverridden];
                                                                                                                                                                      if (languageForDefaultTextOverridden == [v11 languageForDefaultTextOverridden])
                                                                                                                                                                      {
                                                                                                                                                                        languageForDefaultText = [v9 languageForDefaultText];
                                                                                                                                                                        if (languageForDefaultText == [v11 languageForDefaultText])
                                                                                                                                                                        {
                                                                                                                                                                          specialCharacterOverridden = [v9 specialCharacterOverridden];
                                                                                                                                                                          if (specialCharacterOverridden == [v11 specialCharacterOverridden])
                                                                                                                                                                          {
                                                                                                                                                                            specialCharacter = [v9 specialCharacter];
                                                                                                                                                                            if (specialCharacter == [v11 specialCharacter])
                                                                                                                                                                            {
                                                                                                                                                                              listCharacterPictureBulletOverridden = [v9 listCharacterPictureBulletOverridden];
                                                                                                                                                                              if (listCharacterPictureBulletOverridden == [v11 listCharacterPictureBulletOverridden])
                                                                                                                                                                              {
                                                                                                                                                                                listCharacterPictureBullet = [v9 listCharacterPictureBullet];
                                                                                                                                                                                if (listCharacterPictureBullet == [v11 listCharacterPictureBullet])
                                                                                                                                                                                {
                                                                                                                                                                                  charPositionOfPictureBulletInBookmarkOverridden = [v9 charPositionOfPictureBulletInBookmarkOverridden];
                                                                                                                                                                                  if (charPositionOfPictureBulletInBookmarkOverridden == [v11 charPositionOfPictureBulletInBookmarkOverridden])
                                                                                                                                                                                  {
                                                                                                                                                                                    charPositionOfPictureBulletInBookmark = [v9 charPositionOfPictureBulletInBookmark];
                                                                                                                                                                                    if (charPositionOfPictureBulletInBookmark == [v11 charPositionOfPictureBulletInBookmark])
                                                                                                                                                                                    {
                                                                                                                                                                                      languageForFarEastOverridden = [v9 languageForFarEastOverridden];
                                                                                                                                                                                      if (languageForFarEastOverridden == [v11 languageForFarEastOverridden])
                                                                                                                                                                                      {
                                                                                                                                                                                        languageForFarEast = [v9 languageForFarEast];
                                                                                                                                                                                        if (languageForFarEast == [v11 languageForFarEast])
                                                                                                                                                                                        {
                                                                                                                                                                                          languageForBiTextOverridden = [v9 languageForBiTextOverridden];
                                                                                                                                                                                          if (languageForBiTextOverridden == [v11 languageForBiTextOverridden])
                                                                                                                                                                                          {
                                                                                                                                                                                            languageForBiText = [v9 languageForBiText];
                                                                                                                                                                                            v8 = languageForBiText != [v11 languageForBiText];
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

- (int)reverseBooleanProperty:(int)property
{
  if (property > 127)
  {
    if (property != 128)
    {
      if (property == 129)
      {
        return 128;
      }

      return 0;
    }

    return 129;
  }

  else
  {
    return !property;
  }
}

@end