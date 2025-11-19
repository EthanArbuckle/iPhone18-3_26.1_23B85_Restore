@interface FLEnvironment
+ (id)currentEnvironment;
- (BOOL)isInternal;
- (BOOL)normalizeExpirationToMidnight;
- (BOOL)shouldHideAllFollowUps;
- (BOOL)shouldShowUnapprovedItems;
- (BOOL)stressMode;
- (FLEnvironment)init;
- (double)oneDayTimeInterval;
- (id)stressBundleIdentifiers;
- (id)supportedBundleIdentifiers;
- (id)supportedNotifyingAppIds;
@end

@implementation FLEnvironment

- (id)supportedBundleIdentifiers
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__FLEnvironment_supportedBundleIdentifiers__block_invoke;
  block[3] = &unk_278853010;
  block[4] = self;
  if (supportedBundleIdentifiers_onceToken != -1)
  {
    dispatch_once(&supportedBundleIdentifiers_onceToken, block);
  }

  return supportedBundleIdentifiers_bundleIdentifiers;
}

+ (id)currentEnvironment
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__FLEnvironment_currentEnvironment__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (currentEnvironment_onceToken != -1)
  {
    dispatch_once(&currentEnvironment_onceToken, block);
  }

  v2 = currentEnvironment_env;

  return v2;
}

- (BOOL)shouldHideAllFollowUps
{
  if (shouldHideAllFollowUps_onceToken != -1)
  {
    [FLEnvironment shouldHideAllFollowUps];
  }

  return shouldHideAllFollowUps_hideAll;
}

- (FLEnvironment)init
{
  v5.receiver = self;
  v5.super_class = FLEnvironment;
  v2 = [(FLEnvironment *)&v5 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.followup"];
    [(FLEnvironment *)v2 setFollowupDefaults:v3];
  }

  return v2;
}

uint64_t __35__FLEnvironment_currentEnvironment__block_invoke(uint64_t a1)
{
  currentEnvironment_env = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (BOOL)isInternal
{
  if (isInternal_onceToken != -1)
  {
    [FLEnvironment isInternal];
  }

  return isInternal_isInternalBuild;
}

uint64_t __27__FLEnvironment_isInternal__block_invoke()
{
  result = MGGetBoolAnswer();
  isInternal_isInternalBuild = result;
  return result;
}

void __43__FLEnvironment_supportedBundleIdentifiers__block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) stressMode])
  {
    supportedBundleIdentifiers_bundleIdentifiers = [*(a1 + 32) stressBundleIdentifiers];
    v2 = *MEMORY[0x277D85DE8];

    MEMORY[0x2821F96F8]();
  }

  else
  {
    v6[0] = @"com.apple.Preferences";
    v6[1] = @"com.apple.Bridge";
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
    v4 = supportedBundleIdentifiers_bundleIdentifiers;
    supportedBundleIdentifiers_bundleIdentifiers = v3;

    v5 = *MEMORY[0x277D85DE8];
  }
}

- (BOOL)stressMode
{
  if (stressMode_onceToken != -1)
  {
    [FLEnvironment stressMode];
  }

  return stressMode_stress;
}

void __27__FLEnvironment_stressMode__block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  stressMode_stress = CFPreferencesGetAppBooleanValue(@"StressMode", @"com.apple.followup", 0) != 0;
  v0 = _FLLogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = [MEMORY[0x277CCABB0] numberWithBool:stressMode_stress];
    v3 = 138412290;
    v4 = v1;
    _os_log_impl(&dword_22E696000, v0, OS_LOG_TYPE_DEFAULT, "Read StressMode: %@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldShowUnapprovedItems
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__FLEnvironment_shouldShowUnapprovedItems__block_invoke;
  block[3] = &unk_278853010;
  block[4] = self;
  if (shouldShowUnapprovedItems_onceToken != -1)
  {
    dispatch_once(&shouldShowUnapprovedItems_onceToken, block);
  }

  return shouldShowUnapprovedItems_shouldShowUnapprovedItems;
}

