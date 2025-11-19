@interface CPSInstrumentClusterViewController
- (void)_transitionFromViews:(id)a3 inView:(id)a4 animated:(BOOL)a5;
- (void)loadView;
- (void)navigator:(id)a3 didEndTrip:(BOOL)a4;
- (void)navigator:(id)a3 pausedTripForReason:(unint64_t)a4 description:(id)a5 usingColor:(id)a6;
- (void)setAttributedInactiveVariants:(id)a3;
- (void)setGuidanceStyle:(int64_t)a3;
- (void)setInactiveVariants:(id)a3;
- (void)showManeuvers:(id)a3 usingDisplayStyles:(id)a4;
- (void)updateEstimates:(id)a3 forManeuver:(id)a4;
@end

@implementation CPSInstrumentClusterViewController

- (void)loadView
{
  v46[4] = *MEMORY[0x277D85DE8];
  v45 = self;
  v44 = a2;
  v43.receiver = self;
  v43.super_class = CPSInstrumentClusterViewController;
  [(CPSInstrumentClusterViewController *)&v43 loadView];
  v35 = [(CPSInstrumentClusterViewController *)v45 view];
  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2 = MEMORY[0x277D82BD8](v35).n128_u64[0];
  v37 = [(CPSInstrumentClusterViewController *)v45 view];
  v36 = [MEMORY[0x277D75348] tableBackgroundColor];
  [v37 setBackgroundColor:?];
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v37);
  v42 = objc_alloc_init(CPSAbridgableLabel);
  [(CPSInstrumentClusterViewController *)v45 setInactiveLabel:v42];
  v38 = [MEMORY[0x277D74300] systemFontOfSize:16.0 weight:*MEMORY[0x277D74418]];
  [(CPSAbridgableLabel *)v42 setFont:?];
  [(CPSAbridgableLabel *)v42 setTextAlignment:MEMORY[0x277D82BD8](v38).n128_f64[0]];
  [(CPSAbridgableLabel *)v42 setNumberOfLines:1];
  v39 = [MEMORY[0x277D75348] labelColor];
  [(CPSAbridgableLabel *)v42 setTextColor:?];
  [(CPSAbridgableLabel *)v42 setTranslatesAutoresizingMaskIntoConstraints:0, MEMORY[0x277D82BD8](v39).n128_f64[0]];
  v40 = [(CPSInstrumentClusterViewController *)v45 attributedInactiveVariants];
  v41 = [(NSArray *)v40 count];
  *&v3 = MEMORY[0x277D82BD8](v40).n128_u64[0];
  if (v41)
  {
    v34 = objc_opt_self();
    v33 = [v34 attributedInactiveVariants];
    [(CPUIAbridgableLabel *)v42 setAttributedTextVariants:?];
    MEMORY[0x277D82BD8](v33);
    v4 = MEMORY[0x277D82BD8](v34).n128_u64[0];
  }

  else
  {
    v31 = [(CPSInstrumentClusterViewController *)v45 inactiveVariants];
    v32 = [(NSArray *)v31 count];
    v4 = MEMORY[0x277D82BD8](v31).n128_u64[0];
    if (v32)
    {
      v30 = objc_opt_self();
      v29 = [v30 inactiveVariants];
      [(CPUIAbridgableLabel *)v42 setTextVariants:?];
      MEMORY[0x277D82BD8](v29);
      v4 = MEMORY[0x277D82BD8](v30).n128_u64[0];
    }
  }

  v6 = [(CPSInstrumentClusterViewController *)v45 view];
  [v6 addSubview:v42];
  *&v5 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  v7 = MEMORY[0x277CCAAD0];
  v28 = [(CPSInstrumentClusterViewController *)v45 view];
  v27 = [v28 safeAreaLayoutGuide];
  v26 = [v27 leadingAnchor];
  v25 = [(CPSAbridgableLabel *)v42 leadingAnchor];
  v24 = [v26 constraintEqualToAnchor:-8.0 constant:?];
  v46[0] = v24;
  v23 = [(CPSInstrumentClusterViewController *)v45 view];
  v22 = [v23 safeAreaLayoutGuide];
  v21 = [v22 trailingAnchor];
  v20 = [(CPSAbridgableLabel *)v42 trailingAnchor];
  v19 = [v21 constraintEqualToAnchor:8.0 constant:?];
  v46[1] = v19;
  v18 = [(CPSInstrumentClusterViewController *)v45 view];
  v17 = [v18 safeAreaLayoutGuide];
  v16 = [v17 centerYAnchor];
  v15 = [(CPSAbridgableLabel *)v42 centerYAnchor];
  v14 = [v16 constraintEqualToAnchor:? constant:?];
  v46[2] = v14;
  v13 = [(CPSInstrumentClusterViewController *)v45 view];
  v12 = [v13 safeAreaLayoutGuide];
  v11 = [v12 centerXAnchor];
  v10 = [(CPSAbridgableLabel *)v42 centerXAnchor];
  v9 = [v11 constraintEqualToAnchor:0.0 constant:?];
  v46[3] = v9;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:4];
  [v7 activateConstraints:?];
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
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  objc_storeStrong(&v42, 0);
}

