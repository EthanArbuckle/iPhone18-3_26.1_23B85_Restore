@interface HUSoftwareUpdateStandaloneViewController
- (BOOL)_homePodSoftwareUpdateInProgress;
- (BOOL)shouldHideSeparatorsForCell:(id)cell indexPath:(id)path;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUSoftwareUpdateStandaloneViewController)initWithHome:(id)home;
- (HUSoftwareUpdateStandaloneViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style;
- (id)_createUpdateAllBarButton;
- (id)itemModuleControllers;
- (id)keyCommands;
- (id)softwareUpdateModuleController:(id)controller dismissViewController:(id)viewController;
- (id)softwareUpdateModuleController:(id)controller navigateToViewController:(id)viewController;
- (void)_didTapUpdateAllButton:(id)button;
- (void)_fetchAccessoryDiagnosticInfo;
- (void)_kickoffSoftwareUpdate;
- (void)_presentHomePodSoftwareUpdateAlreadyInProgressAlert;
- (void)_refreshUpdateAllBarButton;
- (void)_triggerRefresh:(id)refresh;
- (void)bannerView:(id)view footerViewTapped:(id)tapped;
- (void)diffableDataItemManager:(id)manager didUpdateItems:(id)items addItems:(id)addItems removeItems:(id)removeItems;
- (void)doneButtonPressed:(id)pressed;
- (void)itemManager:(id)manager didUpdateResultsForItem:(id)item atIndexPath:(id)path;
- (void)refreshDataModelForHome:(id)home;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation HUSoftwareUpdateStandaloneViewController

- (void)refreshDataModelForHome:(id)home
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_20D567C58();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_20D567C18();
  homeCopy = home;
  v9 = sub_20D567C08();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = homeCopy;
  sub_20CF18F74(0, 0, v6, &unk_20D5C5770, v10);
}

- (HUSoftwareUpdateStandaloneViewController)initWithHome:(id)home
{
  homeCopy = home;
  v5 = [[HUSoftwareUpdateStandaloneItemManager alloc] initWithDelegate:self home:homeCopy];

  v8.receiver = self;
  v8.super_class = HUSoftwareUpdateStandaloneViewController;
  v6 = [(HUItemTableViewController *)&v8 initWithItemManager:v5 tableViewStyle:1];

  return v6;
}

- (HUSoftwareUpdateStandaloneViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateStandaloneViewController.m" lineNumber:77 description:{@"%s is unavailable; use %@ instead", "-[HUSoftwareUpdateStandaloneViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = HUSoftwareUpdateStandaloneViewController;
  [(HUItemTableViewController *)&v10 viewDidLoad];
  view = [(HUSoftwareUpdateStandaloneViewController *)self view];
  [view frame];
  v6 = [HUGridLayoutOptions defaultOptionsForViewSize:v4, v5];

  [(HUSoftwareUpdateStandaloneViewController *)self setLayoutOptions:v6];
  v7 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdatePageTitle", @"HUSoftwareUpdatePageTitle", 1);
  [(HUSoftwareUpdateStandaloneViewController *)self setTitle:v7];

  if ([(HUSoftwareUpdateStandaloneViewController *)self showDoneButtonInNavBar])
  {
    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_doneButtonPressed_];
    navigationItem = [(HUSoftwareUpdateStandaloneViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v8];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = HUSoftwareUpdateStandaloneViewController;
  [(HUItemTableViewController *)&v4 viewDidAppear:appear];
  [(HUSoftwareUpdateStandaloneViewController *)self _refreshUpdateAllBarButton];
}

- (id)_createUpdateAllBarButton
{
  v3 = objc_alloc_init(HUDownloadControl);
  [(HUDownloadControl *)v3 setAllowsAddImage:0];
  [(HUDownloadControl *)v3 setDisplayStyle:1];
  systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  [(HUDownloadControl *)v3 setFilledTintColor:systemWhiteColor];

  hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
  [(HUDownloadControl *)v3 setTintColor:hf_keyColor];

  [(HUDownloadControl *)v3 addTarget:self action:sel__didTapUpdateAllButton_ forControlEvents:64];
  [(HUDownloadControl *)v3 setControlStatus:1 animated:0x3FF0000000000000, 0];
  v6 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateControlTitle_UpdateAll", @"HUSoftwareUpdateControlTitle_UpdateAll", 1);
  [(HUDownloadControl *)v3 setTitle:v6 forControlStatusType:1];

  v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v3];

  return v7;
}

- (void)_refreshUpdateAllBarButton
{
  if ([(HUSoftwareUpdateStandaloneViewController *)self showDoneButtonInNavBar])
  {
    return;
  }

  itemManager = [(HUItemTableViewController *)self itemManager];
  updateAllItem = [itemManager updateAllItem];
  latestResults = [updateAllItem latestResults];

  v5 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13DF8]];
    v6 = v7 == 0;
  }

  updateAllBarButton = [(HUSoftwareUpdateStandaloneViewController *)self updateAllBarButton];

  if ((v6 ^ (updateAllBarButton == 0)))
  {
    if (!v6)
    {
      goto LABEL_23;
    }

    goto LABEL_10;
  }

  if (v6)
  {
    _createUpdateAllBarButton = [(HUSoftwareUpdateStandaloneViewController *)self _createUpdateAllBarButton];
    [(HUSoftwareUpdateStandaloneViewController *)self setUpdateAllBarButton:_createUpdateAllBarButton];

    updateAllBarButton2 = [(HUSoftwareUpdateStandaloneViewController *)self updateAllBarButton];
    navigationItem = [(HUSoftwareUpdateStandaloneViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:updateAllBarButton2];

    updateAllBarButton3 = [(HUSoftwareUpdateStandaloneViewController *)self updateAllBarButton];
    [updateAllBarButton3 setHidden:1];

LABEL_10:
    objc_opt_class();
    updateAllBarButton4 = [(HUSoftwareUpdateStandaloneViewController *)self updateAllBarButton];
    customView = [updateAllBarButton4 customView];
    if (objc_opt_isKindOfClass())
    {
      v15 = customView;
    }

    else
    {
      v15 = 0;
    }

    navigationItem2 = v15;

    v17 = [navigationItem2 titleForControlStatusType:1];
    v18 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13DE8]];
    if (([v17 isEqualToString:v18] & 1) == 0)
    {
      [navigationItem2 setTitle:v18 forControlStatusType:1];
      [navigationItem2 sizeToFit];
    }

    v19 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D140F0]];
    bOOLValue = [v19 BOOLValue];

    if (bOOLValue)
    {
      v21 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14108]];
      if (v21)
      {
        hf_keyColor2 = v21;
        [v21 floatValue];
        v24 = v23;
        systemFillColor = [MEMORY[0x277D75348] systemFillColor];
        [navigationItem2 setFilledTintColor:systemFillColor];

        hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
        [navigationItem2 setTintColor:hf_keyColor];

        v27 = v24;
        v28 = 4;
      }

      else
      {
        systemFillColor2 = [MEMORY[0x277D75348] systemFillColor];
        [navigationItem2 setFilledTintColor:systemFillColor2];

        systemFillColor3 = [MEMORY[0x277D75348] systemFillColor];
        [navigationItem2 setTintColor:systemFillColor3];

        hf_keyColor2 = 0;
        v27 = 1.0;
        v28 = 3;
      }
    }

    else
    {
      systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
      [navigationItem2 setFilledTintColor:systemWhiteColor];

      hf_keyColor2 = [MEMORY[0x277D75348] hf_keyColor];
      [navigationItem2 setTintColor:hf_keyColor2];
      v27 = 1.0;
      v28 = 1;
    }

    [navigationItem2 setControlStatus:v28 animated:{*&v27, 1}];
    [navigationItem2 setEnabled:bOOLValue ^ 1u];

    goto LABEL_22;
  }

  [(HUSoftwareUpdateStandaloneViewController *)self setUpdateAllBarButton:0];
  navigationItem2 = [(HUSoftwareUpdateStandaloneViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:0];
LABEL_22:

LABEL_23:
}

- (void)scrollViewDidScroll:(id)scroll
{
  updateAllBarButton = [(HUSoftwareUpdateStandaloneViewController *)self updateAllBarButton];

  if (updateAllBarButton)
  {
    tableView = [(HUSoftwareUpdateStandaloneViewController *)self tableView];
    visibleCells = [tableView visibleCells];

    v6 = [visibleCells na_any:&__block_literal_global_160];
    updateAllBarButton2 = [(HUSoftwareUpdateStandaloneViewController *)self updateAllBarButton];
    [updateAllBarButton2 setHidden:v6];
  }
}

uint64_t __64__HUSoftwareUpdateStandaloneViewController_scrollViewDidScroll___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)viewWillAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = HUSoftwareUpdateStandaloneViewController;
  [(HUItemTableViewController *)&v11 viewWillAppear:appear];
  if (![(HUSoftwareUpdateStandaloneViewController *)self viewVisible])
  {
    objc_initWeak(&location, self);
    itemManager = [(HUItemTableViewController *)self itemManager];
    v5 = MEMORY[0x277D85DD0];
    v6 = 3221225472;
    v7 = __59__HUSoftwareUpdateStandaloneViewController_viewWillAppear___block_invoke;
    v8 = &unk_277DBFC48;
    objc_copyWeak(&v9, &location);
    [itemManager addHomeSetupSuccessBlock:&v5];

    [(HUSoftwareUpdateStandaloneViewController *)self setViewVisible:1, v5, v6, v7, v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __59__HUSoftwareUpdateStandaloneViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _kickoffSoftwareUpdate];
  [WeakRetained _fetchAccessoryDiagnosticInfo];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = HUSoftwareUpdateStandaloneViewController;
  [(HUItemTableViewController *)&v4 viewDidDisappear:disappear];
  [(HUSoftwareUpdateStandaloneViewController *)self setViewVisible:0];
}

