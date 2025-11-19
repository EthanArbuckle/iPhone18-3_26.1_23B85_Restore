@interface CPSPrimaryManeuverView
+ (id)instructionsForManeuver:(id)a3;
+ (id)junctionImageForManeuver:(id)a3;
+ (id)symbolImageForManeuver:(id)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CPSPrimaryManeuverView)initWithManeuver:(id)a3;
- (id)_formattedDistance;
- (id)_fullLayoutConstraints;
- (id)_fullLayoutNoJunctionViewConstraints;
- (id)_fullLayoutNoJunctionViewWideImageConstraints;
- (id)_fullLayoutWideImageConstraints;
- (id)_fullSubtitleNextToImageConstraints;
- (id)_init;
- (id)_junctionViewNoInstructionWideImageConstraints;
- (id)_junctionViewNoSubtitleConstraints;
- (id)_minimalLayoutConstraints;
- (id)_minimalLayoutWideImageConstraints;
- (id)junctionBackgroundColor;
- (id)layoutConfigurationForSize:(CGSize)a3;
- (id)shortestInstructionlayoutConfigurationForSize:(CGSize)a3;
- (id)shortestJunctionViewlayoutConfigurationForSize:(CGSize)a3;
- (int64_t)_compareInstruction:(id)a3 toInstruction:(id)a4;
- (void)_activateFullLayoutConstraints;
- (void)_activateFullLayoutWideImageConstraints;
- (void)_activateFullNoJunctionViewLayoutConstraints;
- (void)_activateFullNoJunctionViewWideImageLayoutConstraints;
- (void)_activateFullSubtitleNextToImageConstraints;
- (void)_activateJunctionViewNoInstructionConstraints;
- (void)_activateJunctionViewNoInstructionWideImageConstraints;
- (void)_activateMinimalLayoutConstraints;
- (void)_activateMinimalWideImageLayoutConstraints;
- (void)_generateLayoutConfigurationsForSizeIfNecessary:(CGSize)a3 force:(BOOL)a4;
- (void)_switchToLayoutConfiguration:(id)a3;
- (void)_updateJunctionBackgroundColor;
- (void)_updateLabelTextColors;
- (void)layoutSubviews;
- (void)setActiveLayoutConfiguration:(id)a3;
- (void)setActiveLayoutConstraints:(id)a3;
- (void)setCurrentTravelEstimates:(id)a3;
- (void)setUsesCustomBackgroundColor:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CPSPrimaryManeuverView

- (CPSPrimaryManeuverView)initWithManeuver:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v9 = [(CPSPrimaryManeuverView *)v3 _init];
  objc_storeStrong(&v9, v9);
  if (v9)
  {
    objc_storeStrong(&v9->_maneuver, location[0]);
    v4 = [location[0] initialTravelEstimates];
    currentTravelEstimates = v9->_currentTravelEstimates;
    v9->_currentTravelEstimates = v4;
    MEMORY[0x277D82BD8](currentTravelEstimates);
  }

  v7 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v7;
}

- (id)_init
{
  v49[1] = *MEMORY[0x277D85DE8];
  v46 = a2;
  v47 = 0;
  v45.receiver = self;
  v45.super_class = CPSPrimaryManeuverView;
  v47 = [(CPSPrimaryManeuverView *)&v45 init];
  objc_storeStrong(&v47, v47);
  if (v47)
  {
    [(CPSPrimaryManeuverView *)v47 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPSPrimaryManeuverView *)v47 setClipsToBounds:1];
    v2 = objc_alloc_init(MEMORY[0x277D756D0]);
    centeringLayoutGuide = v47->_centeringLayoutGuide;
    v47->_centeringLayoutGuide = v2;
    *&v4 = MEMORY[0x277D82BD8](centeringLayoutGuide).n128_u64[0];
    [(CPSPrimaryManeuverView *)v47 addLayoutGuide:v47->_centeringLayoutGuide, v4];
    v5 = objc_alloc_init(MEMORY[0x277D756D0]);
    labelCenteringLayoutGuide = v47->_labelCenteringLayoutGuide;
    v47->_labelCenteringLayoutGuide = v5;
    *&v7 = MEMORY[0x277D82BD8](labelCenteringLayoutGuide).n128_u64[0];
    [(CPSPrimaryManeuverView *)v47 addLayoutGuide:v47->_labelCenteringLayoutGuide, v7];
    v8 = objc_alloc_init(MEMORY[0x277D756D0]);
    yCenteringGuide = v47->_yCenteringGuide;
    v47->_yCenteringGuide = v8;
    *&v10 = MEMORY[0x277D82BD8](yCenteringGuide).n128_u64[0];
    [(CPSPrimaryManeuverView *)v47 addLayoutGuide:v47->_yCenteringGuide, v10];
    v44 = objc_alloc_init(CPSAbridgableLabel);
    [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v44 setNumberOfLines:?];
    v34 = [(CPSPrimaryManeuverView *)v47 _titleFont];
    [v44 setFont:?];
    MEMORY[0x277D82BD8](v34);
    [v44 setContentCompressionResistancePriority:? forAxis:?];
    LODWORD(v11) = 1148846080;
    [v44 setContentCompressionResistancePriority:0 forAxis:v11];
    [(CPSPrimaryManeuverView *)v47 addSubview:v44];
    objc_storeStrong(&v47->_titleLabel, v44);
    v43 = objc_alloc_init(CPSAbridgableLabel);
    [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v43 setNumberOfLines:0];
    v35 = [(CPSPrimaryManeuverView *)v47 _subtitleFont];
    [v43 setFont:?];
    v12 = MEMORY[0x277D82BD8](v35);
    v12.n128_u32[0] = 1148846080;
    [v43 setContentCompressionResistancePriority:1 forAxis:v12.n128_f64[0]];
    LODWORD(v13) = 1148846080;
    [v43 setContentCompressionResistancePriority:0 forAxis:v13];
    [(CPSPrimaryManeuverView *)v47 addSubview:v43];
    objc_storeStrong(&v47->_subtitleLabel, v43);
    v42 = objc_alloc_init(MEMORY[0x277D755E8]);
    [v42 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v42 setContentMode:1];
    LODWORD(v14) = 1148846080;
    [v42 setContentCompressionResistancePriority:1 forAxis:v14];
    LODWORD(v15) = 1148846080;
    [v42 setContentCompressionResistancePriority:0 forAxis:v15];
    [(CPSPrimaryManeuverView *)v47 addSubview:v42];
    objc_storeStrong(&v47->_symbolImageView, v42);
    v41 = objc_alloc_init(CPSAspectFitImageView);
    [v41 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPSPrimaryManeuverView *)v47 addSubview:v41];
    objc_storeStrong(&v47->_junctionImageView, v41);
    v36 = MEMORY[0x277CCAAD0];
    v39 = [v41 heightAnchor];
    v38 = [v39 constraintLessThanOrEqualToConstant:154.0];
    v49[0] = v38;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];
    [v36 activateConstraints:?];
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v38);
    *&v16 = MEMORY[0x277D82BD8](v39).n128_u64[0];
    if ([(CPSPrimaryManeuverView *)v47 hasJunctionImageBackground])
    {
      v40 = objc_alloc_init(MEMORY[0x277D75D18]);
      [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(CPSPrimaryManeuverView *)v47 insertSubview:v40 belowSubview:v41];
      objc_storeStrong(&v47->_junctionImageBackgroundView, v40);
      v20 = MEMORY[0x277CCAAD0];
      v33 = [v40 topAnchor];
      v32 = [v41 topAnchor];
      v31 = [v33 constraintEqualToAnchor:?];
      v48[0] = v31;
      v30 = [v40 bottomAnchor];
      v29 = [v41 bottomAnchor];
      v28 = [v30 constraintEqualToAnchor:?];
      v48[1] = v28;
      v27 = [v40 leadingAnchor];
      v26 = [(CPSPrimaryManeuverView *)v47 leadingAnchor];
      v25 = [v27 constraintEqualToAnchor:?];
      v48[2] = v25;
      v24 = [v40 trailingAnchor];
      v23 = [(CPSPrimaryManeuverView *)v47 trailingAnchor];
      v22 = [v24 constraintEqualToAnchor:?];
      v48[3] = v22;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:4];
      [v20 activateConstraints:?];
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
      *&v17 = MEMORY[0x277D82BD8](v33).n128_u64[0];
      [(CPSPrimaryManeuverView *)v47 _updateJunctionBackgroundColor];
      objc_storeStrong(&v40, 0);
    }

    [(CPSPrimaryManeuverView *)v47 _updateLabelTextColors];
    objc_storeStrong(&v41, 0);
    objc_storeStrong(&v42, 0);
    objc_storeStrong(&v43, 0);
    objc_storeStrong(&v44, 0);
  }

  v19 = MEMORY[0x277D82BE0](v47);
  objc_storeStrong(&v47, 0);
  return v19;
}

- (id)layoutConfigurationForSize:(CGSize)a3
{
  v18 = a3;
  v17 = self;
  v16[2] = a2;
  [(CPSPrimaryManeuverView *)self _generateLayoutConfigurationsForSizeIfNecessary:0 force:a3.width, a3.height];
  v16[1] = *&v18.height;
  v10 = 0;
  v11 = &v10;
  v12 = 838860800;
  v13 = 48;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16[0] = 0;
  v9 = [(CPSPrimaryManeuverView *)v17 maneuver];
  v8 = [(CPManeuver *)v9 junctionImage];
  MEMORY[0x277D82BD8](v8);
  v3 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  if (v8)
  {
    v7 = [(CPSPrimaryManeuverView *)v17 layoutConfigurations];
    [(NSArray *)v7 enumerateObjectsUsingBlock:?];
    v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  }

  if (!v11[5])
  {
    v6 = [(CPSPrimaryManeuverView *)v17 layoutConfigurations];
    [(NSArray *)v6 enumerateObjectsUsingBlock:?];
    MEMORY[0x277D82BD8](v6);
  }

  v5 = MEMORY[0x277D82BE0](v11[5]);
  _Block_object_dispose(&v10, 8);
  objc_storeStrong(v16, 0);

  return v5;
}

void __53__CPSPrimaryManeuverView_layoutConfigurationForSize___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = [location[0] junctionImage];
  *&v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if (v8)
  {
    [location[0] height];
    if (v5 <= *(a1 + 40))
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), location[0]);
      *a4 = 1;
    }
  }

  objc_storeStrong(location, 0);
}

void __53__CPSPrimaryManeuverView_layoutConfigurationForSize___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [location[0] height];
  if (v4 <= *(a1 + 40))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), location[0]);
    *a4 = 1;
  }

  objc_storeStrong(location, 0);
}

- (id)shortestInstructionlayoutConfigurationForSize:(CGSize)a3
{
  v14 = a3;
  v13 = self;
  v12[2] = a2;
  [(CPSPrimaryManeuverView *)self _generateLayoutConfigurationsForSizeIfNecessary:0 force:a3.width, a3.height];
  v12[1] = *&v14.height;
  v6 = 0;
  v7 = &v6;
  v8 = 838860800;
  v9 = 48;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12[0] = 0;
  v5 = [(CPSPrimaryManeuverView *)v13 layoutConfigurations];
  [(NSArray *)v5 enumerateObjectsUsingBlock:?];
  MEMORY[0x277D82BD8](v5);
  v4 = MEMORY[0x277D82BE0](v7[5]);
  _Block_object_dispose(&v6, 8);
  objc_storeStrong(v12, 0);

  return v4;
}

void __72__CPSPrimaryManeuverView_shortestInstructionlayoutConfigurationForSize___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = [location[0] instruction];
  v16 = 0;
  v11 = 1;
  if (!v10)
  {
    v17 = [location[0] attributedInstruction];
    v16 = 1;
    v11 = v17 != 0;
  }

  if (v16)
  {
    MEMORY[0x277D82BD8](v17);
  }

  *&v2 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  if (v11)
  {
    [location[0] height];
    if (v3 <= *(a1 + 40))
    {
      if (!*(*(*(a1 + 32) + 8) + 40))
      {
        goto LABEL_17;
      }

      [location[0] height];
      v7 = v4;
      [*(*(*(a1 + 32) + 8) + 40) height];
      v14 = 0;
      v12 = 0;
      v8 = 0;
      if (v7 < v5)
      {
        v15 = [location[0] instruction];
        v14 = 1;
        v6 = 1;
        if (!v15)
        {
          v13 = [location[0] attributedInstruction];
          v12 = 1;
          v6 = v13 != 0;
        }

        v8 = v6;
      }

      if (v12)
      {
        MEMORY[0x277D82BD8](v13);
      }

      if (v14)
      {
        MEMORY[0x277D82BD8](v15);
      }

      if (v8)
      {
LABEL_17:
        objc_storeStrong((*(*(a1 + 32) + 8) + 40), location[0]);
      }
    }
  }

  objc_storeStrong(location, 0);
}

- (id)shortestJunctionViewlayoutConfigurationForSize:(CGSize)a3
{
  v14 = a3;
  v13 = self;
  v12[2] = a2;
  [(CPSPrimaryManeuverView *)self _generateLayoutConfigurationsForSizeIfNecessary:1 force:a3.width, a3.height];
  v12[1] = *&v14.height;
  v6 = 0;
  v7 = &v6;
  v8 = 838860800;
  v9 = 48;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12[0] = 0;
  v5 = [(CPSPrimaryManeuverView *)v13 layoutConfigurations];
  [(NSArray *)v5 enumerateObjectsUsingBlock:?];
  MEMORY[0x277D82BD8](v5);
  v4 = MEMORY[0x277D82BE0](v7[5]);
  _Block_object_dispose(&v6, 8);
  objc_storeStrong(v12, 0);

  return v4;
}

void __73__CPSPrimaryManeuverView_shortestJunctionViewlayoutConfigurationForSize___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = [location[0] junctionImage];
  *&v2 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if (v8)
  {
    [location[0] height];
    if (v3 <= *(a1 + 40))
    {
      if (!*(*(*(a1 + 32) + 8) + 40) || ([location[0] height], v6 = v4, objc_msgSend(*(*(*(a1 + 32) + 8) + 40), "height"), v6 < v5))
      {
        objc_storeStrong((*(*(a1 + 32) + 8) + 40), location[0]);
      }
    }
  }

  objc_storeStrong(location, 0);
}

- (void)setCurrentTravelEstimates:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v6->_currentTravelEstimates, location[0]);
  v4 = [(CPSPrimaryManeuverView *)v6 _formattedDistance];
  v3 = [(CPSPrimaryManeuverView *)v6 titleLabel];
  [(CPUIAbridgableLabel *)v3 setText:v4];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (CGSize)intrinsicContentSize
{
  v34 = self;
  v33 = a2;
  v23 = [(CPSPrimaryManeuverView *)self activeLayoutConfiguration];
  *&v2 = MEMORY[0x277D82BD8](v23).n128_u64[0];
  if (v23)
  {
    [(CPSPrimaryManeuverView *)v34 bounds];
    v29 = v3;
    v30 = v4;
    v31 = v5;
    v32 = v6;
    v22 = [(CPSPrimaryManeuverView *)v34 activeLayoutConfiguration];
    [(CPSPrimaryManeuverLayoutConfiguration *)v22 height];
    CGSizeMake_6();
    v35 = v7;
    v36 = v8;
    MEMORY[0x277D82BD8](v22);
  }

  else
  {
    v21 = [(CPSPrimaryManeuverView *)v34 layoutConfigurationForIntrinsicSizing];
    *&v9 = MEMORY[0x277D82BD8](v21).n128_u64[0];
    if (v21)
    {
      [(CPSPrimaryManeuverView *)v34 bounds];
      v25 = v10;
      v26 = v11;
      v27 = v12;
      v28 = v13;
      v20 = [(CPSPrimaryManeuverView *)v34 layoutConfigurationForIntrinsicSizing];
      [(CPSPrimaryManeuverLayoutConfiguration *)v20 height];
      CGSizeMake_6();
      v35 = v14;
      v36 = v15;
      MEMORY[0x277D82BD8](v20);
    }

    else
    {
      v24.receiver = v34;
      v24.super_class = CPSPrimaryManeuverView;
      [(CPSPrimaryManeuverView *)&v24 intrinsicContentSize];
      v35 = v16;
      v36 = v17;
    }
  }

  v18 = v35;
  v19 = v36;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)setActiveLayoutConfiguration:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_activeLayoutConfiguration != location[0])
  {
    objc_storeStrong(&v4->_activeLayoutConfiguration, location[0]);
    [(CPSPrimaryManeuverView *)v4 invalidateIntrinsicContentSize];
  }

  objc_storeStrong(location, 0);
}

- (void)layoutSubviews
{
  v10 = self;
  v9 = a2;
  v8.receiver = self;
  v8.super_class = CPSPrimaryManeuverView;
  [(CPSPrimaryManeuverView *)&v8 layoutSubviews];
  if (![(CPSPrimaryManeuverView *)v10 calculationViewIsSizing])
  {
    v6 = v10;
    [(CPSPrimaryManeuverView *)v10 bounds];
    v7 = [(CPSPrimaryManeuverView *)v6 layoutConfigurationForSize:v2, v3];
    if (!v7)
    {
      v5 = [(CPSPrimaryManeuverView *)v10 layoutConfigurations];
      v7 = [(NSArray *)v5 lastObject];
      MEMORY[0x277D82BD8](0);
      MEMORY[0x277D82BD8](v5);
    }

    [(CPSPrimaryManeuverView *)v10 _switchToLayoutConfiguration:v7, &v7];
    objc_storeStrong(location, 0);
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v13 = a3;
  v12 = self;
  v11 = a2;
  v14 = 0.0;
  v15 = 0.0;
  v10.receiver = self;
  v10.super_class = CPSPrimaryManeuverView;
  [(CPSPrimaryManeuverView *)&v10 sizeThatFits:a3.width, a3.height];
  v14 = v3;
  v15 = v4;
  location = [(CPSPrimaryManeuverView *)v12 layoutConfigurationForSize:v13.width, v13.height];
  if (!location)
  {
    v8 = [(CPSPrimaryManeuverView *)v12 layoutConfigurations];
    location = [(NSArray *)v8 lastObject];
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](v8);
  }

  if (location)
  {
    [location height];
    v15 = v5;
  }

  else
  {
    v15 = 0.0;
  }

  objc_storeStrong(&location, 0);
  v6 = v14;
  v7 = v15;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6.receiver = v8;
  v6.super_class = CPSPrimaryManeuverView;
  [(CPSPrimaryManeuverView *)&v6 traitCollectionDidChange:location[0]];
  v5 = v8;
  [(CPSPrimaryManeuverView *)v8 bounds];
  [(CPSPrimaryManeuverView *)v5 _generateLayoutConfigurationsForSizeIfNecessary:1 force:v3, v4];
  [(CPSPrimaryManeuverView *)v8 setNeedsLayout];
  objc_storeStrong(location, 0);
}

- (void)setActiveLayoutConstraints:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_activeLayoutConstraints)
  {
    [MEMORY[0x277CCAAD0] deactivateConstraints:v4->_activeLayoutConstraints];
  }

  objc_storeStrong(&v4->_activeLayoutConstraints, location[0]);
  [MEMORY[0x277CCAAD0] activateConstraints:v4->_activeLayoutConstraints];
  objc_storeStrong(location, 0);
}

+ (id)instructionsForManeuver:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [location[0] attributedInstructionVariants];
  v9 = 0;
  v7 = 0;
  if ([v6 count])
  {
    v10 = [location[0] attributedInstructionVariants];
    v9 = 1;
    v3 = MEMORY[0x277D82BE0](v10);
  }

  else
  {
    v8 = [location[0] instructionVariants];
    v7 = 1;
    v3 = MEMORY[0x277D82BE0](v8);
  }

  v12 = v3;
  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](v10);
  }

  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);
  v4 = v12;

  return v4;
}

+ (id)symbolImageForManeuver:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [location[0] symbolImage];
  objc_storeStrong(location, 0);

  return v4;
}

+ (id)junctionImageForManeuver:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [location[0] junctionImage];
  objc_storeStrong(location, 0);

  return v4;
}

