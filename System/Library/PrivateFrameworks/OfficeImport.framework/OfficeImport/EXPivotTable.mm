@interface EXPivotTable
+ (id)edPivotTableFromXmlPivotTableElement:(_xmlNode *)element state:(id)state;
+ (int)edPivotAreaTypeFrom:(id)from;
+ (int)edPivotConditionalFormatScopeFrom:(id)from;
+ (int)edPivotConditionalFormatTypeFrom:(id)from;
+ (int)edPivotDatFieldFormatFrom:(id)from;
+ (int)edPivotFieldAxisFrom:(id)from;
+ (int)edPivotItemTypeFrom:(id)from;
+ (void)readConditionalFormatsFrom:(_xmlNode *)from toCollection:(id)collection state:(id)state;
+ (void)readDataFieldsFrom:(_xmlNode *)from toCollection:(id)collection state:(id)state;
+ (void)readFieldItemsFrom:(_xmlNode *)from toCollection:(id)collection state:(id)state;
+ (void)readFieldsFrom:(_xmlNode *)from toCollection:(id)collection state:(id)state;
+ (void)readItemsFrom:(_xmlNode *)from toCollection:(id)collection state:(id)state;
+ (void)readLocationFrom:(_xmlNode *)from toPivotTable:(id)table;
+ (void)readPageFieldsFrom:(_xmlNode *)from toCollection:(id)collection state:(id)state;
+ (void)readPivotAreaReferencesFrom:(_xmlNode *)from toCollection:(id)collection state:(id)state;
+ (void)readPivotAreasFrom:(_xmlNode *)from toCollection:(id)collection state:(id)state;
+ (void)readPivotFieldsFrom:(_xmlNode *)from toCollection:(id)collection state:(id)state;
+ (void)readStyleInfoFrom:(_xmlNode *)from toPivotTable:(id)table;
@end

@implementation EXPivotTable

