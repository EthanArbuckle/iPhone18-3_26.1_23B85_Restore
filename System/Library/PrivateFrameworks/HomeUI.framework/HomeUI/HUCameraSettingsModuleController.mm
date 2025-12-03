@interface HUCameraSettingsModuleController
- (BOOL)canSelectDisabledItem:(id)item;
- (BOOL)canSelectItem:(id)item;
- (Class)cellClassForItem:(id)item;
- (HUCameraSettingsModuleController)initWithModule:(id)module;
- (unint64_t)didSelectItem:(id)item;
- (void)setHost:(id)host;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
- (void)viewSizeDidChanged;
@end

@implementation HUCameraSettingsModuleController

- (HUCameraSettingsModuleController)initWithModule:(id)module
{
  moduleCopy = module;
  v5 = objc_opt_class();
  v6 = moduleCopy;
  if (!v6)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v6;
  if (!v7)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v10 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v5, objc_opt_class()}];

LABEL_7:
    v8 = 0;
  }

  v11 = &unk_2824D3FD0;
  v12 = v6;
  v13 = v12;
  if (v6)
  {
    if ([v12 conformsToProtocol:v11])
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v6 = v13;
    if (!v14)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
      v19 = NSStringFromProtocol(v11);
      [currentHandler2 handleFailureInFunction:v18 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v19}];

      v6 = 0;
    }
  }

  v20.receiver = self;
  v20.super_class = HUCameraSettingsModuleController;
  v15 = [(HUItemModuleController *)&v20 initWithModule:v13];

  return v15;
}

- (void)setHost:(id)host
{
  v24 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = HUCameraSettingsModuleController;
  [(HUItemModuleController *)&v22 setHost:host];
  objc_opt_class();
  module = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v5 = module;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = v6;
  presenceModules = [v6 presenceModules];
  v8 = [presenceModules countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(presenceModules);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          host = [(HUItemModuleController *)self host];
          v14 = objc_opt_respondsToSelector();

          if (v14)
          {
            host2 = [(HUItemModuleController *)self host];
            v16 = [host2 presentingViewControllerForModuleController:self];
            [v12 setPresentingViewController:v16];
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [presenceModules countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v9);
  }
}

- (Class)cellClassForItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  v6 = [module isItemHeader:itemCopy];

  if ((v6 & 1) == 0)
  {
    module2 = [(HUItemModuleController *)self module];
    v8 = [module2 isOptionItem:itemCopy];

    if ((v8 & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        latestResults = [itemCopy latestResults];
        v10 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EB0]];
        [v10 BOOLValue];
      }
    }
  }

  v11 = objc_opt_class();

  return v11;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  v29.receiver = self;
  v29.super_class = HUCameraSettingsModuleController;
  [(HUItemModuleController *)&v29 setupCell:cellCopy forItem:itemCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [cellCopy setValueColorFollowsTintColor:1];
    if ([(HUCameraSettingsModuleController *)self useProxSetupPresentationStyle])
    {
      [cellCopy setUseVerticalLayoutOnly:1];
    }
  }

  module = [(HUItemModuleController *)self module];
  v9 = [module isItemHeader:itemCopy];

  if (v9)
  {
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
      messageTextView = [v12 messageTextView];
      [messageTextView setDelegate:self];
    }
  }

  module2 = [(HUItemModuleController *)self module];
  if (([module2 isItemHeader:itemCopy] & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_18;
    }

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

    module2 = v17;

    [module2 setHideIcon:1];
  }

LABEL_18:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    module3 = [(HUItemModuleController *)self module];
    if (objc_opt_isKindOfClass())
    {
      v19 = module3;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    v21 = [HUDynamicAlignmentTitleValueCellLayoutOptions alloc];
    longestCameraUsageOptionItemTitle = [v20 longestCameraUsageOptionItemTitle];
    longestCameraPresenceItemTitle = [v20 longestCameraPresenceItemTitle];
    v24 = [(HUDynamicAlignmentTitleValueCellLayoutOptions *)v21 initWithCellSizeSubclass:1 longestPossibleValueText:longestCameraUsageOptionItemTitle longestPossibleTitleText:longestCameraPresenceItemTitle];

    [cellCopy setLayoutOptions:v24];
  }

  if ([(HUCameraSettingsModuleController *)self useProxSetupPresentationStyle])
  {
    module4 = [(HUItemModuleController *)self module];
    v26 = [module4 isItemHeader:itemCopy];

    if ((v26 & 1) == 0)
    {
      secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
      contentView = [cellCopy contentView];
      [contentView setBackgroundColor:secondarySystemBackgroundColor];
    }
  }
}

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  v54.receiver = self;
  v54.super_class = HUCameraSettingsModuleController;
  [(HUItemModuleController *)&v54 updateCell:cellCopy forItem:itemCopy animated:animatedCopy];
  objc_opt_class();
  module = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v11 = module;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [v12 isOptionItem:itemCopy];
  v14 = MEMORY[0x277D13F60];
  if (!v13)
  {
    goto LABEL_19;
  }

  v15 = objc_opt_class();
  v16 = cellCopy;
  if (v16)
  {
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v16;
    if (v17)
    {
      goto LABEL_12;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v20 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v15, objc_opt_class()}];
  }

  v18 = 0;
