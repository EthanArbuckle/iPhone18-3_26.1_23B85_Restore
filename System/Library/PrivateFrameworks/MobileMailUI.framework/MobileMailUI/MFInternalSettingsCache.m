@interface MFInternalSettingsCache
+ (id)sharedCache;
- (BOOL)UIDebuggingEnabled;
- (BOOL)tiltedTabSkyViewEnabled;
@end

@implementation MFInternalSettingsCache

+ (id)sharedCache
{
  if (sharedCache_onceToken != -1)
  {
    +[MFInternalSettingsCache sharedCache];
  }

  v3 = sharedCache_sharedCache;

  return v3;
}

void __38__MFInternalSettingsCache_sharedCache__block_invoke()
{
  v0 = objc_alloc_init(MFInternalSettingsCache);
  v1 = sharedCache_sharedCache;
  sharedCache_sharedCache = v0;
}

- (BOOL)UIDebuggingEnabled
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__MFInternalSettingsCache_UIDebuggingEnabled__block_invoke;
  block[3] = &unk_2781816C0;
  block[4] = self;
  if (UIDebuggingEnabled_onceToken != -1)
  {
    dispatch_once(&UIDebuggingEnabled_onceToken, block);
  }

  return self->_UIDebuggingEnabled;
}

void __45__MFInternalSettingsCache_UIDebuggingEnabled__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEBD0] em_userDefaults];
  *(*(a1 + 32) + 9) = [v2 BOOLForKey:@"UIDebuggingEnabled"];
}

- (BOOL)tiltedTabSkyViewEnabled
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__MFInternalSettingsCache_tiltedTabSkyViewEnabled__block_invoke;
  block[3] = &unk_2781816C0;
  block[4] = self;
  if (tiltedTabSkyViewEnabled_onceToken != -1)
  {
    dispatch_once(&tiltedTabSkyViewEnabled_onceToken, block);
  }

  return self->_tiltedTabSkyViewEnabled;
}

void __50__MFInternalSettingsCache_tiltedTabSkyViewEnabled__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEBD0] em_userDefaults];
  *(*(a1 + 32) + 8) = [v2 BOOLForKey:@"TiltedTabViewSkyViewEnabled"];
}

@end