- (void)setGuidanceStyle:(int64_t)a3
{
  if (self->_guidanceStyle != a3)
  {
    self->_guidanceStyle = a3;
    [(CPSInstrumentClusterViewController *)self _updateGuidanceStyle];
  }
}

- (void)setInactiveVariants:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  inactiveVariants = v8->_inactiveVariants;
  v8->_inactiveVariants = v3;
  *&v5 = MEMORY[0x277D82BD8](inactiveVariants).n128_u64[0];
  v6 = [(CPSInstrumentClusterViewController *)v8 inactiveLabel];
  [(CPUIAbridgableLabel *)v6 setTextVariants:v8->_inactiveVariants];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);
}

- (void)setAttributedInactiveVariants:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  attributedInactiveVariants = v8->_attributedInactiveVariants;
  v8->_attributedInactiveVariants = v3;
  *&v5 = MEMORY[0x277D82BD8](attributedInactiveVariants).n128_u64[0];
  v6 = [(CPSInstrumentClusterViewController *)v8 inactiveLabel];
  [(CPUIAbridgableLabel *)v6 setAttributedTextVariants:v8->_attributedInactiveVariants];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);
}

- (void)showManeuvers:(id)a3 usingDisplayStyles:(id)a4
{
  v37[2] = *MEMORY[0x277D85DE8];
  v36 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v34 = 0;
  objc_storeStrong(&v34, a4);
  v29 = [(CPSInstrumentClusterViewController *)v36 inactiveLabel];
  [(CPSAbridgableLabel *)v29 setHidden:1];
  MEMORY[0x277D82BD8](v29);
  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30 = [(CPSInstrumentClusterViewController *)v36 maneuversCardView];
  v4 = MEMORY[0x277D82BD8](v30).n128_u64[0];
  if (v30)
  {
    v27 = [(CPSInstrumentClusterViewController *)v36 maneuversCardView];
    [v33 addObject:?];
    v4 = MEMORY[0x277D82BD8](v27).n128_u64[0];
  }

  v26 = [(CPSInstrumentClusterViewController *)v36 pausedCardView];
  v5 = MEMORY[0x277D82BD8](v26).n128_u64[0];
  if (v26)
  {
    v25 = [(CPSInstrumentClusterViewController *)v36 pausedCardView];
    [v33 addObject:?];
    v5 = MEMORY[0x277D82BD8](v25).n128_u64[0];
  }

  v32 = [v33 count] != 0;
  [(CPSInstrumentClusterViewController *)v36 setManeuversCardView:?];
  [(CPSInstrumentClusterViewController *)v36 setPausedCardView:0];
  v31 = 0;
  if ([location[0] count])
  {
    v7 = objc_alloc_init(CPSDashboardManeuversCardView);
    v8 = v31;
    v31 = v7;
    v10 = [MEMORY[0x277D75348] clearColor];
    [(CPSDashboardManeuversCardView *)v31 setBackgroundColor:?];
    [(CPSDashboardManeuversCardView *)v31 setAllowsCustomBackgroundColorForManeuver:1, MEMORY[0x277D82BD8](v10).n128_f64[0]];
    [(CPSDashboardManeuversCardView *)v31 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [(CPSInstrumentClusterViewController *)v36 view];
    [v11 addSubview:v31];
    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(&v36->_maneuversCardView, v31);
    [(CPSDashboardManeuversCardView *)v31 showManeuvers:location[0] usingDisplayStyles:v34];
    v12 = MEMORY[0x277CCAAD0];
    v23 = [(CPSInstrumentClusterViewController *)v36 view];
    v22 = [v23 safeAreaLayoutGuide];
    v21 = [v22 topAnchor];
    v20 = [(CPSDashboardManeuversCardView *)v31 topAnchor];
    v19 = [v21 constraintEqualToAnchor:?];
    v37[0] = v19;
    v18 = [(CPSInstrumentClusterViewController *)v36 view];
    v17 = [v18 safeAreaLayoutGuide];
    v16 = [v17 bottomAnchor];
    v15 = [(CPSDashboardManeuversCardView *)v31 bottomAnchor];
    v14 = [v16 constraintEqualToAnchor:?];
    v37[1] = v14;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
    [v12 activateConstraints:?];
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
    *&v9 = MEMORY[0x277D82BD8](v23).n128_u64[0];
    v24 = [(CPSInstrumentClusterViewController *)v36 maneuversCardView];
    [(CPSDashboardManeuversCardView *)v24 setHidden:0];
    *&v6 = MEMORY[0x277D82BD8](v24).n128_u64[0];
  }

  [(CPSInstrumentClusterViewController *)v36 _transitionFromViews:v33 inView:v31 animated:v32, v6];
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
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
  v5 = [(CPSInstrumentClusterViewController *)v8 maneuversCardView];
  [(CPSDashboardManeuversCardView *)v5 updateEstimates:location[0] forManeuver:v6];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)navigator:(id)a3 pausedTripForReason:(unint64_t)a4 description:(id)a5 usingColor:(id)a6
{
  v38[2] = *MEMORY[0x277D85DE8];
  v37 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v35 = a4;
  v34 = 0;
  objc_storeStrong(&v34, a5);
  v33 = 0;
  objc_storeStrong(&v33, a6);
  v29 = [(CPSInstrumentClusterViewController *)v37 inactiveLabel];
  [(CPSAbridgableLabel *)v29 setHidden:1];
  MEMORY[0x277D82BD8](v29);
  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30 = [(CPSInstrumentClusterViewController *)v37 maneuversCardView];
  v6 = MEMORY[0x277D82BD8](v30).n128_u64[0];
  if (v30)
  {
    v25 = [(CPSInstrumentClusterViewController *)v37 maneuversCardView];
    [v32 addObject:?];
    v6 = MEMORY[0x277D82BD8](v25).n128_u64[0];
  }

  v24 = [(CPSInstrumentClusterViewController *)v37 pausedCardView];
  v7 = MEMORY[0x277D82BD8](v24).n128_u64[0];
  if (v24)
  {
    v23 = [(CPSInstrumentClusterViewController *)v37 pausedCardView];
    [v32 addObject:?];
    v7 = MEMORY[0x277D82BD8](v23).n128_u64[0];
  }

  [(CPSInstrumentClusterViewController *)v37 setManeuversCardView:*&v7];
  [(CPSInstrumentClusterViewController *)v37 setPausedCardView:0];
  v8 = [CPSClusterPausedCardView alloc];
  v31 = [(CPSPausedCardView *)v8 initWithReason:v35 title:v34 backgroundColor:v33];
  v10 = [(CPSInstrumentClusterViewController *)v37 view];
  [v10 addSubview:v31];
  MEMORY[0x277D82BD8](v10);
  objc_storeStrong(&v37->_pausedCardView, v31);
  v11 = MEMORY[0x277CCAAD0];
  v22 = [(CPSInstrumentClusterViewController *)v37 view];
  v21 = [v22 safeAreaLayoutGuide];
  v20 = [v21 topAnchor];
  v19 = [(CPSClusterPausedCardView *)v31 topAnchor];
  v18 = [v20 constraintEqualToAnchor:?];
  v38[0] = v18;
  v17 = [(CPSInstrumentClusterViewController *)v37 view];
  v16 = [v17 safeAreaLayoutGuide];
  v15 = [v16 bottomAnchor];
  v14 = [(CPSClusterPausedCardView *)v31 bottomAnchor];
  v13 = [v15 constraintEqualToAnchor:?];
  v38[1] = v13;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
  [v11 activateConstraints:?];
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
  *&v9 = MEMORY[0x277D82BD8](v22).n128_u64[0];
  [(CPSInstrumentClusterViewController *)v37 _transitionFromViews:v32 inView:v31 animated:1, v9];
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
}

- (void)navigator:(id)a3 didEndTrip:(BOOL)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = a4;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = [(CPSInstrumentClusterViewController *)v15 maneuversCardView];
  v4 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  if (v11)
  {
    v9 = [(CPSInstrumentClusterViewController *)v15 maneuversCardView];
    [v12 addObject:?];
    v4 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  }

  v8 = [(CPSInstrumentClusterViewController *)v15 pausedCardView];
  v5 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if (v8)
  {
    v7 = [(CPSInstrumentClusterViewController *)v15 pausedCardView];
    [v12 addObject:?];
    v5 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  }

  [(CPSInstrumentClusterViewController *)v15 setManeuversCardView:*&v5];
  [(CPSInstrumentClusterViewController *)v15 setPausedCardView:0];
  [(CPSInstrumentClusterViewController *)v15 _transitionFromViews:v12 inView:0 animated:1];
  v6 = [(CPSInstrumentClusterViewController *)v15 inactiveLabel];
  [(CPSAbridgableLabel *)v6 setHidden:0];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)_transitionFromViews:(id)a3 inView:(id)a4 animated:(BOOL)a5
{
  v65[2] = *MEMORY[0x277D85DE8];
  v63 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v61 = 0;
  objc_storeStrong(&v61, a4);
  v60 = a5;
  if (a5)
  {
    v43 = location[0];
    v54 = MEMORY[0x277D85DD0];
    v55 = -1073741824;
    v56 = 0;
    v57 = __75__CPSInstrumentClusterViewController__transitionFromViews_inView_animated___block_invoke;
    v58 = &unk_278D913C0;
    v59 = MEMORY[0x277D82BE0](v63);
    [v43 enumerateObjectsUsingBlock:&v54];
    if (v61)
    {
      v33 = [v61 leadingAnchor];
      v32 = [(CPSInstrumentClusterViewController *)v63 view];
      v31 = [v32 safeAreaLayoutGuide];
      v30 = [v31 leadingAnchor];
      v29 = [(CPSInstrumentClusterViewController *)v63 view];
      [v29 frame];
      v52[1] = v5;
      v52[2] = v6;
      v52[3] = v7;
      v52[4] = v8;
      v53 = [v33 constraintEqualToAnchor:v30 constant:*&v7];
      MEMORY[0x277D82BD8](v29);
      MEMORY[0x277D82BD8](v30);
      MEMORY[0x277D82BD8](v31);
      MEMORY[0x277D82BD8](v32);
      *&v9 = MEMORY[0x277D82BD8](v33).n128_u64[0];
      v38 = [v61 trailingAnchor];
      v37 = [(CPSInstrumentClusterViewController *)v63 view];
      v36 = [v37 safeAreaLayoutGuide];
      v35 = [v36 trailingAnchor];
      v34 = [(CPSInstrumentClusterViewController *)v63 view];
      [v34 frame];
      v51[1] = v10;
      v51[2] = v11;
      v51[3] = v12;
      v51[4] = v13;
      v52[0] = [v38 constraintEqualToAnchor:v35 constant:*&v12];
      MEMORY[0x277D82BD8](v34);
      MEMORY[0x277D82BD8](v35);
      MEMORY[0x277D82BD8](v36);
      MEMORY[0x277D82BD8](v37);
      *&v14 = MEMORY[0x277D82BD8](v38).n128_u64[0];
      v39 = MEMORY[0x277CCAAD0];
      v65[0] = v53;
      v65[1] = v52[0];
      v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:{2, v14}];
      [v39 activateConstraints:?];
      *&v15 = MEMORY[0x277D82BD8](v40).n128_u64[0];
      v41 = [(CPSInstrumentClusterViewController *)v63 view];
      [v41 layoutIfNeeded];
      *&v16 = MEMORY[0x277D82BD8](v41).n128_u64[0];
      [v61 layoutIfNeeded];
      [v53 setConstant:?];
      [v52[0] setConstant:0.0];
      v42 = MEMORY[0x277D75D18];
      v46 = MEMORY[0x277D85DD0];
      v47 = -1073741824;
      v48 = 0;
      v49 = __75__CPSInstrumentClusterViewController__transitionFromViews_inView_animated___block_invoke_4;
      v50 = &unk_278D913E8;
      v51[0] = MEMORY[0x277D82BE0](v63);
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
    v28 = [v61 leadingAnchor];
    v27 = [(CPSInstrumentClusterViewController *)v63 view];
    v26 = [v27 safeAreaLayoutGuide];
    v25 = [v26 leadingAnchor];
    v24 = [v28 constraintEqualToAnchor:? constant:?];
    v64[0] = v24;
    v23 = [v61 trailingAnchor];
    v22 = [(CPSInstrumentClusterViewController *)v63 view];
    v21 = [v22 safeAreaLayoutGuide];
    v20 = [v21 trailingAnchor];
    v19 = [v23 constraintEqualToAnchor:0.0 constant:?];
    v64[1] = v19;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:2];
    [v17 activateConstraints:?];
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