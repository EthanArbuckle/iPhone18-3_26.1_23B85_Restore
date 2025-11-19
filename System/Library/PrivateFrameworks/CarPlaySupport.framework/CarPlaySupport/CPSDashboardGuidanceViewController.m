@interface CPSDashboardGuidanceViewController
- (BOOL)_hasContentReady;
- (void)_animateShortcutContainerViewIn;
- (void)_animateShortcutContainerViewOut;
- (void)_focusHighlightColorChanged:(id)a3;
- (void)_launchApp:(id)a3;
- (void)_setContentReady;
- (void)_setupFakeButtonIfNecessary;
- (void)_transitionFromViews:(id)a3 inView:(id)a4 animated:(BOOL)a5;
- (void)_updateWallpaperAppearanceTraitOverride;
- (void)didSelectButton:(id)a3;
- (void)navigator:(id)a3 didEndTrip:(BOOL)a4;
- (void)navigator:(id)a3 pausedTripForReason:(unint64_t)a4 description:(id)a5 usingColor:(id)a6;
- (void)setContentReadyIfNecessary;
- (void)setFakesDashboardSupport:(BOOL)a3;
- (void)setShortCutButtons:(id)a3;
- (void)showManeuvers:(id)a3 usingDisplayStyles:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateEstimates:(id)a3 forManeuver:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CPSDashboardGuidanceViewController

