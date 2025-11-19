@interface CPSNavigationCardViewController
- (CGRect)adjustedShadowConstraintsWithFrame:(CGRect)a3;
- (id)createShadowViewWithFrame:(CGRect)a3;
- (void)_showPausedViewForReason:(unint64_t)a3 description:(id)a4 pauseCardColor:(id)a5;
- (void)_transitionFromViews:(id)a3 inView:(id)a4;
- (void)_updateCardBackgroundColors;
- (void)_updateHelperConstraints;
- (void)_updateLinkedCheck;
- (void)_updateNavigationCardHidden;
- (void)_updateSizingViewConstraintsForView:(id)a3;
- (void)availableHeightChangedTo:(double)a3;
- (void)navigator:(id)a3 didEndTrip:(BOOL)a4;
- (void)navigator:(id)a3 pausedTripForReason:(unint64_t)a4 description:(id)a5 usingColor:(id)a6;
- (void)setGuidanceBackgroundColor:(id)a3;
- (void)setNavigatingBundleIdentifier:(id)a3;
- (void)setNavigationCardHidden:(BOOL)a3 forRequester:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)showManeuvers:(id)a3 usingDisplayStyles:(id)a4;
- (void)updateEstimates:(id)a3 forManeuver:(id)a4;
- (void)updateTripEstimates:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CPSNavigationCardViewController

- (void)_updateHelperConstraints
{
  v56[2] = *MEMORY[0x277D85DE8];
  v53 = self;
  location[1] = a2;
  location[0] = 0;
  v51 = [(CPSNavigationCardViewController *)self currentManeuversCardView];
  *&v2 = MEMORY[0x277D82BD8](v51).n128_u64[0];
  if (v51)
  {
    v50 = [(CPSNavigationCardViewController *)v53 layoutHelperView];
    v49 = [(CPSLayoutHelperView *)v50 topAnchor];
    v48 = [(CPSNavigationCardViewController *)v53 currentManeuversCardView];
    v47 = [(CPSManeuversCardView *)v48 contentView];
    v46 = [(UIView *)v47 topAnchor];
    v45 = [v49 constraintEqualToAnchor:?];
    v56[0] = v45;
    v44 = [(CPSNavigationCardViewController *)v53 layoutHelperView];
    v43 = [(CPSLayoutHelperView *)v44 bottomAnchor];
    v42 = [(CPSNavigationCardViewController *)v53 currentManeuversCardView];
    v41 = [(CPSManeuversCardView *)v42 contentView];
    v40 = [(UIView *)v41 bottomAnchor];
    v39 = [v43 constraintEqualToAnchor:?];
    v56[1] = v39;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
    v4 = location[0];
    location[0] = v3;
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v49);
    v5 = MEMORY[0x277D82BD8](v50).n128_u64[0];
  }

  else
  {
    v38 = [(CPSNavigationCardViewController *)v53 currentPausedCardView];
    *&v6 = MEMORY[0x277D82BD8](v38).n128_u64[0];
    if (v38)
    {
      v37 = [(CPSNavigationCardViewController *)v53 layoutHelperView];
      v36 = [(CPSLayoutHelperView *)v37 topAnchor];
      v35 = [(CPSNavigationCardViewController *)v53 currentPausedCardView];
      v34 = [(CPSPausedCardView *)v35 contentView];
      v33 = [(UIView *)v34 topAnchor];
      v32 = [v36 constraintEqualToAnchor:?];
      v55[0] = v32;
      v31 = [(CPSNavigationCardViewController *)v53 layoutHelperView];
      v30 = [(CPSLayoutHelperView *)v31 bottomAnchor];
      v29 = [(CPSNavigationCardViewController *)v53 currentPausedCardView];
      v28 = [(CPSPausedCardView *)v29 contentView];
      v27 = [(UIView *)v28 bottomAnchor];
      v26 = [v30 constraintEqualToAnchor:?];
      v55[1] = v26;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
      v8 = location[0];
      location[0] = v7;
      MEMORY[0x277D82BD8](v8);
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
      v5 = MEMORY[0x277D82BD8](v37).n128_u64[0];
    }

    else
    {
      v25 = [(CPSNavigationCardViewController *)v53 layoutHelperView];
      v24 = [(CPSLayoutHelperView *)v25 topAnchor];
      v23 = [(CPSNavigationCardViewController *)v53 view];
      v22 = [v23 topAnchor];
      v21 = [v24 constraintEqualToAnchor:?];
      v54[0] = v21;
      v20 = [(CPSNavigationCardViewController *)v53 layoutHelperView];
      v19 = [(CPSLayoutHelperView *)v20 heightAnchor];
      v18 = [v19 constraintEqualToConstant:0.0];
      v54[1] = v18;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
      v10 = location[0];
      location[0] = v9;
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
      MEMORY[0x277D82BD8](v20);
      MEMORY[0x277D82BD8](v21);
      MEMORY[0x277D82BD8](v22);
      MEMORY[0x277D82BD8](v23);
      MEMORY[0x277D82BD8](v24);
      v5 = MEMORY[0x277D82BD8](v25).n128_u64[0];
    }
  }

  v16 = [(CPSNavigationCardViewController *)v53 layoutHelperVerticalConstraints];
  v17 = [location[0] isEqualToArray:?];
  *&v11 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  if ((v17 & 1) == 0)
  {
    v15 = [(CPSNavigationCardViewController *)v53 layoutHelperVerticalConstraints];
    v12 = MEMORY[0x277D82BD8](v15).n128_u64[0];
    if (v15)
    {
      v13 = MEMORY[0x277CCAAD0];
      v14 = [(CPSNavigationCardViewController *)v53 layoutHelperVerticalConstraints];
      [v13 deactivateConstraints:?];
      v12 = MEMORY[0x277D82BD8](v14).n128_u64[0];
    }

    [MEMORY[0x277CCAAD0] activateConstraints:{location[0], *&v12}];
    [(CPSNavigationCardViewController *)v53 setLayoutHelperVerticalConstraints:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (void)viewWillLayoutSubviews
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSNavigationCardViewController;
  [(CPSNavigationCardViewController *)&v2 viewWillLayoutSubviews];
}

- (void)viewDidLoad
{
  v34[6] = *MEMORY[0x277D85DE8];
  v33 = self;
  v32 = a2;
  v31.receiver = self;
  v31.super_class = CPSNavigationCardViewController;
  [(CPSNavigationCardViewController *)&v31 viewDidLoad];
  v30 = [(CPSNavigationCardViewController *)v33 view];
  [v30 setUserInteractionEnabled:0];
  v29 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v29 setClipsToBounds:1];
  v6 = [(CPSNavigationCardViewController *)v33 view];
  [v6 addSubview:v29];
  *&v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  [(CPSNavigationCardViewController *)v33 setContainerView:v29, v2];
  v28 = objc_alloc_init(CPSLayoutHelperView);
  [(CPSLayoutHelperView *)v28 setClipsToBounds:1];
  v7 = [(CPSNavigationCardViewController *)v33 view];
  [v7 addSubview:v28];
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&v33->_layoutHelperView, v28);
  LODWORD(v3) = 1112014848;
  [(CPSLayoutHelperView *)v28 setContentHuggingPriority:1 forAxis:v3];
  v10 = [v29 topAnchor];
  v9 = [v30 topAnchor];
  v8 = [v10 constraintEqualToAnchor:?];
  [(CPSNavigationCardViewController *)v33 setContainerViewTopConstraint:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  *&v4 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  v12 = [v29 heightAnchor];
  v11 = [v12 constraintEqualToConstant:0.0];
  [(CPSNavigationCardViewController *)v33 setContainerViewHeightConstraint:?];
  MEMORY[0x277D82BD8](v11);
  *&v5 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  v13 = MEMORY[0x277CCAAD0];
  v27 = [(CPSNavigationCardViewController *)v33 containerViewTopConstraint];
  v34[0] = v27;
  v26 = [(CPSNavigationCardViewController *)v33 containerViewHeightConstraint];
  v34[1] = v26;
  v25 = [v29 leftAnchor];
  v24 = [v30 leftAnchor];
  v23 = [v25 constraintEqualToAnchor:?];
  v34[2] = v23;
  v22 = [v29 rightAnchor];
  v21 = [v30 rightAnchor];
  v20 = [v22 constraintEqualToAnchor:?];
  v34[3] = v20;
  v19 = [(CPSLayoutHelperView *)v28 leadingAnchor];
  v18 = [v30 leadingAnchor];
  v17 = [v19 constraintEqualToAnchor:?];
  v34[4] = v17;
  v16 = [(CPSLayoutHelperView *)v28 widthAnchor];
  v15 = [v16 constraintEqualToConstant:1.0];
  v34[5] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:6];
  [v13 activateConstraints:?];
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
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
}

