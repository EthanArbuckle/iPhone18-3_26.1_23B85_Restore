@interface EXWorksheet
+ (BOOL)readDistinctSheetElementsFrom:(_xmlTextReader *)from state:(id)state;
+ (id)edSheetWithState:(id)state;
+ (void)readColumnInfosFrom:(_xmlNode *)from state:(id)state;
+ (void)readCommentTextFrom:(id)from;
+ (void)readHyperlinksFrom:(_xmlNode *)from state:(id)state;
+ (void)readOleObjectsFrom:(_xmlNode *)from state:(id)state;
+ (void)readOtherSheetComponentsWithState:(id)state;
+ (void)readPivotTables:(id)tables;
+ (void)readSheetExtension:(_xmlNode *)extension state:(id)state;
+ (void)readSheetExtensions:(_xmlNode *)extensions state:(id)state;
+ (void)readTables:(id)tables;
+ (void)readWorksheetFormatPropertiesFrom:(_xmlNode *)from state:(id)state;
+ (void)readWorksheetViewsFrom:(_xmlNode *)from state:(id)state;
+ (void)setupProcessors:(id)processors;
@end

@implementation EXWorksheet

+ (id)edSheetWithState:(id)state
{
  stateCopy = state;
  v5 = [EDWorksheet alloc];
  workbook = [stateCopy workbook];
  v7 = [(EDSheet *)v5 initWithWorkbook:workbook];

  processors = [(EDSheet *)v7 processors];
  [self setupProcessors:processors];

  return v7;
}

+ (BOOL)readDistinctSheetElementsFrom:(_xmlTextReader *)from state:(id)state
{
  stateCopy = state;
  v7 = xmlTextReaderConstLocalName(from);
  if (xmlStrEqual(v7, "sheetData"))
  {
    [EXRow readRowsFrom:from state:stateCopy];
LABEL_3:
    v8 = 0;
    goto LABEL_6;
  }

  if (!v7)
  {
    goto LABEL_3;
  }

  v8 = xmlTextReaderExpand(from);
LABEL_6:
  if (xmlStrEqual(v7, "sheetViews"))
  {
    [self readWorksheetViewsFrom:v8 state:stateCopy];
  }

  else if (xmlStrEqual(v7, "sheetFormatPr"))
  {
    [self readWorksheetFormatPropertiesFrom:v8 state:stateCopy];
  }

  else if (xmlStrEqual(v7, "cols"))
  {
    [self readColumnInfosFrom:v8 state:stateCopy];
  }

  else if (xmlStrEqual(v7, "mergeCells"))
  {
    [EXMergeTable readFrom:v8 state:stateCopy];
  }

  else if (xmlStrEqual(v7, "conditionalFormatting"))
  {
    [EXConditionalFormatting readFrom:v8 x14:0 state:stateCopy];
  }

  else if (xmlStrEqual(v7, "hyperlinks"))
  {
    [self readHyperlinksFrom:v8 state:stateCopy];
  }

  else if (xmlStrEqual(v7, "oleObjects"))
  {
    [self readOleObjectsFrom:v8 state:stateCopy];
  }

  else if (xmlStrEqual(v7, "dimension"))
  {
    Attribute = xmlTextReaderGetAttribute(from, "ref");
    v10 = [MEMORY[0x277CCACA8] tc_stringWithXmlString:Attribute];
    free(Attribute);
    v11 = [EXReference edReferenceFromXmlReference:v10];
    [stateCopy setSheetDimension:v11];
  }

  else
  {
    if (!xmlStrEqual(v7, "extLst"))
    {
      v12 = 0;
      goto LABEL_25;
    }

    [self readSheetExtensions:v8 state:stateCopy];
  }

  v12 = 1;
LABEL_25:

  return v12;
}

+ (void)readOtherSheetComponentsWithState:(id)state
{
  stateCopy = state;
  [self readCommentTextFrom:?];
  [self readPivotTables:stateCopy];
}

