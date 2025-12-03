@interface UIView(_SFBarItem)
- (void)sf_configureLargeContentViewerForBarItem:()_SFBarItem;
- (void)sf_configureLargeContentViewerWithImage:()_SFBarItem title:;
@end

@implementation UIView(_SFBarItem)

- (void)sf_configureLargeContentViewerForBarItem:()_SFBarItem
{
  [self setShowsLargeContentViewer:1];
  v5 = MEMORY[0x1E69DCAB8];
  v6 = SFSystemImageNameForBarItemFilled(a3, 0);
  v7 = [v5 _systemImageNamed:v6];
  [self setLargeContentImage:v7];

  v8 = SFAccessibilityTitleForBarItem(a3);
  [self setLargeContentTitle:v8];
}

- (void)sf_configureLargeContentViewerWithImage:()_SFBarItem title:
{
  v7 = a4;
  v6 = a3;
  [self setShowsLargeContentViewer:1];
  [self setLargeContentImage:v6];

  [self setLargeContentTitle:v7];
}

@end