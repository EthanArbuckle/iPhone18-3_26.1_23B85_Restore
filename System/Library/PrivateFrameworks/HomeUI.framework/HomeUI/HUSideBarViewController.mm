@interface HUSideBarViewController
- (HUSideBarDelegate)sideBarDelegate;
- (HUSideBarViewController)initWithDelegate:(id)delegate forHome:(id)home;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (void)_selectItemAtIndexPath:(id)path;
- (void)_sendSideBarInteractionEventForItem:(id)item;
- (void)_updateAppearance;
- (void)_updateBlurView;
- (void)_updateNavigationBar;
- (void)_updateShouldUseDashboardEffects;
- (void)_updateSplitViewSeparator;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)configureCell:(id)cell forItem:(id)item;
- (void)didReorderItemWithSortedItemsBySectionID:(id)d;
- (void)diffableDataItemManager:(id)manager didUpdateItems:(id)items addItems:(id)addItems removeItems:(id)removeItems;
- (void)home:(id)home didAddAccessory:(id)accessory;
- (void)home:(id)home didRemoveAccessory:(id)accessory;
- (void)homeDidUpdateAccessControlForCurrentUser:(id)user;
- (void)homeDidUpdateApplicationData:(id)data;
- (void)homeDidUpdateHomeLocationStatus:(id)status;
- (void)homeDidUpdateToROAR:(id)r;
- (void)refreshSideBarSelection;
- (void)restrictedGuestAllowedPeriodEnded:(id)ended;
- (void)restrictedGuestAllowedPeriodStarted:(id)started;
- (void)setHideRoomSection:(BOOL)section;
- (void)setShouldUseDashboardEffects:(BOOL)effects;
- (void)switchToDiscover;
- (void)switchToSelectedHome:(id)home;
- (void)updateSelectionToItem:(id)item;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HUSideBarViewController

- (HUSideBarViewController)initWithDelegate:(id)delegate forHome:(id)home
{
  delegateCopy = delegate;
  homeCopy = home;
  v9 = [[HUSideBarItemManager alloc] initWithDelegate:self];
  v10 = objc_opt_new();
  v18.receiver = self;
  v18.super_class = HUSideBarViewController;
  v11 = [(HUItemCollectionViewController *)&v18 initWithItemManager:v9 collectionViewLayout:v10];

  if (v11)
  {
    objc_storeWeak(&v11->_sideBarDelegate, delegateCopy);
    itemManager = [(HUItemCollectionViewController *)v11 itemManager];
    v13 = [itemManager reloadAndUpdateAllItemsFromSenderSelector:a2];

    objc_storeStrong(&v11->_home, home);
    accessories = [homeCopy accessories];
    v11->_hideRoomSection = [accessories count] == 0;

    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    [mEMORY[0x277D146E8] addHomeObserver:v11];

    v16 = HFLocalizedString();
    [(HUSideBarViewController *)v11 setTitle:v16];
  }

  return v11;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = HUSideBarViewController;
  [(HUItemCollectionViewController *)&v4 viewWillAppear:appear];
  [(HUSideBarViewController *)self _updateSplitViewSeparator];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = HUSideBarViewController;
  [(HUItemCollectionViewController *)&v6 viewDidAppear:appear];
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
  clearColor = [MEMORY[0x277D75348] clearColor];
  collectionView = [(HUSideBarViewController *)self collectionView];
  [collectionView setBackgroundColor:clearColor];

  collectionView2 = [(HUSideBarViewController *)self collectionView];
  [collectionView2 setAlwaysBounceVertical:1];

  collectionView3 = [(HUSideBarViewController *)self collectionView];
  [collectionView3 setDelegate:self];

  collectionView4 = [(HUSideBarViewController *)self collectionView];
  [collectionView4 setDropDelegate:self];

  collectionView5 = [(HUSideBarViewController *)self collectionView];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [collectionView5 registerClass:v9 forCellWithReuseIdentifier:v11];

  collectionView6 = [(HUSideBarViewController *)self collectionView];
  v13 = objc_opt_class();
  v14 = *MEMORY[0x277D77388];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  [collectionView6 registerClass:v13 forSupplementaryViewOfKind:v14 withReuseIdentifier:v16];

  collectionView7 = [(HUSideBarViewController *)self collectionView];
  [collectionView7 setSelectionFollowsFocus:1];

  v18 = objc_alloc(MEMORY[0x277D752B8]);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __38__HUSideBarViewController_viewDidLoad__block_invoke;
  v28[3] = &unk_277DB8278;
  v28[4] = self;
  v19 = [v18 initWithSectionProvider:v28];
  collectionView8 = [(HUSideBarViewController *)self collectionView];
  [collectionView8 setCollectionViewLayout:v19];

  v21 = objc_opt_new();
  blurView = self->_blurView;
  self->_blurView = v21;

  [(UIView *)self->_blurView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HUSideBarViewController *)self _updateBlurView];
  view = [(HUSideBarViewController *)self view];
  [view addSubview:self->_blurView];

  view2 = [(HUSideBarViewController *)self view];
  [view2 sendSubviewToBack:self->_blurView];

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

