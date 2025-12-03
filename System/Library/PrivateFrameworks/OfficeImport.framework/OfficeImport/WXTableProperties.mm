@interface WXTableProperties
+ (id)tableHorizontalAnchorEnumMap;
+ (id)tableHorizontalPositionEnumMap;
+ (id)tableLookBitEnumMap;
+ (id)tableVerticalAnchorEnumMap;
+ (id)tableVerticalPositionEnumMap;
+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state;
+ (void)tableHorizontalAnchorEnumMap;
+ (void)tableHorizontalPositionEnumMap;
+ (void)tableLookBitEnumMap;
+ (void)tableVerticalAnchorEnumMap;
+ (void)tableVerticalPositionEnumMap;
@end

@implementation WXTableProperties

+ (id)tableVerticalAnchorEnumMap
{
  {
    +[WXTableProperties tableVerticalAnchorEnumMap];
  }

  if (+[WXTableProperties tableVerticalAnchorEnumMap]::onceToken != -1)
  {
    +[WXTableProperties tableVerticalAnchorEnumMap];
  }

  v2 = +[WXTableProperties tableVerticalAnchorEnumMap]::sTableVerticalAnchorEnumMap;

  return v2;
}

void __47__WXTableProperties_tableVerticalAnchorEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXTableProperties tableVerticalAnchorEnumMap]::sTableVerticalAnchorEnumStructs count:3 caseSensitive:1];
  v1 = +[WXTableProperties tableVerticalAnchorEnumMap]::sTableVerticalAnchorEnumMap;
  +[WXTableProperties tableVerticalAnchorEnumMap]::sTableVerticalAnchorEnumMap = v0;
}

+ (id)tableHorizontalAnchorEnumMap
{
  {
    +[WXTableProperties tableHorizontalAnchorEnumMap];
  }

  if (+[WXTableProperties tableHorizontalAnchorEnumMap]::onceToken != -1)
  {
    +[WXTableProperties tableHorizontalAnchorEnumMap];
  }

  v2 = +[WXTableProperties tableHorizontalAnchorEnumMap]::sTableHorizontalAnchorEnumMap;

  return v2;
}

void __49__WXTableProperties_tableHorizontalAnchorEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXTableProperties tableHorizontalAnchorEnumMap]::sTableHorizontalAnchorEnumStructs count:3 caseSensitive:1];
  v1 = +[WXTableProperties tableHorizontalAnchorEnumMap]::sTableHorizontalAnchorEnumMap;
  +[WXTableProperties tableHorizontalAnchorEnumMap]::sTableHorizontalAnchorEnumMap = v0;
}

+ (id)tableHorizontalPositionEnumMap
{
  {
    +[WXTableProperties tableHorizontalPositionEnumMap];
  }

  if (+[WXTableProperties tableHorizontalPositionEnumMap]::onceToken != -1)
  {
    +[WXTableProperties tableHorizontalPositionEnumMap];
  }

  v2 = +[WXTableProperties tableHorizontalPositionEnumMap]::sTableHorizontalPositionEnumMap;

  return v2;
}

void __51__WXTableProperties_tableHorizontalPositionEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXTableProperties tableHorizontalPositionEnumMap]::sTableHorizontalPositionEnumStructs count:5 caseSensitive:1];
  v1 = +[WXTableProperties tableHorizontalPositionEnumMap]::sTableHorizontalPositionEnumMap;
  +[WXTableProperties tableHorizontalPositionEnumMap]::sTableHorizontalPositionEnumMap = v0;
}

+ (id)tableVerticalPositionEnumMap
{
  {
    +[WXTableProperties tableVerticalPositionEnumMap];
  }

  if (+[WXTableProperties tableVerticalPositionEnumMap]::onceToken != -1)
  {
    +[WXTableProperties tableVerticalPositionEnumMap];
  }

  v2 = +[WXTableProperties tableVerticalPositionEnumMap]::sTableVerticalPositionEnumMap;

  return v2;
}