LABEL_12:

  latestResults = [itemCopy latestResults];
  v22 = [latestResults objectForKeyedSubscript:*v14];
  [v18 setTitleText:v22];

  latestResults2 = [itemCopy latestResults];
  v24 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
  [v18 setDescriptionText:v24];

  objc_opt_class();
  v25 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;

  if ([v27 updateInProgress])
  {
    [v18 setAnimating:1];
  }

  else
  {
    latestResults3 = [v25 latestResults];
    v29 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
    bOOLValue = [v29 BOOLValue];

    [v18 setAnimating:0];
    [v18 setChecked:bOOLValue];
  }

LABEL_19:
  objc_opt_class();
  v31 = itemCopy;
  if (objc_opt_isKindOfClass())
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
    v34 = objc_opt_class();
    v35 = cellCopy;
    if (v35)
    {
      if (objc_opt_isKindOfClass())
      {
        v36 = v35;
      }

      else
      {
        v36 = 0;
      }

      v37 = v35;
      if (v36)
      {
        goto LABEL_30;
      }

      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [currentHandler2 handleFailureInFunction:v39 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v34, objc_opt_class()}];
    }

    v37 = 0;
LABEL_30:

    home = [v33 home];
    user = [v33 user];
    v42 = [home hf_handleForUser:user];
    [v37 setUserHandle:v42];

    valueCellConfiguration = [MEMORY[0x277D756E0] valueCellConfiguration];
    latestResults4 = [v33 latestResults];
    v45 = [latestResults4 objectForKeyedSubscript:*v14];
    [valueCellConfiguration setText:v45];

    latestResults5 = [v31 latestResults];
    v47 = [latestResults5 objectForKeyedSubscript:*MEMORY[0x277D14118]];
    [valueCellConfiguration setSecondaryText:v47];

    hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
    secondaryTextProperties = [valueCellConfiguration secondaryTextProperties];
    [secondaryTextProperties setColor:hf_keyColor];

    [v37 setContentConfiguration:valueCellConfiguration];
  }

  objc_opt_class();
  module2 = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v51 = module2;
  }

  else
  {
    v51 = 0;
  }

  v52 = v51;

  recordingOptionsItem = [v52 recordingOptionsItem];

  [cellCopy setAccessoryType:recordingOptionsItem == v31];
}

- (void)viewSizeDidChanged
{
  objc_opt_class();
  module = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v4 = module;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  host = [(HUItemModuleController *)self host];
  cameraPresenceItems = [v5 cameraPresenceItems];

  [host updateCellForItems:cameraPresenceItems];
}

- (BOOL)canSelectItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  v6 = [module isItemHeader:itemCopy];

  return v6 ^ 1;
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

  if ([v7 isShowOptionsItem:itemCopy])
  {
    [v7 setModuleExpanded:objc_msgSend(v7 forItem:{"shouldExpandModuleForShowOptionsItem:", itemCopy) ^ 1, itemCopy}];
  }

  objc_opt_class();
  v8 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    cameraProfiles = [v10 cameraProfiles];
    anyObject = [cameraProfiles anyObject];

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __50__HUCameraSettingsModuleController_didSelectItem___block_invoke;
    aBlock[3] = &unk_277DB9F78;
    v29 = anyObject;
    v13 = anyObject;
    v14 = _Block_copy(aBlock);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __50__HUCameraSettingsModuleController_didSelectItem___block_invoke_2;
    v27[3] = &unk_277DBF9B8;
    v27[4] = self;
    v15 = _Block_copy(v27);
    v16 = [(HUSimpleItemModuleTableViewController *)[HUCameraSmartOptionsTableViewController alloc] initWithTableViewStyle:1 moduleCreator:v14 moduleControllerBuilder:v15];
    latestResults = [v8 latestResults];
    v18 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    [(HUCameraSmartOptionsTableViewController *)v16 setTitle:v18];

    v19 = [HUViewControllerPresentationRequest requestWithViewController:v16];
    [v19 setPreferredPresentationType:1];
    host = [(HUItemModuleController *)self host];
    v21 = [host moduleController:self presentViewControllerForRequest:v19];
  }

  module2 = [(HUItemModuleController *)self module];
  v23 = objc_opt_respondsToSelector();

  if (v23)
  {
    module3 = [(HUItemModuleController *)self module];
    v25 = [module3 didSelectItem:v8];
  }

  return 0;
}

id __50__HUCameraSettingsModuleController_didSelectItem___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [HUCameraRecordingOptionsModule alloc];
  v6 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 32)];
  v7 = [(HUCameraRecordingOptionsModule *)v5 initWithItemUpdater:v4 cameraProfiles:v6];

  v10[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  return v8;
}

HUCameraRecordingOptionsModuleController *__50__HUCameraSettingsModuleController_didSelectItem___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[HUCameraRecordingOptionsModuleController alloc] initWithModule:v3];

  v5 = [*(a1 + 32) host];
  [(HUItemModuleController *)v4 setHost:v5];

  return v4;
}

- (BOOL)canSelectDisabledItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  v4 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v6 == 0;
}

@end