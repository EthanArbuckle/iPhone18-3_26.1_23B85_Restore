@interface HUSideBarViewController
- (HUSideBarDelegate)sideBarDelegate;
- (HUSideBarViewController)initWithDelegate:(id)a3 forHome:(id)a4;
- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (id)collectionView:(id)a3 targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)a4 atCurrentIndexPath:(id)a5 toProposedIndexPath:(id)a6;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (void)_selectItemAtIndexPath:(id)a3;
- (void)_sendSideBarInteractionEventForItem:(id)a3;
- (void)_updateAppearance;
- (void)_updateBlurView;
- (void)_updateNavigationBar;
- (void)_updateShouldUseDashboardEffects;
- (void)_updateSplitViewSeparator;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 moveItemAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4;
- (void)configureCell:(id)a3 forItem:(id)a4;
- (void)didReorderItemWithSortedItemsBySectionID:(id)a3;
- (void)diffableDataItemManager:(id)a3 didUpdateItems:(id)a4 addItems:(id)a5 removeItems:(id)a6;
- (void)home:(id)a3 didAddAccessory:(id)a4;
- (void)home:(id)a3 didRemoveAccessory:(id)a4;
- (void)homeDidUpdateAccessControlForCurrentUser:(id)a3;
- (void)homeDidUpdateApplicationData:(id)a3;
- (void)homeDidUpdateHomeLocationStatus:(id)a3;
- (void)homeDidUpdateToROAR:(id)a3;
- (void)refreshSideBarSelection;
- (void)restrictedGuestAllowedPeriodEnded:(id)a3;
- (void)restrictedGuestAllowedPeriodStarted:(id)a3;
- (void)setHideRoomSection:(BOOL)a3;
- (void)setShouldUseDashboardEffects:(BOOL)a3;
- (void)switchToDiscover;
- (void)switchToSelectedHome:(id)a3;
- (void)updateSelectionToItem:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HUSideBarViewController

- (HUSideBarViewController)initWithDelegate:(id)a3 forHome:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [[HUSideBarItemManager alloc] initWithDelegate:self];
  v10 = objc_opt_new();
  v18.receiver = self;
  v18.super_class = HUSideBarViewController;
  v11 = [(HUItemCollectionViewController *)&v18 initWithItemManager:v9 collectionViewLayout:v10];

  if (v11)
  {
    objc_storeWeak(&v11->_sideBarDelegate, v7);
    v12 = [(HUItemCollectionViewController *)v11 itemManager];
    v13 = [v12 reloadAndUpdateAllItemsFromSenderSelector:a2];

    objc_storeStrong(&v11->_home, a4);
    v14 = [v8 accessories];
    v11->_hideRoomSection = [v14 count] == 0;

    v15 = [MEMORY[0x277D146E8] sharedDispatcher];
    [v15 addHomeObserver:v11];

    v16 = HFLocalizedString();
    [(HUSideBarViewController *)v11 setTitle:v16];
  }

  return v11;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HUSideBarViewController;
  [(HUItemCollectionViewController *)&v4 viewWillAppear:a3];
  [(HUSideBarViewController *)self _updateSplitViewSeparator];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = HUSideBarViewController;
  [(HUItemCollectionViewController *)&v6 viewDidAppear:a3];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "refresh sidebar selection after view did appear", v5, 2u);
  }

  [(HUSideBarViewController *)self refreshSideBarSelection];
}

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = HUSideBarViewController;
  [(HUItemCollectionViewController *)&v29 viewDidLoad];
  v3 = [MEMORY[0x277D75348] clearColor];
  v4 = [(HUSideBarViewController *)self collectionView];
  [v4 setBackgroundColor:v3];

  v5 = [(HUSideBarViewController *)self collectionView];
  [v5 setAlwaysBounceVertical:1];

  v6 = [(HUSideBarViewController *)self collectionView];
  [v6 setDelegate:self];

  v7 = [(HUSideBarViewController *)self collectionView];
  [v7 setDropDelegate:self];

  v8 = [(HUSideBarViewController *)self collectionView];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [v8 registerClass:v9 forCellWithReuseIdentifier:v11];

  v12 = [(HUSideBarViewController *)self collectionView];
  v13 = objc_opt_class();
  v14 = *MEMORY[0x277D77388];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  [v12 registerClass:v13 forSupplementaryViewOfKind:v14 withReuseIdentifier:v16];

  v17 = [(HUSideBarViewController *)self collectionView];
  [v17 setSelectionFollowsFocus:1];

  v18 = objc_alloc(MEMORY[0x277D752B8]);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __38__HUSideBarViewController_viewDidLoad__block_invoke;
  v28[3] = &unk_277DB8278;
  v28[4] = self;
  v19 = [v18 initWithSectionProvider:v28];
  v20 = [(HUSideBarViewController *)self collectionView];
  [v20 setCollectionViewLayout:v19];

  v21 = objc_opt_new();
  blurView = self->_blurView;
  self->_blurView = v21;

  [(UIView *)self->_blurView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HUSideBarViewController *)self _updateBlurView];
  v23 = [(HUSideBarViewController *)self view];
  [v23 addSubview:self->_blurView];

  v24 = [(HUSideBarViewController *)self view];
  [v24 sendSubviewToBack:self->_blurView];

  v25 = MEMORY[0x277CCAAD0];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __38__HUSideBarViewController_viewDidLoad__block_invoke_2;
  v27[3] = &unk_277DB82A0;
  v27[4] = self;
  v26 = __38__HUSideBarViewController_viewDidLoad__block_invoke_2(v27);
  [v25 activateConstraints:v26];
}

