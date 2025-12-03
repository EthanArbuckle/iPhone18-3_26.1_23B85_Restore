@interface CPSListTemplateViewController
+ (BOOL)clientAssistantCellConfiguration:(id)configuration availableWithError:(id *)error templateEnvironment:(id)environment;
+ (id)intentIdentifierFromConfigurationEnum:(int64_t)enum;
- (BOOL)_playingStateForSnapshot:(id)snapshot;
- (BOOL)_sectionShouldHaveFooterSpacingAtIndex:(int64_t)index;
- (BOOL)_shouldRetainFocusOnWillAppear;
- (BOOL)tableView:(id)view shouldDrawBottomSeparatorForSection:(int64_t)section;
- (CPListTemplate)listTemplate;
- (CPSListTemplateViewController)initWithListTemplate:(id)template templateDelegate:(id)delegate templateEnvironment:(id)environment;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_buttonForIdentifier:(id)identifier;
- (id)_prepareCPUIGridButtonsForButtons:(id)buttons;
- (id)preferredFocusEnvironments;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)_activateSiriForAssistantItem;
- (void)_activateSiriForMessageItem:(id)item;
- (void)_addSpinnerToIdentifier:(id)identifier;
- (void)_cancelScheduledLoadingSpinner;
- (void)_cellSelectionCompleted:(id)completed;
- (void)_scheduleLoadingSpinnerForIdentifier:(id)identifier;
- (void)_scrollViewAccessoryInsetsDidChange:(id)change;
- (void)_startSpinnerTimerFired:(id)fired identifier:(id)identifier;
- (void)_timeoutSpinnerFired:(id)fired identifier:(id)identifier;
- (void)_updateEmptyView;
- (void)_updatePlayingIndicators;
- (void)_viewDidLoad;
- (void)didSelectHeaderButtonWithIdentifier:(id)identifier;
- (void)gridButton:(id)button setImageSet:(id)set;
- (void)gridButton:(id)button setTitleVariants:(id)variants;
- (void)gridButton:(id)button setUnread:(BOOL)unread;
- (void)nowPlayingManager:(id)manager didUpdateSnapshot:(id)snapshot;
- (void)reloadItems:(id)items;
- (void)reloadTableHeaderGridButtons:(id)buttons;
- (void)reloadTemplate:(id)template;
- (void)scrollToTop;
- (void)setButton:(id)button enabled:(BOOL)enabled;
- (void)setButton:(id)button hidden:(BOOL)hidden;
- (void)setControl:(id)control enabled:(BOOL)enabled;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)updateAssistantCell;
- (void)updateAssistantCellConfiguration:(id)configuration withCompletion:(id)completion;
- (void)updateAssistantCellTitle;
- (void)updateSectionHeaderImage:(id)image forSectionIdentifier:(id)identifier;
- (void)updateTableHeaderGridButtons:(id)buttons;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation CPSListTemplateViewController

- (CPListTemplate)listTemplate
{
  v3 = objc_opt_class();
  associatedTemplate = [(CPSBaseTemplateViewController *)self associatedTemplate];
  v5 = CPSSafeCast_16(v3, associatedTemplate);
  MEMORY[0x277D82BD8](associatedTemplate);

  return v5;
}

- (CPSListTemplateViewController)initWithListTemplate:(id)template templateDelegate:(id)delegate templateEnvironment:(id)environment
{
  v31 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  v27 = 0;
  objc_storeStrong(&v27, delegate);
  v26 = 0;
  objc_storeStrong(&v26, environment);
  v5 = selfCopy;
  selfCopy = 0;
  v25.receiver = v5;
  v25.super_class = CPSListTemplateViewController;
  v23 = [(CPSBaseTemplateViewController *)&v25 initWithTemplate:location[0] templateDelegate:v27 templateEnvironment:v26];
  selfCopy = v23;
  objc_storeStrong(&selfCopy, v23);
  if (v23)
  {
    v17 = [CPSSectionedDataSource alloc];
    sections = [location[0] sections];
    v6 = [CPSSectionedDataSource initWithSections:v17 templateEnvironment:"initWithSections:templateEnvironment:"];
    dataSource = selfCopy->_dataSource;
    selfCopy->_dataSource = v6;
    MEMORY[0x277D82BD8](dataSource);
    *&v8 = MEMORY[0x277D82BD8](sections).n128_u64[0];
    [(CPSListTemplateViewController *)selfCopy updateAssistantCell];
    listTemplate = [(CPSListTemplateViewController *)selfCopy listTemplate];
    title = [(CPListTemplate *)listTemplate title];
    [(CPSListTemplateViewController *)selfCopy setTitle:?];
    MEMORY[0x277D82BD8](title);
    MEMORY[0x277D82BD8](listTemplate);
    v24 = CarPlaySupportGeneralLogging();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v14 = location[0];
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(location[0], "sectionCount")}];
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(location[0], "itemCount")}];
      __os_log_helper_16_2_3_8_64_8_66_8_66(v30, v14, v16, v15);
      _os_log_impl(&dword_242FE8000, v24, OS_LOG_TYPE_DEFAULT, "Received a list template %@ with %{public}@ sections and %{public}@ items", v30, 0x20u);
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);
    }

    objc_storeStrong(&v24, 0);
    if ([v26 canBecomeNowPlayingApp])
    {
      nowPlayingManager = [v26 nowPlayingManager];
      nowPlayingManager = selfCopy->_nowPlayingManager;
      selfCopy->_nowPlayingManager = nowPlayingManager;
      *&v11 = MEMORY[0x277D82BD8](nowPlayingManager).n128_u64[0];
      [(CPUINowPlayingManager *)selfCopy->_nowPlayingManager addNowPlayingObserver:selfCopy, v11];
    }
  }

  v13 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v13;
}

- (BOOL)_shouldRetainFocusOnWillAppear
{
  traitCollection = [(CPSListTemplateViewController *)self traitCollection];
  primaryInteractionModel = [traitCollection primaryInteractionModel];
  MEMORY[0x277D82BD8](traitCollection);
  return primaryInteractionModel == 2 || primaryInteractionModel == 8;
}

- (void)_viewDidLoad
{
  v57[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v55 = a2;
  v54.receiver = self;
  v54.super_class = CPSListTemplateViewController;
  [(CPSBaseTemplateViewController *)&v54 _viewDidLoad];
  view = [(CPSListTemplateViewController *)selfCopy view];
  v38 = [CPSTableView alloc];
  v52 = [(CPSTableView *)v38 initWithFrame:0 style:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [v52 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v52 setDelegate:selfCopy];
  v37 = objc_opt_class();
  aClass = objc_opt_class();
  v35 = NSStringFromClass(aClass);
  [v52 registerClass:v37 forHeaderFooterViewReuseIdentifier:?];
  MEMORY[0x277D82BD8](v35);
  v34 = objc_opt_class();
  v33 = objc_opt_class();
  v32 = NSStringFromClass(v33);
  [v52 registerClass:v34 forHeaderFooterViewReuseIdentifier:?];
  MEMORY[0x277D82BD8](v32);
  v31 = objc_opt_class();
  v30 = objc_opt_class();
  v29 = NSStringFromClass(v30);
  [v52 registerClass:v31 forCellReuseIdentifier:?];
  MEMORY[0x277D82BD8](v29);
  v28 = objc_opt_class();
  identifier = [MEMORY[0x277CF9188] identifier];
  [v52 registerClass:v28 forCellReuseIdentifier:?];
  MEMORY[0x277D82BD8](identifier);
  [v52 setRowHeight:*MEMORY[0x277D76F30]];
  [v52 setEstimatedRowHeight:*MEMORY[0x277D76F30]];
  [(CPSDataSource *)selfCopy->_dataSource setTableView:v52];
  if (_UISolariumEnabled())
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v52 setBackgroundColor:?];
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [view setBackgroundColor:?];
    v2 = MEMORY[0x277D82BD8](clearColor2).n128_u64[0];
  }

  else
  {
    tableBackgroundColor = [MEMORY[0x277D75348] tableBackgroundColor];
    [view setBackgroundColor:?];
    v2 = MEMORY[0x277D82BD8](tableBackgroundColor).n128_u64[0];
  }

  view2 = [(CPSListTemplateViewController *)selfCopy view];
  [view2 addSubview:v52];
  *&v3 = MEMORY[0x277D82BD8](view2).n128_u64[0];
  [(CPSListTemplateViewController *)selfCopy setTableView:v52, v3];
  v22 = MEMORY[0x277CCAAD0];
  topAnchor = [view topAnchor];
  topAnchor2 = [v52 topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:?];
  v57[0] = v19;
  bottomAnchor = [view bottomAnchor];
  bottomAnchor2 = [v52 bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:?];
  v57[1] = v16;
  leftAnchor = [view leftAnchor];
  leftAnchor2 = [v52 leftAnchor];
  v13 = [leftAnchor constraintEqualToAnchor:?];
  v57[2] = v13;
  rightAnchor = [view rightAnchor];
  rightAnchor2 = [v52 rightAnchor];
  v10 = [rightAnchor constraintEqualToAnchor:?];
  v57[3] = v10;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:4];
  [v22 activateConstraints:?];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](rightAnchor2);
  MEMORY[0x277D82BD8](rightAnchor);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](leftAnchor2);
  MEMORY[0x277D82BD8](leftAnchor);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](topAnchor2);
  *&v4 = MEMORY[0x277D82BD8](topAnchor).n128_u64[0];
  tableView = [(CPSListTemplateViewController *)selfCopy tableView];
  [(CPSTableView *)tableView setAccessibilityIdentifier:@"CPListTemplate"];
  *&v5 = MEMORY[0x277D82BD8](tableView).n128_u64[0];
  [(CPSDataSource *)selfCopy->_dataSource setRowAnimation:5, v5];
  objc_initWeak(&location, selfCopy);
  v45 = MEMORY[0x277D85DD0];
  v46 = -1073741824;
  v47 = 0;
  v48 = __45__CPSListTemplateViewController__viewDidLoad__block_invoke;
  v49 = &unk_278D93460;
  objc_copyWeak(&v50, &location);
  [(CPSDataSource *)selfCopy->_dataSource setCellCreateBlock:&v45];
  v39 = MEMORY[0x277D85DD0];
  v40 = -1073741824;
  v41 = 0;
  v42 = __45__CPSListTemplateViewController__viewDidLoad__block_invoke_2;
  v43 = &unk_278D93528;
  objc_copyWeak(v44, &location);
  [(CPSDataSource *)selfCopy->_dataSource setCellConfigureBlock:&v39];
  tableView2 = [(CPSListTemplateViewController *)selfCopy tableView];
  [(CPSTableView *)tableView2 reloadData];
  *&v6 = MEMORY[0x277D82BD8](tableView2).n128_u64[0];
  [(CPSListTemplateViewController *)selfCopy _updateEmptyView];
  objc_destroyWeak(v44);
  objc_destroyWeak(&v50);
  objc_destroyWeak(&location);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(&view, 0);
}

id __45__CPSListTemplateViewController__viewDidLoad__block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v34 = 0;
  objc_storeStrong(&v34, a3);
  v33 = 0;
  objc_storeStrong(&v33, a4);
  v32[1] = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_opt_class();
    v32[0] = CPSSafeCast_16(v4, location[0]);
    v31 = 0;
    if ([v32[0] style])
    {
      v19 = v33;
      v20 = +[CPSGridViewCell reuseIdentifier];
      v7 = [v19 dequeueReusableCellWithIdentifier:? forIndexPath:?];
      v8 = v31;
      v31 = v7;
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v20);
    }

    else
    {
      v5 = [(_CPUIBaseTableCell *)CPSImageRowCell cellForTableView:v33];
      v6 = v31;
      v31 = v5;
      MEMORY[0x277D82BD8](v6);
    }

    UIEdgeInsetsMake_1();
    *&v29 = v9;
    *(&v29 + 1) = v10;
    *&v30 = v11;
    *(&v30 + 1) = v12;
    v27 = v29;
    v28 = v30;
    [v31 setSeparatorInset:{v9, v10, v11, v12}];
    v36 = MEMORY[0x277D82BE0](v31);
    v26 = 1;
    objc_storeStrong(&v31, 0);
    objc_storeStrong(v32, 0);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = [MEMORY[0x277CF9138] cellForTableView:v33];
      v26 = 1;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(a1 + 4);
      v16 = v33;
      v17 = [MEMORY[0x277CF9188] identifier];
      v24 = [v16 dequeueReusableCellWithIdentifier:? forIndexPath:?];
      v18 = [WeakRetained templateEnvironment];
      if ([v18 hasNavigationEntitlement])
      {
        v13 = 30;
      }

      else
      {
        v13 = 44;
      }

      [v24 setMaximumImageSize:v13];
      MEMORY[0x277D82BD8](v18);
      v36 = MEMORY[0x277D82BE0](v24);
      v26 = 1;
      objc_storeStrong(&v24, 0);
      objc_storeStrong(&WeakRetained, 0);
    }
  }

  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
  v14 = v36;

  return v14;
}

