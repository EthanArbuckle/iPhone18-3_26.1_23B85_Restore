@interface EXWorksheet
+ (BOOL)readDistinctSheetElementsFrom:(_xmlTextReader *)a3 state:(id)a4;
+ (id)edSheetWithState:(id)a3;
+ (void)readColumnInfosFrom:(_xmlNode *)a3 state:(id)a4;
+ (void)readCommentTextFrom:(id)a3;
+ (void)readHyperlinksFrom:(_xmlNode *)a3 state:(id)a4;
+ (void)readOleObjectsFrom:(_xmlNode *)a3 state:(id)a4;
+ (void)readOtherSheetComponentsWithState:(id)a3;
+ (void)readPivotTables:(id)a3;
+ (void)readSheetExtension:(_xmlNode *)a3 state:(id)a4;
+ (void)readSheetExtensions:(_xmlNode *)a3 state:(id)a4;
+ (void)readTables:(id)a3;
+ (void)readWorksheetFormatPropertiesFrom:(_xmlNode *)a3 state:(id)a4;
+ (void)readWorksheetViewsFrom:(_xmlNode *)a3 state:(id)a4;
+ (void)setupProcessors:(id)a3;
@end

@implementation EXWorksheet

+ (id)edSheetWithState:(id)a3
{
  v4 = a3;
  v5 = [EDWorksheet alloc];
  v6 = [v4 workbook];
  v7 = [(EDSheet *)v5 initWithWorkbook:v6];

  v8 = [(EDSheet *)v7 processors];
  [a1 setupProcessors:v8];

  return v7;
}

+ (BOOL)readDistinctSheetElementsFrom:(_xmlTextReader *)a3 state:(id)a4
{
  v6 = a4;
  v7 = xmlTextReaderConstLocalName(a3);
  if (xmlStrEqual(v7, "sheetData"))
  {
    [EXRow readRowsFrom:a3 state:v6];
LABEL_3:
    v8 = 0;
    goto LABEL_6;
  }

  if (!v7)
  {
    goto LABEL_3;
  }

  v8 = xmlTextReaderExpand(a3);
LABEL_6:
  if (xmlStrEqual(v7, "sheetViews"))
  {
    [a1 readWorksheetViewsFrom:v8 state:v6];
  }

  else if (xmlStrEqual(v7, "sheetFormatPr"))
  {
    [a1 readWorksheetFormatPropertiesFrom:v8 state:v6];
  }

  else if (xmlStrEqual(v7, "cols"))
  {
    [a1 readColumnInfosFrom:v8 state:v6];
  }

  else if (xmlStrEqual(v7, "mergeCells"))
  {
    [EXMergeTable readFrom:v8 state:v6];
  }

  else if (xmlStrEqual(v7, "conditionalFormatting"))
  {
    [EXConditionalFormatting readFrom:v8 x14:0 state:v6];
  }

  else if (xmlStrEqual(v7, "hyperlinks"))
  {
    [a1 readHyperlinksFrom:v8 state:v6];
  }

  else if (xmlStrEqual(v7, "oleObjects"))
  {
    [a1 readOleObjectsFrom:v8 state:v6];
  }

  else if (xmlStrEqual(v7, "dimension"))
  {
    Attribute = xmlTextReaderGetAttribute(a3, "ref");
    v10 = [MEMORY[0x277CCACA8] tc_stringWithXmlString:Attribute];
    free(Attribute);
    v11 = [EXReference edReferenceFromXmlReference:v10];
    [v6 setSheetDimension:v11];
  }

  else
  {
    if (!xmlStrEqual(v7, "extLst"))
    {
      v12 = 0;
      goto LABEL_25;
    }

    [a1 readSheetExtensions:v8 state:v6];
  }

  v12 = 1;
LABEL_25:

  return v12;
}

+ (void)readOtherSheetComponentsWithState:(id)a3
{
  v4 = a3;
  [a1 readCommentTextFrom:?];
  [a1 readPivotTables:v4];
}

