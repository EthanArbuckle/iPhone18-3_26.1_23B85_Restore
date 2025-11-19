@interface WDCharacterPropertiesValues
- (id)copyWithZone:(_NSZone *)a3;
- (void)setBoldForBiTextOverridden:(BOOL)a3;
- (void)setBoldOverridden:(BOOL)a3;
- (void)setBorderOverridden:(BOOL)a3;
- (void)setBracketTwoLinesInOneOverridden:(BOOL)a3;
- (void)setCapsOverridden:(BOOL)a3;
- (void)setCharPositionOfPictureBulletInBookmarkOverridden:(BOOL)a3;
- (void)setColorAuto:(BOOL)a3;
- (void)setColorAutoOverridden:(BOOL)a3;
- (void)setColorOverridden:(BOOL)a3;
- (void)setCompressHorizontalInVerticalOverridden:(BOOL)a3;
- (void)setDeletedOverridden:(BOOL)a3;
- (void)setDeletionDateOverridden:(BOOL)a3;
- (void)setDoubleStrikeThroughOverridden:(BOOL)a3;
- (void)setEditDateOverridden:(BOOL)a3;
- (void)setEditedOverridden:(BOOL)a3;
- (void)setEmbeddedObject:(BOOL)a3;
- (void)setEmbeddedObjectOverridden:(BOOL)a3;
- (void)setEmbossedOverridden:(BOOL)a3;
- (void)setEmphasisMarkOverridden:(BOOL)a3;
- (void)setExtendedFontOverridden:(BOOL)a3;
- (void)setFarEastFontOverridden:(BOOL)a3;
- (void)setFontOverridden:(BOOL)a3;
- (void)setFontSizeForBiTextOverridden:(BOOL)a3;
- (void)setFontSizeOverridden:(BOOL)a3;
- (void)setHiddenOverridden:(BOOL)a3;
- (void)setHighlight:(BOOL)a3;
- (void)setHighlightColorOverridden:(BOOL)a3;
- (void)setHighlightOverridden:(BOOL)a3;
- (void)setHorizontalInVertical:(BOOL)a3;
- (void)setHorizontalInVerticalOverridden:(BOOL)a3;
- (void)setImprintOverridden:(BOOL)a3;
- (void)setIndexToAuthorIDOfDeletionOverridden:(BOOL)a3;
- (void)setIndexToAuthorIDOfEditOverridden:(BOOL)a3;
- (void)setIndexToAuthorIDOfFormattingChangeOverridden:(BOOL)a3;
- (void)setItalicForBiTextOverridden:(BOOL)a3;
- (void)setItalicOverridden:(BOOL)a3;
- (void)setKerningOverridden:(BOOL)a3;
- (void)setLanguageForBiTextOverridden:(BOOL)a3;
- (void)setLanguageForDefaultTextOverridden:(BOOL)a3;
- (void)setLanguageForFarEastOverridden:(BOOL)a3;
- (void)setLigatureOverridden:(BOOL)a3;
- (void)setListCharacterPictureBulletOverridden:(BOOL)a3;
- (void)setLowerCase:(BOOL)a3;
- (void)setLowerCaseOverridden:(BOOL)a3;
- (void)setObjectIDForOle2Overridden:(BOOL)a3;
- (void)setOffsetToPictureDataOverridden:(BOOL)a3;
- (void)setOle2Overridden:(BOOL)a3;
- (void)setOutline2010WidthOverridden:(BOOL)a3;
- (void)setOutlineColorOverridden:(BOOL)a3;
- (void)setOutlineOverridden:(BOOL)a3;
- (void)setPositionOverridden:(BOOL)a3;
- (void)setReflectionOverridden:(BOOL)a3;
- (void)setRightToLeftOverridden:(BOOL)a3;
- (void)setShadingOverridden:(BOOL)a3;
- (void)setShadow2010OpacityOverridden:(BOOL)a3;
- (void)setShadow2010Overridden:(BOOL)a3;
- (void)setSpacingOverridden:(BOOL)a3;
- (void)setSpecialCharacter:(BOOL)a3;
- (void)setSpecialCharacterOverridden:(BOOL)a3;
- (void)setStrikeThroughOverridden:(BOOL)a3;
- (void)setSymbolCharacterOverridden:(BOOL)a3;
- (void)setSymbolFontOverridden:(BOOL)a3;
- (void)setTextScaleOverridden:(BOOL)a3;
- (void)setTwoLinesInOne:(BOOL)a3;
- (void)setTwoLinesInOneOverridden:(BOOL)a3;
- (void)setUnderlineOverridden:(BOOL)a3;
- (void)setUseCsFontOverridden:(BOOL)a3;
@end

