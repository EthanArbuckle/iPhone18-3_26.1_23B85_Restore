@interface HUICCCapsuleButton
- (BOOL)accessibilityActivate;
- (BOOL)enabled;
- (BOOL)supportsExpanding;
- (CGPoint)accessibilityActivationPoint;
- (HACCContentModuleDelegate)delegate;
- (HUICCCapsuleButton)initWithFrame:(CGRect)frame;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)contentValue;
- (int64_t)_indexToInsertFor:(id)for;
- (void)_setIsExpanded:(BOOL)expanded;
- (void)_updateStackConstraints;
- (void)addExpandedView:(id)view;
- (void)buttonTapped;
- (void)removeExpandedView:(id)view;
- (void)setAccessoryView:(id)view;
- (void)setDimmingState:(BOOL)state;
- (void)setIconView:(id)view;
- (void)setIsExpanded:(BOOL)expanded;
- (void)setSubtitleText:(id)text;
- (void)setTitleText:(id)text;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
@end

@implementation HUICCCapsuleButton

- (HUICCCapsuleButton)initWithFrame:(CGRect)frame
{
  v90[4] = *MEMORY[0x277D85DE8];
  v85.receiver = self;
  v85.super_class = HUICCCapsuleButton;
  v3 = [(HUICCCapsuleButton *)&v85 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    leadingAnchor = [(UIView *)v4->_backgroundView leadingAnchor];
    leadingAnchor2 = [(HUICCCapsuleButton *)v4 leadingAnchor];
    v80 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v90[0] = v80;
    trailingAnchor = [(UIView *)v4->_backgroundView trailingAnchor];
    trailingAnchor2 = [(HUICCCapsuleButton *)v4 trailingAnchor];
    v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v90[1] = v7;
    topAnchor = [(UIView *)v4->_backgroundView topAnchor];
    topAnchor2 = [(HUICCCapsuleButton *)v4 topAnchor];
    v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v90[2] = v10;
    bottomAnchor = [(UIView *)v4->_backgroundView bottomAnchor];
    bottomAnchor2 = [(HUICCCapsuleButton *)v4 bottomAnchor];
    v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v90[3] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:4];
    [v74 activateConstraints:v14];

    v15 = MEMORY[0x277CCAAD0];
    heightAnchor = [(HUICCCapsuleButton *)v4 heightAnchor];
    v17 = [heightAnchor constraintGreaterThanOrEqualToConstant:74.0];
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
    leadingAnchor3 = [(UIStackView *)v4->_mainStack leadingAnchor];
    leadingAnchor4 = [(HUICCCapsuleButton *)v4 leadingAnchor];
    v79 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v88[0] = v79;
    trailingAnchor3 = [(UIStackView *)v4->_mainStack trailingAnchor];
    trailingAnchor4 = [(HUICCCapsuleButton *)v4 trailingAnchor];
    v22 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v88[1] = v22;
    topAnchor3 = [(UIStackView *)v4->_mainStack topAnchor];
    topAnchor4 = [(HUICCCapsuleButton *)v4 topAnchor];
    v25 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v88[2] = v25;
    bottomAnchor3 = [(UIStackView *)v4->_mainStack bottomAnchor];
    bottomAnchor4 = [(HUICCCapsuleButton *)v4 bottomAnchor];
    v28 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
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
    horizontalPillStack = [(HUICCCapsuleButton *)v4 horizontalPillStack];
    heightAnchor2 = [horizontalPillStack heightAnchor];
    v35 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:74.0];
    v87 = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v87 count:1];
    [v32 activateConstraints:v36];

    v37 = objc_alloc_init(MEMORY[0x277D75D18]);
    iconViewContainer = v4->_iconViewContainer;
    v4->_iconViewContainer = v37;

    [(UIView *)v4->_iconViewContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v4->_horizontalPillStack addArrangedSubview:v4->_iconViewContainer];
    v39 = MEMORY[0x277CCAAD0];
    heightAnchor3 = [(UIView *)v4->_iconViewContainer heightAnchor];
    v41 = [heightAnchor3 constraintEqualToConstant:54.0];
    v86[0] = v41;
    widthAnchor = [(UIView *)v4->_iconViewContainer widthAnchor];
    v43 = [widthAnchor constraintEqualToConstant:54.0];
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
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v55 setTextColor:whiteColor];

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
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v65 setTextColor:whiteColor2];

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

