@interface HUNearbyAccessoriesItemManager
+ (id)itemProvidersForPrimaryAccessory:(id)accessory inHome:(id)home;
- (BOOL)_isAPreferredServiceType:(id)type;
- (BOOL)_isServiceItemAssociatedWithPrimaryAccessory:(id)accessory;
- (BOOL)hasCustomNearbyAccessories;
- (BOOL)hasEmptyNearbyAccessories;
- (BOOL)shouldHideItem:(id)item;
- (HUNearbyAccessoriesItemManager)initWithDelegate:(id)delegate sourceProfileItem:(id)item supportsQuickControls:(BOOL)controls;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_comparatorForSectionIdentifier:(id)identifier;
- (id)_itemsToHideInSet:(id)set;
- (id)userFilteredIdentifiers;
@end

@implementation HUNearbyAccessoriesItemManager

- (HUNearbyAccessoriesItemManager)initWithDelegate:(id)delegate sourceProfileItem:(id)item supportsQuickControls:(BOOL)controls
{
  itemCopy = item;
  delegateCopy = delegate;
  v10 = [itemCopy copy];
  v15.receiver = self;
  v15.super_class = HUNearbyAccessoriesItemManager;
  v11 = [(HFItemManager *)&v15 initWithDelegate:delegateCopy sourceItem:v10];

  if (v11)
  {
    accessory = [itemCopy accessory];
    primaryAccessory = v11->_primaryAccessory;
    v11->_primaryAccessory = accessory;

    v11->_supportsQuickControls = controls;
  }

  return v11;
}

- (id)_buildItemProvidersForHome:(id)home
{
  homeCopy = home;
  v5 = objc_opt_class();
  primaryAccessory = [(HUNearbyAccessoriesItemManager *)self primaryAccessory];
  v7 = [v5 itemProvidersForPrimaryAccessory:primaryAccessory inHome:homeCopy];

  return v7;
}

- (id)_comparatorForSectionIdentifier:(id)identifier
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

- (BOOL)_isServiceItemAssociatedWithPrimaryAccessory:(id)accessory
{
  accessories = [accessory accessories];
  anyObject = [accessories anyObject];
  primaryAccessory = [(HUNearbyAccessoriesItemManager *)self primaryAccessory];
  v7 = [anyObject isEqual:primaryAccessory];

  return v7;
}

- (id)_itemsToHideInSet:(id)set
{
  setCopy = set;
  userFilteredIdentifiers = [(HUNearbyAccessoriesItemManager *)self userFilteredIdentifiers];
  [(HUNearbyAccessoriesItemManager *)self setCustomNearbyAccessories:userFilteredIdentifiers];

  v11.receiver = self;
  v11.super_class = HUNearbyAccessoriesItemManager;
  v6 = [(HFItemManager *)&v11 _itemsToHideInSet:setCopy];
  v7 = [v6 mutableCopy];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__HUNearbyAccessoriesItemManager__itemsToHideInSet___block_invoke;
  v10[3] = &unk_277DB85D8;
  v10[4] = self;
  v8 = [setCopy na_filter:v10];

  [v7 unionSet:v8];

  return v7;
}

- (BOOL)hasCustomNearbyAccessories
{
  customNearbyAccessories = [(HUNearbyAccessoriesItemManager *)self customNearbyAccessories];
  v3 = [customNearbyAccessories count] != 0;

  return v3;
}