@implementation WDCharacterPropertiesValues

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[WDCharacterPropertiesValues allocWithZone:?]];
  if (v4)
  {
    v5 = [(WDCharacterPropertiesValues *)self baseStyle];
    [(WDCharacterPropertiesValues *)v4 setBaseStyle:v5];

    v6 = [(WDCharacterPropertiesValues *)self border];
    [(WDCharacterPropertiesValues *)v4 setBorder:v6];

    v7 = [(WDCharacterPropertiesValues *)self shading];
    [(WDCharacterPropertiesValues *)v4 setShading:v7];

    v8 = [(WDCharacterPropertiesValues *)self font];
    [(WDCharacterPropertiesValues *)v4 setFont:v8];

    v9 = [(WDCharacterPropertiesValues *)self extendedFont];
    [(WDCharacterPropertiesValues *)v4 setExtendedFont:v9];

    v10 = [(WDCharacterPropertiesValues *)self farEastFont];
    [(WDCharacterPropertiesValues *)v4 setFarEastFont:v10];

    v11 = [(WDCharacterPropertiesValues *)self symbolFont];
    [(WDCharacterPropertiesValues *)v4 setSymbolFont:v11];

    [(WDCharacterPropertiesValues *)v4 setFontHint:[(WDCharacterPropertiesValues *)self fontHint]];
    [(WDCharacterPropertiesValues *)v4 setLanguageForFarEast:[(WDCharacterPropertiesValues *)self languageForFarEast]];
    [(WDCharacterPropertiesValues *)v4 setLanguageForBiText:[(WDCharacterPropertiesValues *)self languageForBiText]];
    [(WDCharacterPropertiesValues *)v4 setLanguageForDefaultText:[(WDCharacterPropertiesValues *)self languageForDefaultText]];
    v12 = [(WDCharacterPropertiesValues *)self color];
    [(WDCharacterPropertiesValues *)v4 setColor:v12];

    v13 = [(WDCharacterPropertiesValues *)self underlineColor];
    [(WDCharacterPropertiesValues *)v4 setUnderlineColor:v13];

    v14 = [(WDCharacterPropertiesValues *)self outlineColor];
    [(WDCharacterPropertiesValues *)v4 setOutlineColor:v14];

    v15 = [(WDCharacterPropertiesValues *)self deletionDate];
    [(WDCharacterPropertiesValues *)v4 setDeletionDate:v15];

    v16 = [(WDCharacterPropertiesValues *)self editDate];
    [(WDCharacterPropertiesValues *)v4 setEditDate:v16];

    [(WDCharacterPropertiesValues *)v4 setCharPositionOfPictureBulletInBookmark:[(WDCharacterPropertiesValues *)self charPositionOfPictureBulletInBookmark]];
    [(WDCharacterPropertiesValues *)v4 setObjectIDForOle2:[(WDCharacterPropertiesValues *)self objectIDForOle2]];
    [(WDCharacterPropertiesValues *)v4 setOffsetToPictureData:[(WDCharacterPropertiesValues *)self offsetToPictureData]];
    [(WDCharacterPropertiesValues *)v4 setSpacing:[(WDCharacterPropertiesValues *)self spacing]];
    [(WDCharacterPropertiesValues *)v4 setPosition:[(WDCharacterPropertiesValues *)self position]];
    v17 = [(WDCharacterPropertiesValues *)self reflection];
    [(WDCharacterPropertiesValues *)v4 setReflection:v17];

    v18 = [(WDCharacterPropertiesValues *)self shadow2010];
    [(WDCharacterPropertiesValues *)v4 setShadow2010:v18];

    [(WDCharacterPropertiesValues *)self shadow2010Opacity];
    [(WDCharacterPropertiesValues *)v4 setShadow2010Opacity:?];
    [(WDCharacterPropertiesValues *)v4 setFontSize:[(WDCharacterPropertiesValues *)self fontSize]];
    [(WDCharacterPropertiesValues *)v4 setFontSizeForBiText:[(WDCharacterPropertiesValues *)self fontSizeForBiText]];
    [(WDCharacterPropertiesValues *)v4 setKerning:[(WDCharacterPropertiesValues *)self kerning]];
    [(WDCharacterPropertiesValues *)v4 setIndexToAuthorIDOfDeletion:[(WDCharacterPropertiesValues *)self indexToAuthorIDOfDeletion]];
    [(WDCharacterPropertiesValues *)v4 setIndexToAuthorIDOfEdit:[(WDCharacterPropertiesValues *)self indexToAuthorIDOfEdit]];
    [(WDCharacterPropertiesValues *)v4 setIndexToAuthorIDOfFormattingChange:[(WDCharacterPropertiesValues *)self indexToAuthorIDOfFormattingChange]];
    [(WDCharacterPropertiesValues *)v4 setTextScale:[(WDCharacterPropertiesValues *)self textScale]];
    [(WDCharacterPropertiesValues *)v4 setUnderline:[(WDCharacterPropertiesValues *)self underline]];
    [(WDCharacterPropertiesValues *)v4 setOutline:[(WDCharacterPropertiesValues *)self outline]];
    [(WDCharacterPropertiesValues *)self outline2010Width];
    [(WDCharacterPropertiesValues *)v4 setOutline2010Width:?];
    [(WDCharacterPropertiesValues *)v4 setShadow:[(WDCharacterPropertiesValues *)self shadow]];
    [(WDCharacterPropertiesValues *)v4 setEmbossed:[(WDCharacterPropertiesValues *)self embossed]];
    [(WDCharacterPropertiesValues *)v4 setImprint:[(WDCharacterPropertiesValues *)self imprint]];
    [(WDCharacterPropertiesValues *)v4 setBold:[(WDCharacterPropertiesValues *)self bold]];
    [(WDCharacterPropertiesValues *)v4 setBoldForBiText:[(WDCharacterPropertiesValues *)self boldForBiText]];
    [(WDCharacterPropertiesValues *)v4 setItalic:[(WDCharacterPropertiesValues *)self italic]];
    [(WDCharacterPropertiesValues *)v4 setItalicForBiText:[(WDCharacterPropertiesValues *)self italicForBiText]];
    [(WDCharacterPropertiesValues *)v4 setVerticalAlign:[(WDCharacterPropertiesValues *)self verticalAlign]];
    [(WDCharacterPropertiesValues *)v4 setEmphasisMark:[(WDCharacterPropertiesValues *)self emphasisMark]];
    [(WDCharacterPropertiesValues *)v4 setDeleted:[(WDCharacterPropertiesValues *)self deleted]];
    [(WDCharacterPropertiesValues *)v4 setEdited:[(WDCharacterPropertiesValues *)self edited]];
    [(WDCharacterPropertiesValues *)v4 setFormattingChanged:[(WDCharacterPropertiesValues *)self formattingChanged]];
    [(WDCharacterPropertiesValues *)v4 setStrikeThrough:[(WDCharacterPropertiesValues *)self strikeThrough]];
    [(WDCharacterPropertiesValues *)v4 setDoubleStrikeThrough:[(WDCharacterPropertiesValues *)self doubleStrikeThrough]];
    [(WDCharacterPropertiesValues *)v4 setHighlightColor:[(WDCharacterPropertiesValues *)self highlightColor]];
    [(WDCharacterPropertiesValues *)v4 setLigature:[(WDCharacterPropertiesValues *)self ligature]];
    [(WDCharacterPropertiesValues *)v4 setSmallCaps:[(WDCharacterPropertiesValues *)self smallCaps]];
    [(WDCharacterPropertiesValues *)v4 setCaps:[(WDCharacterPropertiesValues *)self caps]];
    [(WDCharacterPropertiesValues *)v4 setHidden:[(WDCharacterPropertiesValues *)self hidden]];
    [(WDCharacterPropertiesValues *)v4 setBracketTwoLinesInOne:[(WDCharacterPropertiesValues *)self bracketTwoLinesInOne]];
    [(WDCharacterPropertiesValues *)v4 setRightToLeft:[(WDCharacterPropertiesValues *)self rightToLeft]];
    [(WDCharacterPropertiesValues *)v4 setUseCsFont:[(WDCharacterPropertiesValues *)self useCsFont]];
    [(WDCharacterPropertiesValues *)v4 setSymbolCharacter:[(WDCharacterPropertiesValues *)self symbolCharacter]];
    [(WDCharacterPropertiesValues *)v4 setBaseStyleOverridden:[(WDCharacterPropertiesValues *)self baseStyleOverridden]];
    [(WDCharacterPropertiesValues *)v4 setBorderOverridden:[(WDCharacterPropertiesValues *)self borderOverridden]];
    [(WDCharacterPropertiesValues *)v4 setShadingOverridden:[(WDCharacterPropertiesValues *)self shadingOverridden]];
    [(WDCharacterPropertiesValues *)v4 setFontOverridden:[(WDCharacterPropertiesValues *)self fontOverridden]];
    [(WDCharacterPropertiesValues *)v4 setExtendedFontOverridden:[(WDCharacterPropertiesValues *)self extendedFontOverridden]];
    [(WDCharacterPropertiesValues *)v4 setFarEastFontOverridden:[(WDCharacterPropertiesValues *)self farEastFontOverridden]];
    [(WDCharacterPropertiesValues *)v4 setSymbolCharacterOverridden:[(WDCharacterPropertiesValues *)self symbolCharacterOverridden]];
    [(WDCharacterPropertiesValues *)v4 setSymbolFontOverridden:[(WDCharacterPropertiesValues *)self symbolFontOverridden]];
    [(WDCharacterPropertiesValues *)v4 setFontHintOverridden:[(WDCharacterPropertiesValues *)self fontHintOverridden]];
    [(WDCharacterPropertiesValues *)v4 setBoldOverridden:[(WDCharacterPropertiesValues *)self boldOverridden]];
    [(WDCharacterPropertiesValues *)v4 setBoldForBiTextOverridden:[(WDCharacterPropertiesValues *)self boldForBiTextOverridden]];
    [(WDCharacterPropertiesValues *)v4 setItalicOverridden:[(WDCharacterPropertiesValues *)self italicOverridden]];
    [(WDCharacterPropertiesValues *)v4 setItalicForBiTextOverridden:[(WDCharacterPropertiesValues *)self italicForBiTextOverridden]];
    [(WDCharacterPropertiesValues *)v4 setOutlineOverridden:[(WDCharacterPropertiesValues *)self outlineOverridden]];
    [(WDCharacterPropertiesValues *)v4 setOutlineColorOverridden:[(WDCharacterPropertiesValues *)self outlineColorOverridden]];
    [(WDCharacterPropertiesValues *)v4 setOutline2010WidthOverridden:[(WDCharacterPropertiesValues *)self outline2010WidthOverridden]];
    [(WDCharacterPropertiesValues *)v4 setShadowOverridden:[(WDCharacterPropertiesValues *)self shadowOverridden]];
    [(WDCharacterPropertiesValues *)v4 setReflectionOverridden:[(WDCharacterPropertiesValues *)self reflectionOverridden]];
    [(WDCharacterPropertiesValues *)v4 setShadow2010Overridden:[(WDCharacterPropertiesValues *)self shadow2010Overridden]];
    [(WDCharacterPropertiesValues *)v4 setShadow2010OpacityOverridden:[(WDCharacterPropertiesValues *)self shadow2010OpacityOverridden]];
    [(WDCharacterPropertiesValues *)v4 setEmbossedOverridden:[(WDCharacterPropertiesValues *)self embossedOverridden]];
    [(WDCharacterPropertiesValues *)v4 setImprintOverridden:[(WDCharacterPropertiesValues *)self imprintOverridden]];
    [(WDCharacterPropertiesValues *)v4 setKerningOverridden:[(WDCharacterPropertiesValues *)self kerningOverridden]];
    [(WDCharacterPropertiesValues *)v4 setTextScaleOverridden:[(WDCharacterPropertiesValues *)self textScaleOverridden]];
    [(WDCharacterPropertiesValues *)v4 setUnderlineColorOverridden:[(WDCharacterPropertiesValues *)self underlineColorOverridden]];
    [(WDCharacterPropertiesValues *)v4 setUnderlineOverridden:[(WDCharacterPropertiesValues *)self underlineOverridden]];
    [(WDCharacterPropertiesValues *)v4 setStrikeThroughOverridden:[(WDCharacterPropertiesValues *)self strikeThroughOverridden]];
    [(WDCharacterPropertiesValues *)v4 setDoubleStrikeThroughOverridden:[(WDCharacterPropertiesValues *)self doubleStrikeThroughOverridden]];
    [(WDCharacterPropertiesValues *)v4 setHighlight:[(WDCharacterPropertiesValues *)self highlight]];
    [(WDCharacterPropertiesValues *)v4 setHighlightOverridden:[(WDCharacterPropertiesValues *)self highlightOverridden]];
    [(WDCharacterPropertiesValues *)v4 setHighlightColorOverridden:[(WDCharacterPropertiesValues *)self highlightColorOverridden]];
    [(WDCharacterPropertiesValues *)v4 setLigatureOverridden:[(WDCharacterPropertiesValues *)self ligatureOverridden]];
    [(WDCharacterPropertiesValues *)v4 setSmallCapsOverridden:[(WDCharacterPropertiesValues *)self smallCapsOverridden]];
    [(WDCharacterPropertiesValues *)v4 setCapsOverridden:[(WDCharacterPropertiesValues *)self capsOverridden]];
    [(WDCharacterPropertiesValues *)v4 setLowerCase:[(WDCharacterPropertiesValues *)self lowerCase]];
    [(WDCharacterPropertiesValues *)v4 setLowerCaseOverridden:[(WDCharacterPropertiesValues *)self lowerCaseOverridden]];
    [(WDCharacterPropertiesValues *)v4 setHiddenOverridden:[(WDCharacterPropertiesValues *)self hiddenOverridden]];
    [(WDCharacterPropertiesValues *)v4 setSpacingOverridden:[(WDCharacterPropertiesValues *)self spacingOverridden]];
    [(WDCharacterPropertiesValues *)v4 setPositionOverridden:[(WDCharacterPropertiesValues *)self positionOverridden]];
    [(WDCharacterPropertiesValues *)v4 setFontSizeOverridden:[(WDCharacterPropertiesValues *)self fontSizeOverridden]];
    [(WDCharacterPropertiesValues *)v4 setVerticalAlignOverridden:[(WDCharacterPropertiesValues *)self verticalAlignOverridden]];
    [(WDCharacterPropertiesValues *)v4 setEmphasisMarkOverridden:[(WDCharacterPropertiesValues *)self emphasisMarkOverridden]];
    [(WDCharacterPropertiesValues *)v4 setColorOverridden:[(WDCharacterPropertiesValues *)self colorOverridden]];
    [(WDCharacterPropertiesValues *)v4 setColorAuto:[(WDCharacterPropertiesValues *)self colorAuto]];
    [(WDCharacterPropertiesValues *)v4 setColorAutoOverridden:[(WDCharacterPropertiesValues *)self colorAutoOverridden]];
    [(WDCharacterPropertiesValues *)v4 setLanguageForDefaultTextOverridden:[(WDCharacterPropertiesValues *)self languageForDefaultTextOverridden]];
    [(WDCharacterPropertiesValues *)v4 setDeletedOverridden:[(WDCharacterPropertiesValues *)self deletedOverridden]];
    [(WDCharacterPropertiesValues *)v4 setEditedOverridden:[(WDCharacterPropertiesValues *)self editedOverridden]];
    [(WDCharacterPropertiesValues *)v4 setFormattingChangedOverridden:[(WDCharacterPropertiesValues *)self formattingChangedOverridden]];
    [(WDCharacterPropertiesValues *)v4 setIndexToAuthorIDOfDeletionOverridden:[(WDCharacterPropertiesValues *)self indexToAuthorIDOfDeletionOverridden]];
    [(WDCharacterPropertiesValues *)v4 setIndexToAuthorIDOfEditOverridden:[(WDCharacterPropertiesValues *)self indexToAuthorIDOfEditOverridden]];
    [(WDCharacterPropertiesValues *)v4 setIndexToAuthorIDOfFormattingChangeOverridden:[(WDCharacterPropertiesValues *)self indexToAuthorIDOfFormattingChangeOverridden]];
    [(WDCharacterPropertiesValues *)v4 setDeletionDateOverridden:[(WDCharacterPropertiesValues *)self deletionDateOverridden]];
    [(WDCharacterPropertiesValues *)v4 setEditDateOverridden:[(WDCharacterPropertiesValues *)self editDateOverridden]];
    [(WDCharacterPropertiesValues *)v4 setSpecialCharacter:[(WDCharacterPropertiesValues *)self specialCharacter]];
    [(WDCharacterPropertiesValues *)v4 setSpecialCharacterOverridden:[(WDCharacterPropertiesValues *)self specialCharacterOverridden]];
    [(WDCharacterPropertiesValues *)v4 setListCharacterPictureBullet:[(WDCharacterPropertiesValues *)self listCharacterPictureBullet]];
    [(WDCharacterPropertiesValues *)v4 setListCharacterPictureBulletOverridden:[(WDCharacterPropertiesValues *)self listCharacterPictureBulletOverridden]];
    [(WDCharacterPropertiesValues *)v4 setCharPositionOfPictureBulletInBookmarkOverridden:[(WDCharacterPropertiesValues *)self charPositionOfPictureBulletInBookmarkOverridden]];
    [(WDCharacterPropertiesValues *)v4 setLanguageForFarEastOverridden:[(WDCharacterPropertiesValues *)self languageForFarEastOverridden]];
    [(WDCharacterPropertiesValues *)v4 setLanguageForBiTextOverridden:[(WDCharacterPropertiesValues *)self languageForBiTextOverridden]];
    [(WDCharacterPropertiesValues *)v4 setFontSizeForBiTextOverridden:[(WDCharacterPropertiesValues *)self fontSizeForBiTextOverridden]];
    [(WDCharacterPropertiesValues *)v4 setEmbeddedObject:[(WDCharacterPropertiesValues *)self embeddedObject]];
    [(WDCharacterPropertiesValues *)v4 setEmbeddedObjectOverridden:[(WDCharacterPropertiesValues *)self embeddedObjectOverridden]];
    [(WDCharacterPropertiesValues *)v4 setOle2:[(WDCharacterPropertiesValues *)self ole2]];
    [(WDCharacterPropertiesValues *)v4 setOle2Overridden:[(WDCharacterPropertiesValues *)self ole2Overridden]];
    [(WDCharacterPropertiesValues *)v4 setObjectIDForOle2Overridden:[(WDCharacterPropertiesValues *)self objectIDForOle2Overridden]];
    [(WDCharacterPropertiesValues *)v4 setOffsetToPictureDataOverridden:[(WDCharacterPropertiesValues *)self offsetToPictureDataOverridden]];
    [(WDCharacterPropertiesValues *)v4 setRightToLeftOverridden:[(WDCharacterPropertiesValues *)self rightToLeftOverridden]];
    [(WDCharacterPropertiesValues *)v4 setUseCsFontOverridden:[(WDCharacterPropertiesValues *)self useCsFontOverridden]];
    [(WDCharacterPropertiesValues *)v4 setHorizontalInVertical:[(WDCharacterPropertiesValues *)self horizontalInVertical]];
    [(WDCharacterPropertiesValues *)v4 setHorizontalInVerticalOverridden:[(WDCharacterPropertiesValues *)self horizontalInVerticalOverridden]];
    [(WDCharacterPropertiesValues *)v4 setCompressHorizontalInVertical:[(WDCharacterPropertiesValues *)self compressHorizontalInVertical]];
    [(WDCharacterPropertiesValues *)v4 setCompressHorizontalInVerticalOverridden:[(WDCharacterPropertiesValues *)self compressHorizontalInVerticalOverridden]];
    [(WDCharacterPropertiesValues *)v4 setTwoLinesInOne:[(WDCharacterPropertiesValues *)self twoLinesInOne]];
    [(WDCharacterPropertiesValues *)v4 setTwoLinesInOneOverridden:[(WDCharacterPropertiesValues *)self twoLinesInOneOverridden]];
    [(WDCharacterPropertiesValues *)v4 setBracketTwoLinesInOneOverridden:[(WDCharacterPropertiesValues *)self bracketTwoLinesInOneOverridden]];
  }

  return v4;
}

