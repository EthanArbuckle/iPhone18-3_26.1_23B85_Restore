@interface CPSPrimaryManeuverView
+ (id)instructionsForManeuver:(id)maneuver;
+ (id)junctionImageForManeuver:(id)maneuver;
+ (id)symbolImageForManeuver:(id)maneuver;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CPSPrimaryManeuverView)initWithManeuver:(id)maneuver;
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
- (id)layoutConfigurationForSize:(CGSize)size;
- (id)shortestInstructionlayoutConfigurationForSize:(CGSize)size;
- (id)shortestJunctionViewlayoutConfigurationForSize:(CGSize)size;
- (int64_t)_compareInstruction:(id)instruction toInstruction:(id)toInstruction;
- (void)_activateFullLayoutConstraints;
- (void)_activateFullLayoutWideImageConstraints;
- (void)_activateFullNoJunctionViewLayoutConstraints;
- (void)_activateFullNoJunctionViewWideImageLayoutConstraints;
- (void)_activateFullSubtitleNextToImageConstraints;
- (void)_activateJunctionViewNoInstructionConstraints;
- (void)_activateJunctionViewNoInstructionWideImageConstraints;
- (void)_activateMinimalLayoutConstraints;
- (void)_activateMinimalWideImageLayoutConstraints;
- (void)_generateLayoutConfigurationsForSizeIfNecessary:(CGSize)necessary force:(BOOL)force;
- (void)_switchToLayoutConfiguration:(id)configuration;
- (void)_updateJunctionBackgroundColor;
- (void)_updateLabelTextColors;
- (void)layoutSubviews;
- (void)setActiveLayoutConfiguration:(id)configuration;
- (void)setActiveLayoutConstraints:(id)constraints;
- (void)setCurrentTravelEstimates:(id)estimates;
- (void)setUsesCustomBackgroundColor:(BOOL)color;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CPSPrimaryManeuverView

- (CPSPrimaryManeuverView)initWithManeuver:(id)maneuver
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, maneuver);
  v3 = selfCopy;
  selfCopy = 0;
  selfCopy = [(CPSPrimaryManeuverView *)v3 _init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_maneuver, location[0]);
    initialTravelEstimates = [location[0] initialTravelEstimates];
    currentTravelEstimates = selfCopy->_currentTravelEstimates;
    selfCopy->_currentTravelEstimates = initialTravelEstimates;
    MEMORY[0x277D82BD8](currentTravelEstimates);
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
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
    _titleFont = [(CPSPrimaryManeuverView *)v47 _titleFont];
    [v44 setFont:?];
    MEMORY[0x277D82BD8](_titleFont);
    [v44 setContentCompressionResistancePriority:? forAxis:?];
    LODWORD(v11) = 1148846080;
    [v44 setContentCompressionResistancePriority:0 forAxis:v11];
    [(CPSPrimaryManeuverView *)v47 addSubview:v44];
    objc_storeStrong(&v47->_titleLabel, v44);
    v43 = objc_alloc_init(CPSAbridgableLabel);
    [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v43 setNumberOfLines:0];
    _subtitleFont = [(CPSPrimaryManeuverView *)v47 _subtitleFont];
    [v43 setFont:?];
    v12 = MEMORY[0x277D82BD8](_subtitleFont);
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
    heightAnchor = [v41 heightAnchor];
    v38 = [heightAnchor constraintLessThanOrEqualToConstant:154.0];
    v49[0] = v38;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];
    [v36 activateConstraints:?];
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v38);
    *&v16 = MEMORY[0x277D82BD8](heightAnchor).n128_u64[0];
    if ([(CPSPrimaryManeuverView *)v47 hasJunctionImageBackground])
    {
      v40 = objc_alloc_init(MEMORY[0x277D75D18]);
      [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(CPSPrimaryManeuverView *)v47 insertSubview:v40 belowSubview:v41];
      objc_storeStrong(&v47->_junctionImageBackgroundView, v40);
      v20 = MEMORY[0x277CCAAD0];
      topAnchor = [v40 topAnchor];
      topAnchor2 = [v41 topAnchor];
      v31 = [topAnchor constraintEqualToAnchor:?];
      v48[0] = v31;
      bottomAnchor = [v40 bottomAnchor];
      bottomAnchor2 = [v41 bottomAnchor];
      v28 = [bottomAnchor constraintEqualToAnchor:?];
      v48[1] = v28;
      leadingAnchor = [v40 leadingAnchor];
      leadingAnchor2 = [(CPSPrimaryManeuverView *)v47 leadingAnchor];
      v25 = [leadingAnchor constraintEqualToAnchor:?];
      v48[2] = v25;
      trailingAnchor = [v40 trailingAnchor];
      trailingAnchor2 = [(CPSPrimaryManeuverView *)v47 trailingAnchor];
      v22 = [trailingAnchor constraintEqualToAnchor:?];
      v48[3] = v22;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:4];
      [v20 activateConstraints:?];
      MEMORY[0x277D82BD8](v21);
      MEMORY[0x277D82BD8](v22);
      MEMORY[0x277D82BD8](trailingAnchor2);
      MEMORY[0x277D82BD8](trailingAnchor);
      MEMORY[0x277D82BD8](v25);
      MEMORY[0x277D82BD8](leadingAnchor2);
      MEMORY[0x277D82BD8](leadingAnchor);
      MEMORY[0x277D82BD8](v28);
      MEMORY[0x277D82BD8](bottomAnchor2);
      MEMORY[0x277D82BD8](bottomAnchor);
      MEMORY[0x277D82BD8](v31);
      MEMORY[0x277D82BD8](topAnchor2);
      *&v17 = MEMORY[0x277D82BD8](topAnchor).n128_u64[0];
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

- (id)layoutConfigurationForSize:(CGSize)size
{
  sizeCopy = size;
  selfCopy = self;
  v16[2] = a2;
  [(CPSPrimaryManeuverView *)self _generateLayoutConfigurationsForSizeIfNecessary:0 force:size.width, size.height];
  v16[1] = *&sizeCopy.height;
  v10 = 0;
  v11 = &v10;
  v12 = 838860800;
  v13 = 48;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16[0] = 0;
  maneuver = [(CPSPrimaryManeuverView *)selfCopy maneuver];
  junctionImage = [(CPManeuver *)maneuver junctionImage];
  MEMORY[0x277D82BD8](junctionImage);
  v3 = MEMORY[0x277D82BD8](maneuver).n128_u64[0];
  if (junctionImage)
  {
    layoutConfigurations = [(CPSPrimaryManeuverView *)selfCopy layoutConfigurations];
    [(NSArray *)layoutConfigurations enumerateObjectsUsingBlock:?];
    v3 = MEMORY[0x277D82BD8](layoutConfigurations).n128_u64[0];
  }

  if (!v11[5])
  {
    layoutConfigurations2 = [(CPSPrimaryManeuverView *)selfCopy layoutConfigurations];
    [(NSArray *)layoutConfigurations2 enumerateObjectsUsingBlock:?];
    MEMORY[0x277D82BD8](layoutConfigurations2);
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

- (id)shortestInstructionlayoutConfigurationForSize:(CGSize)size
{
  sizeCopy = size;
  selfCopy = self;
  v12[2] = a2;
  [(CPSPrimaryManeuverView *)self _generateLayoutConfigurationsForSizeIfNecessary:0 force:size.width, size.height];
  v12[1] = *&sizeCopy.height;
  v6 = 0;
  v7 = &v6;
  v8 = 838860800;
  v9 = 48;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12[0] = 0;
  layoutConfigurations = [(CPSPrimaryManeuverView *)selfCopy layoutConfigurations];
  [(NSArray *)layoutConfigurations enumerateObjectsUsingBlock:?];
  MEMORY[0x277D82BD8](layoutConfigurations);
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

- (id)shortestJunctionViewlayoutConfigurationForSize:(CGSize)size
{
  sizeCopy = size;
  selfCopy = self;
  v12[2] = a2;
  [(CPSPrimaryManeuverView *)self _generateLayoutConfigurationsForSizeIfNecessary:1 force:size.width, size.height];
  v12[1] = *&sizeCopy.height;
  v6 = 0;
  v7 = &v6;
  v8 = 838860800;
  v9 = 48;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12[0] = 0;
  layoutConfigurations = [(CPSPrimaryManeuverView *)selfCopy layoutConfigurations];
  [(NSArray *)layoutConfigurations enumerateObjectsUsingBlock:?];
  MEMORY[0x277D82BD8](layoutConfigurations);
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

- (void)setCurrentTravelEstimates:(id)estimates
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, estimates);
  objc_storeStrong(&selfCopy->_currentTravelEstimates, location[0]);
  _formattedDistance = [(CPSPrimaryManeuverView *)selfCopy _formattedDistance];
  titleLabel = [(CPSPrimaryManeuverView *)selfCopy titleLabel];
  [(CPUIAbridgableLabel *)titleLabel setText:_formattedDistance];
  MEMORY[0x277D82BD8](titleLabel);
  objc_storeStrong(&_formattedDistance, 0);
  objc_storeStrong(location, 0);
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v33 = a2;
  activeLayoutConfiguration = [(CPSPrimaryManeuverView *)self activeLayoutConfiguration];
  *&v2 = MEMORY[0x277D82BD8](activeLayoutConfiguration).n128_u64[0];
  if (activeLayoutConfiguration)
  {
    [(CPSPrimaryManeuverView *)selfCopy bounds];
    v29 = v3;
    v30 = v4;
    v31 = v5;
    v32 = v6;
    activeLayoutConfiguration2 = [(CPSPrimaryManeuverView *)selfCopy activeLayoutConfiguration];
    [(CPSPrimaryManeuverLayoutConfiguration *)activeLayoutConfiguration2 height];
    CGSizeMake_6();
    v35 = v7;
    v36 = v8;
    MEMORY[0x277D82BD8](activeLayoutConfiguration2);
  }

  else
  {
    layoutConfigurationForIntrinsicSizing = [(CPSPrimaryManeuverView *)selfCopy layoutConfigurationForIntrinsicSizing];
    *&v9 = MEMORY[0x277D82BD8](layoutConfigurationForIntrinsicSizing).n128_u64[0];
    if (layoutConfigurationForIntrinsicSizing)
    {
      [(CPSPrimaryManeuverView *)selfCopy bounds];
      v25 = v10;
      v26 = v11;
      v27 = v12;
      v28 = v13;
      layoutConfigurationForIntrinsicSizing2 = [(CPSPrimaryManeuverView *)selfCopy layoutConfigurationForIntrinsicSizing];
      [(CPSPrimaryManeuverLayoutConfiguration *)layoutConfigurationForIntrinsicSizing2 height];
      CGSizeMake_6();
      v35 = v14;
      v36 = v15;
      MEMORY[0x277D82BD8](layoutConfigurationForIntrinsicSizing2);
    }

    else
    {
      v24.receiver = selfCopy;
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

- (void)setActiveLayoutConfiguration:(id)configuration
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  if (selfCopy->_activeLayoutConfiguration != location[0])
  {
    objc_storeStrong(&selfCopy->_activeLayoutConfiguration, location[0]);
    [(CPSPrimaryManeuverView *)selfCopy invalidateIntrinsicContentSize];
  }

  objc_storeStrong(location, 0);
}

- (void)layoutSubviews
{
  selfCopy = self;
  v9 = a2;
  v8.receiver = self;
  v8.super_class = CPSPrimaryManeuverView;
  [(CPSPrimaryManeuverView *)&v8 layoutSubviews];
  if (![(CPSPrimaryManeuverView *)selfCopy calculationViewIsSizing])
  {
    v6 = selfCopy;
    [(CPSPrimaryManeuverView *)selfCopy bounds];
    lastObject = [(CPSPrimaryManeuverView *)v6 layoutConfigurationForSize:v2, v3];
    if (!lastObject)
    {
      layoutConfigurations = [(CPSPrimaryManeuverView *)selfCopy layoutConfigurations];
      lastObject = [(NSArray *)layoutConfigurations lastObject];
      MEMORY[0x277D82BD8](0);
      MEMORY[0x277D82BD8](layoutConfigurations);
    }

    [(CPSPrimaryManeuverView *)selfCopy _switchToLayoutConfiguration:lastObject, &lastObject];
    objc_storeStrong(location, 0);
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  fitsCopy = fits;
  selfCopy = self;
  v11 = a2;
  v14 = 0.0;
  v15 = 0.0;
  v10.receiver = self;
  v10.super_class = CPSPrimaryManeuverView;
  [(CPSPrimaryManeuverView *)&v10 sizeThatFits:fits.width, fits.height];
  v14 = v3;
  v15 = v4;
  location = [(CPSPrimaryManeuverView *)selfCopy layoutConfigurationForSize:fitsCopy.width, fitsCopy.height];
  if (!location)
  {
    layoutConfigurations = [(CPSPrimaryManeuverView *)selfCopy layoutConfigurations];
    location = [(NSArray *)layoutConfigurations lastObject];
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](layoutConfigurations);
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

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v6.receiver = selfCopy;
  v6.super_class = CPSPrimaryManeuverView;
  [(CPSPrimaryManeuverView *)&v6 traitCollectionDidChange:location[0]];
  v5 = selfCopy;
  [(CPSPrimaryManeuverView *)selfCopy bounds];
  [(CPSPrimaryManeuverView *)v5 _generateLayoutConfigurationsForSizeIfNecessary:1 force:v3, v4];
  [(CPSPrimaryManeuverView *)selfCopy setNeedsLayout];
  objc_storeStrong(location, 0);
}

- (void)setActiveLayoutConstraints:(id)constraints
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, constraints);
  if (selfCopy->_activeLayoutConstraints)
  {
    [MEMORY[0x277CCAAD0] deactivateConstraints:selfCopy->_activeLayoutConstraints];
  }

  objc_storeStrong(&selfCopy->_activeLayoutConstraints, location[0]);
  [MEMORY[0x277CCAAD0] activateConstraints:selfCopy->_activeLayoutConstraints];
  objc_storeStrong(location, 0);
}

+ (id)instructionsForManeuver:(id)maneuver
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, maneuver);
  attributedInstructionVariants = [location[0] attributedInstructionVariants];
  v9 = 0;
  v7 = 0;
  if ([attributedInstructionVariants count])
  {
    attributedInstructionVariants2 = [location[0] attributedInstructionVariants];
    v9 = 1;
    v3 = MEMORY[0x277D82BE0](attributedInstructionVariants2);
  }

  else
  {
    instructionVariants = [location[0] instructionVariants];
    v7 = 1;
    v3 = MEMORY[0x277D82BE0](instructionVariants);
  }

  v12 = v3;
  if (v7)
  {
    MEMORY[0x277D82BD8](instructionVariants);
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](attributedInstructionVariants2);
  }

  MEMORY[0x277D82BD8](attributedInstructionVariants);
  objc_storeStrong(location, 0);
  v4 = v12;

  return v4;
}

+ (id)symbolImageForManeuver:(id)maneuver
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, maneuver);
  symbolImage = [location[0] symbolImage];
  objc_storeStrong(location, 0);

  return symbolImage;
}

+ (id)junctionImageForManeuver:(id)maneuver
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, maneuver);
  junctionImage = [location[0] junctionImage];
  objc_storeStrong(location, 0);

  return junctionImage;
}

- (void)_generateLayoutConfigurationsForSizeIfNecessary:(CGSize)necessary force:(BOOL)force
{
  v179[3] = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  selfCopy = self;
  v171 = a2;
  forceCopy = force;
  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  v105 = [currentTraitCollection userInterfaceIdiom] == 3;
  MEMORY[0x277D82BD8](currentTraitCollection);
  v169 = v105;
  IsZero = BSFloatIsZero();
  [(CPSPrimaryManeuverView *)selfCopy generatedWidth];
  v167 = BSFloatEqualToFloat();
  window = [(CPSPrimaryManeuverView *)selfCopy window];
  v107 = 1;
  if (window)
  {
    if (!v169 || (IsZero & 1) != 0 || (v103 = 0, (v167 & 1) != 0))
    {
      v103 = !forceCopy;
    }

    v107 = v103;
  }

  MEMORY[0x277D82BD8](window);
  if ((v107 & 1) == 0)
  {
    v87 = objc_alloc(objc_opt_class());
    maneuver = [(CPSPrimaryManeuverView *)selfCopy maneuver];
    v166 = [v87 initWithManeuver:?];
    [v166 setCalculationViewIsSizing:{1, MEMORY[0x277D82BD8](maneuver).n128_f64[0]}];
    window2 = [(CPSPrimaryManeuverView *)selfCopy window];
    [window2 addSubview:v166];
    MEMORY[0x277D82BD8](window2);
    [(CPSPrimaryManeuverView *)selfCopy setGeneratedWidth:necessaryCopy.width];
    v90 = MEMORY[0x277CCAAD0];
    widthAnchor = [v166 widthAnchor];
    v100 = [widthAnchor constraintEqualToConstant:necessaryCopy.width];
    v179[0] = v100;
    topAnchor = [v166 topAnchor];
    window3 = [(CPSPrimaryManeuverView *)selfCopy window];
    topAnchor2 = [window3 topAnchor];
    v96 = [topAnchor constraintEqualToAnchor:?];
    v179[1] = v96;
    trailingAnchor = [v166 trailingAnchor];
    window4 = [(CPSPrimaryManeuverView *)selfCopy window];
    leadingAnchor = [window4 leadingAnchor];
    v92 = [trailingAnchor constraintEqualToAnchor:?];
    v179[2] = v92;
    v91 = [MEMORY[0x277CBEA60] arrayWithObjects:v179 count:3];
    [v90 activateConstraints:?];
    MEMORY[0x277D82BD8](v91);
    MEMORY[0x277D82BD8](v92);
    MEMORY[0x277D82BD8](leadingAnchor);
    MEMORY[0x277D82BD8](window4);
    MEMORY[0x277D82BD8](trailingAnchor);
    MEMORY[0x277D82BD8](v96);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](window3);
    MEMORY[0x277D82BD8](topAnchor);
    MEMORY[0x277D82BD8](v100);
    maneuver2 = [(CPSPrimaryManeuverView *)selfCopy maneuver];
    v164 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v163 = [objc_opt_class() instructionsForManeuver:maneuver2];
    v162 = [objc_opt_class() symbolImageForManeuver:maneuver2];
    v161 = [objc_opt_class() junctionImageForManeuver:maneuver2];
    symbolImageView = [v166 symbolImageView];
    [symbolImageView setImage:v162];
    _formattedDistance = [(CPSPrimaryManeuverView *)selfCopy _formattedDistance];
    subtitleLabel = [v166 subtitleLabel];
    if (_formattedDistance)
    {
      titleLabel = [v166 titleLabel];
      [titleLabel setText:_formattedDistance];
      v4 = MEMORY[0x277D82BD8](titleLabel).n128_u64[0];
    }

    else
    {
      titleLabel2 = [v166 titleLabel];
      v6 = subtitleLabel;
      subtitleLabel = titleLabel2;
      _subtitleFont = [(CPSPrimaryManeuverView *)selfCopy _subtitleFont];
      [subtitleLabel setFont:?];
      v4 = MEMORY[0x277D82BD8](_subtitleFont).n128_u64[0];
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
      junctionImageView = [v166 junctionImageView];
      [junctionImageView setImage:v161];
      heightAnchor = [v166 heightAnchor];
      v154 = [heightAnchor constraintEqualToConstant:necessaryCopy.height - 2.0];
      if ([(CPSPrimaryManeuverView *)selfCopy fitJunctionViewToHeight])
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
            [subtitleLabel setAttributedText:v153];
          }

          else
          {
            [location setInstruction:v153];
            [subtitleLabel setText:v153];
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
          junctionImageView2 = [v166 junctionImageView];
          [junctionImageView2 frame];
          v141[1] = v14;
          v141[2] = v15;
          v141[3] = v16;
          v141[4] = v17;
          v71 = *&v17;
          MEMORY[0x277D82BD8](junctionImageView2);
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
      junctionImageView3 = [v166 junctionImageView];
      [junctionImageView3 frame];
      v127 = v25;
      v128 = v26;
      v129 = v27;
      v130 = v28;
      v68 = v28;
      MEMORY[0x277D82BD8](junctionImageView3);
      v29 = v68;
      if (v68 >= v69)
      {
        [v164 addObject:{v141[0], v68}];
      }

      if ([(CPSPrimaryManeuverView *)selfCopy fitJunctionViewToHeight])
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
          [subtitleLabel setAttributedText:v126];
        }

        else
        {
          [(CPSPrimaryManeuverLayoutConfiguration *)v124 setInstruction:v126];
          [subtitleLabel setText:v126];
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
            [subtitleLabel setAttributedText:v119];
          }

          else
          {
            [(CPSPrimaryManeuverLayoutConfiguration *)v117 setInstruction:v119];
            [subtitleLabel setText:v119];
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
    v113 = MEMORY[0x277D82BE0](selfCopy);
    v114[0] = [v48 sortedArrayUsingComparator:&v108];
    v49 = [v114[0] copy];
    [(CPSPrimaryManeuverView *)selfCopy setLayoutConfigurations:?];
    MEMORY[0x277D82BD8](v49);
    objc_storeStrong(v114, 0);
    objc_storeStrong(&v113, 0);
    objc_storeStrong(v115, 0);
    objc_storeStrong(&subtitleLabel, 0);
    objc_storeStrong(&_formattedDistance, 0);
    objc_storeStrong(&v161, 0);
    objc_storeStrong(&v162, 0);
    objc_storeStrong(&v163, 0);
    objc_storeStrong(&v164, 0);
    objc_storeStrong(&maneuver2, 0);
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

- (int64_t)_compareInstruction:(id)instruction toInstruction:(id)toInstruction
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, instruction);
  v8 = 0;
  objc_storeStrong(&v8, toInstruction);
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
  _fullLayoutConstraints = [(CPSPrimaryManeuverView *)self _fullLayoutConstraints];
  [(CPSPrimaryManeuverView *)self setActiveLayoutConstraints:?];
  MEMORY[0x277D82BD8](_fullLayoutConstraints);
}

- (void)_activateFullLayoutWideImageConstraints
{
  _fullLayoutWideImageConstraints = [(CPSPrimaryManeuverView *)self _fullLayoutWideImageConstraints];
  [(CPSPrimaryManeuverView *)self setActiveLayoutConstraints:?];
  MEMORY[0x277D82BD8](_fullLayoutWideImageConstraints);
}

- (void)_activateJunctionViewNoInstructionConstraints
{
  _junctionViewNoSubtitleConstraints = [(CPSPrimaryManeuverView *)self _junctionViewNoSubtitleConstraints];
  [(CPSPrimaryManeuverView *)self setActiveLayoutConstraints:?];
  MEMORY[0x277D82BD8](_junctionViewNoSubtitleConstraints);
}

- (void)_activateJunctionViewNoInstructionWideImageConstraints
{
  _junctionViewNoInstructionWideImageConstraints = [(CPSPrimaryManeuverView *)self _junctionViewNoInstructionWideImageConstraints];
  [(CPSPrimaryManeuverView *)self setActiveLayoutConstraints:?];
  MEMORY[0x277D82BD8](_junctionViewNoInstructionWideImageConstraints);
}

- (void)_activateFullNoJunctionViewLayoutConstraints
{
  _fullLayoutNoJunctionViewConstraints = [(CPSPrimaryManeuverView *)self _fullLayoutNoJunctionViewConstraints];
  [(CPSPrimaryManeuverView *)self setActiveLayoutConstraints:?];
  MEMORY[0x277D82BD8](_fullLayoutNoJunctionViewConstraints);
}

- (void)_activateFullNoJunctionViewWideImageLayoutConstraints
{
  _fullLayoutNoJunctionViewWideImageConstraints = [(CPSPrimaryManeuverView *)self _fullLayoutNoJunctionViewWideImageConstraints];
  [(CPSPrimaryManeuverView *)self setActiveLayoutConstraints:?];
  MEMORY[0x277D82BD8](_fullLayoutNoJunctionViewWideImageConstraints);
}

- (void)_activateMinimalLayoutConstraints
{
  _minimalLayoutConstraints = [(CPSPrimaryManeuverView *)self _minimalLayoutConstraints];
  [(CPSPrimaryManeuverView *)self setActiveLayoutConstraints:?];
  MEMORY[0x277D82BD8](_minimalLayoutConstraints);
}

- (void)_activateMinimalWideImageLayoutConstraints
{
  _minimalLayoutWideImageConstraints = [(CPSPrimaryManeuverView *)self _minimalLayoutWideImageConstraints];
  [(CPSPrimaryManeuverView *)self setActiveLayoutConstraints:?];
  MEMORY[0x277D82BD8](_minimalLayoutWideImageConstraints);
}

- (void)_activateFullSubtitleNextToImageConstraints
{
  _fullSubtitleNextToImageConstraints = [(CPSPrimaryManeuverView *)self _fullSubtitleNextToImageConstraints];
  [(CPSPrimaryManeuverView *)self setActiveLayoutConstraints:?];
  MEMORY[0x277D82BD8](_fullSubtitleNextToImageConstraints);
}

