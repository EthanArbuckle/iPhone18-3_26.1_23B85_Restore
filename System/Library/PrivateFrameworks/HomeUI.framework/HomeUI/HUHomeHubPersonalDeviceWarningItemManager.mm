@interface HUHomeHubPersonalDeviceWarningItemManager
- (HUHomeHubPersonalDeviceWarningItemManager)initWithDelegate:(id)a3 devices:(id)a4;
- (HUHomeHubPersonalDeviceWarningItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)itemForDevice:(id)a3;
@end

@implementation HUHomeHubPersonalDeviceWarningItemManager

- (HUHomeHubPersonalDeviceWarningItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithDelegate_devices_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUHomeHubPersonalDeviceWarningItemManager.m" lineNumber:27 description:{@"%s is unavailable; use %@ instead", "-[HUHomeHubPersonalDeviceWarningItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HUHomeHubPersonalDeviceWarningItemManager)initWithDelegate:(id)a3 devices:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HUHomeHubPersonalDeviceWarningItemManager;
  v8 = [(HFItemManager *)&v11 initWithDelegate:a3 sourceItem:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_devices, a4);
  }

  return v9;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(HUHomeHubPersonalDeviceWarningItemManager *)self devices];
    *buf = 136315394;
    v14 = "[HUHomeHubPersonalDeviceWarningItemManager _buildItemProvidersForHome:]";
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%s fetched devices: %@.", buf, 0x16u);
  }

  v6 = [(HUHomeHubPersonalDeviceWarningItemManager *)self devices];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__HUHomeHubPersonalDeviceWarningItemManager__buildItemProvidersForHome___block_invoke;
  v11[3] = &unk_277DC0D20;
  v11[4] = self;
  v7 = [v6 na_map:v11];

  v8 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v7];
  v12 = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];

  return v9;
}

- (id)itemForDevice:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  if (v3)
  {
    v5 = [v3 name];
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 136315394;
      v26 = "[HUHomeHubPersonalDeviceWarningItemManager itemForDevice:]";
      v27 = 2112;
      v28 = v5;
      _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%s fetched device: %@.", &v25, 0x16u);
    }

    if (-[__CFString length](v5, "length") || ([v3 productInfo], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
    {
      v7 = v5;
    }

    else
    {
      v9 = [v3 productInfo];
      [v9 productClass];

      v7 = HMFProductClassToString();

      v10 = HFLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v3 productInfo];
        v25 = 136315650;
        v26 = "[HUHomeHubPersonalDeviceWarningItemManager itemForDevice:]";
        v27 = 2112;
        v28 = v7;
        v29 = 2112;
        v30 = v11;
        _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%s device productClassName: %@, productInfo: %@.", &v25, 0x20u);
      }
    }

    [v4 na_safeSetObject:v7 forKey:*MEMORY[0x277D13F60]];
    v12 = [MEMORY[0x277CCABB0] numberWithInt:{-[__CFString length](v7, "length") == 0}];
    [v4 na_safeSetObject:v12 forKey:*MEMORY[0x277D13FB8]];

    v13 = [v3 productInfo];

    if (v13)
    {
      v14 = [v3 productInfo];
      [v14 productClass];

      v15 = HFLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = HMFProductClassToString();
        v25 = 136315394;
        v26 = "[HUHomeHubPersonalDeviceWarningItemManager itemForDevice:]";
        v27 = 2112;
        v28 = v16;
        _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "%s device productClass String: %@.", &v25, 0x16u);
      }

      v17 = [MEMORY[0x277D755B8] hu_symbolForDevice:v3];
      v18 = [v17 imageWithRenderingMode:0];

      [v4 na_safeSetObject:v18 forKey:*MEMORY[0x277D13E98]];
      v19 = HFLogForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = @"populated";
        if (!v18)
        {
          v20 = @"nil: no icon";
        }

        v25 = 136315394;
        v26 = "[HUHomeHubPersonalDeviceWarningItemManager itemForDevice:]";
        v27 = 2112;
        v28 = v20;
        _os_log_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_DEFAULT, "%s deviceImage is %@", &v25, 0x16u);
      }
    }
  }

  v21 = objc_alloc(MEMORY[0x277D14B38]);
  v22 = [v4 copy];
  v23 = [v21 initWithResults:v22];

  return v23;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = [v4 array];
  v7 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"devicesSectionIdentifier"];
  v8 = [(HFItemManager *)self allItems];
  v9 = [v8 allObjects];
  v10 = [v9 sortedArrayUsingComparator:&__block_literal_global_189];
  [v7 setItems:v10];

  [v6 addObject:v7];
  v11 = [MEMORY[0x277D14778] filterSections:v6 toDisplayedItems:v5];

  return v11;
}

uint64_t __78__HUHomeHubPersonalDeviceWarningItemManager__buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 latestResults];
  v7 = *MEMORY[0x277D13E98];
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13E98]];
  if (v8)
  {
  }

  else
  {
    v15 = [v5 latestResults];
    v16 = [v15 objectForKeyedSubscript:v7];

    if (v16)
    {
      v14 = 1;
      goto LABEL_10;
    }
  }

  v9 = [v4 latestResults];
  v10 = [v9 objectForKeyedSubscript:v7];
  if (!v10)
  {

    goto LABEL_9;
  }

  v11 = v10;
  v12 = [v5 latestResults];
  v13 = [v12 objectForKeyedSubscript:v7];

  if (v13)
  {
LABEL_9:
    v14 = [MEMORY[0x277D14778] defaultItemComparator];

    goto LABEL_10;
  }

  v14 = -1;
LABEL_10:

  return v14;
}

@end