- (void)viewDidLoad
{
  v30[4] = *MEMORY[0x277D85DE8];
  v29 = self;
  v28 = a2;
  v27.receiver = self;
  v27.super_class = CPSDashboardGuidanceViewController;
  [(CPSDashboardGuidanceViewController *)&v27 viewDidLoad];
  v26 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [(CPSDashboardGuidanceViewController *)v29 view];
  [v2 addSubview:v26];
  MEMORY[0x277D82BD8](v2);
  objc_storeStrong(&v29->_shortcutButtonsContainerView, v26);
  v5 = [v26 leadingAnchor];
  v4 = [(CPSDashboardGuidanceViewController *)v29 view];
  v3 = [v4 leadingAnchor];
  v25 = [v5 constraintEqualToAnchor:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v29->_shortcutButtonsContainerViewLeadingConstraint, v25);
  v8 = [v26 trailingAnchor];
  v7 = [(CPSDashboardGuidanceViewController *)v29 view];
  v6 = [v7 trailingAnchor];
  v24 = [v8 constraintEqualToAnchor:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  objc_storeStrong(&v29->_shortcutButtonsContainerViewTrailingConstraint, v24);
  v9 = MEMORY[0x277CCAAD0];
  v18 = [(CPSDashboardGuidanceViewController *)v29 view];
  v17 = [v18 topAnchor];
  v16 = [v26 topAnchor];
  v15 = [v17 constraintEqualToAnchor:?];
  v30[0] = v15;
  v14 = [(CPSDashboardGuidanceViewController *)v29 view];
  v13 = [v14 bottomAnchor];
  v12 = [v26 bottomAnchor];
  v11 = [v13 constraintEqualToAnchor:?];
  v30[1] = v11;
  v30[2] = v29->_shortcutButtonsContainerViewLeadingConstraint;
  v30[3] = v29->_shortcutButtonsContainerViewTrailingConstraint;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
  [v9 activateConstraints:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  v23 = [MEMORY[0x277CCAB98] defaultCenter];
  v19 = v29;
  v20 = *MEMORY[0x277CF91E0];
  v22 = [(CPSDashboardGuidanceViewController *)v29 view];
  v21 = [v22 window];
  [v23 addObserver:v19 selector:sel__focusHighlightColorChanged_ name:v20 object:?];
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
}

- (void)setShortCutButtons:(id)a3
{
  v141[4] = *MEMORY[0x277D85DE8];
  v134 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v65 = [(CPSDashboardGuidanceViewController *)v134 view];
  [v65 layoutIfNeeded];
  *&v3 = MEMORY[0x277D82BD8](v65).n128_u64[0];
  v132 = 0;
  v63 = [(CPSDashboardGuidanceViewController *)v134 shortcutButtonsContainerView];
  v64 = [(UIView *)v63 isHidden];
  *&v4 = MEMORY[0x277D82BD8](v63).n128_u64[0];
  v131 = v64;
  v62 = [(CPSDashboardGuidanceViewController *)v134 dashboardButtons];
  v61 = 0;
  if ([(NSArray *)v62 count])
  {
    v61 = !v131;
  }

  *&v5 = MEMORY[0x277D82BD8](v62).n128_u64[0];
  if (v61)
  {
    v132 = 1;
    [(CPSDashboardGuidanceViewController *)v134 _animateShortcutContainerViewOut];
  }

  v130 = objc_opt_new();
  v60 = [(CPSDashboardGuidanceViewController *)v134 dashboardButtons];
  [(NSArray *)v60 enumerateObjectsUsingBlock:&__block_literal_global];
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
    v58 = [location[0] firstObject];
    v129[0] = [CPSDashboardItemView initWithDashboardButton:v59 layoutAxis:"initWithDashboardButton:layoutAxis:"];
    [v129[0] setTranslatesAutoresizingMaskIntoConstraints:{0, MEMORY[0x277D82BD8](v58).n128_f64[0]}];
    [v129[0] setDelegate:v134];
    [v130 addObject:v129[0]];
    v128 = [(CPSDashboardGuidanceViewController *)v134 shortcutButtonsContainerView];
    [v128 addSubview:v129[0]];
    v57 = MEMORY[0x277CCAAD0];
    v56 = [v129[0] centerYAnchor];
    v55 = [v128 centerYAnchor];
    v54 = [v56 constraintEqualToAnchor:?];
    v141[0] = v54;
    v53 = [v129[0] leadingAnchor];
    v52 = [v128 leadingAnchor];
    v51 = [v53 constraintEqualToAnchor:8.0 constant:?];
    v141[1] = v51;
    v50 = [v129[0] trailingAnchor];
    v49 = [v128 trailingAnchor];
    v48 = [v50 constraintLessThanOrEqualToAnchor:8.0 constant:?];
    v141[2] = v48;
    v47 = [v129[0] heightAnchor];
    v46 = [v128 heightAnchor];
    v45 = [v47 constraintLessThanOrEqualToAnchor:-16.0 constant:?];
    v141[3] = v45;
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v141 count:4];
    [v57 activateConstraints:?];
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v56);
    objc_storeStrong(&v128, 0);
    objc_storeStrong(v129, 0);
  }

  else
  {
    v43 = [(CPSDashboardGuidanceViewController *)v134 spacingGuides];
    v122 = MEMORY[0x277D85DD0];
    v123 = -1073741824;
    v124 = 0;
    v125 = __57__CPSDashboardGuidanceViewController_setShortCutButtons___block_invoke_2;
    v126 = &unk_278D912D0;
    v127 = MEMORY[0x277D82BE0](v134);
    [(NSArray *)v43 enumerateObjectsUsingBlock:&v122];
    MEMORY[0x277D82BD8](v43);
    v121 = objc_alloc_init(MEMORY[0x277CBEB18]);
    for (i = 0; ; ++i)
    {
      v42 = i;
      if (v42 > [location[0] count])
      {
        break;
      }

      v119 = objc_alloc_init(MEMORY[0x277D756D0]);
      v41 = [(CPSDashboardGuidanceViewController *)v134 shortcutButtonsContainerView];
      [(UIView *)v41 addLayoutGuide:v119];
      [v121 addObject:{v119, MEMORY[0x277D82BD8](v41).n128_f64[0]}];
      objc_storeStrong(&v119, 0);
    }

    [(CPSDashboardGuidanceViewController *)v134 setSpacingGuides:v121];
    v118 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v117 = [v121 firstObject];
    v110 = 0;
    v111 = &v110;
    v112 = 838860800;
    v113 = 48;
    v114 = __Block_byref_object_copy_;
    v115 = __Block_byref_object_dispose_;
    v40 = [(CPSDashboardGuidanceViewController *)v134 shortcutButtonsContainerView];
    v116 = [(UIView *)v40 leadingAnchor];
    MEMORY[0x277D82BD8](v40);
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
    v98 = MEMORY[0x277D82BE0](v134);
    v99 = MEMORY[0x277D82BE0](v130);
    v100 = MEMORY[0x277D82BE0](v121);
    v102[1] = &v103;
    v101 = MEMORY[0x277D82BE0](v118);
    v102[2] = &v110;
    v102[0] = MEMORY[0x277D82BE0](v117);
    [v39 enumerateObjectsUsingBlock:&v93];
    v92 = [v121 lastObject];
    v38 = v118;
    v37 = [v104[5] trailingAnchor];
    v36 = [(CPSDashboardGuidanceViewController *)v134 shortcutButtonsContainerView];
    v35 = [(UIView *)v36 trailingAnchor];
    v34 = [v37 constraintLessThanOrEqualToAnchor:?];
    v140[0] = v34;
    v33 = [v92 widthAnchor];
    v32 = [v117 widthAnchor];
    v31 = [v33 constraintEqualToAnchor:?];
    v140[1] = v31;
    v30 = [v92 leadingAnchor];
    v29 = [v30 constraintEqualToAnchor:v111[5]];
    v140[2] = v29;
    v28 = [v92 trailingAnchor];
    v27 = [(CPSDashboardGuidanceViewController *)v134 shortcutButtonsContainerView];
    v26 = [(UIView *)v27 trailingAnchor];
    v25 = [v28 constraintEqualToAnchor:?];
    v140[3] = v25;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v140 count:4];
    [v38 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v36);
    v23 = [(CPSDashboardGuidanceViewController *)v134 activeConstraints];
    *&v9 = MEMORY[0x277D82BD8](v23).n128_u64[0];
    if (v23)
    {
      v22 = MEMORY[0x277CCAAD0];
      v21 = [(CPSDashboardGuidanceViewController *)v134 activeConstraints];
      [v22 deactivateConstraints:?];
      MEMORY[0x277D82BD8](v21);
    }

    objc_storeStrong(&v134->_activeConstraints, v118);
    [MEMORY[0x277CCAAD0] activateConstraints:v118];
    objc_storeStrong(&v92, 0);
    objc_storeStrong(v102, 0);
    objc_storeStrong(&v101, 0);
    objc_storeStrong(&v100, 0);
    objc_storeStrong(&v99, 0);
    objc_storeStrong(&v98, 0);
    _Block_object_dispose(&v103, 8);
    objc_storeStrong(&v109, 0);
    _Block_object_dispose(&v110, 8);
    objc_storeStrong(&v116, 0);
    objc_storeStrong(&v117, 0);
    objc_storeStrong(&v118, 0);
    objc_storeStrong(&v121, 0);
    objc_storeStrong(&v127, 0);
  }

  [(CPSDashboardGuidanceViewController *)v134 setDashboardButtons:v130];
  v20 = [(CPSDashboardGuidanceViewController *)v134 view];
  [v20 layoutIfNeeded];
  *&v10 = MEMORY[0x277D82BD8](v20).n128_u64[0];
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
  v18 = [(CPSDashboardGuidanceViewController *)v134 view];
  v17 = [v18 window];
  v75[0] = CPSSafeCast_0(v19, v17);
  MEMORY[0x277D82BD8](v17);
  [(CPSDashboardGuidanceViewController *)v134 _updateWallpaperAppearanceTraitOverride];
  v16 = [(CPSDashboardGuidanceViewController *)v134 dashboardButtons];
  v69 = MEMORY[0x277D85DD0];
  v70 = -1073741824;
  v71 = 0;
  v72 = __57__CPSDashboardGuidanceViewController_setShortCutButtons___block_invoke_4;
  v73 = &unk_278D91348;
  v74 = MEMORY[0x277D82BE0](v75[0]);
  [(NSArray *)v16 enumerateObjectsUsingBlock:&v69];
  v15 = [(CPSDashboardGuidanceViewController *)v134 shortcutButtonsContainerView];
  [(UIView *)v15 setHidden:v131];
  v11 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  if (v132)
  {
    [(CPSDashboardGuidanceViewController *)v134 _animateShortcutContainerViewIn];
  }

  v67 = 0;
  LOBYTE(v14) = 0;
  if (v75[0])
  {
    v68 = [(CPSDashboardGuidanceViewController *)v134 shortcutButtonsContainerView];
    v67 = 1;
    v14 = ![(UIView *)v68 isHidden];
  }

  if (v67)
  {
    v11 = MEMORY[0x277D82BD8](v68).n128_u64[0];
  }

  if (v14)
  {
    v13 = v75[0];
    v12 = [(CPSDashboardGuidanceViewController *)v134 dashboardButtons];
    [v13 setFocusableViews:?];
    MEMORY[0x277D82BD8](v12);
  }

  oslog = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v139, location[0], v134);
    _os_log_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEFAULT, "Set Shortcut Buttons: %@ on view controller: %@", v139, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  [(CPSDashboardGuidanceViewController *)v134 _setContentReady];
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