- (void)availableHeightChangedTo:(double)a3
{
  v29 = [(CPSNavigationCardViewController *)self currentManeuversCardView];
  *&v3 = MEMORY[0x277D82BD8](v29).n128_u64[0];
  if (v29)
  {
    v27 = [(CPSNavigationCardViewController *)self currentManeuversCardView];
    v26 = [(CPSManeuversCardView *)v27 contentView];
    [(UIView *)v26 frame];
    v28 = v4;
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    if (v28 > a3)
    {
      v22 = [(CPSNavigationCardViewController *)self currentManeuversCardView];
      v21 = [(CPSNavigationCardViewController *)self containerView];
      [(UIView *)v21 bounds];
      CGSizeMake_8();
      v23 = [(CPSManeuversCardView *)v22 canFitSize:v5, v6];
      MEMORY[0x277D82BD8](v21);
      *&v7 = MEMORY[0x277D82BD8](v22).n128_u64[0];
      if (v23)
      {
        v19 = [(CPSNavigationCardViewController *)self currentManeuversCardView];
        [(CPSManeuversCardView *)v19 invalidate];
        v20 = [(CPSNavigationCardViewController *)self containerViewHeightConstraint];
        [(NSLayoutConstraint *)v20 setConstant:a3];
        [(CPSNavigationCardViewController *)self setNavigationCardHidden:0 forRequester:@"Sizing" animated:1 completion:0, MEMORY[0x277D82BD8](v20).n128_f64[0]];
      }

      else
      {
        [(CPSNavigationCardViewController *)self setNavigationCardHidden:1 forRequester:@"Sizing" animated:1 completion:0, v7];
      }
    }

    else
    {
      v24 = [(CPSNavigationCardViewController *)self currentManeuversCardView];
      [(CPSManeuversCardView *)v24 invalidate];
      v25 = [(CPSNavigationCardViewController *)self containerViewHeightConstraint];
      [(NSLayoutConstraint *)v25 setConstant:a3];
      [(CPSNavigationCardViewController *)self setNavigationCardHidden:0 forRequester:@"Sizing" animated:1 completion:0, MEMORY[0x277D82BD8](v25).n128_f64[0]];
    }
  }

  else
  {
    v18 = [(CPSNavigationCardViewController *)self currentPausedCardView];
    *&v8 = MEMORY[0x277D82BD8](v18).n128_u64[0];
    if (v18)
    {
      v16 = [(CPSNavigationCardViewController *)self currentPausedCardView];
      v15 = [(CPSPausedCardView *)v16 contentView];
      [(UIView *)v15 frame];
      v17 = v9;
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);
      if (v17 > a3)
      {
        [(CPSNavigationCardViewController *)self setNavigationCardHidden:1 forRequester:@"Sizing" animated:1 completion:0, v17];
        v13 = [(CPSNavigationCardViewController *)self containerViewTopConstraint];
        v12 = [(CPSNavigationCardViewController *)self currentPausedCardView];
        [(CPSPausedCardView *)v12 frame];
        [(NSLayoutConstraint *)v13 setConstant:-(v10 + 8.0 + 44.0)];
        MEMORY[0x277D82BD8](v12);
        MEMORY[0x277D82BD8](v13);
      }

      else
      {
        v14 = [(CPSNavigationCardViewController *)self containerViewHeightConstraint];
        [(NSLayoutConstraint *)v14 setConstant:a3];
        [(CPSNavigationCardViewController *)self setNavigationCardHidden:0 forRequester:@"Sizing" animated:1 completion:0, MEMORY[0x277D82BD8](v14).n128_f64[0]];
      }
    }

    else
    {
      v11 = [(CPSNavigationCardViewController *)self containerViewHeightConstraint];
      [(NSLayoutConstraint *)v11 setConstant:a3];
      [(CPSNavigationCardViewController *)self setNavigationCardHidden:0 forRequester:@"Sizing" animated:1 completion:0, MEMORY[0x277D82BD8](v11).n128_f64[0]];
    }
  }
}

