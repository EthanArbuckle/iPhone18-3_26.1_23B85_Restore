@interface HUMatterConnectedServicesItemManager
- (HMAccessory)accessory;
- (HUMatterConnectedServicesItemManager)initWithConnectedServicesItemProvider:(id)provider delegate:(id)delegate;
- (HUMatterHomeConnectedEcosystemItemProvider)connectedHomeEcosystemItemProvider;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)connectedAccessoryEcosystemItemProvider;
- (id)fetchSystemCommissionerPairingUUID;
- (void)connectedServicesSectionFooterLink:(id)link isForAccessory:(BOOL)accessory;
@end

@implementation HUMatterConnectedServicesItemManager

- (HUMatterConnectedServicesItemManager)initWithConnectedServicesItemProvider:(id)provider delegate:(id)delegate
{
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = HUMatterConnectedServicesItemManager;
  v8 = [(HFItemManager *)&v13 initWithDelegate:delegate sourceItem:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connectedServicesItemProvider, provider);
    connectedHomeEcosystemItemProvider = [(HUMatterConnectedServicesItemManager *)v9 connectedHomeEcosystemItemProvider];
    home = [connectedHomeEcosystemItemProvider home];
    [(HFItemManager *)v9 setHome:home];
  }

  return v9;
}

- (id)fetchSystemCommissionerPairingUUID
{
  connectedAccessoryEcosystemItemProvider = [(HUMatterConnectedServicesItemManager *)self connectedAccessoryEcosystemItemProvider];

  if (([MEMORY[0x277D14CE8] isAMac] & 1) != 0 || !connectedAccessoryEcosystemItemProvider)
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277D2C900]);
    objc_initWeak(&location, self);
    accessory = [(HUMatterConnectedServicesItemManager *)self accessory];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __74__HUMatterConnectedServicesItemManager_fetchSystemCommissionerPairingUUID__block_invoke;
    v8[3] = &unk_277DBFF00;
    objc_copyWeak(&v10, &location);
    futureWithNoResult = v4;
    v9 = futureWithNoResult;
    [accessory fetchCHIPPairingsWithCompletion:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return futureWithNoResult;
}

void __74__HUMatterConnectedServicesItemManager_fetchSystemCommissionerPairingUUID__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v6)
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v6;
      _os_log_error_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_ERROR, "Failed to fetch CHIP pairings: %@", &v14, 0xCu);
    }

    [WeakRetained setAccessorySystemCommisionerUUID:0];
  }

  else
  {
    v9 = [v5 anyObject];
    v10 = [v9 systemCommissionerPairingUUID];
    v11 = [v10 UUIDString];
    [WeakRetained setAccessorySystemCommisionerUUID:v11];

    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [WeakRetained accessorySystemCommisionerUUID];
      v14 = 138412290;
      v15 = v13;
      _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "Establishing accessorySystemCommisionerUUID : %@", &v14, 0xCu);
    }

    [WeakRetained recalculateVisibilityAndSortAllItems];
  }

  [*(a1 + 32) finishWithNoResult];
}

- (id)_buildItemProvidersForHome:(id)home
{
  v19[1] = *MEMORY[0x277D85DE8];
  connectedHomeEcosystemItemProvider = [(HUMatterConnectedServicesItemManager *)self connectedHomeEcosystemItemProvider];

  if (connectedHomeEcosystemItemProvider)
  {
    v5 = [HUInstructionsItem alloc];
    v6 = _HULocalizedStringWithDefaultValue(@"HUMatterHomeConnectedEcosystemsInfoTitle", @"HUMatterHomeConnectedEcosystemsInfoTitle", 1);
    v7 = [(HUInstructionsItem *)v5 initWithStyle:4 title:v6 description:0];
    [(HUMatterConnectedServicesItemManager *)self setInstructionsItem:v7];

    v8 = objc_alloc(MEMORY[0x277D14B40]);
    v9 = MEMORY[0x277CBEB98];
    instructionsItem = [(HUMatterConnectedServicesItemManager *)self instructionsItem];
    v19[0] = instructionsItem;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v12 = [v9 setWithArray:v11];
    connectedServicesItemProvider2 = [v8 initWithItems:v12];

    v18[0] = connectedServicesItemProvider2;
    connectedServicesItemProvider = [(HUMatterConnectedServicesItemManager *)self connectedServicesItemProvider];
    v18[1] = connectedServicesItemProvider;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  }

  else
  {
    connectedServicesItemProvider2 = [(HUMatterConnectedServicesItemManager *)self connectedServicesItemProvider];
    v17 = connectedServicesItemProvider2;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  }

  return v15;
}

