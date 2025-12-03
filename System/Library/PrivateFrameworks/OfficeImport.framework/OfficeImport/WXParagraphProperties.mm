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
+ (void)readFrom:(_xmlNode *)from to:(id)to readBaseStyle:(BOOL)style state:(id)state;
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

+ (void)readFrom:(_xmlNode *)from to:(id)to readBaseStyle:(BOOL)style state:(id)state
{
  styleCopy = style;
  toCopy = to;
  stateCopy = state;
  fromCopy = from;
  if (!from)
  {
    goto LABEL_171;
  }

  v158 = toCopy;
  document = [toCopy document];
  styleSheet = [document styleSheet];

  [v158 setResolveMode:0];
  wXMainNamespace = [(WXReadState *)stateCopy WXMainNamespace];
  v13 = OCXFindChild(from, wXMainNamespace, "pPrChange");

  if (v13)
  {
    wXMainNamespace2 = [(WXReadState *)stateCopy WXMainNamespace];
    v15 = OCXFindChild(v13, wXMainNamespace2, "pPr");

    if (v15)
    {
      [WXParagraphProperties readFrom:v15 to:v158 readBaseStyle:styleCopy state:stateCopy];
      if ([v158 isBaseStyleOverridden])
      {
        baseStyle = [v158 baseStyle];
      }

      else
      {
        baseStyle = 0;
      }

      [v158 setResolveMode:{1, styleSheet}];
      [v158 setFormattingChanged:1];
      if (baseStyle)
      {
        [v158 setBaseStyle:baseStyle];
      }
    }
  }

  if (styleCopy)
  {
    wXMainNamespace3 = [(WXReadState *)stateCopy WXMainNamespace];
    v18 = OCXFindChild(fromCopy, wXMainNamespace3, "pStyle");

    if (v18)
    {
      wXMainNamespace4 = [(WXReadState *)stateCopy WXMainNamespace];
      v20 = CXDefaultStringAttribute(v18, wXMainNamespace4, "val", 0);

      v21 = [styleSheet styleWithId:v20];
      [v158 setBaseStyle:v21];
    }
  }

  v173 = 0;
  heightRuleEnumMap = [self heightRuleEnumMap];
  v23 = readEnumProperty<WDHeightRule>(fromCopy, "framePr", "hRule", heightRuleEnumMap, &v173, stateCopy);

  if (v23)
  {
    [v158 setHeightRule:v173];
  }

  v172 = 0;
  horizontalAnchorEnumMap = [self horizontalAnchorEnumMap];
  v25 = readEnumProperty<WDHorizontalAnchor>(fromCopy, "framePr", "hAnchor", horizontalAnchorEnumMap, &v172, stateCopy);

  if (v25)
  {
    [v158 setHorizontalAnchor:v172];
  }

  v171 = 0;
  verticalAnchorEnumMap = [self verticalAnchorEnumMap];
  v27 = readEnumProperty<WDVerticalAnchor>(fromCopy, "framePr", "vAnchor", verticalAnchorEnumMap, &v171, stateCopy);

  if (v27)
  {
    [v158 setVerticalAnchor:v171];
  }

  v170 = 0;
  wrapCodeEnumMap = [self wrapCodeEnumMap];
  v29 = readEnumProperty<char>(fromCopy, "framePr", "wrap", wrapCodeEnumMap, &v170, stateCopy);

  if (v29)
  {
    [v158 setWrapCode:v170];
  }

  v169 = 0;
  lineSpacingEnumMap = [self lineSpacingEnumMap];
  v31 = readEnumProperty<WDLineSpacingRule>(fromCopy, "spacing", "lineRule", lineSpacingEnumMap, &v169, stateCopy);

  if (v31)
  {
    [v158 setLineSpacingRule:v169];
  }

  v168 = 0;
  v32 = +[WXCommon justifyEnumMap];
  if (readEnumProperty<WDJustification>(fromCopy, "jc", "val", v32, &v168, stateCopy))
  {
  }

  else
  {
    v33 = +[WXCommon strictJustifyEnumMap];
    v34 = readEnumProperty<WDJustification>(fromCopy, "jc", "val", v33, &v168, stateCopy);

    if (!v34)
    {
      goto LABEL_27;
    }
  }

  [v158 setJustification:v168];
LABEL_27:
  v167 = 0;
  if (wmxmlGetBoolOnlyProperty(fromCopy, "pageBreakBefore", "val", &v167, stateCopy))
  {
    [v158 setPageBreakBefore:v167];
  }

  if (wmxmlGetBoolOnlyProperty(fromCopy, "wordWrap", "val", &v167, stateCopy))
  {
    [v158 setWrap:v167];
  }

  if (wmxmlGetBoolProperty(fromCopy, "framePr", "anchorLock", &v167, stateCopy))
  {
    [v158 setAnchorLock:v167];
  }

  if (wmxmlGetBoolOnlyProperty(fromCopy, "keepNext", "val", &v167, stateCopy))
  {
    [v158 setKeepNextParagraphTogether:v167];
  }

  if (wmxmlGetBoolOnlyProperty(fromCopy, "keepLines", "val", &v167, stateCopy))
  {
    [v158 setKeepLinesTogether:v167];
  }

  if (wmxmlGetBoolOnlyProperty(fromCopy, "suppressLineNumbers", "val", &v167, stateCopy))
  {
    [v158 setSuppressLineNumbers:v167];
  }

  if (wmxmlGetBoolOnlyProperty(fromCopy, "suppressAutoHyphens", "val", &v167, stateCopy))
  {
    [v158 setSuppressAutoHyphens:v167];
  }

  if (wmxmlGetBoolOnlyProperty(fromCopy, "widowControl", "val", &v167, stateCopy))
  {
    [v158 setWidowControl:v167];
  }

  if (wmxmlGetBoolOnlyProperty(fromCopy, "bidi", "val", &v167, stateCopy))
  {
    [v158 setBiDi:v167];
  }

  if (wmxmlGetBoolOnlyProperty(fromCopy, "kinsoku", "val", &v167, stateCopy))
  {
    [v158 setKinsokuOff:!v167];
  }

  if (wmxmlGetBoolOnlyProperty(fromCopy, "beforeAutospacing", "val", &v167, stateCopy))
  {
    [v158 setSpaceBeforeAuto:v167];
  }

  if (wmxmlGetBoolOnlyProperty(fromCopy, "afterAutospacing", "val", &v167, stateCopy))
  {
    [v158 setSpaceAfterAuto:v167];
  }

  if (wmxmlGetBoolOnlyProperty(fromCopy, "contextualSpacing", "val", &v167, stateCopy))
  {
    [v158 setContextualSpacing:v167];
  }

  v166 = 0;
  wXMainNamespace5 = [(WXReadState *)stateCopy WXMainNamespace];
  v36 = OCXFindChild(fromCopy, wXMainNamespace5, "framePr");

  wXMainNamespace6 = [(WXReadState *)stateCopy WXMainNamespace];
  v38 = CXOptionalLongAttribute(v36, wXMainNamespace6, "w", &v166, 14);

  if (v38)
  {
    [v158 setWidth:v166];
  }

  wXMainNamespace7 = [(WXReadState *)stateCopy WXMainNamespace];
  v40 = CXOptionalLongAttribute(v36, wXMainNamespace7, "h", &v166, 14);

  if (v40)
  {
    [v158 setHeight:v166];
  }

  wXMainNamespace8 = [(WXReadState *)stateCopy WXMainNamespace];
  v42 = CXOptionalLongAttribute(v36, wXMainNamespace8, "vSpace", &v166, 14);

  if (v42)
  {
    [v158 setVerticalSpace:v166];
  }

  wXMainNamespace9 = [(WXReadState *)stateCopy WXMainNamespace];
  v44 = CXOptionalLongAttribute(v36, wXMainNamespace9, "hSpace", &v166, 14);

  if (v44)
  {
    [v158 setHorizontalSpace:v166];
  }

  wXMainNamespace10 = [(WXReadState *)stateCopy WXMainNamespace];
  v46 = CXOptionalLongAttribute(v36, wXMainNamespace10, "x", &v166, 14);

  if (v46)
  {
    [v158 setHorizontalPosition:v166];
  }

  if (([v158 isHorizontalPositionOverridden] & 1) == 0)
  {
    wXMainNamespace11 = [(WXReadState *)stateCopy WXMainNamespace];
    v165 = 0;
    v48 = CXOptionalStringAttribute(v36, wXMainNamespace11, "xAlign", &v165);
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

  wXMainNamespace12 = [(WXReadState *)stateCopy WXMainNamespace];
  v52 = CXOptionalLongAttribute(v36, wXMainNamespace12, "y", &v166, 14);

  if (v52)
  {
    [v158 setVerticalPosition:v166];
  }

  if (([v158 isVerticalPositionOverridden] & 1) == 0)
  {
    wXMainNamespace13 = [(WXReadState *)stateCopy WXMainNamespace];
    v164 = 0;
    v54 = CXOptionalStringAttribute(v36, wXMainNamespace13, "yAlign", &v164);
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

  wXMainNamespace14 = [(WXReadState *)stateCopy WXMainNamespace];
  v58 = OCXFindChild(fromCopy, wXMainNamespace14, "spacing");

  wXMainNamespace15 = [(WXReadState *)stateCopy WXMainNamespace];
  v60 = CXOptionalLongAttribute(v58, wXMainNamespace15, "line", &v166, 14);

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

  wXMainNamespace16 = [(WXReadState *)stateCopy WXMainNamespace];
  v63 = CXOptionalLongAttribute(v58, wXMainNamespace16, "before", &v166, 14);

  if (v63)
  {
    [v158 setSpaceBefore:v166];
  }

  wXMainNamespace17 = [(WXReadState *)stateCopy WXMainNamespace];
  v65 = CXOptionalLongAttribute(v58, wXMainNamespace17, "after", &v166, 14);

  if (v65)
  {
    [v158 setSpaceAfter:v166];
  }

  wXMainNamespace18 = [(WXReadState *)stateCopy WXMainNamespace];
  v67 = OCXFindChild(fromCopy, wXMainNamespace18, "outlineLvl");

  wXMainNamespace19 = [(WXReadState *)stateCopy WXMainNamespace];
  LODWORD(v67) = CXOptionalLongAttribute(v67, wXMainNamespace19, "val", &v166);

  if (v67)
  {
    [v158 setOutlineLevel:v166];
  }

  wXMainNamespace20 = [(WXReadState *)stateCopy WXMainNamespace];
  v70 = OCXFindChild(fromCopy, wXMainNamespace20, "ind");

  wXMainNamespace21 = [(WXReadState *)stateCopy WXMainNamespace];
  if (CXOptionalLongAttribute(v70, wXMainNamespace21, "left", &v166, 14))
  {

LABEL_108:
    [v158 setLeadingIndent:v166];
    goto LABEL_109;
  }

  wXMainNamespace22 = [(WXReadState *)stateCopy WXMainNamespace];
  v73 = CXOptionalLongAttribute(v70, wXMainNamespace22, "start", &v166, 14);

  if (v73)
  {
    goto LABEL_108;
  }

  wXMainNamespace23 = [(WXReadState *)stateCopy WXMainNamespace];
  if (CXOptionalLongAttribute(v70, wXMainNamespace23, "leftChars", &v166))
  {
  }

  else
  {
    wXMainNamespace24 = [(WXReadState *)stateCopy WXMainNamespace];
    v149 = CXOptionalLongAttribute(v70, wXMainNamespace24, "startChars", &v166);

    if (!v149)
    {
      goto LABEL_109;
    }
  }

  [v158 setLeftIndentChars:v166];
LABEL_109:
  wXMainNamespace25 = [(WXReadState *)stateCopy WXMainNamespace];
  if (CXOptionalLongAttribute(v70, wXMainNamespace25, "right", &v166, 14))
  {

LABEL_112:
    [v158 setFollowingIndent:v166];
    goto LABEL_113;
  }

  wXMainNamespace26 = [(WXReadState *)stateCopy WXMainNamespace];
  v76 = CXOptionalLongAttribute(v70, wXMainNamespace26, "end", &v166, 14);

  if (v76)
  {
    goto LABEL_112;
  }

  wXMainNamespace27 = [(WXReadState *)stateCopy WXMainNamespace];
  if (CXOptionalLongAttribute(v70, wXMainNamespace27, "rightChars", &v166))
  {
  }

  else
  {
    wXMainNamespace28 = [(WXReadState *)stateCopy WXMainNamespace];
    v151 = CXOptionalLongAttribute(v70, wXMainNamespace28, "endChars", &v166);

    if (!v151)
    {
      goto LABEL_113;
    }
  }

  [v158 setRightIndentChars:v166];
LABEL_113:
  v162 = 0;
  v163 = 0;
  wXMainNamespace29 = [(WXReadState *)stateCopy WXMainNamespace];
  v78 = CXOptionalLongAttribute(v70, wXMainNamespace29, "firstLine", &v163, 14);

  if (!v78)
  {
    wXMainNamespace30 = [(WXReadState *)stateCopy WXMainNamespace];
    v81 = CXOptionalLongAttribute(v70, wXMainNamespace30, "firstLineChars", &v163);

    if (v81)
    {
      LOWORD(v82) = v163;
    }

    else
    {
      wXMainNamespace31 = [(WXReadState *)stateCopy WXMainNamespace];
      v145 = CXOptionalLongAttribute(v70, wXMainNamespace31, "hanging", &v162, 14);

      if (v145)
      {
        v79 = -v162;
        goto LABEL_115;
      }

      wXMainNamespace32 = [(WXReadState *)stateCopy WXMainNamespace];
      v153 = CXOptionalLongAttribute(v70, wXMainNamespace32, "hangingChars", &v162);

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
  dropCapEnumMap = [self dropCapEnumMap];
  v84 = readEnumProperty<WDDropCapStyle>(fromCopy, "framePr", "dropCap", dropCapEnumMap, &v161, stateCopy);

  if (v84)
  {
    wXMainNamespace33 = [(WXReadState *)stateCopy WXMainNamespace];
    v86 = CXDefaultLongAttribute(v36, wXMainNamespace33, "lines", 0);

    [v158 setDropCap:v161 | (v86 << 8)];
  }

  wXMainNamespace34 = [(WXReadState *)stateCopy WXMainNamespace];
  v88 = OCXFindChild(fromCopy, wXMainNamespace34, "pBdr");

  if (v88)
  {
    wXMainNamespace35 = [(WXReadState *)stateCopy WXMainNamespace];
    v90 = OCXFindChild(v88, wXMainNamespace35, "top");

    if (v90)
    {
      mutableTopBorder = [v158 mutableTopBorder];
      [WXBorder readFrom:v90 to:mutableTopBorder state:stateCopy];
    }

    wXMainNamespace36 = [(WXReadState *)stateCopy WXMainNamespace];
    v93 = OCXFindChild(v88, wXMainNamespace36, "left");

    if (v93)
    {
      mutableLeftBorder = [v158 mutableLeftBorder];
      [WXBorder readFrom:v93 to:mutableLeftBorder state:stateCopy];
    }

    wXMainNamespace37 = [(WXReadState *)stateCopy WXMainNamespace];
    v96 = OCXFindChild(v88, wXMainNamespace37, "bottom");

    if (v96)
    {
      mutableBottomBorder = [v158 mutableBottomBorder];
      [WXBorder readFrom:v96 to:mutableBottomBorder state:stateCopy];
    }

    wXMainNamespace38 = [(WXReadState *)stateCopy WXMainNamespace];
    v99 = OCXFindChild(v88, wXMainNamespace38, "right");

    if (v99)
    {
      mutableRightBorder = [v158 mutableRightBorder];
      [WXBorder readFrom:v99 to:mutableRightBorder state:stateCopy];
    }

    wXMainNamespace39 = [(WXReadState *)stateCopy WXMainNamespace];
    v102 = OCXFindChild(v88, wXMainNamespace39, "between");

    if (v102)
    {
      mutableBetweenBorder = [v158 mutableBetweenBorder];
      [WXBorder readFrom:v102 to:mutableBetweenBorder state:stateCopy];
    }

    wXMainNamespace40 = [(WXReadState *)stateCopy WXMainNamespace];
    v105 = OCXFindChild(v88, wXMainNamespace40, "bar");

    if (v105)
    {
      mutableBarBorder = [v158 mutableBarBorder];
      [WXBorder readFrom:v105 to:mutableBarBorder state:stateCopy];
    }
  }

  wXMainNamespace41 = [(WXReadState *)stateCopy WXMainNamespace];
  v108 = OCXFindChild(fromCopy, wXMainNamespace41, "shd");

  if (v108)
  {
    mutableShading = [v158 mutableShading];
    [WXShading readFrom:v108 to:mutableShading state:stateCopy];
  }

  wXMainNamespace42 = [(WXReadState *)stateCopy WXMainNamespace];
  v111 = OCXFindChild(fromCopy, wXMainNamespace42, "tabs");

  if (v111)
  {
    wXMainNamespace43 = [(WXReadState *)stateCopy WXMainNamespace];
    Child = OCXFindChild(v111, wXMainNamespace43, "tab");

    while (Child)
    {
      wXMainNamespace44 = [(WXReadState *)stateCopy WXMainNamespace];
      v166 = CXRequiredLongAttribute(Child, wXMainNamespace44, "pos", 14);

      LOWORD(v160) = v166;
      tabTypeEnumMap = [self tabTypeEnumMap];
      Enum = readEnumProperty<unsigned char>(Child, "val", tabTypeEnumMap, &v160 + 2);

      if (Enum)
      {
        v117 = 1;
      }

      else
      {
        strictTabTypeEnumMap = [self strictTabTypeEnumMap];
        v117 = readEnumProperty<unsigned char>(Child, "val", strictTabTypeEnumMap, &v160 + 2);
      }

      tabLeaderEnumMap = [self tabLeaderEnumMap];
      v120 = readEnumProperty<unsigned char>(Child, "leader", tabLeaderEnumMap, &v160 + 3);

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

      wXMainNamespace45 = [(WXReadState *)stateCopy WXMainNamespace];
      Child = OCXFindNextChild(Child, wXMainNamespace45, "tab");
    }
  }

  wXMainNamespace46 = [(WXReadState *)stateCopy WXMainNamespace];
  v124 = OCXFindChild(fromCopy, wXMainNamespace46, "numPr");

  if (v124)
  {
    v160 = 0;
    wXMainNamespace47 = [(WXReadState *)stateCopy WXMainNamespace];
    v126 = OCXFindChild(v124, wXMainNamespace47, "ilvl");

    wXMainNamespace48 = [(WXReadState *)stateCopy WXMainNamespace];
    v128 = CXOptionalLongAttribute(v126, wXMainNamespace48, "val", &v160);

    if (v128)
    {
      [v158 setListLevel:v160];
    }

    v159 = 0;
    wXMainNamespace49 = [(WXReadState *)stateCopy WXMainNamespace];
    v130 = OCXFindChild(v124, wXMainNamespace49, "numId");

    wXMainNamespace50 = [(WXReadState *)stateCopy WXMainNamespace];
    v132 = CXOptionalLongAttribute(v130, wXMainNamespace50, "val", &v159);

    if (v132)
    {
      [v158 setListIndex:v159];
    }
  }

  wXMainNamespace51 = [(WXReadState *)stateCopy WXMainNamespace];
  v134 = OCXFindChild(fromCopy, wXMainNamespace51, "rPr");

  if (v134)
  {
    mutableCharacterProperties = [v158 mutableCharacterProperties];
    [WXCharacterProperties readFrom:v134 to:mutableCharacterProperties state:stateCopy];
  }

  wXMainNamespace52 = [(WXReadState *)stateCopy WXMainNamespace];
  v137 = OCXFindChild(fromCopy, wXMainNamespace52, "sectPr");

  if (v137)
  {
    document2 = [(WXReadState *)stateCopy document];
    lastSection = [document2 lastSection];
    [WXSection readFrom:v137 to:lastSection state:stateCopy];

    [(WXReadState *)stateCopy setNewSectionRequested:1];
  }

  if ([v158 resolveMode] == 1)
  {
    [v158 setResolveMode:2];
    if ([v158 isBaseStyleOverridden])
    {
      baseStyle2 = [v158 baseStyle];
      paragraphProperties = [baseStyle2 paragraphProperties];
    }

    else
    {
      baseStyle2 = [(WXReadState *)stateCopy document];
      styleSheet2 = [baseStyle2 styleSheet];
      defaultParagraphStyle = [styleSheet2 defaultParagraphStyle];
      paragraphProperties = [defaultParagraphStyle paragraphProperties];
    }

    [v158 negateFormattingChangesWithDefaults:paragraphProperties];
  }

  toCopy = v158;
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