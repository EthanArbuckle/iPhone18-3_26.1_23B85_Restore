@interface WDCharacterPropertiesValues
- (id)copyWithZone:(_NSZone *)zone;
- (void)setBoldForBiTextOverridden:(BOOL)overridden;
- (void)setBoldOverridden:(BOOL)overridden;
- (void)setBorderOverridden:(BOOL)overridden;
- (void)setBracketTwoLinesInOneOverridden:(BOOL)overridden;
- (void)setCapsOverridden:(BOOL)overridden;
- (void)setCharPositionOfPictureBulletInBookmarkOverridden:(BOOL)overridden;
- (void)setColorAuto:(BOOL)auto;
- (void)setColorAutoOverridden:(BOOL)overridden;
- (void)setColorOverridden:(BOOL)overridden;
- (void)setCompressHorizontalInVerticalOverridden:(BOOL)overridden;
- (void)setDeletedOverridden:(BOOL)overridden;
- (void)setDeletionDateOverridden:(BOOL)overridden;
- (void)setDoubleStrikeThroughOverridden:(BOOL)overridden;
- (void)setEditDateOverridden:(BOOL)overridden;
- (void)setEditedOverridden:(BOOL)overridden;
- (void)setEmbeddedObject:(BOOL)object;
- (void)setEmbeddedObjectOverridden:(BOOL)overridden;
- (void)setEmbossedOverridden:(BOOL)overridden;
- (void)setEmphasisMarkOverridden:(BOOL)overridden;
- (void)setExtendedFontOverridden:(BOOL)overridden;
- (void)setFarEastFontOverridden:(BOOL)overridden;
- (void)setFontOverridden:(BOOL)overridden;
- (void)setFontSizeForBiTextOverridden:(BOOL)overridden;
- (void)setFontSizeOverridden:(BOOL)overridden;
- (void)setHiddenOverridden:(BOOL)overridden;
- (void)setHighlight:(BOOL)highlight;
- (void)setHighlightColorOverridden:(BOOL)overridden;
- (void)setHighlightOverridden:(BOOL)overridden;
- (void)setHorizontalInVertical:(BOOL)vertical;
- (void)setHorizontalInVerticalOverridden:(BOOL)overridden;
- (void)setImprintOverridden:(BOOL)overridden;
- (void)setIndexToAuthorIDOfDeletionOverridden:(BOOL)overridden;
- (void)setIndexToAuthorIDOfEditOverridden:(BOOL)overridden;
- (void)setIndexToAuthorIDOfFormattingChangeOverridden:(BOOL)overridden;
- (void)setItalicForBiTextOverridden:(BOOL)overridden;
- (void)setItalicOverridden:(BOOL)overridden;
- (void)setKerningOverridden:(BOOL)overridden;
- (void)setLanguageForBiTextOverridden:(BOOL)overridden;
- (void)setLanguageForDefaultTextOverridden:(BOOL)overridden;
- (void)setLanguageForFarEastOverridden:(BOOL)overridden;
- (void)setLigatureOverridden:(BOOL)overridden;
- (void)setListCharacterPictureBulletOverridden:(BOOL)overridden;
- (void)setLowerCase:(BOOL)case;
- (void)setLowerCaseOverridden:(BOOL)overridden;
- (void)setObjectIDForOle2Overridden:(BOOL)overridden;
- (void)setOffsetToPictureDataOverridden:(BOOL)overridden;
- (void)setOle2Overridden:(BOOL)overridden;
- (void)setOutline2010WidthOverridden:(BOOL)overridden;
- (void)setOutlineColorOverridden:(BOOL)overridden;
- (void)setOutlineOverridden:(BOOL)overridden;
- (void)setPositionOverridden:(BOOL)overridden;
- (void)setReflectionOverridden:(BOOL)overridden;
- (void)setRightToLeftOverridden:(BOOL)overridden;
- (void)setShadingOverridden:(BOOL)overridden;
- (void)setShadow2010OpacityOverridden:(BOOL)overridden;
- (void)setShadow2010Overridden:(BOOL)overridden;
- (void)setSpacingOverridden:(BOOL)overridden;
- (void)setSpecialCharacter:(BOOL)character;
- (void)setSpecialCharacterOverridden:(BOOL)overridden;
- (void)setStrikeThroughOverridden:(BOOL)overridden;
- (void)setSymbolCharacterOverridden:(BOOL)overridden;
- (void)setSymbolFontOverridden:(BOOL)overridden;
- (void)setTextScaleOverridden:(BOOL)overridden;
- (void)setTwoLinesInOne:(BOOL)one;
- (void)setTwoLinesInOneOverridden:(BOOL)overridden;
- (void)setUnderlineOverridden:(BOOL)overridden;
- (void)setUseCsFontOverridden:(BOOL)overridden;
@end