- (void)viewWillLayoutSubviews
{
  v19.receiver = self;
  v19.super_class = HUSoftwareUpdateStandaloneViewController;
  [(HUItemTableViewController *)&v19 viewWillLayoutSubviews];
  objc_opt_class();
  updateAllBarButton = [(HUSoftwareUpdateStandaloneViewController *)self updateAllBarButton];
  customView = [updateAllBarButton customView];
  if (objc_opt_isKindOfClass())
  {
    v5 = customView;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  updateAllBarButton2 = [(HUSoftwareUpdateStandaloneViewController *)self updateAllBarButton];
  customView2 = [updateAllBarButton2 customView];
  [customView2 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v6 intrinsicContentSize];
  v16 = v15;

  updateAllBarButton3 = [(HUSoftwareUpdateStandaloneViewController *)self updateAllBarButton];
  customView3 = [updateAllBarButton3 customView];
  [customView3 setFrame:{v10, v12, v16, v14}];
}

- (id)itemModuleControllers
{
  v3 = [MEMORY[0x277CBEB58] set];
  softwareUpdateItemModuleController = [(HUSoftwareUpdateStandaloneViewController *)self softwareUpdateItemModuleController];

  if (!softwareUpdateItemModuleController)
  {
    v5 = [HUSoftwareUpdateItemModuleController alloc];
    itemManager = [(HUItemTableViewController *)self itemManager];
    softwareUpdateModule = [itemManager softwareUpdateModule];
    v8 = [(HUSoftwareUpdateItemModuleController *)v5 initWithModule:softwareUpdateModule delegate:self expandableTextViewCellDelegate:self];
    [(HUSoftwareUpdateStandaloneViewController *)self setSoftwareUpdateItemModuleController:v8];
  }

  softwareUpdateItemModuleController2 = [(HUSoftwareUpdateStandaloneViewController *)self softwareUpdateItemModuleController];
  [v3 addObject:softwareUpdateItemModuleController2];

  firmwareUpdateItemModuleController = [(HUSoftwareUpdateStandaloneViewController *)self firmwareUpdateItemModuleController];

  if (!firmwareUpdateItemModuleController)
  {
    v11 = [HUFirmwareUpdateItemModuleController alloc];
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    firmwareUpdateModule = [itemManager2 firmwareUpdateModule];
    v14 = [(HUFirmwareUpdateItemModuleController *)v11 initWithModule:firmwareUpdateModule expandableTextViewCellDelegate:self];
    [(HUSoftwareUpdateStandaloneViewController *)self setFirmwareUpdateItemModuleController:v14];
  }

  firmwareUpdateItemModuleController2 = [(HUSoftwareUpdateStandaloneViewController *)self firmwareUpdateItemModuleController];
  [v3 addObject:firmwareUpdateItemModuleController2];

  return v3;
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  itemManager = [(HUItemTableViewController *)self itemManager];
  updateAllItem = [itemManager updateAllItem];
  v9 = [itemCopy isEqual:updateAllItem];

  if (v9)
  {
    goto LABEL_5;
  }

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  autoUpdateItem = [itemManager2 autoUpdateItem];
  if ([itemCopy isEqual:autoUpdateItem])
  {

LABEL_5:
    v15 = objc_opt_class();
    goto LABEL_6;
  }

  itemManager3 = [(HUItemTableViewController *)self itemManager];
  autoUpdateThirdPartyItem = [itemManager3 autoUpdateThirdPartyItem];
  v14 = [itemCopy isEqual:autoUpdateThirdPartyItem];

  if (v14)
  {
    goto LABEL_5;
  }

  itemManager4 = [(HUItemTableViewController *)self itemManager];
  homeUpdateBannerItem = [itemManager4 homeUpdateBannerItem];
  v19 = [itemCopy isEqual:homeUpdateBannerItem];

  if (v19)
  {
    goto LABEL_5;
  }

  itemManager5 = [(HUItemTableViewController *)self itemManager];
  fetchItem = [itemManager5 fetchItem];
  v22 = [itemCopy isEqual:fetchItem];

  if (v22)
  {
    goto LABEL_5;
  }

  itemManager6 = [(HUItemTableViewController *)self itemManager];
  updatedRecentlyItem = [itemManager6 updatedRecentlyItem];
  if ([itemCopy isEqual:updatedRecentlyItem])
  {
LABEL_14:

    goto LABEL_5;
  }

  itemManager7 = [(HUItemTableViewController *)self itemManager];
  betaUpdatesItem = [itemManager7 betaUpdatesItem];
  if ([itemCopy isEqual:betaUpdatesItem])
  {

    goto LABEL_14;
  }

  itemManager8 = [(HUItemTableViewController *)self itemManager];
  carrySettingsItem = [itemManager8 carrySettingsItem];
  v29 = [itemCopy isEqual:carrySettingsItem];

  if (v29)
  {
    goto LABEL_5;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateStandaloneViewController.m" lineNumber:278 description:{@"Unhandled item: %@", itemCopy}];

  v15 = 0;
LABEL_6:

  return v15;
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  v54.receiver = self;
  v54.super_class = HUSoftwareUpdateStandaloneViewController;
  [(HUItemTableViewController *)&v54 setupCell:cellCopy forItem:itemCopy indexPath:path];
  itemManager = [(HUItemTableViewController *)self itemManager];
  autoUpdateItem = [itemManager autoUpdateItem];
  if ([itemCopy isEqual:autoUpdateItem])
  {

    goto LABEL_4;
  }

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  autoUpdateThirdPartyItem = [itemManager2 autoUpdateThirdPartyItem];
  v14 = [itemCopy isEqual:autoUpdateThirdPartyItem];

  if (!v14)
  {
    itemManager3 = [(HUItemTableViewController *)self itemManager];
    homeUpdateBannerItem = [itemManager3 homeUpdateBannerItem];
    v23 = [itemCopy isEqual:homeUpdateBannerItem];

    if (v23)
    {
      v24 = objc_opt_class();
      v25 = cellCopy;
      if (v25)
      {
        if (objc_opt_isKindOfClass())
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }

        v18 = v25;
        if (v26)
        {
          goto LABEL_22;
        }

        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
        [currentHandler handleFailureInFunction:v28 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v24, objc_opt_class()}];
      }

      v18 = 0;
LABEL_22:

      layoutOptions = [(HUSoftwareUpdateStandaloneViewController *)self layoutOptions];
      bannerCellOptions = [layoutOptions bannerCellOptions];
      layer = [v25 layer];
      [layer cornerRadius];
      [bannerCellOptions setCellCornerRadius:?];

      layoutOptions2 = [(HUSoftwareUpdateStandaloneViewController *)self layoutOptions];
      bannerCellOptions2 = [layoutOptions2 bannerCellOptions];
      [v18 setLayoutOptions:bannerCellOptions2];

      [v18 setDelegate:self];
      bannerView = [v18 bannerView];
      softwareUpdateBannerView = self->_softwareUpdateBannerView;
      self->_softwareUpdateBannerView = bannerView;

      goto LABEL_12;
    }

    itemManager4 = [(HUItemTableViewController *)self itemManager];
    updateAllItem = [itemManager4 updateAllItem];
    v38 = [itemCopy isEqual:updateAllItem];

    if (v38)
    {
      objc_opt_class();
      v39 = cellCopy;
      if (objc_opt_isKindOfClass())
      {
        v40 = v39;
      }

      else
      {
        v40 = 0;
      }

      v18 = v40;

      downloadControl = [v18 downloadControl];
      [downloadControl setAllowsAddImage:0];
      [downloadControl setDisplayStyle:1];
      [downloadControl addTarget:self action:sel__didTapUpdateAllButton_ forControlEvents:64];

      goto LABEL_12;
    }

    itemManager5 = [(HUItemTableViewController *)self itemManager];
    updatedRecentlyItem = [itemManager5 updatedRecentlyItem];
    if (([itemCopy isEqual:updatedRecentlyItem] & 1) == 0)
    {
      itemManager6 = [(HUItemTableViewController *)self itemManager];
      betaUpdatesItem = [itemManager6 betaUpdatesItem];
      if (([itemCopy isEqual:betaUpdatesItem] & 1) == 0)
      {
        itemManager7 = [(HUItemTableViewController *)self itemManager];
        carrySettingsItem = [itemManager7 carrySettingsItem];
        v53 = [itemCopy isEqual:carrySettingsItem];

        if ((v53 & 1) == 0)
        {
          goto LABEL_13;
        }

LABEL_32:
        v46 = objc_opt_class();
        v47 = cellCopy;
        if (v47)
        {
          if (objc_opt_isKindOfClass())
          {
            v48 = v47;
          }

          else
          {
            v48 = 0;
          }

          v18 = v47;
          if (v48)
          {
            goto LABEL_39;
          }

          currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
          v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
          [currentHandler2 handleFailureInFunction:v50 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v46, objc_opt_class()}];
        }

        v18 = 0;
LABEL_39:

        [v18 setHideIcon:1];
        [v18 setAccessoryType:1];
        goto LABEL_12;
      }
    }

    goto LABEL_32;
  }