+ (void)readTables:(id)tables
{
  tablesCopy = tables;
  currentSheet = [(OCXState *)tablesCopy currentSheet];
  tables = [currentSheet tables];

  currentPart = [(OCXState *)tablesCopy currentPart];
  v6 = OCXPartRelationshipsByTypeWithFallback(currentPart, tablesCopy, sel_OCXTableRelationshipType);
  if (v6)
  {
    [EXTableStyleTable readPredefinedTableStylesWithState:tablesCopy];
    package = [(OCPPackagePart *)currentPart package];
    v21 = currentPart;
    if (!package)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    for (i = 0; ; i = v9 + 1)
    {
      v9 = i;
      if ([v6 count] <= i)
      {
        break;
      }

      v10 = [v6 objectAtIndex:i];
      targetLocation = [v10 targetLocation];
      v12 = [package partForLocation:targetLocation];

      if (!v12)
      {
        [TCMessageException raise:TCInvalidFileFormatMessage];
      }

      xmlDocument = [v12 xmlDocument];
      if (!xmlDocument)
      {
        [TCMessageException raise:TCInvalidFileFormatMessage];
      }

      v14 = OCXGetRootElement(xmlDocument);
      v15 = v14;
      if (!v14 || !xmlStrEqual(v14->name, "table") || (-[OCXState EXSpreadsheetMLNamespace](tablesCopy, "EXSpreadsheetMLNamespace"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 containsNode:v15], v16, (v17 & 1) == 0))
      {
        [TCMessageException raise:TCInvalidFileFormatMessage];
      }

      v18 = [EXTable edTableFromXmlTableElement:v15 state:tablesCopy];
      [tables addObject:v18];

      v19 = [v6 objectAtIndex:v9];
      targetLocation2 = [v19 targetLocation];
      [package resetPartForLocation:targetLocation2];
    }

    currentPart = v21;
  }
}

+ (void)setupProcessors:(id)processors
{
  processorsCopy = processors;
  [processorsCopy removeAllObjects];
  [processorsCopy addProcessorClass:objc_opt_class()];
  [processorsCopy addProcessorClass:objc_opt_class()];
  [processorsCopy addProcessorClass:objc_opt_class()];
  [processorsCopy addProcessorClass:objc_opt_class()];
  [processorsCopy addProcessorClass:objc_opt_class()];
  [processorsCopy addProcessorClass:objc_opt_class()];
  [processorsCopy addProcessorClass:objc_opt_class()];
  [processorsCopy addProcessorClass:objc_opt_class()];
  [processorsCopy addProcessorClass:objc_opt_class()];
  [processorsCopy addProcessorClass:objc_opt_class()];
  [processorsCopy addProcessorClass:objc_opt_class()];
  [processorsCopy addProcessorClass:objc_opt_class()];
  [processorsCopy addProcessorClass:objc_opt_class()];
  [processorsCopy addProcessorClass:objc_opt_class()];
}

+ (void)readOleObjectsFrom:(_xmlNode *)from state:(id)state
{
  stateCopy = state;
  [TCProgressContext createStageWithSteps:@"read OLE objects" takingSteps:1.0 name:1.0];
  if (from)
  {
    currentPart = [stateCopy currentPart];
    package = [currentPart package];
    if (!package)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    parent = from->parent;
    if (parent)
    {
      eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
      OCXFindChild(parent, eXSpreadsheetMLNamespace, "oleObjects");
    }

    eXSpreadsheetMLNamespace2 = [stateCopy EXSpreadsheetMLNamespace];
    Child = OCXFindChild(from, eXSpreadsheetMLNamespace2, "oleObject");

    if (Child)
    {
      v10 = -1;
      v38 = package;
      do
      {
        [TCProgressContext createStageWithSteps:@"read OLE object" takingSteps:1.0 name:ldexp(1.0, v10)];
        v11 = CXDefaultStringAttribute(Child, CXNoNamespace, "progId", 0);
        v12 = objc_alloc_init(OADOle);
        v13 = v12;
        if (v11)
        {
          [(OADOle *)v12 setAnsiProgID:v11];
        }

        v14 = CXRequiredStringAttribute(Child, CXNoNamespace, "shapeId");
        v39 = v11;
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"_x0000_s%@", v14];

        oavState = [stateCopy oavState];
        v17 = [oavState drawableForVmlShapeId:v15];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          object = v17;
          [object setOle:v13];
        }

        else
        {
          v19 = objc_opt_class();
          v20 = TSUDynamicCast(v19, v17);
          type = [v20 type];

          if (type != 75)
          {
            goto LABEL_15;
          }

          object = [(OADOle *)v13 object];
        }

LABEL_15:
        eXSpreadsheetMLNamespace3 = [stateCopy EXSpreadsheetMLNamespace];
        v23 = OCXFindChild(Child, eXSpreadsheetMLNamespace3, "objectPr");

        if (v23)
        {
          eXSpreadsheetMLNamespace4 = [stateCopy EXSpreadsheetMLNamespace];
          v25 = OCXFindChild(v23, eXSpreadsheetMLNamespace4, "anchor");

          if (v25)
          {
            clientData = [v17 clientData];
            if (clientData)
            {
              v27 = objc_alloc_init(EDTwoCellAnchor);
              [(EDTwoCellAnchor *)v27 setRelative:0];
              [(EDTwoCellAnchor *)v27 setEditAs:1];
              eXSpreadsheetMLNamespace5 = [stateCopy EXSpreadsheetMLNamespace];
              v29 = OCXFirstChild(v25, eXSpreadsheetMLNamespace5, "from");

              v30 = [EXDrawing readAnchorMarkerFromNode:v29 state:stateCopy];
              [(EDTwoCellAnchor *)v27 setFrom:v30, v31];
              eXSpreadsheetMLNamespace6 = [stateCopy EXSpreadsheetMLNamespace];
              v33 = OCXNextSibling(v29, eXSpreadsheetMLNamespace6, "to");

              v34 = [EXDrawing readAnchorMarkerFromNode:v33 state:stateCopy];
              [(EDTwoCellAnchor *)v27 setTo:v34, v35];
              [clientData setAnchor:v27];
            }
          }
        }

        +[TCProgressContext endStage];

        package = v38;
        eXSpreadsheetMLNamespace7 = [stateCopy EXSpreadsheetMLNamespace];
        Child = OCXFindNextChild(from, eXSpreadsheetMLNamespace7, "oleObject");

        --v10;
      }

      while (Child);
    }
  }

  +[TCProgressContext endStage];
}

