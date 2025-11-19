@interface CPSSecondaryManeuverView
- (CPSSecondaryManeuverView)initWithManeuver:(id)a3;
- (id)accessibilityName:(id)a3;
- (void)_updateLabelTextColors;
- (void)generateLayoutConfigurationsForSizeIfNecessary:(CGSize)a3 force:(BOOL)a4;
- (void)setCurrentTravelEstimates:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CPSSecondaryManeuverView

- (id)accessibilityName:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = [(CPSSecondaryManeuverView *)v17 traitCollection];
  v15 = [v14 userInterfaceStyle];
  MEMORY[0x277D82BD8](v14);
  if (v15 == 1)
  {
    v12 = MEMORY[0x277CCACA8];
    v3 = objc_opt_class();
    v13 = NSStringFromClass(v3);
    v18 = [v12 stringWithFormat:@"%@%@-Light", v13, location[0]];
    MEMORY[0x277D82BD8](v13);
  }

  else if (v15 == 2)
  {
    v10 = MEMORY[0x277CCACA8];
    v4 = objc_opt_class();
    v11 = NSStringFromClass(v4);
    v18 = [v10 stringWithFormat:@"%@%@-Dark", v11, location[0]];
    MEMORY[0x277D82BD8](v11);
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    v5 = objc_opt_class();
    v9 = NSStringFromClass(v5);
    v18 = [v8 stringWithFormat:@"%@%@", v9, location[0]];
    MEMORY[0x277D82BD8](v9);
  }

  objc_storeStrong(location, 0);
  v6 = v18;

  return v6;
}

