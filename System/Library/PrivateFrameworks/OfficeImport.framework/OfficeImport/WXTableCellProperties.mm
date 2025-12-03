@interface WXTableCellProperties
+ (id)verticalAlignmentEnumMap;
+ (unint64_t)bitfieldForCnfStyleFrom:(_xmlNode *)from state:(id)state;
+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state;
+ (void)verticalAlignmentEnumMap;
@end

@implementation WXTableCellProperties

+ (id)verticalAlignmentEnumMap
{
  {
    +[WXTableCellProperties verticalAlignmentEnumMap];
  }

  if (+[WXTableCellProperties verticalAlignmentEnumMap]::onceToken != -1)
  {
    +[WXTableCellProperties verticalAlignmentEnumMap];
  }

  v2 = +[WXTableCellProperties verticalAlignmentEnumMap]::sVerticalAlignmentEnumMap;

  return v2;
}

void __49__WXTableCellProperties_verticalAlignmentEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXTableCellProperties verticalAlignmentEnumMap]::sVerticalAlignmentStructs count:3];
  v1 = +[WXTableCellProperties verticalAlignmentEnumMap]::sVerticalAlignmentEnumMap;
  +[WXTableCellProperties verticalAlignmentEnumMap]::sVerticalAlignmentEnumMap = v0;
}

+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  wXMainNamespace = [stateCopy WXMainNamespace];
  v11 = OCXFindChild(from, wXMainNamespace, "tcPrChange");

  if (v11)
  {
    wXMainNamespace2 = [stateCopy WXMainNamespace];
    v13 = OCXFindChild(v11, wXMainNamespace2, "tcPr");

    if (v13)
    {
      [self readFrom:v13 to:toCopy state:stateCopy];
    }

    [toCopy setResolveMode:1];
    [toCopy setFormattingChanged:1];
    v14 = wmxmlGetDateProperty(v11);
    [toCopy setFormattingChangeDate:v14];

    document = [stateCopy document];
    v16 = wmxmlGetAuthorProperty(v11);
    [toCopy setIndexToAuthorIDOfFormattingChange:{objc_msgSend(document, "revisionAuthorAddLookup:", v16)}];
  }

  v85 = 0;
  v84 = 0;
  wXMainNamespace3 = [stateCopy WXMainNamespace];
  v18 = OCXFindChild(from, wXMainNamespace3, "tcW");

  wXMainNamespace4 = [stateCopy WXMainNamespace];
  LODWORD(v18) = WXOptionalTableWidthAttribute(v18, wXMainNamespace4, "w", &v85, &v84);

  if (v18)
  {
    [toCopy setWidth:v85];
    [toCopy setWidthType:v84];
  }

  wXMainNamespace5 = [stateCopy WXMainNamespace];
  v21 = OCXFindChild(from, wXMainNamespace5, "tcMar");

  if (v21)
  {
    wXMainNamespace6 = [stateCopy WXMainNamespace];
    v23 = OCXFindChild(v21, wXMainNamespace6, "top");

    wXMainNamespace7 = [stateCopy WXMainNamespace];
    LODWORD(v23) = WXOptionalTableWidthAttribute(v23, wXMainNamespace7, "w", &v85, &v84);

    if (v23)
    {
      [toCopy setTopMargin:v85];
      [toCopy setTopMarginType:v84];
    }

    wXMainNamespace8 = [stateCopy WXMainNamespace];
    v26 = OCXFindChild(v21, wXMainNamespace8, "bottom");

    wXMainNamespace9 = [stateCopy WXMainNamespace];
    LODWORD(v26) = WXOptionalTableWidthAttribute(v26, wXMainNamespace9, "w", &v85, &v84);

    if (v26)
    {
      [toCopy setBottomMargin:v85];
      [toCopy setBottomMarginType:v84];
    }

    wXMainNamespace10 = [stateCopy WXMainNamespace];
    v29 = OCXFindChild(v21, wXMainNamespace10, "left");

    if (!v29)
    {
      wXMainNamespace11 = [stateCopy WXMainNamespace];
      v29 = OCXFindChild(v21, wXMainNamespace11, "start");
    }

    wXMainNamespace12 = [stateCopy WXMainNamespace];
    v32 = WXOptionalTableWidthAttribute(v29, wXMainNamespace12, "w", &v85, &v84);

    if (v32)
    {
      [toCopy setLeftMargin:v85];
      [toCopy setLeftMarginType:v84];
    }

    wXMainNamespace13 = [stateCopy WXMainNamespace];
    v34 = OCXFindChild(v21, wXMainNamespace13, "right");

    if (!v34)
    {
      wXMainNamespace14 = [stateCopy WXMainNamespace];
      v34 = OCXFindChild(0, wXMainNamespace14, "end");
    }

    wXMainNamespace15 = [stateCopy WXMainNamespace];
    v37 = WXOptionalTableWidthAttribute(v34, wXMainNamespace15, "w", &v85, &v84);

    if (v37)
    {
      [toCopy setRightMargin:v85];
      [toCopy setRightMarginType:v84];
    }
  }

  v83 = 0;
  wXMainNamespace16 = [stateCopy WXMainNamespace];
  v39 = OCXFindChild(from, wXMainNamespace16, "noWrap");

  wXMainNamespace17 = [stateCopy WXMainNamespace];
  LODWORD(v39) = CXOptionalBoolAttribute(v39, wXMainNamespace17, "val", &v83);

  if (v39)
  {
    [toCopy setNoWrap:v83];
  }

  wXMainNamespace18 = [stateCopy WXMainNamespace];
  v42 = OCXFindChild(from, wXMainNamespace18, "vMerge");

  if (v42)
  {
    [toCopy setVerticallyMergedCell:1];
    Prop = xmlGetProp(v42, "val");
    v44 = Prop;
    if (Prop)
    {
      [toCopy setFirstInSetOfVerticallyMergedCells:{xmlStrcmp(Prop, "restart") == 0}];
      free(v44);
    }

    else
    {
      [toCopy setFirstInSetOfVerticallyMergedCells:0];
    }
  }

  v82 = 0;
  verticalAlignmentEnumMap = [self verticalAlignmentEnumMap];
  v46 = readEnumProperty<WDVerticalAlignment>(from, "vAlign", "val", verticalAlignmentEnumMap, &v82, stateCopy);

  if (v46)
  {
    [toCopy setVerticalAlignment:v82];
  }

  v81 = 0;
  v47 = +[WXCommon textDirectionEnumMap];
  if (readEnumProperty<WDTextDirection>(from, "textDirection", "val", v47, &v81, stateCopy))
  {
  }

  else
  {
    v48 = +[WXCommon strictTextDirectionEnumMap];
    v49 = readEnumProperty<WDTextDirection>(from, "textDirection", "val", v48, &v81, stateCopy);

    if (!v49)
    {
      goto LABEL_32;
    }
  }

  [toCopy setTextDirection:v81];
