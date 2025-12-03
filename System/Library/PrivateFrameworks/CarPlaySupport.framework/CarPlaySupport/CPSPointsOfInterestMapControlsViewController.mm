@interface CPSPointsOfInterestMapControlsViewController
- (CPSPointsOfInterestMapControlsViewController)initWithMapDelegate:(id)delegate;
- (CPSPointsOfInterestMapDelegate)mapDelegate;
- (id)_linearFocusItems;
- (void)centerPressed:(id)pressed;
- (void)didSelectButton:(id)button;
- (void)panPressed:(id)pressed;
- (void)setupViews;
- (void)viewDidLoad;
- (void)zoomInPressed:(id)pressed;
- (void)zoomOutPressed:(id)pressed;
@end

@implementation CPSPointsOfInterestMapControlsViewController

- (CPSPointsOfInterestMapControlsViewController)initWithMapDelegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = CPSPointsOfInterestMapControlsViewController;
  selfCopy = [(CPSPointsOfInterestMapControlsViewController *)&v6 initWithNibName:0 bundle:?];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeWeak(&selfCopy->_mapDelegate, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSPointsOfInterestMapControlsViewController;
  [(CPSPointsOfInterestMapControlsViewController *)&v2 viewDidLoad];
  [(CPSPointsOfInterestMapControlsViewController *)selfCopy setupViews];
}

