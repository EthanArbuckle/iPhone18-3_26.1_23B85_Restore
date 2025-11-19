@interface WXSection
+ (TCEnumerationMap)chapterNumberSeparatorEnumMap;
+ (TCEnumerationMap)lineNumberRestartEnumMap;
+ (TCEnumerationMap)pageBorderDepthEnumMap;
+ (TCEnumerationMap)pageBorderDisplayEnumMap;
+ (TCEnumerationMap)pageBorderOffsetEnumMap;
+ (TCEnumerationMap)pageOrientationEnumMap;
+ (TCEnumerationMap)sectionBreakEnumMap;
+ (TCEnumerationMap)verticalJustificationEnumMap;
+ (float)scaleFromPrinterSettings:(id)a3;
+ (void)chapterNumberSeparatorEnumMap;
+ (void)lineNumberRestartEnumMap;
+ (void)mapFooter:(_xmlNode *)a3 toSection:(id)a4 state:(id)a5;
+ (void)mapHeader:(_xmlNode *)a3 toSection:(id)a4 state:(id)a5;
+ (void)mapPrinterSettings:(_xmlNode *)a3 toSection:(id)a4 state:(id)a5;
+ (void)mapProperties:(_xmlNode *)a3 toSection:(id)a4 state:(id)a5;
+ (void)pageBorderDepthEnumMap;
+ (void)pageBorderDisplayEnumMap;
+ (void)pageBorderOffsetEnumMap;
+ (void)pageOrientationEnumMap;
+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5;
+ (void)sectionBreakEnumMap;
+ (void)verticalJustificationEnumMap;
@end

@implementation WXSection

+ (TCEnumerationMap)sectionBreakEnumMap
{
  {
    +[WXSection sectionBreakEnumMap];
  }

  if (+[WXSection sectionBreakEnumMap]::onceToken != -1)
  {
    +[WXSection sectionBreakEnumMap];
  }

  v2 = +[WXSection sectionBreakEnumMap]::sSectionBreakEnumMap;

  return v2;
}

void __32__WXSection_sectionBreakEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXSection sectionBreakEnumMap]::sSectionBreakEnumStructs count:5 caseSensitive:1];
  v1 = +[WXSection sectionBreakEnumMap]::sSectionBreakEnumMap;
  +[WXSection sectionBreakEnumMap]::sSectionBreakEnumMap = v0;
}

+ (TCEnumerationMap)pageOrientationEnumMap
{
  {
    +[WXSection pageOrientationEnumMap];
  }

  if (+[WXSection pageOrientationEnumMap]::onceToken != -1)
  {
    +[WXSection pageOrientationEnumMap];
  }

  v2 = +[WXSection pageOrientationEnumMap]::sPageOrientationEnumMap;

  return v2;
}

void __35__WXSection_pageOrientationEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXSection pageOrientationEnumMap]::sPageOrientationEnumStructs count:2 caseSensitive:1];
  v1 = +[WXSection pageOrientationEnumMap]::sPageOrientationEnumMap;
  +[WXSection pageOrientationEnumMap]::sPageOrientationEnumMap = v0;
}

+ (TCEnumerationMap)pageBorderDepthEnumMap
{
  {
    +[WXSection pageBorderDepthEnumMap];
  }

  if (+[WXSection pageBorderDepthEnumMap]::onceToken != -1)
  {
    +[WXSection pageBorderDepthEnumMap];
  }

  v2 = +[WXSection pageBorderDepthEnumMap]::sPageBorderDepthEnumMap;

  return v2;
}

void __35__WXSection_pageBorderDepthEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXSection pageBorderDepthEnumMap]::sPageBorderDepthEnumStructs count:2 caseSensitive:1];
  v1 = +[WXSection pageBorderDepthEnumMap]::sPageBorderDepthEnumMap;
  +[WXSection pageBorderDepthEnumMap]::sPageBorderDepthEnumMap = v0;
}

