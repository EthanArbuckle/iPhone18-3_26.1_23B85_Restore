@interface WBCharacterProperties
+ (WrdCharacterProperties)createTrackedPropertiesIfNeeded:(id)a3;
+ (void)prepareForWriting:(id)a3 properties:(id)a4 wrdProperties:(WrdCharacterProperties *)a5 tracked:(WrdCharacterProperties *)a6;
+ (void)readFrom:(id)a3 wrdProperties:(WrdCharacterProperties *)a4 document:(id)a5 properties:(id)a6;
+ (void)readFrom:(id)a3 wrdProperties:(WrdCharacterProperties *)a4 tracked:(WrdCharacterProperties *)a5 document:(id)a6 properties:(id)a7;
@end

@implementation WBCharacterProperties

+ (void)readFrom:(id)a3 wrdProperties:(WrdCharacterProperties *)a4 tracked:(WrdCharacterProperties *)a5 document:(id)a6 properties:(id)a7
{
  v14 = a3;
  v12 = a6;
  v13 = a7;
  [v13 setResolveMode:0];
  [a1 readFrom:v14 wrdProperties:a4 document:v12 properties:v13];
  if (a5)
  {
    [v13 setResolveMode:1];
    [a1 readFrom:v14 wrdProperties:a5 document:v12 properties:v13];
  }

  [v13 setResolveMode:2];
}

