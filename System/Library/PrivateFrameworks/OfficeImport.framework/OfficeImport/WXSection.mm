@interface WXSection
+ (TCEnumerationMap)chapterNumberSeparatorEnumMap;
+ (TCEnumerationMap)lineNumberRestartEnumMap;
+ (TCEnumerationMap)pageBorderDepthEnumMap;
+ (TCEnumerationMap)pageBorderDisplayEnumMap;
+ (TCEnumerationMap)pageBorderOffsetEnumMap;
+ (TCEnumerationMap)pageOrientationEnumMap;
+ (TCEnumerationMap)sectionBreakEnumMap;
+ (TCEnumerationMap)verticalJustificationEnumMap;
+ (float)scaleFromPrinterSettings:(id)settings;
+ (void)chapterNumberSeparatorEnumMap;
+ (void)lineNumberRestartEnumMap;
+ (void)mapFooter:(_xmlNode *)footer toSection:(id)section state:(id)state;
+ (void)mapHeader:(_xmlNode *)header toSection:(id)section state:(id)state;
+ (void)mapPrinterSettings:(_xmlNode *)settings toSection:(id)section state:(id)state;
+ (void)mapProperties:(_xmlNode *)properties toSection:(id)section state:(id)state;
+ (void)pageBorderDepthEnumMap;
+ (void)pageBorderDisplayEnumMap;
+ (void)pageBorderOffsetEnumMap;
+ (void)pageOrientationEnumMap;
+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state;
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

  return [self pageBorderDisplayEnumMap];
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

+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  [toCopy setResolveMode:0];
  wXMainNamespace = [stateCopy WXMainNamespace];
  Child = OCXFindChild(from, wXMainNamespace, "headerReference");

  while (Child)
  {
    [self mapHeader:Child toSection:toCopy state:stateCopy];
    wXMainNamespace2 = [stateCopy WXMainNamespace];
    Child = OCXFindNextChild(Child, wXMainNamespace2, "headerReference");
  }

  wXMainNamespace3 = [stateCopy WXMainNamespace];
  v13 = OCXFindChild(from, wXMainNamespace3, "footerReference");

  while (v13)
  {
    [self mapFooter:v13 toSection:toCopy state:stateCopy];
    wXMainNamespace4 = [stateCopy WXMainNamespace];
    v13 = OCXFindNextChild(v13, wXMainNamespace4, "footerReference");
  }

  wXMainNamespace5 = [stateCopy WXMainNamespace];
  v16 = OCXFindChild(from, wXMainNamespace5, "printerSettings");

  if (v16)
  {
    [self mapPrinterSettings:v16 toSection:toCopy state:stateCopy];
  }

  [self mapProperties:from toSection:toCopy state:stateCopy];
  wXMainNamespace6 = [stateCopy WXMainNamespace];
  v18 = OCXFindChild(from, wXMainNamespace6, "sectPrChange");

  if (v18)
  {
    wXMainNamespace7 = [stateCopy WXMainNamespace];
    v20 = OCXFindChild(v18, wXMainNamespace7, "sectPr");

    if (v20)
    {
      [toCopy setResolveMode:1];
      [self mapProperties:from toSection:toCopy state:stateCopy];
      [toCopy setFormattingChanged:1];
      v21 = wmxmlGetDateProperty(v18);
      [toCopy setFormattingChangeDate:v21];

      document = [stateCopy document];
      v23 = wmxmlGetAuthorProperty(v18);
      [toCopy setIndexToAuthorIDOfFormattingChange:{objc_msgSend(document, "revisionAuthorAddLookup:", v23)}];

      [toCopy setResolveMode:0];
      [self mapProperties:v20 toSection:toCopy state:stateCopy];
    }
  }

  [toCopy setResolveMode:2];
}

