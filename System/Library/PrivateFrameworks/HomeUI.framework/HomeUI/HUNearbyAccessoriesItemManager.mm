@interface HUNearbyAccessoriesItemManager
+ (id)itemProvidersForPrimaryAccessory:(id)a3 inHome:(id)a4;
- (BOOL)_isAPreferredServiceType:(id)a3;
- (BOOL)_isServiceItemAssociatedWithPrimaryAccessory:(id)a3;
- (BOOL)hasCustomNearbyAccessories;
- (BOOL)hasEmptyNearbyAccessories;
- (BOOL)shouldHideItem:(id)a3;
- (HUNearbyAccessoriesItemManager)initWithDelegate:(id)a3 sourceProfileItem:(id)a4 supportsQuickControls:(BOOL)a5;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_comparatorForSectionIdentifier:(id)a3;
- (id)_itemsToHideInSet:(id)a3;
- (id)userFilteredIdentifiers;
@end

@implementation HUNearbyAccessoriesItemManager

- (HUNearbyAccessoriesItemManager)initWithDelegate:(id)a3 sourceProfileItem:(id)a4 supportsQuickControls:(BOOL)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [v8 copy];
  v15.receiver = self;
  v15.super_class = HUNearbyAccessoriesItemManager;
  v11 = [(HFItemManager *)&v15 initWithDelegate:v9 sourceItem:v10];

  if (v11)
  {
    v12 = [v8 accessory];
    primaryAccessory = v11->_primaryAccessory;
    v11->_primaryAccessory = v12;

    v11->_supportsQuickControls = a5;
  }

  return v11;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(HUNearbyAccessoriesItemManager *)self primaryAccessory];
  v7 = [v5 itemProvidersForPrimaryAccessory:v6 inHome:v4];

  return v7;
}

- (id)_comparatorForSectionIdentifier:(id)a3
{
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__HUNearbyAccessoriesItemManager__comparatorForSectionIdentifier___block_invoke;
  v9[3] = &unk_277DC39B0;
  v9[4] = self;
  v9[5] = v6;
  v9[6] = v4;
  v9[7] = v5;
  v7 = _Block_copy(v9);

  return v7;
}

uint64_t __66__HUNearbyAccessoriesItemManager__comparatorForSectionIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = v6;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v8)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  if ((v8 != 0) != (v11 == 0))
  {
    v13 = [v5 latestResults];
    v14 = *MEMORY[0x277D13F60];
    v15 = [v13 objectForKeyedSubscript:*MEMORY[0x277D13F60]];

    v16 = [v9 latestResults];
    v17 = [v16 objectForKeyedSubscript:v14];

    v18 = v5;
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    v21 = v9;
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    v24 = [*(a1 + 32) _isServiceItemAssociatedWithPrimaryAccessory:v20];
    v25 = [*(a1 + 32) _isServiceItemAssociatedWithPrimaryAccessory:v23];
    if (v24 && v25)
    {
      v12 = [v15 localizedStandardCompare:v17];
LABEL_50:

      goto LABEL_51;
    }

    v26 = v24 | v25;
    if (v24)
    {
      v12 = -1;
    }

    else
    {
      v12 = 1;
    }

    if (v26)
    {
      goto LABEL_50;
    }

    v49 = v15;
    v27 = v18;
    if (objc_opt_isKindOfClass())
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;

    v30 = v21;
    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;

    v48 = v29;
    if (v29)
    {
      v33 = [v29 accessory];
      v50 = [v33 hf_primaryService];

      if (v32)
      {
LABEL_32:
        v34 = v32;
        v35 = [v32 accessory];
        v36 = [v35 hf_primaryService];

        goto LABEL_35;
      }
    }

    else
    {
      v50 = [v20 service];
      if (v32)
      {
        goto LABEL_32;
      }
    }

    v34 = v32;
    v36 = [v23 service];
LABEL_35:
    v37 = *(a1 + 32);
    v38 = [v50 serviceType];
    v39 = [v37 _isAPreferredServiceType:v38];

    v40 = *(a1 + 32);
    v41 = [v36 serviceType];
    v42 = [v40 _isAPreferredServiceType:v41];

    if (v39 && v42)
    {
      v12 = [v49 localizedStandardCompare:v17];
    }

    else
    {
      v43 = v39 | v42;
      if (v39)
      {
        v12 = -1;
      }

      else
      {
        v12 = 1;
      }

      if ((v43 & 1) == 0)
      {
        v44 = v49;
        v45 = v17;
        v46 = v45;
        v51 = v45;
        if (v44)
        {
          v12 = -1;
        }

        else
        {
          v12 = v45 != 0;
        }

        if (v44 && v45)
        {
          v12 = [v44 localizedStandardCompare:v45];
          v46 = v51;
        }
      }
    }

    v15 = v49;
    goto LABEL_50;
  }