+ (void)readFrom:(id)a3 wrdProperties:(WrdCharacterProperties *)a4 document:(id)a5 properties:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (!a4 || !v12)
  {
    goto LABEL_132;
  }

  var2 = a4->var2;
  if ((var2 & 0x40000000000000) != 0)
  {
    BorderReference = WrdCharacterProperties::getBorderReference(a4);
    v16 = [v13 mutableBorder];
    [WBBorder readFrom:BorderReference to:v16];

    var2 = a4->var2;
  }

  if ((var2 & 0x400000) != 0)
  {
    ShadingReference = WrdCharacterProperties::getShadingReference(a4);
    v18 = [v13 mutableShading];
    [WBShading readFrom:ShadingReference to:v18];

    var2 = a4->var2;
  }

  if ((var2 & 0x2000) != 0)
  {
    v19 = [v10 fontAtIndex:a4->var43];
    if (v19)
    {
      [v13 setFont:v19];
    }

    var2 = a4->var2;
  }

  if ((var2 & 0x40000000000) != 0)
  {
    v20 = [v10 fontAtIndex:a4->var46];
    if (v20)
    {
      [v13 setExtendedFont:v20];
    }

    var2 = a4->var2;
  }

  if ((var2 & 0x4000) != 0)
  {
    v21 = [v10 fontAtIndex:a4->var44];
    if (v21)
    {
      [v13 setFarEastFont:v21];
    }

    var2 = a4->var2;
  }

  if ((var2 & 0x8000) != 0)
  {
    v22 = [v10 fontAtIndex:a4->var45];
    if (v22)
    {
      [v13 setSymbolFont:v22];
    }
  }

  if ((*(&a4->var2 + 6) & 0x40) != 0)
  {
    v23 = [a1 formattingChangeDate:a4->var12];
    [v13 setDeletionDate:v23];

    if ((*(&a4->var2 + 9) & 0x40) != 0)
    {
      [v13 setIndexToAuthorIDOfDeletion:a4->var71];
      v24 = [v13 deletionDate];
      [v11 addChangeTrackingEditAtDate:v24 authorIndex:{objc_msgSend(v13, "indexToAuthorIDOfDeletion")}];
    }
  }

  if ((*(&a4->var2 + 6) & 0x20) != 0)
  {
    v25 = [a1 formattingChangeDate:a4->var11];
    [v13 setEditDate:v25];

    if ((*(&a4->var2 + 6) & 0x80) != 0)
    {
      [v13 setIndexToAuthorIDOfEdit:a4->var61];
      v26 = [v13 editDate];
      [v11 addChangeTrackingEditAtDate:v26 authorIndex:{objc_msgSend(v13, "indexToAuthorIDOfEdit")}];
    }
  }

  if ((~*(&a4->var2 + 2) & 0x3000000) == 0)
  {
    [v13 setIndexToAuthorIDOfFormattingChange:a4->var69];
  }

  v27 = a4->var2;
  if ((v27 & 0x10) != 0)
  {
    [v13 setOutline:a4->var25];
    v27 = a4->var2;
  }

  if ((v27 & 0x100) != 0)
  {
    [v13 setShadow:a4->var30];
    v27 = a4->var2;
  }

  if ((v27 & 0x200) != 0)
  {
    [v13 setEmbossed:a4->var31];
    v27 = a4->var2;
  }

  if ((v27 & 0x400) != 0)
  {
    [v13 setImprint:a4->var32];
    v27 = a4->var2;
  }

  if ((v27 & 0x100000) != 0)
  {
    [v13 setUnderline:a4->var16];
    v27 = a4->var2;
  }

  if ((v27 & 0x10000000000000) != 0)
  {
    [v13 setKerning:a4->var63];
    v27 = a4->var2;
  }

  if ((v27 & 0x100000000000) != 0)
  {
    [v13 setTextScale:a4->var60];
    v27 = a4->var2;
  }

  if ((v27 & 0x20000000000000) != 0)
  {
    v28 = [OITSUColor colorWithCsColour:&a4->var3.var3];
    [v13 setUnderlineColor:v28];

    v27 = a4->var2;
  }

  if ((v27 & 0x8000000) != 0)
  {
    v29 = [v10 styleAtIndex:a4->var72 expectedType:2];
    [v13 setBaseStyle:v29];

    v27 = a4->var2;
  }

  if ((v27 & 0x4000000000) != 0)
  {
    [v13 setRightToLeft:a4->var38];
    v27 = a4->var2;
  }

  if ((v27 & 0x100000000000000) != 0)
  {
    [v13 setHorizontalInVertical:(*(a4 + 85) >> 10) & 1];
  }

  if ((*(&a4->var2 + 8) & 2) != 0)
  {
    [v13 setCompressHorizontalInVertical:(*(a4 + 85) >> 17) & 1];
  }

  v30 = a4->var2;
  if ((v30 & 0x1000000000000000) != 0)
  {
    [v13 setHorizontalInVertical:(*(a4 + 85) >> 13) & 1];
    v30 = a4->var2;
  }

  if ((v30 & 0x800000000000000) != 0)
  {
    [v13 setTwoLinesInOne:(*(a4 + 85) >> 12) & 1];
    v30 = a4->var2;
  }

  if (v30 < 0)
  {
    [v13 setBracketTwoLinesInOne:a4->var18];
  }

  if ((*(&a4->var2 + 8) & 0x20) != 0)
  {
    [v13 setSymbolCharacter:a4->var50];
  }

  v31 = a4->var2;
  if ((v31 & 2) != 0)
  {
    [v13 setBold:a4->var23];
    v31 = a4->var2;
  }

  if ((v31 & 0x800000000) != 0)
  {
    [v13 setBoldForBiText:a4->var33];
    v31 = a4->var2;
  }

  if ((v31 & 4) != 0)
  {
    [v13 setItalic:a4->var24];
    v31 = a4->var2;
  }

  if ((v31 & 0x1000000000) != 0)
  {
    [v13 setItalicForBiText:a4->var34];
    v31 = a4->var2;
  }

  if ((v31 & 0x80) != 0)
  {
    [v13 setStrikeThrough:a4->var26];
    v31 = a4->var2;
  }

  if ((v31 & 0x800) != 0)
  {
    [v13 setDoubleStrikeThrough:(*(a4 + 85) >> 6) & 1];
  }

  v32 = *(&a4->var2 + 2);
  if ((v32 & 0x100000) != 0)
  {
    [v13 setHighlight:(*(a4 + 85) >> 20) & 1];
    v32 = *(&a4->var2 + 2);
  }

  if ((v32 & 0x80000) != 0)
  {
    [v13 setHighlightColor:a4->var20];
  }

  v33 = a4->var2;
  if ((v33 & 0x10000000) != 0)
  {
    [v13 setSmallCaps:a4->var27];
    v33 = a4->var2;
  }

  if ((v33 & 0x20000000) != 0)
  {
    [v13 setCaps:a4->var28];
    v33 = a4->var2;
  }

  if ((v33 & 0x100000000) != 0)
  {
    [v13 setLowerCase:(*(a4 + 85) >> 3) & 1];
    v33 = a4->var2;
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

  [v13 setHidden:*(&a4->var0 + v34)];
LABEL_90:
  v35 = a4->var2;
  if ((v35 & 0x80000000000) != 0)
  {
    [v13 setSpacing:SLOWORD(a4->var49)];
    v35 = a4->var2;
  }

  if ((v35 & 0x200000) != 0)
  {
    [v13 setPosition:a4->var105];
    v35 = a4->var2;
  }

  if ((v35 & 0x1000) != 0)
  {
    [v13 setFontSize:a4->var62];
    v35 = a4->var2;
  }

  if ((v35 & 0x80000) != 0)
  {
    [v13 setVerticalAlign:a4->var15];
    v35 = a4->var2;
  }

  if ((v35 & 0x40000) != 0)
  {
    [v13 setEmphasisMark:a4->var14];
    v35 = a4->var2;
  }

  if ((v35 & 0x10000) != 0)
  {
    v37 = [OITSUColor colorWithCsColour:&a4->var2 + 14];
    if (v37)
    {
LABEL_106:
      [v13 setColor:v37];

      v35 = a4->var2;
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
    var13 = a4->var13;
    goto LABEL_105;
  }

LABEL_107:
  if ((v35 & 0x30000) != 0)
  {
    v38 = (v35 & 0x20000) != 0 && a4->var13 == 0;
    [v13 setColorAuto:v38];
    v35 = a4->var2;
  }

  if ((v35 & 0x200000000000) != 0)
  {
    [v13 setLanguageForDefaultText:a4->var39];
    v35 = a4->var2;
  }

  if ((v35 & 8) != 0)
  {
    [v13 setDeleted:a4->var36];
    v35 = a4->var2;
  }

  if ((v35 & 0x40) != 0)
  {
    [v13 setEdited:a4->var37];
  }

  if ((*(&a4->var2 + 10) & 0x80) != 0)
  {
    [v13 setFormattingChanged:(*(a4 + 85) >> 23) & 1];
  }

  if ((*(&a4->var2 + 3) & 0x40) != 0)
  {
    [v13 setSpecialCharacter:(*(a4 + 85) >> 1) & 1];
  }

  v39 = *(&a4->var2 + 2);
  if ((v39 & 0x40000) != 0)
  {
    [v13 setListCharacterPictureBullet:a4->var75 != 0];
    v39 = *(&a4->var2 + 2);
  }

  if ((v39 & 0x800) != 0)
  {
    [v13 setCharPositionOfPictureBulletInBookmark:a4->var58];
  }

  v40 = a4->var2;
  if ((v40 & 0x400000000000) != 0)
  {
    [v13 setLanguageForFarEast:a4->var40];
    v40 = a4->var2;
  }

  if ((v40 & 0x800000000000) != 0)
  {
    [v13 setLanguageForBiText:a4->var41];
    v40 = a4->var2;
  }

  if ((v40 & 0x4000000) != 0)
  {
    [v13 setFontSizeForBiText:a4->var66];
  }

LABEL_132:
}

+ (void)prepareForWriting:(id)a3 properties:(id)a4 wrdProperties:(WrdCharacterProperties *)a5 tracked:(WrdCharacterProperties *)a6
{
  v13 = a3;
  v10 = a4;
  [v10 setResolveMode:0];
  v11 = [v10 document];
  [a1 write:v13 properties:v10 wrdProperties:a5 document:v11];

  if (a6)
  {
    [v10 setResolveMode:1];
    v12 = [v10 document];
    [a1 write:v13 properties:v10 wrdProperties:a6 document:v12];

    if (WrdCharacterProperties::isEqualWithoutRevisions(a6, a5))
    {
      WrdCharacterProperties::clearAllRevisionPropertiesAttributes(a6);
    }
  }

  [v10 setResolveMode:2];
}

+ (WrdCharacterProperties)createTrackedPropertiesIfNeeded:(id)a3
{
  v3 = a3;
  v4 = [v3 resolveMode];
  [v3 setResolveMode:1];
  if (![v3 isAnythingOverridden])
  {
    [v3 setResolveMode:v4];
    goto LABEL_5;
  }

  [v3 setResolveMode:v4];
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