id __38__HUSideBarViewController_viewDidLoad__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277D75E68]) initWithAppearanceStyle:3 layoutEnvironment:v5];
  v7 = [*(a1 + 32) itemManager];
  v8 = [v7 titleForSection:a2];

  if ([v8 length])
  {
    [v6 setSectionHeaderHeight:*MEMORY[0x277D77390]];
  }

  v9 = [objc_alloc(MEMORY[0x277D75E60]) initWithConfiguration:v6 layoutEnvironment:v5];

  return v9;
}

id __38__HUSideBarViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) blurView];
  v4 = [v3 leadingAnchor];
  v5 = [*(a1 + 32) view];
  v6 = [v5 leadingAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  [v2 addObject:v7];

  v8 = [*(a1 + 32) blurView];
  v9 = [v8 trailingAnchor];
  v10 = [*(a1 + 32) view];
  v11 = [v10 trailingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  [v2 addObject:v12];

  v13 = [*(a1 + 32) blurView];
  v14 = [v13 bottomAnchor];
  v15 = [*(a1 + 32) view];
  v16 = [v15 bottomAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  [v2 addObject:v17];

  v18 = [*(a1 + 32) blurView];
  v19 = [v18 topAnchor];
  v20 = [*(a1 + 32) view];
  v21 = [v20 topAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
  [v2 addObject:v22];

  return v2;
}

- (void)setHideRoomSection:(BOOL)a3
{
  v25 = *MEMORY[0x277D85DE8];
  if (self->_hideRoomSection != a3)
  {
    v3 = a3;
    self->_hideRoomSection = a3;
    v6 = [(HUItemCollectionViewController *)self itemManager];
    v7 = [v6 reloadAndUpdateAllItemsFromSenderSelector:a2];

    if (v3)
    {
      v8 = [(HUSideBarViewController *)self sideBarDelegate];
      [v8 switchToHomeForTabIdentifier:*MEMORY[0x277D13938]];

      v9 = [(HUItemCollectionViewController *)self itemManager];
      v10 = [(HUItemCollectionViewController *)self itemManager];
      v11 = [v10 homeItem];
      v12 = [v9 indexPathForItem:v11];

      v13 = [(HUSideBarViewController *)self collectionView];
      [v13 selectItemAtIndexPath:v12 animated:0 scrollPosition:0];

      v14 = HFLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v12 section];
        v16 = [v12 row];
        v17 = [(HUItemCollectionViewController *)self itemManager];
        v18 = [v17 homeItem];
        v19 = 134218498;
        v20 = v15;
        v21 = 2048;
        v22 = v16;
        v23 = 2112;
        v24 = v18;
        _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "switch to home tab since room section should now be hidden, select sidebar section: %ld row: %ld for selected item: %@", &v19, 0x20u);
      }
    }
  }
}

- (void)updateSelectionToItem:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUItemCollectionViewController *)self itemManager];
  v6 = [v5 indexPathForItem:v4];

  if (v6)
  {
    v7 = [(HUSideBarViewController *)self collectionView];
    [v7 selectItemAtIndexPath:v6 animated:0 scrollPosition:0];

    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134218498;
      v13 = [v6 section];
      v14 = 2048;
      v15 = [v6 row];
      v16 = 2112;
      v17 = v4;
      v9 = "select sidebar section: %ld row: %ld for selected item: %@";
      v10 = v8;
      v11 = 32;
LABEL_6:
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, v9, &v12, v11);
    }
  }

  else
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v4;
      v9 = "invalid indexPath for item: %@";
      v10 = v8;
      v11 = 12;
      goto LABEL_6;
    }
  }
}