- (void)setupViews
{
  v140[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v131[1] = a2;
  v9 = [CPSEntityMapButton buttonWithEntityMapButtonType:3];
  [(CPSPointsOfInterestMapControlsViewController *)selfCopy setPanButton:?];
  panButton = [(CPSPointsOfInterestMapControlsViewController *)selfCopy panButton];
  [(CPSEntityMapButton *)panButton setTranslatesAutoresizingMaskIntoConstraints:0];
  panButton2 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy panButton];
  [(CPUITemplateButton *)panButton2 setDelegate:selfCopy];
  MEMORY[0x277D82BD8](panButton2);
  v14 = CPUILocalizedStringForKey();
  v140[0] = v14;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v140 count:?];
  panButton3 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy panButton];
  [(CPSEntityMapButton *)panButton3 setAccessibilityUserInputLabels:v13];
  MEMORY[0x277D82BD8](panButton3);
  MEMORY[0x277D82BD8](v13);
  view = [(CPSPointsOfInterestMapControlsViewController *)selfCopy view];
  panButton4 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy panButton];
  [view addSubview:?];
  MEMORY[0x277D82BD8](panButton4);
  v17 = [CPSEntityMapButton buttonWithEntityMapButtonType:1, MEMORY[0x277D82BD8](view).n128_f64[0]];
  [(CPSPointsOfInterestMapControlsViewController *)selfCopy setZoomInButton:?];
  zoomInButton = [(CPSPointsOfInterestMapControlsViewController *)selfCopy zoomInButton];
  [(CPSEntityMapButton *)zoomInButton setTranslatesAutoresizingMaskIntoConstraints:0];
  zoomInButton2 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy zoomInButton];
  [(CPUITemplateButton *)zoomInButton2 setDelegate:selfCopy];
  MEMORY[0x277D82BD8](zoomInButton2);
  v22 = CPUILocalizedStringForKey();
  v139 = v22;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v139 count:1];
  zoomInButton3 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy zoomInButton];
  [(CPSEntityMapButton *)zoomInButton3 setAccessibilityUserInputLabels:v21];
  MEMORY[0x277D82BD8](zoomInButton3);
  MEMORY[0x277D82BD8](v21);
  view2 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy view];
  zoomInButton4 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy zoomInButton];
  [view2 addSubview:?];
  MEMORY[0x277D82BD8](zoomInButton4);
  v25 = [CPSEntityMapButton buttonWithEntityMapButtonType:2, MEMORY[0x277D82BD8](view2).n128_f64[0]];
  [(CPSPointsOfInterestMapControlsViewController *)selfCopy setZoomOutButton:?];
  zoomOutButton = [(CPSPointsOfInterestMapControlsViewController *)selfCopy zoomOutButton];
  [(CPSEntityMapButton *)zoomOutButton setTranslatesAutoresizingMaskIntoConstraints:0];
  zoomOutButton2 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy zoomOutButton];
  [(CPUITemplateButton *)zoomOutButton2 setDelegate:selfCopy];
  MEMORY[0x277D82BD8](zoomOutButton2);
  v30 = CPUILocalizedStringForKey();
  v138 = v30;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v138 count:1];
  zoomOutButton3 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy zoomOutButton];
  [(CPSEntityMapButton *)zoomOutButton3 setAccessibilityUserInputLabels:v29];
  MEMORY[0x277D82BD8](zoomOutButton3);
  MEMORY[0x277D82BD8](v29);
  view3 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy view];
  zoomOutButton4 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy zoomOutButton];
  [view3 addSubview:?];
  MEMORY[0x277D82BD8](zoomOutButton4);
  v33 = [CPSEntityMapButton buttonWithEntityMapButtonType:MEMORY[0x277D82BD8](view3).n128_f64[0]];
  [(CPSPointsOfInterestMapControlsViewController *)selfCopy setCenterButton:?];
  centerButton = [(CPSPointsOfInterestMapControlsViewController *)selfCopy centerButton];
  [(CPSEntityMapButton *)centerButton setTranslatesAutoresizingMaskIntoConstraints:0];
  MEMORY[0x277D82BD8](centerButton);
  v37 = CPUILocalizedStringForKey();
  v137 = v37;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v137 count:1];
  centerButton2 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy centerButton];
  [(CPSEntityMapButton *)centerButton2 setAccessibilityUserInputLabels:v36];
  MEMORY[0x277D82BD8](centerButton2);
  MEMORY[0x277D82BD8](v36);
  centerButton3 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy centerButton];
  [(CPUITemplateButton *)centerButton3 setDelegate:selfCopy];
  view4 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy view];
  centerButton4 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy centerButton];
  [view4 addSubview:?];
  MEMORY[0x277D82BD8](centerButton4);
  MEMORY[0x277D82BD8](view4);
  v131[0] = objc_opt_new();
  zoomOutButton5 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy zoomOutButton];
  bottomAnchor = [(CPSEntityMapButton *)zoomOutButton5 bottomAnchor];
  view5 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy view];
  safeAreaLayoutGuide = [view5 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
  v56 = [bottomAnchor constraintEqualToAnchor:?];
  v136[0] = v56;
  zoomOutButton6 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy zoomOutButton];
  leadingAnchor = [(CPSEntityMapButton *)zoomOutButton6 leadingAnchor];
  view6 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy view];
  safeAreaLayoutGuide2 = [view6 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
  v50 = [leadingAnchor constraintEqualToAnchor:?];
  v136[1] = v50;
  zoomOutButton7 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy zoomOutButton];
  trailingAnchor = [(CPSEntityMapButton *)zoomOutButton7 trailingAnchor];
  view7 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy view];
  safeAreaLayoutGuide3 = [view7 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide3 trailingAnchor];
  v44 = [trailingAnchor constraintEqualToAnchor:?];
  v136[2] = v44;
  zoomOutButton8 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy zoomOutButton];
  heightAnchor = [(CPSEntityMapButton *)zoomOutButton8 heightAnchor];
  v2 = _UISolariumEnabled();
  v3 = 36.0;
  if ((v2 & 1) == 0)
  {
    v3 = 34.5;
  }

  v41 = [heightAnchor constraintEqualToConstant:v3];
  v136[3] = v41;
  v130 = [MEMORY[0x277CBEA60] arrayWithObjects:v136 count:4];
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](heightAnchor);
  MEMORY[0x277D82BD8](zoomOutButton8);
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide3);
  MEMORY[0x277D82BD8](view7);
  MEMORY[0x277D82BD8](trailingAnchor);
  MEMORY[0x277D82BD8](zoomOutButton7);
  MEMORY[0x277D82BD8](v50);
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide2);
  MEMORY[0x277D82BD8](view6);
  MEMORY[0x277D82BD8](leadingAnchor);
  MEMORY[0x277D82BD8](zoomOutButton6);
  MEMORY[0x277D82BD8](v56);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide);
  MEMORY[0x277D82BD8](view5);
  MEMORY[0x277D82BD8](bottomAnchor);
  zoomInButton5 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy zoomInButton];
  bottomAnchor3 = [(CPSEntityMapButton *)zoomInButton5 bottomAnchor];
  zoomOutButton9 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy zoomOutButton];
  topAnchor = [(CPSEntityMapButton *)zoomOutButton9 topAnchor];
  v77 = [bottomAnchor3 constraintEqualToAnchor:? constant:?];
  v135[0] = v77;
  zoomInButton6 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy zoomInButton];
  leadingAnchor3 = [(CPSEntityMapButton *)zoomInButton6 leadingAnchor];
  view8 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy view];
  safeAreaLayoutGuide4 = [view8 safeAreaLayoutGuide];
  leadingAnchor4 = [safeAreaLayoutGuide4 leadingAnchor];
  v71 = [leadingAnchor3 constraintEqualToAnchor:?];
  v135[1] = v71;
  zoomInButton7 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy zoomInButton];
  trailingAnchor3 = [(CPSEntityMapButton *)zoomInButton7 trailingAnchor];
  view9 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy view];
  safeAreaLayoutGuide5 = [view9 safeAreaLayoutGuide];
  trailingAnchor4 = [safeAreaLayoutGuide5 trailingAnchor];
  v65 = [trailingAnchor3 constraintEqualToAnchor:?];
  v135[2] = v65;
  zoomInButton8 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy zoomInButton];
  heightAnchor2 = [(CPSEntityMapButton *)zoomInButton8 heightAnchor];
  v4 = _UISolariumEnabled();
  v5 = 36.0;
  if ((v4 & 1) == 0)
  {
    v5 = 34.5;
  }

  v62 = [heightAnchor2 constraintEqualToConstant:v5];
  v135[3] = v62;
  v129 = [MEMORY[0x277CBEA60] arrayWithObjects:v135 count:4];
  MEMORY[0x277D82BD8](v62);
  MEMORY[0x277D82BD8](heightAnchor2);
  MEMORY[0x277D82BD8](zoomInButton8);
  MEMORY[0x277D82BD8](v65);
  MEMORY[0x277D82BD8](trailingAnchor4);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide5);
  MEMORY[0x277D82BD8](view9);
  MEMORY[0x277D82BD8](trailingAnchor3);
  MEMORY[0x277D82BD8](zoomInButton7);
  MEMORY[0x277D82BD8](v71);
  MEMORY[0x277D82BD8](leadingAnchor4);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide4);
  MEMORY[0x277D82BD8](view8);
  MEMORY[0x277D82BD8](leadingAnchor3);
  MEMORY[0x277D82BD8](zoomInButton6);
  MEMORY[0x277D82BD8](v77);
  MEMORY[0x277D82BD8](topAnchor);
  MEMORY[0x277D82BD8](zoomOutButton9);
  MEMORY[0x277D82BD8](bottomAnchor3);
  *&v6 = MEMORY[0x277D82BD8](zoomInButton5).n128_u64[0];
  panButton5 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy panButton];
  bottomAnchor4 = [(CPSEntityMapButton *)panButton5 bottomAnchor];
  zoomInButton9 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy zoomInButton];
  topAnchor2 = [(CPSEntityMapButton *)zoomInButton9 topAnchor];
  v99 = [bottomAnchor4 constraintEqualToAnchor:-8.0 constant:?];
  v134[0] = v99;
  panButton6 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy panButton];
  leadingAnchor5 = [(CPSEntityMapButton *)panButton6 leadingAnchor];
  view10 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy view];
  safeAreaLayoutGuide6 = [view10 safeAreaLayoutGuide];
  leadingAnchor6 = [safeAreaLayoutGuide6 leadingAnchor];
  v93 = [leadingAnchor5 constraintEqualToAnchor:?];
  v134[1] = v93;
  panButton7 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy panButton];
  trailingAnchor5 = [(CPSEntityMapButton *)panButton7 trailingAnchor];
  view11 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy view];
  safeAreaLayoutGuide7 = [view11 safeAreaLayoutGuide];
  trailingAnchor6 = [safeAreaLayoutGuide7 trailingAnchor];
  v87 = [trailingAnchor5 constraintEqualToAnchor:?];
  v134[2] = v87;
  panButton8 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy panButton];
  heightAnchor3 = [(CPSEntityMapButton *)panButton8 heightAnchor];
  panButton9 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy panButton];
  widthAnchor = [(CPSEntityMapButton *)panButton9 widthAnchor];
  v82 = [heightAnchor3 constraintEqualToAnchor:?];
  v134[3] = v82;
  v128 = [MEMORY[0x277CBEA60] arrayWithObjects:v134 count:4];
  MEMORY[0x277D82BD8](v82);
  MEMORY[0x277D82BD8](widthAnchor);
  MEMORY[0x277D82BD8](panButton9);
  MEMORY[0x277D82BD8](heightAnchor3);
  MEMORY[0x277D82BD8](panButton8);
  MEMORY[0x277D82BD8](v87);
  MEMORY[0x277D82BD8](trailingAnchor6);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide7);
  MEMORY[0x277D82BD8](view11);
  MEMORY[0x277D82BD8](trailingAnchor5);
  MEMORY[0x277D82BD8](panButton7);
  MEMORY[0x277D82BD8](v93);
  MEMORY[0x277D82BD8](leadingAnchor6);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide6);
  MEMORY[0x277D82BD8](view10);
  MEMORY[0x277D82BD8](leadingAnchor5);
  MEMORY[0x277D82BD8](panButton6);
  MEMORY[0x277D82BD8](v99);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](zoomInButton9);
  MEMORY[0x277D82BD8](bottomAnchor4);
  *&v7 = MEMORY[0x277D82BD8](panButton5).n128_u64[0];
  centerButton5 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy centerButton];
  topAnchor3 = [(CPSEntityMapButton *)centerButton5 topAnchor];
  view12 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy view];
  safeAreaLayoutGuide8 = [view12 safeAreaLayoutGuide];
  topAnchor4 = [safeAreaLayoutGuide8 topAnchor];
  v121 = [topAnchor3 constraintEqualToAnchor:?];
  v133[0] = v121;
  centerButton6 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy centerButton];
  trailingAnchor7 = [(CPSEntityMapButton *)centerButton6 trailingAnchor];
  view13 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy view];
  safeAreaLayoutGuide9 = [view13 safeAreaLayoutGuide];
  trailingAnchor8 = [safeAreaLayoutGuide9 trailingAnchor];
  v115 = [trailingAnchor7 constraintEqualToAnchor:?];
  v133[1] = v115;
  centerButton7 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy centerButton];
  leadingAnchor7 = [(CPSEntityMapButton *)centerButton7 leadingAnchor];
  view14 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy view];
  safeAreaLayoutGuide10 = [view14 safeAreaLayoutGuide];
  leadingAnchor8 = [safeAreaLayoutGuide10 leadingAnchor];
  v109 = [leadingAnchor7 constraintEqualToAnchor:?];
  v133[2] = v109;
  centerButton8 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy centerButton];
  heightAnchor4 = [(CPSEntityMapButton *)centerButton8 heightAnchor];
  centerButton9 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy centerButton];
  widthAnchor2 = [(CPSEntityMapButton *)centerButton9 widthAnchor];
  v104 = [heightAnchor4 constraintEqualToAnchor:1.0 multiplier:?];
  v133[3] = v104;
  v127 = [MEMORY[0x277CBEA60] arrayWithObjects:v133 count:4];
  MEMORY[0x277D82BD8](v104);
  MEMORY[0x277D82BD8](widthAnchor2);
  MEMORY[0x277D82BD8](centerButton9);
  MEMORY[0x277D82BD8](heightAnchor4);
  MEMORY[0x277D82BD8](centerButton8);
  MEMORY[0x277D82BD8](v109);
  MEMORY[0x277D82BD8](leadingAnchor8);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide10);
  MEMORY[0x277D82BD8](view14);
  MEMORY[0x277D82BD8](leadingAnchor7);
  MEMORY[0x277D82BD8](centerButton7);
  MEMORY[0x277D82BD8](v115);
  MEMORY[0x277D82BD8](trailingAnchor8);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide9);
  MEMORY[0x277D82BD8](view13);
  MEMORY[0x277D82BD8](trailingAnchor7);
  MEMORY[0x277D82BD8](centerButton6);
  MEMORY[0x277D82BD8](v121);
  MEMORY[0x277D82BD8](topAnchor4);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide8);
  MEMORY[0x277D82BD8](view12);
  MEMORY[0x277D82BD8](topAnchor3);
  *&v8 = MEMORY[0x277D82BD8](centerButton5).n128_u64[0];
  [v131[0] addObjectsFromArray:{v130, v8}];
  [v131[0] addObjectsFromArray:v129];
  [v131[0] addObjectsFromArray:v128];
  [v131[0] addObjectsFromArray:v127];
  [MEMORY[0x277CCAAD0] activateConstraints:v131[0]];
  objc_storeStrong(&v127, 0);
  objc_storeStrong(&v128, 0);
  objc_storeStrong(&v129, 0);
  objc_storeStrong(&v130, 0);
  objc_storeStrong(v131, 0);
}

