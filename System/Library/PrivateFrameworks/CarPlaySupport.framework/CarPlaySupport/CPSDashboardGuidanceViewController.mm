@interface CPSDashboardGuidanceViewController
- (BOOL)_hasContentReady;
- (void)_animateShortcutContainerViewIn;
- (void)_animateShortcutContainerViewOut;
- (void)_focusHighlightColorChanged:(id)changed;
- (void)_launchApp:(id)app;
- (void)_setContentReady;
- (void)_setupFakeButtonIfNecessary;
- (void)_transitionFromViews:(id)views inView:(id)view animated:(BOOL)animated;
- (void)_updateWallpaperAppearanceTraitOverride;
- (void)didSelectButton:(id)button;
- (void)navigator:(id)navigator didEndTrip:(BOOL)trip;
- (void)navigator:(id)navigator pausedTripForReason:(unint64_t)reason description:(id)description usingColor:(id)color;
- (void)setContentReadyIfNecessary;
- (void)setFakesDashboardSupport:(BOOL)support;
- (void)setShortCutButtons:(id)buttons;
- (void)showManeuvers:(id)maneuvers usingDisplayStyles:(id)styles;
- (void)traitCollectionDidChange:(id)change;
- (void)updateEstimates:(id)estimates forManeuver:(id)maneuver;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CPSDashboardGuidanceViewController

- (void)viewDidLoad
{
  v30[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v28 = a2;
  v27.receiver = self;
  v27.super_class = CPSDashboardGuidanceViewController;
  [(CPSDashboardGuidanceViewController *)&v27 viewDidLoad];
  v26 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(CPSDashboardGuidanceViewController *)selfCopy view];
  [view addSubview:v26];
  MEMORY[0x277D82BD8](view);
  objc_storeStrong(&selfCopy->_shortcutButtonsContainerView, v26);
  leadingAnchor = [v26 leadingAnchor];
  view2 = [(CPSDashboardGuidanceViewController *)selfCopy view];
  leadingAnchor2 = [view2 leadingAnchor];
  v25 = [leadingAnchor constraintEqualToAnchor:?];
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](view2);
  MEMORY[0x277D82BD8](leadingAnchor);
  objc_storeStrong(&selfCopy->_shortcutButtonsContainerViewLeadingConstraint, v25);
  trailingAnchor = [v26 trailingAnchor];
  view3 = [(CPSDashboardGuidanceViewController *)selfCopy view];
  trailingAnchor2 = [view3 trailingAnchor];
  v24 = [trailingAnchor constraintEqualToAnchor:?];
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](view3);
  MEMORY[0x277D82BD8](trailingAnchor);
  objc_storeStrong(&selfCopy->_shortcutButtonsContainerViewTrailingConstraint, v24);
  v9 = MEMORY[0x277CCAAD0];
  view4 = [(CPSDashboardGuidanceViewController *)selfCopy view];
  topAnchor = [view4 topAnchor];
  topAnchor2 = [v26 topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:?];
  v30[0] = v15;
  view5 = [(CPSDashboardGuidanceViewController *)selfCopy view];
  bottomAnchor = [view5 bottomAnchor];
  bottomAnchor2 = [v26 bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:?];
  v30[1] = v11;
  v30[2] = selfCopy->_shortcutButtonsContainerViewLeadingConstraint;
  v30[3] = selfCopy->_shortcutButtonsContainerViewTrailingConstraint;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
  [v9 activateConstraints:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](view5);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](topAnchor);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v19 = selfCopy;
  v20 = *MEMORY[0x277CF91E0];
  view6 = [(CPSDashboardGuidanceViewController *)selfCopy view];
  window = [view6 window];
  [defaultCenter addObserver:v19 selector:sel__focusHighlightColorChanged_ name:v20 object:?];
  MEMORY[0x277D82BD8](window);
  MEMORY[0x277D82BD8](view6);
  MEMORY[0x277D82BD8](defaultCenter);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
}

