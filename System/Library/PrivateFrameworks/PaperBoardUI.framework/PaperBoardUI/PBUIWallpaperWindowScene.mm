@interface PBUIWallpaperWindowScene
- (BOOL)disallowHomescreenRasterization;
- (BOOL)disallowLockscreenRasterization;
- (BOOL)homescreenParallaxEnabled;
- (BOOL)homescreenStyleChangesDelayed;
- (BOOL)isHomescreenContentStatic;
- (BOOL)isLockscreenContentLiveWallpaper;
- (BOOL)isLockscreenContentStatic;
- (BOOL)liveWallpaperInteractive;
- (BOOL)liveWallpaperTouchActive;
- (BOOL)lockscreenParallaxEnabled;
- (BOOL)wallpaperAnimationSuspended;
- (BOOL)wallpaperRequired;
- (CGRect)lockscreenWallpaperContentsRect;
- (NSString)cachingIdentifier;
- (PBUIWallpaperWindowSceneStyleTransitionState)homescreenStyleTransitionState;
- (PBUIWallpaperWindowSceneStyleTransitionState)lockscreenStyleTransitionState;
- (UIColor)homescreenAverageColor;
- (UIColor)lockscreenAverageColor;
- (_UILegibilitySettings)homescreenLegibilitySettings;
- (_UILegibilitySettings)lockscreenLegibilitySettings;
- (double)homescreenContrast;
- (double)homescreenMinimumWallpaperScale;
- (double)homescreenParallaxFactor;
- (double)homescreenWallpaperAlpha;
- (double)homescreenZoomFactor;
- (double)lockscreenContrast;
- (double)lockscreenMinimumWallpaperScale;
- (double)lockscreenOnlyWallpaperAlpha;
- (double)lockscreenParallaxFactor;
- (double)lockscreenWallpaperAlpha;
- (double)lockscreenZoomFactor;
- (id)_wallpaperSceneClientSettings;
- (id)_wallpaperSceneSettings;
- (int64_t)liveWallpaperPlaybackState;
- (int64_t)wallpaperVariant;
- (void)_handleImageSlotRequestAction:(id)action;
- (void)_handlePreheatAction:(id)action;
- (void)_handleUpdateAndPrewarmAction:(id)action;
- (void)_handleUpdateLocationsAction:(id)action;
- (void)_handleWallpaperEffectImageRequestAction:(id)action;
- (void)_updateDisallowRasterizationForHomescreen:(BOOL)homescreen lockscreen:(BOOL)lockscreen;
- (void)_updateHomescreenStyleChangesDelayed:(BOOL)delayed;
- (void)_updateHomescreenStyleTransitionStateTo:(id)to from:(id)from;
- (void)_updateHomescreenWallpaperAlpha:(double)alpha;
- (void)_updateLiveWallpaperInteractive:(BOOL)interactive;
- (void)_updateLiveWallpaperTouchActive:(BOOL)active;
- (void)_updateLockscreenOnlyWallpaperAlpha:(double)alpha;
- (void)_updateLockscreenStyleTransitionStateTo:(id)to from:(id)from;
- (void)_updateLockscreenWallpaperAlpha:(double)alpha;
- (void)_updateLockscreenWallpaperContentsRect:(CGRect)rect;
- (void)_updateWallpaperAnimationSuspended:(BOOL)suspended;
- (void)_updateWallpaperHiddenForHomescreen:(BOOL)homescreen lockscreen:(BOOL)lockscreen;
- (void)_updateWallpaperRequired:(BOOL)required;
- (void)_updateWallpaperSceneClientSettingsWithBlock:(id)block;
- (void)_updateWallpaperVariant:(int64_t)variant inAnimationSettings:(id)settings outAnimationSettings:(id)animationSettings;
- (void)noteWallpaperDidChangeForVariant:(int64_t)variant;
- (void)noteWallpaperDidCompleteWallpaperChange;
- (void)noteWallpaperWillChangeForVariant:(int64_t)variant;
- (void)setHomescreenAverageColor:(id)color;
- (void)setHomescreenContentStatic:(BOOL)static;
- (void)setHomescreenContrast:(double)contrast;
- (void)setHomescreenLegibilitySettings:(id)settings;
- (void)setHomescreenMinimumWallpaperScale:(double)scale;
- (void)setHomescreenParallaxEnabled:(BOOL)enabled;
- (void)setHomescreenParallaxFactor:(double)factor;
- (void)setHomescreenZoomFactor:(double)factor;
- (void)setLiveWallpaperPlaybackState:(int64_t)state;
- (void)setLockscreenAverageColor:(id)color;
- (void)setLockscreenContentIsLiveWallpaper:(BOOL)wallpaper;
- (void)setLockscreenContentStatic:(BOOL)static;
- (void)setLockscreenContrast:(double)contrast;
- (void)setLockscreenLegibilitySettings:(id)settings;
- (void)setLockscreenMinimumWallpaperScale:(double)scale;
- (void)setLockscreenParallaxEnabled:(BOOL)enabled;
- (void)setLockscreenParallaxFactor:(double)factor;
- (void)setLockscreenZoomFactor:(double)factor;
@end