+ (void)readTables:(id)a3
{
  v22 = a3;
  v3 = [(OCXState *)v22 currentSheet];
  v4 = [v3 tables];

  v5 = [(OCXState *)v22 currentPart];
  v6 = OCXPartRelationshipsByTypeWithFallback(v5, v22, sel_OCXTableRelationshipType);
  if (v6)
  {
    [EXTableStyleTable readPredefinedTableStylesWithState:v22];
    v7 = [(OCPPackagePart *)v5 package];
    v21 = v5;
    if (!v7)
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
      v11 = [v10 targetLocation];
      v12 = [v7 partForLocation:v11];

      if (!v12)
      {
        [TCMessageException raise:TCInvalidFileFormatMessage];
      }

      v13 = [v12 xmlDocument];
      if (!v13)
      {
        [TCMessageException raise:TCInvalidFileFormatMessage];
      }

      v14 = OCXGetRootElement(v13);
      v15 = v14;
      if (!v14 || !xmlStrEqual(v14->name, "table") || (-[OCXState EXSpreadsheetMLNamespace](v22, "EXSpreadsheetMLNamespace"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 containsNode:v15], v16, (v17 & 1) == 0))
      {
        [TCMessageException raise:TCInvalidFileFormatMessage];
      }

      v18 = [EXTable edTableFromXmlTableElement:v15 state:v22];
      [v4 addObject:v18];

      v19 = [v6 objectAtIndex:v9];
      v20 = [v19 targetLocation];
      [v7 resetPartForLocation:v20];
    }

    v5 = v21;
  }
}

+ (void)setupProcessors:(id)a3
{
  v3 = a3;
  [v3 removeAllObjects];
  [v3 addProcessorClass:objc_opt_class()];
  [v3 addProcessorClass:objc_opt_class()];
  [v3 addProcessorClass:objc_opt_class()];
  [v3 addProcessorClass:objc_opt_class()];
  [v3 addProcessorClass:objc_opt_class()];
  [v3 addProcessorClass:objc_opt_class()];
  [v3 addProcessorClass:objc_opt_class()];
  [v3 addProcessorClass:objc_opt_class()];
  [v3 addProcessorClass:objc_opt_class()];
  [v3 addProcessorClass:objc_opt_class()];
  [v3 addProcessorClass:objc_opt_class()];
  [v3 addProcessorClass:objc_opt_class()];
  [v3 addProcessorClass:objc_opt_class()];
  [v3 addProcessorClass:objc_opt_class()];
}

+ (void)readOleObjectsFrom:(_xmlNode *)a3 state:(id)a4
{
  v40 = a4;
  [TCProgressContext createStageWithSteps:@"read OLE objects" takingSteps:1.0 name:1.0];
  if (a3)
  {
    v37 = [v40 currentPart];
    v5 = [v37 package];
    if (!v5)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    parent = a3->parent;
    if (parent)
    {
      v7 = [v40 EXSpreadsheetMLNamespace];
      OCXFindChild(parent, v7, "oleObjects");
    }

    v8 = [v40 EXSpreadsheetMLNamespace];
    Child = OCXFindChild(a3, v8, "oleObject");

    if (Child)
    {
      v10 = -1;
      v38 = v5;
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

        v16 = [v40 oavState];
        v17 = [v16 drawableForVmlShapeId:v15];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v17;
          [v18 setOle:v13];
        }

        else
        {
          v19 = objc_opt_class();
          v20 = TSUDynamicCast(v19, v17);
          v21 = [v20 type];

          if (v21 != 75)
          {
            goto LABEL_15;
          }

          v18 = [(OADOle *)v13 object];
        }

LABEL_15:
        v22 = [v40 EXSpreadsheetMLNamespace];
        v23 = OCXFindChild(Child, v22, "objectPr");

        if (v23)
        {
          v24 = [v40 EXSpreadsheetMLNamespace];
          v25 = OCXFindChild(v23, v24, "anchor");

          if (v25)
          {
            v26 = [v17 clientData];
            if (v26)
            {
              v27 = objc_alloc_init(EDTwoCellAnchor);
              [(EDTwoCellAnchor *)v27 setRelative:0];
              [(EDTwoCellAnchor *)v27 setEditAs:1];
              v28 = [v40 EXSpreadsheetMLNamespace];
              v29 = OCXFirstChild(v25, v28, "from");

              v30 = [EXDrawing readAnchorMarkerFromNode:v29 state:v40];
              [(EDTwoCellAnchor *)v27 setFrom:v30, v31];
              v32 = [v40 EXSpreadsheetMLNamespace];
              v33 = OCXNextSibling(v29, v32, "to");

              v34 = [EXDrawing readAnchorMarkerFromNode:v33 state:v40];
              [(EDTwoCellAnchor *)v27 setTo:v34, v35];
              [v26 setAnchor:v27];
            }
          }
        }

        +[TCProgressContext endStage];

        v5 = v38;
        v36 = [v40 EXSpreadsheetMLNamespace];
        Child = OCXFindNextChild(a3, v36, "oleObject");

        --v10;
      }

      while (Child);
    }
  }

  +[TCProgressContext endStage];
}

