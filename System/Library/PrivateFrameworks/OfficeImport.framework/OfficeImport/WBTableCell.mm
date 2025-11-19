@interface WBTableCell
+ (void)readFrom:(id)a3 textRun:(WrdTextRun *)a4 with:(void *)a5 tracked:(void *)a6 row:(id)a7 index:(unint64_t)a8 cell:(id)a9;
@end

@implementation WBTableCell

+ (void)readFrom:(id)a3 textRun:(WrdTextRun *)a4 with:(void *)a5 tracked:(void *)a6 row:(id)a7 index:(unint64_t)a8 cell:(id)a9
{
  v20 = a3;
  v14 = a7;
  v15 = a9;
  v16 = [v15 properties];
  [WBTableCellBodyProperties readFrom:a5 tracked:a6 properties:v16 index:a8];

  v17 = [v14 table];
  v18 = [v15 text];
  [WBText readFrom:v20 text:v18 textRun:a4];
  if ([v17 nestingLevel] == 1)
  {
    v19 = 7;
  }

  else
  {
    v19 = 13;
  }

  [v18 removeLastCharacter:v19];
}

@end