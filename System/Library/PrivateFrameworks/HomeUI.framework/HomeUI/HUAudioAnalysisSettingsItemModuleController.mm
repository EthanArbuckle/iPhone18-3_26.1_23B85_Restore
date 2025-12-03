@interface HUAudioAnalysisSettingsItemModuleController
- (Class)cellClassForItem:(id)item;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
@end

@implementation HUAudioAnalysisSettingsItemModuleController

- (Class)cellClassForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  objc_opt_isKindOfClass();

  v4 = objc_opt_class();

  return v4;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  v13.receiver = self;
  v13.super_class = HUAudioAnalysisSettingsItemModuleController;
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
  v38.receiver = self;
  v38.super_class = HUAudioAnalysisSettingsItemModuleController;
  [(HUItemModuleController *)&v38 updateCell:cellCopy forItem:itemCopy animated:animatedCopy];
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

    objc_opt_class();
    sourceItem = [v15 sourceItem];
    if (objc_opt_isKindOfClass())
    {
      v17 = sourceItem;
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

    accessories = [v21 accessories];

    anyObject = [accessories anyObject];
    home = [anyObject home];
    hf_currentUserIsAdministrator = [home hf_currentUserIsAdministrator];

    sourceItem2 = [v15 sourceItem];
    if ([sourceItem2 conformsToProtocol:&unk_28251AE08])
    {
      v27 = sourceItem2;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;

    if (v28)
    {
      [v12 setOn:{objc_msgSend(v28, "isAudioAnalysisEnabled")}];
      [v12 setDisabled:hf_currentUserIsAdministrator ^ 1u];
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
    v33 = itemCopy;
    home2 = [v33 home];
    audioAnalysisClassifierOptions = [home2 audioAnalysisClassifierOptions];
    v36 = [v33 audioDetectionType] & audioAnalysisClassifierOptions;
    audioDetectionType = [v33 audioDetectionType];

    [v32 setOn:v36 == audioDetectionType];
  }
}

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  cellCopy = cell;
  item = [cellCopy item];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
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

    item2 = [cellCopy item];
    v13 = [v11 updateAudioAnalysisDetectionSettings:onCopy forItem:item2];

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __68__HUAudioAnalysisSettingsItemModuleController_switchCell_didTurnOn___block_invoke;
    v33[3] = &unk_277DB7EB8;
    v34 = cellCopy;
    v35 = onCopy;
    v14 = [v13 addCompletionBlock:v33];
    v15 = v34;
  }

  else
  {
    objc_opt_class();
    v16 = cellCopy;
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
    module2 = [(HUItemModuleController *)self module];
    if (objc_opt_isKindOfClass())
    {
      v19 = module2;
    }

    else
    {
      v19 = 0;
    }

    v15 = v19;

    objc_opt_class();
    item3 = [v13 item];
    if (objc_opt_isKindOfClass())
    {
      v21 = item3;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;

    objc_opt_class();
    sourceItem = [v22 sourceItem];
    if (objc_opt_isKindOfClass())
    {
      v24 = sourceItem;
    }

    else
    {
      v24 = 0;
    }

    objc_opt_class();
    sourceItem2 = [v22 sourceItem];

    if (objc_opt_isKindOfClass())
    {
      v26 = sourceItem2;
    }

    else
    {
      v26 = 0;
    }

    if (v24 | v26)
    {
      item4 = [v13 item];
      v28 = [v15 enableAudioAnalysisSetting:onCopy forItem:item4];

      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __68__HUAudioAnalysisSettingsItemModuleController_switchCell_didTurnOn___block_invoke_2;
      v30[3] = &unk_277DB7EB8;
      v31 = v16;
      v32 = onCopy;
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