- (id)_fullLayoutConstraints
{
  v187[21] = *MEMORY[0x277D85DE8];
  v181 = objc_opt_class();
  maneuver = [(CPSPrimaryManeuverView *)self maneuver];
  v183 = [v181 symbolImageForManeuver:?];
  MEMORY[0x277D82BD8](v183);
  *&v2 = MEMORY[0x277D82BD8](maneuver).n128_u64[0];
  if (v183)
  {
    centeringLayoutGuide = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    centerYAnchor = [(UILayoutGuide *)centeringLayoutGuide centerYAnchor];
    yCenteringGuide = [(CPSPrimaryManeuverView *)self yCenteringGuide];
    centerYAnchor2 = [(UILayoutGuide *)yCenteringGuide centerYAnchor];
    v176 = [(NSLayoutYAxisAnchor *)centerYAnchor constraintEqualToAnchor:?];
    v187[0] = v176;
    centeringLayoutGuide2 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    leadingAnchor = [(UILayoutGuide *)centeringLayoutGuide2 leadingAnchor];
    leadingAnchor2 = [(CPSPrimaryManeuverView *)self leadingAnchor];
    v172 = [(NSLayoutXAxisAnchor *)leadingAnchor constraintEqualToAnchor:13.0 constant:?];
    v187[1] = v172;
    centeringLayoutGuide3 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    trailingAnchor = [(UILayoutGuide *)centeringLayoutGuide3 trailingAnchor];
    trailingAnchor2 = [(CPSPrimaryManeuverView *)self trailingAnchor];
    v168 = [(NSLayoutXAxisAnchor *)trailingAnchor constraintEqualToAnchor:-13.0 constant:?];
    v187[2] = v168;
    topAnchor = [(CPSPrimaryManeuverView *)self topAnchor];
    centeringLayoutGuide4 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    topAnchor2 = [(UILayoutGuide *)centeringLayoutGuide4 topAnchor];
    v164 = [topAnchor constraintLessThanOrEqualToAnchor:?];
    v187[3] = v164;
    topAnchor3 = [(CPSPrimaryManeuverView *)self topAnchor];
    yCenteringGuide2 = [(CPSPrimaryManeuverView *)self yCenteringGuide];
    topAnchor4 = [(UILayoutGuide *)yCenteringGuide2 topAnchor];
    v160 = [topAnchor3 constraintEqualToAnchor:?];
    v187[4] = v160;
    yCenteringGuide3 = [(CPSPrimaryManeuverView *)self yCenteringGuide];
    bottomAnchor = [(UILayoutGuide *)yCenteringGuide3 bottomAnchor];
    junctionImageView = [(CPSPrimaryManeuverView *)self junctionImageView];
    topAnchor5 = [(CPSAspectFitImageView *)junctionImageView topAnchor];
    v155 = [(NSLayoutYAxisAnchor *)bottomAnchor constraintEqualToAnchor:?];
    v187[5] = v155;
    symbolImageView = [(CPSPrimaryManeuverView *)self symbolImageView];
    topAnchor6 = [(UIImageView *)symbolImageView topAnchor];
    centeringLayoutGuide5 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    topAnchor7 = [(UILayoutGuide *)centeringLayoutGuide5 topAnchor];
    v150 = [topAnchor6 constraintEqualToAnchor:? constant:?];
    v187[6] = v150;
    symbolImageView2 = [(CPSPrimaryManeuverView *)self symbolImageView];
    leadingAnchor3 = [(UIImageView *)symbolImageView2 leadingAnchor];
    centeringLayoutGuide6 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    leadingAnchor4 = [(UILayoutGuide *)centeringLayoutGuide6 leadingAnchor];
    v145 = [leadingAnchor3 constraintEqualToAnchor:0.0 constant:?];
    v187[7] = v145;
    symbolImageView3 = [(CPSPrimaryManeuverView *)self symbolImageView];
    heightAnchor = [(UIImageView *)symbolImageView3 heightAnchor];
    [(CPSPrimaryManeuverView *)self symbolImageHeight];
    v142 = [heightAnchor constraintLessThanOrEqualToConstant:?];
    v187[8] = v142;
    titleLabel = [(CPSPrimaryManeuverView *)self titleLabel];
    leadingAnchor5 = [(CPSAbridgableLabel *)titleLabel leadingAnchor];
    symbolImageView4 = [(CPSPrimaryManeuverView *)self symbolImageView];
    trailingAnchor3 = [(UIImageView *)symbolImageView4 trailingAnchor];
    v137 = [leadingAnchor5 constraintEqualToAnchor:8.0 constant:?];
    v187[9] = v137;
    titleLabel2 = [(CPSPrimaryManeuverView *)self titleLabel];
    centerYAnchor3 = [(CPSAbridgableLabel *)titleLabel2 centerYAnchor];
    symbolImageView5 = [(CPSPrimaryManeuverView *)self symbolImageView];
    centerYAnchor4 = [(UIImageView *)symbolImageView5 centerYAnchor];
    v132 = [centerYAnchor3 constraintEqualToAnchor:0.0 constant:?];
    v187[10] = v132;
    titleLabel3 = [(CPSPrimaryManeuverView *)self titleLabel];
    trailingAnchor4 = [(CPSAbridgableLabel *)titleLabel3 trailingAnchor];
    centeringLayoutGuide7 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    trailingAnchor5 = [(UILayoutGuide *)centeringLayoutGuide7 trailingAnchor];
    v127 = [trailingAnchor4 constraintLessThanOrEqualToAnchor:0.0 constant:?];
    v187[11] = v127;
    subtitleLabel = [(CPSPrimaryManeuverView *)self subtitleLabel];
    leadingAnchor6 = [(CPSAbridgableLabel *)subtitleLabel leadingAnchor];
    centeringLayoutGuide8 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    leadingAnchor7 = [(UILayoutGuide *)centeringLayoutGuide8 leadingAnchor];
    v122 = [leadingAnchor6 constraintEqualToAnchor:0.0 constant:?];
    v187[12] = v122;
    subtitleLabel2 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    trailingAnchor6 = [(CPSAbridgableLabel *)subtitleLabel2 trailingAnchor];
    centeringLayoutGuide9 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    trailingAnchor7 = [(UILayoutGuide *)centeringLayoutGuide9 trailingAnchor];
    v117 = [trailingAnchor6 constraintLessThanOrEqualToAnchor:-8.0 constant:?];
    v187[13] = v117;
    subtitleLabel3 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    topAnchor8 = [(CPSAbridgableLabel *)subtitleLabel3 topAnchor];
    symbolImageView6 = [(CPSPrimaryManeuverView *)self symbolImageView];
    bottomAnchor2 = [(UIImageView *)symbolImageView6 bottomAnchor];
    v112 = [topAnchor8 constraintEqualToAnchor:? constant:?];
    v187[14] = v112;
    subtitleLabel4 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    bottomAnchor3 = [(CPSAbridgableLabel *)subtitleLabel4 bottomAnchor];
    centeringLayoutGuide10 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    bottomAnchor4 = [(UILayoutGuide *)centeringLayoutGuide10 bottomAnchor];
    v107 = [bottomAnchor3 constraintEqualToAnchor:0.0 constant:?];
    v187[15] = v107;
    junctionImageView2 = [(CPSPrimaryManeuverView *)self junctionImageView];
    topAnchor9 = [(CPSAspectFitImageView *)junctionImageView2 topAnchor];
    centeringLayoutGuide11 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    bottomAnchor5 = [(UILayoutGuide *)centeringLayoutGuide11 bottomAnchor];
    v102 = [topAnchor9 constraintGreaterThanOrEqualToAnchor:4.0 constant:?];
    v187[16] = v102;
    junctionImageView3 = [(CPSPrimaryManeuverView *)self junctionImageView];
    bottomAnchor6 = [(CPSAspectFitImageView *)junctionImageView3 bottomAnchor];
    bottomAnchor7 = [(CPSPrimaryManeuverView *)self bottomAnchor];
    v98 = [bottomAnchor6 constraintEqualToAnchor:0.0 constant:?];
    v187[17] = v98;
    junctionImageView4 = [(CPSPrimaryManeuverView *)self junctionImageView];
    centerXAnchor = [(CPSAspectFitImageView *)junctionImageView4 centerXAnchor];
    centerXAnchor2 = [(CPSPrimaryManeuverView *)self centerXAnchor];
    v94 = [centerXAnchor constraintEqualToAnchor:?];
    v187[18] = v94;
    junctionImageView5 = [(CPSPrimaryManeuverView *)self junctionImageView];
    leadingAnchor8 = [(CPSAspectFitImageView *)junctionImageView5 leadingAnchor];
    leadingAnchor9 = [(CPSPrimaryManeuverView *)self leadingAnchor];
    v90 = [leadingAnchor8 constraintGreaterThanOrEqualToAnchor:?];
    v187[19] = v90;
    junctionImageView6 = [(CPSPrimaryManeuverView *)self junctionImageView];
    trailingAnchor8 = [(CPSAspectFitImageView *)junctionImageView6 trailingAnchor];
    trailingAnchor9 = [(CPSPrimaryManeuverView *)self trailingAnchor];
    v86 = [trailingAnchor8 constraintLessThanOrEqualToAnchor:?];
    v187[20] = v86;
    v185 = [MEMORY[0x277CBEA60] arrayWithObjects:v187 count:21];
    MEMORY[0x277D82BD8](v86);
    MEMORY[0x277D82BD8](trailingAnchor9);
    MEMORY[0x277D82BD8](trailingAnchor8);
    MEMORY[0x277D82BD8](junctionImageView6);
    MEMORY[0x277D82BD8](v90);
    MEMORY[0x277D82BD8](leadingAnchor9);
    MEMORY[0x277D82BD8](leadingAnchor8);
    MEMORY[0x277D82BD8](junctionImageView5);
    MEMORY[0x277D82BD8](v94);
    MEMORY[0x277D82BD8](centerXAnchor2);
    MEMORY[0x277D82BD8](centerXAnchor);
    MEMORY[0x277D82BD8](junctionImageView4);
    MEMORY[0x277D82BD8](v98);
    MEMORY[0x277D82BD8](bottomAnchor7);
    MEMORY[0x277D82BD8](bottomAnchor6);
    MEMORY[0x277D82BD8](junctionImageView3);
    MEMORY[0x277D82BD8](v102);
    MEMORY[0x277D82BD8](bottomAnchor5);
    MEMORY[0x277D82BD8](centeringLayoutGuide11);
    MEMORY[0x277D82BD8](topAnchor9);
    MEMORY[0x277D82BD8](junctionImageView2);
    MEMORY[0x277D82BD8](v107);
    MEMORY[0x277D82BD8](bottomAnchor4);
    MEMORY[0x277D82BD8](centeringLayoutGuide10);
    MEMORY[0x277D82BD8](bottomAnchor3);
    MEMORY[0x277D82BD8](subtitleLabel4);
    MEMORY[0x277D82BD8](v112);
    MEMORY[0x277D82BD8](bottomAnchor2);
    MEMORY[0x277D82BD8](symbolImageView6);
    MEMORY[0x277D82BD8](topAnchor8);
    MEMORY[0x277D82BD8](subtitleLabel3);
    MEMORY[0x277D82BD8](v117);
    MEMORY[0x277D82BD8](trailingAnchor7);
    MEMORY[0x277D82BD8](centeringLayoutGuide9);
    MEMORY[0x277D82BD8](trailingAnchor6);
    MEMORY[0x277D82BD8](subtitleLabel2);
    MEMORY[0x277D82BD8](v122);
    MEMORY[0x277D82BD8](leadingAnchor7);
    MEMORY[0x277D82BD8](centeringLayoutGuide8);
    MEMORY[0x277D82BD8](leadingAnchor6);
    MEMORY[0x277D82BD8](subtitleLabel);
    MEMORY[0x277D82BD8](v127);
    MEMORY[0x277D82BD8](trailingAnchor5);
    MEMORY[0x277D82BD8](centeringLayoutGuide7);
    MEMORY[0x277D82BD8](trailingAnchor4);
    MEMORY[0x277D82BD8](titleLabel3);
    MEMORY[0x277D82BD8](v132);
    MEMORY[0x277D82BD8](centerYAnchor4);
    MEMORY[0x277D82BD8](symbolImageView5);
    MEMORY[0x277D82BD8](centerYAnchor3);
    MEMORY[0x277D82BD8](titleLabel2);
    MEMORY[0x277D82BD8](v137);
    MEMORY[0x277D82BD8](trailingAnchor3);
    MEMORY[0x277D82BD8](symbolImageView4);
    MEMORY[0x277D82BD8](leadingAnchor5);
    MEMORY[0x277D82BD8](titleLabel);
    MEMORY[0x277D82BD8](v142);
    MEMORY[0x277D82BD8](heightAnchor);
    MEMORY[0x277D82BD8](symbolImageView3);
    MEMORY[0x277D82BD8](v145);
    MEMORY[0x277D82BD8](leadingAnchor4);
    MEMORY[0x277D82BD8](centeringLayoutGuide6);
    MEMORY[0x277D82BD8](leadingAnchor3);
    MEMORY[0x277D82BD8](symbolImageView2);
    MEMORY[0x277D82BD8](v150);
    MEMORY[0x277D82BD8](topAnchor7);
    MEMORY[0x277D82BD8](centeringLayoutGuide5);
    MEMORY[0x277D82BD8](topAnchor6);
    MEMORY[0x277D82BD8](symbolImageView);
    MEMORY[0x277D82BD8](v155);
    MEMORY[0x277D82BD8](topAnchor5);
    MEMORY[0x277D82BD8](junctionImageView);
    MEMORY[0x277D82BD8](bottomAnchor);
    MEMORY[0x277D82BD8](yCenteringGuide3);
    MEMORY[0x277D82BD8](v160);
    MEMORY[0x277D82BD8](topAnchor4);
    MEMORY[0x277D82BD8](yCenteringGuide2);
    MEMORY[0x277D82BD8](topAnchor3);
    MEMORY[0x277D82BD8](v164);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](centeringLayoutGuide4);
    MEMORY[0x277D82BD8](topAnchor);
    MEMORY[0x277D82BD8](v168);
    MEMORY[0x277D82BD8](trailingAnchor2);
    MEMORY[0x277D82BD8](trailingAnchor);
    MEMORY[0x277D82BD8](centeringLayoutGuide3);
    MEMORY[0x277D82BD8](v172);
    MEMORY[0x277D82BD8](leadingAnchor2);
    MEMORY[0x277D82BD8](leadingAnchor);
    MEMORY[0x277D82BD8](centeringLayoutGuide2);
    MEMORY[0x277D82BD8](v176);
    MEMORY[0x277D82BD8](centerYAnchor2);
    MEMORY[0x277D82BD8](yCenteringGuide);
    MEMORY[0x277D82BD8](centerYAnchor);
    MEMORY[0x277D82BD8](centeringLayoutGuide);
  }

  else
  {
    centeringLayoutGuide12 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    centerYAnchor5 = [(UILayoutGuide *)centeringLayoutGuide12 centerYAnchor];
    yCenteringGuide4 = [(CPSPrimaryManeuverView *)self yCenteringGuide];
    centerYAnchor6 = [(UILayoutGuide *)yCenteringGuide4 centerYAnchor];
    v81 = [(NSLayoutYAxisAnchor *)centerYAnchor5 constraintEqualToAnchor:?];
    v186[0] = v81;
    centeringLayoutGuide13 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    leadingAnchor10 = [(UILayoutGuide *)centeringLayoutGuide13 leadingAnchor];
    leadingAnchor11 = [(CPSPrimaryManeuverView *)self leadingAnchor];
    v77 = [(NSLayoutXAxisAnchor *)leadingAnchor10 constraintEqualToAnchor:13.0 constant:?];
    v186[1] = v77;
    centeringLayoutGuide14 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    trailingAnchor10 = [(UILayoutGuide *)centeringLayoutGuide14 trailingAnchor];
    trailingAnchor11 = [(CPSPrimaryManeuverView *)self trailingAnchor];
    v73 = [(NSLayoutXAxisAnchor *)trailingAnchor10 constraintEqualToAnchor:-13.0 constant:?];
    v186[2] = v73;
    topAnchor10 = [(CPSPrimaryManeuverView *)self topAnchor];
    centeringLayoutGuide15 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    topAnchor11 = [(UILayoutGuide *)centeringLayoutGuide15 topAnchor];
    v69 = [topAnchor10 constraintLessThanOrEqualToAnchor:?];
    v186[3] = v69;
    topAnchor12 = [(CPSPrimaryManeuverView *)self topAnchor];
    yCenteringGuide5 = [(CPSPrimaryManeuverView *)self yCenteringGuide];
    topAnchor13 = [(UILayoutGuide *)yCenteringGuide5 topAnchor];
    v65 = [topAnchor12 constraintEqualToAnchor:?];
    v186[4] = v65;
    yCenteringGuide6 = [(CPSPrimaryManeuverView *)self yCenteringGuide];
    bottomAnchor8 = [(UILayoutGuide *)yCenteringGuide6 bottomAnchor];
    junctionImageView7 = [(CPSPrimaryManeuverView *)self junctionImageView];
    topAnchor14 = [(CPSAspectFitImageView *)junctionImageView7 topAnchor];
    v60 = [(NSLayoutYAxisAnchor *)bottomAnchor8 constraintEqualToAnchor:?];
    v186[5] = v60;
    titleLabel4 = [(CPSPrimaryManeuverView *)self titleLabel];
    topAnchor15 = [(CPSAbridgableLabel *)titleLabel4 topAnchor];
    centeringLayoutGuide16 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    topAnchor16 = [(UILayoutGuide *)centeringLayoutGuide16 topAnchor];
    v55 = [topAnchor15 constraintEqualToAnchor:? constant:?];
    v186[6] = v55;
    titleLabel5 = [(CPSPrimaryManeuverView *)self titleLabel];
    leadingAnchor12 = [(CPSAbridgableLabel *)titleLabel5 leadingAnchor];
    centeringLayoutGuide17 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    leadingAnchor13 = [(UILayoutGuide *)centeringLayoutGuide17 leadingAnchor];
    v50 = [leadingAnchor12 constraintEqualToAnchor:? constant:?];
    v186[7] = v50;
    titleLabel6 = [(CPSPrimaryManeuverView *)self titleLabel];
    trailingAnchor12 = [(CPSAbridgableLabel *)titleLabel6 trailingAnchor];
    centeringLayoutGuide18 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    trailingAnchor13 = [(UILayoutGuide *)centeringLayoutGuide18 trailingAnchor];
    v45 = [trailingAnchor12 constraintLessThanOrEqualToAnchor:? constant:?];
    v186[8] = v45;
    subtitleLabel5 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    leadingAnchor14 = [(CPSAbridgableLabel *)subtitleLabel5 leadingAnchor];
    centeringLayoutGuide19 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    leadingAnchor15 = [(UILayoutGuide *)centeringLayoutGuide19 leadingAnchor];
    v40 = [leadingAnchor14 constraintEqualToAnchor:8.0 constant:?];
    v186[9] = v40;
    subtitleLabel6 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    trailingAnchor14 = [(CPSAbridgableLabel *)subtitleLabel6 trailingAnchor];
    centeringLayoutGuide20 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    trailingAnchor15 = [(UILayoutGuide *)centeringLayoutGuide20 trailingAnchor];
    v35 = [trailingAnchor14 constraintLessThanOrEqualToAnchor:-8.0 constant:?];
    v186[10] = v35;
    subtitleLabel7 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    topAnchor17 = [(CPSAbridgableLabel *)subtitleLabel7 topAnchor];
    titleLabel7 = [(CPSPrimaryManeuverView *)self titleLabel];
    bottomAnchor9 = [(CPSAbridgableLabel *)titleLabel7 bottomAnchor];
    v30 = [topAnchor17 constraintEqualToAnchor:? constant:?];
    v186[11] = v30;
    subtitleLabel8 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    bottomAnchor10 = [(CPSAbridgableLabel *)subtitleLabel8 bottomAnchor];
    centeringLayoutGuide21 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    bottomAnchor11 = [(UILayoutGuide *)centeringLayoutGuide21 bottomAnchor];
    v25 = [bottomAnchor10 constraintEqualToAnchor:0.0 constant:?];
    v186[12] = v25;
    junctionImageView8 = [(CPSPrimaryManeuverView *)self junctionImageView];
    topAnchor18 = [(CPSAspectFitImageView *)junctionImageView8 topAnchor];
    centeringLayoutGuide22 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    bottomAnchor12 = [(UILayoutGuide *)centeringLayoutGuide22 bottomAnchor];
    v20 = [topAnchor18 constraintGreaterThanOrEqualToAnchor:4.0 constant:?];
    v186[13] = v20;
    junctionImageView9 = [(CPSPrimaryManeuverView *)self junctionImageView];
    bottomAnchor13 = [(CPSAspectFitImageView *)junctionImageView9 bottomAnchor];
    bottomAnchor14 = [(CPSPrimaryManeuverView *)self bottomAnchor];
    v16 = [bottomAnchor13 constraintEqualToAnchor:0.0 constant:?];
    v186[14] = v16;
    junctionImageView10 = [(CPSPrimaryManeuverView *)self junctionImageView];
    centerXAnchor3 = [(CPSAspectFitImageView *)junctionImageView10 centerXAnchor];
    centerXAnchor4 = [(CPSPrimaryManeuverView *)self centerXAnchor];
    v12 = [centerXAnchor3 constraintEqualToAnchor:?];
    v186[15] = v12;
    junctionImageView11 = [(CPSPrimaryManeuverView *)self junctionImageView];
    leadingAnchor16 = [(CPSAspectFitImageView *)junctionImageView11 leadingAnchor];
    leadingAnchor17 = [(CPSPrimaryManeuverView *)self leadingAnchor];
    v8 = [leadingAnchor16 constraintGreaterThanOrEqualToAnchor:?];
    v186[16] = v8;
    junctionImageView12 = [(CPSPrimaryManeuverView *)self junctionImageView];
    trailingAnchor16 = [(CPSAspectFitImageView *)junctionImageView12 trailingAnchor];
    trailingAnchor17 = [(CPSPrimaryManeuverView *)self trailingAnchor];
    v4 = [trailingAnchor16 constraintLessThanOrEqualToAnchor:?];
    v186[17] = v4;
    v185 = [MEMORY[0x277CBEA60] arrayWithObjects:v186 count:18];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](trailingAnchor17);
    MEMORY[0x277D82BD8](trailingAnchor16);
    MEMORY[0x277D82BD8](junctionImageView12);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](leadingAnchor17);
    MEMORY[0x277D82BD8](leadingAnchor16);
    MEMORY[0x277D82BD8](junctionImageView11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](centerXAnchor4);
    MEMORY[0x277D82BD8](centerXAnchor3);
    MEMORY[0x277D82BD8](junctionImageView10);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](bottomAnchor14);
    MEMORY[0x277D82BD8](bottomAnchor13);
    MEMORY[0x277D82BD8](junctionImageView9);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](bottomAnchor12);
    MEMORY[0x277D82BD8](centeringLayoutGuide22);
    MEMORY[0x277D82BD8](topAnchor18);
    MEMORY[0x277D82BD8](junctionImageView8);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](bottomAnchor11);
    MEMORY[0x277D82BD8](centeringLayoutGuide21);
    MEMORY[0x277D82BD8](bottomAnchor10);
    MEMORY[0x277D82BD8](subtitleLabel8);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](bottomAnchor9);
    MEMORY[0x277D82BD8](titleLabel7);
    MEMORY[0x277D82BD8](topAnchor17);
    MEMORY[0x277D82BD8](subtitleLabel7);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](trailingAnchor15);
    MEMORY[0x277D82BD8](centeringLayoutGuide20);
    MEMORY[0x277D82BD8](trailingAnchor14);
    MEMORY[0x277D82BD8](subtitleLabel6);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](leadingAnchor15);
    MEMORY[0x277D82BD8](centeringLayoutGuide19);
    MEMORY[0x277D82BD8](leadingAnchor14);
    MEMORY[0x277D82BD8](subtitleLabel5);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](trailingAnchor13);
    MEMORY[0x277D82BD8](centeringLayoutGuide18);
    MEMORY[0x277D82BD8](trailingAnchor12);
    MEMORY[0x277D82BD8](titleLabel6);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](leadingAnchor13);
    MEMORY[0x277D82BD8](centeringLayoutGuide17);
    MEMORY[0x277D82BD8](leadingAnchor12);
    MEMORY[0x277D82BD8](titleLabel5);
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](topAnchor16);
    MEMORY[0x277D82BD8](centeringLayoutGuide16);
    MEMORY[0x277D82BD8](topAnchor15);
    MEMORY[0x277D82BD8](titleLabel4);
    MEMORY[0x277D82BD8](v60);
    MEMORY[0x277D82BD8](topAnchor14);
    MEMORY[0x277D82BD8](junctionImageView7);
    MEMORY[0x277D82BD8](bottomAnchor8);
    MEMORY[0x277D82BD8](yCenteringGuide6);
    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](topAnchor13);
    MEMORY[0x277D82BD8](yCenteringGuide5);
    MEMORY[0x277D82BD8](topAnchor12);
    MEMORY[0x277D82BD8](v69);
    MEMORY[0x277D82BD8](topAnchor11);
    MEMORY[0x277D82BD8](centeringLayoutGuide15);
    MEMORY[0x277D82BD8](topAnchor10);
    MEMORY[0x277D82BD8](v73);
    MEMORY[0x277D82BD8](trailingAnchor11);
    MEMORY[0x277D82BD8](trailingAnchor10);
    MEMORY[0x277D82BD8](centeringLayoutGuide14);
    MEMORY[0x277D82BD8](v77);
    MEMORY[0x277D82BD8](leadingAnchor11);
    MEMORY[0x277D82BD8](leadingAnchor10);
    MEMORY[0x277D82BD8](centeringLayoutGuide13);
    MEMORY[0x277D82BD8](v81);
    MEMORY[0x277D82BD8](centerYAnchor6);
    MEMORY[0x277D82BD8](yCenteringGuide4);
    MEMORY[0x277D82BD8](centerYAnchor5);
    MEMORY[0x277D82BD8](centeringLayoutGuide12);
  }

  return v185;
}