- (CPSSecondaryManeuverView)initWithManeuver:(id)a3
{
  v129 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v129;
  v129 = 0;
  v127.receiver = v3;
  v127.super_class = CPSSecondaryManeuverView;
  v129 = [(CPSSecondaryManeuverView *)&v127 init];
  objc_storeStrong(&v129, v129);
  if (v129)
  {
    objc_storeStrong(&v129->_maneuver, location[0]);
    v4 = [location[0] displayStyle];
    v129->_style = v4;
    v129->_guidanceStyle = 2;
    [(CPSSecondaryManeuverView *)v129 setTranslatesAutoresizingMaskIntoConstraints:0];
    [CPSSecondaryManeuverView setContentCompressionResistancePriority:v129 forAxis:"setContentCompressionResistancePriority:forAxis:"];
    LODWORD(v5) = 1148846080;
    [(CPSSecondaryManeuverView *)v129 setContentHuggingPriority:1 forAxis:v5];
    v126 = [MEMORY[0x277CBEB18] array];
    v119 = 0;
    v120 = &v119;
    v121 = 838860800;
    v122 = 48;
    v123 = __Block_byref_object_copy__6;
    v124 = __Block_byref_object_dispose__6;
    v125 = 0;
    v103 = v129;
    v118 = [(CPSSecondaryManeuverView *)v129 style];
    v117 = 4;
    if (v118 < 4)
    {
      v102 = v118;
    }

    else
    {
      v102 = v117;
    }

    v116[1] = v102;
    [(CPSSecondaryManeuverView *)v103 setStyle:v102];
    v108 = MEMORY[0x277D85DD0];
    v109 = -1073741824;
    v110 = 0;
    v111 = __45__CPSSecondaryManeuverView_initWithManeuver___block_invoke;
    v112 = &unk_278D94258;
    v115[1] = &v119;
    v113 = MEMORY[0x277D82BE0](location[0]);
    v114 = MEMORY[0x277D82BE0](v129);
    v115[0] = MEMORY[0x277D82BE0](v126);
    v116[0] = MEMORY[0x245D2A460](&v108);
    v107 = [location[0] symbolImage];
    v106 = 0;
    v105 = [location[0] displayStyle];
    [(CPSSecondaryManeuverView *)v129 horizontalInset];
    v104 = v6;
    if (!v107 || v105 == 4)
    {
      (*(v116[0] + 2))();
      v34 = v126;
      v33 = [v120[5] leadingAnchor];
      v32 = [(CPSSecondaryManeuverView *)v129 leadingAnchor];
      v31 = [v33 constraintEqualToAnchor:v104 constant:?];
      [v34 addObject:?];
      MEMORY[0x277D82BD8](v31);
      MEMORY[0x277D82BD8](v32);
      *&v24 = MEMORY[0x277D82BD8](v33).n128_u64[0];
      v30 = v126;
      v29 = [v120[5] trailingAnchor];
      v28 = [(CPSSecondaryManeuverView *)v129 trailingAnchor];
      v27 = [v29 constraintEqualToAnchor:-v104 constant:?];
      [v30 addObject:?];
      MEMORY[0x277D82BD8](v27);
      MEMORY[0x277D82BD8](v28);
      MEMORY[0x277D82BD8](v29);
    }

    else
    {
      v101 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v107];
      v7 = v106;
      v106 = v101;
      [v101 setContentMode:{1, MEMORY[0x277D82BD8](v7).n128_f64[0]}];
      [v101 setTranslatesAutoresizingMaskIntoConstraints:0];
      v100 = [(CPSSecondaryManeuverView *)v129 accessibilityName:@"Symbol"];
      [v101 setAccessibilityLabel:?];
      *&v8 = MEMORY[0x277D82BD8](v100).n128_u64[0];
      [(CPSSecondaryManeuverView *)v129 addSubview:v101, v8];
      v99 = v126;
      v98 = [v101 topAnchor];
      v97 = [(CPSSecondaryManeuverView *)v129 topAnchor];
      v96 = [v98 constraintEqualToAnchor:6.0 constant:?];
      [v99 addObject:?];
      MEMORY[0x277D82BD8](v96);
      MEMORY[0x277D82BD8](v97);
      *&v9 = MEMORY[0x277D82BD8](v98).n128_u64[0];
      v95 = v126;
      v94 = [v101 bottomAnchor];
      v93 = [(CPSSecondaryManeuverView *)v129 bottomAnchor];
      v92 = [v94 constraintLessThanOrEqualToAnchor:-6.0 constant:?];
      [v95 addObject:?];
      MEMORY[0x277D82BD8](v92);
      MEMORY[0x277D82BD8](v93);
      *&v10 = MEMORY[0x277D82BD8](v94).n128_u64[0];
      v91 = v126;
      v90 = [v101 heightAnchor];
      v89 = [v90 constraintLessThanOrEqualToConstant:18.0];
      [v91 addObject:?];
      MEMORY[0x277D82BD8](v89);
      v11 = MEMORY[0x277D82BD8](v90);
      if (v105 == 3)
      {
        v88 = v126;
        v87 = [v106 leadingAnchor];
        v86 = [(CPSSecondaryManeuverView *)v129 leadingAnchor];
        v85 = [v87 constraintGreaterThanOrEqualToAnchor:v104 constant:?];
        [v88 addObject:?];
        MEMORY[0x277D82BD8](v85);
        MEMORY[0x277D82BD8](v86);
        *&v12 = MEMORY[0x277D82BD8](v87).n128_u64[0];
        v84 = v126;
        v83 = [v106 trailingAnchor];
        v82 = [(CPSSecondaryManeuverView *)v129 trailingAnchor];
        v81 = [v83 constraintLessThanOrEqualToAnchor:-v104 constant:?];
        [v84 addObject:?];
        MEMORY[0x277D82BD8](v81);
        MEMORY[0x277D82BD8](v82);
        *&v13 = MEMORY[0x277D82BD8](v83).n128_u64[0];
        v80 = v126;
        v79 = [v106 centerXAnchor];
        v78 = [(CPSSecondaryManeuverView *)v129 centerXAnchor];
        v77 = [v79 constraintEqualToAnchor:?];
        [v80 addObject:?];
        MEMORY[0x277D82BD8](v77);
        MEMORY[0x277D82BD8](v78);
        *&v14 = MEMORY[0x277D82BD8](v79).n128_u64[0];
        v76 = v126;
        v75 = [v106 widthAnchor];
        v74 = [v75 constraintLessThanOrEqualToConstant:120.0];
        [v76 addObject:?];
        MEMORY[0x277D82BD8](v74);
        *&v15 = MEMORY[0x277D82BD8](v75).n128_u64[0];
        v73 = v126;
        v72 = [v106 topAnchor];
        v71 = [(CPSSecondaryManeuverView *)v129 topAnchor];
        v70 = [v72 constraintEqualToAnchor:6.0 constant:?];
        [v73 addObject:?];
        MEMORY[0x277D82BD8](v70);
        MEMORY[0x277D82BD8](v71);
        *&v16 = MEMORY[0x277D82BD8](v72).n128_u64[0];
        v69 = v126;
        v68 = [v106 bottomAnchor];
        v67 = [(CPSSecondaryManeuverView *)v129 bottomAnchor];
        v66 = [v68 constraintEqualToAnchor:-6.0 constant:?];
        [v69 addObject:?];
        MEMORY[0x277D82BD8](v66);
        MEMORY[0x277D82BD8](v67);
        MEMORY[0x277D82BD8](v68);
      }

      else
      {
        (*(v116[0] + 2))(v11);
        v65 = v126;
        v64 = [v106 widthAnchor];
        v63 = [v64 constraintLessThanOrEqualToConstant:18.0];
        [v65 addObject:?];
        MEMORY[0x277D82BD8](v63);
        *&v17 = MEMORY[0x277D82BD8](v64).n128_u64[0];
        v62 = v126;
        v61 = [v120[5] lastBaselineAnchor];
        v60 = [v106 bottomAnchor];
        v59 = [v61 constraintEqualToAnchor:?];
        [v62 addObject:?];
        MEMORY[0x277D82BD8](v59);
        MEMORY[0x277D82BD8](v60);
        *&v18 = MEMORY[0x277D82BD8](v61).n128_u64[0];
        if (v105 > 1)
        {
          if (v105 == 2)
          {
            v46 = v126;
            v45 = [v120[5] leadingAnchor];
            v44 = [(CPSSecondaryManeuverView *)v129 leadingAnchor];
            v43 = [v45 constraintEqualToAnchor:v104 constant:?];
            [v46 addObject:?];
            MEMORY[0x277D82BD8](v43);
            MEMORY[0x277D82BD8](v44);
            *&v21 = MEMORY[0x277D82BD8](v45).n128_u64[0];
            v42 = v126;
            v41 = [v106 leadingAnchor];
            v40 = [v120[5] trailingAnchor];
            v39 = [v41 constraintEqualToAnchor:v104 constant:?];
            [v42 addObject:?];
            MEMORY[0x277D82BD8](v39);
            MEMORY[0x277D82BD8](v40);
            *&v22 = MEMORY[0x277D82BD8](v41).n128_u64[0];
            v38 = v126;
            v37 = [v106 trailingAnchor];
            v36 = [(CPSSecondaryManeuverView *)v129 trailingAnchor];
            v35 = [v37 constraintEqualToAnchor:-v104 constant:?];
            [v38 addObject:?];
            MEMORY[0x277D82BD8](v35);
            MEMORY[0x277D82BD8](v36);
            MEMORY[0x277D82BD8](v37);
          }
        }

        else
        {
          v58 = v126;
          v57 = [v106 leadingAnchor];
          v56 = [(CPSSecondaryManeuverView *)v129 leadingAnchor];
          v55 = [v57 constraintEqualToAnchor:v104 constant:?];
          [v58 addObject:?];
          MEMORY[0x277D82BD8](v55);
          MEMORY[0x277D82BD8](v56);
          *&v19 = MEMORY[0x277D82BD8](v57).n128_u64[0];
          v54 = v126;
          v53 = [v120[5] leadingAnchor];
          v52 = [v106 trailingAnchor];
          v51 = [v53 constraintEqualToAnchor:v104 constant:?];
          [v54 addObject:?];
          MEMORY[0x277D82BD8](v51);
          MEMORY[0x277D82BD8](v52);
          *&v20 = MEMORY[0x277D82BD8](v53).n128_u64[0];
          v50 = v126;
          v49 = [v120[5] trailingAnchor];
          v48 = [(CPSSecondaryManeuverView *)v129 trailingAnchor];
          v47 = [v49 constraintEqualToAnchor:-v104 constant:?];
          [v50 addObject:?];
          MEMORY[0x277D82BD8](v47);
          MEMORY[0x277D82BD8](v48);
          MEMORY[0x277D82BD8](v49);
        }
      }

      objc_storeStrong(&v129->_symbolView, v106);
      LODWORD(v23) = 1148846080;
      [(UIImageView *)v129->_symbolView setContentCompressionResistancePriority:1 forAxis:v23];
    }

    [MEMORY[0x277CCAAD0] activateConstraints:v126];
    [(CPSSecondaryManeuverView *)v129 _updateLabelTextColors];
    objc_storeStrong(&v106, 0);
    objc_storeStrong(&v107, 0);
    objc_storeStrong(v116, 0);
    objc_storeStrong(v115, 0);
    objc_storeStrong(&v114, 0);
    objc_storeStrong(&v113, 0);
    _Block_object_dispose(&v119, 8);
    objc_storeStrong(&v125, 0);
    objc_storeStrong(&v126, 0);
  }

  v26 = MEMORY[0x277D82BE0](v129);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v129, 0);
  return v26;
}

