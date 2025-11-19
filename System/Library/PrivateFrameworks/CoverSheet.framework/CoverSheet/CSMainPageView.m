@interface CSMainPageView
- (UIEdgeInsets)_logoutButtonInsets;
- (id)presentationRegions;
- (void)_layoutLogoutButtonView;
- (void)_layoutWallpaperEffectView;
- (void)_updateLogoutButtonForLegibilitySettings;
- (void)layoutSubviews;
- (void)setFakeWallpaperVisible:(BOOL)a3;
- (void)setLogoutButtonView:(id)a3;
- (void)setWallpaperEffectView:(id)a3;
- (void)updateForLegibilitySettings:(id)a3;
- (void)updateForPresentation:(id)a3;
@end

@implementation CSMainPageView

- (id)presentationRegions
{
  v3 = [MEMORY[0x277CBEB18] array];
  if (self->_logoutButtonView)
  {
    v4 = [CSRegion regionForCoordinateSpace:?];
    v5 = [v4 role:1];
    [v3 addObject:v5];
  }

  return v3;
}

- (void)setLogoutButtonView:(id)a3
{
  v5 = a3;
  logoutButtonView = self->_logoutButtonView;
  if (logoutButtonView != v5)
  {
    v7 = v5;
    [(CSVibrantWallpaperButton *)logoutButtonView removeFromSuperview];
    objc_storeStrong(&self->_logoutButtonView, a3);
    if (self->_logoutButtonView)
    {
      [(CSMainPageView *)self addSubview:?];
      [(CSVibrantWallpaperButton *)self->_logoutButtonView sizeToFit];
      [(CSMainPageView *)self _updateLogoutButtonForLegibilitySettings];
    }

    logoutButtonView = [(CSMainPageView *)self setNeedsLayout];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](logoutButtonView, v5);
}

- (void)setWallpaperEffectView:(id)a3
{
  v5 = a3;
  if (self->_wallpaperEffectView != v5)
  {
    v7 = v5;
    [(SBWallpaperEffectView *)v5 removeFromSuperview];
    objc_storeStrong(&self->_wallpaperEffectView, a3);
    wallpaperEffectView = self->_wallpaperEffectView;
    if (wallpaperEffectView)
    {
      [(SBWallpaperEffectView *)wallpaperEffectView bs_setHitTestingDisabled:1];
      [(CSMainPageView *)self addSubview:self->_wallpaperEffectView];
    }

    [(CSMainPageView *)self setNeedsLayout];
    v5 = v7;
  }
}

- (void)setFakeWallpaperVisible:(BOOL)a3
{
  if (self->_fakeWallpaperVisible != a3)
  {
    v4 = a3;
    self->_fakeWallpaperVisible = a3;
    v5 = [(CSVibrantWallpaperButton *)self->_logoutButtonView effectView];
    [v5 setFullscreen:v4];
  }
}

- (void)updateForLegibilitySettings:(id)a3
{
  v5 = a3;
  if (([(_UILegibilitySettings *)self->_legibilitySettings sb_isEqualToLegibilitySettings:?]& 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, a3);
    [(CSMainPageView *)self _updateLogoutButtonForLegibilitySettings];
  }
}

- (void)updateForPresentation:(id)a3
{
  v5 = [a3 regionsIntersectingCoordinateSpace:self->_logoutButtonView];
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
  v3 = [(_UILegibilitySettings *)self->_legibilitySettings style];
  v4 = [MEMORY[0x277D65E90] rootSettings];
  [v4 logoutButtonTextStrengthForStyle:v3];
  v6 = v5;

  if (![(SBUIVibrantButton *)self->_logoutButtonView isVibrancyAllowed])
  {
    v7 = [MEMORY[0x277D65E90] rootSettings];
    [v7 logoutButtonGlyphStrengthForStyle:v3];
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