- (void)didSelectButton:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = [location[0] identifier];
  if (-[CPSDashboardGuidanceViewController fakesDashboardSupport](v16, "fakesDashboardSupport") && (v10 = -[CPSDashboardGuidanceViewController fakeDashboardButton](v16, "fakeDashboardButton"), v9 = -[CPDashboardButton identifier](v10, "identifier"), v11 = [v14 isEqual:?], MEMORY[0x277D82BD8](v9), *&v3 = MEMORY[0x277D82BD8](v10).n128_u64[0], (v11 & 1) != 0))
  {
    v8 = [(CPSDashboardGuidanceViewController *)v16 fakeDashboardButton];
    [(CPDashboardButton *)v8 handlePrimaryAction];
    MEMORY[0x277D82BD8](v8);
    v13 = 1;
  }

  else
  {
    v12 = CarPlaySupportGeneralLogging();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_64_8_64(v17, v16, v14);
      _os_log_debug_impl(&dword_242FE8000, v12, OS_LOG_TYPE_DEBUG, "%@: button selected with UUID: %@", v17, 0x16u);
    }

    objc_storeStrong(&v12, 0);
    v6 = [(CPSDashboardGuidanceViewController *)v16 dashboardClient];
    v7 = [(CPDashboardClientInterface *)v6 conformsToProtocol:&unk_285632728];
    *&v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
    if (v7)
    {
      v5 = [(CPSDashboardGuidanceViewController *)v16 dashboardClient];
      [(CPDashboardClientInterface *)v5 handleActionForControlIdentifier:v14];
      MEMORY[0x277D82BD8](v5);
    }

    v13 = 0;
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)showManeuvers:(id)a3 usingDisplayStyles:(id)a4
{
  v43[2] = *MEMORY[0x277D85DE8];
  v42 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v40 = 0;
  objc_storeStrong(&v40, a4);
  [(CPSDashboardGuidanceViewController *)v42 _setContentReady];
  v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = [(CPSDashboardGuidanceViewController *)v42 maneuversCardView];
  v4 = MEMORY[0x277D82BD8](v32).n128_u64[0];
  if (v32)
  {
    v30 = [(CPSDashboardGuidanceViewController *)v42 maneuversCardView];
    [v39 addObject:?];
    v4 = MEMORY[0x277D82BD8](v30).n128_u64[0];
  }

  v29 = [(CPSDashboardGuidanceViewController *)v42 pausedCardView];
  v5 = MEMORY[0x277D82BD8](v29).n128_u64[0];
  if (v29)
  {
    v28 = [(CPSDashboardGuidanceViewController *)v42 pausedCardView];
    [v39 addObject:?];
    v5 = MEMORY[0x277D82BD8](v28).n128_u64[0];
  }

  v36 = 0;
  v27 = 1;
  if (![v39 count])
  {
    v37 = [(CPSDashboardGuidanceViewController *)v42 dashboardButtons];
    v36 = 1;
    v27 = [(NSArray *)v37 count]!= 0;
  }

  if (v36)
  {
    MEMORY[0x277D82BD8](v37);
  }

  v38 = v27;
  [(CPSDashboardGuidanceViewController *)v42 setManeuversCardView:?];
  [(CPSDashboardGuidanceViewController *)v42 setPausedCardView:0];
  v35 = 0;
  if ([location[0] count])
  {
    v25 = [(CPSDashboardGuidanceViewController *)v42 shortcutButtonsContainerView];
    v33 = 0;
    LOBYTE(v26) = 0;
    if (v25)
    {
      v34 = [(CPSDashboardGuidanceViewController *)v42 shortcutButtonsContainerView];
      v33 = 1;
      v26 = ![(UIView *)v34 isHidden];
    }

    if (v33)
    {
      MEMORY[0x277D82BD8](v34);
    }

    *&v7 = MEMORY[0x277D82BD8](v25).n128_u64[0];
    if (v26)
    {
      [(CPSDashboardGuidanceViewController *)v42 _animateShortcutContainerViewOut];
    }

    v8 = objc_alloc_init(CPSDashboardManeuversCardView);
    v9 = v35;
    v35 = v8;
    v12 = [MEMORY[0x277D75348] clearColor];
    [(CPSDashboardManeuversCardView *)v35 setBackgroundColor:?];
    [(CPSDashboardManeuversCardView *)v35 setAllowsCustomBackgroundColorForManeuver:0, MEMORY[0x277D82BD8](v12).n128_f64[0]];
    [(CPSDashboardManeuversCardView *)v35 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [(CPSDashboardGuidanceViewController *)v42 view];
    [v13 addSubview:v35];
    MEMORY[0x277D82BD8](v13);
    objc_storeStrong(&v42->_maneuversCardView, v35);
    [(CPSDashboardManeuversCardView *)v35 showManeuvers:location[0] usingDisplayStyles:v40];
    v14 = MEMORY[0x277CCAAD0];
    v23 = [(CPSDashboardGuidanceViewController *)v42 view];
    v22 = [v23 topAnchor];
    v21 = [(CPSDashboardManeuversCardView *)v35 topAnchor];
    v20 = [v22 constraintEqualToAnchor:?];
    v43[0] = v20;
    v19 = [(CPSDashboardGuidanceViewController *)v42 view];
    v18 = [v19 bottomAnchor];
    v17 = [(CPSDashboardManeuversCardView *)v35 bottomAnchor];
    v16 = [v18 constraintEqualToAnchor:?];
    v43[1] = v16;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
    [v14 activateConstraints:?];
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    *&v10 = MEMORY[0x277D82BD8](v23).n128_u64[0];
    v24 = [(CPSDashboardGuidanceViewController *)v42 maneuversCardView];
    [(CPSDashboardManeuversCardView *)v24 setHidden:0];
    *&v6 = MEMORY[0x277D82BD8](v24).n128_u64[0];
  }

  [(CPSDashboardGuidanceViewController *)v42 _transitionFromViews:v39 inView:v35 animated:v38, v6, &v35];
  objc_storeStrong(v11, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
}

- (void)updateEstimates:(id)a3 forManeuver:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = [(CPSDashboardGuidanceViewController *)v8 maneuversCardView];
  [(CPSDashboardManeuversCardView *)v5 updateEstimates:location[0] forManeuver:v6];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)navigator:(id)a3 pausedTripForReason:(unint64_t)a4 description:(id)a5 usingColor:(id)a6
{
  v35[2] = *MEMORY[0x277D85DE8];
  v34 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v32 = a4;
  v31 = 0;
  objc_storeStrong(&v31, a5);
  v30 = 0;
  objc_storeStrong(&v30, a6);
  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = [(CPSDashboardGuidanceViewController *)v34 maneuversCardView];
  v6 = MEMORY[0x277D82BD8](v27).n128_u64[0];
  if (v27)
  {
    v23 = [(CPSDashboardGuidanceViewController *)v34 maneuversCardView];
    [v29 addObject:?];
    v6 = MEMORY[0x277D82BD8](v23).n128_u64[0];
  }

  v22 = [(CPSDashboardGuidanceViewController *)v34 pausedCardView];
  v7 = MEMORY[0x277D82BD8](v22).n128_u64[0];
  if (v22)
  {
    v21 = [(CPSDashboardGuidanceViewController *)v34 pausedCardView];
    [v29 addObject:?];
    v7 = MEMORY[0x277D82BD8](v21).n128_u64[0];
  }

  [(CPSDashboardGuidanceViewController *)v34 setManeuversCardView:*&v7];
  [(CPSDashboardGuidanceViewController *)v34 setPausedCardView:0];
  v8 = [CPSPausedCardView alloc];
  v28 = [(CPSPausedCardView *)v8 initWithReason:v32 title:v31 backgroundColor:0];
  v10 = [(CPSDashboardGuidanceViewController *)v34 view];
  [v10 addSubview:v28];
  MEMORY[0x277D82BD8](v10);
  objc_storeStrong(&v34->_pausedCardView, v28);
  v11 = MEMORY[0x277CCAAD0];
  v20 = [(CPSDashboardGuidanceViewController *)v34 view];
  v19 = [v20 topAnchor];
  v18 = [(CPSPausedCardView *)v28 topAnchor];
  v17 = [v19 constraintEqualToAnchor:?];
  v35[0] = v17;
  v16 = [(CPSDashboardGuidanceViewController *)v34 view];
  v15 = [v16 bottomAnchor];
  v14 = [(CPSPausedCardView *)v28 bottomAnchor];
  v13 = [v15 constraintEqualToAnchor:?];
  v35[1] = v13;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  [v11 activateConstraints:?];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  *&v9 = MEMORY[0x277D82BD8](v20).n128_u64[0];
  [(CPSDashboardGuidanceViewController *)v34 _animateShortcutContainerViewOut];
  [(CPSDashboardGuidanceViewController *)v34 _transitionFromViews:v29 inView:v28 animated:1];
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
}

- (void)navigator:(id)a3 didEndTrip:(BOOL)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = a4;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = [(CPSDashboardGuidanceViewController *)v14 maneuversCardView];
  v4 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  if (v10)
  {
    v8 = [(CPSDashboardGuidanceViewController *)v14 maneuversCardView];
    [v11 addObject:?];
    v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  }

  v7 = [(CPSDashboardGuidanceViewController *)v14 pausedCardView];
  v5 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v7)
  {
    v6 = [(CPSDashboardGuidanceViewController *)v14 pausedCardView];
    [v11 addObject:?];
    v5 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  }

  [(CPSDashboardGuidanceViewController *)v14 setManeuversCardView:*&v5];
  [(CPSDashboardGuidanceViewController *)v14 setPausedCardView:0];
  [(CPSDashboardGuidanceViewController *)v14 _transitionFromViews:v11 inView:0 animated:1];
  [(CPSDashboardGuidanceViewController *)v14 _animateShortcutContainerViewIn];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)_transitionFromViews:(id)a3 inView:(id)a4 animated:(BOOL)a5
{
  v91[2] = *MEMORY[0x277D85DE8];
  v89 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v87 = 0;
  objc_storeStrong(&v87, a4);
  v86 = a5;
  if (a5)
  {
    v60 = location[0];
    v80 = MEMORY[0x277D85DD0];
    v81 = -1073741824;
    v82 = 0;
    v83 = __75__CPSDashboardGuidanceViewController__transitionFromViews_inView_animated___block_invoke;
    v84 = &unk_278D913C0;
    v85 = MEMORY[0x277D82BE0](v89);
    [v60 enumerateObjectsUsingBlock:&v80];
    if (v87)
    {
      v46 = [v87 leadingAnchor];
      v45 = [(CPSDashboardGuidanceViewController *)v89 view];
      v44 = [v45 leadingAnchor];
      v43 = [(CPSDashboardGuidanceViewController *)v89 view];
      [v43 frame];
      v78[1] = v5;
      v78[2] = v6;
      v78[3] = v7;
      v78[4] = v8;
      v79 = [v46 constraintEqualToAnchor:v44 constant:*&v7];
      MEMORY[0x277D82BD8](v43);
      MEMORY[0x277D82BD8](v44);
      MEMORY[0x277D82BD8](v45);
      *&v9 = MEMORY[0x277D82BD8](v46).n128_u64[0];
      v50 = [v87 trailingAnchor];
      v49 = [(CPSDashboardGuidanceViewController *)v89 view];
      v48 = [v49 trailingAnchor];
      v47 = [(CPSDashboardGuidanceViewController *)v89 view];
      [v47 frame];
      v77[1] = v10;
      v77[2] = v11;
      v77[3] = v12;
      v77[4] = v13;
      v78[0] = [v50 constraintEqualToAnchor:v48 constant:*&v12];
      MEMORY[0x277D82BD8](v47);
      MEMORY[0x277D82BD8](v48);
      MEMORY[0x277D82BD8](v49);
      *&v14 = MEMORY[0x277D82BD8](v50).n128_u64[0];
      v51 = MEMORY[0x277CCAAD0];
      v91[0] = v79;
      v91[1] = v78[0];
      v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:{2, v14}];
      [v51 activateConstraints:?];
      *&v15 = MEMORY[0x277D82BD8](v52).n128_u64[0];
      v53 = [(CPSDashboardGuidanceViewController *)v89 view];
      [v53 layoutIfNeeded];
      *&v16 = MEMORY[0x277D82BD8](v53).n128_u64[0];
      [v87 layoutIfNeeded];
      v54 = MEMORY[0x277CF0B70];
      v55 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
      v77[0] = [v54 settingsWithDuration:0.35 timingFunction:?];
      MEMORY[0x277D82BD8](v55);
      v17 = objc_opt_class();
      v76 = CPSSafeCast_0(v17, v87);
      v56 = objc_opt_class();
      v58 = [(CPSDashboardGuidanceViewController *)v89 view];
      v57 = [v58 window];
      v75 = CPSSafeCast_0(v56, v57);
      MEMORY[0x277D82BD8](v57);
      *&v18 = MEMORY[0x277D82BD8](v58).n128_u64[0];
      v59 = 0;
      if (v76)
      {
        v59 = [v76 wantsLargeSize];
      }

      v74 = v59 & 1;
      v40 = [v75 widgetSizes];
      v39 = [v40 lastObject];
      [v39 CGSizeValue];
      v72 = v19;
      v73 = v20;
      MEMORY[0x277D82BD8](v39);
      v41 = [v75 widgetSizes];
      v69 = 0;
      v42 = 0;
      if ([v41 count])
      {
        v70 = [(CPSDashboardGuidanceViewController *)v89 view];
        v69 = 1;
        [v70 frame];
        v68[1] = v21;
        v68[2] = v22;
        v68[3] = v23;
        v68[4] = v24;
        v42 = BSFloatGreaterThanOrEqualToFloat();
      }

      if (v69)
      {
        MEMORY[0x277D82BD8](v70);
      }

      *&v25 = MEMORY[0x277D82BD8](v41).n128_u64[0];
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
      v68[0] = MEMORY[0x277D82BE0](v89);
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
    v36 = [v87 leadingAnchor];
    v35 = [(CPSDashboardGuidanceViewController *)v89 view];
    v34 = [v35 leadingAnchor];
    v33 = [v36 constraintEqualToAnchor:? constant:?];
    v90[0] = v33;
    v32 = [v87 trailingAnchor];
    v31 = [(CPSDashboardGuidanceViewController *)v89 view];
    v30 = [v31 trailingAnchor];
    v29 = [v32 constraintEqualToAnchor:0.0 constant:?];
    v90[1] = v29;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:2];
    [v27 activateConstraints:?];
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v36);
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
  v49 = self;
  v48[1] = a2;
  v30 = objc_opt_class();
  v32 = [(CPSDashboardGuidanceViewController *)v49 view];
  v31 = [v32 window];
  v48[0] = CPSSafeCast_0(v30, v31);
  MEMORY[0x277D82BD8](v31);
  [v48[0] setFocusableViews:{MEMORY[0x277CBEBF8], MEMORY[0x277D82BD8](v32).n128_f64[0]}];
  v33 = [(CPSDashboardGuidanceViewController *)v49 shortcutButtonsContainerView];
  location = [(UIView *)v33 snapshotViewAfterScreenUpdates:0];
  v34 = [(CPSDashboardGuidanceViewController *)v49 shortcutButtonsContainerView];
  [(UIView *)v34 setHidden:1];
  *&v2 = MEMORY[0x277D82BD8](v34).n128_u64[0];
  if (location)
  {
    [location setTranslatesAutoresizingMaskIntoConstraints:{0, v2}];
    v4 = [(CPSDashboardGuidanceViewController *)v49 view];
    [v4 addSubview:location];
    *&v3 = MEMORY[0x277D82BD8](v4).n128_u64[0];
    v5 = MEMORY[0x277CCAAD0];
    v22 = [location trailingAnchor];
    v21 = [(CPSDashboardGuidanceViewController *)v49 view];
    v20 = [v21 trailingAnchor];
    v19 = [v22 constraintEqualToAnchor:?];
    v51[0] = v19;
    v18 = [location topAnchor];
    v17 = [(CPSDashboardGuidanceViewController *)v49 view];
    v16 = [v17 topAnchor];
    v15 = [v18 constraintEqualToAnchor:?];
    v51[1] = v15;
    v14 = [location bottomAnchor];
    v13 = [(CPSDashboardGuidanceViewController *)v49 view];
    v12 = [v13 bottomAnchor];
    v11 = [v14 constraintEqualToAnchor:?];
    v51[2] = v11;
    v10 = [location widthAnchor];
    v9 = [(CPSDashboardGuidanceViewController *)v49 view];
    v8 = [v9 widthAnchor];
    v7 = [v10 constraintEqualToAnchor:?];
    v51[3] = v7;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:4];
    [v5 activateConstraints:?];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
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
    [location layoutIfNeeded];
    v23 = MEMORY[0x277CCAAD0];
    v28 = [location trailingAnchor];
    v27 = [(CPSDashboardGuidanceViewController *)v49 view];
    v26 = [v27 leadingAnchor];
    v25 = [v28 constraintEqualToAnchor:?];
    v50 = v25;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
    [v23 activateConstraints:?];
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    v29 = MEMORY[0x277D75D18];
    v41 = MEMORY[0x277D85DD0];
    v42 = -1073741824;
    v43 = 0;
    v44 = __70__CPSDashboardGuidanceViewController__animateShortcutContainerViewOut__block_invoke;
    v45 = &unk_278D913E8;
    v46 = MEMORY[0x277D82BE0](v49);
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
  v31 = self;
  v30[9] = a2;
  v10 = [(CPSDashboardGuidanceViewController *)self shortcutButtonsContainerView];
  [(UIView *)v10 setHidden:0];
  v12 = [(CPSDashboardGuidanceViewController *)v31 shortcutButtonsContainerViewLeadingConstraint];
  v11 = [(CPSDashboardGuidanceViewController *)v31 view];
  [v11 frame];
  v30[5] = v2;
  v30[6] = v3;
  v30[7] = v4;
  v30[8] = v5;
  [(NSLayoutConstraint *)v12 setConstant:*&v4 + 8.0];
  MEMORY[0x277D82BD8](v11);
  v14 = [(CPSDashboardGuidanceViewController *)v31 shortcutButtonsContainerViewTrailingConstraint];
  v13 = [(CPSDashboardGuidanceViewController *)v31 view];
  [v13 frame];
  v30[1] = v6;
  v30[2] = v7;
  v30[3] = v8;
  v30[4] = v9;
  [(NSLayoutConstraint *)v14 setConstant:*&v8 + 8.0];
  MEMORY[0x277D82BD8](v13);
  v15 = [(CPSDashboardGuidanceViewController *)v31 view];
  [v15 layoutIfNeeded];
  v16 = [(CPSDashboardGuidanceViewController *)v31 shortcutButtonsContainerViewLeadingConstraint];
  [(NSLayoutConstraint *)v16 setConstant:?];
  v17 = [(CPSDashboardGuidanceViewController *)v31 shortcutButtonsContainerViewTrailingConstraint];
  [(NSLayoutConstraint *)v17 setConstant:0.0];
  MEMORY[0x277D82BD8](v17);
  v18 = MEMORY[0x277D75D18];
  v25 = MEMORY[0x277D85DD0];
  v26 = -1073741824;
  v27 = 0;
  v28 = __69__CPSDashboardGuidanceViewController__animateShortcutContainerViewIn__block_invoke;
  v29 = &unk_278D913E8;
  v30[0] = MEMORY[0x277D82BE0](v31);
  v19 = MEMORY[0x277D85DD0];
  v20 = -1073741824;
  v21 = 0;
  v22 = __69__CPSDashboardGuidanceViewController__animateShortcutContainerViewIn__block_invoke_2;
  v23 = &unk_278D91398;
  v24 = MEMORY[0x277D82BE0](v31);
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

