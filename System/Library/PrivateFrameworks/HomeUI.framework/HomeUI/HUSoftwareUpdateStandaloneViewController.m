@interface HUSoftwareUpdateStandaloneViewController
- (BOOL)_homePodSoftwareUpdateInProgress;
- (BOOL)shouldHideSeparatorsForCell:(id)a3 indexPath:(id)a4;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUSoftwareUpdateStandaloneViewController)initWithHome:(id)a3;
- (HUSoftwareUpdateStandaloneViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4;
- (id)_createUpdateAllBarButton;
- (id)itemModuleControllers;
- (id)keyCommands;
- (id)softwareUpdateModuleController:(id)a3 dismissViewController:(id)a4;
- (id)softwareUpdateModuleController:(id)a3 navigateToViewController:(id)a4;
- (void)_didTapUpdateAllButton:(id)a3;
- (void)_fetchAccessoryDiagnosticInfo;
- (void)_kickoffSoftwareUpdate;
- (void)_presentHomePodSoftwareUpdateAlreadyInProgressAlert;
- (void)_refreshUpdateAllBarButton;
- (void)_triggerRefresh:(id)a3;
- (void)bannerView:(id)a3 footerViewTapped:(id)a4;
- (void)diffableDataItemManager:(id)a3 didUpdateItems:(id)a4 addItems:(id)a5 removeItems:(id)a6;
- (void)doneButtonPressed:(id)a3;
- (void)itemManager:(id)a3 didUpdateResultsForItem:(id)a4 atIndexPath:(id)a5;
- (void)refreshDataModelForHome:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation HUSoftwareUpdateStandaloneViewController

- (void)refreshDataModelForHome:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_20D567C58();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_20D567C18();
  v8 = a3;
  v9 = sub_20D567C08();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  sub_20CF18F74(0, 0, v6, &unk_20D5C5770, v10);
}

- (HUSoftwareUpdateStandaloneViewController)initWithHome:(id)a3
{
  v4 = a3;
  v5 = [[HUSoftwareUpdateStandaloneItemManager alloc] initWithDelegate:self home:v4];

  v8.receiver = self;
  v8.super_class = HUSoftwareUpdateStandaloneViewController;
  v6 = [(HUItemTableViewController *)&v8 initWithItemManager:v5 tableViewStyle:1];

  return v6;
}

- (HUSoftwareUpdateStandaloneViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHome_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateStandaloneViewController.m" lineNumber:77 description:{@"%s is unavailable; use %@ instead", "-[HUSoftwareUpdateStandaloneViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = HUSoftwareUpdateStandaloneViewController;
  [(HUItemTableViewController *)&v10 viewDidLoad];
  v3 = [(HUSoftwareUpdateStandaloneViewController *)self view];
  [v3 frame];
  v6 = [HUGridLayoutOptions defaultOptionsForViewSize:v4, v5];

  [(HUSoftwareUpdateStandaloneViewController *)self setLayoutOptions:v6];
  v7 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdatePageTitle", @"HUSoftwareUpdatePageTitle", 1);
  [(HUSoftwareUpdateStandaloneViewController *)self setTitle:v7];

  if ([(HUSoftwareUpdateStandaloneViewController *)self showDoneButtonInNavBar])
  {
    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_doneButtonPressed_];
    v9 = [(HUSoftwareUpdateStandaloneViewController *)self navigationItem];
    [v9 setRightBarButtonItem:v8];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HUSoftwareUpdateStandaloneViewController;
  [(HUItemTableViewController *)&v4 viewDidAppear:a3];
  [(HUSoftwareUpdateStandaloneViewController *)self _refreshUpdateAllBarButton];
}

- (id)_createUpdateAllBarButton
{
  v3 = objc_alloc_init(HUDownloadControl);
  [(HUDownloadControl *)v3 setAllowsAddImage:0];
  [(HUDownloadControl *)v3 setDisplayStyle:1];
  v4 = [MEMORY[0x277D75348] systemWhiteColor];
  [(HUDownloadControl *)v3 setFilledTintColor:v4];

  v5 = [MEMORY[0x277D75348] hf_keyColor];
  [(HUDownloadControl *)v3 setTintColor:v5];

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

  v3 = [(HUItemTableViewController *)self itemManager];
  v4 = [v3 updateAllItem];
  v32 = [v4 latestResults];

  v5 = [v32 objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [v32 objectForKeyedSubscript:*MEMORY[0x277D13DF8]];
    v6 = v7 == 0;
  }

  v8 = [(HUSoftwareUpdateStandaloneViewController *)self updateAllBarButton];

  if ((v6 ^ (v8 == 0)))
  {
    if (!v6)
    {
      goto LABEL_23;
    }

    goto LABEL_10;
  }

  if (v6)
  {
    v9 = [(HUSoftwareUpdateStandaloneViewController *)self _createUpdateAllBarButton];
    [(HUSoftwareUpdateStandaloneViewController *)self setUpdateAllBarButton:v9];

    v10 = [(HUSoftwareUpdateStandaloneViewController *)self updateAllBarButton];
    v11 = [(HUSoftwareUpdateStandaloneViewController *)self navigationItem];
    [v11 setRightBarButtonItem:v10];

    v12 = [(HUSoftwareUpdateStandaloneViewController *)self updateAllBarButton];
    [v12 setHidden:1];

LABEL_10:
    objc_opt_class();
    v13 = [(HUSoftwareUpdateStandaloneViewController *)self updateAllBarButton];
    v14 = [v13 customView];
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    v17 = [v16 titleForControlStatusType:1];
    v18 = [v32 objectForKeyedSubscript:*MEMORY[0x277D13DE8]];
    if (([v17 isEqualToString:v18] & 1) == 0)
    {
      [v16 setTitle:v18 forControlStatusType:1];
      [v16 sizeToFit];
    }

    v19 = [v32 objectForKeyedSubscript:*MEMORY[0x277D140F0]];
    v20 = [v19 BOOLValue];

    if (v20)
    {
      v21 = [v32 objectForKeyedSubscript:*MEMORY[0x277D14108]];
      if (v21)
      {
        v22 = v21;
        [v21 floatValue];
        v24 = v23;
        v25 = [MEMORY[0x277D75348] systemFillColor];
        [v16 setFilledTintColor:v25];

        v26 = [MEMORY[0x277D75348] hf_keyColor];
        [v16 setTintColor:v26];

        v27 = v24;
        v28 = 4;
      }

      else
      {
        v30 = [MEMORY[0x277D75348] systemFillColor];
        [v16 setFilledTintColor:v30];

        v31 = [MEMORY[0x277D75348] systemFillColor];
        [v16 setTintColor:v31];

        v22 = 0;
        v27 = 1.0;
        v28 = 3;
      }
    }

    else
    {
      v29 = [MEMORY[0x277D75348] systemWhiteColor];
      [v16 setFilledTintColor:v29];

      v22 = [MEMORY[0x277D75348] hf_keyColor];
      [v16 setTintColor:v22];
      v27 = 1.0;
      v28 = 1;
    }

    [v16 setControlStatus:v28 animated:{*&v27, 1}];
    [v16 setEnabled:v20 ^ 1u];

    goto LABEL_22;
  }

  [(HUSoftwareUpdateStandaloneViewController *)self setUpdateAllBarButton:0];
  v16 = [(HUSoftwareUpdateStandaloneViewController *)self navigationItem];
  [v16 setRightBarButtonItem:0];
LABEL_22:

LABEL_23:
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = [(HUSoftwareUpdateStandaloneViewController *)self updateAllBarButton];

  if (v4)
  {
    v5 = [(HUSoftwareUpdateStandaloneViewController *)self tableView];
    v8 = [v5 visibleCells];

    v6 = [v8 na_any:&__block_literal_global_160];
    v7 = [(HUSoftwareUpdateStandaloneViewController *)self updateAllBarButton];
    [v7 setHidden:v6];
  }
}

uint64_t __64__HUSoftwareUpdateStandaloneViewController_scrollViewDidScroll___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)viewWillAppear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = HUSoftwareUpdateStandaloneViewController;
  [(HUItemTableViewController *)&v11 viewWillAppear:a3];
  if (![(HUSoftwareUpdateStandaloneViewController *)self viewVisible])
  {
    objc_initWeak(&location, self);
    v4 = [(HUItemTableViewController *)self itemManager];
    v5 = MEMORY[0x277D85DD0];
    v6 = 3221225472;
    v7 = __59__HUSoftwareUpdateStandaloneViewController_viewWillAppear___block_invoke;
    v8 = &unk_277DBFC48;
    objc_copyWeak(&v9, &location);
    [v4 addHomeSetupSuccessBlock:&v5];

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

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HUSoftwareUpdateStandaloneViewController;
  [(HUItemTableViewController *)&v4 viewDidDisappear:a3];
  [(HUSoftwareUpdateStandaloneViewController *)self setViewVisible:0];
}

