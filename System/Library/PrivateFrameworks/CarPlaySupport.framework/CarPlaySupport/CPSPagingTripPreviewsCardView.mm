@interface CPSPagingTripPreviewsCardView
- (BOOL)shouldUpdateFocusInContext:(id)context;
- (CPSPagingTripPreviewsCardView)initWithTripDelegate:(id)delegate trips:(id)trips textConfiguration:(id)configuration;
- (id)_linearFocusItems;
- (id)_moreRoutesPressedAndFocusedBackground;
- (id)_moreRoutesPressedBackground;
- (id)_moreRoutesPressedLabel;
- (id)preferredFocusEnvironments;
- (void)_setOverviewCollapsed:(BOOL)collapsed;
- (void)_toggleMoreRoutesButtonPressed:(id)pressed;
- (void)_updateButtonColors;
- (void)alternateRoutesView:(id)view didSelectRouteChoice:(id)choice;
- (void)pagingControlView:(id)view didSelectPageIndex:(unint64_t)index;
- (void)setSelectedRouteChoice:(id)choice;
- (void)setSelectedTrip:(id)trip;
- (void)updateEstimates:(id)estimates forTripIdentifier:(id)identifier;
@end

@implementation CPSPagingTripPreviewsCardView

- (CPSPagingTripPreviewsCardView)initWithTripDelegate:(id)delegate trips:(id)trips textConfiguration:(id)configuration
{
  v187[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  v172 = 0;
  objc_storeStrong(&v172, trips);
  v171 = 0;
  objc_storeStrong(&v171, configuration);
  v5 = selfCopy;
  selfCopy = 0;
  v170.receiver = v5;
  v170.super_class = CPSPagingTripPreviewsCardView;
  selfCopy = [(CPSTripPreviewsCardView *)&v170 initWithTripDelegate:location[0] trips:v172 textConfiguration:v171];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    estimatesForTripIdentifiers = selfCopy->_estimatesForTripIdentifiers;
    selfCopy->_estimatesForTripIdentifiers = v6;
    *&v8 = MEMORY[0x277D82BD8](estimatesForTripIdentifiers).n128_u64[0];
    if ([v172 count] > 1)
    {
      v169 = objc_alloc_init(CPSPagingControlView);
      [v169 setPageCount:{objc_msgSend(v172, "count")}];
      [v169 setPagingDelegate:selfCopy];
      containerView = [(CPSTripPreviewsCardView *)selfCopy containerView];
      [(UIView *)containerView addSubview:v169];
      MEMORY[0x277D82BD8](containerView);
      objc_storeStrong(&selfCopy->_pageControl, v169);
      topAnchor = [v169 topAnchor];
      containerView2 = [(CPSTripPreviewsCardView *)selfCopy containerView];
      topAnchor2 = [(UIView *)containerView2 topAnchor];
      v168 = [topAnchor constraintEqualToAnchor:?];
      MEMORY[0x277D82BD8](topAnchor2);
      MEMORY[0x277D82BD8](containerView2);
      *&v9 = MEMORY[0x277D82BD8](topAnchor).n128_u64[0];
      v136 = MEMORY[0x277CCAAD0];
      v187[0] = v168;
      leadingAnchor = [v169 leadingAnchor];
      containerView3 = [(CPSTripPreviewsCardView *)selfCopy containerView];
      leadingAnchor2 = [(UIView *)containerView3 leadingAnchor];
      v142 = [leadingAnchor constraintEqualToAnchor:?];
      v187[1] = v142;
      trailingAnchor = [v169 trailingAnchor];
      containerView4 = [(CPSTripPreviewsCardView *)selfCopy containerView];
      trailingAnchor2 = [(UIView *)containerView4 trailingAnchor];
      v138 = [trailingAnchor constraintEqualToAnchor:?];
      v187[2] = v138;
      v137 = [MEMORY[0x277CBEA60] arrayWithObjects:v187 count:3];
      [v136 activateConstraints:?];
      MEMORY[0x277D82BD8](v137);
      MEMORY[0x277D82BD8](v138);
      MEMORY[0x277D82BD8](trailingAnchor2);
      MEMORY[0x277D82BD8](containerView4);
      MEMORY[0x277D82BD8](trailingAnchor);
      MEMORY[0x277D82BD8](v142);
      MEMORY[0x277D82BD8](leadingAnchor2);
      MEMORY[0x277D82BD8](containerView3);
      *&v10 = MEMORY[0x277D82BD8](leadingAnchor).n128_u64[0];
      [(CPSPagingTripPreviewsCardView *)selfCopy setContentTopConstraint:v168, v10];
      objc_storeStrong(&v168, 0);
      objc_storeStrong(&v169, 0);
    }

    v167 = objc_alloc_init(CPSRouteOverviewView);
    objc_storeStrong(&selfCopy->_overviewView, v167);
    containerView5 = [(CPSTripPreviewsCardView *)selfCopy containerView];
    [(UIView *)containerView5 addSubview:v167];
    *&v11 = MEMORY[0x277D82BD8](containerView5).n128_u64[0];
    pageControl = selfCopy->_pageControl;
    v164 = 0;
    v162 = 0;
    v160 = 0;
    if (pageControl)
    {
      bottomAnchor = [(CPSPagingControlView *)selfCopy->_pageControl bottomAnchor];
      v164 = 1;
      v13 = MEMORY[0x277D82BE0](bottomAnchor);
    }

    else
    {
      containerView6 = [(CPSTripPreviewsCardView *)selfCopy containerView];
      v162 = 1;
      topAnchor3 = [(UIView *)containerView6 topAnchor];
      v160 = 1;
      v13 = MEMORY[0x277D82BE0](topAnchor3);
    }

    v166 = v13;
    if (v160)
    {
      MEMORY[0x277D82BD8](topAnchor3);
    }

    if (v162)
    {
      MEMORY[0x277D82BD8](containerView6);
    }

    if (v164)
    {
      MEMORY[0x277D82BD8](bottomAnchor);
    }

    topAnchor4 = [v167 topAnchor];
    v159 = [topAnchor4 constraintEqualToAnchor:v166];
    *&v14 = MEMORY[0x277D82BD8](topAnchor4).n128_u64[0];
    contentTopConstraint = [(CPSPagingTripPreviewsCardView *)selfCopy contentTopConstraint];
    *&v15 = MEMORY[0x277D82BD8](contentTopConstraint).n128_u64[0];
    if (!contentTopConstraint)
    {
      [(CPSPagingTripPreviewsCardView *)selfCopy setContentTopConstraint:v159, v15];
    }

    v100 = MEMORY[0x277CCAAD0];
    leadingAnchor3 = [v167 leadingAnchor];
    containerView7 = [(CPSTripPreviewsCardView *)selfCopy containerView];
    leadingAnchor4 = [(UIView *)containerView7 leadingAnchor];
    v106 = [leadingAnchor3 constraintEqualToAnchor:?];
    v186[0] = v106;
    trailingAnchor3 = [v167 trailingAnchor];
    containerView8 = [(CPSTripPreviewsCardView *)selfCopy containerView];
    trailingAnchor4 = [(UIView *)containerView8 trailingAnchor];
    v102 = [trailingAnchor3 constraintEqualToAnchor:?];
    v186[1] = v102;
    v186[2] = v159;
    v101 = [MEMORY[0x277CBEA60] arrayWithObjects:v186 count:?];
    [v100 activateConstraints:?];
    MEMORY[0x277D82BD8](v101);
    MEMORY[0x277D82BD8](v102);
    MEMORY[0x277D82BD8](trailingAnchor4);
    MEMORY[0x277D82BD8](containerView8);
    MEMORY[0x277D82BD8](trailingAnchor3);
    MEMORY[0x277D82BD8](v106);
    MEMORY[0x277D82BD8](leadingAnchor4);
    MEMORY[0x277D82BD8](containerView7);
    MEMORY[0x277D82BD8](leadingAnchor3);
    v158 = objc_alloc_init(CPSAlternateRoutesView);
    [v158 setSelectionDelegate:selfCopy];
    objc_storeStrong(&selfCopy->_alternateRoutesView, v158);
    [v158 setClipsToBounds:1];
    containerView9 = [(CPSTripPreviewsCardView *)selfCopy containerView];
    [(UIView *)containerView9 addSubview:v158];
    *&v16 = MEMORY[0x277D82BD8](containerView9).n128_u64[0];
    v111 = selfCopy;
    heightAnchor = [v158 heightAnchor];
    v112 = [heightAnchor constraintEqualToConstant:0.0];
    [(CPSPagingTripPreviewsCardView *)v111 setAlternateRoutesHeightConstraint:?];
    MEMORY[0x277D82BD8](v112);
    *&v17 = MEMORY[0x277D82BD8](heightAnchor).n128_u64[0];
    v114 = MEMORY[0x277CCAAD0];
    leadingAnchor5 = [v158 leadingAnchor];
    containerView10 = [(CPSTripPreviewsCardView *)selfCopy containerView];
    leadingAnchor6 = [(UIView *)containerView10 leadingAnchor];
    v121 = [leadingAnchor5 constraintEqualToAnchor:?];
    v185[0] = v121;
    trailingAnchor5 = [v158 trailingAnchor];
    containerView11 = [(CPSTripPreviewsCardView *)selfCopy containerView];
    trailingAnchor6 = [(UIView *)containerView11 trailingAnchor];
    v117 = [trailingAnchor5 constraintEqualToAnchor:?];
    v185[1] = v117;
    alternateRoutesHeightConstraint = [(CPSPagingTripPreviewsCardView *)selfCopy alternateRoutesHeightConstraint];
    v185[2] = alternateRoutesHeightConstraint;
    v115 = [MEMORY[0x277CBEA60] arrayWithObjects:v185 count:3];
    [v114 activateConstraints:?];
    MEMORY[0x277D82BD8](v115);
    MEMORY[0x277D82BD8](alternateRoutesHeightConstraint);
    MEMORY[0x277D82BD8](v117);
    MEMORY[0x277D82BD8](trailingAnchor6);
    MEMORY[0x277D82BD8](containerView11);
    MEMORY[0x277D82BD8](trailingAnchor5);
    MEMORY[0x277D82BD8](v121);
    MEMORY[0x277D82BD8](leadingAnchor6);
    MEMORY[0x277D82BD8](containerView10);
    bottomAnchor2 = [v167 bottomAnchor];
    topAnchor5 = [v158 topAnchor];
    v157 = [bottomAnchor2 constraintEqualToAnchor:?];
    MEMORY[0x277D82BD8](topAnchor5);
    *&v18 = MEMORY[0x277D82BD8](bottomAnchor2).n128_u64[0];
    [(CPSPagingTripPreviewsCardView *)selfCopy setContentBottomConstraint:v157, v18];
    [(CPSPagingTripPreviewsCardView *)selfCopy addConstraint:v157];
    v156 = [MEMORY[0x277D75220] buttonWithType:0];
    [v156 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v19) = 1148846080;
    [v156 setContentHuggingPriority:1 forAxis:v19];
    textConfiguration = [(CPSTripPreviewsCardView *)selfCopy textConfiguration];
    additionalRoutesButtonTitle = [(CPTripPreviewTextConfiguration *)textConfiguration additionalRoutesButtonTitle];
    v153 = 0;
    if (additionalRoutesButtonTitle)
    {
      v20 = MEMORY[0x277D82BE0](additionalRoutesButtonTitle);
    }

    else
    {
      v154 = CPSLocalizedStringForKey(@"MORE_ROUTES");
      v153 = 1;
      v20 = MEMORY[0x277D82BE0](v154);
    }

    v155 = v20;
    if (v153)
    {
      MEMORY[0x277D82BD8](v154);
    }

    MEMORY[0x277D82BD8](additionalRoutesButtonTitle);
    MEMORY[0x277D82BD8](textConfiguration);
    v152 = [MEMORY[0x277D74300] systemFontOfSize:15.0 weight:*MEMORY[0x277D74420]];
    v35 = objc_alloc(MEMORY[0x277CCA898]);
    v34 = v155;
    v46 = MEMORY[0x277D740A8];
    v183[0] = *MEMORY[0x277D740A8];
    v184[0] = v152;
    v47 = MEMORY[0x277D740C0];
    v183[1] = *MEMORY[0x277D740C0];
    _moreRoutesNormalLabel = [(CPSPagingTripPreviewsCardView *)selfCopy _moreRoutesNormalLabel];
    v184[1] = _moreRoutesNormalLabel;
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v184 forKeys:v183 count:?];
    v151 = [v35 initWithString:v34 attributes:?];
    MEMORY[0x277D82BD8](v36);
    *&v21 = MEMORY[0x277D82BD8](_moreRoutesNormalLabel).n128_u64[0];
    [v156 setAttributedTitle:v151 forState:v21];
    v39 = objc_alloc(MEMORY[0x277CCA898]);
    v38 = v155;
    v181[0] = *v46;
    v182[0] = v152;
    v181[1] = *v47;
    _moreRoutesFocusedLabel = [(CPSPagingTripPreviewsCardView *)selfCopy _moreRoutesFocusedLabel];
    v182[1] = _moreRoutesFocusedLabel;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v182 forKeys:v181 count:2];
    v150 = [v39 initWithString:v38 attributes:?];
    MEMORY[0x277D82BD8](v40);
    *&v22 = MEMORY[0x277D82BD8](_moreRoutesFocusedLabel).n128_u64[0];
    [v156 setAttributedTitle:v150 forState:{8, v22}];
    v43 = objc_alloc(MEMORY[0x277CCA898]);
    v42 = v155;
    v179[0] = *v46;
    v180[0] = v152;
    v179[1] = *v47;
    _moreRoutesPressedLabel = [(CPSPagingTripPreviewsCardView *)selfCopy _moreRoutesPressedLabel];
    v180[1] = _moreRoutesPressedLabel;
    v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v180 forKeys:v179 count:2];
    v149 = [v43 initWithString:v42 attributes:?];
    MEMORY[0x277D82BD8](v44);
    *&v23 = MEMORY[0x277D82BD8](_moreRoutesPressedLabel).n128_u64[0];
    [v156 setAttributedTitle:v149 forState:{1, v23}];
    v49 = objc_alloc(MEMORY[0x277CCA898]);
    v48 = v155;
    v177[0] = *v46;
    v178[0] = v152;
    v177[1] = *v47;
    _moreRoutesPressedAndFocusedLabel = [(CPSPagingTripPreviewsCardView *)selfCopy _moreRoutesPressedAndFocusedLabel];
    v178[1] = _moreRoutesPressedAndFocusedLabel;
    v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v178 forKeys:v177 count:2];
    v148 = [v49 initWithString:v48 attributes:?];
    MEMORY[0x277D82BD8](v50);
    *&v24 = MEMORY[0x277D82BD8](_moreRoutesPressedAndFocusedLabel).n128_u64[0];
    [v156 setAttributedTitle:v148 forState:{9, v24}];
    [v156 setContentHorizontalAlignment:0];
    [v156 setOpaque:1];
    [v156 addTarget:selfCopy action:sel__toggleMoreRoutesButtonPressed_ forControlEvents:0x2000];
    objc_storeStrong(&selfCopy->_moreRoutesButton, v156);
    containerView12 = [(CPSTripPreviewsCardView *)selfCopy containerView];
    [(UIView *)containerView12 addSubview:selfCopy->_moreRoutesButton];
    *&v25 = MEMORY[0x277D82BD8](containerView12).n128_u64[0];
    [(UIButton *)selfCopy->_moreRoutesButton setClipsToBounds:1, v25];
    v53 = selfCopy;
    heightAnchor2 = [(UIButton *)selfCopy->_moreRoutesButton heightAnchor];
    v54 = [heightAnchor2 constraintEqualToConstant:?];
    [(CPSPagingTripPreviewsCardView *)v53 setToggleRoutesButtonHeightConstraint:?];
    MEMORY[0x277D82BD8](v54);
    *&v26 = MEMORY[0x277D82BD8](heightAnchor2).n128_u64[0];
    v56 = MEMORY[0x277CCAAD0];
    leadingAnchor7 = [(UIButton *)selfCopy->_moreRoutesButton leadingAnchor];
    containerView13 = [(CPSTripPreviewsCardView *)selfCopy containerView];
    leadingAnchor8 = [(UIView *)containerView13 leadingAnchor];
    v66 = [leadingAnchor7 constraintEqualToAnchor:?];
    v176[0] = v66;
    trailingAnchor7 = [(UIButton *)selfCopy->_moreRoutesButton trailingAnchor];
    containerView14 = [(CPSTripPreviewsCardView *)selfCopy containerView];
    trailingAnchor8 = [(UIView *)containerView14 trailingAnchor];
    v62 = [trailingAnchor7 constraintEqualToAnchor:?];
    v176[1] = v62;
    topAnchor6 = [(UIButton *)selfCopy->_moreRoutesButton topAnchor];
    bottomAnchor3 = [v158 bottomAnchor];
    v59 = [topAnchor6 constraintEqualToAnchor:6.0 constant:?];
    v176[2] = v59;
    toggleRoutesButtonHeightConstraint = [(CPSPagingTripPreviewsCardView *)selfCopy toggleRoutesButtonHeightConstraint];
    v176[3] = toggleRoutesButtonHeightConstraint;
    v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v176 count:4];
    [v56 activateConstraints:?];
    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](toggleRoutesButtonHeightConstraint);
    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](bottomAnchor3);
    MEMORY[0x277D82BD8](topAnchor6);
    MEMORY[0x277D82BD8](v62);
    MEMORY[0x277D82BD8](trailingAnchor8);
    MEMORY[0x277D82BD8](containerView14);
    MEMORY[0x277D82BD8](trailingAnchor7);
    MEMORY[0x277D82BD8](v66);
    MEMORY[0x277D82BD8](leadingAnchor8);
    MEMORY[0x277D82BD8](containerView13);
    *&v27 = MEMORY[0x277D82BD8](leadingAnchor7).n128_u64[0];
    layer = [(UIButton *)selfCopy->_moreRoutesButton layer];
    [layer setCornerRadius:18.0];
    *&v28 = MEMORY[0x277D82BD8](layer).n128_u64[0];
    layer2 = [(UIButton *)selfCopy->_moreRoutesButton layer];
    [layer2 setCornerCurve:*MEMORY[0x277CDA138]];
    *&v29 = MEMORY[0x277D82BD8](layer2).n128_u64[0];
    [(UIButton *)selfCopy->_moreRoutesButton setClipsToBounds:1, v29];
    [(CPSTripPreviewsCardView *)selfCopy setupGoButton];
    containerView15 = [(CPSTripPreviewsCardView *)selfCopy containerView];
    goButton = [(CPSTripPreviewsCardView *)selfCopy goButton];
    [(UIView *)containerView15 addSubview:?];
    MEMORY[0x277D82BD8](goButton);
    *&v30 = MEMORY[0x277D82BD8](containerView15).n128_u64[0];
    v74 = MEMORY[0x277CCAAD0];
    goButton2 = [(CPSTripPreviewsCardView *)selfCopy goButton];
    leadingAnchor9 = [(UIButton *)goButton2 leadingAnchor];
    containerView16 = [(CPSTripPreviewsCardView *)selfCopy containerView];
    leadingAnchor10 = [(UIView *)containerView16 leadingAnchor];
    v93 = [leadingAnchor9 constraintEqualToAnchor:?];
    v175[0] = v93;
    goButton3 = [(CPSTripPreviewsCardView *)selfCopy goButton];
    trailingAnchor9 = [(UIButton *)goButton3 trailingAnchor];
    containerView17 = [(CPSTripPreviewsCardView *)selfCopy containerView];
    trailingAnchor10 = [(UIView *)containerView17 trailingAnchor];
    v88 = [trailingAnchor9 constraintEqualToAnchor:?];
    v175[1] = v88;
    goButton4 = [(CPSTripPreviewsCardView *)selfCopy goButton];
    topAnchor7 = [(UIButton *)goButton4 topAnchor];
    bottomAnchor4 = [(UIButton *)selfCopy->_moreRoutesButton bottomAnchor];
    v84 = [topAnchor7 constraintEqualToAnchor:4.0 constant:?];
    v175[2] = v84;
    goButton5 = [(CPSTripPreviewsCardView *)selfCopy goButton];
    heightAnchor3 = [(UIButton *)goButton5 heightAnchor];
    v81 = [heightAnchor3 constraintEqualToConstant:36.0];
    v175[3] = v81;
    goButton6 = [(CPSTripPreviewsCardView *)selfCopy goButton];
    bottomAnchor5 = [(UIButton *)goButton6 bottomAnchor];
    containerView18 = [(CPSTripPreviewsCardView *)selfCopy containerView];
    bottomAnchor6 = [(UIView *)containerView18 bottomAnchor];
    v76 = [bottomAnchor5 constraintEqualToAnchor:?];
    v175[4] = v76;
    v75 = [MEMORY[0x277CBEA60] arrayWithObjects:v175 count:5];
    [v74 activateConstraints:?];
    MEMORY[0x277D82BD8](v75);
    MEMORY[0x277D82BD8](v76);
    MEMORY[0x277D82BD8](bottomAnchor6);
    MEMORY[0x277D82BD8](containerView18);
    MEMORY[0x277D82BD8](bottomAnchor5);
    MEMORY[0x277D82BD8](goButton6);
    MEMORY[0x277D82BD8](v81);
    MEMORY[0x277D82BD8](heightAnchor3);
    MEMORY[0x277D82BD8](goButton5);
    MEMORY[0x277D82BD8](v84);
    MEMORY[0x277D82BD8](bottomAnchor4);
    MEMORY[0x277D82BD8](topAnchor7);
    MEMORY[0x277D82BD8](goButton4);
    MEMORY[0x277D82BD8](v88);
    MEMORY[0x277D82BD8](trailingAnchor10);
    MEMORY[0x277D82BD8](containerView17);
    MEMORY[0x277D82BD8](trailingAnchor9);
    MEMORY[0x277D82BD8](goButton3);
    MEMORY[0x277D82BD8](v93);
    MEMORY[0x277D82BD8](leadingAnchor10);
    MEMORY[0x277D82BD8](containerView16);
    MEMORY[0x277D82BD8](leadingAnchor9);
    *&v31 = MEMORY[0x277D82BD8](goButton2).n128_u64[0];
    [(CPSPagingTripPreviewsCardView *)selfCopy _updateButtonColors];
    v98 = selfCopy;
    firstObject = [v172 firstObject];
    [(CPSPagingTripPreviewsCardView *)v98 setSelectedTrip:?];
    MEMORY[0x277D82BD8](firstObject);
    objc_storeStrong(&v148, 0);
    objc_storeStrong(&v149, 0);
    objc_storeStrong(&v150, 0);
    objc_storeStrong(&v151, 0);
    objc_storeStrong(&v152, 0);
    objc_storeStrong(&v155, 0);
    objc_storeStrong(&v156, 0);
    objc_storeStrong(&v157, 0);
    objc_storeStrong(&v158, 0);
    objc_storeStrong(&v159, 0);
    objc_storeStrong(&v166, 0);
    objc_storeStrong(&v167, 0);
  }

  v33 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v171, 0);
  objc_storeStrong(&v172, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v33;
}