- (id)_fullLayoutWideImageConstraints
{
  v134[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v130[1] = a2;
  v130[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(CPSPrimaryManeuverView *)selfCopy centersManeuverInView])
  {
    topAnchor = [(CPSPrimaryManeuverView *)selfCopy topAnchor];
    centeringLayoutGuide = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
    topAnchor2 = [(UILayoutGuide *)centeringLayoutGuide topAnchor];
    v2 = _UISolariumEnabled();
    v3 = 10.0;
    if ((v2 & 1) == 0)
    {
      v3 = 4.0;
    }

    v126 = [topAnchor constraintLessThanOrEqualToAnchor:topAnchor2 constant:-v3];
    v134[0] = v126;
    centeringLayoutGuide2 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
    centerYAnchor = [(UILayoutGuide *)centeringLayoutGuide2 centerYAnchor];
    centerYAnchor2 = [(CPSPrimaryManeuverView *)selfCopy centerYAnchor];
    v122 = [(NSLayoutYAxisAnchor *)centerYAnchor constraintEqualToAnchor:?];
    v134[1] = v122;
    junctionImageView = [(CPSPrimaryManeuverView *)selfCopy junctionImageView];
    topAnchor3 = [(CPSAspectFitImageView *)junctionImageView topAnchor];
    centeringLayoutGuide3 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
    bottomAnchor = [(UILayoutGuide *)centeringLayoutGuide3 bottomAnchor];
    v117 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:4.0 constant:?];
    v134[2] = v117;
    v116 = [MEMORY[0x277CBEA60] arrayWithObjects:v134 count:3];
    [v130[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v116);
    MEMORY[0x277D82BD8](v117);
    MEMORY[0x277D82BD8](bottomAnchor);
    MEMORY[0x277D82BD8](centeringLayoutGuide3);
    MEMORY[0x277D82BD8](topAnchor3);
    MEMORY[0x277D82BD8](junctionImageView);
    MEMORY[0x277D82BD8](v122);
    MEMORY[0x277D82BD8](centerYAnchor2);
    MEMORY[0x277D82BD8](centerYAnchor);
    MEMORY[0x277D82BD8](centeringLayoutGuide2);
    MEMORY[0x277D82BD8](v126);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](centeringLayoutGuide);
    v4 = MEMORY[0x277D82BD8](topAnchor).n128_u64[0];
  }

  else
  {
    topAnchor4 = [(CPSPrimaryManeuverView *)selfCopy topAnchor];
    centeringLayoutGuide4 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
    topAnchor5 = [(UILayoutGuide *)centeringLayoutGuide4 topAnchor];
    v5 = _UISolariumEnabled();
    v6 = 10.0;
    if ((v5 & 1) == 0)
    {
      v6 = 4.0;
    }

    v112 = [topAnchor4 constraintEqualToAnchor:topAnchor5 constant:-v6];
    v133[0] = v112;
    junctionImageView2 = [(CPSPrimaryManeuverView *)selfCopy junctionImageView];
    topAnchor6 = [(CPSAspectFitImageView *)junctionImageView2 topAnchor];
    centeringLayoutGuide5 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
    bottomAnchor2 = [(UILayoutGuide *)centeringLayoutGuide5 bottomAnchor];
    v107 = [topAnchor6 constraintEqualToAnchor:4.0 constant:?];
    v133[1] = v107;
    v106 = [MEMORY[0x277CBEA60] arrayWithObjects:v133 count:2];
    [v130[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v106);
    MEMORY[0x277D82BD8](v107);
    MEMORY[0x277D82BD8](bottomAnchor2);
    MEMORY[0x277D82BD8](centeringLayoutGuide5);
    MEMORY[0x277D82BD8](topAnchor6);
    MEMORY[0x277D82BD8](junctionImageView2);
    MEMORY[0x277D82BD8](v112);
    MEMORY[0x277D82BD8](topAnchor5);
    MEMORY[0x277D82BD8](centeringLayoutGuide4);
    v4 = MEMORY[0x277D82BD8](topAnchor4).n128_u64[0];
  }

  v8 = v130[0];
  centeringLayoutGuide6 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
  leadingAnchor = [(UILayoutGuide *)centeringLayoutGuide6 leadingAnchor];
  leadingAnchor2 = [(CPSPrimaryManeuverView *)selfCopy leadingAnchor];
  v101 = [(NSLayoutXAxisAnchor *)leadingAnchor constraintEqualToAnchor:13.0 constant:?];
  v132[0] = v101;
  centeringLayoutGuide7 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
  trailingAnchor = [(UILayoutGuide *)centeringLayoutGuide7 trailingAnchor];
  trailingAnchor2 = [(CPSPrimaryManeuverView *)selfCopy trailingAnchor];
  v97 = [(NSLayoutXAxisAnchor *)trailingAnchor constraintEqualToAnchor:-13.0 constant:?];
  v132[1] = v97;
  topAnchor7 = [(CPSPrimaryManeuverView *)selfCopy topAnchor];
  yCenteringGuide = [(CPSPrimaryManeuverView *)selfCopy yCenteringGuide];
  topAnchor8 = [(UILayoutGuide *)yCenteringGuide topAnchor];
  v93 = [topAnchor7 constraintEqualToAnchor:?];
  v132[2] = v93;
  yCenteringGuide2 = [(CPSPrimaryManeuverView *)selfCopy yCenteringGuide];
  bottomAnchor3 = [(UILayoutGuide *)yCenteringGuide2 bottomAnchor];
  junctionImageView3 = [(CPSPrimaryManeuverView *)selfCopy junctionImageView];
  topAnchor9 = [(CPSAspectFitImageView *)junctionImageView3 topAnchor];
  v88 = [(NSLayoutYAxisAnchor *)bottomAnchor3 constraintEqualToAnchor:?];
  v132[3] = v88;
  symbolImageView = [(CPSPrimaryManeuverView *)selfCopy symbolImageView];
  topAnchor10 = [(UIImageView *)symbolImageView topAnchor];
  topAnchor11 = [(CPSPrimaryManeuverView *)selfCopy topAnchor];
  v84 = [topAnchor10 constraintEqualToAnchor:? constant:?];
  v132[4] = v84;
  symbolImageView2 = [(CPSPrimaryManeuverView *)selfCopy symbolImageView];
  leadingAnchor3 = [(UIImageView *)symbolImageView2 leadingAnchor];
  centeringLayoutGuide8 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
  leadingAnchor4 = [(UILayoutGuide *)centeringLayoutGuide8 leadingAnchor];
  v79 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:0.0 constant:?];
  v132[5] = v79;
  symbolImageView3 = [(CPSPrimaryManeuverView *)selfCopy symbolImageView];
  trailingAnchor3 = [(UIImageView *)symbolImageView3 trailingAnchor];
  centeringLayoutGuide9 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
  trailingAnchor4 = [(UILayoutGuide *)centeringLayoutGuide9 trailingAnchor];
  v74 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:0.0 constant:?];
  v132[6] = v74;
  symbolImageView4 = [(CPSPrimaryManeuverView *)selfCopy symbolImageView];
  centerXAnchor = [(UIImageView *)symbolImageView4 centerXAnchor];
  centeringLayoutGuide10 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
  centerXAnchor2 = [(UILayoutGuide *)centeringLayoutGuide10 centerXAnchor];
  v69 = [centerXAnchor constraintEqualToAnchor:?];
  v132[7] = v69;
  symbolImageView5 = [(CPSPrimaryManeuverView *)selfCopy symbolImageView];
  widthAnchor = [(UIImageView *)symbolImageView5 widthAnchor];
  centeringLayoutGuide11 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
  widthAnchor2 = [(UILayoutGuide *)centeringLayoutGuide11 widthAnchor];
  v64 = [widthAnchor constraintLessThanOrEqualToAnchor:?];
  v132[8] = v64;
  symbolImageView6 = [(CPSPrimaryManeuverView *)selfCopy symbolImageView];
  heightAnchor = [(UIImageView *)symbolImageView6 heightAnchor];
  [(CPSPrimaryManeuverView *)selfCopy symbolImageHeight];
  v61 = [heightAnchor constraintLessThanOrEqualToConstant:?];
  v132[9] = v61;
  titleLabel = [(CPSPrimaryManeuverView *)selfCopy titleLabel];
  leadingAnchor5 = [(CPSAbridgableLabel *)titleLabel leadingAnchor];
  centeringLayoutGuide12 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
  leadingAnchor6 = [(UILayoutGuide *)centeringLayoutGuide12 leadingAnchor];
  v56 = [leadingAnchor5 constraintEqualToAnchor:0.0 constant:?];
  v132[10] = v56;
  titleLabel2 = [(CPSPrimaryManeuverView *)selfCopy titleLabel];
  topAnchor12 = [(CPSAbridgableLabel *)titleLabel2 topAnchor];
  symbolImageView7 = [(CPSPrimaryManeuverView *)selfCopy symbolImageView];
  bottomAnchor4 = [(UIImageView *)symbolImageView7 bottomAnchor];
  v51 = [topAnchor12 constraintEqualToAnchor:0.0 constant:?];
  v132[11] = v51;
  titleLabel3 = [(CPSPrimaryManeuverView *)selfCopy titleLabel];
  trailingAnchor5 = [(CPSAbridgableLabel *)titleLabel3 trailingAnchor];
  centeringLayoutGuide13 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
  trailingAnchor6 = [(UILayoutGuide *)centeringLayoutGuide13 trailingAnchor];
  v46 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:0.0 constant:?];
  v132[12] = v46;
  subtitleLabel = [(CPSPrimaryManeuverView *)selfCopy subtitleLabel];
  leadingAnchor7 = [(CPSAbridgableLabel *)subtitleLabel leadingAnchor];
  centeringLayoutGuide14 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
  leadingAnchor8 = [(UILayoutGuide *)centeringLayoutGuide14 leadingAnchor];
  v41 = [leadingAnchor7 constraintEqualToAnchor:0.0 constant:?];
  v132[13] = v41;
  subtitleLabel2 = [(CPSPrimaryManeuverView *)selfCopy subtitleLabel];
  trailingAnchor7 = [(CPSAbridgableLabel *)subtitleLabel2 trailingAnchor];
  centeringLayoutGuide15 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
  trailingAnchor8 = [(UILayoutGuide *)centeringLayoutGuide15 trailingAnchor];
  v36 = [trailingAnchor7 constraintLessThanOrEqualToAnchor:-8.0 constant:?];
  v132[14] = v36;
  subtitleLabel3 = [(CPSPrimaryManeuverView *)selfCopy subtitleLabel];
  topAnchor13 = [(CPSAbridgableLabel *)subtitleLabel3 topAnchor];
  titleLabel4 = [(CPSPrimaryManeuverView *)selfCopy titleLabel];
  bottomAnchor5 = [(CPSAbridgableLabel *)titleLabel4 bottomAnchor];
  v31 = [topAnchor13 constraintEqualToAnchor:4.0 constant:?];
  v132[15] = v31;
  subtitleLabel4 = [(CPSPrimaryManeuverView *)selfCopy subtitleLabel];
  bottomAnchor6 = [(CPSAbridgableLabel *)subtitleLabel4 bottomAnchor];
  centeringLayoutGuide16 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
  bottomAnchor7 = [(UILayoutGuide *)centeringLayoutGuide16 bottomAnchor];
  v26 = [bottomAnchor6 constraintEqualToAnchor:0.0 constant:?];
  v132[16] = v26;
  junctionImageView4 = [(CPSPrimaryManeuverView *)selfCopy junctionImageView];
  bottomAnchor8 = [(CPSAspectFitImageView *)junctionImageView4 bottomAnchor];
  bottomAnchor9 = [(CPSPrimaryManeuverView *)selfCopy bottomAnchor];
  v22 = [bottomAnchor8 constraintEqualToAnchor:0.0 constant:?];
  v132[17] = v22;
  junctionImageView5 = [(CPSPrimaryManeuverView *)selfCopy junctionImageView];
  centerXAnchor3 = [(CPSAspectFitImageView *)junctionImageView5 centerXAnchor];
  centerXAnchor4 = [(CPSPrimaryManeuverView *)selfCopy centerXAnchor];
  v18 = [centerXAnchor3 constraintEqualToAnchor:?];
  v132[18] = v18;
  junctionImageView6 = [(CPSPrimaryManeuverView *)selfCopy junctionImageView];
  leadingAnchor9 = [(CPSAspectFitImageView *)junctionImageView6 leadingAnchor];
  leadingAnchor10 = [(CPSPrimaryManeuverView *)selfCopy leadingAnchor];
  v14 = [leadingAnchor9 constraintGreaterThanOrEqualToAnchor:?];
  v132[19] = v14;
  junctionImageView7 = [(CPSPrimaryManeuverView *)selfCopy junctionImageView];
  trailingAnchor9 = [(CPSAspectFitImageView *)junctionImageView7 trailingAnchor];
  trailingAnchor10 = [(CPSPrimaryManeuverView *)selfCopy trailingAnchor];
  v10 = [trailingAnchor9 constraintLessThanOrEqualToAnchor:?];
  v132[20] = v10;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v132 count:21];
  [v8 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](trailingAnchor10);
  MEMORY[0x277D82BD8](trailingAnchor9);
  MEMORY[0x277D82BD8](junctionImageView7);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](leadingAnchor10);
  MEMORY[0x277D82BD8](leadingAnchor9);
  MEMORY[0x277D82BD8](junctionImageView6);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](centerXAnchor4);
  MEMORY[0x277D82BD8](centerXAnchor3);
  MEMORY[0x277D82BD8](junctionImageView5);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](bottomAnchor9);
  MEMORY[0x277D82BD8](bottomAnchor8);
  MEMORY[0x277D82BD8](junctionImageView4);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](bottomAnchor7);
  MEMORY[0x277D82BD8](centeringLayoutGuide16);
  MEMORY[0x277D82BD8](bottomAnchor6);
  MEMORY[0x277D82BD8](subtitleLabel4);
  MEMORY[0x277D82BD8](v31);
  MEMORY[0x277D82BD8](bottomAnchor5);
  MEMORY[0x277D82BD8](titleLabel4);
  MEMORY[0x277D82BD8](topAnchor13);
  MEMORY[0x277D82BD8](subtitleLabel3);
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](trailingAnchor8);
  MEMORY[0x277D82BD8](centeringLayoutGuide15);
  MEMORY[0x277D82BD8](trailingAnchor7);
  MEMORY[0x277D82BD8](subtitleLabel2);
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](leadingAnchor8);
  MEMORY[0x277D82BD8](centeringLayoutGuide14);
  MEMORY[0x277D82BD8](leadingAnchor7);
  MEMORY[0x277D82BD8](subtitleLabel);
  MEMORY[0x277D82BD8](v46);
  MEMORY[0x277D82BD8](trailingAnchor6);
  MEMORY[0x277D82BD8](centeringLayoutGuide13);
  MEMORY[0x277D82BD8](trailingAnchor5);
  MEMORY[0x277D82BD8](titleLabel3);
  MEMORY[0x277D82BD8](v51);
  MEMORY[0x277D82BD8](bottomAnchor4);
  MEMORY[0x277D82BD8](symbolImageView7);
  MEMORY[0x277D82BD8](topAnchor12);
  MEMORY[0x277D82BD8](titleLabel2);
  MEMORY[0x277D82BD8](v56);
  MEMORY[0x277D82BD8](leadingAnchor6);
  MEMORY[0x277D82BD8](centeringLayoutGuide12);
  MEMORY[0x277D82BD8](leadingAnchor5);
  MEMORY[0x277D82BD8](titleLabel);
  MEMORY[0x277D82BD8](v61);
  MEMORY[0x277D82BD8](heightAnchor);
  MEMORY[0x277D82BD8](symbolImageView6);
  MEMORY[0x277D82BD8](v64);
  MEMORY[0x277D82BD8](widthAnchor2);
  MEMORY[0x277D82BD8](centeringLayoutGuide11);
  MEMORY[0x277D82BD8](widthAnchor);
  MEMORY[0x277D82BD8](symbolImageView5);
  MEMORY[0x277D82BD8](v69);
  MEMORY[0x277D82BD8](centerXAnchor2);
  MEMORY[0x277D82BD8](centeringLayoutGuide10);
  MEMORY[0x277D82BD8](centerXAnchor);
  MEMORY[0x277D82BD8](symbolImageView4);
  MEMORY[0x277D82BD8](v74);
  MEMORY[0x277D82BD8](trailingAnchor4);
  MEMORY[0x277D82BD8](centeringLayoutGuide9);
  MEMORY[0x277D82BD8](trailingAnchor3);
  MEMORY[0x277D82BD8](symbolImageView3);
  MEMORY[0x277D82BD8](v79);
  MEMORY[0x277D82BD8](leadingAnchor4);
  MEMORY[0x277D82BD8](centeringLayoutGuide8);
  MEMORY[0x277D82BD8](leadingAnchor3);
  MEMORY[0x277D82BD8](symbolImageView2);
  MEMORY[0x277D82BD8](v84);
  MEMORY[0x277D82BD8](topAnchor11);
  MEMORY[0x277D82BD8](topAnchor10);
  MEMORY[0x277D82BD8](symbolImageView);
  MEMORY[0x277D82BD8](v88);
  MEMORY[0x277D82BD8](topAnchor9);
  MEMORY[0x277D82BD8](junctionImageView3);
  MEMORY[0x277D82BD8](bottomAnchor3);
  MEMORY[0x277D82BD8](yCenteringGuide2);
  MEMORY[0x277D82BD8](v93);
  MEMORY[0x277D82BD8](topAnchor8);
  MEMORY[0x277D82BD8](yCenteringGuide);
  MEMORY[0x277D82BD8](topAnchor7);
  MEMORY[0x277D82BD8](v97);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](trailingAnchor);
  MEMORY[0x277D82BD8](centeringLayoutGuide7);
  MEMORY[0x277D82BD8](v101);
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](leadingAnchor);
  MEMORY[0x277D82BD8](centeringLayoutGuide6);
  v105 = MEMORY[0x277D82BE0](v130[0]);
  objc_storeStrong(v130, 0);

  return v105;
}

