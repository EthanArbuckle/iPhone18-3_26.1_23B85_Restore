@interface HULockupView
- (HULockupInternalResizingDelegate)internalViewResizingDelegate;
- (HULockupView)initWithFrame:(CGRect)frame;
- (HULockupViewDelegate)delegate;
- (double)_maxPossibleTitleLengthForDownloadControl;
- (id)initializeIconViewWithSize:(unint64_t)size;
- (void)_buttonTapped:(id)tapped;
- (void)expandableTextViewDidCollapse:(id)collapse;
- (void)expandableTextViewDidExpand:(id)expand;
- (void)resetDownloadControlVerticalConstraint;
- (void)updateDescriptionExpandableTextView:(id)view animate:(BOOL)animate;
- (void)updateIconView:(id)view animate:(BOOL)animate;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HULockupView

- (HULockupView)initWithFrame:(CGRect)frame
{
  v186[3] = *MEMORY[0x277D85DE8];
  v180.receiver = self;
  v180.super_class = HULockupView;
  v3 = [(HULockupView *)&v180 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(HULockupView *)v3 setIconSize:4];
    v5 = [(HULockupView *)v4 initializeIconViewWithSize:[(HULockupView *)v4 iconSize]];
    [(HULockupView *)v4 setIconView:v5];

    iconView = [(HULockupView *)v4 iconView];
    [iconView setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    systemExtraLightGrayColor = [MEMORY[0x277D75348] systemExtraLightGrayColor];
    cGColor = [systemExtraLightGrayColor CGColor];
    layer = [v7 layer];
    [layer setBorderColor:cGColor];

    layer2 = [v7 layer];
    [layer2 setBorderWidth:1.0];

    layer3 = [v7 layer];
    [layer3 setCornerRadius:10.0];

    iconView2 = [(HULockupView *)v4 iconView];
    [v7 addSubview:iconView2];

    v14 = objc_alloc(MEMORY[0x277D756B8]);
    v15 = *MEMORY[0x277CBF3A0];
    v16 = *(MEMORY[0x277CBF3A0] + 8);
    v17 = *(MEMORY[0x277CBF3A0] + 16);
    v18 = *(MEMORY[0x277CBF3A0] + 24);
    v19 = [v14 initWithFrame:{*MEMORY[0x277CBF3A0], v16, v17, v18}];
    [(HULockupView *)v4 setTitleLabel:v19];

    titleLabel = [(HULockupView *)v4 titleLabel];
    [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    titleLabel2 = [(HULockupView *)v4 titleLabel];
    [titleLabel2 setAdjustsFontSizeToFitWidth:1];

    titleLabel3 = [(HULockupView *)v4 titleLabel];
    [titleLabel3 setMinimumScaleFactor:0.75];

    v23 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    titleLabel4 = [(HULockupView *)v4 titleLabel];
    [titleLabel4 setFont:v23];

    v25 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v15, v16, v17, v18}];
    [(HULockupView *)v4 setDetailLabel:v25];

    detailLabel = [(HULockupView *)v4 detailLabel];
    [detailLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    v27 = *MEMORY[0x277D76938];
    v28 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
    detailLabel2 = [(HULockupView *)v4 detailLabel];
    [detailLabel2 setFont:v28];

    v30 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v15, v16, v17, v18}];
    [(HULockupView *)v4 setSecondaryDetailLabel:v30];

    secondaryDetailLabel = [(HULockupView *)v4 secondaryDetailLabel];
    [secondaryDetailLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    v32 = [MEMORY[0x277D74300] preferredFontForTextStyle:v27];
    secondaryDetailLabel2 = [(HULockupView *)v4 secondaryDetailLabel];
    [secondaryDetailLabel2 setFont:v32];

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    secondaryDetailLabel3 = [(HULockupView *)v4 secondaryDetailLabel];
    [secondaryDetailLabel3 setTextColor:systemGrayColor];

    v36 = objc_alloc(MEMORY[0x277D75A68]);
    titleLabel5 = [(HULockupView *)v4 titleLabel];
    v186[0] = titleLabel5;
    detailLabel3 = [(HULockupView *)v4 detailLabel];
    v186[1] = detailLabel3;
    secondaryDetailLabel4 = [(HULockupView *)v4 secondaryDetailLabel];
    v186[2] = secondaryDetailLabel4;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v186 count:3];
    v41 = [v36 initWithArrangedSubviews:v40];
    [(HULockupView *)v4 setLabelStackView:v41];

    labelStackView = [(HULockupView *)v4 labelStackView];
    [labelStackView setSpacing:2.0];

    labelStackView2 = [(HULockupView *)v4 labelStackView];
    [labelStackView2 setAxis:1];

    labelStackView3 = [(HULockupView *)v4 labelStackView];
    [labelStackView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v45 = objc_alloc_init(HUDownloadControl);
    [(HULockupView *)v4 setDownloadControl:v45];

    downloadControl = [(HULockupView *)v4 downloadControl];
    [downloadControl setTranslatesAutoresizingMaskIntoConstraints:0];

    downloadControl2 = [(HULockupView *)v4 downloadControl];
    [downloadControl2 setAllowsAddImage:0];

    downloadControl3 = [(HULockupView *)v4 downloadControl];
    [downloadControl3 setDisplayStyle:1];

    hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
    downloadControl4 = [(HULockupView *)v4 downloadControl];
    [downloadControl4 setFilledTintColor:hf_keyColor];

    systemFillColor = [MEMORY[0x277D75348] systemFillColor];
    downloadControl5 = [(HULockupView *)v4 downloadControl];
    [downloadControl5 setTintColor:systemFillColor];

    downloadControl6 = [(HULockupView *)v4 downloadControl];
    [downloadControl6 addTarget:v4 action:sel__buttonTapped_ forControlEvents:64];

    downloadControl7 = [(HULockupView *)v4 downloadControl];
    [downloadControl7 setControlStatus:1 animated:{0x3FF0000000000000, 0}];

    downloadControl8 = [(HULockupView *)v4 downloadControl];
    v56 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateControlTitle_Update", @"HUSoftwareUpdateControlTitle_Update", 1);
    [downloadControl8 setTitle:v56 forControlStatusType:1];

    [(HULockupView *)v4 _maxPossibleTitleLengthForDownloadControl];
    v58 = v57;
    downloadControl9 = [(HULockupView *)v4 downloadControl];
    [downloadControl9 setMinTitleLength:v58];

    downloadControl10 = [(HULockupView *)v4 downloadControl];
    [downloadControl10 sizeToFit];

    v61 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v15, v16, v17, v18}];
    [v61 addSubview:v7];
    labelStackView4 = [(HULockupView *)v4 labelStackView];
    [v61 addSubview:labelStackView4];

    downloadControl11 = [(HULockupView *)v4 downloadControl];
    [v61 addSubview:downloadControl11];

    v182 = *MEMORY[0x277D740A8];
    v64 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76920]];
    v185[0] = v64;
    v183 = *MEMORY[0x277D740C0];
    v65 = v183;
    labelColor = [MEMORY[0x277D75348] labelColor];
    v185[1] = labelColor;
    v184 = *MEMORY[0x277D74118];
    defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
    v185[2] = defaultParagraphStyle;
    v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v185 forKeys:&v182 count:3];

    v179 = v68;
    v69 = [v68 mutableCopy];
    hf_keyColor2 = [MEMORY[0x277D75348] hf_keyColor];
    [v69 setObject:hf_keyColor2 forKeyedSubscript:v65];

    v71 = [[HUExpandableTextView alloc] initWithFrame:v15, v16, v17, v18];
    [(HULockupView *)v4 setDescriptionExpandableTextView:v71];

    descriptionExpandableTextView = [(HULockupView *)v4 descriptionExpandableTextView];
    [descriptionExpandableTextView setTextAttributes:v68];

    descriptionExpandableTextView2 = [(HULockupView *)v4 descriptionExpandableTextView];
    [descriptionExpandableTextView2 setDelegate:v4];

    descriptionExpandableTextView3 = [(HULockupView *)v4 descriptionExpandableTextView];
    [descriptionExpandableTextView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v75 = +[HUFadeInButton button];
    descriptionExpandableTextView4 = [(HULockupView *)v4 descriptionExpandableTextView];
    [descriptionExpandableTextView4 setMoreButton:v75];

    v77 = objc_alloc(MEMORY[0x277CCA898]);
    v78 = _HULocalizedStringWithDefaultValue(@"HUMoreButtonTitle", @"HUMoreButtonTitle", 1);
    v178 = [v77 initWithString:v78 attributes:v69];

    descriptionExpandableTextView5 = [(HULockupView *)v4 descriptionExpandableTextView];
    moreButton = [descriptionExpandableTextView5 moreButton];
    [moreButton setAttributedTitle:v178 forState:0];

    descriptionExpandableTextView6 = [(HULockupView *)v4 descriptionExpandableTextView];
    [descriptionExpandableTextView6 setAlwaysShowMoreButtonUnlessExpanded:1];

    descriptionExpandableTextView7 = [(HULockupView *)v4 descriptionExpandableTextView];
    moreButton2 = [descriptionExpandableTextView7 moreButton];
    [moreButton2 sizeToFit];

    v84 = objc_alloc(MEMORY[0x277D75A68]);
    v181[0] = v61;
    descriptionExpandableTextView8 = [(HULockupView *)v4 descriptionExpandableTextView];
    v181[1] = descriptionExpandableTextView8;
    v86 = [MEMORY[0x277CBEA60] arrayWithObjects:v181 count:2];
    v87 = [v84 initWithArrangedSubviews:v86];
    [(HULockupView *)v4 setStackView:v87];

    stackView = [(HULockupView *)v4 stackView];
    [stackView setSpacing:16.0];

    stackView2 = [(HULockupView *)v4 stackView];
    [stackView2 setAxis:1];

    stackView3 = [(HULockupView *)v4 stackView];
    [stackView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    stackView4 = [(HULockupView *)v4 stackView];
    [(HULockupView *)v4 addSubview:stackView4];

    array = [MEMORY[0x277CBEB18] array];
    [(HULockupView *)v4 iconSize];
    HUDefaultSizeForIconSize();
    v94 = v93;
    v96 = v95;
    widthAnchor = [v7 widthAnchor];
    v98 = [widthAnchor constraintEqualToConstant:v94 + 10.0];
    [array addObject:v98];

    heightAnchor = [v7 heightAnchor];
    v100 = [heightAnchor constraintEqualToConstant:v96 + 10.0];
    [array addObject:v100];

    leadingAnchor = [v7 leadingAnchor];
    leadingAnchor2 = [(HULockupView *)v4 leadingAnchor];
    v103 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v103];

    centerYAnchor = [v7 centerYAnchor];
    labelStackView5 = [(HULockupView *)v4 labelStackView];
    centerYAnchor2 = [labelStackView5 centerYAnchor];
    v107 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [array addObject:v107];

    iconView3 = [(HULockupView *)v4 iconView];
    widthAnchor2 = [iconView3 widthAnchor];
    v110 = [widthAnchor2 constraintEqualToConstant:v94 + -15.0];
    [array addObject:v110];

    iconView4 = [(HULockupView *)v4 iconView];
    heightAnchor2 = [iconView4 heightAnchor];
    v113 = [heightAnchor2 constraintEqualToConstant:v96 + -15.0];
    [array addObject:v113];

    iconView5 = [(HULockupView *)v4 iconView];
    centerXAnchor = [iconView5 centerXAnchor];
    centerXAnchor2 = [v7 centerXAnchor];
    v117 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [array addObject:v117];

    iconView6 = [(HULockupView *)v4 iconView];
    centerYAnchor3 = [iconView6 centerYAnchor];
    centerYAnchor4 = [v7 centerYAnchor];
    v121 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [array addObject:v121];

    labelStackView6 = [(HULockupView *)v4 labelStackView];
    topAnchor = [labelStackView6 topAnchor];
    layoutMarginsGuide = [v61 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v126 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v126];

    labelStackView7 = [(HULockupView *)v4 labelStackView];
    leadingAnchor3 = [labelStackView7 leadingAnchor];
    trailingAnchor = [v7 trailingAnchor];
    v130 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:12.0];
    [array addObject:v130];

    labelStackView8 = [(HULockupView *)v4 labelStackView];
    bottomAnchor = [labelStackView8 bottomAnchor];
    bottomAnchor2 = [v61 bottomAnchor];
    v134 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [array addObject:v134];

    downloadControl12 = [(HULockupView *)v4 downloadControl];
    topAnchor3 = [downloadControl12 topAnchor];
    topAnchor4 = [v7 topAnchor];
    v138 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    [(HULockupView *)v4 setDownloadControlTopConstraint:v138];

    downloadControl13 = [(HULockupView *)v4 downloadControl];
    centerYAnchor5 = [downloadControl13 centerYAnchor];
    labelStackView9 = [(HULockupView *)v4 labelStackView];
    centerYAnchor6 = [labelStackView9 centerYAnchor];
    v143 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    [(HULockupView *)v4 setDownloadControlCenterYConstraint:v143];

    downloadControlCenterYConstraint = [(HULockupView *)v4 downloadControlCenterYConstraint];
    [array addObject:downloadControlCenterYConstraint];

    downloadControl14 = [(HULockupView *)v4 downloadControl];
    leadingAnchor4 = [downloadControl14 leadingAnchor];
    labelStackView10 = [(HULockupView *)v4 labelStackView];
    trailingAnchor2 = [labelStackView10 trailingAnchor];
    v149 = [leadingAnchor4 constraintGreaterThanOrEqualToAnchor:trailingAnchor2 constant:12.0];
    [array addObject:v149];

    downloadControl15 = [(HULockupView *)v4 downloadControl];
    trailingAnchor3 = [downloadControl15 trailingAnchor];
    safeAreaLayoutGuide = [v61 safeAreaLayoutGuide];
    trailingAnchor4 = [safeAreaLayoutGuide trailingAnchor];
    v154 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [array addObject:v154];

    downloadControl16 = [(HULockupView *)v4 downloadControl];
    widthAnchor3 = [downloadControl16 widthAnchor];
    downloadControl17 = [(HULockupView *)v4 downloadControl];
    [downloadControl17 intrinsicContentSize];
    v158 = [widthAnchor3 constraintEqualToConstant:?];
    [(HULockupView *)v4 setDownloadControlWidthConstraint:v158];

    downloadControlWidthConstraint = [(HULockupView *)v4 downloadControlWidthConstraint];
    [array addObject:downloadControlWidthConstraint];

    stackView5 = [(HULockupView *)v4 stackView];
    topAnchor5 = [stackView5 topAnchor];
    topAnchor6 = [(HULockupView *)v4 topAnchor];
    v163 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    [array addObject:v163];

    stackView6 = [(HULockupView *)v4 stackView];
    leadingAnchor5 = [stackView6 leadingAnchor];
    leadingAnchor6 = [(HULockupView *)v4 leadingAnchor];
    v167 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    [array addObject:v167];

    stackView7 = [(HULockupView *)v4 stackView];
    trailingAnchor5 = [stackView7 trailingAnchor];
    trailingAnchor6 = [(HULockupView *)v4 trailingAnchor];
    v171 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    [array addObject:v171];

    stackView8 = [(HULockupView *)v4 stackView];
    bottomAnchor3 = [stackView8 bottomAnchor];
    layoutMarginsGuide2 = [(HULockupView *)v4 layoutMarginsGuide];
    bottomAnchor4 = [layoutMarginsGuide2 bottomAnchor];
    v176 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    [array addObject:v176];

    [MEMORY[0x277CCAAD0] activateConstraints:array];
  }

  return v4;
}

