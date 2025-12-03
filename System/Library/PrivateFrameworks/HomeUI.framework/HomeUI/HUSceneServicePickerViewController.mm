@interface HUSceneServicePickerViewController
- (BOOL)_canSelectMediaAccessoryItem:(id)item;
- (BOOL)canSelectItem:(id)item indexPath:(id)path;
- (HUSceneServicePickerViewController)initWithActionSetBuilder:(id)builder servicePickerDelegate:(id)delegate;
- (HUSceneServicePickerViewController)initWithServiceGridItemManager:(id)manager;
- (HUSceneServicePickerViewControllerDelegate)servicePickerDelegate;
- (id)_updateActionSetBuilder;
- (id)layoutOptionsForSection:(int64_t)section;
- (void)_cancel:(id)_cancel;
- (void)_done:(id)_done;
- (void)_presentUnsupportedAlertWithTitle:(id)title message:(id)message;
- (void)_validateDoneButton;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)configureCell:(id)cell forItem:(id)item;
- (void)didChangeSelection;
- (void)itemManagerDidUpdate:(id)update;
@end

@implementation HUSceneServicePickerViewController

- (HUSceneServicePickerViewController)initWithActionSetBuilder:(id)builder servicePickerDelegate:(id)delegate
{
  builderCopy = builder;
  delegateCopy = delegate;
  v9 = [HUServiceGridItemManager alloc];
  v10 = [(HUSelectableServiceGridViewController *)HUSceneServicePickerViewController defaultItemProviderCreatorWithOptions:13];
  v11 = [(HUServiceGridItemManager *)v9 initWithDelegate:self shouldGroupByRoom:1 itemProvidersCreator:v10];

  v22.receiver = self;
  v22.super_class = HUSceneServicePickerViewController;
  v12 = [(HUSelectableServiceGridViewController *)&v22 initWithServiceGridItemManager:v11];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_actionSetBuilder, builder);
    objc_storeWeak(&v13->_servicePickerDelegate, delegateCopy);
    v14 = _HULocalizedStringWithDefaultValue(@"HUSceneServicePickerTitle", @"HUSceneServicePickerTitle", 1);
    [(HUSceneServicePickerViewController *)v13 setTitle:v14];

    v15 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v13 action:sel__cancel_];
    navigationItem = [(HUSceneServicePickerViewController *)v13 navigationItem];
    [navigationItem setLeftBarButtonItem:v15];

    v17 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v13 action:sel__done_];
    navigationItem2 = [(HUSceneServicePickerViewController *)v13 navigationItem];
    [navigationItem2 setRightBarButtonItem:v17];

    systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
    collectionView = [(HUSceneServicePickerViewController *)v13 collectionView];
    [collectionView setBackgroundColor:systemGroupedBackgroundColor];

    [(HUSceneServicePickerViewController *)v13 setModalInPresentation:1];
  }

  return v13;
}

- (HUSceneServicePickerViewController)initWithServiceGridItemManager:(id)manager
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithActionSetBuilder_servicePickerDelegate_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUSceneServicePickerViewController.m" lineNumber:54 description:{@"%s is unavailable; use %@ instead", "-[HUSceneServicePickerViewController initWithServiceGridItemManager:]", v6}];

  return 0;
}

- (void)_cancel:(id)_cancel
{
  servicePickerDelegate = [(HUSceneServicePickerViewController *)self servicePickerDelegate];
  [servicePickerDelegate sceneServicePickerDidFinish:self];
}

