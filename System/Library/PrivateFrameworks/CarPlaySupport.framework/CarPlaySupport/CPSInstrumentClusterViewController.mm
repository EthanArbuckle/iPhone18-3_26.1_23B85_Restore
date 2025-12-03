@interface CPSInstrumentClusterViewController
- (void)_transitionFromViews:(id)views inView:(id)view animated:(BOOL)animated;
- (void)loadView;
- (void)navigator:(id)navigator didEndTrip:(BOOL)trip;
- (void)navigator:(id)navigator pausedTripForReason:(unint64_t)reason description:(id)description usingColor:(id)color;
- (void)setAttributedInactiveVariants:(id)variants;
- (void)setGuidanceStyle:(int64_t)style;
- (void)setInactiveVariants:(id)variants;
- (void)showManeuvers:(id)maneuvers usingDisplayStyles:(id)styles;
- (void)updateEstimates:(id)estimates forManeuver:(id)maneuver;
@end

@implementation CPSInstrumentClusterViewController

- (void)loadView
{
  v46[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v44 = a2;
  v43.receiver = self;
  v43.super_class = CPSInstrumentClusterViewController;
  [(CPSInstrumentClusterViewController *)&v43 loadView];
  view = [(CPSInstrumentClusterViewController *)selfCopy view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2 = MEMORY[0x277D82BD8](view).n128_u64[0];
  view2 = [(CPSInstrumentClusterViewController *)selfCopy view];
  tableBackgroundColor = [MEMORY[0x277D75348] tableBackgroundColor];
  [view2 setBackgroundColor:?];
  MEMORY[0x277D82BD8](tableBackgroundColor);
  MEMORY[0x277D82BD8](view2);
  v42 = objc_alloc_init(CPSAbridgableLabel);
  [(CPSInstrumentClusterViewController *)selfCopy setInactiveLabel:v42];
  v38 = [MEMORY[0x277D74300] systemFontOfSize:16.0 weight:*MEMORY[0x277D74418]];
  [(CPSAbridgableLabel *)v42 setFont:?];
  [(CPSAbridgableLabel *)v42 setTextAlignment:MEMORY[0x277D82BD8](v38).n128_f64[0]];
  [(CPSAbridgableLabel *)v42 setNumberOfLines:1];
  labelColor = [MEMORY[0x277D75348] labelColor];
  [(CPSAbridgableLabel *)v42 setTextColor:?];
  [(CPSAbridgableLabel *)v42 setTranslatesAutoresizingMaskIntoConstraints:0, MEMORY[0x277D82BD8](labelColor).n128_f64[0]];
  attributedInactiveVariants = [(CPSInstrumentClusterViewController *)selfCopy attributedInactiveVariants];
  v41 = [(NSArray *)attributedInactiveVariants count];
  *&v3 = MEMORY[0x277D82BD8](attributedInactiveVariants).n128_u64[0];
  if (v41)
  {
    v34 = objc_opt_self();
    attributedInactiveVariants2 = [v34 attributedInactiveVariants];
    [(CPUIAbridgableLabel *)v42 setAttributedTextVariants:?];
    MEMORY[0x277D82BD8](attributedInactiveVariants2);
    v4 = MEMORY[0x277D82BD8](v34).n128_u64[0];
  }

  else
  {
    inactiveVariants = [(CPSInstrumentClusterViewController *)selfCopy inactiveVariants];
    v32 = [(NSArray *)inactiveVariants count];
    v4 = MEMORY[0x277D82BD8](inactiveVariants).n128_u64[0];
    if (v32)
    {
      v30 = objc_opt_self();
      inactiveVariants2 = [v30 inactiveVariants];
      [(CPUIAbridgableLabel *)v42 setTextVariants:?];
      MEMORY[0x277D82BD8](inactiveVariants2);
      v4 = MEMORY[0x277D82BD8](v30).n128_u64[0];
    }
  }

  view3 = [(CPSInstrumentClusterViewController *)selfCopy view];
  [view3 addSubview:v42];
  *&v5 = MEMORY[0x277D82BD8](view3).n128_u64[0];
  v7 = MEMORY[0x277CCAAD0];
  view4 = [(CPSInstrumentClusterViewController *)selfCopy view];
  safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
  leadingAnchor = [safeAreaLayoutGuide leadingAnchor];
  leadingAnchor2 = [(CPSAbridgableLabel *)v42 leadingAnchor];
  v24 = [leadingAnchor constraintEqualToAnchor:-8.0 constant:?];
  v46[0] = v24;
  view5 = [(CPSInstrumentClusterViewController *)selfCopy view];
  safeAreaLayoutGuide2 = [view5 safeAreaLayoutGuide];
  trailingAnchor = [safeAreaLayoutGuide2 trailingAnchor];
  trailingAnchor2 = [(CPSAbridgableLabel *)v42 trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:8.0 constant:?];
  v46[1] = v19;
  view6 = [(CPSInstrumentClusterViewController *)selfCopy view];
  safeAreaLayoutGuide3 = [view6 safeAreaLayoutGuide];
  centerYAnchor = [safeAreaLayoutGuide3 centerYAnchor];
  centerYAnchor2 = [(CPSAbridgableLabel *)v42 centerYAnchor];
  v14 = [centerYAnchor constraintEqualToAnchor:? constant:?];
  v46[2] = v14;
  view7 = [(CPSInstrumentClusterViewController *)selfCopy view];
  safeAreaLayoutGuide4 = [view7 safeAreaLayoutGuide];
  centerXAnchor = [safeAreaLayoutGuide4 centerXAnchor];
  centerXAnchor2 = [(CPSAbridgableLabel *)v42 centerXAnchor];
  v9 = [centerXAnchor constraintEqualToAnchor:0.0 constant:?];
  v46[3] = v9;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:4];
  [v7 activateConstraints:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](centerXAnchor2);
  MEMORY[0x277D82BD8](centerXAnchor);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide4);
  MEMORY[0x277D82BD8](view7);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](centerYAnchor2);
  MEMORY[0x277D82BD8](centerYAnchor);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide3);
  MEMORY[0x277D82BD8](view6);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](trailingAnchor);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide2);
  MEMORY[0x277D82BD8](view5);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](leadingAnchor);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide);
  MEMORY[0x277D82BD8](view4);
  objc_storeStrong(&v42, 0);
}