- (void)_updateButtonColors
{
  selfCopy = self;
  v14 = a2;
  v13.receiver = self;
  v13.super_class = CPSPagingTripPreviewsCardView;
  [(CPSTripPreviewsCardView *)&v13 _updateButtonColors];
  moreRoutesButton = [(CPSPagingTripPreviewsCardView *)selfCopy moreRoutesButton];
  _moreRoutesNormalBackground = [(CPSPagingTripPreviewsCardView *)selfCopy _moreRoutesNormalBackground];
  [UIButton cps_setBackgroundColor:moreRoutesButton forState:"cps_setBackgroundColor:forState:"];
  MEMORY[0x277D82BD8](_moreRoutesNormalBackground);
  *&v2 = MEMORY[0x277D82BD8](moreRoutesButton).n128_u64[0];
  moreRoutesButton2 = [(CPSPagingTripPreviewsCardView *)selfCopy moreRoutesButton];
  _moreRoutesFocusedBackground = [(CPSPagingTripPreviewsCardView *)selfCopy _moreRoutesFocusedBackground];
  [UIButton cps_setBackgroundColor:moreRoutesButton2 forState:"cps_setBackgroundColor:forState:"];
  MEMORY[0x277D82BD8](_moreRoutesFocusedBackground);
  *&v3 = MEMORY[0x277D82BD8](moreRoutesButton2).n128_u64[0];
  moreRoutesButton3 = [(CPSPagingTripPreviewsCardView *)selfCopy moreRoutesButton];
  _moreRoutesPressedBackground = [(CPSPagingTripPreviewsCardView *)selfCopy _moreRoutesPressedBackground];
  [UIButton cps_setBackgroundColor:moreRoutesButton3 forState:"cps_setBackgroundColor:forState:"];
  MEMORY[0x277D82BD8](_moreRoutesPressedBackground);
  *&v4 = MEMORY[0x277D82BD8](moreRoutesButton3).n128_u64[0];
  moreRoutesButton4 = [(CPSPagingTripPreviewsCardView *)selfCopy moreRoutesButton];
  _moreRoutesPressedAndFocusedBackground = [(CPSPagingTripPreviewsCardView *)selfCopy _moreRoutesPressedAndFocusedBackground];
  [UIButton cps_setBackgroundColor:moreRoutesButton4 forState:"cps_setBackgroundColor:forState:"];
  MEMORY[0x277D82BD8](_moreRoutesPressedAndFocusedBackground);
  MEMORY[0x277D82BD8](moreRoutesButton4);
}