+ (float)scaleFromPrinterSettings:(id)settings
{
  v16 = 0;
  v3 = [MEMORY[0x277CCAC58] propertyListWithData:settings options:0 format:0 error:&v16];
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

+ (void)mapHeader:(_xmlNode *)header toSection:(id)section state:(id)state
{
  sectionCopy = section;
  stateCopy = state;
  context = objc_autoreleasePoolPush();
  wxoavState = [stateCopy wxoavState];
  packagePart = [wxoavState packagePart];
  v10 = [stateCopy OCXReadRequiredRelationshipForNode:header packagePart:packagePart];

  v30 = v10;
  identifier = [v10 identifier];
  packagePart2 = [stateCopy packagePart];
  package = [packagePart2 package];

  packagePart3 = [stateCopy packagePart];
  v14 = [packagePart3 relationshipForIdentifier:identifier];

  targetLocation = [v14 targetLocation];
  v16 = [package partForLocation:targetLocation];

  packagePart4 = [stateCopy packagePart];
  [stateCopy setPackagePart:v16];
  wxoavState2 = [stateCopy wxoavState];
  packagePart5 = [wxoavState2 packagePart];
  [wxoavState2 setPackagePart:v16];
  drawingState = [stateCopy drawingState];
  packagePart6 = [drawingState packagePart];
  [drawingState setPackagePart:v16];
  xmlReader = [v16 xmlReader];
  v22 = xmlReader;
  if (xmlReader && xmlTextReaderRead(xmlReader) == 1 && xmlTextReaderNodeType(v22) == 1)
  {
    Prop = xmlGetProp(header, "type");
    if (xmlStrcmp(Prop, "even"))
    {
      if (xmlStrcmp(Prop, "default"))
      {
        if (!xmlStrcmp(Prop, "first"))
        {
          firstPageHeader = [sectionCopy firstPageHeader];
          [WXText readFromStream:v22 baseStyle:0 to:firstPageHeader state:stateCopy];
        }
      }

      else
      {
        oddPageHeader = [sectionCopy oddPageHeader];
        [WXText readFromStream:v22 baseStyle:0 to:oddPageHeader state:stateCopy];
      }
    }

    else
    {
      evenPageHeader = [sectionCopy evenPageHeader];
      [WXText readFromStream:v22 baseStyle:0 to:evenPageHeader state:stateCopy];
    }

    free(Prop);
  }

  [wxoavState2 setPackagePart:packagePart5];
  [drawingState setPackagePart:packagePart6];
  [stateCopy setPackagePart:packagePart4];
  targetLocation2 = [v14 targetLocation];
  [package resetPartForLocation:targetLocation2];

  xmlFreeTextReader(v22);
  objc_autoreleasePoolPop(context);
}

+ (void)mapFooter:(_xmlNode *)footer toSection:(id)section state:(id)state
{
  sectionCopy = section;
  stateCopy = state;
  context = objc_autoreleasePoolPush();
  wxoavState = [stateCopy wxoavState];
  packagePart = [wxoavState packagePart];
  v10 = [stateCopy OCXReadRequiredRelationshipForNode:footer packagePart:packagePart];

  v30 = v10;
  identifier = [v10 identifier];
  packagePart2 = [stateCopy packagePart];
  package = [packagePart2 package];

  packagePart3 = [stateCopy packagePart];
  v14 = [packagePart3 relationshipForIdentifier:identifier];

  targetLocation = [v14 targetLocation];
  v16 = [package partForLocation:targetLocation];

  packagePart4 = [stateCopy packagePart];
  [stateCopy setPackagePart:v16];
  wxoavState2 = [stateCopy wxoavState];
  packagePart5 = [wxoavState2 packagePart];
  [wxoavState2 setPackagePart:v16];
  drawingState = [stateCopy drawingState];
  packagePart6 = [drawingState packagePart];
  [drawingState setPackagePart:v16];
  xmlReader = [v16 xmlReader];
  v22 = xmlReader;
  if (xmlReader && xmlTextReaderRead(xmlReader) == 1 && xmlTextReaderNodeType(v22) == 1)
  {
    Prop = xmlGetProp(footer, "type");
    if (xmlStrcmp(Prop, "even"))
    {
      if (xmlStrcmp(Prop, "default"))
      {
        if (!xmlStrcmp(Prop, "first"))
        {
          firstPageFooter = [sectionCopy firstPageFooter];
          [WXText readFromStream:v22 baseStyle:0 to:firstPageFooter state:stateCopy];
        }
      }

      else
      {
        oddPageFooter = [sectionCopy oddPageFooter];
        [WXText readFromStream:v22 baseStyle:0 to:oddPageFooter state:stateCopy];
      }
    }

    else
    {
      evenPageFooter = [sectionCopy evenPageFooter];
      [WXText readFromStream:v22 baseStyle:0 to:evenPageFooter state:stateCopy];
    }

    free(Prop);
  }

  [wxoavState2 setPackagePart:packagePart5];
  [drawingState setPackagePart:packagePart6];
  [stateCopy setPackagePart:packagePart4];
  targetLocation2 = [v14 targetLocation];
  [package resetPartForLocation:targetLocation2];

  xmlFreeTextReader(v22);
  objc_autoreleasePoolPop(context);
}

+ (void)mapPrinterSettings:(_xmlNode *)settings toSection:(id)section state:(id)state
{
  sectionCopy = section;
  stateCopy = state;
  wxoavState = [stateCopy wxoavState];
  packagePart = [wxoavState packagePart];
  v11 = [stateCopy OCXReadRequiredRelationshipForNode:settings packagePart:packagePart];

  identifier = [v11 identifier];
  packagePart2 = [stateCopy packagePart];
  package = [packagePart2 package];

  packagePart3 = [stateCopy packagePart];
  v16 = [packagePart3 relationshipForIdentifier:identifier];

  targetLocation = [v16 targetLocation];
  v18 = [package partForLocation:targetLocation];

  if (v18)
  {
    data = [v18 data];
    [self scaleFromPrinterSettings:data];
    v21 = v20;

    if (v21 != 1.0)
    {
      [sectionCopy setPageScale:(v21 * 100.0)];
    }
  }

  targetLocation2 = [v16 targetLocation];
  [package resetPartForLocation:targetLocation2];
}

+ (void)mapProperties:(_xmlNode *)properties toSection:(id)section state:(id)state
{
  sectionCopy = section;
  stateCopy = state;
  wXMainNamespace = [(WXReadState *)stateCopy WXMainNamespace];
  v10 = OCXFindChild(properties, wXMainNamespace, "pgBorders");

  if (v10)
  {
    wXMainNamespace2 = [(WXReadState *)stateCopy WXMainNamespace];
    v12 = OCXFindChild(v10, wXMainNamespace2, "top");

    if (v12)
    {
      mutableTopBorder = [sectionCopy mutableTopBorder];
      [WXBorder readFrom:v12 to:mutableTopBorder state:stateCopy];

      oCXRelationshipsNamespace = [(OCXState *)stateCopy OCXRelationshipsNamespace];
      v133 = 0;
      CXOptionalStringAttribute(v12, oCXRelationshipsNamespace, "id", &v133);
      v15 = v133;

      oCXRelationshipsNamespace2 = [(OCXState *)stateCopy OCXRelationshipsNamespace];
      v132 = 0;
      CXOptionalStringAttribute(v12, oCXRelationshipsNamespace2, "topLeft", &v132);
      v17 = v132;

      oCXRelationshipsNamespace3 = [(OCXState *)stateCopy OCXRelationshipsNamespace];
      v131 = 0;
      CXOptionalStringAttribute(v12, oCXRelationshipsNamespace3, "topRight", &v131);
    }

    wXMainNamespace3 = [(WXReadState *)stateCopy WXMainNamespace];
    v20 = OCXFindChild(v10, wXMainNamespace3, "left");

    if (v20)
    {
      mutableLeftBorder = [sectionCopy mutableLeftBorder];
      [WXBorder readFrom:v20 to:mutableLeftBorder state:stateCopy];

      oCXRelationshipsNamespace4 = [(OCXState *)stateCopy OCXRelationshipsNamespace];
      v130 = 0;
      CXOptionalStringAttribute(v20, oCXRelationshipsNamespace4, "id", &v130);
    }

    wXMainNamespace4 = [(WXReadState *)stateCopy WXMainNamespace];
    v24 = OCXFindChild(v10, wXMainNamespace4, "bottom");

    if (v24)
    {
      mutableBottomBorder = [sectionCopy mutableBottomBorder];
      [WXBorder readFrom:v24 to:mutableBottomBorder state:stateCopy];

      oCXRelationshipsNamespace5 = [(OCXState *)stateCopy OCXRelationshipsNamespace];
      v129 = 0;
      CXOptionalStringAttribute(v24, oCXRelationshipsNamespace5, "id", &v129);
      v27 = v129;

      oCXRelationshipsNamespace6 = [(OCXState *)stateCopy OCXRelationshipsNamespace];
      v128 = 0;
      CXOptionalStringAttribute(v24, oCXRelationshipsNamespace6, "bottomLeft", &v128);
      v29 = v128;

      oCXRelationshipsNamespace7 = [(OCXState *)stateCopy OCXRelationshipsNamespace];
      v127 = 0;
      CXOptionalStringAttribute(v24, oCXRelationshipsNamespace7, "bottomRight", &v127);
    }

    wXMainNamespace5 = [(WXReadState *)stateCopy WXMainNamespace];
    v32 = OCXFindChild(v10, wXMainNamespace5, "right");

    if (v32)
    {
      mutableRightBorder = [sectionCopy mutableRightBorder];
      [WXBorder readFrom:v32 to:mutableRightBorder state:stateCopy];

      oCXRelationshipsNamespace8 = [(OCXState *)stateCopy OCXRelationshipsNamespace];
      v126 = 0;
      CXOptionalStringAttribute(v32, oCXRelationshipsNamespace8, "id", &v126);
    }
  }

  wXMainNamespace6 = [(WXReadState *)stateCopy WXMainNamespace];
  v36 = OCXFindChild(properties, wXMainNamespace6, "cols");

  if (v36)
  {
    v134 = 0;
    wXMainNamespace7 = [(WXReadState *)stateCopy WXMainNamespace];
    v38 = OCXFindChild(properties, wXMainNamespace7, "cols");

    wXMainNamespace8 = [(WXReadState *)stateCopy WXMainNamespace];
    v40 = CXOptionalLongAttribute(v38, wXMainNamespace8, "num", &v134);

    if (v40)
    {
      [sectionCopy setColumnCount:v134];
    }

    [sectionCopy isColumnCountOverridden];
    v125 = 0;
    wXMainNamespace9 = [(WXReadState *)stateCopy WXMainNamespace];
    v42 = CXOptionalLongAttribute(v38, wXMainNamespace9, "space", &v125, 14);

    if (v42)
    {
      [sectionCopy setColumnSpace:v125];
    }

    wXMainNamespace10 = [(WXReadState *)stateCopy WXMainNamespace];
    v124 = 0;
    v44 = CXOptionalStringAttribute(v36, wXMainNamespace10, "equalWidth", &v124);
    v45 = v124;

    if (v44)
    {
      [sectionCopy setColumnsEqualWidth:{objc_msgSend(v45, "isEqualToString:", @"0"}];
    }

    if ([sectionCopy isColumnsEqualWidthOverridden])
    {
      if (([sectionCopy columnsEqualWidth] & 1) == 0)
      {
        wXMainNamespace11 = [(WXReadState *)stateCopy WXMainNamespace];
        Child = OCXFindChild(v36, wXMainNamespace11, "col");

        while (Child)
        {
          wXMainNamespace12 = [(WXReadState *)stateCopy WXMainNamespace];
          v49 = CXDefaultLongAttribute(Child, wXMainNamespace12, "w", 0, 14);

          [sectionCopy appendColumnWidth:v49];
          wXMainNamespace13 = [(WXReadState *)stateCopy WXMainNamespace];
          v51 = CXDefaultLongAttribute(Child, wXMainNamespace13, "space", 0, 14);

          [sectionCopy appendColumnSpace:v51];
          wXMainNamespace14 = [(WXReadState *)stateCopy WXMainNamespace];
          Child = OCXFindNextChild(Child, wXMainNamespace14, "col");
        }
      }
    }
  }

  v123 = 0;
  if (wmxmlGetBoolOnlyProperty(properties, "titlePg", "val", &v123, stateCopy))
  {
    [sectionCopy setTitlePage:v123];
  }

  wXMainNamespace15 = [(WXReadState *)stateCopy WXMainNamespace];
  v54 = OCXFindChild(properties, wXMainNamespace15, "bidi");

  if (v54)
  {
    wXMainNamespace16 = [(WXReadState *)stateCopy WXMainNamespace];
    v56 = CXDefaultLongAttribute(v54, wXMainNamespace16, "val", 1);

    [sectionCopy setBidi:v56 == 1];
  }

  wXMainNamespace17 = [(WXReadState *)stateCopy WXMainNamespace];
  v58 = OCXFindChild(properties, wXMainNamespace17, "rtlGutter");

  if (v58)
  {
    [sectionCopy setRtlGutter:1];
  }

  wXMainNamespace18 = [(WXReadState *)stateCopy WXMainNamespace];
  v60 = OCXFindChild(properties, wXMainNamespace18, "pgSz");

  if (v60)
  {
    wXMainNamespace19 = [(WXReadState *)stateCopy WXMainNamespace];
    v62 = CXRequiredLongAttribute(v60, wXMainNamespace19, "w", 14);

    if (v62 >= 0)
    {
      v63 = v62;
    }

    else
    {
      v63 = 12240;
    }

    [sectionCopy setPageWidth:v63];
    wXMainNamespace20 = [(WXReadState *)stateCopy WXMainNamespace];
    v65 = CXRequiredLongAttribute(v60, wXMainNamespace20, "h", 14);

    if (v65 >= 0)
    {
      v66 = v65;
    }

    else
    {
      v66 = 15840;
    }

    [sectionCopy setPageHeight:v66];
  }

  v125 = 0;
  wXMainNamespace21 = [(WXReadState *)stateCopy WXMainNamespace];
  v68 = OCXFindChild(properties, wXMainNamespace21, "pgMar");

  if (v68)
  {
    wXMainNamespace22 = [(WXReadState *)stateCopy WXMainNamespace];
    v125 = CXRequiredLongAttribute(v68, wXMainNamespace22, "left", 14);

    [sectionCopy setLeftMargin:v125];
    wXMainNamespace23 = [(WXReadState *)stateCopy WXMainNamespace];
    v125 = CXRequiredLongAttribute(v68, wXMainNamespace23, "right", 14);

    [sectionCopy setRightMargin:v125];
    wXMainNamespace24 = [(WXReadState *)stateCopy WXMainNamespace];
    v125 = CXRequiredLongAttribute(v68, wXMainNamespace24, "top", 14);

    [sectionCopy setTopMargin:v125];
    wXMainNamespace25 = [(WXReadState *)stateCopy WXMainNamespace];
    v125 = CXRequiredLongAttribute(v68, wXMainNamespace25, "bottom", 14);

    [sectionCopy setBottomMargin:v125];
    wXMainNamespace26 = [(WXReadState *)stateCopy WXMainNamespace];
    v74 = CXDefaultLongAttribute(v68, wXMainNamespace26, "header", 720, 14);

    [sectionCopy setHeaderMargin:v74];
    wXMainNamespace27 = [(WXReadState *)stateCopy WXMainNamespace];
    v76 = CXDefaultLongAttribute(v68, wXMainNamespace27, "footer", 720, 14);

    [sectionCopy setFooterMargin:v76];
    wXMainNamespace28 = [(WXReadState *)stateCopy WXMainNamespace];
    v78 = CXRequiredLongAttribute(v68, wXMainNamespace28, "gutter", 14);

    [sectionCopy setGutterMargin:v78];
  }

  wXMainNamespace29 = [(WXReadState *)stateCopy WXMainNamespace];
  v80 = OCXFindChild(properties, wXMainNamespace29, "lnNumType");

  wXMainNamespace30 = [(WXReadState *)stateCopy WXMainNamespace];
  v82 = CXOptionalLongAttribute(v80, wXMainNamespace30, "start", &v125);

  if (v82)
  {
    [sectionCopy setLineNumberStart:v125];
  }

  wXMainNamespace31 = [(WXReadState *)stateCopy WXMainNamespace];
  v84 = CXOptionalLongAttribute(v80, wXMainNamespace31, "countBy", &v125);

  if (v84)
  {
    [sectionCopy setLineNumberIncrement:v125];
  }

  wXMainNamespace32 = [(WXReadState *)stateCopy WXMainNamespace];
  v86 = CXOptionalLongAttribute(v80, wXMainNamespace32, "distance", &v125, 14);

  if (v86)
  {
    [sectionCopy setLineNumberDistance:v125];
  }

  wXMainNamespace33 = [(WXReadState *)stateCopy WXMainNamespace];
  v88 = OCXFindChild(properties, wXMainNamespace33, "pgNumType");

  wXMainNamespace34 = [(WXReadState *)stateCopy WXMainNamespace];
  v90 = CXOptionalLongAttribute(v88, wXMainNamespace34, "start", &v125);

  if (v90)
  {
    [sectionCopy setPageNumberStart:v125];
    [sectionCopy setPageNumberRestart:1];
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
    [sectionCopy setPageNumberFormat:v94];
  }

  LODWORD(v134) = 0;
  v95 = +[WXCommon textDirectionEnumMap];
  if (readEnumProperty<WDTextDirection>(properties, "textDirection", "val", v95, &v134, stateCopy))
  {
  }

  else
  {
    v96 = +[WXCommon strictTextDirectionEnumMap];
    v97 = readEnumProperty<WDTextDirection>(properties, "textDirection", "val", v96, &v134, stateCopy);

    if (!v97)
    {
      goto LABEL_54;
    }
  }

  [sectionCopy setTextDirection:v134];
LABEL_54:
  v122 = 0;
  sectionBreakEnumMap = [self sectionBreakEnumMap];
  v99 = readEnumProperty<WDSectionBreakType>(properties, "type", "val", sectionBreakEnumMap, &v122, stateCopy);

  if (v99)
  {
    [sectionCopy setBreakType:v122];
  }

  v121 = 0;
  pageOrientationEnumMap = [self pageOrientationEnumMap];
  v101 = readEnumProperty<WDPageOrientation>(properties, "pgSz", "orient", pageOrientationEnumMap, &v121, stateCopy);

  if (v101)
  {
    [sectionCopy setPageOrientation:v121];
  }

  v120 = 0;
  pageBorderDepthEnumMap = [self pageBorderDepthEnumMap];
  v103 = readEnumProperty<WDPageBorderDepth>(properties, "pgBorders", "zOrder", pageBorderDepthEnumMap, &v120, stateCopy);

  if (v103)
  {
    [sectionCopy setBorderDepth:v120];
  }

  v119 = 0;
  pageBorderDisplayEnumMap = [self pageBorderDisplayEnumMap];
  v105 = readEnumProperty<WDPageBorderDisplay>(properties, "pgBorders", "display", pageBorderDisplayEnumMap, &v119, stateCopy);

  if (v105)
  {
    [sectionCopy setBorderDisplay:v119];
  }

  v118 = 0;
  pageBorderOffsetEnumMap = [self pageBorderOffsetEnumMap];
  v107 = readEnumProperty<WDPageBorderOffset>(properties, "pgBorders", "offsetFrom", pageBorderOffsetEnumMap, &v118, stateCopy);

  if (v107)
  {
    [sectionCopy setBorderOffset:v118];
  }

  v117 = 0;
  lineNumberRestartEnumMap = [self lineNumberRestartEnumMap];
  v109 = readEnumProperty<WDLineNumberRestart>(properties, "lnNumType", "restart", lineNumberRestartEnumMap, &v117, stateCopy);

  if (v109)
  {
    [sectionCopy setLineNumberRestart:v117];
  }

  v116 = 0;
  verticalJustificationEnumMap = [self verticalJustificationEnumMap];
  v111 = readEnumProperty<WDVerticalJustification>(properties, "vAlign", "val", verticalJustificationEnumMap, &v116, stateCopy);

  if (v111)
  {
    [sectionCopy setVerticalJustification:v116];
  }

  v115 = 0;
  chapterNumberSeparatorEnumMap = [self chapterNumberSeparatorEnumMap];
  v113 = readEnumProperty<WDChapterNumberSeparator>(properties, "pgNumType", "chapSep", chapterNumberSeparatorEnumMap, &v115, stateCopy);

  if (v113)
  {
    [sectionCopy setChapterNumberSeparator:v115];
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