+ (id)edPivotTableFromXmlPivotTableElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  v7 = stateCopy;
  if (element)
  {
    resources = [stateCopy resources];
    v9 = [EDPivotTable pivotTableWithResources:resources];

    eXSpreadsheetMLNamespace = [v7 EXSpreadsheetMLNamespace];
    [self readLocationFrom:OCXFindChild(element toPivotTable:{eXSpreadsheetMLNamespace, "location"), v9}];

    eXSpreadsheetMLNamespace2 = [v7 EXSpreadsheetMLNamespace];
    [self readStyleInfoFrom:OCXFindChild(element toPivotTable:{eXSpreadsheetMLNamespace2, "pivotTableStyleInfo"), v9}];

    eXSpreadsheetMLNamespace3 = [v7 EXSpreadsheetMLNamespace];
    v13 = OCXFindChild(element, eXSpreadsheetMLNamespace3, "pivotFields");
    pivotFields = [v9 pivotFields];
    [self readPivotFieldsFrom:v13 toCollection:pivotFields state:v7];

    eXSpreadsheetMLNamespace4 = [v7 EXSpreadsheetMLNamespace];
    v16 = OCXFindChild(element, eXSpreadsheetMLNamespace4, "rowFields");
    rowFields = [v9 rowFields];
    [self readFieldsFrom:v16 toCollection:rowFields state:v7];

    eXSpreadsheetMLNamespace5 = [v7 EXSpreadsheetMLNamespace];
    v19 = OCXFindChild(element, eXSpreadsheetMLNamespace5, "rowItems");
    rowItems = [v9 rowItems];
    [self readItemsFrom:v19 toCollection:rowItems state:v7];

    eXSpreadsheetMLNamespace6 = [v7 EXSpreadsheetMLNamespace];
    v22 = OCXFindChild(element, eXSpreadsheetMLNamespace6, "colFields");
    columnFields = [v9 columnFields];
    [self readFieldsFrom:v22 toCollection:columnFields state:v7];

    eXSpreadsheetMLNamespace7 = [v7 EXSpreadsheetMLNamespace];
    v25 = OCXFindChild(element, eXSpreadsheetMLNamespace7, "colItems");
    columnItems = [v9 columnItems];
    [self readItemsFrom:v25 toCollection:columnItems state:v7];

    eXSpreadsheetMLNamespace8 = [v7 EXSpreadsheetMLNamespace];
    v28 = OCXFindChild(element, eXSpreadsheetMLNamespace8, "pageFields");
    pageFields = [v9 pageFields];
    [self readPageFieldsFrom:v28 toCollection:pageFields state:v7];

    eXSpreadsheetMLNamespace9 = [v7 EXSpreadsheetMLNamespace];
    v31 = OCXFindChild(element, eXSpreadsheetMLNamespace9, "dataFields");
    dataFields = [v9 dataFields];
    [self readDataFieldsFrom:v31 toCollection:dataFields state:v7];

    eXSpreadsheetMLNamespace10 = [v7 EXSpreadsheetMLNamespace];
    v34 = OCXFindChild(element, eXSpreadsheetMLNamespace10, "conditionalFormats");
    conditionalFormats = [v9 conditionalFormats];
    [self readConditionalFormatsFrom:v34 toCollection:conditionalFormats state:v7];

    eXSpreadsheetMLNamespace11 = [v7 EXSpreadsheetMLNamespace];
    v37 = OCXFindChild(element, eXSpreadsheetMLNamespace11, "pivotAreas");
    pivotAreas = [v9 pivotAreas];
    [self readPivotAreasFrom:v37 toCollection:pivotAreas state:v7];

    v58 = 0;
    LODWORD(eXSpreadsheetMLNamespace11) = CXOptionalStringAttribute(element, CXNoNamespace, "colHeaderCaption", &v58);
    v39 = v58;
    if (eXSpreadsheetMLNamespace11)
    {
      [v9 setColumnHeaderCaption:v39];
    }

    v57 = v39;
    v40 = CXOptionalStringAttribute(element, CXNoNamespace, "rowHeaderCaption", &v57);
    v41 = v57;

    if (v40)
    {
      [v9 setRowHeaderCaption:v41];
    }

    v56 = v41;
    v42 = CXOptionalStringAttribute(element, CXNoNamespace, "pageStyleName", &v56);
    v43 = v56;

    if (v42)
    {
      [v9 setPageStyleName:v43];
    }

    v55 = v43;
    v44 = CXOptionalStringAttribute(element, CXNoNamespace, "pivotTableStyle", &v55);
    v45 = v55;

    if (v44)
    {
      [v9 setStyleName:v45];
    }

    v54 = v45;
    v46 = CXOptionalStringAttribute(element, CXNoNamespace, "name", &v54);
    v47 = v54;

    if (v46)
    {
      [v9 setName:v47];
    }

    v53 = 0;
    if (CXOptionalBoolAttribute(element, CXNoNamespace, "applyNumberFormats", &v53))
    {
      [v9 setApplyNumberFormats:v53];
    }

    if (CXOptionalBoolAttribute(element, CXNoNamespace, "applyBorderFormats", &v53))
    {
      [v9 setApplyBorderFormats:v53];
    }

    if (CXOptionalBoolAttribute(element, CXNoNamespace, "applyFontFormats", &v53))
    {
      [v9 setApplyFontFormats:v53];
    }

    if (CXOptionalBoolAttribute(element, CXNoNamespace, "applyPatternFormats", &v53))
    {
      [v9 setApplyPatternFormats:v53];
    }

    if (CXOptionalBoolAttribute(element, CXNoNamespace, "applyAlignmentFormats", &v53))
    {
      [v9 setApplyAlignmentFormats:v53];
    }

    if (CXOptionalBoolAttribute(element, CXNoNamespace, "applyWidthHeightFormats", &v53))
    {
      [v9 setApplyWidthHeightFormats:v53];
    }

    if (CXOptionalBoolAttribute(element, CXNoNamespace, "colGrandTotals", &v53))
    {
      [v9 setColGrandTotals:v53];
    }

    if (CXOptionalBoolAttribute(element, CXNoNamespace, "useAutoFormatting", &v53))
    {
      [v9 setUseAutoFormatting:v53];
    }

    if (CXOptionalBoolAttribute(element, CXNoNamespace, "rowGrandTotals", &v53))
    {
      [v9 setRowGrandTotals:v53];
    }

    if (CXOptionalBoolAttribute(element, CXNoNamespace, "customListSort", &v53))
    {
      [v9 setCustomListSort:v53];
    }

    if (CXOptionalBoolAttribute(element, CXNoNamespace, "compactData", &v53))
    {
      [v9 setCompactData:v53];
    }

    if (CXOptionalBoolAttribute(element, CXNoNamespace, "compact", &v53))
    {
      [v9 setCompact:v53];
    }

    if (CXOptionalBoolAttribute(element, CXNoNamespace, "dataCaption", &v53))
    {
      [v9 setDataCaption:v53];
    }

    if (CXOptionalBoolAttribute(element, CXNoNamespace, "dataOnRows", &v53))
    {
      [v9 setDataOnRows:v53];
    }

    if (CXOptionalBoolAttribute(element, CXNoNamespace, "mergeItem", &v53))
    {
      [v9 setMergeItem:v53];
    }

    if (CXOptionalBoolAttribute(element, CXNoNamespace, "disableFieldList", &v53))
    {
      [v9 setDisableFieldList:v53];
    }

    if (CXOptionalBoolAttribute(element, CXNoNamespace, "multipleFieldFilters", &v53))
    {
      [v9 setMultipleFieldFilters:v53];
    }

    if (CXOptionalBoolAttribute(element, CXNoNamespace, "outline", &v53))
    {
      [v9 setOutline:v53];
    }

    if (CXOptionalBoolAttribute(element, CXNoNamespace, "outlineData", &v53))
    {
      [v9 setOutlineData:v53];
    }

    if (CXOptionalBoolAttribute(element, CXNoNamespace, "pageOverThenDown", &v53))
    {
      [v9 setPageOverThenDown:v53];
    }

    if (CXOptionalBoolAttribute(element, CXNoNamespace, "showCalcMbrs", &v53))
    {
      [v9 setShowCalcMbrs:v53];
    }

    if (CXOptionalBoolAttribute(element, CXNoNamespace, "showDataDropDown", &v53))
    {
      [v9 setShowDataDropDown:v53];
    }

    if (CXOptionalBoolAttribute(element, CXNoNamespace, "showDropZones", &v53))
    {
      [v9 setShowDropZones:v53];
    }

    if (CXOptionalBoolAttribute(element, CXNoNamespace, "showEmptyCol", &v53))
    {
      [v9 setShowEmptyCol:v53];
    }

    if (CXOptionalBoolAttribute(element, CXNoNamespace, "showEmptyRow", &v53))
    {
      [v9 setShowEmptyRow:v53];
    }

    if (CXOptionalBoolAttribute(element, CXNoNamespace, "showHeaders", &v53))
    {
      [v9 setShowHeaders:v53];
    }

    if (CXOptionalBoolAttribute(element, CXNoNamespace, "showMemberPropertyTips", &v53))
    {
      [v9 setShowMemberPropertyTips:v53];
    }

    if (CXOptionalBoolAttribute(element, CXNoNamespace, "showMultipleLabel", &v53))
    {
      [v9 setShowMultipleLabel:v53];
    }

    if (CXOptionalBoolAttribute(element, CXNoNamespace, "showMissing", &v53))
    {
      [v9 setShowMissing:v53];
    }

    if (CXOptionalBoolAttribute(element, CXNoNamespace, "subtotalHiddenItems", &v53))
    {
      [v9 setSubtotalHiddenItems:v53];
    }

    v52 = -1;
    if (CXOptionalLongAttribute(element, CXNoNamespace, "pageWrap", &v52))
    {
      [v9 setPageWrap:v52];
    }

    v51 = -1;
    if (CXOptionalLongAttribute(element, CXNoNamespace, "autoFormatId", &v51))
    {
      [v9 setAutoFormatId:v51];
    }

    v50 = -1;
    if (CXOptionalLongAttribute(element, CXNoNamespace, "dataPosition", &v50))
    {
      [v9 setDataPosition:v50];
    }

    v48 = v9;
  }

  else
  {
    v48 = 0;
  }

  return v48;
}