- (void)_done:(id)_done
{
  _doneCopy = _done;
  navigationItem = [(HUSceneServicePickerViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];

  v7 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v7];
  navigationItem2 = [(HUSceneServicePickerViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v8];

  [v7 startAnimating];
  _updateActionSetBuilder = [(HUSceneServicePickerViewController *)self _updateActionSetBuilder];
  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __44__HUSceneServicePickerViewController__done___block_invoke;
  v19[3] = &unk_277DB94A8;
  objc_copyWeak(&v20, &location);
  v11 = [_updateActionSetBuilder addSuccessBlock:v19];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __44__HUSceneServicePickerViewController__done___block_invoke_2;
  v17[3] = &unk_277DB94D0;
  objc_copyWeak(&v18, &location);
  v12 = [_updateActionSetBuilder addFailureBlock:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __44__HUSceneServicePickerViewController__done___block_invoke_4;
  v15[3] = &unk_277DB7158;
  v15[4] = self;
  v13 = rightBarButtonItem;
  v16 = v13;
  v14 = [_updateActionSetBuilder addCompletionBlock:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __44__HUSceneServicePickerViewController__done___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained servicePickerDelegate];
  [v1 sceneServicePickerDidFinish:WeakRetained];
}

void __44__HUSceneServicePickerViewController__done___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [MEMORY[0x277D14640] sharedHandler];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__HUSceneServicePickerViewController__done___block_invoke_3;
  v6[3] = &unk_277DB8488;
  v6[4] = WeakRetained;
  [v5 handleError:v3 retryBlock:v6 cancelBlock:0];
}

void __44__HUSceneServicePickerViewController__done___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) navigationItem];
  [v2 setRightBarButtonItem:v1];
}

- (void)didChangeSelection
{
  v3.receiver = self;
  v3.super_class = HUSceneServicePickerViewController;
  [(HUSelectableServiceGridViewController *)&v3 didChangeSelection];
  [(HUSceneServicePickerViewController *)self _validateDoneButton];
}

- (void)itemManagerDidUpdate:(id)update
{
  v28.receiver = self;
  v28.super_class = HUSceneServicePickerViewController;
  [(HUSelectableServiceGridViewController *)&v28 itemManagerDidUpdate:update];
  v4 = MEMORY[0x277CBEB98];
  actionSetBuilder = [(HUSceneServicePickerViewController *)self actionSetBuilder];
  actions = [actionSetBuilder actions];
  v7 = [actions na_map:&__block_literal_global_35];
  v8 = [v4 setWithArray:v7];

  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB98] set];
  }

  actionSetBuilder2 = [(HUSceneServicePickerViewController *)self actionSetBuilder];
  mediaAction = [actionSetBuilder2 mediaAction];

  mediaProfiles = [mediaAction mediaProfiles];
  v12 = [mediaProfiles na_flatMap:&__block_literal_global_38_0];

  if (!v12)
  {
    v12 = [MEMORY[0x277CBEB98] set];
  }

  existingActionSetCharacteristics = [(HUSceneServicePickerViewController *)self existingActionSetCharacteristics];
  if ([existingActionSetCharacteristics isEqualToSet:v8])
  {
    existingActionSetMediaProfiles = [(HUSceneServicePickerViewController *)self existingActionSetMediaProfiles];
    v15 = [existingActionSetMediaProfiles isEqualToSet:v12];

    if (v15)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  [(HUSceneServicePickerViewController *)self setExistingActionSetCharacteristics:v8];
  [(HUSceneServicePickerViewController *)self setExistingActionSetMediaProfiles:v12];
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  allDisplayedItems = [itemManager allDisplayedItems];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __59__HUSceneServicePickerViewController_itemManagerDidUpdate___block_invoke_4;
  v25 = &unk_277DB95B0;
  v26 = v8;
  v27 = v12;
  v18 = [allDisplayedItems na_filter:&v22];

  v19 = objc_alloc(MEMORY[0x277D14868]);
  v20 = [v19 initWithFromSet:{v18, v22, v23, v24, v25}];
  v21 = [v20 copy];
  [(HUSelectableServiceGridViewController *)self setSelectedItems:v21];

LABEL_10:
  [(HUSceneServicePickerViewController *)self _validateDoneButton];
}

id __59__HUSceneServicePickerViewController_itemManagerDidUpdate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 characteristic];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __59__HUSceneServicePickerViewController_itemManagerDidUpdate___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 accessories];
  v3 = [v2 na_map:&__block_literal_global_41];

  return v3;
}

