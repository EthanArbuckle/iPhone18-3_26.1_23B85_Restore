@interface EXSheet
+ (Class)exSheetClassFromXmlSheetType:(id)a3 location:(id)a4;
+ (void)readAllDrawablesWithState:(id)a3;
+ (void)readCommonSheetElementsFrom:(_xmlTextReader *)a3 state:(id)a4;
+ (void)readDelayedSheeWithLocation:(id)a3 sheetXmlType:(id)a4 state:(id)a5;
+ (void)readDrawablesWithState:(id)a3;
+ (void)readFrom:(_xmlNode *)a3 state:(id)a4;
+ (void)readLegacyDrawablesWithState:(id)a3;
+ (void)readSheetProperties:(_xmlNode *)a3 state:(id)a4;
@end

@implementation EXSheet

+ (void)readFrom:(_xmlNode *)a3 state:(id)a4
{
  v6 = a4;
  [v6 resetForNewSheet];
  v25 = [v6 workbookPart];
  v7 = [v6 OCXReadRequiredRelationshipForNode:a3 packagePart:v25];
  v8 = [v25 package];
  if (!v8)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v9 = [v7 targetLocation];
  v10 = [v8 partForLocation:v9];

  if (!v10)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v11 = [v10 location];
  v26 = [v11 relativeString];

  v29 = 0;
  CXOptionalStringAttribute(a3, CXNoNamespace, "type", &v29);
  v12 = v29;
  v13 = [a1 exSheetClassFromXmlSheetType:v12 location:v26];
  if (v13)
  {
    [v6 setCurrentPart:v10];
    v14 = [v13 edSheetWithState:v6];
    v28 = 0;
    v15 = CXOptionalStringAttribute(a3, CXNoNamespace, "name", &v28);
    v24 = v28;
    if (v15)
    {
      v16 = [EDString edStringWithString:v24];
      [v14 setName:v16];
    }

    v27 = 0;
    CXOptionalStringAttribute(a3, CXNoNamespace, "state", &v27);
    v17 = v27;
    v18 = v17;
    if (v17 && (([v17 isEqualToString:@"hidden"] & 1) != 0 || objc_msgSend(v18, "isEqualToString:", @"veryHidden")))
    {
      [v14 setHidden:1];
    }

    v19 = [EXSheetContext alloc];
    v20 = [v7 targetLocation];
    v21 = [(EXSheetContext *)v19 initWithSheetLocation:v20 sheetXmlType:v12 state:v6];

    [v14 setDelayedContext:v21];
    v22 = [v6 workbook];
    [v22 addSheet:v14];

    [v6 setCurrentSheet:v14];
    [v13 readTables:v6];
    [v6 setCurrentSheet:0];
    [v6 setCurrentPart:0];
    v23 = [v7 targetLocation];
    [v8 resetPartForLocation:v23];
  }
}

+ (void)readDelayedSheeWithLocation:(id)a3 sheetXmlType:(id)a4 state:(id)a5
{
  v23 = a3;
  v7 = a4;
  v8 = a5;
  v9 = objc_autoreleasePoolPush();
  [TCProgressContext createStageWithSteps:@"read sheet" takingSteps:3.0 name:1.0];
  [v8 resetForNewSheet];
  v20 = [v8 workbookPart];
  v10 = [v20 package];
  v21 = v10;
  if (!v10)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v11 = [v10 partForLocation:v23];
  v22 = v11;
  if (!v11)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v12 = [v11 location];
  v13 = [v12 relativeString];

  v14 = [a1 exSheetClassFromXmlSheetType:v7 location:v13];
  if (v14)
  {
    [v8 setCurrentPart:v22];
    [v14 readOtherSheetComponentsWithState:v8];
    v15 = [v22 xmlReader];
    if (!v15)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    [TCProgressContext createStageWithSteps:@"read common sheet elements outer" takingSteps:1.0 name:1.0];
    v16 = objc_alloc_init(OCXSStream);
    v17 = xmlTextReaderDepth(v15);
    [(OCXSStream *)v16 pushLevel:v17 name:xmlTextReaderConstLocalName(v15)];
    v18 = -1;
    while ([OCXStreamUtility readStream:v15 streamState:v16])
    {
      [TCProgressContext createStageWithSteps:@"read common sheet elements inner" takingSteps:2.0 name:ldexp(1.0, v18)];
      if (([v14 readDistinctSheetElementsFrom:v15 state:v8] & 1) == 0)
      {
        [a1 readCommonSheetElementsFrom:v15 state:v8];
      }

      --v18;
      +[TCProgressContext endStage];
    }

    +[TCProgressContext endStage];
    [a1 readAllDrawablesWithState:v8];
    v19 = [v8 currentSheet];
    [EXFormula applyArrayedFormulasToSheet:v19 state:v8];

    [v8 setCurrentPart:0];
    [v21 resetPartForLocation:v23];
    +[TCProgressContext endStage];
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  if (v15)
  {
    xmlFreeTextReader(v15);
  }

  objc_autoreleasePoolPop(v9);
}

+ (void)readCommonSheetElementsFrom:(_xmlTextReader *)a3 state:(id)a4
{
  v6 = a4;
  v7 = xmlTextReaderConstLocalName(a3);
  if (v7)
  {
    v8 = xmlTextReaderExpand(a3);
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
      [v6 reportWarning:ECPasswordProtectedSheet];
    }
  }

  if (xmlStrEqual(v7, "headerFooter"))
  {
    v11 = [v6 currentSheet];
    v12 = [EXHeaderFooter edHeaderFooterFromXmlHeaderFooterElement:v8 state:v6];
    [v11 setHeaderFooter:v12];
LABEL_15:

    goto LABEL_16;
  }

  if (xmlStrEqual(v7, "pageMargins"))
  {
    v11 = [v6 currentSheet];
    v12 = [EXPageSetup edPageMarginsFrom:v8 state:v6];
    [v11 setPageSetup:v12];
    goto LABEL_15;
  }

  if (xmlStrEqual(v7, "pageSetup"))
  {
    v11 = [v6 currentSheet];
    v12 = [EXPageSetup edPageSetupFrom:v8 state:v6];
    [v11 setPageSetup:v12];
    goto LABEL_15;
  }

  if (xmlStrEqual(v7, "sheetPr"))
  {
    [a1 readSheetProperties:v8 state:v6];
  }

  else if (xmlStrEqual(v7, "legacyDrawing"))
  {
    [a1 readLegacyDrawablesWithState:v6];
  }

LABEL_16:
}