- (void)_focusHighlightColorChanged:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = objc_opt_class();
  v6 = [(CPSDashboardGuidanceViewController *)v15 view];
  v5 = [v6 window];
  v13 = CPSSafeCast_0(v4, v5);
  MEMORY[0x277D82BD8](v5);
  *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  [(CPSDashboardGuidanceViewController *)v15 _updateWallpaperAppearanceTraitOverride];
  v7 = [(CPSDashboardGuidanceViewController *)v15 dashboardButtons];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __66__CPSDashboardGuidanceViewController__focusHighlightColorChanged___block_invoke;
  v11 = &unk_278D91348;
  v12 = MEMORY[0x277D82BE0](v13);
  [(NSArray *)v7 enumerateObjectsUsingBlock:?];
  MEMORY[0x277D82BD8](v7);
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
  v10 = self;
  v9[1] = a2;
  v4 = objc_opt_class();
  v6 = [(CPSDashboardGuidanceViewController *)v10 view];
  v5 = [v6 window];
  v9[0] = CPSSafeCast_0(v4, v5);
  MEMORY[0x277D82BD8](v5);
  v2 = [v9[0] useSystemPrimaryFocusColor];
  v3 = 2;
  if (v2)
  {
    v3 = 1;
  }

  v8 = v3;
  v7 = [(CPSDashboardGuidanceViewController *)v10 traitOverrides];
  [v7 setNSIntegerValue:v8 forTrait:objc_opt_class()];
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(v9, 0);
}

