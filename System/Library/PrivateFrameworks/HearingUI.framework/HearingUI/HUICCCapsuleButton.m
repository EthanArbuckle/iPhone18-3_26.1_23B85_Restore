@interface HUICCCapsuleButton
- (BOOL)accessibilityActivate;
- (BOOL)enabled;
- (BOOL)supportsExpanding;
- (CGPoint)accessibilityActivationPoint;
- (HACCContentModuleDelegate)delegate;
- (HUICCCapsuleButton)initWithFrame:(CGRect)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)contentValue;
- (int64_t)_indexToInsertFor:(id)a3;
- (void)_setIsExpanded:(BOOL)a3;
- (void)_updateStackConstraints;
- (void)addExpandedView:(id)a3;
- (void)buttonTapped;
- (void)removeExpandedView:(id)a3;
- (void)setAccessoryView:(id)a3;
- (void)setDimmingState:(BOOL)a3;
- (void)setIconView:(id)a3;
- (void)setIsExpanded:(BOOL)a3;
- (void)setSubtitleText:(id)a3;
- (void)setTitleText:(id)a3;
- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4;
@end

@implementation HUICCCapsuleButton

- (HUICCCapsuleButton)initWithFrame:(CGRect)a3
{
  v90[4] = *MEMORY[0x277D85DE8];
  v85.receiver = self;
  v85.super_class = HUICCCapsuleButton;
  v3 = [(HUICCCapsuleButton *)&v85 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUICCCapsuleButton *)v3 setClipsToBounds:1];
    [(HUICCCapsuleButton *)v4 _setContinuousCornerRadius:37.0];
    v5 = HUICCBackgroundMaterialView();
    backgroundView = v4->_backgroundView;
    v4->_backgroundView = v5;

    [(UIView *)v4->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4->_backgroundView setUserInteractionEnabled:1];
    [(HUICCCapsuleButton *)v4 insertSubview:v4->_backgroundView atIndex:0];
    v74 = MEMORY[0x277CCAAD0];
    v84 = [(UIView *)v4->_backgroundView leadingAnchor];
    v82 = [(HUICCCapsuleButton *)v4 leadingAnchor];
    v80 = [v84 constraintEqualToAnchor:v82];
    v90[0] = v80;
    v78 = [(UIView *)v4->_backgroundView trailingAnchor];
    v76 = [(HUICCCapsuleButton *)v4 trailingAnchor];
    v7 = [v78 constraintEqualToAnchor:v76];
    v90[1] = v7;
    v8 = [(UIView *)v4->_backgroundView topAnchor];
    v9 = [(HUICCCapsuleButton *)v4 topAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    v90[2] = v10;
    v11 = [(UIView *)v4->_backgroundView bottomAnchor];
    v12 = [(HUICCCapsuleButton *)v4 bottomAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v90[3] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:4];
    [v74 activateConstraints:v14];

    v15 = MEMORY[0x277CCAAD0];
    v16 = [(HUICCCapsuleButton *)v4 heightAnchor];
    v17 = [v16 constraintGreaterThanOrEqualToConstant:74.0];
    v89 = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v89 count:1];
    [v15 activateConstraints:v18];

    v19 = objc_alloc_init(MEMORY[0x277D75A68]);
    mainStack = v4->_mainStack;
    v4->_mainStack = v19;

    [(UIStackView *)v4->_mainStack setDistribution:0];
    [(UIStackView *)v4->_mainStack setAxis:1];
    [(UIStackView *)v4->_mainStack setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4->_backgroundView addSubview:v4->_mainStack];
    v75 = MEMORY[0x277CCAAD0];
    v83 = [(UIStackView *)v4->_mainStack leadingAnchor];
    v81 = [(HUICCCapsuleButton *)v4 leadingAnchor];
    v79 = [v83 constraintEqualToAnchor:v81];
    v88[0] = v79;
    v77 = [(UIStackView *)v4->_mainStack trailingAnchor];
    v21 = [(HUICCCapsuleButton *)v4 trailingAnchor];
    v22 = [v77 constraintEqualToAnchor:v21];
    v88[1] = v22;
    v23 = [(UIStackView *)v4->_mainStack topAnchor];
    v24 = [(HUICCCapsuleButton *)v4 topAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    v88[2] = v25;
    v26 = [(UIStackView *)v4->_mainStack bottomAnchor];
    v27 = [(HUICCCapsuleButton *)v4 bottomAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    v88[3] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:4];
    [v75 activateConstraints:v29];

    v30 = objc_alloc_init(MEMORY[0x277D75A68]);
    horizontalPillStack = v4->_horizontalPillStack;
    v4->_horizontalPillStack = v30;

    [(UIStackView *)v4->_horizontalPillStack setAxis:0];
    [(UIStackView *)v4->_horizontalPillStack setAlignment:3];
    [(UIStackView *)v4->_horizontalPillStack setSpacing:20.0];
    [(UIStackView *)v4->_horizontalPillStack setLayoutMarginsRelativeArrangement:1];
    [(UIStackView *)v4->_horizontalPillStack setLayoutMargins:10.0, 10.0, 10.0, 10.0];
    [(UIStackView *)v4->_horizontalPillStack setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v4->_mainStack addArrangedSubview:v4->_horizontalPillStack];
    v32 = MEMORY[0x277CCAAD0];
    v33 = [(HUICCCapsuleButton *)v4 horizontalPillStack];
    v34 = [v33 heightAnchor];
    v35 = [v34 constraintGreaterThanOrEqualToConstant:74.0];
    v87 = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v87 count:1];
    [v32 activateConstraints:v36];

    v37 = objc_alloc_init(MEMORY[0x277D75D18]);
    iconViewContainer = v4->_iconViewContainer;
    v4->_iconViewContainer = v37;

    [(UIView *)v4->_iconViewContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v4->_horizontalPillStack addArrangedSubview:v4->_iconViewContainer];
    v39 = MEMORY[0x277CCAAD0];
    v40 = [(UIView *)v4->_iconViewContainer heightAnchor];
    v41 = [v40 constraintEqualToConstant:54.0];
    v86[0] = v41;
    v42 = [(UIView *)v4->_iconViewContainer widthAnchor];
    v43 = [v42 constraintEqualToConstant:54.0];
    v86[1] = v43;
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:2];
    [v39 activateConstraints:v44];

    v45 = objc_alloc_init(MEMORY[0x277D75A68]);
    verticalTitleStack = v4->_verticalTitleStack;
    v4->_verticalTitleStack = v45;

    [(UIStackView *)v4->_verticalTitleStack setAxis:1];
    [(UIStackView *)v4->_verticalTitleStack setAlignment:3];
    [(UIStackView *)v4->_horizontalPillStack addArrangedSubview:v4->_verticalTitleStack];
    v47 = objc_alloc_init(MEMORY[0x277D75D18]);
    accessoryViewContainer = v4->_accessoryViewContainer;
    v4->_accessoryViewContainer = v47;

    [(UIView *)v4->_accessoryViewContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v4->_horizontalPillStack addArrangedSubview:v4->_accessoryViewContainer];
    v49 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v49;

    v51 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76988] addingSymbolicTraits:32770 options:0];
    v52 = v4->_titleLabel;
    v53 = MEMORY[0x277D74300];
    [v51 pointSize];
    v54 = [v53 fontWithDescriptor:v51 size:?];
    [(UILabel *)v52 setFont:v54];

    v55 = v4->_titleLabel;
    v56 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v55 setTextColor:v56];

    [(UILabel *)v4->_titleLabel setTextAlignment:1];
    [(UILabel *)v4->_titleLabel setClipsToBounds:0];
    [(UILabel *)v4->_titleLabel setNumberOfLines:0];
    [(UILabel *)v4->_titleLabel setLineBreakMode:0];
    LODWORD(v57) = 1148846080;
    [(UILabel *)v4->_titleLabel setContentCompressionResistancePriority:1 forAxis:v57];
    LODWORD(v58) = 1148846080;
    [(UILabel *)v4->_titleLabel setContentCompressionResistancePriority:0 forAxis:v58];
    [(UILabel *)v4->_titleLabel setAutoresizingMask:18];
    [(UIStackView *)v4->_verticalTitleStack addArrangedSubview:v4->_titleLabel];
    v59 = objc_alloc_init(MEMORY[0x277D756B8]);
    subtitleLabel = v4->_subtitleLabel;
    v4->_subtitleLabel = v59;

    v61 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769C0] addingSymbolicTraits:0x8000 options:0];

    v62 = v4->_subtitleLabel;
    v63 = MEMORY[0x277D74300];
    [v61 pointSize];
    v64 = [v63 fontWithDescriptor:v61 size:?];
    [(UILabel *)v62 setFont:v64];

    v65 = v4->_subtitleLabel;
    v66 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v65 setTextColor:v66];

    [(UILabel *)v4->_subtitleLabel setTextAlignment:1];
    [(UILabel *)v4->_subtitleLabel setClipsToBounds:0];
    [(UILabel *)v4->_subtitleLabel setNumberOfLines:0];
    LODWORD(v67) = 1144750080;
    [(UILabel *)v4->_subtitleLabel setContentCompressionResistancePriority:1 forAxis:v67];
    LODWORD(v68) = 1144750080;
    [(UILabel *)v4->_subtitleLabel setContentCompressionResistancePriority:0 forAxis:v68];
    [(UILabel *)v4->_subtitleLabel setAutoresizingMask:18];
    [(UIStackView *)v4->_verticalTitleStack addArrangedSubview:v4->_subtitleLabel];
    v69 = objc_alloc_init(HACCStackView);
    expandedStack = v4->_expandedStack;
    v4->_expandedStack = v69;

    [(HACCStackView *)v4->_expandedStack setAxis:1];
    [(HACCStackView *)v4->_expandedStack setAlignment:0];
    [(UIStackView *)v4->_mainStack addArrangedSubview:v4->_expandedStack];
    v4->_isExpanded = 0;
    [(HACCStackView *)v4->_expandedStack setAlpha:0.0];
    [(HACCStackView *)v4->_expandedStack setHidden:1];
    v71 = HUICCBackgroundVisualStylingProviderForCategory(1);
    [(HUICCCapsuleButton *)v4 setVisualStylingProvider:v71 forCategory:1];

    v72 = HUICCBackgroundVisualStylingProviderForCategory(2);
    [(HUICCCapsuleButton *)v4 setVisualStylingProvider:v72 forCategory:2];
  }

  return v4;
}

