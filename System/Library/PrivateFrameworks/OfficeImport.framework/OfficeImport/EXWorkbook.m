@interface EXWorkbook
+ (id)edWorkbookFromState:(id)a3 package:(id)a4 reader:(id)a5 fileName:(id)a6 temporaryDirectory:(id)a7 delegate:(id)a8 forThumbnail:(BOOL)a9;
+ (id)edWorkbookFromState:(id)a3 package:(id)a4 reader:(id)a5 resourcesOnly:(BOOL)a6 fileName:(id)a7 temporaryDirectory:(id)a8 delegate:(id)a9 forThumbnail:(BOOL)a10;
+ (void)readSheetsFrom:(id)a3 relationNS:(_xmlNs *)a4 state:(id)a5 delegate:(id)a6 forThumbnail:(BOOL)a7;
+ (void)readStringsFrom:(id)a3 state:(id)a4;
+ (void)readStylesFrom:(id)a3 state:(id)a4;
+ (void)setDefaultParagraphProperties:(id)a3;
+ (void)setupDefaultTextStyleWithState:(id)a3;
+ (void)setupProcessors:(id)a3;
@end

@implementation EXWorkbook

+ (id)edWorkbookFromState:(id)a3 package:(id)a4 reader:(id)a5 fileName:(id)a6 temporaryDirectory:(id)a7 delegate:(id)a8 forThumbnail:(BOOL)a9
{
  LOBYTE(v11) = a9;
  v9 = [a1 edWorkbookFromState:a3 package:a4 reader:a5 resourcesOnly:0 fileName:a6 temporaryDirectory:a7 delegate:a8 forThumbnail:v11];

  return v9;
}

