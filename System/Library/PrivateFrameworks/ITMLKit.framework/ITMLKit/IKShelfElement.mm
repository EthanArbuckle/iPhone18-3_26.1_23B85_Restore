@interface IKShelfElement
- (BOOL)isCentered;
- (NSString)rowHeight;
- (unint64_t)columnCount;
@end

@implementation IKShelfElement

- (unint64_t)columnCount
{
  style = [(IKViewElement *)self style];
  columnCount = [style columnCount];

  return columnCount & ~(columnCount >> 63);
}

- (BOOL)isCentered
{
  style = [(IKViewElement *)self style];
  v3 = [style elementAlignment] == 2;

  return v3;
}

- (NSString)rowHeight
{
  style = [(IKViewElement *)self style];
  rowHeight = [style rowHeight];

  return rowHeight;
}

@end