- (void)setShortCutButtons:(id)buttons
{
  v141[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, buttons);
  view = [(CPSDashboardGuidanceViewController *)selfCopy view];
  [view layoutIfNeeded];
  *&v3 = MEMORY[0x277D82BD8](view).n128_u64[0];
  v132 = 0;
  shortcutButtonsContainerView = [(CPSDashboardGuidanceViewController *)selfCopy shortcutButtonsContainerView];
  isHidden = [(UIView *)shortcutButtonsContainerView isHidden];
  *&v4 = MEMORY[0x277D82BD8](shortcutButtonsContainerView).n128_u64[0];
  v131 = isHidden;
  dashboardButtons = [(CPSDashboardGuidanceViewController *)selfCopy dashboardButtons];
  v61 = 0;
  if ([(NSArray *)dashboardButtons count])
  {
    v61 = !v131;
  }

  *&v5 = MEMORY[0x277D82BD8](dashboardButtons).n128_u64[0];
  if (v61)
  {
    v132 = 1;
    [(CPSDashboardGuidanceViewController *)selfCopy _animateShortcutContainerViewOut];
  }

  v130 = objc_opt_new();
  dashboardButtons2 = [(CPSDashboardGuidanceViewController *)selfCopy dashboardButtons];
  [(NSArray *)dashboardButtons2 enumerateObjectsUsingBlock:&__block_literal_global];
  if ([location[0] count] > 2)
  {
    v136 = 0;
    v135 = 2;
    v137 = 0;
    v138 = 2;
    v129[1] = 0;
    v129[2] = 2;
    v7 = [location[0] subarrayWithRange:{0, 2}];
    v8 = location[0];
    location[0] = v7;
    *&v6 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  }

  if ([location[0] count] == 1)
  {
    v59 = [CPSDashboardItemView alloc];
    firstObject = [location[0] firstObject];
    v129[0] = [CPSDashboardItemView initWithDashboardButton:v59 layoutAxis:"initWithDashboardButton:layoutAxis:"];
    [v129[0] setTranslatesAutoresizingMaskIntoConstraints:{0, MEMORY[0x277D82BD8](firstObject).n128_f64[0]}];
    [v129[0] setDelegate:selfCopy];
    [v130 addObject:v129[0]];
    shortcutButtonsContainerView2 = [(CPSDashboardGuidanceViewController *)selfCopy shortcutButtonsContainerView];
    [shortcutButtonsContainerView2 addSubview:v129[0]];
    v57 = MEMORY[0x277CCAAD0];
    centerYAnchor = [v129[0] centerYAnchor];
    centerYAnchor2 = [shortcutButtonsContainerView2 centerYAnchor];
    v54 = [centerYAnchor constraintEqualToAnchor:?];
    v141[0] = v54;
    leadingAnchor = [v129[0] leadingAnchor];
    leadingAnchor2 = [shortcutButtonsContainerView2 leadingAnchor];
    v51 = [leadingAnchor constraintEqualToAnchor:8.0 constant:?];
    v141[1] = v51;
    trailingAnchor = [v129[0] trailingAnchor];
    trailingAnchor2 = [shortcutButtonsContainerView2 trailingAnchor];
    v48 = [trailingAnchor constraintLessThanOrEqualToAnchor:8.0 constant:?];
    v141[2] = v48;
    heightAnchor = [v129[0] heightAnchor];
    heightAnchor2 = [shortcutButtonsContainerView2 heightAnchor];
    v45 = [heightAnchor constraintLessThanOrEqualToAnchor:-16.0 constant:?];
    v141[3] = v45;
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v141 count:4];
    [v57 activateConstraints:?];
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](heightAnchor2);
    MEMORY[0x277D82BD8](heightAnchor);
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](trailingAnchor2);
    MEMORY[0x277D82BD8](trailingAnchor);
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](leadingAnchor2);
    MEMORY[0x277D82BD8](leadingAnchor);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](centerYAnchor2);
    MEMORY[0x277D82BD8](centerYAnchor);
    objc_storeStrong(&shortcutButtonsContainerView2, 0);
    objc_storeStrong(v129, 0);
  }

  else
  {
    spacingGuides = [(CPSDashboardGuidanceViewController *)selfCopy spacingGuides];
    v122 = MEMORY[0x277D85DD0];
    v123 = -1073741824;
    v124 = 0;
    v125 = __57__CPSDashboardGuidanceViewController_setShortCutButtons___block_invoke_2;
    v126 = &unk_278D912D0;
    v127 = MEMORY[0x277D82BE0](selfCopy);
    [(NSArray *)spacingGuides enumerateObjectsUsingBlock:&v122];
    MEMORY[0x277D82BD8](spacingGuides);
    v121 = objc_alloc_init(MEMORY[0x277CBEB18]);
    for (i = 0; ; ++i)
    {
      v42 = i;
      if (v42 > [location[0] count])
      {
        break;
      }

      v119 = objc_alloc_init(MEMORY[0x277D756D0]);
      shortcutButtonsContainerView3 = [(CPSDashboardGuidanceViewController *)selfCopy shortcutButtonsContainerView];
      [(UIView *)shortcutButtonsContainerView3 addLayoutGuide:v119];
      [v121 addObject:{v119, MEMORY[0x277D82BD8](shortcutButtonsContainerView3).n128_f64[0]}];
      objc_storeStrong(&v119, 0);
    }

    [(CPSDashboardGuidanceViewController *)selfCopy setSpacingGuides:v121];
    v118 = objc_alloc_init(MEMORY[0x277CBEB18]);
    firstObject2 = [v121 firstObject];
    v110 = 0;
    v111 = &v110;
    v112 = 838860800;
    v113 = 48;
    v114 = __Block_byref_object_copy_;
    v115 = __Block_byref_object_dispose_;
    shortcutButtonsContainerView4 = [(CPSDashboardGuidanceViewController *)selfCopy shortcutButtonsContainerView];
    leadingAnchor3 = [(UIView *)shortcutButtonsContainerView4 leadingAnchor];
    MEMORY[0x277D82BD8](shortcutButtonsContainerView4);
    v103 = 0;
    v104 = &v103;
    v105 = 838860800;
    v106 = 48;
    v107 = __Block_byref_object_copy_;
    v108 = __Block_byref_object_dispose_;
    v109 = 0;
    v39 = location[0];
    v93 = MEMORY[0x277D85DD0];
    v94 = -1073741824;
    v95 = 0;
    v96 = __57__CPSDashboardGuidanceViewController_setShortCutButtons___block_invoke_44;
    v97 = &unk_278D912F8;
    v98 = MEMORY[0x277D82BE0](selfCopy);
    v99 = MEMORY[0x277D82BE0](v130);
    v100 = MEMORY[0x277D82BE0](v121);
    v102[1] = &v103;
    v101 = MEMORY[0x277D82BE0](v118);
    v102[2] = &v110;
    v102[0] = MEMORY[0x277D82BE0](firstObject2);
    [v39 enumerateObjectsUsingBlock:&v93];
    lastObject = [v121 lastObject];
    v38 = v118;
    trailingAnchor3 = [v104[5] trailingAnchor];
    shortcutButtonsContainerView5 = [(CPSDashboardGuidanceViewController *)selfCopy shortcutButtonsContainerView];
    trailingAnchor4 = [(UIView *)shortcutButtonsContainerView5 trailingAnchor];
    v34 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:?];
    v140[0] = v34;
    widthAnchor = [lastObject widthAnchor];
    widthAnchor2 = [firstObject2 widthAnchor];
    v31 = [widthAnchor constraintEqualToAnchor:?];
    v140[1] = v31;
    leadingAnchor4 = [lastObject leadingAnchor];
    v29 = [leadingAnchor4 constraintEqualToAnchor:v111[5]];
    v140[2] = v29;
    trailingAnchor5 = [lastObject trailingAnchor];
    shortcutButtonsContainerView6 = [(CPSDashboardGuidanceViewController *)selfCopy shortcutButtonsContainerView];
    trailingAnchor6 = [(UIView *)shortcutButtonsContainerView6 trailingAnchor];
    v25 = [trailingAnchor5 constraintEqualToAnchor:?];
    v140[3] = v25;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v140 count:4];
    [v38 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](trailingAnchor6);
    MEMORY[0x277D82BD8](shortcutButtonsContainerView6);
    MEMORY[0x277D82BD8](trailingAnchor5);
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](leadingAnchor4);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](widthAnchor2);
    MEMORY[0x277D82BD8](widthAnchor);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](trailingAnchor4);
    MEMORY[0x277D82BD8](shortcutButtonsContainerView5);
    activeConstraints = [(CPSDashboardGuidanceViewController *)selfCopy activeConstraints];
    *&v9 = MEMORY[0x277D82BD8](activeConstraints).n128_u64[0];
    if (activeConstraints)
    {
      v22 = MEMORY[0x277CCAAD0];
      activeConstraints2 = [(CPSDashboardGuidanceViewController *)selfCopy activeConstraints];
      [v22 deactivateConstraints:?];
      MEMORY[0x277D82BD8](activeConstraints2);
    }

    objc_storeStrong(&selfCopy->_activeConstraints, v118);
    [MEMORY[0x277CCAAD0] activateConstraints:v118];
    objc_storeStrong(&lastObject, 0);
    objc_storeStrong(v102, 0);
    objc_storeStrong(&v101, 0);
    objc_storeStrong(&v100, 0);
    objc_storeStrong(&v99, 0);
    objc_storeStrong(&v98, 0);
    _Block_object_dispose(&v103, 8);
    objc_storeStrong(&v109, 0);
    _Block_object_dispose(&v110, 8);
    objc_storeStrong(&leadingAnchor3, 0);
    objc_storeStrong(&firstObject2, 0);
    objc_storeStrong(&v118, 0);
    objc_storeStrong(&v121, 0);
    objc_storeStrong(&v127, 0);
  }

  [(CPSDashboardGuidanceViewController *)selfCopy setDashboardButtons:v130];
  view2 = [(CPSDashboardGuidanceViewController *)selfCopy view];
  [view2 layoutIfNeeded];
  *&v10 = MEMORY[0x277D82BD8](view2).n128_u64[0];
  v87 = 0;
  v88 = &v87;
  v89 = 0x20000000;
  v90 = 32;
  v91 = 1;
  v82 = 0;
  v83 = &v82;
  v84 = 0x20000000;
  v85 = 32;
  v86 = 1;
  v75[1] = MEMORY[0x277D85DD0];
  v76 = -1073741824;
  v77 = 0;
  v78 = __57__CPSDashboardGuidanceViewController_setShortCutButtons___block_invoke_2_46;
  v79 = &unk_278D91320;
  v80 = &v87;
  v81 = &v82;
  [v130 enumerateObjectsUsingBlock:v10];
  if ((v88[3] & 1) != 0 && (v83[3] & 1) == 0)
  {
    [v130 enumerateObjectsUsingBlock:&__block_literal_global_48];
  }

  v19 = objc_opt_class();
  view3 = [(CPSDashboardGuidanceViewController *)selfCopy view];
  window = [view3 window];
  v75[0] = CPSSafeCast_0(v19, window);
  MEMORY[0x277D82BD8](window);
  [(CPSDashboardGuidanceViewController *)selfCopy _updateWallpaperAppearanceTraitOverride];
  dashboardButtons3 = [(CPSDashboardGuidanceViewController *)selfCopy dashboardButtons];
  v69 = MEMORY[0x277D85DD0];
  v70 = -1073741824;
  v71 = 0;
  v72 = __57__CPSDashboardGuidanceViewController_setShortCutButtons___block_invoke_4;
  v73 = &unk_278D91348;
  v74 = MEMORY[0x277D82BE0](v75[0]);
  [(NSArray *)dashboardButtons3 enumerateObjectsUsingBlock:&v69];
  shortcutButtonsContainerView7 = [(CPSDashboardGuidanceViewController *)selfCopy shortcutButtonsContainerView];
  [(UIView *)shortcutButtonsContainerView7 setHidden:v131];
  v11 = MEMORY[0x277D82BD8](shortcutButtonsContainerView7).n128_u64[0];
  if (v132)
  {
    [(CPSDashboardGuidanceViewController *)selfCopy _animateShortcutContainerViewIn];
  }

  v67 = 0;
  LOBYTE(v14) = 0;
  if (v75[0])
  {
    shortcutButtonsContainerView8 = [(CPSDashboardGuidanceViewController *)selfCopy shortcutButtonsContainerView];
    v67 = 1;
    v14 = ![(UIView *)shortcutButtonsContainerView8 isHidden];
  }

  if (v67)
  {
    v11 = MEMORY[0x277D82BD8](shortcutButtonsContainerView8).n128_u64[0];
  }

  if (v14)
  {
    v13 = v75[0];
    dashboardButtons4 = [(CPSDashboardGuidanceViewController *)selfCopy dashboardButtons];
    [v13 setFocusableViews:?];
    MEMORY[0x277D82BD8](dashboardButtons4);
  }

  oslog = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v139, location[0], selfCopy);
    _os_log_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEFAULT, "Set Shortcut Buttons: %@ on view controller: %@", v139, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  [(CPSDashboardGuidanceViewController *)selfCopy _setContentReady];
  objc_storeStrong(&v74, 0);
  objc_storeStrong(v75, 0);
  _Block_object_dispose(&v82, 8);
  _Block_object_dispose(&v87, 8);
  objc_storeStrong(&v130, 0);
  objc_storeStrong(location, 0);
}

