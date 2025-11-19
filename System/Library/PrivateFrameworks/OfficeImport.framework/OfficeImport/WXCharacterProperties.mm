@interface WXCharacterProperties
+ (BOOL)readBooleanCharacterMultipleProperty:(_xmlNode *)a3 propertyName:(const char *)a4 attributeName:(const char *)a5 outValue:(int *)a6 state:(id)a7;
+ (BOOL)readBooleanCharacterProperty:(_xmlNode *)a3 propertyName:(const char *)a4 attributeName:(const char *)a5 outValue:(int *)a6 state:(id)a7;
+ (TCEnumerationMap)emphasisMarkEnumMap;
+ (TCEnumerationMap)fontHintEnumMap;
+ (TCEnumerationMap)highlightEnumMap;
+ (TCEnumerationMap)ligaturesEnumMap;
+ (TCEnumerationMap)twoLineBracketsEnumMap;
+ (TCEnumerationMap)underlineEnumMap;
+ (TCEnumerationMap)verticalAlignEnumMap;
+ (id)readFillColor:(_xmlNode *)a3 forTarget:(id)a4 state:(id)a5;
+ (void)applyDeletionInsertionProperties:(id)a3 state:(id)a4;
+ (void)emphasisMarkEnumMap;
+ (void)fontHintEnumMap;
+ (void)highlightEnumMap;
+ (void)ligaturesEnumMap;
+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5;
+ (void)readReflection:(id)a3 fromXmlNode:(_xmlNode *)a4 state:(id)a5;
+ (void)readShadowForTarget:(id)a3 fromXmlNode:(_xmlNode *)a4 state:(id)a5;
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