LABEL_4:
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
      goto LABEL_11;
    }

    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler3 handleFailureInFunction:v20 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v15, objc_opt_class()}];
  }

  v18 = 0;
LABEL_11:

  [v18 setDelegate:self];
LABEL_12:

LABEL_13:
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  v41.receiver = self;
  v41.super_class = HUSoftwareUpdateStandaloneViewController;
  [(HUItemTableViewController *)&v41 updateCell:cellCopy forItem:itemCopy indexPath:path animated:animatedCopy];
  itemManager = [(HUItemTableViewController *)self itemManager];
  autoUpdateItem = [itemManager autoUpdateItem];
  if ([itemCopy isEqual:autoUpdateItem])
  {

    goto LABEL_4;
  }

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  autoUpdateThirdPartyItem = [itemManager2 autoUpdateThirdPartyItem];
  v16 = [itemCopy isEqual:autoUpdateThirdPartyItem];

  if (!v16)
  {
    itemManager3 = [(HUItemTableViewController *)self itemManager];
    updateAllItem = [itemManager3 updateAllItem];
    v27 = [itemCopy isEqual:updateAllItem];

    if (!v27)
    {
      goto LABEL_13;
    }

    objc_opt_class();
    v28 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v20 = v29;

    downloadControl = [v20 downloadControl];
    latestResults = [itemCopy latestResults];
    v32 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D140F0]];
    bOOLValue = [v32 BOOLValue];

    if (bOOLValue)
    {
      latestResults2 = [itemCopy latestResults];
      v35 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D14108]];

      systemFillColor = [MEMORY[0x277D75348] systemFillColor];
      [downloadControl setFilledTintColor:systemFillColor];

      v37 = MEMORY[0x277D75348];
      if (!v35)
      {
        systemFillColor2 = [MEMORY[0x277D75348] systemFillColor];
LABEL_23:
        v40 = systemFillColor2;
        [downloadControl setTintColor:systemFillColor2];

        goto LABEL_12;
      }
    }

    else
    {
      systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
      [downloadControl setFilledTintColor:systemWhiteColor];

      v37 = MEMORY[0x277D75348];
    }

    systemFillColor2 = [v37 hf_keyColor];
    goto LABEL_23;
  }

