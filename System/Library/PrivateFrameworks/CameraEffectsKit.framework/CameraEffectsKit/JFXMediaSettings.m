@interface JFXMediaSettings
+ (CGSize)compositionSize;
+ (CGSize)frameSize;
+ (CGSize)renderSize;
+ (JFXMediaSettings)sharedInstance;
+ (JFXMediaSettingsProvider)providerDelegate;
+ (int)frameRate;
+ (int)timeScale;
+ (void)setProviderDelegate:(id)a3;
- (CGSize)compositionSize;
- (CGSize)frameSize;
- (CGSize)renderSize;
- (int)frameRate;
- (int)timeScale;
@end

@implementation JFXMediaSettings

+ (JFXMediaSettings)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[JFXMediaSettings sharedInstance];
  }

  v3 = sharedInstance_s_sharedInstance_0;

  return v3;
}

uint64_t __34__JFXMediaSettings_sharedInstance__block_invoke()
{
  sharedInstance_s_sharedInstance_0 = objc_alloc_init(JFXMediaSettings);

  return MEMORY[0x2821F96F8]();
}

+ (JFXMediaSettingsProvider)providerDelegate
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  v3 = jfx_providerDelegate;
  objc_sync_exit(v2);

  return v3;
}

+ (void)setProviderDelegate:(id)a3
{
  v3 = a3;
  obj = objc_opt_class();
  objc_sync_enter(obj);
  v4 = jfx_providerDelegate;
  jfx_providerDelegate = v3;

  objc_sync_exit(obj);
}

- (int)frameRate
{
  v2 = [objc_opt_class() providerDelegate];
  v3 = [v2 frameRate];

  return v3;
}

- (int)timeScale
{
  v2 = [objc_opt_class() providerDelegate];
  v3 = [v2 timeScale];

  return v3;
}

- (CGSize)renderSize
{
  v2 = [objc_opt_class() providerDelegate];
  [v2 renderSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)compositionSize
{
  v2 = [objc_opt_class() providerDelegate];
  [v2 compositionSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)frameSize
{
  v2 = [objc_opt_class() providerDelegate];
  [v2 frameSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

+ (int)frameRate
{
  v2 = [a1 sharedInstance];
  v3 = [v2 frameRate];

  return v3;
}

+ (int)timeScale
{
  v2 = [a1 sharedInstance];
  v3 = [v2 timeScale];

  return v3;
}

+ (CGSize)frameSize
{
  v2 = [a1 sharedInstance];
  [v2 frameSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

+ (CGSize)renderSize
{
  v2 = [a1 sharedInstance];
  [v2 renderSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

+ (CGSize)compositionSize
{
  v2 = [a1 sharedInstance];
  [v2 compositionSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end