- (void)setNavigationCardHidden:(BOOL)a3 forRequester:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v75 = self;
  v74 = a2;
  v73 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v71 = a5;
  v70 = 0;
  objc_storeStrong(&v70, a6);
  if (v73)
  {
    if (!v75->_navigationCardHiddenRequesters)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
      navigationCardHiddenRequesters = v75->_navigationCardHiddenRequesters;
      v75->_navigationCardHiddenRequesters = v6;
      MEMORY[0x277D82BD8](navigationCardHiddenRequesters);
    }

    v30 = [(CPSNavigationCardViewController *)v75 navigationCardHiddenRequesters];
    [(NSMutableSet *)v30 addObject:location];
    v8 = MEMORY[0x277D82BD8](v30).n128_u64[0];
  }

  else
  {
    v29 = [(CPSNavigationCardViewController *)v75 navigationCardHiddenRequesters];
    [(NSMutableSet *)v29 removeObject:location];
    v8 = MEMORY[0x277D82BD8](v29).n128_u64[0];
  }

  [(CPSNavigationCardViewController *)v75 _updateNavigationCardHidden];
  if (v71)
  {
    v68 = 0u;
    v69 = 0u;
    v28 = [(CPSNavigationCardViewController *)v75 currentManeuversCardView];
    v66 = 0;
    v64 = 0;
    v62 = 0;
    v60 = 0;
    v58 = 0;
    if (v28)
    {
      v67 = [(CPSNavigationCardViewController *)v75 currentManeuversCardView];
      v66 = 1;
      v65 = [(CPSManeuversCardView *)v67 contentView];
      v64 = 1;
      [(UIView *)v65 frame];
      *&v68 = v9;
      *(&v68 + 1) = v10;
      *&v69 = v11;
      *(&v69 + 1) = v12;
    }

    else
    {
      v63 = [(CPSNavigationCardViewController *)v75 currentPausedCardView];
      v62 = 1;
      if (v63)
      {
        v61 = [(CPSNavigationCardViewController *)v75 currentPausedCardView];
        v60 = 1;
        v59 = [(CPSPausedCardView *)v61 contentView];
        v58 = 1;
        [(UIView *)v59 frame];
        *&v68 = v13;
        *(&v68 + 1) = v14;
        *&v69 = v15;
        *(&v69 + 1) = v16;
      }

      else
      {
        v68 = *MEMORY[0x277CBF3A0];
        v69 = *(MEMORY[0x277CBF3A0] + 16);
      }
    }

    if (v58)
    {
      MEMORY[0x277D82BD8](v59);
    }

    if (v60)
    {
      MEMORY[0x277D82BD8](v61);
    }

    if (v62)
    {
      MEMORY[0x277D82BD8](v63);
    }

    if (v64)
    {
      MEMORY[0x277D82BD8](v65);
    }

    if (v66)
    {
      MEMORY[0x277D82BD8](v67);
    }

    MEMORY[0x277D82BD8](v28);
    [(CPSNavigationCardViewController *)v75 adjustedShadowConstraintsWithFrame:v68, v69];
    *&v56 = v17;
    *(&v56 + 1) = v18;
    *&v57 = v19;
    *(&v57 + 1) = v20;
    v55 = 8.0;
    v26 = [(CPSNavigationCardViewController *)v75 containerViewTopConstraint];
    [(NSLayoutConstraint *)v26 constant];
    v27 = fabs(v21);
    MEMORY[0x277D82BD8](v26);
    v54 = v27;
    *&v52 = 0.4;
    v51 = 0.4 * (v27 / 8.0);
    if (v51 <= 0.4)
    {
      v25 = *&v52;
    }

    else
    {
      v25 = v51;
    }

    v50 = v25;
    v53 = v25;
    v49 = v25;
    v48 = 0x3FE999999999999ALL;
    if (v25 >= 0.8)
    {
      v24 = *&v48;
    }

    else
    {
      v24 = v49;
    }

    v47[1] = *&v24;
    v53 = v24;
    objc_initWeak(v47, v75);
    v23 = MEMORY[0x277D75D18];
    v22 = v53;
    v39 = MEMORY[0x277D85DD0];
    v40 = -1073741824;
    v41 = 0;
    v42 = __92__CPSNavigationCardViewController_setNavigationCardHidden_forRequester_animated_completion___block_invoke;
    v43 = &unk_278D92EE8;
    objc_copyWeak(&v44, v47);
    v45 = v56;
    v46 = v57;
    v33 = MEMORY[0x277D85DD0];
    v34 = -1073741824;
    v35 = 0;
    v36 = __92__CPSNavigationCardViewController_setNavigationCardHidden_forRequester_animated_completion___block_invoke_2;
    v37 = &unk_278D92F10;
    v38 = MEMORY[0x277D82BE0](v70);
    [v23 animateWithDuration:512 delay:&v39 usingSpringWithDamping:&v33 initialSpringVelocity:v22 options:0.0 animations:10.0 completion:?];
    objc_storeStrong(&v38, 0);
    objc_destroyWeak(&v44);
    objc_destroyWeak(v47);
  }

  else if (v70)
  {
    (*(v70 + 2))();
  }

  objc_storeStrong(&v70, 0);
  objc_storeStrong(&location, 0);
}

