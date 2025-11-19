@interface WXListLevel
+ (id)listLevelSuffixEnumMap;
+ (void)listLevelSuffixEnumMap;
+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5;
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

+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5
{
  v8 = a4;
  v9 = a5;
  v72 = 0;
  v10 = [v9 WXMainNamespace];
  v11 = OCXFindChild(a3, v10, "isLgl");

  v12 = [v9 WXMainNamespace];
  LODWORD(v11) = CXOptionalBoolAttribute(v11, v12, "val", &v72);

  if (v11)
  {
    [v8 setLegal:v72];
  }

  v13 = [v9 WXMainNamespace];
  v14 = OCXFindChild(a3, v13, "lvlPicBulletId");

  if (v14)
  {
    v15 = [v9 WXMainNamespace];
    v16 = CXRequiredLongAttribute(v14, v15, "val");

    v17 = [v8 paragraphProperties];
    v18 = [v17 document];

    v19 = [v18 imageBullets];
    v20 = [v19 objectAtIndex:v16];

    [v8 setImage:v20];
    v21 = [v8 characterProperties];
    [v21 setListCharacterPictureBullet:1];
  }

  v71 = 0;
  v22 = [v9 WXMainNamespace];
  v23 = OCXFindChild(a3, v22, "lvlRestart");

  v24 = [v9 WXMainNamespace];
  LODWORD(v23) = CXOptionalLongAttribute(v23, v24, "val", &v71);

  if (v23)
  {
    [v8 setRestartLevel:v71];
  }

  v25 = [v9 WXMainNamespace];
  v26 = OCXFindChild(a3, v25, "start");

  v27 = [v9 WXMainNamespace];
  LODWORD(v26) = CXOptionalLongAttribute(v26, v27, "val", &v71);

  if (v26)
  {
    v28 = v71;
  }

  else
  {
    v28 = 1;
  }

  [v8 setStartNumber:v28];
  v70 = 0;
  v29 = +[WXCommon numberFormatEnumMap];
  v30 = readEnumProperty<WDNumberFormat>(a3, "numFmt", "val", v29, &v70, v9);

  if (v30)
  {
    [v8 setNumberFormat:v70];
  }

  if (v70 == 62)
  {
    v31 = +[WXCommon customNumberFormatEnumMap];
    v32 = readEnumProperty<WDNumberFormat>(a3, "numFmt", "format", v31, &v70, v9);

    if (v32)
    {
      [v8 setNumberFormat:v70];
    }
  }

  v69 = 0;
  v33 = [a1 listLevelSuffixEnumMap];
  v34 = readEnumProperty<WDListLevelSuffix>(a3, "suff", "val", v33, &v69, v9);

  if (v34)
  {
    v35 = v69;
  }

  else
  {
    v35 = 0;
  }

  [v8 setSuffix:v35];
  v36 = [v9 WXMainNamespace];
  v37 = OCXFindChild(a3, v36, "legacy");

  if (v37)
  {
    v38 = [v9 WXMainNamespace];
    v39 = CXOptionalBoolAttribute(v37, v38, "legacy", &v72);

    if (v39)
    {
      [v8 setLegacy:v72];
    }

    if ([v8 legacy])
    {
      v40 = [v9 WXMainNamespace];
      v41 = CXOptionalLongAttribute(v37, v40, "legacySpace", &v71, 14);

      if (v41)
      {
        [v8 setLegacySpace:v71];
      }

      v42 = [v9 WXMainNamespace];
      v43 = CXOptionalLongAttribute(v37, v42, "legacyIndent", &v71, 14);

      if (v43)
      {
        [v8 setLegacyIndent:v71];
      }
    }
  }

  v68 = 0;
  v44 = +[WXCommon justifyEnumMap];
  v45 = readEnumProperty<WDJustification>(a3, "lvlJc", "val", v44, &v68, v9);

  if (v45)
  {
    [v8 setJustification:v68];
  }

  v46 = [v9 WXMainNamespace];
  v47 = OCXFindChild(a3, v46, "lvlText");

  if (v47)
  {
    v67 = 0;
    v48 = [v9 WXMainNamespace];
    v49 = CXOptionalBoolAttribute(v47, v48, "null", &v67);
    v50 = v49 && v67;

    if (v50 == 1)
    {
      v51 = 0;
      [v8 setText:&stru_286EE1130];
    }

    else
    {
      v52 = [v9 WXMainNamespace];
      v66 = 0;
      v53 = CXOptionalStringAttribute(v47, v52, "val", &v66);
      v51 = v66;

      if (v53)
      {
        [v8 setText:v51];
      }
    }
  }

  v54 = [v8 paragraphProperties];
  v55 = [v54 document];
  v56 = [v55 styleSheet];
  v57 = [v56 defaultListStyle];

  v58 = [v9 WXMainNamespace];
  v59 = OCXFindChild(a3, v58, "pPr");

  if (v59)
  {
    if (v57)
    {
      v60 = [v8 paragraphProperties];
      [v60 setBaseStyle:v57];
    }

    v61 = [v8 paragraphProperties];
    [WXParagraphProperties readFrom:v59 to:v61 readBaseStyle:0 state:v9];
  }

  v62 = [v9 WXMainNamespace];
  v63 = OCXFindChild(a3, v62, "rPr");

  if (v63)
  {
    if (v57)
    {
      v64 = [v8 characterProperties];
      [v64 setBaseStyle:v57];
    }

    v65 = [v8 characterProperties];
    [WXCharacterProperties readFrom:v63 to:v65 state:v9];
  }
}

+ (void)listLevelSuffixEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_37, 0, &dword_25D297000);
  }
}

@end