- (void)setBorderOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xFD | v3;
}

- (void)setShadingOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xFB | v3;
}

- (void)setFontOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xF7 | v3;
}

- (void)setExtendedFontOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xEF | v3;
}

- (void)setFarEastFontOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xDF | v3;
}

- (void)setSymbolCharacterOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xBF | v3;
}

- (void)setSymbolFontOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = v3 & 0x80 | *(self + 8) & 0x7F;
}

- (void)setBoldOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 9) = *(self + 9) & 0xFD | v3;
}

- (void)setBoldForBiTextOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 9) = *(self + 9) & 0xFB | v3;
}

- (void)setItalicOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 9) = *(self + 9) & 0xF7 | v3;
}

- (void)setItalicForBiTextOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 9) = *(self + 9) & 0xEF | v3;
}

- (void)setOutlineOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 9) = *(self + 9) & 0xDF | v3;
}

- (void)setOutlineColorOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 9) = *(self + 9) & 0xBF | v3;
}

- (void)setOutline2010WidthOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 9) = v3 & 0x80 | *(self + 9) & 0x7F;
}

- (void)setReflectionOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 10) = *(self + 10) & 0xFD | v3;
}

- (void)setShadow2010Overridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 10) = *(self + 10) & 0xFB | v3;
}

- (void)setShadow2010OpacityOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 10) = *(self + 10) & 0xF7 | v3;
}

