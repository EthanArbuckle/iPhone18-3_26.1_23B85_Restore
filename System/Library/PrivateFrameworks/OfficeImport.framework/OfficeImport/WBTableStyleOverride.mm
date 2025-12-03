@interface WBTableStyleOverride
+ (void)prepareForWriting:(id)writing tableStyleOverride:(id)override wrdProperties:(WrdCharacterProperties *)properties tracked:(WrdCharacterProperties *)tracked;
+ (void)readFrom:(id)from wrdStyle:(void *)style style:(id)a5 part:(int)part tableStyleOverride:(id)override;
@end

@implementation WBTableStyleOverride

+ (void)readFrom:(id)from wrdStyle:(void *)style style:(id)a5 part:(int)part tableStyleOverride:(id)override
{
  v8 = *&part;
  fromCopy = from;
  v11 = a5;
  overrideCopy = override;
  [overrideCopy setStyle:v11];
  [overrideCopy setPart:v8];
  styleSheet = [v11 styleSheet];
  document = [styleSheet document];

  if (WrdStyle::isTablePartDefinedForParagraphProperties(style, v8))
  {
    ParaPropsReference = WrdStyle::getParaPropsReference(style, v8);
    mutableParagraphProperties = [overrideCopy mutableParagraphProperties];
    [WBParagraphProperties readFrom:fromCopy wrdProperties:ParaPropsReference tracked:0 document:document properties:mutableParagraphProperties];
  }

  if (WrdStyle::isTablePartDefinedForCharacterProperties(style, v8))
  {
    CharPropsReference = WrdStyle::getCharPropsReference(style, v8);
    mutableCharacterProperties = [overrideCopy mutableCharacterProperties];
    [WBCharacterProperties readFrom:fromCopy wrdProperties:CharPropsReference tracked:0 document:document properties:mutableCharacterProperties];
  }

  if (WrdStyle::isTablePartDefinedForTableProperties(style, v8))
  {
    TableProps = WrdStyle::getTableProps(style, v8);
    v20 = (*(*TableProps + 24))(TableProps);
    WrdStyle::takeTableProps(style, v8, v20);
    mutableTableRowProperties = [overrideCopy mutableTableRowProperties];
    [WBTableRowProperties readFrom:fromCopy wrdProperties:v20 tracked:0 properties:mutableTableRowProperties];

    mutableTableCellStyleProperties = [overrideCopy mutableTableCellStyleProperties];
    [WBTableCellStyleProperties readFrom:v20 properties:mutableTableCellStyleProperties];
  }
}

+ (void)prepareForWriting:(id)writing tableStyleOverride:(id)override wrdProperties:(WrdCharacterProperties *)properties tracked:(WrdCharacterProperties *)tracked
{
  writingCopy = writing;
  characterProperties = [override characterProperties];
  [WBCharacterProperties prepareForWriting:writingCopy properties:characterProperties wrdProperties:properties tracked:tracked];
}

@end