LABEL_51:

  return v12;
}

- (BOOL)_isServiceItemAssociatedWithPrimaryAccessory:(id)a3
{
  v4 = [a3 accessories];
  v5 = [v4 anyObject];
  v6 = [(HUNearbyAccessoriesItemManager *)self primaryAccessory];
  v7 = [v5 isEqual:v6];

  return v7;
}

- (id)_itemsToHideInSet:(id)a3
{
  v4 = a3;
  v5 = [(HUNearbyAccessoriesItemManager *)self userFilteredIdentifiers];
  [(HUNearbyAccessoriesItemManager *)self setCustomNearbyAccessories:v5];

  v11.receiver = self;
  v11.super_class = HUNearbyAccessoriesItemManager;
  v6 = [(HFItemManager *)&v11 _itemsToHideInSet:v4];
  v7 = [v6 mutableCopy];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__HUNearbyAccessoriesItemManager__itemsToHideInSet___block_invoke;
  v10[3] = &unk_277DB85D8;
  v10[4] = self;
  v8 = [v4 na_filter:v10];

  [v7 unionSet:v8];

  return v7;
}

- (BOOL)hasCustomNearbyAccessories
{
  v2 = [(HUNearbyAccessoriesItemManager *)self customNearbyAccessories];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)hasEmptyNearbyAccessories
{
  v2 = [(HUNearbyAccessoriesItemManager *)self customNearbyAccessories];
  v3 = [v2 objectForKeyedSubscript:@"EmptySetIdentifier"];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)shouldHideItem:(id)a3
{
  v4 = a3;
  if (![(HUNearbyAccessoriesItemManager *)self hasCustomNearbyAccessories])
  {
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

    if (v8)
    {
      v9 = [v8 accessories];
      v10 = [v9 anyObject];
      v11 = [(HUNearbyAccessoriesItemManager *)self primaryAccessory];
      v12 = [v10 isEqual:v11];

      if (v12)
      {
        v13 = [v8 service];
        LODWORD(v5) = [v13 hf_isDisplayableSensor] ^ 1;
LABEL_33:

LABEL_34:
        goto LABEL_35;
      }
    }

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

    v13 = v15;

    objc_opt_class();
    v16 = v14;
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    v19 = [v13 accessory];
    v20 = [(HUNearbyAccessoriesItemManager *)self primaryAccessory];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      LOBYTE(v5) = 1;
LABEL_32:

      goto LABEL_33;
    }

    if (v13)
    {
      v28 = [v13 accessory];
      v29 = [v28 hf_primaryService];
    }

    else if (v8)
    {
      v29 = [v8 service];
    }

    else
    {
      v29 = 0;
    }

    v30 = [v29 serviceType];
    v31 = [v30 isEqual:*MEMORY[0x277CD0EC0]];

    if ((v31 & 1) == 0)
    {
      v32 = [v29 serviceType];
      v33 = [v32 isEqualToString:*MEMORY[0x277CD0ED8]];

      if (v33)
      {
        LOBYTE(v5) = 0;
        goto LABEL_31;
      }

      if (([v29 hf_isInGroup] & 1) == 0)
      {
        v35 = MEMORY[0x277D145C8];
        v36 = [(HFItemManager *)self childItemsForItem:v16];
        v37 = [v35 hu_preferredToggleableControlItemInControlItems:v36];

        if ([(HUNearbyAccessoriesItemManager *)self supportsQuickControls]|| v37)
        {
          if (v18)
          {
            v38 = [v18 latestResults];
            v39 = [v38 objectForKeyedSubscript:*MEMORY[0x277D14090]];
          }

          else
          {
            v40 = v16;
            if ([v40 conformsToProtocol:&unk_2824C0788])
            {
              v41 = v40;
            }

            else
            {
              v41 = 0;
            }

            v42 = v41;

            v43 = [v42 homeKitObject];

            if ([v43 conformsToProtocol:&unk_282547DB8])
            {
              v44 = v43;
            }

            else
            {
              v44 = 0;
            }

            v45 = v44;

            v38 = [v45 hf_parentRoom];

            v39 = [v38 uniqueIdentifier];
          }

          v46 = v39;

          if (v46)
          {
            v5 = [(HUNearbyAccessoriesItemManager *)self primaryAccessory];
            v47 = [v5 hf_parentRoom];
            v48 = [v47 uniqueIdentifier];
            v49 = [v48 UUIDString];

            v50 = [v46 UUIDString];
            LODWORD(v5) = [v50 isEqual:v49] ^ 1;
          }

          else
          {
            LOBYTE(v5) = 1;
          }

          goto LABEL_31;
        }
      }
    }

    LOBYTE(v5) = 1;
LABEL_31:

    goto LABEL_32;
  }

  if (![(HUNearbyAccessoriesItemManager *)self hasEmptyNearbyAccessories])
  {
    v22 = v4;
    if ([v22 conformsToProtocol:&unk_2824C0788])
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;

    v25 = [v24 homeKitObject];

    v8 = [v25 uniqueIdentifier];

    v5 = [(HUNearbyAccessoriesItemManager *)self customNearbyAccessories];
    v26 = [v8 UUIDString];
    v27 = [v5 objectForKeyedSubscript:v26];

    LOBYTE(v5) = v27 == 0;
    goto LABEL_34;
  }

  LOBYTE(v5) = 1;
