@interface CPSNavigationCardViewController
- (CGRect)adjustedShadowConstraintsWithFrame:(CGRect)frame;
- (id)createShadowViewWithFrame:(CGRect)frame;
- (void)_showPausedViewForReason:(unint64_t)reason description:(id)description pauseCardColor:(id)color;
- (void)_transitionFromViews:(id)views inView:(id)view;
- (void)_updateCardBackgroundColors;
- (void)_updateHelperConstraints;
- (void)_updateLinkedCheck;
- (void)_updateNavigationCardHidden;
- (void)_updateSizingViewConstraintsForView:(id)view;
- (void)availableHeightChangedTo:(double)to;
- (void)navigator:(id)navigator didEndTrip:(BOOL)trip;
- (void)navigator:(id)navigator pausedTripForReason:(unint64_t)reason description:(id)description usingColor:(id)color;
- (void)setGuidanceBackgroundColor:(id)color;
- (void)setNavigatingBundleIdentifier:(id)identifier;
- (void)setNavigationCardHidden:(BOOL)hidden forRequester:(id)requester animated:(BOOL)animated completion:(id)completion;
- (void)showManeuvers:(id)maneuvers usingDisplayStyles:(id)styles;
- (void)updateEstimates:(id)estimates forManeuver:(id)maneuver;
- (void)updateTripEstimates:(id)estimates;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CPSNavigationCardViewController