- (void)switchToSelectedHome:(id)a3
{
  v10 = a3;
  v4 = [(HUSideBarViewController *)self home];
  v5 = [v4 isEqual:v10];

  if ((v5 & 1) == 0)
  {
    [(HUSideBarViewController *)self setHome:v10];
    v6 = [v10 accessories];
    if ([v6 count])
    {
      v7 = [v10 hf_shouldBlockCurrentUserFromHome];
    }

    else
    {
      v7 = 1;
    }

    [(HUSideBarViewController *)self setHideRoomSection:v7];

    v8 = [v10 hf_reorderableRoomsList];
    v9 = [(HUItemCollectionViewController *)self itemManager];
    [v9 setReorderableRoomList:v8];
  }
}

- (void)refreshSideBarSelection
{
  v3 = [(HUItemCollectionViewController *)self itemManager];
  v4 = +[HUSideBarSelectionManager sharedManager];
  v5 = [v4 currentSelectedItem];
  v7 = [v3 indexPathForItem:v5];

  v6 = [(HUSideBarViewController *)self collectionView];
  [v6 selectItemAtIndexPath:v7 animated:0 scrollPosition:0];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v7.receiver = self;
  v7.super_class = HUSideBarViewController;
  v6 = a4;
  [(HUItemCollectionViewController *)&v7 collectionView:a3 didSelectItemAtIndexPath:v6];
  [(HUSideBarViewController *)self _selectItemAtIndexPath:v6, v7.receiver, v7.super_class];
}

- (void)_selectItemAtIndexPath:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUItemCollectionViewController *)self itemManager];
  v6 = [v5 displayedItemAtIndexPath:v4];

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
    v10 = [(HUSideBarViewController *)self sideBarDelegate];
    v11 = [v9 room];
    [v10 switchToRoom:v11];

    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v9 room];
      v33 = 136315394;
      v34 = "[HUSideBarViewController _selectItemAtIndexPath:]";
      v35 = 2112;
      v36 = v13;
      _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "(%s) user select room tab %@", &v33, 0x16u);
    }
  }

  objc_opt_class();
  v14 = v7;
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (v16)
  {
    v17 = [(HUSideBarViewController *)self sideBarDelegate];
    v18 = [v16 accessoryTypeGroup];
    [v17 switchToAccessoryTypeGroup:v18];

    v19 = HFLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v16 accessoryTypeGroup];
      v33 = 136315394;
      v34 = "[HUSideBarViewController _selectItemAtIndexPath:]";
      v35 = 2112;
      v36 = v20;
      _os_log_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_DEFAULT, "(%s) user select accessory type group %@", &v33, 0x16u);
    }
  }

  objc_opt_class();
  v21 = v14;
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
    if (![v23 type])
    {
      v24 = [(HUSideBarViewController *)self sideBarDelegate];
      v25 = *MEMORY[0x277D13938];
      [v24 switchToHomeForTabIdentifier:*MEMORY[0x277D13938]];

      v26 = HFLogForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v33 = 136315394;
        v34 = "[HUSideBarViewController _selectItemAtIndexPath:]";
        v35 = 2112;
        v36 = v25;
        _os_log_impl(&dword_20CEB6000, v26, OS_LOG_TYPE_DEFAULT, "(%s) user select tab: %@", &v33, 0x16u);
      }
    }

    if ([v23 type] == 1)
    {
      v27 = [(HUSideBarViewController *)self sideBarDelegate];
      v28 = *MEMORY[0x277D13940];
      [v27 switchToHomeForTabIdentifier:*MEMORY[0x277D13940]];

      v29 = HFLogForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v33 = 136315394;
        v34 = "[HUSideBarViewController _selectItemAtIndexPath:]";
        v35 = 2112;
        v36 = v28;
        _os_log_impl(&dword_20CEB6000, v29, OS_LOG_TYPE_DEFAULT, "(%s) user select tab: %@", &v33, 0x16u);
      }
    }

    if ([v23 type] == 2)
    {
      v30 = [(HUSideBarViewController *)self sideBarDelegate];
      v31 = *MEMORY[0x277D13930];
      [v30 switchToHomeForTabIdentifier:*MEMORY[0x277D13930]];

      v32 = HFLogForCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = 136315394;
        v34 = "[HUSideBarViewController _selectItemAtIndexPath:]";
        v35 = 2112;
        v36 = v31;
        _os_log_impl(&dword_20CEB6000, v32, OS_LOG_TYPE_DEFAULT, "(%s) user select tab: %@", &v33, 0x16u);
      }
    }
  }

  [(HUSideBarViewController *)self _sendSideBarInteractionEventForItem:v21];
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(HUItemCollectionViewController *)self itemManager];
  v12 = [v11 titleForSection:{objc_msgSend(v8, "section")}];

  objc_opt_class();
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [v10 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v14 forIndexPath:v8];

  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __88__HUSideBarViewController_collectionView_viewForSupplementaryElementOfKind_atIndexPath___block_invoke;
  v20[3] = &unk_277DB82C8;
  v21 = v12;
  v22 = self;
  v18 = v12;
  [v17 _setContentViewConfigurationProvider:v20];

  return v17;
}