- (void)setGuidanceStyle:(int64_t)style
{
  if (self->_guidanceStyle != style)
  {
    self->_guidanceStyle = style;
    [(CPSInstrumentClusterViewController *)self _updateGuidanceStyle];
  }
}

- (void)setInactiveVariants:(id)variants
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, variants);
  v3 = [location[0] copy];
  inactiveVariants = selfCopy->_inactiveVariants;
  selfCopy->_inactiveVariants = v3;
  *&v5 = MEMORY[0x277D82BD8](inactiveVariants).n128_u64[0];
  inactiveLabel = [(CPSInstrumentClusterViewController *)selfCopy inactiveLabel];
  [(CPUIAbridgableLabel *)inactiveLabel setTextVariants:selfCopy->_inactiveVariants];
  MEMORY[0x277D82BD8](inactiveLabel);
  objc_storeStrong(location, 0);
}

- (void)setAttributedInactiveVariants:(id)variants
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, variants);
  v3 = [location[0] copy];
  attributedInactiveVariants = selfCopy->_attributedInactiveVariants;
  selfCopy->_attributedInactiveVariants = v3;
  *&v5 = MEMORY[0x277D82BD8](attributedInactiveVariants).n128_u64[0];
  inactiveLabel = [(CPSInstrumentClusterViewController *)selfCopy inactiveLabel];
  [(CPUIAbridgableLabel *)inactiveLabel setAttributedTextVariants:selfCopy->_attributedInactiveVariants];
  MEMORY[0x277D82BD8](inactiveLabel);
  objc_storeStrong(location, 0);
}

