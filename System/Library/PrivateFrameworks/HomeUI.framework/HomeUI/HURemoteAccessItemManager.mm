@interface HURemoteAccessItemManager
- (BOOL)_hasResidentDevice;
- (BOOL)_isAllowedToEditTargetUser;
- (BOOL)_isEditingAllowedForUser:(id)user;
- (BOOL)_isRemoteAccessAllowedForUser:(id)user;
- (BOOL)_isUserBeingEditedTheDeviceUser;
- (BOOL)_isUserOwner:(id)owner;
- (HMUser)user;
- (HURemoteAccessItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (HURemoteAccessItemManager)initWithHome:(id)home userItem:(id)item delegate:(id)delegate;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_homeFuture;
@end

@implementation HURemoteAccessItemManager

- (HURemoteAccessItemManager)initWithHome:(id)home userItem:(id)item delegate:(id)delegate
{
  homeCopy = home;
  v12.receiver = self;
  v12.super_class = HURemoteAccessItemManager;
  v9 = [(HFItemManager *)&v12 initWithDelegate:delegate sourceItem:item];
  v10 = v9;
  if (v9)
  {
    [(HURemoteAccessItemManager *)v9 setHomeForUser:homeCopy];
  }

  return v10;
}

- (HURemoteAccessItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHome_userItem_delegate_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HURemoteAccessItemManager.m" lineNumber:38 description:{@"%s is unavailable; use %@ instead", "-[HURemoteAccessItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HMUser)user
{
  sourceItem = [(HFItemManager *)self sourceItem];
  user = [sourceItem user];

  return user;
}

- (id)_homeFuture
{
  v2 = MEMORY[0x277D2C900];
  homeForUser = [(HURemoteAccessItemManager *)self homeForUser];
  v4 = [v2 futureWithResult:homeForUser];

  return v4;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v4 = objc_alloc(MEMORY[0x277D14B38]);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__HURemoteAccessItemManager__buildItemProvidersForHome___block_invoke;
  v15[3] = &unk_277DB7478;
  v15[4] = self;
  v5 = [v4 initWithResultsBlock:v15];
  [(HURemoteAccessItemManager *)self setAllowRemoteAccessItem:v5];

  v6 = MEMORY[0x277CBEB58];
  v7 = objc_alloc(MEMORY[0x277D14B40]);
  v8 = MEMORY[0x277CBEB98];
  allowRemoteAccessItem = [(HURemoteAccessItemManager *)self allowRemoteAccessItem];
  v10 = [v8 setWithObject:allowRemoteAccessItem];
  v11 = [v7 initWithItems:v10];
  v12 = [v6 setWithObject:v11];

  allObjects = [v12 allObjects];

  return allObjects;
}

id __56__HURemoteAccessItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _isAllowedToEditTargetUser];
  v3 = MEMORY[0x277D2C900];
  v19[0] = *MEMORY[0x277D13FB8];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "_hasResidentDevice") ^ 1}];
  v20[0] = v4;
  v19[1] = *MEMORY[0x277D13F60];
  v5 = _HULocalizedStringWithDefaultValue(@"HUUsersCellControlAccessRemotely", @"HUUsersCellControlAccessRemotely", 1);
  v20[1] = v5;
  v19[2] = *MEMORY[0x277D14068];
  v6 = MEMORY[0x277CCABB0];
  v7 = *(a1 + 32);
  v8 = [v7 user];
  if ([v7 _isRemoteAccessAllowedForUser:v8])
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = [v6 numberWithInteger:v9];
  v20[2] = v10;
  v19[3] = *MEMORY[0x277D13EA8];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:v2 ^ 1u];
  v20[3] = v11;
  v19[4] = *MEMORY[0x277D13DA8];
  v12 = MEMORY[0x277CBEB98];
  v13 = [*(a1 + 32) user];
  v14 = [v12 setWithObject:v13];
  v20[4] = v14;
  v19[5] = *MEMORY[0x277D13DA0];
  v15 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v20[5] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:6];
  v17 = [v3 futureWithResult:v16];

  return v17;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  itemsCopy = items;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  allowRemoteAccessItem = [(HURemoteAccessItemManager *)self allowRemoteAccessItem];
  v7 = [itemsCopy containsObject:allowRemoteAccessItem];

  if (v7)
  {
    allowRemoteAccessItem2 = [(HURemoteAccessItemManager *)self allowRemoteAccessItem];
    v9 = [itemsCopy containsObject:allowRemoteAccessItem2];

    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUControlAccessoriesRemotelySectionIdentifier"];
      v11 = MEMORY[0x277CBEA60];
      allowRemoteAccessItem3 = [(HURemoteAccessItemManager *)self allowRemoteAccessItem];
      v13 = [v11 arrayWithObject:allowRemoteAccessItem3];
      [v10 setItems:v13];

      v14 = _HULocalizedStringWithDefaultValue(@"HUUsersCellControlAccessRemotelyFooter", @"HUUsersCellControlAccessRemotelyFooter", 1);
      [v10 setFooterTitle:v14];

      [v5 addObject:v10];
    }
  }

  return v5;
}

- (BOOL)_isRemoteAccessAllowedForUser:(id)user
{
  userCopy = user;
  home = [(HFItemManager *)self home];
  v6 = [home homeAccessControlForUser:userCopy];

  LOBYTE(userCopy) = [v6 isRemoteAccessAllowed];
  return userCopy;
}

- (BOOL)_isEditingAllowedForUser:(id)user
{
  userCopy = user;
  home = [(HFItemManager *)self home];
  v6 = [home homeAccessControlForUser:userCopy];

  LOBYTE(userCopy) = [v6 isAdministrator];
  return userCopy;
}

- (BOOL)_isUserOwner:(id)owner
{
  ownerCopy = owner;
  home = [(HFItemManager *)self home];
  v6 = [home homeAccessControlForUser:ownerCopy];

  LOBYTE(ownerCopy) = [v6 isOwner];
  return ownerCopy;
}

- (BOOL)_isUserBeingEditedTheDeviceUser
{
  user = [(HURemoteAccessItemManager *)self user];
  home = [(HFItemManager *)self home];
  currentUser = [home currentUser];
  v6 = [user isEqual:currentUser];

  return v6;
}

- (BOOL)_hasResidentDevice
{
  home = [(HFItemManager *)self home];
  if ([home hf_supportsRemoteAccessRestrictions])
  {
    hf_supportsPerUserRemoteAccess = 1;
  }

  else
  {
    home2 = [(HFItemManager *)self home];
    hf_supportsPerUserRemoteAccess = [home2 hf_supportsPerUserRemoteAccess];
  }

  return hf_supportsPerUserRemoteAccess;
}

- (BOOL)_isAllowedToEditTargetUser
{
  home = [(HFItemManager *)self home];
  currentUser = [home currentUser];
  if ([(HURemoteAccessItemManager *)self _isUserOwner:currentUser])
  {
    _isUserBeingEditedTheDeviceUser = [(HURemoteAccessItemManager *)self _isUserBeingEditedTheDeviceUser];

    if (!_isUserBeingEditedTheDeviceUser)
    {
      LOBYTE(v6) = 1;
      return v6;
    }
  }

  else
  {
  }

  home2 = [(HFItemManager *)self home];
  currentUser2 = [home2 currentUser];
  if ([(HURemoteAccessItemManager *)self _isEditingAllowedForUser:currentUser2])
  {
    user = [(HURemoteAccessItemManager *)self user];
    v6 = ![(HURemoteAccessItemManager *)self _isEditingAllowedForUser:user];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end