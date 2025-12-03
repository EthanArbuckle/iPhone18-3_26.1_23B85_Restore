@interface WBStyle
+ (void)readFrom:(id)from wrdStyle:(void *)style style:(id)a5;
+ (void)readTableProperties:(id)properties style:(id)style from:(void *)from;
@end

@implementation WBStyle

+ (void)readFrom:(id)from wrdStyle:(void *)style style:(id)a5
{
  fromCopy = from;
  v8 = a5;
  [v8 setHidden:(*(style + 164) >> 1) & 1];
  v9 = *(style + 79);
  if (v9 != 4095)
  {
    v10 = [fromCopy styleAtIndex:v9 expectedType:{objc_msgSend(v8, "type")}];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
      while (v12 != v8)
      {
        baseStyle = [v12 baseStyle];

        v12 = baseStyle;
        if (!baseStyle)
        {
          goto LABEL_8;
        }
      }

      v11 = 0;
    }

LABEL_8:
    [v8 setBaseStyle:v11];
  }

  v14 = *(style + 80);
  if (v14 != 4095)
  {
    v15 = [fromCopy styleAtIndex:v14 expectedType:{objc_msgSend(v8, "type")}];
    [v8 setNextStyle:v15];
  }

  styleSheet = [v8 styleSheet];
  document = [styleSheet document];

  v18 = *(style + 4);
  v19 = *(style + 5);
  paragraphProperties = [v8 paragraphProperties];
  [WBParagraphProperties readFrom:fromCopy wrdProperties:v18 tracked:v19 document:document properties:paragraphProperties];

  v21 = *(style + 6);
  v22 = *(style + 7);
  characterProperties = [v8 characterProperties];
  [WBCharacterProperties readFrom:fromCopy wrdProperties:v21 tracked:v22 document:document properties:characterProperties];

  characterProperties2 = [v8 characterProperties];
  [characterProperties2 clearBaseStyle];

  paragraphProperties2 = [v8 paragraphProperties];
  [paragraphProperties2 clearBaseStyle];

  [self readTableProperties:fromCopy style:v8 from:style];
}

+ (void)readTableProperties:(id)properties style:(id)style from:(void *)from
{
  propertiesCopy = properties;
  styleCopy = style;
  if ([styleCopy type] == 3)
  {
    v8 = *(from + 8);
    tableRowProperties = [styleCopy tableRowProperties];
    [WBTableRowProperties readFrom:propertiesCopy wrdProperties:v8 tracked:0 properties:tableRowProperties];

    tableCellProperties = [styleCopy tableCellProperties];
    [WBTableCellStyleProperties readFrom:v8 properties:tableCellProperties];

    v11 = 0;
    do
    {
      v12 = [styleCopy tableStyleOverrideForPart:v11];
      [WBTableStyleOverride readFrom:propertiesCopy wrdStyle:from style:styleCopy part:v11 tableStyleOverride:v12];

      v11 = (v11 + 1);
    }

    while (v11 != 12);
  }
}

@end