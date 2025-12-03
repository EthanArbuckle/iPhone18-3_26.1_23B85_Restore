@interface WXListLevel
+ (id)listLevelSuffixEnumMap;
+ (void)listLevelSuffixEnumMap;
+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state;
@end

@implementation WXListLevel

+ (id)listLevelSuffixEnumMap
{
  {
    +[WXListLevel listLevelSuffixEnumMap];
  }

  if (+[WXListLevel listLevelSuffixEnumMap]::once != -1)
  {
    +[WXListLevel listLevelSuffixEnumMap];
  }

  v2 = +[WXListLevel listLevelSuffixEnumMap]::sListLevelSuffixEnumMap;

  return v2;
}

void __37__WXListLevel_listLevelSuffixEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXListLevel listLevelSuffixEnumMap]::sListLevelSuffixEnumStructs count:3];
  v1 = +[WXListLevel listLevelSuffixEnumMap]::sListLevelSuffixEnumMap;
  +[WXListLevel listLevelSuffixEnumMap]::sListLevelSuffixEnumMap = v0;
}

+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  v72 = 0;
  wXMainNamespace = [stateCopy WXMainNamespace];
  v11 = OCXFindChild(from, wXMainNamespace, "isLgl");

  wXMainNamespace2 = [stateCopy WXMainNamespace];
  LODWORD(v11) = CXOptionalBoolAttribute(v11, wXMainNamespace2, "val", &v72);

  if (v11)
  {
    [toCopy setLegal:v72];
  }

  wXMainNamespace3 = [stateCopy WXMainNamespace];
  v14 = OCXFindChild(from, wXMainNamespace3, "lvlPicBulletId");

  if (v14)
  {
    wXMainNamespace4 = [stateCopy WXMainNamespace];
    v16 = CXRequiredLongAttribute(v14, wXMainNamespace4, "val");

    paragraphProperties = [toCopy paragraphProperties];
    document = [paragraphProperties document];

    imageBullets = [document imageBullets];
    v20 = [imageBullets objectAtIndex:v16];

    [toCopy setImage:v20];
    characterProperties = [toCopy characterProperties];
    [characterProperties setListCharacterPictureBullet:1];
  }

  v71 = 0;
  wXMainNamespace5 = [stateCopy WXMainNamespace];
  v23 = OCXFindChild(from, wXMainNamespace5, "lvlRestart");

  wXMainNamespace6 = [stateCopy WXMainNamespace];
  LODWORD(v23) = CXOptionalLongAttribute(v23, wXMainNamespace6, "val", &v71);

  if (v23)
  {
    [toCopy setRestartLevel:v71];
  }

  wXMainNamespace7 = [stateCopy WXMainNamespace];
  v26 = OCXFindChild(from, wXMainNamespace7, "start");

  wXMainNamespace8 = [stateCopy WXMainNamespace];
  LODWORD(v26) = CXOptionalLongAttribute(v26, wXMainNamespace8, "val", &v71);

  if (v26)
  {
    v28 = v71;
  }

  else
  {
    v28 = 1;
  }

  [toCopy setStartNumber:v28];
  v70 = 0;
  v29 = +[WXCommon numberFormatEnumMap];
  v30 = readEnumProperty<WDNumberFormat>(from, "numFmt", "val", v29, &v70, stateCopy);

  if (v30)
  {
    [toCopy setNumberFormat:v70];
  }

  if (v70 == 62)
  {
    v31 = +[WXCommon customNumberFormatEnumMap];
    v32 = readEnumProperty<WDNumberFormat>(from, "numFmt", "format", v31, &v70, stateCopy);

    if (v32)
    {
      [toCopy setNumberFormat:v70];
    }
  }

  v69 = 0;
  listLevelSuffixEnumMap = [self listLevelSuffixEnumMap];
  v34 = readEnumProperty<WDListLevelSuffix>(from, "suff", "val", listLevelSuffixEnumMap, &v69, stateCopy);

  if (v34)
  {
    v35 = v69;
  }

  else
  {
    v35 = 0;
  }

  [toCopy setSuffix:v35];
  wXMainNamespace9 = [stateCopy WXMainNamespace];
  v37 = OCXFindChild(from, wXMainNamespace9, "legacy");

  if (v37)
  {
    wXMainNamespace10 = [stateCopy WXMainNamespace];
    v39 = CXOptionalBoolAttribute(v37, wXMainNamespace10, "legacy", &v72);

    if (v39)
    {
      [toCopy setLegacy:v72];
    }

    if ([toCopy legacy])
    {
      wXMainNamespace11 = [stateCopy WXMainNamespace];
      v41 = CXOptionalLongAttribute(v37, wXMainNamespace11, "legacySpace", &v71, 14);

      if (v41)
      {
        [toCopy setLegacySpace:v71];
      }

      wXMainNamespace12 = [stateCopy WXMainNamespace];
      v43 = CXOptionalLongAttribute(v37, wXMainNamespace12, "legacyIndent", &v71, 14);

      if (v43)
      {
        [toCopy setLegacyIndent:v71];
      }
    }
  }

  v68 = 0;
  v44 = +[WXCommon justifyEnumMap];
  v45 = readEnumProperty<WDJustification>(from, "lvlJc", "val", v44, &v68, stateCopy);

  if (v45)
  {
    [toCopy setJustification:v68];
  }

  wXMainNamespace13 = [stateCopy WXMainNamespace];
  v47 = OCXFindChild(from, wXMainNamespace13, "lvlText");

  if (v47)
  {
    v67 = 0;
    wXMainNamespace14 = [stateCopy WXMainNamespace];
    v49 = CXOptionalBoolAttribute(v47, wXMainNamespace14, "null", &v67);
    v50 = v49 && v67;

    if (v50 == 1)
    {
      v51 = 0;
      [toCopy setText:&stru_286EE1130];
    }

    else
    {
      wXMainNamespace15 = [stateCopy WXMainNamespace];
      v66 = 0;
      v53 = CXOptionalStringAttribute(v47, wXMainNamespace15, "val", &v66);
      v51 = v66;

      if (v53)
      {
        [toCopy setText:v51];
      }
    }
  }

  paragraphProperties2 = [toCopy paragraphProperties];
  document2 = [paragraphProperties2 document];
  styleSheet = [document2 styleSheet];
  defaultListStyle = [styleSheet defaultListStyle];

  wXMainNamespace16 = [stateCopy WXMainNamespace];
  v59 = OCXFindChild(from, wXMainNamespace16, "pPr");

  if (v59)
  {
    if (defaultListStyle)
    {
      paragraphProperties3 = [toCopy paragraphProperties];
      [paragraphProperties3 setBaseStyle:defaultListStyle];
    }

    paragraphProperties4 = [toCopy paragraphProperties];
    [WXParagraphProperties readFrom:v59 to:paragraphProperties4 readBaseStyle:0 state:stateCopy];
  }

  wXMainNamespace17 = [stateCopy WXMainNamespace];
  v63 = OCXFindChild(from, wXMainNamespace17, "rPr");

  if (v63)
  {
    if (defaultListStyle)
    {
      characterProperties2 = [toCopy characterProperties];
      [characterProperties2 setBaseStyle:defaultListStyle];
    }

    characterProperties3 = [toCopy characterProperties];
    [WXCharacterProperties readFrom:v63 to:characterProperties3 state:stateCopy];
  }
}

+ (void)listLevelSuffixEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_37, 0, &dword_25D297000);
  }
}

@end