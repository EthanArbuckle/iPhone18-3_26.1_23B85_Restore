@interface SFFeatureManager
+ (BOOL)isHideBarsWhileScrollingEnabled;
+ (SFFeatureManager)sharedFeatureManager;
+ (int64_t)preferredNewDocumentShortcutBehavior;
- (BOOL)allowsUnlimitedTabs;
- (BOOL)showRectangularTabsInSeparateBar;
- (BOOL)usesFormatMenuInUnifiedTabBar;
- (SFFeatureManager)init;
- (int64_t)preferredCapsuleLayoutStyle;
- (void)_updateAccessLevel;
@end

@implementation SFFeatureManager

- (SFFeatureManager)init
{
  v6.receiver = self;
  v6.super_class = SFFeatureManager;
  v2 = [(WBUFeatureManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_tabDocumentCanHideToolbar = 1;
    [(SFFeatureManager *)v2 _updateAccessLevel];
    v4 = v3;
  }

  return v3;
}

+ (SFFeatureManager)sharedFeatureManager
{
  if (sharedFeatureManager_onceToken != -1)
  {
    +[SFFeatureManager sharedFeatureManager];
  }

  v3 = sharedFeatureManager_sharedFeatureManagerObject;

  return v3;
}

void __40__SFFeatureManager_sharedFeatureManager__block_invoke()
{
  v0 = objc_alloc_init(SFFeatureManager);
  v1 = sharedFeatureManager_sharedFeatureManagerObject;
  sharedFeatureManager_sharedFeatureManagerObject = v0;
}

- (void)_updateAccessLevel
{
  v3 = +[(WBUFeatureManager *)SFFeatureManager];
  if (v3 <= 2)
  {
    self->_addToHomeScreenAvailable = 1u >> (8 * v3);
  }
}

- (BOOL)allowsUnlimitedTabs
{
  if (allowsUnlimitedTabs_onceToken != -1)
  {
    [SFFeatureManager allowsUnlimitedTabs];
  }

  return allowsUnlimitedTabs_allowsUnlimitedTabs;
}

void __39__SFFeatureManager_allowsUnlimitedTabs__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] safari_browserDefaults];
  allowsUnlimitedTabs_allowsUnlimitedTabs = [v0 BOOLForKey:@"DebugUnlimitedTabsEnabled"];
}

- (BOOL)showRectangularTabsInSeparateBar
{
  if (showRectangularTabsInSeparateBar_onceToken != -1)
  {
    [SFFeatureManager showRectangularTabsInSeparateBar];
  }

  return showRectangularTabsInSeparateBar_showRectangularTabsInSeparateBar;
}

uint64_t __52__SFFeatureManager_showRectangularTabsInSeparateBar__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] safari_browserDefaults];
  showRectangularTabsInSeparateBar_showRectangularTabsInSeparateBar = [v0 safari_BOOLForKey:@"DebugUnifiedBarShowRectangularTabsInSeparateBar" defaultValue:0];

  result = [MEMORY[0x1E69C8880] isSolariumEnabled];
  if (result)
  {
    showRectangularTabsInSeparateBar_showRectangularTabsInSeparateBar = 0;
  }

  return result;
}

- (int64_t)preferredCapsuleLayoutStyle
{
  if (_SFDeviceIsPad())
  {
    return 2;
  }

  v3 = [MEMORY[0x1E695E000] safari_browserDefaults];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__SFFeatureManager_preferredCapsuleLayoutStyle__block_invoke;
  block[3] = &unk_1E721B360;
  v8 = v3;
  v4 = preferredCapsuleLayoutStyle_onceToken;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&preferredCapsuleLayoutStyle_onceToken, block);
  }

  v2 = [v5 integerForKey:@"PreferredCapsuleLayoutStyle"];

  return v2;
}

void __47__SFFeatureManager_preferredCapsuleLayoutStyle__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) safari_numberForKey:@"PreferredCapsuleLayoutStyle"];
  if (v3)
  {
    v2 = [v3 integerValue];
    if ((v2 - 1) >= 2 && (v2 != 3 || ([MEMORY[0x1E69C8880] isSolariumEnabled] & 1) == 0))
    {
      [*(a1 + 32) removeObjectForKey:@"PreferredCapsuleLayoutStyle"];
    }
  }

  if (([*(a1 + 32) BOOLForKey:@"HasMigratedToSolariumCapsuleLayoutStyle"] & 1) == 0 && objc_msgSend(MEMORY[0x1E69C8880], "isSolariumEnabled"))
  {
    if ([v3 integerValue] == 1)
    {
      [*(a1 + 32) removeObjectForKey:@"PreferredCapsuleLayoutStyle"];
    }

    [*(a1 + 32) setBool:1 forKey:@"HasMigratedToSolariumCapsuleLayoutStyle"];
  }
}

- (BOOL)usesFormatMenuInUnifiedTabBar
{
  if (usesFormatMenuInUnifiedTabBar_onceToken != -1)
  {
    [SFFeatureManager usesFormatMenuInUnifiedTabBar];
  }

  return usesFormatMenuInUnifiedTabBar_usesFormatMenuInUnifiedTabBar;
}

void __49__SFFeatureManager_usesFormatMenuInUnifiedTabBar__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] safari_browserDefaults];
  usesFormatMenuInUnifiedTabBar_usesFormatMenuInUnifiedTabBar = [v0 BOOLForKey:@"DebugUsePageFormatMenuInUnifiedTabBar"];
}

+ (int64_t)preferredNewDocumentShortcutBehavior
{
  v2 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v3 = [v2 safari_integerForKey:@"NewDocumentShortcutBehavior" defaultValue:{+[SFFeatureManager defaultNewDocumentShortcutBehavior](SFFeatureManager, "defaultNewDocumentShortcutBehavior")}];

  return v3;
}

+ (BOOL)isHideBarsWhileScrollingEnabled
{
  if (!_SFDeviceIsPad())
  {
    return 1;
  }

  v2 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v3 = [v2 safari_BOOLForKey:@"HideBarsWhenScrolling" defaultValue:1];

  return v3;
}

@end