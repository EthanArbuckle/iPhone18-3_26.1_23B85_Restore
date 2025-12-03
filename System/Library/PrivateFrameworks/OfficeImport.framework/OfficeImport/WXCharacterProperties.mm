@interface WXCharacterProperties
+ (BOOL)readBooleanCharacterMultipleProperty:(_xmlNode *)property propertyName:(const char *)name attributeName:(const char *)attributeName outValue:(int *)value state:(id)state;
+ (BOOL)readBooleanCharacterProperty:(_xmlNode *)property propertyName:(const char *)name attributeName:(const char *)attributeName outValue:(int *)value state:(id)state;
+ (TCEnumerationMap)emphasisMarkEnumMap;
+ (TCEnumerationMap)fontHintEnumMap;
+ (TCEnumerationMap)highlightEnumMap;
+ (TCEnumerationMap)ligaturesEnumMap;
+ (TCEnumerationMap)twoLineBracketsEnumMap;
+ (TCEnumerationMap)underlineEnumMap;
+ (TCEnumerationMap)verticalAlignEnumMap;
+ (id)readFillColor:(_xmlNode *)color forTarget:(id)target state:(id)state;
+ (void)applyDeletionInsertionProperties:(id)properties state:(id)state;
+ (void)emphasisMarkEnumMap;
+ (void)fontHintEnumMap;
+ (void)highlightEnumMap;
+ (void)ligaturesEnumMap;
+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state;
+ (void)readReflection:(id)reflection fromXmlNode:(_xmlNode *)node state:(id)state;
+ (void)readShadowForTarget:(id)target fromXmlNode:(_xmlNode *)node state:(id)state;
+ (void)twoLineBracketsEnumMap;
+ (void)underlineEnumMap;
+ (void)verticalAlignEnumMap;
@end

@implementation WXCharacterProperties

+ (TCEnumerationMap)underlineEnumMap
{
  {
    +[WXCharacterProperties underlineEnumMap];
  }

  if (+[WXCharacterProperties underlineEnumMap]::onceToken != -1)
  {
    +[WXCharacterProperties underlineEnumMap];
  }

  v2 = +[WXCharacterProperties underlineEnumMap]::sUnderlineEnumMap;

  return v2;
}

void __41__WXCharacterProperties_underlineEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXCharacterProperties underlineEnumMap]::sUnderlineEnumStructs count:18 caseSensitive:1];
  v1 = +[WXCharacterProperties underlineEnumMap]::sUnderlineEnumMap;
  +[WXCharacterProperties underlineEnumMap]::sUnderlineEnumMap = v0;
}

+ (TCEnumerationMap)highlightEnumMap
{
  {
    +[WXCharacterProperties highlightEnumMap];
  }

  if (+[WXCharacterProperties highlightEnumMap]::onceToken != -1)
  {
    +[WXCharacterProperties highlightEnumMap];
  }

  v2 = +[WXCharacterProperties highlightEnumMap]::sHighlightEnumMap;

  return v2;
}

void __41__WXCharacterProperties_highlightEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXCharacterProperties highlightEnumMap]::sHighlightEnumStructs count:17 caseSensitive:1];
  v1 = +[WXCharacterProperties highlightEnumMap]::sHighlightEnumMap;
  +[WXCharacterProperties highlightEnumMap]::sHighlightEnumMap = v0;
}

+ (TCEnumerationMap)ligaturesEnumMap
{
  {
    +[WXCharacterProperties ligaturesEnumMap];
  }

  if (+[WXCharacterProperties ligaturesEnumMap]::onceToken != -1)
  {
    +[WXCharacterProperties ligaturesEnumMap];
  }

  v2 = +[WXCharacterProperties ligaturesEnumMap]::sLigaturesEnumMap;

  return v2;
}

void __41__WXCharacterProperties_ligaturesEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXCharacterProperties ligaturesEnumMap]::sLigaturesEnumStructs count:4 caseSensitive:1];
  v1 = +[WXCharacterProperties ligaturesEnumMap]::sLigaturesEnumMap;
  +[WXCharacterProperties ligaturesEnumMap]::sLigaturesEnumMap = v0;
}

+ (TCEnumerationMap)verticalAlignEnumMap
{
  {
    +[WXCharacterProperties verticalAlignEnumMap];
  }

  if (+[WXCharacterProperties verticalAlignEnumMap]::onceToken != -1)
  {
    +[WXCharacterProperties verticalAlignEnumMap];
  }

  v2 = +[WXCharacterProperties verticalAlignEnumMap]::sVerticalAlignEnumMap;

  return v2;
}

void __45__WXCharacterProperties_verticalAlignEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXCharacterProperties verticalAlignEnumMap]::sVerticalAlignEnumStructs count:3 caseSensitive:1];
  v1 = +[WXCharacterProperties verticalAlignEnumMap]::sVerticalAlignEnumMap;
  +[WXCharacterProperties verticalAlignEnumMap]::sVerticalAlignEnumMap = v0;
}