- (void)viewWillLayoutSubviews
{
  v19.receiver = self;
  v19.super_class = HUSoftwareUpdateStandaloneViewController;
  [(HUItemTableViewController *)&v19 viewWillLayoutSubviews];
  objc_opt_class();
  v3 = [(HUSoftwareUpdateStandaloneViewController *)self updateAllBarButton];
  v4 = [v3 customView];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [(HUSoftwareUpdateStandaloneViewController *)self updateAllBarButton];
  v8 = [v7 customView];
  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v6 intrinsicContentSize];
  v16 = v15;

  v17 = [(HUSoftwareUpdateStandaloneViewController *)self updateAllBarButton];
  v18 = [v17 customView];
  [v18 setFrame:{v10, v12, v16, v14}];
}

- (id)itemModuleControllers
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(HUSoftwareUpdateStandaloneViewController *)self softwareUpdateItemModuleController];

  if (!v4)
  {
    v5 = [HUSoftwareUpdateItemModuleController alloc];
    v6 = [(HUItemTableViewController *)self itemManager];
    v7 = [v6 softwareUpdateModule];
    v8 = [(HUSoftwareUpdateItemModuleController *)v5 initWithModule:v7 delegate:self expandableTextViewCellDelegate:self];
    [(HUSoftwareUpdateStandaloneViewController *)self setSoftwareUpdateItemModuleController:v8];
  }

  v9 = [(HUSoftwareUpdateStandaloneViewController *)self softwareUpdateItemModuleController];
  [v3 addObject:v9];

  v10 = [(HUSoftwareUpdateStandaloneViewController *)self firmwareUpdateItemModuleController];

  if (!v10)
  {
    v11 = [HUFirmwareUpdateItemModuleController alloc];
    v12 = [(HUItemTableViewController *)self itemManager];
    v13 = [v12 firmwareUpdateModule];
    v14 = [(HUFirmwareUpdateItemModuleController *)v11 initWithModule:v13 expandableTextViewCellDelegate:self];
    [(HUSoftwareUpdateStandaloneViewController *)self setFirmwareUpdateItemModuleController:v14];
  }

  v15 = [(HUSoftwareUpdateStandaloneViewController *)self firmwareUpdateItemModuleController];
  [v3 addObject:v15];

  return v3;
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = [(HUItemTableViewController *)self itemManager];
  v8 = [v7 updateAllItem];
  v9 = [v6 isEqual:v8];

  if (v9)
  {
    goto LABEL_5;
  }

  v10 = [(HUItemTableViewController *)self itemManager];
  v11 = [v10 autoUpdateItem];
  if ([v6 isEqual:v11])
  {

LABEL_5:
    v15 = objc_opt_class();
    goto LABEL_6;
  }

  v12 = [(HUItemTableViewController *)self itemManager];
  v13 = [v12 autoUpdateThirdPartyItem];
  v14 = [v6 isEqual:v13];

  if (v14)
  {
    goto LABEL_5;
  }

  v17 = [(HUItemTableViewController *)self itemManager];
  v18 = [v17 homeUpdateBannerItem];
  v19 = [v6 isEqual:v18];

  if (v19)
  {
    goto LABEL_5;
  }

  v20 = [(HUItemTableViewController *)self itemManager];
  v21 = [v20 fetchItem];
  v22 = [v6 isEqual:v21];

  if (v22)
  {
    goto LABEL_5;
  }

  v23 = [(HUItemTableViewController *)self itemManager];
  v24 = [v23 updatedRecentlyItem];
  if ([v6 isEqual:v24])
  {
LABEL_14:

    goto LABEL_5;
  }

  v25 = [(HUItemTableViewController *)self itemManager];
  v26 = [v25 betaUpdatesItem];
  if ([v6 isEqual:v26])
  {

    goto LABEL_14;
  }

  v27 = [(HUItemTableViewController *)self itemManager];
  v28 = [v27 carrySettingsItem];
  v29 = [v6 isEqual:v28];

  if (v29)
  {
    goto LABEL_5;
  }

  v30 = [MEMORY[0x277CCA890] currentHandler];
  [v30 handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateStandaloneViewController.m" lineNumber:278 description:{@"Unhandled item: %@", v6}];

  v15 = 0;
LABEL_6:

  return v15;
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v54.receiver = self;
  v54.super_class = HUSoftwareUpdateStandaloneViewController;
  [(HUItemTableViewController *)&v54 setupCell:v8 forItem:v9 indexPath:a5];
  v10 = [(HUItemTableViewController *)self itemManager];
  v11 = [v10 autoUpdateItem];
  if ([v9 isEqual:v11])
  {

    goto LABEL_4;
  }

  v12 = [(HUItemTableViewController *)self itemManager];
  v13 = [v12 autoUpdateThirdPartyItem];
  v14 = [v9 isEqual:v13];

  if (!v14)
  {
    v21 = [(HUItemTableViewController *)self itemManager];
    v22 = [v21 homeUpdateBannerItem];
    v23 = [v9 isEqual:v22];

    if (v23)
    {
      v24 = objc_opt_class();
      v25 = v8;
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

        v27 = [MEMORY[0x277CCA890] currentHandler];
        v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
        [v27 handleFailureInFunction:v28 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v24, objc_opt_class()}];
      }

      v18 = 0;
LABEL_22:

      v29 = [(HUSoftwareUpdateStandaloneViewController *)self layoutOptions];
      v30 = [v29 bannerCellOptions];
      v31 = [v25 layer];
      [v31 cornerRadius];
      [v30 setCellCornerRadius:?];

      v32 = [(HUSoftwareUpdateStandaloneViewController *)self layoutOptions];
      v33 = [v32 bannerCellOptions];
      [v18 setLayoutOptions:v33];

      [v18 setDelegate:self];
      v34 = [v18 bannerView];
      softwareUpdateBannerView = self->_softwareUpdateBannerView;
      self->_softwareUpdateBannerView = v34;

      goto LABEL_12;
    }

    v36 = [(HUItemTableViewController *)self itemManager];
    v37 = [v36 updateAllItem];
    v38 = [v9 isEqual:v37];

    if (v38)
    {
      objc_opt_class();
      v39 = v8;
      if (objc_opt_isKindOfClass())
      {
        v40 = v39;
      }

      else
      {
        v40 = 0;
      }

      v18 = v40;

      v41 = [v18 downloadControl];
      [v41 setAllowsAddImage:0];
      [v41 setDisplayStyle:1];
      [v41 addTarget:self action:sel__didTapUpdateAllButton_ forControlEvents:64];

      goto LABEL_12;
    }

    v42 = [(HUItemTableViewController *)self itemManager];
    v43 = [v42 updatedRecentlyItem];
    if (([v9 isEqual:v43] & 1) == 0)
    {
      v44 = [(HUItemTableViewController *)self itemManager];
      v45 = [v44 betaUpdatesItem];
      if (([v9 isEqual:v45] & 1) == 0)
      {
        v51 = [(HUItemTableViewController *)self itemManager];
        v52 = [v51 carrySettingsItem];
        v53 = [v9 isEqual:v52];

        if ((v53 & 1) == 0)
        {
          goto LABEL_13;
        }

LABEL_32:
        v46 = objc_opt_class();
        v47 = v8;
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

          v49 = [MEMORY[0x277CCA890] currentHandler];
          v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
          [v49 handleFailureInFunction:v50 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v46, objc_opt_class()}];
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
  v16 = v8;
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

    v19 = [MEMORY[0x277CCA890] currentHandler];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v19 handleFailureInFunction:v20 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v15, objc_opt_class()}];
  }

  v18 = 0;