- (id)initializeIconViewWithSize:(unint64_t)size
{
  v3 = objc_alloc_init(MEMORY[0x277D755E8]);

  return v3;
}

- (void)updateIconView:(id)view animate:(BOOL)animate
{
  viewCopy = view;
  item = [(HULockupView *)self item];
  latestResults = [item latestResults];
  v7 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E98]];
  [viewCopy setImage:v7];
}

- (void)updateDescriptionExpandableTextView:(id)view animate:(BOOL)animate
{
  viewCopy = view;
  item = [(HULockupView *)self item];
  latestResults = [item latestResults];
  v7 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E20]];

  if (v7)
  {
    [viewCopy setStringGenerator:v7];
  }
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  item = [(HULockupView *)self item];
  latestResults = [item latestResults];

  iconView = [(HULockupView *)self iconView];
  [(HULockupView *)self updateIconView:iconView animate:animationCopy];

  v7 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  titleLabel = [(HULockupView *)self titleLabel];
  [titleLabel setText:v7];

  v9 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E30]];
  detailLabel = [(HULockupView *)self detailLabel];
  [detailLabel setText:v9];

  v11 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EF8]];
  secondaryDetailLabel = [(HULockupView *)self secondaryDetailLabel];
  [secondaryDetailLabel setText:v11];

  v13 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D140F0]];
  bOOLValue = [v13 BOOLValue];

  v15 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14100]];
  bOOLValue2 = [v15 BOOLValue];

  v17 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14110]];
  bOOLValue3 = [v17 BOOLValue];

  if (bOOLValue)
  {
    if (bOOLValue3)
    {
      systemFillColor = [MEMORY[0x277D75348] systemFillColor];
      downloadControl = [(HULockupView *)self downloadControl];
      [downloadControl setTintColor:systemFillColor];

      systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
      downloadControl2 = [(HULockupView *)self downloadControl];
      [downloadControl2 setFilledTintColor:systemGrayColor];

      v23 = 1.0;
      v24 = 1;
      v25 = 1;
    }

    else
    {
      v29 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14108]];
      if (v29)
      {
        systemGrayColor = v29;
        [v29 floatValue];
        v31 = v30;
        systemFillColor2 = [MEMORY[0x277D75348] systemFillColor];
        downloadControl3 = [(HULockupView *)self downloadControl];
        [downloadControl3 setFilledTintColor:systemFillColor2];

        hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
        downloadControl4 = [(HULockupView *)self downloadControl];
        [downloadControl4 setTintColor:hf_keyColor];

        v24 = 0;
        v23 = v31;
        v25 = 4;
      }

      else
      {
        systemFillColor3 = [MEMORY[0x277D75348] systemFillColor];
        downloadControl5 = [(HULockupView *)self downloadControl];
        [downloadControl5 setFilledTintColor:systemFillColor3];

        systemFillColor4 = [MEMORY[0x277D75348] systemFillColor];
        downloadControl6 = [(HULockupView *)self downloadControl];
        [downloadControl6 setTintColor:systemFillColor4];

        systemGrayColor = 0;
        v24 = 0;
        v23 = 1.0;
        v25 = 3;
      }
    }
  }

  else
  {
    hf_keyColor2 = [MEMORY[0x277D75348] hf_keyColor];
    downloadControl7 = [(HULockupView *)self downloadControl];
    [downloadControl7 setFilledTintColor:hf_keyColor2];

    systemGrayColor = [MEMORY[0x277D75348] systemFillColor];
    downloadControl8 = [(HULockupView *)self downloadControl];
    [downloadControl8 setTintColor:systemGrayColor];

    v23 = 1.0;
    v25 = 1;
    v24 = 1;
  }

  downloadControl9 = [(HULockupView *)self downloadControl];
  controlStatus = [downloadControl9 controlStatus];

  downloadControl10 = [(HULockupView *)self downloadControl];
  [downloadControl10 setControlStatus:v25 animated:{*&v23, animationCopy}];

  downloadControl11 = [(HULockupView *)self downloadControl];
  v44 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13DE8]];
  [downloadControl11 setTitle:v44 forControlStatusType:1];

  downloadControl12 = [(HULockupView *)self downloadControl];
  [downloadControl12 setHidden:bOOLValue2];

  downloadControl13 = [(HULockupView *)self downloadControl];
  [downloadControl13 setEnabled:v24 & (bOOLValue3 ^ 1u)];

  if (controlStatus != v25)
  {
    downloadControl14 = [(HULockupView *)self downloadControl];
    [downloadControl14 intrinsicContentSize];
    v49 = v48;
    downloadControlWidthConstraint = [(HULockupView *)self downloadControlWidthConstraint];
    [downloadControlWidthConstraint setConstant:v49];
  }

  descriptionExpandableTextView = [(HULockupView *)self descriptionExpandableTextView];
  [(HULockupView *)self updateDescriptionExpandableTextView:descriptionExpandableTextView animate:animationCopy];

  descriptionExpandableTextView2 = [(HULockupView *)self descriptionExpandableTextView];
  text = [descriptionExpandableTextView2 text];
  v54 = [text length] == 0;
  descriptionExpandableTextView3 = [(HULockupView *)self descriptionExpandableTextView];
  [descriptionExpandableTextView3 setHidden:v54];

  descriptionExpandableTextView4 = [(HULockupView *)self descriptionExpandableTextView];
  text2 = [descriptionExpandableTextView4 text];
  v58 = [text2 length];

  if (!v58)
  {
    descriptionExpandableTextView5 = [(HULockupView *)self descriptionExpandableTextView];
    [descriptionExpandableTextView5 setDelegate:0];

    descriptionExpandableTextView6 = [(HULockupView *)self descriptionExpandableTextView];
    [descriptionExpandableTextView6 setExpanded:1];

    descriptionExpandableTextView7 = [(HULockupView *)self descriptionExpandableTextView];
    [descriptionExpandableTextView7 setDelegate:self];
  }

  [(HULockupView *)self resetDownloadControlVerticalConstraint];
}