@implementation PBUIWallpaperWindowScene

- (int64_t)wallpaperVariant
{
  _wallpaperSceneSettings = [(PBUIWallpaperWindowScene *)self _wallpaperSceneSettings];
  wallpaperVariant = [_wallpaperSceneSettings wallpaperVariant];

  return wallpaperVariant;
}

- (CGRect)lockscreenWallpaperContentsRect
{
  _wallpaperSceneSettings = [(PBUIWallpaperWindowScene *)self _wallpaperSceneSettings];
  [_wallpaperSceneSettings lockscreenWallpaperContentsRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (double)lockscreenWallpaperAlpha
{
  _wallpaperSceneSettings = [(PBUIWallpaperWindowScene *)self _wallpaperSceneSettings];
  [_wallpaperSceneSettings lockscreenWallpaperAlpha];
  v4 = v3;

  return v4;
}

- (double)homescreenWallpaperAlpha
{
  _wallpaperSceneSettings = [(PBUIWallpaperWindowScene *)self _wallpaperSceneSettings];
  [_wallpaperSceneSettings homescreenWallpaperAlpha];
  v4 = v3;

  return v4;
}

- (double)lockscreenOnlyWallpaperAlpha
{
  _wallpaperSceneSettings = [(PBUIWallpaperWindowScene *)self _wallpaperSceneSettings];
  [_wallpaperSceneSettings lockscreenOnlyWallpaperAlpha];
  v4 = v3;

  return v4;
}

- (BOOL)disallowHomescreenRasterization
{
  _wallpaperSceneSettings = [(PBUIWallpaperWindowScene *)self _wallpaperSceneSettings];
  disallowHomescreenRasterization = [_wallpaperSceneSettings disallowHomescreenRasterization];

  return disallowHomescreenRasterization;
}

- (BOOL)disallowLockscreenRasterization
{
  _wallpaperSceneSettings = [(PBUIWallpaperWindowScene *)self _wallpaperSceneSettings];
  disallowLockscreenRasterization = [_wallpaperSceneSettings disallowLockscreenRasterization];

  return disallowLockscreenRasterization;
}

- (BOOL)wallpaperAnimationSuspended
{
  _wallpaperSceneSettings = [(PBUIWallpaperWindowScene *)self _wallpaperSceneSettings];
  wallpaperAnimationSuspended = [_wallpaperSceneSettings wallpaperAnimationSuspended];

  return wallpaperAnimationSuspended;
}

- (BOOL)wallpaperRequired
{
  _wallpaperSceneSettings = [(PBUIWallpaperWindowScene *)self _wallpaperSceneSettings];
  wallpaperRequired = [_wallpaperSceneSettings wallpaperRequired];

  return wallpaperRequired;
}

- (BOOL)homescreenStyleChangesDelayed
{
  _wallpaperSceneSettings = [(PBUIWallpaperWindowScene *)self _wallpaperSceneSettings];
  homescreenStyleChangesDelayed = [_wallpaperSceneSettings homescreenStyleChangesDelayed];

  return homescreenStyleChangesDelayed;
}

- (NSString)cachingIdentifier
{
  _wallpaperSceneSettings = [(PBUIWallpaperWindowScene *)self _wallpaperSceneSettings];
  cachingIdentifier = [_wallpaperSceneSettings cachingIdentifier];

  return cachingIdentifier;
}

- (PBUIWallpaperWindowSceneStyleTransitionState)homescreenStyleTransitionState
{
  _wallpaperSceneSettings = [(PBUIWallpaperWindowScene *)self _wallpaperSceneSettings];
  homescreenStyleTransitionState = [_wallpaperSceneSettings homescreenStyleTransitionState];

  return homescreenStyleTransitionState;
}

- (PBUIWallpaperWindowSceneStyleTransitionState)lockscreenStyleTransitionState
{
  _wallpaperSceneSettings = [(PBUIWallpaperWindowScene *)self _wallpaperSceneSettings];
  lockscreenStyleTransitionState = [_wallpaperSceneSettings lockscreenStyleTransitionState];

  return lockscreenStyleTransitionState;
}

- (BOOL)liveWallpaperTouchActive
{
  _wallpaperSceneSettings = [(PBUIWallpaperWindowScene *)self _wallpaperSceneSettings];
  liveWallpaperTouchActive = [_wallpaperSceneSettings liveWallpaperTouchActive];

  return liveWallpaperTouchActive;
}

- (BOOL)liveWallpaperInteractive
{
  _wallpaperSceneSettings = [(PBUIWallpaperWindowScene *)self _wallpaperSceneSettings];
  liveWallpaperInteractive = [_wallpaperSceneSettings liveWallpaperInteractive];

  return liveWallpaperInteractive;
}

- (double)homescreenMinimumWallpaperScale
{
  _wallpaperSceneClientSettings = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  [_wallpaperSceneClientSettings homescreenMinimumWallpaperScale];
  v4 = v3;

  return v4;
}

- (void)setHomescreenMinimumWallpaperScale:(double)scale
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__PBUIWallpaperWindowScene_setHomescreenMinimumWallpaperScale___block_invoke;
  v3[3] = &__block_descriptor_40_e55_v16__0__PBUIMutableWallpaperWindowSceneClientSettings_8l;
  *&v3[4] = scale;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v3];
}