+ (void)readWorksheetViewsFrom:(_xmlNode *)from state:(id)state
{
  stateCopy = state;
  v6 = stateCopy;
  if (from)
  {
    eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
    v8 = OCXFindChild(from, eXSpreadsheetMLNamespace, "sheetView");

    if (v8)
    {
      currentSheet = [v6 currentSheet];
      eXSpreadsheetMLNamespace2 = [v6 EXSpreadsheetMLNamespace];
      v11 = OCXFindChild(v8, eXSpreadsheetMLNamespace2, "pane");

      if (v11)
      {
        v12 = [EXPane edPaneFromXMLPaneElement:v11];
        [currentSheet setPane:v12];
      }

      v19 = 1;
      if (CXOptionalBoolAttribute(v8, CXNoNamespace, "showFormulas", &v19))
      {
        [currentSheet setDisplayFormulas:v19];
      }

      v18 = 1;
      if (CXOptionalBoolAttribute(v8, CXNoNamespace, "showGridLines", &v18))
      {
        [currentSheet setDisplayGridlines:v18];
      }

      v17 = 1;
      CXOptionalBoolAttribute(v8, CXNoNamespace, "defaultGridColor", &v17);
      if (!v17)
      {
        v16 = 0;
        if (CXOptionalUnsignedLongAttribute(v8, CXNoNamespace, "colorId", &v16))
        {
          v13 = v16;
          resources = [v6 resources];
          v15 = [EDColorReference colorReferenceWithColorIndex:v13 resources:resources];
          [currentSheet setDefaultGridlineColorReference:v15];
        }
      }
    }
  }
}

+ (void)readWorksheetFormatPropertiesFrom:(_xmlNode *)from state:(id)state
{
  stateCopy = state;
  currentSheet = [stateCopy currentSheet];
  if (from)
  {
    v13 = 0.0;
    if (!CXOptionalDoubleAttribute(from, CXNoNamespace, "defaultColWidth", &v13))
    {
      CXOptionalDoubleAttribute(from, CXNoNamespace, "defColWidth", &v13);
    }

    v7 = v13;
    if (v13 == 0.0)
    {
      v12 = 8.0;
      CXOptionalDoubleAttribute(from, CXNoNamespace, "baseColWidth", &v12);
      columnWidthConvertor = [stateCopy columnWidthConvertor];
      [columnWidthConvertor xlColumnWidthFromXlBaseColumnWidth:v12];
      v13 = v9;

      v7 = v13;
    }

    [currentSheet setDefaultColumnWidth:v7];
    [stateCopy setDefaultColumnWidth:v13];
    v12 = 15.0;
    if (!CXOptionalDoubleAttribute(from, CXNoNamespace, "defaultRowHeight", &v12))
    {
      CXOptionalDoubleAttribute(from, CXNoNamespace, "defRowHeight", &v12);
    }

    [currentSheet setDefaultRowHeight:(v12 * 20.0)];
    [stateCopy setDefaultRowHeight:v12 * 20.0];
    v11 = 0;
    if (CXOptionalUnsignedLongAttribute(from, CXNoNamespace, "outlineLevelRow", &v11))
    {
      [currentSheet setMaxRowOutlineLevel:v11];
    }

    v10 = 0;
    if (CXOptionalUnsignedLongAttribute(from, CXNoNamespace, "outlineLevelCol", &v10))
    {
      [currentSheet setMaxColumnOutlineLevel:v10];
    }
  }
}