- (void)setIconView:(id)view
{
  v18[2] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  objc_storeStrong(&self->_iconView, view);
  if (self->_iconView)
  {
    iconViewContainer = [(HUICCCapsuleButton *)self iconViewContainer];
    [iconViewContainer addSubview:self->_iconView];

    [(UIView *)self->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = MEMORY[0x277CCAAD0];
    centerYAnchor = [(UIView *)self->_iconView centerYAnchor];
    [(HUICCCapsuleButton *)self iconViewContainer];
    v9 = v17 = viewCopy;
    centerYAnchor2 = [v9 centerYAnchor];
    v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v18[0] = v11;
    centerXAnchor = [(UIView *)self->_iconView centerXAnchor];
    iconViewContainer2 = [(HUICCCapsuleButton *)self iconViewContainer];
    centerXAnchor2 = [iconViewContainer2 centerXAnchor];
    v15 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v18[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    [v7 activateConstraints:v16];

    viewCopy = v17;
  }
}

- (void)setAccessoryView:(id)view
{
  v26[4] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  objc_storeStrong(&self->_accessoryView, view);
  if (self->_accessoryView)
  {
    accessoryViewContainer = [(HUICCCapsuleButton *)self accessoryViewContainer];
    [accessoryViewContainer addSubview:self->_accessoryView];

    [(UIView *)self->_accessoryView setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(UIView *)self->_accessoryView leadingAnchor];
    accessoryViewContainer2 = [(HUICCCapsuleButton *)self accessoryViewContainer];
    leadingAnchor2 = [accessoryViewContainer2 leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v26[0] = v21;
    trailingAnchor = [(UIView *)self->_accessoryView trailingAnchor];
    accessoryViewContainer3 = [(HUICCCapsuleButton *)self accessoryViewContainer];
    trailingAnchor2 = [accessoryViewContainer3 trailingAnchor];
    v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v26[1] = v7;
    topAnchor = [(UIView *)self->_accessoryView topAnchor];
    [(HUICCCapsuleButton *)self accessoryViewContainer];
    v9 = v25 = viewCopy;
    topAnchor2 = [v9 topAnchor];
    v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v26[2] = v11;
    bottomAnchor = [(UIView *)self->_accessoryView bottomAnchor];
    accessoryViewContainer4 = [(HUICCCapsuleButton *)self accessoryViewContainer];
    bottomAnchor2 = [accessoryViewContainer4 bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v26[3] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
    [v17 activateConstraints:v16];

    viewCopy = v25;
  }
}

- (void)_updateStackConstraints
{
  v32[2] = *MEMORY[0x277D85DE8];
  v3 = HUICCLargeTextEnabled();
  horizontalPillStack = [(HUICCCapsuleButton *)self horizontalPillStack];
  v5 = horizontalPillStack;
  if (v3)
  {
    [horizontalPillStack setAxis:1];

    defaultLayouts = [(HUICCCapsuleButton *)self defaultLayouts];

    if (defaultLayouts)
    {
      v7 = MEMORY[0x277CCAAD0];
      defaultLayouts2 = [(HUICCCapsuleButton *)self defaultLayouts];
      [v7 deactivateConstraints:defaultLayouts2];
    }

    largeTextLayouts = [(HUICCCapsuleButton *)self largeTextLayouts];

    if (!largeTextLayouts)
    {
      accessoryViewContainer = [(HUICCCapsuleButton *)self accessoryViewContainer];
      widthAnchor = [accessoryViewContainer widthAnchor];
      v12 = [widthAnchor constraintLessThanOrEqualToConstant:54.0];
      v32[0] = v12;
      accessoryViewContainer2 = [(HUICCCapsuleButton *)self accessoryViewContainer];
      heightAnchor = [accessoryViewContainer2 heightAnchor];
      v15 = [heightAnchor constraintLessThanOrEqualToConstant:54.0];
      v32[1] = v15;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
      [(HUICCCapsuleButton *)self setLargeTextLayouts:v16];
    }

    v17 = MEMORY[0x277CCAAD0];
    largeTextLayouts2 = [(HUICCCapsuleButton *)self largeTextLayouts];
  }

  else
  {
    [horizontalPillStack setAxis:0];

    largeTextLayouts3 = [(HUICCCapsuleButton *)self largeTextLayouts];

    if (largeTextLayouts3)
    {
      v20 = MEMORY[0x277CCAAD0];
      largeTextLayouts4 = [(HUICCCapsuleButton *)self largeTextLayouts];
      [v20 deactivateConstraints:largeTextLayouts4];
    }

    defaultLayouts3 = [(HUICCCapsuleButton *)self defaultLayouts];

    if (!defaultLayouts3)
    {
      accessoryViewContainer3 = [(HUICCCapsuleButton *)self accessoryViewContainer];
      widthAnchor2 = [accessoryViewContainer3 widthAnchor];
      v25 = [widthAnchor2 constraintEqualToConstant:54.0];
      v31[0] = v25;
      accessoryViewContainer4 = [(HUICCCapsuleButton *)self accessoryViewContainer];
      heightAnchor2 = [accessoryViewContainer4 heightAnchor];
      v28 = [heightAnchor2 constraintEqualToConstant:54.0];
      v31[1] = v28;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
      [(HUICCCapsuleButton *)self setDefaultLayouts:v29];
    }

    v17 = MEMORY[0x277CCAAD0];
    largeTextLayouts2 = [(HUICCCapsuleButton *)self defaultLayouts];
  }

  v30 = largeTextLayouts2;
  [v17 activateConstraints:largeTextLayouts2];
}

- (void)setTitleText:(id)text
{
  textCopy = text;
  titleLabel = [(HUICCCapsuleButton *)self titleLabel];
  [titleLabel setText:textCopy];
}

- (void)setSubtitleText:(id)text
{
  textCopy = text;
  subtitleLabel = [(HUICCCapsuleButton *)self subtitleLabel];
  [subtitleLabel setText:textCopy];
}

- (void)setDimmingState:(BOOL)state
{
  stateCopy = state;
  if (state)
  {
    v5 = 0.3;
  }

  else
  {
    v5 = 1.0;
  }

  mainStack = [(HUICCCapsuleButton *)self mainStack];
  [mainStack setAlpha:v5];

  [(HUICCCapsuleButton *)self setEnabled:!stateCopy];
}

- (void)setIsExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  if ([(HUICCCapsuleButton *)self supportsExpanding]&& self->_isExpanded != expandedCopy)
  {

    [(HUICCCapsuleButton *)self _setIsExpanded:expandedCopy];
  }
}

- (void)_setIsExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  self->_isExpanded = expanded;
  expandedStack = [(HUICCCapsuleButton *)self expandedStack];
  v6 = expandedStack;
  v7 = 0.0;
  if (expandedCopy)
  {
    v7 = 1.0;
  }

  [expandedStack setAlpha:v7];

  expandedStack2 = [(HUICCCapsuleButton *)self expandedStack];
  [expandedStack2 setHidden:!expandedCopy];

  delegate = [(HUICCCapsuleButton *)self delegate];
  [delegate updateHeight];
}

- (BOOL)supportsExpanding
{
  v17 = *MEMORY[0x277D85DE8];
  module = [(HUICCCapsuleButton *)self module];
  hearingAidReachable = 1;
  if (module <= 29)
  {
    if (!module)
    {
      delegate = [(HUICCCapsuleButton *)self delegate];
      currentHearingDevice = [delegate currentHearingDevice];
      if (currentHearingDevice)
      {
        mEMORY[0x277D12DE8] = [MEMORY[0x277D12DE8] sharedInstance];
        hearingAidReachable = [mEMORY[0x277D12DE8] hearingAidReachable];
      }

      else
      {
        hearingAidReachable = 0;
      }

      v10 = HCLogHearingAids();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        delegate2 = [(HUICCCapsuleButton *)self delegate];
        currentHearingDevice2 = [delegate2 currentHearingDevice];
        mEMORY[0x277D12DE8]2 = [MEMORY[0x277D12DE8] sharedInstance];
        v14[0] = 67109376;
        v14[1] = currentHearingDevice2 != 0;
        v15 = 1024;
        hearingAidReachable2 = [mEMORY[0x277D12DE8]2 hearingAidReachable];
        _os_log_impl(&dword_252166000, v10, OS_LOG_TYPE_DEFAULT, "Status expand %d, %d", v14, 0xEu);
      }

      return hearingAidReachable;
    }

    if (module != 24)
    {
      return 0;
    }

    return hearingAidReachable;
  }

  if (module != 30)
  {
    if (module != 32)
    {
      if (module == 34)
      {
        delegate3 = [(HUICCCapsuleButton *)self delegate];
        hearingAidReachable = [delegate3 showPMEExpandedOptions];

        return hearingAidReachable;
      }

      return 0;
    }

    return hearingAidReachable;
  }

  return _os_feature_enabled_impl();
}

- (void)addExpandedView:(id)view
{
  viewCopy = view;
  expandedStack = [(HUICCCapsuleButton *)self expandedStack];
  [expandedStack insertArrangedSubview:viewCopy atIndex:-[HUICCCapsuleButton _indexToInsertFor:](self withSeparator:{"_indexToInsertFor:", viewCopy), -[HUICCCapsuleButton shouldAddSeparatorForView:](self, "shouldAddSeparatorForView:", viewCopy)}];

  LODWORD(expandedStack) = [(HUICCCapsuleButton *)self shouldAutoExpandForView:viewCopy];
  if (expandedStack)
  {
    expandedStack2 = [(HUICCCapsuleButton *)self expandedStack];
    arrangedSubviews = [expandedStack2 arrangedSubviews];
    v8 = [arrangedSubviews count];

    if (v8)
    {

      [(HUICCCapsuleButton *)self _setIsExpanded:1];
    }
  }
}

- (int64_t)_indexToInsertFor:(id)for
{
  v21 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  expandedStack = [(HUICCCapsuleButton *)self expandedStack];
  arrangedSubviews = [expandedStack arrangedSubviews];

  v7 = [arrangedSubviews countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(arrangedSubviews);
        }

        v13 = *(*(&v16 + 1) + 8 * v11);
        v14 = [forCopy tag];
        if (v14 < [v13 tag])
        {
          v9 = v12;
          goto LABEL_12;
        }

        ++v12;
        ++v11;
      }

      while (v8 != v11);
      v8 = [arrangedSubviews countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)removeExpandedView:(id)view
{
  viewCopy = view;
  expandedStack = [(HUICCCapsuleButton *)self expandedStack];
  [expandedStack removeArrangedSubview:viewCopy];

  expandedStack2 = [(HUICCCapsuleButton *)self expandedStack];
  arrangedSubviews = [expandedStack2 arrangedSubviews];
  v8 = [arrangedSubviews count];

  if (!v8)
  {

    [(HUICCCapsuleButton *)self setIsExpanded:0];
  }
}

- (void)buttonTapped
{
  delegate = [(HUICCCapsuleButton *)self delegate];
  [delegate controlDidActivate:self];

  AXPerformBlockOnMainThreadAfterDelay();
}

void __34__HUICCCapsuleButton_buttonTapped__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 updateHeight];
}