- (void)_generateLayoutConfigurationsForSizeIfNecessary:(CGSize)a3 force:(BOOL)a4
{
  v179[3] = *MEMORY[0x277D85DE8];
  v173 = a3;
  v172 = self;
  v171 = a2;
  v170 = a4;
  v104 = [MEMORY[0x277D75C80] currentTraitCollection];
  v105 = [v104 userInterfaceIdiom] == 3;
  MEMORY[0x277D82BD8](v104);
  v169 = v105;
  IsZero = BSFloatIsZero();
  [(CPSPrimaryManeuverView *)v172 generatedWidth];
  v167 = BSFloatEqualToFloat();
  v106 = [(CPSPrimaryManeuverView *)v172 window];
  v107 = 1;
  if (v106)
  {
    if (!v169 || (IsZero & 1) != 0 || (v103 = 0, (v167 & 1) != 0))
    {
      v103 = !v170;
    }

    v107 = v103;
  }

  MEMORY[0x277D82BD8](v106);
  if ((v107 & 1) == 0)
  {
    v87 = objc_alloc(objc_opt_class());
    v88 = [(CPSPrimaryManeuverView *)v172 maneuver];
    v166 = [v87 initWithManeuver:?];
    [v166 setCalculationViewIsSizing:{1, MEMORY[0x277D82BD8](v88).n128_f64[0]}];
    v89 = [(CPSPrimaryManeuverView *)v172 window];
    [v89 addSubview:v166];
    MEMORY[0x277D82BD8](v89);
    [(CPSPrimaryManeuverView *)v172 setGeneratedWidth:v173.width];
    v90 = MEMORY[0x277CCAAD0];
    v101 = [v166 widthAnchor];
    v100 = [v101 constraintEqualToConstant:v173.width];
    v179[0] = v100;
    v99 = [v166 topAnchor];
    v98 = [(CPSPrimaryManeuverView *)v172 window];
    v97 = [v98 topAnchor];
    v96 = [v99 constraintEqualToAnchor:?];
    v179[1] = v96;
    v95 = [v166 trailingAnchor];
    v94 = [(CPSPrimaryManeuverView *)v172 window];
    v93 = [v94 leadingAnchor];
    v92 = [v95 constraintEqualToAnchor:?];
    v179[2] = v92;
    v91 = [MEMORY[0x277CBEA60] arrayWithObjects:v179 count:3];
    [v90 activateConstraints:?];
    MEMORY[0x277D82BD8](v91);
    MEMORY[0x277D82BD8](v92);
    MEMORY[0x277D82BD8](v93);
    MEMORY[0x277D82BD8](v94);
    MEMORY[0x277D82BD8](v95);
    MEMORY[0x277D82BD8](v96);
    MEMORY[0x277D82BD8](v97);
    MEMORY[0x277D82BD8](v98);
    MEMORY[0x277D82BD8](v99);
    MEMORY[0x277D82BD8](v100);
    v165 = [(CPSPrimaryManeuverView *)v172 maneuver];
    v164 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v163 = [objc_opt_class() instructionsForManeuver:v165];
    v162 = [objc_opt_class() symbolImageForManeuver:v165];
    v161 = [objc_opt_class() junctionImageForManeuver:v165];
    v102 = [v166 symbolImageView];
    [v102 setImage:v162];
    v160 = [(CPSPrimaryManeuverView *)v172 _formattedDistance];
    v159 = [v166 subtitleLabel];
    if (v160)
    {
      v86 = [v166 titleLabel];
      [v86 setText:v160];
      v4 = MEMORY[0x277D82BD8](v86).n128_u64[0];
    }

    else
    {
      v5 = [v166 titleLabel];
      v6 = v159;
      v159 = v5;
      v85 = [(CPSPrimaryManeuverView *)v172 _subtitleFont];
      [v159 setFont:?];
      v4 = MEMORY[0x277D82BD8](v85).n128_u64[0];
    }

    v84 = 0;
    if (v162)
    {
      [v162 size];
      v156 = v4;
      v157 = v7;
      v84 = *&v4 > 50.0;
    }

    v158 = v84;
    v155 = 0;
    if (v161)
    {
      v82 = [v166 junctionImageView];
      [v82 setImage:v161];
      v83 = [v166 heightAnchor];
      v154 = [v83 constraintEqualToConstant:v173.height - 2.0];
      if ([(CPSPrimaryManeuverView *)v172 fitJunctionViewToHeight])
      {
        v80 = MEMORY[0x277CCAAD0];
        v178 = v154;
        v81 = [MEMORY[0x277CBEA60] arrayWithObjects:&v178 count:1];
        [v80 activateConstraints:?];
        MEMORY[0x277D82BD8](v81);
      }

      if (v158)
      {
        v155 = 2;
        [v166 _activateFullLayoutWideImageConstraints];
      }

      else
      {
        v155 = 1;
        [v166 _activateFullLayoutConstraints];
      }

      memset(__b, 0, sizeof(__b));
      obj = MEMORY[0x277D82BE0](v163);
      v79 = [obj countByEnumeratingWithState:__b objects:v177 count:16];
      if (v79)
      {
        v75 = *__b[2];
        v76 = 0;
        v77 = v79;
        while (1)
        {
          v74 = v76;
          if (*__b[2] != v75)
          {
            objc_enumerationMutation(obj);
          }

          v153 = *(__b[1] + 8 * v76);
          location = objc_alloc_init(CPSPrimaryManeuverLayoutConfiguration);
          [location setJunctionImage:v161];
          [location setLayout:v155];
          [location setSymbolImage:v162];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [location setAttributedInstruction:v153];
            [v159 setAttributedText:v153];
          }

          else
          {
            [location setInstruction:v153];
            [v159 setText:v153];
          }

          [v166 setNeedsLayout];
          [v166 layoutIfNeeded];
          v73 = location;
          [v166 bounds];
          v147 = v8;
          v148 = v9;
          v149 = v10;
          v150 = v11;
          [v73 setHeight:v11];
          [v161 size];
          v143 = v12;
          v144 = v13;
          v145 = v13;
          *&v142 = 90.0;
          if (v13 >= 90.0)
          {
            v72 = *&v142;
          }

          else
          {
            v72 = v145;
          }

          v141[5] = *&v72;
          v146 = v72;
          v70 = [v166 junctionImageView];
          [v70 frame];
          v141[1] = v14;
          v141[2] = v15;
          v141[3] = v16;
          v141[4] = v17;
          v71 = *&v17;
          MEMORY[0x277D82BD8](v70);
          if (v71 >= v72)
          {
            [v164 addObject:{location, v71}];
          }

          objc_storeStrong(&location, 0);
          ++v76;
          if (v74 + 1 >= v77)
          {
            v76 = 0;
            v77 = [obj countByEnumeratingWithState:__b objects:v177 count:16];
            if (!v77)
            {
              break;
            }
          }
        }
      }

      *&v18 = MEMORY[0x277D82BD8](obj).n128_u64[0];
      if (v158)
      {
        v155 = 4;
        [v166 _activateJunctionViewNoInstructionWideImageConstraints];
      }

      else
      {
        v155 = 3;
        [v166 _activateJunctionViewNoInstructionConstraints];
      }

      v141[0] = objc_alloc_init(CPSPrimaryManeuverLayoutConfiguration);
      [v141[0] setLayout:v155];
      [v141[0] setSymbolImage:v162];
      [v141[0] setJunctionImage:v161];
      [v166 setNeedsLayout];
      [v166 layoutIfNeeded];
      [v166 bounds];
      v137 = v19;
      v138 = v20;
      v139 = v21;
      v140 = v22;
      [v141[0] setHeight:v22];
      [v161 size];
      v133 = v23;
      v134 = v24;
      v135 = v24;
      *&v132 = 90.0;
      if (v24 >= 90.0)
      {
        v69 = *&v132;
      }

      else
      {
        v69 = v135;
      }

      v131 = v69;
      v136 = v69;
      v67 = [v166 junctionImageView];
      [v67 frame];
      v127 = v25;
      v128 = v26;
      v129 = v27;
      v130 = v28;
      v68 = v28;
      MEMORY[0x277D82BD8](v67);
      v29 = v68;
      if (v68 >= v69)
      {
        [v164 addObject:{v141[0], v68}];
      }

      if ([(CPSPrimaryManeuverView *)v172 fitJunctionViewToHeight])
      {
        v65 = MEMORY[0x277CCAAD0];
        v176 = v154;
        v66 = [MEMORY[0x277CBEA60] arrayWithObjects:&v176 count:1];
        [v65 deactivateConstraints:?];
        MEMORY[0x277D82BD8](v66);
      }

      objc_storeStrong(v141, 0);
      objc_storeStrong(&v154, 0);
    }

    if (v158)
    {
      v155 = 6;
      [v166 _activateFullNoJunctionViewWideImageLayoutConstraints];
    }

    else
    {
      v155 = 5;
      [v166 _activateFullNoJunctionViewLayoutConstraints];
    }

    memset(v125, 0, sizeof(v125));
    v63 = MEMORY[0x277D82BE0](v163);
    v64 = [v63 countByEnumeratingWithState:v125 objects:v175 count:16];
    if (v64)
    {
      v60 = *v125[2];
      v61 = 0;
      v62 = v64;
      while (1)
      {
        v59 = v61;
        if (*v125[2] != v60)
        {
          objc_enumerationMutation(v63);
        }

        v126 = *(v125[1] + 8 * v61);
        v124 = objc_alloc_init(CPSPrimaryManeuverLayoutConfiguration);
        [(CPSPrimaryManeuverLayoutConfiguration *)v124 setLayout:v155];
        [(CPSPrimaryManeuverLayoutConfiguration *)v124 setSymbolImage:v162];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(CPSPrimaryManeuverLayoutConfiguration *)v124 setAttributedInstruction:v126];
          [v159 setAttributedText:v126];
        }

        else
        {
          [(CPSPrimaryManeuverLayoutConfiguration *)v124 setInstruction:v126];
          [v159 setText:v126];
        }

        [v166 setNeedsLayout];
        [v166 layoutIfNeeded];
        v58 = v124;
        [v166 bounds];
        v120 = v30;
        v121 = v31;
        v122 = v32;
        v123 = v33;
        [(CPSPrimaryManeuverLayoutConfiguration *)v58 setHeight:v33];
        [v164 addObject:v124];
        objc_storeStrong(&v124, 0);
        ++v61;
        if (v59 + 1 >= v62)
        {
          v61 = 0;
          v62 = [v63 countByEnumeratingWithState:v125 objects:v175 count:16];
          if (!v62)
          {
            break;
          }
        }
      }
    }

    v34 = MEMORY[0x277D82BD8](v63).n128_u64[0];
    if (!v158)
    {
      [v166 _activateFullSubtitleNextToImageConstraints];
      memset(v118, 0, sizeof(v118));
      v56 = MEMORY[0x277D82BE0](v163);
      v57 = [v56 countByEnumeratingWithState:v118 objects:v174 count:16];
      if (v57)
      {
        v53 = *v118[2];
        v54 = 0;
        v55 = v57;
        while (1)
        {
          v52 = v54;
          if (*v118[2] != v53)
          {
            objc_enumerationMutation(v56);
          }

          v119 = *(v118[1] + 8 * v54);
          v117 = objc_alloc_init(CPSPrimaryManeuverLayoutConfiguration);
          [(CPSPrimaryManeuverLayoutConfiguration *)v117 setLayout:7];
          [(CPSPrimaryManeuverLayoutConfiguration *)v117 setSymbolImage:v162];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(CPSPrimaryManeuverLayoutConfiguration *)v117 setAttributedInstruction:v119];
            [v159 setAttributedText:v119];
          }

          else
          {
            [(CPSPrimaryManeuverLayoutConfiguration *)v117 setInstruction:v119];
            [v159 setText:v119];
          }

          [v166 setNeedsLayout];
          [v166 layoutIfNeeded];
          v51 = v117;
          [v166 bounds];
          v116[1] = v35;
          v116[2] = v36;
          v116[3] = v37;
          v116[4] = v38;
          [(CPSPrimaryManeuverLayoutConfiguration *)v51 setHeight:*&v38];
          [v164 addObject:v117];
          objc_storeStrong(&v117, 0);
          ++v54;
          if (v52 + 1 >= v55)
          {
            v54 = 0;
            v55 = [v56 countByEnumeratingWithState:v118 objects:v174 count:16];
            if (!v55)
            {
              break;
            }
          }
        }
      }

      v34 = MEMORY[0x277D82BD8](v56).n128_u64[0];
    }

    if (v158)
    {
      v155 = 8;
      [v166 _activateMinimalWideImageLayoutConstraints];
      v116[0] = objc_alloc_init(CPSPrimaryManeuverLayoutConfiguration);
      [v116[0] setLayout:v155];
      [v116[0] setSymbolImage:v162];
      [v166 setNeedsLayout];
      [v166 layoutIfNeeded];
      v50 = v116[0];
      [v166 bounds];
      v115[1] = v39;
      v115[2] = v40;
      v115[3] = v41;
      v115[4] = v42;
      [v50 setHeight:*&v42];
      [v164 addObject:v116[0]];
      objc_storeStrong(v116, 0);
    }

    v155 = 9;
    [v166 _activateMinimalLayoutConstraints];
    v115[0] = objc_alloc_init(CPSPrimaryManeuverLayoutConfiguration);
    [v115[0] setLayout:v155];
    [v115[0] setSymbolImage:v162];
    [v166 setNeedsLayout];
    [v166 layoutIfNeeded];
    v47 = v115[0];
    [v166 bounds];
    v114[1] = v43;
    v114[2] = v44;
    v114[3] = v45;
    v114[4] = v46;
    [v47 setHeight:*&v46];
    [v164 addObject:v115[0]];
    [v166 removeFromSuperview];
    v48 = v164;
    v108 = MEMORY[0x277D85DD0];
    v109 = -1073741824;
    v110 = 0;
    v111 = __80__CPSPrimaryManeuverView__generateLayoutConfigurationsForSizeIfNecessary_force___block_invoke;
    v112 = &unk_278D927C0;
    v113 = MEMORY[0x277D82BE0](v172);
    v114[0] = [v48 sortedArrayUsingComparator:&v108];
    v49 = [v114[0] copy];
    [(CPSPrimaryManeuverView *)v172 setLayoutConfigurations:?];
    MEMORY[0x277D82BD8](v49);
    objc_storeStrong(v114, 0);
    objc_storeStrong(&v113, 0);
    objc_storeStrong(v115, 0);
    objc_storeStrong(&v159, 0);
    objc_storeStrong(&v160, 0);
    objc_storeStrong(&v161, 0);
    objc_storeStrong(&v162, 0);
    objc_storeStrong(&v163, 0);
    objc_storeStrong(&v164, 0);
    objc_storeStrong(&v165, 0);
    objc_storeStrong(&v166, 0);
  }
}