- (id)_junctionViewNoSubtitleConstraints
{
  v208[23] = *MEMORY[0x277D85DE8];
  v202 = objc_opt_class();
  maneuver = [(CPSPrimaryManeuverView *)self maneuver];
  v204 = [v202 symbolImageForManeuver:?];
  MEMORY[0x277D82BD8](v204);
  *&v2 = MEMORY[0x277D82BD8](maneuver).n128_u64[0];
  if (v204)
  {
    yCenteringGuide = [(CPSPrimaryManeuverView *)self yCenteringGuide];
    topAnchor = [(UILayoutGuide *)yCenteringGuide topAnchor];
    topAnchor2 = [(CPSPrimaryManeuverView *)self topAnchor];
    v198 = [(NSLayoutYAxisAnchor *)topAnchor constraintEqualToAnchor:?];
    v208[0] = v198;
    yCenteringGuide2 = [(CPSPrimaryManeuverView *)self yCenteringGuide];
    bottomAnchor = [(UILayoutGuide *)yCenteringGuide2 bottomAnchor];
    junctionImageView = [(CPSPrimaryManeuverView *)self junctionImageView];
    topAnchor3 = [(CPSAspectFitImageView *)junctionImageView topAnchor];
    v193 = [(NSLayoutYAxisAnchor *)bottomAnchor constraintEqualToAnchor:?];
    v208[1] = v193;
    centeringLayoutGuide = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    topAnchor4 = [(UILayoutGuide *)centeringLayoutGuide topAnchor];
    topAnchor5 = [(CPSPrimaryManeuverView *)self topAnchor];
    v189 = [(NSLayoutYAxisAnchor *)topAnchor4 constraintGreaterThanOrEqualToAnchor:?];
    v208[2] = v189;
    centeringLayoutGuide2 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    centerYAnchor = [(UILayoutGuide *)centeringLayoutGuide2 centerYAnchor];
    yCenteringGuide3 = [(CPSPrimaryManeuverView *)self yCenteringGuide];
    centerYAnchor2 = [(UILayoutGuide *)yCenteringGuide3 centerYAnchor];
    v184 = [(NSLayoutYAxisAnchor *)centerYAnchor constraintEqualToAnchor:?];
    v208[3] = v184;
    centeringLayoutGuide3 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    bottomAnchor2 = [(UILayoutGuide *)centeringLayoutGuide3 bottomAnchor];
    junctionImageView2 = [(CPSPrimaryManeuverView *)self junctionImageView];
    topAnchor6 = [(CPSAspectFitImageView *)junctionImageView2 topAnchor];
    v179 = [(NSLayoutYAxisAnchor *)bottomAnchor2 constraintLessThanOrEqualToAnchor:10.0 constant:?];
    v208[4] = v179;
    centeringLayoutGuide4 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    leadingAnchor = [(UILayoutGuide *)centeringLayoutGuide4 leadingAnchor];
    leadingAnchor2 = [(CPSPrimaryManeuverView *)self leadingAnchor];
    v175 = [(NSLayoutXAxisAnchor *)leadingAnchor constraintEqualToAnchor:13.0 constant:?];
    v208[5] = v175;
    centeringLayoutGuide5 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    trailingAnchor = [(UILayoutGuide *)centeringLayoutGuide5 trailingAnchor];
    trailingAnchor2 = [(CPSPrimaryManeuverView *)self trailingAnchor];
    v171 = [(NSLayoutXAxisAnchor *)trailingAnchor constraintEqualToAnchor:-13.0 constant:?];
    v208[6] = v171;
    symbolImageView = [(CPSPrimaryManeuverView *)self symbolImageView];
    topAnchor7 = [(UIImageView *)symbolImageView topAnchor];
    centeringLayoutGuide6 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    topAnchor8 = [(UILayoutGuide *)centeringLayoutGuide6 topAnchor];
    v166 = [topAnchor7 constraintEqualToAnchor:? constant:?];
    v208[7] = v166;
    symbolImageView2 = [(CPSPrimaryManeuverView *)self symbolImageView];
    leadingAnchor3 = [(UIImageView *)symbolImageView2 leadingAnchor];
    centeringLayoutGuide7 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    leadingAnchor4 = [(UILayoutGuide *)centeringLayoutGuide7 leadingAnchor];
    v161 = [leadingAnchor3 constraintEqualToAnchor:0.0 constant:?];
    v208[8] = v161;
    symbolImageView3 = [(CPSPrimaryManeuverView *)self symbolImageView];
    heightAnchor = [(UIImageView *)symbolImageView3 heightAnchor];
    [(CPSPrimaryManeuverView *)self symbolImageHeight];
    v158 = [heightAnchor constraintLessThanOrEqualToConstant:?];
    v208[9] = v158;
    symbolImageView4 = [(CPSPrimaryManeuverView *)self symbolImageView];
    bottomAnchor3 = [(UIImageView *)symbolImageView4 bottomAnchor];
    centeringLayoutGuide8 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    bottomAnchor4 = [(UILayoutGuide *)centeringLayoutGuide8 bottomAnchor];
    v153 = [bottomAnchor3 constraintEqualToAnchor:0.0 constant:?];
    v208[10] = v153;
    titleLabel = [(CPSPrimaryManeuverView *)self titleLabel];
    leadingAnchor5 = [(CPSAbridgableLabel *)titleLabel leadingAnchor];
    symbolImageView5 = [(CPSPrimaryManeuverView *)self symbolImageView];
    trailingAnchor3 = [(UIImageView *)symbolImageView5 trailingAnchor];
    v148 = [leadingAnchor5 constraintEqualToAnchor:8.0 constant:?];
    v208[11] = v148;
    titleLabel2 = [(CPSPrimaryManeuverView *)self titleLabel];
    centerYAnchor3 = [(CPSAbridgableLabel *)titleLabel2 centerYAnchor];
    symbolImageView6 = [(CPSPrimaryManeuverView *)self symbolImageView];
    centerYAnchor4 = [(UIImageView *)symbolImageView6 centerYAnchor];
    v143 = [centerYAnchor3 constraintEqualToAnchor:0.0 constant:?];
    v208[12] = v143;
    titleLabel3 = [(CPSPrimaryManeuverView *)self titleLabel];
    trailingAnchor4 = [(CPSAbridgableLabel *)titleLabel3 trailingAnchor];
    centeringLayoutGuide9 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    trailingAnchor5 = [(UILayoutGuide *)centeringLayoutGuide9 trailingAnchor];
    v138 = [trailingAnchor4 constraintLessThanOrEqualToAnchor:0.0 constant:?];
    v208[13] = v138;
    titleLabel4 = [(CPSPrimaryManeuverView *)self titleLabel];
    bottomAnchor5 = [(CPSAbridgableLabel *)titleLabel4 bottomAnchor];
    centeringLayoutGuide10 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    bottomAnchor6 = [(UILayoutGuide *)centeringLayoutGuide10 bottomAnchor];
    v133 = [bottomAnchor5 constraintLessThanOrEqualToAnchor:0.0 constant:?];
    v208[14] = v133;
    subtitleLabel = [(CPSPrimaryManeuverView *)self subtitleLabel];
    leadingAnchor6 = [(CPSAbridgableLabel *)subtitleLabel leadingAnchor];
    centeringLayoutGuide11 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    leadingAnchor7 = [(UILayoutGuide *)centeringLayoutGuide11 leadingAnchor];
    v128 = [leadingAnchor6 constraintEqualToAnchor:0.0 constant:?];
    v208[15] = v128;
    subtitleLabel2 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    trailingAnchor6 = [(CPSAbridgableLabel *)subtitleLabel2 trailingAnchor];
    centeringLayoutGuide12 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    trailingAnchor7 = [(UILayoutGuide *)centeringLayoutGuide12 trailingAnchor];
    v123 = [trailingAnchor6 constraintLessThanOrEqualToAnchor:-8.0 constant:?];
    v208[16] = v123;
    subtitleLabel3 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    topAnchor9 = [(CPSAbridgableLabel *)subtitleLabel3 topAnchor];
    symbolImageView7 = [(CPSPrimaryManeuverView *)self symbolImageView];
    bottomAnchor7 = [(UIImageView *)symbolImageView7 bottomAnchor];
    v118 = [topAnchor9 constraintEqualToAnchor:4.0 constant:?];
    v208[17] = v118;
    subtitleLabel4 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    heightAnchor2 = [(CPSAbridgableLabel *)subtitleLabel4 heightAnchor];
    v115 = [heightAnchor2 constraintEqualToConstant:0.0];
    v208[18] = v115;
    junctionImageView3 = [(CPSPrimaryManeuverView *)self junctionImageView];
    bottomAnchor8 = [(CPSAspectFitImageView *)junctionImageView3 bottomAnchor];
    bottomAnchor9 = [(CPSPrimaryManeuverView *)self bottomAnchor];
    v111 = [bottomAnchor8 constraintEqualToAnchor:0.0 constant:?];
    v208[19] = v111;
    junctionImageView4 = [(CPSPrimaryManeuverView *)self junctionImageView];
    centerXAnchor = [(CPSAspectFitImageView *)junctionImageView4 centerXAnchor];
    centerXAnchor2 = [(CPSPrimaryManeuverView *)self centerXAnchor];
    v107 = [centerXAnchor constraintEqualToAnchor:?];
    v208[20] = v107;
    junctionImageView5 = [(CPSPrimaryManeuverView *)self junctionImageView];
    leadingAnchor8 = [(CPSAspectFitImageView *)junctionImageView5 leadingAnchor];
    leadingAnchor9 = [(CPSPrimaryManeuverView *)self leadingAnchor];
    v103 = [leadingAnchor8 constraintGreaterThanOrEqualToAnchor:?];
    v208[21] = v103;
    junctionImageView6 = [(CPSPrimaryManeuverView *)self junctionImageView];
    trailingAnchor8 = [(CPSAspectFitImageView *)junctionImageView6 trailingAnchor];
    trailingAnchor9 = [(CPSPrimaryManeuverView *)self trailingAnchor];
    v99 = [trailingAnchor8 constraintLessThanOrEqualToAnchor:?];
    v208[22] = v99;
    v206 = [MEMORY[0x277CBEA60] arrayWithObjects:v208 count:23];
    MEMORY[0x277D82BD8](v99);
    MEMORY[0x277D82BD8](trailingAnchor9);
    MEMORY[0x277D82BD8](trailingAnchor8);
    MEMORY[0x277D82BD8](junctionImageView6);
    MEMORY[0x277D82BD8](v103);
    MEMORY[0x277D82BD8](leadingAnchor9);
    MEMORY[0x277D82BD8](leadingAnchor8);
    MEMORY[0x277D82BD8](junctionImageView5);
    MEMORY[0x277D82BD8](v107);
    MEMORY[0x277D82BD8](centerXAnchor2);
    MEMORY[0x277D82BD8](centerXAnchor);
    MEMORY[0x277D82BD8](junctionImageView4);
    MEMORY[0x277D82BD8](v111);
    MEMORY[0x277D82BD8](bottomAnchor9);
    MEMORY[0x277D82BD8](bottomAnchor8);
    MEMORY[0x277D82BD8](junctionImageView3);
    MEMORY[0x277D82BD8](v115);
    MEMORY[0x277D82BD8](heightAnchor2);
    MEMORY[0x277D82BD8](subtitleLabel4);
    MEMORY[0x277D82BD8](v118);
    MEMORY[0x277D82BD8](bottomAnchor7);
    MEMORY[0x277D82BD8](symbolImageView7);
    MEMORY[0x277D82BD8](topAnchor9);
    MEMORY[0x277D82BD8](subtitleLabel3);
    MEMORY[0x277D82BD8](v123);
    MEMORY[0x277D82BD8](trailingAnchor7);
    MEMORY[0x277D82BD8](centeringLayoutGuide12);
    MEMORY[0x277D82BD8](trailingAnchor6);
    MEMORY[0x277D82BD8](subtitleLabel2);
    MEMORY[0x277D82BD8](v128);
    MEMORY[0x277D82BD8](leadingAnchor7);
    MEMORY[0x277D82BD8](centeringLayoutGuide11);
    MEMORY[0x277D82BD8](leadingAnchor6);
    MEMORY[0x277D82BD8](subtitleLabel);
    MEMORY[0x277D82BD8](v133);
    MEMORY[0x277D82BD8](bottomAnchor6);
    MEMORY[0x277D82BD8](centeringLayoutGuide10);
    MEMORY[0x277D82BD8](bottomAnchor5);
    MEMORY[0x277D82BD8](titleLabel4);
    MEMORY[0x277D82BD8](v138);
    MEMORY[0x277D82BD8](trailingAnchor5);
    MEMORY[0x277D82BD8](centeringLayoutGuide9);
    MEMORY[0x277D82BD8](trailingAnchor4);
    MEMORY[0x277D82BD8](titleLabel3);
    MEMORY[0x277D82BD8](v143);
    MEMORY[0x277D82BD8](centerYAnchor4);
    MEMORY[0x277D82BD8](symbolImageView6);
    MEMORY[0x277D82BD8](centerYAnchor3);
    MEMORY[0x277D82BD8](titleLabel2);
    MEMORY[0x277D82BD8](v148);
    MEMORY[0x277D82BD8](trailingAnchor3);
    MEMORY[0x277D82BD8](symbolImageView5);
    MEMORY[0x277D82BD8](leadingAnchor5);
    MEMORY[0x277D82BD8](titleLabel);
    MEMORY[0x277D82BD8](v153);
    MEMORY[0x277D82BD8](bottomAnchor4);
    MEMORY[0x277D82BD8](centeringLayoutGuide8);
    MEMORY[0x277D82BD8](bottomAnchor3);
    MEMORY[0x277D82BD8](symbolImageView4);
    MEMORY[0x277D82BD8](v158);
    MEMORY[0x277D82BD8](heightAnchor);
    MEMORY[0x277D82BD8](symbolImageView3);
    MEMORY[0x277D82BD8](v161);
    MEMORY[0x277D82BD8](leadingAnchor4);
    MEMORY[0x277D82BD8](centeringLayoutGuide7);
    MEMORY[0x277D82BD8](leadingAnchor3);
    MEMORY[0x277D82BD8](symbolImageView2);
    MEMORY[0x277D82BD8](v166);
    MEMORY[0x277D82BD8](topAnchor8);
    MEMORY[0x277D82BD8](centeringLayoutGuide6);
    MEMORY[0x277D82BD8](topAnchor7);
    MEMORY[0x277D82BD8](symbolImageView);
    MEMORY[0x277D82BD8](v171);
    MEMORY[0x277D82BD8](trailingAnchor2);
    MEMORY[0x277D82BD8](trailingAnchor);
    MEMORY[0x277D82BD8](centeringLayoutGuide5);
    MEMORY[0x277D82BD8](v175);
    MEMORY[0x277D82BD8](leadingAnchor2);
    MEMORY[0x277D82BD8](leadingAnchor);
    MEMORY[0x277D82BD8](centeringLayoutGuide4);
    MEMORY[0x277D82BD8](v179);
    MEMORY[0x277D82BD8](topAnchor6);
    MEMORY[0x277D82BD8](junctionImageView2);
    MEMORY[0x277D82BD8](bottomAnchor2);
    MEMORY[0x277D82BD8](centeringLayoutGuide3);
    MEMORY[0x277D82BD8](v184);
    MEMORY[0x277D82BD8](centerYAnchor2);
    MEMORY[0x277D82BD8](yCenteringGuide3);
    MEMORY[0x277D82BD8](centerYAnchor);
    MEMORY[0x277D82BD8](centeringLayoutGuide2);
    MEMORY[0x277D82BD8](v189);
    MEMORY[0x277D82BD8](topAnchor5);
    MEMORY[0x277D82BD8](topAnchor4);
    MEMORY[0x277D82BD8](centeringLayoutGuide);
    MEMORY[0x277D82BD8](v193);
    MEMORY[0x277D82BD8](topAnchor3);
    MEMORY[0x277D82BD8](junctionImageView);
    MEMORY[0x277D82BD8](bottomAnchor);
    MEMORY[0x277D82BD8](yCenteringGuide2);
    MEMORY[0x277D82BD8](v198);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](topAnchor);
    MEMORY[0x277D82BD8](yCenteringGuide);
  }

  else
  {
    centeringLayoutGuide13 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    centerYAnchor5 = [(UILayoutGuide *)centeringLayoutGuide13 centerYAnchor];
    yCenteringGuide4 = [(CPSPrimaryManeuverView *)self yCenteringGuide];
    centerYAnchor6 = [(UILayoutGuide *)yCenteringGuide4 centerYAnchor];
    v94 = [(NSLayoutYAxisAnchor *)centerYAnchor5 constraintEqualToAnchor:?];
    v207[0] = v94;
    centeringLayoutGuide14 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    leadingAnchor10 = [(UILayoutGuide *)centeringLayoutGuide14 leadingAnchor];
    leadingAnchor11 = [(CPSPrimaryManeuverView *)self leadingAnchor];
    v90 = [(NSLayoutXAxisAnchor *)leadingAnchor10 constraintEqualToAnchor:13.0 constant:?];
    v207[1] = v90;
    centeringLayoutGuide15 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    trailingAnchor10 = [(UILayoutGuide *)centeringLayoutGuide15 trailingAnchor];
    trailingAnchor11 = [(CPSPrimaryManeuverView *)self trailingAnchor];
    v86 = [(NSLayoutXAxisAnchor *)trailingAnchor10 constraintEqualToAnchor:-13.0 constant:?];
    v207[2] = v86;
    centeringLayoutGuide16 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    bottomAnchor10 = [(UILayoutGuide *)centeringLayoutGuide16 bottomAnchor];
    junctionImageView7 = [(CPSPrimaryManeuverView *)self junctionImageView];
    topAnchor10 = [(CPSAspectFitImageView *)junctionImageView7 topAnchor];
    v81 = [(NSLayoutYAxisAnchor *)bottomAnchor10 constraintLessThanOrEqualToAnchor:10.0 constant:?];
    v207[3] = v81;
    topAnchor11 = [(CPSPrimaryManeuverView *)self topAnchor];
    centeringLayoutGuide17 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    topAnchor12 = [(UILayoutGuide *)centeringLayoutGuide17 topAnchor];
    v77 = [topAnchor11 constraintLessThanOrEqualToAnchor:?];
    v207[4] = v77;
    topAnchor13 = [(CPSPrimaryManeuverView *)self topAnchor];
    yCenteringGuide5 = [(CPSPrimaryManeuverView *)self yCenteringGuide];
    topAnchor14 = [(UILayoutGuide *)yCenteringGuide5 topAnchor];
    v73 = [topAnchor13 constraintEqualToAnchor:?];
    v207[5] = v73;
    yCenteringGuide6 = [(CPSPrimaryManeuverView *)self yCenteringGuide];
    bottomAnchor11 = [(UILayoutGuide *)yCenteringGuide6 bottomAnchor];
    junctionImageView8 = [(CPSPrimaryManeuverView *)self junctionImageView];
    topAnchor15 = [(CPSAspectFitImageView *)junctionImageView8 topAnchor];
    v68 = [(NSLayoutYAxisAnchor *)bottomAnchor11 constraintEqualToAnchor:?];
    v207[6] = v68;
    titleLabel5 = [(CPSPrimaryManeuverView *)self titleLabel];
    topAnchor16 = [(CPSAbridgableLabel *)titleLabel5 topAnchor];
    centeringLayoutGuide18 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    topAnchor17 = [(UILayoutGuide *)centeringLayoutGuide18 topAnchor];
    v63 = [topAnchor16 constraintEqualToAnchor:? constant:?];
    v207[7] = v63;
    titleLabel6 = [(CPSPrimaryManeuverView *)self titleLabel];
    leadingAnchor12 = [(CPSAbridgableLabel *)titleLabel6 leadingAnchor];
    centeringLayoutGuide19 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    leadingAnchor13 = [(UILayoutGuide *)centeringLayoutGuide19 leadingAnchor];
    v58 = [leadingAnchor12 constraintEqualToAnchor:? constant:?];
    v207[8] = v58;
    titleLabel7 = [(CPSPrimaryManeuverView *)self titleLabel];
    trailingAnchor12 = [(CPSAbridgableLabel *)titleLabel7 trailingAnchor];
    centeringLayoutGuide20 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    trailingAnchor13 = [(UILayoutGuide *)centeringLayoutGuide20 trailingAnchor];
    v53 = [trailingAnchor12 constraintLessThanOrEqualToAnchor:? constant:?];
    v207[9] = v53;
    titleLabel8 = [(CPSPrimaryManeuverView *)self titleLabel];
    bottomAnchor12 = [(CPSAbridgableLabel *)titleLabel8 bottomAnchor];
    centeringLayoutGuide21 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    bottomAnchor13 = [(UILayoutGuide *)centeringLayoutGuide21 bottomAnchor];
    v48 = [bottomAnchor12 constraintLessThanOrEqualToAnchor:0.0 constant:?];
    v207[10] = v48;
    subtitleLabel5 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    leadingAnchor14 = [(CPSAbridgableLabel *)subtitleLabel5 leadingAnchor];
    centeringLayoutGuide22 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    leadingAnchor15 = [(UILayoutGuide *)centeringLayoutGuide22 leadingAnchor];
    v43 = [leadingAnchor14 constraintEqualToAnchor:8.0 constant:?];
    v207[11] = v43;
    subtitleLabel6 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    trailingAnchor14 = [(CPSAbridgableLabel *)subtitleLabel6 trailingAnchor];
    centeringLayoutGuide23 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    trailingAnchor15 = [(UILayoutGuide *)centeringLayoutGuide23 trailingAnchor];
    v38 = [trailingAnchor14 constraintLessThanOrEqualToAnchor:-8.0 constant:?];
    v207[12] = v38;
    subtitleLabel7 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    topAnchor18 = [(CPSAbridgableLabel *)subtitleLabel7 topAnchor];
    titleLabel9 = [(CPSPrimaryManeuverView *)self titleLabel];
    bottomAnchor14 = [(CPSAbridgableLabel *)titleLabel9 bottomAnchor];
    v33 = [topAnchor18 constraintEqualToAnchor:0.0 constant:?];
    v207[13] = v33;
    subtitleLabel8 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    bottomAnchor15 = [(CPSAbridgableLabel *)subtitleLabel8 bottomAnchor];
    centeringLayoutGuide24 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    bottomAnchor16 = [(UILayoutGuide *)centeringLayoutGuide24 bottomAnchor];
    v28 = [bottomAnchor15 constraintEqualToAnchor:0.0 constant:?];
    v207[14] = v28;
    subtitleLabel9 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    heightAnchor3 = [(CPSAbridgableLabel *)subtitleLabel9 heightAnchor];
    v25 = [heightAnchor3 constraintEqualToConstant:0.0];
    v207[15] = v25;
    junctionImageView9 = [(CPSPrimaryManeuverView *)self junctionImageView];
    topAnchor19 = [(CPSAspectFitImageView *)junctionImageView9 topAnchor];
    centeringLayoutGuide25 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    bottomAnchor17 = [(UILayoutGuide *)centeringLayoutGuide25 bottomAnchor];
    v20 = [topAnchor19 constraintGreaterThanOrEqualToAnchor:0.0 constant:?];
    v207[16] = v20;
    junctionImageView10 = [(CPSPrimaryManeuverView *)self junctionImageView];
    bottomAnchor18 = [(CPSAspectFitImageView *)junctionImageView10 bottomAnchor];
    bottomAnchor19 = [(CPSPrimaryManeuverView *)self bottomAnchor];
    v16 = [bottomAnchor18 constraintEqualToAnchor:0.0 constant:?];
    v207[17] = v16;
    junctionImageView11 = [(CPSPrimaryManeuverView *)self junctionImageView];
    centerXAnchor3 = [(CPSAspectFitImageView *)junctionImageView11 centerXAnchor];
    centerXAnchor4 = [(CPSPrimaryManeuverView *)self centerXAnchor];
    v12 = [centerXAnchor3 constraintEqualToAnchor:?];
    v207[18] = v12;
    junctionImageView12 = [(CPSPrimaryManeuverView *)self junctionImageView];
    leadingAnchor16 = [(CPSAspectFitImageView *)junctionImageView12 leadingAnchor];
    leadingAnchor17 = [(CPSPrimaryManeuverView *)self leadingAnchor];
    v8 = [leadingAnchor16 constraintGreaterThanOrEqualToAnchor:?];
    v207[19] = v8;
    junctionImageView13 = [(CPSPrimaryManeuverView *)self junctionImageView];
    trailingAnchor16 = [(CPSAspectFitImageView *)junctionImageView13 trailingAnchor];
    trailingAnchor17 = [(CPSPrimaryManeuverView *)self trailingAnchor];
    v4 = [trailingAnchor16 constraintLessThanOrEqualToAnchor:?];
    v207[20] = v4;
    v206 = [MEMORY[0x277CBEA60] arrayWithObjects:v207 count:21];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](trailingAnchor17);
    MEMORY[0x277D82BD8](trailingAnchor16);
    MEMORY[0x277D82BD8](junctionImageView13);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](leadingAnchor17);
    MEMORY[0x277D82BD8](leadingAnchor16);
    MEMORY[0x277D82BD8](junctionImageView12);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](centerXAnchor4);
    MEMORY[0x277D82BD8](centerXAnchor3);
    MEMORY[0x277D82BD8](junctionImageView11);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](bottomAnchor19);
    MEMORY[0x277D82BD8](bottomAnchor18);
    MEMORY[0x277D82BD8](junctionImageView10);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](bottomAnchor17);
    MEMORY[0x277D82BD8](centeringLayoutGuide25);
    MEMORY[0x277D82BD8](topAnchor19);
    MEMORY[0x277D82BD8](junctionImageView9);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](heightAnchor3);
    MEMORY[0x277D82BD8](subtitleLabel9);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](bottomAnchor16);
    MEMORY[0x277D82BD8](centeringLayoutGuide24);
    MEMORY[0x277D82BD8](bottomAnchor15);
    MEMORY[0x277D82BD8](subtitleLabel8);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](bottomAnchor14);
    MEMORY[0x277D82BD8](titleLabel9);
    MEMORY[0x277D82BD8](topAnchor18);
    MEMORY[0x277D82BD8](subtitleLabel7);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](trailingAnchor15);
    MEMORY[0x277D82BD8](centeringLayoutGuide23);
    MEMORY[0x277D82BD8](trailingAnchor14);
    MEMORY[0x277D82BD8](subtitleLabel6);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](leadingAnchor15);
    MEMORY[0x277D82BD8](centeringLayoutGuide22);
    MEMORY[0x277D82BD8](leadingAnchor14);
    MEMORY[0x277D82BD8](subtitleLabel5);
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](bottomAnchor13);
    MEMORY[0x277D82BD8](centeringLayoutGuide21);
    MEMORY[0x277D82BD8](bottomAnchor12);
    MEMORY[0x277D82BD8](titleLabel8);
    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](trailingAnchor13);
    MEMORY[0x277D82BD8](centeringLayoutGuide20);
    MEMORY[0x277D82BD8](trailingAnchor12);
    MEMORY[0x277D82BD8](titleLabel7);
    MEMORY[0x277D82BD8](v58);
    MEMORY[0x277D82BD8](leadingAnchor13);
    MEMORY[0x277D82BD8](centeringLayoutGuide19);
    MEMORY[0x277D82BD8](leadingAnchor12);
    MEMORY[0x277D82BD8](titleLabel6);
    MEMORY[0x277D82BD8](v63);
    MEMORY[0x277D82BD8](topAnchor17);
    MEMORY[0x277D82BD8](centeringLayoutGuide18);
    MEMORY[0x277D82BD8](topAnchor16);
    MEMORY[0x277D82BD8](titleLabel5);
    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](topAnchor15);
    MEMORY[0x277D82BD8](junctionImageView8);
    MEMORY[0x277D82BD8](bottomAnchor11);
    MEMORY[0x277D82BD8](yCenteringGuide6);
    MEMORY[0x277D82BD8](v73);
    MEMORY[0x277D82BD8](topAnchor14);
    MEMORY[0x277D82BD8](yCenteringGuide5);
    MEMORY[0x277D82BD8](topAnchor13);
    MEMORY[0x277D82BD8](v77);
    MEMORY[0x277D82BD8](topAnchor12);
    MEMORY[0x277D82BD8](centeringLayoutGuide17);
    MEMORY[0x277D82BD8](topAnchor11);
    MEMORY[0x277D82BD8](v81);
    MEMORY[0x277D82BD8](topAnchor10);
    MEMORY[0x277D82BD8](junctionImageView7);
    MEMORY[0x277D82BD8](bottomAnchor10);
    MEMORY[0x277D82BD8](centeringLayoutGuide16);
    MEMORY[0x277D82BD8](v86);
    MEMORY[0x277D82BD8](trailingAnchor11);
    MEMORY[0x277D82BD8](trailingAnchor10);
    MEMORY[0x277D82BD8](centeringLayoutGuide15);
    MEMORY[0x277D82BD8](v90);
    MEMORY[0x277D82BD8](leadingAnchor11);
    MEMORY[0x277D82BD8](leadingAnchor10);
    MEMORY[0x277D82BD8](centeringLayoutGuide14);
    MEMORY[0x277D82BD8](v94);
    MEMORY[0x277D82BD8](centerYAnchor6);
    MEMORY[0x277D82BD8](yCenteringGuide4);
    MEMORY[0x277D82BD8](centerYAnchor5);
    MEMORY[0x277D82BD8](centeringLayoutGuide13);
  }

  return v206;
}