+ (TCEnumerationMap)pageBorderDisplayEnumMap
{
  {
    +[WXSection pageBorderDisplayEnumMap];
  }

  if (+[WXSection pageBorderDisplayEnumMap]::onceToken != -1)
  {
    +[WXSection pageBorderDisplayEnumMap];
  }

  v2 = +[WXSection pageBorderDisplayEnumMap]::sPageBorderDisplayEnumMap;

  return v2;
}

void __37__WXSection_pageBorderDisplayEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXSection pageBorderDisplayEnumMap]::sPageBorderDisplayEnumStructs count:3 caseSensitive:1];
  v1 = +[WXSection pageBorderDisplayEnumMap]::sPageBorderDisplayEnumMap;
  +[WXSection pageBorderDisplayEnumMap]::sPageBorderDisplayEnumMap = v0;
}

+ (TCEnumerationMap)pageBorderOffsetEnumMap
{
  {
    +[WXSection pageBorderOffsetEnumMap];
  }

  if (+[WXSection pageBorderOffsetEnumMap]::onceToken != -1)
  {
    +[WXSection pageBorderOffsetEnumMap];
  }

  return [a1 pageBorderDisplayEnumMap];
}

void __36__WXSection_pageBorderOffsetEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXSection pageBorderOffsetEnumMap]::sPageBorderOffsetEnumStructs count:2 caseSensitive:1];
  v1 = +[WXSection pageBorderOffsetEnumMap]::sPageBorderOffsetEnumMap;
  +[WXSection pageBorderOffsetEnumMap]::sPageBorderOffsetEnumMap = v0;
}

+ (TCEnumerationMap)lineNumberRestartEnumMap
{
  {
    +[WXSection lineNumberRestartEnumMap];
  }

  if (+[WXSection lineNumberRestartEnumMap]::onceToken != -1)
  {
    +[WXSection lineNumberRestartEnumMap];
  }

  v2 = +[WXSection lineNumberRestartEnumMap]::sLineNumberRestartEnumMap;

  return v2;
}

void __37__WXSection_lineNumberRestartEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXSection lineNumberRestartEnumMap]::sLineNumberRestartEnumStructs count:3 caseSensitive:1];
  v1 = +[WXSection lineNumberRestartEnumMap]::sLineNumberRestartEnumMap;
  +[WXSection lineNumberRestartEnumMap]::sLineNumberRestartEnumMap = v0;
}

+ (TCEnumerationMap)verticalJustificationEnumMap
{
  {
    +[WXSection verticalJustificationEnumMap];
  }

  if (+[WXSection verticalJustificationEnumMap]::onceToken != -1)
  {
    +[WXSection verticalJustificationEnumMap];
  }

  v2 = +[WXSection verticalJustificationEnumMap]::sVerticalJustificationEnumMap;

  return v2;
}

void __41__WXSection_verticalJustificationEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXSection verticalJustificationEnumMap]::sVerticalJustificationEnumStructs count:4 caseSensitive:1];
  v1 = +[WXSection verticalJustificationEnumMap]::sVerticalJustificationEnumMap;
  +[WXSection verticalJustificationEnumMap]::sVerticalJustificationEnumMap = v0;
}

+ (TCEnumerationMap)chapterNumberSeparatorEnumMap
{
  {
    +[WXSection chapterNumberSeparatorEnumMap];
  }

  if (+[WXSection chapterNumberSeparatorEnumMap]::onceToken != -1)
  {
    +[WXSection chapterNumberSeparatorEnumMap];
  }

  v2 = +[WXSection chapterNumberSeparatorEnumMap]::sChapterNumberSeparatorEnumMap;

  return v2;
}

void __42__WXSection_chapterNumberSeparatorEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXSection chapterNumberSeparatorEnumMap]::sChapterNumberSeparatorEnumStructs count:5 caseSensitive:1];
  v1 = +[WXSection chapterNumberSeparatorEnumMap]::sChapterNumberSeparatorEnumMap;
  +[WXSection chapterNumberSeparatorEnumMap]::sChapterNumberSeparatorEnumMap = v0;
}

