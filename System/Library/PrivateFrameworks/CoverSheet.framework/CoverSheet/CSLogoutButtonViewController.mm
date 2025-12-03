@interface CSLogoutButtonViewController
- (CSUserSessionControlling)userSessionController;
- (CSWallpaperColorProvider)wallpaperColorProvider;
- (CSWallpaperProviding)wallpaperProvider;
- (void)_buttonPressed:(id)pressed;
- (void)loadView;
- (void)setWallpaperColorProvider:(id)provider;
- (void)setWallpaperViewProvider:(id)provider;
@end

@implementation CSLogoutButtonViewController

- (void)setWallpaperViewProvider:(id)provider
{
  obj = provider;
  WeakRetained = objc_loadWeakRetained(&self->_wallpaperProvider);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_wallpaperProvider, obj);
    viewIfLoaded = [(CSLogoutButtonViewController *)self viewIfLoaded];
    [viewIfLoaded setWallpaperProvider:obj];
  }
}

- (void)setWallpaperColorProvider:(id)provider
{
  obj = provider;
  WeakRetained = objc_loadWeakRetained(&self->_wallpaperColorProvider);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_wallpaperColorProvider, obj);
    viewIfLoaded = [(CSLogoutButtonViewController *)self viewIfLoaded];
    [viewIfLoaded setWallpaperColorProvider:obj];
  }
}

- (void)loadView
{
  v3 = [CSVibrantWallpaperButton alloc];
  v9 = [(CSVibrantWallpaperButton *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  WeakRetained = objc_loadWeakRetained(&self->_wallpaperColorProvider);
  [(CSVibrantWallpaperButton *)v9 setWallpaperColorProvider:WeakRetained];

  v5 = objc_loadWeakRetained(&self->_wallpaperProvider);
  [(CSVibrantWallpaperButton *)v9 setWallpaperProvider:v5];

  [(CSLogoutButtonViewController *)self setView:v9];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [mainBundle localizedStringForKey:@"LOGOUT_BUTTON_TITLE" value:&stru_28302FDA0 table:@"SpringBoard"];
  [(SBUIVibrantButton *)v9 setTitle:v7];

  v8 = [MEMORY[0x277D755B8] imageNamed:@"SignOut"];
  [(SBUIVibrantButton *)v9 setGlyphImage:v8];

  [(CSVibrantWallpaperButton *)v9 addTarget:self action:sel__buttonPressed_ forControlEvents:64];
}

- (void)_buttonPressed:(id)pressed
{
  WeakRetained = objc_loadWeakRetained(&self->_userSessionController);
  [WeakRetained logout];
}

- (CSUserSessionControlling)userSessionController
{
  WeakRetained = objc_loadWeakRetained(&self->_userSessionController);

  return WeakRetained;
}

- (CSWallpaperProviding)wallpaperProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_wallpaperProvider);

  return WeakRetained;
}

- (CSWallpaperColorProvider)wallpaperColorProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_wallpaperColorProvider);

  return WeakRetained;
}

@end