@interface EXSheet
+ (Class)exSheetClassFromXmlSheetType:(id)type location:(id)location;
+ (void)readAllDrawablesWithState:(id)state;
+ (void)readCommonSheetElementsFrom:(_xmlTextReader *)from state:(id)state;
+ (void)readDelayedSheeWithLocation:(id)location sheetXmlType:(id)type state:(id)state;
+ (void)readDrawablesWithState:(id)state;
+ (void)readFrom:(_xmlNode *)from state:(id)state;
+ (void)readLegacyDrawablesWithState:(id)state;
+ (void)readSheetProperties:(_xmlNode *)properties state:(id)state;
@end

@implementation EXSheet

+ (void)readFrom:(_xmlNode *)from state:(id)state
{
  stateCopy = state;
  [stateCopy resetForNewSheet];
  workbookPart = [stateCopy workbookPart];
  v7 = [stateCopy OCXReadRequiredRelationshipForNode:from packagePart:workbookPart];
  package = [workbookPart package];
  if (!package)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  targetLocation = [v7 targetLocation];
  v10 = [package partForLocation:targetLocation];

  if (!v10)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  location = [v10 location];
  relativeString = [location relativeString];

  v29 = 0;
  CXOptionalStringAttribute(from, CXNoNamespace, "type", &v29);
  v12 = v29;
  v13 = [self exSheetClassFromXmlSheetType:v12 location:relativeString];
  if (v13)
  {
    [stateCopy setCurrentPart:v10];
    v14 = [v13 edSheetWithState:stateCopy];
    v28 = 0;
    v15 = CXOptionalStringAttribute(from, CXNoNamespace, "name", &v28);
    v24 = v28;
    if (v15)
    {
      v16 = [EDString edStringWithString:v24];
      [v14 setName:v16];
    }

    v27 = 0;
    CXOptionalStringAttribute(from, CXNoNamespace, "state", &v27);
    v17 = v27;
    v18 = v17;
    if (v17 && (([v17 isEqualToString:@"hidden"] & 1) != 0 || objc_msgSend(v18, "isEqualToString:", @"veryHidden")))
    {
      [v14 setHidden:1];
    }

    v19 = [EXSheetContext alloc];
    targetLocation2 = [v7 targetLocation];
    v21 = [(EXSheetContext *)v19 initWithSheetLocation:targetLocation2 sheetXmlType:v12 state:stateCopy];

    [v14 setDelayedContext:v21];
    workbook = [stateCopy workbook];
    [workbook addSheet:v14];

    [stateCopy setCurrentSheet:v14];
    [v13 readTables:stateCopy];
    [stateCopy setCurrentSheet:0];
    [stateCopy setCurrentPart:0];
    targetLocation3 = [v7 targetLocation];
    [package resetPartForLocation:targetLocation3];
  }
}

+ (void)readDelayedSheeWithLocation:(id)location sheetXmlType:(id)type state:(id)state
{
  locationCopy = location;
  typeCopy = type;
  stateCopy = state;
  v9 = objc_autoreleasePoolPush();
  [TCProgressContext createStageWithSteps:@"read sheet" takingSteps:3.0 name:1.0];
  [stateCopy resetForNewSheet];
  workbookPart = [stateCopy workbookPart];
  package = [workbookPart package];
  v21 = package;
  if (!package)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v11 = [package partForLocation:locationCopy];
  v22 = v11;
  if (!v11)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  location = [v11 location];
  relativeString = [location relativeString];

  v14 = [self exSheetClassFromXmlSheetType:typeCopy location:relativeString];
  if (v14)
  {
    [stateCopy setCurrentPart:v22];
    [v14 readOtherSheetComponentsWithState:stateCopy];
    xmlReader = [v22 xmlReader];
    if (!xmlReader)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    [TCProgressContext createStageWithSteps:@"read common sheet elements outer" takingSteps:1.0 name:1.0];
    v16 = objc_alloc_init(OCXSStream);
    v17 = xmlTextReaderDepth(xmlReader);
    [(OCXSStream *)v16 pushLevel:v17 name:xmlTextReaderConstLocalName(xmlReader)];
    v18 = -1;
    while ([OCXStreamUtility readStream:xmlReader streamState:v16])
    {
      [TCProgressContext createStageWithSteps:@"read common sheet elements inner" takingSteps:2.0 name:ldexp(1.0, v18)];
      if (([v14 readDistinctSheetElementsFrom:xmlReader state:stateCopy] & 1) == 0)
      {
        [self readCommonSheetElementsFrom:xmlReader state:stateCopy];
      }

      --v18;
      +[TCProgressContext endStage];
    }

    +[TCProgressContext endStage];
    [self readAllDrawablesWithState:stateCopy];
    currentSheet = [stateCopy currentSheet];
    [EXFormula applyArrayedFormulasToSheet:currentSheet state:stateCopy];

    [stateCopy setCurrentPart:0];
    [v21 resetPartForLocation:locationCopy];
    +[TCProgressContext endStage];
  }

  else
  {
    v16 = 0;
    xmlReader = 0;
  }

  if (xmlReader)
  {
    xmlFreeTextReader(xmlReader);
  }

  objc_autoreleasePoolPop(v9);
}

