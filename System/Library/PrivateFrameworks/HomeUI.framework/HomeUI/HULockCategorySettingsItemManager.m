@interface HULockCategorySettingsItemManager
- (HULockCategorySettingsItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (HULockCategorySettingsItemManager)initWithDelegate:(id)a3 topic:(id)a4 home:(id)a5;
- (HULockCategorySettingsItemManager)initWithDelegate:(id)a3 topic:(id)a4 pinCodeManager:(id)a5 home:(id)a6;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)_homeFuture;
- (void)_registerForExternalUpdates;
- (void)_unregisterForExternalUpdates;
- (void)pinCodeManagerDidUpdate:(id)a3 pinCodes:(id)a4;
@end

@implementation HULockCategorySettingsItemManager

- (HULockCategorySettingsItemManager)initWithDelegate:(id)a3 topic:(id)a4 home:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HULockCategorySettingsItemManager;
  v11 = [(HFItemManager *)&v14 initWithDelegate:a3 sourceItem:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_topic, a4);
    objc_storeStrong(&v12->_overrideHome, a5);
  }

  return v12;
}

- (HULockCategorySettingsItemManager)initWithDelegate:(id)a3 topic:(id)a4 pinCodeManager:(id)a5 home:(id)a6
{
  v10 = a5;
  v11 = [(HULockCategorySettingsItemManager *)self initWithDelegate:a3 topic:a4 home:a6];
  pinCodeManager = v11->_pinCodeManager;
  v11->_pinCodeManager = v10;

  return v11;
}

- (HULockCategorySettingsItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithDelegate_topic_home_);
  [v6 handleFailureInMethod:a2 object:self file:@"HULockCategorySettingsItemManager.m" lineNumber:53 description:{@"%s is unavailable; use %@ instead", "-[HULockCategorySettingsItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v38[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(HFItemManager *)self home];
  v6 = [v5 hasOnboardedForAccessCode];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D14CA0]) initWithHome:v4];
    [(HULockCategorySettingsItemManager *)self setUserItemProvider:v7];

    v8 = [(HULockCategorySettingsItemManager *)self userItemProvider];
    [v8 setIncludeCurrentUser:1];

    v9 = [(HFItemManager *)self home];
    v10 = [v9 hf_currentUserIsAdministrator];
    v11 = [(HULockCategorySettingsItemManager *)self userItemProvider];
    [v11 setIncludeOtherUsers:v10];
  }

  v12 = objc_alloc(MEMORY[0x277D14AD0]);
  v13 = *MEMORY[0x277CD0EB0];
  v38[0] = *MEMORY[0x277CD0EA8];
  v38[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
  v15 = [v12 initWithHome:v4 serviceTypes:v14];
  [(HULockCategorySettingsItemManager *)self setLockServiceItemProvider:v15];

  v16 = HFLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v37 = "[HULockCategorySettingsItemManager _buildItemProvidersForHome:]";
    _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "(%s) Creating 'guests'", buf, 0xCu);
  }

  v17 = objc_alloc(MEMORY[0x277D14B38]);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __64__HULockCategorySettingsItemManager__buildItemProvidersForHome___block_invoke;
  v32[3] = &unk_277DB8670;
  objc_copyWeak(&v34, &location);
  v18 = v4;
  v33 = v18;
  v19 = [v17 initWithResultsBlock:v32];
  [(HULockCategorySettingsItemManager *)self setGuestsItem:v19];

  v20 = objc_alloc(MEMORY[0x277D14B48]);
  v21 = MEMORY[0x277CBEB98];
  v22 = [(HULockCategorySettingsItemManager *)self guestsItem];
  v23 = [v21 setWithObject:v22];
  v24 = [v20 initWithItems:v23];
  [(HULockCategorySettingsItemManager *)self setStaticItemProvider:v24];

  v25 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D13B88]];
  v26 = [(HULockCategorySettingsItemManager *)self staticItemProvider];
  [v26 setClientInvalidationReasons:v25];

  v27 = [MEMORY[0x277CBEB18] array];
  v28 = [(HULockCategorySettingsItemManager *)self userItemProvider];
  [v27 na_safeAddObject:v28];

  v29 = [(HULockCategorySettingsItemManager *)self staticItemProvider];
  [v27 na_safeAddObject:v29];

  v30 = [(HULockCategorySettingsItemManager *)self lockServiceItemProvider];
  [v27 na_safeAddObject:v30];

  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);

  return v27;
}