- (void)_updateHelperConstraints
{
  v56[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  currentManeuversCardView = [(CPSNavigationCardViewController *)self currentManeuversCardView];
  *&v2 = MEMORY[0x277D82BD8](currentManeuversCardView).n128_u64[0];
  if (currentManeuversCardView)
  {
    layoutHelperView = [(CPSNavigationCardViewController *)selfCopy layoutHelperView];
    topAnchor = [(CPSLayoutHelperView *)layoutHelperView topAnchor];
    currentManeuversCardView2 = [(CPSNavigationCardViewController *)selfCopy currentManeuversCardView];
    contentView = [(CPSManeuversCardView *)currentManeuversCardView2 contentView];
    topAnchor2 = [(UIView *)contentView topAnchor];
    v45 = [topAnchor constraintEqualToAnchor:?];
    v56[0] = v45;
    layoutHelperView2 = [(CPSNavigationCardViewController *)selfCopy layoutHelperView];
    bottomAnchor = [(CPSLayoutHelperView *)layoutHelperView2 bottomAnchor];
    currentManeuversCardView3 = [(CPSNavigationCardViewController *)selfCopy currentManeuversCardView];
    contentView2 = [(CPSManeuversCardView *)currentManeuversCardView3 contentView];
    bottomAnchor2 = [(UIView *)contentView2 bottomAnchor];
    v39 = [bottomAnchor constraintEqualToAnchor:?];
    v56[1] = v39;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
    v4 = location[0];
    location[0] = v3;
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](bottomAnchor2);
    MEMORY[0x277D82BD8](contentView2);
    MEMORY[0x277D82BD8](currentManeuversCardView3);
    MEMORY[0x277D82BD8](bottomAnchor);
    MEMORY[0x277D82BD8](layoutHelperView2);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](contentView);
    MEMORY[0x277D82BD8](currentManeuversCardView2);
    MEMORY[0x277D82BD8](topAnchor);
    v5 = MEMORY[0x277D82BD8](layoutHelperView).n128_u64[0];
  }

  else
  {
    currentPausedCardView = [(CPSNavigationCardViewController *)selfCopy currentPausedCardView];
    *&v6 = MEMORY[0x277D82BD8](currentPausedCardView).n128_u64[0];
    if (currentPausedCardView)
    {
      layoutHelperView3 = [(CPSNavigationCardViewController *)selfCopy layoutHelperView];
      topAnchor3 = [(CPSLayoutHelperView *)layoutHelperView3 topAnchor];
      currentPausedCardView2 = [(CPSNavigationCardViewController *)selfCopy currentPausedCardView];
      contentView3 = [(CPSPausedCardView *)currentPausedCardView2 contentView];
      topAnchor4 = [(UIView *)contentView3 topAnchor];
      v32 = [topAnchor3 constraintEqualToAnchor:?];
      v55[0] = v32;
      layoutHelperView4 = [(CPSNavigationCardViewController *)selfCopy layoutHelperView];
      bottomAnchor3 = [(CPSLayoutHelperView *)layoutHelperView4 bottomAnchor];
      currentPausedCardView3 = [(CPSNavigationCardViewController *)selfCopy currentPausedCardView];
      contentView4 = [(CPSPausedCardView *)currentPausedCardView3 contentView];
      bottomAnchor4 = [(UIView *)contentView4 bottomAnchor];
      v26 = [bottomAnchor3 constraintEqualToAnchor:?];
      v55[1] = v26;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
      v8 = location[0];
      location[0] = v7;
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v26);
      MEMORY[0x277D82BD8](bottomAnchor4);
      MEMORY[0x277D82BD8](contentView4);
      MEMORY[0x277D82BD8](currentPausedCardView3);
      MEMORY[0x277D82BD8](bottomAnchor3);
      MEMORY[0x277D82BD8](layoutHelperView4);
      MEMORY[0x277D82BD8](v32);
      MEMORY[0x277D82BD8](topAnchor4);
      MEMORY[0x277D82BD8](contentView3);
      MEMORY[0x277D82BD8](currentPausedCardView2);
      MEMORY[0x277D82BD8](topAnchor3);
      v5 = MEMORY[0x277D82BD8](layoutHelperView3).n128_u64[0];
    }

    else
    {
      layoutHelperView5 = [(CPSNavigationCardViewController *)selfCopy layoutHelperView];
      topAnchor5 = [(CPSLayoutHelperView *)layoutHelperView5 topAnchor];
      view = [(CPSNavigationCardViewController *)selfCopy view];
      topAnchor6 = [view topAnchor];
      v21 = [topAnchor5 constraintEqualToAnchor:?];
      v54[0] = v21;
      layoutHelperView6 = [(CPSNavigationCardViewController *)selfCopy layoutHelperView];
      heightAnchor = [(CPSLayoutHelperView *)layoutHelperView6 heightAnchor];
      v18 = [heightAnchor constraintEqualToConstant:0.0];
      v54[1] = v18;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
      v10 = location[0];
      location[0] = v9;
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](heightAnchor);
      MEMORY[0x277D82BD8](layoutHelperView6);
      MEMORY[0x277D82BD8](v21);
      MEMORY[0x277D82BD8](topAnchor6);
      MEMORY[0x277D82BD8](view);
      MEMORY[0x277D82BD8](topAnchor5);
      v5 = MEMORY[0x277D82BD8](layoutHelperView5).n128_u64[0];
    }
  }

  layoutHelperVerticalConstraints = [(CPSNavigationCardViewController *)selfCopy layoutHelperVerticalConstraints];
  v17 = [location[0] isEqualToArray:?];
  *&v11 = MEMORY[0x277D82BD8](layoutHelperVerticalConstraints).n128_u64[0];
  if ((v17 & 1) == 0)
  {
    layoutHelperVerticalConstraints2 = [(CPSNavigationCardViewController *)selfCopy layoutHelperVerticalConstraints];
    v12 = MEMORY[0x277D82BD8](layoutHelperVerticalConstraints2).n128_u64[0];
    if (layoutHelperVerticalConstraints2)
    {
      v13 = MEMORY[0x277CCAAD0];
      layoutHelperVerticalConstraints3 = [(CPSNavigationCardViewController *)selfCopy layoutHelperVerticalConstraints];
      [v13 deactivateConstraints:?];
      v12 = MEMORY[0x277D82BD8](layoutHelperVerticalConstraints3).n128_u64[0];
    }

    [MEMORY[0x277CCAAD0] activateConstraints:{location[0], *&v12}];
    [(CPSNavigationCardViewController *)selfCopy setLayoutHelperVerticalConstraints:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSNavigationCardViewController;
  [(CPSNavigationCardViewController *)&v2 viewWillLayoutSubviews];
}

- (void)viewDidLoad
{
  v34[6] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v32 = a2;
  v31.receiver = self;
  v31.super_class = CPSNavigationCardViewController;
  [(CPSNavigationCardViewController *)&v31 viewDidLoad];
  view = [(CPSNavigationCardViewController *)selfCopy view];
  [view setUserInteractionEnabled:0];
  v29 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v29 setClipsToBounds:1];
  view2 = [(CPSNavigationCardViewController *)selfCopy view];
  [view2 addSubview:v29];
  *&v2 = MEMORY[0x277D82BD8](view2).n128_u64[0];
  [(CPSNavigationCardViewController *)selfCopy setContainerView:v29, v2];
  v28 = objc_alloc_init(CPSLayoutHelperView);
  [(CPSLayoutHelperView *)v28 setClipsToBounds:1];
  view3 = [(CPSNavigationCardViewController *)selfCopy view];
  [view3 addSubview:v28];
  MEMORY[0x277D82BD8](view3);
  objc_storeStrong(&selfCopy->_layoutHelperView, v28);
  LODWORD(v3) = 1112014848;
  [(CPSLayoutHelperView *)v28 setContentHuggingPriority:1 forAxis:v3];
  topAnchor = [v29 topAnchor];
  topAnchor2 = [view topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:?];
  [(CPSNavigationCardViewController *)selfCopy setContainerViewTopConstraint:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](topAnchor2);
  *&v4 = MEMORY[0x277D82BD8](topAnchor).n128_u64[0];
  heightAnchor = [v29 heightAnchor];
  v11 = [heightAnchor constraintEqualToConstant:0.0];
  [(CPSNavigationCardViewController *)selfCopy setContainerViewHeightConstraint:?];
  MEMORY[0x277D82BD8](v11);
  *&v5 = MEMORY[0x277D82BD8](heightAnchor).n128_u64[0];
  v13 = MEMORY[0x277CCAAD0];
  containerViewTopConstraint = [(CPSNavigationCardViewController *)selfCopy containerViewTopConstraint];
  v34[0] = containerViewTopConstraint;
  containerViewHeightConstraint = [(CPSNavigationCardViewController *)selfCopy containerViewHeightConstraint];
  v34[1] = containerViewHeightConstraint;
  leftAnchor = [v29 leftAnchor];
  leftAnchor2 = [view leftAnchor];
  v23 = [leftAnchor constraintEqualToAnchor:?];
  v34[2] = v23;
  rightAnchor = [v29 rightAnchor];
  rightAnchor2 = [view rightAnchor];
  v20 = [rightAnchor constraintEqualToAnchor:?];
  v34[3] = v20;
  leadingAnchor = [(CPSLayoutHelperView *)v28 leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:?];
  v34[4] = v17;
  widthAnchor = [(CPSLayoutHelperView *)v28 widthAnchor];
  v15 = [widthAnchor constraintEqualToConstant:1.0];
  v34[5] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:6];
  [v13 activateConstraints:?];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](widthAnchor);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](leadingAnchor);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](rightAnchor2);
  MEMORY[0x277D82BD8](rightAnchor);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](leftAnchor2);
  MEMORY[0x277D82BD8](leftAnchor);
  MEMORY[0x277D82BD8](containerViewHeightConstraint);
  MEMORY[0x277D82BD8](containerViewTopConstraint);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&view, 0);
}