void __45__CPSSecondaryManeuverView_initWithManeuver___block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(CPSAbridgableLabel);
  v2 = *(*(a1 + 56) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  v4 = MEMORY[0x277D82BD8](v3);
  v4.n128_u32[0] = 1148846080;
  [*(*(*(a1 + 56) + 8) + 40) setContentHuggingPriority:1 forAxis:v4.n128_f64[0]];
  [*(*(*(a1 + 56) + 8) + 40) setNumberOfLines:0];
  v20 = *(*(*(a1 + 56) + 8) + 40);
  v21 = [MEMORY[0x277D74300] systemFontOfSize:12.0 weight:*MEMORY[0x277D74418]];
  [v20 setFont:?];
  [*(*(*(a1 + 56) + 8) + 40) setTranslatesAutoresizingMaskIntoConstraints:{0, MEMORY[0x277D82BD8](v21).n128_f64[0]}];
  v23 = [*(a1 + 32) attributedInstructionVariants];
  *&v5 = MEMORY[0x277D82BD8](v23).n128_u64[0];
  if (v23)
  {
    v18 = *(*(*(a1 + 56) + 8) + 40);
    v19 = [*(a1 + 32) attributedInstructionVariants];
    [v18 setAttributedTextVariants:?];
    v6 = MEMORY[0x277D82BD8](v19).n128_u64[0];
  }

  else
  {
    v16 = *(*(*(a1 + 56) + 8) + 40);
    v17 = [*(a1 + 32) instructionVariants];
    [v16 setTextVariants:?];
    v6 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  }

  [*(a1 + 40) addSubview:{*(*(*(a1 + 56) + 8) + 40), *&v6}];
  v8 = *(a1 + 48);
  v11 = [*(*(*(a1 + 56) + 8) + 40) topAnchor];
  v10 = [*(a1 + 40) topAnchor];
  v9 = [v11 constraintEqualToAnchor:6.0 constant:?];
  [v8 addObject:?];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  *&v7 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  v12 = *(a1 + 48);
  v15 = [*(*(*(a1 + 56) + 8) + 40) bottomAnchor];
  v14 = [*(a1 + 40) bottomAnchor];
  v13 = [v15 constraintEqualToAnchor:-6.0 constant:?];
  [v12 addObject:?];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  objc_storeStrong((*(a1 + 40) + 456), *(*(*(a1 + 56) + 8) + 40));
}