void __42__FLEnvironment_shouldShowUnapprovedItems__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) followupDefaults];
  v2 = [v1 valueForKey:@"ShouldShowUnapprovedItems"];

  v3 = _FLLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_22E696000, v3, OS_LOG_TYPE_DEFAULT, "Read ShouldShowUnapprovedItems: %@", &v5, 0xCu);
  }

  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      shouldShowUnapprovedItems_shouldShowUnapprovedItems = [v2 BOOLValue];
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __39__FLEnvironment_shouldHideAllFollowUps__block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  shouldHideAllFollowUps_hideAll = CFPreferencesGetAppBooleanValue(@"HideAll", @"com.apple.followup", 0) != 0;
  v0 = _FLLogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = [MEMORY[0x277CCABB0] numberWithBool:shouldHideAllFollowUps_hideAll];
    v3 = 138412290;
    v4 = v1;
    _os_log_impl(&dword_22E696000, v0, OS_LOG_TYPE_DEFAULT, "Read HideAll: %@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (id)stressBundleIdentifiers
{
  if (stressBundleIdentifiers_onceToken != -1)
  {
    [FLEnvironment stressBundleIdentifiers];
  }

  v3 = stressBundleIdentifiers_bundleIdentifiers;

  return v3;
}

void __40__FLEnvironment_stressBundleIdentifiers__block_invoke()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v3[0] = @"com.apple.Preferences";
  v3[1] = @"com.apple.Bridge";
  v3[2] = @"com.apple.Home";
  v3[3] = @"com.apple.mobilesafari";
  v3[4] = @"com.apple.MobileSMS";
  v3[5] = @"com.apple.mobileslideshow";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:6];
  v1 = stressBundleIdentifiers_bundleIdentifiers;
  stressBundleIdentifiers_bundleIdentifiers = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (BOOL)normalizeExpirationToMidnight
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [(FLEnvironment *)self followupDefaults];
  v3 = [v2 valueForKey:@"NormalizeToMidnight"];

  v4 = _FLLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_22E696000, v4, OS_LOG_TYPE_DEFAULT, "Read NormalizeToMidnight: %@", &v8, 0xCu);
  }

  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = normalizeExpirationToMidnight_result;
  }

  normalizeExpirationToMidnight_result = v5;

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (double)oneDayTimeInterval
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__FLEnvironment_oneDayTimeInterval__block_invoke;
  block[3] = &unk_278853010;
  block[4] = self;
  if (oneDayTimeInterval_onceToken[0] != -1)
  {
    dispatch_once(oneDayTimeInterval_onceToken, block);
  }

  return *&oneDayTimeInterval_timeInterval;
}

void __35__FLEnvironment_oneDayTimeInterval__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) followupDefaults];
  v2 = [v1 valueForKey:@"OneDayInterval"];

  v3 = _FLLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v2;
    _os_log_impl(&dword_22E696000, v3, OS_LOG_TYPE_DEFAULT, "Read OneDayInterval: %@", &v7, 0xCu);
  }

  [v2 doubleValue];
  if (v4 > 0.0)
  {
    [v2 doubleValue];
    oneDayTimeInterval_timeInterval = v5;
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)supportedNotifyingAppIds
{
  if (supportedNotifyingAppIds_onceToken != -1)
  {
    [FLEnvironment supportedNotifyingAppIds];
  }

  v3 = supportedNotifyingAppIds_appIds;

  return v3;
}

void __41__FLEnvironment_supportedNotifyingAppIds__block_invoke()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = @"com.apple.Preferences";
  v3[1] = @"com.apple.iCloud.FollowUp";
  v3[2] = @"com.apple.NDO.FollowUp";
  v3[3] = @"com.apple.ThreatNotification.FollowUp";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:4];
  v1 = supportedNotifyingAppIds_appIds;
  supportedNotifyingAppIds_appIds = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end