void __45__CPSListTemplateViewController__viewDidLoad__block_invoke_2(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v96 = 0;
  objc_storeStrong(&v96, a3);
  v95 = 0;
  objc_storeStrong(&v95, a4);
  v94[1] = a1;
  v94[0] = 0;
  v93 = CPListItemIdentifier(v96);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v91 = [WeakRetained templateDelegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_opt_class();
    v5 = CPSSafeCast_16(v4, location[0]);
    v6 = v94[0];
    v94[0] = v5;
    MEMORY[0x277D82BD8](v6);
    v80 = MEMORY[0x277D85DD0];
    v81 = -1073741824;
    v82 = 0;
    v83 = __45__CPSListTemplateViewController__viewDidLoad__block_invoke_3;
    v84 = &unk_278D93488;
    v85 = MEMORY[0x277D82BE0](v91);
    v86 = MEMORY[0x277D82BE0](v96);
    v87 = MEMORY[0x277D82BE0](WeakRetained);
    v88 = MEMORY[0x277D82BE0](v93);
    v89 = MEMORY[0x277D82BE0](v95);
    v90 = MEMORY[0x245D2A460](&v80);
    v79 = MEMORY[0x277D82BE0](v96);
    if ([v79 style])
    {
      v70 = MEMORY[0x277D85DD0];
      v71 = -1073741824;
      v72 = 0;
      v73 = __45__CPSListTemplateViewController__viewDidLoad__block_invoke_189;
      v74 = &unk_278D934B0;
      v75 = MEMORY[0x277D82BE0](v91);
      v76 = MEMORY[0x277D82BE0](v96);
      v77 = MEMORY[0x277D82BE0](WeakRetained);
      v78 = MEMORY[0x245D2A460](&v70);
      v62 = MEMORY[0x277D85DD0];
      v63 = -1073741824;
      v64 = 0;
      v65 = __45__CPSListTemplateViewController__viewDidLoad__block_invoke_191;
      v66 = &unk_278D93500;
      v67 = MEMORY[0x277D82BE0](v79);
      v68 = MEMORY[0x277D82BE0](v78);
      v69 = MEMORY[0x245D2A460](&v62);
      v7 = objc_opt_class();
      v61 = CPSSafeCast_16(v7, location[0]);
      v32 = v79;
      v33 = v69;
      v34 = v90;
      v36 = [WeakRetained templateEnvironment];
      v35 = [v36 bundleIdentifier];
      [v61 configureWithListImageRowItem:v32 action:v33 titleAction:v34 bundleIdentifier:?];
      MEMORY[0x277D82BD8](v35);
      if (![v95 section] && !objc_msgSend(v95, "row") && (_UISolariumEnabled() & 1) != 0)
      {
        v59 = *MEMORY[0x277CF9098];
        v60 = *(MEMORY[0x277CF9098] + 16);
        v57 = v59;
        v58 = v60;
        [v61 setContentInsets:{v59, v60}];
      }

      objc_storeStrong(&v61, 0);
      objc_storeStrong(&v69, 0);
      objc_storeStrong(&v68, 0);
      objc_storeStrong(&v67, 0);
      objc_storeStrong(&v78, 0);
      objc_storeStrong(&v77, 0);
      objc_storeStrong(&v76, 0);
      objc_storeStrong(&v75, 0);
    }

    else
    {
      v48 = MEMORY[0x277D85DD0];
      v49 = -1073741824;
      v50 = 0;
      v51 = __45__CPSListTemplateViewController__viewDidLoad__block_invoke_3_195;
      v52 = &unk_278D934B0;
      v53 = MEMORY[0x277D82BE0](v91);
      v54 = MEMORY[0x277D82BE0](v96);
      v55 = MEMORY[0x277D82BE0](WeakRetained);
      v56 = MEMORY[0x245D2A460](&v48);
      v8 = objc_opt_class();
      v47 = CPSSafeCast_16(v8, v94[0]);
      v25 = v79;
      v26 = v56;
      v27 = v90;
      v31 = [WeakRetained currentSpinningIdentifier];
      v28 = [v31 isEqual:v93];
      v30 = [WeakRetained templateEnvironment];
      v29 = [v30 bundleIdentifier];
      [v47 configureWithImageRowItem:v25 selectGridItemBlock:v26 selectTitleBlock:v27 showActivityIndicator:v28 bundleIdentifier:?];
      MEMORY[0x277D82BD8](v29);
      MEMORY[0x277D82BD8](v30);
      if (![v95 section] && !objc_msgSend(v95, "row") && (_UISolariumEnabled() & 1) != 0)
      {
        v45 = *MEMORY[0x277CF90A0];
        v46 = *(MEMORY[0x277CF90A0] + 16);
        v43 = v45;
        v44 = v46;
        [v47 setContentInsets:{v45, v46}];
      }

      objc_storeStrong(&v47, 0);
      objc_storeStrong(&v56, 0);
      objc_storeStrong(&v55, 0);
      objc_storeStrong(&v54, 0);
      objc_storeStrong(&v53, 0);
    }

    objc_storeStrong(&v79, 0);
    objc_storeStrong(&v90, 0);
    objc_storeStrong(&v89, 0);
    objc_storeStrong(&v88, 0);
    objc_storeStrong(&v87, 0);
    objc_storeStrong(&v86, 0);
    objc_storeStrong(&v85, 0);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = MEMORY[0x277D82BE0](v96);
      v9 = objc_opt_class();
      v10 = CPSSafeCast_16(v9, location[0]);
      v11 = v94[0];
      v94[0] = v10;
      *&v12 = MEMORY[0x277D82BD8](v11).n128_u64[0];
      [v94[0] configureWithMessageListItem:{v42, v12}];
      objc_storeStrong(&v42, 0);
    }

    else
    {
      v13 = objc_opt_class();
      v41 = CPSSafeCast_16(v13, v96);
      v14 = objc_opt_class();
      v40 = CPSSafeCast_16(v14, location[0]);
      v23 = [WeakRetained templateEnvironment];
      v24 = 0;
      if ([v23 canBecomeNowPlayingApp])
      {
        v24 = [v41 isPlaying];
      }

      v15 = MEMORY[0x277D82BD8](v23).n128_u64[0];
      if (v24)
      {
        v22 = [WeakRetained nowPlayingManager];
        v21 = [v22 snapshot];
        [WeakRetained _playingStateForSnapshot:?];
        MEMORY[0x277D82BD8](v21);
        v15 = MEMORY[0x277D82BD8](v22).n128_u64[0];
      }

      v18 = v40;
      v16 = v41;
      v20 = [WeakRetained currentSpinningIdentifier];
      v17 = [v20 isEqual:v93];
      v19 = [WeakRetained templateEnvironment];
      [v18 configureWithListItem:v16 spinning:v17 environment:? activePlayback:?];
      MEMORY[0x277D82BD8](v19);
      MEMORY[0x277D82BD8](v20);
      objc_storeStrong(&v40, 0);
      objc_storeStrong(&v41, 0);
    }
  }

  objc_storeStrong(&v91, 0);
  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(&v93, 0);
  objc_storeStrong(v94, 0);
  objc_storeStrong(&v95, 0);
  objc_storeStrong(&v96, 0);
  objc_storeStrong(location, 0);
}

double __45__CPSListTemplateViewController__viewDidLoad__block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  if ([*(a1 + 32) conformsToProtocol:&unk_285632AF8])
  {
    if ([*(a1 + 40) isEnabled])
    {
      location[0] = CarPlaySupportGeneralLogging();
      v10 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
      {
        v7 = [*(a1 + 40) identifier];
        __os_log_helper_16_2_1_8_66(v13, v7);
        _os_log_impl(&dword_242FE8000, location[0], v10, "Selected title row of image row with identifier %{public}@", v13, 0xCu);
        MEMORY[0x277D82BD8](v7);
      }

      objc_storeStrong(location, 0);
      v4 = *(a1 + 32);
      v6 = [*(a1 + 48) listTemplate];
      v5 = [v6 identifier];
      [v4 listTemplateWithIdentifier:? didSelectListItemWithIdentifier:? completionHandler:?];
      MEMORY[0x277D82BD8](v5);
      *&result = MEMORY[0x277D82BD8](v6).n128_u64[0];
    }

    else
    {
      v9 = CarPlaySupportGeneralLogging();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v3 = [*(a1 + 40) identifier];
        __os_log_helper_16_2_1_8_66(v12, v3);
        _os_log_impl(&dword_242FE8000, v9, OS_LOG_TYPE_DEFAULT, "Selected title row of DISABLED image row with identifier %{public}@", v12, 0xCu);
        MEMORY[0x277D82BD8](v3);
      }

      objc_storeStrong(&v9, 0);
      v2 = [*(a1 + 48) tableView];
      [v2 deselectRowAtIndexPath:*(a1 + 64) animated:1];
      *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
    }
  }

  return result;
}

double __45__CPSListTemplateViewController__viewDidLoad__block_invoke_189(id *a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v12 = a2;
  location[1] = a1;
  if ([a1[4] conformsToProtocol:&unk_285632AF8])
  {
    location[0] = CarPlaySupportGeneralLogging();
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
      v8 = [a1[5] identifier];
      __os_log_helper_16_2_2_8_66_8_66(v14, v9, v8);
      _os_log_impl(&dword_242FE8000, location[0], OS_LOG_TYPE_DEFAULT, "Selected image at index %{public}@ of image row item with identifier %{public}@", v14, 0x16u);
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
    }

    objc_storeStrong(location, 0);
    v4 = a1[4];
    v7 = [a1[6] listTemplate];
    v6 = [v7 identifier];
    v3 = v12;
    v5 = [a1[5] identifier];
    [v4 listTemplateWithIdentifier:v6 didSelectImageAtIndex:v3 inImageRowItemWithIdentifier:?];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    *&result = MEMORY[0x277D82BD8](v7).n128_u64[0];
  }

  return result;
}

void __45__CPSListTemplateViewController__viewDidLoad__block_invoke_191(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11[2] = a1;
  v4 = [*(a1 + 32) elements];
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __45__CPSListTemplateViewController__viewDidLoad__block_invoke_2_192;
  v10 = &unk_278D934D8;
  v11[0] = MEMORY[0x277D82BE0](location[0]);
  v5 = [v4 indexOfObjectPassingTest:&v6];
  v2 = MEMORY[0x277D82BD8](v4);
  v11[1] = v5;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    (*(*(a1 + 40) + 16))(v2);
  }

  objc_storeStrong(v11, 0);
  objc_storeStrong(location, 0);
}

uint64_t __45__CPSListTemplateViewController__viewDidLoad__block_invoke_2_192(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [location[0] identifier];
  v5 = [v4 isEqualToString:a1[4]];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
  return v5;
}