uint64_t __80__CPSPrimaryManeuverView__generateLayoutConfigurationsForSizeIfNecessary_force___block_invoke(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v26 = 0;
  objc_storeStrong(&v26, a3);
  v25[1] = a1;
  v18 = [location[0] attributedInstruction];
  v23 = 0;
  if (v18)
  {
    v3 = MEMORY[0x277D82BE0](v18);
  }

  else
  {
    v24 = [location[0] instruction];
    v23 = 1;
    v3 = MEMORY[0x277D82BE0](v24);
  }

  v25[0] = v3;
  if (v23)
  {
    MEMORY[0x277D82BD8](v24);
  }

  *&v4 = MEMORY[0x277D82BD8](v18).n128_u64[0];
  v15 = [v26 attributedInstruction];
  v20 = 0;
  if (v15)
  {
    v5 = MEMORY[0x277D82BE0](v15);
  }

  else
  {
    v21 = [v26 instruction];
    v20 = 1;
    v5 = MEMORY[0x277D82BE0](v21);
  }

  v22 = v5;
  if (v20)
  {
    MEMORY[0x277D82BD8](v21);
  }

  v19 = [a1[4] _compareInstruction:v25[0] toInstruction:{v22, MEMORY[0x277D82BD8](v15).n128_f64[0]}];
  if (v19)
  {
    v28 = v19;
  }

  else
  {
    v14 = [location[0] layout];
    if (v14 >= [v26 layout])
    {
      v13 = [location[0] layout];
      if (v13 > [v26 layout])
      {
        v28 = 1;
      }

      else
      {
        [location[0] height];
        v12 = v6;
        [v26 height];
        if (v12 <= v7)
        {
          [location[0] height];
          v11 = v8;
          [v26 height];
          v28 = v11 < v9;
        }

        else
        {
          v28 = -1;
        }
      }
    }

    else
    {
      v28 = -1;
    }
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  return v28;
}

- (int64_t)_compareInstruction:(id)a3 toInstruction:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  if (location[0] && v8)
  {
    v6 = [location[0] length];
    if (v6 > [v8 length])
    {
      v10 = -1;
    }

    else
    {
      v5 = [location[0] length];
      v10 = v5 < [v8 length];
    }
  }

  else if (location[0])
  {
    v10 = -1;
  }

  else
  {
    v10 = v8 != 0;
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v10;
}

- (void)_activateFullLayoutConstraints
{
  v3 = [(CPSPrimaryManeuverView *)self _fullLayoutConstraints];
  [(CPSPrimaryManeuverView *)self setActiveLayoutConstraints:?];
  MEMORY[0x277D82BD8](v3);
}

- (void)_activateFullLayoutWideImageConstraints
{
  v3 = [(CPSPrimaryManeuverView *)self _fullLayoutWideImageConstraints];
  [(CPSPrimaryManeuverView *)self setActiveLayoutConstraints:?];
  MEMORY[0x277D82BD8](v3);
}

- (void)_activateJunctionViewNoInstructionConstraints
{
  v3 = [(CPSPrimaryManeuverView *)self _junctionViewNoSubtitleConstraints];
  [(CPSPrimaryManeuverView *)self setActiveLayoutConstraints:?];
  MEMORY[0x277D82BD8](v3);
}

- (void)_activateJunctionViewNoInstructionWideImageConstraints
{
  v3 = [(CPSPrimaryManeuverView *)self _junctionViewNoInstructionWideImageConstraints];
  [(CPSPrimaryManeuverView *)self setActiveLayoutConstraints:?];
  MEMORY[0x277D82BD8](v3);
}

- (void)_activateFullNoJunctionViewLayoutConstraints
{
  v3 = [(CPSPrimaryManeuverView *)self _fullLayoutNoJunctionViewConstraints];
  [(CPSPrimaryManeuverView *)self setActiveLayoutConstraints:?];
  MEMORY[0x277D82BD8](v3);
}

- (void)_activateFullNoJunctionViewWideImageLayoutConstraints
{
  v3 = [(CPSPrimaryManeuverView *)self _fullLayoutNoJunctionViewWideImageConstraints];
  [(CPSPrimaryManeuverView *)self setActiveLayoutConstraints:?];
  MEMORY[0x277D82BD8](v3);
}

- (void)_activateMinimalLayoutConstraints
{
  v3 = [(CPSPrimaryManeuverView *)self _minimalLayoutConstraints];
  [(CPSPrimaryManeuverView *)self setActiveLayoutConstraints:?];
  MEMORY[0x277D82BD8](v3);
}

- (void)_activateMinimalWideImageLayoutConstraints
{
  v3 = [(CPSPrimaryManeuverView *)self _minimalLayoutWideImageConstraints];
  [(CPSPrimaryManeuverView *)self setActiveLayoutConstraints:?];
  MEMORY[0x277D82BD8](v3);
}

- (void)_activateFullSubtitleNextToImageConstraints
{
  v3 = [(CPSPrimaryManeuverView *)self _fullSubtitleNextToImageConstraints];
  [(CPSPrimaryManeuverView *)self setActiveLayoutConstraints:?];
  MEMORY[0x277D82BD8](v3);
}

- (id)_fullLayoutConstraints
{
  v187[21] = *MEMORY[0x277D85DE8];
  v181 = objc_opt_class();
  v182 = [(CPSPrimaryManeuverView *)self maneuver];
  v183 = [v181 symbolImageForManeuver:?];
  MEMORY[0x277D82BD8](v183);
  *&v2 = MEMORY[0x277D82BD8](v182).n128_u64[0];
  if (v183)
  {
    v180 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v179 = [(UILayoutGuide *)v180 centerYAnchor];
    v178 = [(CPSPrimaryManeuverView *)self yCenteringGuide];
    v177 = [(UILayoutGuide *)v178 centerYAnchor];
    v176 = [(NSLayoutYAxisAnchor *)v179 constraintEqualToAnchor:?];
    v187[0] = v176;
    v175 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v174 = [(UILayoutGuide *)v175 leadingAnchor];
    v173 = [(CPSPrimaryManeuverView *)self leadingAnchor];
    v172 = [(NSLayoutXAxisAnchor *)v174 constraintEqualToAnchor:13.0 constant:?];
    v187[1] = v172;
    v171 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v170 = [(UILayoutGuide *)v171 trailingAnchor];
    v169 = [(CPSPrimaryManeuverView *)self trailingAnchor];
    v168 = [(NSLayoutXAxisAnchor *)v170 constraintEqualToAnchor:-13.0 constant:?];
    v187[2] = v168;
    v167 = [(CPSPrimaryManeuverView *)self topAnchor];
    v166 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v165 = [(UILayoutGuide *)v166 topAnchor];
    v164 = [v167 constraintLessThanOrEqualToAnchor:?];
    v187[3] = v164;
    v163 = [(CPSPrimaryManeuverView *)self topAnchor];
    v162 = [(CPSPrimaryManeuverView *)self yCenteringGuide];
    v161 = [(UILayoutGuide *)v162 topAnchor];
    v160 = [v163 constraintEqualToAnchor:?];
    v187[4] = v160;
    v159 = [(CPSPrimaryManeuverView *)self yCenteringGuide];
    v158 = [(UILayoutGuide *)v159 bottomAnchor];
    v157 = [(CPSPrimaryManeuverView *)self junctionImageView];
    v156 = [(CPSAspectFitImageView *)v157 topAnchor];
    v155 = [(NSLayoutYAxisAnchor *)v158 constraintEqualToAnchor:?];
    v187[5] = v155;
    v154 = [(CPSPrimaryManeuverView *)self symbolImageView];
    v153 = [(UIImageView *)v154 topAnchor];
    v152 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v151 = [(UILayoutGuide *)v152 topAnchor];
    v150 = [v153 constraintEqualToAnchor:? constant:?];
    v187[6] = v150;
    v149 = [(CPSPrimaryManeuverView *)self symbolImageView];
    v148 = [(UIImageView *)v149 leadingAnchor];
    v147 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v146 = [(UILayoutGuide *)v147 leadingAnchor];
    v145 = [v148 constraintEqualToAnchor:0.0 constant:?];
    v187[7] = v145;
    v144 = [(CPSPrimaryManeuverView *)self symbolImageView];
    v143 = [(UIImageView *)v144 heightAnchor];
    [(CPSPrimaryManeuverView *)self symbolImageHeight];
    v142 = [v143 constraintLessThanOrEqualToConstant:?];
    v187[8] = v142;
    v141 = [(CPSPrimaryManeuverView *)self titleLabel];
    v140 = [(CPSAbridgableLabel *)v141 leadingAnchor];
    v139 = [(CPSPrimaryManeuverView *)self symbolImageView];
    v138 = [(UIImageView *)v139 trailingAnchor];
    v137 = [v140 constraintEqualToAnchor:8.0 constant:?];
    v187[9] = v137;
    v136 = [(CPSPrimaryManeuverView *)self titleLabel];
    v135 = [(CPSAbridgableLabel *)v136 centerYAnchor];
    v134 = [(CPSPrimaryManeuverView *)self symbolImageView];
    v133 = [(UIImageView *)v134 centerYAnchor];
    v132 = [v135 constraintEqualToAnchor:0.0 constant:?];
    v187[10] = v132;
    v131 = [(CPSPrimaryManeuverView *)self titleLabel];
    v130 = [(CPSAbridgableLabel *)v131 trailingAnchor];
    v129 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v128 = [(UILayoutGuide *)v129 trailingAnchor];
    v127 = [v130 constraintLessThanOrEqualToAnchor:0.0 constant:?];
    v187[11] = v127;
    v126 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    v125 = [(CPSAbridgableLabel *)v126 leadingAnchor];
    v124 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v123 = [(UILayoutGuide *)v124 leadingAnchor];
    v122 = [v125 constraintEqualToAnchor:0.0 constant:?];
    v187[12] = v122;
    v121 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    v120 = [(CPSAbridgableLabel *)v121 trailingAnchor];
    v119 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v118 = [(UILayoutGuide *)v119 trailingAnchor];
    v117 = [v120 constraintLessThanOrEqualToAnchor:-8.0 constant:?];
    v187[13] = v117;
    v116 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    v115 = [(CPSAbridgableLabel *)v116 topAnchor];
    v114 = [(CPSPrimaryManeuverView *)self symbolImageView];
    v113 = [(UIImageView *)v114 bottomAnchor];
    v112 = [v115 constraintEqualToAnchor:? constant:?];
    v187[14] = v112;
    v111 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    v110 = [(CPSAbridgableLabel *)v111 bottomAnchor];
    v109 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v108 = [(UILayoutGuide *)v109 bottomAnchor];
    v107 = [v110 constraintEqualToAnchor:0.0 constant:?];
    v187[15] = v107;
    v106 = [(CPSPrimaryManeuverView *)self junctionImageView];
    v105 = [(CPSAspectFitImageView *)v106 topAnchor];
    v104 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v103 = [(UILayoutGuide *)v104 bottomAnchor];
    v102 = [v105 constraintGreaterThanOrEqualToAnchor:4.0 constant:?];
    v187[16] = v102;
    v101 = [(CPSPrimaryManeuverView *)self junctionImageView];
    v100 = [(CPSAspectFitImageView *)v101 bottomAnchor];
    v99 = [(CPSPrimaryManeuverView *)self bottomAnchor];
    v98 = [v100 constraintEqualToAnchor:0.0 constant:?];
    v187[17] = v98;
    v97 = [(CPSPrimaryManeuverView *)self junctionImageView];
    v96 = [(CPSAspectFitImageView *)v97 centerXAnchor];
    v95 = [(CPSPrimaryManeuverView *)self centerXAnchor];
    v94 = [v96 constraintEqualToAnchor:?];
    v187[18] = v94;
    v93 = [(CPSPrimaryManeuverView *)self junctionImageView];
    v92 = [(CPSAspectFitImageView *)v93 leadingAnchor];
    v91 = [(CPSPrimaryManeuverView *)self leadingAnchor];
    v90 = [v92 constraintGreaterThanOrEqualToAnchor:?];
    v187[19] = v90;
    v89 = [(CPSPrimaryManeuverView *)self junctionImageView];
    v88 = [(CPSAspectFitImageView *)v89 trailingAnchor];
    v87 = [(CPSPrimaryManeuverView *)self trailingAnchor];
    v86 = [v88 constraintLessThanOrEqualToAnchor:?];
    v187[20] = v86;
    v185 = [MEMORY[0x277CBEA60] arrayWithObjects:v187 count:21];
    MEMORY[0x277D82BD8](v86);
    MEMORY[0x277D82BD8](v87);
    MEMORY[0x277D82BD8](v88);
    MEMORY[0x277D82BD8](v89);
    MEMORY[0x277D82BD8](v90);
    MEMORY[0x277D82BD8](v91);
    MEMORY[0x277D82BD8](v92);
    MEMORY[0x277D82BD8](v93);
    MEMORY[0x277D82BD8](v94);
    MEMORY[0x277D82BD8](v95);
    MEMORY[0x277D82BD8](v96);
    MEMORY[0x277D82BD8](v97);
    MEMORY[0x277D82BD8](v98);
    MEMORY[0x277D82BD8](v99);
    MEMORY[0x277D82BD8](v100);
    MEMORY[0x277D82BD8](v101);
    MEMORY[0x277D82BD8](v102);
    MEMORY[0x277D82BD8](v103);
    MEMORY[0x277D82BD8](v104);
    MEMORY[0x277D82BD8](v105);
    MEMORY[0x277D82BD8](v106);
    MEMORY[0x277D82BD8](v107);
    MEMORY[0x277D82BD8](v108);
    MEMORY[0x277D82BD8](v109);
    MEMORY[0x277D82BD8](v110);
    MEMORY[0x277D82BD8](v111);
    MEMORY[0x277D82BD8](v112);
    MEMORY[0x277D82BD8](v113);
    MEMORY[0x277D82BD8](v114);
    MEMORY[0x277D82BD8](v115);
    MEMORY[0x277D82BD8](v116);
    MEMORY[0x277D82BD8](v117);
    MEMORY[0x277D82BD8](v118);
    MEMORY[0x277D82BD8](v119);
    MEMORY[0x277D82BD8](v120);
    MEMORY[0x277D82BD8](v121);
    MEMORY[0x277D82BD8](v122);
    MEMORY[0x277D82BD8](v123);
    MEMORY[0x277D82BD8](v124);
    MEMORY[0x277D82BD8](v125);
    MEMORY[0x277D82BD8](v126);
    MEMORY[0x277D82BD8](v127);
    MEMORY[0x277D82BD8](v128);
    MEMORY[0x277D82BD8](v129);
    MEMORY[0x277D82BD8](v130);
    MEMORY[0x277D82BD8](v131);
    MEMORY[0x277D82BD8](v132);
    MEMORY[0x277D82BD8](v133);
    MEMORY[0x277D82BD8](v134);
    MEMORY[0x277D82BD8](v135);
    MEMORY[0x277D82BD8](v136);
    MEMORY[0x277D82BD8](v137);
    MEMORY[0x277D82BD8](v138);
    MEMORY[0x277D82BD8](v139);
    MEMORY[0x277D82BD8](v140);
    MEMORY[0x277D82BD8](v141);
    MEMORY[0x277D82BD8](v142);
    MEMORY[0x277D82BD8](v143);
    MEMORY[0x277D82BD8](v144);
    MEMORY[0x277D82BD8](v145);
    MEMORY[0x277D82BD8](v146);
    MEMORY[0x277D82BD8](v147);
    MEMORY[0x277D82BD8](v148);
    MEMORY[0x277D82BD8](v149);
    MEMORY[0x277D82BD8](v150);
    MEMORY[0x277D82BD8](v151);
    MEMORY[0x277D82BD8](v152);
    MEMORY[0x277D82BD8](v153);
    MEMORY[0x277D82BD8](v154);
    MEMORY[0x277D82BD8](v155);
    MEMORY[0x277D82BD8](v156);
    MEMORY[0x277D82BD8](v157);
    MEMORY[0x277D82BD8](v158);
    MEMORY[0x277D82BD8](v159);
    MEMORY[0x277D82BD8](v160);
    MEMORY[0x277D82BD8](v161);
    MEMORY[0x277D82BD8](v162);
    MEMORY[0x277D82BD8](v163);
    MEMORY[0x277D82BD8](v164);
    MEMORY[0x277D82BD8](v165);
    MEMORY[0x277D82BD8](v166);
    MEMORY[0x277D82BD8](v167);
    MEMORY[0x277D82BD8](v168);
    MEMORY[0x277D82BD8](v169);
    MEMORY[0x277D82BD8](v170);
    MEMORY[0x277D82BD8](v171);
    MEMORY[0x277D82BD8](v172);
    MEMORY[0x277D82BD8](v173);
    MEMORY[0x277D82BD8](v174);
    MEMORY[0x277D82BD8](v175);
    MEMORY[0x277D82BD8](v176);
    MEMORY[0x277D82BD8](v177);
    MEMORY[0x277D82BD8](v178);
    MEMORY[0x277D82BD8](v179);
    MEMORY[0x277D82BD8](v180);
  }

  else
  {
    v85 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v84 = [(UILayoutGuide *)v85 centerYAnchor];
    v83 = [(CPSPrimaryManeuverView *)self yCenteringGuide];
    v82 = [(UILayoutGuide *)v83 centerYAnchor];
    v81 = [(NSLayoutYAxisAnchor *)v84 constraintEqualToAnchor:?];
    v186[0] = v81;
    v80 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v79 = [(UILayoutGuide *)v80 leadingAnchor];
    v78 = [(CPSPrimaryManeuverView *)self leadingAnchor];
    v77 = [(NSLayoutXAxisAnchor *)v79 constraintEqualToAnchor:13.0 constant:?];
    v186[1] = v77;
    v76 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v75 = [(UILayoutGuide *)v76 trailingAnchor];
    v74 = [(CPSPrimaryManeuverView *)self trailingAnchor];
    v73 = [(NSLayoutXAxisAnchor *)v75 constraintEqualToAnchor:-13.0 constant:?];
    v186[2] = v73;
    v72 = [(CPSPrimaryManeuverView *)self topAnchor];
    v71 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v70 = [(UILayoutGuide *)v71 topAnchor];
    v69 = [v72 constraintLessThanOrEqualToAnchor:?];
    v186[3] = v69;
    v68 = [(CPSPrimaryManeuverView *)self topAnchor];
    v67 = [(CPSPrimaryManeuverView *)self yCenteringGuide];
    v66 = [(UILayoutGuide *)v67 topAnchor];
    v65 = [v68 constraintEqualToAnchor:?];
    v186[4] = v65;
    v64 = [(CPSPrimaryManeuverView *)self yCenteringGuide];
    v63 = [(UILayoutGuide *)v64 bottomAnchor];
    v62 = [(CPSPrimaryManeuverView *)self junctionImageView];
    v61 = [(CPSAspectFitImageView *)v62 topAnchor];
    v60 = [(NSLayoutYAxisAnchor *)v63 constraintEqualToAnchor:?];
    v186[5] = v60;
    v59 = [(CPSPrimaryManeuverView *)self titleLabel];
    v58 = [(CPSAbridgableLabel *)v59 topAnchor];
    v57 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v56 = [(UILayoutGuide *)v57 topAnchor];
    v55 = [v58 constraintEqualToAnchor:? constant:?];
    v186[6] = v55;
    v54 = [(CPSPrimaryManeuverView *)self titleLabel];
    v53 = [(CPSAbridgableLabel *)v54 leadingAnchor];
    v52 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v51 = [(UILayoutGuide *)v52 leadingAnchor];
    v50 = [v53 constraintEqualToAnchor:? constant:?];
    v186[7] = v50;
    v49 = [(CPSPrimaryManeuverView *)self titleLabel];
    v48 = [(CPSAbridgableLabel *)v49 trailingAnchor];
    v47 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v46 = [(UILayoutGuide *)v47 trailingAnchor];
    v45 = [v48 constraintLessThanOrEqualToAnchor:? constant:?];
    v186[8] = v45;
    v44 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    v43 = [(CPSAbridgableLabel *)v44 leadingAnchor];
    v42 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v41 = [(UILayoutGuide *)v42 leadingAnchor];
    v40 = [v43 constraintEqualToAnchor:8.0 constant:?];
    v186[9] = v40;
    v39 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    v38 = [(CPSAbridgableLabel *)v39 trailingAnchor];
    v37 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v36 = [(UILayoutGuide *)v37 trailingAnchor];
    v35 = [v38 constraintLessThanOrEqualToAnchor:-8.0 constant:?];
    v186[10] = v35;
    v34 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    v33 = [(CPSAbridgableLabel *)v34 topAnchor];
    v32 = [(CPSPrimaryManeuverView *)self titleLabel];
    v31 = [(CPSAbridgableLabel *)v32 bottomAnchor];
    v30 = [v33 constraintEqualToAnchor:? constant:?];
    v186[11] = v30;
    v29 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    v28 = [(CPSAbridgableLabel *)v29 bottomAnchor];
    v27 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v26 = [(UILayoutGuide *)v27 bottomAnchor];
    v25 = [v28 constraintEqualToAnchor:0.0 constant:?];
    v186[12] = v25;
    v24 = [(CPSPrimaryManeuverView *)self junctionImageView];
    v23 = [(CPSAspectFitImageView *)v24 topAnchor];
    v22 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v21 = [(UILayoutGuide *)v22 bottomAnchor];
    v20 = [v23 constraintGreaterThanOrEqualToAnchor:4.0 constant:?];
    v186[13] = v20;
    v19 = [(CPSPrimaryManeuverView *)self junctionImageView];
    v18 = [(CPSAspectFitImageView *)v19 bottomAnchor];
    v17 = [(CPSPrimaryManeuverView *)self bottomAnchor];
    v16 = [v18 constraintEqualToAnchor:0.0 constant:?];
    v186[14] = v16;
    v15 = [(CPSPrimaryManeuverView *)self junctionImageView];
    v14 = [(CPSAspectFitImageView *)v15 centerXAnchor];
    v13 = [(CPSPrimaryManeuverView *)self centerXAnchor];
    v12 = [v14 constraintEqualToAnchor:?];
    v186[15] = v12;
    v11 = [(CPSPrimaryManeuverView *)self junctionImageView];
    v10 = [(CPSAspectFitImageView *)v11 leadingAnchor];
    v9 = [(CPSPrimaryManeuverView *)self leadingAnchor];
    v8 = [v10 constraintGreaterThanOrEqualToAnchor:?];
    v186[16] = v8;
    v7 = [(CPSPrimaryManeuverView *)self junctionImageView];
    v6 = [(CPSAspectFitImageView *)v7 trailingAnchor];
    v5 = [(CPSPrimaryManeuverView *)self trailingAnchor];
    v4 = [v6 constraintLessThanOrEqualToAnchor:?];
    v186[17] = v4;
    v185 = [MEMORY[0x277CBEA60] arrayWithObjects:v186 count:18];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
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
    MEMORY[0x277D82BD8](v58);
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
    MEMORY[0x277D82BD8](v71);
    MEMORY[0x277D82BD8](v72);
    MEMORY[0x277D82BD8](v73);
    MEMORY[0x277D82BD8](v74);
    MEMORY[0x277D82BD8](v75);
    MEMORY[0x277D82BD8](v76);
    MEMORY[0x277D82BD8](v77);
    MEMORY[0x277D82BD8](v78);
    MEMORY[0x277D82BD8](v79);
    MEMORY[0x277D82BD8](v80);
    MEMORY[0x277D82BD8](v81);
    MEMORY[0x277D82BD8](v82);
    MEMORY[0x277D82BD8](v83);
    MEMORY[0x277D82BD8](v84);
    MEMORY[0x277D82BD8](v85);
  }

  return v185;
}

- (id)_fullLayoutWideImageConstraints
{
  v134[3] = *MEMORY[0x277D85DE8];
  v131 = self;
  v130[1] = a2;
  v130[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(CPSPrimaryManeuverView *)v131 centersManeuverInView])
  {
    v129 = [(CPSPrimaryManeuverView *)v131 topAnchor];
    v128 = [(CPSPrimaryManeuverView *)v131 centeringLayoutGuide];
    v127 = [(UILayoutGuide *)v128 topAnchor];
    v2 = _UISolariumEnabled();
    v3 = 10.0;
    if ((v2 & 1) == 0)
    {
      v3 = 4.0;
    }

    v126 = [v129 constraintLessThanOrEqualToAnchor:v127 constant:-v3];
    v134[0] = v126;
    v125 = [(CPSPrimaryManeuverView *)v131 centeringLayoutGuide];
    v124 = [(UILayoutGuide *)v125 centerYAnchor];
    v123 = [(CPSPrimaryManeuverView *)v131 centerYAnchor];
    v122 = [(NSLayoutYAxisAnchor *)v124 constraintEqualToAnchor:?];
    v134[1] = v122;
    v121 = [(CPSPrimaryManeuverView *)v131 junctionImageView];
    v120 = [(CPSAspectFitImageView *)v121 topAnchor];
    v119 = [(CPSPrimaryManeuverView *)v131 centeringLayoutGuide];
    v118 = [(UILayoutGuide *)v119 bottomAnchor];
    v117 = [v120 constraintGreaterThanOrEqualToAnchor:4.0 constant:?];
    v134[2] = v117;
    v116 = [MEMORY[0x277CBEA60] arrayWithObjects:v134 count:3];
    [v130[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v116);
    MEMORY[0x277D82BD8](v117);
    MEMORY[0x277D82BD8](v118);
    MEMORY[0x277D82BD8](v119);
    MEMORY[0x277D82BD8](v120);
    MEMORY[0x277D82BD8](v121);
    MEMORY[0x277D82BD8](v122);
    MEMORY[0x277D82BD8](v123);
    MEMORY[0x277D82BD8](v124);
    MEMORY[0x277D82BD8](v125);
    MEMORY[0x277D82BD8](v126);
    MEMORY[0x277D82BD8](v127);
    MEMORY[0x277D82BD8](v128);
    v4 = MEMORY[0x277D82BD8](v129).n128_u64[0];
  }

  else
  {
    v115 = [(CPSPrimaryManeuverView *)v131 topAnchor];
    v114 = [(CPSPrimaryManeuverView *)v131 centeringLayoutGuide];
    v113 = [(UILayoutGuide *)v114 topAnchor];
    v5 = _UISolariumEnabled();
    v6 = 10.0;
    if ((v5 & 1) == 0)
    {
      v6 = 4.0;
    }

    v112 = [v115 constraintEqualToAnchor:v113 constant:-v6];
    v133[0] = v112;
    v111 = [(CPSPrimaryManeuverView *)v131 junctionImageView];
    v110 = [(CPSAspectFitImageView *)v111 topAnchor];
    v109 = [(CPSPrimaryManeuverView *)v131 centeringLayoutGuide];
    v108 = [(UILayoutGuide *)v109 bottomAnchor];
    v107 = [v110 constraintEqualToAnchor:4.0 constant:?];
    v133[1] = v107;
    v106 = [MEMORY[0x277CBEA60] arrayWithObjects:v133 count:2];
    [v130[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v106);
    MEMORY[0x277D82BD8](v107);
    MEMORY[0x277D82BD8](v108);
    MEMORY[0x277D82BD8](v109);
    MEMORY[0x277D82BD8](v110);
    MEMORY[0x277D82BD8](v111);
    MEMORY[0x277D82BD8](v112);
    MEMORY[0x277D82BD8](v113);
    MEMORY[0x277D82BD8](v114);
    v4 = MEMORY[0x277D82BD8](v115).n128_u64[0];
  }

  v8 = v130[0];
  v104 = [(CPSPrimaryManeuverView *)v131 centeringLayoutGuide];
  v103 = [(UILayoutGuide *)v104 leadingAnchor];
  v102 = [(CPSPrimaryManeuverView *)v131 leadingAnchor];
  v101 = [(NSLayoutXAxisAnchor *)v103 constraintEqualToAnchor:13.0 constant:?];
  v132[0] = v101;
  v100 = [(CPSPrimaryManeuverView *)v131 centeringLayoutGuide];
  v99 = [(UILayoutGuide *)v100 trailingAnchor];
  v98 = [(CPSPrimaryManeuverView *)v131 trailingAnchor];
  v97 = [(NSLayoutXAxisAnchor *)v99 constraintEqualToAnchor:-13.0 constant:?];
  v132[1] = v97;
  v96 = [(CPSPrimaryManeuverView *)v131 topAnchor];
  v95 = [(CPSPrimaryManeuverView *)v131 yCenteringGuide];
  v94 = [(UILayoutGuide *)v95 topAnchor];
  v93 = [v96 constraintEqualToAnchor:?];
  v132[2] = v93;
  v92 = [(CPSPrimaryManeuverView *)v131 yCenteringGuide];
  v91 = [(UILayoutGuide *)v92 bottomAnchor];
  v90 = [(CPSPrimaryManeuverView *)v131 junctionImageView];
  v89 = [(CPSAspectFitImageView *)v90 topAnchor];
  v88 = [(NSLayoutYAxisAnchor *)v91 constraintEqualToAnchor:?];
  v132[3] = v88;
  v87 = [(CPSPrimaryManeuverView *)v131 symbolImageView];
  v86 = [(UIImageView *)v87 topAnchor];
  v85 = [(CPSPrimaryManeuverView *)v131 topAnchor];
  v84 = [v86 constraintEqualToAnchor:? constant:?];
  v132[4] = v84;
  v83 = [(CPSPrimaryManeuverView *)v131 symbolImageView];
  v82 = [(UIImageView *)v83 leadingAnchor];
  v81 = [(CPSPrimaryManeuverView *)v131 centeringLayoutGuide];
  v80 = [(UILayoutGuide *)v81 leadingAnchor];
  v79 = [v82 constraintGreaterThanOrEqualToAnchor:0.0 constant:?];
  v132[5] = v79;
  v78 = [(CPSPrimaryManeuverView *)v131 symbolImageView];
  v77 = [(UIImageView *)v78 trailingAnchor];
  v76 = [(CPSPrimaryManeuverView *)v131 centeringLayoutGuide];
  v75 = [(UILayoutGuide *)v76 trailingAnchor];
  v74 = [v77 constraintLessThanOrEqualToAnchor:0.0 constant:?];
  v132[6] = v74;
  v73 = [(CPSPrimaryManeuverView *)v131 symbolImageView];
  v72 = [(UIImageView *)v73 centerXAnchor];
  v71 = [(CPSPrimaryManeuverView *)v131 centeringLayoutGuide];
  v70 = [(UILayoutGuide *)v71 centerXAnchor];
  v69 = [v72 constraintEqualToAnchor:?];
  v132[7] = v69;
  v68 = [(CPSPrimaryManeuverView *)v131 symbolImageView];
  v67 = [(UIImageView *)v68 widthAnchor];
  v66 = [(CPSPrimaryManeuverView *)v131 centeringLayoutGuide];
  v65 = [(UILayoutGuide *)v66 widthAnchor];
  v64 = [v67 constraintLessThanOrEqualToAnchor:?];
  v132[8] = v64;
  v63 = [(CPSPrimaryManeuverView *)v131 symbolImageView];
  v62 = [(UIImageView *)v63 heightAnchor];
  [(CPSPrimaryManeuverView *)v131 symbolImageHeight];
  v61 = [v62 constraintLessThanOrEqualToConstant:?];
  v132[9] = v61;
  v60 = [(CPSPrimaryManeuverView *)v131 titleLabel];
  v59 = [(CPSAbridgableLabel *)v60 leadingAnchor];
  v58 = [(CPSPrimaryManeuverView *)v131 centeringLayoutGuide];
  v57 = [(UILayoutGuide *)v58 leadingAnchor];
  v56 = [v59 constraintEqualToAnchor:0.0 constant:?];
  v132[10] = v56;
  v55 = [(CPSPrimaryManeuverView *)v131 titleLabel];
  v54 = [(CPSAbridgableLabel *)v55 topAnchor];
  v53 = [(CPSPrimaryManeuverView *)v131 symbolImageView];
  v52 = [(UIImageView *)v53 bottomAnchor];
  v51 = [v54 constraintEqualToAnchor:0.0 constant:?];
  v132[11] = v51;
  v50 = [(CPSPrimaryManeuverView *)v131 titleLabel];
  v49 = [(CPSAbridgableLabel *)v50 trailingAnchor];
  v48 = [(CPSPrimaryManeuverView *)v131 centeringLayoutGuide];
  v47 = [(UILayoutGuide *)v48 trailingAnchor];
  v46 = [v49 constraintLessThanOrEqualToAnchor:0.0 constant:?];
  v132[12] = v46;
  v45 = [(CPSPrimaryManeuverView *)v131 subtitleLabel];
  v44 = [(CPSAbridgableLabel *)v45 leadingAnchor];
  v43 = [(CPSPrimaryManeuverView *)v131 centeringLayoutGuide];
  v42 = [(UILayoutGuide *)v43 leadingAnchor];
  v41 = [v44 constraintEqualToAnchor:0.0 constant:?];
  v132[13] = v41;
  v40 = [(CPSPrimaryManeuverView *)v131 subtitleLabel];
  v39 = [(CPSAbridgableLabel *)v40 trailingAnchor];
  v38 = [(CPSPrimaryManeuverView *)v131 centeringLayoutGuide];
  v37 = [(UILayoutGuide *)v38 trailingAnchor];
  v36 = [v39 constraintLessThanOrEqualToAnchor:-8.0 constant:?];
  v132[14] = v36;
  v35 = [(CPSPrimaryManeuverView *)v131 subtitleLabel];
  v34 = [(CPSAbridgableLabel *)v35 topAnchor];
  v33 = [(CPSPrimaryManeuverView *)v131 titleLabel];
  v32 = [(CPSAbridgableLabel *)v33 bottomAnchor];
  v31 = [v34 constraintEqualToAnchor:4.0 constant:?];
  v132[15] = v31;
  v30 = [(CPSPrimaryManeuverView *)v131 subtitleLabel];
  v29 = [(CPSAbridgableLabel *)v30 bottomAnchor];
  v28 = [(CPSPrimaryManeuverView *)v131 centeringLayoutGuide];
  v27 = [(UILayoutGuide *)v28 bottomAnchor];
  v26 = [v29 constraintEqualToAnchor:0.0 constant:?];
  v132[16] = v26;
  v25 = [(CPSPrimaryManeuverView *)v131 junctionImageView];
  v24 = [(CPSAspectFitImageView *)v25 bottomAnchor];
  v23 = [(CPSPrimaryManeuverView *)v131 bottomAnchor];
  v22 = [v24 constraintEqualToAnchor:0.0 constant:?];
  v132[17] = v22;
  v21 = [(CPSPrimaryManeuverView *)v131 junctionImageView];
  v20 = [(CPSAspectFitImageView *)v21 centerXAnchor];
  v19 = [(CPSPrimaryManeuverView *)v131 centerXAnchor];
  v18 = [v20 constraintEqualToAnchor:?];
  v132[18] = v18;
  v17 = [(CPSPrimaryManeuverView *)v131 junctionImageView];
  v16 = [(CPSAspectFitImageView *)v17 leadingAnchor];
  v15 = [(CPSPrimaryManeuverView *)v131 leadingAnchor];
  v14 = [v16 constraintGreaterThanOrEqualToAnchor:?];
  v132[19] = v14;
  v13 = [(CPSPrimaryManeuverView *)v131 junctionImageView];
  v12 = [(CPSAspectFitImageView *)v13 trailingAnchor];
  v11 = [(CPSPrimaryManeuverView *)v131 trailingAnchor];
  v10 = [v12 constraintLessThanOrEqualToAnchor:?];
  v132[20] = v10;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v132 count:21];
  [v8 addObjectsFromArray:?];
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
  MEMORY[0x277D82BD8](v58);
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
  MEMORY[0x277D82BD8](v71);
  MEMORY[0x277D82BD8](v72);
  MEMORY[0x277D82BD8](v73);
  MEMORY[0x277D82BD8](v74);
  MEMORY[0x277D82BD8](v75);
  MEMORY[0x277D82BD8](v76);
  MEMORY[0x277D82BD8](v77);
  MEMORY[0x277D82BD8](v78);
  MEMORY[0x277D82BD8](v79);
  MEMORY[0x277D82BD8](v80);
  MEMORY[0x277D82BD8](v81);
  MEMORY[0x277D82BD8](v82);
  MEMORY[0x277D82BD8](v83);
  MEMORY[0x277D82BD8](v84);
  MEMORY[0x277D82BD8](v85);
  MEMORY[0x277D82BD8](v86);
  MEMORY[0x277D82BD8](v87);
  MEMORY[0x277D82BD8](v88);
  MEMORY[0x277D82BD8](v89);
  MEMORY[0x277D82BD8](v90);
  MEMORY[0x277D82BD8](v91);
  MEMORY[0x277D82BD8](v92);
  MEMORY[0x277D82BD8](v93);
  MEMORY[0x277D82BD8](v94);
  MEMORY[0x277D82BD8](v95);
  MEMORY[0x277D82BD8](v96);
  MEMORY[0x277D82BD8](v97);
  MEMORY[0x277D82BD8](v98);
  MEMORY[0x277D82BD8](v99);
  MEMORY[0x277D82BD8](v100);
  MEMORY[0x277D82BD8](v101);
  MEMORY[0x277D82BD8](v102);
  MEMORY[0x277D82BD8](v103);
  MEMORY[0x277D82BD8](v104);
  v105 = MEMORY[0x277D82BE0](v130[0]);
  objc_storeStrong(v130, 0);

  return v105;
}

- (id)_junctionViewNoSubtitleConstraints
{
  v208[23] = *MEMORY[0x277D85DE8];
  v202 = objc_opt_class();
  v203 = [(CPSPrimaryManeuverView *)self maneuver];
  v204 = [v202 symbolImageForManeuver:?];
  MEMORY[0x277D82BD8](v204);
  *&v2 = MEMORY[0x277D82BD8](v203).n128_u64[0];
  if (v204)
  {
    v201 = [(CPSPrimaryManeuverView *)self yCenteringGuide];
    v200 = [(UILayoutGuide *)v201 topAnchor];
    v199 = [(CPSPrimaryManeuverView *)self topAnchor];
    v198 = [(NSLayoutYAxisAnchor *)v200 constraintEqualToAnchor:?];
    v208[0] = v198;
    v197 = [(CPSPrimaryManeuverView *)self yCenteringGuide];
    v196 = [(UILayoutGuide *)v197 bottomAnchor];
    v195 = [(CPSPrimaryManeuverView *)self junctionImageView];
    v194 = [(CPSAspectFitImageView *)v195 topAnchor];
    v193 = [(NSLayoutYAxisAnchor *)v196 constraintEqualToAnchor:?];
    v208[1] = v193;
    v192 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v191 = [(UILayoutGuide *)v192 topAnchor];
    v190 = [(CPSPrimaryManeuverView *)self topAnchor];
    v189 = [(NSLayoutYAxisAnchor *)v191 constraintGreaterThanOrEqualToAnchor:?];
    v208[2] = v189;
    v188 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v187 = [(UILayoutGuide *)v188 centerYAnchor];
    v186 = [(CPSPrimaryManeuverView *)self yCenteringGuide];
    v185 = [(UILayoutGuide *)v186 centerYAnchor];
    v184 = [(NSLayoutYAxisAnchor *)v187 constraintEqualToAnchor:?];
    v208[3] = v184;
    v183 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v182 = [(UILayoutGuide *)v183 bottomAnchor];
    v181 = [(CPSPrimaryManeuverView *)self junctionImageView];
    v180 = [(CPSAspectFitImageView *)v181 topAnchor];
    v179 = [(NSLayoutYAxisAnchor *)v182 constraintLessThanOrEqualToAnchor:10.0 constant:?];
    v208[4] = v179;
    v178 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v177 = [(UILayoutGuide *)v178 leadingAnchor];
    v176 = [(CPSPrimaryManeuverView *)self leadingAnchor];
    v175 = [(NSLayoutXAxisAnchor *)v177 constraintEqualToAnchor:13.0 constant:?];
    v208[5] = v175;
    v174 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v173 = [(UILayoutGuide *)v174 trailingAnchor];
    v172 = [(CPSPrimaryManeuverView *)self trailingAnchor];
    v171 = [(NSLayoutXAxisAnchor *)v173 constraintEqualToAnchor:-13.0 constant:?];
    v208[6] = v171;
    v170 = [(CPSPrimaryManeuverView *)self symbolImageView];
    v169 = [(UIImageView *)v170 topAnchor];
    v168 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v167 = [(UILayoutGuide *)v168 topAnchor];
    v166 = [v169 constraintEqualToAnchor:? constant:?];
    v208[7] = v166;
    v165 = [(CPSPrimaryManeuverView *)self symbolImageView];
    v164 = [(UIImageView *)v165 leadingAnchor];
    v163 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v162 = [(UILayoutGuide *)v163 leadingAnchor];
    v161 = [v164 constraintEqualToAnchor:0.0 constant:?];
    v208[8] = v161;
    v160 = [(CPSPrimaryManeuverView *)self symbolImageView];
    v159 = [(UIImageView *)v160 heightAnchor];
    [(CPSPrimaryManeuverView *)self symbolImageHeight];
    v158 = [v159 constraintLessThanOrEqualToConstant:?];
    v208[9] = v158;
    v157 = [(CPSPrimaryManeuverView *)self symbolImageView];
    v156 = [(UIImageView *)v157 bottomAnchor];
    v155 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v154 = [(UILayoutGuide *)v155 bottomAnchor];
    v153 = [v156 constraintEqualToAnchor:0.0 constant:?];
    v208[10] = v153;
    v152 = [(CPSPrimaryManeuverView *)self titleLabel];
    v151 = [(CPSAbridgableLabel *)v152 leadingAnchor];
    v150 = [(CPSPrimaryManeuverView *)self symbolImageView];
    v149 = [(UIImageView *)v150 trailingAnchor];
    v148 = [v151 constraintEqualToAnchor:8.0 constant:?];
    v208[11] = v148;
    v147 = [(CPSPrimaryManeuverView *)self titleLabel];
    v146 = [(CPSAbridgableLabel *)v147 centerYAnchor];
    v145 = [(CPSPrimaryManeuverView *)self symbolImageView];
    v144 = [(UIImageView *)v145 centerYAnchor];
    v143 = [v146 constraintEqualToAnchor:0.0 constant:?];
    v208[12] = v143;
    v142 = [(CPSPrimaryManeuverView *)self titleLabel];
    v141 = [(CPSAbridgableLabel *)v142 trailingAnchor];
    v140 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v139 = [(UILayoutGuide *)v140 trailingAnchor];
    v138 = [v141 constraintLessThanOrEqualToAnchor:0.0 constant:?];
    v208[13] = v138;
    v137 = [(CPSPrimaryManeuverView *)self titleLabel];
    v136 = [(CPSAbridgableLabel *)v137 bottomAnchor];
    v135 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v134 = [(UILayoutGuide *)v135 bottomAnchor];
    v133 = [v136 constraintLessThanOrEqualToAnchor:0.0 constant:?];
    v208[14] = v133;
    v132 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    v131 = [(CPSAbridgableLabel *)v132 leadingAnchor];
    v130 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v129 = [(UILayoutGuide *)v130 leadingAnchor];
    v128 = [v131 constraintEqualToAnchor:0.0 constant:?];
    v208[15] = v128;
    v127 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    v126 = [(CPSAbridgableLabel *)v127 trailingAnchor];
    v125 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v124 = [(UILayoutGuide *)v125 trailingAnchor];
    v123 = [v126 constraintLessThanOrEqualToAnchor:-8.0 constant:?];
    v208[16] = v123;
    v122 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    v121 = [(CPSAbridgableLabel *)v122 topAnchor];
    v120 = [(CPSPrimaryManeuverView *)self symbolImageView];
    v119 = [(UIImageView *)v120 bottomAnchor];
    v118 = [v121 constraintEqualToAnchor:4.0 constant:?];
    v208[17] = v118;
    v117 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    v116 = [(CPSAbridgableLabel *)v117 heightAnchor];
    v115 = [v116 constraintEqualToConstant:0.0];
    v208[18] = v115;
    v114 = [(CPSPrimaryManeuverView *)self junctionImageView];
    v113 = [(CPSAspectFitImageView *)v114 bottomAnchor];
    v112 = [(CPSPrimaryManeuverView *)self bottomAnchor];
    v111 = [v113 constraintEqualToAnchor:0.0 constant:?];
    v208[19] = v111;
    v110 = [(CPSPrimaryManeuverView *)self junctionImageView];
    v109 = [(CPSAspectFitImageView *)v110 centerXAnchor];
    v108 = [(CPSPrimaryManeuverView *)self centerXAnchor];
    v107 = [v109 constraintEqualToAnchor:?];
    v208[20] = v107;
    v106 = [(CPSPrimaryManeuverView *)self junctionImageView];
    v105 = [(CPSAspectFitImageView *)v106 leadingAnchor];
    v104 = [(CPSPrimaryManeuverView *)self leadingAnchor];
    v103 = [v105 constraintGreaterThanOrEqualToAnchor:?];
    v208[21] = v103;
    v102 = [(CPSPrimaryManeuverView *)self junctionImageView];
    v101 = [(CPSAspectFitImageView *)v102 trailingAnchor];
    v100 = [(CPSPrimaryManeuverView *)self trailingAnchor];
    v99 = [v101 constraintLessThanOrEqualToAnchor:?];
    v208[22] = v99;
    v206 = [MEMORY[0x277CBEA60] arrayWithObjects:v208 count:23];
    MEMORY[0x277D82BD8](v99);
    MEMORY[0x277D82BD8](v100);
    MEMORY[0x277D82BD8](v101);
    MEMORY[0x277D82BD8](v102);
    MEMORY[0x277D82BD8](v103);
    MEMORY[0x277D82BD8](v104);
    MEMORY[0x277D82BD8](v105);
    MEMORY[0x277D82BD8](v106);
    MEMORY[0x277D82BD8](v107);
    MEMORY[0x277D82BD8](v108);
    MEMORY[0x277D82BD8](v109);
    MEMORY[0x277D82BD8](v110);
    MEMORY[0x277D82BD8](v111);
    MEMORY[0x277D82BD8](v112);
    MEMORY[0x277D82BD8](v113);
    MEMORY[0x277D82BD8](v114);
    MEMORY[0x277D82BD8](v115);
    MEMORY[0x277D82BD8](v116);
    MEMORY[0x277D82BD8](v117);
    MEMORY[0x277D82BD8](v118);
    MEMORY[0x277D82BD8](v119);
    MEMORY[0x277D82BD8](v120);
    MEMORY[0x277D82BD8](v121);
    MEMORY[0x277D82BD8](v122);
    MEMORY[0x277D82BD8](v123);
    MEMORY[0x277D82BD8](v124);
    MEMORY[0x277D82BD8](v125);
    MEMORY[0x277D82BD8](v126);
    MEMORY[0x277D82BD8](v127);
    MEMORY[0x277D82BD8](v128);
    MEMORY[0x277D82BD8](v129);
    MEMORY[0x277D82BD8](v130);
    MEMORY[0x277D82BD8](v131);
    MEMORY[0x277D82BD8](v132);
    MEMORY[0x277D82BD8](v133);
    MEMORY[0x277D82BD8](v134);
    MEMORY[0x277D82BD8](v135);
    MEMORY[0x277D82BD8](v136);
    MEMORY[0x277D82BD8](v137);
    MEMORY[0x277D82BD8](v138);
    MEMORY[0x277D82BD8](v139);
    MEMORY[0x277D82BD8](v140);
    MEMORY[0x277D82BD8](v141);
    MEMORY[0x277D82BD8](v142);
    MEMORY[0x277D82BD8](v143);
    MEMORY[0x277D82BD8](v144);
    MEMORY[0x277D82BD8](v145);
    MEMORY[0x277D82BD8](v146);
    MEMORY[0x277D82BD8](v147);
    MEMORY[0x277D82BD8](v148);
    MEMORY[0x277D82BD8](v149);
    MEMORY[0x277D82BD8](v150);
    MEMORY[0x277D82BD8](v151);
    MEMORY[0x277D82BD8](v152);
    MEMORY[0x277D82BD8](v153);
    MEMORY[0x277D82BD8](v154);
    MEMORY[0x277D82BD8](v155);
    MEMORY[0x277D82BD8](v156);
    MEMORY[0x277D82BD8](v157);
    MEMORY[0x277D82BD8](v158);
    MEMORY[0x277D82BD8](v159);
    MEMORY[0x277D82BD8](v160);
    MEMORY[0x277D82BD8](v161);
    MEMORY[0x277D82BD8](v162);
    MEMORY[0x277D82BD8](v163);
    MEMORY[0x277D82BD8](v164);
    MEMORY[0x277D82BD8](v165);
    MEMORY[0x277D82BD8](v166);
    MEMORY[0x277D82BD8](v167);
    MEMORY[0x277D82BD8](v168);
    MEMORY[0x277D82BD8](v169);
    MEMORY[0x277D82BD8](v170);
    MEMORY[0x277D82BD8](v171);
    MEMORY[0x277D82BD8](v172);
    MEMORY[0x277D82BD8](v173);
    MEMORY[0x277D82BD8](v174);
    MEMORY[0x277D82BD8](v175);
    MEMORY[0x277D82BD8](v176);
    MEMORY[0x277D82BD8](v177);
    MEMORY[0x277D82BD8](v178);
    MEMORY[0x277D82BD8](v179);
    MEMORY[0x277D82BD8](v180);
    MEMORY[0x277D82BD8](v181);
    MEMORY[0x277D82BD8](v182);
    MEMORY[0x277D82BD8](v183);
    MEMORY[0x277D82BD8](v184);
    MEMORY[0x277D82BD8](v185);
    MEMORY[0x277D82BD8](v186);
    MEMORY[0x277D82BD8](v187);
    MEMORY[0x277D82BD8](v188);
    MEMORY[0x277D82BD8](v189);
    MEMORY[0x277D82BD8](v190);
    MEMORY[0x277D82BD8](v191);
    MEMORY[0x277D82BD8](v192);
    MEMORY[0x277D82BD8](v193);
    MEMORY[0x277D82BD8](v194);
    MEMORY[0x277D82BD8](v195);
    MEMORY[0x277D82BD8](v196);
    MEMORY[0x277D82BD8](v197);
    MEMORY[0x277D82BD8](v198);
    MEMORY[0x277D82BD8](v199);
    MEMORY[0x277D82BD8](v200);
    MEMORY[0x277D82BD8](v201);
  }

  else
  {
    v98 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v97 = [(UILayoutGuide *)v98 centerYAnchor];
    v96 = [(CPSPrimaryManeuverView *)self yCenteringGuide];
    v95 = [(UILayoutGuide *)v96 centerYAnchor];
    v94 = [(NSLayoutYAxisAnchor *)v97 constraintEqualToAnchor:?];
    v207[0] = v94;
    v93 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v92 = [(UILayoutGuide *)v93 leadingAnchor];
    v91 = [(CPSPrimaryManeuverView *)self leadingAnchor];
    v90 = [(NSLayoutXAxisAnchor *)v92 constraintEqualToAnchor:13.0 constant:?];
    v207[1] = v90;
    v89 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v88 = [(UILayoutGuide *)v89 trailingAnchor];
    v87 = [(CPSPrimaryManeuverView *)self trailingAnchor];
    v86 = [(NSLayoutXAxisAnchor *)v88 constraintEqualToAnchor:-13.0 constant:?];
    v207[2] = v86;
    v85 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v84 = [(UILayoutGuide *)v85 bottomAnchor];
    v83 = [(CPSPrimaryManeuverView *)self junctionImageView];
    v82 = [(CPSAspectFitImageView *)v83 topAnchor];
    v81 = [(NSLayoutYAxisAnchor *)v84 constraintLessThanOrEqualToAnchor:10.0 constant:?];
    v207[3] = v81;
    v80 = [(CPSPrimaryManeuverView *)self topAnchor];
    v79 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v78 = [(UILayoutGuide *)v79 topAnchor];
    v77 = [v80 constraintLessThanOrEqualToAnchor:?];
    v207[4] = v77;
    v76 = [(CPSPrimaryManeuverView *)self topAnchor];
    v75 = [(CPSPrimaryManeuverView *)self yCenteringGuide];
    v74 = [(UILayoutGuide *)v75 topAnchor];
    v73 = [v76 constraintEqualToAnchor:?];
    v207[5] = v73;
    v72 = [(CPSPrimaryManeuverView *)self yCenteringGuide];
    v71 = [(UILayoutGuide *)v72 bottomAnchor];
    v70 = [(CPSPrimaryManeuverView *)self junctionImageView];
    v69 = [(CPSAspectFitImageView *)v70 topAnchor];
    v68 = [(NSLayoutYAxisAnchor *)v71 constraintEqualToAnchor:?];
    v207[6] = v68;
    v67 = [(CPSPrimaryManeuverView *)self titleLabel];
    v66 = [(CPSAbridgableLabel *)v67 topAnchor];
    v65 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v64 = [(UILayoutGuide *)v65 topAnchor];
    v63 = [v66 constraintEqualToAnchor:? constant:?];
    v207[7] = v63;
    v62 = [(CPSPrimaryManeuverView *)self titleLabel];
    v61 = [(CPSAbridgableLabel *)v62 leadingAnchor];
    v60 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v59 = [(UILayoutGuide *)v60 leadingAnchor];
    v58 = [v61 constraintEqualToAnchor:? constant:?];
    v207[8] = v58;
    v57 = [(CPSPrimaryManeuverView *)self titleLabel];
    v56 = [(CPSAbridgableLabel *)v57 trailingAnchor];
    v55 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v54 = [(UILayoutGuide *)v55 trailingAnchor];
    v53 = [v56 constraintLessThanOrEqualToAnchor:? constant:?];
    v207[9] = v53;
    v52 = [(CPSPrimaryManeuverView *)self titleLabel];
    v51 = [(CPSAbridgableLabel *)v52 bottomAnchor];
    v50 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v49 = [(UILayoutGuide *)v50 bottomAnchor];
    v48 = [v51 constraintLessThanOrEqualToAnchor:0.0 constant:?];
    v207[10] = v48;
    v47 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    v46 = [(CPSAbridgableLabel *)v47 leadingAnchor];
    v45 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v44 = [(UILayoutGuide *)v45 leadingAnchor];
    v43 = [v46 constraintEqualToAnchor:8.0 constant:?];
    v207[11] = v43;
    v42 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    v41 = [(CPSAbridgableLabel *)v42 trailingAnchor];
    v40 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v39 = [(UILayoutGuide *)v40 trailingAnchor];
    v38 = [v41 constraintLessThanOrEqualToAnchor:-8.0 constant:?];
    v207[12] = v38;
    v37 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    v36 = [(CPSAbridgableLabel *)v37 topAnchor];
    v35 = [(CPSPrimaryManeuverView *)self titleLabel];
    v34 = [(CPSAbridgableLabel *)v35 bottomAnchor];
    v33 = [v36 constraintEqualToAnchor:0.0 constant:?];
    v207[13] = v33;
    v32 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    v31 = [(CPSAbridgableLabel *)v32 bottomAnchor];
    v30 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v29 = [(UILayoutGuide *)v30 bottomAnchor];
    v28 = [v31 constraintEqualToAnchor:0.0 constant:?];
    v207[14] = v28;
    v27 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    v26 = [(CPSAbridgableLabel *)v27 heightAnchor];
    v25 = [v26 constraintEqualToConstant:0.0];
    v207[15] = v25;
    v24 = [(CPSPrimaryManeuverView *)self junctionImageView];
    v23 = [(CPSAspectFitImageView *)v24 topAnchor];
    v22 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v21 = [(UILayoutGuide *)v22 bottomAnchor];
    v20 = [v23 constraintGreaterThanOrEqualToAnchor:0.0 constant:?];
    v207[16] = v20;
    v19 = [(CPSPrimaryManeuverView *)self junctionImageView];
    v18 = [(CPSAspectFitImageView *)v19 bottomAnchor];
    v17 = [(CPSPrimaryManeuverView *)self bottomAnchor];
    v16 = [v18 constraintEqualToAnchor:0.0 constant:?];
    v207[17] = v16;
    v15 = [(CPSPrimaryManeuverView *)self junctionImageView];
    v14 = [(CPSAspectFitImageView *)v15 centerXAnchor];
    v13 = [(CPSPrimaryManeuverView *)self centerXAnchor];
    v12 = [v14 constraintEqualToAnchor:?];
    v207[18] = v12;
    v11 = [(CPSPrimaryManeuverView *)self junctionImageView];
    v10 = [(CPSAspectFitImageView *)v11 leadingAnchor];
    v9 = [(CPSPrimaryManeuverView *)self leadingAnchor];
    v8 = [v10 constraintGreaterThanOrEqualToAnchor:?];
    v207[19] = v8;
    v7 = [(CPSPrimaryManeuverView *)self junctionImageView];
    v6 = [(CPSAspectFitImageView *)v7 trailingAnchor];
    v5 = [(CPSPrimaryManeuverView *)self trailingAnchor];
    v4 = [v6 constraintLessThanOrEqualToAnchor:?];
    v207[20] = v4;
    v206 = [MEMORY[0x277CBEA60] arrayWithObjects:v207 count:21];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
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
    MEMORY[0x277D82BD8](v58);
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
    MEMORY[0x277D82BD8](v71);
    MEMORY[0x277D82BD8](v72);
    MEMORY[0x277D82BD8](v73);
    MEMORY[0x277D82BD8](v74);
    MEMORY[0x277D82BD8](v75);
    MEMORY[0x277D82BD8](v76);
    MEMORY[0x277D82BD8](v77);
    MEMORY[0x277D82BD8](v78);
    MEMORY[0x277D82BD8](v79);
    MEMORY[0x277D82BD8](v80);
    MEMORY[0x277D82BD8](v81);
    MEMORY[0x277D82BD8](v82);
    MEMORY[0x277D82BD8](v83);
    MEMORY[0x277D82BD8](v84);
    MEMORY[0x277D82BD8](v85);
    MEMORY[0x277D82BD8](v86);
    MEMORY[0x277D82BD8](v87);
    MEMORY[0x277D82BD8](v88);
    MEMORY[0x277D82BD8](v89);
    MEMORY[0x277D82BD8](v90);
    MEMORY[0x277D82BD8](v91);
    MEMORY[0x277D82BD8](v92);
    MEMORY[0x277D82BD8](v93);
    MEMORY[0x277D82BD8](v94);
    MEMORY[0x277D82BD8](v95);
    MEMORY[0x277D82BD8](v96);
    MEMORY[0x277D82BD8](v97);
    MEMORY[0x277D82BD8](v98);
  }

  return v206;
}

- (id)_junctionViewNoInstructionWideImageConstraints
{
  v118[25] = *MEMORY[0x277D85DE8];
  v116 = [(CPSPrimaryManeuverView *)self yCenteringGuide];
  v115 = [(UILayoutGuide *)v116 topAnchor];
  v114 = [(CPSPrimaryManeuverView *)self topAnchor];
  v113 = [(NSLayoutYAxisAnchor *)v115 constraintEqualToAnchor:?];
  v118[0] = v113;
  v112 = [(CPSPrimaryManeuverView *)self yCenteringGuide];
  v111 = [(UILayoutGuide *)v112 bottomAnchor];
  v110 = [(CPSPrimaryManeuverView *)self junctionImageView];
  v109 = [(CPSAspectFitImageView *)v110 topAnchor];
  v108 = [(NSLayoutYAxisAnchor *)v111 constraintEqualToAnchor:?];
  v118[1] = v108;
  v107 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v106 = [(UILayoutGuide *)v107 topAnchor];
  v105 = [(CPSPrimaryManeuverView *)self topAnchor];
  v104 = [(NSLayoutYAxisAnchor *)v106 constraintGreaterThanOrEqualToAnchor:?];
  v118[2] = v104;
  v103 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v102 = [(UILayoutGuide *)v103 centerYAnchor];
  v101 = [(CPSPrimaryManeuverView *)self yCenteringGuide];
  v100 = [(UILayoutGuide *)v101 centerYAnchor];
  v99 = [(NSLayoutYAxisAnchor *)v102 constraintEqualToAnchor:?];
  v118[3] = v99;
  v98 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v97 = [(UILayoutGuide *)v98 bottomAnchor];
  v96 = [(CPSPrimaryManeuverView *)self junctionImageView];
  v95 = [(CPSAspectFitImageView *)v96 topAnchor];
  v94 = [(NSLayoutYAxisAnchor *)v97 constraintLessThanOrEqualToAnchor:10.0 constant:?];
  v118[4] = v94;
  v93 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v92 = [(UILayoutGuide *)v93 leadingAnchor];
  v91 = [(CPSPrimaryManeuverView *)self leadingAnchor];
  v90 = [(NSLayoutXAxisAnchor *)v92 constraintEqualToAnchor:13.0 constant:?];
  v118[5] = v90;
  v89 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v88 = [(UILayoutGuide *)v89 trailingAnchor];
  v87 = [(CPSPrimaryManeuverView *)self trailingAnchor];
  v86 = [(NSLayoutXAxisAnchor *)v88 constraintEqualToAnchor:-13.0 constant:?];
  v118[6] = v86;
  v85 = [(CPSPrimaryManeuverView *)self symbolImageView];
  v84 = [(UIImageView *)v85 topAnchor];
  v83 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v82 = [(UILayoutGuide *)v83 topAnchor];
  v81 = [v84 constraintEqualToAnchor:? constant:?];
  v118[7] = v81;
  v80 = [(CPSPrimaryManeuverView *)self symbolImageView];
  v79 = [(UIImageView *)v80 leadingAnchor];
  v78 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v77 = [(UILayoutGuide *)v78 leadingAnchor];
  v76 = [v79 constraintGreaterThanOrEqualToAnchor:0.0 constant:?];
  v118[8] = v76;
  v75 = [(CPSPrimaryManeuverView *)self symbolImageView];
  v74 = [(UIImageView *)v75 trailingAnchor];
  v73 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v72 = [(UILayoutGuide *)v73 trailingAnchor];
  v71 = [v74 constraintLessThanOrEqualToAnchor:0.0 constant:?];
  v118[9] = v71;
  v70 = [(CPSPrimaryManeuverView *)self symbolImageView];
  v69 = [(UIImageView *)v70 centerXAnchor];
  v68 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v67 = [(UILayoutGuide *)v68 centerXAnchor];
  v66 = [v69 constraintEqualToAnchor:?];
  v118[10] = v66;
  v65 = [(CPSPrimaryManeuverView *)self symbolImageView];
  v64 = [(UIImageView *)v65 widthAnchor];
  v63 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v62 = [(UILayoutGuide *)v63 widthAnchor];
  v61 = [v64 constraintLessThanOrEqualToAnchor:?];
  v118[11] = v61;
  v60 = [(CPSPrimaryManeuverView *)self symbolImageView];
  v59 = [(UIImageView *)v60 heightAnchor];
  [(CPSPrimaryManeuverView *)self symbolImageHeight];
  v58 = [v59 constraintLessThanOrEqualToConstant:?];
  v118[12] = v58;
  v57 = [(CPSPrimaryManeuverView *)self titleLabel];
  v56 = [(CPSAbridgableLabel *)v57 leadingAnchor];
  v55 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v54 = [(UILayoutGuide *)v55 leadingAnchor];
  v53 = [v56 constraintEqualToAnchor:8.0 constant:?];
  v118[13] = v53;
  v52 = [(CPSPrimaryManeuverView *)self titleLabel];
  v51 = [(CPSAbridgableLabel *)v52 topAnchor];
  v50 = [(CPSPrimaryManeuverView *)self symbolImageView];
  v49 = [(UIImageView *)v50 bottomAnchor];
  v48 = [v51 constraintEqualToAnchor:0.0 constant:?];
  v118[14] = v48;
  v47 = [(CPSPrimaryManeuverView *)self titleLabel];
  v46 = [(CPSAbridgableLabel *)v47 trailingAnchor];
  v45 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v44 = [(UILayoutGuide *)v45 trailingAnchor];
  v43 = [v46 constraintLessThanOrEqualToAnchor:0.0 constant:?];
  v118[15] = v43;
  v42 = [(CPSPrimaryManeuverView *)self titleLabel];
  v41 = [(CPSAbridgableLabel *)v42 bottomAnchor];
  v40 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v39 = [(UILayoutGuide *)v40 bottomAnchor];
  v38 = [v41 constraintLessThanOrEqualToAnchor:0.0 constant:?];
  v118[16] = v38;
  v37 = [(CPSPrimaryManeuverView *)self subtitleLabel];
  v36 = [(CPSAbridgableLabel *)v37 leadingAnchor];
  v35 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v34 = [(UILayoutGuide *)v35 leadingAnchor];
  v33 = [v36 constraintEqualToAnchor:0.0 constant:?];
  v118[17] = v33;
  v32 = [(CPSPrimaryManeuverView *)self subtitleLabel];
  v31 = [(CPSAbridgableLabel *)v32 trailingAnchor];
  v30 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v29 = [(UILayoutGuide *)v30 trailingAnchor];
  v28 = [v31 constraintLessThanOrEqualToAnchor:-8.0 constant:?];
  v118[18] = v28;
  v27 = [(CPSPrimaryManeuverView *)self subtitleLabel];
  v26 = [(CPSAbridgableLabel *)v27 topAnchor];
  v25 = [(CPSPrimaryManeuverView *)self symbolImageView];
  v24 = [(UIImageView *)v25 bottomAnchor];
  v23 = [v26 constraintEqualToAnchor:4.0 constant:?];
  v118[19] = v23;
  v22 = [(CPSPrimaryManeuverView *)self subtitleLabel];
  v21 = [(CPSAbridgableLabel *)v22 heightAnchor];
  v20 = [v21 constraintEqualToConstant:0.0];
  v118[20] = v20;
  v19 = [(CPSPrimaryManeuverView *)self junctionImageView];
  v18 = [(CPSAspectFitImageView *)v19 bottomAnchor];
  v17 = [(CPSPrimaryManeuverView *)self bottomAnchor];
  v16 = [v18 constraintEqualToAnchor:0.0 constant:?];
  v118[21] = v16;
  v15 = [(CPSPrimaryManeuverView *)self junctionImageView];
  v14 = [(CPSAspectFitImageView *)v15 centerXAnchor];
  v13 = [(CPSPrimaryManeuverView *)self centerXAnchor];
  v12 = [v14 constraintEqualToAnchor:?];
  v118[22] = v12;
  v11 = [(CPSPrimaryManeuverView *)self junctionImageView];
  v10 = [(CPSAspectFitImageView *)v11 leadingAnchor];
  v9 = [(CPSPrimaryManeuverView *)self leadingAnchor];
  v8 = [v10 constraintGreaterThanOrEqualToAnchor:?];
  v118[23] = v8;
  v7 = [(CPSPrimaryManeuverView *)self junctionImageView];
  v6 = [(CPSAspectFitImageView *)v7 trailingAnchor];
  v5 = [(CPSPrimaryManeuverView *)self trailingAnchor];
  v3 = [v6 constraintLessThanOrEqualToAnchor:?];
  v118[24] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v118 count:25];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
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
  MEMORY[0x277D82BD8](v58);
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
  MEMORY[0x277D82BD8](v71);
  MEMORY[0x277D82BD8](v72);
  MEMORY[0x277D82BD8](v73);
  MEMORY[0x277D82BD8](v74);
  MEMORY[0x277D82BD8](v75);
  MEMORY[0x277D82BD8](v76);
  MEMORY[0x277D82BD8](v77);
  MEMORY[0x277D82BD8](v78);
  MEMORY[0x277D82BD8](v79);
  MEMORY[0x277D82BD8](v80);
  MEMORY[0x277D82BD8](v81);
  MEMORY[0x277D82BD8](v82);
  MEMORY[0x277D82BD8](v83);
  MEMORY[0x277D82BD8](v84);
  MEMORY[0x277D82BD8](v85);
  MEMORY[0x277D82BD8](v86);
  MEMORY[0x277D82BD8](v87);
  MEMORY[0x277D82BD8](v88);
  MEMORY[0x277D82BD8](v89);
  MEMORY[0x277D82BD8](v90);
  MEMORY[0x277D82BD8](v91);
  MEMORY[0x277D82BD8](v92);
  MEMORY[0x277D82BD8](v93);
  MEMORY[0x277D82BD8](v94);
  MEMORY[0x277D82BD8](v95);
  MEMORY[0x277D82BD8](v96);
  MEMORY[0x277D82BD8](v97);
  MEMORY[0x277D82BD8](v98);
  MEMORY[0x277D82BD8](v99);
  MEMORY[0x277D82BD8](v100);
  MEMORY[0x277D82BD8](v101);
  MEMORY[0x277D82BD8](v102);
  MEMORY[0x277D82BD8](v103);
  MEMORY[0x277D82BD8](v104);
  MEMORY[0x277D82BD8](v105);
  MEMORY[0x277D82BD8](v106);
  MEMORY[0x277D82BD8](v107);
  MEMORY[0x277D82BD8](v108);
  MEMORY[0x277D82BD8](v109);
  MEMORY[0x277D82BD8](v110);
  MEMORY[0x277D82BD8](v111);
  MEMORY[0x277D82BD8](v112);
  MEMORY[0x277D82BD8](v113);
  MEMORY[0x277D82BD8](v114);
  MEMORY[0x277D82BD8](v115);
  MEMORY[0x277D82BD8](v116);

  return v4;
}