- (void)_setContentReady
{
  v16 = self;
  v15[1] = a2;
  v6 = objc_opt_class();
  v8 = [(CPSDashboardGuidanceViewController *)v16 view];
  v7 = [v8 window];
  v15[0] = CPSSafeCast_0(v6, v7);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
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
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSDashboardGuidanceViewController;
  [(CPSDashboardGuidanceViewController *)&v2 viewDidLayoutSubviews];
  [(CPSDashboardGuidanceViewController *)v4 setContentReadyIfNecessary];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = CPSDashboardGuidanceViewController;
  [(CPSDashboardGuidanceViewController *)&v3 viewDidAppear:a3];
  [(CPSDashboardGuidanceViewController *)v6 setContentReadyIfNecessary];
}

- (void)setContentReadyIfNecessary
{
  v7 = self;
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
    [(CPSDashboardGuidanceViewController *)v7 _setContentReady];
  }
}

- (BOOL)_hasContentReady
{
  v3 = [(CPSDashboardGuidanceViewController *)self maneuversCardView];
  v5 = 0;
  v4 = 1;
  if (!v3)
  {
    v6 = [(CPSDashboardGuidanceViewController *)self dashboardButtons];
    v5 = 1;
    v4 = v6 != 0;
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](v6);
  }

  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = CPSDashboardGuidanceViewController;
  [(CPSDashboardGuidanceViewController *)&v3 traitCollectionDidChange:location[0]];
  [(CPSDashboardGuidanceViewController *)v5 _setupFakeButtonIfNecessary];
  objc_storeStrong(location, 0);
}

