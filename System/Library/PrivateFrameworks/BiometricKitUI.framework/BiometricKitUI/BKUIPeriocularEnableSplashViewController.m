@interface BKUIPeriocularEnableSplashViewController
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_createCellForIndexPath:(id)a3;
- (id)initInBuddy:(BOOL)a3 bkDevice:(id)a4 upsell:(BOOL)a5 withEndEnrollmentActionPrimary:(id)a6 enrollmentActionSecondary:(id)a7;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)preferredStatusBarStyle;
- (void)_continuePressed:(id)a3;
- (void)_enrollSkipped:(id)a3;
- (void)_showPrivacyLink;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation BKUIPeriocularEnableSplashViewController

- (id)initInBuddy:(BOOL)a3 bkDevice:(id)a4 upsell:(BOOL)a5 withEndEnrollmentActionPrimary:(id)a6 enrollmentActionSecondary:(id)a7
{
  LODWORD(v9) = a5;
  v10 = a4;
  v59 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v52 = a6;
  v51 = a7;
  if (v9)
  {
    v56 = 0;
    v13 = [v12 identitiesForUser:getuid() error:&v56];
    v14 = v56;
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_6];
    v16 = [v13 filteredArrayUsingPredicate:v15];

    if (![v16 count])
    {
      v32 = _BKUILoggingFacility();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v58 = v14;
        _os_log_impl(&dword_241B0A000, v32, OS_LOG_TYPE_DEFAULT, "BKUIPearl:BKUIPeriocularEnableSplashViewController no identities found returning nil to init ... error?:%@", buf, 0xCu);
      }

      goto LABEL_19;
    }

    v55 = v14;
    v17 = [v12 systemProtectedConfigurationWithError:&v55];
    v18 = v55;

    if (v18)
    {
      v19 = _BKUILoggingFacility();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [BKUIPeriocularEnableSplashViewController initInBuddy:v18 bkDevice:v19 upsell:? withEndEnrollmentActionPrimary:? enrollmentActionSecondary:?];
      }
    }

    v54 = v18;
    v20 = [v12 protectedConfigurationForUser:getuid() error:&v54];
    v21 = v54;

    if (v21)
    {
      v22 = _BKUILoggingFacility();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [BKUIPeriocularEnableSplashViewController initInBuddy:v21 bkDevice:v22 upsell:? withEndEnrollmentActionPrimary:? enrollmentActionSecondary:?];
      }
    }

    v23 = [v17 periocularFaceIDMatchEnabled];
    if ([v23 BOOLValue])
    {
      [v20 periocularFaceIDMatchEnabled];
      v49 = v9;
      v9 = v10;
      v24 = v21;
      v25 = v12;
      v26 = v20;
      v27 = v16;
      v29 = v28 = v17;
      v30 = [v29 BOOLValue];

      v17 = v28;
      v16 = v27;
      v20 = v26;
      v12 = v25;
      v21 = v24;
      v10 = v9;
      LOBYTE(v9) = v49;

      if (v30)
      {
        v31 = _BKUILoggingFacility();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_241B0A000, v31, OS_LOG_TYPE_DEFAULT, "BKUIPearl:User already has periocularFaceIDMatchEnabled for both system and user thus bailing out early returning nil to init ...", buf, 2u);
        }

LABEL_19:
        v33 = 0;
        v35 = v51;
        v34 = v52;
        goto LABEL_25;
      }
    }

    else
    {
    }
  }

  v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v37 = [v36 localizedStringForKey:@"FACE_MASK_ID" value:&stru_2853BB280 table:@"Pearl-periocular"];
  v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v39 = [v38 localizedStringForKey:@"FACE_MASK_ID_SUBTEXT" value:&stru_2853BB280 table:@"Pearl-periocular"];
  v53.receiver = self;
  v53.super_class = BKUIPeriocularEnableSplashViewController;
  v40 = [(OBTableWelcomeController *)&v53 initWithTitle:v37 detailText:v39 icon:0 adoptTableViewScrollView:1];

  v35 = v51;
  v34 = v52;
  if (v40)
  {
    v40->_upsell = v9;
    v40->_inBuddy = a3;
    v41 = _Block_copy(v52);
    endEnrollActionPrimary = v40->_endEnrollActionPrimary;
    v40->_endEnrollActionPrimary = v41;

    v43 = _Block_copy(v51);
    endEnrollActionSecondary = v40->_endEnrollActionSecondary;
    v40->_endEnrollActionSecondary = v43;

    objc_storeStrong(&v40->_device, v10);
    v40->_maxCellHeight = -1.0;
    v45 = [(BKUIPeriocularEnableSplashViewController *)v40 headerView];
    v46 = [MEMORY[0x277D75348] systemBlueColor];
    [v45 setTintColor:v46];
  }

  self = v40;
  v33 = self;
