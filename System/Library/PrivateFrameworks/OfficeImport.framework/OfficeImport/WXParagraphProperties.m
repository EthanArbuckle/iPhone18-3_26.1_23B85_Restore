@interface WXParagraphProperties
+ (id)dropCapEnumMap;
+ (id)heightRuleEnumMap;
+ (id)horizontalAnchorEnumMap;
+ (id)lineSpacingEnumMap;
+ (id)strictTabTypeEnumMap;
+ (id)tabLeaderEnumMap;
+ (id)tabTypeEnumMap;
+ (id)verticalAnchorEnumMap;
+ (id)wrapCodeEnumMap;
+ (void)dropCapEnumMap;
+ (void)heightRuleEnumMap;
+ (void)horizontalAnchorEnumMap;
+ (void)lineSpacingEnumMap;
+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 readBaseStyle:(BOOL)a5 state:(id)a6;
+ (void)strictTabTypeEnumMap;
+ (void)tabLeaderEnumMap;
+ (void)tabTypeEnumMap;
+ (void)verticalAnchorEnumMap;
+ (void)wrapCodeEnumMap;
@end

@implementation WXParagraphProperties

+ (id)heightRuleEnumMap
{
  {
    +[WXParagraphProperties heightRuleEnumMap];
  }

  if (+[WXParagraphProperties heightRuleEnumMap]::onceToken != -1)
  {
    +[WXParagraphProperties heightRuleEnumMap];
  }

  v2 = +[WXParagraphProperties heightRuleEnumMap]::sHeightRuleEnumMap;

  return v2;
}

void __42__WXParagraphProperties_heightRuleEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXParagraphProperties heightRuleEnumMap]::sHeightRuleEnumStructs count:2 caseSensitive:1];
  v1 = +[WXParagraphProperties heightRuleEnumMap]::sHeightRuleEnumMap;
  +[WXParagraphProperties heightRuleEnumMap]::sHeightRuleEnumMap = v0;
}

+ (id)verticalAnchorEnumMap
{
  {
    +[WXParagraphProperties verticalAnchorEnumMap];
  }

  if (+[WXParagraphProperties verticalAnchorEnumMap]::onceToken != -1)
  {
    +[WXParagraphProperties verticalAnchorEnumMap];
  }

  v2 = +[WXParagraphProperties verticalAnchorEnumMap]::sVerticalAnchorEnumMap;

  return v2;
}

void __46__WXParagraphProperties_verticalAnchorEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXParagraphProperties verticalAnchorEnumMap]::sVerticalAnchorEnumStructs count:3 caseSensitive:1];
  v1 = +[WXParagraphProperties verticalAnchorEnumMap]::sVerticalAnchorEnumMap;
  +[WXParagraphProperties verticalAnchorEnumMap]::sVerticalAnchorEnumMap = v0;
}

+ (id)horizontalAnchorEnumMap
{
  {
    +[WXParagraphProperties horizontalAnchorEnumMap];
  }

  if (+[WXParagraphProperties horizontalAnchorEnumMap]::onceToken != -1)
  {
    +[WXParagraphProperties horizontalAnchorEnumMap];
  }

  v2 = +[WXParagraphProperties horizontalAnchorEnumMap]::sHorizontalAnchorEnumMap;

  return v2;
}

void __48__WXParagraphProperties_horizontalAnchorEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXParagraphProperties horizontalAnchorEnumMap]::sHorizontalAnchorEnumStructs count:3 caseSensitive:1];
  v1 = +[WXParagraphProperties horizontalAnchorEnumMap]::sHorizontalAnchorEnumMap;
  +[WXParagraphProperties horizontalAnchorEnumMap]::sHorizontalAnchorEnumMap = v0;
}

+ (id)lineSpacingEnumMap
{
  {
    +[WXParagraphProperties lineSpacingEnumMap];
  }

  if (+[WXParagraphProperties lineSpacingEnumMap]::onceToken != -1)
  {
    +[WXParagraphProperties lineSpacingEnumMap];
  }

  v2 = +[WXParagraphProperties lineSpacingEnumMap]::sLineSpacingEnumMap;

  return v2;
}

