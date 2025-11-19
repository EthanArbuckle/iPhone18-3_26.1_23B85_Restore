@interface IKShelfElement
- (BOOL)isCentered;
- (NSString)rowHeight;
- (unint64_t)columnCount;
@end

@implementation IKShelfElement

- (unint64_t)columnCount
{
  v2 = [(IKViewElement *)self style];
  v3 = [v2 columnCount];

  return v3 & ~(v3 >> 63);
}

- (BOOL)isCentered
{
  v2 = [(IKViewElement *)self style];
  v3 = [v2 elementAlignment] == 2;

  return v3;
}

- (NSString)rowHeight
{
  v2 = [(IKViewElement *)self style];
  v3 = [v2 rowHeight];

  return v3;
}

@end