- (double)lockscreenMinimumWallpaperScale
{
  _wallpaperSceneClientSettings = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  [_wallpaperSceneClientSettings lockscreenMinimumWallpaperScale];
  v4 = v3;

  return v4;
}

- (void)setLockscreenMinimumWallpaperScale:(double)scale
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__PBUIWallpaperWindowScene_setLockscreenMinimumWallpaperScale___block_invoke;
  v3[3] = &__block_descriptor_40_e55_v16__0__PBUIMutableWallpaperWindowSceneClientSettings_8l;
  *&v3[4] = scale;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v3];
}

- (_UILegibilitySettings)homescreenLegibilitySettings
{
  _wallpaperSceneClientSettings = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  homescreenLegibilitySettings = [_wallpaperSceneClientSettings homescreenLegibilitySettings];

  return homescreenLegibilitySettings;
}

- (void)setHomescreenLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__PBUIWallpaperWindowScene_setHomescreenLegibilitySettings___block_invoke;
  v6[3] = &unk_278362728;
  v7 = settingsCopy;
  v5 = settingsCopy;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v6];
}

- (_UILegibilitySettings)lockscreenLegibilitySettings
{
  _wallpaperSceneClientSettings = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  lockscreenLegibilitySettings = [_wallpaperSceneClientSettings lockscreenLegibilitySettings];

  return lockscreenLegibilitySettings;
}

- (void)setLockscreenLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__PBUIWallpaperWindowScene_setLockscreenLegibilitySettings___block_invoke;
  v6[3] = &unk_278362728;
  v7 = settingsCopy;
  v5 = settingsCopy;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v6];
}

- (UIColor)homescreenAverageColor
{
  _wallpaperSceneClientSettings = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  homescreenAverageColor = [_wallpaperSceneClientSettings homescreenAverageColor];

  return homescreenAverageColor;
}