- (void)_setupFakeButtonIfNecessary
{
  v44[2] = *MEMORY[0x277D85DE8];
  v42 = self;
  v41 = a2;
  v39 = 0;
  v18 = 0;
  if ([(CPSDashboardGuidanceViewController *)self fakesDashboardSupport])
  {
    v40 = [(CPSDashboardGuidanceViewController *)v42 fakeDashboardButton];
    v39 = 1;
    v18 = v40 == 0;
  }

  if (v39)
  {
    MEMORY[0x277D82BD8](v40);
  }

  if (v18)
  {
    v14 = [(CPSDashboardGuidanceViewController *)v42 view];
    v13 = [v14 window];
    v38 = [v13 windowScene];
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    v15 = objc_opt_class();
    v17 = [v38 _FBSScene];
    v16 = [v17 settings];
    v37 = CPSSafeCast_0(v15, v16);
    MEMORY[0x277D82BD8](v16);
    *&v2 = MEMORY[0x277D82BD8](v17).n128_u64[0];
    if (v37)
    {
      v36 = [v37 proxiedApplicationBundleIdentifier];
      v3 = MEMORY[0x277D755B8];
      v4 = v36;
      v5 = [(CPSDashboardGuidanceViewController *)v42 traitCollection];
      [v5 displayScale];
      v35 = [v3 _applicationIconImageForBundleIdentifier:v4 format:8 scale:?];
      MEMORY[0x277D82BD8](v5);
      v7 = objc_alloc(MEMORY[0x277CBB078]);
      v44[0] = @"This is test UI";
      v44[1] = v36;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:?];
      v6 = v35;
      v27 = MEMORY[0x277D85DD0];
      v28 = -1073741824;
      v29 = 0;
      v30 = __65__CPSDashboardGuidanceViewController__setupFakeButtonIfNecessary__block_invoke;
      v31 = &unk_278D91430;
      v32 = MEMORY[0x277D82BE0](v42);
      v33 = MEMORY[0x277D82BE0](v36);
      v34 = [v7 initWithTitleVariants:&unk_2855C4F40 subtitleVariants:v8 image:v6 handler:&v27];
      MEMORY[0x277D82BD8](v8);
      v10 = objc_alloc(MEMORY[0x277CBB078]);
      v9 = v35;
      v19 = MEMORY[0x277D85DD0];
      v20 = -1073741824;
      v21 = 0;
      v22 = __65__CPSDashboardGuidanceViewController__setupFakeButtonIfNecessary__block_invoke_2;
      v23 = &unk_278D91430;
      v24 = MEMORY[0x277D82BE0](v42);
      v25 = MEMORY[0x277D82BE0](v36);
      v26 = [v10 initWithTitleVariants:&unk_2855C4F58 subtitleVariants:&unk_2855C4F70 image:v9 handler:&v19];
      [(CPSDashboardGuidanceViewController *)v42 setFakeDashboardButton:v34];
      v11 = v42;
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
      objc_storeStrong(&v36, 0);
    }

    objc_storeStrong(&v37, 0);
    objc_storeStrong(&v38, 0);
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

- (void)_launchApp:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [MEMORY[0x277D0AD78] dashboardService];
  [v3 openApplication:location[0] withOptions:0 completion:&__block_literal_global_136];
  MEMORY[0x277D82BD8](v3);
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

- (void)setFakesDashboardSupport:(BOOL)a3
{
  if (self->_fakesDashboardSupport != a3)
  {
    self->_fakesDashboardSupport = a3;
    [(CPSDashboardGuidanceViewController *)self _setupFakeButtonIfNecessary];
  }
}

@end