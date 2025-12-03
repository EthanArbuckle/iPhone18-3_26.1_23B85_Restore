@interface CSVibrantWallpaperButton
- (CSVibrantWallpaperButton)initWithFrame:(CGRect)frame;
- (CSWallpaperColorProvider)wallpaperColorProvider;
- (CSWallpaperProviding)wallpaperProvider;
- (void)_updateVibrancy;
- (void)setLegibilitySettings:(id)settings;
- (void)setWallpaperProvider:(id)provider;
@end

@implementation CSVibrantWallpaperButton

- (CSVibrantWallpaperButton)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = CSVibrantWallpaperButton;
  v3 = [(SBUIVibrantButton *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    [(SBUIVibrantButton *)v3 setVibrancyAllowed:+[CSVibrancyUtility supportsVibrancy]];
  }

  return v3;
}

- (void)setWallpaperProvider:(id)provider
{
  obj = provider;
  WeakRetained = objc_loadWeakRetained(&self->_wallpaperProvider);
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_wallpaperProvider, obj);
    v5 = [obj createCoverSheetWallpaperViewWithTransformOptions:0];
    effectView = self->_effectView;
    self->_effectView = v5;

    [(CSWallpaperView *)self->_effectView setCoverSheetWallpaperStyle:1];
    [(CSWallpaperView *)self->_effectView setFullscreen:0];
    [(CSVibrantWallpaperButton *)self _updateVibrancy];
  }
}

- (void)setLegibilitySettings:(id)settings
{
  v4.receiver = self;
  v4.super_class = CSVibrantWallpaperButton;
  [(SBUIVibrantButton *)&v4 setLegibilitySettings:settings];
  [(CSVibrantWallpaperButton *)self _updateVibrancy];
}

- (void)_updateVibrancy
{
  if (+[CSVibrancyUtility supportsVibrancy])
  {
    effectView = self->_effectView;
    WeakRetained = objc_loadWeakRetained(&self->_wallpaperColorProvider);
    [CSVibrancyUtility updateVibrantView:self backgroundView:effectView colorProvider:WeakRetained];
  }
}

- (CSWallpaperColorProvider)wallpaperColorProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_wallpaperColorProvider);

  return WeakRetained;
}

- (CSWallpaperProviding)wallpaperProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_wallpaperProvider);

  return WeakRetained;
}

@end