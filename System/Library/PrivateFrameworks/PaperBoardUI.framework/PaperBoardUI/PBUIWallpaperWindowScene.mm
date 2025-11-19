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
- (void)_handleImageSlotRequestAction:(id)a3;
- (void)_handlePreheatAction:(id)a3;
- (void)_handleUpdateAndPrewarmAction:(id)a3;
- (void)_handleUpdateLocationsAction:(id)a3;
- (void)_handleWallpaperEffectImageRequestAction:(id)a3;
- (void)_updateDisallowRasterizationForHomescreen:(BOOL)a3 lockscreen:(BOOL)a4;
- (void)_updateHomescreenStyleChangesDelayed:(BOOL)a3;
- (void)_updateHomescreenStyleTransitionStateTo:(id)a3 from:(id)a4;
- (void)_updateHomescreenWallpaperAlpha:(double)a3;
- (void)_updateLiveWallpaperInteractive:(BOOL)a3;
- (void)_updateLiveWallpaperTouchActive:(BOOL)a3;
- (void)_updateLockscreenOnlyWallpaperAlpha:(double)a3;
- (void)_updateLockscreenStyleTransitionStateTo:(id)a3 from:(id)a4;
- (void)_updateLockscreenWallpaperAlpha:(double)a3;
- (void)_updateLockscreenWallpaperContentsRect:(CGRect)a3;
- (void)_updateWallpaperAnimationSuspended:(BOOL)a3;
- (void)_updateWallpaperHiddenForHomescreen:(BOOL)a3 lockscreen:(BOOL)a4;
- (void)_updateWallpaperRequired:(BOOL)a3;
- (void)_updateWallpaperSceneClientSettingsWithBlock:(id)a3;
- (void)_updateWallpaperVariant:(int64_t)a3 inAnimationSettings:(id)a4 outAnimationSettings:(id)a5;
- (void)noteWallpaperDidChangeForVariant:(int64_t)a3;
- (void)noteWallpaperDidCompleteWallpaperChange;
- (void)noteWallpaperWillChangeForVariant:(int64_t)a3;
- (void)setHomescreenAverageColor:(id)a3;
- (void)setHomescreenContentStatic:(BOOL)a3;
- (void)setHomescreenContrast:(double)a3;
- (void)setHomescreenLegibilitySettings:(id)a3;
- (void)setHomescreenMinimumWallpaperScale:(double)a3;
- (void)setHomescreenParallaxEnabled:(BOOL)a3;
- (void)setHomescreenParallaxFactor:(double)a3;
- (void)setHomescreenZoomFactor:(double)a3;
- (void)setLiveWallpaperPlaybackState:(int64_t)a3;
- (void)setLockscreenAverageColor:(id)a3;
- (void)setLockscreenContentIsLiveWallpaper:(BOOL)a3;
- (void)setLockscreenContentStatic:(BOOL)a3;
- (void)setLockscreenContrast:(double)a3;
- (void)setLockscreenLegibilitySettings:(id)a3;
- (void)setLockscreenMinimumWallpaperScale:(double)a3;
- (void)setLockscreenParallaxEnabled:(BOOL)a3;
- (void)setLockscreenParallaxFactor:(double)a3;
- (void)setLockscreenZoomFactor:(double)a3;
@end

@implementation PBUIWallpaperWindowScene

- (int64_t)wallpaperVariant
{
  v2 = [(PBUIWallpaperWindowScene *)self _wallpaperSceneSettings];
  v3 = [v2 wallpaperVariant];

  return v3;
}

- (CGRect)lockscreenWallpaperContentsRect
{
  v2 = [(PBUIWallpaperWindowScene *)self _wallpaperSceneSettings];
  [v2 lockscreenWallpaperContentsRect];
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
  v2 = [(PBUIWallpaperWindowScene *)self _wallpaperSceneSettings];
  [v2 lockscreenWallpaperAlpha];
  v4 = v3;

  return v4;
}

- (double)homescreenWallpaperAlpha
{
  v2 = [(PBUIWallpaperWindowScene *)self _wallpaperSceneSettings];
  [v2 homescreenWallpaperAlpha];
  v4 = v3;

  return v4;
}

