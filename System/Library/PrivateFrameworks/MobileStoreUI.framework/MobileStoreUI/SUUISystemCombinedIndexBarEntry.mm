@interface SUUISystemCombinedIndexBarEntry
- (CGSize)_calculatedContentSize;
- (SUUISystemCombinedIndexBarEntry)init;
- (void)_drawContentInRect:(CGRect)rect;
@end

@implementation SUUISystemCombinedIndexBarEntry

- (SUUISystemCombinedIndexBarEntry)init
{
  v5.receiver = self;
  v5.super_class = SUUISystemCombinedIndexBarEntry;
  v2 = [(SUUISystemCombinedIndexBarEntry *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SUUIIndexBarEntry *)v2 setEntryType:3];
  }

  return v3;
}

- (CGSize)_calculatedContentSize
{
  [objc_opt_class() _dotDiameter];
  v3 = v2;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_drawContentInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  tintColor = [(SUUIIndexBarEntry *)self tintColor];
  [tintColor setFill];

  v8 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{x, y, width, height}];
  [v8 fill];
}

@end