LABEL_11:

  [v18 setDelegate:self];
LABEL_12:

LABEL_13:
}

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v41.receiver = self;
  v41.super_class = HUSoftwareUpdateStandaloneViewController;
  [(HUItemTableViewController *)&v41 updateCell:v10 forItem:v11 indexPath:a5 animated:v6];
  v12 = [(HUItemTableViewController *)self itemManager];
  v13 = [v12 autoUpdateItem];
  if ([v11 isEqual:v13])
  {

    goto LABEL_4;
  }

  v14 = [(HUItemTableViewController *)self itemManager];
  v15 = [v14 autoUpdateThirdPartyItem];
  v16 = [v11 isEqual:v15];

  if (!v16)
  {
    v25 = [(HUItemTableViewController *)self itemManager];
    v26 = [v25 updateAllItem];
    v27 = [v11 isEqual:v26];

    if (!v27)
    {
      goto LABEL_13;
    }

    objc_opt_class();
    v28 = v10;
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v20 = v29;

    v30 = [v20 downloadControl];
    v31 = [v11 latestResults];
    v32 = [v31 objectForKeyedSubscript:*MEMORY[0x277D140F0]];
    v33 = [v32 BOOLValue];

    if (v33)
    {
      v34 = [v11 latestResults];
      v35 = [v34 objectForKeyedSubscript:*MEMORY[0x277D14108]];

      v36 = [MEMORY[0x277D75348] systemFillColor];
      [v30 setFilledTintColor:v36];

      v37 = MEMORY[0x277D75348];
      if (!v35)
      {
        v38 = [MEMORY[0x277D75348] systemFillColor];
LABEL_23:
        v40 = v38;
        [v30 setTintColor:v38];

        goto LABEL_12;
      }
    }

    else
    {
      v39 = [MEMORY[0x277D75348] systemWhiteColor];
      [v30 setFilledTintColor:v39];

      v37 = MEMORY[0x277D75348];
    }

    v38 = [v37 hf_keyColor];
    goto LABEL_23;
  }

