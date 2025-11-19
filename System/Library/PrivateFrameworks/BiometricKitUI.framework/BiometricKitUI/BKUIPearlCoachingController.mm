@interface BKUIPearlCoachingController
- (BKUIPearlCoachingControllerDelegate)delegate;
- (BOOL)didOrientationChange;
- (BOOL)needsToShow;
- (BOOL)resetDeviceView;
- (void)deviceOrientationChanged;
- (void)escapeHatchButtonPressed:(id)a3;
- (void)handleRotation;
- (void)setInBuddy:(BOOL)a3;
- (void)stopCoachingAnimation;
- (void)updateInstructionText;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BKUIPearlCoachingController

- (void)viewDidLoad
{
  v180[5] = *MEMORY[0x277D85DE8];
  v175.receiver = self;
  v175.super_class = BKUIPearlCoachingController;
  [(BKUIPearlCoachingController *)&v175 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D759D8]);
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
  [(BKUIPearlCoachingController *)self setScrollview:v8];

  v9 = [(BKUIPearlCoachingController *)self scrollview];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = *MEMORY[0x277CBF3A8];
  v11 = *(MEMORY[0x277CBF3A8] + 8);
  v12 = [(BKUIPearlCoachingController *)self scrollview];
  [v12 setContentSize:{v10, v11}];

  v13 = [(BKUIPearlCoachingController *)self scrollview];
  [v13 setIndicatorStyle:2];

  v14 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v5, v6, v7}];
  [(BKUIPearlCoachingController *)self setScrollContentView:v14];

  v15 = [(BKUIPearlCoachingController *)self scrollContentView];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [(BKUIPearlCoachingController *)self scrollview];
  v17 = [(BKUIPearlCoachingController *)self scrollContentView];
  [v16 addSubview:v17];

  v137 = MEMORY[0x277CCAAD0];
  v173 = [(BKUIPearlCoachingController *)self scrollContentView];
  v165 = [v173 topAnchor];
  v169 = [(BKUIPearlCoachingController *)self scrollview];
  v161 = [v169 topAnchor];
  v158 = [v165 constraintEqualToAnchor:v161];
  v180[0] = v158;
  v155 = [(BKUIPearlCoachingController *)self scrollContentView];
  v149 = [v155 bottomAnchor];
  v152 = [(BKUIPearlCoachingController *)self scrollview];
  v146 = [v152 bottomAnchor];
  v143 = [v149 constraintEqualToAnchor:v146];
  v180[1] = v143;
  v140 = [(BKUIPearlCoachingController *)self scrollContentView];
  v131 = [v140 widthAnchor];
  v134 = [(BKUIPearlCoachingController *)self scrollview];
  v129 = [v134 widthAnchor];
  v127 = [v131 constraintEqualToAnchor:v129];
  v180[2] = v127;
  v125 = [(BKUIPearlCoachingController *)self scrollContentView];
  v123 = [v125 centerXAnchor];
  v18 = [(BKUIPearlCoachingController *)self scrollview];
  v19 = [v18 centerXAnchor];
  v20 = [v123 constraintEqualToAnchor:v19];
  v180[3] = v20;
  v21 = [(BKUIPearlCoachingController *)self scrollContentView];
  v22 = [v21 heightAnchor];
  v23 = [(BKUIPearlCoachingController *)self scrollview];
  v24 = [v23 heightAnchor];
  v25 = [v22 constraintGreaterThanOrEqualToAnchor:v24];
  v180[4] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v180 count:5];
  [v137 activateConstraints:v26];

  v27 = [(BKUIPearlCoachingController *)self view];
  v28 = [(BKUIPearlCoachingController *)self scrollview];
  [v27 addSubview:v28];

  v29 = [MEMORY[0x277D75348] blackColor];
  v30 = [(BKUIPearlCoachingController *)self view];
  [v30 setBackgroundColor:v29];

  v31 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = [(BKUIPearlCoachingController *)self view];
  [v32 addSubview:v31];

  v170 = MEMORY[0x277CCAAD0];
  v174 = v31;
  v33 = [v31 topAnchor];
  v34 = [(BKUIPearlCoachingController *)self view];
  v35 = [v34 topAnchor];
  v36 = [v33 constraintEqualToAnchor:v35];
  v179[0] = v36;
  v37 = [v31 heightAnchor];
  v38 = [(BKUIPearlCoachingController *)self view];
  v39 = [v38 heightAnchor];
  v40 = [v37 constraintEqualToAnchor:v39 multiplier:0.41];
  v179[1] = v40;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v179 count:2];
  [v170 activateConstraints:v41];

  v42 = [[BKUIPearlCoachingDeviceView alloc] initWithSheetLayout:[(BKUIPearlCoachingController *)self inSheet]];
  [(BKUIPearlCoachingController *)self setDeviceView:v42];

  v43 = [(BKUIPearlCoachingController *)self isDisplayZoomEnabled];
  v44 = [(BKUIPearlCoachingController *)self deviceView];
  [v44 setIsDisplayZoomEnabled:v43];

  v45 = [(BKUIPearlCoachingController *)self deviceView];
  [v45 setAlpha:0.0];

  v46 = [(BKUIPearlCoachingController *)self deviceView];
  [v46 setTranslatesAutoresizingMaskIntoConstraints:0];

  v47 = [(BKUIPearlCoachingController *)self view];
  v48 = [(BKUIPearlCoachingController *)self deviceView];
  [v47 addSubview:v48];

  v49 = [(BKUIPearlCoachingController *)self deviceView];
  v50 = [MEMORY[0x277D75348] redColor];
  v51 = [v49 bkui_debugBorder:v50 withWidth:1];

  v52 = [(BKUIPearlCoachingController *)self deviceView];
  v53 = [v52 centerXAnchor];
  v54 = [(BKUIPearlCoachingController *)self view];
  v55 = [v54 centerXAnchor];
  v56 = [v53 constraintEqualToAnchor:v55];
  [v56 setActive:1];

  v57 = [(BKUIPearlCoachingController *)self deviceView];
  v58 = [v57 centerYAnchor];
  v59 = [v174 bottomAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];
  [v60 setActive:1];

  v61 = [BKUIButtonTray alloc];
  v62 = [(BKUIPearlCoachingController *)self parentViewController];
  [v62 preferredContentSize];
  v64 = [(BKUIButtonTray *)v61 initWithFrame:0.0, 0.0, v63, 0.0];
  [(BKUIPearlCoachingController *)self setButtonTray:v64];

  v65 = [(BKUIPearlCoachingController *)self buttonTray];
  [v65 setTranslatesAutoresizingMaskIntoConstraints:0];

  v66 = [(BKUIPearlCoachingController *)self buttonTray];
  v67 = [v66 bottomLinkButton];
  [(BKUIPearlCoachingController *)self setEscapeHatchButton:v67];

  v68 = [(BKUIPearlCoachingController *)self escapeHatchButton];
  v69 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v70 = [v69 localizedStringForKey:@"SET_UP_LATER_IN_SETTINGS" value:&stru_2853BB280 table:@"Pearl-j3xx"];
  [v68 setTitle:v70 forState:0];

  v71 = [(BKUIPearlCoachingController *)self escapeHatchButton];
  [v71 addTarget:self action:sel_escapeHatchButtonPressed_ forControlEvents:0x2000];

  LODWORD(v71) = [(BKUIPearlCoachingController *)self inBuddy];
  v72 = [(BKUIPearlCoachingController *)self escapeHatchButton];
  [v72 setHidden:v71 ^ 1];

  v73 = objc_alloc_init(BKUIPearlInstructionView);
  [(BKUIPearlCoachingController *)self setInstructionView:v73];

  v74 = [(BKUIPearlCoachingController *)self instructionView];
  [v74 setTranslatesAutoresizingMaskIntoConstraints:0];

  v75 = [(BKUIPearlCoachingController *)self instructionView];
  [v75 setDarkMode:1];

  v76 = [(BKUIPearlCoachingController *)self instructionView];
  LODWORD(v77) = 1148846080;
  [v76 setContentCompressionResistancePriority:1 forAxis:v77];

  v78 = [(BKUIPearlCoachingController *)self scrollContentView];
  v79 = [(BKUIPearlCoachingController *)self buttonTray];
  [v78 addSubview:v79];

  v80 = [(BKUIPearlCoachingController *)self scrollContentView];
  v81 = [(BKUIPearlCoachingController *)self instructionView];
  [v80 addSubview:v81];

  v126 = MEMORY[0x277CCAAD0];
  v171 = [(BKUIPearlCoachingController *)self instructionView];
  v162 = [v171 topAnchor];
  v166 = [(BKUIPearlCoachingController *)self scrollContentView];
  v159 = [v166 topAnchor];
  v156 = [v162 constraintEqualToAnchor:v159];
  v178[0] = v156;
  v153 = [(BKUIPearlCoachingController *)self instructionView];
  v147 = [v153 leadingAnchor];
  v150 = [(BKUIPearlCoachingController *)self view];
  v144 = [v150 leadingAnchor];
  v141 = [v147 constraintEqualToAnchor:v144];
  v178[1] = v141;
  v138 = [(BKUIPearlCoachingController *)self instructionView];
  v132 = [v138 trailingAnchor];
  v135 = [(BKUIPearlCoachingController *)self view];
  v130 = [v135 trailingAnchor];
  v128 = [v132 constraintEqualToAnchor:v130];
  v178[2] = v128;
  v124 = [(BKUIPearlCoachingController *)self instructionView];
  v121 = [v124 bottomAnchor];
  v122 = [(BKUIPearlCoachingController *)self buttonTray];
  v120 = [v122 topAnchor];
  v119 = [v121 constraintEqualToAnchor:v120 constant:45.0];
  v178[3] = v119;
  v118 = [(BKUIPearlCoachingController *)self buttonTray];
  v116 = [v118 leadingAnchor];
  v117 = [(BKUIPearlCoachingController *)self view];
  v115 = [v117 leadingAnchor];
  v114 = [v116 constraintEqualToAnchor:v115];
  v178[4] = v114;
  v113 = [(BKUIPearlCoachingController *)self buttonTray];
  v112 = [v113 trailingAnchor];
  v82 = [(BKUIPearlCoachingController *)self view];
  v83 = [v82 trailingAnchor];
  v84 = [v112 constraintEqualToAnchor:v83];
  v178[5] = v84;
  v85 = [(BKUIPearlCoachingController *)self buttonTray];
  v86 = [v85 bottomAnchor];
  v87 = [(BKUIPearlCoachingController *)self scrollContentView];
  v88 = [v87 bottomAnchor];
  v89 = [v86 constraintEqualToAnchor:v88];
  v178[6] = v89;
  v90 = [MEMORY[0x277CBEA60] arrayWithObjects:v178 count:7];
  [v126 activateConstraints:v90];

  v91 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v91 setTranslatesAutoresizingMaskIntoConstraints:0];
  v92 = [(BKUIPearlCoachingController *)self view];
  [v92 addSubview:v91];

  v163 = MEMORY[0x277CCAAD0];
  v167 = [v91 topAnchor];
  v93 = [(BKUIPearlCoachingController *)self view];
  v94 = [v93 topAnchor];
  v95 = [v167 constraintEqualToAnchor:v94];
  v177[0] = v95;
  v96 = v91;
  v172 = v91;
  v97 = [v91 heightAnchor];
  v98 = [(BKUIPearlCoachingController *)self view];
  v99 = [v98 heightAnchor];
  v100 = [v97 constraintEqualToAnchor:v99 multiplier:0.75];
  v177[1] = v100;
  v101 = [MEMORY[0x277CBEA60] arrayWithObjects:v177 count:2];
  [v163 activateConstraints:v101];

  v139 = MEMORY[0x277CCAAD0];
  v168 = [(BKUIPearlCoachingController *)self scrollview];
  v164 = [v168 topAnchor];
  v160 = [v96 bottomAnchor];
  v157 = [v164 constraintEqualToAnchor:v160];
  v176[0] = v157;
  v154 = [(BKUIPearlCoachingController *)self scrollview];
  v148 = [v154 leadingAnchor];
  v151 = [(BKUIPearlCoachingController *)self view];
  v145 = [v151 leadingAnchor];
  v142 = [v148 constraintEqualToAnchor:v145];
  v176[1] = v142;
  v136 = [(BKUIPearlCoachingController *)self scrollview];
  v133 = [v136 trailingAnchor];
  v102 = [(BKUIPearlCoachingController *)self view];
  v103 = [v102 trailingAnchor];
  v104 = [v133 constraintEqualToAnchor:v103];
  v176[2] = v104;
  v105 = [(BKUIPearlCoachingController *)self scrollview];
  v106 = [v105 bottomAnchor];
  v107 = [(BKUIPearlCoachingController *)self view];
  v108 = [v107 bottomAnchor];
  v109 = [v106 constraintEqualToAnchor:v108];
  v176[3] = v109;
  v110 = [MEMORY[0x277CBEA60] arrayWithObjects:v176 count:4];
  [v139 activateConstraints:v110];

  [(BKUIPearlCoachingController *)self updateInstructionText];
  v111 = *MEMORY[0x277D85DE8];
}

