@interface HUSceneServicePickerViewController
- (BOOL)_canSelectMediaAccessoryItem:(id)a3;
- (BOOL)canSelectItem:(id)a3 indexPath:(id)a4;
- (HUSceneServicePickerViewController)initWithActionSetBuilder:(id)a3 servicePickerDelegate:(id)a4;
- (HUSceneServicePickerViewController)initWithServiceGridItemManager:(id)a3;
- (HUSceneServicePickerViewControllerDelegate)servicePickerDelegate;
- (id)_updateActionSetBuilder;
- (id)layoutOptionsForSection:(int64_t)a3;
- (void)_cancel:(id)a3;
- (void)_done:(id)a3;
- (void)_presentUnsupportedAlertWithTitle:(id)a3 message:(id)a4;
- (void)_validateDoneButton;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)configureCell:(id)a3 forItem:(id)a4;
- (void)didChangeSelection;
- (void)itemManagerDidUpdate:(id)a3;
@end

@implementation HUSceneServicePickerViewController

- (HUSceneServicePickerViewController)initWithActionSetBuilder:(id)a3 servicePickerDelegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [HUServiceGridItemManager alloc];
  v10 = [(HUSelectableServiceGridViewController *)HUSceneServicePickerViewController defaultItemProviderCreatorWithOptions:13];
  v11 = [(HUServiceGridItemManager *)v9 initWithDelegate:self shouldGroupByRoom:1 itemProvidersCreator:v10];

  v22.receiver = self;
  v22.super_class = HUSceneServicePickerViewController;
  v12 = [(HUSelectableServiceGridViewController *)&v22 initWithServiceGridItemManager:v11];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_actionSetBuilder, a3);
    objc_storeWeak(&v13->_servicePickerDelegate, v8);
    v14 = _HULocalizedStringWithDefaultValue(@"HUSceneServicePickerTitle", @"HUSceneServicePickerTitle", 1);
    [(HUSceneServicePickerViewController *)v13 setTitle:v14];

    v15 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v13 action:sel__cancel_];
    v16 = [(HUSceneServicePickerViewController *)v13 navigationItem];
    [v16 setLeftBarButtonItem:v15];

    v17 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v13 action:sel__done_];
    v18 = [(HUSceneServicePickerViewController *)v13 navigationItem];
    [v18 setRightBarButtonItem:v17];

    v19 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
    v20 = [(HUSceneServicePickerViewController *)v13 collectionView];
    [v20 setBackgroundColor:v19];

    [(HUSceneServicePickerViewController *)v13 setModalInPresentation:1];
  }

  return v13;
}

- (HUSceneServicePickerViewController)initWithServiceGridItemManager:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithActionSetBuilder_servicePickerDelegate_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUSceneServicePickerViewController.m" lineNumber:54 description:{@"%s is unavailable; use %@ instead", "-[HUSceneServicePickerViewController initWithServiceGridItemManager:]", v6}];

  return 0;
}

- (void)_cancel:(id)a3
{
  v4 = [(HUSceneServicePickerViewController *)self servicePickerDelegate];
  [v4 sceneServicePickerDidFinish:self];
}

