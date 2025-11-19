@interface HUAnnounceSettingsItemModuleController
- (Class)cellClassForItem:(id)a3;
- (unint64_t)didSelectItem:(id)a3;
- (void)_populateHostInformation:(id)a3;
- (void)_submitAnalyticsForAnnounceHomePodSettingItem:(id)a3 enabled:(BOOL)a4 writeWasSuccessfull:(BOOL)a5;
- (void)_submitAnalyticsForAnnounceNotificationSettingItem:(id)a3 writeWasSuccessfull:(BOOL)a4;
- (void)_submitAnalyticsForAnnounceUserSettingItem:(id)a3 enabled:(BOOL)a4 writeWasSuccessfull:(BOOL)a5;
- (void)setupCell:(id)a3 forItem:(id)a4;
- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5;
- (void)userSwitchCell:(id)a3 didTurnOn:(BOOL)a4;
@end

@implementation HUAnnounceSettingsItemModuleController

- (Class)cellClassForItem:(id)a3
{
  v3 = a3;
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

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = HUAnnounceSettingsItemModuleController;
  [(HUItemModuleController *)&v13 setupCell:v6 forItem:a4];
  objc_opt_class();
  v7 = v6;
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

- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v55.receiver = self;
  v55.super_class = HUAnnounceSettingsItemModuleController;
  [(HUItemModuleController *)&v55 updateCell:v8 forItem:v9 animated:v5];
  objc_opt_class();
  v10 = v8;
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
    v13 = v9;
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
      v16 = [v13 latestResults];
      v17 = [v16 objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
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
    v22 = v9;
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
      v25 = [v24 home];
      v26 = [v24 user];
      v27 = [v25 hf_handleForUser:v26];
      [v21 setUserHandle:v27];

      [v21 setOn:{objc_msgSend(v24, "isAnnounceEnabled")}];
      if ([v25 hf_currentUserIsOwner])
      {
        v28 = 0;
      }

      else if ([v25 hf_currentUserIsAdministrator])
      {
        v29 = [v26 uniqueIdentifier];
        v30 = [v25 currentUser];
        v31 = [v30 uniqueIdentifier];
        v53 = [v29 hmf_isEqualToUUID:v31];

        v32 = [v25 homeAccessControlForUser:v26];
        LODWORD(v30) = [v32 isAdministrator];

        v28 = (v53 ^ 1) & v30;
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
    v36 = v9;
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
    v39 = [v38 sourceItem];
    if (objc_opt_isKindOfClass())
    {
      v40 = v39;
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

    v45 = [v44 accessories];

    v46 = [v45 anyObject];
    v47 = [v46 home];
    v48 = [v47 hf_currentUserIsAdministrator];

    v49 = [v38 sourceItem];
    if ([v49 conformsToProtocol:&unk_28251AE08])
    {
      v50 = v49;
    }

    else
    {
      v50 = 0;
    }

    v51 = v50;

    if (v51)
    {
      [v35 setOn:{objc_msgSend(v51, "isAnnounceEnabled")}];
      [v35 setDisabled:v48 ^ 1u];
      [v35 setIconDisplayStyle:1];
      v52 = +[HUIconCellContentMetrics compactMetrics];
      [v35 setContentMetrics:v52];
    }

    v12 = v54;
  }
}

- (unint64_t)didSelectItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 updateNotificationSettings:v4];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__HUAnnounceSettingsItemModuleController_didSelectItem___block_invoke;
    v11[3] = &unk_277DB7158;
    v11[4] = self;
    v12 = v4;
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

- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  objc_opt_class();
  v7 = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  objc_opt_class();
  v10 = [v6 item];
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  objc_opt_class();
  v13 = [v12 sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  objc_opt_class();
  v16 = [v12 sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  if (v15 | v18)
  {
    v19 = [v6 item];
    v20 = [v9 enableAnnounceSetting:v4 forItem:v19];

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __63__HUAnnounceSettingsItemModuleController_switchCell_didTurnOn___block_invoke;
    v27[3] = &unk_277DBA3A8;
    v27[4] = self;
    v28 = v6;
    v29 = v4;
    v21 = [v20 addCompletionBlock:v27];
  }

  objc_opt_class();
  v22 = [(HUItemModuleController *)self host];
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

    [MEMORY[0x277D143D8] sendSwitchCellToggleEventForItem:v26 isOn:v4 title:@"announceAccessoryItem" fromSourceViewController:v24];
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

- (void)userSwitchCell:(id)a3 didTurnOn:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  objc_opt_class();
  v8 = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v7 item];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v13 = [v7 item];
    v14 = [v10 enablePermissionSetting:v4 forItem:v13];

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __67__HUAnnounceSettingsItemModuleController_userSwitchCell_didTurnOn___block_invoke;
    v26[3] = &unk_277DBA3A8;
    v26[4] = self;
    v27 = v7;
    v28 = v4;
    v15 = [v14 addCompletionBlock:v26];
  }

  v16 = [v10 itemUpdater];
  v17 = MEMORY[0x277D14788];
  v18 = [v10 itemProviders];
  v19 = [v17 requestToReloadItemProviders:v18 senderSelector:a2];
  v20 = [v16 performItemUpdateRequest:v19];

  objc_opt_class();
  v21 = [(HUItemModuleController *)self host];
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  if (v23)
  {
    v24 = MEMORY[0x277D143D8];
    v25 = [v7 item];
    [v24 sendSwitchCellToggleEventForItem:v25 isOn:v4 title:@"userDisplayString" fromSourceViewController:v23];
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

- (void)_submitAnalyticsForAnnounceUserSettingItem:(id)a3 enabled:(BOOL)a4 writeWasSuccessfull:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  objc_opt_class();
  v29 = v8;
  if (objc_opt_isKindOfClass())
  {
    v9 = v29;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v10 home];
  v12 = objc_opt_new();
  v13 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  [v12 setObject:v13 forKeyedSubscript:*MEMORY[0x277D133D8]];

  v14 = MEMORY[0x277CCABB0];
  v15 = [v11 currentUser];
  v16 = [v10 user];
  v17 = [v14 numberWithBool:{objc_msgSend(v15, "isEqual:", v16)}];
  [v12 setObject:v17 forKeyedSubscript:*MEMORY[0x277D13490]];

  v18 = MEMORY[0x277CCABB0];
  v19 = [v10 user];
  if ([v11 hf_userIsAdministrator:v19])
  {
    v20 = [v11 hf_currentUserIsOwner] ^ 1;
  }

  else
  {
    v20 = 0;
  }

  v21 = [v18 numberWithInt:v20];
  [v12 setObject:v21 forKeyedSubscript:*MEMORY[0x277D13488]];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v11, "hf_currentUserIsOwner")}];
  [v12 setObject:v22 forKeyedSubscript:*MEMORY[0x277D13478]];

  v23 = MEMORY[0x277CCABB0];
  if ([v11 hf_currentUserIsAdministrator])
  {
    v24 = [v11 hf_currentUserIsOwner] ^ 1;
  }

  else
  {
    v24 = 0;
  }

  v25 = [v23 numberWithInt:v24];
  [v12 setObject:v25 forKeyedSubscript:*MEMORY[0x277D13470]];

  v26 = [MEMORY[0x277CCABB0] numberWithInt:!v5];
  [v12 setObject:v26 forKeyedSubscript:*MEMORY[0x277D13468]];

  [(HUAnnounceSettingsItemModuleController *)self _populateHostInformation:v12];
  v27 = MEMORY[0x277D143D8];
  v28 = [v12 copy];
  [v27 sendEvent:21 withData:v28];
}