+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5
{
  v24 = a4;
  v8 = a5;
  [v24 setResolveMode:0];
  v9 = [v8 WXMainNamespace];
  Child = OCXFindChild(a3, v9, "headerReference");

  while (Child)
  {
    [a1 mapHeader:Child toSection:v24 state:v8];
    v11 = [v8 WXMainNamespace];
    Child = OCXFindNextChild(Child, v11, "headerReference");
  }

  v12 = [v8 WXMainNamespace];
  v13 = OCXFindChild(a3, v12, "footerReference");

  while (v13)
  {
    [a1 mapFooter:v13 toSection:v24 state:v8];
    v14 = [v8 WXMainNamespace];
    v13 = OCXFindNextChild(v13, v14, "footerReference");
  }

  v15 = [v8 WXMainNamespace];
  v16 = OCXFindChild(a3, v15, "printerSettings");

  if (v16)
  {
    [a1 mapPrinterSettings:v16 toSection:v24 state:v8];
  }

  [a1 mapProperties:a3 toSection:v24 state:v8];
  v17 = [v8 WXMainNamespace];
  v18 = OCXFindChild(a3, v17, "sectPrChange");

  if (v18)
  {
    v19 = [v8 WXMainNamespace];
    v20 = OCXFindChild(v18, v19, "sectPr");

    if (v20)
    {
      [v24 setResolveMode:1];
      [a1 mapProperties:a3 toSection:v24 state:v8];
      [v24 setFormattingChanged:1];
      v21 = wmxmlGetDateProperty(v18);
      [v24 setFormattingChangeDate:v21];

      v22 = [v8 document];
      v23 = wmxmlGetAuthorProperty(v18);
      [v24 setIndexToAuthorIDOfFormattingChange:{objc_msgSend(v22, "revisionAuthorAddLookup:", v23)}];

      [v24 setResolveMode:0];
      [a1 mapProperties:v20 toSection:v24 state:v8];
    }
  }

  [v24 setResolveMode:2];
}

+ (float)scaleFromPrinterSettings:(id)a3
{
  v16 = 0;
  v3 = [MEMORY[0x277CCAC58] propertyListWithData:a3 options:0 format:0 error:&v16];
  v4 = v16;
  v5 = 1.0;
  if (v3)
  {
    v6 = [v3 valueForKey:@"com.apple.print.PageFormat.PMScaling"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 valueForKey:@"com.apple.print.ticket.itemArray"];
      v9 = v8;
      if (v8 && [v8 count] == 1 && (objc_msgSend(v9, "objectAtIndex:", 0), v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v10, (isKindOfClass & 1) != 0))
      {
        v12 = [v9 objectAtIndex:0];

        v13 = [v12 valueForKey:@"com.apple.print.PageFormat.PMScaling"];
        [v13 floatValue];
        v5 = v14;
      }

      else
      {
        v12 = v7;
      }
    }
  }

  return v5;
}

+ (void)mapHeader:(_xmlNode *)a3 toSection:(id)a4 state:(id)a5
{
  v31 = a4;
  v7 = a5;
  context = objc_autoreleasePoolPush();
  v8 = [v7 wxoavState];
  v9 = [v8 packagePart];
  v10 = [v7 OCXReadRequiredRelationshipForNode:a3 packagePart:v9];

  v30 = v10;
  v29 = [v10 identifier];
  v11 = [v7 packagePart];
  v12 = [v11 package];

  v13 = [v7 packagePart];
  v14 = [v13 relationshipForIdentifier:v29];

  v15 = [v14 targetLocation];
  v16 = [v12 partForLocation:v15];

  v32 = [v7 packagePart];
  [v7 setPackagePart:v16];
  v17 = [v7 wxoavState];
  v18 = [v17 packagePart];
  [v17 setPackagePart:v16];
  v19 = [v7 drawingState];
  v20 = [v19 packagePart];
  [v19 setPackagePart:v16];
  v21 = [v16 xmlReader];
  v22 = v21;
  if (v21 && xmlTextReaderRead(v21) == 1 && xmlTextReaderNodeType(v22) == 1)
  {
    Prop = xmlGetProp(a3, "type");
    if (xmlStrcmp(Prop, "even"))
    {
      if (xmlStrcmp(Prop, "default"))
      {
        if (!xmlStrcmp(Prop, "first"))
        {
          v25 = [v31 firstPageHeader];
          [WXText readFromStream:v22 baseStyle:0 to:v25 state:v7];
        }
      }

      else
      {
        v27 = [v31 oddPageHeader];
        [WXText readFromStream:v22 baseStyle:0 to:v27 state:v7];
      }
    }

    else
    {
      v26 = [v31 evenPageHeader];
      [WXText readFromStream:v22 baseStyle:0 to:v26 state:v7];
    }

    free(Prop);
  }

  [v17 setPackagePart:v18];
  [v19 setPackagePart:v20];
  [v7 setPackagePart:v32];
  v24 = [v14 targetLocation];
  [v12 resetPartForLocation:v24];

  xmlFreeTextReader(v22);
  objc_autoreleasePoolPop(context);
}

