@interface CHXReader
+ (id)chartPartWithParentNode:(_xmlNode *)node drawingState:(id)state;
+ (id)externalDataRelationshipWithChartPart:(id)part drawingState:(id)state;
+ (id)externalDataWithChartPart:(id)part relationship:(id)relationship;
+ (id)readFromParentNode:(_xmlNode *)node drawingState:(id)state;
+ (id)readFromXmlDocument:(_xmlDoc *)document chartStyleId:(int)id drawingState:(id)state;
@end

@implementation CHXReader

+ (id)readFromParentNode:(_xmlNode *)node drawingState:(id)state
{
  stateCopy = state;
  v70 = 0;
  context = objc_autoreleasePoolPush();
  v7 = [self chartPartWithParentNode:node drawingState:stateCopy];
  v8 = [self externalDataRelationshipWithChartPart:v7 drawingState:stateCopy];
  v9 = v8;
  v68 = v8;
  if (!v8)
  {
    nodeCopy3 = node;
    v14 = 0;
    goto LABEL_26;
  }

  if ([v8 targetMode] == 1)
  {
    v10 = [[EDWorkbook alloc] initWithStringOptimization:1];
    packagePart = [(OCXState *)stateCopy packagePart];
    package = [packagePart package];

    mainDocumentPart = [package mainDocumentPart];
    if (mainDocumentPart)
    {
      nodeCopy3 = node;
      v14 = objc_alloc_init(EXReadState);
      v65 = package;
      v66 = mainDocumentPart;
      v64 = [[EXOfficeArtState alloc] initWithExcelState:v14];
      [(EXReadState *)v14 setOfficeArtState:v64];
      [(EXReadState *)v14 setWorkbook:v10];
      v9 = [EXWorksheet edSheetWithState:v14];
      v15 = [EDString edStringWithString:@"Sheet1"];
      [v9 setName:v15];

      [(EDWorkbook *)v10 addSheet:v9];
      xmlReader = [(OCPPackagePart *)mainDocumentPart xmlReader];
      if (!xmlReader)
      {
        [TCMessageException raise:TCChartUnsupportedContent];
      }

      if (xmlTextReaderRead(xmlReader) != 1)
      {
        xmlFreeTextReader(xmlReader);
        [TCMessageException raise:TCChartUnsupportedContent];
      }

      if (xmlTextReaderNodeType(xmlReader) != 1 || (v17 = xmlTextReaderConstLocalName(xmlReader), !xmlStrEqual(v17, "document")) && (v18 = xmlTextReaderConstLocalName(xmlReader), !xmlStrEqual(v18, "workbook")) && (v19 = xmlTextReaderConstLocalName(xmlReader), !xmlStrEqual(v19, "presentation")))
      {
        xmlFreeTextReader(xmlReader);
        [TCMessageException raise:TCChartUnsupportedContent];
      }

      if (OCXIsStrictXmlFile(xmlReader))
      {
        [(EXReadState *)v14 setupNSForXMLFormat:1];
      }

      xmlFreeTextReader(xmlReader);
      v20 = OCXFirstPartWithRelationshipOfTypeToPartWithFallback(mainDocumentPart, stateCopy, sel_OCXThemeRelationshipType);
      if (v20)
      {
        theme = [(OCDDocument *)v10 theme];
        officeArtState = [(EXReadState *)v14 officeArtState];
        [OAXTheme readFromPackagePart:v20 toTheme:theme state:officeArtState];

        theme2 = [(OCDDocument *)v10 theme];
        baseStyles = [theme2 baseStyles];
        colorScheme = [baseStyles colorScheme];

        officeArtState2 = [(EXReadState *)v14 officeArtState];
        [officeArtState2 setColorScheme:colorScheme];

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

      package = v65;
      mainDocumentPart = v66;
    }

    else
    {
      v9 = 0;
    }

    [TCMessageContext reportWarning:TCChartUnsupportedContent];

    v60 = 0;
    goto LABEL_45;
  }

  v10 = [self externalDataWithChartPart:v7 relationship:v9];
  nodeCopy3 = node;
  v14 = 0;
  v9 = 0;
  if (v10)
  {
LABEL_21:
    v27 = objc_alloc_init(EXReadState);
    [(EXReadState *)v27 setupNSForXMLFormat:[(OCXState *)stateCopy xmlFormat]];
    v28 = [[EXOfficeArtState alloc] initWithExcelState:v27];
    [(EXReadState *)v27 setOfficeArtState:v28];

    v14 = v27;
LABEL_22:
    [(EXReadState *)v14 setCurrentSheetIndex:0];
    v29 = [(EDWorkbook *)v10 sheetAtIndex:0 loadIfNeeded:0];
    [(EXReadState *)v14 setCurrentSheet:v29];

    workbook = [(EXReadState *)v14 workbook];

    if (!workbook)
    {
      [(EXReadState *)v14 setWorkbook:v10];
    }

    resources = [(EDWorkbook *)v10 resources];
    [(EXReadState *)v14 setResources:resources];

    officeArtState3 = [(EXReadState *)v14 officeArtState];
    styleMatrix = [(OCXState *)stateCopy styleMatrix];
    [(OCXState *)officeArtState3 setStyleMatrix:styleMatrix];

    colorScheme2 = [(OCXState *)stateCopy colorScheme];
    [(OCXState *)officeArtState3 setColorScheme:colorScheme2];

    colorMap = [(OCXState *)stateCopy colorMap];
    [(OCXState *)officeArtState3 setColorMap:colorMap];

    fontScheme = [(OCXState *)stateCopy fontScheme];

    if (fontScheme)
    {
      fontScheme2 = [(OCXState *)stateCopy fontScheme];
      [(OCXState *)officeArtState3 setFontScheme:fontScheme2];
    }

    else
    {
      fontScheme2 = [(OCDDocument *)v10 theme];
      baseStyles2 = [fontScheme2 baseStyles];
      fontScheme3 = [baseStyles2 fontScheme];
      [(OCXState *)officeArtState3 setFontScheme:fontScheme3];
    }

    [(OCXState *)officeArtState3 clearTargetBlipCollection];
    targetBlipCollection = [(OCXState *)stateCopy targetBlipCollection];
    [(OCXState *)officeArtState3 setTargetBlipCollection:targetBlipCollection];

    clientChartGraphicPropertyDefaultsBlock = [(OCXState *)stateCopy clientChartGraphicPropertyDefaultsBlock];
    [(OCXState *)officeArtState3 setClientChartGraphicPropertyDefaultsBlock:clientChartGraphicPropertyDefaultsBlock];

    client = [(OCXState *)stateCopy client];
    if (objc_opt_respondsToSelector())
    {
      client2 = [(OCXState *)officeArtState3 client];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
LABEL_38:
        client3 = [(OCXState *)stateCopy client];
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
LABEL_41:

          goto LABEL_42;
        }

        client4 = [(OCXState *)officeArtState3 client];
        objc_opt_class();
        v49 = objc_opt_isKindOfClass();

        if (v49)
        {
          client3 = [(OCXState *)officeArtState3 client];
          client5 = [(OCXState *)stateCopy client];
          [client3 setAutoChartStrokeIsHollow:{objc_msgSend(client5, "chartAutoStrokeIsHollow")}];

          goto LABEL_41;
        }

        goto LABEL_42;
      }

      client = [(OCXState *)officeArtState3 client];
      client6 = [(OCXState *)stateCopy client];
      [client setAutoChartFillIsHollow:{objc_msgSend(client6, "chartAutoFillIsHollow")}];
    }

    goto LABEL_38;
  }