- (void)setIconView:(id)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_iconView, a3);
  if (self->_iconView)
  {
    v6 = [(HUICCCapsuleButton *)self iconViewContainer];
    [v6 addSubview:self->_iconView];

    [(UIView *)self->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = MEMORY[0x277CCAAD0];
    v8 = [(UIView *)self->_iconView centerYAnchor];
    [(HUICCCapsuleButton *)self iconViewContainer];
    v9 = v17 = v5;
    v10 = [v9 centerYAnchor];
    v11 = [v8 constraintEqualToAnchor:v10];
    v18[0] = v11;
    v12 = [(UIView *)self->_iconView centerXAnchor];
    v13 = [(HUICCCapsuleButton *)self iconViewContainer];
    v14 = [v13 centerXAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    v18[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    [v7 activateConstraints:v16];

    v5 = v17;
  }
}

- (void)setAccessoryView:(id)a3
{
  v26[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_accessoryView, a3);
  if (self->_accessoryView)
  {
    v6 = [(HUICCCapsuleButton *)self accessoryViewContainer];
    [v6 addSubview:self->_accessoryView];

    [(UIView *)self->_accessoryView setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = MEMORY[0x277CCAAD0];
    v23 = [(UIView *)self->_accessoryView leadingAnchor];
    v24 = [(HUICCCapsuleButton *)self accessoryViewContainer];
    v22 = [v24 leadingAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v26[0] = v21;
    v19 = [(UIView *)self->_accessoryView trailingAnchor];
    v20 = [(HUICCCapsuleButton *)self accessoryViewContainer];
    v18 = [v20 trailingAnchor];
    v7 = [v19 constraintEqualToAnchor:v18];
    v26[1] = v7;
    v8 = [(UIView *)self->_accessoryView topAnchor];
    [(HUICCCapsuleButton *)self accessoryViewContainer];
    v9 = v25 = v5;
    v10 = [v9 topAnchor];
    v11 = [v8 constraintEqualToAnchor:v10];
    v26[2] = v11;
    v12 = [(UIView *)self->_accessoryView bottomAnchor];
    v13 = [(HUICCCapsuleButton *)self accessoryViewContainer];
    v14 = [v13 bottomAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    v26[3] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
    [v17 activateConstraints:v16];

    v5 = v25;
  }
}

- (void)_updateStackConstraints
{
  v32[2] = *MEMORY[0x277D85DE8];
  v3 = HUICCLargeTextEnabled();
  v4 = [(HUICCCapsuleButton *)self horizontalPillStack];
  v5 = v4;
  if (v3)
  {
    [v4 setAxis:1];

    v6 = [(HUICCCapsuleButton *)self defaultLayouts];

    if (v6)
    {
      v7 = MEMORY[0x277CCAAD0];
      v8 = [(HUICCCapsuleButton *)self defaultLayouts];
      [v7 deactivateConstraints:v8];
    }

    v9 = [(HUICCCapsuleButton *)self largeTextLayouts];

    if (!v9)
    {
      v10 = [(HUICCCapsuleButton *)self accessoryViewContainer];
      v11 = [v10 widthAnchor];
      v12 = [v11 constraintLessThanOrEqualToConstant:54.0];
      v32[0] = v12;
      v13 = [(HUICCCapsuleButton *)self accessoryViewContainer];
      v14 = [v13 heightAnchor];
      v15 = [v14 constraintLessThanOrEqualToConstant:54.0];
      v32[1] = v15;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
      [(HUICCCapsuleButton *)self setLargeTextLayouts:v16];
    }

    v17 = MEMORY[0x277CCAAD0];
    v18 = [(HUICCCapsuleButton *)self largeTextLayouts];
  }

  else
  {
    [v4 setAxis:0];

    v19 = [(HUICCCapsuleButton *)self largeTextLayouts];

    if (v19)
    {
      v20 = MEMORY[0x277CCAAD0];
      v21 = [(HUICCCapsuleButton *)self largeTextLayouts];
      [v20 deactivateConstraints:v21];
    }

    v22 = [(HUICCCapsuleButton *)self defaultLayouts];

    if (!v22)
    {
      v23 = [(HUICCCapsuleButton *)self accessoryViewContainer];
      v24 = [v23 widthAnchor];
      v25 = [v24 constraintEqualToConstant:54.0];
      v31[0] = v25;
      v26 = [(HUICCCapsuleButton *)self accessoryViewContainer];
      v27 = [v26 heightAnchor];
      v28 = [v27 constraintEqualToConstant:54.0];
      v31[1] = v28;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
      [(HUICCCapsuleButton *)self setDefaultLayouts:v29];
    }

    v17 = MEMORY[0x277CCAAD0];
    v18 = [(HUICCCapsuleButton *)self defaultLayouts];
  }

  v30 = v18;
  [v17 activateConstraints:v18];
}

- (void)setTitleText:(id)a3
{
  v4 = a3;
  v5 = [(HUICCCapsuleButton *)self titleLabel];
  [v5 setText:v4];
}

- (void)setSubtitleText:(id)a3
{
  v4 = a3;
  v5 = [(HUICCCapsuleButton *)self subtitleLabel];
  [v5 setText:v4];
}

- (void)setDimmingState:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = 0.3;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = [(HUICCCapsuleButton *)self mainStack];
  [v6 setAlpha:v5];

  [(HUICCCapsuleButton *)self setEnabled:!v3];
}

- (void)setIsExpanded:(BOOL)a3
{
  v3 = a3;
  if ([(HUICCCapsuleButton *)self supportsExpanding]&& self->_isExpanded != v3)
  {

    [(HUICCCapsuleButton *)self _setIsExpanded:v3];
  }
}

- (void)_setIsExpanded:(BOOL)a3
{
  v3 = a3;
  self->_isExpanded = a3;
  v5 = [(HUICCCapsuleButton *)self expandedStack];
  v6 = v5;
  v7 = 0.0;
  if (v3)
  {
    v7 = 1.0;
  }

  [v5 setAlpha:v7];

  v8 = [(HUICCCapsuleButton *)self expandedStack];
  [v8 setHidden:!v3];

  v9 = [(HUICCCapsuleButton *)self delegate];
  [v9 updateHeight];
}

- (BOOL)supportsExpanding
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(HUICCCapsuleButton *)self module];
  v4 = 1;
  if (v3 <= 29)
  {
    if (!v3)
    {
      v7 = [(HUICCCapsuleButton *)self delegate];
      v8 = [v7 currentHearingDevice];
      if (v8)
      {
        v9 = [MEMORY[0x277D12DE8] sharedInstance];
        v4 = [v9 hearingAidReachable];
      }

      else
      {
        v4 = 0;
      }

      v10 = HCLogHearingAids();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(HUICCCapsuleButton *)self delegate];
        v12 = [v11 currentHearingDevice];
        v13 = [MEMORY[0x277D12DE8] sharedInstance];
        v14[0] = 67109376;
        v14[1] = v12 != 0;
        v15 = 1024;
        v16 = [v13 hearingAidReachable];
        _os_log_impl(&dword_252166000, v10, OS_LOG_TYPE_DEFAULT, "Status expand %d, %d", v14, 0xEu);
      }

      return v4;
    }

    if (v3 != 24)
    {
      return 0;
    }

    return v4;
  }

  if (v3 != 30)
  {
    if (v3 != 32)
    {
      if (v3 == 34)
      {
        v5 = [(HUICCCapsuleButton *)self delegate];
        v4 = [v5 showPMEExpandedOptions];

        return v4;
      }

      return 0;
    }

    return v4;
  }

  return _os_feature_enabled_impl();
}