- (void)setSelectedTrip:(id)trip
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, trip);
  v36.receiver = selfCopy;
  v36.super_class = CPSPagingTripPreviewsCardView;
  [(CPSTripPreviewsCardView *)&v36 setSelectedTrip:location[0]];
  pageControl = [(CPSPagingTripPreviewsCardView *)selfCopy pageControl];
  trips = [(CPSTripPreviewsCardView *)selfCopy trips];
  [(CPSPagingControlView *)pageControl setPageIndex:[(NSArray *)trips indexOfObject:location[0]]];
  MEMORY[0x277D82BD8](trips);
  *&v3 = MEMORY[0x277D82BD8](pageControl).n128_u64[0];
  overviewView = [(CPSPagingTripPreviewsCardView *)selfCopy overviewView];
  [(CPSRouteOverviewView *)overviewView setRepresentedTrip:location[0]];
  *&v4 = MEMORY[0x277D82BD8](overviewView).n128_u64[0];
  routeChoices = [location[0] routeChoices];
  v34 = 0;
  alternateRoutesView = [(CPSPagingTripPreviewsCardView *)selfCopy alternateRoutesView];
  if ([routeChoices count] <= 1)
  {
    moreRoutesButton = [(CPSPagingTripPreviewsCardView *)selfCopy moreRoutesButton];
    [(UIButton *)moreRoutesButton setHidden:1];
    [alternateRoutesView setHidden:{1, MEMORY[0x277D82BD8](moreRoutesButton).n128_f64[0]}];
    overviewView2 = [(CPSPagingTripPreviewsCardView *)selfCopy overviewView];
    bottomAnchor = [(CPSRouteOverviewView *)overviewView2 bottomAnchor];
    goButton = [(CPSTripPreviewsCardView *)selfCopy goButton];
    topAnchor = [(UIButton *)goButton topAnchor];
    v9 = [bottomAnchor constraintEqualToAnchor:-6.0 constant:?];
    v10 = v34;
    v34 = v9;
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](topAnchor);
    MEMORY[0x277D82BD8](goButton);
    MEMORY[0x277D82BD8](bottomAnchor);
    v8 = MEMORY[0x277D82BD8](overviewView2).n128_u64[0];
  }

  else
  {
    moreRoutesButton2 = [(CPSPagingTripPreviewsCardView *)selfCopy moreRoutesButton];
    [(UIButton *)moreRoutesButton2 setHidden:0];
    [alternateRoutesView setHidden:{0, MEMORY[0x277D82BD8](moreRoutesButton2).n128_f64[0]}];
    [alternateRoutesView setIndexForSelectedRoute:0];
    routeChoices2 = [location[0] routeChoices];
    [alternateRoutesView setAvailableRouteChoices:?];
    *&v5 = MEMORY[0x277D82BD8](routeChoices2).n128_u64[0];
    overviewView3 = [(CPSPagingTripPreviewsCardView *)selfCopy overviewView];
    bottomAnchor2 = [(CPSRouteOverviewView *)overviewView3 bottomAnchor];
    topAnchor2 = [alternateRoutesView topAnchor];
    v6 = [bottomAnchor2 constraintEqualToAnchor:?];
    v7 = v34;
    v34 = v6;
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](bottomAnchor2);
    v8 = MEMORY[0x277D82BD8](overviewView3).n128_u64[0];
  }

  contentBottomConstraint = [(CPSPagingTripPreviewsCardView *)selfCopy contentBottomConstraint];
  [(NSLayoutConstraint *)contentBottomConstraint setActive:0];
  *&v11 = MEMORY[0x277D82BD8](contentBottomConstraint).n128_u64[0];
  [(CPSPagingTripPreviewsCardView *)selfCopy setContentBottomConstraint:v34, v11];
  contentBottomConstraint2 = [(CPSPagingTripPreviewsCardView *)selfCopy contentBottomConstraint];
  [(NSLayoutConstraint *)contentBottomConstraint2 setActive:1];
  *&v12 = MEMORY[0x277D82BD8](contentBottomConstraint2).n128_u64[0];
  estimatesForTripIdentifiers = [(CPSPagingTripPreviewsCardView *)selfCopy estimatesForTripIdentifiers];
  identifier = [location[0] identifier];
  v32 = [(NSMutableDictionary *)estimatesForTripIdentifiers objectForKey:?];
  MEMORY[0x277D82BD8](identifier);
  *&v13 = MEMORY[0x277D82BD8](estimatesForTripIdentifiers).n128_u64[0];
  if (v32)
  {
    overviewView4 = [(CPSPagingTripPreviewsCardView *)selfCopy overviewView];
    [(CPSRouteOverviewView *)overviewView4 setCurrentTravelEstimates:v32];
    MEMORY[0x277D82BD8](overviewView4);
  }

  objc_storeStrong(&v32, 0);
  objc_storeStrong(&alternateRoutesView, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&routeChoices, 0);
  objc_storeStrong(location, 0);
}

