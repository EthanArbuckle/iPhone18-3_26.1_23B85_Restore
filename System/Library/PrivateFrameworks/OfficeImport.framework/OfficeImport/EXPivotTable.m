@interface EXPivotTable
+ (id)edPivotTableFromXmlPivotTableElement:(_xmlNode *)a3 state:(id)a4;
+ (int)edPivotAreaTypeFrom:(id)a3;
+ (int)edPivotConditionalFormatScopeFrom:(id)a3;
+ (int)edPivotConditionalFormatTypeFrom:(id)a3;
+ (int)edPivotDatFieldFormatFrom:(id)a3;
+ (int)edPivotFieldAxisFrom:(id)a3;
+ (int)edPivotItemTypeFrom:(id)a3;
+ (void)readConditionalFormatsFrom:(_xmlNode *)a3 toCollection:(id)a4 state:(id)a5;
+ (void)readDataFieldsFrom:(_xmlNode *)a3 toCollection:(id)a4 state:(id)a5;
+ (void)readFieldItemsFrom:(_xmlNode *)a3 toCollection:(id)a4 state:(id)a5;
+ (void)readFieldsFrom:(_xmlNode *)a3 toCollection:(id)a4 state:(id)a5;
+ (void)readItemsFrom:(_xmlNode *)a3 toCollection:(id)a4 state:(id)a5;
+ (void)readLocationFrom:(_xmlNode *)a3 toPivotTable:(id)a4;
+ (void)readPageFieldsFrom:(_xmlNode *)a3 toCollection:(id)a4 state:(id)a5;
+ (void)readPivotAreaReferencesFrom:(_xmlNode *)a3 toCollection:(id)a4 state:(id)a5;
+ (void)readPivotAreasFrom:(_xmlNode *)a3 toCollection:(id)a4 state:(id)a5;
+ (void)readPivotFieldsFrom:(_xmlNode *)a3 toCollection:(id)a4 state:(id)a5;
+ (void)readStyleInfoFrom:(_xmlNode *)a3 toPivotTable:(id)a4;
@end

@implementation EXPivotTable