- (void)setHideRoomSection:(BOOL)section
{
  v25 = *MEMORY[0x277D85DE8];
  if (self->_hideRoomSection != section)
  {
    sectionCopy = section;
    self->_hideRoomSection = section;
    itemManager = [(HUItemCollectionViewController *)self itemManager];
    v7 = [itemManager reloadAndUpdateAllItemsFromSenderSelector:a2];

    if (sectionCopy)
    {
      sideBarDelegate = [(HUSideBarViewController *)self sideBarDelegate];
      [sideBarDelegate switchToHomeForTabIdentifier:*MEMORY[0x277D13938]];

      itemManager2 = [(HUItemCollectionViewController *)self itemManager];
      itemManager3 = [(HUItemCollectionViewController *)self itemManager];
      homeItem = [itemManager3 homeItem];
      v12 = [itemManager2 indexPathForItem:homeItem];

      collectionView = [(HUSideBarViewController *)self collectionView];
      [collectionView selectItemAtIndexPath:v12 animated:0 scrollPosition:0];

      v14 = HFLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        section = [v12 section];
        v16 = [v12 row];
        itemManager4 = [(HUItemCollectionViewController *)self itemManager];
        homeItem2 = [itemManager4 homeItem];
        v19 = 134218498;
        v20 = section;
        v21 = 2048;
        v22 = v16;
        v23 = 2112;
        v24 = homeItem2;
        _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "switch to home tab since room section should now be hidden, select sidebar section: %ld row: %ld for selected item: %@", &v19, 0x20u);
      }
    }
  }
}

- (void)updateSelectionToItem:(id)item
{
  v18 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v6 = [itemManager indexPathForItem:itemCopy];

  if (v6)
  {
    collectionView = [(HUSideBarViewController *)self collectionView];
    [collectionView selectItemAtIndexPath:v6 animated:0 scrollPosition:0];

    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134218498;
      section = [v6 section];
      v14 = 2048;
      v15 = [v6 row];
      v16 = 2112;
      v17 = itemCopy;
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
      section = itemCopy;
      v9 = "invalid indexPath for item: %@";
      v10 = v8;
      v11 = 12;
      goto LABEL_6;
    }
  }
}

- (void)switchToSelectedHome:(id)home
{
  homeCopy = home;
  home = [(HUSideBarViewController *)self home];
  v5 = [home isEqual:homeCopy];

  if ((v5 & 1) == 0)
  {
    [(HUSideBarViewController *)self setHome:homeCopy];
    accessories = [homeCopy accessories];
    if ([accessories count])
    {
      hf_shouldBlockCurrentUserFromHome = [homeCopy hf_shouldBlockCurrentUserFromHome];
    }

    else
    {
      hf_shouldBlockCurrentUserFromHome = 1;
    }

    [(HUSideBarViewController *)self setHideRoomSection:hf_shouldBlockCurrentUserFromHome];

    hf_reorderableRoomsList = [homeCopy hf_reorderableRoomsList];
    itemManager = [(HUItemCollectionViewController *)self itemManager];
    [itemManager setReorderableRoomList:hf_reorderableRoomsList];
  }
}

- (void)refreshSideBarSelection
{
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v4 = +[HUSideBarSelectionManager sharedManager];
  currentSelectedItem = [v4 currentSelectedItem];
  v7 = [itemManager indexPathForItem:currentSelectedItem];

  collectionView = [(HUSideBarViewController *)self collectionView];
  [collectionView selectItemAtIndexPath:v7 animated:0 scrollPosition:0];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = HUSideBarViewController;
  pathCopy = path;
  [(HUItemCollectionViewController *)&v7 collectionView:view didSelectItemAtIndexPath:pathCopy];
  [(HUSideBarViewController *)self _selectItemAtIndexPath:pathCopy, v7.receiver, v7.super_class];
}