+ (void)readColumnInfosFrom:(_xmlNode *)from state:(id)state
{
  stateCopy = state;
  currentSheet = [stateCopy currentSheet];
  columnInfos = [currentSheet columnInfos];

  if (from)
  {
    eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
    Child = OCXFindChild(from, eXSpreadsheetMLNamespace, "col");

    while (Child)
    {
      v9 = [EXColumnInfo edColumnInfoFromXmlColumnInfoElement:Child state:stateCopy];
      [columnInfos addObject:v9];

      eXSpreadsheetMLNamespace2 = [stateCopy EXSpreadsheetMLNamespace];
      Child = OCXFindNextChild(Child, eXSpreadsheetMLNamespace2, "col");
    }
  }
}

+ (void)readHyperlinksFrom:(_xmlNode *)from state:(id)state
{
  stateCopy = state;
  if (from)
  {
    eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
    Child = OCXFindChild(from, eXSpreadsheetMLNamespace, "hyperlink");

    if (Child)
    {
      hyperlinks = 0;
      do
      {
        if (!hyperlinks)
        {
          currentSheet = [stateCopy currentSheet];
          hyperlinks = [currentSheet hyperlinks];
        }

        v9 = [EXHyperlink edHyperlinkFromXmlHyperlinkElement:Child state:stateCopy];
        [hyperlinks addObject:v9];

        eXSpreadsheetMLNamespace2 = [stateCopy EXSpreadsheetMLNamespace];
        Child = OCXFindNextChild(Child, eXSpreadsheetMLNamespace2, "hyperlink");
      }

      while (Child);
    }
  }
}

+ (void)readSheetExtensions:(_xmlNode *)extensions state:(id)state
{
  stateCopy = state;
  for (i = OCXFirstChild(extensions); i; i = OCXNextSibling(i))
  {
    if (i->type == XML_ELEMENT_NODE)
    {
      eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
      v8 = [eXSpreadsheetMLNamespace containsNode:i];

      if (v8)
      {
        if (xmlStrEqual(i->name, "ext"))
        {
          [self readSheetExtension:i state:stateCopy];
        }
      }
    }
  }
}

+ (void)readSheetExtension:(_xmlNode *)extension state:(id)state
{
  stateCopy = state;
  for (i = OCXFirstChild(extension); i; i = OCXNextSibling(i))
  {
    if (i->type == XML_ELEMENT_NODE && [EXXL2010Namespace containsNode:i])
    {
      if (xmlStrEqual(i->name, "sparklineGroups"))
      {
        [stateCopy reportWarning:ECUnsupportedSparklines];
      }

      else if (xmlStrEqual(i->name, "conditionalFormattings"))
      {
        [EXConditionalFormatting readConditionalFormattingsFrom:i x14:1 state:stateCopy];
      }
    }
  }
}

