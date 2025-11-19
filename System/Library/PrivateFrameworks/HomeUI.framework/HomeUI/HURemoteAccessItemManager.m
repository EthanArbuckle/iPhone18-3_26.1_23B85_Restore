@interface HURemoteAccessItemManager
- (BOOL)_hasResidentDevice;
- (BOOL)_isAllowedToEditTargetUser;
- (BOOL)_isEditingAllowedForUser:(id)a3;
- (BOOL)_isRemoteAccessAllowedForUser:(id)a3;
- (BOOL)_isUserBeingEditedTheDeviceUser;
- (BOOL)_isUserOwner:(id)a3;
- (HMUser)user;
- (HURemoteAccessItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (HURemoteAccessItemManager)initWithHome:(id)a3 userItem:(id)a4 delegate:(id)a5;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)_homeFuture;
@end

@implementation HURemoteAccessItemManager

- (HURemoteAccessItemManager)initWithHome:(id)a3 userItem:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = HURemoteAccessItemManager;
  v9 = [(HFItemManager *)&v12 initWithDelegate:a5 sourceItem:a4];
  v10 = v9;
  if (v9)
  {
    [(HURemoteAccessItemManager *)v9 setHomeForUser:v8];
  }

  return v10;
}

- (HURemoteAccessItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHome_userItem_delegate_);
  [v6 handleFailureInMethod:a2 object:self file:@"HURemoteAccessItemManager.m" lineNumber:38 description:{@"%s is unavailable; use %@ instead", "-[HURemoteAccessItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HMUser)user
{
  v2 = [(HFItemManager *)self sourceItem];
  v3 = [v2 user];

  return v3;
}

- (id)_homeFuture
{
  v2 = MEMORY[0x277D2C900];
  v3 = [(HURemoteAccessItemManager *)self homeForUser];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

- (id)_buildItemProvidersForHome:(id)a3
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
  v9 = [(HURemoteAccessItemManager *)self allowRemoteAccessItem];
  v10 = [v8 setWithObject:v9];
  v11 = [v7 initWithItems:v10];
  v12 = [v6 setWithObject:v11];

  v13 = [v12 allObjects];

  return v13;
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

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(HURemoteAccessItemManager *)self allowRemoteAccessItem];
  v7 = [v4 containsObject:v6];

  if (v7)
  {
    v8 = [(HURemoteAccessItemManager *)self allowRemoteAccessItem];
    v9 = [v4 containsObject:v8];

    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUControlAccessoriesRemotelySectionIdentifier"];
      v11 = MEMORY[0x277CBEA60];
      v12 = [(HURemoteAccessItemManager *)self allowRemoteAccessItem];
      v13 = [v11 arrayWithObject:v12];
      [v10 setItems:v13];

      v14 = _HULocalizedStringWithDefaultValue(@"HUUsersCellControlAccessRemotelyFooter", @"HUUsersCellControlAccessRemotelyFooter", 1);
      [v10 setFooterTitle:v14];

      [v5 addObject:v10];
    }
  }

  return v5;
}

- (BOOL)_isRemoteAccessAllowedForUser:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self home];
  v6 = [v5 homeAccessControlForUser:v4];

  LOBYTE(v4) = [v6 isRemoteAccessAllowed];
  return v4;
}

- (BOOL)_isEditingAllowedForUser:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self home];
  v6 = [v5 homeAccessControlForUser:v4];

  LOBYTE(v4) = [v6 isAdministrator];
  return v4;
}

- (BOOL)_isUserOwner:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self home];
  v6 = [v5 homeAccessControlForUser:v4];

  LOBYTE(v4) = [v6 isOwner];
  return v4;
}

- (BOOL)_isUserBeingEditedTheDeviceUser
{
  v3 = [(HURemoteAccessItemManager *)self user];
  v4 = [(HFItemManager *)self home];
  v5 = [v4 currentUser];
  v6 = [v3 isEqual:v5];

  return v6;
}

- (BOOL)_hasResidentDevice
{
  v3 = [(HFItemManager *)self home];
  if ([v3 hf_supportsRemoteAccessRestrictions])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(HFItemManager *)self home];
    v4 = [v5 hf_supportsPerUserRemoteAccess];
  }

  return v4;
}

- (BOOL)_isAllowedToEditTargetUser
{
  v3 = [(HFItemManager *)self home];
  v4 = [v3 currentUser];
  if ([(HURemoteAccessItemManager *)self _isUserOwner:v4])
  {
    v5 = [(HURemoteAccessItemManager *)self _isUserBeingEditedTheDeviceUser];

    if (!v5)
    {
      LOBYTE(v6) = 1;
      return v6;
    }
  }

  else
  {
  }

  v7 = [(HFItemManager *)self home];
  v8 = [v7 currentUser];
  if ([(HURemoteAccessItemManager *)self _isEditingAllowedForUser:v8])
  {
    v9 = [(HURemoteAccessItemManager *)self user];
    v6 = ![(HURemoteAccessItemManager *)self _isEditingAllowedForUser:v9];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end