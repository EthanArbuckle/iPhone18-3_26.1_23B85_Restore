@interface HUUserAccessoryAccessItemManager
- (HUUserAccessoryAccessItemManager)initWithHome:(id)home user:(id)user accessoryCategoryType:(id)type;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_homeFuture;
@end

@implementation HUUserAccessoryAccessItemManager

- (HUUserAccessoryAccessItemManager)initWithHome:(id)home user:(id)user accessoryCategoryType:(id)type
{
  homeCopy = home;
  userCopy = user;
  typeCopy = type;
  if (homeCopy)
  {
    if (userCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUUserAccessoryAccessItemManager.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"user"}];

    if (typeCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HUUserAccessoryAccessItemManager.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"home"}];

  if (!userCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (typeCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"HUUserAccessoryAccessItemManager.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"accessoryCategoryType"}];

LABEL_4:
  v19.receiver = self;
  v19.super_class = HUUserAccessoryAccessItemManager;
  v13 = [(HFItemManager *)&v19 initWithDelegate:0 sourceItem:0];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_overrideHome, home);
    objc_storeStrong(&v14->_user, user);
    objc_storeStrong(&v14->_accessoryCategoryType, type);
  }

  return v14;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v4 = MEMORY[0x277CBEB18];
  itemsCopy = items;
  array = [v4 array];
  v7 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"AccessoriesSection"];
  transformedAllowedAccessoryItemProvider = [(HUUserAccessoryAccessItemManager *)self transformedAllowedAccessoryItemProvider];
  items = [transformedAllowedAccessoryItemProvider items];
  allObjects = [items allObjects];
  defaultItemComparator = [MEMORY[0x277D14778] defaultItemComparator];
  v12 = [allObjects sortedArrayUsingComparator:defaultItemComparator];
  v13 = [v12 mutableCopy];

  [v7 setItems:v13];
  v14 = _HULocalizedStringWithDefaultValue(@"HUUserAccessoryAccess_AllowedAccessoriesSection_Header", @"HUUserAccessoryAccess_AllowedAccessoriesSection_Header", 1);
  [v7 setHeaderTitle:v14];

  [array addObject:v7];
  v15 = [MEMORY[0x277D14778] filterSections:array toDisplayedItems:itemsCopy];

  return v15;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v46 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  hf_allUsersIncludingCurrentUser = [homeCopy hf_allUsersIncludingCurrentUser];
  user = [(HUUserAccessoryAccessItemManager *)self user];
  v7 = [hf_allUsersIncludingCurrentUser containsObject:user];

  if (v7)
  {
    home = [(HFItemManager *)self home];
    user2 = [(HUUserAccessoryAccessItemManager *)self user];
    v10 = [home homeAccessControlForUser:user2];

    restrictedGuestAccessSettings = [v10 restrictedGuestAccessSettings];
    accessAllowedToAccessories = [restrictedGuestAccessSettings accessAllowedToAccessories];
    v13 = objc_alloc(MEMORY[0x277D142F0]);
    home2 = [(HFItemManager *)self home];
    v15 = [v13 initWithHome:home2];

    [v15 setIncludesMatterOnlyAccessoryItems:1];
    if ([MEMORY[0x277D14CE8] isInternalTest])
    {
      v16 = objc_alloc_init(MEMORY[0x277D148D0]);
      [v15 setValueSource:v16];
    }

    objc_initWeak(location, self);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __63__HUUserAccessoryAccessItemManager__buildItemProvidersForHome___block_invoke;
    v35[3] = &unk_277DBDC50;
    objc_copyWeak(&v37, location);
    v17 = accessAllowedToAccessories;
    v36 = v17;
    [v15 setFilter:v35];
    v18 = objc_alloc(MEMORY[0x277D14C38]);
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __63__HUUserAccessoryAccessItemManager__buildItemProvidersForHome___block_invoke_3;
    v31 = &unk_277DC4690;
    objc_copyWeak(&v34, location);
    v19 = v17;
    v32 = v19;
    v33 = homeCopy;
    v20 = [v18 initWithSourceProvider:v15 transformationBlock:&v28];
    [(HUUserAccessoryAccessItemManager *)self setTransformedAllowedAccessoryItemProvider:v20, v28, v29, v30, v31];

    transformedAllowedAccessoryItemProvider = [(HUUserAccessoryAccessItemManager *)self transformedAllowedAccessoryItemProvider];
    v38 = transformedAllowedAccessoryItemProvider;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];

    objc_destroyWeak(&v34);
    objc_destroyWeak(&v37);
    objc_destroyWeak(location);
  }

  else
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      name = [homeCopy name];
      uniqueIdentifier = [homeCopy uniqueIdentifier];
      user3 = [(HUUserAccessoryAccessItemManager *)self user];
      hf_prettyDescription = [user3 hf_prettyDescription];
      *location = 136315906;
      *&location[4] = "[HUUserAccessoryAccessItemManager _buildItemProvidersForHome:]";
      v40 = 2112;
      v41 = name;
      v42 = 2112;
      v43 = uniqueIdentifier;
      v44 = 2112;
      v45 = hf_prettyDescription;
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "(%s) Not creating itemProviders for Home <Name:%@, uniqueIdentifier:%@> becuase it does NOT contain user %@", location, 0x2Au);
    }

    v22 = MEMORY[0x277CBEBF8];
  }

  return v22;
}

uint64_t __63__HUUserAccessoryAccessItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_opt_class();
  v5 = v3;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = MEMORY[0x277CD1680];
  v9 = [WeakRetained accessoryCategoryType];
  v10 = [v8 hf_compatibleServiceTypesForCategoryType:v9];
  v11 = [v7 hf_primaryService];
  v12 = [v11 serviceType];
  v13 = [v10 na_safeContainsObject:v12];

  v14 = [WeakRetained home];
  v15 = [WeakRetained home];
  v16 = [v15 currentUser];
  LODWORD(v12) = [v14 hf_userIsRestrictedGuest:v16];

  if (v12)
  {
    v17 = *(a1 + 32);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __63__HUUserAccessoryAccessItemManager__buildItemProvidersForHome___block_invoke_2;
    v20[3] = &unk_277DB8EC0;
    v21 = v7;
    v18 = v13 & [v17 na_any:v20];
  }

  else if (v13)
  {
    v18 = [v7 hf_isRestrictedGuestAllowedAccessory];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t __63__HUUserAccessoryAccessItemManager__buildItemProvidersForHome___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 hmf_isEqualToUUID:v4];

  return v5;
}

id __63__HUUserAccessoryAccessItemManager__buildItemProvidersForHome___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  objc_opt_class();
  v5 = v3;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 accessory];
  v9 = objc_alloc(MEMORY[0x277D14C30]);
  v10 = [v5 copy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__HUUserAccessoryAccessItemManager__buildItemProvidersForHome___block_invoke_4;
  v14[3] = &unk_277DC4668;
  v15 = v8;
  v16 = a1[4];
  v17 = WeakRetained;
  v18 = a1[5];
  v11 = v8;
  v12 = [v9 initWithSourceItem:v10 transformationBlock:v14];

  return v12;
}

id __63__HUUserAccessoryAccessItemManager__buildItemProvidersForHome___block_invoke_4(id *a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [a1[4] name];
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v4 = MEMORY[0x277CCACA8];
  v5 = [a1[4] name];
  v6 = [v4 stringWithFormat:@"Home.Users.Accesory.Access.%@", v5];
  [v2 setObject:v6 forKeyedSubscript:*MEMORY[0x277D13DC8]];

  v7 = MEMORY[0x277D14AC0];
  v8 = [a1[4] hf_primaryService];
  v9 = [v8 serviceType];
  v10 = [v7 iconDescriptorForAccessoryCategoryOrServiceType:v9];
  [v2 setObject:v10 forKeyedSubscript:*MEMORY[0x277D13E88]];

  [a1[5] containsObject:a1[4]];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:HFPrimaryStateFromBOOL()];
  [v2 setObject:v11 forKeyedSubscript:*MEMORY[0x277D14068]];

  v12 = [a1[6] home];
  v13 = [a1[6] home];
  v14 = [v13 currentUser];
  v15 = [v12 hf_userIsRestrictedGuest:v14];

  v16 = [a1[6] home];
  if ([v16 hf_currentUserIsAdministrator])
  {
    v17 = [a1[6] home];
    v18 = [a1[6] user];
    v19 = [v17 hf_userIsRestrictedGuest:v18] ^ 1;
  }

  else
  {
    v19 = 1;
  }

  v20 = [MEMORY[0x277CCABB0] numberWithBool:(v15 ^ 1) & v19];
  [v2 setObject:v20 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  if (([a1[4] isReachable] & 1) == 0 && (objc_msgSend(a1[7], "hf_shouldBlockCurrentRestrictedGuestFromHome") & 1) == 0)
  {
    v21 = _HULocalizedStringWithDefaultValue(@"HUUserAccessoryAccess_isUnReachable", @"HUUserAccessoryAccess_isUnReachable", 1);
    [v2 na_safeSetObject:v21 forKey:*MEMORY[0x277D13E20]];
  }

  [v2 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D13F10]];

  return v2;
}

- (id)_homeFuture
{
  v2 = MEMORY[0x277D2C900];
  overrideHome = [(HUUserAccessoryAccessItemManager *)self overrideHome];
  v4 = [v2 futureWithResult:overrideHome];

  return v4;
}

@end