double __45__CPSListTemplateViewController__viewDidLoad__block_invoke_3_195(id *a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v12 = a2;
  location[1] = a1;
  if ([a1[4] conformsToProtocol:&unk_285632AF8])
  {
    location[0] = CarPlaySupportGeneralLogging();
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
      v8 = [a1[5] identifier];
      __os_log_helper_16_2_2_8_66_8_66(v14, v9, v8);
      _os_log_impl(&dword_242FE8000, location[0], OS_LOG_TYPE_DEFAULT, "Selected image at index %{public}@ of image row item with identifier %{public}@", v14, 0x16u);
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
    }

    objc_storeStrong(location, 0);
    v4 = a1[4];
    v7 = [a1[6] listTemplate];
    v6 = [v7 identifier];
    v3 = v12;
    v5 = [a1[5] identifier];
    [v4 listTemplateWithIdentifier:v6 didSelectImageAtIndex:v3 inImageRowItemWithIdentifier:?];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    *&result = MEMORY[0x277D82BD8](v7).n128_u64[0];
  }

  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v7 = a2;
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = CPSListTemplateViewController;
  [(CPSBaseTemplateViewController *)&v5 viewWillAppear:appear];
  if (![(CPSListTemplateViewController *)selfCopy _shouldRetainFocusOnWillAppear])
  {
    tableView = [(CPSListTemplateViewController *)selfCopy tableView];
    location = [tableView indexPathForSelectedRow];
    if (location)
    {
      [tableView deselectRowAtIndexPath:location animated:appearCopy];
    }

    objc_storeStrong(&location, 0);
    objc_storeStrong(&tableView, 0);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v8 = a2;
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = CPSListTemplateViewController;
  [(CPSBaseTemplateViewController *)&v6 viewDidAppear:appear];
  [(CPSListTemplateViewController *)selfCopy setReflowHeaderGrid:1];
  [(CPSListTemplateViewController *)selfCopy _updateEmptyView];
  templateEnvironment = [(CPSBaseTemplateViewController *)selfCopy templateEnvironment];
  canBecomeNowPlayingApp = [(CPSTemplateEnvironment *)templateEnvironment canBecomeNowPlayingApp];
  *&v3 = MEMORY[0x277D82BD8](templateEnvironment).n128_u64[0];
  if (canBecomeNowPlayingApp)
  {
    [(CPSListTemplateViewController *)selfCopy _updatePlayingIndicators];
  }
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSListTemplateViewController;
  [(CPSListTemplateViewController *)&v2 viewWillLayoutSubviews];
  [(CPSListTemplateViewController *)selfCopy setReflowHeaderGrid:1];
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = CPSListTemplateViewController;
  [(CPSListTemplateViewController *)&v7 viewDidLayoutSubviews];
  if ([(CPSListTemplateViewController *)selfCopy reflowHeaderGrid])
  {
    [(CPSListTemplateViewController *)selfCopy setReflowHeaderGrid:0];
    tableView = [(CPSListTemplateViewController *)selfCopy tableView];
    [(CPSTableView *)tableView setTableHeaderView:0];
    *&v2 = MEMORY[0x277D82BD8](tableView).n128_u64[0];
    v4 = selfCopy;
    listTemplate = [(CPSListTemplateViewController *)selfCopy listTemplate];
    headerGridButtons = [(CPListTemplate *)listTemplate headerGridButtons];
    [(CPSListTemplateViewController *)v4 updateTableHeaderGridButtons:?];
    MEMORY[0x277D82BD8](headerGridButtons);
    MEMORY[0x277D82BD8](listTemplate);
  }
}

- (void)_updateEmptyView
{
  v55[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  v41 = objc_opt_class();
  tableView = [(CPSListTemplateViewController *)selfCopy tableView];
  tableHeaderView = [(CPSTableView *)tableView tableHeaderView];
  location[0] = CPSSafeCast_16(v41, tableHeaderView);
  MEMORY[0x277D82BD8](tableHeaderView);
  dataSource = [(CPSListTemplateViewController *)selfCopy dataSource];
  v50 = 0;
  v48 = 0;
  v45 = 0;
  if (![(CPSSectionedDataSource *)dataSource numberOfItems])
  {
    dataSource2 = [(CPSListTemplateViewController *)selfCopy dataSource];
    v50 = 1;
    v45 = 0;
    if (![(CPSSectionedDataSource *)dataSource2 numberOfEnhancedSections])
    {
      gridButtons = [location[0] gridButtons];
      v48 = 1;
      v45 = [gridButtons count] == 0;
    }
  }

  if (v48)
  {
    MEMORY[0x277D82BD8](gridButtons);
  }

  if (v50)
  {
    MEMORY[0x277D82BD8](dataSource2);
  }

  *&v2 = MEMORY[0x277D82BD8](dataSource).n128_u64[0];
  v52 = v45;
  if (v45)
  {
    emptyView = [(CPSListTemplateViewController *)selfCopy emptyView];
    *&v4 = MEMORY[0x277D82BD8](emptyView).n128_u64[0];
    if (!emptyView)
    {
      v5 = [CPSEmptyView alloc];
      v46 = [(CPSEmptyView *)v5 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      [(CPSListTemplateViewController *)selfCopy setEmptyView:v46];
      tableView2 = [(CPSListTemplateViewController *)selfCopy tableView];
      [(CPSTableView *)tableView2 setHidden:1];
      *&v6 = MEMORY[0x277D82BD8](tableView2).n128_u64[0];
      view = [(CPSListTemplateViewController *)selfCopy view];
      [view addSubview:v46];
      *&v7 = MEMORY[0x277D82BD8](view).n128_u64[0];
      v20 = MEMORY[0x277CCAAD0];
      leadingAnchor = [(CPSEmptyView *)v46 leadingAnchor];
      view2 = [(CPSListTemplateViewController *)selfCopy view];
      safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
      leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
      v32 = [leadingAnchor constraintEqualToAnchor:12.0 constant:?];
      v55[0] = v32;
      trailingAnchor = [(CPSEmptyView *)v46 trailingAnchor];
      view3 = [(CPSListTemplateViewController *)selfCopy view];
      safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
      trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
      v27 = [trailingAnchor constraintEqualToAnchor:-12.0 constant:?];
      v55[1] = v27;
      centerYAnchor = [(CPSEmptyView *)v46 centerYAnchor];
      view4 = [(CPSListTemplateViewController *)selfCopy view];
      safeAreaLayoutGuide3 = [view4 safeAreaLayoutGuide];
      centerYAnchor2 = [safeAreaLayoutGuide3 centerYAnchor];
      v22 = [centerYAnchor constraintEqualToAnchor:?];
      v55[2] = v22;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:3];
      [v20 activateConstraints:?];
      MEMORY[0x277D82BD8](v21);
      MEMORY[0x277D82BD8](v22);
      MEMORY[0x277D82BD8](centerYAnchor2);
      MEMORY[0x277D82BD8](safeAreaLayoutGuide3);
      MEMORY[0x277D82BD8](view4);
      MEMORY[0x277D82BD8](centerYAnchor);
      MEMORY[0x277D82BD8](v27);
      MEMORY[0x277D82BD8](trailingAnchor2);
      MEMORY[0x277D82BD8](safeAreaLayoutGuide2);
      MEMORY[0x277D82BD8](view3);
      MEMORY[0x277D82BD8](trailingAnchor);
      MEMORY[0x277D82BD8](v32);
      MEMORY[0x277D82BD8](leadingAnchor2);
      MEMORY[0x277D82BD8](safeAreaLayoutGuide);
      MEMORY[0x277D82BD8](view2);
      MEMORY[0x277D82BD8](leadingAnchor);
      objc_storeStrong(&v46, 0);
    }

    emptyView2 = [(CPSListTemplateViewController *)selfCopy emptyView];
    listTemplate = [(CPSListTemplateViewController *)selfCopy listTemplate];
    emptyViewTitleVariants = [(CPListTemplate *)listTemplate emptyViewTitleVariants];
    [(CPSEmptyView *)emptyView2 setTitleVariants:?];
    MEMORY[0x277D82BD8](emptyViewTitleVariants);
    MEMORY[0x277D82BD8](listTemplate);
    *&v8 = MEMORY[0x277D82BD8](emptyView2).n128_u64[0];
    emptyView3 = [(CPSListTemplateViewController *)selfCopy emptyView];
    listTemplate2 = [(CPSListTemplateViewController *)selfCopy listTemplate];
    emptyViewSubtitleVariants = [(CPListTemplate *)listTemplate2 emptyViewSubtitleVariants];
    [(CPSEmptyView *)emptyView3 setSubtitleVariants:?];
    MEMORY[0x277D82BD8](emptyViewSubtitleVariants);
    MEMORY[0x277D82BD8](listTemplate2);
    *&v9 = MEMORY[0x277D82BD8](emptyView3).n128_u64[0];
    emptyView4 = [(CPSListTemplateViewController *)selfCopy emptyView];
    listTemplate3 = [(CPSListTemplateViewController *)selfCopy listTemplate];
    [(CPSEmptyView *)emptyView4 setShowsSpinner:[(CPListTemplate *)listTemplate3 showsSpinnerWhileEmpty]];
    MEMORY[0x277D82BD8](listTemplate3);
    MEMORY[0x277D82BD8](emptyView4);
    v47 = 0;
  }

  else
  {
    emptyView5 = [(CPSListTemplateViewController *)selfCopy emptyView];
    *&v3 = MEMORY[0x277D82BD8](emptyView5).n128_u64[0];
    if (emptyView5)
    {
      emptyView6 = [(CPSListTemplateViewController *)selfCopy emptyView];
      [(CPSEmptyView *)emptyView6 removeFromSuperview];
      [(CPSListTemplateViewController *)selfCopy setEmptyView:0, MEMORY[0x277D82BD8](emptyView6).n128_f64[0]];
    }

    tableView3 = [(CPSListTemplateViewController *)selfCopy tableView];
    [(CPSTableView *)tableView3 setHidden:0];
    MEMORY[0x277D82BD8](tableView3);
    v47 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)_addSpinnerToIdentifier:(id)identifier
{
  v32 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v20 = location[0];
  nextSpinningIdentifier = [(CPSListTemplateViewController *)selfCopy nextSpinningIdentifier];
  v22 = [v20 isEqual:?];
  MEMORY[0x277D82BD8](nextSpinningIdentifier);
  if (v22)
  {
    v27 = CarPlaySupportGeneralLogging();
    v26 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_66(v31, location[0]);
      _os_log_impl(&dword_242FE8000, v27, v26, "Adding spinner to list item %{public}@", v31, 0xCu);
    }

    objc_storeStrong(&v27, 0);
    currentSpinningIdentifier = [(CPSListTemplateViewController *)selfCopy currentSpinningIdentifier];
    v25 = [(NSUUID *)currentSpinningIdentifier copy];
    *&v3 = MEMORY[0x277D82BD8](currentSpinningIdentifier).n128_u64[0];
    nextSpinningIdentifier2 = [(CPSListTemplateViewController *)selfCopy nextSpinningIdentifier];
    [(CPSListTemplateViewController *)selfCopy setCurrentSpinningIdentifier:?];
    *&v4 = MEMORY[0x277D82BD8](nextSpinningIdentifier2).n128_u64[0];
    [(CPSListTemplateViewController *)selfCopy setNextSpinningIdentifier:0, v4];
    v24 = [MEMORY[0x277CBEB58] set];
    v23 = 0;
    if (v25)
    {
      dataSource = [(CPSListTemplateViewController *)selfCopy dataSource];
      v5 = [(CPSSectionedDataSource *)dataSource indexPathForItemWithIdentifier:location[0]];
      v6 = v23;
      v23 = v5;
      MEMORY[0x277D82BD8](v6);
      *&v7 = MEMORY[0x277D82BD8](dataSource).n128_u64[0];
      if (v23)
      {
        [v24 addObject:{v23, v7}];
      }
    }

    currentSpinningIdentifier2 = [(CPSListTemplateViewController *)selfCopy currentSpinningIdentifier];
    *&v8 = MEMORY[0x277D82BD8](currentSpinningIdentifier2).n128_u64[0];
    if (currentSpinningIdentifier2)
    {
      dataSource2 = [(CPSListTemplateViewController *)selfCopy dataSource];
      currentSpinningIdentifier3 = [(CPSListTemplateViewController *)selfCopy currentSpinningIdentifier];
      v9 = [(CPSSectionedDataSource *)dataSource2 indexPathForItemWithIdentifier:?];
      v10 = v23;
      v23 = v9;
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](currentSpinningIdentifier3);
      *&v11 = MEMORY[0x277D82BD8](dataSource2).n128_u64[0];
      if (v23)
      {
        [v24 addObject:{v23, v11}];
      }
    }

    else
    {
      [(CPSListTemplateViewController *)selfCopy setCurrentSpinningIdentifier:0, v8];
    }

    if ([v24 count])
    {
      dataSource3 = [(CPSListTemplateViewController *)selfCopy dataSource];
      allObjects = [v24 allObjects];
      [(CPSDataSource *)dataSource3 reloadItemsAtIndexPaths:?];
      MEMORY[0x277D82BD8](allObjects);
      MEMORY[0x277D82BD8](dataSource3);
    }

    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)_scheduleLoadingSpinnerForIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  [(CPSListTemplateViewController *)selfCopy setNextSpinningIdentifier:location[0]];
  objc_initWeak(&from, selfCopy);
  if (![(CPSListTemplateViewController *)selfCopy spinnerState])
  {
    v6 = MEMORY[0x277CBEBB8];
    v15 = MEMORY[0x277D85DD0];
    v16 = -1073741824;
    v17 = 0;
    v18 = __70__CPSListTemplateViewController__scheduleLoadingSpinnerForIdentifier___block_invoke;
    v19 = &unk_278D93550;
    objc_copyWeak(&v21, &from);
    v20 = MEMORY[0x277D82BE0](location[0]);
    v5 = [v6 scheduledTimerWithTimeInterval:0 repeats:&v15 block:0.2];
    [(CPSListTemplateViewController *)selfCopy setSpinnerStartTimer:?];
    v14 = 0;
    MEMORY[0x277D82BD8](v5);
    v4 = MEMORY[0x277CBEBB8];
    v7 = MEMORY[0x277D85DD0];
    v8 = -1073741824;
    v9 = 0;
    v10 = __70__CPSListTemplateViewController__scheduleLoadingSpinnerForIdentifier___block_invoke_2;
    v11 = &unk_278D93550;
    objc_copyWeak(&v13, &from);
    v12 = MEMORY[0x277D82BE0](location[0]);
    v3 = [v4 scheduledTimerWithTimeInterval:0 repeats:&v7 block:10.0];
    [(CPSListTemplateViewController *)selfCopy setSpinnerTimeoutTimer:?];
    [(CPSListTemplateViewController *)selfCopy setSpinnerState:1, MEMORY[0x277D82BD8](v3).n128_f64[0]];
    objc_storeStrong(&v12, 0);
    objc_destroyWeak(&v13);
    objc_storeStrong(&v20, 0);
    objc_destroyWeak(&v21);
  }

  objc_destroyWeak(&from);
  objc_storeStrong(location, 0);
}