+ (void)readStyleInfoFrom:(_xmlNode *)from toPivotTable:(id)table
{
  tableCopy = table;
  if (from)
  {
    v13 = 0;
    v6 = CXOptionalStringAttribute(from, CXNoNamespace, "name", &v13);
    v7 = v13;
    if (v6)
    {
      [tableCopy setStyleName:v7];
    }

    v12 = 0;
    if (CXOptionalBoolAttribute(from, CXNoNamespace, "showLastColumn", &v12))
    {
      [tableCopy setShowLastColumn:v12];
    }

    v11 = 0;
    if (CXOptionalBoolAttribute(from, CXNoNamespace, "showRowStripes", &v11))
    {
      [tableCopy setShowRowStripes:v11];
    }

    v10 = 0;
    if (CXOptionalBoolAttribute(from, CXNoNamespace, "showColStripes", &v10))
    {
      [tableCopy setShowColumnStripes:v10];
    }

    v9 = 0;
    if (CXOptionalBoolAttribute(from, CXNoNamespace, "showRowHeaders", &v9))
    {
      [tableCopy setShowRowHeaders:v9];
    }

    v8 = 0;
    if (CXOptionalBoolAttribute(from, CXNoNamespace, "showColHeaders", &v8))
    {
      [tableCopy setShowColumnHeaders:v8];
    }
  }
}