+ (id)edPivotTableFromXmlPivotTableElement:(_xmlNode *)a3 state:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3)
  {
    v8 = [v6 resources];
    v9 = [EDPivotTable pivotTableWithResources:v8];

    v10 = [v7 EXSpreadsheetMLNamespace];
    [a1 readLocationFrom:OCXFindChild(a3 toPivotTable:{v10, "location"), v9}];

    v11 = [v7 EXSpreadsheetMLNamespace];
    [a1 readStyleInfoFrom:OCXFindChild(a3 toPivotTable:{v11, "pivotTableStyleInfo"), v9}];

    v12 = [v7 EXSpreadsheetMLNamespace];
    v13 = OCXFindChild(a3, v12, "pivotFields");
    v14 = [v9 pivotFields];
    [a1 readPivotFieldsFrom:v13 toCollection:v14 state:v7];

    v15 = [v7 EXSpreadsheetMLNamespace];
    v16 = OCXFindChild(a3, v15, "rowFields");
    v17 = [v9 rowFields];
    [a1 readFieldsFrom:v16 toCollection:v17 state:v7];

    v18 = [v7 EXSpreadsheetMLNamespace];
    v19 = OCXFindChild(a3, v18, "rowItems");
    v20 = [v9 rowItems];
    [a1 readItemsFrom:v19 toCollection:v20 state:v7];

    v21 = [v7 EXSpreadsheetMLNamespace];
    v22 = OCXFindChild(a3, v21, "colFields");
    v23 = [v9 columnFields];
    [a1 readFieldsFrom:v22 toCollection:v23 state:v7];

    v24 = [v7 EXSpreadsheetMLNamespace];
    v25 = OCXFindChild(a3, v24, "colItems");
    v26 = [v9 columnItems];
    [a1 readItemsFrom:v25 toCollection:v26 state:v7];

    v27 = [v7 EXSpreadsheetMLNamespace];
    v28 = OCXFindChild(a3, v27, "pageFields");
    v29 = [v9 pageFields];
    [a1 readPageFieldsFrom:v28 toCollection:v29 state:v7];

    v30 = [v7 EXSpreadsheetMLNamespace];
    v31 = OCXFindChild(a3, v30, "dataFields");
    v32 = [v9 dataFields];
    [a1 readDataFieldsFrom:v31 toCollection:v32 state:v7];

    v33 = [v7 EXSpreadsheetMLNamespace];
    v34 = OCXFindChild(a3, v33, "conditionalFormats");
    v35 = [v9 conditionalFormats];
    [a1 readConditionalFormatsFrom:v34 toCollection:v35 state:v7];

    v36 = [v7 EXSpreadsheetMLNamespace];
    v37 = OCXFindChild(a3, v36, "pivotAreas");
    v38 = [v9 pivotAreas];
    [a1 readPivotAreasFrom:v37 toCollection:v38 state:v7];

    v58 = 0;
    LODWORD(v36) = CXOptionalStringAttribute(a3, CXNoNamespace, "colHeaderCaption", &v58);
    v39 = v58;
    if (v36)
    {
      [v9 setColumnHeaderCaption:v39];
    }

    v57 = v39;
    v40 = CXOptionalStringAttribute(a3, CXNoNamespace, "rowHeaderCaption", &v57);
    v41 = v57;

    if (v40)
    {
      [v9 setRowHeaderCaption:v41];
    }

    v56 = v41;
    v42 = CXOptionalStringAttribute(a3, CXNoNamespace, "pageStyleName", &v56);
    v43 = v56;

    if (v42)
    {
      [v9 setPageStyleName:v43];
    }

    v55 = v43;
    v44 = CXOptionalStringAttribute(a3, CXNoNamespace, "pivotTableStyle", &v55);
    v45 = v55;

    if (v44)
    {
      [v9 setStyleName:v45];
    }

    v54 = v45;
    v46 = CXOptionalStringAttribute(a3, CXNoNamespace, "name", &v54);
    v47 = v54;

    if (v46)
    {
      [v9 setName:v47];
    }

    v53 = 0;
    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "applyNumberFormats", &v53))
    {
      [v9 setApplyNumberFormats:v53];
    }

    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "applyBorderFormats", &v53))
    {
      [v9 setApplyBorderFormats:v53];
    }

    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "applyFontFormats", &v53))
    {
      [v9 setApplyFontFormats:v53];
    }

    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "applyPatternFormats", &v53))
    {
      [v9 setApplyPatternFormats:v53];
    }

    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "applyAlignmentFormats", &v53))
    {
      [v9 setApplyAlignmentFormats:v53];
    }

    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "applyWidthHeightFormats", &v53))
    {
      [v9 setApplyWidthHeightFormats:v53];
    }

    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "colGrandTotals", &v53))
    {
      [v9 setColGrandTotals:v53];
    }

    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "useAutoFormatting", &v53))
    {
      [v9 setUseAutoFormatting:v53];
    }

    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "rowGrandTotals", &v53))
    {
      [v9 setRowGrandTotals:v53];
    }

    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "customListSort", &v53))
    {
      [v9 setCustomListSort:v53];
    }

    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "compactData", &v53))
    {
      [v9 setCompactData:v53];
    }

    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "compact", &v53))
    {
      [v9 setCompact:v53];
    }

    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "dataCaption", &v53))
    {
      [v9 setDataCaption:v53];
    }

    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "dataOnRows", &v53))
    {
      [v9 setDataOnRows:v53];
    }

    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "mergeItem", &v53))
    {
      [v9 setMergeItem:v53];
    }

    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "disableFieldList", &v53))
    {
      [v9 setDisableFieldList:v53];
    }

    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "multipleFieldFilters", &v53))
    {
      [v9 setMultipleFieldFilters:v53];
    }

    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "outline", &v53))
    {
      [v9 setOutline:v53];
    }

    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "outlineData", &v53))
    {
      [v9 setOutlineData:v53];
    }

    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "pageOverThenDown", &v53))
    {
      [v9 setPageOverThenDown:v53];
    }

    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "showCalcMbrs", &v53))
    {
      [v9 setShowCalcMbrs:v53];
    }

    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "showDataDropDown", &v53))
    {
      [v9 setShowDataDropDown:v53];
    }

    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "showDropZones", &v53))
    {
      [v9 setShowDropZones:v53];
    }

    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "showEmptyCol", &v53))
    {
      [v9 setShowEmptyCol:v53];
    }

    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "showEmptyRow", &v53))
    {
      [v9 setShowEmptyRow:v53];
    }

    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "showHeaders", &v53))
    {
      [v9 setShowHeaders:v53];
    }

    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "showMemberPropertyTips", &v53))
    {
      [v9 setShowMemberPropertyTips:v53];
    }

    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "showMultipleLabel", &v53))
    {
      [v9 setShowMultipleLabel:v53];
    }

    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "showMissing", &v53))
    {
      [v9 setShowMissing:v53];
    }

    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "subtotalHiddenItems", &v53))
    {
      [v9 setSubtotalHiddenItems:v53];
    }

    v52 = -1;
    if (CXOptionalLongAttribute(a3, CXNoNamespace, "pageWrap", &v52))
    {
      [v9 setPageWrap:v52];
    }

    v51 = -1;
    if (CXOptionalLongAttribute(a3, CXNoNamespace, "autoFormatId", &v51))
    {
      [v9 setAutoFormatId:v51];
    }

    v50 = -1;
    if (CXOptionalLongAttribute(a3, CXNoNamespace, "dataPosition", &v50))
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