- (id)accessibilityLabel
{
  titleLabel = [(HUICCCapsuleButton *)self titleLabel];
  accessibilityLabel = [titleLabel accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  subtitleLabel = [(HUICCCapsuleButton *)self subtitleLabel];
  accessibilityLabel = [subtitleLabel accessibilityLabel];

  return accessibilityLabel;
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
  accessibilityActivate = [(HUICCCapsuleButton *)&v4 accessibilityActivate];
  UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
  return accessibilityActivate;
}

- (CGPoint)accessibilityActivationPoint
{
  titleLabel = [(HUICCCapsuleButton *)self titleLabel];

  if (titleLabel)
  {
    titleLabel2 = [(HUICCCapsuleButton *)self titleLabel];
    [titleLabel2 accessibilityActivationPoint];
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
    expandedStack = [(HUICCCapsuleButton *)self expandedStack];
    arrangedSubviews = [expandedStack arrangedSubviews];
    array = [arrangedSubviews mutableCopy];
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  if ([(HUICCCapsuleButton *)self shouldIncludeAccessoryViewInFooterViews])
  {
    accessoryView = [(HUICCCapsuleButton *)self accessoryView];

    if (accessoryView)
    {
      accessoryView2 = [(HUICCCapsuleButton *)self accessoryView];
      [array insertObject:accessoryView2 atIndex:0];
    }
  }

  if ([(HUICCCapsuleButton *)self shouldIncludeIconViewInFooterViews])
  {
    iconView = [(HUICCCapsuleButton *)self iconView];

    if (iconView)
    {
      iconView2 = [(HUICCCapsuleButton *)self iconView];
      [array insertObject:iconView2 atIndex:0];
    }
  }

  return array;
}

- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category
{
  providerCopy = provider;
  requiredVisualStyleCategories = [(HUICCCapsuleButton *)self requiredVisualStyleCategories];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:category];
  v9 = [requiredVisualStyleCategories containsObject:v8];

  if (v9)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __59__HUICCCapsuleButton_setVisualStylingProvider_forCategory___block_invoke;
    v10[3] = &unk_2796F6CA8;
    v11 = providerCopy;
    selfCopy = self;
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