@interface CHXReader
+ (id)chartPartWithParentNode:(_xmlNode *)a3 drawingState:(id)a4;
+ (id)externalDataRelationshipWithChartPart:(id)a3 drawingState:(id)a4;
+ (id)externalDataWithChartPart:(id)a3 relationship:(id)a4;
+ (id)readFromParentNode:(_xmlNode *)a3 drawingState:(id)a4;
+ (id)readFromXmlDocument:(_xmlDoc *)a3 chartStyleId:(int)a4 drawingState:(id)a5;
@end

@implementation CHXReader

+ (id)readFromParentNode:(_xmlNode *)a3 drawingState:(id)a4
{
  v6 = a4;
  v70 = 0;
  context = objc_autoreleasePoolPush();
  v7 = [a1 chartPartWithParentNode:a3 drawingState:v6];
  v8 = [a1 externalDataRelationshipWithChartPart:v7 drawingState:v6];
  v9 = v8;
  v68 = v8;
  if (!v8)
  {
    v67 = a3;
    v14 = 0;
    goto LABEL_26;
  }

  if ([v8 targetMode] == 1)
  {
    v10 = [[EDWorkbook alloc] initWithStringOptimization:1];
    v11 = [(OCXState *)v6 packagePart];
    v12 = [v11 package];

    v13 = [v12 mainDocumentPart];
    if (v13)
    {
      v67 = a3;
      v14 = objc_alloc_init(EXReadState);
      v65 = v12;
      v66 = v13;
      v64 = [[EXOfficeArtState alloc] initWithExcelState:v14];
      [(EXReadState *)v14 setOfficeArtState:v64];
      [(EXReadState *)v14 setWorkbook:v10];
      v9 = [EXWorksheet edSheetWithState:v14];
      v15 = [EDString edStringWithString:@"Sheet1"];
      [v9 setName:v15];

      [(EDWorkbook *)v10 addSheet:v9];
      v16 = [(OCPPackagePart *)v13 xmlReader];
      if (!v16)
      {
        [TCMessageException raise:TCChartUnsupportedContent];
      }

      if (xmlTextReaderRead(v16) != 1)
      {
        xmlFreeTextReader(v16);
        [TCMessageException raise:TCChartUnsupportedContent];
      }

      if (xmlTextReaderNodeType(v16) != 1 || (v17 = xmlTextReaderConstLocalName(v16), !xmlStrEqual(v17, "document")) && (v18 = xmlTextReaderConstLocalName(v16), !xmlStrEqual(v18, "workbook")) && (v19 = xmlTextReaderConstLocalName(v16), !xmlStrEqual(v19, "presentation")))
      {
        xmlFreeTextReader(v16);
        [TCMessageException raise:TCChartUnsupportedContent];
      }

      if (OCXIsStrictXmlFile(v16))
      {
        [(EXReadState *)v14 setupNSForXMLFormat:1];
      }

      xmlFreeTextReader(v16);
      v20 = OCXFirstPartWithRelationshipOfTypeToPartWithFallback(v13, v6, sel_OCXThemeRelationshipType);
      if (v20)
      {
        v21 = [(OCDDocument *)v10 theme];
        v22 = [(EXReadState *)v14 officeArtState];
        [OAXTheme readFromPackagePart:v20 toTheme:v21 state:v22];

        v23 = [(OCDDocument *)v10 theme];
        v24 = [v23 baseStyles];
        v25 = [v24 colorScheme];

        v26 = [(EXReadState *)v14 officeArtState];
        [v26 setColorScheme:v25];

        if (v10)
        {
          if (v14)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

        goto LABEL_26;
      }

      v12 = v65;
      v13 = v66;
    }

    else
    {
      v9 = 0;
    }

    [TCMessageContext reportWarning:TCChartUnsupportedContent];

    v60 = 0;
    goto LABEL_45;
  }

  v10 = [a1 externalDataWithChartPart:v7 relationship:v9];
  v67 = a3;
  v14 = 0;
  v9 = 0;
  if (v10)
  {
LABEL_21:
    v27 = objc_alloc_init(EXReadState);
    [(EXReadState *)v27 setupNSForXMLFormat:[(OCXState *)v6 xmlFormat]];
    v28 = [[EXOfficeArtState alloc] initWithExcelState:v27];
    [(EXReadState *)v27 setOfficeArtState:v28];

    v14 = v27;
LABEL_22:
    [(EXReadState *)v14 setCurrentSheetIndex:0];
    v29 = [(EDWorkbook *)v10 sheetAtIndex:0 loadIfNeeded:0];
    [(EXReadState *)v14 setCurrentSheet:v29];

    v30 = [(EXReadState *)v14 workbook];

    if (!v30)
    {
      [(EXReadState *)v14 setWorkbook:v10];
    }

    v31 = [(EDWorkbook *)v10 resources];
    [(EXReadState *)v14 setResources:v31];

    v32 = [(EXReadState *)v14 officeArtState];
    v33 = [(OCXState *)v6 styleMatrix];
    [(OCXState *)v32 setStyleMatrix:v33];

    v34 = [(OCXState *)v6 colorScheme];
    [(OCXState *)v32 setColorScheme:v34];

    v35 = [(OCXState *)v6 colorMap];
    [(OCXState *)v32 setColorMap:v35];

    v36 = [(OCXState *)v6 fontScheme];

    if (v36)
    {
      v37 = [(OCXState *)v6 fontScheme];
      [(OCXState *)v32 setFontScheme:v37];
    }

    else
    {
      v37 = [(OCDDocument *)v10 theme];
      v39 = [v37 baseStyles];
      v40 = [v39 fontScheme];
      [(OCXState *)v32 setFontScheme:v40];
    }

    [(OCXState *)v32 clearTargetBlipCollection];
    v41 = [(OCXState *)v6 targetBlipCollection];
    [(OCXState *)v32 setTargetBlipCollection:v41];

    v42 = [(OCXState *)v6 clientChartGraphicPropertyDefaultsBlock];
    [(OCXState *)v32 setClientChartGraphicPropertyDefaultsBlock:v42];

    v43 = [(OCXState *)v6 client];
    if (objc_opt_respondsToSelector())
    {
      v44 = [(OCXState *)v32 client];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
LABEL_38:
        v47 = [(OCXState *)v6 client];
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
LABEL_41:

          goto LABEL_42;
        }

        v48 = [(OCXState *)v32 client];
        objc_opt_class();
        v49 = objc_opt_isKindOfClass();

        if (v49)
        {
          v47 = [(OCXState *)v32 client];
          v50 = [(OCXState *)v6 client];
          [v47 setAutoChartStrokeIsHollow:{objc_msgSend(v50, "chartAutoStrokeIsHollow")}];

          goto LABEL_41;
        }

        goto LABEL_42;
      }

      v43 = [(OCXState *)v32 client];
      v46 = [(OCXState *)v6 client];
      [v43 setAutoChartFillIsHollow:{objc_msgSend(v46, "chartAutoFillIsHollow")}];
    }

    goto LABEL_38;
  }

