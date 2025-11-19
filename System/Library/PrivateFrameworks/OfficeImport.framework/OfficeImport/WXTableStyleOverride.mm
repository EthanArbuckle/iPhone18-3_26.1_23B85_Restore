@interface WXTableStyleOverride
+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5;
@end

@implementation WXTableStyleOverride

+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5
{
  v23 = a4;
  v7 = a5;
  v8 = [v23 style];
  v9 = [v7 WXMainNamespace];
  v10 = OCXFindChild(a3, v9, "pPr");

  if (v10)
  {
    v11 = [v23 mutableParagraphProperties];
    [WXParagraphProperties readFrom:v10 to:v11 readBaseStyle:0 state:v7];

    if (v8)
    {
      v12 = [v23 paragraphProperties];
      [v12 setBaseStyle:v8];
    }
  }

  v13 = [v7 WXMainNamespace];
  v14 = OCXFindChild(a3, v13, "rPr");

  if (v14)
  {
    v15 = [v23 mutableCharacterProperties];
    [WXCharacterProperties readFrom:v14 to:v15 state:v7];

    if (v8)
    {
      v16 = [v23 characterProperties];
      [v16 setBaseStyle:v8];
    }
  }

  v17 = [v7 WXMainNamespace];
  v18 = OCXFindChild(a3, v17, "trPr");

  if (v18)
  {
    v19 = [v23 mutableTableRowProperties];
    [WXTableRowProperties readFrom:v18 to:v19 state:v7];
  }

  v20 = [v7 WXMainNamespace];
  v21 = OCXFindChild(a3, v20, "tcPr");

  if (v21)
  {
    v22 = [v23 mutableTableCellStyleProperties];
    [WXTableCellProperties readFrom:v21 to:v22 state:v7];
  }
}

@end