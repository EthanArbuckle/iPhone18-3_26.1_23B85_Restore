@interface CPSDashboardManeuversCardView
- (BOOL)wantsLargeSize;
- (CGSize)intrinsicContentSize;
- (CPSDashboardManeuversCardView)initWithFrame:(CGRect)a3;
- (void)_updateConstraints;
- (void)_updateStyleOverridesForSubviews;
- (void)layoutSubviews;
- (void)showManeuvers:(id)a3 usingDisplayStyles:(id)a4;
- (void)updateEstimates:(id)a3 forManeuver:(id)a4;
@end

@implementation CPSDashboardManeuversCardView

- (CPSDashboardManeuversCardView)initWithFrame:(CGRect)a3
{
  v8 = a3;
  v6 = a2;
  v7 = 0;
  v5.receiver = self;
  v5.super_class = CPSDashboardManeuversCardView;
  v7 = [(CPSDashboardManeuversCardView *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v9 = [(CPSDashboardManeuversCardView *)self primaryManeuverView];
  [(CPSPrimaryManeuverView *)v9 bounds];
  v15 = v14 + v4;
  v10 = 0;
  if ([(CPSDashboardManeuversCardView *)self showSecondaryManeuverView])
  {
    v11 = [(CPSDashboardManeuversCardView *)self secondaryManeuverView];
    v10 = 1;
    [(CPSDashboardSecondaryManeuverView *)v11 bounds];
    v8 = v5;
  }

  else
  {
    v8 = 0.0;
  }

  v16 = v15 + v8;
  if (v10)
  {
    MEMORY[0x277D82BD8](v11);
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
  v54 = self;
  v53[1] = a2;
  v51 = [(CPSDashboardManeuversCardView *)self primaryManeuverView];
  MEMORY[0x277D82BD8](v51);
  if (v51)
  {
    v53[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
    v49 = [(CPSDashboardManeuversCardView *)v54 primaryManeuverView];
    v48 = [(CPSPrimaryManeuverView *)v49 topAnchor];
    v47 = [(CPSDashboardManeuversCardView *)v54 topAnchor];
    v46 = [v48 constraintEqualToAnchor:0.0 constant:?];
    v58[0] = v46;
    v45 = [(CPSDashboardManeuversCardView *)v54 primaryManeuverView];
    v44 = [(CPSPrimaryManeuverView *)v45 leadingAnchor];
    v43 = [(CPSDashboardManeuversCardView *)v54 leadingAnchor];
    v42 = [v44 constraintEqualToAnchor:?];
    v58[1] = v42;
    v41 = [(CPSDashboardManeuversCardView *)v54 primaryManeuverView];
    v40 = [(CPSPrimaryManeuverView *)v41 trailingAnchor];
    v39 = [(CPSDashboardManeuversCardView *)v54 trailingAnchor];
    v38 = [v40 constraintEqualToAnchor:?];
    v58[2] = v38;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:3];
    [v53[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v38);
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
    v50 = [(CPSDashboardManeuversCardView *)v54 secondaryManeuverView];
    *&v2 = MEMORY[0x277D82BD8](v50).n128_u64[0];
    if (v50)
    {
      v36 = [(CPSDashboardManeuversCardView *)v54 secondaryManeveuverConstraints];
      *&v3 = MEMORY[0x277D82BD8](v36).n128_u64[0];
      if (v36)
      {
        v34 = MEMORY[0x277CCAAD0];
        v35 = [(CPSDashboardManeuversCardView *)v54 secondaryManeveuverConstraints];
        [v34 deactivateConstraints:?];
        [(CPSDashboardManeuversCardView *)v54 setSecondaryManeveuverConstraints:0, MEMORY[0x277D82BD8](v35).n128_f64[0]];
      }

      v52 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v33 = [(CPSDashboardManeuversCardView *)v54 primaryManeuverView];
      v32 = [(CPSPrimaryManeuverView *)v33 bottomAnchor];
      v31 = [(CPSDashboardManeuversCardView *)v54 secondaryManeuverView];
      v30 = [(CPSDashboardSecondaryManeuverView *)v31 topAnchor];
      v29 = [v32 constraintEqualToAnchor:0.0 constant:?];
      v57[0] = v29;
      v28 = [(CPSDashboardManeuversCardView *)v54 secondaryManeuverView];
      v27 = [(CPSDashboardSecondaryManeuverView *)v28 leadingAnchor];
      v26 = [(CPSDashboardManeuversCardView *)v54 leadingAnchor];
      v25 = [v27 constraintEqualToAnchor:?];
      v57[1] = v25;
      v24 = [(CPSDashboardManeuversCardView *)v54 secondaryManeuverView];
      v23 = [(CPSDashboardSecondaryManeuverView *)v24 trailingAnchor];
      v22 = [(CPSDashboardManeuversCardView *)v54 trailingAnchor];
      v21 = [v23 constraintEqualToAnchor:?];
      v57[2] = v21;
      v20 = [(CPSDashboardManeuversCardView *)v54 secondaryManeuverView];
      v19 = [(CPSDashboardSecondaryManeuverView *)v20 bottomAnchor];
      v18 = [(CPSDashboardManeuversCardView *)v54 bottomAnchor];
      v17 = [v19 constraintEqualToAnchor:?];
      v57[3] = v17;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:4];
      [v52 addObjectsFromArray:?];
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
      MEMORY[0x277D82BD8](v29);
      MEMORY[0x277D82BD8](v30);
      MEMORY[0x277D82BD8](v31);
      MEMORY[0x277D82BD8](v32);
      if (![(CPSDashboardManeuversCardView *)v54 showSecondaryManeuverView])
      {
        v15 = [(CPSDashboardManeuversCardView *)v54 secondaryManeuverView];
        v14 = [(CPSDashboardSecondaryManeuverView *)v15 heightAnchor];
        v13 = [v14 constraintEqualToConstant:0.0];
        v56 = v13;
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
        [v52 addObjectsFromArray:?];
        MEMORY[0x277D82BD8](v12);
        MEMORY[0x277D82BD8](v13);
        MEMORY[0x277D82BD8](v14);
        MEMORY[0x277D82BD8](v15);
      }

      [(CPSDashboardManeuversCardView *)v54 setSecondaryManeveuverConstraints:v52];
      v10 = v53[0];
      v11 = [(CPSDashboardManeuversCardView *)v54 secondaryManeveuverConstraints];
      [v10 addObjectsFromArray:?];
      MEMORY[0x277D82BD8](v11);
      objc_storeStrong(&v52, 0);
    }

    else
    {
      v9 = [(CPSDashboardManeuversCardView *)v54 primaryManeuverView];
      v8 = [(CPSPrimaryManeuverView *)v9 bottomAnchor];
      v7 = [(CPSDashboardManeuversCardView *)v54 bottomAnchor];
      v6 = [v8 constraintEqualToAnchor:0.0 constant:?];
      v55 = v6;
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
      [v53[0] addObjectsFromArray:?];
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
    }

    [MEMORY[0x277CCAAD0] activateConstraints:{v53[0], v53}];
    objc_storeStrong(v4, 0);
  }
}

- (void)_updateStyleOverridesForSubviews
{
  v21 = self;
  location[1] = a2;
  v16 = [(CPSDashboardManeuversCardView *)self primaryManeuverView];
  v17 = [(CPSPrimaryManeuverView *)v16 maneuver];
  v18 = [(CPManeuver *)v17 cardBackgroundColor];
  allowsCustomBackgroundColorForManeuver = 0;
  if (v18)
  {
    allowsCustomBackgroundColorForManeuver = v21->_allowsCustomBackgroundColorForManeuver;
  }

  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v17);
  *&v2 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  if (allowsCustomBackgroundColorForManeuver)
  {
    v6 = [(CPSDashboardManeuversCardView *)v21 primaryManeuverView];
    v5 = [(CPSPrimaryManeuverView *)v6 maneuver];
    v4 = [(CPManeuver *)v5 cardBackgroundColor];
    [(CPSDashboardManeuversCardView *)v21 setBackgroundColor:?];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    v11 = [(CPSDashboardManeuversCardView *)v21 secondaryManeuverView];
    v7 = MEMORY[0x277D75348];
    v10 = CPSFrameworkBundle();
    v9 = [(CPSDashboardManeuversCardView *)v21 traitCollection];
    v8 = [v7 colorNamed:@"GuidanceColor30AlphaLightWhiteDarkBlack" inBundle:v10 compatibleWithTraitCollection:?];
    [(CPSDashboardSecondaryManeuverView *)v11 setBackgroundColor:?];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    v13 = [(CPSDashboardManeuversCardView *)v21 backgroundColor];
    v12 = [(CPSDashboardManeuversCardView *)v21 traitCollection];
    location[0] = [v13 resolvedColorWithTraitCollection:?];
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    v15 = CPContrastingColorForColor();
    v14 = [MEMORY[0x277D75348] whiteColor];
    [v15 isEqual:?];
    MEMORY[0x277D82BD8](v14);
    v3 = [(CPSDashboardManeuversCardView *)v21 subviews];
    [v3 enumerateObjectsUsingBlock:?];
    MEMORY[0x277D82BD8](v3);
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
  v85 = self;
  v84 = a2;
  v83.receiver = self;
  v83.super_class = CPSDashboardManeuversCardView;
  [(CPSDashboardManeuversCardView *)&v83 layoutSubviews];
  v62 = [(CPSDashboardManeuversCardView *)v85 primaryManeuverView];
  v81 = 0;
  v63 = 0;
  if (!v62)
  {
    v82 = [(CPSDashboardManeuversCardView *)v85 maneuvers];
    v81 = 1;
    v63 = [(NSArray *)v82 count]!= 0;
  }

  if (v81)
  {
    MEMORY[0x277D82BD8](v82);
  }

  *&v2 = MEMORY[0x277D82BD8](v62).n128_u64[0];
  if (v63)
  {
    v59 = [CPSDashboardPrimaryManeuverView alloc];
    v61 = [(CPSDashboardManeuversCardView *)v85 maneuvers];
    v60 = [(NSArray *)v61 firstObject];
    v80 = [(CPSPrimaryManeuverView *)v59 initWithManeuver:?];
    MEMORY[0x277D82BD8](v60);
    *&v3 = MEMORY[0x277D82BD8](v61).n128_u64[0];
    [(CPSDashboardManeuversCardView *)v85 addSubview:v80, v3];
    [(CPSDashboardManeuversCardView *)v85 setPrimaryManeuverView:v80];
    objc_storeStrong(&v80, 0);
  }

  v57 = [(CPSDashboardManeuversCardView *)v85 secondaryManeuverView];
  v78 = 0;
  v58 = 0;
  if (!v57)
  {
    v79 = [(CPSDashboardManeuversCardView *)v85 maneuvers];
    v78 = 1;
    v58 = [(NSArray *)v79 count]> 1;
  }

  if (v78)
  {
    MEMORY[0x277D82BD8](v79);
  }

  *&v4 = MEMORY[0x277D82BD8](v57).n128_u64[0];
  if (v58)
  {
    v55 = [CPSDashboardSecondaryManeuverView alloc];
    v56 = [(NSArray *)v85->_maneuvers objectAtIndex:1];
    v77 = [(CPSDashboardSecondaryManeuverView *)v55 initWithManeuver:?];
    *&v5 = MEMORY[0x277D82BD8](v56).n128_u64[0];
    [(CPSDashboardManeuversCardView *)v85 addSubview:v77, v5];
    [(CPSDashboardManeuversCardView *)v85 setSecondaryManeuverView:v77];
    objc_storeStrong(&v77, 0);
  }

  [(CPSDashboardManeuversCardView *)v85 _updateStyleOverridesForSubviews];
  [(CPSDashboardManeuversCardView *)v85 bounds];
  v74[1] = v6;
  v74[2] = v7;
  *&v75 = v8;
  *(&v75 + 1) = v9;
  v76 = v75;
  v74[0] = 0;
  v53 = [(CPSDashboardManeuversCardView *)v85 maneuvers];
  v52 = [(NSArray *)v53 firstObject];
  v54 = [v52 junctionImage];
  MEMORY[0x277D82BD8](v54);
  MEMORY[0x277D82BD8](v52);
  v10 = MEMORY[0x277D82BD8](v53).n128_u64[0];
  if (v54)
  {
    v51 = [(CPSDashboardManeuversCardView *)v85 primaryManeuverView];
    v11 = [(CPSPrimaryManeuverView *)v51 shortestJunctionViewlayoutConfigurationForSize:v76];
    v12 = v74[0];
    v74[0] = v11;
    MEMORY[0x277D82BD8](v12);
    v10 = MEMORY[0x277D82BD8](v51).n128_u64[0];
  }

  if (!v74[0])
  {
    v50 = [(CPSDashboardManeuversCardView *)v85 primaryManeuverView];
    v74[0] = [(CPSPrimaryManeuverView *)v50 layoutConfigurationForSize:v76];
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](v50);
  }

  v73 = 0.0;
  v49 = [(CPSDashboardManeuversCardView *)v85 secondaryManeuverView];
  v13 = MEMORY[0x277D82BD8](v49).n128_u64[0];
  if (v49)
  {
    v47 = [(CPSDashboardManeuversCardView *)v85 secondaryManeuverView];
    [(CPSDashboardManeuversCardView *)v85 bounds];
    v70[5] = v14;
    v70[6] = v15;
    *&v71 = v16;
    *(&v71 + 1) = v17;
    v72 = v71;
    [(CPSSecondaryManeuverView *)v47 generateLayoutConfigurationsForSizeIfNecessary:0 force:v16, v17];
    *&v18 = MEMORY[0x277D82BD8](v47).n128_u64[0];
    v48 = [(CPSDashboardManeuversCardView *)v85 secondaryManeuverView];
    [(CPSSecondaryManeuverView *)v48 generatedHeight];
    v73 = v19;
    v13 = MEMORY[0x277D82BD8](v48).n128_u64[0];
  }

  [v74[0] height];
  v46 = v20 + v73;
  [(CPSDashboardManeuversCardView *)v85 bounds];
  v70[1] = v21;
  v70[2] = v22;
  v70[3] = v23;
  v70[4] = v24;
  if (v46 <= *&v24)
  {
    v36 = [(CPSDashboardManeuversCardView *)v85 secondaryManeuverView];
    [(CPSDashboardManeuversCardView *)v85 setShowSecondaryManeuverView:v36 != 0];
    MEMORY[0x277D82BD8](v36);
  }

  else
  {
    v45 = [(CPSDashboardManeuversCardView *)v85 secondaryManeuverView];
    *&v25 = MEMORY[0x277D82BD8](v45).n128_u64[0];
    if (v45)
    {
      v70[0] = 0;
      v43 = [(CPSDashboardManeuversCardView *)v85 maneuvers];
      v42 = [(NSArray *)v43 firstObject];
      v44 = [v42 junctionImage];
      MEMORY[0x277D82BD8](v44);
      MEMORY[0x277D82BD8](v42);
      v26 = MEMORY[0x277D82BD8](v43).n128_u64[0];
      if (v44)
      {
        v41 = [(CPSDashboardManeuversCardView *)v85 primaryManeuverView];
        v27 = [(CPSPrimaryManeuverView *)v41 shortestJunctionViewlayoutConfigurationForSize:v76];
        v28 = v70[0];
        v70[0] = v27;
        MEMORY[0x277D82BD8](v28);
        v26 = MEMORY[0x277D82BD8](v41).n128_u64[0];
      }

      if (!v70[0])
      {
        v40 = [(CPSDashboardManeuversCardView *)v85 primaryManeuverView];
        v70[0] = [(CPSPrimaryManeuverView *)v40 shortestInstructionlayoutConfigurationForSize:v76];
        MEMORY[0x277D82BD8](0);
        v26 = MEMORY[0x277D82BD8](v40).n128_u64[0];
      }

      if (v70[0] && ([v70[0] height], v39 = v29 + v73, -[CPSDashboardManeuversCardView bounds](v85, "bounds"), v31 = v30, v26 = *&v39, v69[1] = v31, v69[2] = v32, v69[3] = v33, v69[4] = v34, v39 <= *&v34))
      {
        [(CPSDashboardManeuversCardView *)v85 setShowSecondaryManeuverView:1, v39];
        v37 = [(CPSDashboardManeuversCardView *)v85 secondaryManeuverView];
        [(CPSDashboardSecondaryManeuverView *)v37 setHidden:0];
        MEMORY[0x277D82BD8](v37);
      }

      else
      {
        [(CPSDashboardManeuversCardView *)v85 setShowSecondaryManeuverView:0, *&v26];
        v38 = [(CPSDashboardManeuversCardView *)v85 secondaryManeuverView];
        [(CPSDashboardSecondaryManeuverView *)v38 setHidden:1];
        MEMORY[0x277D82BD8](v38);
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
  v69[0] = MEMORY[0x277D82BE0](v85);
  [v35 performWithoutAnimation:&v64];
  objc_storeStrong(v69, 0);
  objc_storeStrong(v74, 0);
}

- (void)showManeuvers:(id)a3 usingDisplayStyles:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  oslog = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v9, location[0], v6);
    _os_log_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEFAULT, "showManeuvers: %@ usingDisplayStyles: %@", v9, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&v8->_maneuvers, location[0]);
  [(CPSDashboardManeuversCardView *)v8 setNeedsLayout];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)updateEstimates:(id)a3 forManeuver:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v11 = [(CPSDashboardManeuversCardView *)v15 primaryManeuverView];
  v10 = [(CPSPrimaryManeuverView *)v11 maneuver];
  v9 = [(CPManeuver *)v10 identifier];
  v8 = [v13 identifier];
  v12 = [v9 isEqual:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  *&v4 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  if (v12)
  {
    v6 = [(CPSDashboardManeuversCardView *)v15 primaryManeuverView];
    [(CPSPrimaryManeuverView *)v6 setCurrentTravelEstimates:location[0]];
    *&v5 = MEMORY[0x277D82BD8](v6).n128_u64[0];
    [(CPSDashboardManeuversCardView *)v15 setNeedsLayout];
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)wantsLargeSize
{
  v19 = self;
  v18[1] = a2;
  v12 = [(CPSDashboardManeuversCardView *)self maneuvers];
  v11 = [(NSArray *)v12 firstObject];
  v13 = [v11 junctionImage];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  if (v13)
  {
    v6 = objc_opt_class();
    v7 = [(CPSDashboardManeuversCardView *)v19 window];
    v18[0] = CPSSafeCast_7(v6, v7);
    *&v2 = MEMORY[0x277D82BD8](v7).n128_u64[0];
    v9 = [v18[0] widgetSizes];
    v8 = [v9 lastObject];
    [v8 CGSizeValue];
    v16 = v3;
    v17 = v4;
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    *&v15 = v16;
    *(&v15 + 1) = v17 - 12.0;
    v10 = [(CPSDashboardManeuversCardView *)v19 primaryManeuverView];
    v14 = [(CPSPrimaryManeuverView *)v10 shortestJunctionViewlayoutConfigurationForSize:v15];
    MEMORY[0x277D82BD8](v10);
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