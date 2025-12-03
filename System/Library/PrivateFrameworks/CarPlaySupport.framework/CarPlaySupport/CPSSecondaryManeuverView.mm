@interface CPSSecondaryManeuverView
- (CPSSecondaryManeuverView)initWithManeuver:(id)maneuver;
- (id)accessibilityName:(id)name;
- (void)_updateLabelTextColors;
- (void)generateLayoutConfigurationsForSizeIfNecessary:(CGSize)necessary force:(BOOL)force;
- (void)setCurrentTravelEstimates:(id)estimates;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CPSSecondaryManeuverView

- (id)accessibilityName:(id)name
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  traitCollection = [(CPSSecondaryManeuverView *)selfCopy traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  MEMORY[0x277D82BD8](traitCollection);
  if (userInterfaceStyle == 1)
  {
    v12 = MEMORY[0x277CCACA8];
    v3 = objc_opt_class();
    v13 = NSStringFromClass(v3);
    v18 = [v12 stringWithFormat:@"%@%@-Light", v13, location[0]];
    MEMORY[0x277D82BD8](v13);
  }

  else if (userInterfaceStyle == 2)
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

- (CPSSecondaryManeuverView)initWithManeuver:(id)maneuver
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, maneuver);
  v3 = selfCopy;
  selfCopy = 0;
  v127.receiver = v3;
  v127.super_class = CPSSecondaryManeuverView;
  selfCopy = [(CPSSecondaryManeuverView *)&v127 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_maneuver, location[0]);
    displayStyle = [location[0] displayStyle];
    selfCopy->_style = displayStyle;
    selfCopy->_guidanceStyle = 2;
    [(CPSSecondaryManeuverView *)selfCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    [CPSSecondaryManeuverView setContentCompressionResistancePriority:selfCopy forAxis:"setContentCompressionResistancePriority:forAxis:"];
    LODWORD(v5) = 1148846080;
    [(CPSSecondaryManeuverView *)selfCopy setContentHuggingPriority:1 forAxis:v5];
    array = [MEMORY[0x277CBEB18] array];
    v119 = 0;
    v120 = &v119;
    v121 = 838860800;
    v122 = 48;
    v123 = __Block_byref_object_copy__6;
    v124 = __Block_byref_object_dispose__6;
    v125 = 0;
    v103 = selfCopy;
    style = [(CPSSecondaryManeuverView *)selfCopy style];
    v117 = 4;
    if (style < 4)
    {
      v102 = style;
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
    v114 = MEMORY[0x277D82BE0](selfCopy);
    v115[0] = MEMORY[0x277D82BE0](array);
    v116[0] = MEMORY[0x245D2A460](&v108);
    symbolImage = [location[0] symbolImage];
    v106 = 0;
    displayStyle2 = [location[0] displayStyle];
    [(CPSSecondaryManeuverView *)selfCopy horizontalInset];
    v104 = v6;
    if (!symbolImage || displayStyle2 == 4)
    {
      (*(v116[0] + 2))();
      v34 = array;
      leadingAnchor = [v120[5] leadingAnchor];
      leadingAnchor2 = [(CPSSecondaryManeuverView *)selfCopy leadingAnchor];
      v31 = [leadingAnchor constraintEqualToAnchor:v104 constant:?];
      [v34 addObject:?];
      MEMORY[0x277D82BD8](v31);
      MEMORY[0x277D82BD8](leadingAnchor2);
      *&v24 = MEMORY[0x277D82BD8](leadingAnchor).n128_u64[0];
      v30 = array;
      trailingAnchor = [v120[5] trailingAnchor];
      trailingAnchor2 = [(CPSSecondaryManeuverView *)selfCopy trailingAnchor];
      v27 = [trailingAnchor constraintEqualToAnchor:-v104 constant:?];
      [v30 addObject:?];
      MEMORY[0x277D82BD8](v27);
      MEMORY[0x277D82BD8](trailingAnchor2);
      MEMORY[0x277D82BD8](trailingAnchor);
    }

    else
    {
      v101 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:symbolImage];
      v7 = v106;
      v106 = v101;
      [v101 setContentMode:{1, MEMORY[0x277D82BD8](v7).n128_f64[0]}];
      [v101 setTranslatesAutoresizingMaskIntoConstraints:0];
      v100 = [(CPSSecondaryManeuverView *)selfCopy accessibilityName:@"Symbol"];
      [v101 setAccessibilityLabel:?];
      *&v8 = MEMORY[0x277D82BD8](v100).n128_u64[0];
      [(CPSSecondaryManeuverView *)selfCopy addSubview:v101, v8];
      v99 = array;
      topAnchor = [v101 topAnchor];
      topAnchor2 = [(CPSSecondaryManeuverView *)selfCopy topAnchor];
      v96 = [topAnchor constraintEqualToAnchor:6.0 constant:?];
      [v99 addObject:?];
      MEMORY[0x277D82BD8](v96);
      MEMORY[0x277D82BD8](topAnchor2);
      *&v9 = MEMORY[0x277D82BD8](topAnchor).n128_u64[0];
      v95 = array;
      bottomAnchor = [v101 bottomAnchor];
      bottomAnchor2 = [(CPSSecondaryManeuverView *)selfCopy bottomAnchor];
      v92 = [bottomAnchor constraintLessThanOrEqualToAnchor:-6.0 constant:?];
      [v95 addObject:?];
      MEMORY[0x277D82BD8](v92);
      MEMORY[0x277D82BD8](bottomAnchor2);
      *&v10 = MEMORY[0x277D82BD8](bottomAnchor).n128_u64[0];
      v91 = array;
      heightAnchor = [v101 heightAnchor];
      v89 = [heightAnchor constraintLessThanOrEqualToConstant:18.0];
      [v91 addObject:?];
      MEMORY[0x277D82BD8](v89);
      v11 = MEMORY[0x277D82BD8](heightAnchor);
      if (displayStyle2 == 3)
      {
        v88 = array;
        leadingAnchor3 = [v106 leadingAnchor];
        leadingAnchor4 = [(CPSSecondaryManeuverView *)selfCopy leadingAnchor];
        v85 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:v104 constant:?];
        [v88 addObject:?];
        MEMORY[0x277D82BD8](v85);
        MEMORY[0x277D82BD8](leadingAnchor4);
        *&v12 = MEMORY[0x277D82BD8](leadingAnchor3).n128_u64[0];
        v84 = array;
        trailingAnchor3 = [v106 trailingAnchor];
        trailingAnchor4 = [(CPSSecondaryManeuverView *)selfCopy trailingAnchor];
        v81 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:-v104 constant:?];
        [v84 addObject:?];
        MEMORY[0x277D82BD8](v81);
        MEMORY[0x277D82BD8](trailingAnchor4);
        *&v13 = MEMORY[0x277D82BD8](trailingAnchor3).n128_u64[0];
        v80 = array;
        centerXAnchor = [v106 centerXAnchor];
        centerXAnchor2 = [(CPSSecondaryManeuverView *)selfCopy centerXAnchor];
        v77 = [centerXAnchor constraintEqualToAnchor:?];
        [v80 addObject:?];
        MEMORY[0x277D82BD8](v77);
        MEMORY[0x277D82BD8](centerXAnchor2);
        *&v14 = MEMORY[0x277D82BD8](centerXAnchor).n128_u64[0];
        v76 = array;
        widthAnchor = [v106 widthAnchor];
        v74 = [widthAnchor constraintLessThanOrEqualToConstant:120.0];
        [v76 addObject:?];
        MEMORY[0x277D82BD8](v74);
        *&v15 = MEMORY[0x277D82BD8](widthAnchor).n128_u64[0];
        v73 = array;
        topAnchor3 = [v106 topAnchor];
        topAnchor4 = [(CPSSecondaryManeuverView *)selfCopy topAnchor];
        v70 = [topAnchor3 constraintEqualToAnchor:6.0 constant:?];
        [v73 addObject:?];
        MEMORY[0x277D82BD8](v70);
        MEMORY[0x277D82BD8](topAnchor4);
        *&v16 = MEMORY[0x277D82BD8](topAnchor3).n128_u64[0];
        v69 = array;
        bottomAnchor3 = [v106 bottomAnchor];
        bottomAnchor4 = [(CPSSecondaryManeuverView *)selfCopy bottomAnchor];
        v66 = [bottomAnchor3 constraintEqualToAnchor:-6.0 constant:?];
        [v69 addObject:?];
        MEMORY[0x277D82BD8](v66);
        MEMORY[0x277D82BD8](bottomAnchor4);
        MEMORY[0x277D82BD8](bottomAnchor3);
      }

      else
      {
        (*(v116[0] + 2))(v11);
        v65 = array;
        widthAnchor2 = [v106 widthAnchor];
        v63 = [widthAnchor2 constraintLessThanOrEqualToConstant:18.0];
        [v65 addObject:?];
        MEMORY[0x277D82BD8](v63);
        *&v17 = MEMORY[0x277D82BD8](widthAnchor2).n128_u64[0];
        v62 = array;
        lastBaselineAnchor = [v120[5] lastBaselineAnchor];
        bottomAnchor5 = [v106 bottomAnchor];
        v59 = [lastBaselineAnchor constraintEqualToAnchor:?];
        [v62 addObject:?];
        MEMORY[0x277D82BD8](v59);
        MEMORY[0x277D82BD8](bottomAnchor5);
        *&v18 = MEMORY[0x277D82BD8](lastBaselineAnchor).n128_u64[0];
        if (displayStyle2 > 1)
        {
          if (displayStyle2 == 2)
          {
            v46 = array;
            leadingAnchor5 = [v120[5] leadingAnchor];
            leadingAnchor6 = [(CPSSecondaryManeuverView *)selfCopy leadingAnchor];
            v43 = [leadingAnchor5 constraintEqualToAnchor:v104 constant:?];
            [v46 addObject:?];
            MEMORY[0x277D82BD8](v43);
            MEMORY[0x277D82BD8](leadingAnchor6);
            *&v21 = MEMORY[0x277D82BD8](leadingAnchor5).n128_u64[0];
            v42 = array;
            leadingAnchor7 = [v106 leadingAnchor];
            trailingAnchor5 = [v120[5] trailingAnchor];
            v39 = [leadingAnchor7 constraintEqualToAnchor:v104 constant:?];
            [v42 addObject:?];
            MEMORY[0x277D82BD8](v39);
            MEMORY[0x277D82BD8](trailingAnchor5);
            *&v22 = MEMORY[0x277D82BD8](leadingAnchor7).n128_u64[0];
            v38 = array;
            trailingAnchor6 = [v106 trailingAnchor];
            trailingAnchor7 = [(CPSSecondaryManeuverView *)selfCopy trailingAnchor];
            v35 = [trailingAnchor6 constraintEqualToAnchor:-v104 constant:?];
            [v38 addObject:?];
            MEMORY[0x277D82BD8](v35);
            MEMORY[0x277D82BD8](trailingAnchor7);
            MEMORY[0x277D82BD8](trailingAnchor6);
          }
        }

        else
        {
          v58 = array;
          leadingAnchor8 = [v106 leadingAnchor];
          leadingAnchor9 = [(CPSSecondaryManeuverView *)selfCopy leadingAnchor];
          v55 = [leadingAnchor8 constraintEqualToAnchor:v104 constant:?];
          [v58 addObject:?];
          MEMORY[0x277D82BD8](v55);
          MEMORY[0x277D82BD8](leadingAnchor9);
          *&v19 = MEMORY[0x277D82BD8](leadingAnchor8).n128_u64[0];
          v54 = array;
          leadingAnchor10 = [v120[5] leadingAnchor];
          trailingAnchor8 = [v106 trailingAnchor];
          v51 = [leadingAnchor10 constraintEqualToAnchor:v104 constant:?];
          [v54 addObject:?];
          MEMORY[0x277D82BD8](v51);
          MEMORY[0x277D82BD8](trailingAnchor8);
          *&v20 = MEMORY[0x277D82BD8](leadingAnchor10).n128_u64[0];
          v50 = array;
          trailingAnchor9 = [v120[5] trailingAnchor];
          trailingAnchor10 = [(CPSSecondaryManeuverView *)selfCopy trailingAnchor];
          v47 = [trailingAnchor9 constraintEqualToAnchor:-v104 constant:?];
          [v50 addObject:?];
          MEMORY[0x277D82BD8](v47);
          MEMORY[0x277D82BD8](trailingAnchor10);
          MEMORY[0x277D82BD8](trailingAnchor9);
        }
      }

      objc_storeStrong(&selfCopy->_symbolView, v106);
      LODWORD(v23) = 1148846080;
      [(UIImageView *)selfCopy->_symbolView setContentCompressionResistancePriority:1 forAxis:v23];
    }

    [MEMORY[0x277CCAAD0] activateConstraints:array];
    [(CPSSecondaryManeuverView *)selfCopy _updateLabelTextColors];
    objc_storeStrong(&v106, 0);
    objc_storeStrong(&symbolImage, 0);
    objc_storeStrong(v116, 0);
    objc_storeStrong(v115, 0);
    objc_storeStrong(&v114, 0);
    objc_storeStrong(&v113, 0);
    _Block_object_dispose(&v119, 8);
    objc_storeStrong(&v125, 0);
    objc_storeStrong(&array, 0);
  }

  v26 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
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