+ (void)readStyleInfoFrom:(_xmlNode *)a3 toPivotTable:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v13 = 0;
    v6 = CXOptionalStringAttribute(a3, CXNoNamespace, "name", &v13);
    v7 = v13;
    if (v6)
    {
      [v5 setStyleName:v7];
    }

    v12 = 0;
    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "showLastColumn", &v12))
    {
      [v5 setShowLastColumn:v12];
    }

    v11 = 0;
    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "showRowStripes", &v11))
    {
      [v5 setShowRowStripes:v11];
    }

    v10 = 0;
    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "showColStripes", &v10))
    {
      [v5 setShowColumnStripes:v10];
    }

    v9 = 0;
    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "showRowHeaders", &v9))
    {
      [v5 setShowRowHeaders:v9];
    }

    v8 = 0;
    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "showColHeaders", &v8))
    {
      [v5 setShowColumnHeaders:v8];
    }
  }
}

+ (void)readLocationFrom:(_xmlNode *)a3 toPivotTable:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v14 = 0;
    v6 = CXOptionalStringAttribute(a3, CXNoNamespace, "ref", &v14);
    v7 = v14;
    if (v6)
    {
      v8 = [EXReference edReferenceFromXmlReference:v7];
      [v5 setPivotTableRange:v8];
    }

    v13 = -1;
    if (CXOptionalLongAttribute(a3, CXNoNamespace, "firstHeaderRow", &v13))
    {
      [v5 setFirstHeaderRow:v13];
    }

    v12 = -1;
    if (CXOptionalLongAttribute(a3, CXNoNamespace, "firstDataRow", &v12))
    {
      [v5 setFirstDataRow:v12];
    }

    v11 = -1;
    if (CXOptionalLongAttribute(a3, CXNoNamespace, "firstDataCol", &v11))
    {
      [v5 setFirstDataColumn:v11];
    }

    v10 = -1;
    if (CXOptionalLongAttribute(a3, CXNoNamespace, "rowPageCount", &v10))
    {
      [v5 setRowPageCount:v10];
    }

    v9 = -1;
    if (CXOptionalLongAttribute(a3, CXNoNamespace, "colPageCount", &v9))
    {
      [v5 setColumnPageCount:v9];
    }
  }
}

+ (void)readFieldsFrom:(_xmlNode *)a3 toCollection:(id)a4 state:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (a3)
  {
    v10 = [v8 EXSpreadsheetMLNamespace];
    Child = OCXFindChild(a3, v10, "field");

    while (Child)
    {
      v14 = -1;
      if (CXOptionalLongAttribute(Child, CXNoNamespace, "x", &v14))
      {
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
        [v7 addObject:v12];
      }

      v13 = [v9 EXSpreadsheetMLNamespace];
      Child = OCXFindNextChild(Child, v13, "field");
    }
  }
}