- (void)addExpandedView:(id)a3
{
  v4 = a3;
  v5 = [(HUICCCapsuleButton *)self expandedStack];
  [v5 insertArrangedSubview:v4 atIndex:-[HUICCCapsuleButton _indexToInsertFor:](self withSeparator:{"_indexToInsertFor:", v4), -[HUICCCapsuleButton shouldAddSeparatorForView:](self, "shouldAddSeparatorForView:", v4)}];

  LODWORD(v5) = [(HUICCCapsuleButton *)self shouldAutoExpandForView:v4];
  if (v5)
  {
    v6 = [(HUICCCapsuleButton *)self expandedStack];
    v7 = [v6 arrangedSubviews];
    v8 = [v7 count];

    if (v8)
    {

      [(HUICCCapsuleButton *)self _setIsExpanded:1];
    }
  }
}

- (int64_t)_indexToInsertFor:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(HUICCCapsuleButton *)self expandedStack];
  v6 = [v5 arrangedSubviews];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v17;
    while (2)
    {
      v11 = 0;
      v12 = v9;
      v9 += v8;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v16 + 1) + 8 * v11);
        v14 = [v4 tag];
        if (v14 < [v13 tag])
        {
          v9 = v12;
          goto LABEL_12;
        }

        ++v12;
        ++v11;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_12:

  return v9;
}