- (void)_selectItemAtIndexPath:(id)path
{
  v37 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v6 = [itemManager displayedItemAtIndexPath:pathCopy];

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
    sideBarDelegate = [(HUSideBarViewController *)self sideBarDelegate];
    room = [v9 room];
    [sideBarDelegate switchToRoom:room];

    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      room2 = [v9 room];
      v33 = 136315394;
      v34 = "[HUSideBarViewController _selectItemAtIndexPath:]";
      v35 = 2112;
      v36 = room2;
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
    sideBarDelegate2 = [(HUSideBarViewController *)self sideBarDelegate];
    accessoryTypeGroup = [v16 accessoryTypeGroup];
    [sideBarDelegate2 switchToAccessoryTypeGroup:accessoryTypeGroup];

    v19 = HFLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      accessoryTypeGroup2 = [v16 accessoryTypeGroup];
      v33 = 136315394;
      v34 = "[HUSideBarViewController _selectItemAtIndexPath:]";
      v35 = 2112;
      v36 = accessoryTypeGroup2;
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
      sideBarDelegate3 = [(HUSideBarViewController *)self sideBarDelegate];
      v25 = *MEMORY[0x277D13938];
      [sideBarDelegate3 switchToHomeForTabIdentifier:*MEMORY[0x277D13938]];

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
      sideBarDelegate4 = [(HUSideBarViewController *)self sideBarDelegate];
      v28 = *MEMORY[0x277D13940];
      [sideBarDelegate4 switchToHomeForTabIdentifier:*MEMORY[0x277D13940]];

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
      sideBarDelegate5 = [(HUSideBarViewController *)self sideBarDelegate];
      v31 = *MEMORY[0x277D13930];
      [sideBarDelegate5 switchToHomeForTabIdentifier:*MEMORY[0x277D13930]];

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

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  pathCopy = path;
  kindCopy = kind;
  viewCopy = view;
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v12 = [itemManager titleForSection:{objc_msgSend(pathCopy, "section")}];

  objc_opt_class();
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:v14 forIndexPath:pathCopy];

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
  selfCopy = self;
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

- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath
{
  pathCopy = path;
  proposedIndexPathCopy = proposedIndexPath;
  section = [proposedIndexPathCopy section];
  v11 = proposedIndexPathCopy;
  if (section != [pathCopy section])
  {
    collectionView = [(HUSideBarViewController *)self collectionView];
    [collectionView setDropDelegate:self];

    v11 = pathCopy;
  }

  v13 = v11;

  return v11;
}

- (void)collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  objc_opt_class();
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:pathCopy];
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
    itemManager2 = [(HUItemCollectionViewController *)self itemManager];
    reorderableRoomList = [itemManager2 reorderableRoomList];

    v14 = objc_alloc(MEMORY[0x277CBEB18]);
    itemManager3 = [(HUItemCollectionViewController *)self itemManager];
    roomItems = [itemManager3 roomItems];
    v17 = [v14 initWithArray:roomItems];

    v18 = [v17 count];
    if (v18 > [indexPathCopy row])
    {
      v19 = [v17 count];
      if (v19 > [pathCopy row])
      {
        [v17 removeObjectAtIndex:{objc_msgSend(pathCopy, "row")}];
        [v17 insertObject:v11 atIndex:{objc_msgSend(indexPathCopy, "row")}];
        v20 = [reorderableRoomList mutableCopy];
        [v20 setSortedHomeKitItems:v17];
        itemManager4 = [(HUItemCollectionViewController *)self itemManager];
        [itemManager4 setReorderableRoomList:v20];

        [(HUItemCollectionViewController *)self setSuppressCollectionViewUpdatesForReorderCommit:1];
        itemManager5 = [(HUItemCollectionViewController *)self itemManager];
        [itemManager5 sortDisplayedItemsInSection:{objc_msgSend(pathCopy, "section")}];

        [(HUItemCollectionViewController *)self setSuppressCollectionViewUpdatesForReorderCommit:0];
        itemManager6 = [(HUItemCollectionViewController *)self itemManager];
        v24 = [v20 saveWithSender:itemManager6];
        v25 = [v24 addFailureBlock:&__block_literal_global_16];
      }
    }
  }

  collectionView = [(HUSideBarViewController *)self collectionView];
  [collectionView setDropDelegate:self];
}

