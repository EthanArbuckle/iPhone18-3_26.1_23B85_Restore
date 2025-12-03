@interface CPSDashboardManeuversCardView
- (BOOL)wantsLargeSize;
- (CGSize)intrinsicContentSize;
- (CPSDashboardManeuversCardView)initWithFrame:(CGRect)frame;
- (void)_updateConstraints;
- (void)_updateStyleOverridesForSubviews;
- (void)layoutSubviews;
- (void)showManeuvers:(id)maneuvers usingDisplayStyles:(id)styles;
- (void)updateEstimates:(id)estimates forManeuver:(id)maneuver;
@end

@implementation CPSDashboardManeuversCardView

- (CPSDashboardManeuversCardView)initWithFrame:(CGRect)frame
{
  frameCopy = frame;
  v6 = a2;
  v7 = 0;
  v5.receiver = self;
  v5.super_class = CPSDashboardManeuversCardView;
  v7 = [(CPSDashboardManeuversCardView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  objc_storeStrong(&v7, v7);
  if (v7)
  {
    [(CPSDashboardManeuversCardView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v4 = MEMORY[0x277D82BE0](v7);
  objc_storeStrong(&v7, 0);
  return v4;
}

- (CGSize)intrinsicContentSize
{
  [(CPSDashboardManeuversCardView *)self bounds];
  CGRectGetWidth(v18);
  CGSizeMake_2();
  v13 = v2;
  v14 = v3;
  primaryManeuverView = [(CPSDashboardManeuversCardView *)self primaryManeuverView];
  [(CPSPrimaryManeuverView *)primaryManeuverView bounds];
  v15 = v14 + v4;
  v10 = 0;
  if ([(CPSDashboardManeuversCardView *)self showSecondaryManeuverView])
  {
    secondaryManeuverView = [(CPSDashboardManeuversCardView *)self secondaryManeuverView];
    v10 = 1;
    [(CPSDashboardSecondaryManeuverView *)secondaryManeuverView bounds];
    v8 = v5;
  }

  else
  {
    v8 = 0.0;
  }

  v16 = v15 + v8;
  if (v10)
  {
    MEMORY[0x277D82BD8](secondaryManeuverView);
  }

  v6 = v13;
  v7 = v16;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)_updateConstraints
{
  v58[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v53[1] = a2;
  primaryManeuverView = [(CPSDashboardManeuversCardView *)self primaryManeuverView];
  MEMORY[0x277D82BD8](primaryManeuverView);
  if (primaryManeuverView)
  {
    v53[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
    primaryManeuverView2 = [(CPSDashboardManeuversCardView *)selfCopy primaryManeuverView];
    topAnchor = [(CPSPrimaryManeuverView *)primaryManeuverView2 topAnchor];
    topAnchor2 = [(CPSDashboardManeuversCardView *)selfCopy topAnchor];
    v46 = [topAnchor constraintEqualToAnchor:0.0 constant:?];
    v58[0] = v46;
    primaryManeuverView3 = [(CPSDashboardManeuversCardView *)selfCopy primaryManeuverView];
    leadingAnchor = [(CPSPrimaryManeuverView *)primaryManeuverView3 leadingAnchor];
    leadingAnchor2 = [(CPSDashboardManeuversCardView *)selfCopy leadingAnchor];
    v42 = [leadingAnchor constraintEqualToAnchor:?];
    v58[1] = v42;
    primaryManeuverView4 = [(CPSDashboardManeuversCardView *)selfCopy primaryManeuverView];
    trailingAnchor = [(CPSPrimaryManeuverView *)primaryManeuverView4 trailingAnchor];
    trailingAnchor2 = [(CPSDashboardManeuversCardView *)selfCopy trailingAnchor];
    v38 = [trailingAnchor constraintEqualToAnchor:?];
    v58[2] = v38;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:3];
    [v53[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](trailingAnchor2);
    MEMORY[0x277D82BD8](trailingAnchor);
    MEMORY[0x277D82BD8](primaryManeuverView4);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](leadingAnchor2);
    MEMORY[0x277D82BD8](leadingAnchor);
    MEMORY[0x277D82BD8](primaryManeuverView3);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](topAnchor);
    secondaryManeuverView = [(CPSDashboardManeuversCardView *)selfCopy secondaryManeuverView];
    *&v2 = MEMORY[0x277D82BD8](secondaryManeuverView).n128_u64[0];
    if (secondaryManeuverView)
    {
      secondaryManeveuverConstraints = [(CPSDashboardManeuversCardView *)selfCopy secondaryManeveuverConstraints];
      *&v3 = MEMORY[0x277D82BD8](secondaryManeveuverConstraints).n128_u64[0];
      if (secondaryManeveuverConstraints)
      {
        v34 = MEMORY[0x277CCAAD0];
        secondaryManeveuverConstraints2 = [(CPSDashboardManeuversCardView *)selfCopy secondaryManeveuverConstraints];
        [v34 deactivateConstraints:?];
        [(CPSDashboardManeuversCardView *)selfCopy setSecondaryManeveuverConstraints:0, MEMORY[0x277D82BD8](secondaryManeveuverConstraints2).n128_f64[0]];
      }

      v52 = objc_alloc_init(MEMORY[0x277CBEB18]);
      primaryManeuverView5 = [(CPSDashboardManeuversCardView *)selfCopy primaryManeuverView];
      bottomAnchor = [(CPSPrimaryManeuverView *)primaryManeuverView5 bottomAnchor];
      secondaryManeuverView2 = [(CPSDashboardManeuversCardView *)selfCopy secondaryManeuverView];
      topAnchor3 = [(CPSDashboardSecondaryManeuverView *)secondaryManeuverView2 topAnchor];
      v29 = [bottomAnchor constraintEqualToAnchor:0.0 constant:?];
      v57[0] = v29;
      secondaryManeuverView3 = [(CPSDashboardManeuversCardView *)selfCopy secondaryManeuverView];
      leadingAnchor3 = [(CPSDashboardSecondaryManeuverView *)secondaryManeuverView3 leadingAnchor];
      leadingAnchor4 = [(CPSDashboardManeuversCardView *)selfCopy leadingAnchor];
      v25 = [leadingAnchor3 constraintEqualToAnchor:?];
      v57[1] = v25;
      secondaryManeuverView4 = [(CPSDashboardManeuversCardView *)selfCopy secondaryManeuverView];
      trailingAnchor3 = [(CPSDashboardSecondaryManeuverView *)secondaryManeuverView4 trailingAnchor];
      trailingAnchor4 = [(CPSDashboardManeuversCardView *)selfCopy trailingAnchor];
      v21 = [trailingAnchor3 constraintEqualToAnchor:?];
      v57[2] = v21;
      secondaryManeuverView5 = [(CPSDashboardManeuversCardView *)selfCopy secondaryManeuverView];
      bottomAnchor2 = [(CPSDashboardSecondaryManeuverView *)secondaryManeuverView5 bottomAnchor];
      bottomAnchor3 = [(CPSDashboardManeuversCardView *)selfCopy bottomAnchor];
      v17 = [bottomAnchor2 constraintEqualToAnchor:?];
      v57[3] = v17;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:4];
      [v52 addObjectsFromArray:?];
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](bottomAnchor3);
      MEMORY[0x277D82BD8](bottomAnchor2);
      MEMORY[0x277D82BD8](secondaryManeuverView5);
      MEMORY[0x277D82BD8](v21);
      MEMORY[0x277D82BD8](trailingAnchor4);
      MEMORY[0x277D82BD8](trailingAnchor3);
      MEMORY[0x277D82BD8](secondaryManeuverView4);
      MEMORY[0x277D82BD8](v25);
      MEMORY[0x277D82BD8](leadingAnchor4);
      MEMORY[0x277D82BD8](leadingAnchor3);
      MEMORY[0x277D82BD8](secondaryManeuverView3);
      MEMORY[0x277D82BD8](v29);
      MEMORY[0x277D82BD8](topAnchor3);
      MEMORY[0x277D82BD8](secondaryManeuverView2);
      MEMORY[0x277D82BD8](bottomAnchor);
      if (![(CPSDashboardManeuversCardView *)selfCopy showSecondaryManeuverView])
      {
        secondaryManeuverView6 = [(CPSDashboardManeuversCardView *)selfCopy secondaryManeuverView];
        heightAnchor = [(CPSDashboardSecondaryManeuverView *)secondaryManeuverView6 heightAnchor];
        v13 = [heightAnchor constraintEqualToConstant:0.0];
        v56 = v13;
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
        [v52 addObjectsFromArray:?];
        MEMORY[0x277D82BD8](v12);
        MEMORY[0x277D82BD8](v13);
        MEMORY[0x277D82BD8](heightAnchor);
        MEMORY[0x277D82BD8](secondaryManeuverView6);
      }

      [(CPSDashboardManeuversCardView *)selfCopy setSecondaryManeveuverConstraints:v52];
      v10 = v53[0];
      secondaryManeveuverConstraints3 = [(CPSDashboardManeuversCardView *)selfCopy secondaryManeveuverConstraints];
      [v10 addObjectsFromArray:?];
      MEMORY[0x277D82BD8](secondaryManeveuverConstraints3);
      objc_storeStrong(&v52, 0);
    }

    else
    {
      primaryManeuverView6 = [(CPSDashboardManeuversCardView *)selfCopy primaryManeuverView];
      bottomAnchor4 = [(CPSPrimaryManeuverView *)primaryManeuverView6 bottomAnchor];
      bottomAnchor5 = [(CPSDashboardManeuversCardView *)selfCopy bottomAnchor];
      v6 = [bottomAnchor4 constraintEqualToAnchor:0.0 constant:?];
      v55 = v6;
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
      [v53[0] addObjectsFromArray:?];
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](bottomAnchor5);
      MEMORY[0x277D82BD8](bottomAnchor4);
      MEMORY[0x277D82BD8](primaryManeuverView6);
    }

    [MEMORY[0x277CCAAD0] activateConstraints:{v53[0], v53}];
    objc_storeStrong(v4, 0);
  }
}

- (void)_updateStyleOverridesForSubviews
{
  selfCopy = self;
  location[1] = a2;
  primaryManeuverView = [(CPSDashboardManeuversCardView *)self primaryManeuverView];
  maneuver = [(CPSPrimaryManeuverView *)primaryManeuverView maneuver];
  cardBackgroundColor = [(CPManeuver *)maneuver cardBackgroundColor];
  allowsCustomBackgroundColorForManeuver = 0;
  if (cardBackgroundColor)
  {
    allowsCustomBackgroundColorForManeuver = selfCopy->_allowsCustomBackgroundColorForManeuver;
  }

  MEMORY[0x277D82BD8](cardBackgroundColor);
  MEMORY[0x277D82BD8](maneuver);
  *&v2 = MEMORY[0x277D82BD8](primaryManeuverView).n128_u64[0];
  if (allowsCustomBackgroundColorForManeuver)
  {
    primaryManeuverView2 = [(CPSDashboardManeuversCardView *)selfCopy primaryManeuverView];
    maneuver2 = [(CPSPrimaryManeuverView *)primaryManeuverView2 maneuver];
    cardBackgroundColor2 = [(CPManeuver *)maneuver2 cardBackgroundColor];
    [(CPSDashboardManeuversCardView *)selfCopy setBackgroundColor:?];
    MEMORY[0x277D82BD8](cardBackgroundColor2);
    MEMORY[0x277D82BD8](maneuver2);
    secondaryManeuverView = [(CPSDashboardManeuversCardView *)selfCopy secondaryManeuverView];
    v7 = MEMORY[0x277D75348];
    v10 = CPSFrameworkBundle();
    traitCollection = [(CPSDashboardManeuversCardView *)selfCopy traitCollection];
    v8 = [v7 colorNamed:@"GuidanceColor30AlphaLightWhiteDarkBlack" inBundle:v10 compatibleWithTraitCollection:?];
    [(CPSDashboardSecondaryManeuverView *)secondaryManeuverView setBackgroundColor:?];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](traitCollection);
    MEMORY[0x277D82BD8](v10);
    backgroundColor = [(CPSDashboardManeuversCardView *)selfCopy backgroundColor];
    traitCollection2 = [(CPSDashboardManeuversCardView *)selfCopy traitCollection];
    location[0] = [backgroundColor resolvedColorWithTraitCollection:?];
    MEMORY[0x277D82BD8](traitCollection2);
    MEMORY[0x277D82BD8](backgroundColor);
    v15 = CPContrastingColorForColor();
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [v15 isEqual:?];
    MEMORY[0x277D82BD8](whiteColor);
    subviews = [(CPSDashboardManeuversCardView *)selfCopy subviews];
    [subviews enumerateObjectsUsingBlock:?];
    MEMORY[0x277D82BD8](subviews);
    objc_storeStrong(location, 0);
  }
}

void __65__CPSDashboardManeuversCardView__updateStyleOverridesForSubviews__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [location[0] setOverrideUserInterfaceStyle:a1[4]];
  objc_storeStrong(location, 0);
}