- (void)setInBuddy:(BOOL)a3
{
  v3 = a3;
  self->_inBuddy = a3;
  v4 = [(BKUIPearlCoachingController *)self escapeHatchButton];
  [v4 setHidden:!v3];
}

- (void)stopCoachingAnimation
{
  v2 = [(BKUIPearlCoachingController *)self deviceView];
  [v2 stopAnimation];
}

- (void)deviceOrientationChanged
{
  v3 = [(BKUIPearlCoachingController *)self needsToShow];
  v4 = [(BKUIPearlCoachingController *)self deviceView];
  [v4 alpha];
  v6 = v5;

  if (v3)
  {
    if (v6 == 1.0)
    {
      v7 = 0.5;
    }

    else
    {
      v7 = 0.899999976;
    }

    [(BKUIPearlCoachingController *)self resetDeviceView];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__BKUIPearlCoachingController_deviceOrientationChanged__block_invoke;
    v10[3] = &unk_278D09978;
    v10[4] = self;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __55__BKUIPearlCoachingController_deviceOrientationChanged__block_invoke_2;
    v9[3] = &unk_278D099C0;
    v9[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:0 delay:v10 options:v9 animations:v7 completion:0.300000012];
  }

  else
  {
    v8 = [(BKUIPearlCoachingController *)self deviceView];
    [v8 setAlpha:0.0];
  }
}

