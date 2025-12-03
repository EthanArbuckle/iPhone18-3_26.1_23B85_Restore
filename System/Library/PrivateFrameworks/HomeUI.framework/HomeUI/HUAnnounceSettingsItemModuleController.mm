@interface HUAnnounceSettingsItemModuleController
- (Class)cellClassForItem:(id)item;
- (unint64_t)didSelectItem:(id)item;
- (void)_populateHostInformation:(id)information;
- (void)_submitAnalyticsForAnnounceHomePodSettingItem:(id)item enabled:(BOOL)enabled writeWasSuccessfull:(BOOL)successfull;
- (void)_submitAnalyticsForAnnounceNotificationSettingItem:(id)item writeWasSuccessfull:(BOOL)successfull;
- (void)_submitAnalyticsForAnnounceUserSettingItem:(id)item enabled:(BOOL)enabled writeWasSuccessfull:(BOOL)successfull;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
- (void)userSwitchCell:(id)cell didTurnOn:(BOOL)on;
@end

@implementation HUAnnounceSettingsItemModuleController

- (Class)cellClassForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      objc_opt_isKindOfClass();
    }
  }

  v4 = objc_opt_class();

  return v4;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  v13.receiver = self;
  v13.super_class = HUAnnounceSettingsItemModuleController;
  [(HUItemModuleController *)&v13 setupCell:cellCopy forItem:item];
  objc_opt_class();
  v7 = cellCopy;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    [v9 setDelegate:self];
  }

  objc_opt_class();
  v10 = v7;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    [v12 setDelegate:self];
  }
}

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  v55.receiver = self;
  v55.super_class = HUAnnounceSettingsItemModuleController;
  [(HUItemModuleController *)&v55 updateCell:cellCopy forItem:itemCopy animated:animatedCopy];
  objc_opt_class();
  v10 = cellCopy;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    objc_opt_class();
    v13 = itemCopy;
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if (v15)
    {
      latestResults = [v13 latestResults];
      v17 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
      if ([v17 BOOLValue])
      {
        v18 = 3;
      }

      else
      {
        v18 = 0;
      }

      [v12 setAccessoryType:v18];

      [v12 setDisabled:0];
    }
  }

  objc_opt_class();
  v19 = v10;
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  if (v21)
  {
    objc_opt_class();
    v22 = itemCopy;
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;

    if (v24)
    {
      home = [v24 home];
      user = [v24 user];
      v27 = [home hf_handleForUser:user];
      [v21 setUserHandle:v27];

      [v21 setOn:{objc_msgSend(v24, "isAnnounceEnabled")}];
      if ([home hf_currentUserIsOwner])
      {
        v28 = 0;
      }

      else if ([home hf_currentUserIsAdministrator])
      {
        uniqueIdentifier = [user uniqueIdentifier];
        currentUser = [home currentUser];
        uniqueIdentifier2 = [currentUser uniqueIdentifier];
        v53 = [uniqueIdentifier hmf_isEqualToUUID:uniqueIdentifier2];

        v32 = [home homeAccessControlForUser:user];
        LODWORD(currentUser) = [v32 isAdministrator];

        v28 = (v53 ^ 1) & currentUser;
      }

      else
      {
        v28 = 1;
      }

      [v21 setDisabled:v28];
    }
  }

  objc_opt_class();
  v33 = v19;
  if (objc_opt_isKindOfClass())
  {
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;

  if (v35)
  {
    v54 = v12;
    objc_opt_class();
    v36 = itemCopy;
    if (objc_opt_isKindOfClass())
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    v38 = v37;

    objc_opt_class();
    sourceItem = [v38 sourceItem];
    if (objc_opt_isKindOfClass())
    {
      v40 = sourceItem;
    }

    else
    {
      v40 = 0;
    }

    v41 = v40;

    v42 = v41;
    if ([v42 conformsToProtocol:&unk_28251B0C8])
    {
      v43 = v42;
    }

    else
    {
      v43 = 0;
    }

    v44 = v43;

    accessories = [v44 accessories];

    anyObject = [accessories anyObject];
    home2 = [anyObject home];
    hf_currentUserIsAdministrator = [home2 hf_currentUserIsAdministrator];

    sourceItem2 = [v38 sourceItem];
    if ([sourceItem2 conformsToProtocol:&unk_28251AE08])
    {
      v50 = sourceItem2;
    }

    else
    {
      v50 = 0;
    }

    v51 = v50;

    if (v51)
    {
      [v35 setOn:{objc_msgSend(v51, "isAnnounceEnabled")}];
      [v35 setDisabled:hf_currentUserIsAdministrator ^ 1u];
      [v35 setIconDisplayStyle:1];
      v52 = +[HUIconCellContentMetrics compactMetrics];
      [v35 setContentMetrics:v52];
    }

    v12 = v54;
  }
}