+ (TCEnumerationMap)emphasisMarkEnumMap
{
  {
    +[WXCharacterProperties emphasisMarkEnumMap];
  }

  if (+[WXCharacterProperties emphasisMarkEnumMap]::onceToken != -1)
  {
    +[WXCharacterProperties emphasisMarkEnumMap];
  }

  v2 = +[WXCharacterProperties emphasisMarkEnumMap]::sEmphasisMarkEnumMap;

  return v2;
}

void __44__WXCharacterProperties_emphasisMarkEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXCharacterProperties emphasisMarkEnumMap]::sEmphasisMarkEnumStructs count:4 caseSensitive:1];
  v1 = +[WXCharacterProperties emphasisMarkEnumMap]::sEmphasisMarkEnumMap;
  +[WXCharacterProperties emphasisMarkEnumMap]::sEmphasisMarkEnumMap = v0;
}

+ (TCEnumerationMap)twoLineBracketsEnumMap
{
  {
    +[WXCharacterProperties twoLineBracketsEnumMap];
  }

  if (+[WXCharacterProperties twoLineBracketsEnumMap]::onceToken != -1)
  {
    +[WXCharacterProperties twoLineBracketsEnumMap];
  }

  v2 = +[WXCharacterProperties twoLineBracketsEnumMap]::sTwoLineBracketsEnumMap;

  return v2;
}

void __47__WXCharacterProperties_twoLineBracketsEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXCharacterProperties twoLineBracketsEnumMap]::sTwoLineBracketsEnumStructs count:5 caseSensitive:1];
  v1 = +[WXCharacterProperties twoLineBracketsEnumMap]::sTwoLineBracketsEnumMap;
  +[WXCharacterProperties twoLineBracketsEnumMap]::sTwoLineBracketsEnumMap = v0;
}

+ (TCEnumerationMap)fontHintEnumMap
{
  {
    +[WXCharacterProperties fontHintEnumMap];
  }

  if (+[WXCharacterProperties fontHintEnumMap]::onceToken != -1)
  {
    +[WXCharacterProperties fontHintEnumMap];
  }

  v2 = +[WXCharacterProperties fontHintEnumMap]::sFontHintEnumMap;

  return v2;
}

void __40__WXCharacterProperties_fontHintEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXCharacterProperties fontHintEnumMap]::sFontHintEnumStructs count:3 caseSensitive:1];
  v1 = +[WXCharacterProperties fontHintEnumMap]::sFontHintEnumMap;
  +[WXCharacterProperties fontHintEnumMap]::sFontHintEnumMap = v0;
}

+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  [toCopy setResolveMode:0];
  wXMainNamespace = [(WXReadState *)stateCopy WXMainNamespace];
  v10 = OCXFindChild(from, wXMainNamespace, "ins");

  if (v10)
  {
    [toCopy setEdited:1];
    v11 = wmxmlGetDateProperty(v10);
    [toCopy setEditDate:v11];

    document = [(WXReadState *)stateCopy document];
    v13 = wmxmlGetAuthorProperty(v10);
    [toCopy setIndexToAuthorIDOfEdit:{objc_msgSend(document, "revisionAuthorAddLookup:", v13)}];
  }

  wXMainNamespace2 = [(WXReadState *)stateCopy WXMainNamespace];
  v15 = OCXFindChild(from, wXMainNamespace2, "del");

  if (v15)
  {
    [toCopy setDeleted:1];
    v16 = wmxmlGetDateProperty(v15);
    [toCopy setDeletionDate:v16];

    document2 = [(WXReadState *)stateCopy document];
    v18 = wmxmlGetAuthorProperty(v15);
    [toCopy setIndexToAuthorIDOfDeletion:{objc_msgSend(document2, "revisionAuthorAddLookup:", v18)}];
  }

  wXMainNamespace3 = [(WXReadState *)stateCopy WXMainNamespace];
  v20 = OCXFindChild(from, wXMainNamespace3, "rPrChange");

  if (v20)
  {
    wXMainNamespace4 = [(WXReadState *)stateCopy WXMainNamespace];
    v22 = OCXFindChild(v20, wXMainNamespace4, "rPr");

    if (v22)
    {
      [WXCharacterProperties readFrom:v22 to:toCopy state:stateCopy];
      [toCopy setResolveMode:1];
      [toCopy setFormattingChanged:1];
      document3 = [(WXReadState *)stateCopy document];
      v24 = wmxmlGetAuthorProperty(v20);
      [toCopy setIndexToAuthorIDOfFormattingChange:{objc_msgSend(document3, "revisionAuthorAddLookup:", v24)}];
    }
  }

  v176[0] = 0;
  if ([WXCharacterProperties readBooleanCharacterProperty:from propertyName:"rtl" attributeName:"val" outValue:v176 state:stateCopy])
  {
    [toCopy setRightToLeft:v176[0]];
  }

  else if (![WXCharacterProperties readBooleanCharacterProperty:from propertyName:"cs" attributeName:"val" outValue:v176 state:stateCopy])
  {
    goto LABEL_12;
  }

  [toCopy setUseCsFont:v176[0]];