- (double)lockscreenOnlyWallpaperAlpha
{
  v2 = [(PBUIWallpaperWindowScene *)self _wallpaperSceneSettings];
  [v2 lockscreenOnlyWallpaperAlpha];
  v4 = v3;

  return v4;
}

- (BOOL)disallowHomescreenRasterization
{
  v2 = [(PBUIWallpaperWindowScene *)self _wallpaperSceneSettings];
  v3 = [v2 disallowHomescreenRasterization];

  return v3;
}

- (BOOL)disallowLockscreenRasterization
{
  v2 = [(PBUIWallpaperWindowScene *)self _wallpaperSceneSettings];
  v3 = [v2 disallowLockscreenRasterization];

  return v3;
}

- (BOOL)wallpaperAnimationSuspended
{
  v2 = [(PBUIWallpaperWindowScene *)self _wallpaperSceneSettings];
  v3 = [v2 wallpaperAnimationSuspended];

  return v3;
}

- (BOOL)wallpaperRequired
{
  v2 = [(PBUIWallpaperWindowScene *)self _wallpaperSceneSettings];
  v3 = [v2 wallpaperRequired];

  return v3;
}

- (BOOL)homescreenStyleChangesDelayed
{
  v2 = [(PBUIWallpaperWindowScene *)self _wallpaperSceneSettings];
  v3 = [v2 homescreenStyleChangesDelayed];

  return v3;
}

- (NSString)cachingIdentifier
{
  v2 = [(PBUIWallpaperWindowScene *)self _wallpaperSceneSettings];
  v3 = [v2 cachingIdentifier];

  return v3;
}

- (PBUIWallpaperWindowSceneStyleTransitionState)homescreenStyleTransitionState
{
  v2 = [(PBUIWallpaperWindowScene *)self _wallpaperSceneSettings];
  v3 = [v2 homescreenStyleTransitionState];

  return v3;
}

- (PBUIWallpaperWindowSceneStyleTransitionState)lockscreenStyleTransitionState
{
  v2 = [(PBUIWallpaperWindowScene *)self _wallpaperSceneSettings];
  v3 = [v2 lockscreenStyleTransitionState];

  return v3;
}

- (BOOL)liveWallpaperTouchActive
{
  v2 = [(PBUIWallpaperWindowScene *)self _wallpaperSceneSettings];
  v3 = [v2 liveWallpaperTouchActive];

  return v3;
}

- (BOOL)liveWallpaperInteractive
{
  v2 = [(PBUIWallpaperWindowScene *)self _wallpaperSceneSettings];
  v3 = [v2 liveWallpaperInteractive];

  return v3;
}

- (double)homescreenMinimumWallpaperScale
{
  v2 = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  [v2 homescreenMinimumWallpaperScale];
  v4 = v3;

  return v4;
}

- (void)setHomescreenMinimumWallpaperScale:(double)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__PBUIWallpaperWindowScene_setHomescreenMinimumWallpaperScale___block_invoke;
  v3[3] = &__block_descriptor_40_e55_v16__0__PBUIMutableWallpaperWindowSceneClientSettings_8l;
  *&v3[4] = a3;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v3];
}

- (double)lockscreenMinimumWallpaperScale
{
  v2 = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  [v2 lockscreenMinimumWallpaperScale];
  v4 = v3;

  return v4;
}

- (void)setLockscreenMinimumWallpaperScale:(double)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__PBUIWallpaperWindowScene_setLockscreenMinimumWallpaperScale___block_invoke;
  v3[3] = &__block_descriptor_40_e55_v16__0__PBUIMutableWallpaperWindowSceneClientSettings_8l;
  *&v3[4] = a3;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v3];
}

- (_UILegibilitySettings)homescreenLegibilitySettings
{
  v2 = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  v3 = [v2 homescreenLegibilitySettings];

  return v3;
}

- (void)setHomescreenLegibilitySettings:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__PBUIWallpaperWindowScene_setHomescreenLegibilitySettings___block_invoke;
  v6[3] = &unk_278362728;
  v7 = v4;
  v5 = v4;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v6];
}

