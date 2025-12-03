@interface CPSManeuversCardView
+ (id)maneuverViewWithManeuver:(id)maneuver;
- (BOOL)canFitSize:(CGSize)size;
- (CGSize)intrinsicContentSize;
- (CPSManeuversCardView)initWithManeuvers:(id)maneuvers;
- (void)_updateConstraints;
- (void)_updateHairlineBackgroundColor;
- (void)_updateSecondaryManeuverBackgroundColor;
- (void)invalidate;
- (void)layoutSubviews;
- (void)setCardBackgroundColor:(id)color;
- (void)setUsesCustomBackgroundColor:(BOOL)color;
- (void)showManeuvers:(id)maneuvers usingDisplayStyles:(id)styles;
- (void)traitCollectionDidChange:(id)change;
- (void)updateEstimates:(id)estimates forManeuver:(id)maneuver;
@end

@implementation CPSManeuversCardView

- (CPSManeuversCardView)initWithManeuvers:(id)maneuvers
{
  v25[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, maneuvers);
  v3 = selfCopy;
  selfCopy = 0;
  v22.receiver = v3;
  v22.super_class = CPSManeuversCardView;
  selfCopy = [(CPSManeuversCardView *)&v22 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_maneuvers, location[0]);
    [(CPSManeuversCardView *)selfCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = +[_TtC14CarPlaySupport12CPSGlassView createWithTemplateConfiguration];
    layer = [v21 layer];
    [layer setCornerRadius:18.0];
    *&v4 = MEMORY[0x277D82BD8](layer).n128_u64[0];
    [v21 setTranslatesAutoresizingMaskIntoConstraints:{0, v4}];
    objc_storeStrong(&selfCopy->_contentView, v21);
    [(CPSManeuversCardView *)selfCopy addSubview:selfCopy->_contentView];
    v10 = MEMORY[0x277CCAAD0];
    topAnchor = [v21 topAnchor];
    topAnchor2 = [(CPSManeuversCardView *)selfCopy topAnchor];
    v18 = [topAnchor constraintEqualToAnchor:?];
    v25[0] = v18;
    leadingAnchor = [v21 leadingAnchor];
    leadingAnchor2 = [(CPSManeuversCardView *)selfCopy leadingAnchor];
    v15 = [leadingAnchor constraintEqualToAnchor:?];
    v25[1] = v15;
    trailingAnchor = [v21 trailingAnchor];
    trailingAnchor2 = [(CPSManeuversCardView *)selfCopy trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:?];
    v25[2] = v12;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
    [v10 activateConstraints:?];
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](trailingAnchor2);
    MEMORY[0x277D82BD8](trailingAnchor);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](leadingAnchor2);
    MEMORY[0x277D82BD8](leadingAnchor);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](topAnchor);
    v5 = objc_opt_new();
    activeConstraints = selfCopy->_activeConstraints;
    selfCopy->_activeConstraints = v5;
    MEMORY[0x277D82BD8](activeConstraints);
    objc_storeStrong(&v21, 0);
  }

  v8 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (CGSize)intrinsicContentSize
{
  [(CPSManeuversCardView *)self bounds];
  CGRectGetWidth(v18);
  CGSizeMake_11();
  v13 = v2;
  v14 = v3;
  primaryManeuverView = [(CPSManeuversCardView *)self primaryManeuverView];
  [(CPSPrimaryManeuverView *)primaryManeuverView intrinsicContentSize];
  v15 = v14 + v4;
  v10 = 0;
  if ([(CPSManeuversCardView *)self showSecondaryManeuverView])
  {
    secondaryManeuverView = [(CPSManeuversCardView *)self secondaryManeuverView];
    v10 = 1;
    [(CPSSecondaryManeuverView *)secondaryManeuverView bounds];
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

- (void)setCardBackgroundColor:(id)color
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, color);
  objc_storeStrong(&selfCopy->_cardBackgroundColor, location[0]);
  [(UIView *)selfCopy->_contentView setGlassTintColor:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_updateConstraints
{
  v81[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v76[1] = a2;
  primaryManeuverView = [(CPSManeuversCardView *)self primaryManeuverView];
  MEMORY[0x277D82BD8](primaryManeuverView);
  if (primaryManeuverView)
  {
    v76[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ([(NSMutableArray *)selfCopy->_activeConstraints count])
    {
      [MEMORY[0x277CCAAD0] deactivateConstraints:selfCopy->_activeConstraints];
      [(NSMutableArray *)selfCopy->_activeConstraints removeAllObjects];
    }

    primaryManeuverView2 = [(CPSManeuversCardView *)selfCopy primaryManeuverView];
    topAnchor = [(CPSPrimaryManeuverView *)primaryManeuverView2 topAnchor];
    topAnchor2 = [(CPSManeuversCardView *)selfCopy topAnchor];
    v68 = [topAnchor constraintEqualToAnchor:?];
    v81[0] = v68;
    primaryManeuverView3 = [(CPSManeuversCardView *)selfCopy primaryManeuverView];
    leadingAnchor = [(CPSPrimaryManeuverView *)primaryManeuverView3 leadingAnchor];
    leadingAnchor2 = [(CPSManeuversCardView *)selfCopy leadingAnchor];
    v64 = [leadingAnchor constraintEqualToAnchor:?];
    v81[1] = v64;
    primaryManeuverView4 = [(CPSManeuversCardView *)selfCopy primaryManeuverView];
    trailingAnchor = [(CPSPrimaryManeuverView *)primaryManeuverView4 trailingAnchor];
    trailingAnchor2 = [(CPSManeuversCardView *)selfCopy trailingAnchor];
    v60 = [trailingAnchor constraintEqualToAnchor:?];
    v81[2] = v60;
    v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:3];
    [v76[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](v60);
    MEMORY[0x277D82BD8](trailingAnchor2);
    MEMORY[0x277D82BD8](trailingAnchor);
    MEMORY[0x277D82BD8](primaryManeuverView4);
    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](leadingAnchor2);
    MEMORY[0x277D82BD8](leadingAnchor);
    MEMORY[0x277D82BD8](primaryManeuverView3);
    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](topAnchor);
    v75 = 0;
    secondaryManeuverView = [(CPSManeuversCardView *)selfCopy secondaryManeuverView];
    *&v2 = MEMORY[0x277D82BD8](secondaryManeuverView).n128_u64[0];
    if (secondaryManeuverView)
    {
      location = 0;
      contentView = [(CPSManeuversCardView *)selfCopy contentView];
      bottomAnchor = [(UIView *)contentView bottomAnchor];
      secondaryManeuverView2 = [(CPSManeuversCardView *)selfCopy secondaryManeuverView];
      bottomAnchor2 = [(CPSSecondaryManeuverView *)secondaryManeuverView2 bottomAnchor];
      v3 = [(NSLayoutYAxisAnchor *)bottomAnchor constraintEqualToAnchor:?];
      v4 = v75;
      v75 = v3;
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](bottomAnchor2);
      MEMORY[0x277D82BD8](secondaryManeuverView2);
      MEMORY[0x277D82BD8](bottomAnchor);
      primaryManeuverView5 = [(CPSManeuversCardView *)selfCopy primaryManeuverView];
      bottomAnchor3 = [(CPSPrimaryManeuverView *)primaryManeuverView5 bottomAnchor];
      hairlineView = [(CPSManeuversCardView *)selfCopy hairlineView];
      topAnchor3 = [(CPSHairlineView *)hairlineView topAnchor];
      v54 = [bottomAnchor3 constraintEqualToAnchor:?];
      v80[0] = v54;
      hairlineView2 = [(CPSManeuversCardView *)selfCopy hairlineView];
      bottomAnchor4 = [(CPSHairlineView *)hairlineView2 bottomAnchor];
      secondaryManeuverView3 = [(CPSManeuversCardView *)selfCopy secondaryManeuverView];
      topAnchor4 = [(CPSSecondaryManeuverView *)secondaryManeuverView3 topAnchor];
      v49 = [bottomAnchor4 constraintEqualToAnchor:?];
      v80[1] = v49;
      secondaryManeuverView4 = [(CPSManeuversCardView *)selfCopy secondaryManeuverView];
      leadingAnchor3 = [(CPSSecondaryManeuverView *)secondaryManeuverView4 leadingAnchor];
      leadingAnchor4 = [(CPSManeuversCardView *)selfCopy leadingAnchor];
      v45 = [leadingAnchor3 constraintEqualToAnchor:?];
      v80[2] = v45;
      secondaryManeuverView5 = [(CPSManeuversCardView *)selfCopy secondaryManeuverView];
      trailingAnchor3 = [(CPSSecondaryManeuverView *)secondaryManeuverView5 trailingAnchor];
      trailingAnchor4 = [(CPSManeuversCardView *)selfCopy trailingAnchor];
      v41 = [trailingAnchor3 constraintEqualToAnchor:?];
      v80[3] = v41;
      hairlineView3 = [(CPSManeuversCardView *)selfCopy hairlineView];
      leadingAnchor5 = [(CPSHairlineView *)hairlineView3 leadingAnchor];
      leadingAnchor6 = [(CPSManeuversCardView *)selfCopy leadingAnchor];
      v37 = [leadingAnchor5 constraintEqualToAnchor:?];
      v80[4] = v37;
      hairlineView4 = [(CPSManeuversCardView *)selfCopy hairlineView];
      trailingAnchor5 = [(CPSHairlineView *)hairlineView4 trailingAnchor];
      trailingAnchor6 = [(CPSManeuversCardView *)selfCopy trailingAnchor];
      v33 = [trailingAnchor5 constraintEqualToAnchor:?];
      v80[5] = v33;
      secondaryManeuverView6 = [(CPSManeuversCardView *)selfCopy secondaryManeuverView];
      bottomAnchor5 = [(CPSSecondaryManeuverView *)secondaryManeuverView6 bottomAnchor];
      bottomAnchor6 = [(CPSManeuversCardView *)selfCopy bottomAnchor];
      v29 = [bottomAnchor5 constraintLessThanOrEqualToAnchor:?];
      v80[6] = v29;
      v80[7] = v75;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:8];
      [v76[0] addObjectsFromArray:?];
      MEMORY[0x277D82BD8](v28);
      MEMORY[0x277D82BD8](v29);
      MEMORY[0x277D82BD8](bottomAnchor6);
      MEMORY[0x277D82BD8](bottomAnchor5);
      MEMORY[0x277D82BD8](secondaryManeuverView6);
      MEMORY[0x277D82BD8](v33);
      MEMORY[0x277D82BD8](trailingAnchor6);
      MEMORY[0x277D82BD8](trailingAnchor5);
      MEMORY[0x277D82BD8](hairlineView4);
      MEMORY[0x277D82BD8](v37);
      MEMORY[0x277D82BD8](leadingAnchor6);
      MEMORY[0x277D82BD8](leadingAnchor5);
      MEMORY[0x277D82BD8](hairlineView3);
      MEMORY[0x277D82BD8](v41);
      MEMORY[0x277D82BD8](trailingAnchor4);
      MEMORY[0x277D82BD8](trailingAnchor3);
      MEMORY[0x277D82BD8](secondaryManeuverView5);
      MEMORY[0x277D82BD8](v45);
      MEMORY[0x277D82BD8](leadingAnchor4);
      MEMORY[0x277D82BD8](leadingAnchor3);
      MEMORY[0x277D82BD8](secondaryManeuverView4);
      MEMORY[0x277D82BD8](v49);
      MEMORY[0x277D82BD8](topAnchor4);
      MEMORY[0x277D82BD8](secondaryManeuverView3);
      MEMORY[0x277D82BD8](bottomAnchor4);
      MEMORY[0x277D82BD8](hairlineView2);
      MEMORY[0x277D82BD8](v54);
      MEMORY[0x277D82BD8](topAnchor3);
      MEMORY[0x277D82BD8](hairlineView);
      MEMORY[0x277D82BD8](bottomAnchor3);
      if (![(CPSManeuversCardView *)selfCopy showSecondaryManeuverView])
      {
        secondaryManeuverView7 = [(CPSManeuversCardView *)selfCopy secondaryManeuverView];
        heightAnchor = [(CPSSecondaryManeuverView *)secondaryManeuverView7 heightAnchor];
        v21 = [heightAnchor constraintEqualToConstant:?];
        v79[0] = v21;
        hairlineView5 = [(CPSManeuversCardView *)selfCopy hairlineView];
        heightAnchor2 = [(CPSHairlineView *)hairlineView5 heightAnchor];
        v18 = [heightAnchor2 constraintEqualToConstant:0.0];
        v79[1] = v18;
        v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:2];
        v6 = location;
        location = v5;
        MEMORY[0x277D82BD8](v6);
        MEMORY[0x277D82BD8](v18);
        MEMORY[0x277D82BD8](heightAnchor2);
        MEMORY[0x277D82BD8](hairlineView5);
        MEMORY[0x277D82BD8](v21);
        MEMORY[0x277D82BD8](heightAnchor);
        [v76[0] addObjectsFromArray:{location, MEMORY[0x277D82BD8](secondaryManeuverView7).n128_f64[0]}];
      }

      objc_storeStrong(&location, 0);
    }

    else
    {
      contentView2 = [(CPSManeuversCardView *)selfCopy contentView];
      bottomAnchor7 = [(UIView *)contentView2 bottomAnchor];
      primaryManeuverView6 = [(CPSManeuversCardView *)selfCopy primaryManeuverView];
      bottomAnchor8 = [(CPSPrimaryManeuverView *)primaryManeuverView6 bottomAnchor];
      v7 = [(NSLayoutYAxisAnchor *)bottomAnchor7 constraintEqualToAnchor:?];
      v8 = v75;
      v75 = v7;
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](bottomAnchor8);
      MEMORY[0x277D82BD8](primaryManeuverView6);
      MEMORY[0x277D82BD8](bottomAnchor7);
      primaryManeuverView7 = [(CPSManeuversCardView *)selfCopy primaryManeuverView];
      bottomAnchor9 = [(CPSPrimaryManeuverView *)primaryManeuverView7 bottomAnchor];
      bottomAnchor10 = [(CPSManeuversCardView *)selfCopy bottomAnchor];
      v14 = [bottomAnchor9 constraintLessThanOrEqualToAnchor:0.0 constant:?];
      v78[0] = v14;
      v78[1] = v75;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:2];
      [v76[0] addObjectsFromArray:?];
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](bottomAnchor10);
      MEMORY[0x277D82BD8](bottomAnchor9);
      MEMORY[0x277D82BD8](primaryManeuverView7);
    }

    [MEMORY[0x277CCAAD0] activateConstraints:v76[0]];
    [(NSMutableArray *)selfCopy->_activeConstraints addObjectsFromArray:v76[0]];
    objc_storeStrong(&v75, 0);
    objc_storeStrong(v76, 0);
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
  v88 = a2;
  v87.receiver = self;
  v87.super_class = CPSManeuversCardView;
  [(CPSManeuversCardView *)&v87 layoutSubviews];
  primaryManeuverView = [(CPSManeuversCardView *)selfCopy primaryManeuverView];
  v85 = 0;
  v68 = 0;
  if (!primaryManeuverView)
  {
    maneuvers = [(CPSManeuversCardView *)selfCopy maneuvers];
    v85 = 1;
    v68 = [(NSArray *)maneuvers count]!= 0;
  }

  if (v85)
  {
    MEMORY[0x277D82BD8](maneuvers);
  }

  *&v2 = MEMORY[0x277D82BD8](primaryManeuverView).n128_u64[0];
  if (v68)
  {
    v61 = objc_opt_class();
    maneuvers2 = [(CPSManeuversCardView *)selfCopy maneuvers];
    firstObject = [(NSArray *)maneuvers2 firstObject];
    v84 = [v61 maneuverViewWithManeuver:?];
    MEMORY[0x277D82BD8](firstObject);
    *&v3 = MEMORY[0x277D82BD8](maneuvers2).n128_u64[0];
    [v84 setUsesCustomBackgroundColor:{-[CPSManeuversCardView usesCustomBackgroundColor](selfCopy, "usesCustomBackgroundColor", v3)}];
    contentView = [(CPSManeuversCardView *)selfCopy contentView];
    [(UIView *)contentView addSubview:v84];
    *&v4 = MEMORY[0x277D82BD8](contentView).n128_u64[0];
    [(CPSManeuversCardView *)selfCopy setPrimaryManeuverView:v84, v4];
    overrideUserInterfaceStyle = [(CPSManeuversCardView *)selfCopy overrideUserInterfaceStyle];
    primaryManeuverView2 = [(CPSManeuversCardView *)selfCopy primaryManeuverView];
    [(CPSPrimaryManeuverView *)primaryManeuverView2 setOverrideUserInterfaceStyle:overrideUserInterfaceStyle];
    MEMORY[0x277D82BD8](primaryManeuverView2);
    objc_storeStrong(&v84, 0);
  }

  secondaryManeuverView = [(CPSManeuversCardView *)selfCopy secondaryManeuverView];
  v82 = 0;
  v60 = 0;
  if (!secondaryManeuverView)
  {
    maneuvers3 = [(CPSManeuversCardView *)selfCopy maneuvers];
    v82 = 1;
    v60 = [(NSArray *)maneuvers3 count]> 1;
  }

  if (v82)
  {
    MEMORY[0x277D82BD8](maneuvers3);
  }

  *&v5 = MEMORY[0x277D82BD8](secondaryManeuverView).n128_u64[0];
  if (v60)
  {
    v53 = [CPSSecondaryManeuverView alloc];
    v54 = [(NSArray *)selfCopy->_maneuvers objectAtIndex:1];
    v81 = [(CPSSecondaryManeuverView *)v53 initWithManeuver:?];
    *&v6 = MEMORY[0x277D82BD8](v54).n128_u64[0];
    contentView2 = [(CPSManeuversCardView *)selfCopy contentView];
    [(UIView *)contentView2 addSubview:v81];
    *&v7 = MEMORY[0x277D82BD8](contentView2).n128_u64[0];
    [(CPSManeuversCardView *)selfCopy setSecondaryManeuverView:v81, v7];
    overrideUserInterfaceStyle2 = [(CPSManeuversCardView *)selfCopy overrideUserInterfaceStyle];
    secondaryManeuverView2 = [(CPSManeuversCardView *)selfCopy secondaryManeuverView];
    [(CPSSecondaryManeuverView *)secondaryManeuverView2 setOverrideUserInterfaceStyle:overrideUserInterfaceStyle2];
    v80 = [CPSHairlineView grayHairlineViewAlongAxis:0, MEMORY[0x277D82BD8](secondaryManeuverView2).n128_f64[0]];
    contentView3 = [(CPSManeuversCardView *)selfCopy contentView];
    [(UIView *)contentView3 addSubview:v80];
    *&v8 = MEMORY[0x277D82BD8](contentView3).n128_u64[0];
    [(CPSManeuversCardView *)selfCopy setHairlineView:v80, v8];
    [(CPSManeuversCardView *)selfCopy _updateSecondaryManeuverBackgroundColor];
    [(CPSManeuversCardView *)selfCopy _updateHairlineBackgroundColor];
    objc_storeStrong(&v80, 0);
    objc_storeStrong(&v81, 0);
  }

  [(CPSManeuversCardView *)selfCopy bounds];
  v77[1] = v9;
  v77[2] = v10;
  *&v78 = v11;
  *(&v78 + 1) = v12;
  v79 = v78;
  primaryManeuverView3 = [(CPSManeuversCardView *)selfCopy primaryManeuverView];
  v77[0] = [(CPSPrimaryManeuverView *)primaryManeuverView3 layoutConfigurationForSize:*&v78, *(&v78 + 1)];
  MEMORY[0x277D82BD8](primaryManeuverView3);
  v76 = 0.0;
  secondaryManeuverView3 = [(CPSManeuversCardView *)selfCopy secondaryManeuverView];
  v13 = MEMORY[0x277D82BD8](secondaryManeuverView3).n128_u64[0];
  if (secondaryManeuverView3)
  {
    secondaryManeuverView4 = [(CPSManeuversCardView *)selfCopy secondaryManeuverView];
    [(CPSManeuversCardView *)selfCopy bounds];
    v73[5] = v14;
    v73[6] = v15;
    *&v74 = v16;
    *(&v74 + 1) = v17;
    v75 = v74;
    [(CPSSecondaryManeuverView *)secondaryManeuverView4 generateLayoutConfigurationsForSizeIfNecessary:0 force:v16, v17];
    *&v18 = MEMORY[0x277D82BD8](secondaryManeuverView4).n128_u64[0];
    secondaryManeuverView5 = [(CPSManeuversCardView *)selfCopy secondaryManeuverView];
    [(CPSSecondaryManeuverView *)secondaryManeuverView5 generatedHeight];
    v76 = v19 + 1.0;
    v13 = MEMORY[0x277D82BD8](secondaryManeuverView5).n128_u64[0];
  }

  [v77[0] height];
  v48 = v20 + v76;
  [(CPSManeuversCardView *)selfCopy bounds];
  v73[1] = v21;
  v73[2] = v22;
  v73[3] = v23;
  v73[4] = v24;
  if (v48 <= *&v24)
  {
    secondaryManeuverView6 = [(CPSManeuversCardView *)selfCopy secondaryManeuverView];
    [(CPSManeuversCardView *)selfCopy setShowSecondaryManeuverView:secondaryManeuverView6 != 0];
    v25 = MEMORY[0x277D82BD8](secondaryManeuverView6).n128_u64[0];
  }

  else
  {
    secondaryManeuverView7 = [(CPSManeuversCardView *)selfCopy secondaryManeuverView];
    v25 = MEMORY[0x277D82BD8](secondaryManeuverView7).n128_u64[0];
    if (secondaryManeuverView7)
    {
      v73[0] = 0;
      maneuvers4 = [(CPSManeuversCardView *)selfCopy maneuvers];
      firstObject2 = [(NSArray *)maneuvers4 firstObject];
      junctionImage = [firstObject2 junctionImage];
      MEMORY[0x277D82BD8](junctionImage);
      MEMORY[0x277D82BD8](firstObject2);
      v26 = MEMORY[0x277D82BD8](maneuvers4).n128_u64[0];
      if (junctionImage)
      {
        primaryManeuverView4 = [(CPSManeuversCardView *)selfCopy primaryManeuverView];
        v27 = [(CPSPrimaryManeuverView *)primaryManeuverView4 shortestJunctionViewlayoutConfigurationForSize:*&v79, *(&v79 + 1)];
        v28 = v73[0];
        v73[0] = v27;
        MEMORY[0x277D82BD8](v28);
        v26 = MEMORY[0x277D82BD8](primaryManeuverView4).n128_u64[0];
      }

      v71 = 0;
      v69 = 0;
      v42 = 0;
      if (!v73[0])
      {
        instruction = [v77[0] instruction];
        v71 = 1;
        v41 = 1;
        if (!instruction)
        {
          attributedInstruction = [v77[0] attributedInstruction];
          v69 = 1;
          v41 = attributedInstruction != 0;
        }

        v42 = v41;
      }

      if (v69)
      {
        v26 = MEMORY[0x277D82BD8](attributedInstruction).n128_u64[0];
      }

      if (v71)
      {
        v26 = MEMORY[0x277D82BD8](instruction).n128_u64[0];
      }

      if (v42)
      {
        primaryManeuverView5 = [(CPSManeuversCardView *)selfCopy primaryManeuverView];
        v29 = [(CPSPrimaryManeuverView *)primaryManeuverView5 shortestInstructionlayoutConfigurationForSize:*&v79, *(&v79 + 1)];
        v30 = v73[0];
        v73[0] = v29;
        MEMORY[0x277D82BD8](v30);
        v26 = MEMORY[0x277D82BD8](primaryManeuverView5).n128_u64[0];
      }

      if (v73[0] && ([v73[0] height], v39 = v31 + v76, -[CPSManeuversCardView bounds](selfCopy, "bounds"), v26 = *&v39, v39 <= v32))
      {
        objc_storeStrong(v77, v73[0]);
        [(CPSManeuversCardView *)selfCopy setShowSecondaryManeuverView:1];
      }

      else
      {
        [(CPSManeuversCardView *)selfCopy setShowSecondaryManeuverView:0, *&v26];
      }

      secondaryManeuverView8 = [(CPSManeuversCardView *)selfCopy secondaryManeuverView];
      [(CPSSecondaryManeuverView *)secondaryManeuverView8 setHidden:[(CPSManeuversCardView *)selfCopy showSecondaryManeuverView]^ 1];
      MEMORY[0x277D82BD8](secondaryManeuverView8);
      objc_storeStrong(v73, 0);
    }
  }

  primaryManeuverView6 = [(CPSManeuversCardView *)selfCopy primaryManeuverView];
  [(CPSPrimaryManeuverView *)primaryManeuverView6 setLayoutConfigurationForIntrinsicSizing:v77[0]];
  *&v33 = MEMORY[0x277D82BD8](primaryManeuverView6).n128_u64[0];
  primaryManeuverView7 = [(CPSManeuversCardView *)selfCopy primaryManeuverView];
  [(CPSPrimaryManeuverView *)primaryManeuverView7 invalidateIntrinsicContentSize];
  *&v34 = MEMORY[0x277D82BD8](primaryManeuverView7).n128_u64[0];
  [(CPSManeuversCardView *)selfCopy _updateConstraints];
  objc_storeStrong(v77, 0);
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
  [(CPSManeuversCardView *)selfCopy setNeedsLayout];
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
  primaryManeuverView = [(CPSManeuversCardView *)selfCopy primaryManeuverView];
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
    primaryManeuverView2 = [(CPSManeuversCardView *)selfCopy primaryManeuverView];
    [(CPSPrimaryManeuverView *)primaryManeuverView2 setCurrentTravelEstimates:location[0]];
    *&v5 = MEMORY[0x277D82BD8](primaryManeuverView2).n128_u64[0];
    [(CPSManeuversCardView *)selfCopy setNeedsLayout];
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)canFitSize:(CGSize)size
{
  sizeCopy = size;
  v6[2] = self;
  v6[1] = a2;
  primaryManeuverView = [(CPSManeuversCardView *)self primaryManeuverView];
  v6[0] = [(CPSPrimaryManeuverView *)primaryManeuverView layoutConfigurationForSize:sizeCopy.width, sizeCopy.height];
  MEMORY[0x277D82BD8](primaryManeuverView);
  v5 = v6[0] != 0;
  objc_storeStrong(v6, 0);
  return v5;
}