LABEL_4:
  v17 = objc_opt_class();
  v18 = v10;
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

    v21 = [MEMORY[0x277CCA890] currentHandler];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v21 handleFailureInFunction:v22 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v17, objc_opt_class()}];
  }

  v20 = 0;
LABEL_11:

  v23 = [v11 latestResults];
  v24 = [v23 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
  [v20 setDisabled:{objc_msgSend(v24, "BOOLValue")}];

  [v20 setDelegate:self];
LABEL_12:

LABEL_13:
}

- (BOOL)shouldHideSeparatorsForCell:(id)a3 indexPath:(id)a4
{
  v8.receiver = self;
  v8.super_class = HUSoftwareUpdateStandaloneViewController;
  v5 = a3;
  LOBYTE(a4) = [(HUItemTableViewController *)&v8 shouldHideSeparatorsForCell:v5 indexPath:a4];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass | a4) & 1;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v55.receiver = self;
  v55.super_class = HUSoftwareUpdateStandaloneViewController;
  [(HUItemTableViewController *)&v55 tableView:v6 didSelectRowAtIndexPath:v7];
  [v6 deselectRowAtIndexPath:v7 animated:1];
  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 home];
  v10 = [v9 hf_homePods];

  v11 = [MEMORY[0x277CBEB58] set];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v12 = v10;
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

        v17 = [*(*(&v51 + 1) + 8 * v16) uniqueIdentifier];
        [v11 addObject:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v14);
  }

  v18 = [(HUItemTableViewController *)self itemManager];
  v19 = [v18 displayedItemAtIndexPath:v7];

  v20 = [(HUItemTableViewController *)self itemManager];
  v21 = [v20 updatedRecentlyItem];
  v22 = [v19 isEqual:v21];

  if (v22)
  {
    v23 = [HUSoftwareUpdateRecentUpdatesViewController alloc];
    v24 = [(HUItemTableViewController *)self itemManager];
    v25 = [v24 home];
    v26 = [(HUSoftwareUpdateRecentUpdatesViewController *)v23 initWithHome:v25];

    v27 = [(HUSoftwareUpdateStandaloneViewController *)self navigationController];
    v28 = [v27 hu_pushPreloadableViewController:v26 animated:1];
LABEL_21:

    goto LABEL_22;
  }

  v29 = [(HUItemTableViewController *)self itemManager];
  v30 = [v29 betaUpdatesItem];
  v31 = [v19 isEqual:v30];

  if (v31)
  {
    if (![MEMORY[0x277CFD0C0] isNoDaemonMessageChannelEnabled] || (v32 = objc_alloc(MEMORY[0x277D17E18]), -[HUItemTableViewController itemManager](self, "itemManager"), v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "home"), v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "uniqueIdentifier"), v35 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v32, "initWithHomeID:homeKitIdentifiers:", v35, v11), v35, v34, v33, !v26))
    {
      v36 = objc_alloc(MEMORY[0x277D17E18]);
      v37 = [(HUItemTableViewController *)self itemManager];
      v38 = [v37 home];
      v39 = [v38 uniqueIdentifier];
      v26 = [v36 initWithHomeID:v39];
    }

    if ([MEMORY[0x277D17E18] isMultiSeedingEnrollmentEnabled])
    {
      [(HUSoftwareUpdateStandaloneViewController *)self presentViewController:v26 animated:1 completion:0];
LABEL_22:

      goto LABEL_23;
    }

    goto LABEL_20;
  }

  v40 = [(HUItemTableViewController *)self itemManager];
  v41 = [v40 carrySettingsItem];
  v42 = [v19 isEqual:v41];

  if (v42)
  {
    if (![MEMORY[0x277CFD0C0] isNoDaemonMessageChannelEnabled] || (v43 = objc_alloc(MEMORY[0x277D17E20]), -[HUItemTableViewController itemManager](self, "itemManager"), v44 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v44, "home"), v45 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v45, "uniqueIdentifier"), v46 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v43, "initWithHomeID:homeKitIdentifiers:", v46, v11), v46, v45, v44, !v26))
    {
      v47 = objc_alloc(MEMORY[0x277D17E20]);
      v48 = [(HUItemTableViewController *)self itemManager];
      v49 = [v48 home];
      v50 = [v49 uniqueIdentifier];
      v26 = [v47 initWithHomeID:v50];
    }