void __74__HUSideBarViewController_collectionView_moveItemAtIndexPath_toIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14640];
  v3 = a2;
  v4 = [v2 sharedHandler];
  [v4 logError:v3 operationDescription:@"ReorderItems"];
}

- (void)didReorderItemWithSortedItemsBySectionID:(id)d
{
  dCopy = d;
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  reorderableRoomList = [itemManager reorderableRoomList];

  v6 = [reorderableRoomList mutableCopy];
  v7 = [dCopy objectForKeyedSubscript:@"room"];

  v8 = [v7 na_map:&__block_literal_global_35_1];

  [v6 setSortedHomeKitItems:v8];
  itemManager2 = [(HUItemCollectionViewController *)self itemManager];
  [itemManager2 setReorderableRoomList:v6];

  itemManager3 = [(HUItemCollectionViewController *)self itemManager];
  v11 = [v6 saveWithSender:itemManager3];
  v12 = [v11 addFailureBlock:&__block_literal_global_82];

  collectionView = [(HUSideBarViewController *)self collectionView];
  [collectionView setDropDelegate:self];
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

- (void)configureCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  v22.receiver = self;
  v22.super_class = HUSideBarViewController;
  [(HUItemCollectionViewController *)&v22 configureCell:cellCopy forItem:itemCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = @"square.split.bottomrightquarter";
  }

  else
  {
    latestResults = [itemCopy latestResults];
    v8 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EA0]];
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

  _imageThatSuppressesAccessibilityHairlineThickening = [v13 _imageThatSuppressesAccessibilityHairlineThickening];

  sidebarCellConfiguration = [MEMORY[0x277D756E0] sidebarCellConfiguration];
  [sidebarCellConfiguration setImage:_imageThatSuppressesAccessibilityHairlineThickening];
  latestResults2 = [itemCopy latestResults];
  v17 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [sidebarCellConfiguration setText:v17];

  [cellCopy setContentConfiguration:sidebarCellConfiguration];
  if ([MEMORY[0x277D14CE8] isAMac])
  {
    [MEMORY[0x277D751C0] clearConfiguration];
  }

  else
  {
    [MEMORY[0x277D751C0] listSidebarCellConfiguration];
  }
  v18 = ;
  [cellCopy setBackgroundConfiguration:v18];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__HUSideBarViewController_configureCell_forItem___block_invoke;
  aBlock[3] = &unk_277DB8330;
  aBlock[4] = self;
  v19 = _Block_copy(aBlock);
  [cellCopy setConfigurationUpdateHandler:v19];
  configurationState = [cellCopy configurationState];
  v19[2](v19, cellCopy, configurationState);
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