- (void)_submitAnalyticsForAnnounceHomePodSettingItem:(id)a3 enabled:(BOOL)a4 writeWasSuccessfull:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  objc_opt_class();
  v24 = v8;
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
  v11 = [v10 sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = [v13 home];
  v15 = objc_opt_new();
  v16 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  [v15 setObject:v16 forKeyedSubscript:*MEMORY[0x277D133D0]];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v14, "hf_currentUserIsOwner")}];
  [v15 setObject:v17 forKeyedSubscript:*MEMORY[0x277D13478]];

  v18 = MEMORY[0x277CCABB0];
  if ([v14 hf_currentUserIsAdministrator])
  {
    v19 = [v14 hf_currentUserIsOwner] ^ 1;
  }

  else
  {
    v19 = 0;
  }

  v20 = [v18 numberWithInt:v19];
  [v15 setObject:v20 forKeyedSubscript:*MEMORY[0x277D13470]];

  v21 = [MEMORY[0x277CCABB0] numberWithInt:!v5];
  [v15 setObject:v21 forKeyedSubscript:*MEMORY[0x277D13468]];

  [(HUAnnounceSettingsItemModuleController *)self _populateHostInformation:v15];
  v22 = MEMORY[0x277D143D8];
  v23 = [v15 copy];
  [v22 sendEvent:22 withData:v23];
}

- (void)_submitAnalyticsForAnnounceNotificationSettingItem:(id)a3 writeWasSuccessfull:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  objc_opt_class();
  v22 = v6;
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
  v9 = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [v11 home];
  v13 = objc_opt_new();
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "notificationMode")}];
  [v13 setObject:v14 forKeyedSubscript:*MEMORY[0x277D133E8]];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v12, "hf_currentUserIsOwner")}];
  [v13 setObject:v15 forKeyedSubscript:*MEMORY[0x277D13478]];

  v16 = MEMORY[0x277CCABB0];
  if ([v12 hf_currentUserIsAdministrator])
  {
    v17 = [v12 hf_currentUserIsOwner] ^ 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = [v16 numberWithInt:v17];
  [v13 setObject:v18 forKeyedSubscript:*MEMORY[0x277D13470]];

  v19 = [MEMORY[0x277CCABB0] numberWithInt:!v4];
  [v13 setObject:v19 forKeyedSubscript:*MEMORY[0x277D13468]];

  [(HUAnnounceSettingsItemModuleController *)self _populateHostInformation:v13];
  v20 = MEMORY[0x277D143D8];
  v21 = [v13 copy];
  [v20 sendEvent:23 withData:v21];
}

- (void)_populateHostInformation:(id)a3
{
  v4 = a3;
  v15 = [(HUItemModuleController *)self host];
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) == 0;
  v6 = v15;
  if (v5)
  {
    v6 = 0;
  }

  v7 = [v6 parentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v9 = [(HUItemModuleController *)self host];
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  v11 = [(HUItemModuleController *)self host];
  objc_opt_class();
  LOBYTE(v9) = objc_opt_isKindOfClass();

  v12 = [MEMORY[0x277CCABB0] numberWithBool:isKindOfClass & 1];
  [v4 setObject:v12 forKeyedSubscript:*MEMORY[0x277D13480]];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:v10 & 1];
  [v4 setObject:v13 forKeyedSubscript:*MEMORY[0x277D134A0]];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:v9 & 1];
  [v4 setObject:v14 forKeyedSubscript:*MEMORY[0x277D13498]];
}

@end