void __57__CPSDashboardGuidanceViewController_setShortCutButtons___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [location[0] removeFromSuperview];
  objc_storeStrong(location, 0);
}

void __57__CPSDashboardGuidanceViewController_setShortCutButtons___block_invoke_2(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [a1[4] shortcutButtonsContainerView];
  [v3 removeLayoutGuide:location[0]];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

void __57__CPSDashboardGuidanceViewController_setShortCutButtons___block_invoke_44(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v56[2] = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v53 = a3;
  v52[2] = a4;
  v52[1] = a1;
  v4 = [CPSDashboardItemView alloc];
  v52[0] = [(CPSDashboardItemView *)v4 initWithDashboardButton:location[0] layoutAxis:2];
  [v52[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v52[0] setDelegate:*(a1 + 32)];
  [*(a1 + 40) addObject:v52[0]];
  v49 = [*(a1 + 32) shortcutButtonsContainerView];
  [v49 addSubview:v52[0]];
  v51 = [*(a1 + 48) objectAtIndex:{a3, MEMORY[0x277D82BD8](v49).n128_f64[0]}];
  if (*(*(*(a1 + 72) + 8) + 40))
  {
    v39 = *(a1 + 56);
    v46 = [*(*(*(a1 + 72) + 8) + 40) trailingAnchor];
    v45 = [v51 centerXAnchor];
    v44 = [v46 constraintLessThanOrEqualToAnchor:?];
    v56[0] = v44;
    v43 = [v52[0] leadingAnchor];
    v42 = [v51 centerXAnchor];
    v41 = [v43 constraintGreaterThanOrEqualToAnchor:?];
    v56[1] = v41;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
    [v39 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v45);
    v5 = MEMORY[0x277D82BD8](v46).n128_u64[0];
  }

  else if (!v53)
  {
    v34 = *(a1 + 56);
    v38 = [v52[0] leadingAnchor];
    v37 = [*(a1 + 32) shortcutButtonsContainerView];
    v36 = [v37 leadingAnchor];
    v35 = [v38 constraintGreaterThanOrEqualToAnchor:?];
    [v34 addObject:?];
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v37);
    v5 = MEMORY[0x277D82BD8](v38).n128_u64[0];
  }

  v10 = *(a1 + 56);
  v32 = [v51 leadingAnchor];
  v31 = [v32 constraintEqualToAnchor:*(*(*(a1 + 80) + 8) + 40)];
  v55[0] = v31;
  v30 = [v51 trailingAnchor];
  v29 = [v52[0] imageView];
  v28 = [v29 leadingAnchor];
  v27 = [v30 constraintEqualToAnchor:?];
  v55[1] = v27;
  v26 = [v52[0] topAnchor];
  v25 = [*(a1 + 32) shortcutButtonsContainerView];
  v24 = [v25 topAnchor];
  v23 = [v26 constraintGreaterThanOrEqualToAnchor:?];
  v55[2] = v23;
  v22 = [v52[0] bottomAnchor];
  v21 = [*(a1 + 32) shortcutButtonsContainerView];
  v20 = [v21 bottomAnchor];
  v19 = [v22 constraintLessThanOrEqualToAnchor:?];
  v55[3] = v19;
  v18 = [v52[0] centerYAnchor];
  v17 = [*(a1 + 32) shortcutButtonsContainerView];
  v16 = [v17 centerYAnchor];
  v15 = [v18 constraintEqualToAnchor:?];
  v55[4] = v15;
  v14 = [v51 widthAnchor];
  v13 = [*(a1 + 64) widthAnchor];
  v12 = [v14 constraintEqualToAnchor:?];
  v55[5] = v12;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:6];
  [v10 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v31);
  *&v6 = MEMORY[0x277D82BD8](v32).n128_u64[0];
  v33 = [v52[0] imageView];
  v7 = [v33 trailingAnchor];
  v8 = *(*(a1 + 80) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v33);
  objc_storeStrong((*(*(a1 + 72) + 8) + 40), v52[0]);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(v52, 0);
  objc_storeStrong(location, 0);
}

void __57__CPSDashboardGuidanceViewController_setShortCutButtons___block_invoke_2_46(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = [location[0] dashboardButton];
  v9 = [v10 subtitleVariants];
  v11 = [v9 count];
  MEMORY[0x277D82BD8](v9);
  *&v4 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  if (!v11)
  {
    *(*(a1[4] + 8) + 24) = 0;
    *a4 = 1;
  }

  v5 = [location[0] subtitleLabel];
  v6 = [v5 isHidden];
  MEMORY[0x277D82BD8](v5);
  if (v6)
  {
    *(*(a1[5] + 8) + 24) = 0;
  }

  objc_storeStrong(location, 0);
}

void __57__CPSDashboardGuidanceViewController_setShortCutButtons___block_invoke_3(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [location[0] hideSubtitle];
  objc_storeStrong(location, 0);
}