- (void)availableHeightChangedTo:(double)to
{
  currentManeuversCardView = [(CPSNavigationCardViewController *)self currentManeuversCardView];
  *&v3 = MEMORY[0x277D82BD8](currentManeuversCardView).n128_u64[0];
  if (currentManeuversCardView)
  {
    currentManeuversCardView2 = [(CPSNavigationCardViewController *)self currentManeuversCardView];
    contentView = [(CPSManeuversCardView *)currentManeuversCardView2 contentView];
    [(UIView *)contentView frame];
    v28 = v4;
    MEMORY[0x277D82BD8](contentView);
    MEMORY[0x277D82BD8](currentManeuversCardView2);
    if (v28 > to)
    {
      currentManeuversCardView3 = [(CPSNavigationCardViewController *)self currentManeuversCardView];
      containerView = [(CPSNavigationCardViewController *)self containerView];
      [(UIView *)containerView bounds];
      CGSizeMake_8();
      v23 = [(CPSManeuversCardView *)currentManeuversCardView3 canFitSize:v5, v6];
      MEMORY[0x277D82BD8](containerView);
      *&v7 = MEMORY[0x277D82BD8](currentManeuversCardView3).n128_u64[0];
      if (v23)
      {
        currentManeuversCardView4 = [(CPSNavigationCardViewController *)self currentManeuversCardView];
        [(CPSManeuversCardView *)currentManeuversCardView4 invalidate];
        containerViewHeightConstraint = [(CPSNavigationCardViewController *)self containerViewHeightConstraint];
        [(NSLayoutConstraint *)containerViewHeightConstraint setConstant:to];
        [(CPSNavigationCardViewController *)self setNavigationCardHidden:0 forRequester:@"Sizing" animated:1 completion:0, MEMORY[0x277D82BD8](containerViewHeightConstraint).n128_f64[0]];
      }

      else
      {
        [(CPSNavigationCardViewController *)self setNavigationCardHidden:1 forRequester:@"Sizing" animated:1 completion:0, v7];
      }
    }

    else
    {
      currentManeuversCardView5 = [(CPSNavigationCardViewController *)self currentManeuversCardView];
      [(CPSManeuversCardView *)currentManeuversCardView5 invalidate];
      containerViewHeightConstraint2 = [(CPSNavigationCardViewController *)self containerViewHeightConstraint];
      [(NSLayoutConstraint *)containerViewHeightConstraint2 setConstant:to];
      [(CPSNavigationCardViewController *)self setNavigationCardHidden:0 forRequester:@"Sizing" animated:1 completion:0, MEMORY[0x277D82BD8](containerViewHeightConstraint2).n128_f64[0]];
    }
  }

  else
  {
    currentPausedCardView = [(CPSNavigationCardViewController *)self currentPausedCardView];
    *&v8 = MEMORY[0x277D82BD8](currentPausedCardView).n128_u64[0];
    if (currentPausedCardView)
    {
      currentPausedCardView2 = [(CPSNavigationCardViewController *)self currentPausedCardView];
      contentView2 = [(CPSPausedCardView *)currentPausedCardView2 contentView];
      [(UIView *)contentView2 frame];
      v17 = v9;
      MEMORY[0x277D82BD8](contentView2);
      MEMORY[0x277D82BD8](currentPausedCardView2);
      if (v17 > to)
      {
        [(CPSNavigationCardViewController *)self setNavigationCardHidden:1 forRequester:@"Sizing" animated:1 completion:0, v17];
        containerViewTopConstraint = [(CPSNavigationCardViewController *)self containerViewTopConstraint];
        currentPausedCardView3 = [(CPSNavigationCardViewController *)self currentPausedCardView];
        [(CPSPausedCardView *)currentPausedCardView3 frame];
        [(NSLayoutConstraint *)containerViewTopConstraint setConstant:-(v10 + 8.0 + 44.0)];
        MEMORY[0x277D82BD8](currentPausedCardView3);
        MEMORY[0x277D82BD8](containerViewTopConstraint);
      }

      else
      {
        containerViewHeightConstraint3 = [(CPSNavigationCardViewController *)self containerViewHeightConstraint];
        [(NSLayoutConstraint *)containerViewHeightConstraint3 setConstant:to];
        [(CPSNavigationCardViewController *)self setNavigationCardHidden:0 forRequester:@"Sizing" animated:1 completion:0, MEMORY[0x277D82BD8](containerViewHeightConstraint3).n128_f64[0]];
      }
    }

    else
    {
      containerViewHeightConstraint4 = [(CPSNavigationCardViewController *)self containerViewHeightConstraint];
      [(NSLayoutConstraint *)containerViewHeightConstraint4 setConstant:to];
      [(CPSNavigationCardViewController *)self setNavigationCardHidden:0 forRequester:@"Sizing" animated:1 completion:0, MEMORY[0x277D82BD8](containerViewHeightConstraint4).n128_f64[0]];
    }
  }
}

