@interface CPSManeuversCardView
+ (id)maneuverViewWithManeuver:(id)a3;
- (BOOL)canFitSize:(CGSize)a3;
- (CGSize)intrinsicContentSize;
- (CPSManeuversCardView)initWithManeuvers:(id)a3;
- (void)_updateConstraints;
- (void)_updateHairlineBackgroundColor;
- (void)_updateSecondaryManeuverBackgroundColor;
- (void)invalidate;
- (void)layoutSubviews;
- (void)setCardBackgroundColor:(id)a3;
- (void)setUsesCustomBackgroundColor:(BOOL)a3;
- (void)showManeuvers:(id)a3 usingDisplayStyles:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateEstimates:(id)a3 forManeuver:(id)a4;
@end

@implementation CPSManeuversCardView

- (CPSManeuversCardView)initWithManeuvers:(id)a3
{
  v25[3] = *MEMORY[0x277D85DE8];
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v24;
  v24 = 0;
  v22.receiver = v3;
  v22.super_class = CPSManeuversCardView;
  v24 = [(CPSManeuversCardView *)&v22 init];
  objc_storeStrong(&v24, v24);
  if (v24)
  {
    objc_storeStrong(&v24->_maneuvers, location[0]);
    [(CPSManeuversCardView *)v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = +[_TtC14CarPlaySupport12CPSGlassView createWithTemplateConfiguration];
    v9 = [v21 layer];
    [v9 setCornerRadius:18.0];
    *&v4 = MEMORY[0x277D82BD8](v9).n128_u64[0];
    [v21 setTranslatesAutoresizingMaskIntoConstraints:{0, v4}];
    objc_storeStrong(&v24->_contentView, v21);
    [(CPSManeuversCardView *)v24 addSubview:v24->_contentView];
    v10 = MEMORY[0x277CCAAD0];
    v20 = [v21 topAnchor];
    v19 = [(CPSManeuversCardView *)v24 topAnchor];
    v18 = [v20 constraintEqualToAnchor:?];
    v25[0] = v18;
    v17 = [v21 leadingAnchor];
    v16 = [(CPSManeuversCardView *)v24 leadingAnchor];
    v15 = [v17 constraintEqualToAnchor:?];
    v25[1] = v15;
    v14 = [v21 trailingAnchor];
    v13 = [(CPSManeuversCardView *)v24 trailingAnchor];
    v12 = [v14 constraintEqualToAnchor:?];
    v25[2] = v12;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
    [v10 activateConstraints:?];
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
    v5 = objc_opt_new();
    activeConstraints = v24->_activeConstraints;
    v24->_activeConstraints = v5;
    MEMORY[0x277D82BD8](activeConstraints);
    objc_storeStrong(&v21, 0);
  }

  v8 = MEMORY[0x277D82BE0](v24);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v24, 0);
  return v8;
}