- (void)_setOverviewCollapsed:(BOOL)collapsed
{
  selfCopy = self;
  v60 = a2;
  collapsedCopy = collapsed;
  v58 = 0.0;
  v57 = 0.0;
  v56 = 0.0;
  v55 = 0;
  v54 = 0;
  alternateRoutesView = [(CPSPagingTripPreviewsCardView *)self alternateRoutesView];
  if (collapsedCopy)
  {
    overviewView = [(CPSPagingTripPreviewsCardView *)selfCopy overviewView];
    [(CPSRouteOverviewView *)overviewView frame];
    v52[9] = v3;
    v52[10] = v4;
    v52[11] = v5;
    v52[12] = v6;
    MaxY = UIRectGetMaxY(*&v3, *&v4, *&v5, *&v6);
    [(CPSPagingTripPreviewsCardView *)selfCopy bounds];
    v52[5] = v7;
    v52[6] = v8;
    v52[7] = v9;
    v52[8] = v10;
    v25 = MaxY - UIRectGetMinY(*&v7, *&v8);
    MEMORY[0x277D82BD8](overviewView);
    v52[13] = *&v25;
    contentTopConstraint = [(CPSPagingTripPreviewsCardView *)selfCopy contentTopConstraint];
    [(NSLayoutConstraint *)contentTopConstraint constant];
    v58 = v11 - v25;
    MEMORY[0x277D82BD8](contentTopConstraint);
    v57 = v25 + 1.0;
    toggleRoutesButtonHeightConstraint = [(CPSPagingTripPreviewsCardView *)selfCopy toggleRoutesButtonHeightConstraint];
    [(NSLayoutConstraint *)toggleRoutesButtonHeightConstraint constant];
    v54 = v12;
    MEMORY[0x277D82BD8](toggleRoutesButtonHeightConstraint);
    v56 = v25 + 1.0;
    v55 = 0;
    pageControl = [(CPSPagingTripPreviewsCardView *)selfCopy pageControl];
    previousButton = [(CPSPagingControlView *)pageControl previousButton];
    [(UIButton *)previousButton setEnabled:0];
    MEMORY[0x277D82BD8](previousButton);
    pageControl2 = [(CPSPagingTripPreviewsCardView *)selfCopy pageControl];
    nextButton = [(CPSPagingControlView *)pageControl2 nextButton];
    [(UIButton *)nextButton setEnabled:0];
    MEMORY[0x277D82BD8](nextButton);
    *&v13 = MEMORY[0x277D82BD8](pageControl2).n128_u64[0];
  }

  else
  {
    v58 = 0.0;
    v57 = 0.0;
    v56 = 0.0;
    [(CPSAlternateRoutesView *)alternateRoutesView bounds];
    v52[1] = v14;
    v52[2] = v15;
    v52[3] = v16;
    v52[4] = v17;
    v55 = v17;
    pageControl3 = [(CPSPagingTripPreviewsCardView *)selfCopy pageControl];
    [(CPSPagingControlView *)pageControl3 enablePageControlsIfNecessary];
    v52[0] = [(CPSPagingTripPreviewsCardView *)selfCopy moreRoutesButton];
    [v52[0] setEnabled:1];
    v54 = 0x4042000000000000;
    objc_storeStrong(v52, 0);
  }

  bottomConstraint = [(CPSAlternateRoutesView *)alternateRoutesView bottomConstraint];
  [(NSLayoutConstraint *)bottomConstraint setConstant:v56];
  *&v18 = MEMORY[0x277D82BD8](bottomConstraint).n128_u64[0];
  [(CPSPagingTripPreviewsCardView *)selfCopy layoutIfNeeded];
  v20 = MEMORY[0x277D75D18];
  v45 = MEMORY[0x277D85DD0];
  v46 = -1073741824;
  v47 = 0;
  v48 = __55__CPSPagingTripPreviewsCardView__setOverviewCollapsed___block_invoke;
  v49 = &unk_278D93DD8;
  v50 = MEMORY[0x277D82BE0](selfCopy);
  v51[1] = *&v58;
  v51[2] = *&v57;
  v51[0] = MEMORY[0x277D82BE0](alternateRoutesView);
  v51[3] = v55;
  v51[4] = v54;
  v39 = MEMORY[0x277D85DD0];
  v40 = -1073741824;
  v41 = 0;
  v42 = __55__CPSPagingTripPreviewsCardView__setOverviewCollapsed___block_invoke_2;
  v43 = &unk_278D91398;
  v44 = MEMORY[0x277D82BE0](selfCopy);
  [v20 animateWithDuration:&v45 animations:&v39 completion:0.3];
  v21 = MEMORY[0x277D75D18];
  v32 = MEMORY[0x277D85DD0];
  v33 = -1073741824;
  v34 = 0;
  v35 = __55__CPSPagingTripPreviewsCardView__setOverviewCollapsed___block_invoke_3;
  v36 = &unk_278D91CA8;
  v38 = collapsedCopy;
  v37 = MEMORY[0x277D82BE0](selfCopy);
  [v21 performWithoutAnimation:&v32];
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(v51, 0);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(&alternateRoutesView, 0);
}

