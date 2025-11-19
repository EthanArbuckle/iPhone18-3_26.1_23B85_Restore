@interface HUUserCamerasAccessLevelItemManager
- (BOOL)_isAllowedToEditTargetUser;
- (BOOL)_isEditingAllowedForUser:(id)a3;
- (BOOL)_isUserBeingEditedTheDeviceUser;
- (BOOL)_isUserOwner:(id)a3;
- (HMUser)user;
- (HUUserCamerasAccessLevelItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (HUUserCamerasAccessLevelItemManager)initWithHome:(id)a3 userItem:(id)a4 delegate:(id)a5;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)_homeFuture;
- (unint64_t)_accessLevelForUser:(id)a3;
@end

@implementation HUUserCamerasAccessLevelItemManager

- (HUUserCamerasAccessLevelItemManager)initWithHome:(id)a3 userItem:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = HUUserCamerasAccessLevelItemManager;
  v9 = [(HFItemManager *)&v12 initWithDelegate:a5 sourceItem:a4];
  v10 = v9;
  if (v9)
  {
    [(HUUserCamerasAccessLevelItemManager *)v9 setHomeForUser:v8];
  }

  return v10;
}

- (HUUserCamerasAccessLevelItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHome_userItem_delegate_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUUserCamerasAccessLevelItemManager.m" lineNumber:39 description:{@"%s is unavailable; use %@ instead", "-[HUUserCamerasAccessLevelItemManager initWithDelegate:sourceItem:]", v7}];

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
  v3 = [(HUUserCamerasAccessLevelItemManager *)self homeForUser];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v4 = ![(HUUserCamerasAccessLevelItemManager *)self _isAllowedToEditTargetUser];
  v5 = [(HUUserCamerasAccessLevelItemManager *)self _cameraAccessLevels];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__HUUserCamerasAccessLevelItemManager__buildItemProvidersForHome___block_invoke;
  v15[3] = &unk_277DBC980;
  v15[4] = self;
  v16 = v4;
  v6 = [v5 na_map:v15];
  [(HUUserCamerasAccessLevelItemManager *)self setAccessLevelItems:v6];

  v7 = objc_alloc(MEMORY[0x277CBEB98]);
  v8 = [(HUUserCamerasAccessLevelItemManager *)self accessLevelItems];
  v9 = [v7 initWithArray:v8];

  v10 = MEMORY[0x277CBEB58];
  v11 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v9];
  v12 = [v10 setWithObject:v11];

  v13 = [v12 allObjects];

  return v13;
}

id __66__HUUserCamerasAccessLevelItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 integerValue];
  v4 = objc_alloc(MEMORY[0x277D14B38]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HUUserCamerasAccessLevelItemManager__buildItemProvidersForHome___block_invoke_2;
  v7[3] = &unk_277DBC958;
  v7[4] = *(a1 + 32);
  v7[5] = v3;
  v8 = *(a1 + 40);
  v5 = [v4 initWithResultsBlock:v7];

  return v5;
}

id __66__HUUserCamerasAccessLevelItemManager__buildItemProvidersForHome___block_invoke_2(uint64_t a1)
{
  v18[5] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D2C900];
  v17[0] = *MEMORY[0x277D13F60];
  v3 = HFLocalizedStringFromHMUserCameraAccessLevel();
  v18[0] = v3;
  v17[1] = @"HFAccessLevelValueResultKey";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
  v18[1] = v4;
  v17[2] = *MEMORY[0x277D13FE8];
  v5 = MEMORY[0x277CCABB0];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = [v6 user];
  v9 = [v5 numberWithInt:{v7 == objc_msgSend(v6, "_accessLevelForUser:", v8)}];
  v18[2] = v9;
  v17[3] = *MEMORY[0x277D13EA8];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  v18[3] = v10;
  v17[4] = *MEMORY[0x277D13DA8];
  v11 = MEMORY[0x277CBEB98];
  v12 = [*(a1 + 32) user];
  v13 = [v11 setWithObjects:{v12, 0, v17[0]}];
  v18[4] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
  v15 = [v2 futureWithResult:v14];

  return v15;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc(MEMORY[0x277CBEB98]);
  v7 = [(HUUserCamerasAccessLevelItemManager *)self accessLevelItems];
  v8 = [v6 initWithArray:v7];
  v9 = [v4 intersectsSet:v8];

  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v11 = [(HUUserCamerasAccessLevelItemManager *)self accessLevelItems];
    v12 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v34;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v34 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v33 + 1) + 8 * i);
          if ([v4 containsObject:v16])
          {
            [v10 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v13);
    }

    v17 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUCamerasAccessLevelSectionIdentifier"];
    [v17 setItems:v10];
    if ([(HUUserCamerasAccessLevelItemManager *)self _isAllowedToEditTargetUser])
    {
      v18 = objc_alloc(MEMORY[0x277D14CA8]);
      v19 = [(HFItemManager *)self home];
      v20 = [v18 initWithHome:v19];

      [v20 setStyle:1];
      v21 = [(HFItemManager *)self home];
      v22 = [(HUUserCamerasAccessLevelItemManager *)self user];
      v23 = [v21 hf_handleForUser:v22];
      v24 = [v20 stringForObjectValue:v23];

      v31 = HULocalizedStringWithFormat(@"HUUsersCamerasAccessLevelFooter", @"%@", v25, v26, v27, v28, v29, v30, v24);
      [v17 setFooterTitle:v31];
    }

    [v5 addObject:v17];
  }

  return v5;
}

- (unint64_t)_accessLevelForUser:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self home];
  v6 = [v5 homeAccessControlForUser:v4];

  v7 = [v6 camerasAccessLevel];
  return v7;
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
  v3 = [(HUUserCamerasAccessLevelItemManager *)self user];
  v4 = [(HFItemManager *)self home];
  v5 = [v4 currentUser];
  v6 = [v3 isEqual:v5];

  return v6;
}

- (BOOL)_isAllowedToEditTargetUser
{
  v3 = [(HFItemManager *)self home];
  v4 = [v3 currentUser];
  if ([(HUUserCamerasAccessLevelItemManager *)self _isUserOwner:v4])
  {
    v5 = [(HUUserCamerasAccessLevelItemManager *)self _isUserBeingEditedTheDeviceUser];

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
  if ([(HUUserCamerasAccessLevelItemManager *)self _isEditingAllowedForUser:v8])
  {
    v9 = [(HUUserCamerasAccessLevelItemManager *)self user];
    v6 = ![(HUUserCamerasAccessLevelItemManager *)self _isEditingAllowedForUser:v9];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end