@implementation WDCharacterPropertiesValues

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[WDCharacterPropertiesValues allocWithZone:?]];
  if (v4)
  {
    baseStyle = [(WDCharacterPropertiesValues *)self baseStyle];
    [(WDCharacterPropertiesValues *)v4 setBaseStyle:baseStyle];

    border = [(WDCharacterPropertiesValues *)self border];
    [(WDCharacterPropertiesValues *)v4 setBorder:border];

    shading = [(WDCharacterPropertiesValues *)self shading];
    [(WDCharacterPropertiesValues *)v4 setShading:shading];

    font = [(WDCharacterPropertiesValues *)self font];
    [(WDCharacterPropertiesValues *)v4 setFont:font];

    extendedFont = [(WDCharacterPropertiesValues *)self extendedFont];
    [(WDCharacterPropertiesValues *)v4 setExtendedFont:extendedFont];

    farEastFont = [(WDCharacterPropertiesValues *)self farEastFont];
    [(WDCharacterPropertiesValues *)v4 setFarEastFont:farEastFont];

    symbolFont = [(WDCharacterPropertiesValues *)self symbolFont];
    [(WDCharacterPropertiesValues *)v4 setSymbolFont:symbolFont];

    [(WDCharacterPropertiesValues *)v4 setFontHint:[(WDCharacterPropertiesValues *)self fontHint]];
    [(WDCharacterPropertiesValues *)v4 setLanguageForFarEast:[(WDCharacterPropertiesValues *)self languageForFarEast]];
    [(WDCharacterPropertiesValues *)v4 setLanguageForBiText:[(WDCharacterPropertiesValues *)self languageForBiText]];
    [(WDCharacterPropertiesValues *)v4 setLanguageForDefaultText:[(WDCharacterPropertiesValues *)self languageForDefaultText]];
    color = [(WDCharacterPropertiesValues *)self color];
    [(WDCharacterPropertiesValues *)v4 setColor:color];

    underlineColor = [(WDCharacterPropertiesValues *)self underlineColor];
    [(WDCharacterPropertiesValues *)v4 setUnderlineColor:underlineColor];

    outlineColor = [(WDCharacterPropertiesValues *)self outlineColor];
    [(WDCharacterPropertiesValues *)v4 setOutlineColor:outlineColor];

    deletionDate = [(WDCharacterPropertiesValues *)self deletionDate];
    [(WDCharacterPropertiesValues *)v4 setDeletionDate:deletionDate];

    editDate = [(WDCharacterPropertiesValues *)self editDate];
    [(WDCharacterPropertiesValues *)v4 setEditDate:editDate];

    [(WDCharacterPropertiesValues *)v4 setCharPositionOfPictureBulletInBookmark:[(WDCharacterPropertiesValues *)self charPositionOfPictureBulletInBookmark]];
    [(WDCharacterPropertiesValues *)v4 setObjectIDForOle2:[(WDCharacterPropertiesValues *)self objectIDForOle2]];
    [(WDCharacterPropertiesValues *)v4 setOffsetToPictureData:[(WDCharacterPropertiesValues *)self offsetToPictureData]];
    [(WDCharacterPropertiesValues *)v4 setSpacing:[(WDCharacterPropertiesValues *)self spacing]];
    [(WDCharacterPropertiesValues *)v4 setPosition:[(WDCharacterPropertiesValues *)self position]];
    reflection = [(WDCharacterPropertiesValues *)self reflection];
    [(WDCharacterPropertiesValues *)v4 setReflection:reflection];

    shadow2010 = [(WDCharacterPropertiesValues *)self shadow2010];
    [(WDCharacterPropertiesValues *)v4 setShadow2010:shadow2010];

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

- (void)setBorderOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xFD | v3;
}

- (void)setShadingOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xFB | v3;
}

- (void)setFontOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xF7 | v3;
}

- (void)setExtendedFontOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xEF | v3;
}

- (void)setFarEastFontOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xDF | v3;
}

- (void)setSymbolCharacterOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xBF | v3;
}

- (void)setSymbolFontOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = v3 & 0x80 | *(self + 8) & 0x7F;
}

- (void)setBoldOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 9) = *(self + 9) & 0xFD | v3;
}

- (void)setBoldForBiTextOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 9) = *(self + 9) & 0xFB | v3;
}

- (void)setItalicOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 9) = *(self + 9) & 0xF7 | v3;
}

- (void)setItalicForBiTextOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 9) = *(self + 9) & 0xEF | v3;
}

- (void)setOutlineOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 9) = *(self + 9) & 0xDF | v3;
}

- (void)setOutlineColorOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 9) = *(self + 9) & 0xBF | v3;
}

- (void)setOutline2010WidthOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 9) = v3 & 0x80 | *(self + 9) & 0x7F;
}

- (void)setReflectionOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 10) = *(self + 10) & 0xFD | v3;
}

- (void)setShadow2010Overridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 10) = *(self + 10) & 0xFB | v3;
}

- (void)setShadow2010OpacityOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 10) = *(self + 10) & 0xF7 | v3;
}

- (void)setEmbossedOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 10) = *(self + 10) & 0xEF | v3;
}