uint64_t __55__CPSPagingTripPreviewsCardView__setOverviewCollapsed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contentTopConstraint];
  [v2 setConstant:*(a1 + 48)];
  v3 = [*(a1 + 32) alternateRoutesHeightConstraint];
  [v3 setConstant:*(a1 + 56)];
  v4 = [*(a1 + 40) bottomConstraint];
  [v4 setConstant:*(a1 + 64)];
  v5 = [*(a1 + 32) toggleRoutesButtonHeightConstraint];
  [v5 setConstant:*(a1 + 72)];
  return [*(a1 + 32) layoutIfNeeded];
}

void __55__CPSPagingTripPreviewsCardView__setOverviewCollapsed___block_invoke_3(uint64_t a1)
{
  v47[2] = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  location[0] = 0;
  if (*(a1 + 40))
  {
    v26 = [*(a1 + 32) textConfiguration];
    v27 = [v26 overviewButtonTitle];
    v37 = 0;
    if (v27)
    {
      objc_storeStrong(location, v27);
    }

    else
    {
      v38 = CPSLocalizedStringForKey(@"OVERVIEW");
      v37 = 1;
      objc_storeStrong(location, v38);
    }

    if (v37)
    {
      MEMORY[0x277D82BD8](v38);
    }

    MEMORY[0x277D82BD8](v27);
    v1 = MEMORY[0x277D82BD8](v26).n128_u64[0];
  }

  else
  {
    v24 = [*(a1 + 32) textConfiguration];
    v25 = [v24 additionalRoutesButtonTitle];
    v35 = 0;
    if (v25)
    {
      objc_storeStrong(location, v25);
    }

    else
    {
      v36 = CPSLocalizedStringForKey(@"MORE_ROUTES");
      v35 = 1;
      objc_storeStrong(location, v36);
    }

    if (v35)
    {
      MEMORY[0x277D82BD8](v36);
    }

    MEMORY[0x277D82BD8](v25);
    v1 = MEMORY[0x277D82BD8](v24).n128_u64[0];
  }

  v34 = [*(a1 + 32) moreRoutesButton];
  v33 = [MEMORY[0x277D74300] systemFontOfSize:15.0 weight:*MEMORY[0x277D74420]];
  v7 = objc_alloc(MEMORY[0x277CCA898]);
  v6 = location[0];
  v18 = MEMORY[0x277D740A8];
  v46[0] = *MEMORY[0x277D740A8];
  v47[0] = v33;
  v19 = MEMORY[0x277D740C0];
  v46[1] = *MEMORY[0x277D740C0];
  v9 = [*(a1 + 32) _moreRoutesNormalLabel];
  v47[1] = v9;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:?];
  v32 = [v7 initWithString:v6 attributes:?];
  MEMORY[0x277D82BD8](v8);
  *&v2 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  [v34 setAttributedTitle:v32 forState:{0, v2}];
  v11 = objc_alloc(MEMORY[0x277CCA898]);
  v10 = location[0];
  v44[0] = *v18;
  v45[0] = v33;
  v44[1] = *v19;
  v13 = [*(a1 + 32) _moreRoutesFocusedLabel];
  v45[1] = v13;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
  v31 = [v11 initWithString:v10 attributes:?];
  MEMORY[0x277D82BD8](v12);
  *&v3 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  [v34 setAttributedTitle:v31 forState:{8, v3}];
  v15 = objc_alloc(MEMORY[0x277CCA898]);
  v14 = location[0];
  v42[0] = *v18;
  v43[0] = v33;
  v42[1] = *v19;
  v17 = [*(a1 + 32) _moreRoutesPressedLabel];
  v43[1] = v17;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
  v30 = [v15 initWithString:v14 attributes:?];
  MEMORY[0x277D82BD8](v16);
  *&v4 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  [v34 setAttributedTitle:v30 forState:{1, v4}];
  v21 = objc_alloc(MEMORY[0x277CCA898]);
  v20 = location[0];
  v40[0] = *v18;
  v41[0] = v33;
  v40[1] = *v19;
  v23 = [*(a1 + 32) _moreRoutesPressedAndFocusedLabel];
  v41[1] = v23;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
  v29 = [v21 initWithString:v20 attributes:?];
  MEMORY[0x277D82BD8](v22);
  *&v5 = MEMORY[0x277D82BD8](v23).n128_u64[0];
  [v34 setAttributedTitle:v29 forState:{9, v5}];
  [v34 layoutIfNeeded];
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
}