void __57__CPSDashboardGuidanceViewController_setShortCutButtons___block_invoke_4(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [a1[4] focusHighlightColor];
  [location[0] setFocusHighlightColor:?];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (void)didSelectButton:(id)button
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  identifier = [location[0] identifier];
  if (-[CPSDashboardGuidanceViewController fakesDashboardSupport](selfCopy, "fakesDashboardSupport") && (v10 = -[CPSDashboardGuidanceViewController fakeDashboardButton](selfCopy, "fakeDashboardButton"), v9 = -[CPDashboardButton identifier](v10, "identifier"), v11 = [identifier isEqual:?], MEMORY[0x277D82BD8](v9), *&v3 = MEMORY[0x277D82BD8](v10).n128_u64[0], (v11 & 1) != 0))
  {
    fakeDashboardButton = [(CPSDashboardGuidanceViewController *)selfCopy fakeDashboardButton];
    [(CPDashboardButton *)fakeDashboardButton handlePrimaryAction];
    MEMORY[0x277D82BD8](fakeDashboardButton);
    v13 = 1;
  }

  else
  {
    v12 = CarPlaySupportGeneralLogging();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_64_8_64(v17, selfCopy, identifier);
      _os_log_debug_impl(&dword_242FE8000, v12, OS_LOG_TYPE_DEBUG, "%@: button selected with UUID: %@", v17, 0x16u);
    }

    objc_storeStrong(&v12, 0);
    dashboardClient = [(CPSDashboardGuidanceViewController *)selfCopy dashboardClient];
    v7 = [(CPDashboardClientInterface *)dashboardClient conformsToProtocol:&unk_285632728];
    *&v4 = MEMORY[0x277D82BD8](dashboardClient).n128_u64[0];
    if (v7)
    {
      dashboardClient2 = [(CPSDashboardGuidanceViewController *)selfCopy dashboardClient];
      [(CPDashboardClientInterface *)dashboardClient2 handleActionForControlIdentifier:identifier];
      MEMORY[0x277D82BD8](dashboardClient2);
    }

    v13 = 0;
  }

  objc_storeStrong(&identifier, 0);
  objc_storeStrong(location, 0);
}

- (void)showManeuvers:(id)maneuvers usingDisplayStyles:(id)styles
{
  v43[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, maneuvers);
  v40 = 0;
  objc_storeStrong(&v40, styles);
  [(CPSDashboardGuidanceViewController *)selfCopy _setContentReady];
  v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
  maneuversCardView = [(CPSDashboardGuidanceViewController *)selfCopy maneuversCardView];
  v4 = MEMORY[0x277D82BD8](maneuversCardView).n128_u64[0];
  if (maneuversCardView)
  {
    maneuversCardView2 = [(CPSDashboardGuidanceViewController *)selfCopy maneuversCardView];
    [v39 addObject:?];
    v4 = MEMORY[0x277D82BD8](maneuversCardView2).n128_u64[0];
  }

  pausedCardView = [(CPSDashboardGuidanceViewController *)selfCopy pausedCardView];
  v5 = MEMORY[0x277D82BD8](pausedCardView).n128_u64[0];
  if (pausedCardView)
  {
    pausedCardView2 = [(CPSDashboardGuidanceViewController *)selfCopy pausedCardView];
    [v39 addObject:?];
    v5 = MEMORY[0x277D82BD8](pausedCardView2).n128_u64[0];
  }

  v36 = 0;
  v27 = 1;
  if (![v39 count])
  {
    dashboardButtons = [(CPSDashboardGuidanceViewController *)selfCopy dashboardButtons];
    v36 = 1;
    v27 = [(NSArray *)dashboardButtons count]!= 0;
  }

  if (v36)
  {
    MEMORY[0x277D82BD8](dashboardButtons);
  }

  v38 = v27;
  [(CPSDashboardGuidanceViewController *)selfCopy setManeuversCardView:?];
  [(CPSDashboardGuidanceViewController *)selfCopy setPausedCardView:0];
  v35 = 0;
  if ([location[0] count])
  {
    shortcutButtonsContainerView = [(CPSDashboardGuidanceViewController *)selfCopy shortcutButtonsContainerView];
    v33 = 0;
    LOBYTE(v26) = 0;
    if (shortcutButtonsContainerView)
    {
      shortcutButtonsContainerView2 = [(CPSDashboardGuidanceViewController *)selfCopy shortcutButtonsContainerView];
      v33 = 1;
      v26 = ![(UIView *)shortcutButtonsContainerView2 isHidden];
    }

    if (v33)
    {
      MEMORY[0x277D82BD8](shortcutButtonsContainerView2);
    }

    *&v7 = MEMORY[0x277D82BD8](shortcutButtonsContainerView).n128_u64[0];
    if (v26)
    {
      [(CPSDashboardGuidanceViewController *)selfCopy _animateShortcutContainerViewOut];
    }

    v8 = objc_alloc_init(CPSDashboardManeuversCardView);
    v9 = v35;
    v35 = v8;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(CPSDashboardManeuversCardView *)v35 setBackgroundColor:?];
    [(CPSDashboardManeuversCardView *)v35 setAllowsCustomBackgroundColorForManeuver:0, MEMORY[0x277D82BD8](clearColor).n128_f64[0]];
    [(CPSDashboardManeuversCardView *)v35 setTranslatesAutoresizingMaskIntoConstraints:0];
    view = [(CPSDashboardGuidanceViewController *)selfCopy view];
    [view addSubview:v35];
    MEMORY[0x277D82BD8](view);
    objc_storeStrong(&selfCopy->_maneuversCardView, v35);
    [(CPSDashboardManeuversCardView *)v35 showManeuvers:location[0] usingDisplayStyles:v40];
    v14 = MEMORY[0x277CCAAD0];
    view2 = [(CPSDashboardGuidanceViewController *)selfCopy view];
    topAnchor = [view2 topAnchor];
    topAnchor2 = [(CPSDashboardManeuversCardView *)v35 topAnchor];
    v20 = [topAnchor constraintEqualToAnchor:?];
    v43[0] = v20;
    view3 = [(CPSDashboardGuidanceViewController *)selfCopy view];
    bottomAnchor = [view3 bottomAnchor];
    bottomAnchor2 = [(CPSDashboardManeuversCardView *)v35 bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:?];
    v43[1] = v16;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
    [v14 activateConstraints:?];
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](bottomAnchor2);
    MEMORY[0x277D82BD8](bottomAnchor);
    MEMORY[0x277D82BD8](view3);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](topAnchor);
    *&v10 = MEMORY[0x277D82BD8](view2).n128_u64[0];
    maneuversCardView3 = [(CPSDashboardGuidanceViewController *)selfCopy maneuversCardView];
    [(CPSDashboardManeuversCardView *)maneuversCardView3 setHidden:0];
    *&v6 = MEMORY[0x277D82BD8](maneuversCardView3).n128_u64[0];
  }

  [(CPSDashboardGuidanceViewController *)selfCopy _transitionFromViews:v39 inView:v35 animated:v38, v6, &v35];
  objc_storeStrong(v11, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
}

