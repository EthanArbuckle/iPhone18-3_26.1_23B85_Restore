@interface CSMainPageView
- (UIEdgeInsets)_logoutButtonInsets;
- (id)presentationRegions;
- (void)_layoutLogoutButtonView;
- (void)_layoutWallpaperEffectView;
- (void)_updateLogoutButtonForLegibilitySettings;
- (void)layoutSubviews;
- (void)setFakeWallpaperVisible:(BOOL)visible;
- (void)setLogoutButtonView:(id)view;
- (void)setWallpaperEffectView:(id)view;
- (void)updateForLegibilitySettings:(id)settings;
- (void)updateForPresentation:(id)presentation;
@end

@implementation CSMainPageView

- (id)presentationRegions
{
  array = [MEMORY[0x277CBEB18] array];
  if (self->_logoutButtonView)
  {
    v4 = [CSRegion regionForCoordinateSpace:?];
    v5 = [v4 role:1];
    [array addObject:v5];
  }

  return array;
}

- (void)setLogoutButtonView:(id)view
{
  viewCopy = view;
  logoutButtonView = self->_logoutButtonView;
  if (logoutButtonView != viewCopy)
  {
    v7 = viewCopy;
    [(CSVibrantWallpaperButton *)logoutButtonView removeFromSuperview];
    objc_storeStrong(&self->_logoutButtonView, view);
    if (self->_logoutButtonView)
    {
      [(CSMainPageView *)self addSubview:?];
      [(CSVibrantWallpaperButton *)self->_logoutButtonView sizeToFit];
      [(CSMainPageView *)self _updateLogoutButtonForLegibilitySettings];
    }

    logoutButtonView = [(CSMainPageView *)self setNeedsLayout];
    viewCopy = v7;
  }

  MEMORY[0x2821F96F8](logoutButtonView, viewCopy);
}

- (void)setWallpaperEffectView:(id)view
{
  viewCopy = view;
  if (self->_wallpaperEffectView != viewCopy)
  {
    v7 = viewCopy;
    [(SBWallpaperEffectView *)viewCopy removeFromSuperview];
    objc_storeStrong(&self->_wallpaperEffectView, view);
    wallpaperEffectView = self->_wallpaperEffectView;
    if (wallpaperEffectView)
    {
      [(SBWallpaperEffectView *)wallpaperEffectView bs_setHitTestingDisabled:1];
      [(CSMainPageView *)self addSubview:self->_wallpaperEffectView];
    }

    [(CSMainPageView *)self setNeedsLayout];
    viewCopy = v7;
  }
}

- (void)setFakeWallpaperVisible:(BOOL)visible
{
  if (self->_fakeWallpaperVisible != visible)
  {
    visibleCopy = visible;
    self->_fakeWallpaperVisible = visible;
    effectView = [(CSVibrantWallpaperButton *)self->_logoutButtonView effectView];
    [effectView setFullscreen:visibleCopy];
  }
}

- (void)updateForLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (([(_UILegibilitySettings *)self->_legibilitySettings sb_isEqualToLegibilitySettings:?]& 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
    [(CSMainPageView *)self _updateLogoutButtonForLegibilitySettings];
  }
}

- (void)updateForPresentation:(id)presentation
{
  v5 = [presentation regionsIntersectingCoordinateSpace:self->_logoutButtonView];
  v4 = [v5 count] != 0;
  if (self->_logoutHugCorner != v4)
  {
    self->_logoutHugCorner = v4;
    [(CSMainPageView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  [(CSMainPageView *)self _layoutLogoutButtonView];
  [(CSMainPageView *)self _layoutWallpaperEffectView];
  [(CSMainPageView *)self sendSubviewToBack:self->_wallpaperEffectView];
  logoutButtonView = self->_logoutButtonView;

  [(CSMainPageView *)self bringSubviewToFront:logoutButtonView];
}

- (void)_layoutWallpaperEffectView
{
  wallpaperEffectView = self->_wallpaperEffectView;
  if (wallpaperEffectView)
  {
    [(CSMainPageView *)self bounds];

    [(SBWallpaperEffectView *)wallpaperEffectView setFrame:?];
  }
}

- (void)_layoutLogoutButtonView
{
  if (self->_logoutButtonView)
  {
    [(CSMainPageView *)self bounds];
    v4 = v3;
    v6 = v5;
    [(CSVibrantWallpaperButton *)self->_logoutButtonView frame];
    v8 = v7;
    v10 = v9;
    [(CSMainPageView *)self _logoutButtonInsets];
    v12 = v11;
    v14 = v13;
    v15 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1 ? v14 : v4 - v8 - v14;
    v16 = v6 - v10 - v12;
    [(CSVibrantWallpaperButton *)self->_logoutButtonView frame];
    v24.origin.x = v17;
    v24.origin.y = v18;
    v24.size.width = v19;
    v24.size.height = v20;
    v23.origin.x = v15;
    v23.origin.y = v16;
    v23.size.width = v8;
    v23.size.height = v10;
    if (!CGRectEqualToRect(v23, v24))
    {
      logoutButtonView = self->_logoutButtonView;

      [(CSVibrantWallpaperButton *)logoutButtonView setFrame:v15, v16, v8, v10];
    }
  }
}

- (void)_updateLogoutButtonForLegibilitySettings
{
  style = [(_UILegibilitySettings *)self->_legibilitySettings style];
  rootSettings = [MEMORY[0x277D65E90] rootSettings];
  [rootSettings logoutButtonTextStrengthForStyle:style];
  v6 = v5;

  if (![(SBUIVibrantButton *)self->_logoutButtonView isVibrancyAllowed])
  {
    rootSettings2 = [MEMORY[0x277D65E90] rootSettings];
    [rootSettings2 logoutButtonGlyphStrengthForStyle:style];
    v6 = v8;
  }

  [(SBUIVibrantButton *)self->_logoutButtonView setStrength:v6];
  logoutButtonView = self->_logoutButtonView;
  legibilitySettings = self->_legibilitySettings;

  [(CSVibrantWallpaperButton *)logoutButtonView setLegibilitySettings:legibilitySettings];
}

- (UIEdgeInsets)_logoutButtonInsets
{
  if (self->_logoutHugCorner)
  {
    v2 = 24.0;
  }

  else
  {
    v2 = 48.0;
  }

  if (self->_logoutHugCorner)
  {
    v3 = 21.0;
  }

  else
  {
    v3 = 42.0;
  }

  v4 = 0.0;
  v5 = 0.0;
  result.right = v2;
  result.bottom = v3;
  result.left = v5;
  result.top = v4;
  return result;
}

@end