- (void)setNavigationCardHidden:(BOOL)hidden forRequester:(id)requester animated:(BOOL)animated completion:(id)completion
{
  selfCopy = self;
  v74 = a2;
  hiddenCopy = hidden;
  location = 0;
  objc_storeStrong(&location, requester);
  animatedCopy = animated;
  v70 = 0;
  objc_storeStrong(&v70, completion);
  if (hiddenCopy)
  {
    if (!selfCopy->_navigationCardHiddenRequesters)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
      navigationCardHiddenRequesters = selfCopy->_navigationCardHiddenRequesters;
      selfCopy->_navigationCardHiddenRequesters = v6;
      MEMORY[0x277D82BD8](navigationCardHiddenRequesters);
    }

    navigationCardHiddenRequesters = [(CPSNavigationCardViewController *)selfCopy navigationCardHiddenRequesters];
    [(NSMutableSet *)navigationCardHiddenRequesters addObject:location];
    v8 = MEMORY[0x277D82BD8](navigationCardHiddenRequesters).n128_u64[0];
  }

  else
  {
    navigationCardHiddenRequesters2 = [(CPSNavigationCardViewController *)selfCopy navigationCardHiddenRequesters];
    [(NSMutableSet *)navigationCardHiddenRequesters2 removeObject:location];
    v8 = MEMORY[0x277D82BD8](navigationCardHiddenRequesters2).n128_u64[0];
  }

  [(CPSNavigationCardViewController *)selfCopy _updateNavigationCardHidden];
  if (animatedCopy)
  {
    v68 = 0u;
    v69 = 0u;
    currentManeuversCardView = [(CPSNavigationCardViewController *)selfCopy currentManeuversCardView];
    v66 = 0;
    v64 = 0;
    v62 = 0;
    v60 = 0;
    v58 = 0;
    if (currentManeuversCardView)
    {
      currentManeuversCardView2 = [(CPSNavigationCardViewController *)selfCopy currentManeuversCardView];
      v66 = 1;
      contentView = [(CPSManeuversCardView *)currentManeuversCardView2 contentView];
      v64 = 1;
      [(UIView *)contentView frame];
      *&v68 = v9;
      *(&v68 + 1) = v10;
      *&v69 = v11;
      *(&v69 + 1) = v12;
    }

    else
    {
      currentPausedCardView = [(CPSNavigationCardViewController *)selfCopy currentPausedCardView];
      v62 = 1;
      if (currentPausedCardView)
      {
        currentPausedCardView2 = [(CPSNavigationCardViewController *)selfCopy currentPausedCardView];
        v60 = 1;
        contentView2 = [(CPSPausedCardView *)currentPausedCardView2 contentView];
        v58 = 1;
        [(UIView *)contentView2 frame];
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
      MEMORY[0x277D82BD8](contentView2);
    }

    if (v60)
    {
      MEMORY[0x277D82BD8](currentPausedCardView2);
    }

    if (v62)
    {
      MEMORY[0x277D82BD8](currentPausedCardView);
    }

    if (v64)
    {
      MEMORY[0x277D82BD8](contentView);
    }

    if (v66)
    {
      MEMORY[0x277D82BD8](currentManeuversCardView2);
    }

    MEMORY[0x277D82BD8](currentManeuversCardView);
    [(CPSNavigationCardViewController *)selfCopy adjustedShadowConstraintsWithFrame:v68, v69];
    *&v56 = v17;
    *(&v56 + 1) = v18;
    *&v57 = v19;
    *(&v57 + 1) = v20;
    v55 = 8.0;
    containerViewTopConstraint = [(CPSNavigationCardViewController *)selfCopy containerViewTopConstraint];
    [(NSLayoutConstraint *)containerViewTopConstraint constant];
    v27 = fabs(v21);
    MEMORY[0x277D82BD8](containerViewTopConstraint);
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
    objc_initWeak(v47, selfCopy);
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
  navigationCardHiddenRequesters = [(CPSNavigationCardViewController *)self navigationCardHiddenRequesters];
  v15 = [(NSMutableSet *)navigationCardHiddenRequesters count];
  *&v2 = MEMORY[0x277D82BD8](navigationCardHiddenRequesters).n128_u64[0];
  if (v15)
  {
    if (![(CPSNavigationCardViewController *)self navigationCardHidden])
    {
      [(CPSNavigationCardViewController *)self setNavigationCardHidden:1];
      currentManeuversCardView = [(CPSNavigationCardViewController *)self currentManeuversCardView];
      *&v3 = MEMORY[0x277D82BD8](currentManeuversCardView).n128_u64[0];
      if (currentManeuversCardView)
      {
        containerViewTopConstraint = [(CPSNavigationCardViewController *)self containerViewTopConstraint];
        currentManeuversCardView2 = [(CPSNavigationCardViewController *)self currentManeuversCardView];
        [(CPSManeuversCardView *)currentManeuversCardView2 frame];
        [(NSLayoutConstraint *)containerViewTopConstraint setConstant:-(v4 + 48.0)];
        MEMORY[0x277D82BD8](currentManeuversCardView2);
        MEMORY[0x277D82BD8](containerViewTopConstraint);
      }

      else
      {
        currentPausedCardView = [(CPSNavigationCardViewController *)self currentPausedCardView];
        *&v5 = MEMORY[0x277D82BD8](currentPausedCardView).n128_u64[0];
        if (currentPausedCardView)
        {
          containerViewTopConstraint2 = [(CPSNavigationCardViewController *)self containerViewTopConstraint];
          currentPausedCardView2 = [(CPSNavigationCardViewController *)self currentPausedCardView];
          [(CPSPausedCardView *)currentPausedCardView2 frame];
          [(NSLayoutConstraint *)containerViewTopConstraint2 setConstant:-(v6 + 8.0)];
          MEMORY[0x277D82BD8](currentPausedCardView2);
          MEMORY[0x277D82BD8](containerViewTopConstraint2);
        }
      }
    }
  }

  else if ([(CPSNavigationCardViewController *)self navigationCardHidden])
  {
    [(CPSNavigationCardViewController *)self setNavigationCardHidden:0];
    containerViewTopConstraint3 = [(CPSNavigationCardViewController *)self containerViewTopConstraint];
    [(NSLayoutConstraint *)containerViewTopConstraint3 setConstant:0.0];
    MEMORY[0x277D82BD8](containerViewTopConstraint3);
  }
}

- (void)showManeuvers:(id)maneuvers usingDisplayStyles:(id)styles
{
  v36[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, maneuvers);
  v33 = 0;
  objc_storeStrong(&v33, styles);
  currentManeuversCardView = [(CPSNavigationCardViewController *)selfCopy currentManeuversCardView];
  v30 = 0;
  v28 = 0;
  v23 = 0;
  if (currentManeuversCardView)
  {
    currentManeuversCardView2 = [(CPSNavigationCardViewController *)selfCopy currentManeuversCardView];
    v30 = 1;
    maneuvers = [(CPSManeuversCardView *)currentManeuversCardView2 maneuvers];
    v28 = 1;
    v23 = BSEqualObjects();
  }

  if (v28)
  {
    MEMORY[0x277D82BD8](maneuvers);
  }

  if (v30)
  {
    MEMORY[0x277D82BD8](currentManeuversCardView2);
  }

  *&v4 = MEMORY[0x277D82BD8](currentManeuversCardView).n128_u64[0];
  v32 = v23 & 1;
  if (v23)
  {
    currentManeuversCardView3 = [(CPSNavigationCardViewController *)selfCopy currentManeuversCardView];
    [(CPSManeuversCardView *)currentManeuversCardView3 showManeuvers:location[0] usingDisplayStyles:MEMORY[0x277CBEBF8]];
    MEMORY[0x277D82BD8](currentManeuversCardView3);
    v27 = 1;
  }

  else
  {
    containerView = [(CPSNavigationCardViewController *)selfCopy containerView];
    containerView2 = [(CPSNavigationCardViewController *)selfCopy containerView];
    subviews = [(UIView *)containerView2 subviews];
    v25 = [(NSArray *)subviews copy];
    MEMORY[0x277D82BD8](subviews);
    *&v5 = MEMORY[0x277D82BD8](containerView2).n128_u64[0];
    v24 = 0;
    [(CPSNavigationCardViewController *)selfCopy setCurrentManeuversCardView:v5];
    [(CPSNavigationCardViewController *)selfCopy setCurrentPausedCardView:0];
    if ([location[0] count])
    {
      v7 = [CPSManeuversCardView alloc];
      v8 = [(CPSManeuversCardView *)v7 initWithManeuvers:location[0]];
      v9 = v24;
      v24 = v8;
      [containerView addSubview:{v8, MEMORY[0x277D82BD8](v9).n128_f64[0]}];
      [(CPSNavigationCardViewController *)selfCopy setCurrentManeuversCardView:v24];
      [(CPSNavigationCardViewController *)selfCopy _updateCardBackgroundColors];
      v10 = MEMORY[0x277CCAAD0];
      topAnchor = [(CPSManeuversCardView *)v24 topAnchor];
      topAnchor2 = [containerView topAnchor];
      v15 = [topAnchor constraintEqualToAnchor:?];
      v36[0] = v15;
      bottomAnchor = [(CPSManeuversCardView *)v24 bottomAnchor];
      bottomAnchor2 = [containerView bottomAnchor];
      v12 = [bottomAnchor constraintEqualToAnchor:?];
      v36[1] = v12;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
      [v10 activateConstraints:?];
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](bottomAnchor2);
      MEMORY[0x277D82BD8](bottomAnchor);
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](topAnchor2);
      *&v6 = MEMORY[0x277D82BD8](topAnchor).n128_u64[0];
    }

    [(CPSNavigationCardViewController *)selfCopy _updateHelperConstraints];
    [(CPSNavigationCardViewController *)selfCopy _transitionFromViews:v25 inView:v24];
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&containerView, 0);
    v27 = 0;
  }

  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