void __92__CPSNavigationCardViewController_setNavigationCardHidden_forRequester_animated_completion___block_invoke(uint64_t a1)
{
  v5[2] = a1;
  v5[1] = a1;
  v5[0] = objc_loadWeakRetained((a1 + 32));
  v2 = [v5[0] view];
  [v2 layoutIfNeeded];
  *&v1 = MEMORY[0x277D82BD8](v2).n128_u64[0];
  v4 = [v5[0] shadowCardView];
  [v4 setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(v5, 0);
}

uint64_t __92__CPSNavigationCardViewController_setNavigationCardHidden_forRequester_animated_completion___block_invoke_2(uint64_t result)
{
  if (*(result + 32))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)_updateNavigationCardHidden
{
  v14 = [(CPSNavigationCardViewController *)self navigationCardHiddenRequesters];
  v15 = [(NSMutableSet *)v14 count];
  *&v2 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  if (v15)
  {
    if (![(CPSNavigationCardViewController *)self navigationCardHidden])
    {
      [(CPSNavigationCardViewController *)self setNavigationCardHidden:1];
      v13 = [(CPSNavigationCardViewController *)self currentManeuversCardView];
      *&v3 = MEMORY[0x277D82BD8](v13).n128_u64[0];
      if (v13)
      {
        v12 = [(CPSNavigationCardViewController *)self containerViewTopConstraint];
        v11 = [(CPSNavigationCardViewController *)self currentManeuversCardView];
        [(CPSManeuversCardView *)v11 frame];
        [(NSLayoutConstraint *)v12 setConstant:-(v4 + 48.0)];
        MEMORY[0x277D82BD8](v11);
        MEMORY[0x277D82BD8](v12);
      }

      else
      {
        v10 = [(CPSNavigationCardViewController *)self currentPausedCardView];
        *&v5 = MEMORY[0x277D82BD8](v10).n128_u64[0];
        if (v10)
        {
          v9 = [(CPSNavigationCardViewController *)self containerViewTopConstraint];
          v8 = [(CPSNavigationCardViewController *)self currentPausedCardView];
          [(CPSPausedCardView *)v8 frame];
          [(NSLayoutConstraint *)v9 setConstant:-(v6 + 8.0)];
          MEMORY[0x277D82BD8](v8);
          MEMORY[0x277D82BD8](v9);
        }
      }
    }
  }

  else if ([(CPSNavigationCardViewController *)self navigationCardHidden])
  {
    [(CPSNavigationCardViewController *)self setNavigationCardHidden:0];
    v7 = [(CPSNavigationCardViewController *)self containerViewTopConstraint];
    [(NSLayoutConstraint *)v7 setConstant:0.0];
    MEMORY[0x277D82BD8](v7);
  }
}

- (void)showManeuvers:(id)a3 usingDisplayStyles:(id)a4
{
  v36[2] = *MEMORY[0x277D85DE8];
  v35 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v33 = 0;
  objc_storeStrong(&v33, a4);
  v22 = [(CPSNavigationCardViewController *)v35 currentManeuversCardView];
  v30 = 0;
  v28 = 0;
  v23 = 0;
  if (v22)
  {
    v31 = [(CPSNavigationCardViewController *)v35 currentManeuversCardView];
    v30 = 1;
    v29 = [(CPSManeuversCardView *)v31 maneuvers];
    v28 = 1;
    v23 = BSEqualObjects();
  }

  if (v28)
  {
    MEMORY[0x277D82BD8](v29);
  }

  if (v30)
  {
    MEMORY[0x277D82BD8](v31);
  }

  *&v4 = MEMORY[0x277D82BD8](v22).n128_u64[0];
  v32 = v23 & 1;
  if (v23)
  {
    v20 = [(CPSNavigationCardViewController *)v35 currentManeuversCardView];
    [(CPSManeuversCardView *)v20 showManeuvers:location[0] usingDisplayStyles:MEMORY[0x277CBEBF8]];
    MEMORY[0x277D82BD8](v20);
    v27 = 1;
  }

  else
  {
    v26 = [(CPSNavigationCardViewController *)v35 containerView];
    v19 = [(CPSNavigationCardViewController *)v35 containerView];
    v18 = [(UIView *)v19 subviews];
    v25 = [(NSArray *)v18 copy];
    MEMORY[0x277D82BD8](v18);
    *&v5 = MEMORY[0x277D82BD8](v19).n128_u64[0];
    v24 = 0;
    [(CPSNavigationCardViewController *)v35 setCurrentManeuversCardView:v5];
    [(CPSNavigationCardViewController *)v35 setCurrentPausedCardView:0];
    if ([location[0] count])
    {
      v7 = [CPSManeuversCardView alloc];
      v8 = [(CPSManeuversCardView *)v7 initWithManeuvers:location[0]];
      v9 = v24;
      v24 = v8;
      [v26 addSubview:{v8, MEMORY[0x277D82BD8](v9).n128_f64[0]}];
      [(CPSNavigationCardViewController *)v35 setCurrentManeuversCardView:v24];
      [(CPSNavigationCardViewController *)v35 _updateCardBackgroundColors];
      v10 = MEMORY[0x277CCAAD0];
      v17 = [(CPSManeuversCardView *)v24 topAnchor];
      v16 = [v26 topAnchor];
      v15 = [v17 constraintEqualToAnchor:?];
      v36[0] = v15;
      v14 = [(CPSManeuversCardView *)v24 bottomAnchor];
      v13 = [v26 bottomAnchor];
      v12 = [v14 constraintEqualToAnchor:?];
      v36[1] = v12;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
      [v10 activateConstraints:?];
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);
      *&v6 = MEMORY[0x277D82BD8](v17).n128_u64[0];
    }

    [(CPSNavigationCardViewController *)v35 _updateHelperConstraints];
    [(CPSNavigationCardViewController *)v35 _transitionFromViews:v25 inView:v24];
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
    v27 = 0;
  }

  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

- (void)updateEstimates:(id)a3 forManeuver:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = [(CPSNavigationCardViewController *)v10 currentManeuversCardView];
  *&v4 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v7)
  {
    v5 = [(CPSNavigationCardViewController *)v10 currentManeuversCardView];
    [(CPSManeuversCardView *)v5 updateEstimates:location[0] forManeuver:v8];
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)navigator:(id)a3 pausedTripForReason:(unint64_t)a4 description:(id)a5 usingColor:(id)a6
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = a4;
  v10 = 0;
  objc_storeStrong(&v10, a5);
  v9 = 0;
  objc_storeStrong(&v9, a6);
  [(CPSNavigationCardViewController *)v13 _showPausedViewForReason:v11 description:v10 pauseCardColor:v9];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)_showPausedViewForReason:(unint64_t)a3 description:(id)a4 pauseCardColor:(id)a5
{
  v32[3] = *MEMORY[0x277D85DE8];
  v31 = self;
  v30 = a2;
  v29 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v27 = 0;
  objc_storeStrong(&v27, a5);
  v11 = [(CPSNavigationCardViewController *)v31 containerView];
  v10 = [(UIView *)v11 subviews];
  v26 = [(NSArray *)v10 copy];
  MEMORY[0x277D82BD8](v10);
  *&v5 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  [(CPSNavigationCardViewController *)v31 setCurrentManeuversCardView:0, v5];
  [(CPSNavigationCardViewController *)v31 setCurrentPausedCardView:0];
  v6 = [CPSPausedCardView alloc];
  v25 = [(CPSPausedCardView *)v6 initWithReason:v29 title:location backgroundColor:v27];
  [(CPSNavigationCardViewController *)v31 setCurrentPausedCardView:v25];
  [(CPSNavigationCardViewController *)v31 _updateCardBackgroundColors];
  v12 = [(CPSNavigationCardViewController *)v31 containerView];
  [(UIView *)v12 addSubview:v25];
  *&v7 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  v13 = MEMORY[0x277CCAAD0];
  v24 = [(CPSPausedCardView *)v25 topAnchor];
  v23 = [(CPSNavigationCardViewController *)v31 containerView];
  v22 = [(UIView *)v23 topAnchor];
  v21 = [v24 constraintEqualToAnchor:?];
  v32[0] = v21;
  v20 = [(CPSPausedCardView *)v25 heightAnchor];
  v19 = [v20 constraintGreaterThanOrEqualToConstant:56.0];
  v32[1] = v19;
  v18 = [(CPSPausedCardView *)v25 bottomAnchor];
  v17 = [(CPSNavigationCardViewController *)v31 containerView];
  v16 = [(UIView *)v17 bottomAnchor];
  v15 = [v18 constraintLessThanOrEqualToAnchor:?];
  v32[2] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:3];
  [v13 activateConstraints:?];
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
  *&v8 = MEMORY[0x277D82BD8](v24).n128_u64[0];
  [(CPSNavigationCardViewController *)v31 _updateHelperConstraints];
  [(CPSNavigationCardViewController *)v31 _transitionFromViews:v26 inView:v25];
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&location, 0);
}

