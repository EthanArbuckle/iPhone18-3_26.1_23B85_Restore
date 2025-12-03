@interface BKUIPearlCoachingController
- (BKUIPearlCoachingControllerDelegate)delegate;
- (BOOL)didOrientationChange;
- (BOOL)needsToShow;
- (BOOL)resetDeviceView;
- (void)deviceOrientationChanged;
- (void)escapeHatchButtonPressed:(id)pressed;
- (void)handleRotation;
- (void)setInBuddy:(BOOL)buddy;
- (void)stopCoachingAnimation;
- (void)updateInstructionText;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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

  scrollview = [(BKUIPearlCoachingController *)self scrollview];
  [scrollview setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = *MEMORY[0x277CBF3A8];
  v11 = *(MEMORY[0x277CBF3A8] + 8);
  scrollview2 = [(BKUIPearlCoachingController *)self scrollview];
  [scrollview2 setContentSize:{v10, v11}];

  scrollview3 = [(BKUIPearlCoachingController *)self scrollview];
  [scrollview3 setIndicatorStyle:2];

  v14 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v5, v6, v7}];
  [(BKUIPearlCoachingController *)self setScrollContentView:v14];

  scrollContentView = [(BKUIPearlCoachingController *)self scrollContentView];
  [scrollContentView setTranslatesAutoresizingMaskIntoConstraints:0];

  scrollview4 = [(BKUIPearlCoachingController *)self scrollview];
  scrollContentView2 = [(BKUIPearlCoachingController *)self scrollContentView];
  [scrollview4 addSubview:scrollContentView2];

  v137 = MEMORY[0x277CCAAD0];
  scrollContentView3 = [(BKUIPearlCoachingController *)self scrollContentView];
  topAnchor = [scrollContentView3 topAnchor];
  scrollview5 = [(BKUIPearlCoachingController *)self scrollview];
  topAnchor2 = [scrollview5 topAnchor];
  v158 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v180[0] = v158;
  scrollContentView4 = [(BKUIPearlCoachingController *)self scrollContentView];
  bottomAnchor = [scrollContentView4 bottomAnchor];
  scrollview6 = [(BKUIPearlCoachingController *)self scrollview];
  bottomAnchor2 = [scrollview6 bottomAnchor];
  v143 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v180[1] = v143;
  scrollContentView5 = [(BKUIPearlCoachingController *)self scrollContentView];
  widthAnchor = [scrollContentView5 widthAnchor];
  scrollview7 = [(BKUIPearlCoachingController *)self scrollview];
  widthAnchor2 = [scrollview7 widthAnchor];
  v127 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v180[2] = v127;
  scrollContentView6 = [(BKUIPearlCoachingController *)self scrollContentView];
  centerXAnchor = [scrollContentView6 centerXAnchor];
  scrollview8 = [(BKUIPearlCoachingController *)self scrollview];
  centerXAnchor2 = [scrollview8 centerXAnchor];
  v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v180[3] = v20;
  scrollContentView7 = [(BKUIPearlCoachingController *)self scrollContentView];
  heightAnchor = [scrollContentView7 heightAnchor];
  scrollview9 = [(BKUIPearlCoachingController *)self scrollview];
  heightAnchor2 = [scrollview9 heightAnchor];
  v25 = [heightAnchor constraintGreaterThanOrEqualToAnchor:heightAnchor2];
  v180[4] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v180 count:5];
  [v137 activateConstraints:v26];

  view = [(BKUIPearlCoachingController *)self view];
  scrollview10 = [(BKUIPearlCoachingController *)self scrollview];
  [view addSubview:scrollview10];

  blackColor = [MEMORY[0x277D75348] blackColor];
  view2 = [(BKUIPearlCoachingController *)self view];
  [view2 setBackgroundColor:blackColor];

  v31 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  view3 = [(BKUIPearlCoachingController *)self view];
  [view3 addSubview:v31];

  v170 = MEMORY[0x277CCAAD0];
  v174 = v31;
  topAnchor3 = [v31 topAnchor];
  view4 = [(BKUIPearlCoachingController *)self view];
  topAnchor4 = [view4 topAnchor];
  v36 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v179[0] = v36;
  heightAnchor3 = [v31 heightAnchor];
  view5 = [(BKUIPearlCoachingController *)self view];
  heightAnchor4 = [view5 heightAnchor];
  v40 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4 multiplier:0.41];
  v179[1] = v40;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v179 count:2];
  [v170 activateConstraints:v41];

  v42 = [[BKUIPearlCoachingDeviceView alloc] initWithSheetLayout:[(BKUIPearlCoachingController *)self inSheet]];
  [(BKUIPearlCoachingController *)self setDeviceView:v42];

  isDisplayZoomEnabled = [(BKUIPearlCoachingController *)self isDisplayZoomEnabled];
  deviceView = [(BKUIPearlCoachingController *)self deviceView];
  [deviceView setIsDisplayZoomEnabled:isDisplayZoomEnabled];

  deviceView2 = [(BKUIPearlCoachingController *)self deviceView];
  [deviceView2 setAlpha:0.0];

  deviceView3 = [(BKUIPearlCoachingController *)self deviceView];
  [deviceView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  view6 = [(BKUIPearlCoachingController *)self view];
  deviceView4 = [(BKUIPearlCoachingController *)self deviceView];
  [view6 addSubview:deviceView4];

  deviceView5 = [(BKUIPearlCoachingController *)self deviceView];
  redColor = [MEMORY[0x277D75348] redColor];
  v51 = [deviceView5 bkui_debugBorder:redColor withWidth:1];

  deviceView6 = [(BKUIPearlCoachingController *)self deviceView];
  centerXAnchor3 = [deviceView6 centerXAnchor];
  view7 = [(BKUIPearlCoachingController *)self view];
  centerXAnchor4 = [view7 centerXAnchor];
  v56 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v56 setActive:1];

  deviceView7 = [(BKUIPearlCoachingController *)self deviceView];
  centerYAnchor = [deviceView7 centerYAnchor];
  bottomAnchor3 = [v174 bottomAnchor];
  v60 = [centerYAnchor constraintEqualToAnchor:bottomAnchor3];
  [v60 setActive:1];

  v61 = [BKUIButtonTray alloc];
  parentViewController = [(BKUIPearlCoachingController *)self parentViewController];
  [parentViewController preferredContentSize];
  v64 = [(BKUIButtonTray *)v61 initWithFrame:0.0, 0.0, v63, 0.0];
  [(BKUIPearlCoachingController *)self setButtonTray:v64];

  buttonTray = [(BKUIPearlCoachingController *)self buttonTray];
  [buttonTray setTranslatesAutoresizingMaskIntoConstraints:0];

  buttonTray2 = [(BKUIPearlCoachingController *)self buttonTray];
  bottomLinkButton = [buttonTray2 bottomLinkButton];
  [(BKUIPearlCoachingController *)self setEscapeHatchButton:bottomLinkButton];

  escapeHatchButton = [(BKUIPearlCoachingController *)self escapeHatchButton];
  v69 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v70 = [v69 localizedStringForKey:@"SET_UP_LATER_IN_SETTINGS" value:&stru_2853BB280 table:@"Pearl-j3xx"];
  [escapeHatchButton setTitle:v70 forState:0];

  escapeHatchButton2 = [(BKUIPearlCoachingController *)self escapeHatchButton];
  [escapeHatchButton2 addTarget:self action:sel_escapeHatchButtonPressed_ forControlEvents:0x2000];

  LODWORD(escapeHatchButton2) = [(BKUIPearlCoachingController *)self inBuddy];
  escapeHatchButton3 = [(BKUIPearlCoachingController *)self escapeHatchButton];
  [escapeHatchButton3 setHidden:escapeHatchButton2 ^ 1];

  v73 = objc_alloc_init(BKUIPearlInstructionView);
  [(BKUIPearlCoachingController *)self setInstructionView:v73];

  instructionView = [(BKUIPearlCoachingController *)self instructionView];
  [instructionView setTranslatesAutoresizingMaskIntoConstraints:0];

  instructionView2 = [(BKUIPearlCoachingController *)self instructionView];
  [instructionView2 setDarkMode:1];

  instructionView3 = [(BKUIPearlCoachingController *)self instructionView];
  LODWORD(v77) = 1148846080;
  [instructionView3 setContentCompressionResistancePriority:1 forAxis:v77];

  scrollContentView8 = [(BKUIPearlCoachingController *)self scrollContentView];
  buttonTray3 = [(BKUIPearlCoachingController *)self buttonTray];
  [scrollContentView8 addSubview:buttonTray3];

  scrollContentView9 = [(BKUIPearlCoachingController *)self scrollContentView];
  instructionView4 = [(BKUIPearlCoachingController *)self instructionView];
  [scrollContentView9 addSubview:instructionView4];

  v126 = MEMORY[0x277CCAAD0];
  instructionView5 = [(BKUIPearlCoachingController *)self instructionView];
  topAnchor5 = [instructionView5 topAnchor];
  scrollContentView10 = [(BKUIPearlCoachingController *)self scrollContentView];
  topAnchor6 = [scrollContentView10 topAnchor];
  v156 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v178[0] = v156;
  instructionView6 = [(BKUIPearlCoachingController *)self instructionView];
  leadingAnchor = [instructionView6 leadingAnchor];
  view8 = [(BKUIPearlCoachingController *)self view];
  leadingAnchor2 = [view8 leadingAnchor];
  v141 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v178[1] = v141;
  instructionView7 = [(BKUIPearlCoachingController *)self instructionView];
  trailingAnchor = [instructionView7 trailingAnchor];
  view9 = [(BKUIPearlCoachingController *)self view];
  trailingAnchor2 = [view9 trailingAnchor];
  v128 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v178[2] = v128;
  instructionView8 = [(BKUIPearlCoachingController *)self instructionView];
  bottomAnchor4 = [instructionView8 bottomAnchor];
  buttonTray4 = [(BKUIPearlCoachingController *)self buttonTray];
  topAnchor7 = [buttonTray4 topAnchor];
  v119 = [bottomAnchor4 constraintEqualToAnchor:topAnchor7 constant:45.0];
  v178[3] = v119;
  buttonTray5 = [(BKUIPearlCoachingController *)self buttonTray];
  leadingAnchor3 = [buttonTray5 leadingAnchor];
  view10 = [(BKUIPearlCoachingController *)self view];
  leadingAnchor4 = [view10 leadingAnchor];
  v114 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v178[4] = v114;
  buttonTray6 = [(BKUIPearlCoachingController *)self buttonTray];
  trailingAnchor3 = [buttonTray6 trailingAnchor];
  view11 = [(BKUIPearlCoachingController *)self view];
  trailingAnchor4 = [view11 trailingAnchor];
  v84 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v178[5] = v84;
  buttonTray7 = [(BKUIPearlCoachingController *)self buttonTray];
  bottomAnchor5 = [buttonTray7 bottomAnchor];
  scrollContentView11 = [(BKUIPearlCoachingController *)self scrollContentView];
  bottomAnchor6 = [scrollContentView11 bottomAnchor];
  v89 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v178[6] = v89;
  v90 = [MEMORY[0x277CBEA60] arrayWithObjects:v178 count:7];
  [v126 activateConstraints:v90];

  v91 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v91 setTranslatesAutoresizingMaskIntoConstraints:0];
  view12 = [(BKUIPearlCoachingController *)self view];
  [view12 addSubview:v91];

  v163 = MEMORY[0x277CCAAD0];
  topAnchor8 = [v91 topAnchor];
  view13 = [(BKUIPearlCoachingController *)self view];
  topAnchor9 = [view13 topAnchor];
  v95 = [topAnchor8 constraintEqualToAnchor:topAnchor9];
  v177[0] = v95;
  v96 = v91;
  v172 = v91;
  heightAnchor5 = [v91 heightAnchor];
  view14 = [(BKUIPearlCoachingController *)self view];
  heightAnchor6 = [view14 heightAnchor];
  v100 = [heightAnchor5 constraintEqualToAnchor:heightAnchor6 multiplier:0.75];
  v177[1] = v100;
  v101 = [MEMORY[0x277CBEA60] arrayWithObjects:v177 count:2];
  [v163 activateConstraints:v101];

  v139 = MEMORY[0x277CCAAD0];
  scrollview11 = [(BKUIPearlCoachingController *)self scrollview];
  topAnchor10 = [scrollview11 topAnchor];
  bottomAnchor7 = [v96 bottomAnchor];
  v157 = [topAnchor10 constraintEqualToAnchor:bottomAnchor7];
  v176[0] = v157;
  scrollview12 = [(BKUIPearlCoachingController *)self scrollview];
  leadingAnchor5 = [scrollview12 leadingAnchor];
  view15 = [(BKUIPearlCoachingController *)self view];
  leadingAnchor6 = [view15 leadingAnchor];
  v142 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v176[1] = v142;
  scrollview13 = [(BKUIPearlCoachingController *)self scrollview];
  trailingAnchor5 = [scrollview13 trailingAnchor];
  view16 = [(BKUIPearlCoachingController *)self view];
  trailingAnchor6 = [view16 trailingAnchor];
  v104 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v176[2] = v104;
  scrollview14 = [(BKUIPearlCoachingController *)self scrollview];
  bottomAnchor8 = [scrollview14 bottomAnchor];
  view17 = [(BKUIPearlCoachingController *)self view];
  bottomAnchor9 = [view17 bottomAnchor];
  v109 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9];
  v176[3] = v109;
  v110 = [MEMORY[0x277CBEA60] arrayWithObjects:v176 count:4];
  [v139 activateConstraints:v110];

  [(BKUIPearlCoachingController *)self updateInstructionText];
  v111 = *MEMORY[0x277D85DE8];
}