- (void)setHomescreenAverageColor:(id)color
{
  colorCopy = color;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__PBUIWallpaperWindowScene_setHomescreenAverageColor___block_invoke;
  v6[3] = &unk_278362728;
  v7 = colorCopy;
  v5 = colorCopy;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v6];
}

- (UIColor)lockscreenAverageColor
{
  _wallpaperSceneClientSettings = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  lockscreenAverageColor = [_wallpaperSceneClientSettings lockscreenAverageColor];

  return lockscreenAverageColor;
}

- (void)setLockscreenAverageColor:(id)color
{
  colorCopy = color;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__PBUIWallpaperWindowScene_setLockscreenAverageColor___block_invoke;
  v6[3] = &unk_278362728;
  v7 = colorCopy;
  v5 = colorCopy;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v6];
}

- (double)homescreenContrast
{
  _wallpaperSceneClientSettings = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  [_wallpaperSceneClientSettings homescreenContrast];
  v4 = v3;

  return v4;
}

- (void)setHomescreenContrast:(double)contrast
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__PBUIWallpaperWindowScene_setHomescreenContrast___block_invoke;
  v3[3] = &__block_descriptor_40_e55_v16__0__PBUIMutableWallpaperWindowSceneClientSettings_8l;
  *&v3[4] = contrast;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v3];
}

- (double)lockscreenContrast
{
  _wallpaperSceneClientSettings = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  [_wallpaperSceneClientSettings lockscreenContrast];
  v4 = v3;

  return v4;
}

- (void)setLockscreenContrast:(double)contrast
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__PBUIWallpaperWindowScene_setLockscreenContrast___block_invoke;
  v3[3] = &__block_descriptor_40_e55_v16__0__PBUIMutableWallpaperWindowSceneClientSettings_8l;
  *&v3[4] = contrast;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v3];
}

- (double)homescreenParallaxFactor
{
  _wallpaperSceneClientSettings = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  [_wallpaperSceneClientSettings homescreenParallaxFactor];
  v4 = v3;

  return v4;
}

- (void)setHomescreenParallaxFactor:(double)factor
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__PBUIWallpaperWindowScene_setHomescreenParallaxFactor___block_invoke;
  v3[3] = &__block_descriptor_40_e55_v16__0__PBUIMutableWallpaperWindowSceneClientSettings_8l;
  *&v3[4] = factor;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v3];
}

- (double)lockscreenParallaxFactor
{
  _wallpaperSceneClientSettings = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  [_wallpaperSceneClientSettings lockscreenParallaxFactor];
  v4 = v3;

  return v4;
}

- (void)setLockscreenParallaxFactor:(double)factor
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__PBUIWallpaperWindowScene_setLockscreenParallaxFactor___block_invoke;
  v3[3] = &__block_descriptor_40_e55_v16__0__PBUIMutableWallpaperWindowSceneClientSettings_8l;
  *&v3[4] = factor;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v3];
}

- (BOOL)homescreenParallaxEnabled
{
  _wallpaperSceneClientSettings = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  homescreenParallaxEnabled = [_wallpaperSceneClientSettings homescreenParallaxEnabled];

  return homescreenParallaxEnabled;
}

- (void)setHomescreenParallaxEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__PBUIWallpaperWindowScene_setHomescreenParallaxEnabled___block_invoke;
  v3[3] = &__block_descriptor_33_e55_v16__0__PBUIMutableWallpaperWindowSceneClientSettings_8l;
  enabledCopy = enabled;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v3];
}

- (BOOL)lockscreenParallaxEnabled
{
  _wallpaperSceneClientSettings = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  lockscreenParallaxEnabled = [_wallpaperSceneClientSettings lockscreenParallaxEnabled];

  return lockscreenParallaxEnabled;
}

- (void)setLockscreenParallaxEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__PBUIWallpaperWindowScene_setLockscreenParallaxEnabled___block_invoke;
  v3[3] = &__block_descriptor_33_e55_v16__0__PBUIMutableWallpaperWindowSceneClientSettings_8l;
  enabledCopy = enabled;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v3];
}

- (double)homescreenZoomFactor
{
  _wallpaperSceneClientSettings = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  [_wallpaperSceneClientSettings homescreenZoomFactor];
  v4 = v3;

  return v4;
}

