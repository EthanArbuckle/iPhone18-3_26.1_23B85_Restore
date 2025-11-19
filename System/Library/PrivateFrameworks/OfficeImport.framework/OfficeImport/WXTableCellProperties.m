@interface WXTableCellProperties
+ (id)verticalAlignmentEnumMap;
+ (unint64_t)bitfieldForCnfStyleFrom:(_xmlNode *)a3 state:(id)a4;
+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5;
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

+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [v9 WXMainNamespace];
  v11 = OCXFindChild(a3, v10, "tcPrChange");

  if (v11)
  {
    v12 = [v9 WXMainNamespace];
    v13 = OCXFindChild(v11, v12, "tcPr");

    if (v13)
    {
      [a1 readFrom:v13 to:v8 state:v9];
    }

    [v8 setResolveMode:1];
    [v8 setFormattingChanged:1];
    v14 = wmxmlGetDateProperty(v11);
    [v8 setFormattingChangeDate:v14];

    v15 = [v9 document];
    v16 = wmxmlGetAuthorProperty(v11);
    [v8 setIndexToAuthorIDOfFormattingChange:{objc_msgSend(v15, "revisionAuthorAddLookup:", v16)}];
  }

  v85 = 0;
  v84 = 0;
  v17 = [v9 WXMainNamespace];
  v18 = OCXFindChild(a3, v17, "tcW");

  v19 = [v9 WXMainNamespace];
  LODWORD(v18) = WXOptionalTableWidthAttribute(v18, v19, "w", &v85, &v84);

  if (v18)
  {
    [v8 setWidth:v85];
    [v8 setWidthType:v84];
  }

  v20 = [v9 WXMainNamespace];
  v21 = OCXFindChild(a3, v20, "tcMar");

  if (v21)
  {
    v22 = [v9 WXMainNamespace];
    v23 = OCXFindChild(v21, v22, "top");

    v24 = [v9 WXMainNamespace];
    LODWORD(v23) = WXOptionalTableWidthAttribute(v23, v24, "w", &v85, &v84);

    if (v23)
    {
      [v8 setTopMargin:v85];
      [v8 setTopMarginType:v84];
    }

    v25 = [v9 WXMainNamespace];
    v26 = OCXFindChild(v21, v25, "bottom");

    v27 = [v9 WXMainNamespace];
    LODWORD(v26) = WXOptionalTableWidthAttribute(v26, v27, "w", &v85, &v84);

    if (v26)
    {
      [v8 setBottomMargin:v85];
      [v8 setBottomMarginType:v84];
    }

    v28 = [v9 WXMainNamespace];
    v29 = OCXFindChild(v21, v28, "left");

    if (!v29)
    {
      v30 = [v9 WXMainNamespace];
      v29 = OCXFindChild(v21, v30, "start");
    }

    v31 = [v9 WXMainNamespace];
    v32 = WXOptionalTableWidthAttribute(v29, v31, "w", &v85, &v84);

    if (v32)
    {
      [v8 setLeftMargin:v85];
      [v8 setLeftMarginType:v84];
    }

    v33 = [v9 WXMainNamespace];
    v34 = OCXFindChild(v21, v33, "right");

    if (!v34)
    {
      v35 = [v9 WXMainNamespace];
      v34 = OCXFindChild(0, v35, "end");
    }

    v36 = [v9 WXMainNamespace];
    v37 = WXOptionalTableWidthAttribute(v34, v36, "w", &v85, &v84);

    if (v37)
    {
      [v8 setRightMargin:v85];
      [v8 setRightMarginType:v84];
    }
  }

  v83 = 0;
  v38 = [v9 WXMainNamespace];
  v39 = OCXFindChild(a3, v38, "noWrap");

  v40 = [v9 WXMainNamespace];
  LODWORD(v39) = CXOptionalBoolAttribute(v39, v40, "val", &v83);

  if (v39)
  {
    [v8 setNoWrap:v83];
  }

  v41 = [v9 WXMainNamespace];
  v42 = OCXFindChild(a3, v41, "vMerge");

  if (v42)
  {
    [v8 setVerticallyMergedCell:1];
    Prop = xmlGetProp(v42, "val");
    v44 = Prop;
    if (Prop)
    {
      [v8 setFirstInSetOfVerticallyMergedCells:{xmlStrcmp(Prop, "restart") == 0}];
      free(v44);
    }

    else
    {
      [v8 setFirstInSetOfVerticallyMergedCells:0];
    }
  }

  v82 = 0;
  v45 = [a1 verticalAlignmentEnumMap];
  v46 = readEnumProperty<WDVerticalAlignment>(a3, "vAlign", "val", v45, &v82, v9);

  if (v46)
  {
    [v8 setVerticalAlignment:v82];
  }

  v81 = 0;
  v47 = +[WXCommon textDirectionEnumMap];
  if (readEnumProperty<WDTextDirection>(a3, "textDirection", "val", v47, &v81, v9))
  {
  }

  else
  {
    v48 = +[WXCommon strictTextDirectionEnumMap];
    v49 = readEnumProperty<WDTextDirection>(a3, "textDirection", "val", v48, &v81, v9);

    if (!v49)
    {
      goto LABEL_32;
    }
  }

  [v8 setTextDirection:v81];