- (id)_fullLayoutNoJunctionViewConstraints
{
  v150[2] = *MEMORY[0x277D85DE8];
  v146 = self;
  v145[1] = a2;
  v145[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(CPSPrimaryManeuverView *)v146 centersManeuverInView])
  {
    v144 = [(CPSPrimaryManeuverView *)v146 topAnchor];
    v143 = [(CPSPrimaryManeuverView *)v146 centeringLayoutGuide];
    v142 = [(UILayoutGuide *)v143 topAnchor];
    v2 = _UISolariumEnabled();
    v3 = 10.0;
    if ((v2 & 1) == 0)
    {
      v3 = 4.0;
    }

    v141 = [v144 constraintLessThanOrEqualToAnchor:v142 constant:-v3];
    v150[0] = v141;
    v140 = [(CPSPrimaryManeuverView *)v146 centeringLayoutGuide];
    v139 = [(UILayoutGuide *)v140 centerYAnchor];
    v138 = [(CPSPrimaryManeuverView *)v146 centerYAnchor];
    v137 = [(NSLayoutYAxisAnchor *)v139 constraintEqualToAnchor:?];
    v150[1] = v137;
    v136 = [MEMORY[0x277CBEA60] arrayWithObjects:v150 count:2];
    [v145[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v136);
    MEMORY[0x277D82BD8](v137);
    MEMORY[0x277D82BD8](v138);
    MEMORY[0x277D82BD8](v139);
    MEMORY[0x277D82BD8](v140);
    MEMORY[0x277D82BD8](v141);
    MEMORY[0x277D82BD8](v142);
    MEMORY[0x277D82BD8](v143);
    MEMORY[0x277D82BD8](v144);
  }

  else
  {
    v135 = [(CPSPrimaryManeuverView *)v146 topAnchor];
    v134 = [(CPSPrimaryManeuverView *)v146 centeringLayoutGuide];
    v133 = [(UILayoutGuide *)v134 topAnchor];
    v4 = _UISolariumEnabled();
    v5 = 10.0;
    if ((v4 & 1) == 0)
    {
      v5 = 4.0;
    }

    v132 = [v135 constraintEqualToAnchor:v133 constant:-v5];
    v149 = v132;
    v131 = [MEMORY[0x277CBEA60] arrayWithObjects:&v149 count:1];
    [v145[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v131);
    MEMORY[0x277D82BD8](v132);
    MEMORY[0x277D82BD8](v133);
    MEMORY[0x277D82BD8](v134);
    MEMORY[0x277D82BD8](v135);
  }

  v128 = objc_opt_class();
  v129 = [(CPSPrimaryManeuverView *)v146 maneuver];
  v130 = [v128 symbolImageForManeuver:?];
  MEMORY[0x277D82BD8](v130);
  *&v6 = MEMORY[0x277D82BD8](v129).n128_u64[0];
  if (v130)
  {
    v127 = [(CPSPrimaryManeuverView *)v146 centeringLayoutGuide];
    v126 = [(UILayoutGuide *)v127 leadingAnchor];
    v125 = [(CPSPrimaryManeuverView *)v146 leadingAnchor];
    v124 = [(NSLayoutXAxisAnchor *)v126 constraintEqualToAnchor:13.0 constant:?];
    v148[0] = v124;
    v123 = [(CPSPrimaryManeuverView *)v146 centeringLayoutGuide];
    v122 = [(UILayoutGuide *)v123 trailingAnchor];
    v121 = [(CPSPrimaryManeuverView *)v146 trailingAnchor];
    v120 = [(NSLayoutXAxisAnchor *)v122 constraintEqualToAnchor:-13.0 constant:?];
    v148[1] = v120;
    v119 = [(CPSPrimaryManeuverView *)v146 bottomAnchor];
    v118 = [(CPSPrimaryManeuverView *)v146 centeringLayoutGuide];
    v117 = [(UILayoutGuide *)v118 bottomAnchor];
    v7 = _UISolariumEnabled();
    v8 = 10.0;
    if ((v7 & 1) == 0)
    {
      v8 = 4.0;
    }

    v116 = [v119 constraintGreaterThanOrEqualToAnchor:v117 constant:v8];
    v148[2] = v116;
    v115 = [(CPSPrimaryManeuverView *)v146 symbolImageView];
    v114 = [(UIImageView *)v115 topAnchor];
    v113 = [(CPSPrimaryManeuverView *)v146 centeringLayoutGuide];
    v112 = [(UILayoutGuide *)v113 topAnchor];
    v111 = [v114 constraintEqualToAnchor:? constant:?];
    v148[3] = v111;
    v110 = [(CPSPrimaryManeuverView *)v146 symbolImageView];
    v109 = [(UIImageView *)v110 leadingAnchor];
    v108 = [(CPSPrimaryManeuverView *)v146 centeringLayoutGuide];
    v107 = [(UILayoutGuide *)v108 leadingAnchor];
    v106 = [v109 constraintEqualToAnchor:0.0 constant:?];
    v148[4] = v106;
    v105 = [(CPSPrimaryManeuverView *)v146 symbolImageView];
    v104 = [(UIImageView *)v105 heightAnchor];
    [(CPSPrimaryManeuverView *)v146 symbolImageHeight];
    v103 = [v104 constraintLessThanOrEqualToConstant:?];
    v148[5] = v103;
    v102 = [(CPSPrimaryManeuverView *)v146 titleLabel];
    v101 = [(CPSAbridgableLabel *)v102 leadingAnchor];
    v100 = [(CPSPrimaryManeuverView *)v146 symbolImageView];
    v99 = [(UIImageView *)v100 trailingAnchor];
    v98 = [v101 constraintEqualToAnchor:8.0 constant:?];
    v148[6] = v98;
    v97 = [(CPSPrimaryManeuverView *)v146 titleLabel];
    v96 = [(CPSAbridgableLabel *)v97 centerYAnchor];
    v95 = [(CPSPrimaryManeuverView *)v146 symbolImageView];
    v94 = [(UIImageView *)v95 centerYAnchor];
    v93 = [v96 constraintEqualToAnchor:0.0 constant:?];
    v148[7] = v93;
    v92 = [(CPSPrimaryManeuverView *)v146 titleLabel];
    v91 = [(CPSAbridgableLabel *)v92 trailingAnchor];
    v90 = [(CPSPrimaryManeuverView *)v146 centeringLayoutGuide];
    v89 = [(UILayoutGuide *)v90 trailingAnchor];
    v88 = [v91 constraintLessThanOrEqualToAnchor:0.0 constant:?];
    v148[8] = v88;
    v87 = [(CPSPrimaryManeuverView *)v146 subtitleLabel];
    v86 = [(CPSAbridgableLabel *)v87 leadingAnchor];
    v85 = [(CPSPrimaryManeuverView *)v146 centeringLayoutGuide];
    v84 = [(UILayoutGuide *)v85 leadingAnchor];
    v83 = [v86 constraintEqualToAnchor:0.0 constant:?];
    v148[9] = v83;
    v82 = [(CPSPrimaryManeuverView *)v146 subtitleLabel];
    v81 = [(CPSAbridgableLabel *)v82 trailingAnchor];
    v80 = [(CPSPrimaryManeuverView *)v146 centeringLayoutGuide];
    v79 = [(UILayoutGuide *)v80 trailingAnchor];
    v78 = [v81 constraintLessThanOrEqualToAnchor:-8.0 constant:?];
    v148[10] = v78;
    v77 = [(CPSPrimaryManeuverView *)v146 subtitleLabel];
    v76 = [(CPSAbridgableLabel *)v77 topAnchor];
    v75 = [(CPSPrimaryManeuverView *)v146 symbolImageView];
    v74 = [(UIImageView *)v75 bottomAnchor];
    v73 = [v76 constraintEqualToAnchor:4.0 constant:?];
    v148[11] = v73;
    v72 = [(CPSPrimaryManeuverView *)v146 subtitleLabel];
    v71 = [(CPSAbridgableLabel *)v72 bottomAnchor];
    v70 = [(CPSPrimaryManeuverView *)v146 centeringLayoutGuide];
    v69 = [(UILayoutGuide *)v70 bottomAnchor];
    v68 = [v71 constraintEqualToAnchor:0.0 constant:?];
    v148[12] = v68;
    v67 = [(CPSPrimaryManeuverView *)v146 junctionImageView];
    v66 = [(CPSAspectFitImageView *)v67 heightAnchor];
    v65 = [v66 constraintEqualToConstant:0.0];
    v148[13] = v65;
    v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v148 count:14];
    [v145[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](v66);
    MEMORY[0x277D82BD8](v67);
    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](v69);
    MEMORY[0x277D82BD8](v70);
    MEMORY[0x277D82BD8](v71);
    MEMORY[0x277D82BD8](v72);
    MEMORY[0x277D82BD8](v73);
    MEMORY[0x277D82BD8](v74);
    MEMORY[0x277D82BD8](v75);
    MEMORY[0x277D82BD8](v76);
    MEMORY[0x277D82BD8](v77);
    MEMORY[0x277D82BD8](v78);
    MEMORY[0x277D82BD8](v79);
    MEMORY[0x277D82BD8](v80);
    MEMORY[0x277D82BD8](v81);
    MEMORY[0x277D82BD8](v82);
    MEMORY[0x277D82BD8](v83);
    MEMORY[0x277D82BD8](v84);
    MEMORY[0x277D82BD8](v85);
    MEMORY[0x277D82BD8](v86);
    MEMORY[0x277D82BD8](v87);
    MEMORY[0x277D82BD8](v88);
    MEMORY[0x277D82BD8](v89);
    MEMORY[0x277D82BD8](v90);
    MEMORY[0x277D82BD8](v91);
    MEMORY[0x277D82BD8](v92);
    MEMORY[0x277D82BD8](v93);
    MEMORY[0x277D82BD8](v94);
    MEMORY[0x277D82BD8](v95);
    MEMORY[0x277D82BD8](v96);
    MEMORY[0x277D82BD8](v97);
    MEMORY[0x277D82BD8](v98);
    MEMORY[0x277D82BD8](v99);
    MEMORY[0x277D82BD8](v100);
    MEMORY[0x277D82BD8](v101);
    MEMORY[0x277D82BD8](v102);
    MEMORY[0x277D82BD8](v103);
    MEMORY[0x277D82BD8](v104);
    MEMORY[0x277D82BD8](v105);
    MEMORY[0x277D82BD8](v106);
    MEMORY[0x277D82BD8](v107);
    MEMORY[0x277D82BD8](v108);
    MEMORY[0x277D82BD8](v109);
    MEMORY[0x277D82BD8](v110);
    MEMORY[0x277D82BD8](v111);
    MEMORY[0x277D82BD8](v112);
    MEMORY[0x277D82BD8](v113);
    MEMORY[0x277D82BD8](v114);
    MEMORY[0x277D82BD8](v115);
    MEMORY[0x277D82BD8](v116);
    MEMORY[0x277D82BD8](v117);
    MEMORY[0x277D82BD8](v118);
    MEMORY[0x277D82BD8](v119);
    MEMORY[0x277D82BD8](v120);
    MEMORY[0x277D82BD8](v121);
    MEMORY[0x277D82BD8](v122);
    MEMORY[0x277D82BD8](v123);
    MEMORY[0x277D82BD8](v124);
    MEMORY[0x277D82BD8](v125);
    MEMORY[0x277D82BD8](v126);
    MEMORY[0x277D82BD8](v127);
  }

  else
  {
    v63 = [(CPSPrimaryManeuverView *)v146 centeringLayoutGuide];
    v62 = [(UILayoutGuide *)v63 leadingAnchor];
    v61 = [(CPSPrimaryManeuverView *)v146 leadingAnchor];
    v60 = [(NSLayoutXAxisAnchor *)v62 constraintEqualToAnchor:13.0 constant:?];
    v147[0] = v60;
    v59 = [(CPSPrimaryManeuverView *)v146 centeringLayoutGuide];
    v58 = [(UILayoutGuide *)v59 trailingAnchor];
    v57 = [(CPSPrimaryManeuverView *)v146 trailingAnchor];
    v56 = [(NSLayoutXAxisAnchor *)v58 constraintEqualToAnchor:-13.0 constant:?];
    v147[1] = v56;
    v55 = [(CPSPrimaryManeuverView *)v146 bottomAnchor];
    v54 = [(CPSPrimaryManeuverView *)v146 centeringLayoutGuide];
    v53 = [(UILayoutGuide *)v54 bottomAnchor];
    v9 = _UISolariumEnabled();
    v10 = 10.0;
    if ((v9 & 1) == 0)
    {
      v10 = 4.0;
    }

    v52 = [v55 constraintGreaterThanOrEqualToAnchor:v53 constant:v10];
    v147[2] = v52;
    v51 = [(CPSPrimaryManeuverView *)v146 titleLabel];
    v50 = [(CPSAbridgableLabel *)v51 topAnchor];
    v49 = [(CPSPrimaryManeuverView *)v146 centeringLayoutGuide];
    v48 = [(UILayoutGuide *)v49 topAnchor];
    v47 = [v50 constraintEqualToAnchor:? constant:?];
    v147[3] = v47;
    v46 = [(CPSPrimaryManeuverView *)v146 titleLabel];
    v45 = [(CPSAbridgableLabel *)v46 leadingAnchor];
    v44 = [(CPSPrimaryManeuverView *)v146 centeringLayoutGuide];
    v43 = [(UILayoutGuide *)v44 leadingAnchor];
    v42 = [v45 constraintEqualToAnchor:? constant:?];
    v147[4] = v42;
    v41 = [(CPSPrimaryManeuverView *)v146 titleLabel];
    v40 = [(CPSAbridgableLabel *)v41 trailingAnchor];
    v39 = [(CPSPrimaryManeuverView *)v146 centeringLayoutGuide];
    v38 = [(UILayoutGuide *)v39 trailingAnchor];
    v37 = [v40 constraintLessThanOrEqualToAnchor:? constant:?];
    v147[5] = v37;
    v36 = [(CPSPrimaryManeuverView *)v146 subtitleLabel];
    v35 = [(CPSAbridgableLabel *)v36 leadingAnchor];
    v34 = [(CPSPrimaryManeuverView *)v146 centeringLayoutGuide];
    v33 = [(UILayoutGuide *)v34 leadingAnchor];
    v32 = [v35 constraintEqualToAnchor:8.0 constant:?];
    v147[6] = v32;
    v31 = [(CPSPrimaryManeuverView *)v146 subtitleLabel];
    v30 = [(CPSAbridgableLabel *)v31 trailingAnchor];
    v29 = [(CPSPrimaryManeuverView *)v146 centeringLayoutGuide];
    v28 = [(UILayoutGuide *)v29 trailingAnchor];
    v27 = [v30 constraintLessThanOrEqualToAnchor:-8.0 constant:?];
    v147[7] = v27;
    v26 = [(CPSPrimaryManeuverView *)v146 subtitleLabel];
    v25 = [(CPSAbridgableLabel *)v26 topAnchor];
    v24 = [(CPSPrimaryManeuverView *)v146 titleLabel];
    v23 = [(CPSAbridgableLabel *)v24 bottomAnchor];
    v22 = [v25 constraintEqualToAnchor:0.0 constant:?];
    v147[8] = v22;
    v21 = [(CPSPrimaryManeuverView *)v146 subtitleLabel];
    v20 = [(CPSAbridgableLabel *)v21 bottomAnchor];
    v19 = [(CPSPrimaryManeuverView *)v146 centeringLayoutGuide];
    v18 = [(UILayoutGuide *)v19 bottomAnchor];
    v17 = [v20 constraintEqualToAnchor:0.0 constant:?];
    v147[9] = v17;
    v16 = [(CPSPrimaryManeuverView *)v146 junctionImageView];
    v15 = [(CPSAspectFitImageView *)v16 heightAnchor];
    v14 = [v15 constraintEqualToConstant:0.0];
    v147[10] = v14;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:11];
    [v145[0] addObjectsFromArray:?];
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
    MEMORY[0x277D82BD8](v58);
    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](v60);
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v62);
    MEMORY[0x277D82BD8](v63);
  }

  v12 = MEMORY[0x277D82BE0](v145[0]);
  objc_storeStrong(v145, 0);

  return v12;
}

