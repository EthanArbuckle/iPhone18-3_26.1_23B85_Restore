@interface CNDDonationPreferences
+ (id)observableWithPreferences:(id)a3 notificationCenter:(id)a4 schedulerProvider:(id)a5;
- (BOOL)isDonationsEnabled;
- (CNDDonationPreferences)init;
- (CNDDonationPreferences)initWithNotificationCenter:(id)a3 logger:(id)a4 donationPreferenceCheckingBlock:(id)a5 donationPreferenceSettingBlock:(id)a6;
- (NSString)description;
@end

@implementation CNDDonationPreferences

- (CNDDonationPreferences)init
{
  v3 = [MEMORY[0x277CCA9A0] defaultCenter];
  v4 = +[CNDonationLoggerProvider defaultProvider];
  v5 = [v4 preferencesLogger];

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
  v6 = [(CNDDonationPreferences *)self initWithNotificationCenter:v3 logger:v5 donationPreferenceCheckingBlock:v10 donationPreferenceSettingBlock:v8];

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

- (CNDDonationPreferences)initWithNotificationCenter:(id)a3 logger:(id)a4 donationPreferenceCheckingBlock:(id)a5 donationPreferenceSettingBlock:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v23.receiver = self;
  v23.super_class = CNDDonationPreferences;
  v15 = [(CNDDonationPreferences *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_notificationCenter, a3);
    objc_storeStrong(&v16->_logger, a4);
    v17 = [v13 copy];
    donationPreferenceCheckingBlock = v16->_donationPreferenceCheckingBlock;
    v16->_donationPreferenceCheckingBlock = v17;

    v19 = [v14 copy];
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
  v5 = [v3 build];

  return v5;
}

- (BOOL)isDonationsEnabled
{
  v3 = (*(self->_donationPreferenceCheckingBlock + 2))();
  v4 = [(CNDDonationPreferences *)self logger];
  [v4 isDonationsEnabled:v3];

  return v3;
}

+ (id)observableWithPreferences:(id)a3 notificationCenter:(id)a4 schedulerProvider:(id)a5
{
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277CFBE60];
  v8 = a5;
  v9 = [v7 observableOnDarwinNotificationCenterWithName:@"com.apple.suggestions.settingsChanged"];
  v10 = [MEMORY[0x277CBEB68] null];
  v21[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v12 = [v8 backgroundScheduler];

  v13 = [v9 startWith:v11 scheduler:v12];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __89__CNDDonationPreferences_observableWithPreferences_notificationCenter_schedulerProvider___block_invoke;
  v19[3] = &unk_278569FF8;
  v20 = v6;
  v14 = v6;
  v15 = [v13 map:v19];
  v16 = [v15 distinctUntilChanged];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t __89__CNDDonationPreferences_observableWithPreferences_notificationCenter_schedulerProvider___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v2 = [*(a1 + 32) isDonationsEnabled];

  return [v1 numberWithBool:v2];
}

@end