+ (void)readLocationFrom:(_xmlNode *)from toPivotTable:(id)table
{
  tableCopy = table;
  if (from)
  {
    v14 = 0;
    v6 = CXOptionalStringAttribute(from, CXNoNamespace, "ref", &v14);
    v7 = v14;
    if (v6)
    {
      v8 = [EXReference edReferenceFromXmlReference:v7];
      [tableCopy setPivotTableRange:v8];
    }

    v13 = -1;
    if (CXOptionalLongAttribute(from, CXNoNamespace, "firstHeaderRow", &v13))
    {
      [tableCopy setFirstHeaderRow:v13];
    }

    v12 = -1;
    if (CXOptionalLongAttribute(from, CXNoNamespace, "firstDataRow", &v12))
    {
      [tableCopy setFirstDataRow:v12];
    }

    v11 = -1;
    if (CXOptionalLongAttribute(from, CXNoNamespace, "firstDataCol", &v11))
    {
      [tableCopy setFirstDataColumn:v11];
    }

    v10 = -1;
    if (CXOptionalLongAttribute(from, CXNoNamespace, "rowPageCount", &v10))
    {
      [tableCopy setRowPageCount:v10];
    }

    v9 = -1;
    if (CXOptionalLongAttribute(from, CXNoNamespace, "colPageCount", &v9))
    {
      [tableCopy setColumnPageCount:v9];
    }
  }
}

+ (void)readFieldsFrom:(_xmlNode *)from toCollection:(id)collection state:(id)state
{
  collectionCopy = collection;
  stateCopy = state;
  v9 = stateCopy;
  if (from)
  {
    eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
    Child = OCXFindChild(from, eXSpreadsheetMLNamespace, "field");

    while (Child)
    {
      v14 = -1;
      if (CXOptionalLongAttribute(Child, CXNoNamespace, "x", &v14))
      {
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
        [collectionCopy addObject:v12];
      }

      eXSpreadsheetMLNamespace2 = [v9 EXSpreadsheetMLNamespace];
      Child = OCXFindNextChild(Child, eXSpreadsheetMLNamespace2, "field");
    }
  }
}

+ (void)readItemsFrom:(_xmlNode *)from toCollection:(id)collection state:(id)state
{
  selfCopy = self;
  collectionCopy = collection;
  stateCopy = state;
  v8 = stateCopy;
  if (from)
  {
    eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
    Child = OCXFindChild(from, eXSpreadsheetMLNamespace, "i");

    while (Child)
    {
      v11 = +[EDPivotItem pivotItem];
      v24 = 0;
      if (CXOptionalLongAttribute(Child, CXNoNamespace, "r", &v24))
      {
        [v11 setRepeatedItemCounts:v24];
      }

      v23 = 0;
      v21 = v11;
      CXOptionalStringAttribute(Child, CXNoNamespace, "t", &v23);
      v12 = v23;
      [v11 setType:{objc_msgSend(selfCopy, "edPivotItemTypeFrom:", v12)}];
      itemIndexes = [v11 itemIndexes];
      eXSpreadsheetMLNamespace2 = [v8 EXSpreadsheetMLNamespace];
      for (i = OCXFindChild(Child, eXSpreadsheetMLNamespace2, "x"); ; i = OCXFindNextChild(v16, eXSpreadsheetMLNamespace2, "x"))
      {
        v16 = i;

        if (!v16)
        {
          break;
        }

        v22 = 0;
        CXOptionalLongAttribute(v16, CXNoNamespace, "v", &v22);
        v17 = [MEMORY[0x277CCABB0] numberWithLong:v22];
        [itemIndexes addObject:v17];

        eXSpreadsheetMLNamespace2 = [v8 EXSpreadsheetMLNamespace];
      }

      [collectionCopy addObject:v21];
      eXSpreadsheetMLNamespace3 = [v8 EXSpreadsheetMLNamespace];
      Child = OCXFindNextChild(Child, eXSpreadsheetMLNamespace3, "i");
    }
  }
}