+ (void)readWorksheetViewsFrom:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3)
  {
    v7 = [v5 EXSpreadsheetMLNamespace];
    v8 = OCXFindChild(a3, v7, "sheetView");

    if (v8)
    {
      v9 = [v6 currentSheet];
      v10 = [v6 EXSpreadsheetMLNamespace];
      v11 = OCXFindChild(v8, v10, "pane");

      if (v11)
      {
        v12 = [EXPane edPaneFromXMLPaneElement:v11];
        [v9 setPane:v12];
      }

      v19 = 1;
      if (CXOptionalBoolAttribute(v8, CXNoNamespace, "showFormulas", &v19))
      {
        [v9 setDisplayFormulas:v19];
      }

      v18 = 1;
      if (CXOptionalBoolAttribute(v8, CXNoNamespace, "showGridLines", &v18))
      {
        [v9 setDisplayGridlines:v18];
      }

      v17 = 1;
      CXOptionalBoolAttribute(v8, CXNoNamespace, "defaultGridColor", &v17);
      if (!v17)
      {
        v16 = 0;
        if (CXOptionalUnsignedLongAttribute(v8, CXNoNamespace, "colorId", &v16))
        {
          v13 = v16;
          v14 = [v6 resources];
          v15 = [EDColorReference colorReferenceWithColorIndex:v13 resources:v14];
          [v9 setDefaultGridlineColorReference:v15];
        }
      }
    }
  }
}

+ (void)readWorksheetFormatPropertiesFrom:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v6 = [v5 currentSheet];
  if (a3)
  {
    v13 = 0.0;
    if (!CXOptionalDoubleAttribute(a3, CXNoNamespace, "defaultColWidth", &v13))
    {
      CXOptionalDoubleAttribute(a3, CXNoNamespace, "defColWidth", &v13);
    }

    v7 = v13;
    if (v13 == 0.0)
    {
      v12 = 8.0;
      CXOptionalDoubleAttribute(a3, CXNoNamespace, "baseColWidth", &v12);
      v8 = [v5 columnWidthConvertor];
      [v8 xlColumnWidthFromXlBaseColumnWidth:v12];
      v13 = v9;

      v7 = v13;
    }

    [v6 setDefaultColumnWidth:v7];
    [v5 setDefaultColumnWidth:v13];
    v12 = 15.0;
    if (!CXOptionalDoubleAttribute(a3, CXNoNamespace, "defaultRowHeight", &v12))
    {
      CXOptionalDoubleAttribute(a3, CXNoNamespace, "defRowHeight", &v12);
    }

    [v6 setDefaultRowHeight:(v12 * 20.0)];
    [v5 setDefaultRowHeight:v12 * 20.0];
    v11 = 0;
    if (CXOptionalUnsignedLongAttribute(a3, CXNoNamespace, "outlineLevelRow", &v11))
    {
      [v6 setMaxRowOutlineLevel:v11];
    }

    v10 = 0;
    if (CXOptionalUnsignedLongAttribute(a3, CXNoNamespace, "outlineLevelCol", &v10))
    {
      [v6 setMaxColumnOutlineLevel:v10];
    }
  }
}