- (void)connectedServicesSectionFooterLink:(id)link isForAccessory:(BOOL)accessory
{
  accessoryCopy = accessory;
  v24[1] = *MEMORY[0x277D85DE8];
  linkCopy = link;
  if (([MEMORY[0x277D14CE8] isAMac] & 1) == 0)
  {
    v7 = _HULocalizedStringWithDefaultValue(@"HUMatterConnectedEcosystemsFooterLink", @"HUMatterConnectedEcosystemsFooterLink", 1);
    v8 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"\n"];
    [linkCopy appendAttributedString:v8];

    if (accessoryCopy)
    {
      accessorySystemCommisionerUUID = [(HUMatterConnectedServicesItemManager *)self accessorySystemCommisionerUUID];

      if (!accessorySystemCommisionerUUID)
      {
        v13 = HFLogForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_ERROR, "Failed to fetch CHIP pairings", buf, 2u);
        }

        v12 = @"prefs:root=General&path=MATTER_ACCESSORIES";
        goto LABEL_7;
      }

      v10 = MEMORY[0x277CCACA8];
      accessorySystemCommisionerUUID2 = [(HUMatterConnectedServicesItemManager *)self accessorySystemCommisionerUUID];
      v12 = [v10 stringWithFormat:@"%@/%@", @"prefs:root=General&path=MATTER_ACCESSORIES", accessorySystemCommisionerUUID2];

      v13 = [MEMORY[0x277CBEBC0] URLWithString:v12];
      v14 = objc_alloc(MEMORY[0x277CCA898]);
      v23 = *MEMORY[0x277D740E8];
      v24[0] = v13;
      v15 = MEMORY[0x277CBEAC0];
      v16 = v24;
      v17 = &v23;
    }

    else
    {
      v12 = @"prefs:root=General&path=MATTER_ACCESSORIES";
      v13 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=General&path=MATTER_ACCESSORIES"];
      v14 = objc_alloc(MEMORY[0x277CCA898]);
      v21 = *MEMORY[0x277D740E8];
      v22 = v13;
      v15 = MEMORY[0x277CBEAC0];
      v16 = &v22;
      v17 = &v21;
    }

    v18 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
    v19 = [v14 initWithString:v7 attributes:v18];
    [linkCopy appendAttributedString:v19];

