@interface UIViewController(SUUIStackedBar)
- (double)SUUIStackedBarSplit;
- (void)setSUUIStackedBarSplit:()SUUIStackedBar;
@end

@implementation UIViewController(SUUIStackedBar)

- (double)SUUIStackedBarSplit
{
  v1 = objc_getAssociatedObject(a1, "com.apple.iTunesStoreUI.stackedBarSplit");
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (void)setSUUIStackedBarSplit:()SUUIStackedBar
{
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  objc_setAssociatedObject(a1, "com.apple.iTunesStoreUI.stackedBarSplit", v2, 1);
}

@end