LABEL_26:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    officeArtState3 = stateCopy;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = 0;
      officeArtState3 = 0;
      goto LABEL_42;
    }

    chxState = [(OCXState *)stateCopy chxState];
    officeArtState3 = [chxState drawingState];
  }

  v10 = 0;
LABEL_42:
  v51 = v14;
  v52 = [[CHXReadState alloc] initWithDrawingState:officeArtState3];
  [(CHXReadState *)v52 setChartPart:v7];
  excelState = [(OCXState *)officeArtState3 excelState];
  resources2 = [excelState resources];
  [(CHXReadState *)v52 setResources:resources2];

  packagePart2 = [(OCXState *)officeArtState3 packagePart];
  [(OCXState *)officeArtState3 setPackagePart:v7];
  v70 = +[CHXChart readFromXmlDocument:state:](CHXChart, "readFromXmlDocument:state:", [v7 xmlDocument], v52);

  [(OCXState *)officeArtState3 setPackagePart:packagePart2];
  if (v9)
  {
    [v9 applyProcessors];
  }

  [v70 setExternalData:v10];

  client7 = [(OCXState *)stateCopy client];
  [client7 readClientDataFromNode:nodeCopy3 toDrawable:v70 state:stateCopy];

  packagePart3 = [(OCXState *)stateCopy packagePart];
  package2 = [packagePart3 package];

  location = [v7 location];
  [package2 resetPartForLocation:location];

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