- (void)showManeuvers:(id)maneuvers usingDisplayStyles:(id)styles
{
  v37[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, maneuvers);
  v34 = 0;
  objc_storeStrong(&v34, styles);
  inactiveLabel = [(CPSInstrumentClusterViewController *)selfCopy inactiveLabel];
  [(CPSAbridgableLabel *)inactiveLabel setHidden:1];
  MEMORY[0x277D82BD8](inactiveLabel);
  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  maneuversCardView = [(CPSInstrumentClusterViewController *)selfCopy maneuversCardView];
  v4 = MEMORY[0x277D82BD8](maneuversCardView).n128_u64[0];
  if (maneuversCardView)
  {
    maneuversCardView2 = [(CPSInstrumentClusterViewController *)selfCopy maneuversCardView];
    [v33 addObject:?];
    v4 = MEMORY[0x277D82BD8](maneuversCardView2).n128_u64[0];
  }

  pausedCardView = [(CPSInstrumentClusterViewController *)selfCopy pausedCardView];
  v5 = MEMORY[0x277D82BD8](pausedCardView).n128_u64[0];
  if (pausedCardView)
  {
    pausedCardView2 = [(CPSInstrumentClusterViewController *)selfCopy pausedCardView];
    [v33 addObject:?];
    v5 = MEMORY[0x277D82BD8](pausedCardView2).n128_u64[0];
  }

  v32 = [v33 count] != 0;
  [(CPSInstrumentClusterViewController *)selfCopy setManeuversCardView:?];
  [(CPSInstrumentClusterViewController *)selfCopy setPausedCardView:0];
  v31 = 0;
  if ([location[0] count])
  {
    v7 = objc_alloc_init(CPSDashboardManeuversCardView);
    v8 = v31;
    v31 = v7;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(CPSDashboardManeuversCardView *)v31 setBackgroundColor:?];
    [(CPSDashboardManeuversCardView *)v31 setAllowsCustomBackgroundColorForManeuver:1, MEMORY[0x277D82BD8](clearColor).n128_f64[0]];
    [(CPSDashboardManeuversCardView *)v31 setTranslatesAutoresizingMaskIntoConstraints:0];
    view = [(CPSInstrumentClusterViewController *)selfCopy view];
    [view addSubview:v31];
    MEMORY[0x277D82BD8](view);
    objc_storeStrong(&selfCopy->_maneuversCardView, v31);
    [(CPSDashboardManeuversCardView *)v31 showManeuvers:location[0] usingDisplayStyles:v34];
    v12 = MEMORY[0x277CCAAD0];
    view2 = [(CPSInstrumentClusterViewController *)selfCopy view];
    safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
    topAnchor = [safeAreaLayoutGuide topAnchor];
    topAnchor2 = [(CPSDashboardManeuversCardView *)v31 topAnchor];
    v19 = [topAnchor constraintEqualToAnchor:?];
    v37[0] = v19;
    view3 = [(CPSInstrumentClusterViewController *)selfCopy view];
    safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
    bottomAnchor = [safeAreaLayoutGuide2 bottomAnchor];
    bottomAnchor2 = [(CPSDashboardManeuversCardView *)v31 bottomAnchor];
    v14 = [bottomAnchor constraintEqualToAnchor:?];
    v37[1] = v14;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
    [v12 activateConstraints:?];
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](bottomAnchor2);
    MEMORY[0x277D82BD8](bottomAnchor);
    MEMORY[0x277D82BD8](safeAreaLayoutGuide2);
    MEMORY[0x277D82BD8](view3);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](topAnchor);
    MEMORY[0x277D82BD8](safeAreaLayoutGuide);
    *&v9 = MEMORY[0x277D82BD8](view2).n128_u64[0];
    maneuversCardView3 = [(CPSInstrumentClusterViewController *)selfCopy maneuversCardView];
    [(CPSDashboardManeuversCardView *)maneuversCardView3 setHidden:0];
    *&v6 = MEMORY[0x277D82BD8](maneuversCardView3).n128_u64[0];
  }

  [(CPSInstrumentClusterViewController *)selfCopy _transitionFromViews:v33 inView:v31 animated:v32, v6];
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
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
  maneuversCardView = [(CPSInstrumentClusterViewController *)selfCopy maneuversCardView];
  [(CPSDashboardManeuversCardView *)maneuversCardView updateEstimates:location[0] forManeuver:v6];
  MEMORY[0x277D82BD8](maneuversCardView);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)navigator:(id)navigator pausedTripForReason:(unint64_t)reason description:(id)description usingColor:(id)color
{
  v38[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, navigator);
  reasonCopy = reason;
  v34 = 0;
  objc_storeStrong(&v34, description);
  v33 = 0;
  objc_storeStrong(&v33, color);
  inactiveLabel = [(CPSInstrumentClusterViewController *)selfCopy inactiveLabel];
  [(CPSAbridgableLabel *)inactiveLabel setHidden:1];
  MEMORY[0x277D82BD8](inactiveLabel);
  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  maneuversCardView = [(CPSInstrumentClusterViewController *)selfCopy maneuversCardView];
  v6 = MEMORY[0x277D82BD8](maneuversCardView).n128_u64[0];
  if (maneuversCardView)
  {
    maneuversCardView2 = [(CPSInstrumentClusterViewController *)selfCopy maneuversCardView];
    [v32 addObject:?];
    v6 = MEMORY[0x277D82BD8](maneuversCardView2).n128_u64[0];
  }

  pausedCardView = [(CPSInstrumentClusterViewController *)selfCopy pausedCardView];
  v7 = MEMORY[0x277D82BD8](pausedCardView).n128_u64[0];
  if (pausedCardView)
  {
    pausedCardView2 = [(CPSInstrumentClusterViewController *)selfCopy pausedCardView];
    [v32 addObject:?];
    v7 = MEMORY[0x277D82BD8](pausedCardView2).n128_u64[0];
  }

  [(CPSInstrumentClusterViewController *)selfCopy setManeuversCardView:*&v7];
  [(CPSInstrumentClusterViewController *)selfCopy setPausedCardView:0];
  v8 = [CPSClusterPausedCardView alloc];
  v31 = [(CPSPausedCardView *)v8 initWithReason:reasonCopy title:v34 backgroundColor:v33];
  view = [(CPSInstrumentClusterViewController *)selfCopy view];
  [view addSubview:v31];
  MEMORY[0x277D82BD8](view);
  objc_storeStrong(&selfCopy->_pausedCardView, v31);
  v11 = MEMORY[0x277CCAAD0];
  view2 = [(CPSInstrumentClusterViewController *)selfCopy view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  topAnchor = [safeAreaLayoutGuide topAnchor];
  topAnchor2 = [(CPSClusterPausedCardView *)v31 topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:?];
  v38[0] = v18;
  view3 = [(CPSInstrumentClusterViewController *)selfCopy view];
  safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
  bottomAnchor = [safeAreaLayoutGuide2 bottomAnchor];
  bottomAnchor2 = [(CPSClusterPausedCardView *)v31 bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:?];
  v38[1] = v13;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
  [v11 activateConstraints:?];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide2);
  MEMORY[0x277D82BD8](view3);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](topAnchor);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide);
  *&v9 = MEMORY[0x277D82BD8](view2).n128_u64[0];
  [(CPSInstrumentClusterViewController *)selfCopy _transitionFromViews:v32 inView:v31 animated:1, v9];
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
}