- (void)updateEstimates:(id)estimates forManeuver:(id)maneuver
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, estimates);
  v8 = 0;
  objc_storeStrong(&v8, maneuver);
  currentManeuversCardView = [(CPSNavigationCardViewController *)selfCopy currentManeuversCardView];
  *&v4 = MEMORY[0x277D82BD8](currentManeuversCardView).n128_u64[0];
  if (currentManeuversCardView)
  {
    currentManeuversCardView2 = [(CPSNavigationCardViewController *)selfCopy currentManeuversCardView];
    [(CPSManeuversCardView *)currentManeuversCardView2 updateEstimates:location[0] forManeuver:v8];
    MEMORY[0x277D82BD8](currentManeuversCardView2);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)navigator:(id)navigator pausedTripForReason:(unint64_t)reason description:(id)description usingColor:(id)color
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, navigator);
  reasonCopy = reason;
  v10 = 0;
  objc_storeStrong(&v10, description);
  v9 = 0;
  objc_storeStrong(&v9, color);
  [(CPSNavigationCardViewController *)selfCopy _showPausedViewForReason:reasonCopy description:v10 pauseCardColor:v9];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)_showPausedViewForReason:(unint64_t)reason description:(id)description pauseCardColor:(id)color
{
  v32[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v30 = a2;
  reasonCopy = reason;
  location = 0;
  objc_storeStrong(&location, description);
  v27 = 0;
  objc_storeStrong(&v27, color);
  containerView = [(CPSNavigationCardViewController *)selfCopy containerView];
  subviews = [(UIView *)containerView subviews];
  v26 = [(NSArray *)subviews copy];
  MEMORY[0x277D82BD8](subviews);
  *&v5 = MEMORY[0x277D82BD8](containerView).n128_u64[0];
  [(CPSNavigationCardViewController *)selfCopy setCurrentManeuversCardView:0, v5];
  [(CPSNavigationCardViewController *)selfCopy setCurrentPausedCardView:0];
  v6 = [CPSPausedCardView alloc];
  v25 = [(CPSPausedCardView *)v6 initWithReason:reasonCopy title:location backgroundColor:v27];
  [(CPSNavigationCardViewController *)selfCopy setCurrentPausedCardView:v25];
  [(CPSNavigationCardViewController *)selfCopy _updateCardBackgroundColors];
  containerView2 = [(CPSNavigationCardViewController *)selfCopy containerView];
  [(UIView *)containerView2 addSubview:v25];
  *&v7 = MEMORY[0x277D82BD8](containerView2).n128_u64[0];
  v13 = MEMORY[0x277CCAAD0];
  topAnchor = [(CPSPausedCardView *)v25 topAnchor];
  containerView3 = [(CPSNavigationCardViewController *)selfCopy containerView];
  topAnchor2 = [(UIView *)containerView3 topAnchor];
  v21 = [topAnchor constraintEqualToAnchor:?];
  v32[0] = v21;
  heightAnchor = [(CPSPausedCardView *)v25 heightAnchor];
  v19 = [heightAnchor constraintGreaterThanOrEqualToConstant:56.0];
  v32[1] = v19;
  bottomAnchor = [(CPSPausedCardView *)v25 bottomAnchor];
  containerView4 = [(CPSNavigationCardViewController *)selfCopy containerView];
  bottomAnchor2 = [(UIView *)containerView4 bottomAnchor];
  v15 = [bottomAnchor constraintLessThanOrEqualToAnchor:?];
  v32[2] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:3];
  [v13 activateConstraints:?];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](containerView4);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](heightAnchor);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](containerView3);
  *&v8 = MEMORY[0x277D82BD8](topAnchor).n128_u64[0];
  [(CPSNavigationCardViewController *)selfCopy _updateHelperConstraints];
  [(CPSNavigationCardViewController *)selfCopy _transitionFromViews:v26 inView:v25];
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&location, 0);
}