+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5
{
  v7 = a4;
  v8 = a5;
  [v7 setResolveMode:0];
  v9 = [(WXReadState *)v8 WXMainNamespace];
  v10 = OCXFindChild(a3, v9, "ins");

  if (v10)
  {
    [v7 setEdited:1];
    v11 = wmxmlGetDateProperty(v10);
    [v7 setEditDate:v11];

    v12 = [(WXReadState *)v8 document];
    v13 = wmxmlGetAuthorProperty(v10);
    [v7 setIndexToAuthorIDOfEdit:{objc_msgSend(v12, "revisionAuthorAddLookup:", v13)}];
  }

  v14 = [(WXReadState *)v8 WXMainNamespace];
  v15 = OCXFindChild(a3, v14, "del");

  if (v15)
  {
    [v7 setDeleted:1];
    v16 = wmxmlGetDateProperty(v15);
    [v7 setDeletionDate:v16];

    v17 = [(WXReadState *)v8 document];
    v18 = wmxmlGetAuthorProperty(v15);
    [v7 setIndexToAuthorIDOfDeletion:{objc_msgSend(v17, "revisionAuthorAddLookup:", v18)}];
  }

  v19 = [(WXReadState *)v8 WXMainNamespace];
  v20 = OCXFindChild(a3, v19, "rPrChange");

  if (v20)
  {
    v21 = [(WXReadState *)v8 WXMainNamespace];
    v22 = OCXFindChild(v20, v21, "rPr");

    if (v22)
    {
      [WXCharacterProperties readFrom:v22 to:v7 state:v8];
      [v7 setResolveMode:1];
      [v7 setFormattingChanged:1];
      v23 = [(WXReadState *)v8 document];
      v24 = wmxmlGetAuthorProperty(v20);
      [v7 setIndexToAuthorIDOfFormattingChange:{objc_msgSend(v23, "revisionAuthorAddLookup:", v24)}];
    }
  }

  v176[0] = 0;
  if ([WXCharacterProperties readBooleanCharacterProperty:a3 propertyName:"rtl" attributeName:"val" outValue:v176 state:v8])
  {
    [v7 setRightToLeft:v176[0]];
  }

  else if (![WXCharacterProperties readBooleanCharacterProperty:a3 propertyName:"cs" attributeName:"val" outValue:v176 state:v8])
  {
    goto LABEL_12;
  }

  [v7 setUseCsFont:v176[0]];
LABEL_12:
  if ([WXCharacterProperties readBooleanCharacterProperty:a3 propertyName:"b" attributeName:"val" outValue:v176 state:v8])
  {
    [v7 setBold:v176[0]];
  }

  if ([WXCharacterProperties readBooleanCharacterProperty:a3 propertyName:"bCs" attributeName:"val" outValue:v176 state:v8])
  {
    [v7 setBoldForBiText:v176[0]];
  }

  if ([WXCharacterProperties readBooleanCharacterProperty:a3 propertyName:"i" attributeName:"val" outValue:v176 state:v8])
  {
    [v7 setItalic:v176[0]];
  }

  if ([WXCharacterProperties readBooleanCharacterProperty:a3 propertyName:"iCs" attributeName:"val" outValue:v176 state:v8])
  {
    [v7 setItalicForBiText:v176[0]];
  }

  if ([WXCharacterProperties readBooleanCharacterProperty:a3 propertyName:"smallCaps" attributeName:"val" outValue:v176 state:v8])
  {
    [v7 setSmallCaps:v176[0]];
  }

  if ([WXCharacterProperties readBooleanCharacterProperty:a3 propertyName:"outline" attributeName:"val" outValue:v176 state:v8])
  {
    [v7 setOutline:v176[0]];
  }

  if ([WXCharacterProperties readBooleanCharacterProperty:a3 propertyName:"shadow" attributeName:"val" outValue:v176 state:v8])
  {
    [v7 setShadow:v176[0]];
  }

  if ([WXCharacterProperties readBooleanCharacterProperty:a3 propertyName:"emboss" attributeName:"val" outValue:v176 state:v8])
  {
    [v7 setEmbossed:v176[0]];
  }

  if ([WXCharacterProperties readBooleanCharacterProperty:a3 propertyName:"imprint" attributeName:"val" outValue:v176 state:v8])
  {
    [v7 setImprint:v176[0]];
  }

  if ([WXCharacterProperties readBooleanCharacterProperty:a3 propertyName:"strike" attributeName:"val" outValue:v176 state:v8])
  {
    [v7 setStrikeThrough:v176[0]];
  }

  if ([WXCharacterProperties readBooleanCharacterProperty:a3 propertyName:"dstrike" attributeName:"val" outValue:v176 state:v8])
  {
    [v7 setDoubleStrikeThrough:v176[0]];
  }

  if ([WXCharacterProperties readBooleanCharacterProperty:a3 propertyName:"caps" attributeName:"val" outValue:v176 state:v8])
  {
    [v7 setCaps:v176[0]];
  }

  if ([WXCharacterProperties readBooleanCharacterProperty:a3 propertyName:"vanish" attributeName:"val" outValue:v176 state:v8])
  {
    [v7 setHidden:v176[0]];
  }

  v175 = 0;
  v25 = [(WXReadState *)v8 WXMainNamespace];
  v26 = OCXFindChild(a3, v25, "spacing");

  v27 = [(WXReadState *)v8 WXMainNamespace];
  LODWORD(v26) = CXOptionalLongAttribute(v26, v27, "val", &v175, 14);

  if (v26)
  {
    [v7 setSpacing:v175];
  }

  v28 = [(WXReadState *)v8 WXMainNamespace];
  v29 = OCXFindChild(a3, v28, "sz");

  v30 = [(WXReadState *)v8 WXMainNamespace];
  LODWORD(v29) = CXOptionalLongAttribute(v29, v30, "val", &v175, 15);

  if (v29)
  {
    [v7 setFontSize:v175];
  }

  v31 = [(WXReadState *)v8 WXMainNamespace];
  v32 = OCXFindChild(a3, v31, "szCs");

  v33 = [(WXReadState *)v8 WXMainNamespace];
  LODWORD(v32) = CXOptionalLongAttribute(v32, v33, "val", &v175, 15);

  if (v32)
  {
    [v7 setFontSizeForBiText:v175];
  }

  v34 = [(WXReadState *)v8 WXMainNamespace];
  v35 = OCXFindChild(a3, v34, "position");

  v36 = [(WXReadState *)v8 WXMainNamespace];
  LODWORD(v35) = CXOptionalLongAttribute(v35, v36, "val", &v175, 15);

  if (v35)
  {
    [v7 setPosition:v175];
  }

  v37 = [(WXReadState *)v8 WXMainNamespace];
  v38 = OCXFindChild(a3, v37, "kern");

  v39 = [(WXReadState *)v8 WXMainNamespace];
  LODWORD(v38) = CXOptionalLongAttribute(v38, v39, "val", &v175, 15);

  if (v38)
  {
    [v7 setKerning:v175];
  }

  v40 = OCXFindChild(a3, WXWord2010Namespace, "reflection");
  if (CXOptionalLongAttribute(v40, WXWord2010Namespace, "dist", &v175))
  {
    v41 = objc_alloc_init(OADReflectionEffect);
    [a1 readReflection:v41 fromXmlNode:v40 state:v8];
    [v7 setReflection:v41];
  }

  v42 = OCXFindChild(a3, WXWord2010Namespace, "shadow");
  if (v42)
  {
    [a1 readShadowForTarget:v7 fromXmlNode:v42 state:v8];
  }

  v43 = [(WXReadState *)v8 WXMainNamespace];
  v44 = OCXFindChild(a3, v43, "w");

  v45 = [(WXReadState *)v8 WXMainNamespace];
  LODWORD(v44) = CXOptionalLongAttribute(v44, v45, "val", &v175);

  if (v44)
  {
    [v7 setTextScale:v175];
  }

  v174 = 0;
  v46 = OCXFindChild(a3, WXWord2010Namespace, "ligatures");
  v47 = [a1 ligaturesEnumMap];
  LODWORD(v46) = readEnumProperty<WDLigatures>(v46, "val", v47, &v174);

  if (v46)
  {
    [v7 setLigature:v174];
  }

  v173 = 0;
  v48 = [a1 highlightEnumMap];
  v49 = readEnumProperty<WDHighlightColor>(a3, "highlight", "val", v48, &v173, v8);

  if (v49)
  {
    [v7 setHighlight:1];
    [v7 setHighlightColor:v173];
  }

  v172 = 0;
  v50 = [a1 verticalAlignEnumMap];
  v51 = readEnumProperty<WDCharacterVerticalAlign>(a3, "vertAlign", "val", v50, &v172, v8);

  if (v51)
  {
    [v7 setVerticalAlign:v172];
  }

  v171 = 0;
  v52 = [a1 emphasisMarkEnumMap];
  v53 = readEnumProperty<WDCharacterEmphasisMark>(a3, "em", "val", v52, &v171, v8);

  if (v53)
  {
    [v7 setEmphasisMark:v171];
  }

  v54 = [(WXReadState *)v8 WXMainNamespace];
  v55 = OCXFindChild(a3, v54, "u");

  if (v55)
  {
    v56 = [(WXReadState *)v8 WXMainNamespace];
    v170 = 0;
    v57 = CXOptionalStringAttribute(v55, v56, "val", &v170);
    v58 = v170;

    if (v57)
    {
      v59 = [a1 underlineEnumMap];
      [v7 setUnderline:{objc_msgSend(v59, "valueForString:", v58)}];

      if ([v7 underline] == -130883970)
      {
        [v7 setUnderline:0];
      }
    }

    v60 = [(WXReadState *)v8 WXMainNamespace];
    v169 = 0;
    v61 = CXOptionalStringAttribute(v55, v60, "color", &v169);
    v62 = v169;

    if (v61)
    {
      v63 = [WXShading getColorFromString:v62];
      [v7 setUnderlineColor:v63];
    }
  }

  v64 = [(WXReadState *)v8 WXMainNamespace];
  v65 = OCXFindChild(a3, v64, "color");

  if (v65)
  {
    v66 = [(WXReadState *)v8 WXMainNamespace];
    v168 = 0;
    v67 = CXOptionalStringAttribute(v65, v66, "val", &v168);
    v68 = v168;

    if (v67)
    {
      v69 = [WXShading getColorFromString:v68];
      [v7 setColor:v69];

      v70 = [v7 color];
      [v70 alphaComponent];
      v72 = v71 == 0.0;

      [v7 setColorAuto:v72];
    }
  }

  v73 = [(WXReadState *)v8 WXMainNamespace];
  v74 = OCXFindChild(a3, v73, "rFonts");

  if (v74)
  {
    v75 = [v7 document];
    v153 = [v75 fontTable];

    v148 = [(WXReadState *)v8 document];
    v147 = [v148 theme];
    v146 = [v147 baseStyles];
    v152 = [v146 fontScheme];
    v76 = [(WXReadState *)v8 WXMainNamespace];
    v167 = 0;
    LODWORD(v75) = CXOptionalStringAttribute(v74, v76, "asciiTheme", &v167);
    v77 = v167;

    v151 = v77;
    if (v75)
    {
      if ([v77 rangeOfString:@"major"] == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v152 minorFont];
      }

      else
      {
        [v152 majorFont];
      }
      v78 = ;
      v79 = [v78 latinFont];
    }

    else
    {
      v79 = 0;
    }

    v80 = [(WXReadState *)v8 WXMainNamespace];
    v166 = v79;
    CXOptionalStringAttribute(v74, v80, "ascii", &v166);
    v81 = v166;

    if (v81 && [v81 length])
    {
      v82 = [v153 fontWithName:v81 create:1];
      [v7 setFont:v82];
    }

    v83 = [(WXReadState *)v8 WXMainNamespace];
    v165 = 0;
    v84 = CXOptionalStringAttribute(v74, v83, "cs", &v165);
    v150 = v165;

    if (v84)
    {
      v85 = [v153 fontWithName:v150 create:1];
      [v7 setExtendedFont:v85];
    }

    v86 = [(WXReadState *)v8 WXMainNamespace];
    v164 = 0;
    v87 = CXOptionalStringAttribute(v74, v86, "hAnsi", &v164);
    v149 = v164;

    if (v87)
    {
      v88 = [v153 fontWithName:v149 create:1];
      [v7 setSymbolFont:v88];
    }

    v89 = [(WXReadState *)v8 WXMainNamespace];
    v163 = 0;
    v90 = CXOptionalStringAttribute(v74, v89, "hint", &v163);
    v91 = v163;

    if (v90)
    {
      v92 = [a1 fontHintEnumMap];
      [v7 setFontHint:{objc_msgSend(v92, "valueForString:", v91)}];
    }

    v93 = [(WXReadState *)v8 WXMainNamespace];
    v162 = 0;
    v94 = CXOptionalStringAttribute(v74, v93, "eastAsiaTheme", &v162);
    v95 = v162;

    if (!v94)
    {
      v100 = 0;
      goto LABEL_98;
    }

    if ([v95 rangeOfString:@"major"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v96 = [v152 minorFont];
      v97 = [v96 eastAsianFont];

      if (![v97 length])
      {
        v98 = [v152 minorFont];
        v99 = [v98 latinFont];
LABEL_97:
        v100 = v99;

LABEL_98:
        v102 = [(WXReadState *)v8 WXMainNamespace];
        v161 = v100;
        CXOptionalStringAttribute(v74, v102, "eastAsia", &v161);
        v103 = v161;

        if (v103 && [v103 length])
        {
          v104 = [v153 fontWithName:v103 create:1];
          [v7 setFarEastFont:v104];
        }

        goto LABEL_102;
      }
    }

    else
    {
      v101 = [v152 majorFont];
      v97 = [v101 eastAsianFont];

      if (![v97 length])
      {
        v98 = [v152 majorFont];
        v99 = [v98 latinFont];
        goto LABEL_97;
      }
    }

    v100 = v97;
    goto LABEL_98;
  }

LABEL_102:
  v105 = [(WXReadState *)v8 WXMainNamespace];
  v106 = OCXFindChild(a3, v105, "lang");

  if (v106)
  {
    v107 = [(WXReadState *)v8 WXMainNamespace];
    v160 = 0;
    CXOptionalStringAttribute(v106, v107, "val", &v160);
    v108 = v160;

    if (v108 && [(NSString *)v108 length])
    {
      [v7 setLanguageForDefaultText:OCDLanguageFromOfficeString(v108)];
    }

    v109 = [(WXReadState *)v8 WXMainNamespace];
    v159 = v108;
    CXOptionalStringAttribute(v106, v109, "eastAsia", &v159);
    v110 = v159;

    if (v110 && [(NSString *)v110 length])
    {
      [v7 setLanguageForFarEast:OCDLanguageFromOfficeString(v110)];
    }

    v111 = [(WXReadState *)v8 WXMainNamespace];
    v158 = v110;
    CXOptionalStringAttribute(v106, v111, "bidi", &v158);
    v112 = v158;

    if (v112 && [(NSString *)v112 length])
    {
      [v7 setLanguageForBiText:OCDLanguageFromOfficeString(v112)];
    }
  }

  if ([WXCharacterProperties readBooleanCharacterMultipleProperty:a3 propertyName:"eastAsianLayout" attributeName:"vert" outValue:v176 state:v8])
  {
    [v7 setHorizontalInVertical:v176[0] != 0];
    if (v176[0])
    {
      LODWORD(v156) = 0;
      if ([WXCharacterProperties readBooleanCharacterMultipleProperty:a3 propertyName:"eastAsianLayout" attributeName:"vertCompress" outValue:&v156 state:v8])
      {
        [v7 setCompressHorizontalInVertical:v156 != 0];
      }
    }
  }

  if ([WXCharacterProperties readBooleanCharacterMultipleProperty:a3 propertyName:"eastAsianLayout" attributeName:"combine" outValue:v176 state:v8])
  {
    [v7 setTwoLinesInOne:v176[0] != 0];
    if (v176[0])
    {
      LODWORD(v156) = 0;
      v113 = [a1 twoLineBracketsEnumMap];
      v114 = readEnumProperty<WDTwoLineBrackets>(a3, "eastAsianLayout", "combineBrackets", v113, &v156, v8);

      if (v114)
      {
        [v7 setBracketTwoLinesInOne:v156];
      }
    }
  }

  v157 = 0;
  if (wmxmlGetBoolOnlyProperty(a3, "noProof", "val", &v157, v8) && v157)
  {
    [v7 setLanguageForDefaultText:1024];
  }

  v115 = [(WXReadState *)v8 WXMainNamespace];
  v116 = OCXFindChild(a3, v115, "bdr");

  if (v116)
  {
    v117 = [v7 mutableBorder];
    [WXBorder readFrom:v116 to:v117 state:v8];
  }

  v118 = [(WXReadState *)v8 WXMainNamespace];
  v119 = OCXFindChild(a3, v118, "shd");

  if (v119)
  {
    v120 = [v7 mutableShading];
    [WXShading readFrom:v119 to:v120 state:v8];
  }

  v121 = OCXFindChild(a3, WXWord2010Namespace, "textOutline");
  v122 = v121;
  if (v121)
  {
    v156 = 9525;
    CXOptionalLongAttribute(v121, WXWord2010Namespace, "w", &v156);
    v123 = v156 / 12700.0;
    *&v123 = v123;
    [v7 setOutline2010Width:v123];
    v124 = OCXFindChild(v122, WXWord2010Namespace, "solidFill");
    if (v124)
    {
      v125 = [a1 readFillColor:v124 forTarget:v7 state:v8];
      if (v125)
      {
        [v7 setOutlineColor:v125];
      }
    }
  }

  v126 = OCXFindChild(a3, WXWord2010Namespace, "textFill");
  v128 = v126;
  if (v126)
  {
    if (!OCXFindChild(v126, WXWord2010Namespace, "noFill"))
    {
      v127 = OCXFindChild(v128, WXWord2010Namespace, "solidFill");
      if (v127)
      {
        v129 = [a1 readFillColor:v127 forTarget:v7 state:v8];
        v130 = v129;
        if (v129)
        {
          [v129 alphaComponent];
          if (v131 > 0.0)
          {
            [v7 setColor:v130];
            if ([v7 isOutline2010WidthOverridden])
            {
              [v7 outline2010Width];
              if (v132 > 0.0)
              {
                [v7 outline2010Width];
                *&v134 = -v133;
                [v7 setOutline2010Width:v134];
              }
            }
          }
        }
      }
    }
  }

  v135 = [(WXReadState *)v8 WXMainNamespace];
  v136 = OCXFindChild(a3, v135, "rStyle");

  v137 = [(WXReadState *)v8 WXMainNamespace];
  v155 = 0;
  LODWORD(v136) = CXOptionalStringAttribute(v136, v137, "val", &v155);
  v138 = v155;

  if (v136)
  {
    v139 = [(WXReadState *)v8 document];
    v140 = [v139 styleSheet];
    v141 = [v140 styleWithId:v138];

    if (v141)
    {
      [v7 setBaseStyle:v141];
    }
  }

  v142 = [(WXReadState *)v8 document];
  v143 = [v142 styleSheet];
  v144 = [v143 defaultParagraphStyle];
  v145 = [v144 characterProperties];
  [v7 negateFormattingChangesWithDefaults:v145];

  [v7 setResolveMode:2];
}