void __70__CPSListTemplateViewController__scheduleLoadingSpinnerForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3[1] = a1;
  v3[0] = objc_loadWeakRetained((a1 + 40));
  [v3[0] _startSpinnerTimerFired:location[0] identifier:*(a1 + 32)];
  objc_storeStrong(v3, 0);
  objc_storeStrong(location, 0);
}

void __70__CPSListTemplateViewController__scheduleLoadingSpinnerForIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3[1] = a1;
  v3[0] = objc_loadWeakRetained((a1 + 40));
  [v3[0] _timeoutSpinnerFired:location[0] identifier:*(a1 + 32)];
  objc_storeStrong(v3, 0);
  objc_storeStrong(location, 0);
}

- (void)_startSpinnerTimerFired:(id)fired identifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, fired);
  v5 = 0;
  objc_storeStrong(&v5, identifier);
  [(CPSListTemplateViewController *)selfCopy setSpinnerStartTimer:0];
  [(CPSListTemplateViewController *)selfCopy setSpinnerState:2];
  [(CPSListTemplateViewController *)selfCopy _addSpinnerToIdentifier:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)_timeoutSpinnerFired:(id)fired identifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, fired);
  v5 = 0;
  objc_storeStrong(&v5, identifier);
  [(CPSListTemplateViewController *)selfCopy setSpinnerTimeoutTimer:0];
  [(CPSListTemplateViewController *)selfCopy setSpinnerState:0];
  [(CPSListTemplateViewController *)selfCopy _cellSelectionCompleted:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)_cancelScheduledLoadingSpinner
{
  spinnerStartTimer = [(CPSListTemplateViewController *)self spinnerStartTimer];
  [(NSTimer *)spinnerStartTimer invalidate];
  spinnerTimeoutTimer = [(CPSListTemplateViewController *)self spinnerTimeoutTimer];
  [(NSTimer *)spinnerTimeoutTimer invalidate];
  [(CPSListTemplateViewController *)self setSpinnerStartTimer:MEMORY[0x277D82BD8](spinnerTimeoutTimer).n128_f64[0]];
  [(CPSListTemplateViewController *)self setSpinnerTimeoutTimer:0];
  [(CPSListTemplateViewController *)self setSpinnerState:0];
}

- (void)_cellSelectionCompleted:(id)completed
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completed);
  [(CPSListTemplateViewController *)selfCopy setCurrentSpinningIdentifier:0];
  if (location[0] && [(CPSListTemplateViewController *)selfCopy spinnerState]== 2)
  {
    dataSource = [(CPSListTemplateViewController *)selfCopy dataSource];
    v7 = [(CPSSectionedDataSource *)dataSource indexPathForItemWithIdentifier:location[0]];
    MEMORY[0x277D82BD8](dataSource);
    oslog = CarPlaySupportGeneralLogging();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_66_8_66(v11, location[0], v7);
      _os_log_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEFAULT, "Removing spinner from item %{public}@ at index path %{public}@", v11, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    if (v7)
    {
      dataSource2 = [(CPSListTemplateViewController *)selfCopy dataSource];
      v10 = v7;
      v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
      [(CPSDataSource *)dataSource2 reloadItemsAtIndexPaths:?];
      MEMORY[0x277D82BD8](v3);
      MEMORY[0x277D82BD8](dataSource2);
    }

    objc_storeStrong(&v7, 0);
  }

  [(CPSListTemplateViewController *)selfCopy _cancelScheduledLoadingSpinner];
  objc_storeStrong(location, 0);
}

- (void)updateAssistantCell
{
  [(CPSListTemplateViewController *)self updateAssistantCellTitle];
  dataSource = self->_dataSource;
  listTemplate = [(CPSListTemplateViewController *)self listTemplate];
  assistantCellConfiguration = [(CPListTemplate *)listTemplate assistantCellConfiguration];
  [(CPSSectionedDataSource *)dataSource setAssistantCellVisibility:[(CPAssistantCellConfiguration *)assistantCellConfiguration visibility]];
  MEMORY[0x277D82BD8](assistantCellConfiguration);
  *&v2 = MEMORY[0x277D82BD8](listTemplate).n128_u64[0];
  v6 = self->_dataSource;
  listTemplate2 = [(CPSListTemplateViewController *)self listTemplate];
  assistantCellConfiguration2 = [(CPListTemplate *)listTemplate2 assistantCellConfiguration];
  [(CPSSectionedDataSource *)v6 setAssistantCellPosition:[(CPAssistantCellConfiguration *)assistantCellConfiguration2 position]];
  MEMORY[0x277D82BD8](assistantCellConfiguration2);
  MEMORY[0x277D82BD8](listTemplate2);
}

- (void)updateAssistantCellTitle
{
  selfCopy = self;
  location[2] = a2;
  listTemplate = [(CPSListTemplateViewController *)self listTemplate];
  assistantCellConfiguration = [(CPListTemplate *)listTemplate assistantCellConfiguration];
  assistantAction = [(CPAssistantCellConfiguration *)assistantCellConfiguration assistantAction];
  MEMORY[0x277D82BD8](assistantCellConfiguration);
  location[1] = assistantAction;
  location[0] = [CPSListTemplateViewController intentIdentifierFromConfigurationEnum:assistantAction, MEMORY[0x277D82BD8](listTemplate).n128_f64[0]];
  if ([location[0] isEqualToString:@"INPlayMediaIntent"])
  {
    templateEnvironment = [(CPSBaseTemplateViewController *)selfCopy templateEnvironment];
    bundleIdentifier = [(CPSTemplateEnvironment *)templateEnvironment bundleIdentifier];
    v16 = [(NSString *)bundleIdentifier isEqualToString:*MEMORY[0x277CF90A8]];
    MEMORY[0x277D82BD8](bundleIdentifier);
    *&v2 = MEMORY[0x277D82BD8](templateEnvironment).n128_u64[0];
    if (v16)
    {
      dataSource = selfCopy->_dataSource;
      v13 = CPSLocalizedStringForKey(@"ASSISTANTCELL_TITLE_PODCASTS");
      [(CPSSectionedDataSource *)dataSource setAssistantCellTitle:?];
      MEMORY[0x277D82BD8](v13);
    }

    else
    {
      templateEnvironment2 = [(CPSBaseTemplateViewController *)selfCopy templateEnvironment];
      bundleIdentifier2 = [(CPSTemplateEnvironment *)templateEnvironment2 bundleIdentifier];
      v11 = [(NSString *)bundleIdentifier2 isEqualToString:*MEMORY[0x277CF9090]];
      MEMORY[0x277D82BD8](bundleIdentifier2);
      MEMORY[0x277D82BD8](templateEnvironment2);
      if (v11)
      {
        v7 = selfCopy->_dataSource;
        v8 = CPSLocalizedStringForKey(@"ASSISTANTCELL_TITLE_CLASSICAL");
        [(CPSSectionedDataSource *)v7 setAssistantCellTitle:?];
        MEMORY[0x277D82BD8](v8);
      }

      else
      {
        v5 = selfCopy->_dataSource;
        v6 = CPSLocalizedStringForKey(@"ASSISTANTCELL_TITLE_AUDIO");
        [(CPSSectionedDataSource *)v5 setAssistantCellTitle:?];
        MEMORY[0x277D82BD8](v6);
      }
    }
  }

  else if ([location[0] isEqualToString:@"INStartCallIntent"])
  {
    v3 = selfCopy->_dataSource;
    v4 = CPSLocalizedStringForKey(@"ASSISTANTCELL_TITLE_COMMUNICATION");
    [(CPSSectionedDataSource *)v3 setAssistantCellTitle:?];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(location, 0);
}

- (void)updateSectionHeaderImage:(id)image forSectionIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  v16 = 0;
  objc_storeStrong(&v16, identifier);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __79__CPSListTemplateViewController_updateSectionHeaderImage_forSectionIdentifier___block_invoke;
  v12 = &unk_278D926F0;
  v13 = MEMORY[0x277D82BE0](selfCopy);
  v14 = MEMORY[0x277D82BE0](v16);
  v15 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void __79__CPSListTemplateViewController_updateSectionHeaderImage_forSectionIdentifier___block_invoke(uint64_t a1)
{
  v22[2] = a1;
  v22[1] = a1;
  v12 = [*(a1 + 32) dataSource];
  v22[0] = [v12 sectionWithIdentifier:*(a1 + 40)];
  MEMORY[0x277D82BD8](v12);
  v13 = objc_opt_class();
  v15 = [*(a1 + 32) tableView];
  v14 = [v15 headerViewForSection:{objc_msgSend(v22[0], "index")}];
  v21 = CPSSafeCast_16(v13, v14);
  MEMORY[0x277D82BD8](v14);
  *&v1 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  if (*(a1 + 48))
  {
    if ([v22[0] sectionHeaderStyle] == 2)
    {
      v2 = objc_opt_class();
      v20 = CPSSafeCast_16(v2, v21);
      [v22[0] setHeaderImage:*(a1 + 48)];
      [v20 setImage:*(a1 + 48)];
      objc_storeStrong(&v20, 0);
    }

    else
    {
      [v22[0] setSectionHeaderStyle:2];
      [v22[0] setHeaderImage:*(a1 + 48)];
      v11 = [*(a1 + 32) tableView];
      v10 = [MEMORY[0x277CCAA78] indexSetWithIndex:{objc_msgSend(v21, "sectionIndex")}];
      [v11 _reloadSectionHeaderFooters:? withRowAnimation:?];
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
    }
  }

  else
  {
    v8 = [v22[0] headerSubtitle];
    v18 = 0;
    v9 = 1;
    if (![v8 length])
    {
      v19 = [v22[0] headerButton];
      v18 = 1;
      v9 = v19 != 0;
    }

    if (v18)
    {
      MEMORY[0x277D82BD8](v19);
    }

    *&v3 = MEMORY[0x277D82BD8](v8).n128_u64[0];
    if (v9)
    {
      v4 = objc_opt_class();
      v17 = CPSSafeCast_16(v4, v21);
      [v22[0] setHeaderImage:?];
      [v17 setImage:0];
      objc_storeStrong(&v17, 0);
    }

    else
    {
      v5 = [v22[0] header];
      [v22[0] setSectionHeaderStyle:{objc_msgSend(v5, "length") != 0}];
      [v22[0] setHeaderImage:{0, MEMORY[0x277D82BD8](v5).n128_f64[0]}];
      v7 = [*(a1 + 32) tableView];
      v6 = [MEMORY[0x277CCAA78] indexSetWithIndex:{objc_msgSend(v21, "sectionIndex")}];
      [v7 _reloadSectionHeaderFooters:? withRowAnimation:?];
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v7);
    }
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(v22, 0);
}

- (void)setButton:(id)button enabled:(BOOL)enabled
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  objc_storeStrong(location, 0);
}

- (void)setButton:(id)button hidden:(BOOL)hidden
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  objc_storeStrong(location, 0);
}