- (_UILegibilitySettings)lockscreenLegibilitySettings
{
  v2 = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  v3 = [v2 lockscreenLegibilitySettings];

  return v3;
}

- (void)setLockscreenLegibilitySettings:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__PBUIWallpaperWindowScene_setLockscreenLegibilitySettings___block_invoke;
  v6[3] = &unk_278362728;
  v7 = v4;
  v5 = v4;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v6];
}

- (UIColor)homescreenAverageColor
{
  v2 = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  v3 = [v2 homescreenAverageColor];

  return v3;
}

- (void)setHomescreenAverageColor:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__PBUIWallpaperWindowScene_setHomescreenAverageColor___block_invoke;
  v6[3] = &unk_278362728;
  v7 = v4;
  v5 = v4;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v6];
}

- (UIColor)lockscreenAverageColor
{
  v2 = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  v3 = [v2 lockscreenAverageColor];

  return v3;
}

- (void)setLockscreenAverageColor:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__PBUIWallpaperWindowScene_setLockscreenAverageColor___block_invoke;
  v6[3] = &unk_278362728;
  v7 = v4;
  v5 = v4;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v6];
}

- (double)homescreenContrast
{
  v2 = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  [v2 homescreenContrast];
  v4 = v3;

  return v4;
}

- (void)setHomescreenContrast:(double)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__PBUIWallpaperWindowScene_setHomescreenContrast___block_invoke;
  v3[3] = &__block_descriptor_40_e55_v16__0__PBUIMutableWallpaperWindowSceneClientSettings_8l;
  *&v3[4] = a3;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v3];
}

- (double)lockscreenContrast
{
  v2 = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  [v2 lockscreenContrast];
  v4 = v3;

  return v4;
}

- (void)setLockscreenContrast:(double)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__PBUIWallpaperWindowScene_setLockscreenContrast___block_invoke;
  v3[3] = &__block_descriptor_40_e55_v16__0__PBUIMutableWallpaperWindowSceneClientSettings_8l;
  *&v3[4] = a3;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v3];
}

- (double)homescreenParallaxFactor
{
  v2 = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  [v2 homescreenParallaxFactor];
  v4 = v3;

  return v4;
}

- (void)setHomescreenParallaxFactor:(double)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__PBUIWallpaperWindowScene_setHomescreenParallaxFactor___block_invoke;
  v3[3] = &__block_descriptor_40_e55_v16__0__PBUIMutableWallpaperWindowSceneClientSettings_8l;
  *&v3[4] = a3;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v3];
}

- (double)lockscreenParallaxFactor
{
  v2 = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  [v2 lockscreenParallaxFactor];
  v4 = v3;

  return v4;
}

- (void)setLockscreenParallaxFactor:(double)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__PBUIWallpaperWindowScene_setLockscreenParallaxFactor___block_invoke;
  v3[3] = &__block_descriptor_40_e55_v16__0__PBUIMutableWallpaperWindowSceneClientSettings_8l;
  *&v3[4] = a3;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v3];
}

- (BOOL)homescreenParallaxEnabled
{
  v2 = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  v3 = [v2 homescreenParallaxEnabled];

  return v3;
}

- (void)setHomescreenParallaxEnabled:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__PBUIWallpaperWindowScene_setHomescreenParallaxEnabled___block_invoke;
  v3[3] = &__block_descriptor_33_e55_v16__0__PBUIMutableWallpaperWindowSceneClientSettings_8l;
  v4 = a3;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v3];
}

- (BOOL)lockscreenParallaxEnabled
{
  v2 = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  v3 = [v2 lockscreenParallaxEnabled];

  return v3;
}

- (void)setLockscreenParallaxEnabled:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__PBUIWallpaperWindowScene_setLockscreenParallaxEnabled___block_invoke;
  v3[3] = &__block_descriptor_33_e55_v16__0__PBUIMutableWallpaperWindowSceneClientSettings_8l;
  v4 = a3;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v3];
}

- (double)homescreenZoomFactor
{
  v2 = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  [v2 homescreenZoomFactor];
  v4 = v3;

  return v4;
}