+ (void)applyDeletionInsertionProperties:(id)a3 state:(id)a4
{
  v13 = a3;
  v5 = a4;
  [v13 setResolveMode:0];
  v6 = [v5 currentDeleteAuthor];
  v7 = [v5 currentDeleteDate];
  v8 = v7;
  if (v6 && v7)
  {
    [v13 setDeleted:1];
    [v13 setDeletionDate:v8];
    v9 = [v5 document];
    [v13 setIndexToAuthorIDOfDeletion:{objc_msgSend(v9, "revisionAuthorAddLookup:", v6)}];
  }

  v10 = [v5 currentEditAuthor];

  v11 = [v5 currentEditDate];

  if (v10 && v11)
  {
    [v13 setEdited:1];
    [v13 setEditDate:v11];
    v12 = [v5 document];
    [v13 setIndexToAuthorIDOfEdit:{objc_msgSend(v12, "revisionAuthorAddLookup:", v10)}];
  }

  [v13 setResolveMode:2];
}

+ (void)readShadowForTarget:(id)a3 fromXmlNode:(_xmlNode *)a4 state:(id)a5
{
  v6 = a3;
  v7 = [OAXBaseTypes readRectAlignmentFromXmlNode:a4 name:"algn"];
  v60 = 0;
  CXOptionalLongAttribute(a4, WXWord2010Namespace, "sx", &v60);
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
  if (CXOptionalLongAttribute(a4, WXWord2010Namespace, "blurRad", &v59))
  {
    v14 = v59 / 25400.0;
    *&v14 = v14;
    [v13 setBlurRadius:v14];
  }

  v58 = 0;
  if (CXOptionalLongAttribute(a4, WXWord2010Namespace, "dist", &v58))
  {
    v15 = v58 / 19050.0;
    *&v15 = v15;
    [v13 setDistance:v15];
  }

  v57 = 0;
  if (CXOptionalLongAttribute(a4, WXWord2010Namespace, "dir", &v57))
  {
    v16 = v57 / 60000.0;
    *&v16 = v16;
    [v13 setAngle:v16];
  }

  v17 = OCXFindChild(a4, WXWord2010Namespace, "srgbClr");
  v18 = v17;
  if (!v17)
  {
    v18 = OCXFindChild(a4, WXWord2010Namespace, "schemeClr");
    v55 = 0;
    v31 = CXOptionalStringAttribute(v18, WXWord2010Namespace, "val", &v55);
    v20 = v55;
    if (v31)
    {
      v48 = v6;
      v21 = [v6 document];
      v46 = v7;
      v47 = [v21 theme];
      v32 = [v47 baseStyles];
      v33 = [v32 colorScheme];
      v34 = [v21 colorMap];
      v30 = [OAXColorScheme colorForScheme:v33 colorMap:v34 value:v20];

      v6 = v48;
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

  v21 = [WXShading getColorFromString:v20];
  [v21 redComponent];
  v23 = v22;
  [v21 greenComponent];
  v25 = v24;
  [v21 blueComponent];
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

    [v6 setShadow2010Opacity:v39];
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
    if (CXOptionalLongAttribute(a4, WXWord2010Namespace, "sy", &v53))
    {
      v43 = v53 / 100000.0;
      *&v43 = v43;
      [v41 setYScale:v43];
    }

    v52 = 0;
    if (CXOptionalLongAttribute(a4, WXWord2010Namespace, "kx", &v52))
    {
      v44 = v52 / 60000.0;
      *&v44 = v44;
      [v41 setXSkew:v44];
    }

    v51 = 0;
    if (CXOptionalLongAttribute(a4, WXWord2010Namespace, "ky", &v51))
    {
      v45 = v51 / 60000.0;
      *&v45 = v45;
      [v41 setYSkew:v45];
    }

    v50 = 0;
    if (CXOptionalBoolAttribute(a4, WXWord2010Namespace, "rotWithShape", &v50))
    {
      [v41 setRotateWithShape:v50];
    }
  }

  [v6 setShadow2010:v49];
}

+ (BOOL)readBooleanCharacterMultipleProperty:(_xmlNode *)a3 propertyName:(const char *)a4 attributeName:(const char *)a5 outValue:(int *)a6 state:(id)a7
{
  v10 = 0;
  BoolProperty = wmxmlGetBoolProperty(a3, a4, a5, &v10, a7);
  if (BoolProperty)
  {
    *a6 = v10;
  }

  return BoolProperty;
}

+ (void)readReflection:(id)a3 fromXmlNode:(_xmlNode *)a4 state:(id)a5
{
  v6 = a3;
  v32 = 0;
  if (CXOptionalLongAttribute(a4, WXWord2010Namespace, "blurRad", &v32))
  {
    v7 = v32 / 12700.0;
    *&v7 = v7;
    [v6 setBlurRadius:v7];
  }

  v31 = 0;
  if (CXOptionalLongAttribute(a4, WXWord2010Namespace, "stA", &v31))
  {
    v8 = v31 / 100000.0;
    *&v8 = v8;
    [v6 setStartOpacity:v8];
  }

  v30 = 0;
  if (CXOptionalLongAttribute(a4, WXWord2010Namespace, "stPos", &v30))
  {
    v9 = v30 / 100000.0;
    *&v9 = v9;
    [v6 setStartPosition:v9];
  }

  v29 = 0;
  if (CXOptionalLongAttribute(a4, WXWord2010Namespace, "endA", &v29))
  {
    v10 = v29 / 100000.0;
    *&v10 = v10;
    [v6 setEndOpacity:v10];
  }

  v28 = 0;
  if (CXOptionalLongAttribute(a4, WXWord2010Namespace, "endPos", &v28))
  {
    v11 = v28 / 100000.0;
    *&v11 = v11;
    [v6 setEndPosition:v11];
  }

  v27 = 0;
  if (CXOptionalLongAttribute(a4, WXWord2010Namespace, "dist", &v27))
  {
    v12 = v27 / 12700.0;
    *&v12 = v12;
    [v6 setDistance:v12];
  }

  v26 = 0;
  if (CXOptionalLongAttribute(a4, WXWord2010Namespace, "dir", &v26))
  {
    v13 = v26 / 60000.0;
    *&v13 = v13;
    [v6 setDirection:v13];
  }

  v25 = 0;
  if (CXOptionalLongAttribute(a4, WXWord2010Namespace, "fadeDir", &v25))
  {
    v14 = v25 / 60000.0;
    *&v14 = v14;
    [v6 setFadeDirection:v14];
  }

  v24 = 0;
  if (CXOptionalLongAttribute(a4, WXWord2010Namespace, "sx", &v24))
  {
    v15 = v24 / 100000.0;
    *&v15 = v15;
    [v6 setXScale:v15];
  }

  v23 = 0;
  if (CXOptionalLongAttribute(a4, WXWord2010Namespace, "sy", &v23))
  {
    v16 = v23 / 100000.0;
    *&v16 = v16;
    [v6 setYScale:v16];
  }

  v22 = 0;
  if (CXOptionalLongAttribute(a4, WXWord2010Namespace, "kx", &v22))
  {
    v17 = v22 / 60000.0;
    *&v17 = v17;
    [v6 setXSkew:v17];
  }

  v21 = 0;
  if (CXOptionalLongAttribute(a4, WXWord2010Namespace, "ky", &v21))
  {
    v18 = v21 / 60000.0;
    *&v18 = v18;
    [v6 setYSkew:v18];
  }

  v19 = [OAXBaseTypes readRectAlignmentFromXmlNode:a4 name:"algn"];
  if (v19)
  {
    [v6 setAlignment:v19];
  }

  v20 = 0;
  if (CXOptionalBoolAttribute(a4, WXWord2010Namespace, "rotWithShape", &v20))
  {
    [v6 setRotateWithShape:v20];
  }
}

+ (id)readFillColor:(_xmlNode *)a3 forTarget:(id)a4 state:(id)a5
{
  v6 = a5;
  v7 = OCXFindChild(a3, WXWord2010Namespace, "srgbClr");
  if (v7)
  {
    v19 = 0;
    v8 = CXOptionalStringAttribute(v7, WXWord2010Namespace, "val", &v19);
    v9 = v19;
    if (v8)
    {
      v10 = [WXShading getColorFromString:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v11 = OCXFindChild(a3, WXWord2010Namespace, "schemeClr");
    if (!v11)
    {
      v10 = 0;
      goto LABEL_14;
    }

    v9 = [v6 drawingState];
    v18 = 0;
    v12 = CXOptionalStringAttribute(v11, WXWord2010Namespace, "val", &v18);
    v13 = v18;
    if (v12)
    {
      v14 = [OAXColor readPresetColorFromAttribute:v13];
      if (v14 || ([OAXColor readSchemeColorFromAttribute:v13], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v15 = [v9 colorMap];
        v16 = [v9 colorScheme];
        v10 = [OADColor tsuColorWithColor:v14 colorMap:v15 colorScheme:v16 colorPalette:0];
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

+ (BOOL)readBooleanCharacterProperty:(_xmlNode *)a3 propertyName:(const char *)a4 attributeName:(const char *)a5 outValue:(int *)a6 state:(id)a7
{
  v10 = 0;
  BoolOnlyProperty = wmxmlGetBoolOnlyProperty(a3, a4, a5, &v10, a7);
  if (BoolOnlyProperty)
  {
    *a6 = v10;
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