- (void)removeExpandedView:(id)a3
{
  v4 = a3;
  v5 = [(HUICCCapsuleButton *)self expandedStack];
  [v5 removeArrangedSubview:v4];

  v6 = [(HUICCCapsuleButton *)self expandedStack];
  v7 = [v6 arrangedSubviews];
  v8 = [v7 count];

  if (!v8)
  {

    [(HUICCCapsuleButton *)self setIsExpanded:0];
  }
}

- (void)buttonTapped
{
  v3 = [(HUICCCapsuleButton *)self delegate];
  [v3 controlDidActivate:self];

  AXPerformBlockOnMainThreadAfterDelay();
}

void __34__HUICCCapsuleButton_buttonTapped__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 updateHeight];
}

- (id)accessibilityLabel
{
  v2 = [(HUICCCapsuleButton *)self titleLabel];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(HUICCCapsuleButton *)self subtitleLabel];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityCustomActions
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(HUICCCapsuleButton *)self supportsExpanding])
  {
    [(HUICCCapsuleButton *)self isExpanded];
    v4 = hearingLocString();
    objc_initWeak(&location, self);
    v5 = objc_alloc(MEMORY[0x277D75088]);
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __48__HUICCCapsuleButton_accessibilityCustomActions__block_invoke;
    v11 = &unk_2796F6F90;
    objc_copyWeak(&v12, &location);
    v6 = [v5 initWithName:v4 actionHandler:&v8];
    [v3 addObject:{v6, v8, v9, v10, v11}];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v3;
}