- (void)setHomescreenZoomFactor:(double)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__PBUIWallpaperWindowScene_setHomescreenZoomFactor___block_invoke;
  v3[3] = &__block_descriptor_40_e55_v16__0__PBUIMutableWallpaperWindowSceneClientSettings_8l;
  *&v3[4] = a3;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v3];
}

- (double)lockscreenZoomFactor
{
  v2 = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  [v2 lockscreenZoomFactor];
  v4 = v3;

  return v4;
}

- (void)setLockscreenZoomFactor:(double)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__PBUIWallpaperWindowScene_setLockscreenZoomFactor___block_invoke;
  v3[3] = &__block_descriptor_40_e55_v16__0__PBUIMutableWallpaperWindowSceneClientSettings_8l;
  *&v3[4] = a3;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v3];
}

- (BOOL)isHomescreenContentStatic
{
  v2 = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  v3 = [v2 isHomescreenContentStatic];

  return v3;
}

- (void)setHomescreenContentStatic:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__PBUIWallpaperWindowScene_setHomescreenContentStatic___block_invoke;
  v3[3] = &__block_descriptor_33_e55_v16__0__PBUIMutableWallpaperWindowSceneClientSettings_8l;
  v4 = a3;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v3];
}

- (BOOL)isLockscreenContentStatic
{
  v2 = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  v3 = [v2 isLockscreenContentStatic];

  return v3;
}

- (void)setLockscreenContentStatic:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__PBUIWallpaperWindowScene_setLockscreenContentStatic___block_invoke;
  v3[3] = &__block_descriptor_33_e55_v16__0__PBUIMutableWallpaperWindowSceneClientSettings_8l;
  v4 = a3;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v3];
}

- (BOOL)isLockscreenContentLiveWallpaper
{
  v2 = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  v3 = [v2 isLockscreenContentLiveWallpaper];

  return v3;
}

- (void)setLockscreenContentIsLiveWallpaper:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __64__PBUIWallpaperWindowScene_setLockscreenContentIsLiveWallpaper___block_invoke;
  v3[3] = &__block_descriptor_33_e55_v16__0__PBUIMutableWallpaperWindowSceneClientSettings_8l;
  v4 = a3;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v3];
}

- (int64_t)liveWallpaperPlaybackState
{
  v2 = [(PBUIWallpaperWindowScene *)self _wallpaperSceneClientSettings];
  v3 = [v2 liveWallpaperPlaybackState];

  return v3;
}

- (void)setLiveWallpaperPlaybackState:(int64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__PBUIWallpaperWindowScene_setLiveWallpaperPlaybackState___block_invoke;
  v3[3] = &__block_descriptor_40_e55_v16__0__PBUIMutableWallpaperWindowSceneClientSettings_8l;
  v3[4] = a3;
  [(PBUIWallpaperWindowScene *)self _updateWallpaperSceneClientSettingsWithBlock:v3];
}

- (void)noteWallpaperWillChangeForVariant:(int64_t)a3
{
  v7 = [(PBUIWallpaperWindowScene *)self _FBSScene];
  v4 = MEMORY[0x277CBEB98];
  v5 = [[PBUIWallpaperWillChangeAction alloc] initWithVariant:a3];
  v6 = [v4 setWithObject:v5];
  [v7 sendActions:v6];
}

- (void)noteWallpaperDidChangeForVariant:(int64_t)a3
{
  v7 = [(PBUIWallpaperWindowScene *)self _FBSScene];
  v4 = MEMORY[0x277CBEB98];
  v5 = [[PBUIWallpaperDidChangeAction alloc] initWithVariant:a3];
  v6 = [v4 setWithObject:v5];
  [v7 sendActions:v6];
}

- (void)noteWallpaperDidCompleteWallpaperChange
{
  v5 = [(PBUIWallpaperWindowScene *)self _FBSScene];
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_alloc_init(PBUIWallpaperDidCompleteWallpaperChangeAction);
  v4 = [v2 setWithObject:v3];
  [v5 sendActions:v4];
}