void __55__BKUIPearlCoachingController_deviceOrientationChanged__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) deviceView];
  [v1 setAlpha:1.0];
}

void __55__BKUIPearlCoachingController_deviceOrientationChanged__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceView];
  [v2 setOrientation:{objc_msgSend(*(a1 + 32), "orientation")}];

  v3 = [*(a1 + 32) deviceView];
  [v3 startAnimation];
}

- (BOOL)resetDeviceView
{
  v3 = [(BKUIPearlCoachingController *)self didOrientationChange];
  if (v3)
  {
    v4 = [(BKUIPearlCoachingController *)self deviceView];
    [v4 setAlpha:0.0];

    v5 = [(BKUIPearlCoachingController *)self deviceView];
    [v5 setOrientation:{-[BKUIPearlCoachingController orientation](self, "orientation")}];

    [(BKUIPearlCoachingController *)self updateInstructionText];
  }

  return v3;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v16.receiver = self;
  v16.super_class = BKUIPearlCoachingController;
  v7 = a4;
  [(BKUIPearlCoachingController *)&v16 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(BKUIPearlCoachingController *)self resetDeviceView];
  v9 = [(BKUIPearlCoachingController *)self needsToShow];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__BKUIPearlCoachingController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v13[3] = &unk_278D099E8;
  v14 = v8;
  v15 = v9;
  v13[4] = self;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__BKUIPearlCoachingController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v10[3] = &unk_278D099E8;
  v11 = v8;
  v12 = v9;
  v10[4] = self;
  [v7 animateAlongsideTransition:v13 completion:v10];
}