- (void)_toggleMoreRoutesButtonPressed:(id)pressed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pressed);
  [(CPSPagingTripPreviewsCardView *)selfCopy setShowMoreRoutes:[(CPSPagingTripPreviewsCardView *)selfCopy showMoreRoutes]^ 1];
  [(CPSPagingTripPreviewsCardView *)selfCopy _setOverviewCollapsed:[(CPSPagingTripPreviewsCardView *)selfCopy showMoreRoutes]];
  objc_storeStrong(location, 0);
}

- (void)setSelectedRouteChoice:(id)choice
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, choice);
  v6.receiver = selfCopy;
  v6.super_class = CPSPagingTripPreviewsCardView;
  [(CPSTripPreviewsCardView *)&v6 setSelectedRouteChoice:location[0]];
  overviewView = [(CPSPagingTripPreviewsCardView *)selfCopy overviewView];
  additionalInformationVariants = [location[0] additionalInformationVariants];
  firstObject = [additionalInformationVariants firstObject];
  [(CPSRouteOverviewView *)overviewView setRouteNote:?];
  MEMORY[0x277D82BD8](firstObject);
  MEMORY[0x277D82BD8](additionalInformationVariants);
  MEMORY[0x277D82BD8](overviewView);
  objc_storeStrong(location, 0);
}

