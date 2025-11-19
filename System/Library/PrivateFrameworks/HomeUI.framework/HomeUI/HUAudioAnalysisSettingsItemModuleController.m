@interface HUAudioAnalysisSettingsItemModuleController
- (Class)cellClassForItem:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4;
- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5;
@end

@implementation HUAudioAnalysisSettingsItemModuleController

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
  v13.receiver = self;
  v13.super_class = HUAudioAnalysisSettingsItemModuleController;
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
  v38.receiver = self;
  v38.super_class = HUAudioAnalysisSettingsItemModuleController;
  [(HUItemModuleController *)&v38 updateCell:v8 forItem:v9 animated:v5];
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

    v22 = [v21 accessories];

    v23 = [v22 anyObject];
    v24 = [v23 home];
    v25 = [v24 hf_currentUserIsAdministrator];

    v26 = [v15 sourceItem];
    if ([v26 conformsToProtocol:&unk_28251AE08])
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;

    if (v28)
    {
      [v12 setOn:{objc_msgSend(v28, "isAudioAnalysisEnabled")}];
      [v12 setDisabled:v25 ^ 1u];
      [v12 setIconDisplayStyle:1];
      v29 = +[HUIconCellContentMetrics compactMetrics];
      [v12 setContentMetrics:v29];
    }
  }

  objc_opt_class();
  v30 = v10;
  if (objc_opt_isKindOfClass())
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  v32 = v31;

  if (v32)
  {
    v33 = v9;
    v34 = [v33 home];
    v35 = [v34 audioAnalysisClassifierOptions];
    v36 = [v33 audioDetectionType] & v35;
    v37 = [v33 audioDetectionType];

    [v32 setOn:v36 == v37];
  }
}

- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 item];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
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

    v12 = [v6 item];
    v13 = [v11 updateAudioAnalysisDetectionSettings:v4 forItem:v12];

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __68__HUAudioAnalysisSettingsItemModuleController_switchCell_didTurnOn___block_invoke;
    v33[3] = &unk_277DB7EB8;
    v34 = v6;
    v35 = v4;
    v14 = [v13 addCompletionBlock:v33];
    v15 = v34;
  }

  else
  {
    objc_opt_class();
    v16 = v6;
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v13 = v17;

    objc_opt_class();
    v18 = [(HUItemModuleController *)self module];
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v15 = v19;

    objc_opt_class();
    v20 = [v13 item];
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;

    objc_opt_class();
    v23 = [v22 sourceItem];
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    objc_opt_class();
    v25 = [v22 sourceItem];

    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    if (v24 | v26)
    {
      v27 = [v13 item];
      v28 = [v15 enableAudioAnalysisSetting:v4 forItem:v27];

      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __68__HUAudioAnalysisSettingsItemModuleController_switchCell_didTurnOn___block_invoke_2;
      v30[3] = &unk_277DB7EB8;
      v31 = v16;
      v32 = v4;
      v29 = [v28 addCompletionBlock:v30];
    }
  }
}

uint64_t __68__HUAudioAnalysisSettingsItemModuleController_switchCell_didTurnOn___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [*(result + 32) setOn:(*(result + 40) & 1) == 0 animated:1];
  }

  return result;
}

uint64_t __68__HUAudioAnalysisSettingsItemModuleController_switchCell_didTurnOn___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [*(result + 32) setOn:(*(result + 40) & 1) == 0 animated:1];
  }

  return result;
}

@end