- (void)setControl:(id)control enabled:(BOOL)enabled
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, control);
  enabledCopy = enabled;
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __52__CPSListTemplateViewController_setControl_enabled___block_invoke;
  v12 = &unk_278D92318;
  v13 = MEMORY[0x277D82BE0](location[0]);
  v15 = enabledCopy;
  v14 = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __52__CPSListTemplateViewController_setControl_enabled___block_invoke(uint64_t a1)
{
  v7 = a1;
  v6 = a1;
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v5.receiver = *(a1 + 40);
  v5.super_class = CPSListTemplateViewController;
  objc_msgSendSuper2(&v5, sel_setControl_enabled_, v1, v2 & 1);
  v4 = [*(a1 + 40) _buttonForIdentifier:*(a1 + 32)];
  [v4 setEnabled:*(a1 + 48) & 1];
  objc_storeStrong(&v4, 0);
}

- (void)reloadTemplate:(id)template
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __48__CPSListTemplateViewController_reloadTemplate___block_invoke;
  v10 = &unk_278D910D8;
  v11 = MEMORY[0x277D82BE0](location[0]);
  v12 = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

uint64_t __48__CPSListTemplateViewController_reloadTemplate___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  location[0] = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v6, *(a1 + 32));
    _os_log_impl(&dword_242FE8000, location[0], OS_LOG_TYPE_DEFAULT, "Received update for list template %@", v6, 0xCu);
  }

  objc_storeStrong(location, 0);
  [*(a1 + 40) setCurrentSpinningIdentifier:0];
  [*(a1 + 40) _updateTemplate:*(a1 + 32)];
  [*(a1 + 40) updateAssistantCell];
  v3 = [*(a1 + 40) dataSource];
  v2 = [*(a1 + 32) sections];
  [v3 updateSections:?];
  MEMORY[0x277D82BD8](v2);
  return [*(a1 + 40) _updateEmptyView];
}

- (void)updateAssistantCellConfiguration:(id)configuration withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __81__CPSListTemplateViewController_updateAssistantCellConfiguration_withCompletion___block_invoke;
  v12 = &unk_278D91DC0;
  v13 = MEMORY[0x277D82BE0](selfCopy);
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15 = MEMORY[0x277D82BE0](v16);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void __81__CPSListTemplateViewController_updateAssistantCellConfiguration_withCompletion___block_invoke(uint64_t a1)
{
  v10[2] = a1;
  v10[1] = a1;
  v10[0] = 0;
  v5 = *(a1 + 40);
  v9 = 0;
  v7 = [*(a1 + 32) templateEnvironment];
  v6 = [CPSListTemplateViewController clientAssistantCellConfiguration:v5 availableWithError:&v9 templateEnvironment:?];
  objc_storeStrong(v10, v9);
  [*(a1 + 32) setAssistantCellAvailable:v6];
  if ([*(a1 + 32) assistantCellAvailable])
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) listTemplate];
    [v4 setAssistantCellConfiguration:v3];
    [*(a1 + 32) updateAssistantCell];
  }

  v2 = *(a1 + 48);
  v1 = [*(a1 + 32) assistantCellAvailable];
  (*(v2 + 16))(v2, v1, v10[0]);
  objc_storeStrong(v10, 0);
}

- (void)reloadItems:(id)items
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, items);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __45__CPSListTemplateViewController_reloadItems___block_invoke;
  v10 = &unk_278D910D8;
  v11 = MEMORY[0x277D82BE0](location[0]);
  v12 = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

uint64_t __45__CPSListTemplateViewController_reloadItems___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  location[0] = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) listTemplate];
    __os_log_helper_16_2_2_8_64_8_64(v7, v3, v4);
    _os_log_impl(&dword_242FE8000, location[0], OS_LOG_TYPE_DEFAULT, "Received items to reload %@ for list template %@", v7, 0x16u);
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(location, 0);
  [*(a1 + 40) setCurrentSpinningIdentifier:0];
  v2 = [*(a1 + 40) dataSource];
  [v2 reloadItems:*(a1 + 32)];
  return [*(a1 + 40) _updateEmptyView];
}

- (void)reloadTableHeaderGridButtons:(id)buttons
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, buttons);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __62__CPSListTemplateViewController_reloadTableHeaderGridButtons___block_invoke;
  v10 = &unk_278D910D8;
  v11 = MEMORY[0x277D82BE0](location[0]);
  v12 = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

uint64_t __62__CPSListTemplateViewController_reloadTableHeaderGridButtons___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  location[0] = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_1_8_64(v6, *(a1 + 32));
    _os_log_impl(&dword_242FE8000, location[0], OS_LOG_TYPE_INFO, "reloadTableHeaderGridButtons %@", v6, 0xCu);
  }

  objc_storeStrong(location, 0);
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) listTemplate];
  [v3 setHeaderGridButtons:v2];
  [*(a1 + 40) updateTableHeaderGridButtons:{*(a1 + 32), MEMORY[0x277D82BD8](v3).n128_f64[0]}];
  return [*(a1 + 40) _updateEmptyView];
}

- (void)scrollToTop
{
  selfCopy = self;
  v5[1] = a2;
  dataSource = [(CPSListTemplateViewController *)self dataSource];
  numberOfItems = [(CPSSectionedDataSource *)dataSource numberOfItems];
  *&v2 = MEMORY[0x277D82BD8](dataSource).n128_u64[0];
  if (numberOfItems > 0)
  {
    v5[0] = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:v2];
    [(CPSTableView *)selfCopy->_tableView scrollToRowAtIndexPath:v5[0] atScrollPosition:1 animated:1];
    objc_storeStrong(v5, 0);
  }
}

- (void)gridButton:(id)button setImageSet:(id)set
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  v16 = 0;
  objc_storeStrong(&v16, set);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __56__CPSListTemplateViewController_gridButton_setImageSet___block_invoke;
  v12 = &unk_278D926F0;
  v13 = MEMORY[0x277D82BE0](selfCopy);
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15 = MEMORY[0x277D82BE0](v16);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void __56__CPSListTemplateViewController_gridButton_setImageSet___block_invoke(uint64_t a1)
{
  v2[2] = a1;
  v2[1] = a1;
  v2[0] = [*(a1 + 32) _buttonForIdentifier:*(a1 + 40)];
  [v2[0] updateImageSet:*(a1 + 48)];
  objc_storeStrong(v2, 0);
}

- (void)gridButton:(id)button setTitleVariants:(id)variants
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  v16 = 0;
  objc_storeStrong(&v16, variants);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __61__CPSListTemplateViewController_gridButton_setTitleVariants___block_invoke;
  v12 = &unk_278D926F0;
  v13 = MEMORY[0x277D82BE0](selfCopy);
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15 = MEMORY[0x277D82BE0](v16);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void __61__CPSListTemplateViewController_gridButton_setTitleVariants___block_invoke(uint64_t a1)
{
  v2[2] = a1;
  v2[1] = a1;
  v2[0] = [*(a1 + 32) _buttonForIdentifier:*(a1 + 40)];
  [v2[0] updateTitleVariants:*(a1 + 48)];
  objc_storeStrong(v2, 0);
}

- (void)gridButton:(id)button setUnread:(BOOL)unread
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  unreadCopy = unread;
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __54__CPSListTemplateViewController_gridButton_setUnread___block_invoke;
  v12 = &unk_278D92318;
  v13 = MEMORY[0x277D82BE0](selfCopy);
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15 = unreadCopy;
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __54__CPSListTemplateViewController_gridButton_setUnread___block_invoke(uint64_t a1)
{
  v2[2] = a1;
  v2[1] = a1;
  v2[0] = [*(a1 + 32) _buttonForIdentifier:*(a1 + 40)];
  [v2[0] updateUnread:*(a1 + 48) & 1];
  objc_storeStrong(v2, 0);
}

- (void)_scrollViewAccessoryInsetsDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  templateEnvironment = [(CPSBaseTemplateViewController *)selfCopy templateEnvironment];
  rightHandDrive = [(CPSTemplateEnvironment *)templateEnvironment rightHandDrive];
  *&v3 = MEMORY[0x277D82BD8](templateEnvironment).n128_u64[0];
  v4 = 3;
  if (!rightHandDrive)
  {
    v4 = 5;
  }

  v21 = v4;
  tableView = [(CPSListTemplateViewController *)selfCopy tableView];
  v16 = [(CPSTableView *)tableView accessoryViewAtEdge:v21];
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](tableView);
  navigationController = [(CPSListTemplateViewController *)selfCopy navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar layoutMargins];
  MEMORY[0x277D82BD8](navigationBar);
  MEMORY[0x277D82BD8](navigationController);
  UIEdgeInsetsMake_1();
  v17 = v5;
  v18 = v6;
  v19 = v7;
  v20 = v8;
  navigationController2 = [(CPSListTemplateViewController *)selfCopy navigationController];
  navigationBar2 = [navigationController2 navigationBar];
  [navigationBar2 setLayoutMargins:{v17, v18, v19, v20}];
  MEMORY[0x277D82BD8](navigationBar2);
  MEMORY[0x277D82BD8](navigationController2);
  objc_storeStrong(location, 0);
}

- (void)tableView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v10 = 0;
  objc_storeStrong(&v10, context);
  v9 = 0;
  objc_storeStrong(&v9, coordinator);
  nextFocusedIndexPath = [v10 nextFocusedIndexPath];
  indexPathForSelectedRow = [location[0] indexPathForSelectedRow];
  if (indexPathForSelectedRow && nextFocusedIndexPath && ([indexPathForSelectedRow isEqual:nextFocusedIndexPath] & 1) == 0)
  {
    [location[0] deselectRowAtIndexPath:indexPathForSelectedRow animated:0];
  }

  objc_storeStrong(&indexPathForSelectedRow, 0);
  objc_storeStrong(&nextFocusedIndexPath, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)tableView:(id)view shouldDrawBottomSeparatorForSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  assistantCellIndexPath = [(CPSSectionedDataSource *)selfCopy->_dataSource assistantCellIndexPath];
  v8 = 0;
  v7 = 0;
  if (assistantCellIndexPath)
  {
    assistantCellIndexPath2 = [(CPSSectionedDataSource *)selfCopy->_dataSource assistantCellIndexPath];
    v8 = 1;
    v7 = [(NSIndexPath *)assistantCellIndexPath2 section]== section;
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](assistantCellIndexPath2);
  }

  MEMORY[0x277D82BD8](assistantCellIndexPath);
  v12 = !v7;
  objc_storeStrong(location, 0);
  return v12;
}