- (void)setEmbossedOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 10) = *(self + 10) & 0xEF | v3;
}

- (void)setImprintOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 10) = *(self + 10) & 0xDF | v3;
}

- (void)setKerningOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 10) = *(self + 10) & 0xBF | v3;
}

- (void)setTextScaleOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 10) = v3 & 0x80 | *(self + 10) & 0x7F;
}

- (void)setUnderlineOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 11) = *(self + 11) & 0xFD | v3;
}

- (void)setStrikeThroughOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 11) = *(self + 11) & 0xFB | v3;
}

- (void)setDoubleStrikeThroughOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 11) = *(self + 11) & 0xF7 | v3;
}

- (void)setHighlight:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 11) = *(self + 11) & 0xEF | v3;
}

- (void)setHighlightOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 11) = *(self + 11) & 0xDF | v3;
}

- (void)setHighlightColorOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 11) = *(self + 11) & 0xBF | v3;
}

- (void)setLigatureOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 11) = v3 & 0x80 | *(self + 11) & 0x7F;
}

- (void)setCapsOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 12) = *(self + 12) & 0xFD | v3;
}

- (void)setLowerCase:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 12) = *(self + 12) & 0xFB | v3;
}

- (void)setLowerCaseOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 12) = *(self + 12) & 0xF7 | v3;
}