- (void)_transitionFromViews:(id)a3 inView:(id)a4
{
  v126[2] = *MEMORY[0x277D85DE8];
  v124 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v122 = 0;
  objc_storeStrong(&v122, a4);
  if ([location[0] count])
  {
    v121 = v122 == 0;
    v83 = [(CPSNavigationCardViewController *)v124 shadowCardView];
    [(UIView *)v83 removeFromSuperview];
    MEMORY[0x277D82BD8](v83);
    v84 = location[0];
    v114 = MEMORY[0x277D85DD0];
    v115 = -1073741824;
    v116 = 0;
    v117 = __63__CPSNavigationCardViewController__transitionFromViews_inView___block_invoke;
    v118 = &unk_278D92F88;
    v119 = MEMORY[0x277D82BE0](v124);
    v120 = v121;
    [v84 enumerateObjectsUsingBlock:&v114];
    if (v122)
    {
      v69 = [v122 leadingAnchor];
      v68 = [(CPSNavigationCardViewController *)v124 containerView];
      v67 = [(UIView *)v68 leadingAnchor];
      v66 = [(CPSNavigationCardViewController *)v124 containerView];
      [(UIView *)v66 frame];
      v112[1] = v4;
      v112[2] = v5;
      v112[3] = v6;
      v112[4] = v7;
      v113 = [v69 constraintEqualToAnchor:v67 constant:*&v6 + 8.0];
      MEMORY[0x277D82BD8](v66);
      MEMORY[0x277D82BD8](v67);
      MEMORY[0x277D82BD8](v68);
      *&v8 = MEMORY[0x277D82BD8](v69).n128_u64[0];
      v73 = [v122 trailingAnchor];
      v72 = [(CPSNavigationCardViewController *)v124 containerView];
      v71 = [(UIView *)v72 trailingAnchor];
      v70 = [(CPSNavigationCardViewController *)v124 containerView];
      [(UIView *)v70 frame];
      v108 = v9;
      v109 = v10;
      v110 = v11;
      v111 = v12;
      v112[0] = [v73 constraintEqualToAnchor:v71 constant:v11 + 8.0];
      MEMORY[0x277D82BD8](v70);
      MEMORY[0x277D82BD8](v71);
      MEMORY[0x277D82BD8](v72);
      *&v13 = MEMORY[0x277D82BD8](v73).n128_u64[0];
      v74 = MEMORY[0x277CCAAD0];
      v126[0] = v113;
      v126[1] = v112[0];
      v75 = [MEMORY[0x277CBEA60] arrayWithObjects:v126 count:{2, v13}];
      [v74 activateConstraints:?];
      *&v14 = MEMORY[0x277D82BD8](v75).n128_u64[0];
      v76 = [(CPSNavigationCardViewController *)v124 view];
      [v76 layoutIfNeeded];
      *&v15 = MEMORY[0x277D82BD8](v76).n128_u64[0];
      [v122 layoutIfNeeded];
      [v113 setConstant:?];
      [v112[0] setConstant:0.0];
      v77 = v124;
      v78 = [v122 contentView];
      [v78 frame];
      v105[1] = v16;
      v105[2] = v17;
      v105[3] = v18;
      v105[4] = v19;
      [(CPSNavigationCardViewController *)v77 adjustedShadowConstraintsWithFrame:*&v16, *&v17, *&v18, *&v19];
      *&v106 = v20;
      *(&v106 + 1) = v21;
      *&v107 = v22;
      *(&v107 + 1) = v23;
      MEMORY[0x277D82BD8](v78);
      v79 = [(CPSNavigationCardViewController *)v124 createShadowViewWithFrame:v106, v107];
      [(CPSNavigationCardViewController *)v124 setShadowCardView:?];
      *&v24 = MEMORY[0x277D82BD8](v79).n128_u64[0];
      v82 = [(CPSNavigationCardViewController *)v124 view];
      v81 = [(CPSNavigationCardViewController *)v124 shadowCardView];
      v80 = [(CPSNavigationCardViewController *)v124 containerView];
      [v82 insertSubview:v81 belowSubview:?];
      MEMORY[0x277D82BD8](v80);
      MEMORY[0x277D82BD8](v81);
      *&v25 = MEMORY[0x277D82BD8](v82).n128_u64[0];
      if ([(CPSNavigationCardViewController *)v124 _shouldAnimate])
      {
        v65 = MEMORY[0x277D75D18];
        v99 = MEMORY[0x277D85DD0];
        v100 = -1073741824;
        v101 = 0;
        v102 = __63__CPSNavigationCardViewController__transitionFromViews_inView___block_invoke_4;
        v103 = &unk_278D910D8;
        v104 = MEMORY[0x277D82BE0](v124);
        v105[0] = MEMORY[0x277D82BE0](v122);
        [v65 animateWithDuration:0 delay:&v99 options:&__block_literal_global_6 animations:0.4 completion:0.0];
        objc_storeStrong(v105, 0);
        objc_storeStrong(&v104, 0);
      }

      else
      {
        v64 = [(CPSNavigationCardViewController *)v124 view];
        [v64 layoutIfNeeded];
        *&v26 = MEMORY[0x277D82BD8](v64).n128_u64[0];
        [v122 layoutIfNeeded];
      }

      objc_storeStrong(v112, 0);
      objc_storeStrong(&v113, 0);
    }

    objc_storeStrong(&v119, 0);
  }

  else if (v122)
  {
    v43 = MEMORY[0x277CCAAD0];
    v52 = [v122 leadingAnchor];
    v51 = [(CPSNavigationCardViewController *)v124 containerView];
    v50 = [(UIView *)v51 leadingAnchor];
    v49 = [v52 constraintEqualToAnchor:? constant:?];
    v125[0] = v49;
    v48 = [v122 trailingAnchor];
    v47 = [(CPSNavigationCardViewController *)v124 containerView];
    v46 = [(UIView *)v47 trailingAnchor];
    v45 = [v48 constraintEqualToAnchor:0.0 constant:?];
    v125[1] = v45;
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v125 count:2];
    [v43 activateConstraints:?];
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v51);
    *&v27 = MEMORY[0x277D82BD8](v52).n128_u64[0];
    v54 = [(CPSNavigationCardViewController *)v124 containerViewTopConstraint];
    v53 = [(CPSNavigationCardViewController *)v124 containerView];
    [(UIView *)v53 frame];
    v95 = v28;
    v96 = v29;
    v97 = v30;
    v98 = v31;
    [(NSLayoutConstraint *)v54 setConstant:-v31];
    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](v54);
    v55 = v124;
    v56 = [v122 contentView];
    [v56 frame];
    v92[1] = v32;
    v92[2] = v33;
    v92[3] = v34;
    v92[4] = v35;
    [(CPSNavigationCardViewController *)v55 adjustedShadowConstraintsWithFrame:*&v32, *&v33, *&v34, *&v35];
    *&v93 = v36;
    *(&v93 + 1) = v37;
    *&v94 = v38;
    *(&v94 + 1) = v39;
    MEMORY[0x277D82BD8](v56);
    v57 = [(CPSNavigationCardViewController *)v124 createShadowViewWithFrame:v93, v94];
    [(CPSNavigationCardViewController *)v124 setShadowCardView:?];
    *&v40 = MEMORY[0x277D82BD8](v57).n128_u64[0];
    v58 = [(CPSNavigationCardViewController *)v124 view];
    [v58 layoutIfNeeded];
    *&v41 = MEMORY[0x277D82BD8](v58).n128_u64[0];
    v59 = [(CPSNavigationCardViewController *)v124 containerViewTopConstraint];
    [(NSLayoutConstraint *)v59 setConstant:0.0];
    *&v42 = MEMORY[0x277D82BD8](v59).n128_u64[0];
    v62 = [(CPSNavigationCardViewController *)v124 view];
    v61 = [(CPSNavigationCardViewController *)v124 shadowCardView];
    v60 = [(CPSNavigationCardViewController *)v124 containerView];
    [v62 insertSubview:v61 belowSubview:?];
    MEMORY[0x277D82BD8](v60);
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v62);
    v63 = MEMORY[0x277D75D18];
    v86 = MEMORY[0x277D85DD0];
    v87 = -1073741824;
    v88 = 0;
    v89 = __63__CPSNavigationCardViewController__transitionFromViews_inView___block_invoke_6;
    v90 = &unk_278D910D8;
    v91 = MEMORY[0x277D82BE0](v124);
    v92[0] = MEMORY[0x277D82BE0](v122);
    [v63 animateWithDuration:0 delay:&v86 usingSpringWithDamping:&__block_literal_global_97 initialSpringVelocity:0.35 options:0.0 animations:0.8 completion:?];
    objc_storeStrong(v92, 0);
    objc_storeStrong(&v91, 0);
  }

  objc_storeStrong(&v122, 0);
  objc_storeStrong(location, 0);
}