id __88__HUSideBarViewController_collectionView_viewForSupplementaryElementOfKind_atIndexPath___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75E00] outlineRootParentCellConfiguration];
  v3 = *(a1 + 32);
  v4 = [v2 textLabel];
  [v4 setText:v3];

  if ([*(a1 + 40) shouldUseDashboardEffects])
  {
    [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v5 = ;
  v6 = [v2 textLabel];
  [v6 setTextColor:v5];

  return v2;
}

- (id)collectionView:(id)a3 targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)a4 atCurrentIndexPath:(id)a5 toProposedIndexPath:(id)a6
{
  v8 = a4;
  v9 = a6;
  v10 = [v9 section];
  v11 = v9;
  if (v10 != [v8 section])
  {
    v12 = [(HUSideBarViewController *)self collectionView];
    [v12 setDropDelegate:self];

    v11 = v8;
  }

  v13 = v11;

  return v11;
}

- (void)collectionView:(id)a3 moveItemAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v27 = a4;
  v7 = a5;
  objc_opt_class();
  v8 = [(HUItemCollectionViewController *)self itemManager];
  v9 = [v8 displayedItemAtIndexPath:v27];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    v12 = [(HUItemCollectionViewController *)self itemManager];
    v13 = [v12 reorderableRoomList];

    v14 = objc_alloc(MEMORY[0x277CBEB18]);
    v15 = [(HUItemCollectionViewController *)self itemManager];
    v16 = [v15 roomItems];
    v17 = [v14 initWithArray:v16];

    v18 = [v17 count];
    if (v18 > [v7 row])
    {
      v19 = [v17 count];
      if (v19 > [v27 row])
      {
        [v17 removeObjectAtIndex:{objc_msgSend(v27, "row")}];
        [v17 insertObject:v11 atIndex:{objc_msgSend(v7, "row")}];
        v20 = [v13 mutableCopy];
        [v20 setSortedHomeKitItems:v17];
        v21 = [(HUItemCollectionViewController *)self itemManager];
        [v21 setReorderableRoomList:v20];

        [(HUItemCollectionViewController *)self setSuppressCollectionViewUpdatesForReorderCommit:1];
        v22 = [(HUItemCollectionViewController *)self itemManager];
        [v22 sortDisplayedItemsInSection:{objc_msgSend(v27, "section")}];

        [(HUItemCollectionViewController *)self setSuppressCollectionViewUpdatesForReorderCommit:0];
        v23 = [(HUItemCollectionViewController *)self itemManager];
        v24 = [v20 saveWithSender:v23];
        v25 = [v24 addFailureBlock:&__block_literal_global_16];
      }
    }
  }

  v26 = [(HUSideBarViewController *)self collectionView];
  [v26 setDropDelegate:self];
}

void __74__HUSideBarViewController_collectionView_moveItemAtIndexPath_toIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14640];
  v3 = a2;
  v4 = [v2 sharedHandler];
  [v4 logError:v3 operationDescription:@"ReorderItems"];
}