- (void)_done:(id)a3
{
  v4 = a3;
  v5 = [(HUSceneServicePickerViewController *)self navigationItem];
  v6 = [v5 rightBarButtonItem];

  v7 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v7];
  v9 = [(HUSceneServicePickerViewController *)self navigationItem];
  [v9 setRightBarButtonItem:v8];

  [v7 startAnimating];
  v10 = [(HUSceneServicePickerViewController *)self _updateActionSetBuilder];
  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __44__HUSceneServicePickerViewController__done___block_invoke;
  v19[3] = &unk_277DB94A8;
  objc_copyWeak(&v20, &location);
  v11 = [v10 addSuccessBlock:v19];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __44__HUSceneServicePickerViewController__done___block_invoke_2;
  v17[3] = &unk_277DB94D0;
  objc_copyWeak(&v18, &location);
  v12 = [v10 addFailureBlock:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __44__HUSceneServicePickerViewController__done___block_invoke_4;
  v15[3] = &unk_277DB7158;
  v15[4] = self;
  v13 = v6;
  v16 = v13;
  v14 = [v10 addCompletionBlock:v15];

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

- (void)itemManagerDidUpdate:(id)a3
{
  v28.receiver = self;
  v28.super_class = HUSceneServicePickerViewController;
  [(HUSelectableServiceGridViewController *)&v28 itemManagerDidUpdate:a3];
  v4 = MEMORY[0x277CBEB98];
  v5 = [(HUSceneServicePickerViewController *)self actionSetBuilder];
  v6 = [v5 actions];
  v7 = [v6 na_map:&__block_literal_global_35];
  v8 = [v4 setWithArray:v7];

  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB98] set];
  }

  v9 = [(HUSceneServicePickerViewController *)self actionSetBuilder];
  v10 = [v9 mediaAction];

  v11 = [v10 mediaProfiles];
  v12 = [v11 na_flatMap:&__block_literal_global_38_0];

  if (!v12)
  {
    v12 = [MEMORY[0x277CBEB98] set];
  }

  v13 = [(HUSceneServicePickerViewController *)self existingActionSetCharacteristics];
  if ([v13 isEqualToSet:v8])
  {
    v14 = [(HUSceneServicePickerViewController *)self existingActionSetMediaProfiles];
    v15 = [v14 isEqualToSet:v12];

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
  v16 = [(HUItemCollectionViewController *)self itemManager];
  v17 = [v16 allDisplayedItems];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __59__HUSceneServicePickerViewController_itemManagerDidUpdate___block_invoke_4;
  v25 = &unk_277DB95B0;
  v26 = v8;
  v27 = v12;
  v18 = [v17 na_filter:&v22];

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

- (id)layoutOptionsForSection:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = HUSceneServicePickerViewController;
  v4 = [(HUServiceGridViewController *)&v7 layoutOptionsForSection:?];
  v5 = [v4 copy];

  if (!a3)
  {
    [v5 sectionTitleMargin];
    [v5 setSectionTitleMargin:40.0];
  }

  return v5;
}

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7.receiver = self;
  v7.super_class = HUSceneServicePickerViewController;
  [(HUSelectableServiceGridViewController *)&v7 configureCell:v6 forItem:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 setShouldColorDescription:0];
  }
}

- (BOOL)canSelectItem:(id)a3 indexPath:(id)a4
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = v5;
    if ([v7 conformsToProtocol:&unk_28251AFC0])
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v10 = [v9 accessories];
    v11 = [v10 na_any:&__block_literal_global_104];

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

    v15 = [v14 sourceItem];

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
      v19 = [v18 sourceItem];

      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;

      v6 = [(HUSceneServicePickerViewController *)self _canSelectMediaAccessoryItem:v21];
      goto LABEL_21;
    }

    if (![v12 conformsToProtocol:&unk_28251B560])
    {
LABEL_7:
      v6 = 0;
    }

    else
    {
      v6 = [v12 containsActions];
    }

LABEL_21:

    goto LABEL_22;
  }

  v6 = 1;
