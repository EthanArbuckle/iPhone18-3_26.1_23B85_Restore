@interface UISearchBar(SafariExtras)
+ (id)sf_installSearchBarInTableView:()SafariExtras includeSeparator:;
@end

@implementation UISearchBar(SafariExtras)

+ (id)sf_installSearchBarInTableView:()SafariExtras includeSeparator:
{
  v4 = off_1E7218D10;
  if (!a4)
  {
    v4 = 0x1E69DCF08;
  }

  v5 = *v4;
  v6 = a3;
  v7 = objc_alloc_init(v5);
  [v7 setAutoresizingMask:2];
  [v6 bounds];
  Width = CGRectGetWidth(v12);
  [v7 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  [v7 setFrame:{0.0, 0.0, Width, _SFRoundFloatToPixels(v9)}];
  [v7 setSearchBarStyle:2];
  [v6 setTableHeaderView:v7];
  [v7 frame];
  [v6 _setAllowedNavigationOverlapAmount:CGRectGetHeight(v13)];
  [v6 _setFirstResponderKeyboardAvoidanceEnabled:0];

  return v7;
}

@end