- (id)_junctionViewNoInstructionWideImageConstraints
{
  v118[25] = *MEMORY[0x277D85DE8];
  yCenteringGuide = [(CPSPrimaryManeuverView *)self yCenteringGuide];
  topAnchor = [(UILayoutGuide *)yCenteringGuide topAnchor];
  topAnchor2 = [(CPSPrimaryManeuverView *)self topAnchor];
  v113 = [(NSLayoutYAxisAnchor *)topAnchor constraintEqualToAnchor:?];
  v118[0] = v113;
  yCenteringGuide2 = [(CPSPrimaryManeuverView *)self yCenteringGuide];
  bottomAnchor = [(UILayoutGuide *)yCenteringGuide2 bottomAnchor];
  junctionImageView = [(CPSPrimaryManeuverView *)self junctionImageView];
  topAnchor3 = [(CPSAspectFitImageView *)junctionImageView topAnchor];
  v108 = [(NSLayoutYAxisAnchor *)bottomAnchor constraintEqualToAnchor:?];
  v118[1] = v108;
  centeringLayoutGuide = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  topAnchor4 = [(UILayoutGuide *)centeringLayoutGuide topAnchor];
  topAnchor5 = [(CPSPrimaryManeuverView *)self topAnchor];
  v104 = [(NSLayoutYAxisAnchor *)topAnchor4 constraintGreaterThanOrEqualToAnchor:?];
  v118[2] = v104;
  centeringLayoutGuide2 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  centerYAnchor = [(UILayoutGuide *)centeringLayoutGuide2 centerYAnchor];
  yCenteringGuide3 = [(CPSPrimaryManeuverView *)self yCenteringGuide];
  centerYAnchor2 = [(UILayoutGuide *)yCenteringGuide3 centerYAnchor];
  v99 = [(NSLayoutYAxisAnchor *)centerYAnchor constraintEqualToAnchor:?];
  v118[3] = v99;
  centeringLayoutGuide3 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  bottomAnchor2 = [(UILayoutGuide *)centeringLayoutGuide3 bottomAnchor];
  junctionImageView2 = [(CPSPrimaryManeuverView *)self junctionImageView];
  topAnchor6 = [(CPSAspectFitImageView *)junctionImageView2 topAnchor];
  v94 = [(NSLayoutYAxisAnchor *)bottomAnchor2 constraintLessThanOrEqualToAnchor:10.0 constant:?];
  v118[4] = v94;
  centeringLayoutGuide4 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  leadingAnchor = [(UILayoutGuide *)centeringLayoutGuide4 leadingAnchor];
  leadingAnchor2 = [(CPSPrimaryManeuverView *)self leadingAnchor];
  v90 = [(NSLayoutXAxisAnchor *)leadingAnchor constraintEqualToAnchor:13.0 constant:?];
  v118[5] = v90;
  centeringLayoutGuide5 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  trailingAnchor = [(UILayoutGuide *)centeringLayoutGuide5 trailingAnchor];
  trailingAnchor2 = [(CPSPrimaryManeuverView *)self trailingAnchor];
  v86 = [(NSLayoutXAxisAnchor *)trailingAnchor constraintEqualToAnchor:-13.0 constant:?];
  v118[6] = v86;
  symbolImageView = [(CPSPrimaryManeuverView *)self symbolImageView];
  topAnchor7 = [(UIImageView *)symbolImageView topAnchor];
  centeringLayoutGuide6 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  topAnchor8 = [(UILayoutGuide *)centeringLayoutGuide6 topAnchor];
  v81 = [topAnchor7 constraintEqualToAnchor:? constant:?];
  v118[7] = v81;
  symbolImageView2 = [(CPSPrimaryManeuverView *)self symbolImageView];
  leadingAnchor3 = [(UIImageView *)symbolImageView2 leadingAnchor];
  centeringLayoutGuide7 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  leadingAnchor4 = [(UILayoutGuide *)centeringLayoutGuide7 leadingAnchor];
  v76 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:0.0 constant:?];
  v118[8] = v76;
  symbolImageView3 = [(CPSPrimaryManeuverView *)self symbolImageView];
  trailingAnchor3 = [(UIImageView *)symbolImageView3 trailingAnchor];
  centeringLayoutGuide8 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  trailingAnchor4 = [(UILayoutGuide *)centeringLayoutGuide8 trailingAnchor];
  v71 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:0.0 constant:?];
  v118[9] = v71;
  symbolImageView4 = [(CPSPrimaryManeuverView *)self symbolImageView];
  centerXAnchor = [(UIImageView *)symbolImageView4 centerXAnchor];
  centeringLayoutGuide9 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  centerXAnchor2 = [(UILayoutGuide *)centeringLayoutGuide9 centerXAnchor];
  v66 = [centerXAnchor constraintEqualToAnchor:?];
  v118[10] = v66;
  symbolImageView5 = [(CPSPrimaryManeuverView *)self symbolImageView];
  widthAnchor = [(UIImageView *)symbolImageView5 widthAnchor];
  centeringLayoutGuide10 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  widthAnchor2 = [(UILayoutGuide *)centeringLayoutGuide10 widthAnchor];
  v61 = [widthAnchor constraintLessThanOrEqualToAnchor:?];
  v118[11] = v61;
  symbolImageView6 = [(CPSPrimaryManeuverView *)self symbolImageView];
  heightAnchor = [(UIImageView *)symbolImageView6 heightAnchor];
  [(CPSPrimaryManeuverView *)self symbolImageHeight];
  v58 = [heightAnchor constraintLessThanOrEqualToConstant:?];
  v118[12] = v58;
  titleLabel = [(CPSPrimaryManeuverView *)self titleLabel];
  leadingAnchor5 = [(CPSAbridgableLabel *)titleLabel leadingAnchor];
  centeringLayoutGuide11 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  leadingAnchor6 = [(UILayoutGuide *)centeringLayoutGuide11 leadingAnchor];
  v53 = [leadingAnchor5 constraintEqualToAnchor:8.0 constant:?];
  v118[13] = v53;
  titleLabel2 = [(CPSPrimaryManeuverView *)self titleLabel];
  topAnchor9 = [(CPSAbridgableLabel *)titleLabel2 topAnchor];
  symbolImageView7 = [(CPSPrimaryManeuverView *)self symbolImageView];
  bottomAnchor3 = [(UIImageView *)symbolImageView7 bottomAnchor];
  v48 = [topAnchor9 constraintEqualToAnchor:0.0 constant:?];
  v118[14] = v48;
  titleLabel3 = [(CPSPrimaryManeuverView *)self titleLabel];
  trailingAnchor5 = [(CPSAbridgableLabel *)titleLabel3 trailingAnchor];
  centeringLayoutGuide12 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  trailingAnchor6 = [(UILayoutGuide *)centeringLayoutGuide12 trailingAnchor];
  v43 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:0.0 constant:?];
  v118[15] = v43;
  titleLabel4 = [(CPSPrimaryManeuverView *)self titleLabel];
  bottomAnchor4 = [(CPSAbridgableLabel *)titleLabel4 bottomAnchor];
  centeringLayoutGuide13 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  bottomAnchor5 = [(UILayoutGuide *)centeringLayoutGuide13 bottomAnchor];
  v38 = [bottomAnchor4 constraintLessThanOrEqualToAnchor:0.0 constant:?];
  v118[16] = v38;
  subtitleLabel = [(CPSPrimaryManeuverView *)self subtitleLabel];
  leadingAnchor7 = [(CPSAbridgableLabel *)subtitleLabel leadingAnchor];
  centeringLayoutGuide14 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  leadingAnchor8 = [(UILayoutGuide *)centeringLayoutGuide14 leadingAnchor];
  v33 = [leadingAnchor7 constraintEqualToAnchor:0.0 constant:?];
  v118[17] = v33;
  subtitleLabel2 = [(CPSPrimaryManeuverView *)self subtitleLabel];
  trailingAnchor7 = [(CPSAbridgableLabel *)subtitleLabel2 trailingAnchor];
  centeringLayoutGuide15 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  trailingAnchor8 = [(UILayoutGuide *)centeringLayoutGuide15 trailingAnchor];
  v28 = [trailingAnchor7 constraintLessThanOrEqualToAnchor:-8.0 constant:?];
  v118[18] = v28;
  subtitleLabel3 = [(CPSPrimaryManeuverView *)self subtitleLabel];
  topAnchor10 = [(CPSAbridgableLabel *)subtitleLabel3 topAnchor];
  symbolImageView8 = [(CPSPrimaryManeuverView *)self symbolImageView];
  bottomAnchor6 = [(UIImageView *)symbolImageView8 bottomAnchor];
  v23 = [topAnchor10 constraintEqualToAnchor:4.0 constant:?];
  v118[19] = v23;
  subtitleLabel4 = [(CPSPrimaryManeuverView *)self subtitleLabel];
  heightAnchor2 = [(CPSAbridgableLabel *)subtitleLabel4 heightAnchor];
  v20 = [heightAnchor2 constraintEqualToConstant:0.0];
  v118[20] = v20;
  junctionImageView3 = [(CPSPrimaryManeuverView *)self junctionImageView];
  bottomAnchor7 = [(CPSAspectFitImageView *)junctionImageView3 bottomAnchor];
  bottomAnchor8 = [(CPSPrimaryManeuverView *)self bottomAnchor];
  v16 = [bottomAnchor7 constraintEqualToAnchor:0.0 constant:?];
  v118[21] = v16;
  junctionImageView4 = [(CPSPrimaryManeuverView *)self junctionImageView];
  centerXAnchor3 = [(CPSAspectFitImageView *)junctionImageView4 centerXAnchor];
  centerXAnchor4 = [(CPSPrimaryManeuverView *)self centerXAnchor];
  v12 = [centerXAnchor3 constraintEqualToAnchor:?];
  v118[22] = v12;
  junctionImageView5 = [(CPSPrimaryManeuverView *)self junctionImageView];
  leadingAnchor9 = [(CPSAspectFitImageView *)junctionImageView5 leadingAnchor];
  leadingAnchor10 = [(CPSPrimaryManeuverView *)self leadingAnchor];
  v8 = [leadingAnchor9 constraintGreaterThanOrEqualToAnchor:?];
  v118[23] = v8;
  junctionImageView6 = [(CPSPrimaryManeuverView *)self junctionImageView];
  trailingAnchor9 = [(CPSAspectFitImageView *)junctionImageView6 trailingAnchor];
  trailingAnchor10 = [(CPSPrimaryManeuverView *)self trailingAnchor];
  v3 = [trailingAnchor9 constraintLessThanOrEqualToAnchor:?];
  v118[24] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v118 count:25];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](trailingAnchor10);
  MEMORY[0x277D82BD8](trailingAnchor9);
  MEMORY[0x277D82BD8](junctionImageView6);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](leadingAnchor10);
  MEMORY[0x277D82BD8](leadingAnchor9);
  MEMORY[0x277D82BD8](junctionImageView5);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](centerXAnchor4);
  MEMORY[0x277D82BD8](centerXAnchor3);
  MEMORY[0x277D82BD8](junctionImageView4);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](bottomAnchor8);
  MEMORY[0x277D82BD8](bottomAnchor7);
  MEMORY[0x277D82BD8](junctionImageView3);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](heightAnchor2);
  MEMORY[0x277D82BD8](subtitleLabel4);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](bottomAnchor6);
  MEMORY[0x277D82BD8](symbolImageView8);
  MEMORY[0x277D82BD8](topAnchor10);
  MEMORY[0x277D82BD8](subtitleLabel3);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](trailingAnchor8);
  MEMORY[0x277D82BD8](centeringLayoutGuide15);
  MEMORY[0x277D82BD8](trailingAnchor7);
  MEMORY[0x277D82BD8](subtitleLabel2);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](leadingAnchor8);
  MEMORY[0x277D82BD8](centeringLayoutGuide14);
  MEMORY[0x277D82BD8](leadingAnchor7);
  MEMORY[0x277D82BD8](subtitleLabel);
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](bottomAnchor5);
  MEMORY[0x277D82BD8](centeringLayoutGuide13);
  MEMORY[0x277D82BD8](bottomAnchor4);
  MEMORY[0x277D82BD8](titleLabel4);
  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](trailingAnchor6);
  MEMORY[0x277D82BD8](centeringLayoutGuide12);
  MEMORY[0x277D82BD8](trailingAnchor5);
  MEMORY[0x277D82BD8](titleLabel3);
  MEMORY[0x277D82BD8](v48);
  MEMORY[0x277D82BD8](bottomAnchor3);
  MEMORY[0x277D82BD8](symbolImageView7);
  MEMORY[0x277D82BD8](topAnchor9);
  MEMORY[0x277D82BD8](titleLabel2);
  MEMORY[0x277D82BD8](v53);
  MEMORY[0x277D82BD8](leadingAnchor6);
  MEMORY[0x277D82BD8](centeringLayoutGuide11);
  MEMORY[0x277D82BD8](leadingAnchor5);
  MEMORY[0x277D82BD8](titleLabel);
  MEMORY[0x277D82BD8](v58);
  MEMORY[0x277D82BD8](heightAnchor);
  MEMORY[0x277D82BD8](symbolImageView6);
  MEMORY[0x277D82BD8](v61);
  MEMORY[0x277D82BD8](widthAnchor2);
  MEMORY[0x277D82BD8](centeringLayoutGuide10);
  MEMORY[0x277D82BD8](widthAnchor);
  MEMORY[0x277D82BD8](symbolImageView5);
  MEMORY[0x277D82BD8](v66);
  MEMORY[0x277D82BD8](centerXAnchor2);
  MEMORY[0x277D82BD8](centeringLayoutGuide9);
  MEMORY[0x277D82BD8](centerXAnchor);
  MEMORY[0x277D82BD8](symbolImageView4);
  MEMORY[0x277D82BD8](v71);
  MEMORY[0x277D82BD8](trailingAnchor4);
  MEMORY[0x277D82BD8](centeringLayoutGuide8);
  MEMORY[0x277D82BD8](trailingAnchor3);
  MEMORY[0x277D82BD8](symbolImageView3);
  MEMORY[0x277D82BD8](v76);
  MEMORY[0x277D82BD8](leadingAnchor4);
  MEMORY[0x277D82BD8](centeringLayoutGuide7);
  MEMORY[0x277D82BD8](leadingAnchor3);
  MEMORY[0x277D82BD8](symbolImageView2);
  MEMORY[0x277D82BD8](v81);
  MEMORY[0x277D82BD8](topAnchor8);
  MEMORY[0x277D82BD8](centeringLayoutGuide6);
  MEMORY[0x277D82BD8](topAnchor7);
  MEMORY[0x277D82BD8](symbolImageView);
  MEMORY[0x277D82BD8](v86);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](trailingAnchor);
  MEMORY[0x277D82BD8](centeringLayoutGuide5);
  MEMORY[0x277D82BD8](v90);
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](leadingAnchor);
  MEMORY[0x277D82BD8](centeringLayoutGuide4);
  MEMORY[0x277D82BD8](v94);
  MEMORY[0x277D82BD8](topAnchor6);
  MEMORY[0x277D82BD8](junctionImageView2);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](centeringLayoutGuide3);
  MEMORY[0x277D82BD8](v99);
  MEMORY[0x277D82BD8](centerYAnchor2);
  MEMORY[0x277D82BD8](yCenteringGuide3);
  MEMORY[0x277D82BD8](centerYAnchor);
  MEMORY[0x277D82BD8](centeringLayoutGuide2);
  MEMORY[0x277D82BD8](v104);
  MEMORY[0x277D82BD8](topAnchor5);
  MEMORY[0x277D82BD8](topAnchor4);
  MEMORY[0x277D82BD8](centeringLayoutGuide);
  MEMORY[0x277D82BD8](v108);
  MEMORY[0x277D82BD8](topAnchor3);
  MEMORY[0x277D82BD8](junctionImageView);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](yCenteringGuide2);
  MEMORY[0x277D82BD8](v113);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](topAnchor);
  MEMORY[0x277D82BD8](yCenteringGuide);

  return v4;
}

- (id)_fullLayoutNoJunctionViewConstraints
{
  v150[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v145[1] = a2;
  v145[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(CPSPrimaryManeuverView *)selfCopy centersManeuverInView])
  {
    topAnchor = [(CPSPrimaryManeuverView *)selfCopy topAnchor];
    centeringLayoutGuide = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
    topAnchor2 = [(UILayoutGuide *)centeringLayoutGuide topAnchor];
    v2 = _UISolariumEnabled();
    v3 = 10.0;
    if ((v2 & 1) == 0)
    {
      v3 = 4.0;
    }

    v141 = [topAnchor constraintLessThanOrEqualToAnchor:topAnchor2 constant:-v3];
    v150[0] = v141;
    centeringLayoutGuide2 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
    centerYAnchor = [(UILayoutGuide *)centeringLayoutGuide2 centerYAnchor];
    centerYAnchor2 = [(CPSPrimaryManeuverView *)selfCopy centerYAnchor];
    v137 = [(NSLayoutYAxisAnchor *)centerYAnchor constraintEqualToAnchor:?];
    v150[1] = v137;
    v136 = [MEMORY[0x277CBEA60] arrayWithObjects:v150 count:2];
    [v145[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v136);
    MEMORY[0x277D82BD8](v137);
    MEMORY[0x277D82BD8](centerYAnchor2);
    MEMORY[0x277D82BD8](centerYAnchor);
    MEMORY[0x277D82BD8](centeringLayoutGuide2);
    MEMORY[0x277D82BD8](v141);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](centeringLayoutGuide);
    MEMORY[0x277D82BD8](topAnchor);
  }

  else
  {
    topAnchor3 = [(CPSPrimaryManeuverView *)selfCopy topAnchor];
    centeringLayoutGuide3 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
    topAnchor4 = [(UILayoutGuide *)centeringLayoutGuide3 topAnchor];
    v4 = _UISolariumEnabled();
    v5 = 10.0;
    if ((v4 & 1) == 0)
    {
      v5 = 4.0;
    }

    v132 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:-v5];
    v149 = v132;
    v131 = [MEMORY[0x277CBEA60] arrayWithObjects:&v149 count:1];
    [v145[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v131);
    MEMORY[0x277D82BD8](v132);
    MEMORY[0x277D82BD8](topAnchor4);
    MEMORY[0x277D82BD8](centeringLayoutGuide3);
    MEMORY[0x277D82BD8](topAnchor3);
  }

  v128 = objc_opt_class();
  maneuver = [(CPSPrimaryManeuverView *)selfCopy maneuver];
  v130 = [v128 symbolImageForManeuver:?];
  MEMORY[0x277D82BD8](v130);
  *&v6 = MEMORY[0x277D82BD8](maneuver).n128_u64[0];
  if (v130)
  {
    centeringLayoutGuide4 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
    leadingAnchor = [(UILayoutGuide *)centeringLayoutGuide4 leadingAnchor];
    leadingAnchor2 = [(CPSPrimaryManeuverView *)selfCopy leadingAnchor];
    v124 = [(NSLayoutXAxisAnchor *)leadingAnchor constraintEqualToAnchor:13.0 constant:?];
    v148[0] = v124;
    centeringLayoutGuide5 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
    trailingAnchor = [(UILayoutGuide *)centeringLayoutGuide5 trailingAnchor];
    trailingAnchor2 = [(CPSPrimaryManeuverView *)selfCopy trailingAnchor];
    v120 = [(NSLayoutXAxisAnchor *)trailingAnchor constraintEqualToAnchor:-13.0 constant:?];
    v148[1] = v120;
    bottomAnchor = [(CPSPrimaryManeuverView *)selfCopy bottomAnchor];
    centeringLayoutGuide6 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
    bottomAnchor2 = [(UILayoutGuide *)centeringLayoutGuide6 bottomAnchor];
    v7 = _UISolariumEnabled();
    v8 = 10.0;
    if ((v7 & 1) == 0)
    {
      v8 = 4.0;
    }

    v116 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:v8];
    v148[2] = v116;
    symbolImageView = [(CPSPrimaryManeuverView *)selfCopy symbolImageView];
    topAnchor5 = [(UIImageView *)symbolImageView topAnchor];
    centeringLayoutGuide7 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
    topAnchor6 = [(UILayoutGuide *)centeringLayoutGuide7 topAnchor];
    v111 = [topAnchor5 constraintEqualToAnchor:? constant:?];
    v148[3] = v111;
    symbolImageView2 = [(CPSPrimaryManeuverView *)selfCopy symbolImageView];
    leadingAnchor3 = [(UIImageView *)symbolImageView2 leadingAnchor];
    centeringLayoutGuide8 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
    leadingAnchor4 = [(UILayoutGuide *)centeringLayoutGuide8 leadingAnchor];
    v106 = [leadingAnchor3 constraintEqualToAnchor:0.0 constant:?];
    v148[4] = v106;
    symbolImageView3 = [(CPSPrimaryManeuverView *)selfCopy symbolImageView];
    heightAnchor = [(UIImageView *)symbolImageView3 heightAnchor];
    [(CPSPrimaryManeuverView *)selfCopy symbolImageHeight];
    v103 = [heightAnchor constraintLessThanOrEqualToConstant:?];
    v148[5] = v103;
    titleLabel = [(CPSPrimaryManeuverView *)selfCopy titleLabel];
    leadingAnchor5 = [(CPSAbridgableLabel *)titleLabel leadingAnchor];
    symbolImageView4 = [(CPSPrimaryManeuverView *)selfCopy symbolImageView];
    trailingAnchor3 = [(UIImageView *)symbolImageView4 trailingAnchor];
    v98 = [leadingAnchor5 constraintEqualToAnchor:8.0 constant:?];
    v148[6] = v98;
    titleLabel2 = [(CPSPrimaryManeuverView *)selfCopy titleLabel];
    centerYAnchor3 = [(CPSAbridgableLabel *)titleLabel2 centerYAnchor];
    symbolImageView5 = [(CPSPrimaryManeuverView *)selfCopy symbolImageView];
    centerYAnchor4 = [(UIImageView *)symbolImageView5 centerYAnchor];
    v93 = [centerYAnchor3 constraintEqualToAnchor:0.0 constant:?];
    v148[7] = v93;
    titleLabel3 = [(CPSPrimaryManeuverView *)selfCopy titleLabel];
    trailingAnchor4 = [(CPSAbridgableLabel *)titleLabel3 trailingAnchor];
    centeringLayoutGuide9 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
    trailingAnchor5 = [(UILayoutGuide *)centeringLayoutGuide9 trailingAnchor];
    v88 = [trailingAnchor4 constraintLessThanOrEqualToAnchor:0.0 constant:?];
    v148[8] = v88;
    subtitleLabel = [(CPSPrimaryManeuverView *)selfCopy subtitleLabel];
    leadingAnchor6 = [(CPSAbridgableLabel *)subtitleLabel leadingAnchor];
    centeringLayoutGuide10 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
    leadingAnchor7 = [(UILayoutGuide *)centeringLayoutGuide10 leadingAnchor];
    v83 = [leadingAnchor6 constraintEqualToAnchor:0.0 constant:?];
    v148[9] = v83;
    subtitleLabel2 = [(CPSPrimaryManeuverView *)selfCopy subtitleLabel];
    trailingAnchor6 = [(CPSAbridgableLabel *)subtitleLabel2 trailingAnchor];
    centeringLayoutGuide11 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
    trailingAnchor7 = [(UILayoutGuide *)centeringLayoutGuide11 trailingAnchor];
    v78 = [trailingAnchor6 constraintLessThanOrEqualToAnchor:-8.0 constant:?];
    v148[10] = v78;
    subtitleLabel3 = [(CPSPrimaryManeuverView *)selfCopy subtitleLabel];
    topAnchor7 = [(CPSAbridgableLabel *)subtitleLabel3 topAnchor];
    symbolImageView6 = [(CPSPrimaryManeuverView *)selfCopy symbolImageView];
    bottomAnchor3 = [(UIImageView *)symbolImageView6 bottomAnchor];
    v73 = [topAnchor7 constraintEqualToAnchor:4.0 constant:?];
    v148[11] = v73;
    subtitleLabel4 = [(CPSPrimaryManeuverView *)selfCopy subtitleLabel];
    bottomAnchor4 = [(CPSAbridgableLabel *)subtitleLabel4 bottomAnchor];
    centeringLayoutGuide12 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
    bottomAnchor5 = [(UILayoutGuide *)centeringLayoutGuide12 bottomAnchor];
    v68 = [bottomAnchor4 constraintEqualToAnchor:0.0 constant:?];
    v148[12] = v68;
    junctionImageView = [(CPSPrimaryManeuverView *)selfCopy junctionImageView];
    heightAnchor2 = [(CPSAspectFitImageView *)junctionImageView heightAnchor];
    v65 = [heightAnchor2 constraintEqualToConstant:0.0];
    v148[13] = v65;
    v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v148 count:14];
    [v145[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](heightAnchor2);
    MEMORY[0x277D82BD8](junctionImageView);
    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](bottomAnchor5);
    MEMORY[0x277D82BD8](centeringLayoutGuide12);
    MEMORY[0x277D82BD8](bottomAnchor4);
    MEMORY[0x277D82BD8](subtitleLabel4);
    MEMORY[0x277D82BD8](v73);
    MEMORY[0x277D82BD8](bottomAnchor3);
    MEMORY[0x277D82BD8](symbolImageView6);
    MEMORY[0x277D82BD8](topAnchor7);
    MEMORY[0x277D82BD8](subtitleLabel3);
    MEMORY[0x277D82BD8](v78);
    MEMORY[0x277D82BD8](trailingAnchor7);
    MEMORY[0x277D82BD8](centeringLayoutGuide11);
    MEMORY[0x277D82BD8](trailingAnchor6);
    MEMORY[0x277D82BD8](subtitleLabel2);
    MEMORY[0x277D82BD8](v83);
    MEMORY[0x277D82BD8](leadingAnchor7);
    MEMORY[0x277D82BD8](centeringLayoutGuide10);
    MEMORY[0x277D82BD8](leadingAnchor6);
    MEMORY[0x277D82BD8](subtitleLabel);
    MEMORY[0x277D82BD8](v88);
    MEMORY[0x277D82BD8](trailingAnchor5);
    MEMORY[0x277D82BD8](centeringLayoutGuide9);
    MEMORY[0x277D82BD8](trailingAnchor4);
    MEMORY[0x277D82BD8](titleLabel3);
    MEMORY[0x277D82BD8](v93);
    MEMORY[0x277D82BD8](centerYAnchor4);
    MEMORY[0x277D82BD8](symbolImageView5);
    MEMORY[0x277D82BD8](centerYAnchor3);
    MEMORY[0x277D82BD8](titleLabel2);
    MEMORY[0x277D82BD8](v98);
    MEMORY[0x277D82BD8](trailingAnchor3);
    MEMORY[0x277D82BD8](symbolImageView4);
    MEMORY[0x277D82BD8](leadingAnchor5);
    MEMORY[0x277D82BD8](titleLabel);
    MEMORY[0x277D82BD8](v103);
    MEMORY[0x277D82BD8](heightAnchor);
    MEMORY[0x277D82BD8](symbolImageView3);
    MEMORY[0x277D82BD8](v106);
    MEMORY[0x277D82BD8](leadingAnchor4);
    MEMORY[0x277D82BD8](centeringLayoutGuide8);
    MEMORY[0x277D82BD8](leadingAnchor3);
    MEMORY[0x277D82BD8](symbolImageView2);
    MEMORY[0x277D82BD8](v111);
    MEMORY[0x277D82BD8](topAnchor6);
    MEMORY[0x277D82BD8](centeringLayoutGuide7);
    MEMORY[0x277D82BD8](topAnchor5);
    MEMORY[0x277D82BD8](symbolImageView);
    MEMORY[0x277D82BD8](v116);
    MEMORY[0x277D82BD8](bottomAnchor2);
    MEMORY[0x277D82BD8](centeringLayoutGuide6);
    MEMORY[0x277D82BD8](bottomAnchor);
    MEMORY[0x277D82BD8](v120);
    MEMORY[0x277D82BD8](trailingAnchor2);
    MEMORY[0x277D82BD8](trailingAnchor);
    MEMORY[0x277D82BD8](centeringLayoutGuide5);
    MEMORY[0x277D82BD8](v124);
    MEMORY[0x277D82BD8](leadingAnchor2);
    MEMORY[0x277D82BD8](leadingAnchor);
    MEMORY[0x277D82BD8](centeringLayoutGuide4);
  }

  else
  {
    centeringLayoutGuide13 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
    leadingAnchor8 = [(UILayoutGuide *)centeringLayoutGuide13 leadingAnchor];
    leadingAnchor9 = [(CPSPrimaryManeuverView *)selfCopy leadingAnchor];
    v60 = [(NSLayoutXAxisAnchor *)leadingAnchor8 constraintEqualToAnchor:13.0 constant:?];
    v147[0] = v60;
    centeringLayoutGuide14 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
    trailingAnchor8 = [(UILayoutGuide *)centeringLayoutGuide14 trailingAnchor];
    trailingAnchor9 = [(CPSPrimaryManeuverView *)selfCopy trailingAnchor];
    v56 = [(NSLayoutXAxisAnchor *)trailingAnchor8 constraintEqualToAnchor:-13.0 constant:?];
    v147[1] = v56;
    bottomAnchor6 = [(CPSPrimaryManeuverView *)selfCopy bottomAnchor];
    centeringLayoutGuide15 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
    bottomAnchor7 = [(UILayoutGuide *)centeringLayoutGuide15 bottomAnchor];
    v9 = _UISolariumEnabled();
    v10 = 10.0;
    if ((v9 & 1) == 0)
    {
      v10 = 4.0;
    }

    v52 = [bottomAnchor6 constraintGreaterThanOrEqualToAnchor:bottomAnchor7 constant:v10];
    v147[2] = v52;
    titleLabel4 = [(CPSPrimaryManeuverView *)selfCopy titleLabel];
    topAnchor8 = [(CPSAbridgableLabel *)titleLabel4 topAnchor];
    centeringLayoutGuide16 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
    topAnchor9 = [(UILayoutGuide *)centeringLayoutGuide16 topAnchor];
    v47 = [topAnchor8 constraintEqualToAnchor:? constant:?];
    v147[3] = v47;
    titleLabel5 = [(CPSPrimaryManeuverView *)selfCopy titleLabel];
    leadingAnchor10 = [(CPSAbridgableLabel *)titleLabel5 leadingAnchor];
    centeringLayoutGuide17 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
    leadingAnchor11 = [(UILayoutGuide *)centeringLayoutGuide17 leadingAnchor];
    v42 = [leadingAnchor10 constraintEqualToAnchor:? constant:?];
    v147[4] = v42;
    titleLabel6 = [(CPSPrimaryManeuverView *)selfCopy titleLabel];
    trailingAnchor10 = [(CPSAbridgableLabel *)titleLabel6 trailingAnchor];
    centeringLayoutGuide18 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
    trailingAnchor11 = [(UILayoutGuide *)centeringLayoutGuide18 trailingAnchor];
    v37 = [trailingAnchor10 constraintLessThanOrEqualToAnchor:? constant:?];
    v147[5] = v37;
    subtitleLabel5 = [(CPSPrimaryManeuverView *)selfCopy subtitleLabel];
    leadingAnchor12 = [(CPSAbridgableLabel *)subtitleLabel5 leadingAnchor];
    centeringLayoutGuide19 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
    leadingAnchor13 = [(UILayoutGuide *)centeringLayoutGuide19 leadingAnchor];
    v32 = [leadingAnchor12 constraintEqualToAnchor:8.0 constant:?];
    v147[6] = v32;
    subtitleLabel6 = [(CPSPrimaryManeuverView *)selfCopy subtitleLabel];
    trailingAnchor12 = [(CPSAbridgableLabel *)subtitleLabel6 trailingAnchor];
    centeringLayoutGuide20 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
    trailingAnchor13 = [(UILayoutGuide *)centeringLayoutGuide20 trailingAnchor];
    v27 = [trailingAnchor12 constraintLessThanOrEqualToAnchor:-8.0 constant:?];
    v147[7] = v27;
    subtitleLabel7 = [(CPSPrimaryManeuverView *)selfCopy subtitleLabel];
    topAnchor10 = [(CPSAbridgableLabel *)subtitleLabel7 topAnchor];
    titleLabel7 = [(CPSPrimaryManeuverView *)selfCopy titleLabel];
    bottomAnchor8 = [(CPSAbridgableLabel *)titleLabel7 bottomAnchor];
    v22 = [topAnchor10 constraintEqualToAnchor:0.0 constant:?];
    v147[8] = v22;
    subtitleLabel8 = [(CPSPrimaryManeuverView *)selfCopy subtitleLabel];
    bottomAnchor9 = [(CPSAbridgableLabel *)subtitleLabel8 bottomAnchor];
    centeringLayoutGuide21 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
    bottomAnchor10 = [(UILayoutGuide *)centeringLayoutGuide21 bottomAnchor];
    v17 = [bottomAnchor9 constraintEqualToAnchor:0.0 constant:?];
    v147[9] = v17;
    junctionImageView2 = [(CPSPrimaryManeuverView *)selfCopy junctionImageView];
    heightAnchor3 = [(CPSAspectFitImageView *)junctionImageView2 heightAnchor];
    v14 = [heightAnchor3 constraintEqualToConstant:0.0];
    v147[10] = v14;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:11];
    [v145[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](heightAnchor3);
    MEMORY[0x277D82BD8](junctionImageView2);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](bottomAnchor10);
    MEMORY[0x277D82BD8](centeringLayoutGuide21);
    MEMORY[0x277D82BD8](bottomAnchor9);
    MEMORY[0x277D82BD8](subtitleLabel8);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](bottomAnchor8);
    MEMORY[0x277D82BD8](titleLabel7);
    MEMORY[0x277D82BD8](topAnchor10);
    MEMORY[0x277D82BD8](subtitleLabel7);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](trailingAnchor13);
    MEMORY[0x277D82BD8](centeringLayoutGuide20);
    MEMORY[0x277D82BD8](trailingAnchor12);
    MEMORY[0x277D82BD8](subtitleLabel6);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](leadingAnchor13);
    MEMORY[0x277D82BD8](centeringLayoutGuide19);
    MEMORY[0x277D82BD8](leadingAnchor12);
    MEMORY[0x277D82BD8](subtitleLabel5);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](trailingAnchor11);
    MEMORY[0x277D82BD8](centeringLayoutGuide18);
    MEMORY[0x277D82BD8](trailingAnchor10);
    MEMORY[0x277D82BD8](titleLabel6);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](leadingAnchor11);
    MEMORY[0x277D82BD8](centeringLayoutGuide17);
    MEMORY[0x277D82BD8](leadingAnchor10);
    MEMORY[0x277D82BD8](titleLabel5);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](topAnchor9);
    MEMORY[0x277D82BD8](centeringLayoutGuide16);
    MEMORY[0x277D82BD8](topAnchor8);
    MEMORY[0x277D82BD8](titleLabel4);
    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](bottomAnchor7);
    MEMORY[0x277D82BD8](centeringLayoutGuide15);
    MEMORY[0x277D82BD8](bottomAnchor6);
    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](trailingAnchor9);
    MEMORY[0x277D82BD8](trailingAnchor8);
    MEMORY[0x277D82BD8](centeringLayoutGuide14);
    MEMORY[0x277D82BD8](v60);
    MEMORY[0x277D82BD8](leadingAnchor9);
    MEMORY[0x277D82BD8](leadingAnchor8);
    MEMORY[0x277D82BD8](centeringLayoutGuide13);
  }

  v12 = MEMORY[0x277D82BE0](v145[0]);
  objc_storeStrong(v145, 0);

  return v12;
}