- (void)setInBuddy:(BOOL)buddy
{
  buddyCopy = buddy;
  self->_inBuddy = buddy;
  escapeHatchButton = [(BKUIPearlCoachingController *)self escapeHatchButton];
  [escapeHatchButton setHidden:!buddyCopy];
}

- (void)stopCoachingAnimation
{
  deviceView = [(BKUIPearlCoachingController *)self deviceView];
  [deviceView stopAnimation];
}

- (void)deviceOrientationChanged
{
  needsToShow = [(BKUIPearlCoachingController *)self needsToShow];
  deviceView = [(BKUIPearlCoachingController *)self deviceView];
  [deviceView alpha];
  v6 = v5;

  if (needsToShow)
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
    deviceView2 = [(BKUIPearlCoachingController *)self deviceView];
    [deviceView2 setAlpha:0.0];
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
  didOrientationChange = [(BKUIPearlCoachingController *)self didOrientationChange];
  if (didOrientationChange)
  {
    deviceView = [(BKUIPearlCoachingController *)self deviceView];
    [deviceView setAlpha:0.0];

    deviceView2 = [(BKUIPearlCoachingController *)self deviceView];
    [deviceView2 setOrientation:{-[BKUIPearlCoachingController orientation](self, "orientation")}];

    [(BKUIPearlCoachingController *)self updateInstructionText];
  }

  return didOrientationChange;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v16.receiver = self;
  v16.super_class = BKUIPearlCoachingController;
  coordinatorCopy = coordinator;
  [(BKUIPearlCoachingController *)&v16 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  resetDeviceView = [(BKUIPearlCoachingController *)self resetDeviceView];
  needsToShow = [(BKUIPearlCoachingController *)self needsToShow];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__BKUIPearlCoachingController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v13[3] = &unk_278D099E8;
  v14 = resetDeviceView;
  v15 = needsToShow;
  v13[4] = self;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__BKUIPearlCoachingController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v10[3] = &unk_278D099E8;
  v11 = resetDeviceView;
  v12 = needsToShow;
  v10[4] = self;
  [coordinatorCopy animateAlongsideTransition:v13 completion:v10];
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
  resetDeviceView = [(BKUIPearlCoachingController *)self resetDeviceView];
  needsToShow = [(BKUIPearlCoachingController *)self needsToShow];
  if (resetDeviceView && needsToShow)
  {
    deviceView = [(BKUIPearlCoachingController *)self deviceView];
    [deviceView startAnimation];
  }
}

- (void)escapeHatchButtonPressed:(id)pressed
{
  v4 = _BKUILoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_241B0A000, v4, OS_LOG_TYPE_DEFAULT, "Skipped coaching", v6, 2u);
  }

  delegate = [(BKUIPearlCoachingController *)self delegate];
  [delegate coachingSkipped];
}

