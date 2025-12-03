@interface EXTable
+ (id)edTableFromXmlTableElement:(_xmlNode *)element state:(id)state;
@end

@implementation EXTable

+ (id)edTableFromXmlTableElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  if (element)
  {
    v6 = [EDTable alloc];
    resources = [stateCopy resources];
    v8 = [(EDTable *)v6 initWithResources:resources];

    v54 = 0;
    v9 = CXOptionalStringAttribute(element, CXNoNamespace, "name", &v54);
    v10 = v54;
    if (v9)
    {
      [(EDTable *)v8 setName:v10];
    }

    v37 = v10;
    v53 = 0;
    v11 = CXOptionalStringAttribute(element, CXNoNamespace, "displayName", &v53);
    v12 = v53;
    if (v11)
    {
      [(EDTable *)v8 setDisplayName:v12];
    }

    v35 = v12;
    v52 = 0;
    v13 = CXOptionalStringAttribute(element, CXNoNamespace, "ref", &v52);
    v36 = v52;
    if (v13)
    {
      v14 = [EXReference edReferenceFromXmlReference:v36];
      [(EDTable *)v8 setTableRange:v14];
    }

    v51 = -1;
    if (CXOptionalLongAttribute(element, CXNoNamespace, "totalsRowCount", &v51))
    {
      [(EDTable *)v8 setTotalsRowCount:v51];
    }

    v50 = -1;
    if (CXOptionalLongAttribute(element, CXNoNamespace, "headerRowCount", &v50))
    {
      [(EDTable *)v8 setHeaderRowCount:v50];
    }

    v49 = -1;
    if (CXOptionalLongAttribute(element, CXNoNamespace, "headerRowBorderDxfId", &v49))
    {
      [(EDTable *)v8 setHeaderRowBorderDxfIndex:v49];
    }

    v48 = -1;
    if (CXOptionalLongAttribute(element, CXNoNamespace, "dataAreaBorderDxfId", &v48))
    {
      [(EDTable *)v8 setDataAreaBorderDxfIndex:v48];
    }

    v47 = -1;
    if (CXOptionalLongAttribute(element, CXNoNamespace, "totalsRowBorderDxfId", &v47))
    {
      [(EDTable *)v8 setTotalsRowBorderDxfIndex:v47];
    }

    v46 = -1;
    if (CXOptionalLongAttribute(element, CXNoNamespace, "headerRowDxfId", &v46))
    {
      [(EDTable *)v8 setHeaderRowDxfIndex:v46];
    }

    v45 = -1;
    if (CXOptionalLongAttribute(element, CXNoNamespace, "dataDxfId", &v45))
    {
      [(EDTable *)v8 setDataAreaDxfIndex:v45];
    }

    v44 = -1;
    if (CXOptionalLongAttribute(element, CXNoNamespace, "totalsRowDxfId", &v44))
    {
      [(EDTable *)v8 setTotalsRowDxfIndex:v44];
    }

    v43 = -1;
    if (CXOptionalLongAttribute(element, CXNoNamespace, "tableBorderDxfId", &v43))
    {
      [(EDTable *)v8 setTableBorderDxfIndex:v43];
    }

    tableColumns = [(EDTable *)v8 tableColumns];
    eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
    v17 = OCXFindChild(element, eXSpreadsheetMLNamespace, "tableColumns");

    if (v17)
    {
      eXSpreadsheetMLNamespace2 = [stateCopy EXSpreadsheetMLNamespace];
      Child = OCXFindChild(v17, eXSpreadsheetMLNamespace2, "tableColumn");

      while (Child)
      {
        v20 = [EXTableColumn edTableColumnFromXmlTableColumnElement:Child state:stateCopy];
        [tableColumns addObject:v20];

        eXSpreadsheetMLNamespace3 = [stateCopy EXSpreadsheetMLNamespace];
        Child = OCXFindNextChild(Child, eXSpreadsheetMLNamespace3, "tableColumn");
      }
    }

    eXSpreadsheetMLNamespace4 = [stateCopy EXSpreadsheetMLNamespace];
    v23 = v37;
    v24 = OCXFindChild(element, eXSpreadsheetMLNamespace4, "autoFilter");

    if (v24)
    {
      columnFilters = [(EDTable *)v8 columnFilters];
      eXSpreadsheetMLNamespace5 = [stateCopy EXSpreadsheetMLNamespace];
      v27 = OCXFindChild(v24, eXSpreadsheetMLNamespace5, "filterColumn");

      while (v27)
      {
        v28 = [EXTableFilterColumn edTableFilterColumnFromXmlTableFilterColumnElement:v27 state:stateCopy];
        [columnFilters addObject:v28];

        eXSpreadsheetMLNamespace6 = [stateCopy EXSpreadsheetMLNamespace];
        v27 = OCXFindNextChild(v27, eXSpreadsheetMLNamespace6, "filterColumn");
      }

      v23 = v37;
    }

    eXSpreadsheetMLNamespace7 = [stateCopy EXSpreadsheetMLNamespace];
    v31 = OCXFindChild(element, eXSpreadsheetMLNamespace7, "tableStyleInfo");

    if (v31)
    {
      v42 = 0;
      v32 = CXOptionalStringAttribute(v31, CXNoNamespace, "name", &v42);
      v33 = v42;
      if (v32)
      {
        [(EDTable *)v8 setStyleName:v33];
      }

      v41 = 0;
      if (CXOptionalBoolAttribute(v31, CXNoNamespace, "showFirstColumn", &v41))
      {
        [(EDTable *)v8 setShowFirstColumn:v41];
      }

      v40 = 0;
      if (CXOptionalBoolAttribute(v31, CXNoNamespace, "showLastColumn", &v40))
      {
        [(EDTable *)v8 setShowLastColumn:v40];
      }

      v39 = 0;
      if (CXOptionalBoolAttribute(v31, CXNoNamespace, "showRowStripes", &v39))
      {
        [(EDTable *)v8 setShowRowStripes:v39];
      }

      v38 = 0;
      if (CXOptionalBoolAttribute(v31, CXNoNamespace, "showColumnStripes", &v38))
      {
        [(EDTable *)v8 setShowColumnStripes:v38];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end