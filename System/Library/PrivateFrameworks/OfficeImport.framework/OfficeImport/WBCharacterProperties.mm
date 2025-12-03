@interface WBCharacterProperties
+ (WrdCharacterProperties)createTrackedPropertiesIfNeeded:(id)needed;
+ (void)prepareForWriting:(id)writing properties:(id)properties wrdProperties:(WrdCharacterProperties *)wrdProperties tracked:(WrdCharacterProperties *)tracked;
+ (void)readFrom:(id)from wrdProperties:(WrdCharacterProperties *)properties document:(id)document properties:(id)a6;
+ (void)readFrom:(id)from wrdProperties:(WrdCharacterProperties *)properties tracked:(WrdCharacterProperties *)tracked document:(id)document properties:(id)a7;
@end

@implementation WBCharacterProperties

+ (void)readFrom:(id)from wrdProperties:(WrdCharacterProperties *)properties tracked:(WrdCharacterProperties *)tracked document:(id)document properties:(id)a7
{
  fromCopy = from;
  documentCopy = document;
  v13 = a7;
  [v13 setResolveMode:0];
  [self readFrom:fromCopy wrdProperties:properties document:documentCopy properties:v13];
  if (tracked)
  {
    [v13 setResolveMode:1];
    [self readFrom:fromCopy wrdProperties:tracked document:documentCopy properties:v13];
  }

  [v13 setResolveMode:2];
}