- (void)navigator:(id)navigator didEndTrip:(BOOL)trip
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, navigator);
  tripCopy = trip;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  maneuversCardView = [(CPSInstrumentClusterViewController *)selfCopy maneuversCardView];
  v4 = MEMORY[0x277D82BD8](maneuversCardView).n128_u64[0];
  if (maneuversCardView)
  {
    maneuversCardView2 = [(CPSInstrumentClusterViewController *)selfCopy maneuversCardView];
    [v12 addObject:?];
    v4 = MEMORY[0x277D82BD8](maneuversCardView2).n128_u64[0];
  }

  pausedCardView = [(CPSInstrumentClusterViewController *)selfCopy pausedCardView];
  v5 = MEMORY[0x277D82BD8](pausedCardView).n128_u64[0];
  if (pausedCardView)
  {
    pausedCardView2 = [(CPSInstrumentClusterViewController *)selfCopy pausedCardView];
    [v12 addObject:?];
    v5 = MEMORY[0x277D82BD8](pausedCardView2).n128_u64[0];
  }

  [(CPSInstrumentClusterViewController *)selfCopy setManeuversCardView:*&v5];
  [(CPSInstrumentClusterViewController *)selfCopy setPausedCardView:0];
  [(CPSInstrumentClusterViewController *)selfCopy _transitionFromViews:v12 inView:0 animated:1];
  inactiveLabel = [(CPSInstrumentClusterViewController *)selfCopy inactiveLabel];
  [(CPSAbridgableLabel *)inactiveLabel setHidden:0];
  MEMORY[0x277D82BD8](inactiveLabel);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)_transitionFromViews:(id)views inView:(id)view animated:(BOOL)animated
{
  v65[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, views);
  v61 = 0;
  objc_storeStrong(&v61, view);
  animatedCopy = animated;
  if (animated)
  {
    v43 = location[0];
    v54 = MEMORY[0x277D85DD0];
    v55 = -1073741824;
    v56 = 0;
    v57 = __75__CPSInstrumentClusterViewController__transitionFromViews_inView_animated___block_invoke;
    v58 = &unk_278D913C0;
    v59 = MEMORY[0x277D82BE0](selfCopy);
    [v43 enumerateObjectsUsingBlock:&v54];
    if (v61)
    {
      leadingAnchor = [v61 leadingAnchor];
      view = [(CPSInstrumentClusterViewController *)selfCopy view];
      safeAreaLayoutGuide = [view safeAreaLayoutGuide];
      leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
      view2 = [(CPSInstrumentClusterViewController *)selfCopy view];
      [view2 frame];
      v52[1] = v5;
      v52[2] = v6;
      v52[3] = v7;
      v52[4] = v8;
      v53 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:*&v7];
      MEMORY[0x277D82BD8](view2);
      MEMORY[0x277D82BD8](leadingAnchor2);
      MEMORY[0x277D82BD8](safeAreaLayoutGuide);
      MEMORY[0x277D82BD8](view);
      *&v9 = MEMORY[0x277D82BD8](leadingAnchor).n128_u64[0];
      trailingAnchor = [v61 trailingAnchor];
      view3 = [(CPSInstrumentClusterViewController *)selfCopy view];
      safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
      trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
      view4 = [(CPSInstrumentClusterViewController *)selfCopy view];
      [view4 frame];
      v51[1] = v10;
      v51[2] = v11;
      v51[3] = v12;
      v51[4] = v13;
      v52[0] = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:*&v12];
      MEMORY[0x277D82BD8](view4);
      MEMORY[0x277D82BD8](trailingAnchor2);
      MEMORY[0x277D82BD8](safeAreaLayoutGuide2);
      MEMORY[0x277D82BD8](view3);
      *&v14 = MEMORY[0x277D82BD8](trailingAnchor).n128_u64[0];
      v39 = MEMORY[0x277CCAAD0];
      v65[0] = v53;
      v65[1] = v52[0];
      v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:{2, v14}];
      [v39 activateConstraints:?];
      *&v15 = MEMORY[0x277D82BD8](v40).n128_u64[0];
      view5 = [(CPSInstrumentClusterViewController *)selfCopy view];
      [view5 layoutIfNeeded];
      *&v16 = MEMORY[0x277D82BD8](view5).n128_u64[0];
      [v61 layoutIfNeeded];
      [v53 setConstant:?];
      [v52[0] setConstant:0.0];
      v42 = MEMORY[0x277D75D18];
      v46 = MEMORY[0x277D85DD0];
      v47 = -1073741824;
      v48 = 0;
      v49 = __75__CPSInstrumentClusterViewController__transitionFromViews_inView_animated___block_invoke_4;
      v50 = &unk_278D913E8;
      v51[0] = MEMORY[0x277D82BE0](selfCopy);
      [v42 animateWithDuration:0 delay:&v46 options:&__block_literal_global_14 animations:0.35 completion:0.0];
      objc_storeStrong(v51, 0);
      objc_storeStrong(v52, 0);
      objc_storeStrong(&v53, 0);
    }

    objc_storeStrong(&v59, 0);
  }

  else if (v61)
  {
    v17 = MEMORY[0x277CCAAD0];
    leadingAnchor3 = [v61 leadingAnchor];
    view6 = [(CPSInstrumentClusterViewController *)selfCopy view];
    safeAreaLayoutGuide3 = [view6 safeAreaLayoutGuide];
    leadingAnchor4 = [safeAreaLayoutGuide3 leadingAnchor];
    v24 = [leadingAnchor3 constraintEqualToAnchor:? constant:?];
    v64[0] = v24;
    trailingAnchor3 = [v61 trailingAnchor];
    view7 = [(CPSInstrumentClusterViewController *)selfCopy view];
    safeAreaLayoutGuide4 = [view7 safeAreaLayoutGuide];
    trailingAnchor4 = [safeAreaLayoutGuide4 trailingAnchor];
    v19 = [trailingAnchor3 constraintEqualToAnchor:0.0 constant:?];
    v64[1] = v19;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:2];
    [v17 activateConstraints:?];
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](trailingAnchor4);
    MEMORY[0x277D82BD8](safeAreaLayoutGuide4);
    MEMORY[0x277D82BD8](view7);
    MEMORY[0x277D82BD8](trailingAnchor3);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](leadingAnchor4);
    MEMORY[0x277D82BD8](safeAreaLayoutGuide3);
    MEMORY[0x277D82BD8](view6);
    MEMORY[0x277D82BD8](leadingAnchor3);
  }

  objc_storeStrong(&v61, 0);
  objc_storeStrong(location, 0);
}

void __75__CPSInstrumentClusterViewController__transitionFromViews_inView_animated___block_invoke(id *a1, void *a2, void *a3, void *a4)
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
  v28 = __75__CPSInstrumentClusterViewController__transitionFromViews_inView_animated___block_invoke_2;
  v29 = &unk_278D91370;
  v30 = MEMORY[0x277D82BE0](v39[0]);
  v31 = v33;
  v32 = v34;
  v19 = MEMORY[0x277D85DD0];
  v20 = -1073741824;
  v21 = 0;
  v22 = __75__CPSInstrumentClusterViewController__transitionFromViews_inView_animated___block_invoke_3;
  v23 = &unk_278D91398;
  v24 = MEMORY[0x277D82BE0](v39[0]);
  [v18 animateWithDuration:&v25 animations:0.35 completion:?];
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(v39, 0);
  objc_storeStrong(location, 0);
}

double __75__CPSInstrumentClusterViewController__transitionFromViews_inView_animated___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

@end