- (void)generateLayoutConfigurationsForSizeIfNecessary:(CGSize)a3 force:(BOOL)a4
{
  v27[1] = *MEMORY[0x277D85DE8];
  v26 = a3;
  v25 = self;
  v24 = a2;
  v23 = a4;
  v17 = [MEMORY[0x277D75C80] currentTraitCollection];
  v18 = [v17 userInterfaceIdiom] == 3;
  MEMORY[0x277D82BD8](v17);
  v22 = v18;
  IsZero = BSFloatIsZero();
  [(CPSSecondaryManeuverView *)v25 generatedWidth];
  v20 = BSFloatEqualToFloat();
  if (v18 && (IsZero & 1) == 0 && (v20 & 1) == 0 || v23)
  {
    [(CPSSecondaryManeuverView *)v25 setGeneratedWidth:v26.width];
    v10 = [CPSSecondaryManeuverView alloc];
    v11 = [(CPSSecondaryManeuverView *)v25 maneuver];
    v19 = [(CPSSecondaryManeuverView *)v10 initWithManeuver:?];
    MEMORY[0x277D82BD8](v11);
    v12 = v19;
    CGRectMake_5();
    [(CPSSecondaryManeuverView *)v12 setFrame:v4, v5, v6, v7];
    v13 = MEMORY[0x277CCAAD0];
    v16 = [(CPSSecondaryManeuverView *)v19 widthAnchor];
    v15 = [v16 constraintEqualToConstant:v26.width];
    v27[0] = v15;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    [v13 activateConstraints:?];
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    *&v8 = MEMORY[0x277D82BD8](v16).n128_u64[0];
    [(CPSSecondaryManeuverView *)v19 layoutIfNeeded];
    [(CPSSecondaryManeuverView *)v19 bounds];
    [(CPSSecondaryManeuverView *)v25 setGeneratedHeight:v9];
    objc_storeStrong(&v19, 0);
  }
}