void __43__WXParagraphProperties_lineSpacingEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXParagraphProperties lineSpacingEnumMap]::sLineSpacingEnumStructs count:3 caseSensitive:1];
  v1 = +[WXParagraphProperties lineSpacingEnumMap]::sLineSpacingEnumMap;
  +[WXParagraphProperties lineSpacingEnumMap]::sLineSpacingEnumMap = v0;
}

+ (id)dropCapEnumMap
{
  {
    +[WXParagraphProperties dropCapEnumMap];
  }

  if (+[WXParagraphProperties dropCapEnumMap]::onceToken != -1)
  {
    +[WXParagraphProperties dropCapEnumMap];
  }

  v2 = +[WXParagraphProperties dropCapEnumMap]::sDropCapEnumMap;

  return v2;
}

void __39__WXParagraphProperties_dropCapEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXParagraphProperties dropCapEnumMap]::sDropCapEnumStructs count:3 caseSensitive:1];
  v1 = +[WXParagraphProperties dropCapEnumMap]::sDropCapEnumMap;
  +[WXParagraphProperties dropCapEnumMap]::sDropCapEnumMap = v0;
}

+ (id)tabTypeEnumMap
{
  {
    +[WXParagraphProperties tabTypeEnumMap];
  }

  if (+[WXParagraphProperties tabTypeEnumMap]::onceToken != -1)
  {
    +[WXParagraphProperties tabTypeEnumMap];
  }

  v2 = +[WXParagraphProperties tabTypeEnumMap]::sTabTypeEnumMap;

  return v2;
}

void __39__WXParagraphProperties_tabTypeEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXParagraphProperties tabTypeEnumMap]::sTabTypeEnumStructs count:7 caseSensitive:1];
  v1 = +[WXParagraphProperties tabTypeEnumMap]::sTabTypeEnumMap;
  +[WXParagraphProperties tabTypeEnumMap]::sTabTypeEnumMap = v0;
}

+ (id)strictTabTypeEnumMap
{
  {
    +[WXParagraphProperties strictTabTypeEnumMap];
  }

  if (+[WXParagraphProperties strictTabTypeEnumMap]::onceToken != -1)
  {
    +[WXParagraphProperties strictTabTypeEnumMap];
  }

  v2 = +[WXParagraphProperties strictTabTypeEnumMap]::sStrictTabTypeEnumMap;

  return v2;
}

void __45__WXParagraphProperties_strictTabTypeEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXParagraphProperties strictTabTypeEnumMap]::sStrictTabTypeEnumStructs count:7 caseSensitive:1];
  v1 = +[WXParagraphProperties strictTabTypeEnumMap]::sStrictTabTypeEnumMap;
  +[WXParagraphProperties strictTabTypeEnumMap]::sStrictTabTypeEnumMap = v0;
}

+ (id)tabLeaderEnumMap
{
  {
    +[WXParagraphProperties tabLeaderEnumMap];
  }

  if (+[WXParagraphProperties tabLeaderEnumMap]::onceToken != -1)
  {
    +[WXParagraphProperties tabLeaderEnumMap];
  }

  v2 = +[WXParagraphProperties tabLeaderEnumMap]::sTabLeaderEnumMap;

  return v2;
}

void __41__WXParagraphProperties_tabLeaderEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXParagraphProperties tabLeaderEnumMap]::sTabLeaderEnumStructs count:8 caseSensitive:1];
  v1 = +[WXParagraphProperties tabLeaderEnumMap]::sTabLeaderEnumMap;
  +[WXParagraphProperties tabLeaderEnumMap]::sTabLeaderEnumMap = v0;
}

+ (id)wrapCodeEnumMap
{
  {
    +[WXParagraphProperties wrapCodeEnumMap];
  }

  if (+[WXParagraphProperties wrapCodeEnumMap]::onceToken != -1)
  {
    +[WXParagraphProperties wrapCodeEnumMap];
  }

  v2 = +[WXParagraphProperties wrapCodeEnumMap]::sWrapCodeEnumMap;

  return v2;
}