LABEL_4:
  v17 = objc_opt_class();
  v18 = cellCopy;
  if (v18)
  {
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v18;
    if (v19)
    {
      goto LABEL_11;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v22 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v17, objc_opt_class()}];
  }

  v20 = 0;
LABEL_11:

  latestResults3 = [itemCopy latestResults];
  v24 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
  [v20 setDisabled:{objc_msgSend(v24, "BOOLValue")}];

  [v20 setDelegate:self];
LABEL_12:

LABEL_13:
}

- (BOOL)shouldHideSeparatorsForCell:(id)cell indexPath:(id)path
{
  v8.receiver = self;
  v8.super_class = HUSoftwareUpdateStandaloneViewController;
  cellCopy = cell;
  LOBYTE(path) = [(HUItemTableViewController *)&v8 shouldHideSeparatorsForCell:cellCopy indexPath:path];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass | path) & 1;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v57 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  v55.receiver = self;
  v55.super_class = HUSoftwareUpdateStandaloneViewController;
  [(HUItemTableViewController *)&v55 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  itemManager = [(HUItemTableViewController *)self itemManager];
  home = [itemManager home];
  hf_homePods = [home hf_homePods];

  v11 = [MEMORY[0x277CBEB58] set];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v12 = hf_homePods;
  v13 = [v12 countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v52;
    do
    {
      v16 = 0;
      do
      {
        if (*v52 != v15)
        {
          objc_enumerationMutation(v12);
        }

        uniqueIdentifier = [*(*(&v51 + 1) + 8 * v16) uniqueIdentifier];
        [v11 addObject:uniqueIdentifier];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v14);
  }

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  v19 = [itemManager2 displayedItemAtIndexPath:pathCopy];

  itemManager3 = [(HUItemTableViewController *)self itemManager];
  updatedRecentlyItem = [itemManager3 updatedRecentlyItem];
  v22 = [v19 isEqual:updatedRecentlyItem];

  if (v22)
  {
    v23 = [HUSoftwareUpdateRecentUpdatesViewController alloc];
    itemManager4 = [(HUItemTableViewController *)self itemManager];
    home2 = [itemManager4 home];
    v26 = [(HUSoftwareUpdateRecentUpdatesViewController *)v23 initWithHome:home2];

    navigationController = [(HUSoftwareUpdateStandaloneViewController *)self navigationController];
    v28 = [navigationController hu_pushPreloadableViewController:v26 animated:1];
LABEL_21:

    goto LABEL_22;
  }

  itemManager5 = [(HUItemTableViewController *)self itemManager];
  betaUpdatesItem = [itemManager5 betaUpdatesItem];
  v31 = [v19 isEqual:betaUpdatesItem];

  if (v31)
  {
    if (![MEMORY[0x277CFD0C0] isNoDaemonMessageChannelEnabled] || (v32 = objc_alloc(MEMORY[0x277D17E18]), -[HUItemTableViewController itemManager](self, "itemManager"), v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "home"), v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "uniqueIdentifier"), v35 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v32, "initWithHomeID:homeKitIdentifiers:", v35, v11), v35, v34, v33, !v26))
    {
      v36 = objc_alloc(MEMORY[0x277D17E18]);
      itemManager6 = [(HUItemTableViewController *)self itemManager];
      home3 = [itemManager6 home];
      uniqueIdentifier2 = [home3 uniqueIdentifier];
      v26 = [v36 initWithHomeID:uniqueIdentifier2];
    }

    if ([MEMORY[0x277D17E18] isMultiSeedingEnrollmentEnabled])
    {
      [(HUSoftwareUpdateStandaloneViewController *)self presentViewController:v26 animated:1 completion:0];
LABEL_22:

      goto LABEL_23;
    }

    goto LABEL_20;
  }

  itemManager7 = [(HUItemTableViewController *)self itemManager];
  carrySettingsItem = [itemManager7 carrySettingsItem];
  v42 = [v19 isEqual:carrySettingsItem];

  if (v42)
  {
    if (![MEMORY[0x277CFD0C0] isNoDaemonMessageChannelEnabled] || (v43 = objc_alloc(MEMORY[0x277D17E20]), -[HUItemTableViewController itemManager](self, "itemManager"), v44 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v44, "home"), v45 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v45, "uniqueIdentifier"), v46 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v43, "initWithHomeID:homeKitIdentifiers:", v46, v11), v46, v45, v44, !v26))
    {
      v47 = objc_alloc(MEMORY[0x277D17E20]);
      itemManager8 = [(HUItemTableViewController *)self itemManager];
      home4 = [itemManager8 home];
      uniqueIdentifier3 = [home4 uniqueIdentifier];
      v26 = [v47 initWithHomeID:uniqueIdentifier3];
    }