+ (void)readPivotFieldsFrom:(_xmlNode *)from toCollection:(id)collection state:(id)state
{
  collectionCopy = collection;
  stateCopy = state;
  v10 = stateCopy;
  if (from)
  {
    eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
    Child = OCXFindChild(from, eXSpreadsheetMLNamespace, "pivotField");

    while (Child)
    {
      v13 = +[EDPivotField pivotField];
      v27 = -1;
      CXOptionalLongAttribute(Child, CXNoNamespace, "numFmtId", &v27);
      [v13 setNumFmtId:v27];
      v26 = 0;
      CXOptionalStringAttribute(Child, CXNoNamespace, "axis", &v26);
      v14 = v26;
      [v13 setAxis:{objc_msgSend(self, "edPivotFieldAxisFrom:", v14)}];
      v25 = 0;
      CXOptionalBoolAttribute(Child, CXNoNamespace, "compact", &v25);
      [v13 setCompact:v25];
      v24 = 0;
      CXOptionalBoolAttribute(Child, CXNoNamespace, "dataField", &v24);
      [v13 setDataField:v24];
      v23 = 0;
      CXOptionalBoolAttribute(Child, CXNoNamespace, "showDefaultSubTotal", &v23);
      [v13 setShowDefaultSubTotal:v23];
      v22 = 0;
      CXOptionalBoolAttribute(Child, CXNoNamespace, "insertBlankRow", &v22);
      [v13 setInsertBlankRow:v22];
      v21 = 0;
      CXOptionalBoolAttribute(Child, CXNoNamespace, "outline", &v21);
      [v13 setOutlineItems:v21];
      v20 = 0;
      CXOptionalBoolAttribute(Child, CXNoNamespace, "showAll", &v20);
      [v13 setShowAllItems:v20];
      v19 = 0;
      CXOptionalBoolAttribute(Child, CXNoNamespace, "subtotalTop", &v19);
      [v13 setSubtotalTop:v19];
      eXSpreadsheetMLNamespace2 = [v10 EXSpreadsheetMLNamespace];
      v16 = OCXFindChild(Child, eXSpreadsheetMLNamespace2, "items");

      pivotFieldItems = [v13 pivotFieldItems];
      [self readFieldItemsFrom:v16 toCollection:pivotFieldItems state:v10];

      [collectionCopy addObject:v13];
      eXSpreadsheetMLNamespace3 = [v10 EXSpreadsheetMLNamespace];
      Child = OCXFindNextChild(Child, eXSpreadsheetMLNamespace3, "pivotField");
    }
  }
}

+ (void)readFieldItemsFrom:(_xmlNode *)from toCollection:(id)collection state:(id)state
{
  collectionCopy = collection;
  stateCopy = state;
  v10 = stateCopy;
  if (from)
  {
    eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
    Child = OCXFindChild(from, eXSpreadsheetMLNamespace, "item");

    while (Child)
    {
      v13 = +[EDPivotFieldItem pivotFieldItem];
      v23 = 0;
      CXOptionalBoolAttribute(Child, CXNoNamespace, "c", &v23);
      [v13 setChildItems:v23];
      v22 = 0;
      CXOptionalBoolAttribute(Child, CXNoNamespace, "d", &v22);
      [v13 setExpanded:v22];
      v21 = 0;
      CXOptionalBoolAttribute(Child, CXNoNamespace, "f", &v21);
      [v13 setCalculatedMember:v21];
      v20 = 0;
      CXOptionalBoolAttribute(Child, CXNoNamespace, "m", &v20);
      [v13 setMissed:v20];
      v19 = 0;
      CXOptionalBoolAttribute(Child, CXNoNamespace, "s", &v19);
      [v13 setHidden:v19];
      v18 = 0;
      CXOptionalBoolAttribute(Child, CXNoNamespace, "sd", &v18);
      [v13 setDetailsHidden:v18];
      v17 = -1;
      CXOptionalLongAttribute(Child, CXNoNamespace, "x", &v17);
      [v13 setItemIndex:v17];
      v16 = 0;
      CXOptionalStringAttribute(Child, CXNoNamespace, "t", &v16);
      v14 = v16;
      [v13 setType:{objc_msgSend(self, "edPivotItemTypeFrom:", v14)}];
      [collectionCopy addObject:v13];
      eXSpreadsheetMLNamespace2 = [v10 EXSpreadsheetMLNamespace];
      Child = OCXFindNextChild(Child, eXSpreadsheetMLNamespace2, "item");
    }
  }
}

