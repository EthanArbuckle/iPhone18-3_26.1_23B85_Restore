@interface WBTableStyleOverride
+ (void)prepareForWriting:(id)a3 tableStyleOverride:(id)a4 wrdProperties:(WrdCharacterProperties *)a5 tracked:(WrdCharacterProperties *)a6;
+ (void)readFrom:(id)a3 wrdStyle:(void *)a4 style:(id)a5 part:(int)a6 tableStyleOverride:(id)a7;
@end

@implementation WBTableStyleOverride

+ (void)readFrom:(id)a3 wrdStyle:(void *)a4 style:(id)a5 part:(int)a6 tableStyleOverride:(id)a7
{
  v8 = *&a6;
  v23 = a3;
  v11 = a5;
  v12 = a7;
  [v12 setStyle:v11];
  [v12 setPart:v8];
  v13 = [v11 styleSheet];
  v14 = [v13 document];

  if (WrdStyle::isTablePartDefinedForParagraphProperties(a4, v8))
  {
    ParaPropsReference = WrdStyle::getParaPropsReference(a4, v8);
    v16 = [v12 mutableParagraphProperties];
    [WBParagraphProperties readFrom:v23 wrdProperties:ParaPropsReference tracked:0 document:v14 properties:v16];
  }

  if (WrdStyle::isTablePartDefinedForCharacterProperties(a4, v8))
  {
    CharPropsReference = WrdStyle::getCharPropsReference(a4, v8);
    v18 = [v12 mutableCharacterProperties];
    [WBCharacterProperties readFrom:v23 wrdProperties:CharPropsReference tracked:0 document:v14 properties:v18];
  }

  if (WrdStyle::isTablePartDefinedForTableProperties(a4, v8))
  {
    TableProps = WrdStyle::getTableProps(a4, v8);
    v20 = (*(*TableProps + 24))(TableProps);
    WrdStyle::takeTableProps(a4, v8, v20);
    v21 = [v12 mutableTableRowProperties];
    [WBTableRowProperties readFrom:v23 wrdProperties:v20 tracked:0 properties:v21];

    v22 = [v12 mutableTableCellStyleProperties];
    [WBTableCellStyleProperties readFrom:v20 properties:v22];
  }
}

+ (void)prepareForWriting:(id)a3 tableStyleOverride:(id)a4 wrdProperties:(WrdCharacterProperties *)a5 tracked:(WrdCharacterProperties *)a6
{
  v10 = a3;
  v9 = [a4 characterProperties];
  [WBCharacterProperties prepareForWriting:v10 properties:v9 wrdProperties:a5 tracked:a6];
}

@end