- (void)diffableDataItemManager:(id)manager didUpdateItems:(id)items addItems:(id)addItems removeItems:(id)removeItems
{
  v10.receiver = self;
  v10.super_class = HUSideBarViewController;
  [(HUItemCollectionViewController *)&v10 diffableDataItemManager:manager didUpdateItems:items addItems:addItems removeItems:removeItems];
  collectionView = [(HUSideBarViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v9 = [indexPathsForSelectedItems count];

  if (!v9)
  {
    [(HUSideBarViewController *)self refreshSideBarSelection];
  }
}

- (void)homeDidUpdateApplicationData:(id)data
{
  hf_reorderableRoomsList = [data hf_reorderableRoomsList];
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  [itemManager setReorderableRoomList:hf_reorderableRoomsList];

  itemManager2 = [(HUItemCollectionViewController *)self itemManager];
  v7 = [itemManager2 reloadAndUpdateAllItemsFromSenderSelector:a2];
}

- (void)home:(id)home didAddAccessory:(id)accessory
{
  accessories = [home accessories];
  -[HUSideBarViewController setHideRoomSection:](self, "setHideRoomSection:", [accessories count] == 0);
}

- (void)home:(id)home didRemoveAccessory:(id)accessory
{
  accessories = [home accessories];
  -[HUSideBarViewController setHideRoomSection:](self, "setHideRoomSection:", [accessories count] == 0);
}

- (void)homeDidUpdateToROAR:(id)r
{
  hf_shouldBlockCurrentUserFromHome = [r hf_shouldBlockCurrentUserFromHome];

  [(HUSideBarViewController *)self setHideRoomSection:hf_shouldBlockCurrentUserFromHome];
}

- (void)homeDidUpdateAccessControlForCurrentUser:(id)user
{
  userCopy = user;
  home = [(HUSideBarViewController *)self home];
  v6 = userCopy;
  v8 = v6;
  if (home == v6)
  {

    goto LABEL_6;
  }

  if (!home)
  {

    goto LABEL_8;
  }

  v7 = [home isEqual:v6];

  if (v7)
  {
LABEL_6:
    -[HUSideBarViewController setHideRoomSection:](self, "setHideRoomSection:", [v8 hf_shouldBlockCurrentRestrictedGuestFromHome]);
  }

LABEL_8:
}

- (void)homeDidUpdateHomeLocationStatus:(id)status
{
  statusCopy = status;
  home = [(HUSideBarViewController *)self home];
  v6 = statusCopy;
  v8 = v6;
  if (home == v6)
  {

    goto LABEL_6;
  }

  if (!home)
  {

    goto LABEL_8;
  }

  v7 = [home isEqual:v6];

  if (v7)
  {
LABEL_6:
    -[HUSideBarViewController setHideRoomSection:](self, "setHideRoomSection:", [v8 hf_shouldBlockCurrentRestrictedGuestFromHome]);
  }

LABEL_8:
}

- (void)restrictedGuestAllowedPeriodStarted:(id)started
{
  startedCopy = started;
  home = [(HUSideBarViewController *)self home];
  currentUser = [home currentUser];
  v7 = startedCopy;
  v9 = v7;
  if (currentUser == v7)
  {

    goto LABEL_6;
  }

  if (!currentUser)
  {

    goto LABEL_8;
  }

  v8 = [currentUser isEqual:v7];

  if (v8)
  {
LABEL_6:
    home = [(HUSideBarViewController *)self home];
    -[HUSideBarViewController setHideRoomSection:](self, "setHideRoomSection:", [home hf_shouldBlockCurrentRestrictedGuestFromHome]);
LABEL_8:
  }
}

- (void)restrictedGuestAllowedPeriodEnded:(id)ended
{
  endedCopy = ended;
  home = [(HUSideBarViewController *)self home];
  currentUser = [home currentUser];
  v7 = endedCopy;
  v9 = v7;
  if (currentUser == v7)
  {

    goto LABEL_6;
  }

  if (!currentUser)
  {

    goto LABEL_8;
  }

  v8 = [currentUser isEqual:v7];

  if (v8)
  {
LABEL_6:
    home = [(HUSideBarViewController *)self home];
    -[HUSideBarViewController setHideRoomSection:](self, "setHideRoomSection:", [home hf_shouldBlockCurrentRestrictedGuestFromHome]);
LABEL_8:
  }
}

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  updateCopy = update;
  pathCopy = path;
  if (!pathCopy)
  {
    v16 = [objc_alloc(MEMORY[0x277D752E8]) initWithDropOperation:0];
    goto LABEL_10;
  }

  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v10 = [itemManager displayedItemAtIndexPath:pathCopy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  home = [(HUSideBarViewController *)self home];
  hf_currentUserIsAdministrator = [home hf_currentUserIsAdministrator];

  if (!hf_currentUserIsAdministrator)
  {
    goto LABEL_8;
  }

  items = [updateCopy items];
  firstObject = [items firstObject];
  localObject = [firstObject localObject];

  if (![localObject conformsToProtocol:&unk_28251B0C8])
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

- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  proposal = [coordinatorCopy proposal];
  operation = [proposal operation];

  if (operation == 3)
  {
    objc_opt_class();
    items = [coordinatorCopy items];
    firstObject = [items firstObject];
    dragItem = [firstObject dragItem];
    localObject = [dragItem localObject];
    if (objc_opt_isKindOfClass())
    {
      v12 = localObject;
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
      itemManager = [(HUItemCollectionViewController *)self itemManager];
      destinationIndexPath = [coordinatorCopy destinationIndexPath];
      v17 = [itemManager displayedItemAtIndexPath:destinationIndexPath];
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
      room = [v19 room];
      home = [v19 home];

      v23 = [v20 initWithExistingObject:room inHome:home];
      accessories = [v14 accessories];

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __69__HUSideBarViewController_collectionView_performDropWithCoordinator___block_invoke;
      v27[3] = &unk_277DB8358;
      v28 = v23;
      v25 = v23;
      [accessories na_each:v27];

      commitItem = [v25 commitItem];
    }
  }
}

- (void)switchToDiscover
{
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  discoverItem = [itemManager discoverItem];

  if (!discoverItem)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "trying to select the discover tab, but there is no discover item", v11, 2u);
    }
  }

  itemManager2 = [(HUItemCollectionViewController *)self itemManager];
  itemManager3 = [(HUItemCollectionViewController *)self itemManager];
  discoverItem2 = [itemManager3 discoverItem];
  v9 = [itemManager2 indexPathForItem:discoverItem2];

  collectionView = [(HUSideBarViewController *)self collectionView];
  [collectionView selectItemAtIndexPath:v9 animated:0 scrollPosition:0];
}

