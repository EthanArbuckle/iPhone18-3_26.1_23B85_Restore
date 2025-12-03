@interface HUUserCamerasAccessLevelItemManager
- (BOOL)_isAllowedToEditTargetUser;
- (BOOL)_isEditingAllowedForUser:(id)user;
- (BOOL)_isUserBeingEditedTheDeviceUser;
- (BOOL)_isUserOwner:(id)owner;
- (HMUser)user;
- (HUUserCamerasAccessLevelItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (HUUserCamerasAccessLevelItemManager)initWithHome:(id)home userItem:(id)item delegate:(id)delegate;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_homeFuture;
- (unint64_t)_accessLevelForUser:(id)user;
@end

@implementation HUUserCamerasAccessLevelItemManager

- (HUUserCamerasAccessLevelItemManager)initWithHome:(id)home userItem:(id)item delegate:(id)delegate
{
  homeCopy = home;
  v12.receiver = self;
  v12.super_class = HUUserCamerasAccessLevelItemManager;
  v9 = [(HFItemManager *)&v12 initWithDelegate:delegate sourceItem:item];
  v10 = v9;
  if (v9)
  {
    [(HUUserCamerasAccessLevelItemManager *)v9 setHomeForUser:homeCopy];
  }

  return v10;
}

- (HUUserCamerasAccessLevelItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHome_userItem_delegate_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUUserCamerasAccessLevelItemManager.m" lineNumber:39 description:{@"%s is unavailable; use %@ instead", "-[HUUserCamerasAccessLevelItemManager initWithDelegate:sourceItem:]", v7}];

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
  homeForUser = [(HUUserCamerasAccessLevelItemManager *)self homeForUser];
  v4 = [v2 futureWithResult:homeForUser];

  return v4;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v4 = ![(HUUserCamerasAccessLevelItemManager *)self _isAllowedToEditTargetUser];
  _cameraAccessLevels = [(HUUserCamerasAccessLevelItemManager *)self _cameraAccessLevels];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__HUUserCamerasAccessLevelItemManager__buildItemProvidersForHome___block_invoke;
  v15[3] = &unk_277DBC980;
  v15[4] = self;
  v16 = v4;
  v6 = [_cameraAccessLevels na_map:v15];
  [(HUUserCamerasAccessLevelItemManager *)self setAccessLevelItems:v6];

  v7 = objc_alloc(MEMORY[0x277CBEB98]);
  accessLevelItems = [(HUUserCamerasAccessLevelItemManager *)self accessLevelItems];
  v9 = [v7 initWithArray:accessLevelItems];

  v10 = MEMORY[0x277CBEB58];
  v11 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v9];
  v12 = [v10 setWithObject:v11];

  allObjects = [v12 allObjects];

  return allObjects;
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

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v38 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc(MEMORY[0x277CBEB98]);
  accessLevelItems = [(HUUserCamerasAccessLevelItemManager *)self accessLevelItems];
  v8 = [v6 initWithArray:accessLevelItems];
  v9 = [itemsCopy intersectsSet:v8];

  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    accessLevelItems2 = [(HUUserCamerasAccessLevelItemManager *)self accessLevelItems];
    v12 = [accessLevelItems2 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
            objc_enumerationMutation(accessLevelItems2);
          }

          v16 = *(*(&v33 + 1) + 8 * i);
          if ([itemsCopy containsObject:v16])
          {
            [v10 addObject:v16];
          }
        }

        v13 = [accessLevelItems2 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v13);
    }

    v17 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUCamerasAccessLevelSectionIdentifier"];
    [v17 setItems:v10];
    if ([(HUUserCamerasAccessLevelItemManager *)self _isAllowedToEditTargetUser])
    {
      v18 = objc_alloc(MEMORY[0x277D14CA8]);
      home = [(HFItemManager *)self home];
      v20 = [v18 initWithHome:home];

      [v20 setStyle:1];
      home2 = [(HFItemManager *)self home];
      user = [(HUUserCamerasAccessLevelItemManager *)self user];
      v23 = [home2 hf_handleForUser:user];
      v24 = [v20 stringForObjectValue:v23];

      v31 = HULocalizedStringWithFormat(@"HUUsersCamerasAccessLevelFooter", @"%@", v25, v26, v27, v28, v29, v30, v24);
      [v17 setFooterTitle:v31];
    }

    [v5 addObject:v17];
  }

  return v5;
}

- (unint64_t)_accessLevelForUser:(id)user
{
  userCopy = user;
  home = [(HFItemManager *)self home];
  v6 = [home homeAccessControlForUser:userCopy];

  camerasAccessLevel = [v6 camerasAccessLevel];
  return camerasAccessLevel;
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
  user = [(HUUserCamerasAccessLevelItemManager *)self user];
  home = [(HFItemManager *)self home];
  currentUser = [home currentUser];
  v6 = [user isEqual:currentUser];

  return v6;
}

- (BOOL)_isAllowedToEditTargetUser
{
  home = [(HFItemManager *)self home];
  currentUser = [home currentUser];
  if ([(HUUserCamerasAccessLevelItemManager *)self _isUserOwner:currentUser])
  {
    _isUserBeingEditedTheDeviceUser = [(HUUserCamerasAccessLevelItemManager *)self _isUserBeingEditedTheDeviceUser];

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
  if ([(HUUserCamerasAccessLevelItemManager *)self _isEditingAllowedForUser:currentUser2])
  {
    user = [(HUUserCamerasAccessLevelItemManager *)self user];
    v6 = ![(HUUserCamerasAccessLevelItemManager *)self _isEditingAllowedForUser:user];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end