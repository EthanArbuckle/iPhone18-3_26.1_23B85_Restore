@interface JFXMediaSettings
+ (CGSize)compositionSize;
+ (CGSize)frameSize;
+ (CGSize)renderSize;
+ (JFXMediaSettings)sharedInstance;
+ (JFXMediaSettingsProvider)providerDelegate;
+ (int)frameRate;
+ (int)timeScale;
+ (void)setProviderDelegate:(id)delegate;
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

+ (void)setProviderDelegate:(id)delegate
{
  delegateCopy = delegate;
  obj = objc_opt_class();
  objc_sync_enter(obj);
  v4 = jfx_providerDelegate;
  jfx_providerDelegate = delegateCopy;

  objc_sync_exit(obj);
}

- (int)frameRate
{
  providerDelegate = [objc_opt_class() providerDelegate];
  frameRate = [providerDelegate frameRate];

  return frameRate;
}

- (int)timeScale
{
  providerDelegate = [objc_opt_class() providerDelegate];
  timeScale = [providerDelegate timeScale];

  return timeScale;
}

- (CGSize)renderSize
{
  providerDelegate = [objc_opt_class() providerDelegate];
  [providerDelegate renderSize];
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
  providerDelegate = [objc_opt_class() providerDelegate];
  [providerDelegate compositionSize];
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
  providerDelegate = [objc_opt_class() providerDelegate];
  [providerDelegate frameSize];
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
  sharedInstance = [self sharedInstance];
  frameRate = [sharedInstance frameRate];

  return frameRate;
}

+ (int)timeScale
{
  sharedInstance = [self sharedInstance];
  timeScale = [sharedInstance timeScale];

  return timeScale;
}

+ (CGSize)frameSize
{
  sharedInstance = [self sharedInstance];
  [sharedInstance frameSize];
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
  sharedInstance = [self sharedInstance];
  [sharedInstance renderSize];
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
  sharedInstance = [self sharedInstance];
  [sharedInstance compositionSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end