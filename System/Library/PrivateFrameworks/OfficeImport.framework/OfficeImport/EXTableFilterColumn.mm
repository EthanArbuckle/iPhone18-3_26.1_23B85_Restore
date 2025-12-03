@interface EXTableFilterColumn
+ (id)edTableFilterColumnFromXmlTableFilterColumnElement:(_xmlNode *)element state:(id)state;
+ (int)edFilterOperatorFromXmlTypeString:(id)string;
@end

@implementation EXTableFilterColumn

+ (id)edTableFilterColumnFromXmlTableFilterColumnElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  if (element)
  {
    selfCopy = self;
    v7 = objc_alloc_init(EDTableFilterColumn);
    v37 = -1;
    if (CXOptionalLongAttribute(element, CXNoNamespace, "colId", &v37))
    {
      [(EDTableFilterColumn *)v7 setColumnIndex:v37];
    }

    eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
    v9 = OCXFindChild(element, eXSpreadsheetMLNamespace, "filters");

    v10 = v9;
    if (v9 || ([stateCopy EXSpreadsheetMLNamespace], v11 = objc_claimAutoreleasedReturnValue(), v10 = OCXFindChild(element, v11, "customFilters"), v11, v10))
    {
      v36 = 0.0;
      v12 = !CXOptionalLongAttribute(v10, CXNoNamespace, "and", &v36);
      v13 = *&v36 != 1 || v12;
      [(EDTableFilterColumn *)v7 setFiltersRelation:v13];
      eXSpreadsheetMLNamespace2 = [stateCopy EXSpreadsheetMLNamespace];
      v15 = v9 ? OCXFindChild(v10, eXSpreadsheetMLNamespace2, "filter") : OCXFindChild(v10, eXSpreadsheetMLNamespace2, "customFilter");
      v16 = v15;

      while (v16)
      {
        v17 = [EXTableFilter edTableFilterFromXmlTableFilterElement:v16 state:stateCopy];
        [(EDTableFilterColumn *)v7 addFilter:v17];

        eXSpreadsheetMLNamespace3 = [stateCopy EXSpreadsheetMLNamespace];
        if (v9)
        {
          Child = OCXFindNextChild(v16, eXSpreadsheetMLNamespace3, "filter");
        }

        else
        {
          Child = OCXFindNextChild(v16, eXSpreadsheetMLNamespace3, "customFilter");
        }

        v16 = Child;
      }
    }

    eXSpreadsheetMLNamespace4 = [stateCopy EXSpreadsheetMLNamespace];
    v21 = OCXFindChild(element, eXSpreadsheetMLNamespace4, "top10");

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

    eXSpreadsheetMLNamespace5 = [stateCopy EXSpreadsheetMLNamespace];
    v27 = OCXFindChild(element, eXSpreadsheetMLNamespace5, "dynamicFilter");

    if (v27)
    {
      v28 = +[EDTableFilter edTableFilter];
      v33 = 0;
      v29 = CXOptionalStringAttribute(v27, CXNoNamespace, "type", &v33);
      v30 = v33;
      if (v29)
      {
        [v28 setOperatorType:{objc_msgSend(selfCopy, "edFilterOperatorFromXmlTypeString:", v30)}];
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

+ (int)edFilterOperatorFromXmlTypeString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (!stringCopy)
  {
    goto LABEL_6;
  }

  if (([stringCopy isEqualToString:@"aboveAverage"] & 1) == 0)
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