- (void)layoutSubviews
{
  selfCopy = self;
  v84 = a2;
  v83.receiver = self;
  v83.super_class = CPSDashboardManeuversCardView;
  [(CPSDashboardManeuversCardView *)&v83 layoutSubviews];
  primaryManeuverView = [(CPSDashboardManeuversCardView *)selfCopy primaryManeuverView];
  v81 = 0;
  v63 = 0;
  if (!primaryManeuverView)
  {
    maneuvers = [(CPSDashboardManeuversCardView *)selfCopy maneuvers];
    v81 = 1;
    v63 = [(NSArray *)maneuvers count]!= 0;
  }

  if (v81)
  {
    MEMORY[0x277D82BD8](maneuvers);
  }

  *&v2 = MEMORY[0x277D82BD8](primaryManeuverView).n128_u64[0];
  if (v63)
  {
    v59 = [CPSDashboardPrimaryManeuverView alloc];
    maneuvers2 = [(CPSDashboardManeuversCardView *)selfCopy maneuvers];
    firstObject = [(NSArray *)maneuvers2 firstObject];
    v80 = [(CPSPrimaryManeuverView *)v59 initWithManeuver:?];
    MEMORY[0x277D82BD8](firstObject);
    *&v3 = MEMORY[0x277D82BD8](maneuvers2).n128_u64[0];
    [(CPSDashboardManeuversCardView *)selfCopy addSubview:v80, v3];
    [(CPSDashboardManeuversCardView *)selfCopy setPrimaryManeuverView:v80];
    objc_storeStrong(&v80, 0);
  }

  secondaryManeuverView = [(CPSDashboardManeuversCardView *)selfCopy secondaryManeuverView];
  v78 = 0;
  v58 = 0;
  if (!secondaryManeuverView)
  {
    maneuvers3 = [(CPSDashboardManeuversCardView *)selfCopy maneuvers];
    v78 = 1;
    v58 = [(NSArray *)maneuvers3 count]> 1;
  }

  if (v78)
  {
    MEMORY[0x277D82BD8](maneuvers3);
  }

  *&v4 = MEMORY[0x277D82BD8](secondaryManeuverView).n128_u64[0];
  if (v58)
  {
    v55 = [CPSDashboardSecondaryManeuverView alloc];
    v56 = [(NSArray *)selfCopy->_maneuvers objectAtIndex:1];
    v77 = [(CPSDashboardSecondaryManeuverView *)v55 initWithManeuver:?];
    *&v5 = MEMORY[0x277D82BD8](v56).n128_u64[0];
    [(CPSDashboardManeuversCardView *)selfCopy addSubview:v77, v5];
    [(CPSDashboardManeuversCardView *)selfCopy setSecondaryManeuverView:v77];
    objc_storeStrong(&v77, 0);
  }

  [(CPSDashboardManeuversCardView *)selfCopy _updateStyleOverridesForSubviews];
  [(CPSDashboardManeuversCardView *)selfCopy bounds];
  v74[1] = v6;
  v74[2] = v7;
  *&v75 = v8;
  *(&v75 + 1) = v9;
  v76 = v75;
  v74[0] = 0;
  maneuvers4 = [(CPSDashboardManeuversCardView *)selfCopy maneuvers];
  firstObject2 = [(NSArray *)maneuvers4 firstObject];
  junctionImage = [firstObject2 junctionImage];
  MEMORY[0x277D82BD8](junctionImage);
  MEMORY[0x277D82BD8](firstObject2);
  v10 = MEMORY[0x277D82BD8](maneuvers4).n128_u64[0];
  if (junctionImage)
  {
    primaryManeuverView2 = [(CPSDashboardManeuversCardView *)selfCopy primaryManeuverView];
    v11 = [(CPSPrimaryManeuverView *)primaryManeuverView2 shortestJunctionViewlayoutConfigurationForSize:v76];
    v12 = v74[0];
    v74[0] = v11;
    MEMORY[0x277D82BD8](v12);
    v10 = MEMORY[0x277D82BD8](primaryManeuverView2).n128_u64[0];
  }

  if (!v74[0])
  {
    primaryManeuverView3 = [(CPSDashboardManeuversCardView *)selfCopy primaryManeuverView];
    v74[0] = [(CPSPrimaryManeuverView *)primaryManeuverView3 layoutConfigurationForSize:v76];
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](primaryManeuverView3);
  }

  v73 = 0.0;
  secondaryManeuverView2 = [(CPSDashboardManeuversCardView *)selfCopy secondaryManeuverView];
  v13 = MEMORY[0x277D82BD8](secondaryManeuverView2).n128_u64[0];
  if (secondaryManeuverView2)
  {
    secondaryManeuverView3 = [(CPSDashboardManeuversCardView *)selfCopy secondaryManeuverView];
    [(CPSDashboardManeuversCardView *)selfCopy bounds];
    v70[5] = v14;
    v70[6] = v15;
    *&v71 = v16;
    *(&v71 + 1) = v17;
    v72 = v71;
    [(CPSSecondaryManeuverView *)secondaryManeuverView3 generateLayoutConfigurationsForSizeIfNecessary:0 force:v16, v17];
    *&v18 = MEMORY[0x277D82BD8](secondaryManeuverView3).n128_u64[0];
    secondaryManeuverView4 = [(CPSDashboardManeuversCardView *)selfCopy secondaryManeuverView];
    [(CPSSecondaryManeuverView *)secondaryManeuverView4 generatedHeight];
    v73 = v19;
    v13 = MEMORY[0x277D82BD8](secondaryManeuverView4).n128_u64[0];
  }

  [v74[0] height];
  v46 = v20 + v73;
  [(CPSDashboardManeuversCardView *)selfCopy bounds];
  v70[1] = v21;
  v70[2] = v22;
  v70[3] = v23;
  v70[4] = v24;
  if (v46 <= *&v24)
  {
    secondaryManeuverView5 = [(CPSDashboardManeuversCardView *)selfCopy secondaryManeuverView];
    [(CPSDashboardManeuversCardView *)selfCopy setShowSecondaryManeuverView:secondaryManeuverView5 != 0];
    MEMORY[0x277D82BD8](secondaryManeuverView5);
  }

  else
  {
    secondaryManeuverView6 = [(CPSDashboardManeuversCardView *)selfCopy secondaryManeuverView];
    *&v25 = MEMORY[0x277D82BD8](secondaryManeuverView6).n128_u64[0];
    if (secondaryManeuverView6)
    {
      v70[0] = 0;
      maneuvers5 = [(CPSDashboardManeuversCardView *)selfCopy maneuvers];
      firstObject3 = [(NSArray *)maneuvers5 firstObject];
      junctionImage2 = [firstObject3 junctionImage];
      MEMORY[0x277D82BD8](junctionImage2);
      MEMORY[0x277D82BD8](firstObject3);
      v26 = MEMORY[0x277D82BD8](maneuvers5).n128_u64[0];
      if (junctionImage2)
      {
        primaryManeuverView4 = [(CPSDashboardManeuversCardView *)selfCopy primaryManeuverView];
        v27 = [(CPSPrimaryManeuverView *)primaryManeuverView4 shortestJunctionViewlayoutConfigurationForSize:v76];
        v28 = v70[0];
        v70[0] = v27;
        MEMORY[0x277D82BD8](v28);
        v26 = MEMORY[0x277D82BD8](primaryManeuverView4).n128_u64[0];
      }

      if (!v70[0])
      {
        primaryManeuverView5 = [(CPSDashboardManeuversCardView *)selfCopy primaryManeuverView];
        v70[0] = [(CPSPrimaryManeuverView *)primaryManeuverView5 shortestInstructionlayoutConfigurationForSize:v76];
        MEMORY[0x277D82BD8](0);
        v26 = MEMORY[0x277D82BD8](primaryManeuverView5).n128_u64[0];
      }

      if (v70[0] && ([v70[0] height], v39 = v29 + v73, -[CPSDashboardManeuversCardView bounds](selfCopy, "bounds"), v31 = v30, v26 = *&v39, v69[1] = v31, v69[2] = v32, v69[3] = v33, v69[4] = v34, v39 <= *&v34))
      {
        [(CPSDashboardManeuversCardView *)selfCopy setShowSecondaryManeuverView:1, v39];
        secondaryManeuverView7 = [(CPSDashboardManeuversCardView *)selfCopy secondaryManeuverView];
        [(CPSDashboardSecondaryManeuverView *)secondaryManeuverView7 setHidden:0];
        MEMORY[0x277D82BD8](secondaryManeuverView7);
      }

      else
      {
        [(CPSDashboardManeuversCardView *)selfCopy setShowSecondaryManeuverView:0, *&v26];
        secondaryManeuverView8 = [(CPSDashboardManeuversCardView *)selfCopy secondaryManeuverView];
        [(CPSDashboardSecondaryManeuverView *)secondaryManeuverView8 setHidden:1];
        MEMORY[0x277D82BD8](secondaryManeuverView8);
      }

      objc_storeStrong(v70, 0);
    }
  }

  v35 = MEMORY[0x277D75D18];
  v64 = MEMORY[0x277D85DD0];
  v65 = -1073741824;
  v66 = 0;
  v67 = __47__CPSDashboardManeuversCardView_layoutSubviews__block_invoke;
  v68 = &unk_278D913E8;
  v69[0] = MEMORY[0x277D82BE0](selfCopy);
  [v35 performWithoutAnimation:&v64];
  objc_storeStrong(v69, 0);
  objc_storeStrong(v74, 0);
}