- (CGSize)intrinsicContentSize
{
  [(CPSManeuversCardView *)self bounds];
  CGRectGetWidth(v18);
  CGSizeMake_11();
  v13 = v2;
  v14 = v3;
  v9 = [(CPSManeuversCardView *)self primaryManeuverView];
  [(CPSPrimaryManeuverView *)v9 intrinsicContentSize];
  v15 = v14 + v4;
  v10 = 0;
  if ([(CPSManeuversCardView *)self showSecondaryManeuverView])
  {
    v11 = [(CPSManeuversCardView *)self secondaryManeuverView];
    v10 = 1;
    [(CPSSecondaryManeuverView *)v11 bounds];
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

- (void)setCardBackgroundColor:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v4->_cardBackgroundColor, location[0]);
  [(UIView *)v4->_contentView setGlassTintColor:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_updateConstraints
{
  v81[3] = *MEMORY[0x277D85DE8];
  v77 = self;
  v76[1] = a2;
  v73 = [(CPSManeuversCardView *)self primaryManeuverView];
  MEMORY[0x277D82BD8](v73);
  if (v73)
  {
    v76[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ([(NSMutableArray *)v77->_activeConstraints count])
    {
      [MEMORY[0x277CCAAD0] deactivateConstraints:v77->_activeConstraints];
      [(NSMutableArray *)v77->_activeConstraints removeAllObjects];
    }

    v71 = [(CPSManeuversCardView *)v77 primaryManeuverView];
    v70 = [(CPSPrimaryManeuverView *)v71 topAnchor];
    v69 = [(CPSManeuversCardView *)v77 topAnchor];
    v68 = [v70 constraintEqualToAnchor:?];
    v81[0] = v68;
    v67 = [(CPSManeuversCardView *)v77 primaryManeuverView];
    v66 = [(CPSPrimaryManeuverView *)v67 leadingAnchor];
    v65 = [(CPSManeuversCardView *)v77 leadingAnchor];
    v64 = [v66 constraintEqualToAnchor:?];
    v81[1] = v64;
    v63 = [(CPSManeuversCardView *)v77 primaryManeuverView];
    v62 = [(CPSPrimaryManeuverView *)v63 trailingAnchor];
    v61 = [(CPSManeuversCardView *)v77 trailingAnchor];
    v60 = [v62 constraintEqualToAnchor:?];
    v81[2] = v60;
    v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:3];
    [v76[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](v60);
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v62);
    MEMORY[0x277D82BD8](v63);
    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](v66);
    MEMORY[0x277D82BD8](v67);
    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](v69);
    MEMORY[0x277D82BD8](v70);
    v75 = 0;
    v72 = [(CPSManeuversCardView *)v77 secondaryManeuverView];
    *&v2 = MEMORY[0x277D82BD8](v72).n128_u64[0];
    if (v72)
    {
      location = 0;
      v27 = [(CPSManeuversCardView *)v77 contentView];
      v26 = [(UIView *)v27 bottomAnchor];
      v25 = [(CPSManeuversCardView *)v77 secondaryManeuverView];
      v24 = [(CPSSecondaryManeuverView *)v25 bottomAnchor];
      v3 = [(NSLayoutYAxisAnchor *)v26 constraintEqualToAnchor:?];
      v4 = v75;
      v75 = v3;
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v24);
      MEMORY[0x277D82BD8](v25);
      MEMORY[0x277D82BD8](v26);
      v58 = [(CPSManeuversCardView *)v77 primaryManeuverView];
      v57 = [(CPSPrimaryManeuverView *)v58 bottomAnchor];
      v56 = [(CPSManeuversCardView *)v77 hairlineView];
      v55 = [(CPSHairlineView *)v56 topAnchor];
      v54 = [v57 constraintEqualToAnchor:?];
      v80[0] = v54;
      v53 = [(CPSManeuversCardView *)v77 hairlineView];
      v52 = [(CPSHairlineView *)v53 bottomAnchor];
      v51 = [(CPSManeuversCardView *)v77 secondaryManeuverView];
      v50 = [(CPSSecondaryManeuverView *)v51 topAnchor];
      v49 = [v52 constraintEqualToAnchor:?];
      v80[1] = v49;
      v48 = [(CPSManeuversCardView *)v77 secondaryManeuverView];
      v47 = [(CPSSecondaryManeuverView *)v48 leadingAnchor];
      v46 = [(CPSManeuversCardView *)v77 leadingAnchor];
      v45 = [v47 constraintEqualToAnchor:?];
      v80[2] = v45;
      v44 = [(CPSManeuversCardView *)v77 secondaryManeuverView];
      v43 = [(CPSSecondaryManeuverView *)v44 trailingAnchor];
      v42 = [(CPSManeuversCardView *)v77 trailingAnchor];
      v41 = [v43 constraintEqualToAnchor:?];
      v80[3] = v41;
      v40 = [(CPSManeuversCardView *)v77 hairlineView];
      v39 = [(CPSHairlineView *)v40 leadingAnchor];
      v38 = [(CPSManeuversCardView *)v77 leadingAnchor];
      v37 = [v39 constraintEqualToAnchor:?];
      v80[4] = v37;
      v36 = [(CPSManeuversCardView *)v77 hairlineView];
      v35 = [(CPSHairlineView *)v36 trailingAnchor];
      v34 = [(CPSManeuversCardView *)v77 trailingAnchor];
      v33 = [v35 constraintEqualToAnchor:?];
      v80[5] = v33;
      v32 = [(CPSManeuversCardView *)v77 secondaryManeuverView];
      v31 = [(CPSSecondaryManeuverView *)v32 bottomAnchor];
      v30 = [(CPSManeuversCardView *)v77 bottomAnchor];
      v29 = [v31 constraintLessThanOrEqualToAnchor:?];
      v80[6] = v29;
      v80[7] = v75;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:8];
      [v76[0] addObjectsFromArray:?];
      MEMORY[0x277D82BD8](v28);
      MEMORY[0x277D82BD8](v29);
      MEMORY[0x277D82BD8](v30);
      MEMORY[0x277D82BD8](v31);
      MEMORY[0x277D82BD8](v32);
      MEMORY[0x277D82BD8](v33);
      MEMORY[0x277D82BD8](v34);
      MEMORY[0x277D82BD8](v35);
      MEMORY[0x277D82BD8](v36);
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
      MEMORY[0x277D82BD8](v49);
      MEMORY[0x277D82BD8](v50);
      MEMORY[0x277D82BD8](v51);
      MEMORY[0x277D82BD8](v52);
      MEMORY[0x277D82BD8](v53);
      MEMORY[0x277D82BD8](v54);
      MEMORY[0x277D82BD8](v55);
      MEMORY[0x277D82BD8](v56);
      MEMORY[0x277D82BD8](v57);
      if (![(CPSManeuversCardView *)v77 showSecondaryManeuverView])
      {
        v23 = [(CPSManeuversCardView *)v77 secondaryManeuverView];
        v22 = [(CPSSecondaryManeuverView *)v23 heightAnchor];
        v21 = [v22 constraintEqualToConstant:?];
        v79[0] = v21;
        v20 = [(CPSManeuversCardView *)v77 hairlineView];
        v19 = [(CPSHairlineView *)v20 heightAnchor];
        v18 = [v19 constraintEqualToConstant:0.0];
        v79[1] = v18;
        v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:2];
        v6 = location;
        location = v5;
        MEMORY[0x277D82BD8](v6);
        MEMORY[0x277D82BD8](v18);
        MEMORY[0x277D82BD8](v19);
        MEMORY[0x277D82BD8](v20);
        MEMORY[0x277D82BD8](v21);
        MEMORY[0x277D82BD8](v22);
        [v76[0] addObjectsFromArray:{location, MEMORY[0x277D82BD8](v23).n128_f64[0]}];
      }

      objc_storeStrong(&location, 0);
    }

    else
    {
      v12 = [(CPSManeuversCardView *)v77 contentView];
      v11 = [(UIView *)v12 bottomAnchor];
      v10 = [(CPSManeuversCardView *)v77 primaryManeuverView];
      v9 = [(CPSPrimaryManeuverView *)v10 bottomAnchor];
      v7 = [(NSLayoutYAxisAnchor *)v11 constraintEqualToAnchor:?];
      v8 = v75;
      v75 = v7;
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
      v17 = [(CPSManeuversCardView *)v77 primaryManeuverView];
      v16 = [(CPSPrimaryManeuverView *)v17 bottomAnchor];
      v15 = [(CPSManeuversCardView *)v77 bottomAnchor];
      v14 = [v16 constraintLessThanOrEqualToAnchor:0.0 constant:?];
      v78[0] = v14;
      v78[1] = v75;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:2];
      [v76[0] addObjectsFromArray:?];
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
    }

    [MEMORY[0x277CCAAD0] activateConstraints:v76[0]];
    [(NSMutableArray *)v77->_activeConstraints addObjectsFromArray:v76[0]];
    objc_storeStrong(&v75, 0);
    objc_storeStrong(v76, 0);
  }
}