+ (void)readCommonSheetElementsFrom:(_xmlTextReader *)from state:(id)state
{
  stateCopy = state;
  v7 = xmlTextReaderConstLocalName(from);
  if (v7)
  {
    v8 = xmlTextReaderExpand(from);
  }

  else
  {
    v8 = 0;
  }

  if (xmlStrEqual(v7, "sheetProtection") && v8)
  {
    v13 = 0;
    v9 = CXOptionalStringAttribute(v8, CXNoNamespace, "password", &v13);
    v10 = v13;
    if (v9)
    {
      [stateCopy reportWarning:ECPasswordProtectedSheet];
    }
  }

  if (xmlStrEqual(v7, "headerFooter"))
  {
    currentSheet = [stateCopy currentSheet];
    v12 = [EXHeaderFooter edHeaderFooterFromXmlHeaderFooterElement:v8 state:stateCopy];
    [currentSheet setHeaderFooter:v12];
LABEL_15:

    goto LABEL_16;
  }

  if (xmlStrEqual(v7, "pageMargins"))
  {
    currentSheet = [stateCopy currentSheet];
    v12 = [EXPageSetup edPageMarginsFrom:v8 state:stateCopy];
    [currentSheet setPageSetup:v12];
    goto LABEL_15;
  }

  if (xmlStrEqual(v7, "pageSetup"))
  {
    currentSheet = [stateCopy currentSheet];
    v12 = [EXPageSetup edPageSetupFrom:v8 state:stateCopy];
    [currentSheet setPageSetup:v12];
    goto LABEL_15;
  }

  if (xmlStrEqual(v7, "sheetPr"))
  {
    [self readSheetProperties:v8 state:stateCopy];
  }

  else if (xmlStrEqual(v7, "legacyDrawing"))
  {
    [self readLegacyDrawablesWithState:stateCopy];
  }

LABEL_16:
}

+ (Class)exSheetClassFromXmlSheetType:(id)type location:(id)location
{
  typeCopy = type;
  locationCopy = location;
  v7 = locationCopy;
  if (typeCopy)
  {
    if (([typeCopy isEqualToString:@"work"] & 1) == 0 && (objc_msgSend(typeCopy, "isEqualToString:", @"chartsheet") & 1) == 0 && (objc_msgSend(typeCopy, "isEqualToString:", @"macrosheet") & 1) == 0 && (objc_msgSend(typeCopy, "isEqualToString:", @"dialogsheet") & 1) == 0 && !objc_msgSend(typeCopy, "isEqualToString:", @"basic"))
    {
LABEL_7:
      v8 = 0;
      goto LABEL_19;
    }
  }

  else if (([locationCopy hasPrefix:@"chartsheets"] & 1) == 0 && (objc_msgSend(v7, "hasPrefix:", @"worksheets") & 1) == 0 && objc_msgSend(v7, "rangeOfString:", @"/worksheets") == 0x7FFFFFFFFFFFFFFFLL && (objc_msgSend(v7, "hasPrefix:", @"dialogsheets") & 1) == 0 && (objc_msgSend(v7, "hasPrefix:", @"macrosheets") & 1) == 0 && (objc_msgSend(v7, "hasPrefix:", @"basics") & 1) == 0 && (!objc_msgSend(v7, "hasSuffix:", @".xml") || objc_msgSend(v7, "rangeOfString:", @"/") != 0x7FFFFFFFFFFFFFFFLL))
  {
    goto LABEL_7;
  }

  v8 = objc_opt_class();
LABEL_19:

  return v8;
}