void __63__CPSNavigationCardViewController__transitionFromViews_inView___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v64[3] = a3;
  v64[2] = a4;
  v64[1] = a1;
  v64[0] = [location[0] snapshotViewAfterScreenUpdates:0];
  v33 = [*(a1 + 32) containerView];
  [v33 addSubview:v64[0]];
  *&v4 = MEMORY[0x277D82BD8](v33).n128_u64[0];
  [location[0] frame];
  v60 = v5;
  v61 = v6;
  v62 = v7;
  v63 = v8;
  [v64[0] setFrame:{v5, v6, v7, v8}];
  [v64[0] frame];
  *&v58 = v9;
  *(&v58 + 1) = v10;
  *&v59 = v11;
  *(&v59 + 1) = v12;
  v57 = 0;
  if ([location[0] conformsToProtocol:&unk_2855D9B08])
  {
    v25 = [location[0] contentView];
    [v25 frame];
    v53 = v13;
    v54 = v14;
    v55 = v15;
    v56 = v16;
    MEMORY[0x277D82BD8](v25);
    v51 = 0u;
    v52 = 0u;
    [*(a1 + 32) adjustedShadowConstraintsWithFrame:{v53, v54, v55, v56}];
    *&v51 = v17;
    *(&v51 + 1) = v18;
    *&v52 = v19;
    *(&v52 + 1) = v20;
    v21 = [*(a1 + 32) createShadowViewWithFrame:{v17, v18, v19, v20}];
    v22 = v57;
    v57 = v21;
    v26 = [v21 layer];
    [v26 setShadowRadius:20.0];
    v27 = [v57 layer];
    LODWORD(v23) = 1043878380;
    [v27 setOpacity:v23];
    v29 = [*(a1 + 32) view];
    v28 = [*(a1 + 32) containerView];
    [v29 insertSubview:v57 belowSubview:?];
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
  }

  [location[0] removeFromSuperview];
  if (*(a1 + 40))
  {
    *(&v58 + 1) = *(&v58 + 1) - *(&v59 + 1) - 8.0;
  }

  else
  {
    *&v58 = *&v58 - *&v59 - 8.0;
  }

  if ([*(a1 + 32) _shouldAnimate])
  {
    v24 = MEMORY[0x277D75D18];
    v41 = MEMORY[0x277D85DD0];
    v42 = -1073741824;
    v43 = 0;
    v44 = __63__CPSNavigationCardViewController__transitionFromViews_inView___block_invoke_2;
    v45 = &unk_278D92F38;
    v46 = MEMORY[0x277D82BE0](v64[0]);
    v49 = v58;
    v50 = v59;
    v47 = MEMORY[0x277D82BE0](v57);
    v48 = MEMORY[0x277D82BE0](*(a1 + 32));
    v34 = MEMORY[0x277D85DD0];
    v35 = -1073741824;
    v36 = 0;
    v37 = __63__CPSNavigationCardViewController__transitionFromViews_inView___block_invoke_3;
    v38 = &unk_278D92F60;
    v39 = MEMORY[0x277D82BE0](v64[0]);
    v40 = MEMORY[0x277D82BE0](v57);
    [v24 animateWithDuration:&v41 animations:&v34 completion:0.35];
    objc_storeStrong(&v40, 0);
    objc_storeStrong(&v39, 0);
    objc_storeStrong(&v48, 0);
    objc_storeStrong(&v47, 0);
    objc_storeStrong(&v46, 0);
  }

  else
  {
    [v64[0] removeFromSuperview];
    [v57 removeFromSuperview];
  }

  objc_storeStrong(&v57, 0);
  objc_storeStrong(v64, 0);
  objc_storeStrong(location, 0);
}

