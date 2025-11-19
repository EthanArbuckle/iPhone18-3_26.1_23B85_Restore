@interface IRAirPlaySettings
+ (id)shared;
- (BOOL)isAutoRoutingSettingEnabled;
- (BOOL)isRoutePredictionSettingEnabled;
- (IRAirPlaySettings)init;
- (id)dumpState;
@end

@implementation IRAirPlaySettings

+ (id)shared
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__IRAirPlaySettings_shared__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (shared_onceToken != -1)
  {
    dispatch_once(&shared_onceToken, block);
  }

  v2 = shared_sharedInstance;

  return v2;
}

uint64_t __27__IRAirPlaySettings_shared__block_invoke(uint64_t a1)
{
  shared_sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (IRAirPlaySettings)init
{
  v5.receiver = self;
  v5.super_class = IRAirPlaySettings;
  v2 = [(IRAirPlaySettings *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IRAirPlaySettings *)v2 setIsAutoRoutingSettingEnabledInternal:1];
    [(IRAirPlaySettings *)v3 setIsRoutePredictionSettingEnabledInternal:1];
  }

  return v3;
}

- (BOOL)isAutoRoutingSettingEnabled
{
  v15 = *MEMORY[0x277D85DE8];
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"EnableAutoRouting", @"com.apple.coremedia", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v4 = AppBooleanValue == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = !v4;
  if ([(IRAirPlaySettings *)self isAutoRoutingSettingEnabledInternal]!= v5)
  {
    [(IRAirPlaySettings *)self setIsAutoRoutingSettingEnabledInternal:v5];
    v6 = *MEMORY[0x277D21268];
    if (os_log_type_enabled(*MEMORY[0x277D21268], OS_LOG_TYPE_DEFAULT))
    {
      v7 = MEMORY[0x277CCABB0];
      v8 = v6;
      v9 = [v7 numberWithBool:{-[IRAirPlaySettings isAutoRoutingSettingEnabledInternal](self, "isAutoRoutingSettingEnabledInternal")}];
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&dword_25543D000, v8, OS_LOG_TYPE_DEFAULT, "#airplay-settings, autoRoutingSettingEnabled: %@", buf, 0xCu);
    }
  }

  result = [(IRAirPlaySettings *)self isAutoRoutingSettingEnabledInternal];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isRoutePredictionSettingEnabled
{
  v15 = *MEMORY[0x277D85DE8];
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"EnableRoutePrediction", @"com.apple.coremedia", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v4 = AppBooleanValue == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = !v4;
  if ([(IRAirPlaySettings *)self isRoutePredictionSettingEnabledInternal]!= v5)
  {
    [(IRAirPlaySettings *)self setIsRoutePredictionSettingEnabledInternal:v5];
    v6 = *MEMORY[0x277D21268];
    if (os_log_type_enabled(*MEMORY[0x277D21268], OS_LOG_TYPE_DEFAULT))
    {
      v7 = MEMORY[0x277CCABB0];
      v8 = v6;
      v9 = [v7 numberWithBool:{-[IRAirPlaySettings isRoutePredictionSettingEnabledInternal](self, "isRoutePredictionSettingEnabledInternal")}];
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&dword_25543D000, v8, OS_LOG_TYPE_DEFAULT, "#airplay-settings, routePredictionSettingEnabled: %@", buf, 0xCu);
    }
  }

  result = [(IRAirPlaySettings *)self isRoutePredictionSettingEnabledInternal]|| [(IRAirPlaySettings *)self isAutoRoutingSettingEnabledInternal];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)dumpState
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[IRAirPlaySettings isAutoRoutingSettingEnabledInternal](self, "isAutoRoutingSettingEnabledInternal")}];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[IRAirPlaySettings isRoutePredictionSettingEnabledInternal](self, "isRoutePredictionSettingEnabledInternal")}];
  v6 = [v3 stringWithFormat:@"IRAirPlaySettings: autoRoutingSettingEnabled: %@, routePredictionSettingEnabled: %@", v4, v5];

  return v6;
}

@end