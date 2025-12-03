@interface PBUIAccessibilityTintView
- (PBUIAccessibilityTintView)initWithVariant:(int64_t)variant wallpaperPresenter:(id)presenter wallpaperLegibilityProvider:(id)provider;
- (PBUIFakeBlurObserver)observer;
- (PBUILegacyWallpaperPresenting)wallpaperPresenter;
- (PBUIWallpaperLegibilityProviding)wallpaperLegibilityProvider;
- (void)_updateBackgroundColor;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
@end

@implementation PBUIAccessibilityTintView

- (PBUIAccessibilityTintView)initWithVariant:(int64_t)variant wallpaperPresenter:(id)presenter wallpaperLegibilityProvider:(id)provider
{
  presenterCopy = presenter;
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = PBUIAccessibilityTintView;
  v10 = [(PBUIAccessibilityTintView *)&v13 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v11 = v10;
  if (v10)
  {
    [(PBUIAccessibilityTintView *)v10 setAutoresizingMask:18];
    v11->_variant = variant;
    objc_storeWeak(&v11->_wallpaperPresenter, presenterCopy);
    objc_storeWeak(&v11->_wallpaperLegibilityProvider, providerCopy);
    v11->_shouldMatchWallpaperPosition = 1;
    [presenterCopy addObserver:v11 forVariant:v11->_variant];
    [(PBUIAccessibilityTintView *)v11 _updateBackgroundColor];
  }

  return v11;
}

- (void)dealloc
{
  wallpaperPresenter = [(PBUIAccessibilityTintView *)self wallpaperPresenter];
  [wallpaperPresenter removeObserver:self forVariant:self->_variant];

  v4.receiver = self;
  v4.super_class = PBUIAccessibilityTintView;
  [(PBUIAccessibilityTintView *)&v4 dealloc];
}

- (void)didMoveToWindow
{
  superview = [(PBUIAccessibilityTintView *)self superview];
  [superview bounds];
  [(PBUIAccessibilityTintView *)self setFrame:?];
}

- (void)didMoveToSuperview
{
  superview = [(PBUIAccessibilityTintView *)self superview];
  [superview bounds];
  [(PBUIAccessibilityTintView *)self setFrame:?];
}

- (void)_updateBackgroundColor
{
  wallpaperLegibilityProvider = [(PBUIAccessibilityTintView *)self wallpaperLegibilityProvider];
  v3 = [wallpaperLegibilityProvider averageColorForVariant:self->_variant];
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