- (id)_fullLayoutNoJunctionViewWideImageConstraints
{
  v109[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v105[1] = a2;
  v105[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(CPSPrimaryManeuverView *)selfCopy centersManeuverInView])
  {
    topAnchor = [(CPSPrimaryManeuverView *)selfCopy topAnchor];
    centeringLayoutGuide = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
    topAnchor2 = [(UILayoutGuide *)centeringLayoutGuide topAnchor];
    v2 = _UISolariumEnabled();
    v3 = 10.0;
    if ((v2 & 1) == 0)
    {
      v3 = 4.0;
    }

    v101 = [topAnchor constraintLessThanOrEqualToAnchor:topAnchor2 constant:-v3];
    v109[0] = v101;
    centeringLayoutGuide2 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
    centerYAnchor = [(UILayoutGuide *)centeringLayoutGuide2 centerYAnchor];
    centerYAnchor2 = [(CPSPrimaryManeuverView *)selfCopy centerYAnchor];
    v97 = [(NSLayoutYAxisAnchor *)centerYAnchor constraintEqualToAnchor:?];
    v109[1] = v97;
    v96 = [MEMORY[0x277CBEA60] arrayWithObjects:v109 count:2];
    [v105[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v96);
    MEMORY[0x277D82BD8](v97);
    MEMORY[0x277D82BD8](centerYAnchor2);
    MEMORY[0x277D82BD8](centerYAnchor);
    MEMORY[0x277D82BD8](centeringLayoutGuide2);
    MEMORY[0x277D82BD8](v101);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](centeringLayoutGuide);
    v4 = MEMORY[0x277D82BD8](topAnchor).n128_u64[0];
  }

  else
  {
    topAnchor3 = [(CPSPrimaryManeuverView *)selfCopy topAnchor];
    centeringLayoutGuide3 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
    topAnchor4 = [(UILayoutGuide *)centeringLayoutGuide3 topAnchor];
    v5 = _UISolariumEnabled();
    v6 = 10.0;
    if ((v5 & 1) == 0)
    {
      v6 = 4.0;
    }

    v92 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:-v6];
    v108 = v92;
    v91 = [MEMORY[0x277CBEA60] arrayWithObjects:&v108 count:1];
    [v105[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v91);
    MEMORY[0x277D82BD8](v92);
    MEMORY[0x277D82BD8](topAnchor4);
    MEMORY[0x277D82BD8](centeringLayoutGuide3);
    v4 = MEMORY[0x277D82BD8](topAnchor3).n128_u64[0];
  }

  v10 = v105[0];
  centeringLayoutGuide4 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
  leadingAnchor = [(UILayoutGuide *)centeringLayoutGuide4 leadingAnchor];
  leadingAnchor2 = [(CPSPrimaryManeuverView *)selfCopy leadingAnchor];
  v86 = [(NSLayoutXAxisAnchor *)leadingAnchor constraintEqualToAnchor:13.0 constant:?];
  v107[0] = v86;
  centeringLayoutGuide5 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
  trailingAnchor = [(UILayoutGuide *)centeringLayoutGuide5 trailingAnchor];
  trailingAnchor2 = [(CPSPrimaryManeuverView *)selfCopy trailingAnchor];
  v82 = [(NSLayoutXAxisAnchor *)trailingAnchor constraintEqualToAnchor:-13.0 constant:?];
  v107[1] = v82;
  bottomAnchor = [(CPSPrimaryManeuverView *)selfCopy bottomAnchor];
  centeringLayoutGuide6 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
  bottomAnchor2 = [(UILayoutGuide *)centeringLayoutGuide6 bottomAnchor];
  v7 = _UISolariumEnabled();
  v8 = 10.0;
  if ((v7 & 1) == 0)
  {
    v8 = 4.0;
  }

  v78 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:v8];
  v107[2] = v78;
  symbolImageView = [(CPSPrimaryManeuverView *)selfCopy symbolImageView];
  topAnchor5 = [(UIImageView *)symbolImageView topAnchor];
  centeringLayoutGuide7 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
  topAnchor6 = [(UILayoutGuide *)centeringLayoutGuide7 topAnchor];
  v73 = [topAnchor5 constraintEqualToAnchor:? constant:?];
  v107[3] = v73;
  symbolImageView2 = [(CPSPrimaryManeuverView *)selfCopy symbolImageView];
  leadingAnchor3 = [(UIImageView *)symbolImageView2 leadingAnchor];
  centeringLayoutGuide8 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
  leadingAnchor4 = [(UILayoutGuide *)centeringLayoutGuide8 leadingAnchor];
  v68 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:0.0 constant:?];
  v107[4] = v68;
  symbolImageView3 = [(CPSPrimaryManeuverView *)selfCopy symbolImageView];
  trailingAnchor3 = [(UIImageView *)symbolImageView3 trailingAnchor];
  centeringLayoutGuide9 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
  trailingAnchor4 = [(UILayoutGuide *)centeringLayoutGuide9 trailingAnchor];
  v63 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:0.0 constant:?];
  v107[5] = v63;
  symbolImageView4 = [(CPSPrimaryManeuverView *)selfCopy symbolImageView];
  centerXAnchor = [(UIImageView *)symbolImageView4 centerXAnchor];
  centeringLayoutGuide10 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
  centerXAnchor2 = [(UILayoutGuide *)centeringLayoutGuide10 centerXAnchor];
  v58 = [centerXAnchor constraintEqualToAnchor:?];
  v107[6] = v58;
  symbolImageView5 = [(CPSPrimaryManeuverView *)selfCopy symbolImageView];
  widthAnchor = [(UIImageView *)symbolImageView5 widthAnchor];
  centeringLayoutGuide11 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
  widthAnchor2 = [(UILayoutGuide *)centeringLayoutGuide11 widthAnchor];
  v53 = [widthAnchor constraintLessThanOrEqualToAnchor:?];
  v107[7] = v53;
  symbolImageView6 = [(CPSPrimaryManeuverView *)selfCopy symbolImageView];
  heightAnchor = [(UIImageView *)symbolImageView6 heightAnchor];
  [(CPSPrimaryManeuverView *)selfCopy symbolImageHeight];
  v50 = [heightAnchor constraintLessThanOrEqualToConstant:?];
  v107[8] = v50;
  titleLabel = [(CPSPrimaryManeuverView *)selfCopy titleLabel];
  leadingAnchor5 = [(CPSAbridgableLabel *)titleLabel leadingAnchor];
  centeringLayoutGuide12 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
  leadingAnchor6 = [(UILayoutGuide *)centeringLayoutGuide12 leadingAnchor];
  v45 = [leadingAnchor5 constraintEqualToAnchor:0.0 constant:?];
  v107[9] = v45;
  titleLabel2 = [(CPSPrimaryManeuverView *)selfCopy titleLabel];
  topAnchor7 = [(CPSAbridgableLabel *)titleLabel2 topAnchor];
  symbolImageView7 = [(CPSPrimaryManeuverView *)selfCopy symbolImageView];
  bottomAnchor3 = [(UIImageView *)symbolImageView7 bottomAnchor];
  v40 = [topAnchor7 constraintEqualToAnchor:0.0 constant:?];
  v107[10] = v40;
  titleLabel3 = [(CPSPrimaryManeuverView *)selfCopy titleLabel];
  trailingAnchor5 = [(CPSAbridgableLabel *)titleLabel3 trailingAnchor];
  centeringLayoutGuide13 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
  trailingAnchor6 = [(UILayoutGuide *)centeringLayoutGuide13 trailingAnchor];
  v35 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:0.0 constant:?];
  v107[11] = v35;
  subtitleLabel = [(CPSPrimaryManeuverView *)selfCopy subtitleLabel];
  leadingAnchor7 = [(CPSAbridgableLabel *)subtitleLabel leadingAnchor];
  centeringLayoutGuide14 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
  leadingAnchor8 = [(UILayoutGuide *)centeringLayoutGuide14 leadingAnchor];
  v30 = [leadingAnchor7 constraintEqualToAnchor:0.0 constant:?];
  v107[12] = v30;
  subtitleLabel2 = [(CPSPrimaryManeuverView *)selfCopy subtitleLabel];
  trailingAnchor7 = [(CPSAbridgableLabel *)subtitleLabel2 trailingAnchor];
  centeringLayoutGuide15 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
  trailingAnchor8 = [(UILayoutGuide *)centeringLayoutGuide15 trailingAnchor];
  v25 = [trailingAnchor7 constraintLessThanOrEqualToAnchor:-8.0 constant:?];
  v107[13] = v25;
  subtitleLabel3 = [(CPSPrimaryManeuverView *)selfCopy subtitleLabel];
  topAnchor8 = [(CPSAbridgableLabel *)subtitleLabel3 topAnchor];
  titleLabel4 = [(CPSPrimaryManeuverView *)selfCopy titleLabel];
  bottomAnchor4 = [(CPSAbridgableLabel *)titleLabel4 bottomAnchor];
  v20 = [topAnchor8 constraintEqualToAnchor:4.0 constant:?];
  v107[14] = v20;
  subtitleLabel4 = [(CPSPrimaryManeuverView *)selfCopy subtitleLabel];
  bottomAnchor5 = [(CPSAbridgableLabel *)subtitleLabel4 bottomAnchor];
  centeringLayoutGuide16 = [(CPSPrimaryManeuverView *)selfCopy centeringLayoutGuide];
  bottomAnchor6 = [(UILayoutGuide *)centeringLayoutGuide16 bottomAnchor];
  v15 = [bottomAnchor5 constraintEqualToAnchor:0.0 constant:?];
  v107[15] = v15;
  junctionImageView = [(CPSPrimaryManeuverView *)selfCopy junctionImageView];
  heightAnchor2 = [(CPSAspectFitImageView *)junctionImageView heightAnchor];
  v12 = [heightAnchor2 constraintEqualToConstant:0.0];
  v107[16] = v12;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v107 count:17];
  [v10 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](heightAnchor2);
  MEMORY[0x277D82BD8](junctionImageView);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](bottomAnchor6);
  MEMORY[0x277D82BD8](centeringLayoutGuide16);
  MEMORY[0x277D82BD8](bottomAnchor5);
  MEMORY[0x277D82BD8](subtitleLabel4);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](bottomAnchor4);
  MEMORY[0x277D82BD8](titleLabel4);
  MEMORY[0x277D82BD8](topAnchor8);
  MEMORY[0x277D82BD8](subtitleLabel3);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](trailingAnchor8);
  MEMORY[0x277D82BD8](centeringLayoutGuide15);
  MEMORY[0x277D82BD8](trailingAnchor7);
  MEMORY[0x277D82BD8](subtitleLabel2);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](leadingAnchor8);
  MEMORY[0x277D82BD8](centeringLayoutGuide14);
  MEMORY[0x277D82BD8](leadingAnchor7);
  MEMORY[0x277D82BD8](subtitleLabel);
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](trailingAnchor6);
  MEMORY[0x277D82BD8](centeringLayoutGuide13);
  MEMORY[0x277D82BD8](trailingAnchor5);
  MEMORY[0x277D82BD8](titleLabel3);
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](bottomAnchor3);
  MEMORY[0x277D82BD8](symbolImageView7);
  MEMORY[0x277D82BD8](topAnchor7);
  MEMORY[0x277D82BD8](titleLabel2);
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](leadingAnchor6);
  MEMORY[0x277D82BD8](centeringLayoutGuide12);
  MEMORY[0x277D82BD8](leadingAnchor5);
  MEMORY[0x277D82BD8](titleLabel);
  MEMORY[0x277D82BD8](v50);
  MEMORY[0x277D82BD8](heightAnchor);
  MEMORY[0x277D82BD8](symbolImageView6);
  MEMORY[0x277D82BD8](v53);
  MEMORY[0x277D82BD8](widthAnchor2);
  MEMORY[0x277D82BD8](centeringLayoutGuide11);
  MEMORY[0x277D82BD8](widthAnchor);
  MEMORY[0x277D82BD8](symbolImageView5);
  MEMORY[0x277D82BD8](v58);
  MEMORY[0x277D82BD8](centerXAnchor2);
  MEMORY[0x277D82BD8](centeringLayoutGuide10);
  MEMORY[0x277D82BD8](centerXAnchor);
  MEMORY[0x277D82BD8](symbolImageView4);
  MEMORY[0x277D82BD8](v63);
  MEMORY[0x277D82BD8](trailingAnchor4);
  MEMORY[0x277D82BD8](centeringLayoutGuide9);
  MEMORY[0x277D82BD8](trailingAnchor3);
  MEMORY[0x277D82BD8](symbolImageView3);
  MEMORY[0x277D82BD8](v68);
  MEMORY[0x277D82BD8](leadingAnchor4);
  MEMORY[0x277D82BD8](centeringLayoutGuide8);
  MEMORY[0x277D82BD8](leadingAnchor3);
  MEMORY[0x277D82BD8](symbolImageView2);
  MEMORY[0x277D82BD8](v73);
  MEMORY[0x277D82BD8](topAnchor6);
  MEMORY[0x277D82BD8](centeringLayoutGuide7);
  MEMORY[0x277D82BD8](topAnchor5);
  MEMORY[0x277D82BD8](symbolImageView);
  MEMORY[0x277D82BD8](v78);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](centeringLayoutGuide6);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](v82);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](trailingAnchor);
  MEMORY[0x277D82BD8](centeringLayoutGuide5);
  MEMORY[0x277D82BD8](v86);
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](leadingAnchor);
  MEMORY[0x277D82BD8](centeringLayoutGuide4);
  v90 = MEMORY[0x277D82BE0](v105[0]);
  objc_storeStrong(v105, 0);

  return v90;
}