- (void)layoutSubviews
{
  v89 = self;
  v88 = a2;
  v87.receiver = self;
  v87.super_class = CPSManeuversCardView;
  [(CPSManeuversCardView *)&v87 layoutSubviews];
  v67 = [(CPSManeuversCardView *)v89 primaryManeuverView];
  v85 = 0;
  v68 = 0;
  if (!v67)
  {
    v86 = [(CPSManeuversCardView *)v89 maneuvers];
    v85 = 1;
    v68 = [(NSArray *)v86 count]!= 0;
  }

  if (v85)
  {
    MEMORY[0x277D82BD8](v86);
  }

  *&v2 = MEMORY[0x277D82BD8](v67).n128_u64[0];
  if (v68)
  {
    v61 = objc_opt_class();
    v63 = [(CPSManeuversCardView *)v89 maneuvers];
    v62 = [(NSArray *)v63 firstObject];
    v84 = [v61 maneuverViewWithManeuver:?];
    MEMORY[0x277D82BD8](v62);
    *&v3 = MEMORY[0x277D82BD8](v63).n128_u64[0];
    [v84 setUsesCustomBackgroundColor:{-[CPSManeuversCardView usesCustomBackgroundColor](v89, "usesCustomBackgroundColor", v3)}];
    v64 = [(CPSManeuversCardView *)v89 contentView];
    [(UIView *)v64 addSubview:v84];
    *&v4 = MEMORY[0x277D82BD8](v64).n128_u64[0];
    [(CPSManeuversCardView *)v89 setPrimaryManeuverView:v84, v4];
    v65 = [(CPSManeuversCardView *)v89 overrideUserInterfaceStyle];
    v66 = [(CPSManeuversCardView *)v89 primaryManeuverView];
    [(CPSPrimaryManeuverView *)v66 setOverrideUserInterfaceStyle:v65];
    MEMORY[0x277D82BD8](v66);
    objc_storeStrong(&v84, 0);
  }

  v59 = [(CPSManeuversCardView *)v89 secondaryManeuverView];
  v82 = 0;
  v60 = 0;
  if (!v59)
  {
    v83 = [(CPSManeuversCardView *)v89 maneuvers];
    v82 = 1;
    v60 = [(NSArray *)v83 count]> 1;
  }

  if (v82)
  {
    MEMORY[0x277D82BD8](v83);
  }

  *&v5 = MEMORY[0x277D82BD8](v59).n128_u64[0];
  if (v60)
  {
    v53 = [CPSSecondaryManeuverView alloc];
    v54 = [(NSArray *)v89->_maneuvers objectAtIndex:1];
    v81 = [(CPSSecondaryManeuverView *)v53 initWithManeuver:?];
    *&v6 = MEMORY[0x277D82BD8](v54).n128_u64[0];
    v55 = [(CPSManeuversCardView *)v89 contentView];
    [(UIView *)v55 addSubview:v81];
    *&v7 = MEMORY[0x277D82BD8](v55).n128_u64[0];
    [(CPSManeuversCardView *)v89 setSecondaryManeuverView:v81, v7];
    v56 = [(CPSManeuversCardView *)v89 overrideUserInterfaceStyle];
    v57 = [(CPSManeuversCardView *)v89 secondaryManeuverView];
    [(CPSSecondaryManeuverView *)v57 setOverrideUserInterfaceStyle:v56];
    v80 = [CPSHairlineView grayHairlineViewAlongAxis:0, MEMORY[0x277D82BD8](v57).n128_f64[0]];
    v58 = [(CPSManeuversCardView *)v89 contentView];
    [(UIView *)v58 addSubview:v80];
    *&v8 = MEMORY[0x277D82BD8](v58).n128_u64[0];
    [(CPSManeuversCardView *)v89 setHairlineView:v80, v8];
    [(CPSManeuversCardView *)v89 _updateSecondaryManeuverBackgroundColor];
    [(CPSManeuversCardView *)v89 _updateHairlineBackgroundColor];
    objc_storeStrong(&v80, 0);
    objc_storeStrong(&v81, 0);
  }

  [(CPSManeuversCardView *)v89 bounds];
  v77[1] = v9;
  v77[2] = v10;
  *&v78 = v11;
  *(&v78 + 1) = v12;
  v79 = v78;
  v51 = [(CPSManeuversCardView *)v89 primaryManeuverView];
  v77[0] = [(CPSPrimaryManeuverView *)v51 layoutConfigurationForSize:*&v78, *(&v78 + 1)];
  MEMORY[0x277D82BD8](v51);
  v76 = 0.0;
  v52 = [(CPSManeuversCardView *)v89 secondaryManeuverView];
  v13 = MEMORY[0x277D82BD8](v52).n128_u64[0];
  if (v52)
  {
    v49 = [(CPSManeuversCardView *)v89 secondaryManeuverView];
    [(CPSManeuversCardView *)v89 bounds];
    v73[5] = v14;
    v73[6] = v15;
    *&v74 = v16;
    *(&v74 + 1) = v17;
    v75 = v74;
    [(CPSSecondaryManeuverView *)v49 generateLayoutConfigurationsForSizeIfNecessary:0 force:v16, v17];
    *&v18 = MEMORY[0x277D82BD8](v49).n128_u64[0];
    v50 = [(CPSManeuversCardView *)v89 secondaryManeuverView];
    [(CPSSecondaryManeuverView *)v50 generatedHeight];
    v76 = v19 + 1.0;
    v13 = MEMORY[0x277D82BD8](v50).n128_u64[0];
  }

  [v77[0] height];
  v48 = v20 + v76;
  [(CPSManeuversCardView *)v89 bounds];
  v73[1] = v21;
  v73[2] = v22;
  v73[3] = v23;
  v73[4] = v24;
  if (v48 <= *&v24)
  {
    v37 = [(CPSManeuversCardView *)v89 secondaryManeuverView];
    [(CPSManeuversCardView *)v89 setShowSecondaryManeuverView:v37 != 0];
    v25 = MEMORY[0x277D82BD8](v37).n128_u64[0];
  }

  else
  {
    v47 = [(CPSManeuversCardView *)v89 secondaryManeuverView];
    v25 = MEMORY[0x277D82BD8](v47).n128_u64[0];
    if (v47)
    {
      v73[0] = 0;
      v45 = [(CPSManeuversCardView *)v89 maneuvers];
      v44 = [(NSArray *)v45 firstObject];
      v46 = [v44 junctionImage];
      MEMORY[0x277D82BD8](v46);
      MEMORY[0x277D82BD8](v44);
      v26 = MEMORY[0x277D82BD8](v45).n128_u64[0];
      if (v46)
      {
        v43 = [(CPSManeuversCardView *)v89 primaryManeuverView];
        v27 = [(CPSPrimaryManeuverView *)v43 shortestJunctionViewlayoutConfigurationForSize:*&v79, *(&v79 + 1)];
        v28 = v73[0];
        v73[0] = v27;
        MEMORY[0x277D82BD8](v28);
        v26 = MEMORY[0x277D82BD8](v43).n128_u64[0];
      }

      v71 = 0;
      v69 = 0;
      v42 = 0;
      if (!v73[0])
      {
        v72 = [v77[0] instruction];
        v71 = 1;
        v41 = 1;
        if (!v72)
        {
          v70 = [v77[0] attributedInstruction];
          v69 = 1;
          v41 = v70 != 0;
        }

        v42 = v41;
      }

      if (v69)
      {
        v26 = MEMORY[0x277D82BD8](v70).n128_u64[0];
      }

      if (v71)
      {
        v26 = MEMORY[0x277D82BD8](v72).n128_u64[0];
      }

      if (v42)
      {
        v40 = [(CPSManeuversCardView *)v89 primaryManeuverView];
        v29 = [(CPSPrimaryManeuverView *)v40 shortestInstructionlayoutConfigurationForSize:*&v79, *(&v79 + 1)];
        v30 = v73[0];
        v73[0] = v29;
        MEMORY[0x277D82BD8](v30);
        v26 = MEMORY[0x277D82BD8](v40).n128_u64[0];
      }

      if (v73[0] && ([v73[0] height], v39 = v31 + v76, -[CPSManeuversCardView bounds](v89, "bounds"), v26 = *&v39, v39 <= v32))
      {
        objc_storeStrong(v77, v73[0]);
        [(CPSManeuversCardView *)v89 setShowSecondaryManeuverView:1];
      }

      else
      {
        [(CPSManeuversCardView *)v89 setShowSecondaryManeuverView:0, *&v26];
      }

      v38 = [(CPSManeuversCardView *)v89 secondaryManeuverView];
      [(CPSSecondaryManeuverView *)v38 setHidden:[(CPSManeuversCardView *)v89 showSecondaryManeuverView]^ 1];
      MEMORY[0x277D82BD8](v38);
      objc_storeStrong(v73, 0);
    }
  }

  v35 = [(CPSManeuversCardView *)v89 primaryManeuverView];
  [(CPSPrimaryManeuverView *)v35 setLayoutConfigurationForIntrinsicSizing:v77[0]];
  *&v33 = MEMORY[0x277D82BD8](v35).n128_u64[0];
  v36 = [(CPSManeuversCardView *)v89 primaryManeuverView];
  [(CPSPrimaryManeuverView *)v36 invalidateIntrinsicContentSize];
  *&v34 = MEMORY[0x277D82BD8](v36).n128_u64[0];
  [(CPSManeuversCardView *)v89 _updateConstraints];
  objc_storeStrong(v77, 0);
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
  [(CPSManeuversCardView *)v8 setNeedsLayout];
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
  v11 = [(CPSManeuversCardView *)v15 primaryManeuverView];
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
    v6 = [(CPSManeuversCardView *)v15 primaryManeuverView];
    [(CPSPrimaryManeuverView *)v6 setCurrentTravelEstimates:location[0]];
    *&v5 = MEMORY[0x277D82BD8](v6).n128_u64[0];
    [(CPSManeuversCardView *)v15 setNeedsLayout];
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)canFitSize:(CGSize)a3
{
  v7 = a3;
  v6[2] = self;
  v6[1] = a2;
  v4 = [(CPSManeuversCardView *)self primaryManeuverView];
  v6[0] = [(CPSPrimaryManeuverView *)v4 layoutConfigurationForSize:v7.width, v7.height];
  MEMORY[0x277D82BD8](v4);
  v5 = v6[0] != 0;
  objc_storeStrong(v6, 0);
  return v5;
}