- (void)updateEstimates:(id)estimates forManeuver:(id)maneuver
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, estimates);
  v6 = 0;
  objc_storeStrong(&v6, maneuver);
  maneuversCardView = [(CPSDashboardGuidanceViewController *)selfCopy maneuversCardView];
  [(CPSDashboardManeuversCardView *)maneuversCardView updateEstimates:location[0] forManeuver:v6];
  MEMORY[0x277D82BD8](maneuversCardView);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)navigator:(id)navigator pausedTripForReason:(unint64_t)reason description:(id)description usingColor:(id)color
{
  v35[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, navigator);
  reasonCopy = reason;
  v31 = 0;
  objc_storeStrong(&v31, description);
  v30 = 0;
  objc_storeStrong(&v30, color);
  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  maneuversCardView = [(CPSDashboardGuidanceViewController *)selfCopy maneuversCardView];
  v6 = MEMORY[0x277D82BD8](maneuversCardView).n128_u64[0];
  if (maneuversCardView)
  {
    maneuversCardView2 = [(CPSDashboardGuidanceViewController *)selfCopy maneuversCardView];
    [v29 addObject:?];
    v6 = MEMORY[0x277D82BD8](maneuversCardView2).n128_u64[0];
  }

  pausedCardView = [(CPSDashboardGuidanceViewController *)selfCopy pausedCardView];
  v7 = MEMORY[0x277D82BD8](pausedCardView).n128_u64[0];
  if (pausedCardView)
  {
    pausedCardView2 = [(CPSDashboardGuidanceViewController *)selfCopy pausedCardView];
    [v29 addObject:?];
    v7 = MEMORY[0x277D82BD8](pausedCardView2).n128_u64[0];
  }

  [(CPSDashboardGuidanceViewController *)selfCopy setManeuversCardView:*&v7];
  [(CPSDashboardGuidanceViewController *)selfCopy setPausedCardView:0];
  v8 = [CPSPausedCardView alloc];
  v28 = [(CPSPausedCardView *)v8 initWithReason:reasonCopy title:v31 backgroundColor:0];
  view = [(CPSDashboardGuidanceViewController *)selfCopy view];
  [view addSubview:v28];
  MEMORY[0x277D82BD8](view);
  objc_storeStrong(&selfCopy->_pausedCardView, v28);
  v11 = MEMORY[0x277CCAAD0];
  view2 = [(CPSDashboardGuidanceViewController *)selfCopy view];
  topAnchor = [view2 topAnchor];
  topAnchor2 = [(CPSPausedCardView *)v28 topAnchor];
  v17 = [topAnchor constraintEqualToAnchor:?];
  v35[0] = v17;
  view3 = [(CPSDashboardGuidanceViewController *)selfCopy view];
  bottomAnchor = [view3 bottomAnchor];
  bottomAnchor2 = [(CPSPausedCardView *)v28 bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:?];
  v35[1] = v13;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  [v11 activateConstraints:?];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](view3);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](topAnchor);
  *&v9 = MEMORY[0x277D82BD8](view2).n128_u64[0];
  [(CPSDashboardGuidanceViewController *)selfCopy _animateShortcutContainerViewOut];
  [(CPSDashboardGuidanceViewController *)selfCopy _transitionFromViews:v29 inView:v28 animated:1];
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
}

- (void)navigator:(id)navigator didEndTrip:(BOOL)trip
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, navigator);
  tripCopy = trip;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  maneuversCardView = [(CPSDashboardGuidanceViewController *)selfCopy maneuversCardView];
  v4 = MEMORY[0x277D82BD8](maneuversCardView).n128_u64[0];
  if (maneuversCardView)
  {
    maneuversCardView2 = [(CPSDashboardGuidanceViewController *)selfCopy maneuversCardView];
    [v11 addObject:?];
    v4 = MEMORY[0x277D82BD8](maneuversCardView2).n128_u64[0];
  }

  pausedCardView = [(CPSDashboardGuidanceViewController *)selfCopy pausedCardView];
  v5 = MEMORY[0x277D82BD8](pausedCardView).n128_u64[0];
  if (pausedCardView)
  {
    pausedCardView2 = [(CPSDashboardGuidanceViewController *)selfCopy pausedCardView];
    [v11 addObject:?];
    v5 = MEMORY[0x277D82BD8](pausedCardView2).n128_u64[0];
  }

  [(CPSDashboardGuidanceViewController *)selfCopy setManeuversCardView:*&v5];
  [(CPSDashboardGuidanceViewController *)selfCopy setPausedCardView:0];
  [(CPSDashboardGuidanceViewController *)selfCopy _transitionFromViews:v11 inView:0 animated:1];
  [(CPSDashboardGuidanceViewController *)selfCopy _animateShortcutContainerViewIn];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)_transitionFromViews:(id)views inView:(id)view animated:(BOOL)animated
{
  v91[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, views);
  v87 = 0;
  objc_storeStrong(&v87, view);
  animatedCopy = animated;
  if (animated)
  {
    v60 = location[0];
    v80 = MEMORY[0x277D85DD0];
    v81 = -1073741824;
    v82 = 0;
    v83 = __75__CPSDashboardGuidanceViewController__transitionFromViews_inView_animated___block_invoke;
    v84 = &unk_278D913C0;
    v85 = MEMORY[0x277D82BE0](selfCopy);
    [v60 enumerateObjectsUsingBlock:&v80];
    if (v87)
    {
      leadingAnchor = [v87 leadingAnchor];
      view = [(CPSDashboardGuidanceViewController *)selfCopy view];
      leadingAnchor2 = [view leadingAnchor];
      view2 = [(CPSDashboardGuidanceViewController *)selfCopy view];
      [view2 frame];
      v78[1] = v5;
      v78[2] = v6;
      v78[3] = v7;
      v78[4] = v8;
      v79 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:*&v7];
      MEMORY[0x277D82BD8](view2);
      MEMORY[0x277D82BD8](leadingAnchor2);
      MEMORY[0x277D82BD8](view);
      *&v9 = MEMORY[0x277D82BD8](leadingAnchor).n128_u64[0];
      trailingAnchor = [v87 trailingAnchor];
      view3 = [(CPSDashboardGuidanceViewController *)selfCopy view];
      trailingAnchor2 = [view3 trailingAnchor];
      view4 = [(CPSDashboardGuidanceViewController *)selfCopy view];
      [view4 frame];
      v77[1] = v10;
      v77[2] = v11;
      v77[3] = v12;
      v77[4] = v13;
      v78[0] = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:*&v12];
      MEMORY[0x277D82BD8](view4);
      MEMORY[0x277D82BD8](trailingAnchor2);
      MEMORY[0x277D82BD8](view3);
      *&v14 = MEMORY[0x277D82BD8](trailingAnchor).n128_u64[0];
      v51 = MEMORY[0x277CCAAD0];
      v91[0] = v79;
      v91[1] = v78[0];
      v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:{2, v14}];
      [v51 activateConstraints:?];
      *&v15 = MEMORY[0x277D82BD8](v52).n128_u64[0];
      view5 = [(CPSDashboardGuidanceViewController *)selfCopy view];
      [view5 layoutIfNeeded];
      *&v16 = MEMORY[0x277D82BD8](view5).n128_u64[0];
      [v87 layoutIfNeeded];
      v54 = MEMORY[0x277CF0B70];
      v55 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
      v77[0] = [v54 settingsWithDuration:0.35 timingFunction:?];
      MEMORY[0x277D82BD8](v55);
      v17 = objc_opt_class();
      v76 = CPSSafeCast_0(v17, v87);
      v56 = objc_opt_class();
      view6 = [(CPSDashboardGuidanceViewController *)selfCopy view];
      window = [view6 window];
      v75 = CPSSafeCast_0(v56, window);
      MEMORY[0x277D82BD8](window);
      *&v18 = MEMORY[0x277D82BD8](view6).n128_u64[0];
      wantsLargeSize = 0;
      if (v76)
      {
        wantsLargeSize = [v76 wantsLargeSize];
      }

      v74 = wantsLargeSize & 1;
      widgetSizes = [v75 widgetSizes];
      lastObject = [widgetSizes lastObject];
      [lastObject CGSizeValue];
      v72 = v19;
      v73 = v20;
      MEMORY[0x277D82BD8](lastObject);
      widgetSizes2 = [v75 widgetSizes];
      v69 = 0;
      v42 = 0;
      if ([widgetSizes2 count])
      {
        view7 = [(CPSDashboardGuidanceViewController *)selfCopy view];
        v69 = 1;
        [view7 frame];
        v68[1] = v21;
        v68[2] = v22;
        v68[3] = v23;
        v68[4] = v24;
        v42 = BSFloatGreaterThanOrEqualToFloat();
      }

      if (v69)
      {
        MEMORY[0x277D82BD8](view7);
      }

      *&v25 = MEMORY[0x277D82BD8](widgetSizes2).n128_u64[0];
      v71 = v42 & 1;
      if ((v42 & 1) != (v74 & 1))
      {
        [v75 setNeedsLargeSize:v74 & 1 animationSettings:{v77[0], v25}];
      }

      [v79 setConstant:?];
      [v78[0] setConstant:0.0];
      v38 = MEMORY[0x277D75D18];
      [v77[0] duration];
      v37 = v26;
      v63 = MEMORY[0x277D85DD0];
      v64 = -1073741824;
      v65 = 0;
      v66 = __75__CPSDashboardGuidanceViewController__transitionFromViews_inView_animated___block_invoke_4;
      v67 = &unk_278D913E8;
      v68[0] = MEMORY[0x277D82BE0](selfCopy);
      [v38 animateWithDuration:0 delay:&v63 options:&__block_literal_global_103 animations:v37 completion:0.0];
      objc_storeStrong(v68, 0);
      objc_storeStrong(&v75, 0);
      objc_storeStrong(&v76, 0);
      objc_storeStrong(v77, 0);
      objc_storeStrong(v78, 0);
      objc_storeStrong(&v79, 0);
    }

    objc_storeStrong(&v85, 0);
  }

  else if (v87)
  {
    v27 = MEMORY[0x277CCAAD0];
    leadingAnchor3 = [v87 leadingAnchor];
    view8 = [(CPSDashboardGuidanceViewController *)selfCopy view];
    leadingAnchor4 = [view8 leadingAnchor];
    v33 = [leadingAnchor3 constraintEqualToAnchor:? constant:?];
    v90[0] = v33;
    trailingAnchor3 = [v87 trailingAnchor];
    view9 = [(CPSDashboardGuidanceViewController *)selfCopy view];
    trailingAnchor4 = [view9 trailingAnchor];
    v29 = [trailingAnchor3 constraintEqualToAnchor:0.0 constant:?];
    v90[1] = v29;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:2];
    [v27 activateConstraints:?];
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](trailingAnchor4);
    MEMORY[0x277D82BD8](view9);
    MEMORY[0x277D82BD8](trailingAnchor3);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](leadingAnchor4);
    MEMORY[0x277D82BD8](view8);
    MEMORY[0x277D82BD8](leadingAnchor3);
  }

  objc_storeStrong(&v87, 0);
  objc_storeStrong(location, 0);
}

