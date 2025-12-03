@interface HUUtilityOnboardingTAFItemManager
- (HUUtilityOnboardingTAFItemManager)initWithDelegate:(id)delegate fields:(id)fields sections:(id)sections;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
@end

@implementation HUUtilityOnboardingTAFItemManager

- (HUUtilityOnboardingTAFItemManager)initWithDelegate:(id)delegate fields:(id)fields sections:(id)sections
{
  v23 = *MEMORY[0x277D85DE8];
  fieldsCopy = fields;
  sectionsCopy = sections;
  v16.receiver = self;
  v16.super_class = HUUtilityOnboardingTAFItemManager;
  v11 = [(HFItemManager *)&v16 initWithDelegate:delegate sourceItem:0];
  v12 = v11;
  if (v11)
  {
    if (fieldsCopy)
    {
      objc_storeStrong(&v11->_TAFfields, fields);
    }

    if (sectionsCopy)
    {
      objc_storeStrong(&v12->_TAFSections, sections);
    }

    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      *buf = 138412802;
      v18 = v12;
      v19 = 2080;
      v20 = "[HUUtilityOnboardingTAFItemManager initWithDelegate:fields:sections:]";
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%@:%s intialized item manager with taf type %@ ", buf, 0x20u);
    }
  }

  return v12;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v27 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    TAFfields = self->_TAFfields;
    *buf = 138412802;
    selfCopy2 = self;
    v21 = 2080;
    v22 = "[HUUtilityOnboardingTAFItemManager _buildItemProvidersForHome:]";
    v23 = 2112;
    v24 = TAFfields;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "*** %@:%s  TAF fields as set %@", buf, 0x20u);
  }

  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = 0;
  tAFfields = [(HUUtilityOnboardingTAFItemManager *)self TAFfields];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64__HUUtilityOnboardingTAFItemManager__buildItemProvidersForHome___block_invoke;
  v16[3] = &unk_277DB9F00;
  v16[4] = self;
  v16[5] = v17;
  v8 = [tAFfields na_map:v16];

  v9 = objc_alloc(MEMORY[0x277D14B40]);
  v10 = [MEMORY[0x277CBEB98] setWithArray:v8];
  v11 = [v9 initWithItems:v10];

  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    items = [(NSArray *)v11 items];
    *buf = 138413058;
    selfCopy2 = self;
    v21 = 2080;
    v22 = "[HUUtilityOnboardingTAFItemManager _buildItemProvidersForHome:]";
    v23 = 2112;
    v24 = v11;
    v25 = 2112;
    v26 = items;
    _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "%@:%s item provider: %@ with items %@ ", buf, 0x2Au);
  }

  v18 = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];

  _Block_object_dispose(v17, 8);

  return v14;
}

id __64__HUUtilityOnboardingTAFItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v18 = 138412802;
    v19 = v5;
    v20 = 2080;
    v21 = "[HUUtilityOnboardingTAFItemManager _buildItemProvidersForHome:]_block_invoke";
    v22 = 2112;
    v23 = v3;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%s Each field  %@", &v18, 0x20u);
  }

  v6 = objc_opt_new();
  v7 = [v3 label];
  [v6 na_safeSetObject:v7 forKey:*MEMORY[0x277D13F60]];

  v8 = [v3 formKey];
  [v6 na_safeSetObject:v8 forKey:*MEMORY[0x277D13E30]];

  if ([v3 required])
  {
    v9 = @"HUUtilityOnboardingTAF_RequiredField";
  }

  else
  {
    v9 = @"HUUtilityOnboardingTAF_OptionalField";
  }

  v10 = _HULocalizedStringWithDefaultValue(v9, v9, 1);
  [v6 na_safeSetObject:v10 forKey:*MEMORY[0x277D13F70]];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*(*(a1 + 40) + 8) + 24)];
  [v6 na_safeSetObject:v11 forKey:*MEMORY[0x277D13FF0]];

  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    v18 = 138412802;
    v19 = v13;
    v20 = 2080;
    v21 = "[HUUtilityOnboardingTAFItemManager _buildItemProvidersForHome:]_block_invoke";
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "%@:%s result %@", &v18, 0x20u);
  }

  ++*(*(*(a1 + 40) + 8) + 24);
  v14 = objc_alloc(MEMORY[0x277D14B38]);
  v15 = [v6 copy];
  v16 = [v14 initWithResults:v15];

  return v16;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v27 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = self;
    *&buf[12] = 2080;
    *&buf[14] = "[HUUtilityOnboardingTAFItemManager _buildSectionsWithDisplayedItems:]";
    *&buf[22] = 2112;
    v26 = itemsCopy;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%s with displayed items %@", buf, 0x20u);
  }

  allItems = [(HFItemManager *)self allItems];
  allObjects = [allItems allObjects];
  v9 = [allObjects sortedArrayUsingComparator:&__block_literal_global_46];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v26 = 0;
  tAFSections = [(HUUtilityOnboardingTAFItemManager *)self TAFSections];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__HUUtilityOnboardingTAFItemManager__buildSectionsWithDisplayedItems___block_invoke_3;
  v15[3] = &unk_277DB9F28;
  v17 = buf;
  v18 = a2;
  v15[4] = self;
  v11 = v9;
  v16 = v11;
  v12 = [tAFSections na_map:v15];

  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 138412802;
    selfCopy = self;
    v21 = 2080;
    v22 = "[HUUtilityOnboardingTAFItemManager _buildSectionsWithDisplayedItems:]";
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "*** %@:%s All sections %@", v19, 0x20u);
  }

  _Block_object_dispose(buf, 8);

  return v12;
}

uint64_t __70__HUUtilityOnboardingTAFItemManager__buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2, void *a3)
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
    v13 = [v10 compare:{v11, v17, 3221225472, __70__HUUtilityOnboardingTAFItemManager__buildSectionsWithDisplayedItems___block_invoke_2, &unk_277DB78F8, v10}];
    v15 = v19;
  }

  return v13;
}

void *__70__HUUtilityOnboardingTAFItemManager__buildSectionsWithDisplayedItems___block_invoke_3(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = NSStringFromSelector(*(a1 + 56));
    *buf = 138412802;
    v23 = v5;
    v24 = 2112;
    v25 = v6;
    v26 = 2112;
    v27 = v3;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "*** %@:%@ Each single section %@", buf, 0x20u);
  }

  v7 = [@"HUUtilityOnboardingFieldsSectionIdentifier" stringByAppendingFormat:@"-%lu", *(*(*(a1 + 48) + 8) + 24)];
  v8 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:v7];
  v9 = *(a1 + 40);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __70__HUUtilityOnboardingTAFItemManager__buildSectionsWithDisplayedItems___block_invoke_103;
  v20[3] = &unk_277DB85D8;
  v10 = v3;
  v21 = v10;
  v11 = [v9 na_filter:v20];
  ++*(*(*(a1 + 48) + 8) + 24);
  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    v14 = NSStringFromSelector(*(a1 + 56));
    *buf = 138412802;
    v23 = v13;
    v24 = 2112;
    v25 = v14;
    v26 = 2112;
    v27 = v11;
    _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "*** %@:%@ Filtered items %@", buf, 0x20u);
  }

  v15 = [v10 objectForKeyedSubscript:@"header"];
  [v8 setHeaderTitle:v15];

  [v8 setItems:v11];
  v16 = HFLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 32);
    *buf = 138412802;
    v23 = v17;
    v24 = 2080;
    v25 = "[HUUtilityOnboardingTAFItemManager _buildSectionsWithDisplayedItems:]_block_invoke";
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "*** %@:%s  created field section %@", buf, 0x20u);
  }

  v18 = v8;
  return v8;
}

uint64_t __70__HUUtilityOnboardingTAFItemManager__buildSectionsWithDisplayedItems___block_invoke_103(uint64_t a1, void *a2)
{
  v3 = [a2 latestResults];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13E30]];

  v5 = [*(a1 + 32) objectForKeyedSubscript:@"fields"];
  v6 = [v5 containsObject:v4];

  return v6;
}

@end