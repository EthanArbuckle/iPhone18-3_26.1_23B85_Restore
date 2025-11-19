@interface HUMatterConnectedServicesItemManager
- (HMAccessory)accessory;
- (HUMatterConnectedServicesItemManager)initWithConnectedServicesItemProvider:(id)a3 delegate:(id)a4;
- (HUMatterHomeConnectedEcosystemItemProvider)connectedHomeEcosystemItemProvider;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)connectedAccessoryEcosystemItemProvider;
- (id)fetchSystemCommissionerPairingUUID;
- (void)connectedServicesSectionFooterLink:(id)a3 isForAccessory:(BOOL)a4;
@end

@implementation HUMatterConnectedServicesItemManager

- (HUMatterConnectedServicesItemManager)initWithConnectedServicesItemProvider:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = HUMatterConnectedServicesItemManager;
  v8 = [(HFItemManager *)&v13 initWithDelegate:a4 sourceItem:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connectedServicesItemProvider, a3);
    v10 = [(HUMatterConnectedServicesItemManager *)v9 connectedHomeEcosystemItemProvider];
    v11 = [v10 home];
    [(HFItemManager *)v9 setHome:v11];
  }

  return v9;
}

- (id)fetchSystemCommissionerPairingUUID
{
  v3 = [(HUMatterConnectedServicesItemManager *)self connectedAccessoryEcosystemItemProvider];

  if (([MEMORY[0x277D14CE8] isAMac] & 1) != 0 || !v3)
  {
    v6 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277D2C900]);
    objc_initWeak(&location, self);
    v5 = [(HUMatterConnectedServicesItemManager *)self accessory];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __74__HUMatterConnectedServicesItemManager_fetchSystemCommissionerPairingUUID__block_invoke;
    v8[3] = &unk_277DBFF00;
    objc_copyWeak(&v10, &location);
    v6 = v4;
    v9 = v6;
    [v5 fetchCHIPPairingsWithCompletion:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v6;
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

- (id)_buildItemProvidersForHome:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = [(HUMatterConnectedServicesItemManager *)self connectedHomeEcosystemItemProvider];

  if (v4)
  {
    v5 = [HUInstructionsItem alloc];
    v6 = _HULocalizedStringWithDefaultValue(@"HUMatterHomeConnectedEcosystemsInfoTitle", @"HUMatterHomeConnectedEcosystemsInfoTitle", 1);
    v7 = [(HUInstructionsItem *)v5 initWithStyle:4 title:v6 description:0];
    [(HUMatterConnectedServicesItemManager *)self setInstructionsItem:v7];

    v8 = objc_alloc(MEMORY[0x277D14B40]);
    v9 = MEMORY[0x277CBEB98];
    v10 = [(HUMatterConnectedServicesItemManager *)self instructionsItem];
    v19[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v12 = [v9 setWithArray:v11];
    v13 = [v8 initWithItems:v12];

    v18[0] = v13;
    v14 = [(HUMatterConnectedServicesItemManager *)self connectedServicesItemProvider];
    v18[1] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  }

  else
  {
    v13 = [(HUMatterConnectedServicesItemManager *)self connectedServicesItemProvider];
    v17 = v13;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  }

  return v15;
}

- (void)connectedServicesSectionFooterLink:(id)a3 isForAccessory:(BOOL)a4
{
  v4 = a4;
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (([MEMORY[0x277D14CE8] isAMac] & 1) == 0)
  {
    v7 = _HULocalizedStringWithDefaultValue(@"HUMatterConnectedEcosystemsFooterLink", @"HUMatterConnectedEcosystemsFooterLink", 1);
    v8 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"\n"];
    [v6 appendAttributedString:v8];

    if (v4)
    {
      v9 = [(HUMatterConnectedServicesItemManager *)self accessorySystemCommisionerUUID];

      if (!v9)
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
      v11 = [(HUMatterConnectedServicesItemManager *)self accessorySystemCommisionerUUID];
      v12 = [v10 stringWithFormat:@"%@/%@", @"prefs:root=General&path=MATTER_ACCESSORIES", v11];

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
    [v6 appendAttributedString:v19];

LABEL_7:
  }
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v51[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v40 = _HULocalizedStringWithDefaultValue(@"HUMatterAccessoryConnectedEcosystemsFooter", @"HUMatterAccessoryConnectedEcosystemsFooter", 1);
  v5 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v40];
  v6 = [(HUMatterConnectedServicesItemManager *)self connectedHomeEcosystemItemProvider];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"ConnectedEcosystemsInstructions"];
    v8 = [(HUMatterConnectedServicesItemManager *)self instructionsItem];
    v51[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
    [v7 setItems:v9];

    v10 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"ConnectedEcosystems"];
    v11 = [(HUMatterConnectedServicesItemManager *)self connectedServicesItemProvider];
    v12 = [v11 items];
    v13 = [v12 allObjects];
    v14 = [objc_opt_class() connectedServicesItemComparator];
    v15 = [v13 sortedArrayUsingComparator:v14];
    [v10 setItems:v15 filteringToDisplayedItems:v4];

    v16 = [(HUMatterConnectedServicesItemManager *)self connectedServicesItemProvider];
    LODWORD(v11) = [v16 hasSystemCommissionerEcosystem];

    if (v11)
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
    v20 = [v18 filterSections:v19 toDisplayedItems:v4];
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
    v26 = [(HUMatterConnectedServicesItemManager *)self connectedServicesItemProvider];
    v27 = [v26 items];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __73__HUMatterConnectedServicesItemManager__buildSectionsWithDisplayedItems___block_invoke;
    v41[3] = &unk_277DBFF28;
    p_buf = &buf;
    v28 = v25;
    v42 = v28;
    v29 = [v27 na_filter:v41];

    v30 = [v29 allObjects];
    v31 = [objc_opt_class() connectedServicesItemComparator];
    v32 = [v30 sortedArrayUsingComparator:v31];
    [v21 setItems:v32 filteringToDisplayedItems:v4];

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

    v34 = [v28 allObjects];
    v35 = [objc_opt_class() connectedServicesItemComparator];
    v36 = [v34 sortedArrayUsingComparator:v35];
    [v23 setItems:v36 filteringToDisplayedItems:v4];

    v37 = MEMORY[0x277D14778];
    v44[0] = v21;
    v44[1] = v23;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
    v20 = [v37 filterSections:v38 toDisplayedItems:v4];

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
  v2 = [(HUMatterConnectedServicesItemManager *)self connectedAccessoryEcosystemItemProvider];
  v3 = [v2 accessory];

  return v3;
}

- (id)connectedAccessoryEcosystemItemProvider
{
  objc_opt_class();
  v3 = [(HUMatterConnectedServicesItemManager *)self connectedServicesItemProvider];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
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
  v3 = [(HUMatterConnectedServicesItemManager *)self connectedServicesItemProvider];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

@end