LABEL_7:
  }
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v51[1] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v40 = _HULocalizedStringWithDefaultValue(@"HUMatterAccessoryConnectedEcosystemsFooter", @"HUMatterAccessoryConnectedEcosystemsFooter", 1);
  v5 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v40];
  connectedHomeEcosystemItemProvider = [(HUMatterConnectedServicesItemManager *)self connectedHomeEcosystemItemProvider];

  if (connectedHomeEcosystemItemProvider)
  {
    v7 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"ConnectedEcosystemsInstructions"];
    instructionsItem = [(HUMatterConnectedServicesItemManager *)self instructionsItem];
    v51[0] = instructionsItem;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
    [v7 setItems:v9];

    v10 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"ConnectedEcosystems"];
    connectedServicesItemProvider = [(HUMatterConnectedServicesItemManager *)self connectedServicesItemProvider];
    items = [connectedServicesItemProvider items];
    allObjects = [items allObjects];
    connectedServicesItemComparator = [objc_opt_class() connectedServicesItemComparator];
    v15 = [allObjects sortedArrayUsingComparator:connectedServicesItemComparator];
    [v10 setItems:v15 filteringToDisplayedItems:itemsCopy];

    connectedServicesItemProvider2 = [(HUMatterConnectedServicesItemManager *)self connectedServicesItemProvider];
    LODWORD(connectedServicesItemProvider) = [connectedServicesItemProvider2 hasSystemCommissionerEcosystem];

    if (connectedServicesItemProvider)
    {
      [(HUMatterConnectedServicesItemManager *)self connectedServicesSectionFooterLink:v5 isForAccessory:0];
      v17 = HFLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v5;
        _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "Matter Connected Services completed footer: %@", &buf, 0xCu);
      }

      [v10 setAttributedFooterTitle:v5];
    }

    v18 = MEMORY[0x277D14778];
    v50[0] = v7;
    v50[1] = v10;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2];
    v20 = [v18 filterSections:v19 toDisplayedItems:itemsCopy];
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v48 = 0x2020000000;
    v49 = 0;
    v21 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"OwnedConnectedEcosystems"];
    v22 = _HULocalizedStringWithDefaultValue(@"HUMatterHomeConnectedEcosystemsOwnedPairingsTitle", @"HUMatterHomeConnectedEcosystemsOwnedPairingsTitle", 1);
    [v21 setHeaderTitle:v22];

    v23 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"OtherConnectedEcosystems"];
    v24 = _HULocalizedStringWithDefaultValue(@"HUMatterHomeConnectedEcosystemsOtherPairingsTitle", @"HUMatterHomeConnectedEcosystemsOtherPairingsTitle", 1);
    [v23 setHeaderTitle:v24];

    v25 = [MEMORY[0x277CBEB58] set];
    connectedServicesItemProvider3 = [(HUMatterConnectedServicesItemManager *)self connectedServicesItemProvider];
    items2 = [connectedServicesItemProvider3 items];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __73__HUMatterConnectedServicesItemManager__buildSectionsWithDisplayedItems___block_invoke;
    v41[3] = &unk_277DBFF28;
    p_buf = &buf;
    v28 = v25;
    v42 = v28;
    v29 = [items2 na_filter:v41];

    allObjects2 = [v29 allObjects];
    connectedServicesItemComparator2 = [objc_opt_class() connectedServicesItemComparator];
    v32 = [allObjects2 sortedArrayUsingComparator:connectedServicesItemComparator2];
    [v21 setItems:v32 filteringToDisplayedItems:itemsCopy];

    if (*(*(&buf + 1) + 24) == 1)
    {
      [(HUMatterConnectedServicesItemManager *)self connectedServicesSectionFooterLink:v5 isForAccessory:1];
      v33 = HFLogForCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *v45 = 138412290;
        v46 = v5;
        _os_log_impl(&dword_20CEB6000, v33, OS_LOG_TYPE_DEFAULT, "Matter Connected Services completed footer: %@", v45, 0xCu);
      }

      [v21 setAttributedFooterTitle:v5];
    }

    allObjects3 = [v28 allObjects];
    connectedServicesItemComparator3 = [objc_opt_class() connectedServicesItemComparator];
    v36 = [allObjects3 sortedArrayUsingComparator:connectedServicesItemComparator3];
    [v23 setItems:v36 filteringToDisplayedItems:itemsCopy];

    v37 = MEMORY[0x277D14778];
    v44[0] = v21;
    v44[1] = v23;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
    v20 = [v37 filterSections:v38 toDisplayedItems:itemsCopy];

    _Block_object_dispose(&buf, 8);
  }

  return v20;
}

uint64_t __73__HUMatterConnectedServicesItemManager__buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 connectedEcosystem];
  v8 = [v7 owned];

  if (!v8)
  {
    [*(a1 + 32) na_safeAddObject:v6];
    goto LABEL_8;
  }

  v9 = [v6 connectedEcosystem];
  v10 = [v9 vendor];
  v11 = [v10 isSystemCommissionerVendor];

  v12 = 1;
  if (v11)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_8:
    v12 = 0;
  }

  return v12;
}

uint64_t __71__HUMatterConnectedServicesItemManager_connectedServicesItemComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  v6 = v4;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  objc_opt_class();
  v9 = v5;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [v8 connectedEcosystem];
  v13 = [v11 connectedEcosystem];

  if (!v12)
  {
    objc_opt_class();
    v14 = v6;
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    objc_opt_class();
    v17 = v9;
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    v12 = [v16 connectedEcosystem];
    v20 = [v19 connectedEcosystem];

    v13 = v20;
  }

  v21 = [MEMORY[0x277CD1888] hf_ecosystemComparator];
  v22 = (v21)[2](v21, v12, v13);

  return v22;
}

- (HMAccessory)accessory
{
  connectedAccessoryEcosystemItemProvider = [(HUMatterConnectedServicesItemManager *)self connectedAccessoryEcosystemItemProvider];
  accessory = [connectedAccessoryEcosystemItemProvider accessory];

  return accessory;
}

- (id)connectedAccessoryEcosystemItemProvider
{
  objc_opt_class();
  connectedServicesItemProvider = [(HUMatterConnectedServicesItemManager *)self connectedServicesItemProvider];
  if (objc_opt_isKindOfClass())
  {
    v4 = connectedServicesItemProvider;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (HUMatterHomeConnectedEcosystemItemProvider)connectedHomeEcosystemItemProvider
{
  objc_opt_class();
  connectedServicesItemProvider = [(HUMatterConnectedServicesItemManager *)self connectedServicesItemProvider];
  if (objc_opt_isKindOfClass())
  {
    v4 = connectedServicesItemProvider;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

@end