- (id)_fullLayoutNoJunctionViewWideImageConstraints
{
  v109[2] = *MEMORY[0x277D85DE8];
  v106 = self;
  v105[1] = a2;
  v105[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(CPSPrimaryManeuverView *)v106 centersManeuverInView])
  {
    v104 = [(CPSPrimaryManeuverView *)v106 topAnchor];
    v103 = [(CPSPrimaryManeuverView *)v106 centeringLayoutGuide];
    v102 = [(UILayoutGuide *)v103 topAnchor];
    v2 = _UISolariumEnabled();
    v3 = 10.0;
    if ((v2 & 1) == 0)
    {
      v3 = 4.0;
    }

    v101 = [v104 constraintLessThanOrEqualToAnchor:v102 constant:-v3];
    v109[0] = v101;
    v100 = [(CPSPrimaryManeuverView *)v106 centeringLayoutGuide];
    v99 = [(UILayoutGuide *)v100 centerYAnchor];
    v98 = [(CPSPrimaryManeuverView *)v106 centerYAnchor];
    v97 = [(NSLayoutYAxisAnchor *)v99 constraintEqualToAnchor:?];
    v109[1] = v97;
    v96 = [MEMORY[0x277CBEA60] arrayWithObjects:v109 count:2];
    [v105[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v96);
    MEMORY[0x277D82BD8](v97);
    MEMORY[0x277D82BD8](v98);
    MEMORY[0x277D82BD8](v99);
    MEMORY[0x277D82BD8](v100);
    MEMORY[0x277D82BD8](v101);
    MEMORY[0x277D82BD8](v102);
    MEMORY[0x277D82BD8](v103);
    v4 = MEMORY[0x277D82BD8](v104).n128_u64[0];
  }

  else
  {
    v95 = [(CPSPrimaryManeuverView *)v106 topAnchor];
    v94 = [(CPSPrimaryManeuverView *)v106 centeringLayoutGuide];
    v93 = [(UILayoutGuide *)v94 topAnchor];
    v5 = _UISolariumEnabled();
    v6 = 10.0;
    if ((v5 & 1) == 0)
    {
      v6 = 4.0;
    }

    v92 = [v95 constraintEqualToAnchor:v93 constant:-v6];
    v108 = v92;
    v91 = [MEMORY[0x277CBEA60] arrayWithObjects:&v108 count:1];
    [v105[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v91);
    MEMORY[0x277D82BD8](v92);
    MEMORY[0x277D82BD8](v93);
    MEMORY[0x277D82BD8](v94);
    v4 = MEMORY[0x277D82BD8](v95).n128_u64[0];
  }

  v10 = v105[0];
  v89 = [(CPSPrimaryManeuverView *)v106 centeringLayoutGuide];
  v88 = [(UILayoutGuide *)v89 leadingAnchor];
  v87 = [(CPSPrimaryManeuverView *)v106 leadingAnchor];
  v86 = [(NSLayoutXAxisAnchor *)v88 constraintEqualToAnchor:13.0 constant:?];
  v107[0] = v86;
  v85 = [(CPSPrimaryManeuverView *)v106 centeringLayoutGuide];
  v84 = [(UILayoutGuide *)v85 trailingAnchor];
  v83 = [(CPSPrimaryManeuverView *)v106 trailingAnchor];
  v82 = [(NSLayoutXAxisAnchor *)v84 constraintEqualToAnchor:-13.0 constant:?];
  v107[1] = v82;
  v81 = [(CPSPrimaryManeuverView *)v106 bottomAnchor];
  v80 = [(CPSPrimaryManeuverView *)v106 centeringLayoutGuide];
  v79 = [(UILayoutGuide *)v80 bottomAnchor];
  v7 = _UISolariumEnabled();
  v8 = 10.0;
  if ((v7 & 1) == 0)
  {
    v8 = 4.0;
  }

  v78 = [v81 constraintGreaterThanOrEqualToAnchor:v79 constant:v8];
  v107[2] = v78;
  v77 = [(CPSPrimaryManeuverView *)v106 symbolImageView];
  v76 = [(UIImageView *)v77 topAnchor];
  v75 = [(CPSPrimaryManeuverView *)v106 centeringLayoutGuide];
  v74 = [(UILayoutGuide *)v75 topAnchor];
  v73 = [v76 constraintEqualToAnchor:? constant:?];
  v107[3] = v73;
  v72 = [(CPSPrimaryManeuverView *)v106 symbolImageView];
  v71 = [(UIImageView *)v72 leadingAnchor];
  v70 = [(CPSPrimaryManeuverView *)v106 centeringLayoutGuide];
  v69 = [(UILayoutGuide *)v70 leadingAnchor];
  v68 = [v71 constraintGreaterThanOrEqualToAnchor:0.0 constant:?];
  v107[4] = v68;
  v67 = [(CPSPrimaryManeuverView *)v106 symbolImageView];
  v66 = [(UIImageView *)v67 trailingAnchor];
  v65 = [(CPSPrimaryManeuverView *)v106 centeringLayoutGuide];
  v64 = [(UILayoutGuide *)v65 trailingAnchor];
  v63 = [v66 constraintLessThanOrEqualToAnchor:0.0 constant:?];
  v107[5] = v63;
  v62 = [(CPSPrimaryManeuverView *)v106 symbolImageView];
  v61 = [(UIImageView *)v62 centerXAnchor];
  v60 = [(CPSPrimaryManeuverView *)v106 centeringLayoutGuide];
  v59 = [(UILayoutGuide *)v60 centerXAnchor];
  v58 = [v61 constraintEqualToAnchor:?];
  v107[6] = v58;
  v57 = [(CPSPrimaryManeuverView *)v106 symbolImageView];
  v56 = [(UIImageView *)v57 widthAnchor];
  v55 = [(CPSPrimaryManeuverView *)v106 centeringLayoutGuide];
  v54 = [(UILayoutGuide *)v55 widthAnchor];
  v53 = [v56 constraintLessThanOrEqualToAnchor:?];
  v107[7] = v53;
  v52 = [(CPSPrimaryManeuverView *)v106 symbolImageView];
  v51 = [(UIImageView *)v52 heightAnchor];
  [(CPSPrimaryManeuverView *)v106 symbolImageHeight];
  v50 = [v51 constraintLessThanOrEqualToConstant:?];
  v107[8] = v50;
  v49 = [(CPSPrimaryManeuverView *)v106 titleLabel];
  v48 = [(CPSAbridgableLabel *)v49 leadingAnchor];
  v47 = [(CPSPrimaryManeuverView *)v106 centeringLayoutGuide];
  v46 = [(UILayoutGuide *)v47 leadingAnchor];
  v45 = [v48 constraintEqualToAnchor:0.0 constant:?];
  v107[9] = v45;
  v44 = [(CPSPrimaryManeuverView *)v106 titleLabel];
  v43 = [(CPSAbridgableLabel *)v44 topAnchor];
  v42 = [(CPSPrimaryManeuverView *)v106 symbolImageView];
  v41 = [(UIImageView *)v42 bottomAnchor];
  v40 = [v43 constraintEqualToAnchor:0.0 constant:?];
  v107[10] = v40;
  v39 = [(CPSPrimaryManeuverView *)v106 titleLabel];
  v38 = [(CPSAbridgableLabel *)v39 trailingAnchor];
  v37 = [(CPSPrimaryManeuverView *)v106 centeringLayoutGuide];
  v36 = [(UILayoutGuide *)v37 trailingAnchor];
  v35 = [v38 constraintLessThanOrEqualToAnchor:0.0 constant:?];
  v107[11] = v35;
  v34 = [(CPSPrimaryManeuverView *)v106 subtitleLabel];
  v33 = [(CPSAbridgableLabel *)v34 leadingAnchor];
  v32 = [(CPSPrimaryManeuverView *)v106 centeringLayoutGuide];
  v31 = [(UILayoutGuide *)v32 leadingAnchor];
  v30 = [v33 constraintEqualToAnchor:0.0 constant:?];
  v107[12] = v30;
  v29 = [(CPSPrimaryManeuverView *)v106 subtitleLabel];
  v28 = [(CPSAbridgableLabel *)v29 trailingAnchor];
  v27 = [(CPSPrimaryManeuverView *)v106 centeringLayoutGuide];
  v26 = [(UILayoutGuide *)v27 trailingAnchor];
  v25 = [v28 constraintLessThanOrEqualToAnchor:-8.0 constant:?];
  v107[13] = v25;
  v24 = [(CPSPrimaryManeuverView *)v106 subtitleLabel];
  v23 = [(CPSAbridgableLabel *)v24 topAnchor];
  v22 = [(CPSPrimaryManeuverView *)v106 titleLabel];
  v21 = [(CPSAbridgableLabel *)v22 bottomAnchor];
  v20 = [v23 constraintEqualToAnchor:4.0 constant:?];
  v107[14] = v20;
  v19 = [(CPSPrimaryManeuverView *)v106 subtitleLabel];
  v18 = [(CPSAbridgableLabel *)v19 bottomAnchor];
  v17 = [(CPSPrimaryManeuverView *)v106 centeringLayoutGuide];
  v16 = [(UILayoutGuide *)v17 bottomAnchor];
  v15 = [v18 constraintEqualToAnchor:0.0 constant:?];
  v107[15] = v15;
  v14 = [(CPSPrimaryManeuverView *)v106 junctionImageView];
  v13 = [(CPSAspectFitImageView *)v14 heightAnchor];
  v12 = [v13 constraintEqualToConstant:0.0];
  v107[16] = v12;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v107 count:17];
  [v10 addObjectsFromArray:?];
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
  MEMORY[0x277D82BD8](v58);
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
  MEMORY[0x277D82BD8](v71);
  MEMORY[0x277D82BD8](v72);
  MEMORY[0x277D82BD8](v73);
  MEMORY[0x277D82BD8](v74);
  MEMORY[0x277D82BD8](v75);
  MEMORY[0x277D82BD8](v76);
  MEMORY[0x277D82BD8](v77);
  MEMORY[0x277D82BD8](v78);
  MEMORY[0x277D82BD8](v79);
  MEMORY[0x277D82BD8](v80);
  MEMORY[0x277D82BD8](v81);
  MEMORY[0x277D82BD8](v82);
  MEMORY[0x277D82BD8](v83);
  MEMORY[0x277D82BD8](v84);
  MEMORY[0x277D82BD8](v85);
  MEMORY[0x277D82BD8](v86);
  MEMORY[0x277D82BD8](v87);
  MEMORY[0x277D82BD8](v88);
  MEMORY[0x277D82BD8](v89);
  v90 = MEMORY[0x277D82BE0](v105[0]);
  objc_storeStrong(v105, 0);

  return v90;
}