- (void)setHomescreenZoomFactor:(double)factor
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__PBUIWallpaperWindowScene_setHomescreenZoomFactor___block_invoke;
  v3[3] = &__block_descriptor_40_e55_v16__0__PBUIMutableWallpaperWindowSceneClientSettings_8l;
  *&v3[4] = factor;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v3];
}

- (double)lockscreenZoomFactor
{
  _wallpaperSceneClientSettings = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  [_wallpaperSceneClientSettings lockscreenZoomFactor];
  v4 = v3;

  return v4;
}

- (void)setLockscreenZoomFactor:(double)factor
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__PBUIWallpaperWindowScene_setLockscreenZoomFactor___block_invoke;
  v3[3] = &__block_descriptor_40_e55_v16__0__PBUIMutableWallpaperWindowSceneClientSettings_8l;
  *&v3[4] = factor;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v3];
}

- (BOOL)isHomescreenContentStatic
{
  _wallpaperSceneClientSettings = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  isHomescreenContentStatic = [_wallpaperSceneClientSettings isHomescreenContentStatic];

  return isHomescreenContentStatic;
}

- (void)setHomescreenContentStatic:(BOOL)static
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__PBUIWallpaperWindowScene_setHomescreenContentStatic___block_invoke;
  v3[3] = &__block_descriptor_33_e55_v16__0__PBUIMutableWallpaperWindowSceneClientSettings_8l;
  staticCopy = static;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v3];
}

- (BOOL)isLockscreenContentStatic
{
  _wallpaperSceneClientSettings = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  isLockscreenContentStatic = [_wallpaperSceneClientSettings isLockscreenContentStatic];

  return isLockscreenContentStatic;
}

- (void)setLockscreenContentStatic:(BOOL)static
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__PBUIWallpaperWindowScene_setLockscreenContentStatic___block_invoke;
  v3[3] = &__block_descriptor_33_e55_v16__0__PBUIMutableWallpaperWindowSceneClientSettings_8l;
  staticCopy = static;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v3];
}

- (BOOL)isLockscreenContentLiveWallpaper
{
  _wallpaperSceneClientSettings = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  isLockscreenContentLiveWallpaper = [_wallpaperSceneClientSettings isLockscreenContentLiveWallpaper];

  return isLockscreenContentLiveWallpaper;
}

- (void)setLockscreenContentIsLiveWallpaper:(BOOL)wallpaper
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __64__PBUIWallpaperWindowScene_setLockscreenContentIsLiveWallpaper___block_invoke;
  v3[3] = &__block_descriptor_33_e55_v16__0__PBUIMutableWallpaperWindowSceneClientSettings_8l;
  wallpaperCopy = wallpaper;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v3];
}

- (int64_t)liveWallpaperPlaybackState
{
  _wallpaperSceneClientSettings = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  liveWallpaperPlaybackState = [_wallpaperSceneClientSettings liveWallpaperPlaybackState];

  return liveWallpaperPlaybackState;
}

- (void)setLiveWallpaperPlaybackState:(int64_t)state
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__PBUIWallpaperWindowScene_setLiveWallpaperPlaybackState___block_invoke;
  v3[3] = &__block_descriptor_40_e55_v16__0__PBUIMutableWallpaperWindowSceneClientSettings_8l;
  v3[4] = state;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v3];
}

- (void)noteWallpaperWillChangeForVariant:(int64_t)variant
{
  _FBSScene = [(PBUIWallpaperWindowScene *)self _FBSScene];
  v4 = MEMORY[0x277CBEB98];
  v5 = [[PBUIWallpaperWillChangeAction alloc] initWithVariant:variant];
  v6 = [v4 setWithObject:v5];
  [_FBSScene sendActions:v6];
}

- (void)noteWallpaperDidChangeForVariant:(int64_t)variant
{
  _FBSScene = [(PBUIWallpaperWindowScene *)self _FBSScene];
  v4 = MEMORY[0x277CBEB98];
  v5 = [[PBUIWallpaperDidChangeAction alloc] initWithVariant:variant];
  v6 = [v4 setWithObject:v5];
  [_FBSScene sendActions:v6];
}