+ (void)readItemsFrom:(_xmlNode *)a3 toCollection:(id)a4 state:(id)a5
{
  v19 = a1;
  v20 = a4;
  v7 = a5;
  v8 = v7;
  if (a3)
  {
    v9 = [v7 EXSpreadsheetMLNamespace];
    Child = OCXFindChild(a3, v9, "i");

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
      [v11 setType:{objc_msgSend(v19, "edPivotItemTypeFrom:", v12)}];
      v13 = [v11 itemIndexes];
      v14 = [v8 EXSpreadsheetMLNamespace];
      for (i = OCXFindChild(Child, v14, "x"); ; i = OCXFindNextChild(v16, v14, "x"))
      {
        v16 = i;

        if (!v16)
        {
          break;
        }

        v22 = 0;
        CXOptionalLongAttribute(v16, CXNoNamespace, "v", &v22);
        v17 = [MEMORY[0x277CCABB0] numberWithLong:v22];
        [v13 addObject:v17];

        v14 = [v8 EXSpreadsheetMLNamespace];
      }

      [v20 addObject:v21];
      v18 = [v8 EXSpreadsheetMLNamespace];
      Child = OCXFindNextChild(Child, v18, "i");
    }
  }
}

+ (void)readPivotFieldsFrom:(_xmlNode *)a3 toCollection:(id)a4 state:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (a3)
  {
    v11 = [v9 EXSpreadsheetMLNamespace];
    Child = OCXFindChild(a3, v11, "pivotField");

    while (Child)
    {
      v13 = +[EDPivotField pivotField];
      v27 = -1;
      CXOptionalLongAttribute(Child, CXNoNamespace, "numFmtId", &v27);
      [v13 setNumFmtId:v27];
      v26 = 0;
      CXOptionalStringAttribute(Child, CXNoNamespace, "axis", &v26);
      v14 = v26;
      [v13 setAxis:{objc_msgSend(a1, "edPivotFieldAxisFrom:", v14)}];
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
      v15 = [v10 EXSpreadsheetMLNamespace];
      v16 = OCXFindChild(Child, v15, "items");

      v17 = [v13 pivotFieldItems];
      [a1 readFieldItemsFrom:v16 toCollection:v17 state:v10];

      [v8 addObject:v13];
      v18 = [v10 EXSpreadsheetMLNamespace];
      Child = OCXFindNextChild(Child, v18, "pivotField");
    }
  }
}

+ (void)readFieldItemsFrom:(_xmlNode *)a3 toCollection:(id)a4 state:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (a3)
  {
    v11 = [v9 EXSpreadsheetMLNamespace];
    Child = OCXFindChild(a3, v11, "item");

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
      [v13 setType:{objc_msgSend(a1, "edPivotItemTypeFrom:", v14)}];
      [v8 addObject:v13];
      v15 = [v10 EXSpreadsheetMLNamespace];
      Child = OCXFindNextChild(Child, v15, "item");
    }
  }
}

+ (void)readDataFieldsFrom:(_xmlNode *)a3 toCollection:(id)a4 state:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (a3)
  {
    v11 = [v9 EXSpreadsheetMLNamespace];
    Child = OCXFindChild(a3, v11, "dataField");

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
      [v13 setShowDataAs:{objc_msgSend(a1, "edPivotDatFieldFormatFrom:", v15)}];
      [v8 addObject:v13];
      v16 = [v10 EXSpreadsheetMLNamespace];
      Child = OCXFindNextChild(Child, v16, "dataField");
    }
  }
}

+ (void)readConditionalFormatsFrom:(_xmlNode *)a3 toCollection:(id)a4 state:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (a3)
  {
    v11 = [v9 EXSpreadsheetMLNamespace];
    Child = OCXFindChild(a3, v11, "conditionalFormat");

    while (Child)
    {
      v13 = +[EDPivotConditionalFormat pivotConditionalFormat];
      v22 = -1;
      CXOptionalLongAttribute(Child, CXNoNamespace, "priority", &v22);
      [v13 setPriority:v22];
      v21 = 0;
      CXOptionalStringAttribute(Child, CXNoNamespace, "type", &v21);
      v14 = v21;
      [v13 setType:{objc_msgSend(a1, "edPivotConditionalFormatTypeFrom:", v14)}];
      v20 = 0;
      CXOptionalStringAttribute(Child, CXNoNamespace, "scope", &v20);
      v15 = v20;
      [v13 setScope:{objc_msgSend(a1, "edPivotConditionalFormatScopeFrom:", v15)}];
      v16 = [v10 EXSpreadsheetMLNamespace];
      v17 = OCXFindChild(Child, v16, "pivotAreas");

      v18 = [v13 pivotAreas];
      [a1 readPivotAreasFrom:v17 toCollection:v18 state:v10];

      [v8 addObject:v13];
      v19 = [v10 EXSpreadsheetMLNamespace];
      Child = OCXFindNextChild(Child, v19, "conditionalFormat");
    }
  }
}