+ (void)mapFooter:(_xmlNode *)a3 toSection:(id)a4 state:(id)a5
{
  v31 = a4;
  v7 = a5;
  context = objc_autoreleasePoolPush();
  v8 = [v7 wxoavState];
  v9 = [v8 packagePart];
  v10 = [v7 OCXReadRequiredRelationshipForNode:a3 packagePart:v9];

  v30 = v10;
  v29 = [v10 identifier];
  v11 = [v7 packagePart];
  v12 = [v11 package];

  v13 = [v7 packagePart];
  v14 = [v13 relationshipForIdentifier:v29];

  v15 = [v14 targetLocation];
  v16 = [v12 partForLocation:v15];

  v32 = [v7 packagePart];
  [v7 setPackagePart:v16];
  v17 = [v7 wxoavState];
  v18 = [v17 packagePart];
  [v17 setPackagePart:v16];
  v19 = [v7 drawingState];
  v20 = [v19 packagePart];
  [v19 setPackagePart:v16];
  v21 = [v16 xmlReader];
  v22 = v21;
  if (v21 && xmlTextReaderRead(v21) == 1 && xmlTextReaderNodeType(v22) == 1)
  {
    Prop = xmlGetProp(a3, "type");
    if (xmlStrcmp(Prop, "even"))
    {
      if (xmlStrcmp(Prop, "default"))
      {
        if (!xmlStrcmp(Prop, "first"))
        {
          v25 = [v31 firstPageFooter];
          [WXText readFromStream:v22 baseStyle:0 to:v25 state:v7];
        }
      }

      else
      {
        v27 = [v31 oddPageFooter];
        [WXText readFromStream:v22 baseStyle:0 to:v27 state:v7];
      }
    }

    else
    {
      v26 = [v31 evenPageFooter];
      [WXText readFromStream:v22 baseStyle:0 to:v26 state:v7];
    }

    free(Prop);
  }

  [v17 setPackagePart:v18];
  [v19 setPackagePart:v20];
  [v7 setPackagePart:v32];
  v24 = [v14 targetLocation];
  [v12 resetPartForLocation:v24];

  xmlFreeTextReader(v22);
  objc_autoreleasePoolPop(context);
}

+ (void)mapPrinterSettings:(_xmlNode *)a3 toSection:(id)a4 state:(id)a5
{
  v23 = a4;
  v8 = a5;
  v9 = [v8 wxoavState];
  v10 = [v9 packagePart];
  v11 = [v8 OCXReadRequiredRelationshipForNode:a3 packagePart:v10];

  v12 = [v11 identifier];
  v13 = [v8 packagePart];
  v14 = [v13 package];

  v15 = [v8 packagePart];
  v16 = [v15 relationshipForIdentifier:v12];

  v17 = [v16 targetLocation];
  v18 = [v14 partForLocation:v17];

  if (v18)
  {
    v19 = [v18 data];
    [a1 scaleFromPrinterSettings:v19];
    v21 = v20;

    if (v21 != 1.0)
    {
      [v23 setPageScale:(v21 * 100.0)];
    }
  }

  v22 = [v16 targetLocation];
  [v14 resetPartForLocation:v22];
}