uint64_t __59__HUSceneServicePickerViewController_itemManagerDidUpdate___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_28251AFC0])
  {
    v4 = v3;
    v5 = [v4 services];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __59__HUSceneServicePickerViewController_itemManagerDidUpdate___block_invoke_5;
    v14[3] = &unk_277DB9560;
    v15 = *(a1 + 32);
    v6 = [v5 na_any:v14];

    v7 = [v4 accessories];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__HUSceneServicePickerViewController_itemManagerDidUpdate___block_invoke_7;
    v11[3] = &unk_277DB9588;
    v12 = v4;
    v13 = *(a1 + 40);
    v8 = v4;
    LOBYTE(v4) = [v7 na_any:v11];

    v9 = v6 | v4;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t __59__HUSceneServicePickerViewController_itemManagerDidUpdate___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 characteristics];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__HUSceneServicePickerViewController_itemManagerDidUpdate___block_invoke_6;
  v6[3] = &unk_277DB9538;
  v7 = *(a1 + 32);
  v4 = [v3 na_any:v6];

  return v4;
}

uint64_t __59__HUSceneServicePickerViewController_itemManagerDidUpdate___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hf_isSiriEndpoint])
  {
    v4 = [*(a1 + 32) services];
    v5 = [v4 count] == 0;
  }

  else
  {
    v5 = 0;
  }

  if (([v3 hf_isMediaAccessory] & 1) != 0 || v5)
  {
    v7 = *(a1 + 40);
    v8 = [v3 mediaProfile];
    v6 = [v7 containsObject:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)layoutOptionsForSection:(int64_t)section
{
  v7.receiver = self;
  v7.super_class = HUSceneServicePickerViewController;
  v4 = [(HUServiceGridViewController *)&v7 layoutOptionsForSection:?];
  v5 = [v4 copy];

  if (!section)
  {
    [v5 sectionTitleMargin];
    [v5 setSectionTitleMargin:40.0];
  }

  return v5;
}

- (void)configureCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  v7.receiver = self;
  v7.super_class = HUSceneServicePickerViewController;
  [(HUSelectableServiceGridViewController *)&v7 configureCell:cellCopy forItem:item];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [cellCopy setShouldColorDescription:0];
  }
}

- (BOOL)canSelectItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = itemCopy;
    if ([v7 conformsToProtocol:&unk_28251AFC0])
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    accessories = [v9 accessories];
    v11 = [accessories na_any:&__block_literal_global_104];

    if (v11)
    {
      goto LABEL_7;
    }

    objc_opt_class();
    v12 = v7;
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    sourceItem = [v14 sourceItem];

    objc_opt_class();
    LOBYTE(v14) = objc_opt_isKindOfClass();

    if (v14)
    {
      objc_opt_class();
      v16 = v12;
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;

      objc_opt_class();
      sourceItem2 = [v18 sourceItem];

      if (objc_opt_isKindOfClass())
      {
        v20 = sourceItem2;
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;

      containsActions = [(HUSceneServicePickerViewController *)self _canSelectMediaAccessoryItem:v21];
      goto LABEL_21;
    }

    if (![v12 conformsToProtocol:&unk_28251B560])
    {
LABEL_7:
      containsActions = 0;
    }

    else
    {
      containsActions = [v12 containsActions];
    }

LABEL_21:

    goto LABEL_22;
  }

  containsActions = 1;