id __64__HULockCategorySettingsItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1)
{
  v16[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = MEMORY[0x277D2C900];
  v4 = [WeakRetained pinCodeManager];
  v5 = [v4 guestPinCodes];
  v16[0] = v5;
  v6 = [WeakRetained pinCodeManager];
  v7 = [v6 otherEcosystemGuestPinCodes];
  v16[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v9 = [v3 combineAllFutures:v8];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__HULockCategorySettingsItemManager__buildItemProvidersForHome___block_invoke_2;
  v13[3] = &unk_277DBB198;
  v14 = *(a1 + 32);
  v15 = WeakRetained;
  v10 = [v9 flatMap:v13];
  v11 = [v10 recover:&__block_literal_global_288];

  return v11;
}

id __64__HULockCategorySettingsItemManager__buildItemProvidersForHome___block_invoke_2(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v35 = "[HULockCategorySettingsItemManager _buildItemProvidersForHome:]_block_invoke_2";
    v36 = 2112;
    v37 = v3;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(%s) Completed getting access codes from HK and other ecosystems with results %@", buf, 0x16u);
  }

  v5 = [v3 na_arrayByFlattening];
  v6 = [v5 count];
  if (v6)
  {
    v7 = [*(a1 + 32) hf_accessoriesSupportingAccessCodes];
    if ([v7 count])
    {
      v8 = [*(a1 + 40) home];
      if ([v8 hf_currentUserIsAdministrator])
      {
        v9 = [*(a1 + 40) home];
        LODWORD(v10) = [v9 hasOnboardedForAccessCode] ^ 1;
      }

      else
      {
        LODWORD(v10) = 1;
      }
    }

    else
    {
      LODWORD(v10) = 1;
    }
  }

  else
  {
    LODWORD(v10) = 1;
  }

  v11 = [*(a1 + 40) home];
  v12 = [v11 restrictedGuests];
  v13 = [v12 count];

  if (v13)
  {
    v10 = 0;
  }

  else
  {
    v10 = v10;
  }

  v20 = HULocalizedStringWithFormat(@"HUEditLocationGuestsDescriptionFormat", @"%lu", v14, v15, v16, v17, v18, v19, v13 + v6);
  v21 = [MEMORY[0x277D755D0] configurationWithPointSize:26.0];
  v22 = MEMORY[0x277D2C900];
  v32[0] = *MEMORY[0x277D13F60];
  v23 = _HULocalizedStringWithDefaultValue(@"HUEditLocationGuestsTitle", @"HUEditLocationGuestsTitle", 1);
  v24 = *MEMORY[0x277D13DC8];
  v33[0] = v23;
  v33[1] = @"Home.Locks.Category.Guests";
  v25 = *MEMORY[0x277D13E20];
  v32[1] = v24;
  v32[2] = v25;
  v33[2] = v20;
  v32[3] = *MEMORY[0x277D13E98];
  v26 = [MEMORY[0x277D755B8] systemImageNamed:@"person.2.circle.fill" withConfiguration:v21];
  v33[3] = v26;
  v32[4] = *MEMORY[0x277D13FB8];
  v27 = [MEMORY[0x277CCABB0] numberWithBool:v10];
  v33[4] = v27;
  v32[5] = *MEMORY[0x277D13DA0];
  v28 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v33[5] = v28;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:6];
  v30 = [v22 futureWithResult:v29];

  return v30;
}

id __64__HULockCategorySettingsItemManager__buildItemProvidersForHome___block_invoke_39(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[HULockCategorySettingsItemManager _buildItemProvidersForHome:]_block_invoke";
    v12 = 2112;
    v13 = v2;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "(%s) Failed to get access codes from HK and other ecosystems. Error = %@. Hiding 'guests' item.", buf, 0x16u);
  }

  v4 = MEMORY[0x277D2C900];
  v8 = *MEMORY[0x277D13FB8];
  v9 = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [v4 futureWithResult:v5];

  return v6;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v6 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HULockCategorySettingsLockListSection"];
  v7 = [(HULockCategorySettingsItemManager *)self lockServiceItemProvider];
  v8 = [v7 items];
  v9 = [v8 allObjects];
  v10 = [MEMORY[0x277D14778] defaultItemComparator];
  v11 = [v9 sortedArrayUsingComparator:v10];
  [v6 setItems:v11];

  [v5 addObject:v6];
  v12 = [(HULockCategorySettingsItemManager *)self userItemProvider];

  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HULockCategorySettingsPeopleSection"];
    v27 = self;
    v14 = [(HULockCategorySettingsItemManager *)self userItemProvider];
    v15 = [v14 items];
    v16 = [v15 allObjects];
    [MEMORY[0x277D14778] defaultItemComparator];
    v17 = v5;
    v18 = v6;
    v20 = v19 = v4;
    v21 = [v16 sortedArrayUsingComparator:v20];
    v22 = [v21 mutableCopy];

    v4 = v19;
    v6 = v18;
    v5 = v17;

    v23 = [(HULockCategorySettingsItemManager *)v27 guestsItem];
    [v22 na_safeAddObject:v23];

    [v13 setItems:v22];
    v24 = _HULocalizedStringWithDefaultValue(@"HULockCategorySettingsPeopleSectionTitle", @"HULockCategorySettingsPeopleSectionTitle", 1);
    [v13 setHeaderTitle:v24];

    [v17 addObject:v13];
  }

  v25 = [MEMORY[0x277D14778] filterSections:v5 toDisplayedItems:v4];

  return v25;
}

- (id)_homeFuture
{
  v2 = MEMORY[0x277D2C900];
  v3 = [(HULockCategorySettingsItemManager *)self overrideHome];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

- (void)_registerForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HULockCategorySettingsItemManager;
  [(HFItemManager *)&v4 _registerForExternalUpdates];
  v3 = [(HULockCategorySettingsItemManager *)self pinCodeManager];
  [v3 addObserver:self];
}

- (void)_unregisterForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HULockCategorySettingsItemManager;
  [(HFItemManager *)&v4 _unregisterForExternalUpdates];
  v3 = [(HULockCategorySettingsItemManager *)self pinCodeManager];
  [v3 removeObserver:self];
}

- (void)pinCodeManagerDidUpdate:(id)a3 pinCodes:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@: %@ Reloading PIN Code related items...", buf, 0x16u);
  }

  v8 = [(HULockCategorySettingsItemManager *)self staticItemProvider];
  v11 = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  v10 = [(HFItemManager *)self reloadAndUpdateItemsForProviders:v9 senderSelector:a2];
}

@end