LABEL_32:
  v50 = [v9 WXMainNamespace];
  v51 = OCXFindChild(a3, v50, "shd");

  if (v51)
  {
    v52 = [v8 mutableShading];
    [WXShading readFrom:v51 to:v52 state:v9];
  }

  v53 = [v9 WXMainNamespace];
  v54 = OCXFindChild(a3, v53, "tcBorders");

  if (v54)
  {
    v55 = [v9 WXMainNamespace];
    v56 = OCXFindChild(v54, v55, "top");

    if (v56)
    {
      v57 = [v8 mutableTopBorder];
      [WXBorder readFrom:v56 to:v57 state:v9];
    }

    v58 = [v9 WXMainNamespace];
    v59 = OCXFindChild(v54, v58, "left");

    if (v59 || ([v9 WXMainNamespace], v60 = objc_claimAutoreleasedReturnValue(), v59 = OCXFindChild(v54, v60, "start"), v60, v59))
    {
      v61 = [v8 mutableLeftBorder];
      [WXBorder readFrom:v59 to:v61 state:v9];
    }

    v62 = [v9 WXMainNamespace];
    v63 = OCXFindChild(v54, v62, "bottom");

    if (v63)
    {
      v64 = [v8 mutableBottomBorder];
      [WXBorder readFrom:v63 to:v64 state:v9];
    }

    v65 = [v9 WXMainNamespace];
    v66 = OCXFindChild(v54, v65, "right");

    if (v66 || ([v9 WXMainNamespace], v67 = objc_claimAutoreleasedReturnValue(), v66 = OCXFindChild(v54, v67, "end"), v67, v66))
    {
      v68 = [v8 mutableRightBorder];
      [WXBorder readFrom:v66 to:v68 state:v9];
    }

    v69 = [v9 WXMainNamespace];
    v70 = OCXFindChild(v54, v69, "insideH");

    if (v70)
    {
      v71 = [v8 mutableInsideHorizontalBorder];
      [WXBorder readFrom:v70 to:v71 state:v9];
    }

    v72 = [v9 WXMainNamespace];
    v73 = OCXFindChild(v54, v72, "insideV");

    if (v73)
    {
      v74 = [v8 mutableInsideVerticalBorder];
      [WXBorder readFrom:v73 to:v74 state:v9];
    }

    v75 = [v9 WXMainNamespace];
    v76 = OCXFindChild(v54, v75, "tl2br");

    if (v76)
    {
      v77 = [v8 mutableDiagonalDownBorder];
      [WXBorder readFrom:v76 to:v77 state:v9];
    }

    v78 = [v9 WXMainNamespace];
    v79 = OCXFindChild(v54, v78, "tr2bl");

    if (v79)
    {
      v80 = [v8 mutableDiagonalUpBorder];
      [WXBorder readFrom:v79 to:v80 state:v9];
    }
  }

  [v9 setCurrentCellCNFStyle:{objc_msgSend(a1, "bitfieldForCnfStyleFrom:state:", a3, v9)}];
}

+ (unint64_t)bitfieldForCnfStyleFrom:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v6 = [v5 WXMainNamespace];
  v7 = OCXFindChild(a3, v6, "cnfStyle");

  if (v7)
  {
    v8 = [v5 WXMainNamespace];
    v50 = 0;
    v9 = CXOptionalStringAttribute(v7, v8, "val", &v50);
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
      v12 = [v5 WXMainNamespace];
      v13 = CXOptionalBoolAttribute(v7, v12, "firstRow", &v49) && v49;

      v14 = [v5 WXMainNamespace];
      v15 = CXOptionalBoolAttribute(v7, v14, "lastRow", &v49);
      v16 = v49;

      if (v15 && v16)
      {
        v13 |= 2uLL;
      }

      v17 = [v5 WXMainNamespace];
      v18 = CXOptionalBoolAttribute(v7, v17, "firstColumn", &v49);
      v19 = v49;

      if (v18 && v19)
      {
        v13 |= 4uLL;
      }

      v20 = [v5 WXMainNamespace];
      v21 = CXOptionalBoolAttribute(v7, v20, "lastColumn", &v49);
      v22 = v49;

      if (v21 && v22)
      {
        v13 |= 8uLL;
      }

      v23 = [v5 WXMainNamespace];
      v24 = CXOptionalBoolAttribute(v7, v23, "oddVBand", &v49);
      v25 = v49;

      if (v24 && v25)
      {
        v13 |= 0x10uLL;
      }

      v26 = [v5 WXMainNamespace];
      v27 = CXOptionalBoolAttribute(v7, v26, "evenVBand", &v49);
      v28 = v49;

      if (v27 && v28)
      {
        v13 |= 0x20uLL;
      }

      v29 = [v5 WXMainNamespace];
      v30 = CXOptionalBoolAttribute(v7, v29, "oddHBand", &v49);
      v31 = v49;

      if (v30 && v31)
      {
        v13 |= 0x40uLL;
      }

      v32 = [v5 WXMainNamespace];
      v33 = CXOptionalBoolAttribute(v7, v32, "evenHBand", &v49);
      v34 = v49;

      if (v33 && v34)
      {
        v13 |= 0x80uLL;
      }

      v35 = [v5 WXMainNamespace];
      v36 = CXOptionalBoolAttribute(v7, v35, "firstRowFirstColumn", &v49);
      v37 = v49;

      if (v36 && v37)
      {
        v13 |= 0x200uLL;
      }

      v38 = [v5 WXMainNamespace];
      v39 = CXOptionalBoolAttribute(v7, v38, "firstRowLastColumn", &v49);
      v40 = v49;

      if (v39 && v40)
      {
        v13 |= 0x100uLL;
      }

      v41 = [v5 WXMainNamespace];
      v42 = CXOptionalBoolAttribute(v7, v41, "lastRowFirstColumn", &v49);
      v43 = v49;

      if (v42 && v43)
      {
        v44 = v13 | 0x800;
      }

      else
      {
        v44 = v13;
      }

      v45 = [v5 WXMainNamespace];
      v46 = CXOptionalBoolAttribute(v7, v45, "lastRowLastColumn", &v49);
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