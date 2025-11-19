@interface EXTableFilterColumn
+ (id)edTableFilterColumnFromXmlTableFilterColumnElement:(_xmlNode *)a3 state:(id)a4;
+ (int)edFilterOperatorFromXmlTypeString:(id)a3;
@end

@implementation EXTableFilterColumn

+ (id)edTableFilterColumnFromXmlTableFilterColumnElement:(_xmlNode *)a3 state:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v32 = a1;
    v7 = objc_alloc_init(EDTableFilterColumn);
    v37 = -1;
    if (CXOptionalLongAttribute(a3, CXNoNamespace, "colId", &v37))
    {
      [(EDTableFilterColumn *)v7 setColumnIndex:v37];
    }

    v8 = [v6 EXSpreadsheetMLNamespace];
    v9 = OCXFindChild(a3, v8, "filters");

    v10 = v9;
    if (v9 || ([v6 EXSpreadsheetMLNamespace], v11 = objc_claimAutoreleasedReturnValue(), v10 = OCXFindChild(a3, v11, "customFilters"), v11, v10))
    {
      v36 = 0.0;
      v12 = !CXOptionalLongAttribute(v10, CXNoNamespace, "and", &v36);
      v13 = *&v36 != 1 || v12;
      [(EDTableFilterColumn *)v7 setFiltersRelation:v13];
      v14 = [v6 EXSpreadsheetMLNamespace];
      v15 = v9 ? OCXFindChild(v10, v14, "filter") : OCXFindChild(v10, v14, "customFilter");
      v16 = v15;

      while (v16)
      {
        v17 = [EXTableFilter edTableFilterFromXmlTableFilterElement:v16 state:v6];
        [(EDTableFilterColumn *)v7 addFilter:v17];

        v18 = [v6 EXSpreadsheetMLNamespace];
        if (v9)
        {
          Child = OCXFindNextChild(v16, v18, "filter");
        }

        else
        {
          Child = OCXFindNextChild(v16, v18, "customFilter");
        }

        v16 = Child;
      }
    }

    v20 = [v6 EXSpreadsheetMLNamespace];
    v21 = OCXFindChild(a3, v20, "top10");

    if (v21)
    {
      v22 = +[EDTableFilter edTableFilter];
      v35 = 0;
      v23 = CXOptionalBoolAttribute(v21, CXNoNamespace, "top", &v35);
      if (v35)
      {
        v24 = 8;
      }

      else
      {
        v24 = 9;
      }

      if (v23)
      {
        v25 = v24;
      }

      else
      {
        v25 = 8;
      }

      [v22 setOperatorType:v25];
      v34 = 0;
      if (CXOptionalBoolAttribute(v21, CXNoNamespace, "percent", &v34))
      {
        [v22 setScale:v34];
      }

      v36 = 0.0;
      if (CXOptionalDoubleAttribute(v21, CXNoNamespace, "val", &v36))
      {
        [v22 setValue:v36];
      }

      if (CXOptionalDoubleAttribute(v21, CXNoNamespace, "filterVal", &v36))
      {
        [v22 setFilterValue:v36];
      }

      [(EDTableFilterColumn *)v7 addFilter:v22];
    }

    v26 = [v6 EXSpreadsheetMLNamespace];
    v27 = OCXFindChild(a3, v26, "dynamicFilter");

    if (v27)
    {
      v28 = +[EDTableFilter edTableFilter];
      v33 = 0;
      v29 = CXOptionalStringAttribute(v27, CXNoNamespace, "type", &v33);
      v30 = v33;
      if (v29)
      {
        [v28 setOperatorType:{objc_msgSend(v32, "edFilterOperatorFromXmlTypeString:", v30)}];
      }

      v36 = 0.0;
      if (CXOptionalDoubleAttribute(v27, CXNoNamespace, "val", &v36))
      {
        [v28 setValue:v36];
      }

      [(EDTableFilterColumn *)v7 addFilter:v28];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (int)edFilterOperatorFromXmlTypeString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_6;
  }

  if (([v3 isEqualToString:@"aboveAverage"] & 1) == 0)
  {
    if ([v4 isEqualToString:@"belowAverage"])
    {
      v5 = 11;
      goto LABEL_7;
    }

LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  v5 = 10;
LABEL_7:

  return v5;
}

@end