- (id)_fullSubtitleNextToImageConstraints
{
  v177[22] = *MEMORY[0x277D85DE8];
  v171 = objc_opt_class();
  v172 = [(CPSPrimaryManeuverView *)self maneuver];
  v173 = [v171 symbolImageForManeuver:?];
  MEMORY[0x277D82BD8](v173);
  *&v2 = MEMORY[0x277D82BD8](v172).n128_u64[0];
  if (v173)
  {
    v170 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v169 = [(UILayoutGuide *)v170 centerYAnchor];
    v168 = [(CPSPrimaryManeuverView *)self centerYAnchor];
    v167 = [(NSLayoutYAxisAnchor *)v169 constraintEqualToAnchor:?];
    v177[0] = v167;
    v166 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v165 = [(UILayoutGuide *)v166 leadingAnchor];
    v164 = [(CPSPrimaryManeuverView *)self leadingAnchor];
    v163 = [(NSLayoutXAxisAnchor *)v165 constraintEqualToAnchor:13.0 constant:?];
    v177[1] = v163;
    v162 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v161 = [(UILayoutGuide *)v162 trailingAnchor];
    v160 = [(CPSPrimaryManeuverView *)self trailingAnchor];
    v159 = [(NSLayoutXAxisAnchor *)v161 constraintEqualToAnchor:-13.0 constant:?];
    v177[2] = v159;
    v158 = [(CPSPrimaryManeuverView *)self topAnchor];
    v157 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v156 = [(UILayoutGuide *)v157 topAnchor];
    v3 = _UISolariumEnabled();
    v4 = 10.0;
    if ((v3 & 1) == 0)
    {
      v4 = 4.0;
    }

    v155 = [v158 constraintLessThanOrEqualToAnchor:v156 constant:-v4];
    v177[3] = v155;
    v154 = [(CPSPrimaryManeuverView *)self bottomAnchor];
    v153 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v152 = [(UILayoutGuide *)v153 bottomAnchor];
    v5 = _UISolariumEnabled();
    v6 = 10.0;
    if ((v5 & 1) == 0)
    {
      v6 = 4.0;
    }

    v151 = [v154 constraintGreaterThanOrEqualToAnchor:v152 constant:v6];
    v177[4] = v151;
    v150 = [(CPSPrimaryManeuverView *)self symbolImageView];
    v149 = [(UIImageView *)v150 topAnchor];
    v148 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v147 = [(UILayoutGuide *)v148 topAnchor];
    v146 = [v149 constraintGreaterThanOrEqualToAnchor:? constant:?];
    v177[5] = v146;
    v145 = [(CPSPrimaryManeuverView *)self symbolImageView];
    v144 = [(UIImageView *)v145 leadingAnchor];
    v143 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v142 = [(UILayoutGuide *)v143 leadingAnchor];
    v141 = [v144 constraintEqualToAnchor:0.0 constant:?];
    v177[6] = v141;
    v140 = [(CPSPrimaryManeuverView *)self symbolImageView];
    v139 = [(UIImageView *)v140 heightAnchor];
    [(CPSPrimaryManeuverView *)self symbolImageHeight];
    v138 = [v139 constraintLessThanOrEqualToConstant:?];
    v177[7] = v138;
    v137 = [(CPSPrimaryManeuverView *)self symbolImageView];
    v136 = [(UIImageView *)v137 bottomAnchor];
    v135 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v134 = [(UILayoutGuide *)v135 bottomAnchor];
    v133 = [v136 constraintLessThanOrEqualToAnchor:0.0 constant:?];
    v177[8] = v133;
    v132 = [(CPSPrimaryManeuverView *)self labelCenteringLayoutGuide];
    v131 = [(UILayoutGuide *)v132 topAnchor];
    v130 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v129 = [(UILayoutGuide *)v130 topAnchor];
    v128 = [(NSLayoutYAxisAnchor *)v131 constraintGreaterThanOrEqualToAnchor:0.0 constant:?];
    v177[9] = v128;
    v127 = [(CPSPrimaryManeuverView *)self labelCenteringLayoutGuide];
    v126 = [(UILayoutGuide *)v127 centerYAnchor];
    v125 = [(CPSPrimaryManeuverView *)self symbolImageView];
    v124 = [(UIImageView *)v125 centerYAnchor];
    v123 = [(NSLayoutYAxisAnchor *)v126 constraintEqualToAnchor:?];
    v177[10] = v123;
    v122 = [(CPSPrimaryManeuverView *)self labelCenteringLayoutGuide];
    v121 = [(UILayoutGuide *)v122 leadingAnchor];
    v120 = [(CPSPrimaryManeuverView *)self symbolImageView];
    v119 = [(UIImageView *)v120 trailingAnchor];
    v118 = [(NSLayoutXAxisAnchor *)v121 constraintEqualToAnchor:4.0 constant:?];
    v177[11] = v118;
    v117 = [(CPSPrimaryManeuverView *)self labelCenteringLayoutGuide];
    v116 = [(UILayoutGuide *)v117 trailingAnchor];
    v115 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v114 = [(UILayoutGuide *)v115 trailingAnchor];
    v113 = [(NSLayoutXAxisAnchor *)v116 constraintEqualToAnchor:0.0 constant:?];
    v177[12] = v113;
    v112 = [(CPSPrimaryManeuverView *)self labelCenteringLayoutGuide];
    v111 = [(UILayoutGuide *)v112 bottomAnchor];
    v110 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v109 = [(UILayoutGuide *)v110 bottomAnchor];
    v108 = [(NSLayoutYAxisAnchor *)v111 constraintLessThanOrEqualToAnchor:0.0 constant:?];
    v177[13] = v108;
    v107 = [(CPSPrimaryManeuverView *)self titleLabel];
    v106 = [(CPSAbridgableLabel *)v107 leadingAnchor];
    v105 = [(CPSPrimaryManeuverView *)self labelCenteringLayoutGuide];
    v104 = [(UILayoutGuide *)v105 leadingAnchor];
    v103 = [v106 constraintEqualToAnchor:?];
    v177[14] = v103;
    v102 = [(CPSPrimaryManeuverView *)self titleLabel];
    v101 = [(CPSAbridgableLabel *)v102 topAnchor];
    v100 = [(CPSPrimaryManeuverView *)self labelCenteringLayoutGuide];
    v99 = [(UILayoutGuide *)v100 topAnchor];
    v98 = [v101 constraintEqualToAnchor:?];
    v177[15] = v98;
    v97 = [(CPSPrimaryManeuverView *)self titleLabel];
    v96 = [(CPSAbridgableLabel *)v97 trailingAnchor];
    v95 = [(CPSPrimaryManeuverView *)self labelCenteringLayoutGuide];
    v94 = [(UILayoutGuide *)v95 trailingAnchor];
    v93 = [v96 constraintLessThanOrEqualToAnchor:?];
    v177[16] = v93;
    v92 = [(CPSPrimaryManeuverView *)self titleLabel];
    v91 = [(CPSAbridgableLabel *)v92 bottomAnchor];
    v90 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    v89 = [(CPSAbridgableLabel *)v90 topAnchor];
    v88 = [v91 constraintEqualToAnchor:-2.0 constant:?];
    v177[17] = v88;
    v87 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    v86 = [(CPSAbridgableLabel *)v87 leadingAnchor];
    v85 = [(CPSPrimaryManeuverView *)self labelCenteringLayoutGuide];
    v84 = [(UILayoutGuide *)v85 leadingAnchor];
    v83 = [v86 constraintEqualToAnchor:?];
    v177[18] = v83;
    v82 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    v81 = [(CPSAbridgableLabel *)v82 trailingAnchor];
    v80 = [(CPSPrimaryManeuverView *)self labelCenteringLayoutGuide];
    v79 = [(UILayoutGuide *)v80 trailingAnchor];
    v78 = [v81 constraintLessThanOrEqualToAnchor:?];
    v177[19] = v78;
    v77 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    v76 = [(CPSAbridgableLabel *)v77 bottomAnchor];
    v75 = [(CPSPrimaryManeuverView *)self labelCenteringLayoutGuide];
    v74 = [(UILayoutGuide *)v75 bottomAnchor];
    v73 = [v76 constraintLessThanOrEqualToAnchor:?];
    v177[20] = v73;
    v72 = [(CPSPrimaryManeuverView *)self junctionImageView];
    v71 = [(CPSAspectFitImageView *)v72 heightAnchor];
    v70 = [v71 constraintEqualToConstant:0.0];
    v177[21] = v70;
    v175 = [MEMORY[0x277CBEA60] arrayWithObjects:v177 count:22];
    MEMORY[0x277D82BD8](v70);
    MEMORY[0x277D82BD8](v71);
    MEMORY[0x277D82BD8](v72);
    MEMORY[0x277D82BD8](v73);
    MEMORY[0x277D82BD8](v74);
    MEMORY[0x277D82BD8](v75);
    MEMORY[0x277D82BD8](v76);
    MEMORY[0x277D82BD8](v77);
    MEMORY[0x277D82BD8](v78);
    MEMORY[0x277D82BD8](v79);
    MEMORY[0x277D82BD8](v80);
    MEMORY[0x277D82BD8](v81);
    MEMORY[0x277D82BD8](v82);
    MEMORY[0x277D82BD8](v83);
    MEMORY[0x277D82BD8](v84);
    MEMORY[0x277D82BD8](v85);
    MEMORY[0x277D82BD8](v86);
    MEMORY[0x277D82BD8](v87);
    MEMORY[0x277D82BD8](v88);
    MEMORY[0x277D82BD8](v89);
    MEMORY[0x277D82BD8](v90);
    MEMORY[0x277D82BD8](v91);
    MEMORY[0x277D82BD8](v92);
    MEMORY[0x277D82BD8](v93);
    MEMORY[0x277D82BD8](v94);
    MEMORY[0x277D82BD8](v95);
    MEMORY[0x277D82BD8](v96);
    MEMORY[0x277D82BD8](v97);
    MEMORY[0x277D82BD8](v98);
    MEMORY[0x277D82BD8](v99);
    MEMORY[0x277D82BD8](v100);
    MEMORY[0x277D82BD8](v101);
    MEMORY[0x277D82BD8](v102);
    MEMORY[0x277D82BD8](v103);
    MEMORY[0x277D82BD8](v104);
    MEMORY[0x277D82BD8](v105);
    MEMORY[0x277D82BD8](v106);
    MEMORY[0x277D82BD8](v107);
    MEMORY[0x277D82BD8](v108);
    MEMORY[0x277D82BD8](v109);
    MEMORY[0x277D82BD8](v110);
    MEMORY[0x277D82BD8](v111);
    MEMORY[0x277D82BD8](v112);
    MEMORY[0x277D82BD8](v113);
    MEMORY[0x277D82BD8](v114);
    MEMORY[0x277D82BD8](v115);
    MEMORY[0x277D82BD8](v116);
    MEMORY[0x277D82BD8](v117);
    MEMORY[0x277D82BD8](v118);
    MEMORY[0x277D82BD8](v119);
    MEMORY[0x277D82BD8](v120);
    MEMORY[0x277D82BD8](v121);
    MEMORY[0x277D82BD8](v122);
    MEMORY[0x277D82BD8](v123);
    MEMORY[0x277D82BD8](v124);
    MEMORY[0x277D82BD8](v125);
    MEMORY[0x277D82BD8](v126);
    MEMORY[0x277D82BD8](v127);
    MEMORY[0x277D82BD8](v128);
    MEMORY[0x277D82BD8](v129);
    MEMORY[0x277D82BD8](v130);
    MEMORY[0x277D82BD8](v131);
    MEMORY[0x277D82BD8](v132);
    MEMORY[0x277D82BD8](v133);
    MEMORY[0x277D82BD8](v134);
    MEMORY[0x277D82BD8](v135);
    MEMORY[0x277D82BD8](v136);
    MEMORY[0x277D82BD8](v137);
    MEMORY[0x277D82BD8](v138);
    MEMORY[0x277D82BD8](v139);
    MEMORY[0x277D82BD8](v140);
    MEMORY[0x277D82BD8](v141);
    MEMORY[0x277D82BD8](v142);
    MEMORY[0x277D82BD8](v143);
    MEMORY[0x277D82BD8](v144);
    MEMORY[0x277D82BD8](v145);
    MEMORY[0x277D82BD8](v146);
    MEMORY[0x277D82BD8](v147);
    MEMORY[0x277D82BD8](v148);
    MEMORY[0x277D82BD8](v149);
    MEMORY[0x277D82BD8](v150);
    MEMORY[0x277D82BD8](v151);
    MEMORY[0x277D82BD8](v152);
    MEMORY[0x277D82BD8](v153);
    MEMORY[0x277D82BD8](v154);
    MEMORY[0x277D82BD8](v155);
    MEMORY[0x277D82BD8](v156);
    MEMORY[0x277D82BD8](v157);
    MEMORY[0x277D82BD8](v158);
    MEMORY[0x277D82BD8](v159);
    MEMORY[0x277D82BD8](v160);
    MEMORY[0x277D82BD8](v161);
    MEMORY[0x277D82BD8](v162);
    MEMORY[0x277D82BD8](v163);
    MEMORY[0x277D82BD8](v164);
    MEMORY[0x277D82BD8](v165);
    MEMORY[0x277D82BD8](v166);
    MEMORY[0x277D82BD8](v167);
    MEMORY[0x277D82BD8](v168);
    MEMORY[0x277D82BD8](v169);
    MEMORY[0x277D82BD8](v170);
  }

  else
  {
    v69 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v68 = [(UILayoutGuide *)v69 centerYAnchor];
    v67 = [(CPSPrimaryManeuverView *)self centerYAnchor];
    v66 = [(NSLayoutYAxisAnchor *)v68 constraintEqualToAnchor:?];
    v176[0] = v66;
    v65 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v64 = [(UILayoutGuide *)v65 leadingAnchor];
    v63 = [(CPSPrimaryManeuverView *)self leadingAnchor];
    v62 = [(NSLayoutXAxisAnchor *)v64 constraintEqualToAnchor:13.0 constant:?];
    v176[1] = v62;
    v61 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v60 = [(UILayoutGuide *)v61 trailingAnchor];
    v59 = [(CPSPrimaryManeuverView *)self trailingAnchor];
    v58 = [(NSLayoutXAxisAnchor *)v60 constraintEqualToAnchor:-13.0 constant:?];
    v176[2] = v58;
    v57 = [(CPSPrimaryManeuverView *)self topAnchor];
    v56 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v55 = [(UILayoutGuide *)v56 topAnchor];
    v7 = _UISolariumEnabled();
    v8 = 10.0;
    if ((v7 & 1) == 0)
    {
      v8 = 4.0;
    }

    v54 = [v57 constraintLessThanOrEqualToAnchor:v55 constant:-v8];
    v176[3] = v54;
    v53 = [(CPSPrimaryManeuverView *)self bottomAnchor];
    v52 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v51 = [(UILayoutGuide *)v52 bottomAnchor];
    v9 = _UISolariumEnabled();
    v10 = 10.0;
    if ((v9 & 1) == 0)
    {
      v10 = 4.0;
    }

    v50 = [v53 constraintGreaterThanOrEqualToAnchor:v51 constant:v10];
    v176[4] = v50;
    v49 = [(CPSPrimaryManeuverView *)self titleLabel];
    v48 = [(CPSAbridgableLabel *)v49 topAnchor];
    v47 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v46 = [(UILayoutGuide *)v47 topAnchor];
    v45 = [v48 constraintEqualToAnchor:? constant:?];
    v176[5] = v45;
    v44 = [(CPSPrimaryManeuverView *)self titleLabel];
    v43 = [(CPSAbridgableLabel *)v44 leadingAnchor];
    v42 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v41 = [(UILayoutGuide *)v42 leadingAnchor];
    v40 = [v43 constraintEqualToAnchor:? constant:?];
    v176[6] = v40;
    v39 = [(CPSPrimaryManeuverView *)self titleLabel];
    v38 = [(CPSAbridgableLabel *)v39 trailingAnchor];
    v37 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v36 = [(UILayoutGuide *)v37 trailingAnchor];
    v35 = [v38 constraintLessThanOrEqualToAnchor:? constant:?];
    v176[7] = v35;
    v34 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    v33 = [(CPSAbridgableLabel *)v34 leadingAnchor];
    v32 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v31 = [(UILayoutGuide *)v32 leadingAnchor];
    v30 = [v33 constraintEqualToAnchor:8.0 constant:?];
    v176[8] = v30;
    v29 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    v28 = [(CPSAbridgableLabel *)v29 trailingAnchor];
    v27 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v26 = [(UILayoutGuide *)v27 trailingAnchor];
    v25 = [v28 constraintLessThanOrEqualToAnchor:-8.0 constant:?];
    v176[9] = v25;
    v24 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    v23 = [(CPSAbridgableLabel *)v24 topAnchor];
    v22 = [(CPSPrimaryManeuverView *)self titleLabel];
    v21 = [(CPSAbridgableLabel *)v22 bottomAnchor];
    v20 = [v23 constraintEqualToAnchor:4.0 constant:?];
    v176[10] = v20;
    v19 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    v18 = [(CPSAbridgableLabel *)v19 bottomAnchor];
    v17 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    v16 = [(UILayoutGuide *)v17 bottomAnchor];
    v15 = [v18 constraintEqualToAnchor:0.0 constant:?];
    v176[11] = v15;
    v14 = [(CPSPrimaryManeuverView *)self junctionImageView];
    v13 = [(CPSAspectFitImageView *)v14 heightAnchor];
    v12 = [v13 constraintEqualToConstant:0.0];
    v176[12] = v12;
    v175 = [MEMORY[0x277CBEA60] arrayWithObjects:v176 count:13];
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
    MEMORY[0x277D82BD8](v58);
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
  }

  return v175;
}

