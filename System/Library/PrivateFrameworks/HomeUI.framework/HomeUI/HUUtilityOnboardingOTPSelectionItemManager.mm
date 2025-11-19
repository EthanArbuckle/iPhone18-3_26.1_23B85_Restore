@interface HUUtilityOnboardingOTPSelectionItemManager
- (HUUtilityOnboardingOTPSelectionItemManager)initWithDelegate:(id)a3 context:(id)a4;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
@end

@implementation HUUtilityOnboardingOTPSelectionItemManager

- (HUUtilityOnboardingOTPSelectionItemManager)initWithDelegate:(id)a3 context:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v22.receiver = self;
  v22.super_class = HUUtilityOnboardingOTPSelectionItemManager;
  v8 = [(HFItemManager *)&v22 initWithDelegate:a3 sourceItem:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_context, a4);
    v10 = [v7 otpFactors];
    v11 = [v10 na_firstObjectPassingTest:&__block_literal_global_8];

    if (v11)
    {
      v12 = MEMORY[0x277CBEB58];
      v13 = [v7 otpFactors];
      v14 = [v12 setWithArray:v13];

      v15 = objc_opt_new();
      [v15 addObject:v11];
      [v14 removeObject:v11];
      v16 = [v14 allObjects];
      [v15 addObjectsFromArray:v16];

      objc_storeStrong(&v9->_factors, v15);
      v17 = HFLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        factors = v9->_factors;
        *buf = 138412802;
        v24 = v9;
        v25 = 2080;
        v26 = "[HUUtilityOnboardingOTPSelectionItemManager initWithDelegate:context:]";
        v27 = 2112;
        v28 = factors;
        _os_log_debug_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEBUG, "%@:%s SORTED FACTORS %@", buf, 0x20u);
      }
    }

    else
    {
      v18 = [v7 otpFactors];
      v14 = v9->_factors;
      v9->_factors = v18;
    }

    v19 = HFLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v24 = v9;
      v25 = 2080;
      v26 = "[HUUtilityOnboardingOTPSelectionItemManager initWithDelegate:context:]";
      _os_log_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_DEFAULT, "%@:%s intialized item manager", buf, 0x16u);
    }
  }

  return v9;
}

uint64_t __71__HUUtilityOnboardingOTPSelectionItemManager_initWithDelegate_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"factorType"];
  v3 = [v2 isEqualToString:@"SMS"];

  return v3;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  v5 = [(HUUtilityOnboardingOTPSelectionItemManager *)self factors];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__HUUtilityOnboardingOTPSelectionItemManager__buildItemProvidersForHome___block_invoke;
  v14[3] = &unk_277DB78B0;
  v14[4] = self;
  v14[5] = v15;
  v6 = [v5 na_map:v14];

  v7 = objc_alloc(MEMORY[0x277D14B40]);
  v8 = [MEMORY[0x277CBEB98] setWithArray:v6];
  v9 = [v7 initWithItems:v8];

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 items];
    *buf = 138413314;
    v19 = self;
    v20 = 2080;
    v21 = "[HUUtilityOnboardingOTPSelectionItemManager _buildItemProvidersForHome:]";
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v11;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@:%s item provider: %@ with items %@\nfield items %@", buf, 0x34u);
  }

  v17 = v9;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];

  _Block_object_dispose(v15, 8);

  return v12;
}