- (BOOL)hasEmptyNearbyAccessories
{
  customNearbyAccessories = [(HUNearbyAccessoriesItemManager *)self customNearbyAccessories];
  v3 = [customNearbyAccessories objectForKeyedSubscript:@"EmptySetIdentifier"];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)shouldHideItem:(id)item
{
  itemCopy = item;
  if (![(HUNearbyAccessoriesItemManager *)self hasCustomNearbyAccessories])
  {
    objc_opt_class();
    v6 = itemCopy;
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    uniqueIdentifier3 = v7;

    if (uniqueIdentifier3)
    {
      accessories = [uniqueIdentifier3 accessories];
      anyObject = [accessories anyObject];
      primaryAccessory = [(HUNearbyAccessoriesItemManager *)self primaryAccessory];
      v12 = [anyObject isEqual:primaryAccessory];

      if (v12)
      {
        service = [uniqueIdentifier3 service];
        LODWORD(primaryAccessory3) = [service hf_isDisplayableSensor] ^ 1;
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

    service = v15;

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

    accessory = [service accessory];
    primaryAccessory2 = [(HUNearbyAccessoriesItemManager *)self primaryAccessory];
    v21 = [accessory isEqual:primaryAccessory2];

    if (v21)
    {
      LOBYTE(primaryAccessory3) = 1;
LABEL_32:

      goto LABEL_33;
    }

    if (service)
    {
      accessory2 = [service accessory];
      hf_primaryService = [accessory2 hf_primaryService];
    }

    else if (uniqueIdentifier3)
    {
      hf_primaryService = [uniqueIdentifier3 service];
    }

    else
    {
      hf_primaryService = 0;
    }

    serviceType = [hf_primaryService serviceType];
    v31 = [serviceType isEqual:*MEMORY[0x277CD0EC0]];

    if ((v31 & 1) == 0)
    {
      serviceType2 = [hf_primaryService serviceType];
      v33 = [serviceType2 isEqualToString:*MEMORY[0x277CD0ED8]];

      if (v33)
      {
        LOBYTE(primaryAccessory3) = 0;
        goto LABEL_31;
      }

      if (([hf_primaryService hf_isInGroup] & 1) == 0)
      {
        v35 = MEMORY[0x277D145C8];
        v36 = [(HFItemManager *)self childItemsForItem:v16];
        v37 = [v35 hu_preferredToggleableControlItemInControlItems:v36];

        if ([(HUNearbyAccessoriesItemManager *)self supportsQuickControls]|| v37)
        {
          if (v18)
          {
            latestResults = [v18 latestResults];
            uniqueIdentifier = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14090]];
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

            homeKitObject = [v42 homeKitObject];

            if ([homeKitObject conformsToProtocol:&unk_282547DB8])
            {
              v44 = homeKitObject;
            }

            else
            {
              v44 = 0;
            }

            v45 = v44;

            latestResults = [v45 hf_parentRoom];

            uniqueIdentifier = [latestResults uniqueIdentifier];
          }

          v46 = uniqueIdentifier;

          if (v46)
          {
            primaryAccessory3 = [(HUNearbyAccessoriesItemManager *)self primaryAccessory];
            hf_parentRoom = [primaryAccessory3 hf_parentRoom];
            uniqueIdentifier2 = [hf_parentRoom uniqueIdentifier];
            uUIDString = [uniqueIdentifier2 UUIDString];

            uUIDString2 = [v46 UUIDString];
            LODWORD(primaryAccessory3) = [uUIDString2 isEqual:uUIDString] ^ 1;
          }

          else
          {
            LOBYTE(primaryAccessory3) = 1;
          }

          goto LABEL_31;
        }
      }
    }

    LOBYTE(primaryAccessory3) = 1;
LABEL_31:

    goto LABEL_32;
  }

  if (![(HUNearbyAccessoriesItemManager *)self hasEmptyNearbyAccessories])
  {
    v22 = itemCopy;
    if ([v22 conformsToProtocol:&unk_2824C0788])
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;

    homeKitObject2 = [v24 homeKitObject];

    uniqueIdentifier3 = [homeKitObject2 uniqueIdentifier];

    primaryAccessory3 = [(HUNearbyAccessoriesItemManager *)self customNearbyAccessories];
    uUIDString3 = [uniqueIdentifier3 UUIDString];
    v27 = [primaryAccessory3 objectForKeyedSubscript:uUIDString3];

    LOBYTE(primaryAccessory3) = v27 == 0;
    goto LABEL_34;
  }

  LOBYTE(primaryAccessory3) = 1;
LABEL_35:

  return primaryAccessory3;
}

- (BOOL)_isAPreferredServiceType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:*MEMORY[0x277CD0EA0]] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277CD0E30]) & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277CD0EB0]) & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277CD0F08]) & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277CD0ED8]) & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277CD0E58]) & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277CD0EA8]) & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277CD0ED0]) & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277CD0F58]) & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277CD0F60]) & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277CD0E40]) & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277CD0F40]) & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277CD0EF8]))
  {
    v4 = 1;
  }

  else
  {
    v4 = [typeCopy isEqualToString:*MEMORY[0x277CD0F00]];
  }

  return v4;
}

- (id)userFilteredIdentifiers
{
  v15 = *MEMORY[0x277D85DE8];
  primaryAccessory = [(HUNearbyAccessoriesItemManager *)self primaryAccessory];
  applicationData = [primaryAccessory applicationData];
  v4 = [applicationData objectForKeyedSubscript:@"HUNearbyAccessoryCustomUUIDStrings"];

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

+ (id)itemProvidersForPrimaryAccessory:(id)accessory inHome:(id)home
{
  v23[4] = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__HUNearbyAccessoriesItemManager_itemProvidersForPrimaryAccessory_inHome___block_invoke_2;
  aBlock[3] = &unk_277DC39D8;
  v22 = &__block_literal_global_261;
  homeCopy = home;
  v7 = _Block_copy(aBlock);
  v8 = [objc_alloc(MEMORY[0x277D14AD0]) initWithHome:homeCopy serviceTypes:0];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __74__HUNearbyAccessoriesItemManager_itemProvidersForPrimaryAccessory_inHome___block_invoke_3;
  v18[3] = &unk_277DC3A00;
  v19 = accessoryCopy;
  v20 = v7;
  v9 = v7;
  v10 = accessoryCopy;
  [v8 setFilter:v18];
  v11 = [objc_alloc(MEMORY[0x277D142F0]) initWithHome:homeCopy];
  [v11 setIncludesMatterOnlyAccessoryItems:0];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__HUNearbyAccessoriesItemManager_itemProvidersForPrimaryAccessory_inHome___block_invoke_4;
  v16[3] = &unk_277DC33F8;
  v17 = &__block_literal_global_261;
  [v11 setFilter:v16];
  v12 = [MEMORY[0x277D147C0] itemProviderInHome:homeCopy inRoom:0];
  v13 = [objc_alloc(MEMORY[0x277D14AB8]) initWithHome:homeCopy];

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