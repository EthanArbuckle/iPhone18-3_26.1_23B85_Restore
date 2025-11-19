@interface PBUIAccessibilityTintView
- (PBUIAccessibilityTintView)initWithVariant:(int64_t)a3 wallpaperPresenter:(id)a4 wallpaperLegibilityProvider:(id)a5;
- (PBUIFakeBlurObserver)observer;
- (PBUILegacyWallpaperPresenting)wallpaperPresenter;
- (PBUIWallpaperLegibilityProviding)wallpaperLegibilityProvider;
- (void)_updateBackgroundColor;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
@end

@implementation PBUIAccessibilityTintView

- (PBUIAccessibilityTintView)initWithVariant:(int64_t)a3 wallpaperPresenter:(id)a4 wallpaperLegibilityProvider:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = PBUIAccessibilityTintView;
  v10 = [(PBUIAccessibilityTintView *)&v13 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v11 = v10;
  if (v10)
  {
    [(PBUIAccessibilityTintView *)v10 setAutoresizingMask:18];
    v11->_variant = a3;
    objc_storeWeak(&v11->_wallpaperPresenter, v8);
    objc_storeWeak(&v11->_wallpaperLegibilityProvider, v9);
    v11->_shouldMatchWallpaperPosition = 1;
    [v8 addObserver:v11 forVariant:v11->_variant];
    [(PBUIAccessibilityTintView *)v11 _updateBackgroundColor];
  }

  return v11;
}

- (void)dealloc
{
  v3 = [(PBUIAccessibilityTintView *)self wallpaperPresenter];
  [v3 removeObserver:self forVariant:self->_variant];

  v4.receiver = self;
  v4.super_class = PBUIAccessibilityTintView;
  [(PBUIAccessibilityTintView *)&v4 dealloc];
}

- (void)didMoveToWindow
{
  v3 = [(PBUIAccessibilityTintView *)self superview];
  [v3 bounds];
  [(PBUIAccessibilityTintView *)self setFrame:?];
}

- (void)didMoveToSuperview
{
  v3 = [(PBUIAccessibilityTintView *)self superview];
  [v3 bounds];
  [(PBUIAccessibilityTintView *)self setFrame:?];
}

- (void)_updateBackgroundColor
{
  v4 = [(PBUIAccessibilityTintView *)self wallpaperLegibilityProvider];
  v3 = [v4 averageColorForVariant:self->_variant];
  [(PBUIAccessibilityTintView *)self setBackgroundColor:v3];
}

- (PBUIFakeBlurObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (PBUILegacyWallpaperPresenting)wallpaperPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_wallpaperPresenter);

  return WeakRetained;
}

- (PBUIWallpaperLegibilityProviding)wallpaperLegibilityProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_wallpaperLegibilityProvider);

  return WeakRetained;
}

@end