- (id)_minimalLayoutConstraints
{
  v91[20] = *MEMORY[0x277D85DE8];
  v89 = [(CPSPrimaryManeuverView *)self heightAnchor];
  v88 = [v89 constraintGreaterThanOrEqualToConstant:50.0];
  v91[0] = v88;
  v87 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v86 = [(UILayoutGuide *)v87 centerYAnchor];
  v85 = [(CPSPrimaryManeuverView *)self centerYAnchor];
  v84 = [(NSLayoutYAxisAnchor *)v86 constraintEqualToAnchor:?];
  v91[1] = v84;
  v83 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v82 = [(UILayoutGuide *)v83 leadingAnchor];
  v81 = [(CPSPrimaryManeuverView *)self leadingAnchor];
  v80 = [(NSLayoutXAxisAnchor *)v82 constraintEqualToAnchor:13.0 constant:?];
  v91[2] = v80;
  v79 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v78 = [(UILayoutGuide *)v79 trailingAnchor];
  v77 = [(CPSPrimaryManeuverView *)self trailingAnchor];
  v76 = [(NSLayoutXAxisAnchor *)v78 constraintEqualToAnchor:-13.0 constant:?];
  v91[3] = v76;
  v75 = [(CPSPrimaryManeuverView *)self topAnchor];
  v74 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v73 = [(UILayoutGuide *)v74 topAnchor];
  v72 = [v75 constraintLessThanOrEqualToAnchor:?];
  v91[4] = v72;
  v71 = [(CPSPrimaryManeuverView *)self bottomAnchor];
  v70 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v69 = [(UILayoutGuide *)v70 bottomAnchor];
  v68 = [v71 constraintGreaterThanOrEqualToAnchor:?];
  v91[5] = v68;
  v67 = [(CPSPrimaryManeuverView *)self symbolImageView];
  v66 = [(UIImageView *)v67 topAnchor];
  v65 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v64 = [(UILayoutGuide *)v65 topAnchor];
  v63 = [v66 constraintEqualToAnchor:? constant:?];
  v91[6] = v63;
  v62 = [(CPSPrimaryManeuverView *)self symbolImageView];
  v61 = [(UIImageView *)v62 leadingAnchor];
  v60 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v59 = [(UILayoutGuide *)v60 leadingAnchor];
  v58 = [v61 constraintEqualToAnchor:? constant:?];
  v91[7] = v58;
  v57 = [(CPSPrimaryManeuverView *)self symbolImageView];
  v56 = [(UIImageView *)v57 bottomAnchor];
  v55 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v54 = [(UILayoutGuide *)v55 bottomAnchor];
  v53 = [v56 constraintEqualToAnchor:0.0 constant:?];
  v91[8] = v53;
  v52 = [(CPSPrimaryManeuverView *)self symbolImageView];
  v51 = [(UIImageView *)v52 heightAnchor];
  [(CPSPrimaryManeuverView *)self symbolImageHeight];
  v50 = [v51 constraintLessThanOrEqualToConstant:?];
  v91[9] = v50;
  v49 = [(CPSPrimaryManeuverView *)self titleLabel];
  v48 = [(CPSAbridgableLabel *)v49 leadingAnchor];
  v47 = [(CPSPrimaryManeuverView *)self symbolImageView];
  v46 = [(UIImageView *)v47 trailingAnchor];
  v45 = [v48 constraintEqualToAnchor:8.0 constant:?];
  v91[10] = v45;
  v44 = [(CPSPrimaryManeuverView *)self titleLabel];
  v43 = [(CPSAbridgableLabel *)v44 centerYAnchor];
  v42 = [(CPSPrimaryManeuverView *)self symbolImageView];
  v41 = [(UIImageView *)v42 centerYAnchor];
  v40 = [v43 constraintEqualToAnchor:?];
  v91[11] = v40;
  v39 = [(CPSPrimaryManeuverView *)self titleLabel];
  v38 = [(CPSAbridgableLabel *)v39 trailingAnchor];
  v37 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v36 = [(UILayoutGuide *)v37 trailingAnchor];
  v35 = [v38 constraintLessThanOrEqualToAnchor:? constant:?];
  v91[12] = v35;
  v34 = [(CPSPrimaryManeuverView *)self titleLabel];
  v33 = [(CPSAbridgableLabel *)v34 bottomAnchor];
  v32 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v31 = [(UILayoutGuide *)v32 bottomAnchor];
  v30 = [v33 constraintLessThanOrEqualToAnchor:?];
  v91[13] = v30;
  v29 = [(CPSPrimaryManeuverView *)self subtitleLabel];
  v28 = [(CPSAbridgableLabel *)v29 leadingAnchor];
  v27 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v26 = [(UILayoutGuide *)v27 leadingAnchor];
  v25 = [v28 constraintEqualToAnchor:8.0 constant:?];
  v91[14] = v25;
  v24 = [(CPSPrimaryManeuverView *)self subtitleLabel];
  v23 = [(CPSAbridgableLabel *)v24 topAnchor];
  v22 = [(CPSPrimaryManeuverView *)self titleLabel];
  v21 = [(CPSAbridgableLabel *)v22 bottomAnchor];
  v20 = [v23 constraintEqualToAnchor:0.0 constant:?];
  v91[15] = v20;
  v19 = [(CPSPrimaryManeuverView *)self subtitleLabel];
  v18 = [(CPSAbridgableLabel *)v19 bottomAnchor];
  v17 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v16 = [(UILayoutGuide *)v17 bottomAnchor];
  v15 = [v18 constraintEqualToAnchor:0.0 constant:?];
  v91[16] = v15;
  v14 = [(CPSPrimaryManeuverView *)self subtitleLabel];
  v13 = [(CPSAbridgableLabel *)v14 trailingAnchor];
  v12 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v11 = [(UILayoutGuide *)v12 trailingAnchor];
  v10 = [v13 constraintLessThanOrEqualToAnchor:-8.0 constant:?];
  v91[17] = v10;
  v9 = [(CPSPrimaryManeuverView *)self subtitleLabel];
  v8 = [(CPSAbridgableLabel *)v9 heightAnchor];
  v7 = [v8 constraintEqualToConstant:0.0];
  v91[18] = v7;
  v6 = [(CPSPrimaryManeuverView *)self junctionImageView];
  v5 = [(CPSAspectFitImageView *)v6 heightAnchor];
  v3 = [v5 constraintEqualToConstant:0.0];
  v91[19] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:20];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
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
  MEMORY[0x277D82BD8](v58);
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
  MEMORY[0x277D82BD8](v71);
  MEMORY[0x277D82BD8](v72);
  MEMORY[0x277D82BD8](v73);
  MEMORY[0x277D82BD8](v74);
  MEMORY[0x277D82BD8](v75);
  MEMORY[0x277D82BD8](v76);
  MEMORY[0x277D82BD8](v77);
  MEMORY[0x277D82BD8](v78);
  MEMORY[0x277D82BD8](v79);
  MEMORY[0x277D82BD8](v80);
  MEMORY[0x277D82BD8](v81);
  MEMORY[0x277D82BD8](v82);
  MEMORY[0x277D82BD8](v83);
  MEMORY[0x277D82BD8](v84);
  MEMORY[0x277D82BD8](v85);
  MEMORY[0x277D82BD8](v86);
  MEMORY[0x277D82BD8](v87);
  MEMORY[0x277D82BD8](v88);
  MEMORY[0x277D82BD8](v89);

  return v4;
}