+ (void)readFrom:(id)from wrdProperties:(WrdCharacterProperties *)properties document:(id)document properties:(id)a6
{
  fromCopy = from;
  documentCopy = document;
  v12 = a6;
  v13 = v12;
  if (!properties || !v12)
  {
    goto LABEL_132;
  }

  var2 = properties->var2;
  if ((var2 & 0x40000000000000) != 0)
  {
    BorderReference = WrdCharacterProperties::getBorderReference(properties);
    mutableBorder = [v13 mutableBorder];
    [WBBorder readFrom:BorderReference to:mutableBorder];

    var2 = properties->var2;
  }

  if ((var2 & 0x400000) != 0)
  {
    ShadingReference = WrdCharacterProperties::getShadingReference(properties);
    mutableShading = [v13 mutableShading];
    [WBShading readFrom:ShadingReference to:mutableShading];

    var2 = properties->var2;
  }

  if ((var2 & 0x2000) != 0)
  {
    v19 = [fromCopy fontAtIndex:properties->var43];
    if (v19)
    {
      [v13 setFont:v19];
    }

    var2 = properties->var2;
  }

  if ((var2 & 0x40000000000) != 0)
  {
    v20 = [fromCopy fontAtIndex:properties->var46];
    if (v20)
    {
      [v13 setExtendedFont:v20];
    }

    var2 = properties->var2;
  }

  if ((var2 & 0x4000) != 0)
  {
    v21 = [fromCopy fontAtIndex:properties->var44];
    if (v21)
    {
      [v13 setFarEastFont:v21];
    }

    var2 = properties->var2;
  }

  if ((var2 & 0x8000) != 0)
  {
    v22 = [fromCopy fontAtIndex:properties->var45];
    if (v22)
    {
      [v13 setSymbolFont:v22];
    }
  }

  if ((*(&properties->var2 + 6) & 0x40) != 0)
  {
    v23 = [self formattingChangeDate:properties->var12];
    [v13 setDeletionDate:v23];

    if ((*(&properties->var2 + 9) & 0x40) != 0)
    {
      [v13 setIndexToAuthorIDOfDeletion:properties->var71];
      deletionDate = [v13 deletionDate];
      [documentCopy addChangeTrackingEditAtDate:deletionDate authorIndex:{objc_msgSend(v13, "indexToAuthorIDOfDeletion")}];
    }
  }

  if ((*(&properties->var2 + 6) & 0x20) != 0)
  {
    v25 = [self formattingChangeDate:properties->var11];
    [v13 setEditDate:v25];

    if ((*(&properties->var2 + 6) & 0x80) != 0)
    {
      [v13 setIndexToAuthorIDOfEdit:properties->var61];
      editDate = [v13 editDate];
      [documentCopy addChangeTrackingEditAtDate:editDate authorIndex:{objc_msgSend(v13, "indexToAuthorIDOfEdit")}];
    }
  }

  if ((~*(&properties->var2 + 2) & 0x3000000) == 0)
  {
    [v13 setIndexToAuthorIDOfFormattingChange:properties->var69];
  }

  v27 = properties->var2;
  if ((v27 & 0x10) != 0)
  {
    [v13 setOutline:properties->var25];
    v27 = properties->var2;
  }

  if ((v27 & 0x100) != 0)
  {
    [v13 setShadow:properties->var30];
    v27 = properties->var2;
  }

  if ((v27 & 0x200) != 0)
  {
    [v13 setEmbossed:properties->var31];
    v27 = properties->var2;
  }

  if ((v27 & 0x400) != 0)
  {
    [v13 setImprint:properties->var32];
    v27 = properties->var2;
  }

  if ((v27 & 0x100000) != 0)
  {
    [v13 setUnderline:properties->var16];
    v27 = properties->var2;
  }

  if ((v27 & 0x10000000000000) != 0)
  {
    [v13 setKerning:properties->var63];
    v27 = properties->var2;
  }

  if ((v27 & 0x100000000000) != 0)
  {
    [v13 setTextScale:properties->var60];
    v27 = properties->var2;
  }

  if ((v27 & 0x20000000000000) != 0)
  {
    v28 = [OITSUColor colorWithCsColour:&properties->var3.var3];
    [v13 setUnderlineColor:v28];

    v27 = properties->var2;
  }

  if ((v27 & 0x8000000) != 0)
  {
    v29 = [fromCopy styleAtIndex:properties->var72 expectedType:2];
    [v13 setBaseStyle:v29];

    v27 = properties->var2;
  }

  if ((v27 & 0x4000000000) != 0)
  {
    [v13 setRightToLeft:properties->var38];
    v27 = properties->var2;
  }

  if ((v27 & 0x100000000000000) != 0)
  {
    [v13 setHorizontalInVertical:(*(properties + 85) >> 10) & 1];
  }

  if ((*(&properties->var2 + 8) & 2) != 0)
  {
    [v13 setCompressHorizontalInVertical:(*(properties + 85) >> 17) & 1];
  }

  v30 = properties->var2;
  if ((v30 & 0x1000000000000000) != 0)
  {
    [v13 setHorizontalInVertical:(*(properties + 85) >> 13) & 1];
    v30 = properties->var2;
  }

  if ((v30 & 0x800000000000000) != 0)
  {
    [v13 setTwoLinesInOne:(*(properties + 85) >> 12) & 1];
    v30 = properties->var2;
  }

  if (v30 < 0)
  {
    [v13 setBracketTwoLinesInOne:properties->var18];
  }

  if ((*(&properties->var2 + 8) & 0x20) != 0)
  {
    [v13 setSymbolCharacter:properties->var50];
  }

  v31 = properties->var2;
  if ((v31 & 2) != 0)
  {
    [v13 setBold:properties->var23];
    v31 = properties->var2;
  }

  if ((v31 & 0x800000000) != 0)
  {
    [v13 setBoldForBiText:properties->var33];
    v31 = properties->var2;
  }

  if ((v31 & 4) != 0)
  {
    [v13 setItalic:properties->var24];
    v31 = properties->var2;
  }

  if ((v31 & 0x1000000000) != 0)
  {
    [v13 setItalicForBiText:properties->var34];
    v31 = properties->var2;
  }

  if ((v31 & 0x80) != 0)
  {
    [v13 setStrikeThrough:properties->var26];
    v31 = properties->var2;
  }

  if ((v31 & 0x800) != 0)
  {
    [v13 setDoubleStrikeThrough:(*(properties + 85) >> 6) & 1];
  }

  v32 = *(&properties->var2 + 2);
  if ((v32 & 0x100000) != 0)
  {
    [v13 setHighlight:(*(properties + 85) >> 20) & 1];
    v32 = *(&properties->var2 + 2);
  }

  if ((v32 & 0x80000) != 0)
  {
    [v13 setHighlightColor:properties->var20];
  }

  v33 = properties->var2;
  if ((v33 & 0x10000000) != 0)
  {
    [v13 setSmallCaps:properties->var27];
    v33 = properties->var2;
  }

  if ((v33 & 0x20000000) != 0)
  {
    [v13 setCaps:properties->var28];
    v33 = properties->var2;
  }

  if ((v33 & 0x100000000) != 0)
  {
    [v13 setLowerCase:(*(properties + 85) >> 3) & 1];
    v33 = properties->var2;
  }

  if ((v33 & 0x20) != 0)
  {
    v34 = 192;
  }

  else
  {
    if ((v33 & 0x2000000000) == 0)
    {
      goto LABEL_90;
    }

    v34 = 216;
  }

  [v13 setHidden:*(&properties->var0 + v34)];
LABEL_90:
  v35 = properties->var2;
  if ((v35 & 0x80000000000) != 0)
  {
    [v13 setSpacing:SLOWORD(properties->var49)];
    v35 = properties->var2;
  }

  if ((v35 & 0x200000) != 0)
  {
    [v13 setPosition:properties->var105];
    v35 = properties->var2;
  }

  if ((v35 & 0x1000) != 0)
  {
    [v13 setFontSize:properties->var62];
    v35 = properties->var2;
  }

  if ((v35 & 0x80000) != 0)
  {
    [v13 setVerticalAlign:properties->var15];
    v35 = properties->var2;
  }

  if ((v35 & 0x40000) != 0)
  {
    [v13 setEmphasisMark:properties->var14];
    v35 = properties->var2;
  }

  if ((v35 & 0x10000) != 0)
  {
    v37 = [OITSUColor colorWithCsColour:&properties->var2 + 14];
    if (v37)
    {
LABEL_106:
      [v13 setColor:v37];

      v35 = properties->var2;
      goto LABEL_107;
    }

    var13 = 31;
LABEL_105:
    v41 = 255;
    WrdProperty::convertWord97ColorEnumToColor(var13, &v41);
    v37 = [OITSUColor colorWithCsColour:&v41];
    goto LABEL_106;
  }

  if ((v35 & 0x20000) != 0)
  {
    var13 = properties->var13;
    goto LABEL_105;
  }

LABEL_107:
  if ((v35 & 0x30000) != 0)
  {
    v38 = (v35 & 0x20000) != 0 && properties->var13 == 0;
    [v13 setColorAuto:v38];
    v35 = properties->var2;
  }

  if ((v35 & 0x200000000000) != 0)
  {
    [v13 setLanguageForDefaultText:properties->var39];
    v35 = properties->var2;
  }

  if ((v35 & 8) != 0)
  {
    [v13 setDeleted:properties->var36];
    v35 = properties->var2;
  }

  if ((v35 & 0x40) != 0)
  {
    [v13 setEdited:properties->var37];
  }

  if ((*(&properties->var2 + 10) & 0x80) != 0)
  {
    [v13 setFormattingChanged:(*(properties + 85) >> 23) & 1];
  }

  if ((*(&properties->var2 + 3) & 0x40) != 0)
  {
    [v13 setSpecialCharacter:(*(properties + 85) >> 1) & 1];
  }

  v39 = *(&properties->var2 + 2);
  if ((v39 & 0x40000) != 0)
  {
    [v13 setListCharacterPictureBullet:properties->var75 != 0];
    v39 = *(&properties->var2 + 2);
  }

  if ((v39 & 0x800) != 0)
  {
    [v13 setCharPositionOfPictureBulletInBookmark:properties->var58];
  }

  v40 = properties->var2;
  if ((v40 & 0x400000000000) != 0)
  {
    [v13 setLanguageForFarEast:properties->var40];
    v40 = properties->var2;
  }

  if ((v40 & 0x800000000000) != 0)
  {
    [v13 setLanguageForBiText:properties->var41];
    v40 = properties->var2;
  }

  if ((v40 & 0x4000000) != 0)
  {
    [v13 setFontSizeForBiText:properties->var66];
  }

LABEL_132:
}