LABEL_25:

  v47 = *MEMORY[0x277D85DE8];
  return v33;
}

- (void)viewDidLoad
{
  v73[2] = *MEMORY[0x277D85DE8];
  v71.receiver = self;
  v71.super_class = BKUIPeriocularEnableSplashViewController;
  [(OBTableWelcomeController *)&v71 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D37608]) initWithStateName:@"State 1" darkStateName:@"Dark 1" transitionDuration:0.01 transitionSpeed:1.0];
  v73[0] = v3;
  v4 = [objc_alloc(MEMORY[0x277D37608]) initWithStateName:@"State 2" darkStateName:@"Dark 2" transitionDuration:1.5 transitionSpeed:0.8];
  v73[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:2];

  v6 = objc_alloc(MEMORY[0x277D37600]);
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 URLForResource:@"FaceMaskID" withExtension:@"ca"];
  v9 = [(BKUIPeriocularEnableSplashViewController *)self headerView];
  v10 = [v9 animationView];
  v11 = [v5 objectAtIndexedSubscript:0];
  v12 = [v6 initWithUrlToPackage:v8 animationView:v10 animatedStates:v5 startAtFirstState:v11];
  [(BKUIPeriocularEnableSplashViewController *)self setAnimationController:v12];

  v13 = +[BKUIDevice sharedInstance];
  LODWORD(v8) = [v13 isN69];

  if (v8)
  {
    v14 = 0.0333333333;
  }

  else
  {
    v14 = 0.0666666667;
  }

  v15 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
  v16 = [(BKUIPeriocularEnableSplashViewController *)self _createCellForIndexPath:v15];
  [(BKUIPeriocularEnableSplashViewController *)self setCellTop:v16];

  v17 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:1];
  v18 = [(BKUIPeriocularEnableSplashViewController *)self _createCellForIndexPath:v17];
  [(BKUIPeriocularEnableSplashViewController *)self setCellBottom:v18];

  v19 = [(BKUIPeriocularEnableSplashViewController *)self headerView];
  v20 = [v19 animationView];
  [v20 defaultScale];
  v22 = v21;
  v23 = [(BKUIPeriocularEnableSplashViewController *)self headerView];
  v24 = [v23 animationView];
  [v24 setScale:v14 + v22];

  v25 = objc_alloc(MEMORY[0x277D75B40]);
  v26 = [v25 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v26];

  v27 = [(OBTableWelcomeController *)self tableView];
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];

  v28 = [(OBTableWelcomeController *)self tableView];
  [v28 setDelegate:self];

  v29 = [(OBTableWelcomeController *)self tableView];
  [v29 setDataSource:self];

  v30 = [(OBTableWelcomeController *)self tableView];
  [v30 setRowHeight:*MEMORY[0x277D76F30]];

  v31 = [(OBTableWelcomeController *)self tableView];
  [v31 setEstimatedRowHeight:0.0];

  v32 = [MEMORY[0x277D75348] clearColor];
  v33 = [(OBTableWelcomeController *)self tableView];
  [v33 setBackgroundColor:v32];

  v34 = [(OBTableWelcomeController *)self tableView];
  [v34 reloadData];

  v35 = [(OBBaseWelcomeController *)self navigationItem];
  [v35 setHidesBackButton:1];

  v36 = [MEMORY[0x277D37650] linkButton];
  [(BKUIPeriocularEnableSplashViewController *)self setSkipButton:v36];

  v37 = [(BKUIPeriocularEnableSplashViewController *)self skipButton];
  [v37 setTranslatesAutoresizingMaskIntoConstraints:0];

  v38 = [(BKUIPeriocularEnableSplashViewController *)self skipButton];
  [v38 addTarget:self action:sel__enrollSkipped_ forControlEvents:64];

  v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v40 = [v39 localizedStringForKey:@"SET_UP_LATER" value:&stru_2853BB280 table:@"Pearl-periocular"];

  if ([(BKUIPeriocularEnableSplashViewController *)self inBuddy])
  {
    v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v42 = [v41 localizedStringForKey:@"SET_UP_LATER_IN_SETTINGS" value:&stru_2853BB280 table:@"Pearl-periocular"];

    v40 = v42;
  }

  v43 = [(BKUIPeriocularEnableSplashViewController *)self skipButton];
  [v43 setTitle:v40 forState:0];

  v44 = [(BKUIPeriocularEnableSplashViewController *)self buttonTray];
  v45 = [(BKUIPeriocularEnableSplashViewController *)self skipButton];
  [v44 addButton:v45];

  v46 = [MEMORY[0x277D37638] accessoryButton];
  v47 = MEMORY[0x277D37668];
  v48 = [MEMORY[0x277D37630] bundleWithIdentifier:@"com.apple.onboarding.faceid"];
  v49 = [v47 flowWithBundle:v48];

  v50 = [v49 localizedButtonTitle];
  [v46 setTitle:v50 forState:0];

  [v46 addTarget:self action:sel__showPrivacyLink forControlEvents:64];
  v51 = [(BKUIPeriocularEnableSplashViewController *)self headerView];
  [v51 addAccessoryButton:v46];

  v52 = [(BKUIPeriocularEnableSplashViewController *)self buttonTray];
  [v52 setNeedsLayout];

  v53 = [(BKUIPeriocularEnableSplashViewController *)self buttonTray];
  [v53 layoutIfNeeded];

  v54 = [(BKUIPeriocularEnableSplashViewController *)self cellTop];
  v55 = [(BKUIPeriocularEnableSplashViewController *)self cellTop];
  [v55 bounds];
  [v54 systemLayoutSizeFittingSize:{v56, 0.0}];
  v58 = v57;

  v59 = [(BKUIPeriocularEnableSplashViewController *)self cellBottom];
  v60 = [(BKUIPeriocularEnableSplashViewController *)self cellTop];
  [v60 bounds];
  [v59 systemLayoutSizeFittingSize:{v61, 0.0}];
  v63 = v62;

  if (v63 >= v58)
  {
    v64 = v63;
  }

  else
  {
    v64 = v58;
  }

  [(BKUIPeriocularEnableSplashViewController *)self setMaxCellHeight:v64];
  objc_initWeak(&location, self);
  v72[0] = objc_opt_class();
  v72[1] = objc_opt_class();
  v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:2];
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __55__BKUIPeriocularEnableSplashViewController_viewDidLoad__block_invoke;
  v68[3] = &unk_278D09928;
  objc_copyWeak(&v69, &location);
  v66 = [(BKUIPeriocularEnableSplashViewController *)self registerForTraitChanges:v65 withHandler:v68];
  [(BKUIPeriocularEnableSplashViewController *)self setTraitChangeRegistration:v66];

  objc_destroyWeak(&v69);
  objc_destroyWeak(&location);

  v67 = *MEMORY[0x277D85DE8];
}

void __55__BKUIPeriocularEnableSplashViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setMaxCellHeight:-1.0];
  v1 = [WeakRetained cellTop];
  v2 = [WeakRetained cellTop];
  [v2 bounds];
  [v1 systemLayoutSizeFittingSize:{v3, 0.0}];
  v5 = v4;

  v6 = [WeakRetained cellBottom];
  v7 = [WeakRetained cellTop];
  [v7 bounds];
  [v6 systemLayoutSizeFittingSize:{v8, 0.0}];
  v10 = v9;

  if (v10 >= v5)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  [WeakRetained setMaxCellHeight:v11];
  v12 = [WeakRetained tableView];
  [v12 reloadData];

  v13 = [WeakRetained view];
  [v13 setNeedsLayout];

  v14 = [WeakRetained view];
  [v14 layoutIfNeeded];
}

- (void)_showPrivacyLink
{
  v3 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.faceid"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (void)_continuePressed:(id)a3
{
  v4 = [(BKUIPeriocularEnableSplashViewController *)self endEnrollActionPrimary];

  if (v4)
  {
    v5 = [(BKUIPeriocularEnableSplashViewController *)self endEnrollActionPrimary];
    v5[2]();
  }
}

- (void)_enrollSkipped:(id)a3
{
  v4 = [(BKUIPeriocularEnableSplashViewController *)self skipButton];
  [v4 setUserInteractionEnabled:0];

  if ([(BKUIPeriocularEnableSplashViewController *)self inBuddy]&& ([(BKUIPeriocularEnableSplashViewController *)self userSkippedAction], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(BKUIPeriocularEnableSplashViewController *)self userSkippedAction];
  }

  else
  {
    v7 = [(BKUIPeriocularEnableSplashViewController *)self endEnrollActionSecondary];

    if (!v7)
    {
      return;
    }

    v6 = [(BKUIPeriocularEnableSplashViewController *)self endEnrollActionSecondary];
  }

  v8 = v6;
  (*(v6 + 16))();
}

void __151__BKUIPeriocularEnableSplashViewController_setPeriocularFaceIDMatchEnabledForUserConfigurationWithDevice_credentialSet_authContext_enabled_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (*(a1 + 56) == 1 && !*(a1 + 32))
  {
    __151__BKUIPeriocularEnableSplashViewController_setPeriocularFaceIDMatchEnabledForUserConfigurationWithDevice_credentialSet_authContext_enabled_completion___block_invoke_cold_1();
  }

  if (v5 || (a2 & 1) == 0)
  {
    v7 = _BKUILoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 57);
      *buf = 67109378;
      v18 = v8;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_241B0A000, v7, OS_LOG_TYPE_DEFAULT, "Failed to set userProtectedConfigurationWithError with value:%i error: %@", buf, 0x12u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = _BKUILoggingFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [WeakRetained protectedConfigurationForUser:getuid() error:0];
    v12 = [v11 periocularFaceIDMatchEnabled];
    v13 = [v12 BOOLValue];
    *buf = 67109120;
    v18 = v13;
    _os_log_impl(&dword_241B0A000, v10, OS_LOG_TYPE_DEFAULT, "Final protectedConfigurationForUser faceIDMatchEnabled value %i", buf, 8u);
  }

  if (*(a1 + 40))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __151__BKUIPeriocularEnableSplashViewController_setPeriocularFaceIDMatchEnabledForUserConfigurationWithDevice_credentialSet_authContext_enabled_completion___block_invoke_67;
    block[3] = &unk_278D09E20;
    v16 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __151__BKUIPeriocularEnableSplashViewController_setPeriocularFaceIDMatchEnabledForUserConfigurationWithDevice_credentialSet_authContext_enabled_completion___block_invoke_67(uint64_t a1)
{
  v2 = _BKUILoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_241B0A000, v2, OS_LOG_TYPE_DEFAULT, "Final protectedConfigurationForUser: invoking completion block", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  result = 0.0;
  if (!a4)
  {
    return 10.0;
  }

  return result;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v4 = objc_opt_new();

  return v4;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v4 = objc_opt_new();

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 deselectRowAtIndexPath:v7 animated:1];
  [v6 setAllowsSelection:0];
  v8 = [v7 section];

  if (v8 == 1)
  {
    v9 = [(BKUIPeriocularEnableSplashViewController *)self endEnrollActionPrimary];

    if (v9)
    {
      v10 = [(BKUIPeriocularEnableSplashViewController *)self endEnrollActionSecondary];
LABEL_6:
      v12 = v10;
      (*(v10 + 16))();
    }
  }

  else
  {
    v11 = [(BKUIPeriocularEnableSplashViewController *)self endEnrollActionSecondary];

    if (v11)
    {
      v10 = [(BKUIPeriocularEnableSplashViewController *)self endEnrollActionPrimary];
      goto LABEL_6;
    }
  }

  v13 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__BKUIPeriocularEnableSplashViewController_tableView_didSelectRowAtIndexPath___block_invoke;
  block[3] = &unk_278D09978;
  v16 = v6;
  v14 = v6;
  dispatch_after(v13, MEMORY[0x277D85CD0], block);
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  [(BKUIPeriocularEnableSplashViewController *)self maxCellHeight:a3];
  if (v5 < 0.0)
  {
    return *MEMORY[0x277D76F30];
  }

  [(BKUIPeriocularEnableSplashViewController *)self maxCellHeight];
  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  if ([a4 section] == 1)
  {
    [(BKUIPeriocularEnableSplashViewController *)self cellBottom];
  }

  else
  {
    [(BKUIPeriocularEnableSplashViewController *)self cellTop];
  }
  v5 = ;

  return v5;
}