double __63__CPSNavigationCardViewController__transitionFromViews_inView___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 48) containerViewTopConstraint];
  [v7 constant];
  [*(a1 + 40) frame];
  [*(a1 + 40) frame];
  CGRectMake_0();
  [v6 setFrame:{v1, v2, v3, v4}];
  v8 = [*(a1 + 40) layer];
  [v8 setShadowRadius:20.0];
  v10 = [*(a1 + 40) layer];
  [v10 setOpacity:0.0];
  *&result = MEMORY[0x277D82BD8](v10).n128_u64[0];
  return result;
}

uint64_t __63__CPSNavigationCardViewController__transitionFromViews_inView___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
  return [*(a1 + 40) layoutIfNeeded];
}

double __63__CPSNavigationCardViewController__transitionFromViews_inView___block_invoke_6(uint64_t a1)
{
  v11 = [*(a1 + 32) view];
  [v11 layoutIfNeeded];
  MEMORY[0x277D82BD8](v11);
  v12 = *(a1 + 32);
  v13 = [*(a1 + 40) contentView];
  [v13 frame];
  [v12 adjustedShadowConstraintsWithFrame:{v1, v2, v3, v4}];
  v20 = v5;
  v21 = v6;
  v22 = v7;
  v23 = v8;
  v14 = [*(a1 + 32) shadowCardView];
  [v14 setFrame:{v20, v21, v22, v23}];
  v16 = [*(a1 + 32) shadowCardView];
  v15 = [v16 layer];
  [v15 setShadowRadius:20.0];
  MEMORY[0x277D82BD8](v15);
  v19 = [*(a1 + 32) shadowCardView];
  v18 = [v19 layer];
  LODWORD(v9) = 1043878380;
  [v18 setOpacity:v9];
  MEMORY[0x277D82BD8](v18);
  *&result = MEMORY[0x277D82BD8](v19).n128_u64[0];
  return result;
}

- (CGRect)adjustedShadowConstraintsWithFrame:(CGRect)a3
{
  v11 = [(CPSNavigationCardViewController *)self containerViewTopConstraint];
  [(NSLayoutConstraint *)v11 constant];
  CGRectMake_0();
  v12 = v3;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  MEMORY[0x277D82BD8](v11);
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v10 = v15;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (id)createShadowViewWithFrame:(CGRect)a3
{
  v15 = a3;
  v14 = self;
  v13[1] = a2;
  v13[0] = objc_opt_new();
  v7 = [(CPSNavigationCardViewController *)v14 shadowCardView];
  v6 = [(UIView *)v7 layer];
  [(CALayer *)v6 setCornerRadius:10.0];
  MEMORY[0x277D82BD8](v6);
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  v9 = [(CPSNavigationCardViewController *)v14 shadowCardView];
  v8 = [(UIView *)v9 layer];
  [(CALayer *)v8 setShadowRadius:20.0];
  MEMORY[0x277D82BD8](v8);
  *&v4 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  v11 = [(CPSNavigationCardViewController *)v14 shadowCardView];
  v10 = [(UIView *)v11 layer];
  [(CALayer *)v10 setOpacity:0.0];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  v12 = MEMORY[0x277D82BE0](v13[0]);
  objc_storeStrong(v13, 0);

  return v12;
}

- (void)updateTripEstimates:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)_updateSizingViewConstraintsForView:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)navigator:(id)a3 didEndTrip:(BOOL)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [(CPSNavigationCardViewController *)v9 currentManeuversCardView];
  [(CPSManeuversCardView *)v6 removeFromSuperview];
  *&v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  v7 = [(CPSNavigationCardViewController *)v9 currentPausedCardView];
  [(CPSPausedCardView *)v7 removeFromSuperview];
  *&v5 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  [(CPSNavigationCardViewController *)v9 setCurrentPausedCardView:0, v5];
  [(CPSNavigationCardViewController *)v9 setCurrentManeuversCardView:0];
  [(CPSNavigationCardViewController *)v9 _updateHelperConstraints];
  objc_storeStrong(location, 0);
}