LABEL_22:

  return containsActions;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v36 = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = HUSceneServicePickerViewController;
  pathCopy = path;
  [(HUSelectableServiceGridViewController *)&v33 collectionView:view didSelectItemAtIndexPath:pathCopy];
  v7 = [(HUItemCollectionViewController *)self itemManager:v33.receiver];
  v8 = [v7 displayedItemAtIndexPath:pathCopy];

  v9 = v8;
  if ([v9 conformsToProtocol:&unk_28251AFC0])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  accessories = [v11 accessories];
  v13 = [accessories na_any:&__block_literal_global_116];

  if (v13)
  {
    v14 = @"HUDontSetupProgrammableSwitchInSceneServicePickerTitle";
    v15 = @"HUDontSetupProgrammableSwitchInSceneServicePickerMessage";
LABEL_29:
    [(HUSceneServicePickerViewController *)self _presentUnsupportedAlertWithTitle:v14 message:v15];
    goto LABEL_30;
  }

  if (![v9 conformsToProtocol:&unk_28251B560] || (objc_msgSend(v9, "containsActions") & 1) == 0)
  {
    v14 = @"HUSceneServicePickerUnsupportedAccessoryTitle";
    v15 = @"HUSceneServicePickerUnsupportedAccessoryMessage";
    goto LABEL_29;
  }

  objc_opt_class();
  v16 = v9;
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  sourceItem = [v18 sourceItem];

  objc_opt_class();
  LOBYTE(v18) = objc_opt_isKindOfClass();

  if (v18)
  {
    objc_opt_class();
    v20 = v16;
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
    sourceItem2 = [v22 sourceItem];

    if (objc_opt_isKindOfClass())
    {
      v24 = sourceItem2;
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;

    if (![v25 allowsAppleMusicAccount] || (objc_msgSend(v25, "supportsMediaAction") & 1) != 0)
    {
      itemManager = [(HUItemCollectionViewController *)self itemManager];
      home = [itemManager home];

      if ([home hf_hasEnabledResident] && (objc_msgSend(home, "hf_enabledResidentsSupportsMediaActions") & 1) == 0)
      {
        if ([v25 mediaAccessoryItemType] == 7)
        {
          v28 = @"HUSceneServicePickerUnsupportedResidentWithAirPortExpressMessage";
        }

        else
        {
          v28 = @"HUSceneServicePickerUnsupportedResidentMessage";
        }

        [(HUSceneServicePickerViewController *)self _presentUnsupportedAlertWithTitle:@"HUAlertSoftwareUpdateRequired" message:v28];
      }

      goto LABEL_27;
    }

    mediaAccessoryItemType = [v25 mediaAccessoryItemType];
    v30 = mediaAccessoryItemType;
    if (mediaAccessoryItemType > 3)
    {
      if ((mediaAccessoryItemType - 5) >= 5)
      {
        if (mediaAccessoryItemType == 4)
        {
          v31 = @"HUSceneServicePickerUnsupportedHomePodStereoPairMessage";
          goto LABEL_43;
        }

        goto LABEL_27;
      }
    }

    else
    {
      if ((mediaAccessoryItemType - 2) < 2)
      {
        v31 = @"HUSceneServicePickerUnsupportedHomePodMessage";
        goto LABEL_43;
      }

      if (mediaAccessoryItemType)
      {
        if (mediaAccessoryItemType == 1)
        {
          v31 = @"HUSceneServicePickerUnsupportedAppleTVMessage";
LABEL_43:
          [(HUSceneServicePickerViewController *)self _presentUnsupportedAlertWithTitle:@"HUAlertSoftwareUpdateRequired" message:v31];
        }

LABEL_27:

        goto LABEL_30;
      }
    }

    v32 = HFLogForCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v35 = v30;
      _os_log_error_impl(&dword_20CEB6000, v32, OS_LOG_TYPE_ERROR, "Error: got media accessory item type %ld", buf, 0xCu);
    }

    goto LABEL_27;
  }

LABEL_30:
}