- (void)zoomInPressed:(id)pressed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pressed);
  mapDelegate = [(CPSPointsOfInterestMapControlsViewController *)selfCopy mapDelegate];
  v6 = objc_opt_respondsToSelector();
  *&v3 = MEMORY[0x277D82BD8](mapDelegate).n128_u64[0];
  if (v6)
  {
    mapDelegate2 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy mapDelegate];
    [(CPSPointsOfInterestMapDelegate *)mapDelegate2 zoomIn];
    MEMORY[0x277D82BD8](mapDelegate2);
  }

  objc_storeStrong(location, 0);
}

- (void)zoomOutPressed:(id)pressed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pressed);
  mapDelegate = [(CPSPointsOfInterestMapControlsViewController *)selfCopy mapDelegate];
  v6 = objc_opt_respondsToSelector();
  *&v3 = MEMORY[0x277D82BD8](mapDelegate).n128_u64[0];
  if (v6)
  {
    mapDelegate2 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy mapDelegate];
    [(CPSPointsOfInterestMapDelegate *)mapDelegate2 zoomOut];
    MEMORY[0x277D82BD8](mapDelegate2);
  }

  objc_storeStrong(location, 0);
}

- (void)panPressed:(id)pressed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pressed);
  mapDelegate = [(CPSPointsOfInterestMapControlsViewController *)selfCopy mapDelegate];
  v8 = objc_opt_respondsToSelector();
  *&v3 = MEMORY[0x277D82BD8](mapDelegate).n128_u64[0];
  if (v8)
  {
    mapDelegate2 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy mapDelegate];
    v9 = MEMORY[0x277D85DD0];
    v10 = -1073741824;
    v11 = 0;
    v12 = __59__CPSPointsOfInterestMapControlsViewController_panPressed___block_invoke;
    v13 = &unk_278D913E8;
    v14 = MEMORY[0x277D82BE0](selfCopy);
    [(CPSPointsOfInterestMapDelegate *)mapDelegate2 beginPanningWithCompletion:&v9];
    *&v4 = MEMORY[0x277D82BD8](mapDelegate2).n128_u64[0];
    panButton = [(CPSPointsOfInterestMapControlsViewController *)selfCopy panButton];
    [(CPSEntityMapButton *)panButton setAlpha:0.0];
    MEMORY[0x277D82BD8](panButton);
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(location, 0);
}