LABEL_12:
  if ([WXCharacterProperties readBooleanCharacterProperty:from propertyName:"b" attributeName:"val" outValue:v176 state:stateCopy])
  {
    [toCopy setBold:v176[0]];
  }

  if ([WXCharacterProperties readBooleanCharacterProperty:from propertyName:"bCs" attributeName:"val" outValue:v176 state:stateCopy])
  {
    [toCopy setBoldForBiText:v176[0]];
  }

  if ([WXCharacterProperties readBooleanCharacterProperty:from propertyName:"i" attributeName:"val" outValue:v176 state:stateCopy])
  {
    [toCopy setItalic:v176[0]];
  }

  if ([WXCharacterProperties readBooleanCharacterProperty:from propertyName:"iCs" attributeName:"val" outValue:v176 state:stateCopy])
  {
    [toCopy setItalicForBiText:v176[0]];
  }

  if ([WXCharacterProperties readBooleanCharacterProperty:from propertyName:"smallCaps" attributeName:"val" outValue:v176 state:stateCopy])
  {
    [toCopy setSmallCaps:v176[0]];
  }

  if ([WXCharacterProperties readBooleanCharacterProperty:from propertyName:"outline" attributeName:"val" outValue:v176 state:stateCopy])
  {
    [toCopy setOutline:v176[0]];
  }

  if ([WXCharacterProperties readBooleanCharacterProperty:from propertyName:"shadow" attributeName:"val" outValue:v176 state:stateCopy])
  {
    [toCopy setShadow:v176[0]];
  }

  if ([WXCharacterProperties readBooleanCharacterProperty:from propertyName:"emboss" attributeName:"val" outValue:v176 state:stateCopy])
  {
    [toCopy setEmbossed:v176[0]];
  }

  if ([WXCharacterProperties readBooleanCharacterProperty:from propertyName:"imprint" attributeName:"val" outValue:v176 state:stateCopy])
  {
    [toCopy setImprint:v176[0]];
  }

  if ([WXCharacterProperties readBooleanCharacterProperty:from propertyName:"strike" attributeName:"val" outValue:v176 state:stateCopy])
  {
    [toCopy setStrikeThrough:v176[0]];
  }

  if ([WXCharacterProperties readBooleanCharacterProperty:from propertyName:"dstrike" attributeName:"val" outValue:v176 state:stateCopy])
  {
    [toCopy setDoubleStrikeThrough:v176[0]];
  }

  if ([WXCharacterProperties readBooleanCharacterProperty:from propertyName:"caps" attributeName:"val" outValue:v176 state:stateCopy])
  {
    [toCopy setCaps:v176[0]];
  }

  if ([WXCharacterProperties readBooleanCharacterProperty:from propertyName:"vanish" attributeName:"val" outValue:v176 state:stateCopy])
  {
    [toCopy setHidden:v176[0]];
  }

  v175 = 0;
  wXMainNamespace5 = [(WXReadState *)stateCopy WXMainNamespace];
  v26 = OCXFindChild(from, wXMainNamespace5, "spacing");

  wXMainNamespace6 = [(WXReadState *)stateCopy WXMainNamespace];
  LODWORD(v26) = CXOptionalLongAttribute(v26, wXMainNamespace6, "val", &v175, 14);

  if (v26)
  {
    [toCopy setSpacing:v175];
  }

  wXMainNamespace7 = [(WXReadState *)stateCopy WXMainNamespace];
  v29 = OCXFindChild(from, wXMainNamespace7, "sz");

  wXMainNamespace8 = [(WXReadState *)stateCopy WXMainNamespace];
  LODWORD(v29) = CXOptionalLongAttribute(v29, wXMainNamespace8, "val", &v175, 15);

  if (v29)
  {
    [toCopy setFontSize:v175];
  }

  wXMainNamespace9 = [(WXReadState *)stateCopy WXMainNamespace];
  v32 = OCXFindChild(from, wXMainNamespace9, "szCs");

  wXMainNamespace10 = [(WXReadState *)stateCopy WXMainNamespace];
  LODWORD(v32) = CXOptionalLongAttribute(v32, wXMainNamespace10, "val", &v175, 15);

  if (v32)
  {
    [toCopy setFontSizeForBiText:v175];
  }

  wXMainNamespace11 = [(WXReadState *)stateCopy WXMainNamespace];
  v35 = OCXFindChild(from, wXMainNamespace11, "position");

  wXMainNamespace12 = [(WXReadState *)stateCopy WXMainNamespace];
  LODWORD(v35) = CXOptionalLongAttribute(v35, wXMainNamespace12, "val", &v175, 15);

  if (v35)
  {
    [toCopy setPosition:v175];
  }

  wXMainNamespace13 = [(WXReadState *)stateCopy WXMainNamespace];
  v38 = OCXFindChild(from, wXMainNamespace13, "kern");

  wXMainNamespace14 = [(WXReadState *)stateCopy WXMainNamespace];
  LODWORD(v38) = CXOptionalLongAttribute(v38, wXMainNamespace14, "val", &v175, 15);

  if (v38)
  {
    [toCopy setKerning:v175];
  }

  v40 = OCXFindChild(from, WXWord2010Namespace, "reflection");
  if (CXOptionalLongAttribute(v40, WXWord2010Namespace, "dist", &v175))
  {
    v41 = objc_alloc_init(OADReflectionEffect);
    [self readReflection:v41 fromXmlNode:v40 state:stateCopy];
    [toCopy setReflection:v41];
  }

  v42 = OCXFindChild(from, WXWord2010Namespace, "shadow");
  if (v42)
  {
    [self readShadowForTarget:toCopy fromXmlNode:v42 state:stateCopy];
  }

  wXMainNamespace15 = [(WXReadState *)stateCopy WXMainNamespace];
  v44 = OCXFindChild(from, wXMainNamespace15, "w");

  wXMainNamespace16 = [(WXReadState *)stateCopy WXMainNamespace];
  LODWORD(v44) = CXOptionalLongAttribute(v44, wXMainNamespace16, "val", &v175);

  if (v44)
  {
    [toCopy setTextScale:v175];
  }

  v174 = 0;
  v46 = OCXFindChild(from, WXWord2010Namespace, "ligatures");
  ligaturesEnumMap = [self ligaturesEnumMap];
  LODWORD(v46) = readEnumProperty<WDLigatures>(v46, "val", ligaturesEnumMap, &v174);

  if (v46)
  {
    [toCopy setLigature:v174];
  }

  v173 = 0;
  highlightEnumMap = [self highlightEnumMap];
  v49 = readEnumProperty<WDHighlightColor>(from, "highlight", "val", highlightEnumMap, &v173, stateCopy);

  if (v49)
  {
    [toCopy setHighlight:1];
    [toCopy setHighlightColor:v173];
  }

  v172 = 0;
  verticalAlignEnumMap = [self verticalAlignEnumMap];
  v51 = readEnumProperty<WDCharacterVerticalAlign>(from, "vertAlign", "val", verticalAlignEnumMap, &v172, stateCopy);

  if (v51)
  {
    [toCopy setVerticalAlign:v172];
  }

  v171 = 0;
  emphasisMarkEnumMap = [self emphasisMarkEnumMap];
  v53 = readEnumProperty<WDCharacterEmphasisMark>(from, "em", "val", emphasisMarkEnumMap, &v171, stateCopy);

  if (v53)
  {
    [toCopy setEmphasisMark:v171];
  }

  wXMainNamespace17 = [(WXReadState *)stateCopy WXMainNamespace];
  v55 = OCXFindChild(from, wXMainNamespace17, "u");

  if (v55)
  {
    wXMainNamespace18 = [(WXReadState *)stateCopy WXMainNamespace];
    v170 = 0;
    v57 = CXOptionalStringAttribute(v55, wXMainNamespace18, "val", &v170);
    v58 = v170;

    if (v57)
    {
      underlineEnumMap = [self underlineEnumMap];
      [toCopy setUnderline:{objc_msgSend(underlineEnumMap, "valueForString:", v58)}];

      if ([toCopy underline] == -130883970)
      {
        [toCopy setUnderline:0];
      }
    }

    wXMainNamespace19 = [(WXReadState *)stateCopy WXMainNamespace];
    v169 = 0;
    v61 = CXOptionalStringAttribute(v55, wXMainNamespace19, "color", &v169);
    v62 = v169;

    if (v61)
    {
      v63 = [WXShading getColorFromString:v62];
      [toCopy setUnderlineColor:v63];
    }
  }

  wXMainNamespace20 = [(WXReadState *)stateCopy WXMainNamespace];
  v65 = OCXFindChild(from, wXMainNamespace20, "color");

  if (v65)
  {
    wXMainNamespace21 = [(WXReadState *)stateCopy WXMainNamespace];
    v168 = 0;
    v67 = CXOptionalStringAttribute(v65, wXMainNamespace21, "val", &v168);
    v68 = v168;

    if (v67)
    {
      v69 = [WXShading getColorFromString:v68];
      [toCopy setColor:v69];

      color = [toCopy color];
      [color alphaComponent];
      v72 = v71 == 0.0;

      [toCopy setColorAuto:v72];
    }
  }

  wXMainNamespace22 = [(WXReadState *)stateCopy WXMainNamespace];
  v74 = OCXFindChild(from, wXMainNamespace22, "rFonts");

  if (v74)
  {
    document4 = [toCopy document];
    fontTable = [document4 fontTable];

    document5 = [(WXReadState *)stateCopy document];
    theme = [document5 theme];
    baseStyles = [theme baseStyles];
    fontScheme = [baseStyles fontScheme];
    wXMainNamespace23 = [(WXReadState *)stateCopy WXMainNamespace];
    v167 = 0;
    LODWORD(document4) = CXOptionalStringAttribute(v74, wXMainNamespace23, "asciiTheme", &v167);
    v77 = v167;

    v151 = v77;
    if (document4)
    {
      if ([v77 rangeOfString:@"major"] == 0x7FFFFFFFFFFFFFFFLL)
      {
        [fontScheme minorFont];
      }

      else
      {
        [fontScheme majorFont];
      }
      v78 = ;
      latinFont = [v78 latinFont];
    }

    else
    {
      latinFont = 0;
    }

    wXMainNamespace24 = [(WXReadState *)stateCopy WXMainNamespace];
    v166 = latinFont;
    CXOptionalStringAttribute(v74, wXMainNamespace24, "ascii", &v166);
    v81 = v166;

    if (v81 && [v81 length])
    {
      v82 = [fontTable fontWithName:v81 create:1];
      [toCopy setFont:v82];
    }

    wXMainNamespace25 = [(WXReadState *)stateCopy WXMainNamespace];
    v165 = 0;
    v84 = CXOptionalStringAttribute(v74, wXMainNamespace25, "cs", &v165);
    v150 = v165;

    if (v84)
    {
      v85 = [fontTable fontWithName:v150 create:1];
      [toCopy setExtendedFont:v85];
    }

    wXMainNamespace26 = [(WXReadState *)stateCopy WXMainNamespace];
    v164 = 0;
    v87 = CXOptionalStringAttribute(v74, wXMainNamespace26, "hAnsi", &v164);
    v149 = v164;

    if (v87)
    {
      v88 = [fontTable fontWithName:v149 create:1];
      [toCopy setSymbolFont:v88];
    }

    wXMainNamespace27 = [(WXReadState *)stateCopy WXMainNamespace];
    v163 = 0;
    v90 = CXOptionalStringAttribute(v74, wXMainNamespace27, "hint", &v163);
    v91 = v163;

    if (v90)
    {
      fontHintEnumMap = [self fontHintEnumMap];
      [toCopy setFontHint:{objc_msgSend(fontHintEnumMap, "valueForString:", v91)}];
    }

    wXMainNamespace28 = [(WXReadState *)stateCopy WXMainNamespace];
    v162 = 0;
    v94 = CXOptionalStringAttribute(v74, wXMainNamespace28, "eastAsiaTheme", &v162);
    v95 = v162;

    if (!v94)
    {
      v100 = 0;
      goto LABEL_98;
    }

    if ([v95 rangeOfString:@"major"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      minorFont = [fontScheme minorFont];
      eastAsianFont = [minorFont eastAsianFont];

      if (![eastAsianFont length])
      {
        minorFont2 = [fontScheme minorFont];
        latinFont2 = [minorFont2 latinFont];
LABEL_97:
        v100 = latinFont2;

LABEL_98:
        wXMainNamespace29 = [(WXReadState *)stateCopy WXMainNamespace];
        v161 = v100;
        CXOptionalStringAttribute(v74, wXMainNamespace29, "eastAsia", &v161);
        v103 = v161;

        if (v103 && [v103 length])
        {
          v104 = [fontTable fontWithName:v103 create:1];
          [toCopy setFarEastFont:v104];
        }

        goto LABEL_102;
      }
    }

    else
    {
      majorFont = [fontScheme majorFont];
      eastAsianFont = [majorFont eastAsianFont];

      if (![eastAsianFont length])
      {
        minorFont2 = [fontScheme majorFont];
        latinFont2 = [minorFont2 latinFont];
        goto LABEL_97;
      }
    }

    v100 = eastAsianFont;
    goto LABEL_98;
  }

LABEL_102:
  wXMainNamespace30 = [(WXReadState *)stateCopy WXMainNamespace];
  v106 = OCXFindChild(from, wXMainNamespace30, "lang");

  if (v106)
  {
    wXMainNamespace31 = [(WXReadState *)stateCopy WXMainNamespace];
    v160 = 0;
    CXOptionalStringAttribute(v106, wXMainNamespace31, "val", &v160);
    v108 = v160;

    if (v108 && [(NSString *)v108 length])
    {
      [toCopy setLanguageForDefaultText:OCDLanguageFromOfficeString(v108)];
    }

    wXMainNamespace32 = [(WXReadState *)stateCopy WXMainNamespace];
    v159 = v108;
    CXOptionalStringAttribute(v106, wXMainNamespace32, "eastAsia", &v159);
    v110 = v159;

    if (v110 && [(NSString *)v110 length])
    {
      [toCopy setLanguageForFarEast:OCDLanguageFromOfficeString(v110)];
    }

    wXMainNamespace33 = [(WXReadState *)stateCopy WXMainNamespace];
    v158 = v110;
    CXOptionalStringAttribute(v106, wXMainNamespace33, "bidi", &v158);
    v112 = v158;

    if (v112 && [(NSString *)v112 length])
    {
      [toCopy setLanguageForBiText:OCDLanguageFromOfficeString(v112)];
    }
  }

  if ([WXCharacterProperties readBooleanCharacterMultipleProperty:from propertyName:"eastAsianLayout" attributeName:"vert" outValue:v176 state:stateCopy])
  {
    [toCopy setHorizontalInVertical:v176[0] != 0];
    if (v176[0])
    {
      LODWORD(v156) = 0;
      if ([WXCharacterProperties readBooleanCharacterMultipleProperty:from propertyName:"eastAsianLayout" attributeName:"vertCompress" outValue:&v156 state:stateCopy])
      {
        [toCopy setCompressHorizontalInVertical:v156 != 0];
      }
    }
  }

  if ([WXCharacterProperties readBooleanCharacterMultipleProperty:from propertyName:"eastAsianLayout" attributeName:"combine" outValue:v176 state:stateCopy])
  {
    [toCopy setTwoLinesInOne:v176[0] != 0];
    if (v176[0])
    {
      LODWORD(v156) = 0;
      twoLineBracketsEnumMap = [self twoLineBracketsEnumMap];
      v114 = readEnumProperty<WDTwoLineBrackets>(from, "eastAsianLayout", "combineBrackets", twoLineBracketsEnumMap, &v156, stateCopy);

      if (v114)
      {
        [toCopy setBracketTwoLinesInOne:v156];
      }
    }
  }

  v157 = 0;
  if (wmxmlGetBoolOnlyProperty(from, "noProof", "val", &v157, stateCopy) && v157)
  {
    [toCopy setLanguageForDefaultText:1024];
  }

  wXMainNamespace34 = [(WXReadState *)stateCopy WXMainNamespace];
  v116 = OCXFindChild(from, wXMainNamespace34, "bdr");

  if (v116)
  {
    mutableBorder = [toCopy mutableBorder];
    [WXBorder readFrom:v116 to:mutableBorder state:stateCopy];
  }

  wXMainNamespace35 = [(WXReadState *)stateCopy WXMainNamespace];
  v119 = OCXFindChild(from, wXMainNamespace35, "shd");

  if (v119)
  {
    mutableShading = [toCopy mutableShading];
    [WXShading readFrom:v119 to:mutableShading state:stateCopy];
  }

  v121 = OCXFindChild(from, WXWord2010Namespace, "textOutline");
  v122 = v121;
  if (v121)
  {
    v156 = 9525;
    CXOptionalLongAttribute(v121, WXWord2010Namespace, "w", &v156);
    v123 = v156 / 12700.0;
    *&v123 = v123;
    [toCopy setOutline2010Width:v123];
    v124 = OCXFindChild(v122, WXWord2010Namespace, "solidFill");
    if (v124)
    {
      v125 = [self readFillColor:v124 forTarget:toCopy state:stateCopy];
      if (v125)
      {
        [toCopy setOutlineColor:v125];
      }
    }
  }

  v126 = OCXFindChild(from, WXWord2010Namespace, "textFill");
  v128 = v126;
  if (v126)
  {
    if (!OCXFindChild(v126, WXWord2010Namespace, "noFill"))
    {
      v127 = OCXFindChild(v128, WXWord2010Namespace, "solidFill");
      if (v127)
      {
        v129 = [self readFillColor:v127 forTarget:toCopy state:stateCopy];
        v130 = v129;
        if (v129)
        {
          [v129 alphaComponent];
          if (v131 > 0.0)
          {
            [toCopy setColor:v130];
            if ([toCopy isOutline2010WidthOverridden])
            {
              [toCopy outline2010Width];
              if (v132 > 0.0)
              {
                [toCopy outline2010Width];
                *&v134 = -v133;
                [toCopy setOutline2010Width:v134];
              }
            }
          }
        }
      }
    }
  }

  wXMainNamespace36 = [(WXReadState *)stateCopy WXMainNamespace];
  v136 = OCXFindChild(from, wXMainNamespace36, "rStyle");

  wXMainNamespace37 = [(WXReadState *)stateCopy WXMainNamespace];
  v155 = 0;
  LODWORD(v136) = CXOptionalStringAttribute(v136, wXMainNamespace37, "val", &v155);
  v138 = v155;

  if (v136)
  {
    document6 = [(WXReadState *)stateCopy document];
    styleSheet = [document6 styleSheet];
    v141 = [styleSheet styleWithId:v138];

    if (v141)
    {
      [toCopy setBaseStyle:v141];
    }
  }

  document7 = [(WXReadState *)stateCopy document];
  styleSheet2 = [document7 styleSheet];
  defaultParagraphStyle = [styleSheet2 defaultParagraphStyle];
  characterProperties = [defaultParagraphStyle characterProperties];
  [toCopy negateFormattingChangesWithDefaults:characterProperties];

  [toCopy setResolveMode:2];
}