+ (void)readPivotAreasFrom:(_xmlNode *)a3 toCollection:(id)a4 state:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (a3)
  {
    v11 = [v9 EXSpreadsheetMLNamespace];
    Child = OCXFindChild(a3, v11, "pivotArea");

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
      [v13 setType:{objc_msgSend(a1, "edPivotAreaTypeFrom:", v14)}];
      v21 = 0;
      CXOptionalStringAttribute(Child, CXNoNamespace, "offset", &v21);
      v15 = v21;
      v16 = [EXReference edReferenceFromXmlReference:v15];
      [v13 setOffset:v16];

      v17 = [v10 EXSpreadsheetMLNamespace];
      v18 = OCXFindChild(Child, v17, "references");

      v19 = [v13 references];
      [a1 readPivotAreaReferencesFrom:v18 toCollection:v19 state:v10];

      [v8 addObject:v13];
      v20 = [v10 EXSpreadsheetMLNamespace];
      Child = OCXFindNextChild(Child, v20, "pivotArea");
    }
  }
}

+ (void)readPivotAreaReferencesFrom:(_xmlNode *)a3 toCollection:(id)a4 state:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (a3)
  {
    v10 = [v8 EXSpreadsheetMLNamespace];
    Child = OCXFindChild(a3, v10, "reference");

    while (Child)
    {
      v12 = +[EDPivotAreaReference pivotAreaReference];
      v18 = -1;
      CXOptionalLongAttribute(a3, CXNoNamespace, "fieldId", &v18);
      [v12 setFieldId:v18];
      v17 = -1;
      CXOptionalLongAttribute(a3, CXNoNamespace, "count", &v17);
      [v12 setCount:v17];
      v16 = 0;
      CXOptionalBoolAttribute(a3, CXNoNamespace, "byPosition", &v16);
      [v12 setByPosition:v16];
      v15 = 0;
      CXOptionalBoolAttribute(a3, CXNoNamespace, "relative", &v15);
      [v12 setRelative:v15];
      v14 = 0;
      CXOptionalBoolAttribute(a3, CXNoNamespace, "selected", &v14);
      [v12 setSelected:v14];
      [v7 addObject:v12];
      v13 = [v9 EXSpreadsheetMLNamespace];
      Child = OCXFindNextChild(Child, v13, "reference");
    }
  }
}

+ (void)readPageFieldsFrom:(_xmlNode *)a3 toCollection:(id)a4 state:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (a3)
  {
    v10 = [v8 EXSpreadsheetMLNamespace];
    Child = OCXFindChild(a3, v10, "pageField");

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
      [v7 addObject:v12];
      v15 = [v9 EXSpreadsheetMLNamespace];
      Child = OCXFindNextChild(Child, v15, "pageField");
    }
  }
}

+ (int)edPivotItemTypeFrom:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_11;
  }

  if (([v3 isEqualToString:@"avg"] & 1) == 0)
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

+ (int)edPivotFieldAxisFrom:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_8;
  }

  if (([v3 isEqualToString:@"axisCol"] & 1) == 0)
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

+ (int)edPivotDatFieldFormatFrom:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_20;
  }

  if (([v3 isEqualToString:@"difference"] & 1) == 0)
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

+ (int)edPivotConditionalFormatTypeFrom:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_10;
  }

  if (([v3 isEqualToString:@"all"] & 1) == 0)
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

+ (int)edPivotConditionalFormatScopeFrom:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_8;
  }

  if (([v3 isEqualToString:@"data"] & 1) == 0)
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

+ (int)edPivotAreaTypeFrom:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_9;
  }

  if (([v3 isEqualToString:@"all"] & 1) == 0)
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