+ (void)readDataFieldsFrom:(_xmlNode *)from toCollection:(id)collection state:(id)state
{
  collectionCopy = collection;
  stateCopy = state;
  v10 = stateCopy;
  if (from)
  {
    eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
    Child = OCXFindChild(from, eXSpreadsheetMLNamespace, "dataField");

    while (Child)
    {
      v13 = +[EDPivotDataField pivotDataField];
      v22 = -1;
      CXOptionalLongAttribute(Child, CXNoNamespace, "baseField", &v22);
      [v13 setBaseField:v22];
      v21 = -1;
      CXOptionalLongAttribute(Child, CXNoNamespace, "baseItem", &v21);
      [v13 setBaseItem:v21];
      v20 = -1;
      CXOptionalLongAttribute(Child, CXNoNamespace, "fId", &v20);
      [v13 setFieldId:v20];
      v19 = -1;
      CXOptionalLongAttribute(Child, CXNoNamespace, "numFmtId", &v19);
      [v13 setNumFmtId:v19];
      v18 = 0;
      CXOptionalStringAttribute(Child, CXNoNamespace, "name", &v18);
      v14 = v18;
      [v13 setName:v14];
      v17 = 0;
      CXOptionalStringAttribute(Child, CXNoNamespace, "showDataAs", &v17);
      v15 = v17;
      [v13 setShowDataAs:{objc_msgSend(self, "edPivotDatFieldFormatFrom:", v15)}];
      [collectionCopy addObject:v13];
      eXSpreadsheetMLNamespace2 = [v10 EXSpreadsheetMLNamespace];
      Child = OCXFindNextChild(Child, eXSpreadsheetMLNamespace2, "dataField");
    }
  }
}

+ (void)readConditionalFormatsFrom:(_xmlNode *)from toCollection:(id)collection state:(id)state
{
  collectionCopy = collection;
  stateCopy = state;
  v10 = stateCopy;
  if (from)
  {
    eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
    Child = OCXFindChild(from, eXSpreadsheetMLNamespace, "conditionalFormat");

    while (Child)
    {
      v13 = +[EDPivotConditionalFormat pivotConditionalFormat];
      v22 = -1;
      CXOptionalLongAttribute(Child, CXNoNamespace, "priority", &v22);
      [v13 setPriority:v22];
      v21 = 0;
      CXOptionalStringAttribute(Child, CXNoNamespace, "type", &v21);
      v14 = v21;
      [v13 setType:{objc_msgSend(self, "edPivotConditionalFormatTypeFrom:", v14)}];
      v20 = 0;
      CXOptionalStringAttribute(Child, CXNoNamespace, "scope", &v20);
      v15 = v20;
      [v13 setScope:{objc_msgSend(self, "edPivotConditionalFormatScopeFrom:", v15)}];
      eXSpreadsheetMLNamespace2 = [v10 EXSpreadsheetMLNamespace];
      v17 = OCXFindChild(Child, eXSpreadsheetMLNamespace2, "pivotAreas");

      pivotAreas = [v13 pivotAreas];
      [self readPivotAreasFrom:v17 toCollection:pivotAreas state:v10];

      [collectionCopy addObject:v13];
      eXSpreadsheetMLNamespace3 = [v10 EXSpreadsheetMLNamespace];
      Child = OCXFindNextChild(Child, eXSpreadsheetMLNamespace3, "conditionalFormat");
    }
  }
}

+ (void)readPivotAreasFrom:(_xmlNode *)from toCollection:(id)collection state:(id)state
{
  collectionCopy = collection;
  stateCopy = state;
  v10 = stateCopy;
  if (from)
  {
    eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
    Child = OCXFindChild(from, eXSpreadsheetMLNamespace, "pivotArea");

    while (Child)
    {
      v13 = +[EDPivotArea pivotArea];
      v25 = 0;
      CXOptionalBoolAttribute(Child, CXNoNamespace, "grandCol", &v25);
      [v13 setGrandCol:v25];
      v24 = 0;
      CXOptionalBoolAttribute(Child, CXNoNamespace, "grandRow", &v24);
      [v13 setGrandRow:v24];
      v23 = 0;
      CXOptionalBoolAttribute(Child, CXNoNamespace, "outline", &v23);
      [v13 setOutline:v23];
      v22 = 0;
      CXOptionalStringAttribute(Child, CXNoNamespace, "type", &v22);
      v14 = v22;
      [v13 setType:{objc_msgSend(self, "edPivotAreaTypeFrom:", v14)}];
      v21 = 0;
      CXOptionalStringAttribute(Child, CXNoNamespace, "offset", &v21);
      v15 = v21;
      v16 = [EXReference edReferenceFromXmlReference:v15];
      [v13 setOffset:v16];

      eXSpreadsheetMLNamespace2 = [v10 EXSpreadsheetMLNamespace];
      v18 = OCXFindChild(Child, eXSpreadsheetMLNamespace2, "references");

      references = [v13 references];
      [self readPivotAreaReferencesFrom:v18 toCollection:references state:v10];

      [collectionCopy addObject:v13];
      eXSpreadsheetMLNamespace3 = [v10 EXSpreadsheetMLNamespace];
      Child = OCXFindNextChild(Child, eXSpreadsheetMLNamespace3, "pivotArea");
    }
  }
}