LABEL_32:
  wXMainNamespace19 = [stateCopy WXMainNamespace];
  v51 = OCXFindChild(from, wXMainNamespace19, "shd");

  if (v51)
  {
    mutableShading = [toCopy mutableShading];
    [WXShading readFrom:v51 to:mutableShading state:stateCopy];
  }

  wXMainNamespace20 = [stateCopy WXMainNamespace];
  v54 = OCXFindChild(from, wXMainNamespace20, "tcBorders");

  if (v54)
  {
    wXMainNamespace21 = [stateCopy WXMainNamespace];
    v56 = OCXFindChild(v54, wXMainNamespace21, "top");

    if (v56)
    {
      mutableTopBorder = [toCopy mutableTopBorder];
      [WXBorder readFrom:v56 to:mutableTopBorder state:stateCopy];
    }

    wXMainNamespace22 = [stateCopy WXMainNamespace];
    v59 = OCXFindChild(v54, wXMainNamespace22, "left");

    if (v59 || ([stateCopy WXMainNamespace], v60 = objc_claimAutoreleasedReturnValue(), v59 = OCXFindChild(v54, v60, "start"), v60, v59))
    {
      mutableLeftBorder = [toCopy mutableLeftBorder];
      [WXBorder readFrom:v59 to:mutableLeftBorder state:stateCopy];
    }

    wXMainNamespace23 = [stateCopy WXMainNamespace];
    v63 = OCXFindChild(v54, wXMainNamespace23, "bottom");

    if (v63)
    {
      mutableBottomBorder = [toCopy mutableBottomBorder];
      [WXBorder readFrom:v63 to:mutableBottomBorder state:stateCopy];
    }

    wXMainNamespace24 = [stateCopy WXMainNamespace];
    v66 = OCXFindChild(v54, wXMainNamespace24, "right");

    if (v66 || ([stateCopy WXMainNamespace], v67 = objc_claimAutoreleasedReturnValue(), v66 = OCXFindChild(v54, v67, "end"), v67, v66))
    {
      mutableRightBorder = [toCopy mutableRightBorder];
      [WXBorder readFrom:v66 to:mutableRightBorder state:stateCopy];
    }

    wXMainNamespace25 = [stateCopy WXMainNamespace];
    v70 = OCXFindChild(v54, wXMainNamespace25, "insideH");

    if (v70)
    {
      mutableInsideHorizontalBorder = [toCopy mutableInsideHorizontalBorder];
      [WXBorder readFrom:v70 to:mutableInsideHorizontalBorder state:stateCopy];
    }

    wXMainNamespace26 = [stateCopy WXMainNamespace];
    v73 = OCXFindChild(v54, wXMainNamespace26, "insideV");

    if (v73)
    {
      mutableInsideVerticalBorder = [toCopy mutableInsideVerticalBorder];
      [WXBorder readFrom:v73 to:mutableInsideVerticalBorder state:stateCopy];
    }

    wXMainNamespace27 = [stateCopy WXMainNamespace];
    v76 = OCXFindChild(v54, wXMainNamespace27, "tl2br");

    if (v76)
    {
      mutableDiagonalDownBorder = [toCopy mutableDiagonalDownBorder];
      [WXBorder readFrom:v76 to:mutableDiagonalDownBorder state:stateCopy];
    }

    wXMainNamespace28 = [stateCopy WXMainNamespace];
    v79 = OCXFindChild(v54, wXMainNamespace28, "tr2bl");

    if (v79)
    {
      mutableDiagonalUpBorder = [toCopy mutableDiagonalUpBorder];
      [WXBorder readFrom:v79 to:mutableDiagonalUpBorder state:stateCopy];
    }
  }

  [stateCopy setCurrentCellCNFStyle:{objc_msgSend(self, "bitfieldForCnfStyleFrom:state:", from, stateCopy)}];
}