- (void)setGuidanceBackgroundColor:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_guidanceBackgroundColor != location[0])
  {
    objc_storeStrong(&v4->_guidanceBackgroundColor, location[0]);
    [(CPSNavigationCardViewController *)v4 _updateCardBackgroundColors];
  }

  objc_storeStrong(location, 0);
}

- (void)_updateCardBackgroundColors
{
  v36 = self;
  location[1] = a2;
  location[0] = 0;
  v22 = [(CPSNavigationCardViewController *)self currentManeuversCardView];
  v21 = [(CPSManeuversCardView *)v22 maneuvers];
  v20 = [(NSArray *)v21 firstObject];
  v34 = [v20 cardBackgroundColor];
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  v2 = MEMORY[0x277D82BD8](v22).n128_u64[0];
  v32 = 0;
  v23 = 1;
  if (!v34)
  {
    v33 = [(CPSNavigationCardViewController *)v36 guidanceBackgroundColor];
    v32 = 1;
    v23 = v33 != 0;
  }

  if (v32)
  {
    v2 = MEMORY[0x277D82BD8](v33).n128_u64[0];
  }

  v18 = [(CPSNavigationCardViewController *)v36 currentPausedCardView];
  v17 = [(CPSPausedCardView *)v18 contentView];
  v3 = [(UIView *)v17 backgroundColor];
  v4 = location[0];
  location[0] = v3;
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v17);
  v19 = [(CPSNavigationCardViewController *)v36 guidanceBackgroundColor];
  *&v5 = MEMORY[0x277D82BD8](v19).n128_u64[0];
  if (v19)
  {
    v26 = 0;
    if (location[0])
    {
      objc_storeStrong(location, location[0]);
    }

    else
    {
      v27 = [(CPSNavigationCardViewController *)v36 guidanceBackgroundColor];
      v26 = 1;
      objc_storeStrong(location, v27);
    }

    if (v26)
    {
      MEMORY[0x277D82BD8](v27);
    }

    v24 = 0;
    if (v34)
    {
      objc_storeStrong(&v34, v34);
    }

    else
    {
      v25 = [(CPSNavigationCardViewController *)v36 guidanceBackgroundColor];
      v24 = 1;
      objc_storeStrong(&v34, v25);
    }

    if (v24)
    {
      MEMORY[0x277D82BD8](v25);
    }
  }

  else
  {
    v30 = 0;
    if (location[0])
    {
      objc_storeStrong(location, location[0]);
    }

    else
    {
      v31 = [MEMORY[0x277D75348] crsui_consoleTurnCardETATrayBackgroundColor];
      v30 = 1;
      objc_storeStrong(location, v31);
    }

    if (v30)
    {
      MEMORY[0x277D82BD8](v31);
    }

    v28 = 0;
    if (v34)
    {
      objc_storeStrong(&v34, v34);
    }

    else
    {
      v29 = [MEMORY[0x277D75348] crsui_consoleTurnCardETATrayBackgroundColor];
      v28 = 1;
      objc_storeStrong(&v34, v29);
    }

    if (v28)
    {
      MEMORY[0x277D82BD8](v29);
    }
  }

  v12 = [(CPSNavigationCardViewController *)v36 currentManeuversCardView];
  [(CPSManeuversCardView *)v12 setUsesCustomBackgroundColor:v23];
  *&v6 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  v13 = location[0];
  v14 = [(CPSNavigationCardViewController *)v36 currentPausedCardView];
  [(CPSPausedCardView *)v14 setCardBackgroundColor:v13];
  *&v7 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  v15 = v34;
  v16 = [(CPSNavigationCardViewController *)v36 currentManeuversCardView];
  [(CPSManeuversCardView *)v16 setCardBackgroundColor:v15];
  *&v8 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  if (v23)
  {
    v10 = [(CPSNavigationCardViewController *)v36 currentPausedCardView];
    [(UIView *)v10 overrideUserInterfaceStyleBasedOnBackgroundColor:location[0]];
    *&v9 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    v11 = [(CPSNavigationCardViewController *)v36 currentManeuversCardView];
    [(UIView *)v11 overrideUserInterfaceStyleBasedOnBackgroundColor:v34];
    MEMORY[0x277D82BD8](v11);
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateLinkedCheck
{
  v9 = self;
  location[1] = a2;
  v3 = MEMORY[0x277CC1E88];
  v4 = [(CPSNavigationCardViewController *)self navigatingBundleIdentifier];
  location[0] = [v3 bundleProxyForIdentifier:?];
  v5 = [location[0] sdkVersion];
  v6 = [v5 compare:@"13.4" options:64];
  *&v2 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  v7 = 1;
  if (v6)
  {
    v7 = v6 == 1;
  }

  [(CPSNavigationCardViewController *)v9 setPassesLinkCheck:v7, v2];
  objc_storeStrong(location, 0);
}

- (void)setNavigatingBundleIdentifier:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (![(NSString *)v7->_navigatingBundleIdentifier isEqualToString:location[0]])
  {
    v3 = [location[0] copy];
    navigatingBundleIdentifier = v7->_navigatingBundleIdentifier;
    v7->_navigatingBundleIdentifier = v3;
    *&v5 = MEMORY[0x277D82BD8](navigatingBundleIdentifier).n128_u64[0];
    [(CPSNavigationCardViewController *)v7 _updateLinkedCheck];
  }

  objc_storeStrong(location, 0);
}

@end