void __49__WXTableProperties_tableVerticalPositionEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXTableProperties tableVerticalPositionEnumMap]::sTableVerticalPositionEnumStructs count:5 caseSensitive:1];
  v1 = +[WXTableProperties tableVerticalPositionEnumMap]::sTableVerticalPositionEnumMap;
  +[WXTableProperties tableVerticalPositionEnumMap]::sTableVerticalPositionEnumMap = v0;
}

+ (id)tableLookBitEnumMap
{
  {
    +[WXTableProperties tableLookBitEnumMap];
  }

  if (+[WXTableProperties tableLookBitEnumMap]::onceToken != -1)
  {
    +[WXTableProperties tableLookBitEnumMap];
  }

  v2 = +[WXTableProperties tableLookBitEnumMap]::sTableLookBitEnumMap;

  return v2;
}

void __40__WXTableProperties_tableLookBitEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXTableProperties tableLookBitEnumMap]::sTableLookBitEnumStructs count:6 caseSensitive:1];
  v1 = +[WXTableProperties tableLookBitEnumMap]::sTableLookBitEnumMap;
  +[WXTableProperties tableLookBitEnumMap]::sTableLookBitEnumMap = v0;
}

+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  wXMainNamespace = [(WXReadState *)stateCopy WXMainNamespace];
  v9 = OCXFindChild(from, wXMainNamespace, "tblLook");

  if (!v9)
  {
LABEL_13:
    LOWORD(v10) = 37;
    goto LABEL_14;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  do
  {
    v13 = v12;
    while (1)
    {
      tableLookBitEnumMap = [self tableLookBitEnumMap];
      v15 = [tableLookBitEnumMap stringForValue:v13];

      v111[0] = 0;
      wXMainNamespace2 = [(WXReadState *)stateCopy WXMainNamespace];
      v17 = CXOptionalBoolAttribute(v9, wXMainNamespace2, [v15 UTF8String], v111);

      if (!v17)
      {
        break;
      }

      if (v111[0])
      {
        v11 = 1;
        break;
      }

      v13 = (v13 + 1);
      v11 = 1;
      if (v13 == 6)
      {
        goto LABEL_14;
      }
    }

    v10 |= 1 << v13;

    v12 = (v13 + 1);
  }

  while (v13 != 5);
  if ((v11 & 1) == 0)
  {
    wXMainNamespace3 = [(WXReadState *)stateCopy WXMainNamespace];
    v19 = CXDefaultStringAttribute(v9, wXMainNamespace3, "val", 0);

    if (v19)
    {
      LOWORD(v10) = strtoul([v19 UTF8String], 0, 16) >> 5;

      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_14:
  [toCopy setLook:v10];
  v116 = 0;
  v115 = 0;
  wXMainNamespace4 = [(WXReadState *)stateCopy WXMainNamespace];
  v21 = OCXFindChild(from, wXMainNamespace4, "tblW");

  wXMainNamespace5 = [(WXReadState *)stateCopy WXMainNamespace];
  LODWORD(v21) = WXOptionalTableWidthAttribute(v21, wXMainNamespace5, "w", &v116, &v115);

  if (v21)
  {
    [toCopy setWidth:v116];
    [toCopy setWidthType:v115];
  }

  wXMainNamespace6 = [(WXReadState *)stateCopy WXMainNamespace];
  v24 = OCXFindChild(from, wXMainNamespace6, "tblInd");

  wXMainNamespace7 = [(WXReadState *)stateCopy WXMainNamespace];
  LODWORD(v24) = WXOptionalTableWidthAttribute(v24, wXMainNamespace7, "w", &v116, &v115);

  if (v24)
  {
    [toCopy setIndent:v116];
    [toCopy setIndentType:v115];
  }

  wXMainNamespace8 = [(WXReadState *)stateCopy WXMainNamespace];
  v27 = OCXFindChild(from, wXMainNamespace8, "tblCellMar");

  if (v27)
  {
    *v111 = 0;
    wXMainNamespace9 = [(WXReadState *)stateCopy WXMainNamespace];
    v29 = OCXFindChild(v27, wXMainNamespace9, "top");

    if (v29)
    {
      wXMainNamespace10 = [(WXReadState *)stateCopy WXMainNamespace];
      v31 = CXDefaultLongAttribute(v29, wXMainNamespace10, "w", 0);

      v32 = +[WXCommon tableWidthTypeEnumMap];
      readEnumProperty<WDTableWidthType>(v27, "top", "type", v32, v111, stateCopy);
    }

    else
    {
      v31 = 0;
    }

    v114 = 0;
    wXMainNamespace11 = [(WXReadState *)stateCopy WXMainNamespace];
    v34 = OCXFindChild(v27, wXMainNamespace11, "bottom");

    if (v34)
    {
      wXMainNamespace12 = [(WXReadState *)stateCopy WXMainNamespace];
      v36 = CXDefaultLongAttribute(v34, wXMainNamespace12, "w", 0);

      v37 = +[WXCommon tableWidthTypeEnumMap];
      readEnumProperty<WDTableWidthType>(v27, "bottom", "type", v37, &v114, stateCopy);
    }

    else
    {
      v36 = 0;
    }

    v113 = 0;
    wXMainNamespace13 = [(WXReadState *)stateCopy WXMainNamespace];
    v39 = OCXFindChild(v27, wXMainNamespace13, "left");

    if (v39 || ([(WXReadState *)stateCopy WXMainNamespace], v40 = objc_claimAutoreleasedReturnValue(), v39 = OCXFindChild(v27, v40, "start"), v40, v39))
    {
      wXMainNamespace14 = [(WXReadState *)stateCopy WXMainNamespace];
      v39 = CXDefaultLongAttribute(v39, wXMainNamespace14, "w", 0);

      v42 = +[WXCommon tableWidthTypeEnumMap];
      readEnumProperty<WDTableWidthType>(v27, "left", "type", v42, &v113, stateCopy);
    }

    v112 = 0;
    wXMainNamespace15 = [(WXReadState *)stateCopy WXMainNamespace];
    v44 = OCXFindChild(v27, wXMainNamespace15, "right");

    if (v44 || ([(WXReadState *)stateCopy WXMainNamespace], v45 = objc_claimAutoreleasedReturnValue(), v44 = OCXFindChild(v27, v45, "end"), v45, v44))
    {
      wXMainNamespace16 = [(WXReadState *)stateCopy WXMainNamespace];
      v44 = CXDefaultLongAttribute(v44, wXMainNamespace16, "w", 0);

      v47 = +[WXCommon tableWidthTypeEnumMap];
      readEnumProperty<WDTableWidthType>(v27, "right", "type", v47, &v112, stateCopy);
    }

    if (v31 == v36 && v31 == v39 && v31 == v44 && *v111 == v114 && *v111 == v113 && *v111 == v112)
    {
      [toCopy setCellSpacing:v31];
      [toCopy setCellSpacingType:*v111];
    }
  }

  v114 = 0;
  v48 = +[WXCommon justifyEnumMap];
  if (readEnumProperty<WDJustification>(from, "jc", "val", v48, &v114, stateCopy))
  {
  }

  else
  {
    v49 = +[WXCommon strictJustifyEnumMap];
    v50 = readEnumProperty<WDJustification>(from, "jc", "val", v49, &v114, stateCopy);

    if (!v50)
    {
      goto LABEL_42;
    }
  }

  [toCopy setAlignment:v114];
LABEL_42:
  wXMainNamespace17 = [(WXReadState *)stateCopy WXMainNamespace];
  v52 = OCXFindChild(from, wXMainNamespace17, "shd");

  if (v52)
  {
    mutableShading = [toCopy mutableShading];
    [WXShading readFrom:v52 to:mutableShading state:stateCopy];
  }

  wXMainNamespace18 = [(WXReadState *)stateCopy WXMainNamespace];
  v55 = OCXFindChild(from, wXMainNamespace18, "tblBorders");

  if (v55)
  {
    wXMainNamespace19 = [(WXReadState *)stateCopy WXMainNamespace];
    v57 = OCXFindChild(v55, wXMainNamespace19, "top");

    if (v57)
    {
      mutableTopBorder = [toCopy mutableTopBorder];
      [WXBorder readFrom:v57 to:mutableTopBorder state:stateCopy];
    }

    wXMainNamespace20 = [(WXReadState *)stateCopy WXMainNamespace];
    v60 = OCXFindChild(v55, wXMainNamespace20, "left");

    if (v60 || ([(WXReadState *)stateCopy WXMainNamespace], v61 = objc_claimAutoreleasedReturnValue(), v60 = OCXFindChild(v55, v61, "start"), v61, v60))
    {
      mutableLeftBorder = [toCopy mutableLeftBorder];
      [WXBorder readFrom:v60 to:mutableLeftBorder state:stateCopy];
    }

    wXMainNamespace21 = [(WXReadState *)stateCopy WXMainNamespace];
    v64 = OCXFindChild(v55, wXMainNamespace21, "bottom");

    if (v64)
    {
      mutableBottomBorder = [toCopy mutableBottomBorder];
      [WXBorder readFrom:v64 to:mutableBottomBorder state:stateCopy];
    }

    wXMainNamespace22 = [(WXReadState *)stateCopy WXMainNamespace];
    v67 = OCXFindChild(v55, wXMainNamespace22, "right");

    if (v67 || ([(WXReadState *)stateCopy WXMainNamespace], v68 = objc_claimAutoreleasedReturnValue(), v67 = OCXFindChild(v55, v68, "end"), v68, v67))
    {
      mutableRightBorder = [toCopy mutableRightBorder];
      [WXBorder readFrom:v67 to:mutableRightBorder state:stateCopy];
    }

    wXMainNamespace23 = [(WXReadState *)stateCopy WXMainNamespace];
    v71 = OCXFindChild(v55, wXMainNamespace23, "insideV");

    if (v71)
    {
      mutableInsideVerticalBorder = [toCopy mutableInsideVerticalBorder];
      [WXBorder readFrom:v71 to:mutableInsideVerticalBorder state:stateCopy];
    }

    wXMainNamespace24 = [(WXReadState *)stateCopy WXMainNamespace];
    v74 = OCXFindChild(v55, wXMainNamespace24, "insideH");

    if (v74)
    {
      mutableInsideHorizontalBorder = [toCopy mutableInsideHorizontalBorder];
      [WXBorder readFrom:v74 to:mutableInsideHorizontalBorder state:stateCopy];
    }
  }

  [(WXReadState *)stateCopy setCurrentTableWraps:0];
  wXMainNamespace25 = [(WXReadState *)stateCopy WXMainNamespace];
  v77 = OCXFindChild(from, wXMainNamespace25, "tblpPr");

  if (v77)
  {
    v113 = 0;
    tableVerticalAnchorEnumMap = [self tableVerticalAnchorEnumMap];
    v79 = readEnumProperty<WDVerticalAnchor>(v77, "vertAnchor", tableVerticalAnchorEnumMap, &v113);

    if (v79)
    {
      [toCopy setVerticalAnchor:v113];
    }

    v112 = 0;
    tableHorizontalAnchorEnumMap = [self tableHorizontalAnchorEnumMap];
    v81 = readEnumProperty<WDHorizontalAnchor>(v77, "horzAnchor", tableHorizontalAnchorEnumMap, &v112);

    if (v81)
    {
      [toCopy setHorizontalAnchor:v112];
    }

    *v111 = 0;
    v110 = -4;
    tableVerticalPositionEnumMap = [self tableVerticalPositionEnumMap];
    v83 = readEnumProperty<WDVerticalPosition>(v77, "tblpYSpec", tableVerticalPositionEnumMap, &v110);

    if (v83)
    {
      v84 = v110;
    }

    else
    {
      wXMainNamespace26 = [(WXReadState *)stateCopy WXMainNamespace];
      v86 = CXOptionalLongAttribute(v77, wXMainNamespace26, "tblpY", v111, 14);

      if (!v86)
      {
        goto LABEL_69;
      }

      v84 = *v111;
    }

    [toCopy setVerticalPosition:v84];
LABEL_69:
    v109 = 0;
    tableHorizontalPositionEnumMap = [self tableHorizontalPositionEnumMap];
    v88 = readEnumProperty<WDHorizontalPosition>(v77, "tblpXSpec", tableHorizontalPositionEnumMap, &v109);

    if (v88)
    {
      v89 = v109;
    }

    else
    {
      wXMainNamespace27 = [(WXReadState *)stateCopy WXMainNamespace];
      v91 = CXOptionalLongAttribute(v77, wXMainNamespace27, "tblpX", v111, 14);

      if (!v91)
      {
LABEL_74:
        wXMainNamespace28 = [(WXReadState *)stateCopy WXMainNamespace];
        v93 = CXOptionalLongAttribute(v77, wXMainNamespace28, "leftFromText", v111, 14);

        if (v93)
        {
          [toCopy setLeftDistanceFromText:*v111];
          [(WXReadState *)stateCopy setCurrentTableWraps:1];
        }

        wXMainNamespace29 = [(WXReadState *)stateCopy WXMainNamespace];
        v95 = CXOptionalLongAttribute(v77, wXMainNamespace29, "topFromText", v111, 14);

        if (v95)
        {
          [toCopy setTopDistanceFromText:*v111];
          [(WXReadState *)stateCopy setCurrentTableWraps:1];
        }

        wXMainNamespace30 = [(WXReadState *)stateCopy WXMainNamespace];
        v97 = CXOptionalLongAttribute(v77, wXMainNamespace30, "rightFromText", v111, 14);

        if (v97)
        {
          [toCopy setRightDistanceFromText:*v111];
          [(WXReadState *)stateCopy setCurrentTableWraps:1];
        }

        wXMainNamespace31 = [(WXReadState *)stateCopy WXMainNamespace];
        v99 = CXOptionalLongAttribute(v77, wXMainNamespace31, "bottomFromText", v111, 14);

        if (v99)
        {
          [toCopy setBottomDistanceFromText:*v111];
          [(WXReadState *)stateCopy setCurrentTableWraps:1];
        }

        goto LABEL_82;
      }

      v89 = *v111;
    }

    [toCopy setHorizontalPosition:v89];
    goto LABEL_74;
  }

LABEL_82:
  wXMainNamespace32 = [(WXReadState *)stateCopy WXMainNamespace];
  v101 = OCXFindChild(from, wXMainNamespace32, "tblPrChange");

  if (v101)
  {
    if (![toCopy resolveMode])
    {
      [toCopy moveOrignalToTracked];
    }

    [toCopy setFormattingChanged:1];
    v102 = wmxmlGetDateProperty(v101);
    [toCopy setFormattingChangeDate:v102];

    document = [(WXReadState *)stateCopy document];
    v104 = wmxmlGetAuthorProperty(v101);
    [toCopy setIndexToAuthorIDOfFormattingChange:{objc_msgSend(document, "revisionAuthorAddLookup:", v104)}];

    wXMainNamespace33 = [(WXReadState *)stateCopy WXMainNamespace];
    v106 = OCXFindChild(v101, wXMainNamespace33, "tblPr");

    if (v106)
    {
      [self readFrom:v106 to:toCopy state:stateCopy];
    }

    [toCopy setResolveMode:1];
  }

  v111[0] = 0;
  if (wmxmlGetBoolOnlyProperty(from, "bidiVisual", "val", v111, stateCopy))
  {
    [toCopy setBiDirectional:v111[0]];
  }
}

+ (void)tableVerticalAnchorEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)tableHorizontalAnchorEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)tableHorizontalPositionEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)tableVerticalPositionEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)tableLookBitEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

@end