- (id)_createCellForIndexPath:(id)a3
{
  v3 = a3;
  v4 = [[BKUIPeriocularSelectionCell alloc] initWithStyle:3 reuseIdentifier:&stru_2853BB280];
  v5 = [v3 section];

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = v6;
  if (v5 == 1)
  {
    v8 = [v6 localizedStringForKey:@"FACE_MASK_ID_DONT_USE" value:&stru_2853BB280 table:@"Pearl-periocular"];
    v9 = [(BKUIPeriocularSelectionCell *)v4 titleLabel];
    [v9 setText:v8];

    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"FACE_MASK_ID_DONT_USE_DETAIL_TEXT" value:&stru_2853BB280 table:@"Pearl-periocular"];
    v12 = [(BKUIPeriocularSelectionCell *)v4 subtitleLabel];
    [v12 setText:v11];

    v13 = [MEMORY[0x277D755B8] systemImageNamed:@"faceid"];
    v14 = [(BKUIPeriocularSelectionCell *)v4 iconView];
    [v14 setImage:v13];
LABEL_7:

    goto LABEL_8;
  }

  v15 = [v6 localizedStringForKey:@"FACE_MASK_ID_USE" value:&stru_2853BB280 table:@"Pearl-periocular"];
  v16 = [(BKUIPeriocularSelectionCell *)v4 titleLabel];
  [v16 setText:v15];

  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v17 localizedStringForKey:@"FACE_MASK_ID_USE_DETAIL_TEXT" value:&stru_2853BB280 table:@"Pearl-periocular"];
  v18 = [(BKUIPeriocularSelectionCell *)v4 subtitleLabel];
  [v18 setText:v14];

  v13 = [MEMORY[0x277D755B8] systemImageNamed:@"faceid.and.mask"];
  v19 = v13;
  if (!v13)
  {
    v20 = MEMORY[0x277D755B8];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v20 imageNamed:@"local.faceid.and.mask" inBundle:v14 withConfiguration:0];
  }

  v21 = [(BKUIPeriocularSelectionCell *)v4 iconView];
  [v21 setImage:v19];

  if (!v13)
  {

    goto LABEL_7;
  }

LABEL_8:

  [(BKUIPeriocularSelectionCell *)v4 setAccessoryType:1];

  return v4;
}

- (int64_t)preferredStatusBarStyle
{
  v2 = [(BKUIPeriocularEnableSplashViewController *)self traitCollection];
  v3 = [v2 userInterfaceStyle];

  if (v3 == 1)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

- (void)initInBuddy:(uint64_t)a1 bkDevice:(NSObject *)a2 upsell:withEndEnrollmentActionPrimary:enrollmentActionSecondary:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_241B0A000, a2, OS_LOG_TYPE_ERROR, "BKUIPearl:unable to fetch BKSystemProtectedConfiguration and determine if the user already enabled Periocular Splash ... error?:%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initInBuddy:(uint64_t)a1 bkDevice:(NSObject *)a2 upsell:withEndEnrollmentActionPrimary:enrollmentActionSecondary:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_241B0A000, a2, OS_LOG_TYPE_ERROR, "BKUIPearl:unable to fetch BKUserProtectedConfiguration and determine if the user already enabled Periocular Splash ... error?:%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end