- (void)setUsesCustomBackgroundColor:(BOOL)color
{
  if (self->_usesCustomBackgroundColor != color)
  {
    self->_usesCustomBackgroundColor = color;
    primaryManeuverView = [(CPSManeuversCardView *)self primaryManeuverView];
    [(CPSPrimaryManeuverView *)primaryManeuverView setUsesCustomBackgroundColor:color];
    [(CPSManeuversCardView *)self _updateHairlineBackgroundColor];
    [(CPSManeuversCardView *)self _updateSecondaryManeuverBackgroundColor];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v3.receiver = selfCopy;
  v3.super_class = CPSManeuversCardView;
  [(CPSManeuversCardView *)&v3 traitCollectionDidChange:location[0]];
  [(CPSManeuversCardView *)selfCopy _updateHairlineBackgroundColor];
  [(CPSManeuversCardView *)selfCopy _updateSecondaryManeuverBackgroundColor];
  objc_storeStrong(location, 0);
}

- (void)_updateHairlineBackgroundColor
{
  if ([(CPSManeuversCardView *)self usesCustomBackgroundColor])
  {
    hairlineView = [(CPSManeuversCardView *)self hairlineView];
    v4 = MEMORY[0x277D75348];
    v7 = CPSFrameworkBundle();
    traitCollection = [(CPSManeuversCardView *)self traitCollection];
    v5 = [v4 colorNamed:@"GuidanceColor30AlphaLightBlackDarkWhite" inBundle:v7 compatibleWithTraitCollection:?];
    [(CPSHairlineView *)hairlineView setBackgroundColor:?];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](traitCollection);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](hairlineView);
  }

  else
  {
    hairlineView2 = [(CPSManeuversCardView *)self hairlineView];
    v2 = [MEMORY[0x277D75348] colorWithRed:0.4 green:0.4 blue:0.4 alpha:1.0];
    [(CPSHairlineView *)hairlineView2 setBackgroundColor:?];
    MEMORY[0x277D82BD8](v2);
    MEMORY[0x277D82BD8](hairlineView2);
  }
}