+ (id)edWorkbookFromState:(id)a3 package:(id)a4 reader:(id)a5 resourcesOnly:(BOOL)a6 fileName:(id)a7 temporaryDirectory:(id)a8 delegate:(id)a9 forThumbnail:(BOOL)a10
{
  v13 = a3;
  v66 = a5;
  v67 = a7;
  v65 = a8;
  v68 = a9;
  v14 = [(OCXState *)v13 workbookPart];
  v69 = [(OCPPackagePart *)v14 contentType];
  if (v69 && ([v69 isEqualToString:@"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet.main+xml"] & 1) == 0 && (objc_msgSend(v69, "isEqualToString:", @"application/vnd.ms-excel.sheet.macroEnabled.main+xml") & 1) == 0 && (objc_msgSend(v69, "isEqualToString:", @"application/vnd.openxmlformats-officedocument.spreadsheetml.template.main+xml") & 1) == 0 && (objc_msgSend(v69, "isEqualToString:", @"application/vnd.ms-excel.addin.macroEnabled.main+xml") & 1) == 0 && (objc_msgSend(v69, "isEqualToString:", @"application/vnd.ms-excel.template.macroEnabled.main+xml") & 1) == 0)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v15 = [(OCPPackagePart *)v14 xmlDocument];
  if (!v15)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v16 = OCXGetRootElement(v15);
  v17 = v16;
  if (!v16 || !xmlStrEqual(v16->name, "workbook"))
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
    v21 = 0;
    goto LABEL_40;
  }

  v72 = 0;
  CXOptionalStringAttribute(v17, CXNoNamespace, "conformance", &v72);
  v62 = v72;
  if (v62 && [v62 isEqualToString:@"strict"])
  {
    [(OCXState *)v13 setupNSForXMLFormat:1];
  }

  ns = v17->ns;
  if (!ns || (href = ns->href, [(OCXState *)v13 EXSpreadsheetMLNamespace], v20 = objc_claimAutoreleasedReturnValue(), LODWORD(href) = CXXmlStrEqualToNsUriOrFallbackNsUri(href, v20), v20, !href))
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v21 = [[EDWorkbook alloc] initWithFileName:v67 andStringOptimization:0];
  [(OCDDocument *)v21 setReader:v66];
  [(EDWorkbook *)v21 setTemporaryDirectory:v65];
  v22 = [(EDWorkbook *)v21 processors];
  [a1 setupProcessors:v22];

  [TCProgressContext createStageWithSteps:@"read globals" takingSteps:10.0 name:0.1];
  [(OCXState *)v13 setWorkbook:v21];
  v23 = [(EDWorkbook *)v21 resources];
  [(OCXState *)v13 setResources:v23];

  v24 = [(OCXState *)v13 EXSpreadsheetMLNamespace];
  v25 = OCXFindChild(v17, v24, "workbookPr");

  if (v25)
  {
    v71 = 1;
    CXOptionalBoolAttribute(v25, CXNoNamespace, "dateCompatibility", &v71);
    if (v71)
    {
      v70 = 0;
      CXOptionalBoolAttribute(v25, CXNoNamespace, "date1904", &v70);
      if (v70)
      {
        v26 = 2;
      }

      else
      {
        v26 = 1;
      }

      [(EDWorkbook *)v21 setDateBase:v26];
    }

    else
    {
      [(EDWorkbook *)v21 setDateBase:0];
    }
  }

  else
  {
    [(EDWorkbook *)v21 setDateBase:1];
  }

  v27 = [(OCXState *)v13 EXSpreadsheetMLNamespace];
  v28 = OCXFindChild(v17, v27, "bookViews");

  if (v28 && ([(OCXState *)v13 EXSpreadsheetMLNamespace], v29 = objc_claimAutoreleasedReturnValue(), v30 = OCXFindChild(v28, v29, "workbookView"), v29, v30))
  {
    v31 = CXDefaultLongAttribute(v30, CXNoNamespace, "activeTab", 0);
  }

  else
  {
    v31 = 0;
  }

  [(EDWorkbook *)v21 setActiveSheetIndex:v31];
  [TCProgressContext advanceProgress:1.0];
  v32 = OCXFirstPartWithRelationshipOfTypeToPartWithFallback(v14, v13, sel_OCXThemeRelationshipType);
  if (v32 || [(OCXState *)v13 xmlFormat]== 1 && ([(OCPPackagePart *)v14 firstPartWithRelationshipOfType:@"http://schemas.openxmlformats.org/officeDocument/2006/relationships/theme"], (v32 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v33 = [(OCDDocument *)v21 theme];
    v34 = [(OCXState *)v13 officeArtState];
    [OAXTheme readFromPackagePart:v32 toTheme:v33 state:v34];

    v35 = [(OCDDocument *)v21 theme];
    v36 = [v35 baseStyles];
    v37 = [v36 colorScheme];

    v38 = [(OCXState *)v13 officeArtState];
    [v38 setColorScheme:v37];

    v39 = [(OCXState *)v13 officeArtState];
    v40 = [(OCDDocument *)v21 theme];
    v41 = [v40 baseStyles];
    v42 = [v41 fontScheme];
    [v39 setFontScheme:v42];
  }

  else
  {
    v51 = [(OCDDocument *)v21 theme];
    v52 = [v51 isEmpty];

    if (!v52)
    {
      v32 = 0;
      goto LABEL_34;
    }

    v53 = [(OCDDocument *)v21 theme];
    [v53 validateTheme];

    v54 = [(OCXState *)v13 officeArtState];
    v55 = [(OCDDocument *)v21 theme];
    v56 = [v55 baseStyles];
    v57 = [v56 styleMatrix];
    [v54 setStyleMatrix:v57];

    v58 = [(OCXState *)v13 officeArtState];
    v59 = [(OCDDocument *)v21 theme];
    v60 = [v59 baseStyles];
    v61 = [v60 colorScheme];
    [v58 setColorScheme:v61];

    v37 = [(OCXState *)v13 officeArtState];
    v39 = [(OCDDocument *)v21 theme];
    v40 = [v39 baseStyles];
    v41 = [v40 fontScheme];
    [v37 setFontScheme:v41];
    v32 = 0;
  }

LABEL_34:
  [a1 readStylesFrom:v14 state:v13];
  if (a6)
  {
    [TCProgressContext advanceProgress:2.0];
  }

  else
  {
    v43 = [(OCXState *)v13 EXSpreadsheetMLNamespace];
    v44 = OCXFindChild(v17, v43, "definedNames");

    [EXNameTable readFrom:v44 state:v13];
    [TCProgressContext advanceProgress:1.0];
    [a1 readStringsFrom:v14 state:v13];
    [TCProgressContext advanceProgress:1.0];
  }

  +[TCProgressContext endStage];
  [TCProgressContext createStageWithSteps:@"read sheets" takingSteps:1.0 name:0.9];
  v45 = [(OCPPackagePart *)v14 xmlDocument];
  v46 = [(OCXState *)v13 OCXRelationshipsNamespace];
  v47 = CXXmlSearchNsByHrefWithFallbackNs(v45, v17, v46);

  [(OCXState *)v13 relationshipNameSpaceForWorkbook:v47];
  if (!a6)
  {
    [a1 readSheetsFrom:v14 relationNS:v47 state:v13 delegate:v68 forThumbnail:a10];
  }

  +[TCProgressContext endStage];
  v48 = [(OCDDocument *)v21 summary];
  v49 = [(OCPPackagePart *)v14 package];
  [OCXSummary readSummary:v48 package:v49];

  [v68 readerDidEndDocument:v21];
LABEL_40:

  return v21;
}

+ (void)readSheetsFrom:(id)a3 relationNS:(_xmlNs *)a4 state:(id)a5 delegate:(id)a6 forThumbnail:(BOOL)a7
{
  v29 = a7;
  v9 = a3;
  v10 = a5;
  v30 = a6;
  v28 = v9;
  v11 = [v9 xmlDocument];
  if (!v11)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v12 = OCXGetRootElement(v11);
  v13 = v12;
  if (!v12 || !xmlStrEqual(v12->name, "workbook"))
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v14 = [v10 EXSpreadsheetMLNamespace];
  v15 = OCXFindChild(v13, v14, "sheets");

  if (!v15)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v16 = [v10 EXSpreadsheetMLNamespace];
  v17 = CXCountChildren(v15, v16, "sheet");

  [TCProgressContext createStageWithSteps:@"read sheets" takingSteps:v17 name:1.0];
  v18 = [v10 workbook];
  [v30 readerDidStartDocument:v18 withElementCount:v17];

  v19 = [v10 EXSpreadsheetMLNamespace];
  Child = OCXFindChild(v15, v19, "sheet");

  if (Child)
  {
    v21 = 0;
    do
    {
      if ([v10 isCancelled])
      {
        [TCMessageException raiseUntaggedMessage:@"TCUserCancelled", 0];
      }

      v31 = 0;
      CXOptionalStringAttribute(Child, CXNoNamespace, "state", &v31);
      v22 = v31;
      v23 = v22;
      if (!v22 || ([v22 isEqualToString:@"veryHidden"] & 1) == 0)
      {
        [v10 setCurrentSheetIndex:v21];
        [EXSheet readFrom:Child state:v10];
        v24 = [v10 workbook];
        v25 = [v24 sheetAtIndex:v21];

        v26 = [v10 workbook];
        [v30 readerDidReadElement:v25 atIndex:v21 inDocument:v26 isLastElement:v21 == v17 - 1];

        if (v29 && ([v25 isHidden] & 1) == 0)
        {

          break;
        }

        v21 = (v21 + 1);
      }

      v27 = [v10 EXSpreadsheetMLNamespace];
      Child = OCXFindNextChild(Child, v27, "sheet");
    }

    while (Child);
  }

  +[TCProgressContext endStage];
}

+ (void)readStylesFrom:(id)a3 state:(id)a4
{
  v38 = a3;
  v6 = a4;
  v7 = [(OCPPackagePart *)v38 package];
  v8 = OCXPartRelationshipsByTypeWithFallback(v38, v6, sel_OCXStylesRelationshipType);
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectAtIndex:0];
    if (!v10)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    v11 = [v10 targetLocation];
    v12 = [v7 partForLocation:v11];

    if (!v12 || ([v12 contentType], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", @"application/vnd.openxmlformats-officedocument.spreadsheetml.styles+xml"), v13, (v14 & 1) == 0))
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    v15 = [v12 xmlDocument];
    if (!v15)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    v16 = OCXGetRootElement(v15);
    v17 = v16;
    if (!v16 || !xmlStrEqual(v16->name, "styleSheet"))
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    v18 = [(OCXState *)v6 EXSpreadsheetMLNamespace];
    v19 = OCXFindChild(v17, v18, "colors");

    [EXColorTable readFrom:v19 state:v6];
    [TCProgressContext advanceProgress:1.0];
    v20 = [(OCXState *)v6 EXSpreadsheetMLNamespace];
    v21 = OCXFindChild(v17, v20, "numFmts");

    [EXContentFormatTable readFrom:v21 state:v6];
    [TCProgressContext advanceProgress:1.0];
    v22 = [(OCXState *)v6 EXSpreadsheetMLNamespace];
    v23 = OCXFindChild(v17, v22, "fonts");

    [EXFontTable readFrom:v23 state:v6];
    [TCProgressContext advanceProgress:1.0];
    v24 = [(OCXState *)v6 EXSpreadsheetMLNamespace];
    v25 = OCXFindChild(v17, v24, "fills");

    [EXFillTable readFrom:v25 state:v6];
    [TCProgressContext advanceProgress:1.0];
    v26 = [(OCXState *)v6 EXSpreadsheetMLNamespace];
    v27 = OCXFindChild(v17, v26, "borders");

    [EXBordersTable readFrom:v27 state:v6];
    [TCProgressContext advanceProgress:1.0];
    v28 = [(OCXState *)v6 EXSpreadsheetMLNamespace];
    v29 = OCXFindChild(v17, v28, "cellXfs");

    [EXCellFormatTable readFromCellXfsElement:v29 state:v6];
    v30 = [(OCXState *)v6 EXSpreadsheetMLNamespace];
    v31 = OCXFindChild(v17, v30, "cellStyleXfs");

    [EXCellFormatTable readFromCellStyleXfsElement:v31 state:v6];
    v32 = [(OCXState *)v6 EXSpreadsheetMLNamespace];
    v33 = OCXFindChild(v17, v32, "cellStyles");

    [EXCellFormatTable readFromCellStylesElement:v33 state:v6];
    [TCProgressContext advanceProgress:1.0];
    v34 = [(OCXState *)v6 EXSpreadsheetMLNamespace];
    v35 = OCXFindChild(v17, v34, "dxfs");

    [EXDifferentialStyleTable readFrom:v35 state:v6];
    v36 = [(OCXState *)v6 EXSpreadsheetMLNamespace];
    v37 = OCXFindChild(v17, v36, "tableStyles");

    [EXTableStyleTable readFrom:v37 state:v6];
    [TCProgressContext advanceProgress:1.0];
  }

  else
  {
    [EXFontTable setDefaultWithState:v6];
    [EXFillTable setDefaultWithState:v6];
    [EXBordersTable setDefaultWithState:v6];
    [EXCellFormatTable setDefaultWithState:v6];
    [TCProgressContext advanceProgress:7.0];
  }

  [a1 setupDefaultTextStyleWithState:v6];
}

+ (void)readStringsFrom:(id)a3 state:(id)a4
{
  v14 = a3;
  v5 = a4;
  v6 = [(OCPPackagePart *)v14 package];
  v7 = OCXPartRelationshipsByTypeWithFallback(v14, v5, sel_OCXSharedStringsRelationshipType);
  v8 = [v7 objectAtIndex:0];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 targetLocation];
    v11 = [v6 partForLocation:v10];

    if (!v11 || ([v11 contentType], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", @"application/vnd.openxmlformats-officedocument.spreadsheetml.sharedStrings+xml"), v12, (v13 & 1) == 0))
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    [(OCXState *)v5 setCurrentPart:v11];
    [EXStringTable readFromState:v5];
  }
}

+ (void)setupProcessors:(id)a3
{
  v3 = a3;
  [v3 removeAllObjects];
  [v3 addProcessorClass:objc_opt_class()];
  [v3 addProcessorClass:objc_opt_class()];
}

+ (void)setDefaultParagraphProperties:(id)a3
{
  v3 = a3;
  LODWORD(v4) = 11.0;
  v6 = v3;
  [v3 setSize:v4];
  v5 = +[OADSolidFill blackFill];
  [v6 setFill:v5];

  [v6 setLatinFont:@"+mn-lt"];
  [v6 setEastAsianFont:@"+mn-ea"];
  [v6 setBidiFont:@"+mn-cs"];
}

+ (void)setupDefaultTextStyleWithState:(id)a3
{
  v4 = [a3 workbook];
  v8 = [v4 defaultTextStyle];

  v5 = [v8 defaultProperties];
  [a1 setDefaultParagraphProperties:v5];

  for (i = 0; i != 9; ++i)
  {
    v7 = [v8 propertiesForListLevel:i];
    [a1 setDefaultParagraphProperties:v7];
  }
}

@end