+ (void)applyDeletionInsertionProperties:(id)properties state:(id)state
{
  propertiesCopy = properties;
  stateCopy = state;
  [propertiesCopy setResolveMode:0];
  currentDeleteAuthor = [stateCopy currentDeleteAuthor];
  currentDeleteDate = [stateCopy currentDeleteDate];
  v8 = currentDeleteDate;
  if (currentDeleteAuthor && currentDeleteDate)
  {
    [propertiesCopy setDeleted:1];
    [propertiesCopy setDeletionDate:v8];
    document = [stateCopy document];
    [propertiesCopy setIndexToAuthorIDOfDeletion:{objc_msgSend(document, "revisionAuthorAddLookup:", currentDeleteAuthor)}];
  }

  currentEditAuthor = [stateCopy currentEditAuthor];

  currentEditDate = [stateCopy currentEditDate];

  if (currentEditAuthor && currentEditDate)
  {
    [propertiesCopy setEdited:1];
    [propertiesCopy setEditDate:currentEditDate];
    document2 = [stateCopy document];
    [propertiesCopy setIndexToAuthorIDOfEdit:{objc_msgSend(document2, "revisionAuthorAddLookup:", currentEditAuthor)}];
  }

  [propertiesCopy setResolveMode:2];
}

+ (void)readShadowForTarget:(id)target fromXmlNode:(_xmlNode *)node state:(id)state
{
  targetCopy = target;
  v7 = [OAXBaseTypes readRectAlignmentFromXmlNode:node name:"algn"];
  v60 = 0;
  CXOptionalLongAttribute(node, WXWord2010Namespace, "sx", &v60);
  v8 = v7 == 0;
  v9 = v60 == 0;
  v11 = v8 && v9;
  v10 = !v8 || !v9;
  v12 = off_2799C5728;
  if (v10)
  {
    v12 = off_2799C5740;
  }

  v13 = objc_alloc_init(*v12);
  v59 = 0;
  v49 = v13;
  if (CXOptionalLongAttribute(node, WXWord2010Namespace, "blurRad", &v59))
  {
    v14 = v59 / 25400.0;
    *&v14 = v14;
    [v13 setBlurRadius:v14];
  }

  v58 = 0;
  if (CXOptionalLongAttribute(node, WXWord2010Namespace, "dist", &v58))
  {
    v15 = v58 / 19050.0;
    *&v15 = v15;
    [v13 setDistance:v15];
  }

  v57 = 0;
  if (CXOptionalLongAttribute(node, WXWord2010Namespace, "dir", &v57))
  {
    v16 = v57 / 60000.0;
    *&v16 = v16;
    [v13 setAngle:v16];
  }

  v17 = OCXFindChild(node, WXWord2010Namespace, "srgbClr");
  v18 = v17;
  if (!v17)
  {
    v18 = OCXFindChild(node, WXWord2010Namespace, "schemeClr");
    v55 = 0;
    v31 = CXOptionalStringAttribute(v18, WXWord2010Namespace, "val", &v55);
    v20 = v55;
    if (v31)
    {
      v48 = targetCopy;
      document = [targetCopy document];
      v46 = v7;
      theme = [document theme];
      baseStyles = [theme baseStyles];
      colorScheme = [baseStyles colorScheme];
      colorMap = [document colorMap];
      v30 = [OAXColorScheme colorForScheme:colorScheme colorMap:colorMap value:v20];

      targetCopy = v48;
      v7 = v46;
      goto LABEL_15;
    }

LABEL_16:
    v30 = 0;
    goto LABEL_17;
  }

  v56 = 0;
  v19 = CXOptionalStringAttribute(v17, WXWord2010Namespace, "val", &v56);
  v20 = v56;
  if (!v19)
  {
    goto LABEL_16;
  }

  document = [WXShading getColorFromString:v20];
  [document redComponent];
  v23 = v22;
  [document greenComponent];
  v25 = v24;
  [document blueComponent];
  v26 = v23;
  *&v27 = v25;
  *&v29 = v28;
  *&v28 = v26;
  v30 = [OADRgbColor rgbColorWithRed:v28 green:v27 blue:v29];
LABEL_15:

LABEL_17:
  if (v18 && v30)
  {
    [v49 setColor:v30];
    v35 = OCXFindChild(v18, WXWord2010Namespace, "alpha");
    v54 = 0;
    v36 = CXOptionalStringAttribute(v35, WXWord2010Namespace, "val", &v54);
    v37 = v54;
    v38 = v37;
    LODWORD(v39) = 0.5;
    if (v36)
    {
      v39 = [v37 intValue] / -100000.0 + 1.0;
      *&v39 = v39;
    }

    [targetCopy setShadow2010Opacity:v39];
  }

  if (!v11)
  {
    v40 = v49;
    v41 = v40;
    if (v7)
    {
      [v40 setAlignment:v7];
    }

    if (v60)
    {
      v42 = v60 / 100000.0;
      *&v42 = v42;
      [v41 setXScale:v42];
    }

    v53 = 0;
    if (CXOptionalLongAttribute(node, WXWord2010Namespace, "sy", &v53))
    {
      v43 = v53 / 100000.0;
      *&v43 = v43;
      [v41 setYScale:v43];
    }

    v52 = 0;
    if (CXOptionalLongAttribute(node, WXWord2010Namespace, "kx", &v52))
    {
      v44 = v52 / 60000.0;
      *&v44 = v44;
      [v41 setXSkew:v44];
    }

    v51 = 0;
    if (CXOptionalLongAttribute(node, WXWord2010Namespace, "ky", &v51))
    {
      v45 = v51 / 60000.0;
      *&v45 = v45;
      [v41 setYSkew:v45];
    }

    v50 = 0;
    if (CXOptionalBoolAttribute(node, WXWord2010Namespace, "rotWithShape", &v50))
    {
      [v41 setRotateWithShape:v50];
    }
  }

  [targetCopy setShadow2010:v49];
}