- (void)setHiddenOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 12) = *(self + 12) & 0xEF | v3;
}

- (void)setSpacingOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 12) = *(self + 12) & 0xDF | v3;
}

- (void)setPositionOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 12) = *(self + 12) & 0xBF | v3;
}

- (void)setFontSizeOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 12) = v3 & 0x80 | *(self + 12) & 0x7F;
}

- (void)setEmphasisMarkOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 13) = *(self + 13) & 0xFD | v3;
}

- (void)setColorOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 13) = *(self + 13) & 0xFB | v3;
}

- (void)setColorAuto:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 13) = *(self + 13) & 0xF7 | v3;
}

- (void)setColorAutoOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 13) = *(self + 13) & 0xEF | v3;
}

- (void)setLanguageForDefaultTextOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 13) = *(self + 13) & 0xDF | v3;
}

- (void)setDeletedOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 13) = *(self + 13) & 0xBF | v3;
}

- (void)setEditedOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 13) = v3 & 0x80 | *(self + 13) & 0x7F;
}

- (void)setIndexToAuthorIDOfDeletionOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 14) = *(self + 14) & 0xFD | v3;
}

- (void)setIndexToAuthorIDOfEditOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 14) = *(self + 14) & 0xFB | v3;
}

- (void)setIndexToAuthorIDOfFormattingChangeOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 14) = *(self + 14) & 0xF7 | v3;
}

