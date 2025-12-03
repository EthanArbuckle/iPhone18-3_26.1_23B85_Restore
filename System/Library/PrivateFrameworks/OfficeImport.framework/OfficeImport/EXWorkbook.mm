@interface EXWorkbook
+ (id)edWorkbookFromState:(id)state package:(id)package reader:(id)reader fileName:(id)name temporaryDirectory:(id)directory delegate:(id)delegate forThumbnail:(BOOL)thumbnail;
+ (id)edWorkbookFromState:(id)state package:(id)package reader:(id)reader resourcesOnly:(BOOL)only fileName:(id)name temporaryDirectory:(id)directory delegate:(id)delegate forThumbnail:(BOOL)self0;
+ (void)readSheetsFrom:(id)from relationNS:(_xmlNs *)s state:(id)state delegate:(id)delegate forThumbnail:(BOOL)thumbnail;
+ (void)readStringsFrom:(id)from state:(id)state;
+ (void)readStylesFrom:(id)from state:(id)state;
+ (void)setDefaultParagraphProperties:(id)properties;
+ (void)setupDefaultTextStyleWithState:(id)state;
+ (void)setupProcessors:(id)processors;
@end

@implementation EXWorkbook

+ (id)edWorkbookFromState:(id)state package:(id)package reader:(id)reader fileName:(id)name temporaryDirectory:(id)directory delegate:(id)delegate forThumbnail:(BOOL)thumbnail
{
  LOBYTE(v11) = thumbnail;
  v9 = [self edWorkbookFromState:state package:package reader:reader resourcesOnly:0 fileName:name temporaryDirectory:directory delegate:delegate forThumbnail:v11];

  return v9;
}