- (void)generateLayoutConfigurationsForSizeIfNecessary:(CGSize)necessary force:(BOOL)force
{
  v27[1] = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  selfCopy = self;
  v24 = a2;
  forceCopy = force;
  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  v18 = [currentTraitCollection userInterfaceIdiom] == 3;
  MEMORY[0x277D82BD8](currentTraitCollection);
  v22 = v18;
  IsZero = BSFloatIsZero();
  [(CPSSecondaryManeuverView *)selfCopy generatedWidth];
  v20 = BSFloatEqualToFloat();
  if (v18 && (IsZero & 1) == 0 && (v20 & 1) == 0 || forceCopy)
  {
    [(CPSSecondaryManeuverView *)selfCopy setGeneratedWidth:necessaryCopy.width];
    v10 = [CPSSecondaryManeuverView alloc];
    maneuver = [(CPSSecondaryManeuverView *)selfCopy maneuver];
    v19 = [(CPSSecondaryManeuverView *)v10 initWithManeuver:?];
    MEMORY[0x277D82BD8](maneuver);
    v12 = v19;
    CGRectMake_5();
    [(CPSSecondaryManeuverView *)v12 setFrame:v4, v5, v6, v7];
    v13 = MEMORY[0x277CCAAD0];
    widthAnchor = [(CPSSecondaryManeuverView *)v19 widthAnchor];
    v15 = [widthAnchor constraintEqualToConstant:necessaryCopy.width];
    v27[0] = v15;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    [v13 activateConstraints:?];
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    *&v8 = MEMORY[0x277D82BD8](widthAnchor).n128_u64[0];
    [(CPSSecondaryManeuverView *)v19 layoutIfNeeded];
    [(CPSSecondaryManeuverView *)v19 bounds];
    [(CPSSecondaryManeuverView *)selfCopy setGeneratedHeight:v9];
    objc_storeStrong(&v19, 0);
  }
}

