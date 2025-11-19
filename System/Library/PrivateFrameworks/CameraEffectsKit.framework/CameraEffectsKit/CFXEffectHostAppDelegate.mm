@interface CFXEffectHostAppDelegate
+ (id)sharedInstance;
- (BOOL)wantsToAssertThatLoadedSceneHasAnimateFlagDisabled;
- (BOOL)wantsToAssertThatTopLevelGroupSpansEntireScene;
- (PVHostApplicationDelegate)colorSpaceDelegate;
- (id)preferredDisplayColorSpace;
- (id)preferredExportColorSpace;
@end

@implementation CFXEffectHostAppDelegate

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_5 != -1)
  {
    +[CFXEffectHostAppDelegate sharedInstance];
  }

  v3 = sharedInstance_s_instance;

  return v3;
}

uint64_t __42__CFXEffectHostAppDelegate_sharedInstance__block_invoke()
{
  sharedInstance_s_instance = objc_alloc_init(CFXEffectHostAppDelegate);

  return MEMORY[0x2821F96F8]();
}

- (BOOL)wantsToAssertThatLoadedSceneHasAnimateFlagDisabled
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"JFX_EnableAssertionThatLoadedSceneHasAnimateFlagDisabled"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)wantsToAssertThatTopLevelGroupSpansEntireScene
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"JFX_EnableAssertionThatTopLevelGroupSpansEntireScene"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)preferredDisplayColorSpace
{
  v2 = [(CFXEffectHostAppDelegate *)self colorSpaceDelegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 preferredDisplayColorSpace];
  }

  else
  {
    v4 = MEMORY[0x277D415E0];
    v5 = +[JFXVideoCameraController sharedInstance];
    v3 = [v4 jfx_getColorSpaceFromCaptureColorSpace:{objc_msgSend(v5, "cameraColorSpace")}];
  }

  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 jfx_recommendedDisplayColorSpaceForColorSpace:v3];

  return v7;
}

- (id)preferredExportColorSpace
{
  v3 = [MEMORY[0x277D415E0] rec709GammaColorSpace];
  v4 = [(CFXEffectHostAppDelegate *)self colorSpaceDelegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 preferredExportColorSpace];
    v6 = [MEMORY[0x277D75418] currentDevice];
    v7 = [v6 jfx_recommendedDisplayColorSpaceForColorSpace:v5];

    v3 = v7;
  }

  return v3;
}

- (PVHostApplicationDelegate)colorSpaceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_colorSpaceDelegate);

  return WeakRetained;
}

@end