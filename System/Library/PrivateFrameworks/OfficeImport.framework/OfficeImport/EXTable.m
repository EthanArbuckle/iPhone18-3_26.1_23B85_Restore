@interface EXTable
+ (id)edTableFromXmlTableElement:(_xmlNode *)a3 state:(id)a4;
@end

@implementation EXTable

+ (id)edTableFromXmlTableElement:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v6 = [EDTable alloc];
    v7 = [v5 resources];
    v8 = [(EDTable *)v6 initWithResources:v7];

    v54 = 0;
    v9 = CXOptionalStringAttribute(a3, CXNoNamespace, "name", &v54);
    v10 = v54;
    if (v9)
    {
      [(EDTable *)v8 setName:v10];
    }

    v37 = v10;
    v53 = 0;
    v11 = CXOptionalStringAttribute(a3, CXNoNamespace, "displayName", &v53);
    v12 = v53;
    if (v11)
    {
      [(EDTable *)v8 setDisplayName:v12];
    }

    v35 = v12;
    v52 = 0;
    v13 = CXOptionalStringAttribute(a3, CXNoNamespace, "ref", &v52);
    v36 = v52;
    if (v13)
    {
      v14 = [EXReference edReferenceFromXmlReference:v36];
      [(EDTable *)v8 setTableRange:v14];
    }

    v51 = -1;
    if (CXOptionalLongAttribute(a3, CXNoNamespace, "totalsRowCount", &v51))
    {
      [(EDTable *)v8 setTotalsRowCount:v51];
    }

    v50 = -1;
    if (CXOptionalLongAttribute(a3, CXNoNamespace, "headerRowCount", &v50))
    {
      [(EDTable *)v8 setHeaderRowCount:v50];
    }

    v49 = -1;
    if (CXOptionalLongAttribute(a3, CXNoNamespace, "headerRowBorderDxfId", &v49))
    {
      [(EDTable *)v8 setHeaderRowBorderDxfIndex:v49];
    }

    v48 = -1;
    if (CXOptionalLongAttribute(a3, CXNoNamespace, "dataAreaBorderDxfId", &v48))
    {
      [(EDTable *)v8 setDataAreaBorderDxfIndex:v48];
    }

    v47 = -1;
    if (CXOptionalLongAttribute(a3, CXNoNamespace, "totalsRowBorderDxfId", &v47))
    {
      [(EDTable *)v8 setTotalsRowBorderDxfIndex:v47];
    }

    v46 = -1;
    if (CXOptionalLongAttribute(a3, CXNoNamespace, "headerRowDxfId", &v46))
    {
      [(EDTable *)v8 setHeaderRowDxfIndex:v46];
    }

    v45 = -1;
    if (CXOptionalLongAttribute(a3, CXNoNamespace, "dataDxfId", &v45))
    {
      [(EDTable *)v8 setDataAreaDxfIndex:v45];
    }

    v44 = -1;
    if (CXOptionalLongAttribute(a3, CXNoNamespace, "totalsRowDxfId", &v44))
    {
      [(EDTable *)v8 setTotalsRowDxfIndex:v44];
    }

    v43 = -1;
    if (CXOptionalLongAttribute(a3, CXNoNamespace, "tableBorderDxfId", &v43))
    {
      [(EDTable *)v8 setTableBorderDxfIndex:v43];
    }

    v15 = [(EDTable *)v8 tableColumns];
    v16 = [v5 EXSpreadsheetMLNamespace];
    v17 = OCXFindChild(a3, v16, "tableColumns");

    if (v17)
    {
      v18 = [v5 EXSpreadsheetMLNamespace];
      Child = OCXFindChild(v17, v18, "tableColumn");

      while (Child)
      {
        v20 = [EXTableColumn edTableColumnFromXmlTableColumnElement:Child state:v5];
        [v15 addObject:v20];

        v21 = [v5 EXSpreadsheetMLNamespace];
        Child = OCXFindNextChild(Child, v21, "tableColumn");
      }
    }

    v22 = [v5 EXSpreadsheetMLNamespace];
    v23 = v37;
    v24 = OCXFindChild(a3, v22, "autoFilter");

    if (v24)
    {
      v25 = [(EDTable *)v8 columnFilters];
      v26 = [v5 EXSpreadsheetMLNamespace];
      v27 = OCXFindChild(v24, v26, "filterColumn");

      while (v27)
      {
        v28 = [EXTableFilterColumn edTableFilterColumnFromXmlTableFilterColumnElement:v27 state:v5];
        [v25 addObject:v28];

        v29 = [v5 EXSpreadsheetMLNamespace];
        v27 = OCXFindNextChild(v27, v29, "filterColumn");
      }

      v23 = v37;
    }

    v30 = [v5 EXSpreadsheetMLNamespace];
    v31 = OCXFindChild(a3, v30, "tableStyleInfo");

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