- (unint64_t)didSelectItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  module = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v6 = module;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 updateNotificationSettings:itemCopy];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__HUAnnounceSettingsItemModuleController_didSelectItem___block_invoke;
    v11[3] = &unk_277DB7158;
    v11[4] = self;
    v12 = itemCopy;
    v9 = [v8 addCompletionBlock:v11];
  }

  return 0;
}

uint64_t __56__HUAnnounceSettingsItemModuleController_didSelectItem___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  return [*(a1 + 32) _submitAnalyticsForAnnounceNotificationSettingItem:*(a1 + 40) writeWasSuccessfull:v4];
}

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  cellCopy = cell;
  objc_opt_class();
  module = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v8 = module;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  objc_opt_class();
  item = [cellCopy item];
  if (objc_opt_isKindOfClass())
  {
    v11 = item;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  objc_opt_class();
  sourceItem = [v12 sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v14 = sourceItem;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  objc_opt_class();
  sourceItem2 = [v12 sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v17 = sourceItem2;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  if (v15 | v18)
  {
    item2 = [cellCopy item];
    v20 = [v9 enableAnnounceSetting:onCopy forItem:item2];

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __63__HUAnnounceSettingsItemModuleController_switchCell_didTurnOn___block_invoke;
    v27[3] = &unk_277DBA3A8;
    v27[4] = self;
    v28 = cellCopy;
    v29 = onCopy;
    v21 = [v20 addCompletionBlock:v27];
  }

  objc_opt_class();
  host = [(HUItemModuleController *)self host];
  if (objc_opt_isKindOfClass())
  {
    v23 = host;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  if (v24)
  {
    if (v15)
    {
      v25 = v15;
    }

    else
    {
      v25 = v18;
    }

    v26 = v25;
    if (!v26)
    {
      v26 = v12;
    }

    [MEMORY[0x277D143D8] sendSwitchCellToggleEventForItem:v26 isOn:onCopy title:@"announceAccessoryItem" fromSourceViewController:v24];
  }
}

void __63__HUAnnounceSettingsItemModuleController_switchCell_didTurnOn___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) item];
  if (a2)
  {
    v8 = a3 == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v6 _submitAnalyticsForAnnounceHomePodSettingItem:v7 enabled:*(a1 + 48) writeWasSuccessfull:v9];

  if (a3)
  {
    v10 = *(a1 + 40);
    v11 = (*(a1 + 48) & 1) == 0;

    [v10 setOn:v11 animated:1];
  }
}

- (void)userSwitchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  cellCopy = cell;
  objc_opt_class();
  module = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v9 = module;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  item = [cellCopy item];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    item2 = [cellCopy item];
    v14 = [v10 enablePermissionSetting:onCopy forItem:item2];

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __67__HUAnnounceSettingsItemModuleController_userSwitchCell_didTurnOn___block_invoke;
    v26[3] = &unk_277DBA3A8;
    v26[4] = self;
    v27 = cellCopy;
    v28 = onCopy;
    v15 = [v14 addCompletionBlock:v26];
  }

  itemUpdater = [v10 itemUpdater];
  v17 = MEMORY[0x277D14788];
  itemProviders = [v10 itemProviders];
  v19 = [v17 requestToReloadItemProviders:itemProviders senderSelector:a2];
  v20 = [itemUpdater performItemUpdateRequest:v19];

  objc_opt_class();
  host = [(HUItemModuleController *)self host];
  if (objc_opt_isKindOfClass())
  {
    v22 = host;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  if (v23)
  {
    v24 = MEMORY[0x277D143D8];
    item3 = [cellCopy item];
    [v24 sendSwitchCellToggleEventForItem:item3 isOn:onCopy title:@"userDisplayString" fromSourceViewController:v23];
  }
}

void __67__HUAnnounceSettingsItemModuleController_userSwitchCell_didTurnOn___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) item];
  if (a2)
  {
    v8 = a3 == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v6 _submitAnalyticsForAnnounceUserSettingItem:v7 enabled:*(a1 + 48) writeWasSuccessfull:v9];

  if (a3)
  {
    v10 = *(a1 + 40);
    v11 = (*(a1 + 48) & 1) == 0;

    [v10 setOn:v11 animated:1];
  }
}

