@interface WXTableRow
+ (void)readCellsFrom:(_xmlNode *)from tableGrid:(void *)grid to:(id)to gridIndex:(int64_t *)index state:(id)state;
+ (void)readFrom:(_xmlNode *)from tableGrid:(void *)grid to:(id)to state:(id)state;
@end

@implementation WXTableRow

+ (void)readFrom:(_xmlNode *)from tableGrid:(void *)grid to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  properties = [toCopy properties];
  wXMainNamespace = [stateCopy WXMainNamespace];
  v11 = OCXFindChild(from, wXMainNamespace, "tblPrEx");

  if (v11)
  {
    tableProperties = [properties tableProperties];
    [WXTableProperties readFrom:v11 to:tableProperties state:stateCopy];
  }

  wXMainNamespace2 = [stateCopy WXMainNamespace];
  v14 = OCXFindChild(from, wXMainNamespace2, "trPr");

  if (v14)
  {
    [WXTableRowProperties readFrom:v14 to:properties state:stateCopy];
  }

  table = [toCopy table];
  properties2 = [table properties];
  if ([properties2 isBaseStyleOverridden] && objc_msgSend(stateCopy, "currentRowCNFStyle"))
  {
    v25 = properties2;
    baseStyle = [properties2 baseStyle];
    v17 = 0;
    do
    {
      if (([stateCopy currentRowCNFStyle] & (1 << v17)) != 0)
      {
        v18 = [baseStyle tableStyleOverrideForPart:v17];
        v19 = v18;
        if (v18 && [v18 isTableRowPropertiesOverridden])
        {
          properties3 = [toCopy properties];
          tableRowProperties = [v19 tableRowProperties];
          [properties3 addProperties:tableRowProperties];
        }
      }

      v17 = (v17 + 1);
    }

    while (v17 != 12);

    properties2 = v25;
  }

  v30 = 0;
  if (v14)
  {
    wXMainNamespace3 = [stateCopy WXMainNamespace];
    v23 = OCXFindChild(v14, wXMainNamespace3, "gridBefore");

    if (v23)
    {
      wXMainNamespace4 = [stateCopy WXMainNamespace];
      v30 = CXDefaultLongAttribute(v23, wXMainNamespace4, "val", 0);
    }
  }

  [self readCellsFrom:from tableGrid:grid to:toCopy gridIndex:&v30 state:stateCopy];
  [stateCopy setCurrentRowCNFStyle:0];
}

+ (void)readCellsFrom:(_xmlNode *)from tableGrid:(void *)grid to:(id)to gridIndex:(int64_t *)index state:(id)state
{
  toCopy = to;
  stateCopy = state;
  v12 = OCXFirstChild(from);
  v35 = 0;
  v13 = 0;
  while (v12)
  {
    if (xmlStrEqual(v12->name, "sdt"))
    {
      [TCMessageContext reportWarning:WXFormsNotSupported];
      wXMainNamespace = [stateCopy WXMainNamespace];
      v15 = OCXFindChild(v12, wXMainNamespace, "sdtContent");

      if (v15)
      {
        [self readCellsFrom:v15 tableGrid:grid to:toCopy gridIndex:index state:stateCopy];
      }

      goto LABEL_30;
    }

    if (xmlStrEqual(v12->name, "commentRangeStart"))
    {
      [stateCopy addPendingComment:v12];
      goto LABEL_30;
    }

    if (xmlStrEqual(v12->name, "tc"))
    {
      wXMainNamespace2 = [stateCopy WXMainNamespace];
      v17 = OCXFindChild(v12, wXMainNamespace2, "tcPr");

      if (v17)
      {
        wXMainNamespace3 = [stateCopy WXMainNamespace];
        v19 = OCXFindChild(v17, wXMainNamespace3, "gridSpan");

        if (v19)
        {
          wXMainNamespace4 = [stateCopy WXMainNamespace];
          v21 = CXDefaultLongAttribute(v19, wXMainNamespace4, "val", 1);
        }

        else
        {
          v21 = 1;
        }

        wXMainNamespace5 = [stateCopy WXMainNamespace];
        v23 = OCXFindChild(v17, wXMainNamespace5, "hMerge");

        if (v23)
        {
          wXMainNamespace6 = [stateCopy WXMainNamespace];
          v38 = 0;
          v25 = CXOptionalStringAttribute(v23, wXMainNamespace6, "val", &v38);
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
            properties = [v13 properties];
            width = [properties width];

LABEL_24:
            if (v21 >= 1)
            {
              v31 = *index;
              v32 = *grid;
              v33 = ((*(grid + 1) - *grid) >> 3);
              if (*index > v33)
              {
                v33 = *index;
              }

              do
              {
                if (v33 == v31)
                {
                  break;
                }

                width += *(v32 + 8 * v31++);
                *index = v31;
                --v21;
              }

              while (v21);
            }

            properties2 = [v13 properties];
            [properties2 setWidth:width];

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

      addCell = [toCopy addCell];

      [WXTableCell readFrom:v12 to:addCell state:stateCopy];
      width = 0;
      v13 = addCell;
      goto LABEL_24;
    }

LABEL_30:
    v12 = OCXNextSibling(v12);
  }
}

@end