+ (void)readCommentTextFrom:(id)from
{
  fromCopy = from;
  currentPart = [(OCXState *)fromCopy currentPart];
  v5 = OCXPartRelationshipsByTypeWithFallback(currentPart, fromCopy, sel_OCXCommentsRelationshipType);
  if (v5)
  {
    package = [(OCPPackagePart *)currentPart package];
    if (!package)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    v7 = [v5 objectAtIndex:0];
    targetLocation = [v7 targetLocation];
    v9 = [package partForLocation:targetLocation];

    if (v9)
    {
      v42 = v9;
      xmlDocument = [v9 xmlDocument];
      if (xmlDocument)
      {
        v39 = package;
        v41 = currentPart;
        v43 = v5;
        v11 = OCXGetRootElement(xmlDocument);
        v12 = v11;
        if (!v11 || !xmlStrEqual(v11->name, "comments") || (-[OCXState EXSpreadsheetMLNamespace](fromCopy, "EXSpreadsheetMLNamespace"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 containsNode:v12], v13, (v14 & 1) == 0))
        {
          [TCMessageException raise:TCInvalidFileFormatMessage, package];
        }

        v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
        eXSpreadsheetMLNamespace = [(OCXState *)fromCopy EXSpreadsheetMLNamespace];
        v17 = OCXFindChild(v12, eXSpreadsheetMLNamespace, "authors");

        eXSpreadsheetMLNamespace2 = [(OCXState *)fromCopy EXSpreadsheetMLNamespace];
        Child = OCXFindChild(v17, eXSpreadsheetMLNamespace2, "author");

        while (Child)
        {
          v20 = [EXString readStringWithAsciiCodeFromXmlStringElement:Child, v39];
          v21 = [EDString edStringWithString:v20];

          if (!v21)
          {
            v21 = +[EDString string];
          }

          [v15 addObject:v21];
          eXSpreadsheetMLNamespace3 = [(OCXState *)fromCopy EXSpreadsheetMLNamespace];
          Child = OCXFindNextChild(Child, eXSpreadsheetMLNamespace3, "author");
        }

        eXSpreadsheetMLNamespace4 = [(OCXState *)fromCopy EXSpreadsheetMLNamespace];
        v24 = OCXFindChild(v12, eXSpreadsheetMLNamespace4, "commentList");

        eXSpreadsheetMLNamespace5 = [(OCXState *)fromCopy EXSpreadsheetMLNamespace];
        v26 = OCXFindChild(v24, eXSpreadsheetMLNamespace5, "comment");

        while (v26)
        {
          v45 = 0;
          v27 = CXOptionalStringAttribute(v26, CXNoNamespace, "ref", &v45);
          v28 = v45;
          if (v27)
          {
            v29 = [EXReference edReferenceFromXmlReference:v28];
          }

          else
          {
            v29 = 0;
          }

          v44 = 0;
          if (CXOptionalLongAttribute(v26, CXNoNamespace, "authorId", &v44) && (v30 = v44, v30 < [v15 count]))
          {
            v31 = [v15 objectAtIndexedSubscript:v44];
            if (!v29)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v31 = 0;
            if (!v29)
            {
LABEL_23:
              [TCMessageException raise:TCInvalidFileFormatMessage];
            }
          }

          eXSpreadsheetMLNamespace6 = [(OCXState *)fromCopy EXSpreadsheetMLNamespace];
          v33 = OCXFindChild(v26, eXSpreadsheetMLNamespace6, "text");

          v34 = +[EDTextBox textBox];
          v35 = [EXString edStringWithRunsFromXmlStringElement:v33 state:fromCopy];
          [v34 setText:v35];

          [(OCXState *)fromCopy setTextBox:v34 author:v31 forReference:v29];
          eXSpreadsheetMLNamespace7 = [(OCXState *)fromCopy EXSpreadsheetMLNamespace];
          v26 = OCXFindNextChild(v26, eXSpreadsheetMLNamespace7, "comment");
        }

        v9 = v42;
        package = v40;
        v37 = [v43 objectAtIndex:0];
        targetLocation2 = [v37 targetLocation];
        [v40 resetPartForLocation:targetLocation2];

        currentPart = v41;
        v5 = v43;
      }
    }
  }
}

+ (void)readPivotTables:(id)tables
{
  tablesCopy = tables;
  currentSheet = [(OCXState *)tablesCopy currentSheet];
  pivotTables = [currentSheet pivotTables];

  currentPart = [(OCXState *)tablesCopy currentPart];
  v6 = OCXPartRelationshipsByTypeWithFallback(currentPart, tablesCopy, sel_OCXPivotTableRelationshipType);
  if (v6)
  {
    [EXTableStyleTable readPredefinedTableStylesWithState:tablesCopy];
    package = [(OCPPackagePart *)currentPart package];
    if (!package)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    if ([v6 count])
    {
      [(OCXState *)tablesCopy reportWorksheetWarning:ECPivotTables];
    }

    for (i = 0; ; i = v9 + 1)
    {
      v9 = i;
      if ([v6 count] <= i)
      {
        break;
      }

      v10 = [v6 objectAtIndex:i];
      targetLocation = [v10 targetLocation];
      v12 = [package partForLocation:targetLocation];

      if (!v12)
      {
        [TCMessageException raise:TCInvalidFileFormatMessage];
      }

      xmlDocument = [v12 xmlDocument];
      if (!xmlDocument)
      {
        [TCMessageException raise:TCInvalidFileFormatMessage];
      }

      v14 = OCXGetRootElement(xmlDocument);
      v15 = v14;
      if (!v14 || !xmlStrEqual(v14->name, "pivotTableDefinition") || (-[OCXState EXSpreadsheetMLNamespace](tablesCopy, "EXSpreadsheetMLNamespace"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 containsNode:v15], v16, (v17 & 1) == 0))
      {
        [TCMessageException raise:TCInvalidFileFormatMessage];
      }

      v18 = [EXPivotTable edPivotTableFromXmlPivotTableElement:v15 state:tablesCopy];
      [pivotTables addObject:v18];

      v19 = [v6 objectAtIndex:v9];
      targetLocation2 = [v19 targetLocation];
      [package resetPartForLocation:targetLocation2];
    }

    currentPart = v21;
  }
}

@end