void __82__BKUIPearlCoachingController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) == 1 && *(a1 + 41) == 1)
  {
    v5 = v3;
    v4 = [*(a1 + 32) deviceView];
    [v4 setAlpha:1.0];

    v3 = v5;
  }
}

void __82__BKUIPearlCoachingController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) == 1 && *(a1 + 41) == 1)
  {
    v5 = v3;
    v4 = [*(a1 + 32) deviceView];
    [v4 startAnimation];

    v3 = v5;
  }
}

- (void)handleRotation
{
  v3 = [(BKUIPearlCoachingController *)self resetDeviceView];
  v4 = [(BKUIPearlCoachingController *)self needsToShow];
  if (v3 && v4)
  {
    v5 = [(BKUIPearlCoachingController *)self deviceView];
    [v5 startAnimation];
  }
}

- (void)escapeHatchButtonPressed:(id)a3
{
  v4 = _BKUILoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_241B0A000, v4, OS_LOG_TYPE_DEFAULT, "Skipped coaching", v6, 2u);
  }

  v5 = [(BKUIPearlCoachingController *)self delegate];
  [v5 coachingSkipped];
}

- (BOOL)needsToShow
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = MGGetProductType();
  v4 = +[BKUIDevice sharedInstance];
  v5 = [v4 isRestrictedToLandscapeEnrollment];

  v6 = [(BKUIPearlCoachingController *)self orientation];
  if (v5)
  {
    v7 = v6 == 4;
  }

  else
  {
    if (v6 != 1)
    {
      v8 = 1;
      goto LABEL_9;
    }

    v7 = [(BKUIPearlCoachingController *)self orientation]== 1;
  }

  v8 = !v7;