- (id)_wallpaperSceneSettings
{
  v2 = [(PBUIWallpaperWindowScene *)self _FBSScene];
  v3 = [v2 settings];
  v4 = objc_opt_class();
  v5 = v3;
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
  v2 = [(PBUIWallpaperWindowScene *)self _FBSScene];
  v3 = [v2 clientSettings];
  v4 = objc_opt_class();
  v5 = v3;
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

- (void)_updateWallpaperSceneClientSettingsWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(PBUIWallpaperWindowScene *)self _FBSScene];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__PBUIWallpaperWindowScene__updateWallpaperSceneClientSettingsWithBlock___block_invoke;
  v7[3] = &unk_278362770;
  v8 = v4;
  v6 = v4;
  [v5 updateClientSettingsWithBlock:v7];
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

- (void)_updateWallpaperVariant:(int64_t)a3 inAnimationSettings:(id)a4 outAnimationSettings:(id)a5
{
  v10 = a4;
  v8 = a5;
  v9 = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v9 wallpaperWindowScene:self didUpdateVariant:a3 inAnimationSettings:v10 outAnimationSettings:v8];
  }
}

- (void)_updateLockscreenWallpaperContentsRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 wallpaperWindowScene:self didUpdateLockscreenWallpaperContentsRect:{x, y, width, height}];
  }
}

- (void)_updateLockscreenWallpaperAlpha:(double)a3
{
  v5 = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 wallpaperWindowScene:self didUpdateLockscreenWallpaperAlpha:a3];
  }
}

- (void)_updateHomescreenWallpaperAlpha:(double)a3
{
  v5 = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 wallpaperWindowScene:self didUpdateHomescreenWallpaperAlpha:a3];
  }
}

- (void)_updateLockscreenOnlyWallpaperAlpha:(double)a3
{
  v5 = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 wallpaperWindowScene:self didUpdateLockscreenOnlyWallpaperAlpha:a3];
  }
}

- (void)_updateDisallowRasterizationForHomescreen:(BOOL)a3 lockscreen:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 wallpaperWindowScene:self didUpdateRasterizationDisallowedForHomescreen:v5 lockscreen:v4];
  }
}

- (void)_updateWallpaperHiddenForHomescreen:(BOOL)a3 lockscreen:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 wallpaperWindowScene:self didUpdateHomescreenWallpaperHidden:v5 lockscreenWallpaperHidden:v4];
  }
}

- (void)_updateWallpaperAnimationSuspended:(BOOL)a3
{
  v3 = a3;
  v5 = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 wallpaperWindowScene:self didUpdateWallpaperAnimationSuspended:v3];
  }
}

- (void)_updateWallpaperRequired:(BOOL)a3
{
  v3 = a3;
  v5 = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 wallpaperWindowScene:self didUpdateWallpaperRequired:v3];
  }
}

- (void)_updateHomescreenStyleChangesDelayed:(BOOL)a3
{
  v3 = a3;
  v5 = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 wallpaperWindowScene:self didUpdateHomescreenStyleChangesDelayed:v3];
  }
}

- (void)_updateHomescreenStyleTransitionStateTo:(id)a3 from:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 wallpaperWindowScene:self didUpdateHomescreenStyleTransitionStateTo:v8 from:v6];
  }
}

- (void)_updateLockscreenStyleTransitionStateTo:(id)a3 from:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 wallpaperWindowScene:self didUpdateLockscreenStyleTransitionStateTo:v8 from:v6];
  }
}

- (void)_updateLiveWallpaperTouchActive:(BOOL)a3
{
  v3 = a3;
  v5 = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 wallpaperWindowScene:self didUpdateLiveWallpaperTouchActive:v3];
  }
}

- (void)_updateLiveWallpaperInteractive:(BOOL)a3
{
  v3 = a3;
  v5 = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 wallpaperWindowScene:self didUpdateLiveWallpaperInteractive:v3];
  }
}