LABEL_20:
    v27 = [(HUSoftwareUpdateStandaloneViewController *)self navigationController];
    [v27 pushViewController:v26 animated:1];
    goto LABEL_21;
  }

LABEL_23:
}

- (void)bannerView:(id)a3 footerViewTapped:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(HUSoftwareUpdateStandaloneViewController *)self softwareUpdateBannerView];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = [(HUSoftwareUpdateStandaloneViewController *)self _homePodSoftwareUpdateInProgress];
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16[0] = 67109120;
      v16[1] = v8;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "<HUSoftwareUpdateStandaloneViewController-bannerView:footerViewTapped:> User tapped button from software update banner | hpSWUpdateInProgress = %{BOOL}d", v16, 8u);
    }

    if (v8)
    {
      [(HUSoftwareUpdateStandaloneViewController *)self _presentHomePodSoftwareUpdateAlreadyInProgressAlert];
    }

    else
    {
      v10 = [(HUItemTableViewController *)self itemManager];
      v11 = [v10 home];
      v12 = [(HUItemTableViewController *)self itemManager];
      v13 = [v12 devices];
      v14 = [v11 hf_homeHubMigrationBannerTapActionFromViewController:self devices:v13];

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

- (void)_didTapUpdateAllButton:(id)a3
{
  v3 = [(HUSoftwareUpdateStandaloneViewController *)self softwareUpdateItemModuleController];
  [v3 updateAllAccessories];
}

- (void)doneButtonPressed:(id)a3
{
  v3 = [(HUSoftwareUpdateStandaloneViewController *)self presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v8 = [v7 item];
  v9 = [(HUItemTableViewController *)self itemManager];
  v10 = [v9 autoUpdateItem];
  v11 = [v8 isEqual:v10];

  v12 = [(HUItemTableViewController *)self itemManager];
  v13 = v12;
  if (v11)
  {
    v14 = [v12 home];
    v15 = [v14 hf_updateAutomaticSoftwareUpdateEnabled:v4];
  }

  else
  {
    v16 = [v12 autoUpdateThirdPartyItem];
    v17 = [v8 isEqual:v16];

    if (!v17)
    {
      goto LABEL_7;
    }

    v13 = [(HUItemTableViewController *)self itemManager];
    v14 = [v13 home];
    v15 = [v14 hf_updateAutomaticThirdPartyAccessorySoftwareUpdateEnabled:v4];
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
    v25 = v8;
    v26[1] = a2;
    v19 = [v18 addCompletionBlock:v24];

    objc_destroyWeak(v26);
    objc_destroyWeak(&location);
  }

LABEL_7:
  objc_opt_class();
  v20 = [v8 latestResults];
  v21 = [v20 objectForKeyedSubscript:*MEMORY[0x277D13F68]];
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  [MEMORY[0x277D143D8] sendSwitchCellToggleEventForItem:v8 isOn:v4 title:v23 fromSourceViewController:self];
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

- (id)softwareUpdateModuleController:(id)a3 dismissViewController:(id)a4
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

- (id)softwareUpdateModuleController:(id)a3 navigateToViewController:(id)a4
{
  v5 = a4;
  v6 = [(HUSoftwareUpdateStandaloneViewController *)self navigationController];
  v7 = [v6 hu_pushPreloadableViewController:v5 animated:1];

  return v7;
}

- (void)diffableDataItemManager:(id)a3 didUpdateItems:(id)a4 addItems:(id)a5 removeItems:(id)a6
{
  v10 = a5;
  v11 = a6;
  v15.receiver = self;
  v15.super_class = HUSoftwareUpdateStandaloneViewController;
  v12 = a4;
  [(HUItemTableViewController *)&v15 diffableDataItemManager:a3 didUpdateItems:v12 addItems:v10 removeItems:v11];
  v13 = [(HUItemTableViewController *)self itemManager:v15.receiver];
  v14 = [v13 updateAllItem];

  LOBYTE(v13) = [v12 containsObject:v14];
  if ((v13 & 1) != 0 || ([v10 containsObject:v14] & 1) != 0 || objc_msgSend(v11, "containsObject:", v14))
  {
    [(HUSoftwareUpdateStandaloneViewController *)self _refreshUpdateAllBarButton];
  }
}

- (void)itemManager:(id)a3 didUpdateResultsForItem:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HUItemTableViewController *)self itemManager];
  v12 = [v11 fetchItem];

  if (v12 == v9)
  {
    v13 = [v9 latestResults];
    v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
    v15 = [v14 BOOLValue];

    [(HUSoftwareUpdateStandaloneViewController *)self setAllowRefresh:v15 ^ 1u];
  }

  v16 = [(HUItemTableViewController *)self itemManager];
  v17 = [v16 updateAllItem];
  v18 = [v9 isEqual:v17];

  if (v18)
  {
    [(HUSoftwareUpdateStandaloneViewController *)self _refreshUpdateAllBarButton];
  }

  v19.receiver = self;
  v19.super_class = HUSoftwareUpdateStandaloneViewController;
  [(HUItemTableViewController *)&v19 itemManager:v8 didUpdateResultsForItem:v9 atIndexPath:v10];
}