- (void)setDeletionDateOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 14) = *(self + 14) & 0xEF | v3;
}

- (void)setEditDateOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 14) = *(self + 14) & 0xDF | v3;
}

- (void)setSpecialCharacter:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 14) = *(self + 14) & 0xBF | v3;
}

- (void)setSpecialCharacterOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 14) = v3 & 0x80 | *(self + 14) & 0x7F;
}

- (void)setListCharacterPictureBulletOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 15) = *(self + 15) & 0xFD | v3;
}

- (void)setCharPositionOfPictureBulletInBookmarkOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 15) = *(self + 15) & 0xFB | v3;
}

- (void)setLanguageForFarEastOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 15) = *(self + 15) & 0xF7 | v3;
}

- (void)setLanguageForBiTextOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 15) = *(self + 15) & 0xEF | v3;
}

- (void)setFontSizeForBiTextOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 15) = *(self + 15) & 0xDF | v3;
}

- (void)setEmbeddedObject:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 15) = *(self + 15) & 0xBF | v3;
}

- (void)setEmbeddedObjectOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 15) = v3 & 0x80 | *(self + 15) & 0x7F;
}

- (void)setOle2Overridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xFD | v3;
}

- (void)setObjectIDForOle2Overridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xFB | v3;
}

- (void)setOffsetToPictureDataOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xF7 | v3;
}

- (void)setRightToLeftOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xEF | v3;
}

- (void)setUseCsFontOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xDF | v3;
}

- (void)setHorizontalInVertical:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xBF | v3;
}

- (void)setHorizontalInVerticalOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = v3 & 0x80 | *(self + 16) & 0x7F;
}

- (void)setCompressHorizontalInVerticalOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 17) = *(self + 17) & 0xFD | v3;
}

- (void)setTwoLinesInOne:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 17) = *(self + 17) & 0xFB | v3;
}

- (void)setTwoLinesInOneOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 17) = *(self + 17) & 0xF7 | v3;
}

- (void)setBracketTwoLinesInOneOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 17) = *(self + 17) & 0xEF | v3;
}

@end