- (id)_fullSubtitleNextToImageConstraints
{
  v177[22] = *MEMORY[0x277D85DE8];
  v171 = objc_opt_class();
  maneuver = [(CPSPrimaryManeuverView *)self maneuver];
  v173 = [v171 symbolImageForManeuver:?];
  MEMORY[0x277D82BD8](v173);
  *&v2 = MEMORY[0x277D82BD8](maneuver).n128_u64[0];
  if (v173)
  {
    centeringLayoutGuide = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    centerYAnchor = [(UILayoutGuide *)centeringLayoutGuide centerYAnchor];
    centerYAnchor2 = [(CPSPrimaryManeuverView *)self centerYAnchor];
    v167 = [(NSLayoutYAxisAnchor *)centerYAnchor constraintEqualToAnchor:?];
    v177[0] = v167;
    centeringLayoutGuide2 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    leadingAnchor = [(UILayoutGuide *)centeringLayoutGuide2 leadingAnchor];
    leadingAnchor2 = [(CPSPrimaryManeuverView *)self leadingAnchor];
    v163 = [(NSLayoutXAxisAnchor *)leadingAnchor constraintEqualToAnchor:13.0 constant:?];
    v177[1] = v163;
    centeringLayoutGuide3 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    trailingAnchor = [(UILayoutGuide *)centeringLayoutGuide3 trailingAnchor];
    trailingAnchor2 = [(CPSPrimaryManeuverView *)self trailingAnchor];
    v159 = [(NSLayoutXAxisAnchor *)trailingAnchor constraintEqualToAnchor:-13.0 constant:?];
    v177[2] = v159;
    topAnchor = [(CPSPrimaryManeuverView *)self topAnchor];
    centeringLayoutGuide4 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    topAnchor2 = [(UILayoutGuide *)centeringLayoutGuide4 topAnchor];
    v3 = _UISolariumEnabled();
    v4 = 10.0;
    if ((v3 & 1) == 0)
    {
      v4 = 4.0;
    }

    v155 = [topAnchor constraintLessThanOrEqualToAnchor:topAnchor2 constant:-v4];
    v177[3] = v155;
    bottomAnchor = [(CPSPrimaryManeuverView *)self bottomAnchor];
    centeringLayoutGuide5 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    bottomAnchor2 = [(UILayoutGuide *)centeringLayoutGuide5 bottomAnchor];
    v5 = _UISolariumEnabled();
    v6 = 10.0;
    if ((v5 & 1) == 0)
    {
      v6 = 4.0;
    }

    v151 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:v6];
    v177[4] = v151;
    symbolImageView = [(CPSPrimaryManeuverView *)self symbolImageView];
    topAnchor3 = [(UIImageView *)symbolImageView topAnchor];
    centeringLayoutGuide6 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    topAnchor4 = [(UILayoutGuide *)centeringLayoutGuide6 topAnchor];
    v146 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:? constant:?];
    v177[5] = v146;
    symbolImageView2 = [(CPSPrimaryManeuverView *)self symbolImageView];
    leadingAnchor3 = [(UIImageView *)symbolImageView2 leadingAnchor];
    centeringLayoutGuide7 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    leadingAnchor4 = [(UILayoutGuide *)centeringLayoutGuide7 leadingAnchor];
    v141 = [leadingAnchor3 constraintEqualToAnchor:0.0 constant:?];
    v177[6] = v141;
    symbolImageView3 = [(CPSPrimaryManeuverView *)self symbolImageView];
    heightAnchor = [(UIImageView *)symbolImageView3 heightAnchor];
    [(CPSPrimaryManeuverView *)self symbolImageHeight];
    v138 = [heightAnchor constraintLessThanOrEqualToConstant:?];
    v177[7] = v138;
    symbolImageView4 = [(CPSPrimaryManeuverView *)self symbolImageView];
    bottomAnchor3 = [(UIImageView *)symbolImageView4 bottomAnchor];
    centeringLayoutGuide8 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    bottomAnchor4 = [(UILayoutGuide *)centeringLayoutGuide8 bottomAnchor];
    v133 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:0.0 constant:?];
    v177[8] = v133;
    labelCenteringLayoutGuide = [(CPSPrimaryManeuverView *)self labelCenteringLayoutGuide];
    topAnchor5 = [(UILayoutGuide *)labelCenteringLayoutGuide topAnchor];
    centeringLayoutGuide9 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    topAnchor6 = [(UILayoutGuide *)centeringLayoutGuide9 topAnchor];
    v128 = [(NSLayoutYAxisAnchor *)topAnchor5 constraintGreaterThanOrEqualToAnchor:0.0 constant:?];
    v177[9] = v128;
    labelCenteringLayoutGuide2 = [(CPSPrimaryManeuverView *)self labelCenteringLayoutGuide];
    centerYAnchor3 = [(UILayoutGuide *)labelCenteringLayoutGuide2 centerYAnchor];
    symbolImageView5 = [(CPSPrimaryManeuverView *)self symbolImageView];
    centerYAnchor4 = [(UIImageView *)symbolImageView5 centerYAnchor];
    v123 = [(NSLayoutYAxisAnchor *)centerYAnchor3 constraintEqualToAnchor:?];
    v177[10] = v123;
    labelCenteringLayoutGuide3 = [(CPSPrimaryManeuverView *)self labelCenteringLayoutGuide];
    leadingAnchor5 = [(UILayoutGuide *)labelCenteringLayoutGuide3 leadingAnchor];
    symbolImageView6 = [(CPSPrimaryManeuverView *)self symbolImageView];
    trailingAnchor3 = [(UIImageView *)symbolImageView6 trailingAnchor];
    v118 = [(NSLayoutXAxisAnchor *)leadingAnchor5 constraintEqualToAnchor:4.0 constant:?];
    v177[11] = v118;
    labelCenteringLayoutGuide4 = [(CPSPrimaryManeuverView *)self labelCenteringLayoutGuide];
    trailingAnchor4 = [(UILayoutGuide *)labelCenteringLayoutGuide4 trailingAnchor];
    centeringLayoutGuide10 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    trailingAnchor5 = [(UILayoutGuide *)centeringLayoutGuide10 trailingAnchor];
    v113 = [(NSLayoutXAxisAnchor *)trailingAnchor4 constraintEqualToAnchor:0.0 constant:?];
    v177[12] = v113;
    labelCenteringLayoutGuide5 = [(CPSPrimaryManeuverView *)self labelCenteringLayoutGuide];
    bottomAnchor5 = [(UILayoutGuide *)labelCenteringLayoutGuide5 bottomAnchor];
    centeringLayoutGuide11 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    bottomAnchor6 = [(UILayoutGuide *)centeringLayoutGuide11 bottomAnchor];
    v108 = [(NSLayoutYAxisAnchor *)bottomAnchor5 constraintLessThanOrEqualToAnchor:0.0 constant:?];
    v177[13] = v108;
    titleLabel = [(CPSPrimaryManeuverView *)self titleLabel];
    leadingAnchor6 = [(CPSAbridgableLabel *)titleLabel leadingAnchor];
    labelCenteringLayoutGuide6 = [(CPSPrimaryManeuverView *)self labelCenteringLayoutGuide];
    leadingAnchor7 = [(UILayoutGuide *)labelCenteringLayoutGuide6 leadingAnchor];
    v103 = [leadingAnchor6 constraintEqualToAnchor:?];
    v177[14] = v103;
    titleLabel2 = [(CPSPrimaryManeuverView *)self titleLabel];
    topAnchor7 = [(CPSAbridgableLabel *)titleLabel2 topAnchor];
    labelCenteringLayoutGuide7 = [(CPSPrimaryManeuverView *)self labelCenteringLayoutGuide];
    topAnchor8 = [(UILayoutGuide *)labelCenteringLayoutGuide7 topAnchor];
    v98 = [topAnchor7 constraintEqualToAnchor:?];
    v177[15] = v98;
    titleLabel3 = [(CPSPrimaryManeuverView *)self titleLabel];
    trailingAnchor6 = [(CPSAbridgableLabel *)titleLabel3 trailingAnchor];
    labelCenteringLayoutGuide8 = [(CPSPrimaryManeuverView *)self labelCenteringLayoutGuide];
    trailingAnchor7 = [(UILayoutGuide *)labelCenteringLayoutGuide8 trailingAnchor];
    v93 = [trailingAnchor6 constraintLessThanOrEqualToAnchor:?];
    v177[16] = v93;
    titleLabel4 = [(CPSPrimaryManeuverView *)self titleLabel];
    bottomAnchor7 = [(CPSAbridgableLabel *)titleLabel4 bottomAnchor];
    subtitleLabel = [(CPSPrimaryManeuverView *)self subtitleLabel];
    topAnchor9 = [(CPSAbridgableLabel *)subtitleLabel topAnchor];
    v88 = [bottomAnchor7 constraintEqualToAnchor:-2.0 constant:?];
    v177[17] = v88;
    subtitleLabel2 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    leadingAnchor8 = [(CPSAbridgableLabel *)subtitleLabel2 leadingAnchor];
    labelCenteringLayoutGuide9 = [(CPSPrimaryManeuverView *)self labelCenteringLayoutGuide];
    leadingAnchor9 = [(UILayoutGuide *)labelCenteringLayoutGuide9 leadingAnchor];
    v83 = [leadingAnchor8 constraintEqualToAnchor:?];
    v177[18] = v83;
    subtitleLabel3 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    trailingAnchor8 = [(CPSAbridgableLabel *)subtitleLabel3 trailingAnchor];
    labelCenteringLayoutGuide10 = [(CPSPrimaryManeuverView *)self labelCenteringLayoutGuide];
    trailingAnchor9 = [(UILayoutGuide *)labelCenteringLayoutGuide10 trailingAnchor];
    v78 = [trailingAnchor8 constraintLessThanOrEqualToAnchor:?];
    v177[19] = v78;
    subtitleLabel4 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    bottomAnchor8 = [(CPSAbridgableLabel *)subtitleLabel4 bottomAnchor];
    labelCenteringLayoutGuide11 = [(CPSPrimaryManeuverView *)self labelCenteringLayoutGuide];
    bottomAnchor9 = [(UILayoutGuide *)labelCenteringLayoutGuide11 bottomAnchor];
    v73 = [bottomAnchor8 constraintLessThanOrEqualToAnchor:?];
    v177[20] = v73;
    junctionImageView = [(CPSPrimaryManeuverView *)self junctionImageView];
    heightAnchor2 = [(CPSAspectFitImageView *)junctionImageView heightAnchor];
    v70 = [heightAnchor2 constraintEqualToConstant:0.0];
    v177[21] = v70;
    v175 = [MEMORY[0x277CBEA60] arrayWithObjects:v177 count:22];
    MEMORY[0x277D82BD8](v70);
    MEMORY[0x277D82BD8](heightAnchor2);
    MEMORY[0x277D82BD8](junctionImageView);
    MEMORY[0x277D82BD8](v73);
    MEMORY[0x277D82BD8](bottomAnchor9);
    MEMORY[0x277D82BD8](labelCenteringLayoutGuide11);
    MEMORY[0x277D82BD8](bottomAnchor8);
    MEMORY[0x277D82BD8](subtitleLabel4);
    MEMORY[0x277D82BD8](v78);
    MEMORY[0x277D82BD8](trailingAnchor9);
    MEMORY[0x277D82BD8](labelCenteringLayoutGuide10);
    MEMORY[0x277D82BD8](trailingAnchor8);
    MEMORY[0x277D82BD8](subtitleLabel3);
    MEMORY[0x277D82BD8](v83);
    MEMORY[0x277D82BD8](leadingAnchor9);
    MEMORY[0x277D82BD8](labelCenteringLayoutGuide9);
    MEMORY[0x277D82BD8](leadingAnchor8);
    MEMORY[0x277D82BD8](subtitleLabel2);
    MEMORY[0x277D82BD8](v88);
    MEMORY[0x277D82BD8](topAnchor9);
    MEMORY[0x277D82BD8](subtitleLabel);
    MEMORY[0x277D82BD8](bottomAnchor7);
    MEMORY[0x277D82BD8](titleLabel4);
    MEMORY[0x277D82BD8](v93);
    MEMORY[0x277D82BD8](trailingAnchor7);
    MEMORY[0x277D82BD8](labelCenteringLayoutGuide8);
    MEMORY[0x277D82BD8](trailingAnchor6);
    MEMORY[0x277D82BD8](titleLabel3);
    MEMORY[0x277D82BD8](v98);
    MEMORY[0x277D82BD8](topAnchor8);
    MEMORY[0x277D82BD8](labelCenteringLayoutGuide7);
    MEMORY[0x277D82BD8](topAnchor7);
    MEMORY[0x277D82BD8](titleLabel2);
    MEMORY[0x277D82BD8](v103);
    MEMORY[0x277D82BD8](leadingAnchor7);
    MEMORY[0x277D82BD8](labelCenteringLayoutGuide6);
    MEMORY[0x277D82BD8](leadingAnchor6);
    MEMORY[0x277D82BD8](titleLabel);
    MEMORY[0x277D82BD8](v108);
    MEMORY[0x277D82BD8](bottomAnchor6);
    MEMORY[0x277D82BD8](centeringLayoutGuide11);
    MEMORY[0x277D82BD8](bottomAnchor5);
    MEMORY[0x277D82BD8](labelCenteringLayoutGuide5);
    MEMORY[0x277D82BD8](v113);
    MEMORY[0x277D82BD8](trailingAnchor5);
    MEMORY[0x277D82BD8](centeringLayoutGuide10);
    MEMORY[0x277D82BD8](trailingAnchor4);
    MEMORY[0x277D82BD8](labelCenteringLayoutGuide4);
    MEMORY[0x277D82BD8](v118);
    MEMORY[0x277D82BD8](trailingAnchor3);
    MEMORY[0x277D82BD8](symbolImageView6);
    MEMORY[0x277D82BD8](leadingAnchor5);
    MEMORY[0x277D82BD8](labelCenteringLayoutGuide3);
    MEMORY[0x277D82BD8](v123);
    MEMORY[0x277D82BD8](centerYAnchor4);
    MEMORY[0x277D82BD8](symbolImageView5);
    MEMORY[0x277D82BD8](centerYAnchor3);
    MEMORY[0x277D82BD8](labelCenteringLayoutGuide2);
    MEMORY[0x277D82BD8](v128);
    MEMORY[0x277D82BD8](topAnchor6);
    MEMORY[0x277D82BD8](centeringLayoutGuide9);
    MEMORY[0x277D82BD8](topAnchor5);
    MEMORY[0x277D82BD8](labelCenteringLayoutGuide);
    MEMORY[0x277D82BD8](v133);
    MEMORY[0x277D82BD8](bottomAnchor4);
    MEMORY[0x277D82BD8](centeringLayoutGuide8);
    MEMORY[0x277D82BD8](bottomAnchor3);
    MEMORY[0x277D82BD8](symbolImageView4);
    MEMORY[0x277D82BD8](v138);
    MEMORY[0x277D82BD8](heightAnchor);
    MEMORY[0x277D82BD8](symbolImageView3);
    MEMORY[0x277D82BD8](v141);
    MEMORY[0x277D82BD8](leadingAnchor4);
    MEMORY[0x277D82BD8](centeringLayoutGuide7);
    MEMORY[0x277D82BD8](leadingAnchor3);
    MEMORY[0x277D82BD8](symbolImageView2);
    MEMORY[0x277D82BD8](v146);
    MEMORY[0x277D82BD8](topAnchor4);
    MEMORY[0x277D82BD8](centeringLayoutGuide6);
    MEMORY[0x277D82BD8](topAnchor3);
    MEMORY[0x277D82BD8](symbolImageView);
    MEMORY[0x277D82BD8](v151);
    MEMORY[0x277D82BD8](bottomAnchor2);
    MEMORY[0x277D82BD8](centeringLayoutGuide5);
    MEMORY[0x277D82BD8](bottomAnchor);
    MEMORY[0x277D82BD8](v155);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](centeringLayoutGuide4);
    MEMORY[0x277D82BD8](topAnchor);
    MEMORY[0x277D82BD8](v159);
    MEMORY[0x277D82BD8](trailingAnchor2);
    MEMORY[0x277D82BD8](trailingAnchor);
    MEMORY[0x277D82BD8](centeringLayoutGuide3);
    MEMORY[0x277D82BD8](v163);
    MEMORY[0x277D82BD8](leadingAnchor2);
    MEMORY[0x277D82BD8](leadingAnchor);
    MEMORY[0x277D82BD8](centeringLayoutGuide2);
    MEMORY[0x277D82BD8](v167);
    MEMORY[0x277D82BD8](centerYAnchor2);
    MEMORY[0x277D82BD8](centerYAnchor);
    MEMORY[0x277D82BD8](centeringLayoutGuide);
  }

  else
  {
    centeringLayoutGuide12 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    centerYAnchor5 = [(UILayoutGuide *)centeringLayoutGuide12 centerYAnchor];
    centerYAnchor6 = [(CPSPrimaryManeuverView *)self centerYAnchor];
    v66 = [(NSLayoutYAxisAnchor *)centerYAnchor5 constraintEqualToAnchor:?];
    v176[0] = v66;
    centeringLayoutGuide13 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    leadingAnchor10 = [(UILayoutGuide *)centeringLayoutGuide13 leadingAnchor];
    leadingAnchor11 = [(CPSPrimaryManeuverView *)self leadingAnchor];
    v62 = [(NSLayoutXAxisAnchor *)leadingAnchor10 constraintEqualToAnchor:13.0 constant:?];
    v176[1] = v62;
    centeringLayoutGuide14 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    trailingAnchor10 = [(UILayoutGuide *)centeringLayoutGuide14 trailingAnchor];
    trailingAnchor11 = [(CPSPrimaryManeuverView *)self trailingAnchor];
    v58 = [(NSLayoutXAxisAnchor *)trailingAnchor10 constraintEqualToAnchor:-13.0 constant:?];
    v176[2] = v58;
    topAnchor10 = [(CPSPrimaryManeuverView *)self topAnchor];
    centeringLayoutGuide15 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    topAnchor11 = [(UILayoutGuide *)centeringLayoutGuide15 topAnchor];
    v7 = _UISolariumEnabled();
    v8 = 10.0;
    if ((v7 & 1) == 0)
    {
      v8 = 4.0;
    }

    v54 = [topAnchor10 constraintLessThanOrEqualToAnchor:topAnchor11 constant:-v8];
    v176[3] = v54;
    bottomAnchor10 = [(CPSPrimaryManeuverView *)self bottomAnchor];
    centeringLayoutGuide16 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    bottomAnchor11 = [(UILayoutGuide *)centeringLayoutGuide16 bottomAnchor];
    v9 = _UISolariumEnabled();
    v10 = 10.0;
    if ((v9 & 1) == 0)
    {
      v10 = 4.0;
    }

    v50 = [bottomAnchor10 constraintGreaterThanOrEqualToAnchor:bottomAnchor11 constant:v10];
    v176[4] = v50;
    titleLabel5 = [(CPSPrimaryManeuverView *)self titleLabel];
    topAnchor12 = [(CPSAbridgableLabel *)titleLabel5 topAnchor];
    centeringLayoutGuide17 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    topAnchor13 = [(UILayoutGuide *)centeringLayoutGuide17 topAnchor];
    v45 = [topAnchor12 constraintEqualToAnchor:? constant:?];
    v176[5] = v45;
    titleLabel6 = [(CPSPrimaryManeuverView *)self titleLabel];
    leadingAnchor12 = [(CPSAbridgableLabel *)titleLabel6 leadingAnchor];
    centeringLayoutGuide18 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    leadingAnchor13 = [(UILayoutGuide *)centeringLayoutGuide18 leadingAnchor];
    v40 = [leadingAnchor12 constraintEqualToAnchor:? constant:?];
    v176[6] = v40;
    titleLabel7 = [(CPSPrimaryManeuverView *)self titleLabel];
    trailingAnchor12 = [(CPSAbridgableLabel *)titleLabel7 trailingAnchor];
    centeringLayoutGuide19 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    trailingAnchor13 = [(UILayoutGuide *)centeringLayoutGuide19 trailingAnchor];
    v35 = [trailingAnchor12 constraintLessThanOrEqualToAnchor:? constant:?];
    v176[7] = v35;
    subtitleLabel5 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    leadingAnchor14 = [(CPSAbridgableLabel *)subtitleLabel5 leadingAnchor];
    centeringLayoutGuide20 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    leadingAnchor15 = [(UILayoutGuide *)centeringLayoutGuide20 leadingAnchor];
    v30 = [leadingAnchor14 constraintEqualToAnchor:8.0 constant:?];
    v176[8] = v30;
    subtitleLabel6 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    trailingAnchor14 = [(CPSAbridgableLabel *)subtitleLabel6 trailingAnchor];
    centeringLayoutGuide21 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    trailingAnchor15 = [(UILayoutGuide *)centeringLayoutGuide21 trailingAnchor];
    v25 = [trailingAnchor14 constraintLessThanOrEqualToAnchor:-8.0 constant:?];
    v176[9] = v25;
    subtitleLabel7 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    topAnchor14 = [(CPSAbridgableLabel *)subtitleLabel7 topAnchor];
    titleLabel8 = [(CPSPrimaryManeuverView *)self titleLabel];
    bottomAnchor12 = [(CPSAbridgableLabel *)titleLabel8 bottomAnchor];
    v20 = [topAnchor14 constraintEqualToAnchor:4.0 constant:?];
    v176[10] = v20;
    subtitleLabel8 = [(CPSPrimaryManeuverView *)self subtitleLabel];
    bottomAnchor13 = [(CPSAbridgableLabel *)subtitleLabel8 bottomAnchor];
    centeringLayoutGuide22 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
    bottomAnchor14 = [(UILayoutGuide *)centeringLayoutGuide22 bottomAnchor];
    v15 = [bottomAnchor13 constraintEqualToAnchor:0.0 constant:?];
    v176[11] = v15;
    junctionImageView2 = [(CPSPrimaryManeuverView *)self junctionImageView];
    heightAnchor3 = [(CPSAspectFitImageView *)junctionImageView2 heightAnchor];
    v12 = [heightAnchor3 constraintEqualToConstant:0.0];
    v176[12] = v12;
    v175 = [MEMORY[0x277CBEA60] arrayWithObjects:v176 count:13];
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](heightAnchor3);
    MEMORY[0x277D82BD8](junctionImageView2);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](bottomAnchor14);
    MEMORY[0x277D82BD8](centeringLayoutGuide22);
    MEMORY[0x277D82BD8](bottomAnchor13);
    MEMORY[0x277D82BD8](subtitleLabel8);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](bottomAnchor12);
    MEMORY[0x277D82BD8](titleLabel8);
    MEMORY[0x277D82BD8](topAnchor14);
    MEMORY[0x277D82BD8](subtitleLabel7);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](trailingAnchor15);
    MEMORY[0x277D82BD8](centeringLayoutGuide21);
    MEMORY[0x277D82BD8](trailingAnchor14);
    MEMORY[0x277D82BD8](subtitleLabel6);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](leadingAnchor15);
    MEMORY[0x277D82BD8](centeringLayoutGuide20);
    MEMORY[0x277D82BD8](leadingAnchor14);
    MEMORY[0x277D82BD8](subtitleLabel5);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](trailingAnchor13);
    MEMORY[0x277D82BD8](centeringLayoutGuide19);
    MEMORY[0x277D82BD8](trailingAnchor12);
    MEMORY[0x277D82BD8](titleLabel7);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](leadingAnchor13);
    MEMORY[0x277D82BD8](centeringLayoutGuide18);
    MEMORY[0x277D82BD8](leadingAnchor12);
    MEMORY[0x277D82BD8](titleLabel6);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](topAnchor13);
    MEMORY[0x277D82BD8](centeringLayoutGuide17);
    MEMORY[0x277D82BD8](topAnchor12);
    MEMORY[0x277D82BD8](titleLabel5);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](bottomAnchor11);
    MEMORY[0x277D82BD8](centeringLayoutGuide16);
    MEMORY[0x277D82BD8](bottomAnchor10);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](topAnchor11);
    MEMORY[0x277D82BD8](centeringLayoutGuide15);
    MEMORY[0x277D82BD8](topAnchor10);
    MEMORY[0x277D82BD8](v58);
    MEMORY[0x277D82BD8](trailingAnchor11);
    MEMORY[0x277D82BD8](trailingAnchor10);
    MEMORY[0x277D82BD8](centeringLayoutGuide14);
    MEMORY[0x277D82BD8](v62);
    MEMORY[0x277D82BD8](leadingAnchor11);
    MEMORY[0x277D82BD8](leadingAnchor10);
    MEMORY[0x277D82BD8](centeringLayoutGuide13);
    MEMORY[0x277D82BD8](v66);
    MEMORY[0x277D82BD8](centerYAnchor6);
    MEMORY[0x277D82BD8](centerYAnchor5);
    MEMORY[0x277D82BD8](centeringLayoutGuide12);
  }

  return v175;
}

- (id)_minimalLayoutConstraints
{
  v91[20] = *MEMORY[0x277D85DE8];
  heightAnchor = [(CPSPrimaryManeuverView *)self heightAnchor];
  v88 = [heightAnchor constraintGreaterThanOrEqualToConstant:50.0];
  v91[0] = v88;
  centeringLayoutGuide = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  centerYAnchor = [(UILayoutGuide *)centeringLayoutGuide centerYAnchor];
  centerYAnchor2 = [(CPSPrimaryManeuverView *)self centerYAnchor];
  v84 = [(NSLayoutYAxisAnchor *)centerYAnchor constraintEqualToAnchor:?];
  v91[1] = v84;
  centeringLayoutGuide2 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  leadingAnchor = [(UILayoutGuide *)centeringLayoutGuide2 leadingAnchor];
  leadingAnchor2 = [(CPSPrimaryManeuverView *)self leadingAnchor];
  v80 = [(NSLayoutXAxisAnchor *)leadingAnchor constraintEqualToAnchor:13.0 constant:?];
  v91[2] = v80;
  centeringLayoutGuide3 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  trailingAnchor = [(UILayoutGuide *)centeringLayoutGuide3 trailingAnchor];
  trailingAnchor2 = [(CPSPrimaryManeuverView *)self trailingAnchor];
  v76 = [(NSLayoutXAxisAnchor *)trailingAnchor constraintEqualToAnchor:-13.0 constant:?];
  v91[3] = v76;
  topAnchor = [(CPSPrimaryManeuverView *)self topAnchor];
  centeringLayoutGuide4 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  topAnchor2 = [(UILayoutGuide *)centeringLayoutGuide4 topAnchor];
  v72 = [topAnchor constraintLessThanOrEqualToAnchor:?];
  v91[4] = v72;
  bottomAnchor = [(CPSPrimaryManeuverView *)self bottomAnchor];
  centeringLayoutGuide5 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  bottomAnchor2 = [(UILayoutGuide *)centeringLayoutGuide5 bottomAnchor];
  v68 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:?];
  v91[5] = v68;
  symbolImageView = [(CPSPrimaryManeuverView *)self symbolImageView];
  topAnchor3 = [(UIImageView *)symbolImageView topAnchor];
  centeringLayoutGuide6 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  topAnchor4 = [(UILayoutGuide *)centeringLayoutGuide6 topAnchor];
  v63 = [topAnchor3 constraintEqualToAnchor:? constant:?];
  v91[6] = v63;
  symbolImageView2 = [(CPSPrimaryManeuverView *)self symbolImageView];
  leadingAnchor3 = [(UIImageView *)symbolImageView2 leadingAnchor];
  centeringLayoutGuide7 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  leadingAnchor4 = [(UILayoutGuide *)centeringLayoutGuide7 leadingAnchor];
  v58 = [leadingAnchor3 constraintEqualToAnchor:? constant:?];
  v91[7] = v58;
  symbolImageView3 = [(CPSPrimaryManeuverView *)self symbolImageView];
  bottomAnchor3 = [(UIImageView *)symbolImageView3 bottomAnchor];
  centeringLayoutGuide8 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  bottomAnchor4 = [(UILayoutGuide *)centeringLayoutGuide8 bottomAnchor];
  v53 = [bottomAnchor3 constraintEqualToAnchor:0.0 constant:?];
  v91[8] = v53;
  symbolImageView4 = [(CPSPrimaryManeuverView *)self symbolImageView];
  heightAnchor2 = [(UIImageView *)symbolImageView4 heightAnchor];
  [(CPSPrimaryManeuverView *)self symbolImageHeight];
  v50 = [heightAnchor2 constraintLessThanOrEqualToConstant:?];
  v91[9] = v50;
  titleLabel = [(CPSPrimaryManeuverView *)self titleLabel];
  leadingAnchor5 = [(CPSAbridgableLabel *)titleLabel leadingAnchor];
  symbolImageView5 = [(CPSPrimaryManeuverView *)self symbolImageView];
  trailingAnchor3 = [(UIImageView *)symbolImageView5 trailingAnchor];
  v45 = [leadingAnchor5 constraintEqualToAnchor:8.0 constant:?];
  v91[10] = v45;
  titleLabel2 = [(CPSPrimaryManeuverView *)self titleLabel];
  centerYAnchor3 = [(CPSAbridgableLabel *)titleLabel2 centerYAnchor];
  symbolImageView6 = [(CPSPrimaryManeuverView *)self symbolImageView];
  centerYAnchor4 = [(UIImageView *)symbolImageView6 centerYAnchor];
  v40 = [centerYAnchor3 constraintEqualToAnchor:?];
  v91[11] = v40;
  titleLabel3 = [(CPSPrimaryManeuverView *)self titleLabel];
  trailingAnchor4 = [(CPSAbridgableLabel *)titleLabel3 trailingAnchor];
  centeringLayoutGuide9 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  trailingAnchor5 = [(UILayoutGuide *)centeringLayoutGuide9 trailingAnchor];
  v35 = [trailingAnchor4 constraintLessThanOrEqualToAnchor:? constant:?];
  v91[12] = v35;
  titleLabel4 = [(CPSPrimaryManeuverView *)self titleLabel];
  bottomAnchor5 = [(CPSAbridgableLabel *)titleLabel4 bottomAnchor];
  centeringLayoutGuide10 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  bottomAnchor6 = [(UILayoutGuide *)centeringLayoutGuide10 bottomAnchor];
  v30 = [bottomAnchor5 constraintLessThanOrEqualToAnchor:?];
  v91[13] = v30;
  subtitleLabel = [(CPSPrimaryManeuverView *)self subtitleLabel];
  leadingAnchor6 = [(CPSAbridgableLabel *)subtitleLabel leadingAnchor];
  centeringLayoutGuide11 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  leadingAnchor7 = [(UILayoutGuide *)centeringLayoutGuide11 leadingAnchor];
  v25 = [leadingAnchor6 constraintEqualToAnchor:8.0 constant:?];
  v91[14] = v25;
  subtitleLabel2 = [(CPSPrimaryManeuverView *)self subtitleLabel];
  topAnchor5 = [(CPSAbridgableLabel *)subtitleLabel2 topAnchor];
  titleLabel5 = [(CPSPrimaryManeuverView *)self titleLabel];
  bottomAnchor7 = [(CPSAbridgableLabel *)titleLabel5 bottomAnchor];
  v20 = [topAnchor5 constraintEqualToAnchor:0.0 constant:?];
  v91[15] = v20;
  subtitleLabel3 = [(CPSPrimaryManeuverView *)self subtitleLabel];
  bottomAnchor8 = [(CPSAbridgableLabel *)subtitleLabel3 bottomAnchor];
  centeringLayoutGuide12 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  bottomAnchor9 = [(UILayoutGuide *)centeringLayoutGuide12 bottomAnchor];
  v15 = [bottomAnchor8 constraintEqualToAnchor:0.0 constant:?];
  v91[16] = v15;
  subtitleLabel4 = [(CPSPrimaryManeuverView *)self subtitleLabel];
  trailingAnchor6 = [(CPSAbridgableLabel *)subtitleLabel4 trailingAnchor];
  centeringLayoutGuide13 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  trailingAnchor7 = [(UILayoutGuide *)centeringLayoutGuide13 trailingAnchor];
  v10 = [trailingAnchor6 constraintLessThanOrEqualToAnchor:-8.0 constant:?];
  v91[17] = v10;
  subtitleLabel5 = [(CPSPrimaryManeuverView *)self subtitleLabel];
  heightAnchor3 = [(CPSAbridgableLabel *)subtitleLabel5 heightAnchor];
  v7 = [heightAnchor3 constraintEqualToConstant:0.0];
  v91[18] = v7;
  junctionImageView = [(CPSPrimaryManeuverView *)self junctionImageView];
  heightAnchor4 = [(CPSAspectFitImageView *)junctionImageView heightAnchor];
  v3 = [heightAnchor4 constraintEqualToConstant:0.0];
  v91[19] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:20];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](heightAnchor4);
  MEMORY[0x277D82BD8](junctionImageView);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](heightAnchor3);
  MEMORY[0x277D82BD8](subtitleLabel5);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](trailingAnchor7);
  MEMORY[0x277D82BD8](centeringLayoutGuide13);
  MEMORY[0x277D82BD8](trailingAnchor6);
  MEMORY[0x277D82BD8](subtitleLabel4);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](bottomAnchor9);
  MEMORY[0x277D82BD8](centeringLayoutGuide12);
  MEMORY[0x277D82BD8](bottomAnchor8);
  MEMORY[0x277D82BD8](subtitleLabel3);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](bottomAnchor7);
  MEMORY[0x277D82BD8](titleLabel5);
  MEMORY[0x277D82BD8](topAnchor5);
  MEMORY[0x277D82BD8](subtitleLabel2);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](leadingAnchor7);
  MEMORY[0x277D82BD8](centeringLayoutGuide11);
  MEMORY[0x277D82BD8](leadingAnchor6);
  MEMORY[0x277D82BD8](subtitleLabel);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](bottomAnchor6);
  MEMORY[0x277D82BD8](centeringLayoutGuide10);
  MEMORY[0x277D82BD8](bottomAnchor5);
  MEMORY[0x277D82BD8](titleLabel4);
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](trailingAnchor5);
  MEMORY[0x277D82BD8](centeringLayoutGuide9);
  MEMORY[0x277D82BD8](trailingAnchor4);
  MEMORY[0x277D82BD8](titleLabel3);
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](centerYAnchor4);
  MEMORY[0x277D82BD8](symbolImageView6);
  MEMORY[0x277D82BD8](centerYAnchor3);
  MEMORY[0x277D82BD8](titleLabel2);
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](trailingAnchor3);
  MEMORY[0x277D82BD8](symbolImageView5);
  MEMORY[0x277D82BD8](leadingAnchor5);
  MEMORY[0x277D82BD8](titleLabel);
  MEMORY[0x277D82BD8](v50);
  MEMORY[0x277D82BD8](heightAnchor2);
  MEMORY[0x277D82BD8](symbolImageView4);
  MEMORY[0x277D82BD8](v53);
  MEMORY[0x277D82BD8](bottomAnchor4);
  MEMORY[0x277D82BD8](centeringLayoutGuide8);
  MEMORY[0x277D82BD8](bottomAnchor3);
  MEMORY[0x277D82BD8](symbolImageView3);
  MEMORY[0x277D82BD8](v58);
  MEMORY[0x277D82BD8](leadingAnchor4);
  MEMORY[0x277D82BD8](centeringLayoutGuide7);
  MEMORY[0x277D82BD8](leadingAnchor3);
  MEMORY[0x277D82BD8](symbolImageView2);
  MEMORY[0x277D82BD8](v63);
  MEMORY[0x277D82BD8](topAnchor4);
  MEMORY[0x277D82BD8](centeringLayoutGuide6);
  MEMORY[0x277D82BD8](topAnchor3);
  MEMORY[0x277D82BD8](symbolImageView);
  MEMORY[0x277D82BD8](v68);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](centeringLayoutGuide5);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](v72);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](centeringLayoutGuide4);
  MEMORY[0x277D82BD8](topAnchor);
  MEMORY[0x277D82BD8](v76);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](trailingAnchor);
  MEMORY[0x277D82BD8](centeringLayoutGuide3);
  MEMORY[0x277D82BD8](v80);
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](leadingAnchor);
  MEMORY[0x277D82BD8](centeringLayoutGuide2);
  MEMORY[0x277D82BD8](v84);
  MEMORY[0x277D82BD8](centerYAnchor2);
  MEMORY[0x277D82BD8](centerYAnchor);
  MEMORY[0x277D82BD8](centeringLayoutGuide);
  MEMORY[0x277D82BD8](v88);
  MEMORY[0x277D82BD8](heightAnchor);

  return v4;
}

