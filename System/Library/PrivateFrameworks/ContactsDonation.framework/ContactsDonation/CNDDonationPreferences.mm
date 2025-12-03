@interface CNDDonationPreferences
+ (id)observableWithPreferences:(id)preferences notificationCenter:(id)center schedulerProvider:(id)provider;
- (BOOL)isDonationsEnabled;
- (CNDDonationPreferences)init;
- (CNDDonationPreferences)initWithNotificationCenter:(id)center logger:(id)logger donationPreferenceCheckingBlock:(id)block donationPreferenceSettingBlock:(id)settingBlock;
- (NSString)description;
@end

@implementation CNDDonationPreferences

- (CNDDonationPreferences)init
{
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  v4 = +[CNDonationLoggerProvider defaultProvider];
  preferencesLogger = [v4 preferencesLogger];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __30__CNDDonationPreferences_init__block_invoke;
  v10[3] = &unk_278569FA8;
  v11 = @"com.apple.MobileAddressBook";
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __30__CNDDonationPreferences_init__block_invoke_2;
  v8[3] = &unk_278569FD0;
  v9 = @"com.apple.MobileAddressBook";
  v6 = [(CNDDonationPreferences *)self initWithNotificationCenter:defaultCenter logger:preferencesLogger donationPreferenceCheckingBlock:v10 donationPreferenceSettingBlock:v8];

  return v6;
}

uint64_t __30__CNDDonationPreferences_init__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v3 = [v2 containsObject:v1];

  return v3 ^ 1u;
}

void __30__CNDDonationPreferences_init__block_invoke_2(uint64_t a1, int a2)
{
  v8 = *(a1 + 32);
  v3 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v4 = v3;
  if (v3)
  {
    v5 = [v3 mutableCopy];
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;
  if (a2)
  {
    [v5 removeObject:v8];
  }

  else if (([v5 containsObject:v8] & 1) == 0)
  {
    [v6 addObject:v8];
  }

  CFPreferencesSetAppValue(@"AppCanShowSiriSuggestionsBlacklist", v6, @"com.apple.suggestions");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.suggestions.settingsChanged", 0, 0, 1u);
}

- (CNDDonationPreferences)initWithNotificationCenter:(id)center logger:(id)logger donationPreferenceCheckingBlock:(id)block donationPreferenceSettingBlock:(id)settingBlock
{
  centerCopy = center;
  loggerCopy = logger;
  blockCopy = block;
  settingBlockCopy = settingBlock;
  v23.receiver = self;
  v23.super_class = CNDDonationPreferences;
  v15 = [(CNDDonationPreferences *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_notificationCenter, center);
    objc_storeStrong(&v16->_logger, logger);
    v17 = [blockCopy copy];
    donationPreferenceCheckingBlock = v16->_donationPreferenceCheckingBlock;
    v16->_donationPreferenceCheckingBlock = v17;

    v19 = [settingBlockCopy copy];
    donationPreferenceSettingBlock = v16->_donationPreferenceSettingBlock;
    v16->_donationPreferenceSettingBlock = v19;

    v21 = v16;
  }

  return v16;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CFBDF0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"donations enabled" BOOLValue:{-[CNDDonationPreferences isDonationsEnabled](self, "isDonationsEnabled")}];
  build = [v3 build];

  return build;
}

- (BOOL)isDonationsEnabled
{
  v3 = (*(self->_donationPreferenceCheckingBlock + 2))();
  logger = [(CNDDonationPreferences *)self logger];
  [logger isDonationsEnabled:v3];

  return v3;
}

+ (id)observableWithPreferences:(id)preferences notificationCenter:(id)center schedulerProvider:(id)provider
{
  v21[1] = *MEMORY[0x277D85DE8];
  preferencesCopy = preferences;
  v7 = MEMORY[0x277CFBE60];
  providerCopy = provider;
  v9 = [v7 observableOnDarwinNotificationCenterWithName:@"com.apple.suggestions.settingsChanged"];
  null = [MEMORY[0x277CBEB68] null];
  v21[0] = null;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  backgroundScheduler = [providerCopy backgroundScheduler];

  v13 = [v9 startWith:v11 scheduler:backgroundScheduler];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __89__CNDDonationPreferences_observableWithPreferences_notificationCenter_schedulerProvider___block_invoke;
  v19[3] = &unk_278569FF8;
  v20 = preferencesCopy;
  v14 = preferencesCopy;
  v15 = [v13 map:v19];
  distinctUntilChanged = [v15 distinctUntilChanged];

  v17 = *MEMORY[0x277D85DE8];

  return distinctUntilChanged;
}

uint64_t __89__CNDDonationPreferences_observableWithPreferences_notificationCenter_schedulerProvider___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v2 = [*(a1 + 32) isDonationsEnabled];

  return [v1 numberWithBool:v2];
}

@end