- (void)_triggerRefresh:(id)a3
{
  v4 = [(HUSoftwareUpdateStandaloneViewController *)self softwareUpdateFetchFuture];
  v5 = [v4 isFinished];

  if (v5)
  {

    [(HUSoftwareUpdateStandaloneViewController *)self _kickoffSoftwareUpdate];
  }
}

- (void)_kickoffSoftwareUpdate
{
  [(HUSoftwareUpdateStandaloneViewController *)self setAllowRefresh:0];
  v4 = [(HUItemTableViewController *)self itemManager];
  v5 = [v4 triggerSoftwareUpdateFetch];
  [(HUSoftwareUpdateStandaloneViewController *)self setSoftwareUpdateFetchFuture:v5];

  objc_initWeak(&location, self);
  v6 = +[HUSoftwareUpdateUIManager sharedManager];
  v7 = [(HUItemTableViewController *)self itemManager];
  v8 = [v7 home];
  v9 = [v6 fetchAvailableUpdatesForHome:v8 options:1];
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
  v3 = [(HUItemTableViewController *)self itemManager];
  v4 = [v3 home];
  v5 = [v4 hf_homePods];

  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 home];
  if ([v7 hf_currentUserIsOwner])
  {
    v8 = [v5 count];

    if (v8)
    {
      [v5 na_each:&__block_literal_global_153_0];
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
    v11 = [(HUItemTableViewController *)self itemManager];
    v12 = [v11 home];
    v13 = [v10 numberWithBool:{objc_msgSend(v12, "hf_currentUserIsOwner")}];
    v14 = 138412546;
    v15 = v13;
    v16 = 2112;
    v17 = v5;
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
  v2 = [(HUItemTableViewController *)self itemManager];
  v3 = [v2 home];
  v4 = [v3 hf_homePods];

  v5 = [objc_alloc(MEMORY[0x277D14B28]) initWithAccessories:v4];
  LOBYTE(v3) = [v5 softwareUpdatesInProgress] != 0;

  return v3;
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