- (void)_buttonTapped:(id)tapped
{
  tappedCopy = tapped;
  delegate = [(HULockupView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(HULockupView *)self delegate];
    [delegate2 lockupView:self downloadControlTapped:tappedCopy];
  }

  [(HULockupView *)self resetDownloadControlVerticalConstraint];
}

- (void)resetDownloadControlVerticalConstraint
{
  downloadControl = [(HULockupView *)self downloadControl];
  controlStatus = [downloadControl controlStatus];

  downloadControlTopConstraint = [(HULockupView *)self downloadControlTopConstraint];
  [downloadControlTopConstraint setActive:(controlStatus - 3) < 2];

  downloadControlCenterYConstraint = [(HULockupView *)self downloadControlCenterYConstraint];
  [downloadControlCenterYConstraint setActive:(controlStatus - 3) > 1];
}

- (double)_maxPossibleTitleLengthForDownloadControl
{
  v14[4] = *MEMORY[0x277D85DE8];
  v2 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateControlTitle_Update", @"HUSoftwareUpdateControlTitle_Update", 1);
  v14[0] = v2;
  v3 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateControlTitle_Requested", @"HUSoftwareUpdateControlTitle_Requested", 1);
  v14[1] = v3;
  v4 = _HULocalizedStringWithDefaultValue(@"HUDownloadButtonTitle_Open", @"HUDownloadButtonTitle_Open", 1);
  v14[2] = v4;
  v5 = _HULocalizedStringWithDefaultValue(@"HUDownloadButtonTitle_View", @"HUDownloadButtonTitle_View", 1);
  v14[3] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:4];

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__HULockupView__maxPossibleTitleLengthForDownloadControl__block_invoke;
  v9[3] = &unk_277DC4BE8;
  v9[4] = &v10;
  [v6 na_each:v9];
  v7 = v11[3];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __57__HULockupView__maxPossibleTitleLengthForDownloadControl__block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = *MEMORY[0x277D740A8];
  v3 = a2;
  v4 = [HUDownloadControl controlTitleFontForControlStatusType:1];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v3 sizeWithAttributes:v5];
  v7 = v6;

  v8 = *(*(a1 + 32) + 8);
  if (v7 > *(v8 + 24))
  {
    *(v8 + 24) = v7;
  }
}

- (void)expandableTextViewDidExpand:(id)expand
{
  delegate = [(HULockupView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(HULockupView *)self delegate];
    descriptionExpandableTextView = [(HULockupView *)self descriptionExpandableTextView];
    [delegate2 lockupView:self expandableTextViewDidExpand:descriptionExpandableTextView];
  }
}

- (void)expandableTextViewDidCollapse:(id)collapse
{
  delegate = [(HULockupView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(HULockupView *)self delegate];
    descriptionExpandableTextView = [(HULockupView *)self descriptionExpandableTextView];
    [delegate2 lockupView:self expandableTextViewDidCollapse:descriptionExpandableTextView];
  }
}

- (HULockupViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HULockupInternalResizingDelegate)internalViewResizingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_internalViewResizingDelegate);

  return WeakRetained;
}

@end