LABEL_26:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = v6;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = 0;
      v32 = 0;
      goto LABEL_42;
    }

    v38 = [(OCXState *)v6 chxState];
    v32 = [v38 drawingState];
  }

  v10 = 0;
LABEL_42:
  v51 = v14;
  v52 = [[CHXReadState alloc] initWithDrawingState:v32];
  [(CHXReadState *)v52 setChartPart:v7];
  v53 = [(OCXState *)v32 excelState];
  v54 = [v53 resources];
  [(CHXReadState *)v52 setResources:v54];

  v55 = [(OCXState *)v32 packagePart];
  [(OCXState *)v32 setPackagePart:v7];
  v70 = +[CHXChart readFromXmlDocument:state:](CHXChart, "readFromXmlDocument:state:", [v7 xmlDocument], v52);

  [(OCXState *)v32 setPackagePart:v55];
  if (v9)
  {
    [v9 applyProcessors];
  }

  [v70 setExternalData:v10];

  v56 = [(OCXState *)v6 client];
  [v56 readClientDataFromNode:v67 toDrawable:v70 state:v6];

  v57 = [(OCXState *)v6 packagePart];
  v58 = [v57 package];

  v59 = [v7 location];
  [v58 resetPartForLocation:v59];

  v60 = 1;
LABEL_45:
  objc_autoreleasePoolPop(context);
  if (v60)
  {
    v61 = v70;
    v62 = v61;
  }

  else
  {
    v62 = 0;
    v61 = v70;
  }

  return v62;
}