- (void)_submitAnalyticsForAnnounceUserSettingItem:(id)item enabled:(BOOL)enabled writeWasSuccessfull:(BOOL)successfull
{
  successfullCopy = successfull;
  enabledCopy = enabled;
  itemCopy = item;
  objc_opt_class();
  v29 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v9 = v29;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  home = [v10 home];
  v12 = objc_opt_new();
  v13 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
  [v12 setObject:v13 forKeyedSubscript:*MEMORY[0x277D133D8]];

  v14 = MEMORY[0x277CCABB0];
  currentUser = [home currentUser];
  user = [v10 user];
  v17 = [v14 numberWithBool:{objc_msgSend(currentUser, "isEqual:", user)}];
  [v12 setObject:v17 forKeyedSubscript:*MEMORY[0x277D13490]];

  v18 = MEMORY[0x277CCABB0];
  user2 = [v10 user];
  if ([home hf_userIsAdministrator:user2])
  {
    v20 = [home hf_currentUserIsOwner] ^ 1;
  }

  else
  {
    v20 = 0;
  }

  v21 = [v18 numberWithInt:v20];
  [v12 setObject:v21 forKeyedSubscript:*MEMORY[0x277D13488]];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(home, "hf_currentUserIsOwner")}];
  [v12 setObject:v22 forKeyedSubscript:*MEMORY[0x277D13478]];

  v23 = MEMORY[0x277CCABB0];
  if ([home hf_currentUserIsAdministrator])
  {
    v24 = [home hf_currentUserIsOwner] ^ 1;
  }

  else
  {
    v24 = 0;
  }

  v25 = [v23 numberWithInt:v24];
  [v12 setObject:v25 forKeyedSubscript:*MEMORY[0x277D13470]];

  v26 = [MEMORY[0x277CCABB0] numberWithInt:!successfullCopy];
  [v12 setObject:v26 forKeyedSubscript:*MEMORY[0x277D13468]];

  [(HUAnnounceSettingsItemModuleController *)self _populateHostInformation:v12];
  v27 = MEMORY[0x277D143D8];
  v28 = [v12 copy];
  [v27 sendEvent:21 withData:v28];
}

- (void)_submitAnalyticsForAnnounceHomePodSettingItem:(id)item enabled:(BOOL)enabled writeWasSuccessfull:(BOOL)successfull
{
  successfullCopy = successfull;
  enabledCopy = enabled;
  itemCopy = item;
  objc_opt_class();
  v24 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v9 = v24;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  objc_opt_class();
  sourceItem = [v10 sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v12 = sourceItem;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  home = [v13 home];
  v15 = objc_opt_new();
  v16 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
  [v15 setObject:v16 forKeyedSubscript:*MEMORY[0x277D133D0]];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(home, "hf_currentUserIsOwner")}];
  [v15 setObject:v17 forKeyedSubscript:*MEMORY[0x277D13478]];

  v18 = MEMORY[0x277CCABB0];
  if ([home hf_currentUserIsAdministrator])
  {
    v19 = [home hf_currentUserIsOwner] ^ 1;
  }

  else
  {
    v19 = 0;
  }

  v20 = [v18 numberWithInt:v19];
  [v15 setObject:v20 forKeyedSubscript:*MEMORY[0x277D13470]];

  v21 = [MEMORY[0x277CCABB0] numberWithInt:!successfullCopy];
  [v15 setObject:v21 forKeyedSubscript:*MEMORY[0x277D13468]];

  [(HUAnnounceSettingsItemModuleController *)self _populateHostInformation:v15];
  v22 = MEMORY[0x277D143D8];
  v23 = [v15 copy];
  [v22 sendEvent:22 withData:v23];
}

- (void)_submitAnalyticsForAnnounceNotificationSettingItem:(id)item writeWasSuccessfull:(BOOL)successfull
{
  successfullCopy = successfull;
  itemCopy = item;
  objc_opt_class();
  v22 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v7 = v22;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  objc_opt_class();
  module = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v10 = module;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  home = [v11 home];
  v13 = objc_opt_new();
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "notificationMode")}];
  [v13 setObject:v14 forKeyedSubscript:*MEMORY[0x277D133E8]];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(home, "hf_currentUserIsOwner")}];
  [v13 setObject:v15 forKeyedSubscript:*MEMORY[0x277D13478]];

  v16 = MEMORY[0x277CCABB0];
  if ([home hf_currentUserIsAdministrator])
  {
    v17 = [home hf_currentUserIsOwner] ^ 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = [v16 numberWithInt:v17];
  [v13 setObject:v18 forKeyedSubscript:*MEMORY[0x277D13470]];

  v19 = [MEMORY[0x277CCABB0] numberWithInt:!successfullCopy];
  [v13 setObject:v19 forKeyedSubscript:*MEMORY[0x277D13468]];

  [(HUAnnounceSettingsItemModuleController *)self _populateHostInformation:v13];
  v20 = MEMORY[0x277D143D8];
  v21 = [v13 copy];
  [v20 sendEvent:23 withData:v21];
}

- (void)_populateHostInformation:(id)information
{
  informationCopy = information;
  host = [(HUItemModuleController *)self host];
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) == 0;
  v6 = host;
  if (v5)
  {
    v6 = 0;
  }

  parentViewController = [v6 parentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  host2 = [(HUItemModuleController *)self host];
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  host3 = [(HUItemModuleController *)self host];
  objc_opt_class();
  LOBYTE(host2) = objc_opt_isKindOfClass();

  v12 = [MEMORY[0x277CCABB0] numberWithBool:isKindOfClass & 1];
  [informationCopy setObject:v12 forKeyedSubscript:*MEMORY[0x277D13480]];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:v10 & 1];
  [informationCopy setObject:v13 forKeyedSubscript:*MEMORY[0x277D134A0]];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:host2 & 1];
  [informationCopy setObject:v14 forKeyedSubscript:*MEMORY[0x277D13498]];
}

@end