@interface HUUpdateListeningHistorySettingsItemModuleController
- (Class)cellClassForItem:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4;
- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5;
@end

@implementation HUUpdateListeningHistorySettingsItemModuleController

- (Class)cellClassForItem:(id)a3
{
  v3 = a3;
  objc_opt_class();
  objc_opt_isKindOfClass();

  v4 = objc_opt_class();

  return v4;
}

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = HUUpdateListeningHistorySettingsItemModuleController;
  [(HUItemModuleController *)&v10 setupCell:v6 forItem:a4];
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
}

- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v37.receiver = self;
  v37.super_class = HUUpdateListeningHistorySettingsItemModuleController;
  [(HUItemModuleController *)&v37 updateCell:v8 forItem:v9 animated:v5];
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

    objc_opt_class();
    v16 = [v15 sourceItem];
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    v19 = v18;
    if ([v19 conformsToProtocol:&unk_28251B0C8])
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    objc_opt_class();
    v22 = [(HUItemModuleController *)self module];
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;

    v25 = [v24 user];
    v26 = [v24 home];
    v27 = [v25 userListeningHistoryUpdateControlForHome:v26];

    v28 = [v21 accessories];

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __84__HUUpdateListeningHistorySettingsItemModuleController_updateCell_forItem_animated___block_invoke;
    v35[3] = &unk_277DB8EC0;
    v29 = v27;
    v36 = v29;
    v30 = [v28 na_all:v35];

    v31 = [v15 sourceItem];
    if ([v31 conformsToProtocol:&unk_28251AE08])
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    v33 = v32;

    if (v33)
    {
      [v12 setOn:v30];
      [v12 setIconDisplayStyle:1];
      v34 = +[HUIconCellContentMetrics compactMetrics];
      [v12 setContentMetrics:v34];
    }
  }
}

uint64_t __84__HUUpdateListeningHistorySettingsItemModuleController_updateCell_forItem_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessories];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__HUUpdateListeningHistorySettingsItemModuleController_updateCell_forItem_animated___block_invoke_2;
  v8[3] = &unk_277DB8EC0;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6;
}

uint64_t __84__HUUpdateListeningHistorySettingsItemModuleController_updateCell_forItem_animated___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 uniqueIdentifier];
  v5 = [v4 UUIDString];
  v6 = [v3 uniqueIdentifier];

  v7 = [v6 UUIDString];
  v8 = [v5 isEqualToString:v7];

  return v8;
}

- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4
{
  v4 = a4;
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 item];
    *buf = 67109378;
    v26 = v4;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "User tapped on switch to enable ULH? %{BOOL}d for item: %@", buf, 0x12u);
  }

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

  objc_opt_class();
  v12 = [v6 item];
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  objc_opt_class();
  v15 = [v14 sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  objc_opt_class();
  v17 = [v14 sourceItem];

  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v16 | v18)
  {
    v19 = [v6 item];
    v20 = [v11 setUpdateListeningHistorySetting:v4 forItem:v19];

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __77__HUUpdateListeningHistorySettingsItemModuleController_switchCell_didTurnOn___block_invoke;
    v22[3] = &unk_277DB7EB8;
    v23 = v6;
    v24 = v4;
    v21 = [v20 addCompletionBlock:v22];
  }
}

void __77__HUUpdateListeningHistorySettingsItemModuleController_switchCell_didTurnOn___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Failed to enable update listening history setting with error: %@", &v6, 0xCu);
    }

    [*(a1 + 32) setOn:(*(a1 + 40) & 1) == 0 animated:1];
  }
}

@end