+ (void)mapProperties:(_xmlNode *)a3 toSection:(id)a4 state:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(WXReadState *)v8 WXMainNamespace];
  v10 = OCXFindChild(a3, v9, "pgBorders");

  if (v10)
  {
    v11 = [(WXReadState *)v8 WXMainNamespace];
    v12 = OCXFindChild(v10, v11, "top");

    if (v12)
    {
      v13 = [v7 mutableTopBorder];
      [WXBorder readFrom:v12 to:v13 state:v8];

      v14 = [(OCXState *)v8 OCXRelationshipsNamespace];
      v133 = 0;
      CXOptionalStringAttribute(v12, v14, "id", &v133);
      v15 = v133;

      v16 = [(OCXState *)v8 OCXRelationshipsNamespace];
      v132 = 0;
      CXOptionalStringAttribute(v12, v16, "topLeft", &v132);
      v17 = v132;

      v18 = [(OCXState *)v8 OCXRelationshipsNamespace];
      v131 = 0;
      CXOptionalStringAttribute(v12, v18, "topRight", &v131);
    }

    v19 = [(WXReadState *)v8 WXMainNamespace];
    v20 = OCXFindChild(v10, v19, "left");

    if (v20)
    {
      v21 = [v7 mutableLeftBorder];
      [WXBorder readFrom:v20 to:v21 state:v8];

      v22 = [(OCXState *)v8 OCXRelationshipsNamespace];
      v130 = 0;
      CXOptionalStringAttribute(v20, v22, "id", &v130);
    }

    v23 = [(WXReadState *)v8 WXMainNamespace];
    v24 = OCXFindChild(v10, v23, "bottom");

    if (v24)
    {
      v25 = [v7 mutableBottomBorder];
      [WXBorder readFrom:v24 to:v25 state:v8];

      v26 = [(OCXState *)v8 OCXRelationshipsNamespace];
      v129 = 0;
      CXOptionalStringAttribute(v24, v26, "id", &v129);
      v27 = v129;

      v28 = [(OCXState *)v8 OCXRelationshipsNamespace];
      v128 = 0;
      CXOptionalStringAttribute(v24, v28, "bottomLeft", &v128);
      v29 = v128;

      v30 = [(OCXState *)v8 OCXRelationshipsNamespace];
      v127 = 0;
      CXOptionalStringAttribute(v24, v30, "bottomRight", &v127);
    }

    v31 = [(WXReadState *)v8 WXMainNamespace];
    v32 = OCXFindChild(v10, v31, "right");

    if (v32)
    {
      v33 = [v7 mutableRightBorder];
      [WXBorder readFrom:v32 to:v33 state:v8];

      v34 = [(OCXState *)v8 OCXRelationshipsNamespace];
      v126 = 0;
      CXOptionalStringAttribute(v32, v34, "id", &v126);
    }
  }

  v35 = [(WXReadState *)v8 WXMainNamespace];
  v36 = OCXFindChild(a3, v35, "cols");

  if (v36)
  {
    v134 = 0;
    v37 = [(WXReadState *)v8 WXMainNamespace];
    v38 = OCXFindChild(a3, v37, "cols");

    v39 = [(WXReadState *)v8 WXMainNamespace];
    v40 = CXOptionalLongAttribute(v38, v39, "num", &v134);

    if (v40)
    {
      [v7 setColumnCount:v134];
    }

    [v7 isColumnCountOverridden];
    v125 = 0;
    v41 = [(WXReadState *)v8 WXMainNamespace];
    v42 = CXOptionalLongAttribute(v38, v41, "space", &v125, 14);

    if (v42)
    {
      [v7 setColumnSpace:v125];
    }

    v43 = [(WXReadState *)v8 WXMainNamespace];
    v124 = 0;
    v44 = CXOptionalStringAttribute(v36, v43, "equalWidth", &v124);
    v45 = v124;

    if (v44)
    {
      [v7 setColumnsEqualWidth:{objc_msgSend(v45, "isEqualToString:", @"0"}];
    }

    if ([v7 isColumnsEqualWidthOverridden])
    {
      if (([v7 columnsEqualWidth] & 1) == 0)
      {
        v46 = [(WXReadState *)v8 WXMainNamespace];
        Child = OCXFindChild(v36, v46, "col");

        while (Child)
        {
          v48 = [(WXReadState *)v8 WXMainNamespace];
          v49 = CXDefaultLongAttribute(Child, v48, "w", 0, 14);

          [v7 appendColumnWidth:v49];
          v50 = [(WXReadState *)v8 WXMainNamespace];
          v51 = CXDefaultLongAttribute(Child, v50, "space", 0, 14);

          [v7 appendColumnSpace:v51];
          v52 = [(WXReadState *)v8 WXMainNamespace];
          Child = OCXFindNextChild(Child, v52, "col");
        }
      }
    }
  }

  v123 = 0;
  if (wmxmlGetBoolOnlyProperty(a3, "titlePg", "val", &v123, v8))
  {
    [v7 setTitlePage:v123];
  }

  v53 = [(WXReadState *)v8 WXMainNamespace];
  v54 = OCXFindChild(a3, v53, "bidi");

  if (v54)
  {
    v55 = [(WXReadState *)v8 WXMainNamespace];
    v56 = CXDefaultLongAttribute(v54, v55, "val", 1);

    [v7 setBidi:v56 == 1];
  }

  v57 = [(WXReadState *)v8 WXMainNamespace];
  v58 = OCXFindChild(a3, v57, "rtlGutter");

  if (v58)
  {
    [v7 setRtlGutter:1];
  }

  v59 = [(WXReadState *)v8 WXMainNamespace];
  v60 = OCXFindChild(a3, v59, "pgSz");

  if (v60)
  {
    v61 = [(WXReadState *)v8 WXMainNamespace];
    v62 = CXRequiredLongAttribute(v60, v61, "w", 14);

    if (v62 >= 0)
    {
      v63 = v62;
    }

    else
    {
      v63 = 12240;
    }

    [v7 setPageWidth:v63];
    v64 = [(WXReadState *)v8 WXMainNamespace];
    v65 = CXRequiredLongAttribute(v60, v64, "h", 14);

    if (v65 >= 0)
    {
      v66 = v65;
    }

    else
    {
      v66 = 15840;
    }

    [v7 setPageHeight:v66];
  }

  v125 = 0;
  v67 = [(WXReadState *)v8 WXMainNamespace];
  v68 = OCXFindChild(a3, v67, "pgMar");

  if (v68)
  {
    v69 = [(WXReadState *)v8 WXMainNamespace];
    v125 = CXRequiredLongAttribute(v68, v69, "left", 14);

    [v7 setLeftMargin:v125];
    v70 = [(WXReadState *)v8 WXMainNamespace];
    v125 = CXRequiredLongAttribute(v68, v70, "right", 14);

    [v7 setRightMargin:v125];
    v71 = [(WXReadState *)v8 WXMainNamespace];
    v125 = CXRequiredLongAttribute(v68, v71, "top", 14);

    [v7 setTopMargin:v125];
    v72 = [(WXReadState *)v8 WXMainNamespace];
    v125 = CXRequiredLongAttribute(v68, v72, "bottom", 14);

    [v7 setBottomMargin:v125];
    v73 = [(WXReadState *)v8 WXMainNamespace];
    v74 = CXDefaultLongAttribute(v68, v73, "header", 720, 14);

    [v7 setHeaderMargin:v74];
    v75 = [(WXReadState *)v8 WXMainNamespace];
    v76 = CXDefaultLongAttribute(v68, v75, "footer", 720, 14);

    [v7 setFooterMargin:v76];
    v77 = [(WXReadState *)v8 WXMainNamespace];
    v78 = CXRequiredLongAttribute(v68, v77, "gutter", 14);

    [v7 setGutterMargin:v78];
  }

  v79 = [(WXReadState *)v8 WXMainNamespace];
  v80 = OCXFindChild(a3, v79, "lnNumType");

  v81 = [(WXReadState *)v8 WXMainNamespace];
  v82 = CXOptionalLongAttribute(v80, v81, "start", &v125);

  if (v82)
  {
    [v7 setLineNumberStart:v125];
  }

  v83 = [(WXReadState *)v8 WXMainNamespace];
  v84 = CXOptionalLongAttribute(v80, v83, "countBy", &v125);

  if (v84)
  {
    [v7 setLineNumberIncrement:v125];
  }

  v85 = [(WXReadState *)v8 WXMainNamespace];
  v86 = CXOptionalLongAttribute(v80, v85, "distance", &v125, 14);

  if (v86)
  {
    [v7 setLineNumberDistance:v125];
  }

  v87 = [(WXReadState *)v8 WXMainNamespace];
  v88 = OCXFindChild(a3, v87, "pgNumType");

  v89 = [(WXReadState *)v8 WXMainNamespace];
  v90 = CXOptionalLongAttribute(v88, v89, "start", &v125);

  if (v90)
  {
    [v7 setPageNumberStart:v125];
    [v7 setPageNumberRestart:1];
  }

  v91 = +[WXCommon numberFormatEnumMap];
  v134 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(v88, "fmt", &v134);
  v93 = v134;
  v94 = 4164083326;
  if (NSStringAnyNsProp)
  {
    v94 = [v91 valueForString:v93];
  }

  if (v94 != -130883970)
  {
    [v7 setPageNumberFormat:v94];
  }

  LODWORD(v134) = 0;
  v95 = +[WXCommon textDirectionEnumMap];
  if (readEnumProperty<WDTextDirection>(a3, "textDirection", "val", v95, &v134, v8))
  {
  }

  else
  {
    v96 = +[WXCommon strictTextDirectionEnumMap];
    v97 = readEnumProperty<WDTextDirection>(a3, "textDirection", "val", v96, &v134, v8);

    if (!v97)
    {
      goto LABEL_54;
    }
  }

  [v7 setTextDirection:v134];
LABEL_54:
  v122 = 0;
  v98 = [a1 sectionBreakEnumMap];
  v99 = readEnumProperty<WDSectionBreakType>(a3, "type", "val", v98, &v122, v8);

  if (v99)
  {
    [v7 setBreakType:v122];
  }

  v121 = 0;
  v100 = [a1 pageOrientationEnumMap];
  v101 = readEnumProperty<WDPageOrientation>(a3, "pgSz", "orient", v100, &v121, v8);

  if (v101)
  {
    [v7 setPageOrientation:v121];
  }

  v120 = 0;
  v102 = [a1 pageBorderDepthEnumMap];
  v103 = readEnumProperty<WDPageBorderDepth>(a3, "pgBorders", "zOrder", v102, &v120, v8);

  if (v103)
  {
    [v7 setBorderDepth:v120];
  }

  v119 = 0;
  v104 = [a1 pageBorderDisplayEnumMap];
  v105 = readEnumProperty<WDPageBorderDisplay>(a3, "pgBorders", "display", v104, &v119, v8);

  if (v105)
  {
    [v7 setBorderDisplay:v119];
  }

  v118 = 0;
  v106 = [a1 pageBorderOffsetEnumMap];
  v107 = readEnumProperty<WDPageBorderOffset>(a3, "pgBorders", "offsetFrom", v106, &v118, v8);

  if (v107)
  {
    [v7 setBorderOffset:v118];
  }

  v117 = 0;
  v108 = [a1 lineNumberRestartEnumMap];
  v109 = readEnumProperty<WDLineNumberRestart>(a3, "lnNumType", "restart", v108, &v117, v8);

  if (v109)
  {
    [v7 setLineNumberRestart:v117];
  }

  v116 = 0;
  v110 = [a1 verticalJustificationEnumMap];
  v111 = readEnumProperty<WDVerticalJustification>(a3, "vAlign", "val", v110, &v116, v8);

  if (v111)
  {
    [v7 setVerticalJustification:v116];
  }

  v115 = 0;
  v112 = [a1 chapterNumberSeparatorEnumMap];
  v113 = readEnumProperty<WDChapterNumberSeparator>(a3, "pgNumType", "chapSep", v112, &v115, v8);

  if (v113)
  {
    [v7 setChapterNumberSeparator:v115];
  }
}

+ (void)sectionBreakEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)pageOrientationEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)pageBorderDepthEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)pageBorderDisplayEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)pageBorderOffsetEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)lineNumberRestartEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)verticalJustificationEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)chapterNumberSeparatorEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

@end