+ (BOOL)readBooleanCharacterMultipleProperty:(_xmlNode *)property propertyName:(const char *)name attributeName:(const char *)attributeName outValue:(int *)value state:(id)state
{
  v10 = 0;
  BoolProperty = wmxmlGetBoolProperty(property, name, attributeName, &v10, state);
  if (BoolProperty)
  {
    *value = v10;
  }

  return BoolProperty;
}

+ (void)readReflection:(id)reflection fromXmlNode:(_xmlNode *)node state:(id)state
{
  reflectionCopy = reflection;
  v32 = 0;
  if (CXOptionalLongAttribute(node, WXWord2010Namespace, "blurRad", &v32))
  {
    v7 = v32 / 12700.0;
    *&v7 = v7;
    [reflectionCopy setBlurRadius:v7];
  }

  v31 = 0;
  if (CXOptionalLongAttribute(node, WXWord2010Namespace, "stA", &v31))
  {
    v8 = v31 / 100000.0;
    *&v8 = v8;
    [reflectionCopy setStartOpacity:v8];
  }

  v30 = 0;
  if (CXOptionalLongAttribute(node, WXWord2010Namespace, "stPos", &v30))
  {
    v9 = v30 / 100000.0;
    *&v9 = v9;
    [reflectionCopy setStartPosition:v9];
  }

  v29 = 0;
  if (CXOptionalLongAttribute(node, WXWord2010Namespace, "endA", &v29))
  {
    v10 = v29 / 100000.0;
    *&v10 = v10;
    [reflectionCopy setEndOpacity:v10];
  }

  v28 = 0;
  if (CXOptionalLongAttribute(node, WXWord2010Namespace, "endPos", &v28))
  {
    v11 = v28 / 100000.0;
    *&v11 = v11;
    [reflectionCopy setEndPosition:v11];
  }

  v27 = 0;
  if (CXOptionalLongAttribute(node, WXWord2010Namespace, "dist", &v27))
  {
    v12 = v27 / 12700.0;
    *&v12 = v12;
    [reflectionCopy setDistance:v12];
  }

  v26 = 0;
  if (CXOptionalLongAttribute(node, WXWord2010Namespace, "dir", &v26))
  {
    v13 = v26 / 60000.0;
    *&v13 = v13;
    [reflectionCopy setDirection:v13];
  }

  v25 = 0;
  if (CXOptionalLongAttribute(node, WXWord2010Namespace, "fadeDir", &v25))
  {
    v14 = v25 / 60000.0;
    *&v14 = v14;
    [reflectionCopy setFadeDirection:v14];
  }

  v24 = 0;
  if (CXOptionalLongAttribute(node, WXWord2010Namespace, "sx", &v24))
  {
    v15 = v24 / 100000.0;
    *&v15 = v15;
    [reflectionCopy setXScale:v15];
  }

  v23 = 0;
  if (CXOptionalLongAttribute(node, WXWord2010Namespace, "sy", &v23))
  {
    v16 = v23 / 100000.0;
    *&v16 = v16;
    [reflectionCopy setYScale:v16];
  }

  v22 = 0;
  if (CXOptionalLongAttribute(node, WXWord2010Namespace, "kx", &v22))
  {
    v17 = v22 / 60000.0;
    *&v17 = v17;
    [reflectionCopy setXSkew:v17];
  }

  v21 = 0;
  if (CXOptionalLongAttribute(node, WXWord2010Namespace, "ky", &v21))
  {
    v18 = v21 / 60000.0;
    *&v18 = v18;
    [reflectionCopy setYSkew:v18];
  }

  v19 = [OAXBaseTypes readRectAlignmentFromXmlNode:node name:"algn"];
  if (v19)
  {
    [reflectionCopy setAlignment:v19];
  }

  v20 = 0;
  if (CXOptionalBoolAttribute(node, WXWord2010Namespace, "rotWithShape", &v20))
  {
    [reflectionCopy setRotateWithShape:v20];
  }
}