- (void)didReorderItemWithSortedItemsBySectionID:(id)a3
{
  v4 = a3;
  v5 = [(HUItemCollectionViewController *)self itemManager];
  v14 = [v5 reorderableRoomList];

  v6 = [v14 mutableCopy];
  v7 = [v4 objectForKeyedSubscript:@"room"];

  v8 = [v7 na_map:&__block_literal_global_35_1];

  [v6 setSortedHomeKitItems:v8];
  v9 = [(HUItemCollectionViewController *)self itemManager];
  [v9 setReorderableRoomList:v6];

  v10 = [(HUItemCollectionViewController *)self itemManager];
  v11 = [v6 saveWithSender:v10];
  v12 = [v11 addFailureBlock:&__block_literal_global_82];

  v13 = [(HUSideBarViewController *)self collectionView];
  [v13 setDropDelegate:self];
}

void *__68__HUSideBarViewController_didReorderItemWithSortedItemsBySectionID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_2824C0788])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

void __68__HUSideBarViewController_didReorderItemWithSortedItemsBySectionID___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14640];
  v3 = a2;
  v4 = [v2 sharedHandler];
  [v4 logError:v3 operationDescription:@"ReorderItems"];
}

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = HUSideBarViewController;
  [(HUItemCollectionViewController *)&v22 configureCell:v6 forItem:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = @"square.split.bottomrightquarter";
  }

  else
  {
    v9 = [v7 latestResults];
    v8 = [v9 objectForKeyedSubscript:*MEMORY[0x277D13EA0]];
  }

  v10 = [MEMORY[0x277D755B8] _systemImageNamed:v8 shape:-1 fill:0];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [MEMORY[0x277D755B8] _systemImageNamed:v8];
  }

  v13 = v12;

  v14 = [v13 _imageThatSuppressesAccessibilityHairlineThickening];

  v15 = [MEMORY[0x277D756E0] sidebarCellConfiguration];
  [v15 setImage:v14];
  v16 = [v7 latestResults];
  v17 = [v16 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [v15 setText:v17];

  [v6 setContentConfiguration:v15];
  if ([MEMORY[0x277D14CE8] isAMac])
  {
    [MEMORY[0x277D751C0] clearConfiguration];
  }

  else
  {
    [MEMORY[0x277D751C0] listSidebarCellConfiguration];
  }
  v18 = ;
  [v6 setBackgroundConfiguration:v18];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__HUSideBarViewController_configureCell_forItem___block_invoke;
  aBlock[3] = &unk_277DB8330;
  aBlock[4] = self;
  v19 = _Block_copy(aBlock);
  [v6 setConfigurationUpdateHandler:v19];
  v20 = [v6 configurationState];
  v19[2](v19, v6, v20);
}

void __49__HUSideBarViewController_configureCell_forItem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = a2;
  v5 = a3;
  v6 = [v34 contentConfiguration];
  v7 = [v6 updatedConfigurationForState:v5];

  v8 = [v34 backgroundConfiguration];
  v9 = [v8 updatedConfigurationForState:v5];

  LODWORD(v8) = [MEMORY[0x277D14CE8] isAMac];
  v10 = [*(a1 + 32) shouldUseDashboardEffects];
  if (v8)
  {
    if (v10)
    {
      v11 = [MEMORY[0x277D75348] systemWhiteColor];
      v12 = [v7 textProperties];
      [v12 setColor:v11];

      v13 = [MEMORY[0x277D75348] systemWhiteColor];
      v14 = [v7 imageProperties];
      [v14 setTintColor:v13];

      v15 = [MEMORY[0x277D75348] clearColor];
      [v9 setBackgroundColor:v15];

      if ([v5 isSelected])
      {
        v16 = [MEMORY[0x277D75210] effectWithStyle:19];
        [v9 setVisualEffect:v16];

LABEL_29:
        [v9 setCornerRadius:6.49350977];
        goto LABEL_30;
      }
    }

    else
    {
      v17 = [MEMORY[0x277D75348] labelColor];
      v18 = [v7 textProperties];
      [v18 setColor:v17];

      v19 = [MEMORY[0x277D75348] labelColor];
      v20 = [v7 imageProperties];
      [v20 setTintColor:v19];

      if ([v5 isSelected])
      {
        v21 = [*(a1 + 32) traitCollection];
        if ([v21 userInterfaceStyle] == 2)
        {
          [MEMORY[0x277D75348] darkGrayColor];
        }

        else
        {
          [MEMORY[0x277D75348] lightGrayColor];
        }
        v33 = ;
        [v9 setBackgroundColor:v33];
      }

      else
      {
        v21 = [MEMORY[0x277D75348] clearColor];
        [v9 setBackgroundColor:v21];
      }
    }

    [v9 setVisualEffect:0];
    goto LABEL_29;
  }

  if (v10)
  {
    if ([v5 isSelected])
    {
      [MEMORY[0x277D75348] blackColor];
    }

    else
    {
      [MEMORY[0x277D75348] whiteColor];
    }
    v24 = ;
    v25 = [v7 textProperties];
    [v25 setColor:v24];

    if ([v5 isSelected])
    {
      [MEMORY[0x277D75348] blackColor];
    }

    else
    {
      [MEMORY[0x277D75348] whiteColor];
    }
    v28 = ;
    v29 = [v7 imageProperties];
    [v29 setTintColor:v28];

    v30 = [MEMORY[0x277D75348] clearColor];
    [v9 setBackgroundColor:v30];

    if ([v5 isSelected])
    {
      v31 = [MEMORY[0x277D75210] effectWithStyle:14];
      [v9 setVisualEffect:v31];

      goto LABEL_30;
    }
  }

  else
  {
    v22 = [MEMORY[0x277D75348] labelColor];
    v23 = [v7 textProperties];
    [v23 setColor:v22];

    if ([v5 isSelected])
    {
      [MEMORY[0x277D75348] labelColor];
    }

    else
    {
      [v34 tintColor];
    }
    v26 = ;
    v27 = [v7 imageProperties];
    [v27 setTintColor:v26];

    if ([v5 isSelected])
    {
      [v9 setBackgroundColor:0];
    }

    else
    {
      v32 = [MEMORY[0x277D75348] clearColor];
      [v9 setBackgroundColor:v32];
    }
  }

  [v9 setVisualEffect:0];