- (BOOL)_sectionShouldHaveFooterSpacingAtIndex:(int64_t)index
{
  selfCopy = self;
  v17 = a2;
  indexCopy = index;
  dataSource = [(CPSListTemplateViewController *)self dataSource];
  v9 = [(CPSSectionedDataSource *)dataSource numberOfSections]- 1;
  *&v3 = MEMORY[0x277D82BD8](dataSource).n128_u64[0];
  if (index < v9)
  {
    dataSource2 = [(CPSListTemplateViewController *)selfCopy dataSource];
    location = [(CPSSectionedDataSource *)dataSource2 sectionAtIndex:indexCopy + 1];
    header = [location header];
    v13 = 0;
    v11 = 0;
    v7 = 0;
    if (![header length])
    {
      headerImage = [location headerImage];
      v13 = 1;
      v7 = 0;
      if (!headerImage)
      {
        headerSubtitle = [location headerSubtitle];
        v11 = 1;
        v7 = [headerSubtitle length] == 0;
      }
    }

    if (v11)
    {
      MEMORY[0x277D82BD8](headerSubtitle);
    }

    if (v13)
    {
      MEMORY[0x277D82BD8](headerImage);
    }

    MEMORY[0x277D82BD8](header);
    v19 = !v7;
    objc_storeStrong(&location, 0);
  }

  else
  {
    return 0;
  }

  return v19;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  if ([(CPSListTemplateViewController *)selfCopy _sectionShouldHaveFooterSpacingAtIndex:section])
  {
    v8 = 16.0;
  }

  else
  {
    v8 = 0.0;
  }

  objc_storeStrong(location, 0);
  return v8;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  if ([(CPSListTemplateViewController *)selfCopy _sectionShouldHaveFooterSpacingAtIndex:section])
  {
    v9 = objc_opt_new();
  }

  else
  {
    v9 = 0;
  }

  objc_storeStrong(location, 0);
  v4 = v9;

  return v4;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  sectionCopy = section;
  assistantCellIndexPath = [(CPSSectionedDataSource *)selfCopy->_dataSource assistantCellIndexPath];
  v19 = 0;
  v13 = 0;
  if (assistantCellIndexPath)
  {
    assistantCellIndexPath2 = [(CPSSectionedDataSource *)selfCopy->_dataSource assistantCellIndexPath];
    v19 = 1;
    v13 = [(NSIndexPath *)assistantCellIndexPath2 section]== sectionCopy;
  }

  if (v19)
  {
    MEMORY[0x277D82BD8](assistantCellIndexPath2);
  }

  *&v4 = MEMORY[0x277D82BD8](assistantCellIndexPath).n128_u64[0];
  if (v13)
  {
    if (sectionCopy)
    {
      v5 = 0;
    }

    else
    {
      v5 = 4;
    }

    v24 = v5;
    v18 = 1;
  }

  else
  {
    dataSource = [(CPSListTemplateViewController *)selfCopy dataSource];
    numberOfSections = [(CPSSectionedDataSource *)dataSource numberOfSections];
    *&v6 = MEMORY[0x277D82BD8](dataSource).n128_u64[0];
    if (sectionCopy < numberOfSections)
    {
      dataSource2 = [(CPSListTemplateViewController *)selfCopy dataSource];
      v17 = [(CPSSectionedDataSource *)dataSource2 sectionAtIndex:sectionCopy];
      header = [v17 header];
      if ([header length])
      {
        sectionHeaderStyle = [v17 sectionHeaderStyle];
        v14 = *MEMORY[0x277D76F30];
        if ((sectionHeaderStyle - 1) > 1)
        {
          v14 = 0.0;
        }

        v24 = v14;
        v18 = 1;
      }

      else
      {
        v24 = 0.0;
        v18 = 1;
      }

      objc_storeStrong(&header, 0);
      objc_storeStrong(&v17, 0);
    }

    else
    {
      v24 = 0.0;
      v18 = 1;
    }
  }

  objc_storeStrong(location, 0);
  return v24;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  sectionCopy = section;
  dataSource = [(CPSListTemplateViewController *)selfCopy dataSource];
  numberOfSections = [(CPSSectionedDataSource *)dataSource numberOfSections];
  *&v4 = MEMORY[0x277D82BD8](dataSource).n128_u64[0];
  if (section < numberOfSections)
  {
    dataSource2 = [(CPSListTemplateViewController *)selfCopy dataSource];
    v41 = [(CPSSectionedDataSource *)dataSource2 sectionAtIndex:sectionCopy];
    *&v5 = MEMORY[0x277D82BD8](dataSource2).n128_u64[0];
    if (v41)
    {
      [v41 setIndex:{sectionCopy, v5}];
      v40 = 0;
      sectionHeaderStyle = [v41 sectionHeaderStyle];
      if (sectionHeaderStyle == 1)
      {
        v23 = location[0];
        v7 = objc_opt_class();
        v24 = NSStringFromClass(v7);
        v8 = [v23 dequeueReusableHeaderFooterViewWithIdentifier:?];
        v9 = v40;
        v40 = v8;
        MEMORY[0x277D82BD8](v9);
        [v40 setSectionIndex:{sectionCopy, MEMORY[0x277D82BD8](v24).n128_f64[0]}];
        header = [v41 header];
        [v40 setLabelText:?];
        *&v6 = MEMORY[0x277D82BD8](header).n128_u64[0];
      }

      else if (sectionHeaderStyle == 2)
      {
        v15 = location[0];
        v10 = objc_opt_class();
        v16 = NSStringFromClass(v10);
        v39 = [v15 dequeueReusableHeaderFooterViewWithIdentifier:?];
        header2 = [v41 header];
        [v39 setTitle:?];
        headerImage = [v41 headerImage];
        [v39 setImage:?];
        headerSubtitle = [v41 headerSubtitle];
        [v39 setSubtitle:?];
        headerButton = [v41 headerButton];
        image = [headerButton image];
        [v39 setButtonImage:?];
        MEMORY[0x277D82BD8](image);
        headerButton2 = [v41 headerButton];
        [v39 setEnabled:{objc_msgSend(headerButton2, "isEnabled")}];
        MEMORY[0x277D82BD8](headerButton2);
        objc_initWeak(&v38, selfCopy);
        v31 = MEMORY[0x277D85DD0];
        v32 = -1073741824;
        v33 = 0;
        v34 = __66__CPSListTemplateViewController_tableView_viewForHeaderInSection___block_invoke;
        v35 = &unk_278D92A90;
        objc_copyWeak(&v37, &v38);
        v36 = MEMORY[0x277D82BE0](v41);
        [v39 setButtonAction:&v31];
        objc_storeStrong(&v40, v39);
        [v40 setSectionIndex:sectionCopy];
        v42 = 2;
        objc_storeStrong(&v36, 0);
        objc_destroyWeak(&v37);
        objc_destroyWeak(&v38);
        objc_storeStrong(&v39, 0);
      }

      identifier = [v41 identifier];
      [v40 setIdentifier:?];
      *&v11 = MEMORY[0x277D82BD8](identifier).n128_u64[0];
      [v40 setAccessibilityIdentifier:{@"CPListSection", v11}];
      v46 = MEMORY[0x277D82BE0](v40);
      v42 = 1;
      objc_storeStrong(&v40, 0);
    }

    else
    {
      v46 = objc_opt_new();
      v42 = 1;
    }

    objc_storeStrong(&v41, 0);
  }

  else
  {
    v46 = 0;
    v42 = 1;
  }

  objc_storeStrong(location, 0);
  v12 = v46;

  return v12;
}

void __66__CPSListTemplateViewController_tableView_viewForHeaderInSection___block_invoke(id *a1)
{
  v5[2] = a1;
  v5[1] = a1;
  v5[0] = objc_loadWeakRetained(a1 + 5);
  v2 = v5[0];
  v4 = [a1[4] headerButton];
  v3 = [v4 identifier];
  [v2 didSelectHeaderButtonWithIdentifier:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(v5, 0);
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v56 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v52 = 0;
  objc_storeStrong(&v52, path);
  v27 = v52;
  dataSource = [(CPSListTemplateViewController *)selfCopy dataSource];
  assistantCellIndexPath = [(CPSSectionedDataSource *)dataSource assistantCellIndexPath];
  v25 = [v27 isEqual:?];
  MEMORY[0x277D82BD8](assistantCellIndexPath);
  *&v4 = MEMORY[0x277D82BD8](dataSource).n128_u64[0];
  if ((v25 & 1) == 0)
  {
    dataSource2 = [(CPSListTemplateViewController *)selfCopy dataSource];
    v47 = [(CPSSectionedDataSource *)dataSource2 itemAtIndexPath:v52];
    MEMORY[0x277D82BD8](dataSource2);
    v46 = CPListItemIdentifier(v47);
    v45 = CarPlaySupportGeneralLogging();
    v44 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v52;
      listTemplate = [(CPSListTemplateViewController *)selfCopy listTemplate];
      __os_log_helper_16_2_3_8_66_8_66_8_64(v55, v20, v47, listTemplate);
      _os_log_impl(&dword_242FE8000, v45, v44, "Selected index path %{public}@, item %{public}@ in list template %@", v55, 0x20u);
      MEMORY[0x277D82BD8](listTemplate);
    }

    objc_storeStrong(&v45, 0);
    if (([v47 isEnabled] & 1) == 0)
    {
      [location[0] deselectRowAtIndexPath:v52 animated:1];
      v48 = 1;
LABEL_27:
      objc_storeStrong(&v46, 0);
      objc_storeStrong(&v47, 0);
      goto LABEL_28;
    }

    templateDelegate = [(CPSBaseTemplateViewController *)selfCopy templateDelegate];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = CarPlaySupportGeneralLogging();
      v41 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v42;
        v18 = v41;
        __os_log_helper_16_0_0(v40);
        _os_log_impl(&dword_242FE8000, v17, v18, "Activating Siri for message item.", v40, 2u);
      }

      objc_storeStrong(&v42, 0);
      v16 = objc_opt_class();
      v39 = CPSSafeCast_16(v16, v47);
      [location[0] deselectRowAtIndexPath:v52 animated:1];
      [(CPSListTemplateViewController *)selfCopy _activateSiriForMessageItem:v39];
      v48 = 1;
      objc_storeStrong(&v39, 0);
      goto LABEL_26;
    }

    objc_initWeak(&from, selfCopy);
    objc_opt_class();
    isKindOfClass = 1;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    v37 = isKindOfClass & 1;
    if (isKindOfClass)
    {
      currentSpinningIdentifier = [(CPSListTemplateViewController *)selfCopy currentSpinningIdentifier];
      *&v5 = MEMORY[0x277D82BD8](currentSpinningIdentifier).n128_u64[0];
      if (currentSpinningIdentifier)
      {
        v48 = 1;
LABEL_25:
        objc_destroyWeak(&from);
LABEL_26:
        objc_storeStrong(&templateDelegate, 0);
        goto LABEL_27;
      }

      [(CPSListTemplateViewController *)selfCopy _cancelScheduledLoadingSpinner];
      [(CPSListTemplateViewController *)selfCopy _scheduleLoadingSpinnerForIdentifier:v46];
    }

    indexPathForSelectedRow = [location[0] indexPathForSelectedRow];
    dataSource3 = [(CPSListTemplateViewController *)selfCopy dataSource];
    v12 = [(CPSSectionedDataSource *)dataSource3 itemAtIndexPath:indexPathForSelectedRow];
    v11 = CPListItemIdentifier(v12);
    [(CPSListTemplateViewController *)selfCopy setLastFocusedItem:?];
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    *&v6 = MEMORY[0x277D82BD8](dataSource3).n128_u64[0];
    if (indexPathForSelectedRow && ([indexPathForSelectedRow isEqual:{v52, v6}] & 1) == 0)
    {
      [location[0] deselectRowAtIndexPath:indexPathForSelectedRow animated:1];
    }

    if ([templateDelegate conformsToProtocol:{&unk_285632AF8, v6}])
    {
      v10 = templateDelegate;
      listTemplate2 = [(CPSListTemplateViewController *)selfCopy listTemplate];
      identifier = [(CPListTemplate *)listTemplate2 identifier];
      v8 = v46;
      v29 = MEMORY[0x277D85DD0];
      v30 = -1073741824;
      v31 = 0;
      v32 = __67__CPSListTemplateViewController_tableView_didSelectRowAtIndexPath___block_invoke;
      v33 = &unk_278D92A90;
      objc_copyWeak(&v35, &from);
      v34 = MEMORY[0x277D82BE0](v46);
      [v10 listTemplateWithIdentifier:identifier didSelectListItemWithIdentifier:v8 completionHandler:&v29];
      MEMORY[0x277D82BD8](identifier);
      MEMORY[0x277D82BD8](listTemplate2);
      objc_storeStrong(&v34, 0);
      objc_destroyWeak(&v35);
    }

    objc_storeStrong(&indexPathForSelectedRow, 0);
    v48 = 0;
    goto LABEL_25;
  }

  v51 = CarPlaySupportGeneralLogging();
  v50 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    log = v51;
    type = v50;
    __os_log_helper_16_0_0(v49);
    _os_log_impl(&dword_242FE8000, log, type, "Activating Siri for list item.", v49, 2u);
  }

  objc_storeStrong(&v51, 0);
  [location[0] deselectRowAtIndexPath:v52 animated:1];
  [(CPSListTemplateViewController *)selfCopy _activateSiriForAssistantItem];
  v48 = 1;
LABEL_28:
  objc_storeStrong(&v52, 0);
  objc_storeStrong(location, 0);
}

void __67__CPSListTemplateViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  v11[2] = a1;
  v11[1] = a1;
  v2 = MEMORY[0x277D85CD0];
  v1 = MEMORY[0x277D85CD0];
  queue = v2;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __67__CPSListTemplateViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
  v9 = &unk_278D92A90;
  objc_copyWeak(v11, (a1 + 40));
  v10 = MEMORY[0x277D82BE0](*(a1 + 32));
  dispatch_async(queue, &v5);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v10, 0);
  objc_destroyWeak(v11);
}

double __67__CPSListTemplateViewController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _cellSelectionCompleted:*(a1 + 32)];
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

- (void)didSelectHeaderButtonWithIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  templateDelegate = [(CPSBaseTemplateViewController *)selfCopy templateDelegate];
  v6 = [(CPTemplateDelegate *)templateDelegate conformsToProtocol:&unk_28562C040];
  *&v3 = MEMORY[0x277D82BD8](templateDelegate).n128_u64[0];
  if (v6)
  {
    templateDelegate2 = [(CPSBaseTemplateViewController *)selfCopy templateDelegate];
    [(CPTemplateDelegate *)templateDelegate2 handleActionForControlIdentifier:location[0]];
    MEMORY[0x277D82BD8](templateDelegate2);
  }

  objc_storeStrong(location, 0);
}

- (void)_activateSiriForMessageItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v32 = 0;
  text = [location[0] text];
  v30 = 0;
  v29 = 0;
  if (text)
  {
    phoneOrEmailAddress = [location[0] phoneOrEmailAddress];
    v30 = 1;
    v29 = phoneOrEmailAddress != 0;
  }

  if (v30)
  {
    MEMORY[0x277D82BD8](phoneOrEmailAddress);
  }

  *&v3 = MEMORY[0x277D82BD8](text).n128_u64[0];
  if (v29)
  {
    v23 = MEMORY[0x277D551E0];
    templateEnvironment = [(CPSBaseTemplateViewController *)selfCopy templateEnvironment];
    bundleIdentifier = [(CPSTemplateEnvironment *)templateEnvironment bundleIdentifier];
    text2 = [location[0] text];
    phoneOrEmailAddress2 = [location[0] phoneOrEmailAddress];
    v4 = [v23 messageComposeNewThreadDirectActionWithAppBundleId:bundleIdentifier fullName:text2 phoneOrEmailAddress:?];
    v5 = v32;
    v32 = v4;
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](phoneOrEmailAddress2);
    MEMORY[0x277D82BD8](text2);
    MEMORY[0x277D82BD8](bundleIdentifier);
    v6 = MEMORY[0x277D82BD8](templateEnvironment).n128_u64[0];
  }

  else
  {
    leadingConfiguration = [location[0] leadingConfiguration];
    isUnread = [leadingConfiguration isUnread];
    *&v7 = MEMORY[0x277D82BD8](leadingConfiguration).n128_u64[0];
    if (isUnread)
    {
      v17 = MEMORY[0x277D551E0];
      templateEnvironment2 = [(CPSBaseTemplateViewController *)selfCopy templateEnvironment];
      bundleIdentifier2 = [(CPSTemplateEnvironment *)templateEnvironment2 bundleIdentifier];
      conversationIdentifier = [location[0] conversationIdentifier];
      v8 = [v17 messageReadDirectActionWithAppBundleId:bundleIdentifier2 conversationGUID:?];
      v9 = v32;
      v32 = v8;
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](conversationIdentifier);
      MEMORY[0x277D82BD8](bundleIdentifier2);
      v6 = MEMORY[0x277D82BD8](templateEnvironment2).n128_u64[0];
    }

    else
    {
      v13 = MEMORY[0x277D551E0];
      templateEnvironment3 = [(CPSBaseTemplateViewController *)selfCopy templateEnvironment];
      bundleIdentifier3 = [(CPSTemplateEnvironment *)templateEnvironment3 bundleIdentifier];
      conversationIdentifier2 = [location[0] conversationIdentifier];
      v10 = [v13 messageReplyDirectActionWithAppBundleId:bundleIdentifier3 conversationGUID:?];
      v11 = v32;
      v32 = v10;
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](conversationIdentifier2);
      MEMORY[0x277D82BD8](bundleIdentifier3);
      v6 = MEMORY[0x277D82BD8](templateEnvironment3).n128_u64[0];
    }
  }

  viewControllerDelegate = [(CPSBaseTemplateViewController *)selfCopy viewControllerDelegate];
  [(CPSTemplateViewControllerDelegate *)viewControllerDelegate templateViewController:selfCopy shouldActivateSiriWithDirectActionContext:v32];
  MEMORY[0x277D82BD8](viewControllerDelegate);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);
}

- (void)_activateSiriForAssistantItem
{
  selfCopy = self;
  v26 = a2;
  v25[8] = 0;
  *v25 = [(CPSListTemplateViewController *)self assistantCellAvailable];
  listTemplate = [(CPSListTemplateViewController *)selfCopy listTemplate];
  assistantCellConfiguration = [(CPListTemplate *)listTemplate assistantCellConfiguration];
  assistantAction = [(CPAssistantCellConfiguration *)assistantCellConfiguration assistantAction];
  MEMORY[0x277D82BD8](assistantCellConfiguration);
  v24[1] = assistantAction;
  v24[0] = [CPSListTemplateViewController intentIdentifierFromConfigurationEnum:assistantAction, MEMORY[0x277D82BD8](listTemplate).n128_f64[0]];
  templateEnvironment = [(CPSBaseTemplateViewController *)selfCopy templateEnvironment];
  v22 = 0;
  if ([(CPSTemplateEnvironment *)templateEnvironment hasAudioEntitlement]|| (v23 = [(CPSBaseTemplateViewController *)selfCopy templateEnvironment], v22 = 1, v17 = 0, [(CPSTemplateEnvironment *)v23 hasVideoEntitlement]))
  {
    v17 = v25[0];
  }

  if (v22)
  {
    MEMORY[0x277D82BD8](v23);
  }

  *&v2 = MEMORY[0x277D82BD8](templateEnvironment).n128_u64[0];
  if (v17)
  {
    if ([v24[0] isEqualToString:{@"INPlayMediaIntent", v2}])
    {
      v14 = MEMORY[0x277D551E0];
      templateEnvironment2 = [(CPSBaseTemplateViewController *)selfCopy templateEnvironment];
      bundleIdentifier = [(CPSTemplateEnvironment *)templateEnvironment2 bundleIdentifier];
      v3 = [v14 musicSearchDirectActionWithAppBundleId:?];
      v4 = *&v25[1];
      *&v25[1] = v3;
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](bundleIdentifier);
      MEMORY[0x277D82BD8](templateEnvironment2);
    }
  }

  else
  {
    templateEnvironment3 = [(CPSBaseTemplateViewController *)selfCopy templateEnvironment];
    v13 = 0;
    if ([(CPSTemplateEnvironment *)templateEnvironment3 hasCommunicationEntitlement])
    {
      v13 = v25[0];
    }

    *&v5 = MEMORY[0x277D82BD8](templateEnvironment3).n128_u64[0];
    if (v13)
    {
      if ([v24[0] isEqualToString:{@"INStartCallIntent", v5}])
      {
        v9 = MEMORY[0x277D551E0];
        templateEnvironment4 = [(CPSBaseTemplateViewController *)selfCopy templateEnvironment];
        bundleIdentifier2 = [(CPSTemplateEnvironment *)templateEnvironment4 bundleIdentifier];
        v6 = [v9 phoneCallDirectActionWithAppBundleId:?];
        v7 = *&v25[1];
        *&v25[1] = v6;
        MEMORY[0x277D82BD8](v7);
        MEMORY[0x277D82BD8](bundleIdentifier2);
        MEMORY[0x277D82BD8](templateEnvironment4);
      }
    }

    else
    {
      objc_storeStrong(&v25[1], 0);
    }
  }

  if (*&v25[1])
  {
    viewControllerDelegate = [(CPSBaseTemplateViewController *)selfCopy viewControllerDelegate];
    [(CPSTemplateViewControllerDelegate *)viewControllerDelegate templateViewController:selfCopy shouldActivateSiriWithDirectActionContext:*&v25[1]];
    MEMORY[0x277D82BD8](viewControllerDelegate);
  }

  objc_storeStrong(v24, 0);
  objc_storeStrong(&v25[1], 0);
}

+ (id)intentIdentifierFromConfigurationEnum:(int64_t)enum
{
  location[3] = self;
  location[2] = a2;
  location[1] = enum;
  location[0] = 0;
  if (enum)
  {
    if (enum == 1)
    {
      objc_storeStrong(location, @"INStartCallIntent");
    }
  }

  else
  {
    objc_storeStrong(location, @"INPlayMediaIntent");
  }

  v4 = MEMORY[0x277D82BE0](location[0]);
  objc_storeStrong(location, 0);

  return v4;
}

+ (BOOL)clientAssistantCellConfiguration:(id)configuration availableWithError:(id *)error templateEnvironment:(id)environment
{
  v38[1] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  errorCopy = error;
  v29 = 0;
  objc_storeStrong(&v29, environment);
  v28 = 0;
  if ([v29 hasAudioEntitlement] & 1) != 0 || (objc_msgSend(v29, "hasVideoEntitlement"))
  {
    v22 = MEMORY[0x277CBEB98];
    v38[0] = @"INPlayMediaIntent";
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
    v5 = [v22 setWithArray:?];
    v6 = v28;
    v28 = v5;
    MEMORY[0x277D82BD8](v6);
    v7 = MEMORY[0x277D82BD8](v23).n128_u64[0];
LABEL_9:
    v26 = +[CPSListTemplateViewController intentIdentifierFromConfigurationEnum:](CPSListTemplateViewController, "intentIdentifierFromConfigurationEnum:", [location[0] assistantAction]);
    if ([v28 containsObject:v26])
    {
      v32 = [v29 applicationSupportsIntentWithIdentifier:v26 error:errorCopy] & 1;
      v27 = 1;
    }

    else
    {
      if (errorCopy)
      {
        v13 = MEMORY[0x277CCA9B8];
        v33 = *MEMORY[0x277CCA450];
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Intent of type %@ is not supported for this app category", v26];
        v34 = v16;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        v15 = [v13 errorWithDomain:@"CPSErrorDomain" code:-1 userInfo:?];
        v11 = v15;
        *errorCopy = v15;
        MEMORY[0x277D82BD8](v14);
        MEMORY[0x277D82BD8](v16);
      }

      v32 = 0;
      v27 = 1;
    }

    objc_storeStrong(&v26, 0);
    goto LABEL_15;
  }

  if ([v29 hasCommunicationEntitlement])
  {
    v20 = MEMORY[0x277CBEB98];
    v37 = @"INStartCallIntent";
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
    v8 = [v20 setWithArray:?];
    v9 = v28;
    v28 = v8;
    MEMORY[0x277D82BD8](v9);
    v7 = MEMORY[0x277D82BD8](v21).n128_u64[0];
    goto LABEL_9;
  }

  if (errorCopy)
  {
    v17 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA450];
    v36 = @"Attempting to set an Assistant Cell on an unsupported app category. Assistant Cells are only supported on apps with an audio or communication entitlement.";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v19 = [v17 errorWithDomain:@"CPSErrorDomain" code:-1 userInfo:?];
    v10 = v19;
    *errorCopy = v19;
    MEMORY[0x277D82BD8](v18);
  }

  v32 = 0;
  v27 = 1;
LABEL_15:
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  return v32 & 1;
}

- (void)nowPlayingManager:(id)manager didUpdateSnapshot:(id)snapshot
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v5 = 0;
  objc_storeStrong(&v5, snapshot);
  [(CPSListTemplateViewController *)selfCopy _updatePlayingIndicators];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_playingStateForSnapshot:(id)snapshot
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, snapshot);
  bundleIdentifier = [location[0] bundleIdentifier];
  templateEnvironment = [(CPSBaseTemplateViewController *)selfCopy templateEnvironment];
  bundleIdentifier2 = [(CPSTemplateEnvironment *)templateEnvironment bundleIdentifier];
  v7 = 0;
  if ([bundleIdentifier isEqualToString:?])
  {
    v7 = [location[0] state] == 2;
  }

  MEMORY[0x277D82BD8](bundleIdentifier2);
  MEMORY[0x277D82BD8](templateEnvironment);
  MEMORY[0x277D82BD8](bundleIdentifier);
  v10 = v7;
  objc_storeStrong(location, 0);
  return v10;
}

- (void)_updatePlayingIndicators
{
  selfCopy = self;
  v15[1] = a2;
  nowPlayingManager = [(CPSListTemplateViewController *)self nowPlayingManager];
  v15[0] = [(CPUINowPlayingManager *)nowPlayingManager snapshot];
  *&v2 = MEMORY[0x277D82BD8](nowPlayingManager).n128_u64[0];
  v14 = [(CPSListTemplateViewController *)selfCopy _playingStateForSnapshot:v15[0], v2];
  v5 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v5;
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __57__CPSListTemplateViewController__updatePlayingIndicators__block_invoke;
  v11 = &unk_278D91CA8;
  v12 = MEMORY[0x277D82BE0](selfCopy);
  v13 = v14;
  dispatch_async(queue, &v7);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(v15, 0);
}

