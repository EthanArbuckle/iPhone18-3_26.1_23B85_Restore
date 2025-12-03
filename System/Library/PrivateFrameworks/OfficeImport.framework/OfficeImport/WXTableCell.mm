@interface WXTableCell
+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state;
@end

@implementation WXTableCell

+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  wXMainNamespace = [stateCopy WXMainNamespace];
  v35 = 0;
  v10 = CXOptionalStringAttribute(from, wXMainNamespace, "id", &v35);
  v11 = v35;

  if (v10)
  {
    [toCopy setIdentifier:v11];
  }

  wXMainNamespace2 = [stateCopy WXMainNamespace];
  v13 = OCXFindChild(from, wXMainNamespace2, "tcPr");

  if (v13)
  {
    properties = [toCopy properties];
    [WXTableCellProperties readFrom:v13 to:properties state:stateCopy];
  }

  v15 = [toCopy row];
  table = [v15 table];

  properties2 = [table properties];
  currentCellCNFStyle = [stateCopy currentCellCNFStyle];
  currentRowCNFStyle = [stateCopy currentRowCNFStyle];
  isBaseStyleOverridden = [properties2 isBaseStyleOverridden];
  v20 = currentRowCNFStyle | currentCellCNFStyle;
  if (currentRowCNFStyle | currentCellCNFStyle)
  {
    v21 = isBaseStyleOverridden;
  }

  else
  {
    v21 = 0;
  }

  if (v21 == 1)
  {
    v33 = v11;
    baseStyle = [properties2 baseStyle];
    v23 = 0;
    do
    {
      if ((v20 >> v23))
      {
        v24 = [baseStyle tableStyleOverrideForPart:v23];
        v25 = v24;
        if (v24 && [v24 isTableCellStylePropertiesOverridden])
        {
          properties3 = [toCopy properties];
          tableCellStyleProperties = [v25 tableCellStyleProperties];
          [properties3 addProperties:tableCellStyleProperties];
        }
      }

      v23 = (v23 + 1);
    }

    while (v23 != 12);

    v11 = v33;
  }

  properties4 = [table properties];
  isBaseStyleOverridden2 = [properties4 isBaseStyleOverridden];

  if (isBaseStyleOverridden2)
  {
    properties5 = [table properties];
    baseStyle2 = [properties5 baseStyle];
  }

  else
  {
    baseStyle2 = 0;
  }

  text = [toCopy text];
  [WXText readFrom:from baseStyle:baseStyle2 to:text state:stateCopy];
}

@end