void __75__CPSDashboardGuidanceViewController__transitionFromViews_inView_animated___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v39[3] = a3;
  v39[2] = a4;
  v39[1] = a1;
  v39[0] = [location[0] snapshotViewAfterScreenUpdates:0];
  v16 = [a1[4] view];
  [v16 addSubview:v39[0]];
  *&v4 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  v17 = v39[0];
  [location[0] frame];
  v35 = v5;
  v36 = v6;
  v37 = v7;
  v38 = v8;
  [v17 setFrame:{v5, v6, v7, v8}];
  [location[0] removeFromSuperview];
  [v39[0] frame];
  *(&v33 + 1) = v9;
  *&v34 = v10;
  *(&v34 + 1) = v11;
  *&v33 = v12 - v10;
  v18 = MEMORY[0x277D75D18];
  v25 = MEMORY[0x277D85DD0];
  v26 = -1073741824;
  v27 = 0;
  v28 = __75__CPSDashboardGuidanceViewController__transitionFromViews_inView_animated___block_invoke_2;
  v29 = &unk_278D91370;
  v30 = MEMORY[0x277D82BE0](v39[0]);
  v31 = v33;
  v32 = v34;
  v19 = MEMORY[0x277D85DD0];
  v20 = -1073741824;
  v21 = 0;
  v22 = __75__CPSDashboardGuidanceViewController__transitionFromViews_inView_animated___block_invoke_3;
  v23 = &unk_278D91398;
  v24 = MEMORY[0x277D82BE0](v39[0]);
  [v18 animateWithDuration:&v25 animations:0.35 completion:?];
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(v39, 0);
  objc_storeStrong(location, 0);
}

double __75__CPSDashboardGuidanceViewController__transitionFromViews_inView_animated___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

- (void)_animateShortcutContainerViewOut
{
  v51[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v48[1] = a2;
  v30 = objc_opt_class();
  view = [(CPSDashboardGuidanceViewController *)selfCopy view];
  window = [view window];
  v48[0] = CPSSafeCast_0(v30, window);
  MEMORY[0x277D82BD8](window);
  [v48[0] setFocusableViews:{MEMORY[0x277CBEBF8], MEMORY[0x277D82BD8](view).n128_f64[0]}];
  shortcutButtonsContainerView = [(CPSDashboardGuidanceViewController *)selfCopy shortcutButtonsContainerView];
  location = [(UIView *)shortcutButtonsContainerView snapshotViewAfterScreenUpdates:0];
  shortcutButtonsContainerView2 = [(CPSDashboardGuidanceViewController *)selfCopy shortcutButtonsContainerView];
  [(UIView *)shortcutButtonsContainerView2 setHidden:1];
  *&v2 = MEMORY[0x277D82BD8](shortcutButtonsContainerView2).n128_u64[0];
  if (location)
  {
    [location setTranslatesAutoresizingMaskIntoConstraints:{0, v2}];
    view2 = [(CPSDashboardGuidanceViewController *)selfCopy view];
    [view2 addSubview:location];
    *&v3 = MEMORY[0x277D82BD8](view2).n128_u64[0];
    v5 = MEMORY[0x277CCAAD0];
    trailingAnchor = [location trailingAnchor];
    view3 = [(CPSDashboardGuidanceViewController *)selfCopy view];
    trailingAnchor2 = [view3 trailingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:?];
    v51[0] = v19;
    topAnchor = [location topAnchor];
    view4 = [(CPSDashboardGuidanceViewController *)selfCopy view];
    topAnchor2 = [view4 topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:?];
    v51[1] = v15;
    bottomAnchor = [location bottomAnchor];
    view5 = [(CPSDashboardGuidanceViewController *)selfCopy view];
    bottomAnchor2 = [view5 bottomAnchor];
    v11 = [bottomAnchor constraintEqualToAnchor:?];
    v51[2] = v11;
    widthAnchor = [location widthAnchor];
    view6 = [(CPSDashboardGuidanceViewController *)selfCopy view];
    widthAnchor2 = [view6 widthAnchor];
    v7 = [widthAnchor constraintEqualToAnchor:?];
    v51[3] = v7;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:4];
    [v5 activateConstraints:?];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](widthAnchor2);
    MEMORY[0x277D82BD8](view6);
    MEMORY[0x277D82BD8](widthAnchor);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](bottomAnchor2);
    MEMORY[0x277D82BD8](view5);
    MEMORY[0x277D82BD8](bottomAnchor);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](view4);
    MEMORY[0x277D82BD8](topAnchor);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](trailingAnchor2);
    MEMORY[0x277D82BD8](view3);
    [location layoutIfNeeded];
    v23 = MEMORY[0x277CCAAD0];
    trailingAnchor3 = [location trailingAnchor];
    view7 = [(CPSDashboardGuidanceViewController *)selfCopy view];
    leadingAnchor = [view7 leadingAnchor];
    v25 = [trailingAnchor3 constraintEqualToAnchor:?];
    v50 = v25;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
    [v23 activateConstraints:?];
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](leadingAnchor);
    MEMORY[0x277D82BD8](view7);
    MEMORY[0x277D82BD8](trailingAnchor3);
    v29 = MEMORY[0x277D75D18];
    v41 = MEMORY[0x277D85DD0];
    v42 = -1073741824;
    v43 = 0;
    v44 = __70__CPSDashboardGuidanceViewController__animateShortcutContainerViewOut__block_invoke;
    v45 = &unk_278D913E8;
    v46 = MEMORY[0x277D82BE0](selfCopy);
    v35 = MEMORY[0x277D85DD0];
    v36 = -1073741824;
    v37 = 0;
    v38 = __70__CPSDashboardGuidanceViewController__animateShortcutContainerViewOut__block_invoke_2;
    v39 = &unk_278D91398;
    v40 = MEMORY[0x277D82BE0](location);
    [v29 animateWithDuration:0 delay:&v41 usingSpringWithDamping:&v35 initialSpringVelocity:0.3 options:0.0 animations:0.8 completion:?];
    objc_storeStrong(&v40, 0);
    objc_storeStrong(&v46, 0);
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v48, 0);
}