+ (void)readColumnInfosFrom:(_xmlNode *)a3 state:(id)a4
{
  v11 = a4;
  v5 = [v11 currentSheet];
  v6 = [v5 columnInfos];

  if (a3)
  {
    v7 = [v11 EXSpreadsheetMLNamespace];
    Child = OCXFindChild(a3, v7, "col");

    while (Child)
    {
      v9 = [EXColumnInfo edColumnInfoFromXmlColumnInfoElement:Child state:v11];
      [v6 addObject:v9];

      v10 = [v11 EXSpreadsheetMLNamespace];
      Child = OCXFindNextChild(Child, v10, "col");
    }
  }
}

+ (void)readHyperlinksFrom:(_xmlNode *)a3 state:(id)a4
{
  v11 = a4;
  if (a3)
  {
    v5 = [v11 EXSpreadsheetMLNamespace];
    Child = OCXFindChild(a3, v5, "hyperlink");

    if (Child)
    {
      v7 = 0;
      do
      {
        if (!v7)
        {
          v8 = [v11 currentSheet];
          v7 = [v8 hyperlinks];
        }

        v9 = [EXHyperlink edHyperlinkFromXmlHyperlinkElement:Child state:v11];
        [v7 addObject:v9];

        v10 = [v11 EXSpreadsheetMLNamespace];
        Child = OCXFindNextChild(Child, v10, "hyperlink");
      }

      while (Child);
    }
  }
}

+ (void)readSheetExtensions:(_xmlNode *)a3 state:(id)a4
{
  v9 = a4;
  for (i = OCXFirstChild(a3); i; i = OCXNextSibling(i))
  {
    if (i->type == XML_ELEMENT_NODE)
    {
      v7 = [v9 EXSpreadsheetMLNamespace];
      v8 = [v7 containsNode:i];

      if (v8)
      {
        if (xmlStrEqual(i->name, "ext"))
        {
          [a1 readSheetExtension:i state:v9];
        }
      }
    }
  }
}

+ (void)readSheetExtension:(_xmlNode *)a3 state:(id)a4
{
  v6 = a4;
  for (i = OCXFirstChild(a3); i; i = OCXNextSibling(i))
  {
    if (i->type == XML_ELEMENT_NODE && [EXXL2010Namespace containsNode:i])
    {
      if (xmlStrEqual(i->name, "sparklineGroups"))
      {
        [v6 reportWarning:ECUnsupportedSparklines];
      }

      else if (xmlStrEqual(i->name, "conditionalFormattings"))
      {
        [EXConditionalFormatting readConditionalFormattingsFrom:i x14:1 state:v6];
      }
    }
  }
}