- (void)_updateLabelTextColors
{
  instructionLabel = [(CPSSecondaryManeuverView *)self instructionLabel];
  v2 = [MEMORY[0x277D75348] colorWithDynamicProvider:&__block_literal_global_17];
  [(CPSAbridgableLabel *)instructionLabel setTextColor:?];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](instructionLabel);
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

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v13.receiver = selfCopy;
  v13.super_class = CPSSecondaryManeuverView;
  [(CPSSecondaryManeuverView *)&v13 traitCollectionDidChange:location[0]];
  symbolView = [(CPSSecondaryManeuverView *)selfCopy symbolView];
  maneuver = [(CPSSecondaryManeuverView *)selfCopy maneuver];
  symbolImage = [(CPManeuver *)maneuver symbolImage];
  [(UIImageView *)symbolView setImage:?];
  MEMORY[0x277D82BD8](symbolImage);
  MEMORY[0x277D82BD8](maneuver);
  *&v3 = MEMORY[0x277D82BD8](symbolView).n128_u64[0];
  symbolView2 = [(CPSSecondaryManeuverView *)selfCopy symbolView];
  v10 = [(CPSSecondaryManeuverView *)selfCopy accessibilityName:@"Symbol"];
  [(UIImageView *)symbolView2 setAccessibilityLabel:?];
  MEMORY[0x277D82BD8](v10);
  *&v4 = MEMORY[0x277D82BD8](symbolView2).n128_u64[0];
  v12 = selfCopy;
  [(CPSSecondaryManeuverView *)selfCopy bounds];
  [(CPSSecondaryManeuverView *)v12 generateLayoutConfigurationsForSizeIfNecessary:1 force:v5, v6];
  objc_storeStrong(location, 0);
}

- (void)setCurrentTravelEstimates:(id)estimates
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, estimates);
  objc_storeStrong(&selfCopy->_currentTravelEstimates, location[0]);
  objc_storeStrong(location, 0);
}

@end