- (void)showManeuvers:(id)maneuvers usingDisplayStyles:(id)styles
{
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, maneuvers);
  v6 = 0;
  objc_storeStrong(&v6, styles);
  oslog = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v9, location[0], v6);
    _os_log_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEFAULT, "showManeuvers: %@ usingDisplayStyles: %@", v9, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&selfCopy->_maneuvers, location[0]);
  [(CPSDashboardManeuversCardView *)selfCopy setNeedsLayout];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)updateEstimates:(id)estimates forManeuver:(id)maneuver
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, estimates);
  v13 = 0;
  objc_storeStrong(&v13, maneuver);
  primaryManeuverView = [(CPSDashboardManeuversCardView *)selfCopy primaryManeuverView];
  maneuver = [(CPSPrimaryManeuverView *)primaryManeuverView maneuver];
  identifier = [(CPManeuver *)maneuver identifier];
  identifier2 = [v13 identifier];
  v12 = [identifier isEqual:?];
  MEMORY[0x277D82BD8](identifier2);
  MEMORY[0x277D82BD8](identifier);
  MEMORY[0x277D82BD8](maneuver);
  *&v4 = MEMORY[0x277D82BD8](primaryManeuverView).n128_u64[0];
  if (v12)
  {
    primaryManeuverView2 = [(CPSDashboardManeuversCardView *)selfCopy primaryManeuverView];
    [(CPSPrimaryManeuverView *)primaryManeuverView2 setCurrentTravelEstimates:location[0]];
    *&v5 = MEMORY[0x277D82BD8](primaryManeuverView2).n128_u64[0];
    [(CPSDashboardManeuversCardView *)selfCopy setNeedsLayout];
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)wantsLargeSize
{
  selfCopy = self;
  v18[1] = a2;
  maneuvers = [(CPSDashboardManeuversCardView *)self maneuvers];
  firstObject = [(NSArray *)maneuvers firstObject];
  junctionImage = [firstObject junctionImage];
  MEMORY[0x277D82BD8](junctionImage);
  MEMORY[0x277D82BD8](firstObject);
  MEMORY[0x277D82BD8](maneuvers);
  if (junctionImage)
  {
    v6 = objc_opt_class();
    window = [(CPSDashboardManeuversCardView *)selfCopy window];
    v18[0] = CPSSafeCast_7(v6, window);
    *&v2 = MEMORY[0x277D82BD8](window).n128_u64[0];
    widgetSizes = [v18[0] widgetSizes];
    lastObject = [widgetSizes lastObject];
    [lastObject CGSizeValue];
    v16 = v3;
    v17 = v4;
    MEMORY[0x277D82BD8](lastObject);
    MEMORY[0x277D82BD8](widgetSizes);
    *&v15 = v16;
    *(&v15 + 1) = v17 - 12.0;
    primaryManeuverView = [(CPSDashboardManeuversCardView *)selfCopy primaryManeuverView];
    v14 = [(CPSPrimaryManeuverView *)primaryManeuverView shortestJunctionViewlayoutConfigurationForSize:v15];
    MEMORY[0x277D82BD8](primaryManeuverView);
    v20 = v14 != 0;
    objc_storeStrong(&v14, 0);
    objc_storeStrong(v18, 0);
  }

  else
  {
    return 0;
  }

  return v20;
}

@end