+ (void)readCommentTextFrom:(id)a3
{
  v3 = a3;
  v4 = [(OCXState *)v3 currentPart];
  v5 = OCXPartRelationshipsByTypeWithFallback(v4, v3, sel_OCXCommentsRelationshipType);
  if (v5)
  {
    v6 = [(OCPPackagePart *)v4 package];
    if (!v6)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    v7 = [v5 objectAtIndex:0];
    v8 = [v7 targetLocation];
    v9 = [v6 partForLocation:v8];

    if (v9)
    {
      v42 = v9;
      v10 = [v9 xmlDocument];
      if (v10)
      {
        v39 = v6;
        v41 = v4;
        v43 = v5;
        v11 = OCXGetRootElement(v10);
        v12 = v11;
        if (!v11 || !xmlStrEqual(v11->name, "comments") || (-[OCXState EXSpreadsheetMLNamespace](v3, "EXSpreadsheetMLNamespace"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 containsNode:v12], v13, (v14 & 1) == 0))
        {
          [TCMessageException raise:TCInvalidFileFormatMessage, v6];
        }

        v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v16 = [(OCXState *)v3 EXSpreadsheetMLNamespace];
        v17 = OCXFindChild(v12, v16, "authors");

        v18 = [(OCXState *)v3 EXSpreadsheetMLNamespace];
        Child = OCXFindChild(v17, v18, "author");

        while (Child)
        {
          v20 = [EXString readStringWithAsciiCodeFromXmlStringElement:Child, v39];
          v21 = [EDString edStringWithString:v20];

          if (!v21)
          {
            v21 = +[EDString string];
          }

          [v15 addObject:v21];
          v22 = [(OCXState *)v3 EXSpreadsheetMLNamespace];
          Child = OCXFindNextChild(Child, v22, "author");
        }

        v23 = [(OCXState *)v3 EXSpreadsheetMLNamespace];
        v24 = OCXFindChild(v12, v23, "commentList");

        v25 = [(OCXState *)v3 EXSpreadsheetMLNamespace];
        v26 = OCXFindChild(v24, v25, "comment");

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

          v32 = [(OCXState *)v3 EXSpreadsheetMLNamespace];
          v33 = OCXFindChild(v26, v32, "text");

          v34 = +[EDTextBox textBox];
          v35 = [EXString edStringWithRunsFromXmlStringElement:v33 state:v3];
          [v34 setText:v35];

          [(OCXState *)v3 setTextBox:v34 author:v31 forReference:v29];
          v36 = [(OCXState *)v3 EXSpreadsheetMLNamespace];
          v26 = OCXFindNextChild(v26, v36, "comment");
        }

        v9 = v42;
        v6 = v40;
        v37 = [v43 objectAtIndex:0];
        v38 = [v37 targetLocation];
        [v40 resetPartForLocation:v38];

        v4 = v41;
        v5 = v43;
      }
    }
  }
}

+ (void)readPivotTables:(id)a3
{
  v22 = a3;
  v3 = [(OCXState *)v22 currentSheet];
  v4 = [v3 pivotTables];

  v5 = [(OCXState *)v22 currentPart];
  v6 = OCXPartRelationshipsByTypeWithFallback(v5, v22, sel_OCXPivotTableRelationshipType);
  if (v6)
  {
    [EXTableStyleTable readPredefinedTableStylesWithState:v22];
    v7 = [(OCPPackagePart *)v5 package];
    if (!v7)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    if ([v6 count])
    {
      [(OCXState *)v22 reportWorksheetWarning:ECPivotTables];
    }

    for (i = 0; ; i = v9 + 1)
    {
      v9 = i;
      if ([v6 count] <= i)
      {
        break;
      }

      v10 = [v6 objectAtIndex:i];
      v11 = [v10 targetLocation];
      v12 = [v7 partForLocation:v11];

      if (!v12)
      {
        [TCMessageException raise:TCInvalidFileFormatMessage];
      }

      v13 = [v12 xmlDocument];
      if (!v13)
      {
        [TCMessageException raise:TCInvalidFileFormatMessage];
      }

      v14 = OCXGetRootElement(v13);
      v15 = v14;
      if (!v14 || !xmlStrEqual(v14->name, "pivotTableDefinition") || (-[OCXState EXSpreadsheetMLNamespace](v22, "EXSpreadsheetMLNamespace"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 containsNode:v15], v16, (v17 & 1) == 0))
      {
        [TCMessageException raise:TCInvalidFileFormatMessage];
      }

      v18 = [EXPivotTable edPivotTableFromXmlPivotTableElement:v15 state:v22];
      [v4 addObject:v18];

      v19 = [v6 objectAtIndex:v9];
      v20 = [v19 targetLocation];
      [v7 resetPartForLocation:v20];
    }

    v5 = v21;
  }
}

@end