double __70__CPSDashboardGuidanceViewController__animateShortcutContainerViewOut__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

- (void)_animateShortcutContainerViewIn
{
  selfCopy = self;
  v30[9] = a2;
  shortcutButtonsContainerView = [(CPSDashboardGuidanceViewController *)self shortcutButtonsContainerView];
  [(UIView *)shortcutButtonsContainerView setHidden:0];
  shortcutButtonsContainerViewLeadingConstraint = [(CPSDashboardGuidanceViewController *)selfCopy shortcutButtonsContainerViewLeadingConstraint];
  view = [(CPSDashboardGuidanceViewController *)selfCopy view];
  [view frame];
  v30[5] = v2;
  v30[6] = v3;
  v30[7] = v4;
  v30[8] = v5;
  [(NSLayoutConstraint *)shortcutButtonsContainerViewLeadingConstraint setConstant:*&v4 + 8.0];
  MEMORY[0x277D82BD8](view);
  shortcutButtonsContainerViewTrailingConstraint = [(CPSDashboardGuidanceViewController *)selfCopy shortcutButtonsContainerViewTrailingConstraint];
  view2 = [(CPSDashboardGuidanceViewController *)selfCopy view];
  [view2 frame];
  v30[1] = v6;
  v30[2] = v7;
  v30[3] = v8;
  v30[4] = v9;
  [(NSLayoutConstraint *)shortcutButtonsContainerViewTrailingConstraint setConstant:*&v8 + 8.0];
  MEMORY[0x277D82BD8](view2);
  view3 = [(CPSDashboardGuidanceViewController *)selfCopy view];
  [view3 layoutIfNeeded];
  shortcutButtonsContainerViewLeadingConstraint2 = [(CPSDashboardGuidanceViewController *)selfCopy shortcutButtonsContainerViewLeadingConstraint];
  [(NSLayoutConstraint *)shortcutButtonsContainerViewLeadingConstraint2 setConstant:?];
  shortcutButtonsContainerViewTrailingConstraint2 = [(CPSDashboardGuidanceViewController *)selfCopy shortcutButtonsContainerViewTrailingConstraint];
  [(NSLayoutConstraint *)shortcutButtonsContainerViewTrailingConstraint2 setConstant:0.0];
  MEMORY[0x277D82BD8](shortcutButtonsContainerViewTrailingConstraint2);
  v18 = MEMORY[0x277D75D18];
  v25 = MEMORY[0x277D85DD0];
  v26 = -1073741824;
  v27 = 0;
  v28 = __69__CPSDashboardGuidanceViewController__animateShortcutContainerViewIn__block_invoke;
  v29 = &unk_278D913E8;
  v30[0] = MEMORY[0x277D82BE0](selfCopy);
  v19 = MEMORY[0x277D85DD0];
  v20 = -1073741824;
  v21 = 0;
  v22 = __69__CPSDashboardGuidanceViewController__animateShortcutContainerViewIn__block_invoke_2;
  v23 = &unk_278D91398;
  v24 = MEMORY[0x277D82BE0](selfCopy);
  [v18 animateWithDuration:0 delay:&v25 usingSpringWithDamping:0.3 initialSpringVelocity:0.0 options:0.8 animations:? completion:?];
  objc_storeStrong(&v24, 0);
  objc_storeStrong(v30, 0);
}

double __69__CPSDashboardGuidanceViewController__animateShortcutContainerViewIn__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

void __69__CPSDashboardGuidanceViewController__animateShortcutContainerViewIn__block_invoke_2(id *a1, char a2)
{
  v11 = a1;
  v10 = a2;
  v9[1] = a1;
  v3 = objc_opt_class();
  v5 = [a1[4] view];
  v4 = [v5 window];
  v9[0] = CPSSafeCast_0(v3, v4);
  MEMORY[0x277D82BD8](v4);
  *&v2 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  v7 = v9[0];
  v8 = [a1[4] dashboardButtons];
  [v7 setFocusableViews:?];
  MEMORY[0x277D82BD8](v8);
  objc_storeStrong(v9, 0);
}

- (void)_focusHighlightColorChanged:(id)changed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, changed);
  v4 = objc_opt_class();
  view = [(CPSDashboardGuidanceViewController *)selfCopy view];
  window = [view window];
  v13 = CPSSafeCast_0(v4, window);
  MEMORY[0x277D82BD8](window);
  *&v3 = MEMORY[0x277D82BD8](view).n128_u64[0];
  [(CPSDashboardGuidanceViewController *)selfCopy _updateWallpaperAppearanceTraitOverride];
  dashboardButtons = [(CPSDashboardGuidanceViewController *)selfCopy dashboardButtons];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __66__CPSDashboardGuidanceViewController__focusHighlightColorChanged___block_invoke;
  v11 = &unk_278D91348;
  v12 = MEMORY[0x277D82BE0](v13);
  [(NSArray *)dashboardButtons enumerateObjectsUsingBlock:?];
  MEMORY[0x277D82BD8](dashboardButtons);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __66__CPSDashboardGuidanceViewController__focusHighlightColorChanged___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [a1[4] focusHighlightColor];
  [location[0] setFocusHighlightColor:?];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (void)_updateWallpaperAppearanceTraitOverride
{
  selfCopy = self;
  v9[1] = a2;
  v4 = objc_opt_class();
  view = [(CPSDashboardGuidanceViewController *)selfCopy view];
  window = [view window];
  v9[0] = CPSSafeCast_0(v4, window);
  MEMORY[0x277D82BD8](window);
  useSystemPrimaryFocusColor = [v9[0] useSystemPrimaryFocusColor];
  v3 = 2;
  if (useSystemPrimaryFocusColor)
  {
    v3 = 1;
  }

  v8 = v3;
  traitOverrides = [(CPSDashboardGuidanceViewController *)selfCopy traitOverrides];
  [traitOverrides setNSIntegerValue:v8 forTrait:objc_opt_class()];
  MEMORY[0x277D82BD8](traitOverrides);
  objc_storeStrong(v9, 0);
}