+ (void)prepareForWriting:(id)writing properties:(id)properties wrdProperties:(WrdCharacterProperties *)wrdProperties tracked:(WrdCharacterProperties *)tracked
{
  writingCopy = writing;
  propertiesCopy = properties;
  [propertiesCopy setResolveMode:0];
  document = [propertiesCopy document];
  [self write:writingCopy properties:propertiesCopy wrdProperties:wrdProperties document:document];

  if (tracked)
  {
    [propertiesCopy setResolveMode:1];
    document2 = [propertiesCopy document];
    [self write:writingCopy properties:propertiesCopy wrdProperties:tracked document:document2];

    if (WrdCharacterProperties::isEqualWithoutRevisions(tracked, wrdProperties))
    {
      WrdCharacterProperties::clearAllRevisionPropertiesAttributes(tracked);
    }
  }

  [propertiesCopy setResolveMode:2];
}

+ (WrdCharacterProperties)createTrackedPropertiesIfNeeded:(id)needed
{
  neededCopy = needed;
  resolveMode = [neededCopy resolveMode];
  [neededCopy setResolveMode:1];
  if (![neededCopy isAnythingOverridden])
  {
    [neededCopy setResolveMode:resolveMode];
    goto LABEL_5;
  }

  [neededCopy setResolveMode:resolveMode];
  v5 = [WBObjectFactory create:10];
  if (!v5)
  {
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

LABEL_6:

  return v6;
}

@end