+ (void)readPivotAreaReferencesFrom:(_xmlNode *)from toCollection:(id)collection state:(id)state
{
  collectionCopy = collection;
  stateCopy = state;
  v9 = stateCopy;
  if (from)
  {
    eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
    Child = OCXFindChild(from, eXSpreadsheetMLNamespace, "reference");

    while (Child)
    {
      v12 = +[EDPivotAreaReference pivotAreaReference];
      v18 = -1;
      CXOptionalLongAttribute(from, CXNoNamespace, "fieldId", &v18);
      [v12 setFieldId:v18];
      v17 = -1;
      CXOptionalLongAttribute(from, CXNoNamespace, "count", &v17);
      [v12 setCount:v17];
      v16 = 0;
      CXOptionalBoolAttribute(from, CXNoNamespace, "byPosition", &v16);
      [v12 setByPosition:v16];
      v15 = 0;
      CXOptionalBoolAttribute(from, CXNoNamespace, "relative", &v15);
      [v12 setRelative:v15];
      v14 = 0;
      CXOptionalBoolAttribute(from, CXNoNamespace, "selected", &v14);
      [v12 setSelected:v14];
      [collectionCopy addObject:v12];
      eXSpreadsheetMLNamespace2 = [v9 EXSpreadsheetMLNamespace];
      Child = OCXFindNextChild(Child, eXSpreadsheetMLNamespace2, "reference");
    }
  }
}

+ (void)readPageFieldsFrom:(_xmlNode *)from toCollection:(id)collection state:(id)state
{
  collectionCopy = collection;
  stateCopy = state;
  v9 = stateCopy;
  if (from)
  {
    eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
    Child = OCXFindChild(from, eXSpreadsheetMLNamespace, "pageField");

    while (Child)
    {
      v12 = +[EDPivotPageField pivotPageField];
      v18 = -1;
      CXOptionalLongAttribute(Child, CXNoNamespace, "fId", &v18);
      [v12 setFieldId:v18];
      v17 = 0;
      CXOptionalStringAttribute(Child, CXNoNamespace, "name", &v17);
      v13 = v17;
      [v12 setName:v13];
      v16 = 0;
      CXOptionalStringAttribute(Child, CXNoNamespace, "cap", &v16);
      v14 = v16;
      [v12 setCap:v14];
      [collectionCopy addObject:v12];
      eXSpreadsheetMLNamespace2 = [v9 EXSpreadsheetMLNamespace];
      Child = OCXFindNextChild(Child, eXSpreadsheetMLNamespace2, "pageField");
    }
  }
}

+ (int)edPivotItemTypeFrom:(id)from
{
  fromCopy = from;
  v4 = fromCopy;
  if (!fromCopy)
  {
    goto LABEL_11;
  }

  if (([fromCopy isEqualToString:@"avg"] & 1) == 0)
  {
    if ([v4 isEqualToString:@"blank"])
    {
      v5 = 1;
      goto LABEL_12;
    }

    if ([v4 isEqualToString:@"count"])
    {
      v5 = 2;
      goto LABEL_12;
    }

    if ([v4 isEqualToString:@"countA"])
    {
      v5 = 3;
      goto LABEL_12;
    }

    if (([v4 isEqualToString:@"data"] & 1) == 0)
    {
      if ([v4 isEqualToString:@"default"])
      {
        v5 = 5;
        goto LABEL_12;
      }

      if ([v4 isEqualToString:@"grand"])
      {
        v5 = 6;
        goto LABEL_12;
      }

      if ([v4 isEqualToString:@"max"])
      {
        v5 = 7;
        goto LABEL_12;
      }

      if ([v4 isEqualToString:@"min"])
      {
        v5 = 8;
        goto LABEL_12;
      }

      if ([v4 isEqualToString:@"product"])
      {
        v5 = 9;
        goto LABEL_12;
      }

      if ([v4 isEqualToString:@"stdDev"])
      {
        v5 = 10;
        goto LABEL_12;
      }

      if ([v4 isEqualToString:@"stdDevP"])
      {
        v5 = 11;
        goto LABEL_12;
      }

      if ([v4 isEqualToString:@"sum"])
      {
        v5 = 12;
        goto LABEL_12;
      }

      if ([v4 isEqualToString:@"var"])
      {
        v5 = 13;
        goto LABEL_12;
      }

      if ([v4 isEqualToString:@"varP"])
      {
        v5 = 14;
        goto LABEL_12;
      }
    }

LABEL_11:
    v5 = 4;
    goto LABEL_12;
  }

  v5 = 0;
LABEL_12:

  return v5;
}