- (void)setShouldUseDashboardEffects:(BOOL)effects
{
  if (self->_shouldUseDashboardEffects != effects)
  {
    self->_shouldUseDashboardEffects = effects;
    [(HUSideBarViewController *)self _updateAppearance];
  }
}

- (void)_updateShouldUseDashboardEffects
{
  v3 = +[HUSideBarSelectionManager sharedManager];
  currentTabIdentifier = [v3 currentTabIdentifier];
  v5 = currentTabIdentifier;
  if (currentTabIdentifier)
  {
    selectedHomeAppTabIdentifier = currentTabIdentifier;
  }

  else
  {
    mEMORY[0x277D14B30] = [MEMORY[0x277D14B30] sharedInstance];
    selectedHomeAppTabIdentifier = [mEMORY[0x277D14B30] selectedHomeAppTabIdentifier];
  }

  -[HUSideBarViewController setShouldUseDashboardEffects:](self, "setShouldUseDashboardEffects:", [selectedHomeAppTabIdentifier isEqualToString:*MEMORY[0x277D13938]]);
}

- (void)_updateBlurView
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  blurView = [(HUSideBarViewController *)self blurView];
  if (!blurView)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v5 = blurView;
  }

  else
  {
    v5 = 0;
  }

  v6 = blurView;
  if (!v5)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v8 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v3, objc_opt_class()}];

LABEL_7:
    v6 = 0;
  }

  if ([(HUSideBarViewController *)self shouldUseDashboardEffects])
  {
    hu_dashboardBarEffects = [MEMORY[0x277D75D58] hu_dashboardBarEffects];
    [v6 setBackgroundEffects:hu_dashboardBarEffects];

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
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    v13[0] = systemWhiteColor;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [v3 setTitleTextAttributes:v6];

    v10 = v4;
    systemWhiteColor2 = [MEMORY[0x277D75348] systemWhiteColor];
    v11 = systemWhiteColor2;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    [v3 setLargeTitleTextAttributes:v8];
  }

  navigationItem = [(HUSideBarViewController *)self navigationItem];
  [navigationItem setStandardAppearance:v3];
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

  splitViewController = [(HUSideBarViewController *)self splitViewController];
  *&v4 = v3;
  [splitViewController setGutterWidth:v4];
}

- (void)_updateAppearance
{
  [(HUSideBarViewController *)self _updateBlurView];
  [(HUSideBarViewController *)self _updateNavigationBar];
  [(HUSideBarViewController *)self _updateSplitViewSeparator];
  collectionView = [(HUSideBarViewController *)self collectionView];
  preparedCells = [collectionView preparedCells];
  [preparedCells na_each:&__block_literal_global_137];

  collectionView2 = [(HUSideBarViewController *)self collectionView];
  v5 = [collectionView2 visibleSupplementaryViewsOfKind:*MEMORY[0x277D77388]];
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

- (void)_sendSideBarInteractionEventForItem:(id)item
{
  itemCopy = item;
  v4 = objc_opt_new();
  [v4 na_safeSetObject:itemCopy forKey:*MEMORY[0x277D13538]];
  objc_opt_class();
  v15 = itemCopy;
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
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v14 = [v12 numberWithInteger:{objc_msgSend(currentDevice, "orientation")}];
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