LABEL_20:
    navigationController = [(HUSoftwareUpdateStandaloneViewController *)self navigationController];
    [navigationController pushViewController:v26 animated:1];
    goto LABEL_21;
  }

LABEL_23:
}

- (void)bannerView:(id)view footerViewTapped:(id)tapped
{
  v17 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  softwareUpdateBannerView = [(HUSoftwareUpdateStandaloneViewController *)self softwareUpdateBannerView];
  v7 = [viewCopy isEqual:softwareUpdateBannerView];

  if (v7)
  {
    _homePodSoftwareUpdateInProgress = [(HUSoftwareUpdateStandaloneViewController *)self _homePodSoftwareUpdateInProgress];
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16[0] = 67109120;
      v16[1] = _homePodSoftwareUpdateInProgress;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "<HUSoftwareUpdateStandaloneViewController-bannerView:footerViewTapped:> User tapped button from software update banner | hpSWUpdateInProgress = %{BOOL}d", v16, 8u);
    }

    if (_homePodSoftwareUpdateInProgress)
    {
      [(HUSoftwareUpdateStandaloneViewController *)self _presentHomePodSoftwareUpdateAlreadyInProgressAlert];
    }

    else
    {
      itemManager = [(HUItemTableViewController *)self itemManager];
      home = [itemManager home];
      itemManager2 = [(HUItemTableViewController *)self itemManager];
      devices = [itemManager2 devices];
      v14 = [home hf_homeHubMigrationBannerTapActionFromViewController:self devices:devices];

      v15 = [v14 flatMap:&__block_literal_global_136];
    }
  }
}

id __72__HUSoftwareUpdateStandaloneViewController_bannerView_footerViewTapped___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "<HUSoftwareUpdateStandaloneViewController-bannerView:footerViewTapped:> Completed handling migration banner tapping with result %@", &v6, 0xCu);
  }

  v4 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v4;
}

- (void)_didTapUpdateAllButton:(id)button
{
  softwareUpdateItemModuleController = [(HUSoftwareUpdateStandaloneViewController *)self softwareUpdateItemModuleController];
  [softwareUpdateItemModuleController updateAllAccessories];
}

- (void)doneButtonPressed:(id)pressed
{
  presentingViewController = [(HUSoftwareUpdateStandaloneViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  cellCopy = cell;
  item = [cellCopy item];
  itemManager = [(HUItemTableViewController *)self itemManager];
  autoUpdateItem = [itemManager autoUpdateItem];
  v11 = [item isEqual:autoUpdateItem];

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  itemManager3 = itemManager2;
  if (v11)
  {
    home = [itemManager2 home];
    v15 = [home hf_updateAutomaticSoftwareUpdateEnabled:onCopy];
  }

  else
  {
    autoUpdateThirdPartyItem = [itemManager2 autoUpdateThirdPartyItem];
    v17 = [item isEqual:autoUpdateThirdPartyItem];

    if (!v17)
    {
      goto LABEL_7;
    }

    itemManager3 = [(HUItemTableViewController *)self itemManager];
    home = [itemManager3 home];
    v15 = [home hf_updateAutomaticThirdPartyAccessorySoftwareUpdateEnabled:onCopy];
  }

  v18 = v15;

  if (v18)
  {
    objc_initWeak(&location, self);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __65__HUSoftwareUpdateStandaloneViewController_switchCell_didTurnOn___block_invoke;
    v24[3] = &unk_277DBFC70;
    objc_copyWeak(v26, &location);
    v25 = item;
    v26[1] = a2;
    v19 = [v18 addCompletionBlock:v24];

    objc_destroyWeak(v26);
    objc_destroyWeak(&location);
  }

LABEL_7:
  objc_opt_class();
  latestResults = [item latestResults];
  v21 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F68]];
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  [MEMORY[0x277D143D8] sendSwitchCellToggleEventForItem:item isOn:onCopy title:v23 fromSourceViewController:self];
}