+ (int)edPivotFieldAxisFrom:(id)from
{
  fromCopy = from;
  v4 = fromCopy;
  if (!fromCopy)
  {
    goto LABEL_8;
  }

  if (([fromCopy isEqualToString:@"axisCol"] & 1) == 0)
  {
    if ([v4 isEqualToString:@"axisPage"])
    {
      v5 = 1;
      goto LABEL_9;
    }

    if ([v4 isEqualToString:@"axisRow"])
    {
      v5 = 2;
      goto LABEL_9;
    }

LABEL_8:
    v5 = 3;
    goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

+ (int)edPivotDatFieldFormatFrom:(id)from
{
  fromCopy = from;
  v4 = fromCopy;
  if (!fromCopy)
  {
    goto LABEL_20;
  }

  if (([fromCopy isEqualToString:@"difference"] & 1) == 0)
  {
    if ([v4 isEqualToString:@"index"])
    {
      v5 = 1;
      goto LABEL_21;
    }

    if ([v4 isEqualToString:@"normal"])
    {
      v5 = 2;
      goto LABEL_21;
    }

    if ([v4 isEqualToString:@"percent"])
    {
      v5 = 3;
      goto LABEL_21;
    }

    if ([v4 isEqualToString:@"percentDiff"])
    {
      v5 = 4;
      goto LABEL_21;
    }

    if ([v4 isEqualToString:@"percentOfCol"])
    {
      v5 = 5;
      goto LABEL_21;
    }

    if ([v4 isEqualToString:@"percentOfRow"])
    {
      v5 = 6;
      goto LABEL_21;
    }

    if ([v4 isEqualToString:@"percentOfTotal"])
    {
      v5 = 7;
      goto LABEL_21;
    }

    if ([v4 isEqualToString:@"runTotal"])
    {
      v5 = 8;
      goto LABEL_21;
    }

LABEL_20:
    v5 = 9;
    goto LABEL_21;
  }

  v5 = 0;
LABEL_21:

  return v5;
}

+ (int)edPivotConditionalFormatTypeFrom:(id)from
{
  fromCopy = from;
  v4 = fromCopy;
  if (!fromCopy)
  {
    goto LABEL_10;
  }

  if (([fromCopy isEqualToString:@"all"] & 1) == 0)
  {
    if ([v4 isEqualToString:@"column"])
    {
      v5 = 1;
      goto LABEL_11;
    }

    if ([v4 isEqualToString:@"none"])
    {
      v5 = 2;
      goto LABEL_11;
    }

    if ([v4 isEqualToString:@"row"])
    {
      v5 = 3;
      goto LABEL_11;
    }

LABEL_10:
    v5 = 4;
    goto LABEL_11;
  }

  v5 = 0;
LABEL_11:

  return v5;
}

+ (int)edPivotConditionalFormatScopeFrom:(id)from
{
  fromCopy = from;
  v4 = fromCopy;
  if (!fromCopy)
  {
    goto LABEL_8;
  }

  if (([fromCopy isEqualToString:@"data"] & 1) == 0)
  {
    if ([v4 isEqualToString:@"field"])
    {
      v5 = 1;
      goto LABEL_9;
    }

    if ([v4 isEqualToString:@"selection"])
    {
      v5 = 2;
      goto LABEL_9;
    }

LABEL_8:
    v5 = 3;
    goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

+ (int)edPivotAreaTypeFrom:(id)from
{
  fromCopy = from;
  v4 = fromCopy;
  if (!fromCopy)
  {
    goto LABEL_9;
  }

  if (([fromCopy isEqualToString:@"all"] & 1) == 0)
  {
    if ([v4 isEqualToString:@"button"])
    {
      v5 = 1;
      goto LABEL_10;
    }

    if ([v4 isEqualToString:@"data"])
    {
      v5 = 2;
      goto LABEL_10;
    }

    if (([v4 isEqualToString:@"none"] & 1) == 0)
    {
      if ([v4 isEqualToString:@"noraml"])
      {
        v5 = 4;
        goto LABEL_10;
      }

      if ([v4 isEqualToString:@"origin"])
      {
        v5 = 5;
        goto LABEL_10;
      }

      if ([v4 isEqualToString:@"topRight"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"topEnd"))
      {
        v5 = 6;
        goto LABEL_10;
      }
    }

LABEL_9:
    v5 = 3;
    goto LABEL_10;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

@end