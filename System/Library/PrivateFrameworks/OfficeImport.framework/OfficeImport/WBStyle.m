@interface WBStyle
+ (void)readFrom:(id)a3 wrdStyle:(void *)a4 style:(id)a5;
+ (void)readTableProperties:(id)a3 style:(id)a4 from:(void *)a5;
@end

@implementation WBStyle

+ (void)readFrom:(id)a3 wrdStyle:(void *)a4 style:(id)a5
{
  v26 = a3;
  v8 = a5;
  [v8 setHidden:(*(a4 + 164) >> 1) & 1];
  v9 = *(a4 + 79);
  if (v9 != 4095)
  {
    v10 = [v26 styleAtIndex:v9 expectedType:{objc_msgSend(v8, "type")}];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
      while (v12 != v8)
      {
        v13 = [v12 baseStyle];

        v12 = v13;
        if (!v13)
        {
          goto LABEL_8;
        }
      }

      v11 = 0;
    }

LABEL_8:
    [v8 setBaseStyle:v11];
  }

  v14 = *(a4 + 80);
  if (v14 != 4095)
  {
    v15 = [v26 styleAtIndex:v14 expectedType:{objc_msgSend(v8, "type")}];
    [v8 setNextStyle:v15];
  }

  v16 = [v8 styleSheet];
  v17 = [v16 document];

  v18 = *(a4 + 4);
  v19 = *(a4 + 5);
  v20 = [v8 paragraphProperties];
  [WBParagraphProperties readFrom:v26 wrdProperties:v18 tracked:v19 document:v17 properties:v20];

  v21 = *(a4 + 6);
  v22 = *(a4 + 7);
  v23 = [v8 characterProperties];
  [WBCharacterProperties readFrom:v26 wrdProperties:v21 tracked:v22 document:v17 properties:v23];

  v24 = [v8 characterProperties];
  [v24 clearBaseStyle];

  v25 = [v8 paragraphProperties];
  [v25 clearBaseStyle];

  [a1 readTableProperties:v26 style:v8 from:a4];
}

+ (void)readTableProperties:(id)a3 style:(id)a4 from:(void *)a5
{
  v13 = a3;
  v7 = a4;
  if ([v7 type] == 3)
  {
    v8 = *(a5 + 8);
    v9 = [v7 tableRowProperties];
    [WBTableRowProperties readFrom:v13 wrdProperties:v8 tracked:0 properties:v9];

    v10 = [v7 tableCellProperties];
    [WBTableCellStyleProperties readFrom:v8 properties:v10];

    v11 = 0;
    do
    {
      v12 = [v7 tableStyleOverrideForPart:v11];
      [WBTableStyleOverride readFrom:v13 wrdStyle:a5 style:v7 part:v11 tableStyleOverride:v12];

      v11 = (v11 + 1);
    }

    while (v11 != 12);
  }
}

@end