uint64_t __48__HUICCCapsuleButton_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained isExpanded];
  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setIsExpanded:v3 ^ 1u];

  v5 = *MEMORY[0x277D76488];
  v6 = objc_loadWeakRetained((a1 + 32));
  if ([v6 isExpanded])
  {
    v7 = objc_loadWeakRetained((a1 + 32));
    UIAccessibilityPostNotification(v5, v7);
  }

  else
  {
    UIAccessibilityPostNotification(v5, 0);
  }

  return 1;
}

- (BOOL)accessibilityActivate
{
  v4.receiver = self;
  v4.super_class = HUICCCapsuleButton;
  v2 = [(HUICCCapsuleButton *)&v4 accessibilityActivate];
  UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
  return v2;
}

- (CGPoint)accessibilityActivationPoint
{
  v3 = [(HUICCCapsuleButton *)self titleLabel];

  if (v3)
  {
    v4 = [(HUICCCapsuleButton *)self titleLabel];
    [v4 accessibilityActivationPoint];
    v6 = v5;
    v8 = v7;

    v9 = v6;
    v10 = v8;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = HUICCCapsuleButton;
    [(HUICCCapsuleButton *)&v11 accessibilityActivationPoint];
  }

  result.y = v10;
  result.x = v9;
  return result;
}