+ (id)readFromXmlDocument:(_xmlDoc *)document chartStyleId:(int)id drawingState:(id)state
{
  v5 = *&id;
  stateCopy = state;
  v8 = objc_autoreleasePoolPush();
  v9 = [[EDWorkbook alloc] initWithStringOptimization:1];
  context = v8;
  documentCopy = document;
  v10 = [(EDSheet *)[EDWorksheet alloc] initWithWorkbook:v9];
  v11 = [EDString edStringWithString:@"Sheet1"];
  [(EDSheet *)v10 setName:v11];

  [(EDWorkbook *)v9 addSheet:v10];
  v12 = objc_alloc_init(EXReadState);
  v13 = [[EXOfficeArtState alloc] initWithExcelState:v12];
  [(EXReadState *)v12 setOfficeArtState:v13];
  [(EXReadState *)v12 setWorkbook:v9];
  resources = [(EDWorkbook *)v9 resources];
  [(EXReadState *)v12 setResources:resources];

  [(EXReadState *)v12 setCurrentSheetIndex:0];
  v15 = [(EDWorkbook *)v9 sheetAtIndex:0 loadIfNeeded:0];
  [(EXReadState *)v12 setCurrentSheet:v15];

  styleMatrix = [stateCopy styleMatrix];
  [(OAXDrawingState *)v13 setStyleMatrix:styleMatrix];

  colorScheme = [stateCopy colorScheme];
  [(OAXDrawingState *)v13 setColorScheme:colorScheme];

  colorMap = [stateCopy colorMap];
  [(OAXDrawingState *)v13 setColorMap:colorMap];

  fontScheme = [stateCopy fontScheme];
  [(OAXDrawingState *)v13 setFontScheme:fontScheme];

  client = [stateCopy client];
  if (objc_opt_respondsToSelector())
  {
    client2 = [(OAXDrawingState *)v13 client];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_5;
    }

    client = [(OAXDrawingState *)v13 client];
    client3 = [stateCopy client];
    [client setAutoChartFillIsHollow:{objc_msgSend(client3, "chartAutoFillIsHollow")}];
  }

LABEL_5:
  client4 = [stateCopy client];
  if (objc_opt_respondsToSelector())
  {
    client5 = [(OAXDrawingState *)v13 client];
    objc_opt_class();
    v26 = objc_opt_isKindOfClass();

    if ((v26 & 1) == 0)
    {
      goto LABEL_9;
    }

    client4 = [(OAXDrawingState *)v13 client];
    client6 = [stateCopy client];
    [client4 setAutoChartStrokeIsHollow:{objc_msgSend(client6, "chartAutoStrokeIsHollow")}];
  }

LABEL_9:
  theme = [(OCDDocument *)v9 theme];
  baseStyles = [theme baseStyles];

  styleMatrix2 = [stateCopy styleMatrix];
  [baseStyles setStyleMatrix:styleMatrix2];

  colorScheme2 = [stateCopy colorScheme];
  [baseStyles setColorScheme:colorScheme2];

  fontScheme2 = [stateCopy fontScheme];
  [baseStyles setFontScheme:fontScheme2];

  v33 = [[CHXReadState alloc] initWithDrawingState:v13];
  [(CHXReadState *)v33 setIgnoreFormulas:1];
  excelState = [(EXOfficeArtState *)v13 excelState];
  resources2 = [excelState resources];
  [(CHXReadState *)v33 setResources:resources2];

  v39 = [CHXChart readFromXmlDocument:documentCopy chartStyleId:v5 state:v33];

  [v39 setExternalData:v9];
  objc_autoreleasePoolPop(context);

  return v39;
}

+ (id)chartPartWithParentNode:(_xmlNode *)node drawingState:(id)state
{
  stateCopy = state;
  oAXChartNamespace = [stateCopy OAXChartNamespace];
  v7 = OCXFindChild(node, oAXChartNamespace, "chart");

  if (!v7)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  oCXRelationshipsNamespace = [stateCopy OCXRelationshipsNamespace];
  v9 = CXRequiredStringAttribute(v7, oCXRelationshipsNamespace, "id");

  packagePart = [stateCopy packagePart];
  v11 = [packagePart relationshipForIdentifier:v9];
  package = [packagePart package];
  targetLocation = [v11 targetLocation];
  v14 = [package partForLocation:targetLocation];

  return v14;
}

+ (id)externalDataRelationshipWithChartPart:(id)part drawingState:(id)state
{
  partCopy = part;
  stateCopy = state;
  xmlDocument = [partCopy xmlDocument];
  if (!xmlDocument)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v8 = OCXGetRootElement(xmlDocument);
  oAXChartNamespace = [stateCopy OAXChartNamespace];
  v10 = OCXFindChild(v8, oAXChartNamespace, "externalData");

  if (v10)
  {
    oCXRelationshipsNamespace = [stateCopy OCXRelationshipsNamespace];
    v12 = CXRequiredStringAttribute(v10, oCXRelationshipsNamespace, "id");

    v13 = [partCopy relationshipForIdentifier:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)externalDataWithChartPart:(id)part relationship:(id)relationship
{
  partCopy = part;
  relationshipCopy = relationship;
  package = [partCopy package];
  targetLocation = [relationshipCopy targetLocation];
  v9 = [package partForLocation:targetLocation];

  if (v9)
  {
    v10 = [(OCDReader *)[EXReader alloc] initWithCancelDelegate:0];
    v11 = [OCPZipPackage alloc];
    data = [v9 data];
    v13 = [(OCPZipPackage *)v11 initWithData:data];

    [(OCXReader *)v10 setZipPackage:v13];
    [TCProgressContext createStageWithSteps:1.0 takingSteps:0.0];
    if (![(OCXReader *)v10 start])
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    read = [(EXReader *)v10 read];
    +[TCProgressContext endStage];
    package2 = [partCopy package];
    targetLocation2 = [relationshipCopy targetLocation];
    [package2 resetPartForLocation:targetLocation2];
  }

  else
  {
    read = 0;
  }

  return read;
}

@end