void __65__HUSoftwareUpdateStandaloneViewController_switchCell_didTurnOn___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v4)
  {
    v6 = [MEMORY[0x277D14640] sharedHandler];
    [v6 handleError:v4];
  }

  if (*(a1 + 32))
  {
    v7 = MEMORY[0x277D14788];
    v8 = [MEMORY[0x277CBEB98] setWithObject:?];
    v9 = [v7 requestToUpdateItems:v8 senderSelector:*(a1 + 48)];

    v10 = [WeakRetained itemManager];
    v11 = [v10 performItemUpdateRequest:v9];

LABEL_8:
    goto LABEL_9;
  }

  if (WeakRetained)
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_error_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_ERROR, "Failure to update software update preference due to missing autoupdateItem", v14, 2u);
    }

    goto LABEL_8;
  }

LABEL_9:
  v12 = [WeakRetained itemManager];
  v13 = [v12 home];
  [WeakRetained refreshDataModelForHome:v13];
}

- (id)softwareUpdateModuleController:(id)controller dismissViewController:(id)viewController
{
  v5 = objc_alloc_init(MEMORY[0x277D2C900]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __97__HUSoftwareUpdateStandaloneViewController_softwareUpdateModuleController_dismissViewController___block_invoke;
  v8[3] = &unk_277DB8488;
  v6 = v5;
  v9 = v6;
  [(HUSoftwareUpdateStandaloneViewController *)self dismissViewControllerAnimated:1 completion:v8];

  return v6;
}

- (id)softwareUpdateModuleController:(id)controller navigateToViewController:(id)viewController
{
  viewControllerCopy = viewController;
  navigationController = [(HUSoftwareUpdateStandaloneViewController *)self navigationController];
  v7 = [navigationController hu_pushPreloadableViewController:viewControllerCopy animated:1];

  return v7;
}

- (void)diffableDataItemManager:(id)manager didUpdateItems:(id)items addItems:(id)addItems removeItems:(id)removeItems
{
  addItemsCopy = addItems;
  removeItemsCopy = removeItems;
  v15.receiver = self;
  v15.super_class = HUSoftwareUpdateStandaloneViewController;
  itemsCopy = items;
  [(HUItemTableViewController *)&v15 diffableDataItemManager:manager didUpdateItems:itemsCopy addItems:addItemsCopy removeItems:removeItemsCopy];
  v13 = [(HUItemTableViewController *)self itemManager:v15.receiver];
  updateAllItem = [v13 updateAllItem];

  LOBYTE(v13) = [itemsCopy containsObject:updateAllItem];
  if ((v13 & 1) != 0 || ([addItemsCopy containsObject:updateAllItem] & 1) != 0 || objc_msgSend(removeItemsCopy, "containsObject:", updateAllItem))
  {
    [(HUSoftwareUpdateStandaloneViewController *)self _refreshUpdateAllBarButton];
  }
}

- (void)itemManager:(id)manager didUpdateResultsForItem:(id)item atIndexPath:(id)path
{
  managerCopy = manager;
  itemCopy = item;
  pathCopy = path;
  itemManager = [(HUItemTableViewController *)self itemManager];
  fetchItem = [itemManager fetchItem];

  if (fetchItem == itemCopy)
  {
    latestResults = [itemCopy latestResults];
    v14 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
    bOOLValue = [v14 BOOLValue];

    [(HUSoftwareUpdateStandaloneViewController *)self setAllowRefresh:bOOLValue ^ 1u];
  }

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  updateAllItem = [itemManager2 updateAllItem];
  v18 = [itemCopy isEqual:updateAllItem];

  if (v18)
  {
    [(HUSoftwareUpdateStandaloneViewController *)self _refreshUpdateAllBarButton];
  }

  v19.receiver = self;
  v19.super_class = HUSoftwareUpdateStandaloneViewController;
  [(HUItemTableViewController *)&v19 itemManager:managerCopy didUpdateResultsForItem:itemCopy atIndexPath:pathCopy];
}

- (void)_triggerRefresh:(id)refresh
{
  softwareUpdateFetchFuture = [(HUSoftwareUpdateStandaloneViewController *)self softwareUpdateFetchFuture];
  isFinished = [softwareUpdateFetchFuture isFinished];

  if (isFinished)
  {

    [(HUSoftwareUpdateStandaloneViewController *)self _kickoffSoftwareUpdate];
  }
}

- (void)_kickoffSoftwareUpdate
{
  [(HUSoftwareUpdateStandaloneViewController *)self setAllowRefresh:0];
  itemManager = [(HUItemTableViewController *)self itemManager];
  triggerSoftwareUpdateFetch = [itemManager triggerSoftwareUpdateFetch];
  [(HUSoftwareUpdateStandaloneViewController *)self setSoftwareUpdateFetchFuture:triggerSoftwareUpdateFetch];

  objc_initWeak(&location, self);
  v6 = +[HUSoftwareUpdateUIManager sharedManager];
  itemManager2 = [(HUItemTableViewController *)self itemManager];
  home = [itemManager2 home];
  v9 = [v6 fetchAvailableUpdatesForHome:home options:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__HUSoftwareUpdateStandaloneViewController__kickoffSoftwareUpdate__block_invoke;
  v11[3] = &unk_277DBB368;
  objc_copyWeak(v12, &location);
  v12[1] = a2;
  v10 = [v9 addCompletionBlock:v11];

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

void __66__HUSoftwareUpdateStandaloneViewController__kickoffSoftwareUpdate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained softwareUpdateFetchFuture];
    [v8 finishWithResult:v15 error:v5];

    v9 = [v7 itemManager];
    v10 = MEMORY[0x277CBEB98];
    v11 = [v7 itemManager];
    v12 = [v11 fetchItem];
    v13 = [v10 setWithObject:v12];
    v14 = [v9 updateResultsForItems:v13 senderSelector:*(a1 + 40)];
  }
}

