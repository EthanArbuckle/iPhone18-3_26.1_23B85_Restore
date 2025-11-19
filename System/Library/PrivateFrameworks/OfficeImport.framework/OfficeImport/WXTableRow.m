@interface WXTableRow
+ (void)readCellsFrom:(_xmlNode *)a3 tableGrid:(void *)a4 to:(id)a5 gridIndex:(int64_t *)a6 state:(id)a7;
+ (void)readFrom:(_xmlNode *)a3 tableGrid:(void *)a4 to:(id)a5 state:(id)a6;
@end

@implementation WXTableRow

+ (void)readFrom:(_xmlNode *)a3 tableGrid:(void *)a4 to:(id)a5 state:(id)a6
{
  v8 = a5;
  v9 = a6;
  v29 = [v8 properties];
  v10 = [v9 WXMainNamespace];
  v11 = OCXFindChild(a3, v10, "tblPrEx");

  if (v11)
  {
    v12 = [v29 tableProperties];
    [WXTableProperties readFrom:v11 to:v12 state:v9];
  }

  v13 = [v9 WXMainNamespace];
  v14 = OCXFindChild(a3, v13, "trPr");

  if (v14)
  {
    [WXTableRowProperties readFrom:v14 to:v29 state:v9];
  }

  v28 = [v8 table];
  v15 = [v28 properties];
  if ([v15 isBaseStyleOverridden] && objc_msgSend(v9, "currentRowCNFStyle"))
  {
    v25 = v15;
    v16 = [v15 baseStyle];
    v17 = 0;
    do
    {
      if (([v9 currentRowCNFStyle] & (1 << v17)) != 0)
      {
        v18 = [v16 tableStyleOverrideForPart:v17];
        v19 = v18;
        if (v18 && [v18 isTableRowPropertiesOverridden])
        {
          v20 = [v8 properties];
          v21 = [v19 tableRowProperties];
          [v20 addProperties:v21];
        }
      }

      v17 = (v17 + 1);
    }

    while (v17 != 12);

    v15 = v25;
  }

  v30 = 0;
  if (v14)
  {
    v22 = [v9 WXMainNamespace];
    v23 = OCXFindChild(v14, v22, "gridBefore");

    if (v23)
    {
      v24 = [v9 WXMainNamespace];
      v30 = CXDefaultLongAttribute(v23, v24, "val", 0);
    }
  }

  [a1 readCellsFrom:a3 tableGrid:a4 to:v8 gridIndex:&v30 state:v9];
  [v9 setCurrentRowCNFStyle:0];
}

+ (void)readCellsFrom:(_xmlNode *)a3 tableGrid:(void *)a4 to:(id)a5 gridIndex:(int64_t *)a6 state:(id)a7
{
  v37 = a5;
  v11 = a7;
  v12 = OCXFirstChild(a3);
  v35 = 0;
  v13 = 0;
  while (v12)
  {
    if (xmlStrEqual(v12->name, "sdt"))
    {
      [TCMessageContext reportWarning:WXFormsNotSupported];
      v14 = [v11 WXMainNamespace];
      v15 = OCXFindChild(v12, v14, "sdtContent");

      if (v15)
      {
        [a1 readCellsFrom:v15 tableGrid:a4 to:v37 gridIndex:a6 state:v11];
      }

      goto LABEL_30;
    }

    if (xmlStrEqual(v12->name, "commentRangeStart"))
    {
      [v11 addPendingComment:v12];
      goto LABEL_30;
    }

    if (xmlStrEqual(v12->name, "tc"))
    {
      v16 = [v11 WXMainNamespace];
      v17 = OCXFindChild(v12, v16, "tcPr");

      if (v17)
      {
        v18 = [v11 WXMainNamespace];
        v19 = OCXFindChild(v17, v18, "gridSpan");

        if (v19)
        {
          v20 = [v11 WXMainNamespace];
          v21 = CXDefaultLongAttribute(v19, v20, "val", 1);
        }

        else
        {
          v21 = 1;
        }

        v22 = [v11 WXMainNamespace];
        v23 = OCXFindChild(v17, v22, "hMerge");

        if (v23)
        {
          v24 = [v11 WXMainNamespace];
          v38 = 0;
          v25 = CXOptionalStringAttribute(v23, v24, "val", &v38);
          v26 = v38;

          if (v25)
          {
            v27 = [@"restart" isEqualToString:v26];
          }

          else
          {
            v27 = 0;
          }

          if ((v35 & 1) != 0 && (v27 & 1) == 0)
          {
            v28 = [v13 properties];
            v29 = [v28 width];

LABEL_24:
            if (v21 >= 1)
            {
              v31 = *a6;
              v32 = *a4;
              v33 = ((*(a4 + 1) - *a4) >> 3);
              if (*a6 > v33)
              {
                v33 = *a6;
              }

              do
              {
                if (v33 == v31)
                {
                  break;
                }

                v29 += *(v32 + 8 * v31++);
                *a6 = v31;
                --v21;
              }

              while (v21);
            }

            v34 = [v13 properties];
            [v34 setWidth:v29];

            goto LABEL_30;
          }

          v35 = v27;
        }

        else
        {
          v35 = 0;
        }
      }

      else
      {
        v35 = 0;
        v21 = 1;
      }

      v30 = [v37 addCell];

      [WXTableCell readFrom:v12 to:v30 state:v11];
      v29 = 0;
      v13 = v30;
      goto LABEL_24;
    }

LABEL_30:
    v12 = OCXNextSibling(v12);
  }
}

@end