double __59__CPSPointsOfInterestMapControlsViewController_panPressed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) panButton];
  [v2 setAlpha:1.0];
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

- (void)centerPressed:(id)pressed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pressed);
  mapDelegate = [(CPSPointsOfInterestMapControlsViewController *)selfCopy mapDelegate];
  v6 = objc_opt_respondsToSelector();
  *&v3 = MEMORY[0x277D82BD8](mapDelegate).n128_u64[0];
  if (v6)
  {
    mapDelegate2 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy mapDelegate];
    [(CPSPointsOfInterestMapDelegate *)mapDelegate2 centerMap];
    MEMORY[0x277D82BD8](mapDelegate2);
  }

  objc_storeStrong(location, 0);
}

- (void)didSelectButton:(id)button
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  v14 = location[0];
  zoomInButton = [(CPSPointsOfInterestMapControlsViewController *)selfCopy zoomInButton];
  *&v3 = MEMORY[0x277D82BD8](zoomInButton).n128_u64[0];
  if (v14 == zoomInButton)
  {
    [(CPSPointsOfInterestMapControlsViewController *)selfCopy zoomInPressed:location[0], v3];
  }

  else
  {
    v12 = location[0];
    zoomOutButton = [(CPSPointsOfInterestMapControlsViewController *)selfCopy zoomOutButton];
    *&v4 = MEMORY[0x277D82BD8](zoomOutButton).n128_u64[0];
    if (v12 == zoomOutButton)
    {
      [(CPSPointsOfInterestMapControlsViewController *)selfCopy zoomOutPressed:location[0], v4];
    }

    else
    {
      v10 = location[0];
      panButton = [(CPSPointsOfInterestMapControlsViewController *)selfCopy panButton];
      *&v5 = MEMORY[0x277D82BD8](panButton).n128_u64[0];
      if (v10 == panButton)
      {
        [(CPSPointsOfInterestMapControlsViewController *)selfCopy panPressed:location[0], v5];
      }

      else
      {
        v8 = location[0];
        centerButton = [(CPSPointsOfInterestMapControlsViewController *)selfCopy centerButton];
        *&v6 = MEMORY[0x277D82BD8](centerButton).n128_u64[0];
        if (v8 == centerButton)
        {
          [(CPSPointsOfInterestMapControlsViewController *)selfCopy centerPressed:location[0], v6];
        }
      }
    }
  }

  objc_storeStrong(location, 0);
}