- (void)_transitionFromViews:(id)views inView:(id)view
{
  v126[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, views);
  v122 = 0;
  objc_storeStrong(&v122, view);
  if ([location[0] count])
  {
    v121 = v122 == 0;
    shadowCardView = [(CPSNavigationCardViewController *)selfCopy shadowCardView];
    [(UIView *)shadowCardView removeFromSuperview];
    MEMORY[0x277D82BD8](shadowCardView);
    v84 = location[0];
    v114 = MEMORY[0x277D85DD0];
    v115 = -1073741824;
    v116 = 0;
    v117 = __63__CPSNavigationCardViewController__transitionFromViews_inView___block_invoke;
    v118 = &unk_278D92F88;
    v119 = MEMORY[0x277D82BE0](selfCopy);
    v120 = v121;
    [v84 enumerateObjectsUsingBlock:&v114];
    if (v122)
    {
      leadingAnchor = [v122 leadingAnchor];
      containerView = [(CPSNavigationCardViewController *)selfCopy containerView];
      leadingAnchor2 = [(UIView *)containerView leadingAnchor];
      containerView2 = [(CPSNavigationCardViewController *)selfCopy containerView];
      [(UIView *)containerView2 frame];
      v112[1] = v4;
      v112[2] = v5;
      v112[3] = v6;
      v112[4] = v7;
      v113 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:*&v6 + 8.0];
      MEMORY[0x277D82BD8](containerView2);
      MEMORY[0x277D82BD8](leadingAnchor2);
      MEMORY[0x277D82BD8](containerView);
      *&v8 = MEMORY[0x277D82BD8](leadingAnchor).n128_u64[0];
      trailingAnchor = [v122 trailingAnchor];
      containerView3 = [(CPSNavigationCardViewController *)selfCopy containerView];
      trailingAnchor2 = [(UIView *)containerView3 trailingAnchor];
      containerView4 = [(CPSNavigationCardViewController *)selfCopy containerView];
      [(UIView *)containerView4 frame];
      v108 = v9;
      v109 = v10;
      v110 = v11;
      v111 = v12;
      v112[0] = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v11 + 8.0];
      MEMORY[0x277D82BD8](containerView4);
      MEMORY[0x277D82BD8](trailingAnchor2);
      MEMORY[0x277D82BD8](containerView3);
      *&v13 = MEMORY[0x277D82BD8](trailingAnchor).n128_u64[0];
      v74 = MEMORY[0x277CCAAD0];
      v126[0] = v113;
      v126[1] = v112[0];
      v75 = [MEMORY[0x277CBEA60] arrayWithObjects:v126 count:{2, v13}];
      [v74 activateConstraints:?];
      *&v14 = MEMORY[0x277D82BD8](v75).n128_u64[0];
      view = [(CPSNavigationCardViewController *)selfCopy view];
      [view layoutIfNeeded];
      *&v15 = MEMORY[0x277D82BD8](view).n128_u64[0];
      [v122 layoutIfNeeded];
      [v113 setConstant:?];
      [v112[0] setConstant:0.0];
      v77 = selfCopy;
      contentView = [v122 contentView];
      [contentView frame];
      v105[1] = v16;
      v105[2] = v17;
      v105[3] = v18;
      v105[4] = v19;
      [(CPSNavigationCardViewController *)v77 adjustedShadowConstraintsWithFrame:*&v16, *&v17, *&v18, *&v19];
      *&v106 = v20;
      *(&v106 + 1) = v21;
      *&v107 = v22;
      *(&v107 + 1) = v23;
      MEMORY[0x277D82BD8](contentView);
      v107 = [(CPSNavigationCardViewController *)selfCopy createShadowViewWithFrame:v106, v107];
      [(CPSNavigationCardViewController *)selfCopy setShadowCardView:?];
      *&v24 = MEMORY[0x277D82BD8](v107).n128_u64[0];
      view2 = [(CPSNavigationCardViewController *)selfCopy view];
      shadowCardView2 = [(CPSNavigationCardViewController *)selfCopy shadowCardView];
      containerView5 = [(CPSNavigationCardViewController *)selfCopy containerView];
      [view2 insertSubview:shadowCardView2 belowSubview:?];
      MEMORY[0x277D82BD8](containerView5);
      MEMORY[0x277D82BD8](shadowCardView2);
      *&v25 = MEMORY[0x277D82BD8](view2).n128_u64[0];
      if ([(CPSNavigationCardViewController *)selfCopy _shouldAnimate])
      {
        v65 = MEMORY[0x277D75D18];
        v99 = MEMORY[0x277D85DD0];
        v100 = -1073741824;
        v101 = 0;
        v102 = __63__CPSNavigationCardViewController__transitionFromViews_inView___block_invoke_4;
        v103 = &unk_278D910D8;
        v104 = MEMORY[0x277D82BE0](selfCopy);
        v105[0] = MEMORY[0x277D82BE0](v122);
        [v65 animateWithDuration:0 delay:&v99 options:&__block_literal_global_6 animations:0.4 completion:0.0];
        objc_storeStrong(v105, 0);
        objc_storeStrong(&v104, 0);
      }

      else
      {
        view3 = [(CPSNavigationCardViewController *)selfCopy view];
        [view3 layoutIfNeeded];
        *&v26 = MEMORY[0x277D82BD8](view3).n128_u64[0];
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
    leadingAnchor3 = [v122 leadingAnchor];
    containerView6 = [(CPSNavigationCardViewController *)selfCopy containerView];
    leadingAnchor4 = [(UIView *)containerView6 leadingAnchor];
    v49 = [leadingAnchor3 constraintEqualToAnchor:? constant:?];
    v125[0] = v49;
    trailingAnchor3 = [v122 trailingAnchor];
    containerView7 = [(CPSNavigationCardViewController *)selfCopy containerView];
    trailingAnchor4 = [(UIView *)containerView7 trailingAnchor];
    v45 = [trailingAnchor3 constraintEqualToAnchor:0.0 constant:?];
    v125[1] = v45;
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v125 count:2];
    [v43 activateConstraints:?];
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](trailingAnchor4);
    MEMORY[0x277D82BD8](containerView7);
    MEMORY[0x277D82BD8](trailingAnchor3);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](leadingAnchor4);
    MEMORY[0x277D82BD8](containerView6);
    *&v27 = MEMORY[0x277D82BD8](leadingAnchor3).n128_u64[0];
    containerViewTopConstraint = [(CPSNavigationCardViewController *)selfCopy containerViewTopConstraint];
    containerView8 = [(CPSNavigationCardViewController *)selfCopy containerView];
    [(UIView *)containerView8 frame];
    v95 = v28;
    v96 = v29;
    v97 = v30;
    v98 = v31;
    [(NSLayoutConstraint *)containerViewTopConstraint setConstant:-v31];
    MEMORY[0x277D82BD8](containerView8);
    MEMORY[0x277D82BD8](containerViewTopConstraint);
    v55 = selfCopy;
    contentView2 = [v122 contentView];
    [contentView2 frame];
    v92[1] = v32;
    v92[2] = v33;
    v92[3] = v34;
    v92[4] = v35;
    [(CPSNavigationCardViewController *)v55 adjustedShadowConstraintsWithFrame:*&v32, *&v33, *&v34, *&v35];
    *&v93 = v36;
    *(&v93 + 1) = v37;
    *&v94 = v38;
    *(&v94 + 1) = v39;
    MEMORY[0x277D82BD8](contentView2);
    v57 = [(CPSNavigationCardViewController *)selfCopy createShadowViewWithFrame:v93, v94];
    [(CPSNavigationCardViewController *)selfCopy setShadowCardView:?];
    *&v40 = MEMORY[0x277D82BD8](v57).n128_u64[0];
    view4 = [(CPSNavigationCardViewController *)selfCopy view];
    [view4 layoutIfNeeded];
    *&v41 = MEMORY[0x277D82BD8](view4).n128_u64[0];
    containerViewTopConstraint2 = [(CPSNavigationCardViewController *)selfCopy containerViewTopConstraint];
    [(NSLayoutConstraint *)containerViewTopConstraint2 setConstant:0.0];
    *&v42 = MEMORY[0x277D82BD8](containerViewTopConstraint2).n128_u64[0];
    view5 = [(CPSNavigationCardViewController *)selfCopy view];
    shadowCardView3 = [(CPSNavigationCardViewController *)selfCopy shadowCardView];
    containerView9 = [(CPSNavigationCardViewController *)selfCopy containerView];
    [view5 insertSubview:shadowCardView3 belowSubview:?];
    MEMORY[0x277D82BD8](containerView9);
    MEMORY[0x277D82BD8](shadowCardView3);
    MEMORY[0x277D82BD8](view5);
    v63 = MEMORY[0x277D75D18];
    v86 = MEMORY[0x277D85DD0];
    v87 = -1073741824;
    v88 = 0;
    v89 = __63__CPSNavigationCardViewController__transitionFromViews_inView___block_invoke_6;
    v90 = &unk_278D910D8;
    v91 = MEMORY[0x277D82BE0](selfCopy);
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