+ (unint64_t)bitfieldForCnfStyleFrom:(_xmlNode *)from state:(id)state
{
  stateCopy = state;
  wXMainNamespace = [stateCopy WXMainNamespace];
  v7 = OCXFindChild(from, wXMainNamespace, "cnfStyle");

  if (v7)
  {
    wXMainNamespace2 = [stateCopy WXMainNamespace];
    v50 = 0;
    v9 = CXOptionalStringAttribute(v7, wXMainNamespace2, "val", &v50);
    v10 = v50;

    if (v9)
    {
      if ([v10 length] == 12)
      {
        v7 = 0;
        for (i = 11; i != -1; --i)
        {
          v7 = ([v10 characterAtIndex:i] == 49) | (2 * v7);
        }
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v49 = 0;
      wXMainNamespace3 = [stateCopy WXMainNamespace];
      v13 = CXOptionalBoolAttribute(v7, wXMainNamespace3, "firstRow", &v49) && v49;

      wXMainNamespace4 = [stateCopy WXMainNamespace];
      v15 = CXOptionalBoolAttribute(v7, wXMainNamespace4, "lastRow", &v49);
      v16 = v49;

      if (v15 && v16)
      {
        v13 |= 2uLL;
      }

      wXMainNamespace5 = [stateCopy WXMainNamespace];
      v18 = CXOptionalBoolAttribute(v7, wXMainNamespace5, "firstColumn", &v49);
      v19 = v49;

      if (v18 && v19)
      {
        v13 |= 4uLL;
      }

      wXMainNamespace6 = [stateCopy WXMainNamespace];
      v21 = CXOptionalBoolAttribute(v7, wXMainNamespace6, "lastColumn", &v49);
      v22 = v49;

      if (v21 && v22)
      {
        v13 |= 8uLL;
      }

      wXMainNamespace7 = [stateCopy WXMainNamespace];
      v24 = CXOptionalBoolAttribute(v7, wXMainNamespace7, "oddVBand", &v49);
      v25 = v49;

      if (v24 && v25)
      {
        v13 |= 0x10uLL;
      }

      wXMainNamespace8 = [stateCopy WXMainNamespace];
      v27 = CXOptionalBoolAttribute(v7, wXMainNamespace8, "evenVBand", &v49);
      v28 = v49;

      if (v27 && v28)
      {
        v13 |= 0x20uLL;
      }

      wXMainNamespace9 = [stateCopy WXMainNamespace];
      v30 = CXOptionalBoolAttribute(v7, wXMainNamespace9, "oddHBand", &v49);
      v31 = v49;

      if (v30 && v31)
      {
        v13 |= 0x40uLL;
      }

      wXMainNamespace10 = [stateCopy WXMainNamespace];
      v33 = CXOptionalBoolAttribute(v7, wXMainNamespace10, "evenHBand", &v49);
      v34 = v49;

      if (v33 && v34)
      {
        v13 |= 0x80uLL;
      }

      wXMainNamespace11 = [stateCopy WXMainNamespace];
      v36 = CXOptionalBoolAttribute(v7, wXMainNamespace11, "firstRowFirstColumn", &v49);
      v37 = v49;

      if (v36 && v37)
      {
        v13 |= 0x200uLL;
      }

      wXMainNamespace12 = [stateCopy WXMainNamespace];
      v39 = CXOptionalBoolAttribute(v7, wXMainNamespace12, "firstRowLastColumn", &v49);
      v40 = v49;

      if (v39 && v40)
      {
        v13 |= 0x100uLL;
      }

      wXMainNamespace13 = [stateCopy WXMainNamespace];
      v42 = CXOptionalBoolAttribute(v7, wXMainNamespace13, "lastRowFirstColumn", &v49);
      v43 = v49;

      if (v42 && v43)
      {
        v44 = v13 | 0x800;
      }

      else
      {
        v44 = v13;
      }

      wXMainNamespace14 = [stateCopy WXMainNamespace];
      v46 = CXOptionalBoolAttribute(v7, wXMainNamespace14, "lastRowLastColumn", &v49);
      v47 = v49;

      if (v46 && v47)
      {
        v7 = v44 | 0x400;
      }

      else
      {
        v7 = v44;
      }
    }
  }

  return v7;
}

+ (void)verticalAlignmentEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_44, 0, &dword_25D297000);
  }
}

@end