LABEL_30:
  [v34 setContentConfiguration:v7];
  [v34 setBackgroundConfiguration:v9];
}

- (void)diffableDataItemManager:(id)a3 didUpdateItems:(id)a4 addItems:(id)a5 removeItems:(id)a6
{
  v10.receiver = self;
  v10.super_class = HUSideBarViewController;
  [(HUItemCollectionViewController *)&v10 diffableDataItemManager:a3 didUpdateItems:a4 addItems:a5 removeItems:a6];
  v7 = [(HUSideBarViewController *)self collectionView];
  v8 = [v7 indexPathsForSelectedItems];
  v9 = [v8 count];

  if (!v9)
  {
    [(HUSideBarViewController *)self refreshSideBarSelection];
  }
}

- (void)homeDidUpdateApplicationData:(id)a3
{
  v5 = [a3 hf_reorderableRoomsList];
  v6 = [(HUItemCollectionViewController *)self itemManager];
  [v6 setReorderableRoomList:v5];

  v8 = [(HUItemCollectionViewController *)self itemManager];
  v7 = [v8 reloadAndUpdateAllItemsFromSenderSelector:a2];
}

- (void)home:(id)a3 didAddAccessory:(id)a4
{
  v5 = [a3 accessories];
  -[HUSideBarViewController setHideRoomSection:](self, "setHideRoomSection:", [v5 count] == 0);
}

- (void)home:(id)a3 didRemoveAccessory:(id)a4
{
  v5 = [a3 accessories];
  -[HUSideBarViewController setHideRoomSection:](self, "setHideRoomSection:", [v5 count] == 0);
}

- (void)homeDidUpdateToROAR:(id)a3
{
  v4 = [a3 hf_shouldBlockCurrentUserFromHome];

  [(HUSideBarViewController *)self setHideRoomSection:v4];
}

- (void)homeDidUpdateAccessControlForCurrentUser:(id)a3
{
  v4 = a3;
  v5 = [(HUSideBarViewController *)self home];
  v6 = v4;
  v8 = v6;
  if (v5 == v6)
  {

    goto LABEL_6;
  }

  if (!v5)
  {

    goto LABEL_8;
  }

  v7 = [v5 isEqual:v6];

  if (v7)
  {
LABEL_6:
    -[HUSideBarViewController setHideRoomSection:](self, "setHideRoomSection:", [v8 hf_shouldBlockCurrentRestrictedGuestFromHome]);
  }

LABEL_8:
}

- (void)homeDidUpdateHomeLocationStatus:(id)a3
{
  v4 = a3;
  v5 = [(HUSideBarViewController *)self home];
  v6 = v4;
  v8 = v6;
  if (v5 == v6)
  {

    goto LABEL_6;
  }

  if (!v5)
  {

    goto LABEL_8;
  }

  v7 = [v5 isEqual:v6];

  if (v7)
  {
LABEL_6:
    -[HUSideBarViewController setHideRoomSection:](self, "setHideRoomSection:", [v8 hf_shouldBlockCurrentRestrictedGuestFromHome]);
  }

LABEL_8:
}