- (id)_minimalLayoutWideImageConstraints
{
  v99[21] = *MEMORY[0x277D85DE8];
  v97 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v96 = [(UILayoutGuide *)v97 centerYAnchor];
  v95 = [(CPSPrimaryManeuverView *)self centerYAnchor];
  v94 = [(NSLayoutYAxisAnchor *)v96 constraintEqualToAnchor:?];
  v99[0] = v94;
  v93 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v92 = [(UILayoutGuide *)v93 leadingAnchor];
  v91 = [(CPSPrimaryManeuverView *)self leadingAnchor];
  v90 = [(NSLayoutXAxisAnchor *)v92 constraintEqualToAnchor:13.0 constant:?];
  v99[1] = v90;
  v89 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v88 = [(UILayoutGuide *)v89 trailingAnchor];
  v87 = [(CPSPrimaryManeuverView *)self trailingAnchor];
  v86 = [(NSLayoutXAxisAnchor *)v88 constraintEqualToAnchor:-13.0 constant:?];
  v99[2] = v86;
  v85 = [(CPSPrimaryManeuverView *)self topAnchor];
  v84 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v83 = [(UILayoutGuide *)v84 topAnchor];
  v82 = [v85 constraintLessThanOrEqualToAnchor:?];
  v99[3] = v82;
  v81 = [(CPSPrimaryManeuverView *)self bottomAnchor];
  v80 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v79 = [(UILayoutGuide *)v80 bottomAnchor];
  v78 = [v81 constraintGreaterThanOrEqualToAnchor:?];
  v99[4] = v78;
  v77 = [(CPSPrimaryManeuverView *)self symbolImageView];
  v76 = [(UIImageView *)v77 topAnchor];
  v75 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v74 = [(UILayoutGuide *)v75 topAnchor];
  v73 = [v76 constraintEqualToAnchor:? constant:?];
  v99[5] = v73;
  v72 = [(CPSPrimaryManeuverView *)self symbolImageView];
  v71 = [(UIImageView *)v72 leadingAnchor];
  v70 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v69 = [(UILayoutGuide *)v70 leadingAnchor];
  v68 = [v71 constraintGreaterThanOrEqualToAnchor:0.0 constant:?];
  v99[6] = v68;
  v67 = [(CPSPrimaryManeuverView *)self symbolImageView];
  v66 = [(UIImageView *)v67 trailingAnchor];
  v65 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v64 = [(UILayoutGuide *)v65 trailingAnchor];
  v63 = [v66 constraintLessThanOrEqualToAnchor:0.0 constant:?];
  v99[7] = v63;
  v62 = [(CPSPrimaryManeuverView *)self symbolImageView];
  v61 = [(UIImageView *)v62 centerXAnchor];
  v60 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v59 = [(UILayoutGuide *)v60 centerXAnchor];
  v58 = [v61 constraintEqualToAnchor:?];
  v99[8] = v58;
  v57 = [(CPSPrimaryManeuverView *)self symbolImageView];
  v56 = [(UIImageView *)v57 widthAnchor];
  v55 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v54 = [(UILayoutGuide *)v55 widthAnchor];
  v53 = [v56 constraintLessThanOrEqualToAnchor:?];
  v99[9] = v53;
  v52 = [(CPSPrimaryManeuverView *)self symbolImageView];
  v51 = [(UIImageView *)v52 heightAnchor];
  [(CPSPrimaryManeuverView *)self symbolImageHeight];
  v50 = [v51 constraintLessThanOrEqualToConstant:?];
  v99[10] = v50;
  v49 = [(CPSPrimaryManeuverView *)self titleLabel];
  v48 = [(CPSAbridgableLabel *)v49 leadingAnchor];
  v47 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v46 = [(UILayoutGuide *)v47 leadingAnchor];
  v45 = [v48 constraintEqualToAnchor:? constant:?];
  v99[11] = v45;
  v44 = [(CPSPrimaryManeuverView *)self titleLabel];
  v43 = [(CPSAbridgableLabel *)v44 topAnchor];
  v42 = [(CPSPrimaryManeuverView *)self symbolImageView];
  v41 = [(UIImageView *)v42 bottomAnchor];
  v40 = [v43 constraintEqualToAnchor:?];
  v99[12] = v40;
  v39 = [(CPSPrimaryManeuverView *)self titleLabel];
  v38 = [(CPSAbridgableLabel *)v39 trailingAnchor];
  v37 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v36 = [(UILayoutGuide *)v37 trailingAnchor];
  v35 = [v38 constraintLessThanOrEqualToAnchor:? constant:?];
  v99[13] = v35;
  v34 = [(CPSPrimaryManeuverView *)self titleLabel];
  v33 = [(CPSAbridgableLabel *)v34 bottomAnchor];
  v32 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v31 = [(UILayoutGuide *)v32 bottomAnchor];
  v30 = [v33 constraintLessThanOrEqualToAnchor:?];
  v99[14] = v30;
  v29 = [(CPSPrimaryManeuverView *)self subtitleLabel];
  v28 = [(CPSAbridgableLabel *)v29 leadingAnchor];
  v27 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v26 = [(UILayoutGuide *)v27 leadingAnchor];
  v25 = [v28 constraintEqualToAnchor:8.0 constant:?];
  v99[15] = v25;
  v24 = [(CPSPrimaryManeuverView *)self subtitleLabel];
  v23 = [(CPSAbridgableLabel *)v24 topAnchor];
  v22 = [(CPSPrimaryManeuverView *)self titleLabel];
  v21 = [(CPSAbridgableLabel *)v22 bottomAnchor];
  v20 = [v23 constraintEqualToAnchor:0.0 constant:?];
  v99[16] = v20;
  v19 = [(CPSPrimaryManeuverView *)self subtitleLabel];
  v18 = [(CPSAbridgableLabel *)v19 bottomAnchor];
  v17 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v16 = [(UILayoutGuide *)v17 bottomAnchor];
  v15 = [v18 constraintEqualToAnchor:0.0 constant:?];
  v99[17] = v15;
  v14 = [(CPSPrimaryManeuverView *)self subtitleLabel];
  v13 = [(CPSAbridgableLabel *)v14 trailingAnchor];
  v12 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  v11 = [(UILayoutGuide *)v12 trailingAnchor];
  v10 = [v13 constraintLessThanOrEqualToAnchor:-8.0 constant:?];
  v99[18] = v10;
  v9 = [(CPSPrimaryManeuverView *)self subtitleLabel];
  v8 = [(CPSAbridgableLabel *)v9 heightAnchor];
  v7 = [v8 constraintEqualToConstant:0.0];
  v99[19] = v7;
  v6 = [(CPSPrimaryManeuverView *)self junctionImageView];
  v5 = [(CPSAspectFitImageView *)v6 heightAnchor];
  v3 = [v5 constraintEqualToConstant:0.0];
  v99[20] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v99 count:21];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
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
  MEMORY[0x277D82BD8](v58);
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
  MEMORY[0x277D82BD8](v71);
  MEMORY[0x277D82BD8](v72);
  MEMORY[0x277D82BD8](v73);
  MEMORY[0x277D82BD8](v74);
  MEMORY[0x277D82BD8](v75);
  MEMORY[0x277D82BD8](v76);
  MEMORY[0x277D82BD8](v77);
  MEMORY[0x277D82BD8](v78);
  MEMORY[0x277D82BD8](v79);
  MEMORY[0x277D82BD8](v80);
  MEMORY[0x277D82BD8](v81);
  MEMORY[0x277D82BD8](v82);
  MEMORY[0x277D82BD8](v83);
  MEMORY[0x277D82BD8](v84);
  MEMORY[0x277D82BD8](v85);
  MEMORY[0x277D82BD8](v86);
  MEMORY[0x277D82BD8](v87);
  MEMORY[0x277D82BD8](v88);
  MEMORY[0x277D82BD8](v89);
  MEMORY[0x277D82BD8](v90);
  MEMORY[0x277D82BD8](v91);
  MEMORY[0x277D82BD8](v92);
  MEMORY[0x277D82BD8](v93);
  MEMORY[0x277D82BD8](v94);
  MEMORY[0x277D82BD8](v95);
  MEMORY[0x277D82BD8](v96);
  MEMORY[0x277D82BD8](v97);

  return v4;
}

- (void)_switchToLayoutConfiguration:(id)a3
{
  v43 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v34 = location[0];
  v35 = [(CPSPrimaryManeuverView *)v43 activeLayoutConfiguration];
  v36 = 0;
  if ([v34 isEqual:?])
  {
    v36 = v43->_activeLayoutConstraints != 0;
  }

  *&v3 = MEMORY[0x277D82BD8](v35).n128_u64[0];
  if (v36)
  {
    v41 = CarPlaySupportGeneralLogging();
    v40 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v41;
      v33 = v40;
      __os_log_helper_16_0_0(v39);
      _os_log_impl(&dword_242FE8000, v32, v33, "Maneuver already using this layout, skipping", v39, 2u);
    }

    objc_storeStrong(&v41, 0);
    v38 = 1;
  }

  else
  {
    [(CPSPrimaryManeuverView *)v43 setActiveLayoutConfiguration:location[0], v3];
    v37 = [(CPSPrimaryManeuverView *)v43 _formattedDistance];
    if (v37)
    {
      v29 = [(CPSPrimaryManeuverView *)v43 titleLabel];
      v28 = [(CPSPrimaryManeuverView *)v43 _titleFont];
      [(CPSAbridgableLabel *)v29 setFont:?];
      MEMORY[0x277D82BD8](v28);
      *&v4 = MEMORY[0x277D82BD8](v29).n128_u64[0];
      v30 = [(CPSPrimaryManeuverView *)v43 titleLabel];
      [(CPUIAbridgableLabel *)v30 setText:v37];
      *&v5 = MEMORY[0x277D82BD8](v30).n128_u64[0];
      v31 = [location[0] attributedInstruction];
      *&v6 = MEMORY[0x277D82BD8](v31).n128_u64[0];
      if (v31)
      {
        v27 = [(CPSPrimaryManeuverView *)v43 subtitleLabel];
        v26 = [location[0] attributedInstruction];
        [(CPUIAbridgableLabel *)v27 setAttributedText:?];
        MEMORY[0x277D82BD8](v26);
        v7 = MEMORY[0x277D82BD8](v27).n128_u64[0];
      }

      else
      {
        v25 = [(CPSPrimaryManeuverView *)v43 subtitleLabel];
        v24 = [location[0] instruction];
        [(CPUIAbridgableLabel *)v25 setText:?];
        MEMORY[0x277D82BD8](v24);
        v7 = MEMORY[0x277D82BD8](v25).n128_u64[0];
      }
    }

    else
    {
      v22 = [(CPSPrimaryManeuverView *)v43 titleLabel];
      v21 = [(CPSPrimaryManeuverView *)v43 _subtitleFont];
      [(CPSAbridgableLabel *)v22 setFont:?];
      MEMORY[0x277D82BD8](v21);
      *&v8 = MEMORY[0x277D82BD8](v22).n128_u64[0];
      v23 = [location[0] attributedInstruction];
      *&v9 = MEMORY[0x277D82BD8](v23).n128_u64[0];
      if (v23)
      {
        v20 = [(CPSPrimaryManeuverView *)v43 titleLabel];
        v19 = [location[0] attributedInstruction];
        [(CPUIAbridgableLabel *)v20 setAttributedText:?];
        MEMORY[0x277D82BD8](v19);
        v7 = MEMORY[0x277D82BD8](v20).n128_u64[0];
      }

      else
      {
        v18 = [(CPSPrimaryManeuverView *)v43 titleLabel];
        v17 = [location[0] instruction];
        [(CPUIAbridgableLabel *)v18 setText:?];
        MEMORY[0x277D82BD8](v17);
        v7 = MEMORY[0x277D82BD8](v18).n128_u64[0];
      }
    }

    v13 = [(CPSPrimaryManeuverView *)v43 symbolImageView];
    v12 = [location[0] symbolImage];
    [(UIImageView *)v13 setImage:?];
    MEMORY[0x277D82BD8](v12);
    *&v10 = MEMORY[0x277D82BD8](v13).n128_u64[0];
    v15 = [location[0] junctionImage];
    v14 = [(CPSPrimaryManeuverView *)v43 junctionImageView];
    [(CPSAspectFitImageView *)v14 setImage:v15];
    MEMORY[0x277D82BD8](v14);
    *&v11 = MEMORY[0x277D82BD8](v15).n128_u64[0];
    v16 = [location[0] layout];
    switch(v16)
    {
      case 1:
        [(CPSPrimaryManeuverView *)v43 _activateFullLayoutConstraints];
        break;
      case 2:
        [(CPSPrimaryManeuverView *)v43 _activateFullLayoutWideImageConstraints];
        break;
      case 3:
        [(CPSPrimaryManeuverView *)v43 _activateJunctionViewNoInstructionConstraints];
        break;
      case 4:
        [(CPSPrimaryManeuverView *)v43 _activateJunctionViewNoInstructionWideImageConstraints];
        break;
      case 5:
        [(CPSPrimaryManeuverView *)v43 _activateFullNoJunctionViewLayoutConstraints];
        break;
      case 6:
        [(CPSPrimaryManeuverView *)v43 _activateFullNoJunctionViewWideImageLayoutConstraints];
        break;
      case 7:
        [(CPSPrimaryManeuverView *)v43 _activateFullSubtitleNextToImageConstraints];
        break;
      case 8:
        [(CPSPrimaryManeuverView *)v43 _activateMinimalWideImageLayoutConstraints];
        break;
      case 9:
        [(CPSPrimaryManeuverView *)v43 _activateMinimalLayoutConstraints];
        break;
    }

    objc_storeStrong(&v37, 0);
    v38 = 0;
  }

  objc_storeStrong(location, 0);
}

- (id)_formattedDistance
{
  v9 = self;
  location[1] = a2;
  v7 = [(CPSPrimaryManeuverView *)self currentTravelEstimates];
  location[0] = [(CPTravelEstimates *)v7 distanceRemaining];
  *&v2 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (!location[0])
  {
    v6 = [(CPSPrimaryManeuverView *)v9 maneuver];
    v5 = [(CPManeuver *)v6 initialTravelEstimates];
    location[0] = [(CPTravelEstimates *)v5 distanceRemaining];
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
  }

  if (location[0])
  {
    v10 = CPSFormattedDistanceWithMediumUnit(location[0]);
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong(location, 0);
  v3 = v10;

  return v3;
}

- (void)setUsesCustomBackgroundColor:(BOOL)a3
{
  if (self->_usesCustomBackgroundColor != a3)
  {
    self->_usesCustomBackgroundColor = a3;
    [(CPSPrimaryManeuverView *)self _updateLabelTextColors];
    [(CPSPrimaryManeuverView *)self _updateJunctionBackgroundColor];
  }
}

- (void)_updateLabelTextColors
{
  v15 = self;
  location[1] = a2;
  objc_initWeak(location, self);
  v6 = [(CPSPrimaryManeuverView *)v15 subtitleLabel];
  v7 = MEMORY[0x277D75348];
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __48__CPSPrimaryManeuverView__updateLabelTextColors__block_invoke;
  v12 = &unk_278D927E8;
  objc_copyWeak(v13, location);
  v5 = [v7 colorWithDynamicProvider:&v8];
  [(CPSAbridgableLabel *)v6 setTextColor:?];
  MEMORY[0x277D82BD8](v5);
  *&v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  v4 = [(CPSPrimaryManeuverView *)v15 titleLabel];
  v3 = [MEMORY[0x277D75348] colorWithDynamicProvider:&__block_literal_global_5];
  [(CPSAbridgableLabel *)v4 setTextColor:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  objc_destroyWeak(v13);
  objc_destroyWeak(location);
}

id __48__CPSPrimaryManeuverView__updateLabelTextColors__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6[1] = a1;
  v6[0] = objc_loadWeakRetained(a1 + 4);
  if ([v6[0] usesCustomBackgroundColor])
  {
    v8 = [MEMORY[0x277D75348] labelColor];
  }

  else
  {
    v4 = [MEMORY[0x277D75348] labelColor];
    v8 = [v4 colorWithAlphaComponent:0.75];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(v6, 0);
  objc_storeStrong(location, 0);
  v2 = v8;

  return v2;
}

id __48__CPSPrimaryManeuverView__updateLabelTextColors__block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [MEMORY[0x277D75348] labelColor];
  objc_storeStrong(location, 0);

  return v3;
}

- (void)_updateJunctionBackgroundColor
{
  v4 = self;
  v3[1] = a2;
  v3[0] = [(CPSPrimaryManeuverView *)self junctionBackgroundColor];
  v2 = [(CPSPrimaryManeuverView *)v4 junctionImageBackgroundView];
  [(UIView *)v2 setBackgroundColor:v3[0]];
  MEMORY[0x277D82BD8](v2);
  objc_storeStrong(v3, 0);
}

- (id)junctionBackgroundColor
{
  if ([(CPSPrimaryManeuverView *)self usesCustomBackgroundColor])
  {
    v3 = MEMORY[0x277D75348];
    v5 = CPSFrameworkBundle();
    v4 = [(CPSPrimaryManeuverView *)self traitCollection];
    v7 = [v3 colorNamed:@"GuidanceColor30AlphaLightWhiteDarkBlack" inBundle:v5 compatibleWithTraitCollection:?];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
  }

  else
  {
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.247058824 alpha:1.0];
  }

  return v7;
}

@end