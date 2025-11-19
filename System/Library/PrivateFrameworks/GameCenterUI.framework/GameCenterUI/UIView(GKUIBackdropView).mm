@interface UIView(GKUIBackdropView)
+ (id)_gkStandardBackdropView;
- (id)_gkApplyFakeStatusBarView;
- (id)_gkBackdropView;
- (uint64_t)_gkSetDrawsAsBackdropOverlay:()GKUIBackdropView;
- (void)_gkApplyBackdropViewIfNeededWithGroupName:()GKUIBackdropView;
- (void)_gkApplyBackdropViewWithGroupName:()GKUIBackdropView;
- (void)_gkSetDrawsAsKnockout:()GKUIBackdropView inBackdrop:;
- (void)_gkUseAsModalSheetBackgroundWithGroupName:()GKUIBackdropView;
@end

@implementation UIView(GKUIBackdropView)

- (uint64_t)_gkSetDrawsAsBackdropOverlay:()GKUIBackdropView
{
  [a1 _setDrawsAsBackdropOverlay:?];

  return [a1 setAlpha:0.35];
}

- (void)_gkSetDrawsAsKnockout:()GKUIBackdropView inBackdrop:
{
  v7 = a4;
  if (GKHasSlowerGraphicsHardware_onceToken_0 != -1)
  {
    [UIView(GKUIBackdropView) _gkSetDrawsAsKnockout:inBackdrop:];
  }

  if (GKHasSlowerGraphicsHardware_processorCount_0 > 1)
  {
    if (a3)
    {
      v6 = 7;
    }

    else
    {
      v6 = 0;
    }

    [a1 _setBackdropMaskViewFlags:v6];
    [v7 updateMaskViewsForView:a1];
  }

  else if ([a1 _drawsAsBackdropOverlay] != a3)
  {
    [a1 _setDrawsAsBackdropOverlay:a3];
  }
}

+ (id)_gkStandardBackdropView
{
  v0 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2010];

  return v0;
}

- (id)_gkApplyFakeStatusBarView
{
  [a1 frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = [MEMORY[0x277D75128] sharedApplication];
  [v8 statusBarHeight];
  v10 = v9;

  v11 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v3, v5, v7, v10}];
  v12 = [objc_opt_class() _gkStandardBackdropView];
  [v11 setAutoresizingMask:34];
  [v11 addSubview:v12];
  [a1 addSubview:v11];

  return v11;
}

- (id)_gkBackdropView
{
  v1 = a1;
  if (v1)
  {
    do
    {
      v2 = v1;
      v3 = objc_getAssociatedObject(v1, @"GKBackdropView");
      v1 = [v1 superview];
    }

    while (v1 && !v3);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_gkApplyBackdropViewWithGroupName:()GKUIBackdropView
{
  v5 = a3;
  v4 = objc_getAssociatedObject(a1, @"GKBackdropView");
  if (v5)
  {
    [v4 setGroupName:v5];
  }

  [a1 insertSubview:v4 atIndex:0];
}

- (void)_gkApplyBackdropViewIfNeededWithGroupName:()GKUIBackdropView
{
  v7 = a3;
  v4 = objc_getAssociatedObject(a1, @"GKBackdropView");
  if (!v4)
  {
    v4 = [objc_opt_class() _gkStandardBackdropView];
    objc_setAssociatedObject(a1, @"GKBackdropView", v4, 1);
    if (v7)
    {
      [v4 setGroupName:v7];
    }

    [a1 insertSubview:v4 atIndex:0];
    if (*MEMORY[0x277D0C258] == 1)
    {
      v5 = [MEMORY[0x277D75418] currentDevice];
      v6 = [v5 userInterfaceIdiom];

      if (v6 != 1)
      {
        [v4 frame];
        [v4 setFrame:?];
        [v4 setAutoresizingMask:0];
      }
    }
  }
}

- (void)_gkUseAsModalSheetBackgroundWithGroupName:()GKUIBackdropView
{
  [a1 _gkApplyBackdropViewIfNeededWithGroupName:?];
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    v4 = [MEMORY[0x277D0C8C8] sharedTheme];
    [v4 formSheetCornerRadius];
    v6 = v5;
    v7 = [a1 layer];
    [v7 setCornerRadius:v6];

    [a1 setClipsToBounds:1];
  }
}

@end