- (void)_presentUnsupportedAlertWithTitle:(id)title message:(id)message
{
  v6 = MEMORY[0x277D75110];
  messageCopy = message;
  v8 = _HULocalizedStringWithDefaultValue(title, title, 1);
  v9 = _HULocalizedStringWithDefaultValue(messageCopy, messageCopy, 1);

  v13 = [v6 alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  v10 = MEMORY[0x277D750F8];
  v11 = _HULocalizedStringWithDefaultValue(@"HUOkTitle", @"HUOkTitle", 1);
  v12 = [v10 actionWithTitle:v11 style:0 handler:0];
  [v13 addAction:v12];

  [(HUControllableItemCollectionViewController *)self presentViewController:v13 animated:1 completion:0];
}

- (BOOL)_canSelectMediaAccessoryItem:(id)item
{
  itemCopy = item;
  if ([itemCopy allowsAppleMusicAccount])
  {
    supportsMediaAction = [itemCopy supportsMediaAction];
  }

  else
  {
    supportsMediaAction = 1;
  }

  itemManager = [(HUItemCollectionViewController *)self itemManager];
  home = [itemManager home];

  if ([home hf_hasEnabledResident])
  {
    hf_enabledResidentsSupportsMediaActions = [home hf_enabledResidentsSupportsMediaActions];
  }

  else
  {
    hf_enabledResidentsSupportsMediaActions = 1;
  }

  return supportsMediaAction & hf_enabledResidentsSupportsMediaActions;
}

- (id)_updateActionSetBuilder
{
  v137 = *MEMORY[0x277D85DE8];
  v70 = objc_alloc_init(MEMORY[0x277D2C900]);
  val = self;
  selectedItems = [(HUSelectableServiceGridViewController *)self selectedItems];
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  home = [itemManager home];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  actionSetBuilder = [(HUSceneServicePickerViewController *)val actionSetBuilder];
  actions = [actionSetBuilder actions];

  v6 = [actions countByEnumeratingWithState:&v125 objects:v136 count:16];
  if (v6)
  {
    v7 = *v126;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v126 != v7)
        {
          objc_enumerationMutation(actions);
        }

        v9 = *(*(&v125 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          characteristic = [v9 characteristic];
          uniqueIdentifier = [characteristic uniqueIdentifier];

          if (uniqueIdentifier)
          {
            [dictionary setObject:v9 forKeyedSubscript:uniqueIdentifier];
          }
        }
      }

      v6 = [actions countByEnumeratingWithState:&v125 objects:v136 count:16];
    }

    while (v6);
  }

  actionSetBuilder2 = [(HUSceneServicePickerViewController *)val actionSetBuilder];
  actions2 = [actionSetBuilder2 actions];
  v85 = [actions2 na_filter:&__block_literal_global_156];

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  obj = [selectedItems deletions];
  v74 = [obj countByEnumeratingWithState:&v121 objects:v135 count:16];
  if (v74)
  {
    v71 = *v122;
    do
    {
      for (j = 0; j != v74; ++j)
      {
        if (*v122 != v71)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v121 + 1) + 8 * j);
        if (([v14 conformsToProtocol:&unk_28251AFC0] & 1) == 0)
        {
          NSLog(&cfstr_UnexpectedItem_0.isa, v14);
        }

        if ([v14 conformsToProtocol:&unk_28251AFC0])
        {
          services = [v14 services];
          v119 = 0u;
          v120 = 0u;
          v117 = 0u;
          v118 = 0u;
          v78 = [services countByEnumeratingWithState:&v117 objects:v134 count:16];
          if (v78)
          {
            v77 = *v118;
            do
            {
              v15 = 0;
              do
              {
                if (*v118 != v77)
                {
                  v16 = v15;
                  objc_enumerationMutation(services);
                  v15 = v16;
                }

                v80 = v15;
                v17 = *(*(&v117 + 1) + 8 * v15);
                v113 = 0u;
                v114 = 0u;
                v115 = 0u;
                v116 = 0u;
                characteristics = [v17 characteristics];
                v19 = [characteristics countByEnumeratingWithState:&v113 objects:v133 count:16];
                if (v19)
                {
                  v20 = *v114;
                  do
                  {
                    for (k = 0; k != v19; ++k)
                    {
                      if (*v114 != v20)
                      {
                        objc_enumerationMutation(characteristics);
                      }

                      v22 = *(*(&v113 + 1) + 8 * k);
                      uniqueIdentifier2 = [v22 uniqueIdentifier];
                      v24 = uniqueIdentifier2 == 0;

                      if (!v24)
                      {
                        uniqueIdentifier3 = [v22 uniqueIdentifier];
                        v26 = [dictionary objectForKeyedSubscript:uniqueIdentifier3];

                        if (v26)
                        {
                          actionSetBuilder3 = [(HUSceneServicePickerViewController *)val actionSetBuilder];
                          [actionSetBuilder3 removeAction:v26];
                        }
                      }
                    }

                    v19 = [characteristics countByEnumeratingWithState:&v113 objects:v133 count:16];
                  }

                  while (v19);
                }

                v111 = 0u;
                v112 = 0u;
                v109 = 0u;
                v110 = 0u;
                hf_lightProfiles = [v17 hf_lightProfiles];
                v28 = [hf_lightProfiles countByEnumeratingWithState:&v109 objects:v132 count:16];
                if (v28)
                {
                  v86 = *v110;
                  do
                  {
                    for (m = 0; m != v28; ++m)
                    {
                      if (*v110 != v86)
                      {
                        objc_enumerationMutation(hf_lightProfiles);
                      }

                      v30 = *(*(&v109 + 1) + 8 * m);
                      v105 = 0u;
                      v106 = 0u;
                      v107 = 0u;
                      v108 = 0u;
                      v31 = v85;
                      v32 = [v31 countByEnumeratingWithState:&v105 objects:v131 count:16];
                      if (v32)
                      {
                        v33 = *v106;
                        while (2)
                        {
                          for (n = 0; n != v32; ++n)
                          {
                            if (*v106 != v33)
                            {
                              objc_enumerationMutation(v31);
                            }

                            v35 = *(*(&v105 + 1) + 8 * n);
                            lightProfile = [v35 lightProfile];
                            v37 = [lightProfile isEqual:v30];

                            if (v37)
                            {
                              actionSetBuilder4 = [(HUSceneServicePickerViewController *)val actionSetBuilder];
                              [actionSetBuilder4 removeAction:v35];

                              goto LABEL_51;
                            }
                          }

                          v32 = [v31 countByEnumeratingWithState:&v105 objects:v131 count:16];
                          if (v32)
                          {
                            continue;
                          }

                          break;
                        }
                      }

LABEL_51:
                    }

                    v28 = [hf_lightProfiles countByEnumeratingWithState:&v109 objects:v132 count:16];
                  }

                  while (v28);
                }

                v15 = v80 + 1;
              }

              while (v80 + 1 != v78);
              v78 = [services countByEnumeratingWithState:&v117 objects:v134 count:16];
            }

            while (v78);
          }
        }
      }

      v74 = [obj countByEnumeratingWithState:&v121 objects:v135 count:16];
    }

    while (v74);
  }

  actionSetBuilder5 = [(HUSceneServicePickerViewController *)val actionSetBuilder];
  mediaAction = [actionSetBuilder5 mediaAction];

  mediaProfiles = [mediaAction mediaProfiles];
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  deletions = [selectedItems deletions];
  v40 = [deletions countByEnumeratingWithState:&v101 objects:v130 count:16];
  if (v40)
  {
    v41 = *v102;
    do
    {
      for (ii = 0; ii != v40; ++ii)
      {
        if (*v102 != v41)
        {
          objc_enumerationMutation(deletions);
        }

        v43 = *(*(&v101 + 1) + 8 * ii);
        if (([v43 conformsToProtocol:&unk_28251AFC0] & 1) == 0)
        {
          NSLog(&cfstr_UnexpectedItem_0.isa, v43);
        }

        v44 = v43;
        accessories = [v44 accessories];
        anyObject = [accessories anyObject];
        if ([anyObject hf_isSiriEndpoint])
        {
          services2 = [v44 services];
          v48 = [services2 count] != 0;
        }

        else
        {
          v48 = 0;
        }

        if (!(v48 | (([v44 conformsToProtocol:&unk_28251AFC0] & 1) == 0)))
        {
          v99[0] = MEMORY[0x277D85DD0];
          v99[1] = 3221225472;
          v99[2] = __61__HUSceneServicePickerViewController__updateActionSetBuilder__block_invoke_2;
          v99[3] = &unk_277DB95F8;
          v100 = accessories;
          v49 = [mediaProfiles na_filter:v99];

          mediaProfiles = v49;
        }
      }

      v40 = [deletions countByEnumeratingWithState:&v101 objects:v130 count:16];
    }

    while (v40);
  }

  if (mediaAction)
  {
    if ([mediaProfiles count])
    {
      [mediaAction setMediaProfiles:mediaProfiles];
      actionSetBuilder6 = [(HUSceneServicePickerViewController *)val actionSetBuilder];
      [actionSetBuilder6 updateAction:mediaAction];
    }

    else
    {
      actionSetBuilder6 = [(HUSceneServicePickerViewController *)val actionSetBuilder];
      [actionSetBuilder6 removeAction:mediaAction];
    }
  }

  array = [MEMORY[0x277CBEB18] array];
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  additions = [selectedItems additions];
  updates = [selectedItems updates];
  v54 = [additions setByAddingObjectsFromSet:updates];

  v55 = [v54 countByEnumeratingWithState:&v95 objects:v129 count:16];
  if (v55)
  {
    v56 = *v96;
    do
    {
      for (jj = 0; jj != v55; ++jj)
      {
        if (*v96 != v56)
        {
          objc_enumerationMutation(v54);
        }

        v58 = *(*(&v95 + 1) + 8 * jj);
        if (([v58 conformsToProtocol:&unk_28251B560] & 1) == 0)
        {
          NSLog(&cfstr_UnexpectedItem_1.isa, v58);
        }

        if ([v58 conformsToProtocol:&unk_28251B560])
        {
          v59 = [v58 currentStateActionBuildersForHome:home];
          if (v59)
          {
            [array addObject:v59];
          }
        }
      }

      v55 = [v54 countByEnumeratingWithState:&v95 objects:v129 count:16];
    }

    while (v55);
  }

  v60 = MEMORY[0x277D2C900];
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v62 = [v60 combineAllFutures:array ignoringErrors:0 scheduler:mainThreadScheduler];

  objc_initWeak(&location, val);
  v91[0] = MEMORY[0x277D85DD0];
  v91[1] = 3221225472;
  v91[2] = __61__HUSceneServicePickerViewController__updateActionSetBuilder__block_invoke_3;
  v91[3] = &unk_277DB9620;
  objc_copyWeak(&v93, &location);
  v63 = v70;
  v92 = v63;
  v64 = [v62 addSuccessBlock:v91];
  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = __61__HUSceneServicePickerViewController__updateActionSetBuilder__block_invoke_4;
  v89[3] = &unk_277DB8C00;
  v65 = v63;
  v90 = v65;
  v66 = [v62 addFailureBlock:v89];
  v67 = v90;
  v68 = v65;

  objc_destroyWeak(&v93);
  objc_destroyWeak(&location);

  return v68;
}

uint64_t __61__HUSceneServicePickerViewController__updateActionSetBuilder__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __61__HUSceneServicePickerViewController__updateActionSetBuilder__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 accessories];
  LODWORD(a1) = [v3 intersectsSet:*(a1 + 32)];

  return a1 ^ 1;
}

void __61__HUSceneServicePickerViewController__updateActionSetBuilder__block_invoke_3(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v19 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      v8 = 0;
      do
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * v8);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v22;
          do
          {
            v14 = 0;
            do
            {
              if (*v22 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v21 + 1) + 8 * v14);
              v16 = [WeakRetained actionSetBuilder];
              [v16 addAction:v15];

              ++v14;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v12);
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v6);
  }

  v17 = *(v19 + 32);
  v18 = [WeakRetained actionSetBuilder];
  [v17 finishWithResult:v18];
}

- (void)_validateDoneButton
{
  selectedItems = [(HUSelectableServiceGridViewController *)self selectedItems];
  toSet = [selectedItems toSet];
  v4 = [toSet count] != 0;
  navigationItem = [(HUSceneServicePickerViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v4];
}

- (HUSceneServicePickerViewControllerDelegate)servicePickerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_servicePickerDelegate);

  return WeakRetained;
}

@end