- (void)noteWallpaperDidCompleteWallpaperChange
{
  _FBSScene = [(PBUIWallpaperWindowScene *)self _FBSScene];
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_alloc_init(PBUIWallpaperDidCompleteWallpaperChangeAction);
  v4 = [v2 setWithObject:v3];
  [_FBSScene sendActions:v4];
}

- (id)_wallpaperSceneSettings
{
  _FBSScene = [(PBUIWallpaperWindowScene *)self _FBSScene];
  settings = [_FBSScene settings];
  v4 = objc_opt_class();
  v5 = settings;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  v6 = v4;

  return v4;
}

- (id)_wallpaperSceneClientSettings
{
  _FBSScene = [(PBUIWallpaperWindowScene *)self _FBSScene];
  clientSettings = [_FBSScene clientSettings];
  v4 = objc_opt_class();
  v5 = clientSettings;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  v6 = v4;

  return v4;
}

- (void)_updateWallpaperSceneClientSettingsWithBlock:(id)block
{
  blockCopy = block;
  _FBSScene = [(PBUIWallpaperWindowScene *)self _FBSScene];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__PBUIWallpaperWindowScene__updateWallpaperSceneClientSettingsWithBlock___block_invoke;
  v7[3] = &unk_278362770;
  v8 = blockCopy;
  v6 = blockCopy;
  [_FBSScene updateClientSettingsWithBlock:v7];
}

void __73__PBUIWallpaperWindowScene__updateWallpaperSceneClientSettingsWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v7 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_updateWallpaperVariant:(int64_t)variant inAnimationSettings:(id)settings outAnimationSettings:(id)animationSettings
{
  settingsCopy = settings;
  animationSettingsCopy = animationSettings;
  delegate = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate wallpaperWindowScene:self didUpdateVariant:variant inAnimationSettings:settingsCopy outAnimationSettings:animationSettingsCopy];
  }
}

- (void)_updateLockscreenWallpaperContentsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  delegate = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate wallpaperWindowScene:self didUpdateLockscreenWallpaperContentsRect:{x, y, width, height}];
  }
}

- (void)_updateLockscreenWallpaperAlpha:(double)alpha
{
  delegate = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate wallpaperWindowScene:self didUpdateLockscreenWallpaperAlpha:alpha];
  }
}

- (void)_updateHomescreenWallpaperAlpha:(double)alpha
{
  delegate = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate wallpaperWindowScene:self didUpdateHomescreenWallpaperAlpha:alpha];
  }
}

- (void)_updateLockscreenOnlyWallpaperAlpha:(double)alpha
{
  delegate = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate wallpaperWindowScene:self didUpdateLockscreenOnlyWallpaperAlpha:alpha];
  }
}

- (void)_updateDisallowRasterizationForHomescreen:(BOOL)homescreen lockscreen:(BOOL)lockscreen
{
  lockscreenCopy = lockscreen;
  homescreenCopy = homescreen;
  delegate = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate wallpaperWindowScene:self didUpdateRasterizationDisallowedForHomescreen:homescreenCopy lockscreen:lockscreenCopy];
  }
}

- (void)_updateWallpaperHiddenForHomescreen:(BOOL)homescreen lockscreen:(BOOL)lockscreen
{
  lockscreenCopy = lockscreen;
  homescreenCopy = homescreen;
  delegate = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate wallpaperWindowScene:self didUpdateHomescreenWallpaperHidden:homescreenCopy lockscreenWallpaperHidden:lockscreenCopy];
  }
}

- (void)_updateWallpaperAnimationSuspended:(BOOL)suspended
{
  suspendedCopy = suspended;
  delegate = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate wallpaperWindowScene:self didUpdateWallpaperAnimationSuspended:suspendedCopy];
  }
}

- (void)_updateWallpaperRequired:(BOOL)required
{
  requiredCopy = required;
  delegate = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate wallpaperWindowScene:self didUpdateWallpaperRequired:requiredCopy];
  }
}

