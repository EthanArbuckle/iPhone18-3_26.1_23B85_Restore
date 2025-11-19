@interface CNDInMemoryDonationPreferences
+ (id)observableWithPreferences:(id)a3 notificationCenter:(id)a4 schedulerProvider:(id)a5;
@end

@implementation CNDInMemoryDonationPreferences

+ (id)observableWithPreferences:(id)a3 notificationCenter:(id)a4 schedulerProvider:(id)a5
{
  v22[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = MEMORY[0x277CFBE60];
  v9 = a5;
  v10 = [v8 observableOnNotificationCenter:a4 withName:@"CNDDonationsEnabledPreferencesKey" object:0];
  v11 = [MEMORY[0x277CBEB68] null];
  v22[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v13 = [v9 backgroundScheduler];

  v14 = [v10 startWith:v12 scheduler:v13];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __97__CNDInMemoryDonationPreferences_observableWithPreferences_notificationCenter_schedulerProvider___block_invoke;
  v20[3] = &unk_278569FF8;
  v21 = v7;
  v15 = v7;
  v16 = [v14 map:v20];
  v17 = [v16 distinctUntilChanged];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

uint64_t __97__CNDInMemoryDonationPreferences_observableWithPreferences_notificationCenter_schedulerProvider___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v2 = [*(a1 + 32) isDonationsEnabled];

  return [v1 numberWithBool:v2];
}

@end