- (void)restrictedGuestAllowedPeriodStarted:(id)a3
{
  v4 = a3;
  v5 = [(HUSideBarViewController *)self home];
  v6 = [v5 currentUser];
  v7 = v4;
  v9 = v7;
  if (v6 == v7)
  {

    goto LABEL_6;
  }

  if (!v6)
  {

    goto LABEL_8;
  }

  v8 = [v6 isEqual:v7];

  if (v8)
  {
LABEL_6:
    v5 = [(HUSideBarViewController *)self home];
    -[HUSideBarViewController setHideRoomSection:](self, "setHideRoomSection:", [v5 hf_shouldBlockCurrentRestrictedGuestFromHome]);
LABEL_8:
  }
}

- (void)restrictedGuestAllowedPeriodEnded:(id)a3
{
  v4 = a3;
  v5 = [(HUSideBarViewController *)self home];
  v6 = [v5 currentUser];
  v7 = v4;
  v9 = v7;
  if (v6 == v7)
  {

    goto LABEL_6;
  }

  if (!v6)
  {

    goto LABEL_8;
  }

  v8 = [v6 isEqual:v7];

  if (v8)
  {
LABEL_6:
    v5 = [(HUSideBarViewController *)self home];
    -[HUSideBarViewController setHideRoomSection:](self, "setHideRoomSection:", [v5 hf_shouldBlockCurrentRestrictedGuestFromHome]);
LABEL_8:
  }
}

- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (!v8)
  {
    v16 = [objc_alloc(MEMORY[0x277D752E8]) initWithDropOperation:0];
    goto LABEL_10;
  }

  v9 = [(HUItemCollectionViewController *)self itemManager];
  v10 = [v9 displayedItemAtIndexPath:v8];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v11 = [(HUSideBarViewController *)self home];
  v12 = [v11 hf_currentUserIsAdministrator];

  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = [v7 items];
  v14 = [v13 firstObject];
  v15 = [v14 localObject];

  if (![v15 conformsToProtocol:&unk_28251B0C8])
  {

LABEL_8:
    v16 = [objc_alloc(MEMORY[0x277D752E8]) initWithDropOperation:1];
    goto LABEL_9;
  }

  v16 = [objc_alloc(MEMORY[0x277D752E8]) initWithDropOperation:3 intent:2];

LABEL_9:
LABEL_10:

  return v16;
}

- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4
{
  v5 = a4;
  v6 = [v5 proposal];
  v7 = [v6 operation];

  if (v7 == 3)
  {
    objc_opt_class();
    v8 = [v5 items];
    v9 = [v8 firstObject];
    v10 = [v9 dragItem];
    v11 = [v10 localObject];
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if ([v13 conformsToProtocol:&unk_28251B0C8])
    {
      v14 = v13;
      objc_opt_class();
      v15 = [(HUItemCollectionViewController *)self itemManager];
      v16 = [v5 destinationIndexPath];
      v17 = [v15 displayedItemAtIndexPath:v16];
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;

      v20 = objc_alloc(MEMORY[0x277D149D8]);
      v21 = [v19 room];
      v22 = [v19 home];

      v23 = [v20 initWithExistingObject:v21 inHome:v22];
      v24 = [v14 accessories];

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __69__HUSideBarViewController_collectionView_performDropWithCoordinator___block_invoke;
      v27[3] = &unk_277DB8358;
      v28 = v23;
      v25 = v23;
      [v24 na_each:v27];

      v26 = [v25 commitItem];
    }
  }
}

- (void)switchToDiscover
{
  v3 = [(HUItemCollectionViewController *)self itemManager];
  v4 = [v3 discoverItem];

  if (!v4)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "trying to select the discover tab, but there is no discover item", v11, 2u);
    }
  }

  v6 = [(HUItemCollectionViewController *)self itemManager];
  v7 = [(HUItemCollectionViewController *)self itemManager];
  v8 = [v7 discoverItem];
  v9 = [v6 indexPathForItem:v8];

  v10 = [(HUSideBarViewController *)self collectionView];
  [v10 selectItemAtIndexPath:v9 animated:0 scrollPosition:0];
}