- (void)_updateHomescreenStyleChangesDelayed:(BOOL)delayed
{
  delayedCopy = delayed;
  delegate = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate wallpaperWindowScene:self didUpdateHomescreenStyleChangesDelayed:delayedCopy];
  }
}

- (void)_updateHomescreenStyleTransitionStateTo:(id)to from:(id)from
{
  toCopy = to;
  fromCopy = from;
  delegate = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate wallpaperWindowScene:self didUpdateHomescreenStyleTransitionStateTo:toCopy from:fromCopy];
  }
}

- (void)_updateLockscreenStyleTransitionStateTo:(id)to from:(id)from
{
  toCopy = to;
  fromCopy = from;
  delegate = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate wallpaperWindowScene:self didUpdateLockscreenStyleTransitionStateTo:toCopy from:fromCopy];
  }
}

- (void)_updateLiveWallpaperTouchActive:(BOOL)active
{
  activeCopy = active;
  delegate = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate wallpaperWindowScene:self didUpdateLiveWallpaperTouchActive:activeCopy];
  }
}

- (void)_updateLiveWallpaperInteractive:(BOOL)interactive
{
  interactiveCopy = interactive;
  delegate = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate wallpaperWindowScene:self didUpdateLiveWallpaperInteractive:interactiveCopy];
  }
}

- (void)_handleImageSlotRequestAction:(id)action
{
  actionCopy = action;
  delegate = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    desiredStyle = [actionCopy desiredStyle];
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__2;
    v29 = __Block_byref_object_dispose__2;
    v30 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__2;
    v23 = __Block_byref_object_dispose__2;
    v24 = 0;
    variant = [actionCopy variant];
    v7 = v32[3];
    traitCollection = [actionCopy traitCollection];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __58__PBUIWallpaperWindowScene__handleImageSlotRequestAction___block_invoke;
    v18[3] = &unk_2783622B8;
    v18[4] = &v25;
    v18[5] = &v19;
    v18[6] = &v31;
    [delegate wallpaperWindowScene:self requestsWallpaperEffectImageForVariant:variant style:v7 traitCollection:traitCollection result:v18];

    if (v26[5])
    {
      slotIdentifier = [actionCopy slotIdentifier];
      wallpaperEffectImageSlots = self->_wallpaperEffectImageSlots;
      if (!wallpaperEffectImageSlots)
      {
        v11 = [[PBUIImageSlotRepository alloc] initWithWindowScene:self];
        v12 = self->_wallpaperEffectImageSlots;
        self->_wallpaperEffectImageSlots = v11;

        wallpaperEffectImageSlots = self->_wallpaperEffectImageSlots;
      }

      [v26[5] size];
      [(PBUIImageSlotRepository *)wallpaperEffectImageSlots allocateImageSlotForIdentifier:slotIdentifier size:v32[3] actualStyle:v20[5] url:actionCopy lifetimeObject:?];
      objc_initWeak(&location, self);
      objc_initWeak(&from, actionCopy);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __58__PBUIWallpaperWindowScene__handleImageSlotRequestAction___block_invoke_2;
      v13[3] = &unk_278362798;
      objc_copyWeak(&v14, &location);
      objc_copyWeak(&v15, &from);
      [actionCopy setNullificationHandler:v13];
      [(PBUIImageSlotRepository *)self->_wallpaperEffectImageSlots setImageSlot:v26[5] forIdentifier:slotIdentifier];
      objc_destroyWeak(&v15);
      objc_destroyWeak(&v14);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }

    _Block_object_dispose(&v19, 8);

    _Block_object_dispose(&v25, 8);
    _Block_object_dispose(&v31, 8);
  }
}

void __58__PBUIWallpaperWindowScene__handleImageSlotRequestAction___block_invoke(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(a1[4] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v14 = v7;

  v11 = *(a1[5] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
  v13 = v8;

  *(*(a1[6] + 8) + 24) = a4;
}

void __58__PBUIWallpaperWindowScene__handleImageSlotRequestAction___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__PBUIWallpaperWindowScene__handleImageSlotRequestAction___block_invoke_3;
  v5[3] = &unk_2783622E0;
  v5[4] = WeakRetained;
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __58__PBUIWallpaperWindowScene__handleImageSlotRequestAction___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = *(v1 + 512);
      v5 = [v3 slotIdentifier];
      [v4 freeImageSlotWithIdentifier:v5 lifetime:*(a1 + 40)];
    }
  }
}