- (void)updateEstimates:(id)estimates forTripIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, estimates);
  v13 = 0;
  objc_storeStrong(&v13, identifier);
  v12.receiver = selfCopy;
  v12.super_class = CPSPagingTripPreviewsCardView;
  [(CPSTripPreviewsCardView *)&v12 updateEstimates:location[0] forTripIdentifier:v13];
  estimatesForTripIdentifiers = [(CPSPagingTripPreviewsCardView *)selfCopy estimatesForTripIdentifiers];
  [(NSMutableDictionary *)estimatesForTripIdentifiers setObject:location[0] forKey:v13];
  *&v4 = MEMORY[0x277D82BD8](estimatesForTripIdentifiers).n128_u64[0];
  selectedTrip = [(CPSTripPreviewsCardView *)selfCopy selectedTrip];
  identifier = [(CPTrip *)selectedTrip identifier];
  v11 = [identifier isEqual:v13];
  MEMORY[0x277D82BD8](identifier);
  *&v5 = MEMORY[0x277D82BD8](selectedTrip).n128_u64[0];
  if (v11)
  {
    overviewView = [(CPSPagingTripPreviewsCardView *)selfCopy overviewView];
    [(CPSRouteOverviewView *)overviewView setCurrentTravelEstimates:location[0]];
    MEMORY[0x277D82BD8](overviewView);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (id)_moreRoutesPressedBackground
{
  _carSystemQuaternaryColor = [MEMORY[0x277D75348] _carSystemQuaternaryColor];
  v4 = [_carSystemQuaternaryColor colorWithAlphaComponent:0.06];
  MEMORY[0x277D82BD8](_carSystemQuaternaryColor);

  return v4;
}

- (id)_moreRoutesPressedAndFocusedBackground
{
  _carSystemFocusColor = [MEMORY[0x277D75348] _carSystemFocusColor];
  v4 = [_carSystemFocusColor colorWithAlphaComponent:0.5];
  MEMORY[0x277D82BD8](_carSystemFocusColor);

  return v4;
}

- (id)_moreRoutesPressedLabel
{
  _carSystemFocusLabelColor = [MEMORY[0x277D75348] _carSystemFocusLabelColor];
  v4 = [_carSystemFocusLabelColor colorWithAlphaComponent:0.5];
  MEMORY[0x277D82BD8](_carSystemFocusLabelColor);

  return v4;
}

id __66__CPSPagingTripPreviewsCardView__moreRoutesPressedAndFocusedLabel__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if ([location[0] userInterfaceStyle] == 2)
  {
    v5 = [MEMORY[0x277D75348] systemBlackColor];
    v7 = [v5 colorWithAlphaComponent:0.5];
    MEMORY[0x277D82BD8](v5);
  }

  else
  {
    v4 = [MEMORY[0x277D75348] systemWhiteColor];
    v7 = [v4 colorWithAlphaComponent:0.5];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(location, 0);
  v2 = v7;

  return v2;
}

- (void)alternateRoutesView:(id)view didSelectRouteChoice:(id)choice
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v5 = 0;
  objc_storeStrong(&v5, choice);
  [(CPSPagingTripPreviewsCardView *)selfCopy setSelectedRouteChoice:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)pagingControlView:(id)view didSelectPageIndex:(unint64_t)index
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v5 = selfCopy;
  trips = [(CPSTripPreviewsCardView *)selfCopy trips];
  v6 = [(NSArray *)trips objectAtIndex:index];
  [(CPSPagingTripPreviewsCardView *)v5 setSelectedTrip:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](trips);
  objc_storeStrong(location, 0);
}