- (CGRect)adjustedShadowConstraintsWithFrame:(CGRect)frame
{
  containerViewTopConstraint = [(CPSNavigationCardViewController *)self containerViewTopConstraint];
  [(NSLayoutConstraint *)containerViewTopConstraint constant];
  CGRectMake_0();
  v12 = v3;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  MEMORY[0x277D82BD8](containerViewTopConstraint);
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

- (id)createShadowViewWithFrame:(CGRect)frame
{
  frameCopy = frame;
  selfCopy = self;
  v13[1] = a2;
  v13[0] = objc_opt_new();
  shadowCardView = [(CPSNavigationCardViewController *)selfCopy shadowCardView];
  layer = [(UIView *)shadowCardView layer];
  [(CALayer *)layer setCornerRadius:10.0];
  MEMORY[0x277D82BD8](layer);
  *&v3 = MEMORY[0x277D82BD8](shadowCardView).n128_u64[0];
  shadowCardView2 = [(CPSNavigationCardViewController *)selfCopy shadowCardView];
  layer2 = [(UIView *)shadowCardView2 layer];
  [(CALayer *)layer2 setShadowRadius:20.0];
  MEMORY[0x277D82BD8](layer2);
  *&v4 = MEMORY[0x277D82BD8](shadowCardView2).n128_u64[0];
  shadowCardView3 = [(CPSNavigationCardViewController *)selfCopy shadowCardView];
  layer3 = [(UIView *)shadowCardView3 layer];
  [(CALayer *)layer3 setOpacity:0.0];
  MEMORY[0x277D82BD8](layer3);
  MEMORY[0x277D82BD8](shadowCardView3);
  v12 = MEMORY[0x277D82BE0](v13[0]);
  objc_storeStrong(v13, 0);

  return v12;
}

- (void)updateTripEstimates:(id)estimates
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, estimates);
  objc_storeStrong(location, 0);
}

- (void)_updateSizingViewConstraintsForView:(id)view
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
}

- (void)navigator:(id)navigator didEndTrip:(BOOL)trip
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, navigator);
  currentManeuversCardView = [(CPSNavigationCardViewController *)selfCopy currentManeuversCardView];
  [(CPSManeuversCardView *)currentManeuversCardView removeFromSuperview];
  *&v4 = MEMORY[0x277D82BD8](currentManeuversCardView).n128_u64[0];
  currentPausedCardView = [(CPSNavigationCardViewController *)selfCopy currentPausedCardView];
  [(CPSPausedCardView *)currentPausedCardView removeFromSuperview];
  *&v5 = MEMORY[0x277D82BD8](currentPausedCardView).n128_u64[0];
  [(CPSNavigationCardViewController *)selfCopy setCurrentPausedCardView:0, v5];
  [(CPSNavigationCardViewController *)selfCopy setCurrentManeuversCardView:0];
  [(CPSNavigationCardViewController *)selfCopy _updateHelperConstraints];
  objc_storeStrong(location, 0);
}

- (void)setGuidanceBackgroundColor:(id)color
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, color);
  if (selfCopy->_guidanceBackgroundColor != location[0])
  {
    objc_storeStrong(&selfCopy->_guidanceBackgroundColor, location[0]);
    [(CPSNavigationCardViewController *)selfCopy _updateCardBackgroundColors];
  }

  objc_storeStrong(location, 0);
}