void __40__WXParagraphProperties_wrapCodeEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXParagraphProperties wrapCodeEnumMap]::sWrapCodeEnumStructs count:2 caseSensitive:1];
  v1 = +[WXParagraphProperties wrapCodeEnumMap]::sWrapCodeEnumMap;
  +[WXParagraphProperties wrapCodeEnumMap]::sWrapCodeEnumMap = v0;
}

+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 readBaseStyle:(BOOL)a5 state:(id)a6
{
  v7 = a5;
  v9 = a4;
  v10 = a6;
  v156 = a3;
  if (!a3)
  {
    goto LABEL_171;
  }

  v158 = v9;
  v11 = [v9 document];
  v154 = [v11 styleSheet];

  [v158 setResolveMode:0];
  v12 = [(WXReadState *)v10 WXMainNamespace];
  v13 = OCXFindChild(a3, v12, "pPrChange");

  if (v13)
  {
    v14 = [(WXReadState *)v10 WXMainNamespace];
    v15 = OCXFindChild(v13, v14, "pPr");

    if (v15)
    {
      [WXParagraphProperties readFrom:v15 to:v158 readBaseStyle:v7 state:v10];
      if ([v158 isBaseStyleOverridden])
      {
        v16 = [v158 baseStyle];
      }

      else
      {
        v16 = 0;
      }

      [v158 setResolveMode:{1, v154}];
      [v158 setFormattingChanged:1];
      if (v16)
      {
        [v158 setBaseStyle:v16];
      }
    }
  }

  if (v7)
  {
    v17 = [(WXReadState *)v10 WXMainNamespace];
    v18 = OCXFindChild(v156, v17, "pStyle");

    if (v18)
    {
      v19 = [(WXReadState *)v10 WXMainNamespace];
      v20 = CXDefaultStringAttribute(v18, v19, "val", 0);

      v21 = [v154 styleWithId:v20];
      [v158 setBaseStyle:v21];
    }
  }

  v173 = 0;
  v22 = [a1 heightRuleEnumMap];
  v23 = readEnumProperty<WDHeightRule>(v156, "framePr", "hRule", v22, &v173, v10);

  if (v23)
  {
    [v158 setHeightRule:v173];
  }

  v172 = 0;
  v24 = [a1 horizontalAnchorEnumMap];
  v25 = readEnumProperty<WDHorizontalAnchor>(v156, "framePr", "hAnchor", v24, &v172, v10);

  if (v25)
  {
    [v158 setHorizontalAnchor:v172];
  }

  v171 = 0;
  v26 = [a1 verticalAnchorEnumMap];
  v27 = readEnumProperty<WDVerticalAnchor>(v156, "framePr", "vAnchor", v26, &v171, v10);

  if (v27)
  {
    [v158 setVerticalAnchor:v171];
  }

  v170 = 0;
  v28 = [a1 wrapCodeEnumMap];
  v29 = readEnumProperty<char>(v156, "framePr", "wrap", v28, &v170, v10);

  if (v29)
  {
    [v158 setWrapCode:v170];
  }

  v169 = 0;
  v30 = [a1 lineSpacingEnumMap];
  v31 = readEnumProperty<WDLineSpacingRule>(v156, "spacing", "lineRule", v30, &v169, v10);

  if (v31)
  {
    [v158 setLineSpacingRule:v169];
  }

  v168 = 0;
  v32 = +[WXCommon justifyEnumMap];
  if (readEnumProperty<WDJustification>(v156, "jc", "val", v32, &v168, v10))
  {
  }

  else
  {
    v33 = +[WXCommon strictJustifyEnumMap];
    v34 = readEnumProperty<WDJustification>(v156, "jc", "val", v33, &v168, v10);

    if (!v34)
    {
      goto LABEL_27;
    }
  }

  [v158 setJustification:v168];
LABEL_27:
  v167 = 0;
  if (wmxmlGetBoolOnlyProperty(v156, "pageBreakBefore", "val", &v167, v10))
  {
    [v158 setPageBreakBefore:v167];
  }

  if (wmxmlGetBoolOnlyProperty(v156, "wordWrap", "val", &v167, v10))
  {
    [v158 setWrap:v167];
  }

  if (wmxmlGetBoolProperty(v156, "framePr", "anchorLock", &v167, v10))
  {
    [v158 setAnchorLock:v167];
  }

  if (wmxmlGetBoolOnlyProperty(v156, "keepNext", "val", &v167, v10))
  {
    [v158 setKeepNextParagraphTogether:v167];
  }

  if (wmxmlGetBoolOnlyProperty(v156, "keepLines", "val", &v167, v10))
  {
    [v158 setKeepLinesTogether:v167];
  }

  if (wmxmlGetBoolOnlyProperty(v156, "suppressLineNumbers", "val", &v167, v10))
  {
    [v158 setSuppressLineNumbers:v167];
  }

  if (wmxmlGetBoolOnlyProperty(v156, "suppressAutoHyphens", "val", &v167, v10))
  {
    [v158 setSuppressAutoHyphens:v167];
  }

  if (wmxmlGetBoolOnlyProperty(v156, "widowControl", "val", &v167, v10))
  {
    [v158 setWidowControl:v167];
  }

  if (wmxmlGetBoolOnlyProperty(v156, "bidi", "val", &v167, v10))
  {
    [v158 setBiDi:v167];
  }

  if (wmxmlGetBoolOnlyProperty(v156, "kinsoku", "val", &v167, v10))
  {
    [v158 setKinsokuOff:!v167];
  }

  if (wmxmlGetBoolOnlyProperty(v156, "beforeAutospacing", "val", &v167, v10))
  {
    [v158 setSpaceBeforeAuto:v167];
  }

  if (wmxmlGetBoolOnlyProperty(v156, "afterAutospacing", "val", &v167, v10))
  {
    [v158 setSpaceAfterAuto:v167];
  }

  if (wmxmlGetBoolOnlyProperty(v156, "contextualSpacing", "val", &v167, v10))
  {
    [v158 setContextualSpacing:v167];
  }

  v166 = 0;
  v35 = [(WXReadState *)v10 WXMainNamespace];
  v36 = OCXFindChild(v156, v35, "framePr");

  v37 = [(WXReadState *)v10 WXMainNamespace];
  v38 = CXOptionalLongAttribute(v36, v37, "w", &v166, 14);

  if (v38)
  {
    [v158 setWidth:v166];
  }

  v39 = [(WXReadState *)v10 WXMainNamespace];
  v40 = CXOptionalLongAttribute(v36, v39, "h", &v166, 14);

  if (v40)
  {
    [v158 setHeight:v166];
  }

  v41 = [(WXReadState *)v10 WXMainNamespace];
  v42 = CXOptionalLongAttribute(v36, v41, "vSpace", &v166, 14);

  if (v42)
  {
    [v158 setVerticalSpace:v166];
  }

  v43 = [(WXReadState *)v10 WXMainNamespace];
  v44 = CXOptionalLongAttribute(v36, v43, "hSpace", &v166, 14);

  if (v44)
  {
    [v158 setHorizontalSpace:v166];
  }

  v45 = [(WXReadState *)v10 WXMainNamespace];
  v46 = CXOptionalLongAttribute(v36, v45, "x", &v166, 14);

  if (v46)
  {
    [v158 setHorizontalPosition:v166];
  }

  if (([v158 isHorizontalPositionOverridden] & 1) == 0)
  {
    v47 = [(WXReadState *)v10 WXMainNamespace];
    v165 = 0;
    v48 = CXOptionalStringAttribute(v36, v47, "xAlign", &v165);
    v49 = v165;

    if (v48)
    {
      if ([v49 isEqualToString:@"left"])
      {
        v50 = 0;
LABEL_75:
        [v158 setHorizontalPosition:v50];
        goto LABEL_76;
      }

      if ([v49 isEqualToString:@"center"])
      {
        v50 = -4;
        goto LABEL_75;
      }

      if ([v49 isEqualToString:@"right"])
      {
        v50 = -8;
        goto LABEL_75;
      }

      if ([v49 isEqualToString:@"inside"])
      {
        v50 = -12;
        goto LABEL_75;
      }

      if ([v49 isEqualToString:@"outside"])
      {
        v50 = -16;
        goto LABEL_75;
      }
    }

LABEL_76:
  }

  v51 = [(WXReadState *)v10 WXMainNamespace];
  v52 = CXOptionalLongAttribute(v36, v51, "y", &v166, 14);

  if (v52)
  {
    [v158 setVerticalPosition:v166];
  }

  if (([v158 isVerticalPositionOverridden] & 1) == 0)
  {
    v53 = [(WXReadState *)v10 WXMainNamespace];
    v164 = 0;
    v54 = CXOptionalStringAttribute(v36, v53, "yAlign", &v164);
    v55 = v164;

    if (v54)
    {
      if ([v55 isEqualToString:@"top"])
      {
        v56 = -4;
LABEL_91:
        [v158 setVerticalPosition:v56];
        goto LABEL_92;
      }

      if ([v55 isEqualToString:@"center"])
      {
        v56 = -8;
        goto LABEL_91;
      }

      if ([v55 isEqualToString:@"bottom"])
      {
        v56 = -12;
        goto LABEL_91;
      }

      if ([v55 isEqualToString:@"inside"])
      {
        v56 = -16;
        goto LABEL_91;
      }

      if ([v55 isEqualToString:@"outside"])
      {
        v56 = -20;
        goto LABEL_91;
      }
    }

LABEL_92:
  }

  v57 = [(WXReadState *)v10 WXMainNamespace];
  v58 = OCXFindChild(v156, v57, "spacing");

  v59 = [(WXReadState *)v10 WXMainNamespace];
  v60 = CXOptionalLongAttribute(v58, v59, "line", &v166, 14);

  if (v60)
  {
    if ([v158 isLineSpacingRuleOverridden] && objc_msgSend(v158, "lineSpacingRule") == 1)
    {
      v61 = -v166;
    }

    else
    {
      LOWORD(v61) = v166;
    }

    [v158 setLineSpacing:v61];
  }

  v62 = [(WXReadState *)v10 WXMainNamespace];
  v63 = CXOptionalLongAttribute(v58, v62, "before", &v166, 14);

  if (v63)
  {
    [v158 setSpaceBefore:v166];
  }

  v64 = [(WXReadState *)v10 WXMainNamespace];
  v65 = CXOptionalLongAttribute(v58, v64, "after", &v166, 14);

  if (v65)
  {
    [v158 setSpaceAfter:v166];
  }

  v66 = [(WXReadState *)v10 WXMainNamespace];
  v67 = OCXFindChild(v156, v66, "outlineLvl");

  v68 = [(WXReadState *)v10 WXMainNamespace];
  LODWORD(v67) = CXOptionalLongAttribute(v67, v68, "val", &v166);

  if (v67)
  {
    [v158 setOutlineLevel:v166];
  }

  v69 = [(WXReadState *)v10 WXMainNamespace];
  v70 = OCXFindChild(v156, v69, "ind");

  v71 = [(WXReadState *)v10 WXMainNamespace];
  if (CXOptionalLongAttribute(v70, v71, "left", &v166, 14))
  {

LABEL_108:
    [v158 setLeadingIndent:v166];
    goto LABEL_109;
  }

  v72 = [(WXReadState *)v10 WXMainNamespace];
  v73 = CXOptionalLongAttribute(v70, v72, "start", &v166, 14);

  if (v73)
  {
    goto LABEL_108;
  }

  v142 = [(WXReadState *)v10 WXMainNamespace];
  if (CXOptionalLongAttribute(v70, v142, "leftChars", &v166))
  {
  }

  else
  {
    v148 = [(WXReadState *)v10 WXMainNamespace];
    v149 = CXOptionalLongAttribute(v70, v148, "startChars", &v166);

    if (!v149)
    {
      goto LABEL_109;
    }
  }

  [v158 setLeftIndentChars:v166];
LABEL_109:
  v74 = [(WXReadState *)v10 WXMainNamespace];
  if (CXOptionalLongAttribute(v70, v74, "right", &v166, 14))
  {

LABEL_112:
    [v158 setFollowingIndent:v166];
    goto LABEL_113;
  }

  v75 = [(WXReadState *)v10 WXMainNamespace];
  v76 = CXOptionalLongAttribute(v70, v75, "end", &v166, 14);

  if (v76)
  {
    goto LABEL_112;
  }

  v143 = [(WXReadState *)v10 WXMainNamespace];
  if (CXOptionalLongAttribute(v70, v143, "rightChars", &v166))
  {
  }

  else
  {
    v150 = [(WXReadState *)v10 WXMainNamespace];
    v151 = CXOptionalLongAttribute(v70, v150, "endChars", &v166);

    if (!v151)
    {
      goto LABEL_113;
    }
  }

  [v158 setRightIndentChars:v166];
LABEL_113:
  v162 = 0;
  v163 = 0;
  v77 = [(WXReadState *)v10 WXMainNamespace];
  v78 = CXOptionalLongAttribute(v70, v77, "firstLine", &v163, 14);

  if (!v78)
  {
    v80 = [(WXReadState *)v10 WXMainNamespace];
    v81 = CXOptionalLongAttribute(v70, v80, "firstLineChars", &v163);

    if (v81)
    {
      LOWORD(v82) = v163;
    }

    else
    {
      v144 = [(WXReadState *)v10 WXMainNamespace];
      v145 = CXOptionalLongAttribute(v70, v144, "hanging", &v162, 14);

      if (v145)
      {
        v79 = -v162;
        goto LABEL_115;
      }

      v152 = [(WXReadState *)v10 WXMainNamespace];
      v153 = CXOptionalLongAttribute(v70, v152, "hangingChars", &v162);

      if (!v153)
      {
        goto LABEL_119;
      }

      v82 = -v162;
    }

    [v158 setFirstLineIndentChars:v82];
    goto LABEL_119;
  }

  LOWORD(v79) = v163;
LABEL_115:
  [v158 setFirstLineIndent:v79];
LABEL_119:
  v161 = 0;
  v83 = [a1 dropCapEnumMap];
  v84 = readEnumProperty<WDDropCapStyle>(v156, "framePr", "dropCap", v83, &v161, v10);

  if (v84)
  {
    v85 = [(WXReadState *)v10 WXMainNamespace];
    v86 = CXDefaultLongAttribute(v36, v85, "lines", 0);

    [v158 setDropCap:v161 | (v86 << 8)];
  }

  v87 = [(WXReadState *)v10 WXMainNamespace];
  v88 = OCXFindChild(v156, v87, "pBdr");

  if (v88)
  {
    v89 = [(WXReadState *)v10 WXMainNamespace];
    v90 = OCXFindChild(v88, v89, "top");

    if (v90)
    {
      v91 = [v158 mutableTopBorder];
      [WXBorder readFrom:v90 to:v91 state:v10];
    }

    v92 = [(WXReadState *)v10 WXMainNamespace];
    v93 = OCXFindChild(v88, v92, "left");

    if (v93)
    {
      v94 = [v158 mutableLeftBorder];
      [WXBorder readFrom:v93 to:v94 state:v10];
    }

    v95 = [(WXReadState *)v10 WXMainNamespace];
    v96 = OCXFindChild(v88, v95, "bottom");

    if (v96)
    {
      v97 = [v158 mutableBottomBorder];
      [WXBorder readFrom:v96 to:v97 state:v10];
    }

    v98 = [(WXReadState *)v10 WXMainNamespace];
    v99 = OCXFindChild(v88, v98, "right");

    if (v99)
    {
      v100 = [v158 mutableRightBorder];
      [WXBorder readFrom:v99 to:v100 state:v10];
    }

    v101 = [(WXReadState *)v10 WXMainNamespace];
    v102 = OCXFindChild(v88, v101, "between");

    if (v102)
    {
      v103 = [v158 mutableBetweenBorder];
      [WXBorder readFrom:v102 to:v103 state:v10];
    }

    v104 = [(WXReadState *)v10 WXMainNamespace];
    v105 = OCXFindChild(v88, v104, "bar");

    if (v105)
    {
      v106 = [v158 mutableBarBorder];
      [WXBorder readFrom:v105 to:v106 state:v10];
    }
  }

  v107 = [(WXReadState *)v10 WXMainNamespace];
  v108 = OCXFindChild(v156, v107, "shd");

  if (v108)
  {
    v109 = [v158 mutableShading];
    [WXShading readFrom:v108 to:v109 state:v10];
  }

  v110 = [(WXReadState *)v10 WXMainNamespace];
  v111 = OCXFindChild(v156, v110, "tabs");

  if (v111)
  {
    v112 = [(WXReadState *)v10 WXMainNamespace];
    Child = OCXFindChild(v111, v112, "tab");

    while (Child)
    {
      v114 = [(WXReadState *)v10 WXMainNamespace];
      v166 = CXRequiredLongAttribute(Child, v114, "pos", 14);

      LOWORD(v160) = v166;
      v115 = [a1 tabTypeEnumMap];
      Enum = readEnumProperty<unsigned char>(Child, "val", v115, &v160 + 2);

      if (Enum)
      {
        v117 = 1;
      }

      else
      {
        v118 = [a1 strictTabTypeEnumMap];
        v117 = readEnumProperty<unsigned char>(Child, "val", v118, &v160 + 2);
      }

      v119 = [a1 tabLeaderEnumMap];
      v120 = readEnumProperty<unsigned char>(Child, "leader", v119, &v160 + 3);

      if ((v120 & 1) == 0)
      {
        BYTE3(v160) = 0;
      }

      if (BYTE2(v160) == 100)
      {
        v121 = v117;
      }

      else
      {
        v121 = 0;
      }

      if (v121 == 1)
      {
        [v158 addTabStopDeletedPosition:v160];
      }

      else
      {
        [v158 addTabStopAdded:&v160];
      }

      v122 = [(WXReadState *)v10 WXMainNamespace];
      Child = OCXFindNextChild(Child, v122, "tab");
    }
  }

  v123 = [(WXReadState *)v10 WXMainNamespace];
  v124 = OCXFindChild(v156, v123, "numPr");

  if (v124)
  {
    v160 = 0;
    v125 = [(WXReadState *)v10 WXMainNamespace];
    v126 = OCXFindChild(v124, v125, "ilvl");

    v127 = [(WXReadState *)v10 WXMainNamespace];
    v128 = CXOptionalLongAttribute(v126, v127, "val", &v160);

    if (v128)
    {
      [v158 setListLevel:v160];
    }

    v159 = 0;
    v129 = [(WXReadState *)v10 WXMainNamespace];
    v130 = OCXFindChild(v124, v129, "numId");

    v131 = [(WXReadState *)v10 WXMainNamespace];
    v132 = CXOptionalLongAttribute(v130, v131, "val", &v159);

    if (v132)
    {
      [v158 setListIndex:v159];
    }
  }

  v133 = [(WXReadState *)v10 WXMainNamespace];
  v134 = OCXFindChild(v156, v133, "rPr");

  if (v134)
  {
    v135 = [v158 mutableCharacterProperties];
    [WXCharacterProperties readFrom:v134 to:v135 state:v10];
  }

  v136 = [(WXReadState *)v10 WXMainNamespace];
  v137 = OCXFindChild(v156, v136, "sectPr");

  if (v137)
  {
    v138 = [(WXReadState *)v10 document];
    v139 = [v138 lastSection];
    [WXSection readFrom:v137 to:v139 state:v10];

    [(WXReadState *)v10 setNewSectionRequested:1];
  }

  if ([v158 resolveMode] == 1)
  {
    [v158 setResolveMode:2];
    if ([v158 isBaseStyleOverridden])
    {
      v140 = [v158 baseStyle];
      v141 = [v140 paragraphProperties];
    }

    else
    {
      v140 = [(WXReadState *)v10 document];
      v146 = [v140 styleSheet];
      v147 = [v146 defaultParagraphStyle];
      v141 = [v147 paragraphProperties];
    }

    [v158 negateFormattingChangesWithDefaults:v141];
  }

  v9 = v158;
LABEL_171:
}

+ (void)heightRuleEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)verticalAnchorEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)horizontalAnchorEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)lineSpacingEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)dropCapEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)tabTypeEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)strictTabTypeEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)tabLeaderEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)wrapCodeEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

@end