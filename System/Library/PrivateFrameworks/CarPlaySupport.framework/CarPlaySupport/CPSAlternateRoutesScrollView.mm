@interface CPSAlternateRoutesScrollView
- (UIEdgeInsets)_tableContentInset;
- (void)setAccessoryView:(id)view atEdge:(int64_t)edge;
@end

@implementation CPSAlternateRoutesScrollView

- (void)setAccessoryView:(id)view atEdge:(int64_t)edge
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
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