- (void)_updateLabelTextColors
{
  v3 = [(CPSSecondaryManeuverView *)self instructionLabel];
  v2 = [MEMORY[0x277D75348] colorWithDynamicProvider:&__block_literal_global_17];
  [(CPSAbridgableLabel *)v3 setTextColor:?];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
}

id __50__CPSSecondaryManeuverView__updateLabelTextColors__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [MEMORY[0x277D75348] labelColor];
  objc_storeStrong(location, 0);

  return v3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13.receiver = v15;
  v13.super_class = CPSSecondaryManeuverView;
  [(CPSSecondaryManeuverView *)&v13 traitCollectionDidChange:location[0]];
  v9 = [(CPSSecondaryManeuverView *)v15 symbolView];
  v8 = [(CPSSecondaryManeuverView *)v15 maneuver];
  v7 = [(CPManeuver *)v8 symbolImage];
  [(UIImageView *)v9 setImage:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  *&v3 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  v11 = [(CPSSecondaryManeuverView *)v15 symbolView];
  v10 = [(CPSSecondaryManeuverView *)v15 accessibilityName:@"Symbol"];
  [(UIImageView *)v11 setAccessibilityLabel:?];
  MEMORY[0x277D82BD8](v10);
  *&v4 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  v12 = v15;
  [(CPSSecondaryManeuverView *)v15 bounds];
  [(CPSSecondaryManeuverView *)v12 generateLayoutConfigurationsForSizeIfNecessary:1 force:v5, v6];
  objc_storeStrong(location, 0);
}

- (void)setCurrentTravelEstimates:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v4->_currentTravelEstimates, location[0]);
  objc_storeStrong(location, 0);
}

@end