+ (Class)exSheetClassFromXmlSheetType:(id)a3 location:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (([v5 isEqualToString:@"work"] & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"chartsheet") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"macrosheet") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"dialogsheet") & 1) == 0 && !objc_msgSend(v5, "isEqualToString:", @"basic"))
    {
LABEL_7:
      v8 = 0;
      goto LABEL_19;
    }
  }

  else if (([v6 hasPrefix:@"chartsheets"] & 1) == 0 && (objc_msgSend(v7, "hasPrefix:", @"worksheets") & 1) == 0 && objc_msgSend(v7, "rangeOfString:", @"/worksheets") == 0x7FFFFFFFFFFFFFFFLL && (objc_msgSend(v7, "hasPrefix:", @"dialogsheets") & 1) == 0 && (objc_msgSend(v7, "hasPrefix:", @"macrosheets") & 1) == 0 && (objc_msgSend(v7, "hasPrefix:", @"basics") & 1) == 0 && (!objc_msgSend(v7, "hasSuffix:", @".xml") || objc_msgSend(v7, "rangeOfString:", @"/") != 0x7FFFFFFFFFFFFFFFLL))
  {
    goto LABEL_7;
  }

  v8 = objc_opt_class();
LABEL_19:

  return v8;
}

+ (void)readSheetProperties:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v6 = [v5 EXSpreadsheetMLNamespace];
  v7 = OCXFindChild(a3, v6, "pageSetUpPr");

  if (v7)
  {
    v11 = 0;
    if (CXOptionalBoolAttribute(v7, CXNoNamespace, "fitToPage", &v11))
    {
      v8 = objc_opt_class();
      v9 = [v5 currentSheet];
      v10 = TSUDynamicCast(v8, v9);

      [v10 setFitToPage:v11];
    }
  }
}

+ (void)readDrawablesWithState:(id)a3
{
  v12 = a3;
  v3 = [(OCXState *)v12 currentPart];
  v4 = OCXPartRelationshipsByTypeWithFallback(v3, v12, sel_OCXDrawingRelationshipType);
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [(OCPPackagePart *)v3 package];
    if (!v6 || [v5 count] != 1)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    v7 = [v5 objectAtIndex:0];
    v8 = [v7 targetLocation];
    v9 = [v6 partForLocation:v8];

    if (!v9)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    [EXDrawing readFromPart:v9 state:v12];
    v10 = [v5 objectAtIndex:0];
    v11 = [v10 targetLocation];
    [v6 resetPartForLocation:v11];
  }
}

+ (void)readLegacyDrawablesWithState:(id)a3
{
  v20 = a3;
  v3 = [v20 currentPart];
  v4 = [v3 relationshipsByType:@"http://schemas.openxmlformats.org/officeDocument/2006/relationships/vmlDrawing"];
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [v3 package];
    if (!v6)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    v18 = v3;
    v19 = [v20 legacyDrawables];
    for (i = 0; [v5 count] > i; ++i)
    {
      v8 = [v5 objectAtIndex:i];
      v9 = [v8 targetLocation];
      v10 = [v6 partForLocation:v9];

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

      v13 = [v20 oavState];
      [v13 setPackagePart:v10];
      v14 = [v20 EXSpreadsheetDrawingNamespace];
      v15 = [OAVDrawable readDrawablesFromParent:v12 inNamespace:v14 state:v13];
      [v19 addObjectsFromArray:v15];

      v16 = [v5 objectAtIndex:i];
      v17 = [v16 targetLocation];
      [v6 resetPartForLocation:v17];

      xmlFreeDoc(v11);
    }

    v3 = v18;
  }
}

+ (void)readAllDrawablesWithState:(id)a3
{
  v11 = a3;
  v4 = [v11 legacyDrawables];
  [a1 readDrawablesWithState:v11];
  for (i = 0; ; i = v6 + 1)
  {
    v6 = i;
    if ([v4 count] <= i)
    {
      break;
    }

    v7 = [v4 objectAtIndex:i];
    v8 = [v11 oavState];
    v9 = [v8 isDualDrawable:v7];

    if ((v9 & 1) == 0)
    {
      v10 = [v11 currentSheet];
      [v10 addDrawable:v7];
    }
  }
}

@end