- (void)_updateCardBackgroundColors
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  currentManeuversCardView = [(CPSNavigationCardViewController *)self currentManeuversCardView];
  maneuvers = [(CPSManeuversCardView *)currentManeuversCardView maneuvers];
  firstObject = [(NSArray *)maneuvers firstObject];
  cardBackgroundColor = [firstObject cardBackgroundColor];
  MEMORY[0x277D82BD8](firstObject);
  MEMORY[0x277D82BD8](maneuvers);
  v2 = MEMORY[0x277D82BD8](currentManeuversCardView).n128_u64[0];
  v32 = 0;
  v23 = 1;
  if (!cardBackgroundColor)
  {
    guidanceBackgroundColor = [(CPSNavigationCardViewController *)selfCopy guidanceBackgroundColor];
    v32 = 1;
    v23 = guidanceBackgroundColor != 0;
  }

  if (v32)
  {
    v2 = MEMORY[0x277D82BD8](guidanceBackgroundColor).n128_u64[0];
  }

  currentPausedCardView = [(CPSNavigationCardViewController *)selfCopy currentPausedCardView];
  contentView = [(CPSPausedCardView *)currentPausedCardView contentView];
  backgroundColor = [(UIView *)contentView backgroundColor];
  v4 = location[0];
  location[0] = backgroundColor;
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](contentView);
  guidanceBackgroundColor2 = [(CPSNavigationCardViewController *)selfCopy guidanceBackgroundColor];
  *&v5 = MEMORY[0x277D82BD8](guidanceBackgroundColor2).n128_u64[0];
  if (guidanceBackgroundColor2)
  {
    v26 = 0;
    if (location[0])
    {
      objc_storeStrong(location, location[0]);
    }

    else
    {
      guidanceBackgroundColor3 = [(CPSNavigationCardViewController *)selfCopy guidanceBackgroundColor];
      v26 = 1;
      objc_storeStrong(location, guidanceBackgroundColor3);
    }

    if (v26)
    {
      MEMORY[0x277D82BD8](guidanceBackgroundColor3);
    }

    v24 = 0;
    if (cardBackgroundColor)
    {
      objc_storeStrong(&cardBackgroundColor, cardBackgroundColor);
    }

    else
    {
      guidanceBackgroundColor4 = [(CPSNavigationCardViewController *)selfCopy guidanceBackgroundColor];
      v24 = 1;
      objc_storeStrong(&cardBackgroundColor, guidanceBackgroundColor4);
    }

    if (v24)
    {
      MEMORY[0x277D82BD8](guidanceBackgroundColor4);
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
      crsui_consoleTurnCardETATrayBackgroundColor = [MEMORY[0x277D75348] crsui_consoleTurnCardETATrayBackgroundColor];
      v30 = 1;
      objc_storeStrong(location, crsui_consoleTurnCardETATrayBackgroundColor);
    }

    if (v30)
    {
      MEMORY[0x277D82BD8](crsui_consoleTurnCardETATrayBackgroundColor);
    }

    v28 = 0;
    if (cardBackgroundColor)
    {
      objc_storeStrong(&cardBackgroundColor, cardBackgroundColor);
    }

    else
    {
      crsui_consoleTurnCardETATrayBackgroundColor2 = [MEMORY[0x277D75348] crsui_consoleTurnCardETATrayBackgroundColor];
      v28 = 1;
      objc_storeStrong(&cardBackgroundColor, crsui_consoleTurnCardETATrayBackgroundColor2);
    }

    if (v28)
    {
      MEMORY[0x277D82BD8](crsui_consoleTurnCardETATrayBackgroundColor2);
    }
  }

  currentManeuversCardView2 = [(CPSNavigationCardViewController *)selfCopy currentManeuversCardView];
  [(CPSManeuversCardView *)currentManeuversCardView2 setUsesCustomBackgroundColor:v23];
  *&v6 = MEMORY[0x277D82BD8](currentManeuversCardView2).n128_u64[0];
  v13 = location[0];
  currentPausedCardView2 = [(CPSNavigationCardViewController *)selfCopy currentPausedCardView];
  [(CPSPausedCardView *)currentPausedCardView2 setCardBackgroundColor:v13];
  *&v7 = MEMORY[0x277D82BD8](currentPausedCardView2).n128_u64[0];
  v15 = cardBackgroundColor;
  currentManeuversCardView3 = [(CPSNavigationCardViewController *)selfCopy currentManeuversCardView];
  [(CPSManeuversCardView *)currentManeuversCardView3 setCardBackgroundColor:v15];
  *&v8 = MEMORY[0x277D82BD8](currentManeuversCardView3).n128_u64[0];
  if (v23)
  {
    currentPausedCardView3 = [(CPSNavigationCardViewController *)selfCopy currentPausedCardView];
    [(UIView *)currentPausedCardView3 overrideUserInterfaceStyleBasedOnBackgroundColor:location[0]];
    *&v9 = MEMORY[0x277D82BD8](currentPausedCardView3).n128_u64[0];
    currentManeuversCardView4 = [(CPSNavigationCardViewController *)selfCopy currentManeuversCardView];
    [(UIView *)currentManeuversCardView4 overrideUserInterfaceStyleBasedOnBackgroundColor:cardBackgroundColor];
    MEMORY[0x277D82BD8](currentManeuversCardView4);
  }

  objc_storeStrong(&cardBackgroundColor, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateLinkedCheck
{
  selfCopy = self;
  location[1] = a2;
  v3 = MEMORY[0x277CC1E88];
  navigatingBundleIdentifier = [(CPSNavigationCardViewController *)self navigatingBundleIdentifier];
  location[0] = [v3 bundleProxyForIdentifier:?];
  sdkVersion = [location[0] sdkVersion];
  v6 = [sdkVersion compare:@"13.4" options:64];
  *&v2 = MEMORY[0x277D82BD8](sdkVersion).n128_u64[0];
  v7 = 1;
  if (v6)
  {
    v7 = v6 == 1;
  }

  [(CPSNavigationCardViewController *)selfCopy setPassesLinkCheck:v7, v2];
  objc_storeStrong(location, 0);
}

- (void)setNavigatingBundleIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  if (![(NSString *)selfCopy->_navigatingBundleIdentifier isEqualToString:location[0]])
  {
    v3 = [location[0] copy];
    navigatingBundleIdentifier = selfCopy->_navigatingBundleIdentifier;
    selfCopy->_navigatingBundleIdentifier = v3;
    *&v5 = MEMORY[0x277D82BD8](navigatingBundleIdentifier).n128_u64[0];
    [(CPSNavigationCardViewController *)selfCopy _updateLinkedCheck];
  }

  objc_storeStrong(location, 0);
}

@end