id __73__HUUtilityOnboardingOTPSelectionItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412802;
    v25 = v5;
    v26 = 2080;
    v27 = "[HUUtilityOnboardingOTPSelectionItemManager _buildItemProvidersForHome:]_block_invoke";
    v28 = 2112;
    v29 = v3;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%s Each factor  %@", buf, 0x20u);
  }

  v6 = objc_opt_new();
  v7 = [v3 objectForKeyedSubscript:@"factorType"];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Home.OnboardingView.Utility.OTP.%@", v7];
  v9 = [@"HUUtilityOnboardingOTPFactorTitle." stringByAppendingString:v7];
  v10 = _HULocalizedStringWithDefaultValue(v9, v9, 1);
  [v6 na_safeSetObject:v10 forKey:*MEMORY[0x277D13F60]];
  [v6 na_safeSetObject:v7 forKey:@"factor-type"];
  v11 = [v3 objectForKeyedSubscript:@"destination"];
  [v6 na_safeSetObject:v11 forKey:*MEMORY[0x277D13E20]];

  v12 = [v3 objectForKeyedSubscript:@"_links"];
  v13 = [v12 objectForKeyedSubscript:@"send"];
  [v6 na_safeSetObject:v13 forKey:*MEMORY[0x277D14128]];

  v14 = [v3 objectForKeyedSubscript:@"_links"];
  v15 = [v14 objectForKeyedSubscript:@"verify"];
  [v6 na_safeSetObject:v15 forKey:*MEMORY[0x277D14138]];

  v16 = *(*(*(a1 + 40) + 8) + 24);
  if (!v16)
  {
    [v6 na_safeSetObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D13FE8]];
    v16 = *(*(*(a1 + 40) + 8) + 24);
  }

  v17 = [MEMORY[0x277CCABB0] numberWithInt:v16];
  [v6 na_safeSetObject:v17 forKey:*MEMORY[0x277D13FF0]];

  [v6 na_safeSetObject:v7 forKey:@"factor-type"];
  [v6 na_safeSetObject:v8 forKey:*MEMORY[0x277D13DC8]];
  ++*(*(*(a1 + 40) + 8) + 24);
  v18 = HFLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 32);
    *buf = 138412802;
    v25 = v19;
    v26 = 2080;
    v27 = "[HUUtilityOnboardingOTPSelectionItemManager _buildItemProvidersForHome:]_block_invoke";
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "%@:%s result %@", buf, 0x20u);
  }

  v20 = objc_alloc(MEMORY[0x277D14B38]);
  v21 = [v6 copy];
  v22 = [v20 initWithResults:v21];

  return v22;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(HFItemManager *)self allItems];
    *buf = 138413058;
    v30 = self;
    v31 = 2080;
    v32 = "[HUUtilityOnboardingOTPSelectionItemManager _buildSectionsWithDisplayedItems:]";
    v33 = 2112;
    v34 = v4;
    v35 = 2112;
    v36 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%s with displayed items %@\n%@", buf, 0x2Au);
  }

  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [(HFItemManager *)self allItems];
  v9 = [v8 allObjects];
  v10 = [v9 sortedArrayUsingComparator:&__block_literal_global_118];

  v11 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"field-identifier"];
  v12 = [v4 na_firstObjectPassingTest:&__block_literal_global_123];

  v13 = [v4 na_firstObjectPassingTest:&__block_literal_global_125];

  if (v12 | v13)
  {
    v14 = @"HUUtilityOnboardingOTPSelectionFooterSMS";
    if (v13)
    {
      v15 = v12 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v14 = @"HUUtilityOnboardingOTPSelectionFooter";
    }

    if (v12)
    {
      v16 = v14;
    }

    else
    {
      v16 = @"HUUtilityOnboardingOTPSelectionFooterEmail";
    }

    v17 = [(UtilityOnboardingContext *)self->_context config];
    v18 = [v17 name];
    v25 = HULocalizedStringWithFormat(v16, @"%@", v19, v20, v21, v22, v23, v24, v18);

    if (v25)
    {
      [v11 setFooterTitle:v25];
    }
  }

  [v11 setItems:v10];
  v26 = HFLogForCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v30 = self;
    v31 = 2080;
    v32 = "[HUUtilityOnboardingOTPSelectionItemManager _buildSectionsWithDisplayedItems:]";
    v33 = 2112;
    v34 = v11;
    _os_log_impl(&dword_20CEB6000, v26, OS_LOG_TYPE_DEFAULT, "%@:%s created field section %@", buf, 0x20u);
  }

  [v7 addObject:v11];
  v27 = HFLogForCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v30 = self;
    v31 = 2080;
    v32 = "[HUUtilityOnboardingOTPSelectionItemManager _buildSectionsWithDisplayedItems:]";
    v33 = 2112;
    v34 = v7;
    _os_log_impl(&dword_20CEB6000, v27, OS_LOG_TYPE_DEFAULT, "%@:%s All sections %@", buf, 0x20u);
  }

  return v7;
}

uint64_t __79__HUUtilityOnboardingOTPSelectionItemManager__buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 latestResults];
  v6 = *MEMORY[0x277D13FF0];
  v7 = [v5 objectForKey:*MEMORY[0x277D13FF0]];

  v8 = [v4 latestResults];

  v9 = [v8 objectForKey:v6];

  v17 = MEMORY[0x277D85DD0];
  v10 = v7;
  v18 = v10;
  v11 = v9;
  v12 = v11;
  v19 = v11;
  if (v10)
  {
    v13 = -1;
  }

  else
  {
    v13 = v11 != 0;
  }

  if (v10)
  {
    v14 = v11 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = v11;
  }

  else
  {
    v13 = [v10 compare:{v11, v17, 3221225472, __79__HUUtilityOnboardingOTPSelectionItemManager__buildSectionsWithDisplayedItems___block_invoke_2, &unk_277DB78F8, v10}];
    v15 = v19;
  }

  return v13;
}

uint64_t __79__HUUtilityOnboardingOTPSelectionItemManager__buildSectionsWithDisplayedItems___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:@"factor-type"];
  v4 = [v3 isEqualToString:@"SMS"];

  return v4;
}

uint64_t __79__HUUtilityOnboardingOTPSelectionItemManager__buildSectionsWithDisplayedItems___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:@"factor-type"];
  v4 = [v3 isEqualToString:@"EMAIL"];

  return v4;
}

@end