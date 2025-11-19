@interface CPSAlternateRoutesScrollView
- (UIEdgeInsets)_tableContentInset;
- (void)setAccessoryView:(id)a3 atEdge:(int64_t)a4;
@end

@implementation CPSAlternateRoutesScrollView

- (void)setAccessoryView:(id)a3 atEdge:(int64_t)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (UIEdgeInsets)_tableContentInset
{
  UIEdgeInsetsMake_0();
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end