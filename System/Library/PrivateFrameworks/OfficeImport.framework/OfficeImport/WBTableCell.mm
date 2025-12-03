@interface WBTableCell
+ (void)readFrom:(id)from textRun:(WrdTextRun *)run with:(void *)with tracked:(void *)tracked row:(id)row index:(unint64_t)index cell:(id)cell;
@end

@implementation WBTableCell

+ (void)readFrom:(id)from textRun:(WrdTextRun *)run with:(void *)with tracked:(void *)tracked row:(id)row index:(unint64_t)index cell:(id)cell
{
  fromCopy = from;
  rowCopy = row;
  cellCopy = cell;
  properties = [cellCopy properties];
  [WBTableCellBodyProperties readFrom:with tracked:tracked properties:properties index:index];

  table = [rowCopy table];
  text = [cellCopy text];
  [WBText readFrom:fromCopy text:text textRun:run];
  if ([table nestingLevel] == 1)
  {
    v19 = 7;
  }

  else
  {
    v19 = 13;
  }

  [text removeLastCharacter:v19];
}

@end