- (void)_fetchAccessoryDiagnosticInfo
{
  v18 = *MEMORY[0x277D85DE8];
  itemManager = [(HUItemTableViewController *)self itemManager];
  home = [itemManager home];
  hf_homePods = [home hf_homePods];

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  home2 = [itemManager2 home];
  if ([home2 hf_currentUserIsOwner])
  {
    v8 = [hf_homePods count];

    if (v8)
    {
      [hf_homePods na_each:&__block_literal_global_153_0];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = MEMORY[0x277CCABB0];
    itemManager3 = [(HUItemTableViewController *)self itemManager];
    home3 = [itemManager3 home];
    v13 = [v10 numberWithBool:{objc_msgSend(home3, "hf_currentUserIsOwner")}];
    v14 = 138412546;
    v15 = v13;
    v16 = 2112;
    v17 = hf_homePods;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Not fetching diagnostic info: [isOwner:%@], [homePods:%@]", &v14, 0x16u);
  }

LABEL_8:
}

void __73__HUSoftwareUpdateStandaloneViewController__fetchAccessoryDiagnosticInfo__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v2 = [MEMORY[0x277D146E8] sharedDispatcher];
  v3 = [v2 diagnosticInfoManager];
  v4 = [v3 fetchDiagnosticInfoForFirstPartyAccessory:v5];
}

- (void)_presentHomePodSoftwareUpdateAlreadyInProgressAlert
{
  v3 = MEMORY[0x277D75110];
  v4 = _HULocalizedStringWithDefaultValue(@"HUHomePodSoftwareUpdateAlreadyInProgressAlertTitle", @"HUHomePodSoftwareUpdateAlreadyInProgressAlertTitle", 1);
  v5 = _HULocalizedStringWithDefaultValue(@"HUHomePodSoftwareUpdateAlreadyInProgressAlertDescription", @"HUHomePodSoftwareUpdateAlreadyInProgressAlertDescription", 1);
  v9 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v6 = MEMORY[0x277D750F8];
  v7 = _HULocalizedStringWithDefaultValue(@"HUOkTitle", @"HUOkTitle", 1);
  v8 = [v6 actionWithTitle:v7 style:1 handler:&__block_literal_global_168_0];

  [v9 addAction:v8];
  [(HUSoftwareUpdateStandaloneViewController *)self presentViewController:v9 animated:1 completion:&__block_literal_global_171_0];
}

void __95__HUSoftwareUpdateStandaloneViewController__presentHomePodSoftwareUpdateAlreadyInProgressAlert__block_invoke()
{
  v0 = HFLogForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_20CEB6000, v0, OS_LOG_TYPE_DEFAULT, "[HUSoftwareUpdateStandaloneViewController:_presentHomePodSoftwareUpdateAlreadyInProgressAlert] User tapped ok on the alert", v1, 2u);
  }
}

void __95__HUSoftwareUpdateStandaloneViewController__presentHomePodSoftwareUpdateAlreadyInProgressAlert__block_invoke_169()
{
  v0 = HFLogForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_20CEB6000, v0, OS_LOG_TYPE_DEFAULT, "[HUSoftwareUpdateStandaloneViewController:_presentHomePodSoftwareUpdateAlreadyInProgressAlert] presented alert controller", v1, 2u);
  }
}

- (BOOL)_homePodSoftwareUpdateInProgress
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  home = [itemManager home];
  hf_homePods = [home hf_homePods];

  v5 = [objc_alloc(MEMORY[0x277D14B28]) initWithAccessories:hf_homePods];
  LOBYTE(home) = [v5 softwareUpdatesInProgress] != 0;

  return home;
}

- (id)keyCommands
{
  v6[1] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D14CE8] useMacIdiom] && -[HUSoftwareUpdateStandaloneViewController allowRefresh](self, "allowRefresh"))
  {
    v3 = [MEMORY[0x277D75650] keyCommandWithInput:@"R" modifierFlags:0x100000 action:sel__triggerRefresh_];
    v6[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

@end