+ (void)readSheetProperties:(_xmlNode *)properties state:(id)state
{
  stateCopy = state;
  eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
  v7 = OCXFindChild(properties, eXSpreadsheetMLNamespace, "pageSetUpPr");

  if (v7)
  {
    v11 = 0;
    if (CXOptionalBoolAttribute(v7, CXNoNamespace, "fitToPage", &v11))
    {
      v8 = objc_opt_class();
      currentSheet = [stateCopy currentSheet];
      v10 = TSUDynamicCast(v8, currentSheet);

      [v10 setFitToPage:v11];
    }
  }
}

+ (void)readDrawablesWithState:(id)state
{
  stateCopy = state;
  currentPart = [(OCXState *)stateCopy currentPart];
  v4 = OCXPartRelationshipsByTypeWithFallback(currentPart, stateCopy, sel_OCXDrawingRelationshipType);
  v5 = v4;
  if (v4 && [v4 count])
  {
    package = [(OCPPackagePart *)currentPart package];
    if (!package || [v5 count] != 1)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    v7 = [v5 objectAtIndex:0];
    targetLocation = [v7 targetLocation];
    v9 = [package partForLocation:targetLocation];

    if (!v9)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    [EXDrawing readFromPart:v9 state:stateCopy];
    v10 = [v5 objectAtIndex:0];
    targetLocation2 = [v10 targetLocation];
    [package resetPartForLocation:targetLocation2];
  }
}

+ (void)readLegacyDrawablesWithState:(id)state
{
  stateCopy = state;
  currentPart = [stateCopy currentPart];
  v4 = [currentPart relationshipsByType:@"http://schemas.openxmlformats.org/officeDocument/2006/relationships/vmlDrawing"];
  v5 = v4;
  if (v4 && [v4 count])
  {
    package = [currentPart package];
    if (!package)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    v18 = currentPart;
    legacyDrawables = [stateCopy legacyDrawables];
    for (i = 0; [v5 count] > i; ++i)
    {
      v8 = [v5 objectAtIndex:i];
      targetLocation = [v8 targetLocation];
      v10 = [package partForLocation:targetLocation];

      if (!v10)
      {
        [TCMessageException raise:TCInvalidFileFormatMessage];
      }

      v11 = [OAVDrawable vmlDocumentFromPart:v10];
      if (!v11)
      {
        [TCMessageException raise:TCInvalidFileFormatMessage];
      }

      v12 = OCXGetRootElement(v11);
      if (!v12)
      {
        [TCMessageException raise:TCInvalidFileFormatMessage];
      }

      oavState = [stateCopy oavState];
      [oavState setPackagePart:v10];
      eXSpreadsheetDrawingNamespace = [stateCopy EXSpreadsheetDrawingNamespace];
      v15 = [OAVDrawable readDrawablesFromParent:v12 inNamespace:eXSpreadsheetDrawingNamespace state:oavState];
      [legacyDrawables addObjectsFromArray:v15];

      v16 = [v5 objectAtIndex:i];
      targetLocation2 = [v16 targetLocation];
      [package resetPartForLocation:targetLocation2];

      xmlFreeDoc(v11);
    }

    currentPart = v18;
  }
}

+ (void)readAllDrawablesWithState:(id)state
{
  stateCopy = state;
  legacyDrawables = [stateCopy legacyDrawables];
  [self readDrawablesWithState:stateCopy];
  for (i = 0; ; i = v6 + 1)
  {
    v6 = i;
    if ([legacyDrawables count] <= i)
    {
      break;
    }

    v7 = [legacyDrawables objectAtIndex:i];
    oavState = [stateCopy oavState];
    v9 = [oavState isDualDrawable:v7];

    if ((v9 & 1) == 0)
    {
      currentSheet = [stateCopy currentSheet];
      [currentSheet addDrawable:v7];
    }
  }
}

@end