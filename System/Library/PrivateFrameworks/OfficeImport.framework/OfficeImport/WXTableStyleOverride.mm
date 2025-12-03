@interface WXTableStyleOverride
+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state;
@end

@implementation WXTableStyleOverride

+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  style = [toCopy style];
  wXMainNamespace = [stateCopy WXMainNamespace];
  v10 = OCXFindChild(from, wXMainNamespace, "pPr");

  if (v10)
  {
    mutableParagraphProperties = [toCopy mutableParagraphProperties];
    [WXParagraphProperties readFrom:v10 to:mutableParagraphProperties readBaseStyle:0 state:stateCopy];

    if (style)
    {
      paragraphProperties = [toCopy paragraphProperties];
      [paragraphProperties setBaseStyle:style];
    }
  }

  wXMainNamespace2 = [stateCopy WXMainNamespace];
  v14 = OCXFindChild(from, wXMainNamespace2, "rPr");

  if (v14)
  {
    mutableCharacterProperties = [toCopy mutableCharacterProperties];
    [WXCharacterProperties readFrom:v14 to:mutableCharacterProperties state:stateCopy];

    if (style)
    {
      characterProperties = [toCopy characterProperties];
      [characterProperties setBaseStyle:style];
    }
  }

  wXMainNamespace3 = [stateCopy WXMainNamespace];
  v18 = OCXFindChild(from, wXMainNamespace3, "trPr");

  if (v18)
  {
    mutableTableRowProperties = [toCopy mutableTableRowProperties];
    [WXTableRowProperties readFrom:v18 to:mutableTableRowProperties state:stateCopy];
  }

  wXMainNamespace4 = [stateCopy WXMainNamespace];
  v21 = OCXFindChild(from, wXMainNamespace4, "tcPr");

  if (v21)
  {
    mutableTableCellStyleProperties = [toCopy mutableTableCellStyleProperties];
    [WXTableCellProperties readFrom:v21 to:mutableTableCellStyleProperties state:stateCopy];
  }
}

@end