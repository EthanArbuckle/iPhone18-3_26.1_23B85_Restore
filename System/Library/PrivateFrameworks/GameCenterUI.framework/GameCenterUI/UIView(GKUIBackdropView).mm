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
  [self _setDrawsAsBackdropOverlay:?];

  return [self setAlpha:0.35];
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

    [self _setBackdropMaskViewFlags:v6];
    [v7 updateMaskViewsForView:self];
  }

  else if ([self _drawsAsBackdropOverlay] != a3)
  {
    [self _setDrawsAsBackdropOverlay:a3];
  }
}

+ (id)_gkStandardBackdropView
{
  v0 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2010];

  return v0;
}

- (id)_gkApplyFakeStatusBarView
{
  [self frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] statusBarHeight];
  v10 = v9;

  v11 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v3, v5, v7, v10}];
  _gkStandardBackdropView = [objc_opt_class() _gkStandardBackdropView];
  [v11 setAutoresizingMask:34];
  [v11 addSubview:_gkStandardBackdropView];
  [self addSubview:v11];

  return v11;
}

- (id)_gkBackdropView
{
  selfCopy = self;
  if (selfCopy)
  {
    do
    {
      v2 = selfCopy;
      v3 = objc_getAssociatedObject(selfCopy, @"GKBackdropView");
      selfCopy = [selfCopy superview];
    }

    while (selfCopy && !v3);
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
  v4 = objc_getAssociatedObject(self, @"GKBackdropView");
  if (v5)
  {
    [v4 setGroupName:v5];
  }

  [self insertSubview:v4 atIndex:0];
}

- (void)_gkApplyBackdropViewIfNeededWithGroupName:()GKUIBackdropView
{
  v7 = a3;
  _gkStandardBackdropView = objc_getAssociatedObject(self, @"GKBackdropView");
  if (!_gkStandardBackdropView)
  {
    _gkStandardBackdropView = [objc_opt_class() _gkStandardBackdropView];
    objc_setAssociatedObject(self, @"GKBackdropView", _gkStandardBackdropView, 1);
    if (v7)
    {
      [_gkStandardBackdropView setGroupName:v7];
    }

    [self insertSubview:_gkStandardBackdropView atIndex:0];
    if (*MEMORY[0x277D0C258] == 1)
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if (userInterfaceIdiom != 1)
      {
        [_gkStandardBackdropView frame];
        [_gkStandardBackdropView setFrame:?];
        [_gkStandardBackdropView setAutoresizingMask:0];
      }
    }
  }
}

- (void)_gkUseAsModalSheetBackgroundWithGroupName:()GKUIBackdropView
{
  [self _gkApplyBackdropViewIfNeededWithGroupName:?];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    mEMORY[0x277D0C8C8] = [MEMORY[0x277D0C8C8] sharedTheme];
    [mEMORY[0x277D0C8C8] formSheetCornerRadius];
    v6 = v5;
    layer = [self layer];
    [layer setCornerRadius:v6];

    [self setClipsToBounds:1];
  }
}

@end