double __57__CPSListTemplateViewController__updatePlayingIndicators__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v24 = a1;
  v23 = a1;
  memset(__b, 0, sizeof(__b));
  v16 = [*(a1 + 32) tableView];
  obj = [v16 visibleCells];
  v18 = [obj countByEnumeratingWithState:__b objects:v25 count:{16, MEMORY[0x277D82BD8](v16).n128_f64[0]}];
  if (v18)
  {
    v12 = *__b[2];
    v13 = 0;
    v14 = v18;
    while (1)
    {
      v11 = v13;
      if (*__b[2] != v12)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(__b[1] + 8 * v13);
      v1 = objc_opt_class();
      v20 = CPSSafeCast_16(v1, v22);
      if (v20)
      {
        v4 = objc_opt_class();
        v8 = [*(a1 + 32) dataSource];
        v7 = [*(a1 + 32) tableView];
        v6 = [v7 indexPathForCell:v20];
        v5 = [v8 itemAtIndexPath:?];
        location = CPSSafeCast_16(v4, v5);
        MEMORY[0x277D82BD8](v5);
        MEMORY[0x277D82BD8](v6);
        MEMORY[0x277D82BD8](v7);
        *&v2 = MEMORY[0x277D82BD8](v8).n128_u64[0];
        v9 = v20;
        v10 = 0;
        if ([location isPlaying])
        {
          v10 = *(a1 + 40);
        }

        [v9 setActivePlayback:v10 & 1];
        objc_storeStrong(&location, 0);
      }

      objc_storeStrong(&v20, 0);
      ++v13;
      if (v11 + 1 >= v14)
      {
        v13 = 0;
        v14 = [obj countByEnumeratingWithState:__b objects:v25 count:16];
        if (!v14)
        {
          break;
        }
      }
    }
  }

  *&result = MEMORY[0x277D82BD8](obj).n128_u64[0];
  return result;
}

- (id)preferredFocusEnvironments
{
  v18[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v15[1] = a2;
  v15[0] = 0;
  lastFocusedItem = [(CPSListTemplateViewController *)self lastFocusedItem];
  *&v2 = MEMORY[0x277D82BD8](lastFocusedItem).n128_u64[0];
  if (lastFocusedItem)
  {
    dataSource = [(CPSListTemplateViewController *)selfCopy dataSource];
    lastFocusedItem2 = [(CPSListTemplateViewController *)selfCopy lastFocusedItem];
    v14 = [(CPSSectionedDataSource *)dataSource indexPathForItemWithIdentifier:?];
    MEMORY[0x277D82BD8](lastFocusedItem2);
    *&v3 = MEMORY[0x277D82BD8](dataSource).n128_u64[0];
    tableView = [(CPSListTemplateViewController *)selfCopy tableView];
    v4 = [(CPSTableView *)tableView cellForRowAtIndexPath:v14];
    v5 = v15[0];
    v15[0] = v4;
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](tableView);
    objc_storeStrong(&v14, 0);
  }

  if (v15[0])
  {
    v18[0] = v15[0];
    preferredFocusEnvironments = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:{1, v2}];
  }

  else
  {
    v12.receiver = selfCopy;
    v12.super_class = CPSListTemplateViewController;
    preferredFocusEnvironments = [(CPSListTemplateViewController *)&v12 preferredFocusEnvironments];
  }

  v13 = 1;
  objc_storeStrong(v15, 0);
  v6 = preferredFocusEnvironments;

  return v6;
}

- (id)_buttonForIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v19 = 0;
  v20 = &v19;
  v21 = 838860800;
  v22 = 48;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v25 = 0;
  v11 = objc_opt_class();
  tableView = [(CPSListTemplateViewController *)selfCopy tableView];
  tableHeaderView = [(CPSTableView *)tableView tableHeaderView];
  v18 = CPSSafeCast_17(v11, tableHeaderView);
  MEMORY[0x277D82BD8](tableHeaderView);
  gridButtons = [v18 gridButtons];
  v8 = [gridButtons count];
  *&v3 = MEMORY[0x277D82BD8](gridButtons).n128_u64[0];
  if (v8)
  {
    gridButtons2 = [v18 gridButtons];
    v12 = MEMORY[0x277D85DD0];
    v13 = -1073741824;
    v14 = 0;
    v15 = __60__CPSListTemplateViewController_Grid___buttonForIdentifier___block_invoke;
    v16 = &unk_278D92DB0;
    v17[0] = MEMORY[0x277D82BE0](location[0]);
    v17[1] = &v19;
    [gridButtons2 enumerateObjectsUsingBlock:&v12];
    MEMORY[0x277D82BD8](gridButtons2);
    objc_storeStrong(v17, 0);
  }

  v5 = MEMORY[0x277D82BE0](v20[5]);
  objc_storeStrong(&v18, 0);
  _Block_object_dispose(&v19, 8);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);

  return v5;
}

void __60__CPSListTemplateViewController_Grid___buttonForIdentifier___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = [location[0] identifier];
  v7 = [v6 isEqual:a1[4]];
  MEMORY[0x277D82BD8](v6);
  if (v7)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), location[0]);
    *a4 = 1;
  }

  objc_storeStrong(location, 0);
}

- (id)_prepareCPUIGridButtonsForButtons:(id)buttons
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, buttons);
  v20 = objc_opt_new();
  v10 = objc_alloc(MEMORY[0x277CF9100]);
  view = [(CPSListTemplateViewController *)selfCopy view];
  [view frame];
  v16[3] = v3;
  v16[4] = v4;
  *&v17 = v5;
  *(&v17 + 1) = v6;
  v18 = v17;
  [MEMORY[0x277CBB0E8] maximumGridButtonImageSize];
  v16[1] = v7;
  v16[2] = v8;
  v19 = [v10 initWithSize:2 style:v17 imageSize:{*&v7, *&v8}];
  MEMORY[0x277D82BD8](view);
  v12 = location[0];
  v14 = MEMORY[0x277D82BE0](selfCopy);
  v15 = MEMORY[0x277D82BE0](v19);
  v16[0] = MEMORY[0x277D82BE0](v20);
  [v12 enumerateObjectsUsingBlock:?];
  v13 = MEMORY[0x277D82BE0](v20);
  objc_storeStrong(v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);

  return v13;
}

void __73__CPSListTemplateViewController_Grid___prepareCPUIGridButtonsForButtons___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15[3] = a3;
  v15[2] = a4;
  v15[1] = a1;
  v13 = [*(a1 + 32) associatedTemplate];
  v14 = [objc_opt_class() maximumHeaderGridButtonCount];
  *&v4 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  if (a3 < v14)
  {
    v8 = MEMORY[0x277CF90F8];
    v6 = location[0];
    v7 = *(a1 + 40);
    v9 = [*(a1 + 32) templateDelegate];
    v15[0] = [v8 buttonWithGridButton:v6 layout:v7 templateDelegate:?];
    *&v5 = MEMORY[0x277D82BD8](v9).n128_u64[0];
    [v15[0] setAccessibilityIdentifier:{@"CPListTemplateGridViewButton", v5}];
    [v15[0] setTranslatesAutoresizingMaskIntoConstraints:0];
    [v15[0] setDelegate:*(a1 + 32)];
    [*(a1 + 48) addObject:v15[0]];
    objc_storeStrong(v15, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)updateTableHeaderGridButtons:(id)buttons
{
  v46[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, buttons);
  v43 = [(CPSListTemplateViewController *)selfCopy _prepareCPUIGridButtonsForButtons:location[0]];
  if (v43 && [v43 count])
  {
    navigationItem = [(CPSListTemplateViewController *)selfCopy navigationItem];
    [navigationItem setLargeTitleDisplayMode:2];
    *&v4 = MEMORY[0x277D82BD8](navigationItem).n128_u64[0];
    tableView = [(CPSListTemplateViewController *)selfCopy tableView];
    contentView = [(CPSTableView *)tableView contentView];
    MEMORY[0x277D82BD8](tableView);
    [contentView frame];
    *&v40 = v5;
    *(&v40 + 1) = v6;
    *&v41 = v7;
    *(&v41 + 1) = v8;
    v39 = [objc_alloc(MEMORY[0x277CF9110]) initWithButtons:v43 fittingRect:{v40, v41}];
    [v39 preferredFrame];
    v37 = v47;
    Height = CGRectGetHeight(v47);
    v31 = objc_opt_class();
    tableView2 = [(CPSListTemplateViewController *)selfCopy tableView];
    tableHeaderView = [(CPSTableView *)tableView2 tableHeaderView];
    v36 = CPSSafeCast_17(v31, tableHeaderView);
    MEMORY[0x277D82BD8](tableHeaderView);
    *&v9 = MEMORY[0x277D82BD8](tableView2).n128_u64[0];
    if (v36)
    {
      [v36 setCollectionViewLayout:{v39, v9}];
      [v36 setGridButtons:v43];
      tableView3 = [(CPSListTemplateViewController *)selfCopy tableView];
      [(CPSTableView *)tableView3 setTableHeaderView:v36];
      MEMORY[0x277D82BD8](tableView3);
      headerGridHeightConstraint = [(CPSListTemplateViewController *)selfCopy headerGridHeightConstraint];
      [(NSLayoutConstraint *)headerGridHeightConstraint setConstant:Height];
      v11 = MEMORY[0x277D82BD8](headerGridHeightConstraint).n128_u64[0];
    }

    else
    {
      v36 = [objc_alloc(MEMORY[0x277CF9108]) initWithViewFlowLayout:v39 gridButtons:v43];
      [v36 setContentInsetAdjustmentBehavior:MEMORY[0x277D82BD8](0).n128_f64[0]];
      [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
      tableView4 = [(CPSListTemplateViewController *)selfCopy tableView];
      [(CPSTableView *)tableView4 setTableHeaderView:v36];
      heightAnchor = [v36 heightAnchor];
      v17 = [heightAnchor constraintEqualToConstant:Height];
      [(CPSListTemplateViewController *)selfCopy setHeaderGridHeightConstraint:?];
      MEMORY[0x277D82BD8](v17);
      *&v10 = MEMORY[0x277D82BD8](heightAnchor).n128_u64[0];
      v19 = MEMORY[0x277CCAAD0];
      leadingAnchor = [v36 leadingAnchor];
      leadingAnchor2 = [contentView leadingAnchor];
      v25 = [leadingAnchor constraintEqualToAnchor:?];
      v46[0] = v25;
      trailingAnchor = [v36 trailingAnchor];
      trailingAnchor2 = [contentView trailingAnchor];
      v22 = [trailingAnchor constraintEqualToAnchor:?];
      v46[1] = v22;
      headerGridHeightConstraint2 = [(CPSListTemplateViewController *)selfCopy headerGridHeightConstraint];
      v46[2] = headerGridHeightConstraint2;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:3];
      [v19 activateConstraints:?];
      MEMORY[0x277D82BD8](v20);
      MEMORY[0x277D82BD8](headerGridHeightConstraint2);
      MEMORY[0x277D82BD8](v22);
      MEMORY[0x277D82BD8](trailingAnchor2);
      MEMORY[0x277D82BD8](trailingAnchor);
      MEMORY[0x277D82BD8](v25);
      MEMORY[0x277D82BD8](leadingAnchor2);
      [v36 reloadData];
      tableView5 = [(CPSListTemplateViewController *)selfCopy tableView];
      [(CPSTableView *)tableView5 reloadData];
      v11 = MEMORY[0x277D82BD8](tableView5).n128_u64[0];
    }

    tableView6 = [(CPSListTemplateViewController *)selfCopy tableView];
    tableHeaderView2 = [(CPSTableView *)tableView6 tableHeaderView];
    [tableHeaderView2 layoutIfNeeded];
    MEMORY[0x277D82BD8](tableHeaderView2);
    MEMORY[0x277D82BD8](tableView6);
    objc_storeStrong(&v36, 0);
    objc_storeStrong(&v39, 0);
    objc_storeStrong(&contentView, 0);
  }

  else
  {
    tableView7 = [(CPSListTemplateViewController *)selfCopy tableView];
    [(CPSTableView *)tableView7 setTableHeaderView:?];
    *&v3 = MEMORY[0x277D82BD8](tableView7).n128_u64[0];
    [(CPSListTemplateViewController *)selfCopy setHeaderGridHeightConstraint:0, v3];
    navigationItem2 = [(CPSListTemplateViewController *)selfCopy navigationItem];
    [navigationItem2 setLargeTitleDisplayMode:0];
    MEMORY[0x277D82BD8](navigationItem2);
  }

  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
}

@end