@interface HUUtilityOnboardingConnectionItemManager
- (HUUtilityOnboardingConnectionItemManager)initWithDelegate:(id)a3 data:(id)a4;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
@end

@implementation HUUtilityOnboardingConnectionItemManager

- (HUUtilityOnboardingConnectionItemManager)initWithDelegate:(id)a3 data:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v11.receiver = self;
  v11.super_class = HUUtilityOnboardingConnectionItemManager;
  v7 = [(HFItemManager *)&v11 initWithDelegate:a3 sourceItem:0];
  v8 = v7;
  if (v7)
  {
    [(HUUtilityOnboardingConnectionItemManager *)v7 setData:v6];
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v13 = v8;
      v14 = 2080;
      v15 = "[HUUtilityOnboardingConnectionItemManager initWithDelegate:data:]";
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@:%s intialized item manager", buf, 0x16u);
    }
  }

  return v8;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(HUUtilityOnboardingConnectionItemManager *)self data];
    *buf = 138412802;
    v20 = self;
    v21 = 2080;
    v22 = "[HUUtilityOnboardingConnectionItemManager _buildItemProvidersForHome:]";
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%s  data %@", buf, 0x20u);
  }

  v7 = objc_opt_new();
  if (a3)
  {
    v8 = [(NSDictionary *)self->_data objectForKeyedSubscript:@"homeName"];
    [v7 na_safeSetObject:v8 forKey:*MEMORY[0x277D13F60]];

    v9 = [(NSDictionary *)self->_data objectForKeyedSubscript:@"utilityName"];
    [v7 na_safeSetObject:v9 forKey:*MEMORY[0x277D13E30]];

    [v7 na_safeSetObject:@"Home.OnboardingView.Utility.SubscriptionInfo" forKey:*MEMORY[0x277D13DC8]];
  }

  v10 = objc_alloc(MEMORY[0x277D14B38]);
  v11 = [v7 copy];
  v12 = [v10 initWithResults:v11];

  v13 = objc_alloc(MEMORY[0x277D14B40]);
  v14 = [MEMORY[0x277CBEB98] setWithObject:v12];
  v15 = [v13 initWithItems:v14];

  v18 = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];

  return v16;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"subscriptionIdentifier"];
  v5 = [(HFItemManager *)self allItems];
  v6 = [v5 allObjects];
  [v4 setItems:v6];

  v9[0] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  return v7;
}

@end