+ (id)readFromXmlDocument:(_xmlDoc *)a3 chartStyleId:(int)a4 drawingState:(id)a5
{
  v5 = *&a4;
  v7 = a5;
  v8 = objc_autoreleasePoolPush();
  v9 = [[EDWorkbook alloc] initWithStringOptimization:1];
  context = v8;
  v38 = a3;
  v10 = [(EDSheet *)[EDWorksheet alloc] initWithWorkbook:v9];
  v11 = [EDString edStringWithString:@"Sheet1"];
  [(EDSheet *)v10 setName:v11];

  [(EDWorkbook *)v9 addSheet:v10];
  v12 = objc_alloc_init(EXReadState);
  v13 = [[EXOfficeArtState alloc] initWithExcelState:v12];
  [(EXReadState *)v12 setOfficeArtState:v13];
  [(EXReadState *)v12 setWorkbook:v9];
  v14 = [(EDWorkbook *)v9 resources];
  [(EXReadState *)v12 setResources:v14];

  [(EXReadState *)v12 setCurrentSheetIndex:0];
  v15 = [(EDWorkbook *)v9 sheetAtIndex:0 loadIfNeeded:0];
  [(EXReadState *)v12 setCurrentSheet:v15];

  v16 = [v7 styleMatrix];
  [(OAXDrawingState *)v13 setStyleMatrix:v16];

  v17 = [v7 colorScheme];
  [(OAXDrawingState *)v13 setColorScheme:v17];

  v18 = [v7 colorMap];
  [(OAXDrawingState *)v13 setColorMap:v18];

  v19 = [v7 fontScheme];
  [(OAXDrawingState *)v13 setFontScheme:v19];

  v20 = [v7 client];
  if (objc_opt_respondsToSelector())
  {
    v21 = [(OAXDrawingState *)v13 client];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_5;
    }

    v20 = [(OAXDrawingState *)v13 client];
    v23 = [v7 client];
    [v20 setAutoChartFillIsHollow:{objc_msgSend(v23, "chartAutoFillIsHollow")}];
  }

LABEL_5:
  v24 = [v7 client];
  if (objc_opt_respondsToSelector())
  {
    v25 = [(OAXDrawingState *)v13 client];
    objc_opt_class();
    v26 = objc_opt_isKindOfClass();

    if ((v26 & 1) == 0)
    {
      goto LABEL_9;
    }

    v24 = [(OAXDrawingState *)v13 client];
    v27 = [v7 client];
    [v24 setAutoChartStrokeIsHollow:{objc_msgSend(v27, "chartAutoStrokeIsHollow")}];
  }

LABEL_9:
  v28 = [(OCDDocument *)v9 theme];
  v29 = [v28 baseStyles];

  v30 = [v7 styleMatrix];
  [v29 setStyleMatrix:v30];

  v31 = [v7 colorScheme];
  [v29 setColorScheme:v31];

  v32 = [v7 fontScheme];
  [v29 setFontScheme:v32];

  v33 = [[CHXReadState alloc] initWithDrawingState:v13];
  [(CHXReadState *)v33 setIgnoreFormulas:1];
  v34 = [(EXOfficeArtState *)v13 excelState];
  v35 = [v34 resources];
  [(CHXReadState *)v33 setResources:v35];

  v39 = [CHXChart readFromXmlDocument:v38 chartStyleId:v5 state:v33];

  [v39 setExternalData:v9];
  objc_autoreleasePoolPop(context);

  return v39;
}

+ (id)chartPartWithParentNode:(_xmlNode *)a3 drawingState:(id)a4
{
  v5 = a4;
  v6 = [v5 OAXChartNamespace];
  v7 = OCXFindChild(a3, v6, "chart");

  if (!v7)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v8 = [v5 OCXRelationshipsNamespace];
  v9 = CXRequiredStringAttribute(v7, v8, "id");

  v10 = [v5 packagePart];
  v11 = [v10 relationshipForIdentifier:v9];
  v12 = [v10 package];
  v13 = [v11 targetLocation];
  v14 = [v12 partForLocation:v13];

  return v14;
}

+ (id)externalDataRelationshipWithChartPart:(id)a3 drawingState:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 xmlDocument];
  if (!v7)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v8 = OCXGetRootElement(v7);
  v9 = [v6 OAXChartNamespace];
  v10 = OCXFindChild(v8, v9, "externalData");

  if (v10)
  {
    v11 = [v6 OCXRelationshipsNamespace];
    v12 = CXRequiredStringAttribute(v10, v11, "id");

    v13 = [v5 relationshipForIdentifier:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)externalDataWithChartPart:(id)a3 relationship:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 package];
  v8 = [v6 targetLocation];
  v9 = [v7 partForLocation:v8];

  if (v9)
  {
    v10 = [(OCDReader *)[EXReader alloc] initWithCancelDelegate:0];
    v11 = [OCPZipPackage alloc];
    v12 = [v9 data];
    v13 = [(OCPZipPackage *)v11 initWithData:v12];

    [(OCXReader *)v10 setZipPackage:v13];
    [TCProgressContext createStageWithSteps:1.0 takingSteps:0.0];
    if (![(OCXReader *)v10 start])
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    v14 = [(EXReader *)v10 read];
    +[TCProgressContext endStage];
    v15 = [v5 package];
    v16 = [v6 targetLocation];
    [v15 resetPartForLocation:v16];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end