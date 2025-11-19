@interface UIView(_SFBarItem)
- (void)sf_configureLargeContentViewerForBarItem:()_SFBarItem;
- (void)sf_configureLargeContentViewerWithImage:()_SFBarItem title:;
@end

@implementation UIView(_SFBarItem)

- (void)sf_configureLargeContentViewerForBarItem:()_SFBarItem
{
  [a1 setShowsLargeContentViewer:1];
  v5 = MEMORY[0x1E69DCAB8];
  v6 = SFSystemImageNameForBarItemFilled(a3, 0);
  v7 = [v5 _systemImageNamed:v6];
  [a1 setLargeContentImage:v7];

  v8 = SFAccessibilityTitleForBarItem(a3);
  [a1 setLargeContentTitle:v8];
}

- (void)sf_configureLargeContentViewerWithImage:()_SFBarItem title:
{
  v7 = a4;
  v6 = a3;
  [a1 setShowsLargeContentViewer:1];
  [a1 setLargeContentImage:v6];

  [a1 setLargeContentTitle:v7];
}

@end