LABEL_22:

  return v6;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = HUSceneServicePickerViewController;
  v6 = a4;
  [(HUSelectableServiceGridViewController *)&v33 collectionView:a3 didSelectItemAtIndexPath:v6];
  v7 = [(HUItemCollectionViewController *)self itemManager:v33.receiver];
  v8 = [v7 displayedItemAtIndexPath:v6];

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

  v12 = [v11 accessories];
  v13 = [v12 na_any:&__block_literal_global_116];

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

  v19 = [v18 sourceItem];

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
    v23 = [v22 sourceItem];

    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;

    if (![v25 allowsAppleMusicAccount] || (objc_msgSend(v25, "supportsMediaAction") & 1) != 0)
    {
      v26 = [(HUItemCollectionViewController *)self itemManager];
      v27 = [v26 home];

      if ([v27 hf_hasEnabledResident] && (objc_msgSend(v27, "hf_enabledResidentsSupportsMediaActions") & 1) == 0)
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

    v29 = [v25 mediaAccessoryItemType];
    v30 = v29;
    if (v29 > 3)
    {
      if ((v29 - 5) >= 5)
      {
        if (v29 == 4)
        {
          v31 = @"HUSceneServicePickerUnsupportedHomePodStereoPairMessage";
          goto LABEL_43;
        }

        goto LABEL_27;
      }
    }

    else
    {
      if ((v29 - 2) < 2)
      {
        v31 = @"HUSceneServicePickerUnsupportedHomePodMessage";
        goto LABEL_43;
      }

      if (v29)
      {
        if (v29 == 1)
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

- (void)_presentUnsupportedAlertWithTitle:(id)a3 message:(id)a4
{
  v6 = MEMORY[0x277D75110];
  v7 = a4;
  v8 = _HULocalizedStringWithDefaultValue(a3, a3, 1);
  v9 = _HULocalizedStringWithDefaultValue(v7, v7, 1);

  v13 = [v6 alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  v10 = MEMORY[0x277D750F8];
  v11 = _HULocalizedStringWithDefaultValue(@"HUOkTitle", @"HUOkTitle", 1);
  v12 = [v10 actionWithTitle:v11 style:0 handler:0];
  [v13 addAction:v12];

  [(HUControllableItemCollectionViewController *)self presentViewController:v13 animated:1 completion:0];
}

- (BOOL)_canSelectMediaAccessoryItem:(id)a3
{
  v4 = a3;
  if ([v4 allowsAppleMusicAccount])
  {
    v5 = [v4 supportsMediaAction];
  }

  else
  {
    v5 = 1;
  }

  v6 = [(HUItemCollectionViewController *)self itemManager];
  v7 = [v6 home];

  if ([v7 hf_hasEnabledResident])
  {
    v8 = [v7 hf_enabledResidentsSupportsMediaActions];
  }

  else
  {
    v8 = 1;
  }

  return v5 & v8;
}

- (id)_updateActionSetBuilder
{
  v137 = *MEMORY[0x277D85DE8];
  v70 = objc_alloc_init(MEMORY[0x277D2C900]);
  val = self;
  v73 = [(HUSelectableServiceGridViewController *)self selectedItems];
  v3 = [(HUItemCollectionViewController *)self itemManager];
  v81 = [v3 home];

  v84 = [MEMORY[0x277CBEB38] dictionary];
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v4 = [(HUSceneServicePickerViewController *)val actionSetBuilder];
  v5 = [v4 actions];

  v6 = [v5 countByEnumeratingWithState:&v125 objects:v136 count:16];
  if (v6)
  {
    v7 = *v126;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v126 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v125 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 characteristic];
          v11 = [v10 uniqueIdentifier];

          if (v11)
          {
            [v84 setObject:v9 forKeyedSubscript:v11];
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v125 objects:v136 count:16];
    }

    while (v6);
  }

  v12 = [(HUSceneServicePickerViewController *)val actionSetBuilder];
  v13 = [v12 actions];
  v85 = [v13 na_filter:&__block_literal_global_156];

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  obj = [v73 deletions];
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
          v76 = [v14 services];
          v119 = 0u;
          v120 = 0u;
          v117 = 0u;
          v118 = 0u;
          v78 = [v76 countByEnumeratingWithState:&v117 objects:v134 count:16];
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
                  objc_enumerationMutation(v76);
                  v15 = v16;
                }

                v80 = v15;
                v17 = *(*(&v117 + 1) + 8 * v15);
                v113 = 0u;
                v114 = 0u;
                v115 = 0u;
                v116 = 0u;
                v18 = [v17 characteristics];
                v19 = [v18 countByEnumeratingWithState:&v113 objects:v133 count:16];
                if (v19)
                {
                  v20 = *v114;
                  do
                  {
                    for (k = 0; k != v19; ++k)
                    {
                      if (*v114 != v20)
                      {
                        objc_enumerationMutation(v18);
                      }

                      v22 = *(*(&v113 + 1) + 8 * k);
                      v23 = [v22 uniqueIdentifier];
                      v24 = v23 == 0;

                      if (!v24)
                      {
                        v25 = [v22 uniqueIdentifier];
                        v26 = [v84 objectForKeyedSubscript:v25];

                        if (v26)
                        {
                          v27 = [(HUSceneServicePickerViewController *)val actionSetBuilder];
                          [v27 removeAction:v26];
                        }
                      }
                    }

                    v19 = [v18 countByEnumeratingWithState:&v113 objects:v133 count:16];
                  }

                  while (v19);
                }

                v111 = 0u;
                v112 = 0u;
                v109 = 0u;
                v110 = 0u;
                v82 = [v17 hf_lightProfiles];
                v28 = [v82 countByEnumeratingWithState:&v109 objects:v132 count:16];
                if (v28)
                {
                  v86 = *v110;
                  do
                  {
                    for (m = 0; m != v28; ++m)
                    {
                      if (*v110 != v86)
                      {
                        objc_enumerationMutation(v82);
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
                            v36 = [v35 lightProfile];
                            v37 = [v36 isEqual:v30];

                            if (v37)
                            {
                              v38 = [(HUSceneServicePickerViewController *)val actionSetBuilder];
                              [v38 removeAction:v35];

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

                    v28 = [v82 countByEnumeratingWithState:&v109 objects:v132 count:16];
                  }

                  while (v28);
                }

                v15 = v80 + 1;
              }

              while (v80 + 1 != v78);
              v78 = [v76 countByEnumeratingWithState:&v117 objects:v134 count:16];
            }

            while (v78);
          }
        }
      }

      v74 = [obj countByEnumeratingWithState:&v121 objects:v135 count:16];
    }

    while (v74);
  }

  v39 = [(HUSceneServicePickerViewController *)val actionSetBuilder];
  v79 = [v39 mediaAction];

  v87 = [v79 mediaProfiles];
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v83 = [v73 deletions];
  v40 = [v83 countByEnumeratingWithState:&v101 objects:v130 count:16];
  if (v40)
  {
    v41 = *v102;
    do
    {
      for (ii = 0; ii != v40; ++ii)
      {
        if (*v102 != v41)
        {
          objc_enumerationMutation(v83);
        }

        v43 = *(*(&v101 + 1) + 8 * ii);
        if (([v43 conformsToProtocol:&unk_28251AFC0] & 1) == 0)
        {
          NSLog(&cfstr_UnexpectedItem_0.isa, v43);
        }

        v44 = v43;
        v45 = [v44 accessories];
        v46 = [v45 anyObject];
        if ([v46 hf_isSiriEndpoint])
        {
          v47 = [v44 services];
          v48 = [v47 count] != 0;
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
          v100 = v45;
          v49 = [v87 na_filter:v99];

          v87 = v49;
        }
      }

      v40 = [v83 countByEnumeratingWithState:&v101 objects:v130 count:16];
    }

    while (v40);
  }

  if (v79)
  {
    if ([v87 count])
    {
      [v79 setMediaProfiles:v87];
      v50 = [(HUSceneServicePickerViewController *)val actionSetBuilder];
      [v50 updateAction:v79];
    }

    else
    {
      v50 = [(HUSceneServicePickerViewController *)val actionSetBuilder];
      [v50 removeAction:v79];
    }
  }

  v51 = [MEMORY[0x277CBEB18] array];
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v52 = [v73 additions];
  v53 = [v73 updates];
  v54 = [v52 setByAddingObjectsFromSet:v53];

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
          v59 = [v58 currentStateActionBuildersForHome:v81];
          if (v59)
          {
            [v51 addObject:v59];
          }
        }
      }

      v55 = [v54 countByEnumeratingWithState:&v95 objects:v129 count:16];
    }

    while (v55);
  }

  v60 = MEMORY[0x277D2C900];
  v61 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v62 = [v60 combineAllFutures:v51 ignoringErrors:0 scheduler:v61];

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
  v7 = [(HUSelectableServiceGridViewController *)self selectedItems];
  v3 = [v7 toSet];
  v4 = [v3 count] != 0;
  v5 = [(HUSceneServicePickerViewController *)self navigationItem];
  v6 = [v5 rightBarButtonItem];
  [v6 setEnabled:v4];
}

- (HUSceneServicePickerViewControllerDelegate)servicePickerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_servicePickerDelegate);

  return WeakRetained;
}

@end