- (void)_handleWallpaperEffectImageRequestAction:(id)action
{
  actionCopy = action;
  slotIdentifier = [actionCopy slotIdentifier];
  v5 = [(PBUIImageSlotRepository *)self->_wallpaperEffectImageSlots hasSlotForIdentifier:slotIdentifier];
  canSendResponse = [actionCopy canSendResponse];
  if (v5)
  {
    if (!canSendResponse)
    {
      goto LABEL_9;
    }

    [(PBUIImageSlotRepository *)self->_wallpaperEffectImageSlots sizeForIdentifier:slotIdentifier];
    v8 = v7;
    v10 = v9;
    v11 = [(PBUIImageSlotRepository *)self->_wallpaperEffectImageSlots actualStyleForIdentifier:slotIdentifier];
    v12 = [(PBUIImageSlotRepository *)self->_wallpaperEffectImageSlots urlForIdentifier:slotIdentifier];
    if (!v12)
    {
      v16 = [(PBUIImageSlotRepository *)self->_wallpaperEffectImageSlots ioSurfaceForIdentifier:slotIdentifier];
      if (v16)
      {
        v17 = v16;
        v15 = [[PBUIWallpaperEffectImageRequestActionIOSurfaceResponse alloc] initWithActualStyle:v11 size:v16 ioSurface:v8, v10];
      }

      else
      {
        v18 = MEMORY[0x277CF0B68];
        v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PBUIErrorDomain" code:0 userInfo:0];
        v15 = [v18 responseForError:v19];
      }

      goto LABEL_8;
    }

    v13 = [[PBUIWallpaperEffectImageRequestActionImageURLResponse alloc] initWithActualStyle:v11 size:v12 imageURL:v8, v10];
  }

  else
  {
    if (!canSendResponse)
    {
      goto LABEL_9;
    }

    v14 = MEMORY[0x277CF0B68];
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:0];
    v13 = [v14 responseForError:v12];
  }

  v15 = v13;
LABEL_8:
  [actionCopy sendResponse:v15];

LABEL_9:
}

- (void)_handlePreheatAction:(id)action
{
  actionCopy = action;
  delegate = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate wallpaperWindowScene:self didReceivePreheatRequestForVariant:{objc_msgSend(actionCopy, "variant")}];
  }
}

- (void)_handleUpdateAndPrewarmAction:(id)action
{
  actionCopy = action;
  delegate = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v6 = [mEMORY[0x277D75128] beginBackgroundTaskWithName:@"Update and prewarm" expirationHandler:0];

    [delegate wallpaperWindowSceneDidReceiveUpdateAndPrewarmRequest:self];
    mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128]2 endBackgroundTask:v6];
  }

  if ([actionCopy canSendResponse])
  {
    response = [MEMORY[0x277CF0B68] response];
    [actionCopy sendResponse:response];
  }
}

- (void)_handleUpdateLocationsAction:(id)action
{
  actionCopy = action;
  delegate = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    locations = [actionCopy locations];
    wallpaperMode = [actionCopy wallpaperMode];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__PBUIWallpaperWindowScene__handleUpdateLocationsAction___block_invoke;
    v9[3] = &unk_278361E18;
    v10 = actionCopy;
    [delegate wallpaperWindowScene:self didReceiveUpdateRequestForLocations:locations wallpaperMode:wallpaperMode completion:v9];
  }

  else if ([actionCopy canSendResponse])
  {
    v8 = objc_alloc_init(PBUIWallpaperUpdateActionResponse);
    [actionCopy sendResponse:v8];
  }
}

void __57__PBUIWallpaperWindowScene__handleUpdateLocationsAction___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) canSendResponse])
  {
    v2 = *(a1 + 32);
    v3 = objc_alloc_init(PBUIWallpaperUpdateActionResponse);
    [v2 sendResponse:v3];
  }
}

@end