- (void)_setContentReady
{
  selfCopy = self;
  v15[1] = a2;
  v6 = objc_opt_class();
  view = [(CPSDashboardGuidanceViewController *)selfCopy view];
  window = [view window];
  v15[0] = CPSSafeCast_0(v6, window);
  MEMORY[0x277D82BD8](window);
  MEMORY[0x277D82BD8](view);
  if (v15[0])
  {
    location = CarPlaySupportGeneralLogging();
    v13 = 2;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
    {
      log = location;
      type = v13;
      __os_log_helper_16_0_0(v12);
      _os_log_debug_impl(&dword_242FE8000, log, type, "Window exists, setting content ready", v12, 2u);
    }

    objc_storeStrong(&location, 0);
    [v15[0] setContentReady];
  }

  else
  {
    v11 = CarPlaySupportGeneralLogging();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v2 = v11;
      v3 = v10;
      __os_log_helper_16_0_0(v9);
      _os_log_impl(&dword_242FE8000, v2, v3, "Dashboard Window does not exist, pending content ready", v9, 2u);
    }

    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(v15, 0);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSDashboardGuidanceViewController;
  [(CPSDashboardGuidanceViewController *)&v2 viewDidLayoutSubviews];
  [(CPSDashboardGuidanceViewController *)selfCopy setContentReadyIfNecessary];
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v5 = a2;
  appearCopy = appear;
  v3.receiver = self;
  v3.super_class = CPSDashboardGuidanceViewController;
  [(CPSDashboardGuidanceViewController *)&v3 viewDidAppear:appear];
  [(CPSDashboardGuidanceViewController *)selfCopy setContentReadyIfNecessary];
}

- (void)setContentReadyIfNecessary
{
  selfCopy = self;
  location[1] = a2;
  if ([(CPSDashboardGuidanceViewController *)self _hasContentReady])
  {
    location[0] = CarPlaySupportGeneralLogging();
    v5 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      log = location[0];
      type = v5;
      __os_log_helper_16_0_0(v4);
      _os_log_impl(&dword_242FE8000, log, type, "Content is ready, sending contentReady to host.", v4, 2u);
    }

    objc_storeStrong(location, 0);
    [(CPSDashboardGuidanceViewController *)selfCopy _setContentReady];
  }
}

- (BOOL)_hasContentReady
{
  maneuversCardView = [(CPSDashboardGuidanceViewController *)self maneuversCardView];
  v5 = 0;
  v4 = 1;
  if (!maneuversCardView)
  {
    dashboardButtons = [(CPSDashboardGuidanceViewController *)self dashboardButtons];
    v5 = 1;
    v4 = dashboardButtons != 0;
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](dashboardButtons);
  }

  MEMORY[0x277D82BD8](maneuversCardView);
  return v4;
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v3.receiver = selfCopy;
  v3.super_class = CPSDashboardGuidanceViewController;
  [(CPSDashboardGuidanceViewController *)&v3 traitCollectionDidChange:location[0]];
  [(CPSDashboardGuidanceViewController *)selfCopy _setupFakeButtonIfNecessary];
  objc_storeStrong(location, 0);
}

- (void)_setupFakeButtonIfNecessary
{
  v44[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v41 = a2;
  v39 = 0;
  v18 = 0;
  if ([(CPSDashboardGuidanceViewController *)self fakesDashboardSupport])
  {
    fakeDashboardButton = [(CPSDashboardGuidanceViewController *)selfCopy fakeDashboardButton];
    v39 = 1;
    v18 = fakeDashboardButton == 0;
  }

  if (v39)
  {
    MEMORY[0x277D82BD8](fakeDashboardButton);
  }

  if (v18)
  {
    view = [(CPSDashboardGuidanceViewController *)selfCopy view];
    window = [view window];
    windowScene = [window windowScene];
    MEMORY[0x277D82BD8](window);
    MEMORY[0x277D82BD8](view);
    v15 = objc_opt_class();
    _FBSScene = [windowScene _FBSScene];
    settings = [_FBSScene settings];
    v37 = CPSSafeCast_0(v15, settings);
    MEMORY[0x277D82BD8](settings);
    *&v2 = MEMORY[0x277D82BD8](_FBSScene).n128_u64[0];
    if (v37)
    {
      proxiedApplicationBundleIdentifier = [v37 proxiedApplicationBundleIdentifier];
      v3 = MEMORY[0x277D755B8];
      v4 = proxiedApplicationBundleIdentifier;
      traitCollection = [(CPSDashboardGuidanceViewController *)selfCopy traitCollection];
      [traitCollection displayScale];
      v35 = [v3 _applicationIconImageForBundleIdentifier:v4 format:8 scale:?];
      MEMORY[0x277D82BD8](traitCollection);
      v7 = objc_alloc(MEMORY[0x277CBB078]);
      v44[0] = @"This is test UI";
      v44[1] = proxiedApplicationBundleIdentifier;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:?];
      v6 = v35;
      v27 = MEMORY[0x277D85DD0];
      v28 = -1073741824;
      v29 = 0;
      v30 = __65__CPSDashboardGuidanceViewController__setupFakeButtonIfNecessary__block_invoke;
      v31 = &unk_278D91430;
      v32 = MEMORY[0x277D82BE0](selfCopy);
      v33 = MEMORY[0x277D82BE0](proxiedApplicationBundleIdentifier);
      v34 = [v7 initWithTitleVariants:&unk_2855C4F40 subtitleVariants:v8 image:v6 handler:&v27];
      MEMORY[0x277D82BD8](v8);
      v10 = objc_alloc(MEMORY[0x277CBB078]);
      v9 = v35;
      v19 = MEMORY[0x277D85DD0];
      v20 = -1073741824;
      v21 = 0;
      v22 = __65__CPSDashboardGuidanceViewController__setupFakeButtonIfNecessary__block_invoke_2;
      v23 = &unk_278D91430;
      v24 = MEMORY[0x277D82BE0](selfCopy);
      v25 = MEMORY[0x277D82BE0](proxiedApplicationBundleIdentifier);
      v26 = [v10 initWithTitleVariants:&unk_2855C4F58 subtitleVariants:&unk_2855C4F70 image:v9 handler:&v19];
      [(CPSDashboardGuidanceViewController *)selfCopy setFakeDashboardButton:v34];
      v11 = selfCopy;
      v43[0] = v34;
      v43[1] = v26;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
      [(CPSDashboardGuidanceViewController *)v11 setShortCutButtons:?];
      MEMORY[0x277D82BD8](v12);
      objc_storeStrong(&v26, 0);
      objc_storeStrong(&v25, 0);
      objc_storeStrong(&v24, 0);
      objc_storeStrong(&v34, 0);
      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v32, 0);
      objc_storeStrong(&v35, 0);
      objc_storeStrong(&proxiedApplicationBundleIdentifier, 0);
    }

    objc_storeStrong(&v37, 0);
    objc_storeStrong(&windowScene, 0);
  }
}

void __65__CPSDashboardGuidanceViewController__setupFakeButtonIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [*(a1 + 32) _launchApp:*(a1 + 40)];
  objc_storeStrong(location, 0);
}

void __65__CPSDashboardGuidanceViewController__setupFakeButtonIfNecessary__block_invoke_2(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [*(a1 + 32) _launchApp:*(a1 + 40)];
  objc_storeStrong(location, 0);
}

- (void)_launchApp:(id)app
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, app);
  dashboardService = [MEMORY[0x277D0AD78] dashboardService];
  [dashboardService openApplication:location[0] withOptions:0 completion:&__block_literal_global_136];
  MEMORY[0x277D82BD8](dashboardService);
  objc_storeStrong(location, 0);
}

void __49__CPSDashboardGuidanceViewController__launchApp___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = 0;
  objc_storeStrong(&v4, a3);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (void)setFakesDashboardSupport:(BOOL)support
{
  if (self->_fakesDashboardSupport != support)
  {
    self->_fakesDashboardSupport = support;
    [(CPSDashboardGuidanceViewController *)self _setupFakeButtonIfNecessary];
  }
}

@end