- (void)setShouldUseDashboardEffects:(BOOL)a3
{
  if (self->_shouldUseDashboardEffects != a3)
  {
    self->_shouldUseDashboardEffects = a3;
    [(HUSideBarViewController *)self _updateAppearance];
  }
}

- (void)_updateShouldUseDashboardEffects
{
  v3 = +[HUSideBarSelectionManager sharedManager];
  v4 = [v3 currentTabIdentifier];
  v5 = v4;
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v6 = [MEMORY[0x277D14B30] sharedInstance];
    v7 = [v6 selectedHomeAppTabIdentifier];
  }

  -[HUSideBarViewController setShouldUseDashboardEffects:](self, "setShouldUseDashboardEffects:", [v7 isEqualToString:*MEMORY[0x277D13938]]);
}

- (void)_updateBlurView
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = [(HUSideBarViewController *)self blurView];
  if (!v4)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4;
  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v7 handleFailureInFunction:v8 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v3, objc_opt_class()}];

LABEL_7:
    v6 = 0;
  }

  if ([(HUSideBarViewController *)self shouldUseDashboardEffects])
  {
    v9 = [MEMORY[0x277D75D58] hu_dashboardBarEffects];
    [v6 setBackgroundEffects:v9];

    [v6 setContentEffects:MEMORY[0x277CBEBF8]];
  }

  else
  {
    v10 = [MEMORY[0x277D75210] effectWithStyle:9];
    v11 = [MEMORY[0x277D75D00] effectForBlurEffect:v10 style:4];
    [v6 setBackgroundColor:0];
    v15[0] = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [v6 setBackgroundEffects:v12];

    v14 = v11;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    [v6 setContentEffects:v13];
  }
}

- (void)_updateNavigationBar
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  if ([(HUSideBarViewController *)self shouldUseDashboardEffects])
  {
    v12 = *MEMORY[0x277D740C0];
    v4 = v12;
    v5 = [MEMORY[0x277D75348] systemWhiteColor];
    v13[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [v3 setTitleTextAttributes:v6];

    v10 = v4;
    v7 = [MEMORY[0x277D75348] systemWhiteColor];
    v11 = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    [v3 setLargeTitleTextAttributes:v8];
  }

  v9 = [(HUSideBarViewController *)self navigationItem];
  [v9 setStandardAppearance:v3];
}

- (void)_updateSplitViewSeparator
{
  if ([(HUSideBarViewController *)self shouldUseDashboardEffects])
  {
    v3 = 0.001;
  }

  else
  {
    v3 = 1.0;
  }

  v5 = [(HUSideBarViewController *)self splitViewController];
  *&v4 = v3;
  [v5 setGutterWidth:v4];
}

- (void)_updateAppearance
{
  [(HUSideBarViewController *)self _updateBlurView];
  [(HUSideBarViewController *)self _updateNavigationBar];
  [(HUSideBarViewController *)self _updateSplitViewSeparator];
  v3 = [(HUSideBarViewController *)self collectionView];
  v4 = [v3 preparedCells];
  [v4 na_each:&__block_literal_global_137];

  v6 = [(HUSideBarViewController *)self collectionView];
  v5 = [v6 visibleSupplementaryViewsOfKind:*MEMORY[0x277D77388]];
  [v5 na_each:&__block_literal_global_140];
}

void __44__HUSideBarViewController__updateAppearance__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v5 = v2;
  if (objc_opt_isKindOfClass())
  {
    v3 = v5;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  [v4 _setNeedsConfigurationStateUpdate];
}

- (void)_sendSideBarInteractionEventForItem:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 na_safeSetObject:v3 forKey:*MEMORY[0x277D13538]];
  objc_opt_class();
  v15 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v15;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = HUSideBarStaticItemTypeString([v6 type]);
    v11 = [v7 stringWithFormat:@"%@-%@", v9, v10];
  }

  else
  {
    v11 = 0;
  }

  [v4 na_safeSetObject:v11 forKey:*MEMORY[0x277D13540]];
  if ([MEMORY[0x277D14CE8] isAnIPad])
  {
    v12 = MEMORY[0x277CCABB0];
    v13 = [MEMORY[0x277D75418] currentDevice];
    v14 = [v12 numberWithInteger:{objc_msgSend(v13, "orientation")}];
    [v4 na_safeSetObject:v14 forKey:*MEMORY[0x277D13500]];
  }

  [MEMORY[0x277D143D8] sendEvent:37 withData:v4];
}

- (HUSideBarDelegate)sideBarDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sideBarDelegate);

  return WeakRetained;
}

@end