- (id)_minimalLayoutWideImageConstraints
{
  v99[21] = *MEMORY[0x277D85DE8];
  centeringLayoutGuide = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  centerYAnchor = [(UILayoutGuide *)centeringLayoutGuide centerYAnchor];
  centerYAnchor2 = [(CPSPrimaryManeuverView *)self centerYAnchor];
  v94 = [(NSLayoutYAxisAnchor *)centerYAnchor constraintEqualToAnchor:?];
  v99[0] = v94;
  centeringLayoutGuide2 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  leadingAnchor = [(UILayoutGuide *)centeringLayoutGuide2 leadingAnchor];
  leadingAnchor2 = [(CPSPrimaryManeuverView *)self leadingAnchor];
  v90 = [(NSLayoutXAxisAnchor *)leadingAnchor constraintEqualToAnchor:13.0 constant:?];
  v99[1] = v90;
  centeringLayoutGuide3 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  trailingAnchor = [(UILayoutGuide *)centeringLayoutGuide3 trailingAnchor];
  trailingAnchor2 = [(CPSPrimaryManeuverView *)self trailingAnchor];
  v86 = [(NSLayoutXAxisAnchor *)trailingAnchor constraintEqualToAnchor:-13.0 constant:?];
  v99[2] = v86;
  topAnchor = [(CPSPrimaryManeuverView *)self topAnchor];
  centeringLayoutGuide4 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  topAnchor2 = [(UILayoutGuide *)centeringLayoutGuide4 topAnchor];
  v82 = [topAnchor constraintLessThanOrEqualToAnchor:?];
  v99[3] = v82;
  bottomAnchor = [(CPSPrimaryManeuverView *)self bottomAnchor];
  centeringLayoutGuide5 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  bottomAnchor2 = [(UILayoutGuide *)centeringLayoutGuide5 bottomAnchor];
  v78 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:?];
  v99[4] = v78;
  symbolImageView = [(CPSPrimaryManeuverView *)self symbolImageView];
  topAnchor3 = [(UIImageView *)symbolImageView topAnchor];
  centeringLayoutGuide6 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  topAnchor4 = [(UILayoutGuide *)centeringLayoutGuide6 topAnchor];
  v73 = [topAnchor3 constraintEqualToAnchor:? constant:?];
  v99[5] = v73;
  symbolImageView2 = [(CPSPrimaryManeuverView *)self symbolImageView];
  leadingAnchor3 = [(UIImageView *)symbolImageView2 leadingAnchor];
  centeringLayoutGuide7 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  leadingAnchor4 = [(UILayoutGuide *)centeringLayoutGuide7 leadingAnchor];
  v68 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:0.0 constant:?];
  v99[6] = v68;
  symbolImageView3 = [(CPSPrimaryManeuverView *)self symbolImageView];
  trailingAnchor3 = [(UIImageView *)symbolImageView3 trailingAnchor];
  centeringLayoutGuide8 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  trailingAnchor4 = [(UILayoutGuide *)centeringLayoutGuide8 trailingAnchor];
  v63 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:0.0 constant:?];
  v99[7] = v63;
  symbolImageView4 = [(CPSPrimaryManeuverView *)self symbolImageView];
  centerXAnchor = [(UIImageView *)symbolImageView4 centerXAnchor];
  centeringLayoutGuide9 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  centerXAnchor2 = [(UILayoutGuide *)centeringLayoutGuide9 centerXAnchor];
  v58 = [centerXAnchor constraintEqualToAnchor:?];
  v99[8] = v58;
  symbolImageView5 = [(CPSPrimaryManeuverView *)self symbolImageView];
  widthAnchor = [(UIImageView *)symbolImageView5 widthAnchor];
  centeringLayoutGuide10 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  widthAnchor2 = [(UILayoutGuide *)centeringLayoutGuide10 widthAnchor];
  v53 = [widthAnchor constraintLessThanOrEqualToAnchor:?];
  v99[9] = v53;
  symbolImageView6 = [(CPSPrimaryManeuverView *)self symbolImageView];
  heightAnchor = [(UIImageView *)symbolImageView6 heightAnchor];
  [(CPSPrimaryManeuverView *)self symbolImageHeight];
  v50 = [heightAnchor constraintLessThanOrEqualToConstant:?];
  v99[10] = v50;
  titleLabel = [(CPSPrimaryManeuverView *)self titleLabel];
  leadingAnchor5 = [(CPSAbridgableLabel *)titleLabel leadingAnchor];
  centeringLayoutGuide11 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  leadingAnchor6 = [(UILayoutGuide *)centeringLayoutGuide11 leadingAnchor];
  v45 = [leadingAnchor5 constraintEqualToAnchor:? constant:?];
  v99[11] = v45;
  titleLabel2 = [(CPSPrimaryManeuverView *)self titleLabel];
  topAnchor5 = [(CPSAbridgableLabel *)titleLabel2 topAnchor];
  symbolImageView7 = [(CPSPrimaryManeuverView *)self symbolImageView];
  bottomAnchor3 = [(UIImageView *)symbolImageView7 bottomAnchor];
  v40 = [topAnchor5 constraintEqualToAnchor:?];
  v99[12] = v40;
  titleLabel3 = [(CPSPrimaryManeuverView *)self titleLabel];
  trailingAnchor5 = [(CPSAbridgableLabel *)titleLabel3 trailingAnchor];
  centeringLayoutGuide12 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  trailingAnchor6 = [(UILayoutGuide *)centeringLayoutGuide12 trailingAnchor];
  v35 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:? constant:?];
  v99[13] = v35;
  titleLabel4 = [(CPSPrimaryManeuverView *)self titleLabel];
  bottomAnchor4 = [(CPSAbridgableLabel *)titleLabel4 bottomAnchor];
  centeringLayoutGuide13 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  bottomAnchor5 = [(UILayoutGuide *)centeringLayoutGuide13 bottomAnchor];
  v30 = [bottomAnchor4 constraintLessThanOrEqualToAnchor:?];
  v99[14] = v30;
  subtitleLabel = [(CPSPrimaryManeuverView *)self subtitleLabel];
  leadingAnchor7 = [(CPSAbridgableLabel *)subtitleLabel leadingAnchor];
  centeringLayoutGuide14 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  leadingAnchor8 = [(UILayoutGuide *)centeringLayoutGuide14 leadingAnchor];
  v25 = [leadingAnchor7 constraintEqualToAnchor:8.0 constant:?];
  v99[15] = v25;
  subtitleLabel2 = [(CPSPrimaryManeuverView *)self subtitleLabel];
  topAnchor6 = [(CPSAbridgableLabel *)subtitleLabel2 topAnchor];
  titleLabel5 = [(CPSPrimaryManeuverView *)self titleLabel];
  bottomAnchor6 = [(CPSAbridgableLabel *)titleLabel5 bottomAnchor];
  v20 = [topAnchor6 constraintEqualToAnchor:0.0 constant:?];
  v99[16] = v20;
  subtitleLabel3 = [(CPSPrimaryManeuverView *)self subtitleLabel];
  bottomAnchor7 = [(CPSAbridgableLabel *)subtitleLabel3 bottomAnchor];
  centeringLayoutGuide15 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  bottomAnchor8 = [(UILayoutGuide *)centeringLayoutGuide15 bottomAnchor];
  v15 = [bottomAnchor7 constraintEqualToAnchor:0.0 constant:?];
  v99[17] = v15;
  subtitleLabel4 = [(CPSPrimaryManeuverView *)self subtitleLabel];
  trailingAnchor7 = [(CPSAbridgableLabel *)subtitleLabel4 trailingAnchor];
  centeringLayoutGuide16 = [(CPSPrimaryManeuverView *)self centeringLayoutGuide];
  trailingAnchor8 = [(UILayoutGuide *)centeringLayoutGuide16 trailingAnchor];
  v10 = [trailingAnchor7 constraintLessThanOrEqualToAnchor:-8.0 constant:?];
  v99[18] = v10;
  subtitleLabel5 = [(CPSPrimaryManeuverView *)self subtitleLabel];
  heightAnchor2 = [(CPSAbridgableLabel *)subtitleLabel5 heightAnchor];
  v7 = [heightAnchor2 constraintEqualToConstant:0.0];
  v99[19] = v7;
  junctionImageView = [(CPSPrimaryManeuverView *)self junctionImageView];
  heightAnchor3 = [(CPSAspectFitImageView *)junctionImageView heightAnchor];
  v3 = [heightAnchor3 constraintEqualToConstant:0.0];
  v99[20] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v99 count:21];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](heightAnchor3);
  MEMORY[0x277D82BD8](junctionImageView);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](heightAnchor2);
  MEMORY[0x277D82BD8](subtitleLabel5);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](trailingAnchor8);
  MEMORY[0x277D82BD8](centeringLayoutGuide16);
  MEMORY[0x277D82BD8](trailingAnchor7);
  MEMORY[0x277D82BD8](subtitleLabel4);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](bottomAnchor8);
  MEMORY[0x277D82BD8](centeringLayoutGuide15);
  MEMORY[0x277D82BD8](bottomAnchor7);
  MEMORY[0x277D82BD8](subtitleLabel3);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](bottomAnchor6);
  MEMORY[0x277D82BD8](titleLabel5);
  MEMORY[0x277D82BD8](topAnchor6);
  MEMORY[0x277D82BD8](subtitleLabel2);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](leadingAnchor8);
  MEMORY[0x277D82BD8](centeringLayoutGuide14);
  MEMORY[0x277D82BD8](leadingAnchor7);
  MEMORY[0x277D82BD8](subtitleLabel);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](bottomAnchor5);
  MEMORY[0x277D82BD8](centeringLayoutGuide13);
  MEMORY[0x277D82BD8](bottomAnchor4);
  MEMORY[0x277D82BD8](titleLabel4);
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](trailingAnchor6);
  MEMORY[0x277D82BD8](centeringLayoutGuide12);
  MEMORY[0x277D82BD8](trailingAnchor5);
  MEMORY[0x277D82BD8](titleLabel3);
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](bottomAnchor3);
  MEMORY[0x277D82BD8](symbolImageView7);
  MEMORY[0x277D82BD8](topAnchor5);
  MEMORY[0x277D82BD8](titleLabel2);
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](leadingAnchor6);
  MEMORY[0x277D82BD8](centeringLayoutGuide11);
  MEMORY[0x277D82BD8](leadingAnchor5);
  MEMORY[0x277D82BD8](titleLabel);
  MEMORY[0x277D82BD8](v50);
  MEMORY[0x277D82BD8](heightAnchor);
  MEMORY[0x277D82BD8](symbolImageView6);
  MEMORY[0x277D82BD8](v53);
  MEMORY[0x277D82BD8](widthAnchor2);
  MEMORY[0x277D82BD8](centeringLayoutGuide10);
  MEMORY[0x277D82BD8](widthAnchor);
  MEMORY[0x277D82BD8](symbolImageView5);
  MEMORY[0x277D82BD8](v58);
  MEMORY[0x277D82BD8](centerXAnchor2);
  MEMORY[0x277D82BD8](centeringLayoutGuide9);
  MEMORY[0x277D82BD8](centerXAnchor);
  MEMORY[0x277D82BD8](symbolImageView4);
  MEMORY[0x277D82BD8](v63);
  MEMORY[0x277D82BD8](trailingAnchor4);
  MEMORY[0x277D82BD8](centeringLayoutGuide8);
  MEMORY[0x277D82BD8](trailingAnchor3);
  MEMORY[0x277D82BD8](symbolImageView3);
  MEMORY[0x277D82BD8](v68);
  MEMORY[0x277D82BD8](leadingAnchor4);
  MEMORY[0x277D82BD8](centeringLayoutGuide7);
  MEMORY[0x277D82BD8](leadingAnchor3);
  MEMORY[0x277D82BD8](symbolImageView2);
  MEMORY[0x277D82BD8](v73);
  MEMORY[0x277D82BD8](topAnchor4);
  MEMORY[0x277D82BD8](centeringLayoutGuide6);
  MEMORY[0x277D82BD8](topAnchor3);
  MEMORY[0x277D82BD8](symbolImageView);
  MEMORY[0x277D82BD8](v78);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](centeringLayoutGuide5);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](v82);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](centeringLayoutGuide4);
  MEMORY[0x277D82BD8](topAnchor);
  MEMORY[0x277D82BD8](v86);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](trailingAnchor);
  MEMORY[0x277D82BD8](centeringLayoutGuide3);
  MEMORY[0x277D82BD8](v90);
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](leadingAnchor);
  MEMORY[0x277D82BD8](centeringLayoutGuide2);
  MEMORY[0x277D82BD8](v94);
  MEMORY[0x277D82BD8](centerYAnchor2);
  MEMORY[0x277D82BD8](centerYAnchor);
  MEMORY[0x277D82BD8](centeringLayoutGuide);

  return v4;
}

- (void)_switchToLayoutConfiguration:(id)configuration
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v34 = location[0];
  activeLayoutConfiguration = [(CPSPrimaryManeuverView *)selfCopy activeLayoutConfiguration];
  v36 = 0;
  if ([v34 isEqual:?])
  {
    v36 = selfCopy->_activeLayoutConstraints != 0;
  }

  *&v3 = MEMORY[0x277D82BD8](activeLayoutConfiguration).n128_u64[0];
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
    [(CPSPrimaryManeuverView *)selfCopy setActiveLayoutConfiguration:location[0], v3];
    _formattedDistance = [(CPSPrimaryManeuverView *)selfCopy _formattedDistance];
    if (_formattedDistance)
    {
      titleLabel = [(CPSPrimaryManeuverView *)selfCopy titleLabel];
      _titleFont = [(CPSPrimaryManeuverView *)selfCopy _titleFont];
      [(CPSAbridgableLabel *)titleLabel setFont:?];
      MEMORY[0x277D82BD8](_titleFont);
      *&v4 = MEMORY[0x277D82BD8](titleLabel).n128_u64[0];
      titleLabel2 = [(CPSPrimaryManeuverView *)selfCopy titleLabel];
      [(CPUIAbridgableLabel *)titleLabel2 setText:_formattedDistance];
      *&v5 = MEMORY[0x277D82BD8](titleLabel2).n128_u64[0];
      attributedInstruction = [location[0] attributedInstruction];
      *&v6 = MEMORY[0x277D82BD8](attributedInstruction).n128_u64[0];
      if (attributedInstruction)
      {
        subtitleLabel = [(CPSPrimaryManeuverView *)selfCopy subtitleLabel];
        attributedInstruction2 = [location[0] attributedInstruction];
        [(CPUIAbridgableLabel *)subtitleLabel setAttributedText:?];
        MEMORY[0x277D82BD8](attributedInstruction2);
        v7 = MEMORY[0x277D82BD8](subtitleLabel).n128_u64[0];
      }

      else
      {
        subtitleLabel2 = [(CPSPrimaryManeuverView *)selfCopy subtitleLabel];
        instruction = [location[0] instruction];
        [(CPUIAbridgableLabel *)subtitleLabel2 setText:?];
        MEMORY[0x277D82BD8](instruction);
        v7 = MEMORY[0x277D82BD8](subtitleLabel2).n128_u64[0];
      }
    }

    else
    {
      titleLabel3 = [(CPSPrimaryManeuverView *)selfCopy titleLabel];
      _subtitleFont = [(CPSPrimaryManeuverView *)selfCopy _subtitleFont];
      [(CPSAbridgableLabel *)titleLabel3 setFont:?];
      MEMORY[0x277D82BD8](_subtitleFont);
      *&v8 = MEMORY[0x277D82BD8](titleLabel3).n128_u64[0];
      attributedInstruction3 = [location[0] attributedInstruction];
      *&v9 = MEMORY[0x277D82BD8](attributedInstruction3).n128_u64[0];
      if (attributedInstruction3)
      {
        titleLabel4 = [(CPSPrimaryManeuverView *)selfCopy titleLabel];
        attributedInstruction4 = [location[0] attributedInstruction];
        [(CPUIAbridgableLabel *)titleLabel4 setAttributedText:?];
        MEMORY[0x277D82BD8](attributedInstruction4);
        v7 = MEMORY[0x277D82BD8](titleLabel4).n128_u64[0];
      }

      else
      {
        titleLabel5 = [(CPSPrimaryManeuverView *)selfCopy titleLabel];
        instruction2 = [location[0] instruction];
        [(CPUIAbridgableLabel *)titleLabel5 setText:?];
        MEMORY[0x277D82BD8](instruction2);
        v7 = MEMORY[0x277D82BD8](titleLabel5).n128_u64[0];
      }
    }

    symbolImageView = [(CPSPrimaryManeuverView *)selfCopy symbolImageView];
    symbolImage = [location[0] symbolImage];
    [(UIImageView *)symbolImageView setImage:?];
    MEMORY[0x277D82BD8](symbolImage);
    *&v10 = MEMORY[0x277D82BD8](symbolImageView).n128_u64[0];
    junctionImage = [location[0] junctionImage];
    junctionImageView = [(CPSPrimaryManeuverView *)selfCopy junctionImageView];
    [(CPSAspectFitImageView *)junctionImageView setImage:junctionImage];
    MEMORY[0x277D82BD8](junctionImageView);
    *&v11 = MEMORY[0x277D82BD8](junctionImage).n128_u64[0];
    layout = [location[0] layout];
    switch(layout)
    {
      case 1:
        [(CPSPrimaryManeuverView *)selfCopy _activateFullLayoutConstraints];
        break;
      case 2:
        [(CPSPrimaryManeuverView *)selfCopy _activateFullLayoutWideImageConstraints];
        break;
      case 3:
        [(CPSPrimaryManeuverView *)selfCopy _activateJunctionViewNoInstructionConstraints];
        break;
      case 4:
        [(CPSPrimaryManeuverView *)selfCopy _activateJunctionViewNoInstructionWideImageConstraints];
        break;
      case 5:
        [(CPSPrimaryManeuverView *)selfCopy _activateFullNoJunctionViewLayoutConstraints];
        break;
      case 6:
        [(CPSPrimaryManeuverView *)selfCopy _activateFullNoJunctionViewWideImageLayoutConstraints];
        break;
      case 7:
        [(CPSPrimaryManeuverView *)selfCopy _activateFullSubtitleNextToImageConstraints];
        break;
      case 8:
        [(CPSPrimaryManeuverView *)selfCopy _activateMinimalWideImageLayoutConstraints];
        break;
      case 9:
        [(CPSPrimaryManeuverView *)selfCopy _activateMinimalLayoutConstraints];
        break;
    }

    objc_storeStrong(&_formattedDistance, 0);
    v38 = 0;
  }

  objc_storeStrong(location, 0);
}

- (id)_formattedDistance
{
  selfCopy = self;
  location[1] = a2;
  currentTravelEstimates = [(CPSPrimaryManeuverView *)self currentTravelEstimates];
  location[0] = [(CPTravelEstimates *)currentTravelEstimates distanceRemaining];
  *&v2 = MEMORY[0x277D82BD8](currentTravelEstimates).n128_u64[0];
  if (!location[0])
  {
    maneuver = [(CPSPrimaryManeuverView *)selfCopy maneuver];
    initialTravelEstimates = [(CPManeuver *)maneuver initialTravelEstimates];
    location[0] = [(CPTravelEstimates *)initialTravelEstimates distanceRemaining];
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](initialTravelEstimates);
    MEMORY[0x277D82BD8](maneuver);
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

- (void)setUsesCustomBackgroundColor:(BOOL)color
{
  if (self->_usesCustomBackgroundColor != color)
  {
    self->_usesCustomBackgroundColor = color;
    [(CPSPrimaryManeuverView *)self _updateLabelTextColors];
    [(CPSPrimaryManeuverView *)self _updateJunctionBackgroundColor];
  }
}

- (void)_updateLabelTextColors
{
  selfCopy = self;
  location[1] = a2;
  objc_initWeak(location, self);
  subtitleLabel = [(CPSPrimaryManeuverView *)selfCopy subtitleLabel];
  v7 = MEMORY[0x277D75348];
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __48__CPSPrimaryManeuverView__updateLabelTextColors__block_invoke;
  v12 = &unk_278D927E8;
  objc_copyWeak(v13, location);
  v5 = [v7 colorWithDynamicProvider:&v8];
  [(CPSAbridgableLabel *)subtitleLabel setTextColor:?];
  MEMORY[0x277D82BD8](v5);
  *&v2 = MEMORY[0x277D82BD8](subtitleLabel).n128_u64[0];
  titleLabel = [(CPSPrimaryManeuverView *)selfCopy titleLabel];
  v3 = [MEMORY[0x277D75348] colorWithDynamicProvider:&__block_literal_global_5];
  [(CPSAbridgableLabel *)titleLabel setTextColor:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](titleLabel);
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
  selfCopy = self;
  v3[1] = a2;
  v3[0] = [(CPSPrimaryManeuverView *)self junctionBackgroundColor];
  junctionImageBackgroundView = [(CPSPrimaryManeuverView *)selfCopy junctionImageBackgroundView];
  [(UIView *)junctionImageBackgroundView setBackgroundColor:v3[0]];
  MEMORY[0x277D82BD8](junctionImageBackgroundView);
  objc_storeStrong(v3, 0);
}

- (id)junctionBackgroundColor
{
  if ([(CPSPrimaryManeuverView *)self usesCustomBackgroundColor])
  {
    v3 = MEMORY[0x277D75348];
    v5 = CPSFrameworkBundle();
    traitCollection = [(CPSPrimaryManeuverView *)self traitCollection];
    v7 = [v3 colorNamed:@"GuidanceColor30AlphaLightWhiteDarkBlack" inBundle:v5 compatibleWithTraitCollection:?];
    MEMORY[0x277D82BD8](traitCollection);
    MEMORY[0x277D82BD8](v5);
  }

  else
  {
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.247058824 alpha:1.0];
  }

  return v7;
}

@end