- (id)_linearFocusItems
{
  selfCopy = self;
  v15[1] = a2;
  v15[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  panButton = [(CPSPointsOfInterestMapControlsViewController *)selfCopy panButton];
  [(CPSEntityMapButton *)panButton alpha];
  v14 = v2;
  MEMORY[0x277D82BD8](panButton);
  v3 = v14;
  if (v14 == 1.0)
  {
    panButton2 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy panButton];
    [v15[0] addObject:?];
    *&v3 = MEMORY[0x277D82BD8](panButton2).n128_u64[0];
  }

  zoomInButton = [(CPSPointsOfInterestMapControlsViewController *)selfCopy zoomInButton];
  v4 = MEMORY[0x277D82BD8](zoomInButton).n128_u64[0];
  if (zoomInButton)
  {
    zoomInButton2 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy zoomInButton];
    [v15[0] addObject:?];
    v4 = MEMORY[0x277D82BD8](zoomInButton2).n128_u64[0];
  }

  zoomOutButton = [(CPSPointsOfInterestMapControlsViewController *)selfCopy zoomOutButton];
  *&v5 = MEMORY[0x277D82BD8](zoomOutButton).n128_u64[0];
  if (zoomOutButton)
  {
    zoomOutButton2 = [(CPSPointsOfInterestMapControlsViewController *)selfCopy zoomOutButton];
    [v15[0] addObject:?];
    MEMORY[0x277D82BD8](zoomOutButton2);
  }

  v7 = MEMORY[0x277D82BE0](v15[0]);
  objc_storeStrong(v15, 0);

  return v7;
}

- (CPSPointsOfInterestMapDelegate)mapDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mapDelegate);

  return WeakRetained;
}

@end