LABEL_9:
  v9 = _BKUILoggingFacility();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218752;
    v13 = v3;
    v14 = 1024;
    v15 = v8;
    v16 = 2048;
    v17 = [(BKUIPearlCoachingController *)self orientation];
    v18 = 1024;
    v19 = [(BKUIPearlCoachingController *)self isDeviceFlat];
    _os_log_impl(&dword_241B0A000, v9, OS_LOG_TYPE_DEFAULT, "Coaching controller needs to show: model: %ld, %i, orientation: %li, flat: %i", &v12, 0x22u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)updateInstructionText
{
  v3 = +[BKUIDevice sharedInstance];
  v4 = [v3 isRestrictedToLandscapeEnrollment];

  v5 = [(BKUIPearlCoachingController *)self orientation];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = v6;
  if (v4)
  {
    if (v5 == 3)
    {
      v16 = [v6 localizedStringForKey:@"ROTATE_GENERAL" value:&stru_2853BB280 table:@"Pearl-j3xx"];

      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = v8;
      v10 = @"ROTATE_TO_LANDSCAPE_UPSIDE_DOWN_DETAIL";
      v11 = @"Pearl-Landscape";
      goto LABEL_9;
    }

    v12 = @"Pearl-Landscape";
    v16 = [v6 localizedStringForKey:@"ROTATE_TO_LANDSCAPE" value:&stru_2853BB280 table:@"Pearl-Landscape"];

    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = v8;
    v10 = @"ROTATE_TO_LANDSCAPE_DETAIL";
  }

  else
  {
    v12 = @"Pearl-j3xx";
    if (v5 == 2)
    {
      v16 = [v6 localizedStringForKey:@"ROTATE_GENERAL" value:&stru_2853BB280 table:@"Pearl-j3xx"];

      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = v8;
      v10 = @"ROTATE_TO_PORTRAIT_UPSIDE_DOWN_DETAIL";
    }

    else
    {
      v16 = [v6 localizedStringForKey:@"ROTATE_TO_PORTRAIT" value:&stru_2853BB280 table:@"Pearl-j3xx"];

      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = v8;
      v10 = @"ROTATE_TO_PORTRAIT_DETAIL";
    }
  }

  v11 = v12;
LABEL_9:
  v13 = [v8 localizedStringForKey:v10 value:&stru_2853BB280 table:v11];

  v14 = [(BKUIPearlCoachingController *)self instructionView];
  [v14 setInstruction:v16];

  v15 = [(BKUIPearlCoachingController *)self instructionView];
  [v15 setDetail:v13];
}

- (BOOL)didOrientationChange
{
  v3 = [(BKUIPearlCoachingController *)self orientation];
  v4 = [(BKUIPearlCoachingController *)self deviceView];
  LOBYTE(v3) = v3 != [v4 orientation];

  return v3;
}

- (BKUIPearlCoachingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end