- (id)_accessibilitySupplementaryFooterViews
{
  if ([(HUICCCapsuleButton *)self isExpanded])
  {
    v3 = [(HUICCCapsuleButton *)self expandedStack];
    v4 = [v3 arrangedSubviews];
    v5 = [v4 mutableCopy];
  }

  else
  {
    v5 = [MEMORY[0x277CBEB18] array];
  }

  if ([(HUICCCapsuleButton *)self shouldIncludeAccessoryViewInFooterViews])
  {
    v6 = [(HUICCCapsuleButton *)self accessoryView];

    if (v6)
    {
      v7 = [(HUICCCapsuleButton *)self accessoryView];
      [v5 insertObject:v7 atIndex:0];
    }
  }

  if ([(HUICCCapsuleButton *)self shouldIncludeIconViewInFooterViews])
  {
    v8 = [(HUICCCapsuleButton *)self iconView];

    if (v8)
    {
      v9 = [(HUICCCapsuleButton *)self iconView];
      [v5 insertObject:v9 atIndex:0];
    }
  }

  return v5;
}

- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4
{
  v6 = a3;
  v7 = [(HUICCCapsuleButton *)self requiredVisualStyleCategories];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v9 = [v7 containsObject:v8];

  if (v9)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __59__HUICCCapsuleButton_setVisualStylingProvider_forCategory___block_invoke;
    v10[3] = &unk_2796F6CA8;
    v11 = v6;
    v12 = self;
    dispatch_async(MEMORY[0x277D85CD0], v10);
  }
}

void __59__HUICCCapsuleButton_setVisualStylingProvider_forCategory___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) titleLabel];
  [v2 automaticallyUpdateView:v3 withStyle:0];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) subtitleLabel];
  [v4 automaticallyUpdateView:v5 withStyle:1];
}

- (HACCContentModuleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (BOOL)enabled
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 1;
}

- (id)contentValue
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return MEMORY[0x277CBEC38];
}

@end