- (void)_updateSecondaryManeuverBackgroundColor
{
  if ([(CPSManeuversCardView *)self usesCustomBackgroundColor])
  {
    secondaryManeuverView = [(CPSManeuversCardView *)self secondaryManeuverView];
    v4 = MEMORY[0x277D75348];
    v7 = CPSFrameworkBundle();
    traitCollection = [(CPSManeuversCardView *)self traitCollection];
    v5 = [v4 colorNamed:@"GuidanceColor30AlphaLightWhiteDarkBlack" inBundle:v7 compatibleWithTraitCollection:?];
    [(CPSSecondaryManeuverView *)secondaryManeuverView setBackgroundColor:?];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](traitCollection);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](secondaryManeuverView);
  }

  else
  {
    secondaryManeuverView2 = [(CPSManeuversCardView *)self secondaryManeuverView];
    v2 = [MEMORY[0x277D75348] colorWithWhite:0.247058824 alpha:1.0];
    [(CPSSecondaryManeuverView *)secondaryManeuverView2 setBackgroundColor:?];
    MEMORY[0x277D82BD8](v2);
    MEMORY[0x277D82BD8](secondaryManeuverView2);
  }
}

- (void)invalidate
{
  primaryManeuverView = [(CPSManeuversCardView *)self primaryManeuverView];
  [(CPSPrimaryManeuverView *)primaryManeuverView setActiveLayoutConfiguration:?];
  primaryManeuverView2 = [(CPSManeuversCardView *)self primaryManeuverView];
  [(CPSPrimaryManeuverView *)primaryManeuverView2 setLayoutConfigurationForIntrinsicSizing:0];
  primaryManeuverView3 = [(CPSManeuversCardView *)self primaryManeuverView];
  [(CPSPrimaryManeuverView *)primaryManeuverView3 invalidateIntrinsicContentSize];
  MEMORY[0x277D82BD8](primaryManeuverView3);
}

+ (id)maneuverViewWithManeuver:(id)maneuver
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, maneuver);
  v3 = [CPSPrimaryManeuverView alloc];
  v5 = [(CPSPrimaryManeuverView *)v3 initWithManeuver:location[0]];
  objc_storeStrong(location, 0);

  return v5;
}

@end