+ (id)readFillColor:(_xmlNode *)color forTarget:(id)target state:(id)state
{
  stateCopy = state;
  v7 = OCXFindChild(color, WXWord2010Namespace, "srgbClr");
  if (v7)
  {
    v19 = 0;
    v8 = CXOptionalStringAttribute(v7, WXWord2010Namespace, "val", &v19);
    drawingState = v19;
    if (v8)
    {
      v10 = [WXShading getColorFromString:drawingState];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v11 = OCXFindChild(color, WXWord2010Namespace, "schemeClr");
    if (!v11)
    {
      v10 = 0;
      goto LABEL_14;
    }

    drawingState = [stateCopy drawingState];
    v18 = 0;
    v12 = CXOptionalStringAttribute(v11, WXWord2010Namespace, "val", &v18);
    v13 = v18;
    if (v12)
    {
      v14 = [OAXColor readPresetColorFromAttribute:v13];
      if (v14 || ([OAXColor readSchemeColorFromAttribute:v13], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        colorMap = [drawingState colorMap];
        colorScheme = [drawingState colorScheme];
        v10 = [OADColor tsuColorWithColor:v14 colorMap:colorMap colorScheme:colorScheme colorPalette:0];
      }

      else
      {
        v10 = +[OITSUColor blackColor];
      }
    }

    else
    {
      v10 = 0;
    }
  }

LABEL_14:

  return v10;
}

+ (BOOL)readBooleanCharacterProperty:(_xmlNode *)property propertyName:(const char *)name attributeName:(const char *)attributeName outValue:(int *)value state:(id)state
{
  v10 = 0;
  BoolOnlyProperty = wmxmlGetBoolOnlyProperty(property, name, attributeName, &v10, state);
  if (BoolOnlyProperty)
  {
    *value = v10;
  }

  return BoolOnlyProperty;
}

+ (void)underlineEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)highlightEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)ligaturesEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)verticalAlignEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)emphasisMarkEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)twoLineBracketsEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)fontHintEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

@end