- (void)setImprintOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 10) = *(self + 10) & 0xDF | v3;
}

- (void)setKerningOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 10) = *(self + 10) & 0xBF | v3;
}

- (void)setTextScaleOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 10) = v3 & 0x80 | *(self + 10) & 0x7F;
}

- (void)setUnderlineOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 11) = *(self + 11) & 0xFD | v3;
}

- (void)setStrikeThroughOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 11) = *(self + 11) & 0xFB | v3;
}

- (void)setDoubleStrikeThroughOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 11) = *(self + 11) & 0xF7 | v3;
}

- (void)setHighlight:(BOOL)highlight
{
  if (highlight)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 11) = *(self + 11) & 0xEF | v3;
}

- (void)setHighlightOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 11) = *(self + 11) & 0xDF | v3;
}

- (void)setHighlightColorOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 11) = *(self + 11) & 0xBF | v3;
}

- (void)setLigatureOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 11) = v3 & 0x80 | *(self + 11) & 0x7F;
}

- (void)setCapsOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 12) = *(self + 12) & 0xFD | v3;
}

- (void)setLowerCase:(BOOL)case
{
  if (case)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 12) = *(self + 12) & 0xFB | v3;
}

- (void)setLowerCaseOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 12) = *(self + 12) & 0xF7 | v3;
}

- (void)setHiddenOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 12) = *(self + 12) & 0xEF | v3;
}

- (void)setSpacingOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 12) = *(self + 12) & 0xDF | v3;
}

- (void)setPositionOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 12) = *(self + 12) & 0xBF | v3;
}

- (void)setFontSizeOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 12) = v3 & 0x80 | *(self + 12) & 0x7F;
}

- (void)setEmphasisMarkOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 13) = *(self + 13) & 0xFD | v3;
}

- (void)setColorOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 13) = *(self + 13) & 0xFB | v3;
}

- (void)setColorAuto:(BOOL)auto
{
  if (auto)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 13) = *(self + 13) & 0xF7 | v3;
}

- (void)setColorAutoOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 13) = *(self + 13) & 0xEF | v3;
}

- (void)setLanguageForDefaultTextOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 13) = *(self + 13) & 0xDF | v3;
}

- (void)setDeletedOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 13) = *(self + 13) & 0xBF | v3;
}

- (void)setEditedOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 13) = v3 & 0x80 | *(self + 13) & 0x7F;
}

- (void)setIndexToAuthorIDOfDeletionOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 14) = *(self + 14) & 0xFD | v3;
}

- (void)setIndexToAuthorIDOfEditOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 14) = *(self + 14) & 0xFB | v3;
}

- (void)setIndexToAuthorIDOfFormattingChangeOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 14) = *(self + 14) & 0xF7 | v3;
}

- (void)setDeletionDateOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 14) = *(self + 14) & 0xEF | v3;
}

- (void)setEditDateOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 14) = *(self + 14) & 0xDF | v3;
}

- (void)setSpecialCharacter:(BOOL)character
{
  if (character)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 14) = *(self + 14) & 0xBF | v3;
}

- (void)setSpecialCharacterOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 14) = v3 & 0x80 | *(self + 14) & 0x7F;
}

- (void)setListCharacterPictureBulletOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 15) = *(self + 15) & 0xFD | v3;
}

- (void)setCharPositionOfPictureBulletInBookmarkOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 15) = *(self + 15) & 0xFB | v3;
}

- (void)setLanguageForFarEastOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 15) = *(self + 15) & 0xF7 | v3;
}

- (void)setLanguageForBiTextOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 15) = *(self + 15) & 0xEF | v3;
}

- (void)setFontSizeForBiTextOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 15) = *(self + 15) & 0xDF | v3;
}

- (void)setEmbeddedObject:(BOOL)object
{
  if (object)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 15) = *(self + 15) & 0xBF | v3;
}

- (void)setEmbeddedObjectOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 15) = v3 & 0x80 | *(self + 15) & 0x7F;
}

- (void)setOle2Overridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xFD | v3;
}

- (void)setObjectIDForOle2Overridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xFB | v3;
}

- (void)setOffsetToPictureDataOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xF7 | v3;
}

- (void)setRightToLeftOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xEF | v3;
}

- (void)setUseCsFontOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xDF | v3;
}

- (void)setHorizontalInVertical:(BOOL)vertical
{
  if (vertical)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xBF | v3;
}

- (void)setHorizontalInVerticalOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = v3 & 0x80 | *(self + 16) & 0x7F;
}

- (void)setCompressHorizontalInVerticalOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 17) = *(self + 17) & 0xFD | v3;
}

- (void)setTwoLinesInOne:(BOOL)one
{
  if (one)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 17) = *(self + 17) & 0xFB | v3;
}

- (void)setTwoLinesInOneOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 17) = *(self + 17) & 0xF7 | v3;
}

- (void)setBracketTwoLinesInOneOverridden:(BOOL)overridden
{
  if (overridden)
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