LABEL_35:

  return v5;
}

- (BOOL)_isAPreferredServiceType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277CD0EA0]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CD0E30]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CD0EB0]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CD0F08]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CD0ED8]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CD0E58]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CD0EA8]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CD0ED0]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CD0F58]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CD0F60]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CD0E40]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CD0F40]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CD0EF8]))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:*MEMORY[0x277CD0F00]];
  }

  return v4;
}

- (id)userFilteredIdentifiers
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [(HUNearbyAccessoriesItemManager *)self primaryAccessory];
  v3 = [v2 applicationData];
  v4 = [v3 objectForKeyedSubscript:@"HUNearbyAccessoryCustomUUIDStrings"];

  if (v4)
  {
    v5 = MEMORY[0x277CCAAC8];
    v6 = objc_opt_class();
    v12 = 0;
    v7 = [v5 unarchivedDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() fromData:v4 error:&v12];
    v8 = v12;
    v9 = HFLogForCategory();
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = v8;
        _os_log_error_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_ERROR, "Unable to unarchive custom data:%@", buf, 0xCu);
      }

      v10 = v7;
      v7 = MEMORY[0x277CBEC10];
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "Unarchived custom data:%@", buf, 0xCu);
    }
  }

  else
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_ERROR, "Associated accessories have never been customized.", buf, 2u);
    }

    v7 = MEMORY[0x277CBEC10];
  }

  return v7;
}

+ (id)itemProvidersForPrimaryAccessory:(id)a3 inHome:(id)a4
{
  v23[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__HUNearbyAccessoriesItemManager_itemProvidersForPrimaryAccessory_inHome___block_invoke_2;
  aBlock[3] = &unk_277DC39D8;
  v22 = &__block_literal_global_261;
  v6 = a4;
  v7 = _Block_copy(aBlock);
  v8 = [objc_alloc(MEMORY[0x277D14AD0]) initWithHome:v6 serviceTypes:0];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __74__HUNearbyAccessoriesItemManager_itemProvidersForPrimaryAccessory_inHome___block_invoke_3;
  v18[3] = &unk_277DC3A00;
  v19 = v5;
  v20 = v7;
  v9 = v7;
  v10 = v5;
  [v8 setFilter:v18];
  v11 = [objc_alloc(MEMORY[0x277D142F0]) initWithHome:v6];
  [v11 setIncludesMatterOnlyAccessoryItems:0];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__HUNearbyAccessoriesItemManager_itemProvidersForPrimaryAccessory_inHome___block_invoke_4;
  v16[3] = &unk_277DC33F8;
  v17 = &__block_literal_global_261;
  [v11 setFilter:v16];
  v12 = [MEMORY[0x277D147C0] itemProviderInHome:v6 inRoom:0];
  v13 = [objc_alloc(MEMORY[0x277D14AB8]) initWithHome:v6];

  v23[0] = v11;
  v23[1] = v13;
  v23[2] = v8;
  v23[3] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];

  return v14;
}

uint64_t __74__HUNearbyAccessoriesItemManager_itemProvidersForPrimaryAccessory_inHome___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 accessory];
  LODWORD(v2) = (*(v2 + 16))(v2, v3);

  return v2 ^ 1;
}

uint64_t __74__HUNearbyAccessoriesItemManager_itemProvidersForPrimaryAccessory_inHome___block_invoke_3(uint64_t a1, void *a2)
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

  v7 = [v6 accessory];
  if ([v7 isEqual:*(a1 + 32)])
  {
    v8 = 1;
  }

  else
  {
    v8 = (*(*(a1 + 40) + 16))();
  }

  return v8;
}

uint64_t __74__HUNearbyAccessoriesItemManager_itemProvidersForPrimaryAccessory_inHome___block_invoke_4(uint64_t a1, void *a2)
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

  v7 = (*(*(a1 + 32) + 16))();
  return v7;
}

@end