+ (id)edWorkbookFromState:(id)state package:(id)package reader:(id)reader resourcesOnly:(BOOL)only fileName:(id)name temporaryDirectory:(id)directory delegate:(id)delegate forThumbnail:(BOOL)self0
{
  stateCopy = state;
  readerCopy = reader;
  nameCopy = name;
  directoryCopy = directory;
  delegateCopy = delegate;
  workbookPart = [(OCXState *)stateCopy workbookPart];
  contentType = [(OCPPackagePart *)workbookPart contentType];
  if (contentType && ([contentType isEqualToString:@"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet.main+xml"] & 1) == 0 && (objc_msgSend(contentType, "isEqualToString:", @"application/vnd.ms-excel.sheet.macroEnabled.main+xml") & 1) == 0 && (objc_msgSend(contentType, "isEqualToString:", @"application/vnd.openxmlformats-officedocument.spreadsheetml.template.main+xml") & 1) == 0 && (objc_msgSend(contentType, "isEqualToString:", @"application/vnd.ms-excel.addin.macroEnabled.main+xml") & 1) == 0 && (objc_msgSend(contentType, "isEqualToString:", @"application/vnd.ms-excel.template.macroEnabled.main+xml") & 1) == 0)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  xmlDocument = [(OCPPackagePart *)workbookPart xmlDocument];
  if (!xmlDocument)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v16 = OCXGetRootElement(xmlDocument);
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
    [(OCXState *)stateCopy setupNSForXMLFormat:1];
  }

  ns = v17->ns;
  if (!ns || (href = ns->href, [(OCXState *)stateCopy EXSpreadsheetMLNamespace], v20 = objc_claimAutoreleasedReturnValue(), LODWORD(href) = CXXmlStrEqualToNsUriOrFallbackNsUri(href, v20), v20, !href))
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v21 = [[EDWorkbook alloc] initWithFileName:nameCopy andStringOptimization:0];
  [(OCDDocument *)v21 setReader:readerCopy];
  [(EDWorkbook *)v21 setTemporaryDirectory:directoryCopy];
  processors = [(EDWorkbook *)v21 processors];
  [self setupProcessors:processors];

  [TCProgressContext createStageWithSteps:@"read globals" takingSteps:10.0 name:0.1];
  [(OCXState *)stateCopy setWorkbook:v21];
  resources = [(EDWorkbook *)v21 resources];
  [(OCXState *)stateCopy setResources:resources];

  eXSpreadsheetMLNamespace = [(OCXState *)stateCopy EXSpreadsheetMLNamespace];
  v25 = OCXFindChild(v17, eXSpreadsheetMLNamespace, "workbookPr");

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

  eXSpreadsheetMLNamespace2 = [(OCXState *)stateCopy EXSpreadsheetMLNamespace];
  v28 = OCXFindChild(v17, eXSpreadsheetMLNamespace2, "bookViews");

  if (v28 && ([(OCXState *)stateCopy EXSpreadsheetMLNamespace], v29 = objc_claimAutoreleasedReturnValue(), v30 = OCXFindChild(v28, v29, "workbookView"), v29, v30))
  {
    v31 = CXDefaultLongAttribute(v30, CXNoNamespace, "activeTab", 0);
  }

  else
  {
    v31 = 0;
  }

  [(EDWorkbook *)v21 setActiveSheetIndex:v31];
  [TCProgressContext advanceProgress:1.0];
  v32 = OCXFirstPartWithRelationshipOfTypeToPartWithFallback(workbookPart, stateCopy, sel_OCXThemeRelationshipType);
  if (v32 || [(OCXState *)stateCopy xmlFormat]== 1 && ([(OCPPackagePart *)workbookPart firstPartWithRelationshipOfType:@"http://schemas.openxmlformats.org/officeDocument/2006/relationships/theme"], (v32 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    theme = [(OCDDocument *)v21 theme];
    officeArtState = [(OCXState *)stateCopy officeArtState];
    [OAXTheme readFromPackagePart:v32 toTheme:theme state:officeArtState];

    theme2 = [(OCDDocument *)v21 theme];
    baseStyles = [theme2 baseStyles];
    colorScheme = [baseStyles colorScheme];

    officeArtState2 = [(OCXState *)stateCopy officeArtState];
    [officeArtState2 setColorScheme:colorScheme];

    officeArtState3 = [(OCXState *)stateCopy officeArtState];
    theme3 = [(OCDDocument *)v21 theme];
    baseStyles2 = [theme3 baseStyles];
    fontScheme = [baseStyles2 fontScheme];
    [officeArtState3 setFontScheme:fontScheme];
  }

  else
  {
    theme4 = [(OCDDocument *)v21 theme];
    isEmpty = [theme4 isEmpty];

    if (!isEmpty)
    {
      v32 = 0;
      goto LABEL_34;
    }

    theme5 = [(OCDDocument *)v21 theme];
    [theme5 validateTheme];

    officeArtState4 = [(OCXState *)stateCopy officeArtState];
    theme6 = [(OCDDocument *)v21 theme];
    baseStyles3 = [theme6 baseStyles];
    styleMatrix = [baseStyles3 styleMatrix];
    [officeArtState4 setStyleMatrix:styleMatrix];

    officeArtState5 = [(OCXState *)stateCopy officeArtState];
    theme7 = [(OCDDocument *)v21 theme];
    baseStyles4 = [theme7 baseStyles];
    colorScheme2 = [baseStyles4 colorScheme];
    [officeArtState5 setColorScheme:colorScheme2];

    colorScheme = [(OCXState *)stateCopy officeArtState];
    officeArtState3 = [(OCDDocument *)v21 theme];
    theme3 = [officeArtState3 baseStyles];
    baseStyles2 = [theme3 fontScheme];
    [colorScheme setFontScheme:baseStyles2];
    v32 = 0;
  }

LABEL_34:
  [self readStylesFrom:workbookPart state:stateCopy];
  if (only)
  {
    [TCProgressContext advanceProgress:2.0];
  }

  else
  {
    eXSpreadsheetMLNamespace3 = [(OCXState *)stateCopy EXSpreadsheetMLNamespace];
    v44 = OCXFindChild(v17, eXSpreadsheetMLNamespace3, "definedNames");

    [EXNameTable readFrom:v44 state:stateCopy];
    [TCProgressContext advanceProgress:1.0];
    [self readStringsFrom:workbookPart state:stateCopy];
    [TCProgressContext advanceProgress:1.0];
  }

  +[TCProgressContext endStage];
  [TCProgressContext createStageWithSteps:@"read sheets" takingSteps:1.0 name:0.9];
  xmlDocument2 = [(OCPPackagePart *)workbookPart xmlDocument];
  oCXRelationshipsNamespace = [(OCXState *)stateCopy OCXRelationshipsNamespace];
  v47 = CXXmlSearchNsByHrefWithFallbackNs(xmlDocument2, v17, oCXRelationshipsNamespace);

  [(OCXState *)stateCopy relationshipNameSpaceForWorkbook:v47];
  if (!only)
  {
    [self readSheetsFrom:workbookPart relationNS:v47 state:stateCopy delegate:delegateCopy forThumbnail:thumbnail];
  }

  +[TCProgressContext endStage];
  summary = [(OCDDocument *)v21 summary];
  package = [(OCPPackagePart *)workbookPart package];
  [OCXSummary readSummary:summary package:package];

  [delegateCopy readerDidEndDocument:v21];
LABEL_40:

  return v21;
}

+ (void)readSheetsFrom:(id)from relationNS:(_xmlNs *)s state:(id)state delegate:(id)delegate forThumbnail:(BOOL)thumbnail
{
  thumbnailCopy = thumbnail;
  fromCopy = from;
  stateCopy = state;
  delegateCopy = delegate;
  v28 = fromCopy;
  xmlDocument = [fromCopy xmlDocument];
  if (!xmlDocument)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v12 = OCXGetRootElement(xmlDocument);
  v13 = v12;
  if (!v12 || !xmlStrEqual(v12->name, "workbook"))
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
  v15 = OCXFindChild(v13, eXSpreadsheetMLNamespace, "sheets");

  if (!v15)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  eXSpreadsheetMLNamespace2 = [stateCopy EXSpreadsheetMLNamespace];
  v17 = CXCountChildren(v15, eXSpreadsheetMLNamespace2, "sheet");

  [TCProgressContext createStageWithSteps:@"read sheets" takingSteps:v17 name:1.0];
  workbook = [stateCopy workbook];
  [delegateCopy readerDidStartDocument:workbook withElementCount:v17];

  eXSpreadsheetMLNamespace3 = [stateCopy EXSpreadsheetMLNamespace];
  Child = OCXFindChild(v15, eXSpreadsheetMLNamespace3, "sheet");

  if (Child)
  {
    v21 = 0;
    do
    {
      if ([stateCopy isCancelled])
      {
        [TCMessageException raiseUntaggedMessage:@"TCUserCancelled", 0];
      }

      v31 = 0;
      CXOptionalStringAttribute(Child, CXNoNamespace, "state", &v31);
      v22 = v31;
      v23 = v22;
      if (!v22 || ([v22 isEqualToString:@"veryHidden"] & 1) == 0)
      {
        [stateCopy setCurrentSheetIndex:v21];
        [EXSheet readFrom:Child state:stateCopy];
        workbook2 = [stateCopy workbook];
        v25 = [workbook2 sheetAtIndex:v21];

        workbook3 = [stateCopy workbook];
        [delegateCopy readerDidReadElement:v25 atIndex:v21 inDocument:workbook3 isLastElement:v21 == v17 - 1];

        if (thumbnailCopy && ([v25 isHidden] & 1) == 0)
        {

          break;
        }

        v21 = (v21 + 1);
      }

      eXSpreadsheetMLNamespace4 = [stateCopy EXSpreadsheetMLNamespace];
      Child = OCXFindNextChild(Child, eXSpreadsheetMLNamespace4, "sheet");
    }

    while (Child);
  }

  +[TCProgressContext endStage];
}

+ (void)readStylesFrom:(id)from state:(id)state
{
  fromCopy = from;
  stateCopy = state;
  package = [(OCPPackagePart *)fromCopy package];
  v8 = OCXPartRelationshipsByTypeWithFallback(fromCopy, stateCopy, sel_OCXStylesRelationshipType);
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectAtIndex:0];
    if (!v10)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    targetLocation = [v10 targetLocation];
    v12 = [package partForLocation:targetLocation];

    if (!v12 || ([v12 contentType], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", @"application/vnd.openxmlformats-officedocument.spreadsheetml.styles+xml"), v13, (v14 & 1) == 0))
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    xmlDocument = [v12 xmlDocument];
    if (!xmlDocument)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    v16 = OCXGetRootElement(xmlDocument);
    v17 = v16;
    if (!v16 || !xmlStrEqual(v16->name, "styleSheet"))
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    eXSpreadsheetMLNamespace = [(OCXState *)stateCopy EXSpreadsheetMLNamespace];
    v19 = OCXFindChild(v17, eXSpreadsheetMLNamespace, "colors");

    [EXColorTable readFrom:v19 state:stateCopy];
    [TCProgressContext advanceProgress:1.0];
    eXSpreadsheetMLNamespace2 = [(OCXState *)stateCopy EXSpreadsheetMLNamespace];
    v21 = OCXFindChild(v17, eXSpreadsheetMLNamespace2, "numFmts");

    [EXContentFormatTable readFrom:v21 state:stateCopy];
    [TCProgressContext advanceProgress:1.0];
    eXSpreadsheetMLNamespace3 = [(OCXState *)stateCopy EXSpreadsheetMLNamespace];
    v23 = OCXFindChild(v17, eXSpreadsheetMLNamespace3, "fonts");

    [EXFontTable readFrom:v23 state:stateCopy];
    [TCProgressContext advanceProgress:1.0];
    eXSpreadsheetMLNamespace4 = [(OCXState *)stateCopy EXSpreadsheetMLNamespace];
    v25 = OCXFindChild(v17, eXSpreadsheetMLNamespace4, "fills");

    [EXFillTable readFrom:v25 state:stateCopy];
    [TCProgressContext advanceProgress:1.0];
    eXSpreadsheetMLNamespace5 = [(OCXState *)stateCopy EXSpreadsheetMLNamespace];
    v27 = OCXFindChild(v17, eXSpreadsheetMLNamespace5, "borders");

    [EXBordersTable readFrom:v27 state:stateCopy];
    [TCProgressContext advanceProgress:1.0];
    eXSpreadsheetMLNamespace6 = [(OCXState *)stateCopy EXSpreadsheetMLNamespace];
    v29 = OCXFindChild(v17, eXSpreadsheetMLNamespace6, "cellXfs");

    [EXCellFormatTable readFromCellXfsElement:v29 state:stateCopy];
    eXSpreadsheetMLNamespace7 = [(OCXState *)stateCopy EXSpreadsheetMLNamespace];
    v31 = OCXFindChild(v17, eXSpreadsheetMLNamespace7, "cellStyleXfs");

    [EXCellFormatTable readFromCellStyleXfsElement:v31 state:stateCopy];
    eXSpreadsheetMLNamespace8 = [(OCXState *)stateCopy EXSpreadsheetMLNamespace];
    v33 = OCXFindChild(v17, eXSpreadsheetMLNamespace8, "cellStyles");

    [EXCellFormatTable readFromCellStylesElement:v33 state:stateCopy];
    [TCProgressContext advanceProgress:1.0];
    eXSpreadsheetMLNamespace9 = [(OCXState *)stateCopy EXSpreadsheetMLNamespace];
    v35 = OCXFindChild(v17, eXSpreadsheetMLNamespace9, "dxfs");

    [EXDifferentialStyleTable readFrom:v35 state:stateCopy];
    eXSpreadsheetMLNamespace10 = [(OCXState *)stateCopy EXSpreadsheetMLNamespace];
    v37 = OCXFindChild(v17, eXSpreadsheetMLNamespace10, "tableStyles");

    [EXTableStyleTable readFrom:v37 state:stateCopy];
    [TCProgressContext advanceProgress:1.0];
  }

  else
  {
    [EXFontTable setDefaultWithState:stateCopy];
    [EXFillTable setDefaultWithState:stateCopy];
    [EXBordersTable setDefaultWithState:stateCopy];
    [EXCellFormatTable setDefaultWithState:stateCopy];
    [TCProgressContext advanceProgress:7.0];
  }

  [self setupDefaultTextStyleWithState:stateCopy];
}

+ (void)readStringsFrom:(id)from state:(id)state
{
  fromCopy = from;
  stateCopy = state;
  package = [(OCPPackagePart *)fromCopy package];
  v7 = OCXPartRelationshipsByTypeWithFallback(fromCopy, stateCopy, sel_OCXSharedStringsRelationshipType);
  v8 = [v7 objectAtIndex:0];
  v9 = v8;
  if (v8)
  {
    targetLocation = [v8 targetLocation];
    v11 = [package partForLocation:targetLocation];

    if (!v11 || ([v11 contentType], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", @"application/vnd.openxmlformats-officedocument.spreadsheetml.sharedStrings+xml"), v12, (v13 & 1) == 0))
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    [(OCXState *)stateCopy setCurrentPart:v11];
    [EXStringTable readFromState:stateCopy];
  }
}

+ (void)setupProcessors:(id)processors
{
  processorsCopy = processors;
  [processorsCopy removeAllObjects];
  [processorsCopy addProcessorClass:objc_opt_class()];
  [processorsCopy addProcessorClass:objc_opt_class()];
}

+ (void)setDefaultParagraphProperties:(id)properties
{
  propertiesCopy = properties;
  LODWORD(v4) = 11.0;
  v6 = propertiesCopy;
  [propertiesCopy setSize:v4];
  v5 = +[OADSolidFill blackFill];
  [v6 setFill:v5];

  [v6 setLatinFont:@"+mn-lt"];
  [v6 setEastAsianFont:@"+mn-ea"];
  [v6 setBidiFont:@"+mn-cs"];
}

+ (void)setupDefaultTextStyleWithState:(id)state
{
  workbook = [state workbook];
  defaultTextStyle = [workbook defaultTextStyle];

  defaultProperties = [defaultTextStyle defaultProperties];
  [self setDefaultParagraphProperties:defaultProperties];

  for (i = 0; i != 9; ++i)
  {
    v7 = [defaultTextStyle propertiesForListLevel:i];
    [self setDefaultParagraphProperties:v7];
  }
}

@end