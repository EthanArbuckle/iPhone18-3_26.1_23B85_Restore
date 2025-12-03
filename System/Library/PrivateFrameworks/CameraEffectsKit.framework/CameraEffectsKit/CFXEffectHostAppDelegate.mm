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
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"JFX_EnableAssertionThatLoadedSceneHasAnimateFlagDisabled"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)wantsToAssertThatTopLevelGroupSpansEntireScene
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"JFX_EnableAssertionThatTopLevelGroupSpansEntireScene"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)preferredDisplayColorSpace
{
  colorSpaceDelegate = [(CFXEffectHostAppDelegate *)self colorSpaceDelegate];
  if (objc_opt_respondsToSelector())
  {
    preferredDisplayColorSpace = [colorSpaceDelegate preferredDisplayColorSpace];
  }

  else
  {
    v4 = MEMORY[0x277D415E0];
    v5 = +[JFXVideoCameraController sharedInstance];
    preferredDisplayColorSpace = [v4 jfx_getColorSpaceFromCaptureColorSpace:{objc_msgSend(v5, "cameraColorSpace")}];
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v7 = [currentDevice jfx_recommendedDisplayColorSpaceForColorSpace:preferredDisplayColorSpace];

  return v7;
}

- (id)preferredExportColorSpace
{
  rec709GammaColorSpace = [MEMORY[0x277D415E0] rec709GammaColorSpace];
  colorSpaceDelegate = [(CFXEffectHostAppDelegate *)self colorSpaceDelegate];
  if (objc_opt_respondsToSelector())
  {
    preferredExportColorSpace = [colorSpaceDelegate preferredExportColorSpace];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v7 = [currentDevice jfx_recommendedDisplayColorSpaceForColorSpace:preferredExportColorSpace];

    rec709GammaColorSpace = v7;
  }

  return rec709GammaColorSpace;
}

- (PVHostApplicationDelegate)colorSpaceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_colorSpaceDelegate);

  return WeakRetained;
}

@end