- (void)_handleImageSlotRequestAction:(id)a3
{
  v4 = a3;
  v5 = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = [v4 desiredStyle];
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
    v6 = [v4 variant];
    v7 = v32[3];
    v8 = [v4 traitCollection];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __58__PBUIWallpaperWindowScene__handleImageSlotRequestAction___block_invoke;
    v18[3] = &unk_2783622B8;
    v18[4] = &v25;
    v18[5] = &v19;
    v18[6] = &v31;
    [v5 wallpaperWindowScene:self requestsWallpaperEffectImageForVariant:v6 style:v7 traitCollection:v8 result:v18];

    if (v26[5])
    {
      v9 = [v4 slotIdentifier];
      wallpaperEffectImageSlots = self->_wallpaperEffectImageSlots;
      if (!wallpaperEffectImageSlots)
      {
        v11 = [[PBUIImageSlotRepository alloc] initWithWindowScene:self];
        v12 = self->_wallpaperEffectImageSlots;
        self->_wallpaperEffectImageSlots = v11;

        wallpaperEffectImageSlots = self->_wallpaperEffectImageSlots;
      }

      [v26[5] size];
      [(PBUIImageSlotRepository *)wallpaperEffectImageSlots allocateImageSlotForIdentifier:v9 size:v32[3] actualStyle:v20[5] url:v4 lifetimeObject:?];
      objc_initWeak(&location, self);
      objc_initWeak(&from, v4);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __58__PBUIWallpaperWindowScene__handleImageSlotRequestAction___block_invoke_2;
      v13[3] = &unk_278362798;
      objc_copyWeak(&v14, &location);
      objc_copyWeak(&v15, &from);
      [v4 setNullificationHandler:v13];
      [(PBUIImageSlotRepository *)self->_wallpaperEffectImageSlots setImageSlot:v26[5] forIdentifier:v9];
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

- (void)_handleWallpaperEffectImageRequestAction:(id)a3
{
  v20 = a3;
  v4 = [v20 slotIdentifier];
  v5 = [(PBUIImageSlotRepository *)self->_wallpaperEffectImageSlots hasSlotForIdentifier:v4];
  v6 = [v20 canSendResponse];
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(PBUIImageSlotRepository *)self->_wallpaperEffectImageSlots sizeForIdentifier:v4];
    v8 = v7;
    v10 = v9;
    v11 = [(PBUIImageSlotRepository *)self->_wallpaperEffectImageSlots actualStyleForIdentifier:v4];
    v12 = [(PBUIImageSlotRepository *)self->_wallpaperEffectImageSlots urlForIdentifier:v4];
    if (!v12)
    {
      v16 = [(PBUIImageSlotRepository *)self->_wallpaperEffectImageSlots ioSurfaceForIdentifier:v4];
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
    if (!v6)
    {
      goto LABEL_9;
    }

    v14 = MEMORY[0x277CF0B68];
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:0];
    v13 = [v14 responseForError:v12];
  }

  v15 = v13;
LABEL_8:
  [v20 sendResponse:v15];

LABEL_9:
}

- (void)_handlePreheatAction:(id)a3
{
  v5 = a3;
  v4 = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 wallpaperWindowScene:self didReceivePreheatRequestForVariant:{objc_msgSend(v5, "variant")}];
  }
}

- (void)_handleUpdateAndPrewarmAction:(id)a3
{
  v9 = a3;
  v4 = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [MEMORY[0x277D75128] sharedApplication];
    v6 = [v5 beginBackgroundTaskWithName:@"Update and prewarm" expirationHandler:0];

    [v4 wallpaperWindowSceneDidReceiveUpdateAndPrewarmRequest:self];
    v7 = [MEMORY[0x277D75128] sharedApplication];
    [v7 endBackgroundTask:v6];
  }

  if ([v9 canSendResponse])
  {
    v8 = [MEMORY[0x277CF0B68] response];
    [v9 sendResponse:v8];
  }
}

- (void)_handleUpdateLocationsAction:(id)a3
{
  v4 = a3;
  v5 = [(PBUIWallpaperWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v4 locations];
    v7 = [v4 wallpaperMode];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__PBUIWallpaperWindowScene__handleUpdateLocationsAction___block_invoke;
    v9[3] = &unk_278361E18;
    v10 = v4;
    [v5 wallpaperWindowScene:self didReceiveUpdateRequestForLocations:v6 wallpaperMode:v7 completion:v9];
  }

  else if ([v4 canSendResponse])
  {
    v8 = objc_alloc_init(PBUIWallpaperUpdateActionResponse);
    [v4 sendResponse:v8];
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