- (id)preferredFocusEnvironments
{
  v9[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = [(CPSTripPreviewsCardView *)self goButton];
  if ([(CPSPagingTripPreviewsCardView *)selfCopy showMoreRoutes])
  {
    alternateRoutesView = [(CPSPagingTripPreviewsCardView *)selfCopy alternateRoutesView];
    v9[0] = alternateRoutesView;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    MEMORY[0x277D82BD8](alternateRoutesView);
  }

  else if (location[0])
  {
    v8 = location[0];
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
  }

  else
  {
    v7 = MEMORY[0x277D82BE0](MEMORY[0x277CBEBF8]);
  }

  objc_storeStrong(location, 0);
  v2 = v7;

  return v2;
}

- (id)_linearFocusItems
{
  selfCopy = self;
  v17[1] = a2;
  v17[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  pageControl = [(CPSPagingTripPreviewsCardView *)selfCopy pageControl];
  v2 = MEMORY[0x277D82BD8](pageControl).n128_u64[0];
  if (pageControl)
  {
    pageControl2 = [(CPSPagingTripPreviewsCardView *)selfCopy pageControl];
    _linearFocusItems = [(CPSPagingControlView *)pageControl2 _linearFocusItems];
    [v17[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](_linearFocusItems);
    v2 = MEMORY[0x277D82BD8](pageControl2).n128_u64[0];
  }

  alternateRoutesView = [(CPSPagingTripPreviewsCardView *)selfCopy alternateRoutesView];
  if (alternateRoutesView && [(CPSPagingTripPreviewsCardView *)selfCopy showMoreRoutes])
  {
    _linearFocusItems2 = [alternateRoutesView _linearFocusItems];
    [v17[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](_linearFocusItems2);
  }

  moreRoutesButton = [(CPSPagingTripPreviewsCardView *)selfCopy moreRoutesButton];
  v14 = 0;
  LOBYTE(v8) = 0;
  if (([(UIButton *)moreRoutesButton isEnabled]& 1) != 0)
  {
    moreRoutesButton2 = [(CPSPagingTripPreviewsCardView *)selfCopy moreRoutesButton];
    v14 = 1;
    v8 = [(UIButton *)moreRoutesButton2 isHidden]^ 1;
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](moreRoutesButton2);
  }

  v3 = MEMORY[0x277D82BD8](moreRoutesButton).n128_u64[0];
  if (v8)
  {
    moreRoutesButton3 = [(CPSPagingTripPreviewsCardView *)selfCopy moreRoutesButton];
    [v17[0] addObject:?];
    v3 = MEMORY[0x277D82BD8](moreRoutesButton3).n128_u64[0];
  }

  location = [(CPSTripPreviewsCardView *)selfCopy goButton];
  if (location && ([location isHidden] & 1) == 0)
  {
    [v17[0] addObject:location];
  }

  v5 = MEMORY[0x277D82BE0](v17[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&alternateRoutesView, 0);
  objc_storeStrong(v17, 0);

  return v5;
}

- (BOOL)shouldUpdateFocusInContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  nextFocusedView = [location[0] nextFocusedView];
  alternateRoutesView = [(CPSPagingTripPreviewsCardView *)selfCopy alternateRoutesView];
  v7 = [nextFocusedView isDescendantOfView:?];
  MEMORY[0x277D82BD8](alternateRoutesView);
  *&v3 = MEMORY[0x277D82BD8](nextFocusedView).n128_u64[0];
  if (v7)
  {
    showMoreRoutes = [(CPSPagingTripPreviewsCardView *)selfCopy showMoreRoutes];
  }

  else
  {
    showMoreRoutes = 1;
  }

  objc_storeStrong(location, 0);
  return showMoreRoutes & 1;
}

@end