- (void)setUsesCustomBackgroundColor:(BOOL)a3
{
  if (self->_usesCustomBackgroundColor != a3)
  {
    self->_usesCustomBackgroundColor = a3;
    v3 = [(CPSManeuversCardView *)self primaryManeuverView];
    [(CPSPrimaryManeuverView *)v3 setUsesCustomBackgroundColor:a3];
    [(CPSManeuversCardView *)self _updateHairlineBackgroundColor];
    [(CPSManeuversCardView *)self _updateSecondaryManeuverBackgroundColor];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = CPSManeuversCardView;
  [(CPSManeuversCardView *)&v3 traitCollectionDidChange:location[0]];
  [(CPSManeuversCardView *)v5 _updateHairlineBackgroundColor];
  [(CPSManeuversCardView *)v5 _updateSecondaryManeuverBackgroundColor];
  objc_storeStrong(location, 0);
}

- (void)_updateHairlineBackgroundColor
{
  if ([(CPSManeuversCardView *)self usesCustomBackgroundColor])
  {
    v8 = [(CPSManeuversCardView *)self hairlineView];
    v4 = MEMORY[0x277D75348];
    v7 = CPSFrameworkBundle();
    v6 = [(CPSManeuversCardView *)self traitCollection];
    v5 = [v4 colorNamed:@"GuidanceColor30AlphaLightBlackDarkWhite" inBundle:v7 compatibleWithTraitCollection:?];
    [(CPSHairlineView *)v8 setBackgroundColor:?];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
  }

  else
  {
    v3 = [(CPSManeuversCardView *)self hairlineView];
    v2 = [MEMORY[0x277D75348] colorWithRed:0.4 green:0.4 blue:0.4 alpha:1.0];
    [(CPSHairlineView *)v3 setBackgroundColor:?];
    MEMORY[0x277D82BD8](v2);
    MEMORY[0x277D82BD8](v3);
  }
}

- (void)_updateSecondaryManeuverBackgroundColor
{
  if ([(CPSManeuversCardView *)self usesCustomBackgroundColor])
  {
    v8 = [(CPSManeuversCardView *)self secondaryManeuverView];
    v4 = MEMORY[0x277D75348];
    v7 = CPSFrameworkBundle();
    v6 = [(CPSManeuversCardView *)self traitCollection];
    v5 = [v4 colorNamed:@"GuidanceColor30AlphaLightWhiteDarkBlack" inBundle:v7 compatibleWithTraitCollection:?];
    [(CPSSecondaryManeuverView *)v8 setBackgroundColor:?];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
  }

  else
  {
    v3 = [(CPSManeuversCardView *)self secondaryManeuverView];
    v2 = [MEMORY[0x277D75348] colorWithWhite:0.247058824 alpha:1.0];
    [(CPSSecondaryManeuverView *)v3 setBackgroundColor:?];
    MEMORY[0x277D82BD8](v2);
    MEMORY[0x277D82BD8](v3);
  }
}

- (void)invalidate
{
  v2 = [(CPSManeuversCardView *)self primaryManeuverView];
  [(CPSPrimaryManeuverView *)v2 setActiveLayoutConfiguration:?];
  v3 = [(CPSManeuversCardView *)self primaryManeuverView];
  [(CPSPrimaryManeuverView *)v3 setLayoutConfigurationForIntrinsicSizing:0];
  v4 = [(CPSManeuversCardView *)self primaryManeuverView];
  [(CPSPrimaryManeuverView *)v4 invalidateIntrinsicContentSize];
  MEMORY[0x277D82BD8](v4);
}

+ (id)maneuverViewWithManeuver:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [CPSPrimaryManeuverView alloc];
  v5 = [(CPSPrimaryManeuverView *)v3 initWithManeuver:location[0]];
  objc_storeStrong(location, 0);

  return v5;
}

@end