- (BOOL)needsToShow
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = MGGetProductType();
  v4 = +[BKUIDevice sharedInstance];
  isRestrictedToLandscapeEnrollment = [v4 isRestrictedToLandscapeEnrollment];

  orientation = [(BKUIPearlCoachingController *)self orientation];
  if (isRestrictedToLandscapeEnrollment)
  {
    v7 = orientation == 4;
  }

  else
  {
    if (orientation != 1)
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
    orientation2 = [(BKUIPearlCoachingController *)self orientation];
    v18 = 1024;
    isDeviceFlat = [(BKUIPearlCoachingController *)self isDeviceFlat];
    _os_log_impl(&dword_241B0A000, v9, OS_LOG_TYPE_DEFAULT, "Coaching controller needs to show: model: %ld, %i, orientation: %li, flat: %i", &v12, 0x22u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)updateInstructionText
{
  v3 = +[BKUIDevice sharedInstance];
  isRestrictedToLandscapeEnrollment = [v3 isRestrictedToLandscapeEnrollment];

  orientation = [(BKUIPearlCoachingController *)self orientation];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = v6;
  if (isRestrictedToLandscapeEnrollment)
  {
    if (orientation == 3)
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
    if (orientation == 2)
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

  instructionView = [(BKUIPearlCoachingController *)self instructionView];
  [instructionView setInstruction:v16];

  instructionView2 = [(BKUIPearlCoachingController *)self instructionView];
  [instructionView2 setDetail:v13];
}

- (BOOL)didOrientationChange
{
  orientation = [(BKUIPearlCoachingController *)self orientation];
  deviceView = [(BKUIPearlCoachingController *)self deviceView];
  LOBYTE(orientation) = orientation != [deviceView orientation];

  return orientation;
}

- (BKUIPearlCoachingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end