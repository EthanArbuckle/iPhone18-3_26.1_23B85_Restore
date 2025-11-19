@interface WXTableProperties
+ (id)tableHorizontalAnchorEnumMap;
+ (id)tableHorizontalPositionEnumMap;
+ (id)tableLookBitEnumMap;
+ (id)tableVerticalAnchorEnumMap;
+ (id)tableVerticalPositionEnumMap;
+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5;
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

+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5
{
  v108 = a4;
  v7 = a5;
  v8 = [(WXReadState *)v7 WXMainNamespace];
  v9 = OCXFindChild(a3, v8, "tblLook");

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
      v14 = [a1 tableLookBitEnumMap];
      v15 = [v14 stringForValue:v13];

      v111[0] = 0;
      v16 = [(WXReadState *)v7 WXMainNamespace];
      v17 = CXOptionalBoolAttribute(v9, v16, [v15 UTF8String], v111);

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
    v18 = [(WXReadState *)v7 WXMainNamespace];
    v19 = CXDefaultStringAttribute(v9, v18, "val", 0);

    if (v19)
    {
      LOWORD(v10) = strtoul([v19 UTF8String], 0, 16) >> 5;

      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_14:
  [v108 setLook:v10];
  v116 = 0;
  v115 = 0;
  v20 = [(WXReadState *)v7 WXMainNamespace];
  v21 = OCXFindChild(a3, v20, "tblW");

  v22 = [(WXReadState *)v7 WXMainNamespace];
  LODWORD(v21) = WXOptionalTableWidthAttribute(v21, v22, "w", &v116, &v115);

  if (v21)
  {
    [v108 setWidth:v116];
    [v108 setWidthType:v115];
  }

  v23 = [(WXReadState *)v7 WXMainNamespace];
  v24 = OCXFindChild(a3, v23, "tblInd");

  v25 = [(WXReadState *)v7 WXMainNamespace];
  LODWORD(v24) = WXOptionalTableWidthAttribute(v24, v25, "w", &v116, &v115);

  if (v24)
  {
    [v108 setIndent:v116];
    [v108 setIndentType:v115];
  }

  v26 = [(WXReadState *)v7 WXMainNamespace];
  v27 = OCXFindChild(a3, v26, "tblCellMar");

  if (v27)
  {
    *v111 = 0;
    v28 = [(WXReadState *)v7 WXMainNamespace];
    v29 = OCXFindChild(v27, v28, "top");

    if (v29)
    {
      v30 = [(WXReadState *)v7 WXMainNamespace];
      v31 = CXDefaultLongAttribute(v29, v30, "w", 0);

      v32 = +[WXCommon tableWidthTypeEnumMap];
      readEnumProperty<WDTableWidthType>(v27, "top", "type", v32, v111, v7);
    }

    else
    {
      v31 = 0;
    }

    v114 = 0;
    v33 = [(WXReadState *)v7 WXMainNamespace];
    v34 = OCXFindChild(v27, v33, "bottom");

    if (v34)
    {
      v35 = [(WXReadState *)v7 WXMainNamespace];
      v36 = CXDefaultLongAttribute(v34, v35, "w", 0);

      v37 = +[WXCommon tableWidthTypeEnumMap];
      readEnumProperty<WDTableWidthType>(v27, "bottom", "type", v37, &v114, v7);
    }

    else
    {
      v36 = 0;
    }

    v113 = 0;
    v38 = [(WXReadState *)v7 WXMainNamespace];
    v39 = OCXFindChild(v27, v38, "left");

    if (v39 || ([(WXReadState *)v7 WXMainNamespace], v40 = objc_claimAutoreleasedReturnValue(), v39 = OCXFindChild(v27, v40, "start"), v40, v39))
    {
      v41 = [(WXReadState *)v7 WXMainNamespace];
      v39 = CXDefaultLongAttribute(v39, v41, "w", 0);

      v42 = +[WXCommon tableWidthTypeEnumMap];
      readEnumProperty<WDTableWidthType>(v27, "left", "type", v42, &v113, v7);
    }

    v112 = 0;
    v43 = [(WXReadState *)v7 WXMainNamespace];
    v44 = OCXFindChild(v27, v43, "right");

    if (v44 || ([(WXReadState *)v7 WXMainNamespace], v45 = objc_claimAutoreleasedReturnValue(), v44 = OCXFindChild(v27, v45, "end"), v45, v44))
    {
      v46 = [(WXReadState *)v7 WXMainNamespace];
      v44 = CXDefaultLongAttribute(v44, v46, "w", 0);

      v47 = +[WXCommon tableWidthTypeEnumMap];
      readEnumProperty<WDTableWidthType>(v27, "right", "type", v47, &v112, v7);
    }

    if (v31 == v36 && v31 == v39 && v31 == v44 && *v111 == v114 && *v111 == v113 && *v111 == v112)
    {
      [v108 setCellSpacing:v31];
      [v108 setCellSpacingType:*v111];
    }
  }

  v114 = 0;
  v48 = +[WXCommon justifyEnumMap];
  if (readEnumProperty<WDJustification>(a3, "jc", "val", v48, &v114, v7))
  {
  }

  else
  {
    v49 = +[WXCommon strictJustifyEnumMap];
    v50 = readEnumProperty<WDJustification>(a3, "jc", "val", v49, &v114, v7);

    if (!v50)
    {
      goto LABEL_42;
    }
  }

  [v108 setAlignment:v114];
LABEL_42:
  v51 = [(WXReadState *)v7 WXMainNamespace];
  v52 = OCXFindChild(a3, v51, "shd");

  if (v52)
  {
    v53 = [v108 mutableShading];
    [WXShading readFrom:v52 to:v53 state:v7];
  }

  v54 = [(WXReadState *)v7 WXMainNamespace];
  v55 = OCXFindChild(a3, v54, "tblBorders");

  if (v55)
  {
    v56 = [(WXReadState *)v7 WXMainNamespace];
    v57 = OCXFindChild(v55, v56, "top");

    if (v57)
    {
      v58 = [v108 mutableTopBorder];
      [WXBorder readFrom:v57 to:v58 state:v7];
    }

    v59 = [(WXReadState *)v7 WXMainNamespace];
    v60 = OCXFindChild(v55, v59, "left");

    if (v60 || ([(WXReadState *)v7 WXMainNamespace], v61 = objc_claimAutoreleasedReturnValue(), v60 = OCXFindChild(v55, v61, "start"), v61, v60))
    {
      v62 = [v108 mutableLeftBorder];
      [WXBorder readFrom:v60 to:v62 state:v7];
    }

    v63 = [(WXReadState *)v7 WXMainNamespace];
    v64 = OCXFindChild(v55, v63, "bottom");

    if (v64)
    {
      v65 = [v108 mutableBottomBorder];
      [WXBorder readFrom:v64 to:v65 state:v7];
    }

    v66 = [(WXReadState *)v7 WXMainNamespace];
    v67 = OCXFindChild(v55, v66, "right");

    if (v67 || ([(WXReadState *)v7 WXMainNamespace], v68 = objc_claimAutoreleasedReturnValue(), v67 = OCXFindChild(v55, v68, "end"), v68, v67))
    {
      v69 = [v108 mutableRightBorder];
      [WXBorder readFrom:v67 to:v69 state:v7];
    }

    v70 = [(WXReadState *)v7 WXMainNamespace];
    v71 = OCXFindChild(v55, v70, "insideV");

    if (v71)
    {
      v72 = [v108 mutableInsideVerticalBorder];
      [WXBorder readFrom:v71 to:v72 state:v7];
    }

    v73 = [(WXReadState *)v7 WXMainNamespace];
    v74 = OCXFindChild(v55, v73, "insideH");

    if (v74)
    {
      v75 = [v108 mutableInsideHorizontalBorder];
      [WXBorder readFrom:v74 to:v75 state:v7];
    }
  }

  [(WXReadState *)v7 setCurrentTableWraps:0];
  v76 = [(WXReadState *)v7 WXMainNamespace];
  v77 = OCXFindChild(a3, v76, "tblpPr");

  if (v77)
  {
    v113 = 0;
    v78 = [a1 tableVerticalAnchorEnumMap];
    v79 = readEnumProperty<WDVerticalAnchor>(v77, "vertAnchor", v78, &v113);

    if (v79)
    {
      [v108 setVerticalAnchor:v113];
    }

    v112 = 0;
    v80 = [a1 tableHorizontalAnchorEnumMap];
    v81 = readEnumProperty<WDHorizontalAnchor>(v77, "horzAnchor", v80, &v112);

    if (v81)
    {
      [v108 setHorizontalAnchor:v112];
    }

    *v111 = 0;
    v110 = -4;
    v82 = [a1 tableVerticalPositionEnumMap];
    v83 = readEnumProperty<WDVerticalPosition>(v77, "tblpYSpec", v82, &v110);

    if (v83)
    {
      v84 = v110;
    }

    else
    {
      v85 = [(WXReadState *)v7 WXMainNamespace];
      v86 = CXOptionalLongAttribute(v77, v85, "tblpY", v111, 14);

      if (!v86)
      {
        goto LABEL_69;
      }

      v84 = *v111;
    }

    [v108 setVerticalPosition:v84];
LABEL_69:
    v109 = 0;
    v87 = [a1 tableHorizontalPositionEnumMap];
    v88 = readEnumProperty<WDHorizontalPosition>(v77, "tblpXSpec", v87, &v109);

    if (v88)
    {
      v89 = v109;
    }

    else
    {
      v90 = [(WXReadState *)v7 WXMainNamespace];
      v91 = CXOptionalLongAttribute(v77, v90, "tblpX", v111, 14);

      if (!v91)
      {
LABEL_74:
        v92 = [(WXReadState *)v7 WXMainNamespace];
        v93 = CXOptionalLongAttribute(v77, v92, "leftFromText", v111, 14);

        if (v93)
        {
          [v108 setLeftDistanceFromText:*v111];
          [(WXReadState *)v7 setCurrentTableWraps:1];
        }

        v94 = [(WXReadState *)v7 WXMainNamespace];
        v95 = CXOptionalLongAttribute(v77, v94, "topFromText", v111, 14);

        if (v95)
        {
          [v108 setTopDistanceFromText:*v111];
          [(WXReadState *)v7 setCurrentTableWraps:1];
        }

        v96 = [(WXReadState *)v7 WXMainNamespace];
        v97 = CXOptionalLongAttribute(v77, v96, "rightFromText", v111, 14);

        if (v97)
        {
          [v108 setRightDistanceFromText:*v111];
          [(WXReadState *)v7 setCurrentTableWraps:1];
        }

        v98 = [(WXReadState *)v7 WXMainNamespace];
        v99 = CXOptionalLongAttribute(v77, v98, "bottomFromText", v111, 14);

        if (v99)
        {
          [v108 setBottomDistanceFromText:*v111];
          [(WXReadState *)v7 setCurrentTableWraps:1];
        }

        goto LABEL_82;
      }

      v89 = *v111;
    }

    [v108 setHorizontalPosition:v89];
    goto LABEL_74;
  }

LABEL_82:
  v100 = [(WXReadState *)v7 WXMainNamespace];
  v101 = OCXFindChild(a3, v100, "tblPrChange");

  if (v101)
  {
    if (![v108 resolveMode])
    {
      [v108 moveOrignalToTracked];
    }

    [v108 setFormattingChanged:1];
    v102 = wmxmlGetDateProperty(v101);
    [v108 setFormattingChangeDate:v102];

    v103 = [(WXReadState *)v7 document];
    v104 = wmxmlGetAuthorProperty(v101);
    [v108 setIndexToAuthorIDOfFormattingChange:{objc_msgSend(v103, "revisionAuthorAddLookup:", v104)}];

    v105 = [(WXReadState *)v7 WXMainNamespace];
    v106 = OCXFindChild(v101, v105, "tblPr");

    if (v106)
    {
      [a1 readFrom:v106 to:v108 state:v7];
    }

    [v108 setResolveMode:1];
  }

  v111[0] = 0;
  if (wmxmlGetBoolOnlyProperty(a3, "bidiVisual", "val", v111, v7))
  {
    [v108 setBiDirectional:v111[0]];
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