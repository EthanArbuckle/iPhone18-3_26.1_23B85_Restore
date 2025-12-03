@interface HUGridServiceCell
- (BOOL)disableContinuousIconAnimation;
- (BOOL)showProgressIndicatorAfterDelay;
- (BOOL)showUpdatingStateAfterDelay;
- (CGRect)iconViewTileFrame;
- (CGRect)prefixLabelTileFrame;
- (CGRect)primaryLabelTileFrame;
- (CGRect)secondaryLabelTileFrame;
- (CGRect)tileFrame;
- (HUGridServiceCell)initWithCoder:(id)coder;
- (HUGridServiceCell)initWithFrame:(CGRect)frame;
- (double)backgroundCornerRadius;
- (id)_backgroundColorForSupplementaryIcon;
- (id)_descriptionTextAttributesWithColor:(id)color;
- (id)_textConfiguration;
- (id)baseIconViewConfiguration;
- (id)prefixString;
- (id)primaryString;
- (void)_createExclamationViewIfNecessary;
- (void)_createFirmwareUpdateViewIfNecessary;
- (void)_setupCommonServiceCell;
- (void)_setupServiceCell;
- (void)_updateAccessoryView;
- (void)_updateExclamationViewColor;
- (void)_updateIconAnimated:(BOOL)animated;
- (void)_updateSecondaryContentDisplayStyle;
- (void)_updateSupplementaryImageViewIfNecessary;
- (void)_updateText;
- (void)displayStyleDidChange;
- (void)dragStateDidChange:(int64_t)change;
- (void)layoutOptionsDidChange;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)reclaimIconIfPossible;
- (void)renounceIcon;
- (void)setAccessoryView:(id)view;
- (void)setDisableContinuousIconAnimation:(BOOL)animation;
- (void)setShouldColorDescription:(BOOL)description;
- (void)setShouldShowRoomName:(BOOL)name;
- (void)setShowProgressIndicatorAfterDelay:(BOOL)delay;
- (void)setShowUpdatingStateAfterDelay:(BOOL)delay;
- (void)setShowingProgressIndicator:(BOOL)indicator;
- (void)setShowingUpdatingState:(BOOL)state;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUGridServiceCell

- (id)prefixString
{
  selfCopy = self;
  object = HUGridServiceCell.prefixString()().value._object;

  if (object)
  {
    v4 = sub_20D5677F8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)primaryString
{
  selfCopy = self;
  serviceTextView = [(HUGridServiceCell *)selfCopy serviceTextView];
  serviceNameComponents = [(HUGridServiceCellTextView *)serviceTextView serviceNameComponents];

  if (serviceNameComponents)
  {
    serviceName = [(HFServiceNameComponents *)serviceNameComponents serviceName];

    sub_20D567838();
    v6 = sub_20D5677F8();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (CGRect)iconViewTileFrame
{
  selfCopy = self;
  iconView = [(HUGridServiceCell *)selfCopy iconView];
  [(HUIconView *)iconView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)prefixLabelTileFrame
{
  selfCopy = self;
  serviceTextView = [(HUGridServiceCell *)selfCopy serviceTextView];
  shouldShowRoomName = [(HUGridServiceCellTextView *)serviceTextView shouldShowRoomName];

  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  if (shouldShowRoomName)
  {
    serviceTextView2 = [(HUGridServiceCell *)selfCopy serviceTextView];
    [(HUGridServiceCellTextView *)serviceTextView2 frame];
    v5 = v10;
    v6 = v11;
    v7 = v12;

    serviceTextView3 = [(HUGridServiceCell *)selfCopy serviceTextView];
    [(HUGridServiceCellTextView *)serviceTextView3 topToFirstBaselineDistance];
    v8 = v14;
  }

  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)primaryLabelTileFrame
{
  selfCopy = self;
  v11 = HUGridServiceCell.primaryLabelTileFrame()();
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;

  v7 = x;
  v8 = y;
  v9 = width;
  v10 = height;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)secondaryLabelTileFrame
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)tileFrame
{
  [(HUGridServiceCell *)self frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (double)backgroundCornerRadius
{
  selfCopy = self;
  layoutOptions = [(HUGridCell *)selfCopy layoutOptions];
  if (layoutOptions)
  {
    v4 = layoutOptions;
    [(HUGridCellLayoutOptions *)layoutOptions cellCornerRadius];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (id)baseIconViewConfiguration
{
  selfCopy = self;
  HUGridServiceCell.baseIconViewConfiguration()(v11);

  v3 = v12;
  if (v12)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v11, v12);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_20D568BD8();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (HUGridServiceCell)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HUGridServiceCell;
  v3 = [(HUGridCell *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(HUGridServiceCell *)v3 _setupServiceCell];
  }

  return v4;
}

- (HUGridServiceCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = HUGridServiceCell;
  v3 = [(HUGridCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUGridServiceCell *)v3 _setupServiceCell];
  }

  return v4;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = HUGridServiceCell;
  [(HUGridCell *)&v4 prepareForReuse];
  [(HUGridServiceCell *)self setServiceItem:0];
  [(HUGridServiceCell *)self setShowProgressIndicatorAfterDelay:0];
  [(HUGridServiceCell *)self setShowUpdatingStateAfterDelay:0];
  iconView = [(HUGridServiceCell *)self iconView];
  [iconView updateWithIconDescriptor:0 displayStyle:-[HUGridCell iconDisplayStyle](self animated:{"iconDisplayStyle"), 0}];

  [(HUGridServiceCell *)self setAccessoryView:0];
  [(HUGridServiceCell *)self setShouldColorDescription:1];
  [(HUGridServiceCell *)self setHasUpdatedUISinceLastReuse:0];
  self->_shouldShowRoomName = 1;
}

- (void)_setupServiceCell
{
  v3 = objc_alloc_init(MEMORY[0x277D180D0]);
  [(HUGridServiceCell *)self setIconView:v3];

  _iconTintColor = [objc_opt_class() _iconTintColor];
  iconView = [(HUGridServiceCell *)self iconView];
  [iconView setTintColor:_iconTintColor];

  contentView = [(HUGridServiceCell *)self contentView];
  iconView2 = [(HUGridServiceCell *)self iconView];
  [contentView addSubview:iconView2];

  v8 = objc_alloc_init(MEMORY[0x277D755E8]);
  [(HUGridServiceCell *)self setSupplementaryImageView:v8];

  contentView2 = [(HUGridServiceCell *)self contentView];
  supplementaryImageView = [(HUGridServiceCell *)self supplementaryImageView];
  [contentView2 addSubview:supplementaryImageView];

  supplementaryImageView2 = [(HUGridServiceCell *)self supplementaryImageView];
  [supplementaryImageView2 setHidden:1];

  [(HUGridServiceCell *)self _setupCommonServiceCell];
}

- (void)_setupCommonServiceCell
{
  [(HUGridServiceCell *)self setShouldColorDescription:1];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [(HUGridServiceCell *)self setDefaultDescriptionColor:systemGrayColor];

  [(HUGridServiceCell *)self setShouldShowLoadingState:1];
  self->_shouldShowRoomName = 1;
  v4 = objc_alloc_init(HUGridServiceCellTextView);
  [(HUGridServiceCell *)self setServiceTextView:v4];

  gridForegroundContentView = [(HUGridCell *)self gridForegroundContentView];
  serviceTextView = [(HUGridServiceCell *)self serviceTextView];
  [gridForegroundContentView addSubview:serviceTextView];

  v7 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HUGridServiceCell *)self setColoredDescriptionLabel:v7];

  coloredDescriptionLabel = [(HUGridServiceCell *)self coloredDescriptionLabel];
  [coloredDescriptionLabel setNumberOfLines:1];

  LODWORD(coloredDescriptionLabel) = [MEMORY[0x277D14670] isHomeControlService];
  coloredDescriptionLabel2 = [(HUGridServiceCell *)self coloredDescriptionLabel];
  [coloredDescriptionLabel2 setAllowsDefaultTighteningForTruncation:coloredDescriptionLabel ^ 1];

  LODWORD(coloredDescriptionLabel) = [MEMORY[0x277D14670] isHomeControlService];
  coloredDescriptionLabel3 = [(HUGridServiceCell *)self coloredDescriptionLabel];
  [coloredDescriptionLabel3 setAdjustsFontSizeToFitWidth:coloredDescriptionLabel ^ 1];

  +[HUGridServiceCellTextView minimumDescriptionScaleFactor];
  v12 = v11;
  coloredDescriptionLabel4 = [(HUGridServiceCell *)self coloredDescriptionLabel];
  [coloredDescriptionLabel4 setMinimumScaleFactor:v12];

  v14 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
  [(HUGridServiceCell *)self setDescriptionLabelEffectView:v14];

  descriptionLabelEffectView = [(HUGridServiceCell *)self descriptionLabelEffectView];
  contentView = [descriptionLabelEffectView contentView];
  coloredDescriptionLabel5 = [(HUGridServiceCell *)self coloredDescriptionLabel];
  [contentView addSubview:coloredDescriptionLabel5];

  contentView2 = [(HUGridServiceCell *)self contentView];
  descriptionLabelEffectView2 = [(HUGridServiceCell *)self descriptionLabelEffectView];
  [contentView2 addSubview:descriptionLabelEffectView2];

  descriptionLabelEffectView3 = [(HUGridServiceCell *)self descriptionLabelEffectView];
  [descriptionLabelEffectView3 setHidden:1];

  v21 = objc_alloc(MEMORY[0x277D750E8]);
  if ([MEMORY[0x277D14670] isSpringBoard])
  {
    v22 = 8;
  }

  else
  {
    v22 = 100;
  }

  v23 = [v21 initWithActivityIndicatorStyle:v22];
  [(HUGridServiceCell *)self setActivityIndicator:v23];

  systemGrayColor2 = [MEMORY[0x277D75348] systemGrayColor];
  activityIndicator = [(HUGridServiceCell *)self activityIndicator];
  [activityIndicator setColor:systemGrayColor2];

  activityIndicator2 = [(HUGridServiceCell *)self activityIndicator];
  [activityIndicator2 setHidesWhenStopped:1];

  [(HUGridServiceCell *)self _updateAccessoryView];
}

- (void)setAccessoryView:(id)view
{
  [(HUGridServiceCell *)self setOverrideAccessoryView:view];

  [(HUGridServiceCell *)self _updateAccessoryView];
}

- (BOOL)showUpdatingStateAfterDelay
{
  if ([(HUGridServiceCell *)self showingUpdatingState])
  {
    return 1;
  }

  showUpdatingStateAfterDelayToken = [(HUGridServiceCell *)self showUpdatingStateAfterDelayToken];
  v3 = showUpdatingStateAfterDelayToken != 0;

  return v3;
}

- (void)setShowUpdatingStateAfterDelay:(BOOL)delay
{
  delayCopy = delay;
  showUpdatingStateAfterDelayToken = [(HUGridServiceCell *)self showUpdatingStateAfterDelayToken];
  v6 = showUpdatingStateAfterDelayToken;
  if (delayCopy)
  {

    if (!v6)
    {
      objc_initWeak(&location, self);
      mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
      v9 = MEMORY[0x277D85DD0];
      v10 = 3221225472;
      v11 = __52__HUGridServiceCell_setShowUpdatingStateAfterDelay___block_invoke;
      v12 = &unk_277DB8770;
      objc_copyWeak(&v13, &location);
      v8 = [mainThreadScheduler afterDelay:&v9 performBlock:1.0];
      [(HUGridServiceCell *)self setShowUpdatingStateAfterDelayToken:v8, v9, v10, v11, v12];

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    [showUpdatingStateAfterDelayToken cancel];

    [(HUGridServiceCell *)self setShowUpdatingStateAfterDelayToken:0];

    [(HUGridServiceCell *)self setShowingUpdatingState:0];
  }
}

void __52__HUGridServiceCell_setShowUpdatingStateAfterDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setShowingUpdatingState:1];
  [WeakRetained setShowUpdatingStateAfterDelayToken:0];
}

- (BOOL)showProgressIndicatorAfterDelay
{
  if ([(HUGridServiceCell *)self showingProgressIndicator])
  {
    return 1;
  }

  showProgressIndicatorAfterDelayToken = [(HUGridServiceCell *)self showProgressIndicatorAfterDelayToken];
  v3 = showProgressIndicatorAfterDelayToken != 0;

  return v3;
}

- (void)setShowProgressIndicatorAfterDelay:(BOOL)delay
{
  delayCopy = delay;
  showProgressIndicatorAfterDelayToken = [(HUGridServiceCell *)self showProgressIndicatorAfterDelayToken];
  v6 = showProgressIndicatorAfterDelayToken;
  if (delayCopy)
  {

    if (!v6)
    {
      objc_initWeak(&location, self);
      mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
      v9 = MEMORY[0x277D85DD0];
      v10 = 3221225472;
      v11 = __56__HUGridServiceCell_setShowProgressIndicatorAfterDelay___block_invoke;
      v12 = &unk_277DB8770;
      objc_copyWeak(&v13, &location);
      v8 = [mainThreadScheduler afterDelay:&v9 performBlock:0.5];
      [(HUGridServiceCell *)self setShowProgressIndicatorAfterDelayToken:v8, v9, v10, v11, v12];

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    [showProgressIndicatorAfterDelayToken cancel];

    [(HUGridServiceCell *)self setShowProgressIndicatorAfterDelayToken:0];

    [(HUGridServiceCell *)self setShowingProgressIndicator:0];
  }
}

void __56__HUGridServiceCell_setShowProgressIndicatorAfterDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setShowingProgressIndicator:1];
  [WeakRetained setShowProgressIndicatorAfterDelayToken:0];
}

- (void)setShowingUpdatingState:(BOOL)state
{
  self->_showingUpdatingState = state;
  [(HUGridServiceCell *)self _updateText];
  [(HUGridServiceCell *)self _updateAccessoryView];
  showUpdatingStateAfterDelayToken = [(HUGridServiceCell *)self showUpdatingStateAfterDelayToken];
  [showUpdatingStateAfterDelayToken cancel];

  [(HUGridServiceCell *)self setShowUpdatingStateAfterDelayToken:0];
}

- (void)setShowingProgressIndicator:(BOOL)indicator
{
  indicatorCopy = indicator;
  self->_showingProgressIndicator = indicator;
  [(HUGridServiceCell *)self _updateAccessoryView];
  activityIndicator = [(HUGridServiceCell *)self activityIndicator];
  v6 = activityIndicator;
  if (indicatorCopy)
  {
    [activityIndicator startAnimating];
  }

  else
  {
    [activityIndicator stopAnimating];
  }

  showProgressIndicatorAfterDelayToken = [(HUGridServiceCell *)self showProgressIndicatorAfterDelayToken];
  [showProgressIndicatorAfterDelayToken cancel];

  [(HUGridServiceCell *)self setShowProgressIndicatorAfterDelayToken:0];
}

- (BOOL)disableContinuousIconAnimation
{
  iconView = [(HUGridServiceCell *)self iconView];
  disableContinuousAnimation = [iconView disableContinuousAnimation];

  return disableContinuousAnimation;
}

- (void)setDisableContinuousIconAnimation:(BOOL)animation
{
  animationCopy = animation;
  iconView = [(HUGridServiceCell *)self iconView];
  [iconView setDisableContinuousAnimation:animationCopy];
}

- (void)setShouldColorDescription:(BOOL)description
{
  if (self->_shouldColorDescription != description)
  {
    self->_shouldColorDescription = description;
    item = [(HUGridServiceCell *)self item];

    if (item)
    {

      [(HUGridServiceCell *)self updateUIWithAnimation:0];
    }
  }
}

- (void)setShouldShowRoomName:(BOOL)name
{
  if (self->_shouldShowRoomName != name)
  {
    self->_shouldShowRoomName = name;
    item = [(HUGridServiceCell *)self item];

    if (item)
    {

      [(HUGridServiceCell *)self updateUIWithAnimation:0];
    }
  }
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  v18[1] = *MEMORY[0x277D85DE8];
  item = [(HUGridServiceCell *)self item];
  v18[0] = *MEMORY[0x277D13E88];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v7 = [item resultsContainRequiredProperties:v6];

  if (v7)
  {
    v17.receiver = self;
    v17.super_class = HUGridServiceCell;
    [(HUGridCell *)&v17 updateUIWithAnimation:animationCopy];
    [(HUGridServiceCell *)self _updateIconAnimated:animationCopy];
    if ([(HUGridServiceCell *)self shouldShowLoadingState])
    {
      item2 = [(HUGridServiceCell *)self item];
      v9 = ([item2 loadingState] >> 1) & 1;
    }

    else
    {
      v9 = 0;
    }

    if ([(HUGridServiceCell *)self shouldShowLoadingState])
    {
      item3 = [(HUGridServiceCell *)self item];
      v12 = [item3 loadingState] & 1;
    }

    else
    {
      v12 = 0;
    }

    if ([(HUGridServiceCell *)self hasUpdatedUISinceLastReuse])
    {
      [(HUGridServiceCell *)self setShowProgressIndicatorAfterDelay:v9];
      item4 = [(HUGridServiceCell *)self item];
      latestResults = [item4 latestResults];
      v15 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14150]];
      bOOLValue = [v15 BOOLValue];

      if (!bOOLValue)
      {
        [(HUGridServiceCell *)self setShowUpdatingStateAfterDelay:v12];
LABEL_14:
        [(HUGridServiceCell *)self _updateText];
        [(HUGridServiceCell *)self _updateAccessoryView];
        [(HUGridServiceCell *)self setNeedsLayout];
        goto LABEL_15;
      }
    }

    else
    {
      [(HUGridServiceCell *)self setShowingProgressIndicator:v9];
    }

    [(HUGridServiceCell *)self setShowingUpdatingState:v12];
    goto LABEL_14;
  }

  serviceTextView = [(HUGridServiceCell *)self serviceTextView];
  [serviceTextView setServiceNameComponents:0];

  [(HUGridServiceCell *)self _updateIconAnimated:animationCopy];
LABEL_15:
  [(HUGridServiceCell *)self setHasUpdatedUISinceLastReuse:1];
}

- (void)renounceIcon
{
  iconView = [(HUGridServiceCell *)self iconView];
  [iconView renounceIconIfPossible];
}

- (void)reclaimIconIfPossible
{
  iconView = [(HUGridServiceCell *)self iconView];
  [iconView reclaimIconIfPossible];
}

- (void)_updateIconAnimated:(BOOL)animated
{
  animatedCopy = animated;
  layoutOptions = [(HUGridCell *)self layoutOptions];
  iconContentMode = [layoutOptions iconContentMode];
  iconView = [(HUGridServiceCell *)self iconView];
  [iconView setContentMode:iconContentMode];

  iconView2 = [(HUGridServiceCell *)self iconView];
  item = [(HUGridServiceCell *)self item];
  latestResults = [item latestResults];
  v10 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E88]];
  [iconView2 updateWithIconDescriptor:v10 displayStyle:-[HUGridCell iconDisplayStyle](self animated:{"iconDisplayStyle"), animatedCopy}];
}

- (void)layoutOptionsDidChange
{
  v14.receiver = self;
  v14.super_class = HUGridServiceCell;
  [(HUGridCell *)&v14 layoutOptionsDidChange];
  layoutOptions = [(HUGridCell *)self layoutOptions];
  font = [layoutOptions font];
  serviceTextView = [(HUGridServiceCell *)self serviceTextView];
  [serviceTextView setFont:font];

  layoutOptions2 = [(HUGridCell *)self layoutOptions];
  [layoutOptions2 lineSpacing];
  v8 = v7;
  serviceTextView2 = [(HUGridServiceCell *)self serviceTextView];
  [serviceTextView2 setLineHeight:v8];

  layoutOptions3 = [(HUGridCell *)self layoutOptions];
  iconVibrancyEffect = [layoutOptions3 iconVibrancyEffect];
  vibrancyEffect = iconVibrancyEffect;
  if (!iconVibrancyEffect)
  {
    serviceTextView = [(HUGridCell *)self layoutOptions];
    vibrancyEffect = [serviceTextView vibrancyEffect];
  }

  iconView = [(HUGridServiceCell *)self iconView];
  [iconView setVibrancyEffect:vibrancyEffect];

  if (!iconVibrancyEffect)
  {
  }

  [(HUGridServiceCell *)self _updateText];
  [(HUGridServiceCell *)self setNeedsLayout];
}

- (void)displayStyleDidChange
{
  v3.receiver = self;
  v3.super_class = HUGridServiceCell;
  [(HUGridCell *)&v3 displayStyleDidChange];
  [(HUGridServiceCell *)self _updateSecondaryContentDisplayStyle];
}

- (void)layoutSubviews
{
  v125[1] = *MEMORY[0x277D85DE8];
  v124.receiver = self;
  v124.super_class = HUGridServiceCell;
  [(HUGridCell *)&v124 layoutSubviews];
  layoutOptions = [(HUGridCell *)self layoutOptions];
  [layoutOptions cellInnerMargin];
  v5 = v4;

  layoutOptions2 = [(HUGridCell *)self layoutOptions];
  shouldShowIconOnly = [layoutOptions2 shouldShowIconOnly];

  if (shouldShowIconOnly)
  {
    contentView = [(HUGridServiceCell *)self contentView];
    [contentView bounds];
    CGRectInset(v126, v5, v5);

    contentView2 = [(HUGridServiceCell *)self contentView];
    [contentView2 bounds];
    UIRectCenteredIntegralRect();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    iconView = [(HUGridServiceCell *)self iconView];
    [iconView setFrame:{v11, v13, v15, v17}];

    [(HUGridServiceCell *)self _updateSupplementaryImageViewIfNecessary];
  }

  else
  {
    effectiveUserInterfaceLayoutDirection = [(HUGridServiceCell *)self effectiveUserInterfaceLayoutDirection];
    layoutOptions3 = [(HUGridCell *)self layoutOptions];
    if ([layoutOptions3 shouldShowDescription])
    {
      v21 = v5;
    }

    else
    {
      v21 = v5 * 0.8;
    }

    contentView3 = [(HUGridServiceCell *)self contentView];
    [contentView3 bounds];
    MaxY = CGRectGetMaxY(v127);

    serviceTextView = [(HUGridServiceCell *)self serviceTextView];
    [serviceTextView sizeToFit];

    layoutOptions4 = [(HUGridCell *)self layoutOptions];
    shouldShowDescription = [layoutOptions4 shouldShowDescription];
    serviceTextView2 = [(HUGridServiceCell *)self serviceTextView];
    [serviceTextView2 frame];
    Height = CGRectGetHeight(v128);
    if ((shouldShowDescription & 1) == 0)
    {
      serviceTextView3 = [(HUGridServiceCell *)self serviceTextView];
      [serviceTextView3 lineHeight];
      Height = Height - v30;
    }

    v31 = MaxY - v21;

    layoutOptions5 = [(HUGridCell *)self layoutOptions];
    shouldShowDescription2 = [layoutOptions5 shouldShowDescription];
    serviceTextView4 = [(HUGridServiceCell *)self serviceTextView];
    v35 = serviceTextView4;
    if (shouldShowDescription2)
    {
      [serviceTextView4 lastBaselineToBottomDistance];
    }

    else
    {
      [serviceTextView4 lineHeight];
    }

    v37 = v36;

    contentView4 = [(HUGridServiceCell *)self contentView];
    [contentView4 bounds];
    v39 = v5 + CGRectGetMinX(v129);
    serviceTextView5 = [(HUGridServiceCell *)self serviceTextView];
    [serviceTextView5 frame];
    v41 = CGRectGetHeight(v130);
    v42 = HURoundToScreenScale(v37 + v31 - v41);
    contentView5 = [(HUGridServiceCell *)self contentView];
    [contentView5 bounds];
    v44 = CGRectGetWidth(v131) + v5 * -2.0;
    serviceTextView6 = [(HUGridServiceCell *)self serviceTextView];
    [serviceTextView6 setFrame:{v39, v42, v44, Height}];

    layoutOptions6 = [(HUGridCell *)self layoutOptions];
    LODWORD(serviceTextView5) = [layoutOptions6 shouldShowDescription];

    if (serviceTextView5)
    {
      coloredDescriptionLabel = [(HUGridServiceCell *)self coloredDescriptionLabel];
      [coloredDescriptionLabel sizeToFit];

      contentView6 = [(HUGridServiceCell *)self contentView];
      [contentView6 bounds];
      v49 = v5 + CGRectGetMinX(v132);
      coloredDescriptionLabel2 = [(HUGridServiceCell *)self coloredDescriptionLabel];
      [coloredDescriptionLabel2 _lastLineBaseline];
      v52 = HURoundToScreenScale(v31 - v51);
      contentView7 = [(HUGridServiceCell *)self contentView];
      [contentView7 bounds];
      v54 = CGRectGetWidth(v133) + v5 * -2.0;
      coloredDescriptionLabel3 = [(HUGridServiceCell *)self coloredDescriptionLabel];
      [coloredDescriptionLabel3 bounds];
      v56 = CGRectGetHeight(v134);
      descriptionLabelEffectView = [(HUGridServiceCell *)self descriptionLabelEffectView];
      [descriptionLabelEffectView setFrame:{v49, v52, v54, v56}];

      descriptionLabelEffectView2 = [(HUGridServiceCell *)self descriptionLabelEffectView];
      [descriptionLabelEffectView2 bounds];
      v60 = v59;
      v62 = v61;
      v64 = v63;
      v66 = v65;
      coloredDescriptionLabel4 = [(HUGridServiceCell *)self coloredDescriptionLabel];
      [coloredDescriptionLabel4 setFrame:{v60, v62, v64, v66}];
    }

    item = [(HUGridServiceCell *)self item];
    v69 = *MEMORY[0x277D13E88];
    v125[0] = *MEMORY[0x277D13E88];
    v70 = [MEMORY[0x277CBEA60] arrayWithObjects:v125 count:1];
    v71 = [item resultsContainRequiredProperties:v70];

    if (v71)
    {
      item2 = [(HUGridServiceCell *)self item];
      latestResults = [item2 latestResults];
      v74 = [latestResults objectForKeyedSubscript:v69];

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v76 = 0;
      }

      else
      {
        objc_opt_class();
        v76 = objc_opt_isKindOfClass();
      }
    }

    else
    {
      v76 = 0;
      isKindOfClass = 0;
    }

    serviceTextView7 = [(HUGridServiceCell *)self serviceTextView];
    [serviceTextView7 frame];
    v78 = CGRectGetMinY(v135) - v5;
    layoutOptions7 = [(HUGridCell *)self layoutOptions];
    [layoutOptions7 iconToTitleSpacing];
    v81 = v78 - v80;

    layoutOptions8 = [(HUGridCell *)self layoutOptions];
    [layoutOptions8 iconSize];
    v84 = v83;

    if (v81 >= v84)
    {
      v85 = v84;
    }

    else
    {
      v85 = v81;
    }

    layoutOptions9 = [(HUGridCell *)self layoutOptions];
    [layoutOptions9 iconToTitleSpacing];
    v88 = v5 + v85 + v87;

    contentView8 = [(HUGridServiceCell *)self contentView];
    [contentView8 bounds];
    v91 = v90 + v5 * -2.0 - v85;

    if (v85 >= v91)
    {
      v92 = v91;
    }

    else
    {
      v92 = v85;
    }

    v93 = v88;
    if ((isKindOfClass & 1) == 0)
    {
      iconView2 = [(HUGridServiceCell *)self iconView];
      v95 = iconView2;
      if (v85 >= v88)
      {
        v96 = v88;
      }

      else
      {
        v96 = v85;
      }

      [iconView2 sizeThatFits:{v92, v96}];
      v91 = v97;
      v93 = v98;
    }

    if ((v76 & 1) != 0 && v92 * 4.0 / 3.0 < v91)
    {
      v91 = v92 * 4.0 / 3.0;
    }

    contentView9 = [(HUGridServiceCell *)self contentView];
    [contentView9 bounds];
    v100 = v5 + CGRectGetMinY(v136);

    if (isKindOfClass)
    {
      v100 = v100 + (v88 - v85) * -0.5;
    }

    contentView10 = [(HUGridServiceCell *)self contentView];
    [contentView10 bounds];
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v106 = CGRectGetMaxX(*&v102) - v5 - v91;
    }

    else
    {
      v106 = v5 + CGRectGetMinX(*&v102);
    }

    iconView3 = [(HUGridServiceCell *)self iconView];
    [iconView3 setFrame:{v106, v100, v91, v93}];

    [(HUGridServiceCell *)self _updateSupplementaryImageViewIfNecessary];
    accessoryView = [(HUGridServiceCell *)self accessoryView];
    [accessoryView sizeToFit];

    accessoryView2 = [(HUGridServiceCell *)self accessoryView];
    [accessoryView2 frame];
    v110 = CGRectGetHeight(v137);

    if (v110 >= v85)
    {
      v110 = v85;
    }

    accessoryView3 = [(HUGridServiceCell *)self accessoryView];
    [accessoryView3 frame];
    Width = CGRectGetWidth(v138);
    accessoryView4 = [(HUGridServiceCell *)self accessoryView];
    [accessoryView4 frame];
    v114 = Width * (v110 / CGRectGetHeight(v139));

    contentView11 = [(HUGridServiceCell *)self contentView];
    [contentView11 bounds];
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v120 = v5 + CGRectGetMinX(*&v116);
    }

    else
    {
      v120 = CGRectGetMaxX(*&v116) - v5 - v114;
    }

    contentView12 = [(HUGridServiceCell *)self contentView];
    [contentView12 bounds];
    v122 = v5 + CGRectGetMinY(v140);
    accessoryView5 = [(HUGridServiceCell *)self accessoryView];
    [accessoryView5 setFrame:{v120, v122, v114, v110}];
  }
}

- (void)_updateText
{
  _textConfiguration = [(HUGridServiceCell *)self _textConfiguration];
  nameComponents = [_textConfiguration nameComponents];
  serviceTextView = [(HUGridServiceCell *)self serviceTextView];
  [serviceTextView setServiceNameComponents:nameComponents];

  shouldShowRoomName = [(HUGridServiceCell *)self shouldShowRoomName];
  serviceTextView2 = [(HUGridServiceCell *)self serviceTextView];
  [serviceTextView2 setShouldShowRoomName:shouldShowRoomName];

  layoutOptions = [(HUGridCell *)self layoutOptions];
  LODWORD(serviceTextView2) = [layoutOptions shouldShowDescription];

  if (!serviceTextView2)
  {
    descriptionLabelEffectView = [(HUGridServiceCell *)self descriptionLabelEffectView];
    [descriptionLabelEffectView setHidden:1];

    coloredDescriptionLabel = [(HUGridServiceCell *)self coloredDescriptionLabel];
    [coloredDescriptionLabel setAttributedText:0];
LABEL_7:

    serviceTextView3 = [(HUGridServiceCell *)self serviceTextView];
    [serviceTextView3 setDescriptionText:0];
    goto LABEL_8;
  }

  descriptionTextEffect = [_textConfiguration descriptionTextEffect];
  descriptionLabelEffectView2 = [(HUGridServiceCell *)self descriptionLabelEffectView];
  [descriptionLabelEffectView2 setEffect:descriptionTextEffect];

  descriptionTextColor = [_textConfiguration descriptionTextColor];
  if (descriptionTextColor)
  {

LABEL_6:
    descriptionText = [_textConfiguration descriptionText];
    descriptionTextColor2 = [_textConfiguration descriptionTextColor];
    v16 = [(HUGridServiceCell *)self _descriptionTextAttributesWithColor:descriptionTextColor2];
    v17 = [descriptionText stringWithAttributes:v16];
    coloredDescriptionLabel2 = [(HUGridServiceCell *)self coloredDescriptionLabel];
    [coloredDescriptionLabel2 setAttributedText:v17];

    coloredDescriptionLabel = [(HUGridServiceCell *)self descriptionLabelEffectView];
    [coloredDescriptionLabel setHidden:0];
    goto LABEL_7;
  }

  descriptionTextEffect2 = [_textConfiguration descriptionTextEffect];

  if (descriptionTextEffect2)
  {
    goto LABEL_6;
  }

  descriptionLabelEffectView3 = [(HUGridServiceCell *)self descriptionLabelEffectView];
  [descriptionLabelEffectView3 setHidden:1];

  serviceTextView3 = [_textConfiguration descriptionText];
  v23 = [serviceTextView3 stringWithAttributes:MEMORY[0x277CBEC10]];
  string = [v23 string];
  serviceTextView4 = [(HUGridServiceCell *)self serviceTextView];
  [serviceTextView4 setDescriptionText:string];

LABEL_8:
  nameTextColor = [_textConfiguration nameTextColor];
  serviceTextView5 = [(HUGridServiceCell *)self serviceTextView];
  [serviceTextView5 setTextColor:nameTextColor];
}

- (id)_descriptionTextAttributesWithColor:(id)color
{
  v4 = MEMORY[0x277D74240];
  colorCopy = color;
  v6 = objc_alloc_init(v4);
  layoutOptions = [(HUGridCell *)self layoutOptions];
  [layoutOptions lineSpacing];
  [v6 setMinimumLineHeight:?];

  layoutOptions2 = [(HUGridCell *)self layoutOptions];
  [layoutOptions2 lineSpacing];
  [v6 setMaximumLineHeight:?];

  [v6 setLineBreakMode:4];
  [v6 setAllowsDefaultTighteningForTruncation:{objc_msgSend(MEMORY[0x277D14670], "isHomeControlService") ^ 1}];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  layoutOptions3 = [(HUGridCell *)self layoutOptions];
  font = [layoutOptions3 font];
  [dictionary na_safeSetObject:font forKey:*MEMORY[0x277D740A8]];

  [dictionary na_safeSetObject:colorCopy forKey:*MEMORY[0x277D740C0]];
  [dictionary na_safeSetObject:v6 forKey:*MEMORY[0x277D74118]];

  return dictionary;
}

- (id)_textConfiguration
{
  v3 = objc_alloc_init(HUGridServiceCellTextConfiguration);
  item = [(HUGridServiceCell *)self item];
  latestResults = [item latestResults];
  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F00]];
  [(HUGridServiceCellTextConfiguration *)v3 setNameComponents:v6];

  item2 = [(HUGridServiceCell *)self item];
  latestResults2 = [item2 latestResults];
  v9 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
  [(HUGridServiceCellTextConfiguration *)v3 setDescriptionText:v9];

  item3 = [(HUGridServiceCell *)self item];
  latestResults3 = [item3 latestResults];
  v12 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13E28]];

  if (v12)
  {
    v13 = [v12 integerValue] == 1;
  }

  else
  {
    v13 = 0;
  }

  item4 = [(HUGridServiceCell *)self item];
  latestResults4 = [item4 latestResults];
  v16 = [latestResults4 objectForKeyedSubscript:*MEMORY[0x277D13EC8]];

  if (v16)
  {
    v17 = [v16 integerValue] < 2;
  }

  else
  {
    v17 = 1;
  }

  backgroundState = [(HUGridCell *)self backgroundState];
  if (backgroundState == 1)
  {
    defaultDescriptionColor = [(HUGridServiceCell *)self defaultDescriptionColor];
    [(HUGridServiceCellTextConfiguration *)v3 setDescriptionTextColor:defaultDescriptionColor];
  }

  else
  {
    [(HUGridServiceCellTextConfiguration *)v3 setDescriptionTextColor:0];
  }

  if ([(HUGridServiceCell *)self showingUpdatingState])
  {
    if ([MEMORY[0x277D14CE8] shouldSuppressAllErrorsForDemo])
    {
      goto LABEL_23;
    }

    systemRedColor = _HULocalizedStringWithDefaultValue(@"HUGridServiceCellReadingDescription", @"HUGridServiceCellReadingDescription", 1);
    [(HUGridServiceCellTextConfiguration *)v3 setDescriptionText:systemRedColor];
    goto LABEL_22;
  }

  if ([(HUGridServiceCell *)self shouldColorDescription])
  {
    if (backgroundState != 1 || v17)
    {
      [(HUGridServiceCell *)self defaultNameTextColor];
    }

    else
    {
      [MEMORY[0x277D75348] systemRedColor];
    }
    v22 = ;
    [(HUGridServiceCellTextConfiguration *)v3 setNameTextColor:v22];

    if (v13)
    {
      systemRedColor = [MEMORY[0x277D75348] systemRedColor];
      [(HUGridServiceCellTextConfiguration *)v3 setDescriptionTextColor:systemRedColor];
LABEL_22:
    }
  }

LABEL_23:
  descriptionTextColor = [(HUGridServiceCellTextConfiguration *)v3 descriptionTextColor];
  if (descriptionTextColor)
  {
LABEL_31:

    goto LABEL_32;
  }

  contentEffect = [(HUGridCell *)self contentEffect];
  secondaryContentEffect = [(HUGridCell *)self secondaryContentEffect];
  descriptionTextColor = contentEffect;
  v26 = secondaryContentEffect;
  v27 = v26;
  if (descriptionTextColor == v26)
  {

    goto LABEL_31;
  }

  if (!descriptionTextColor)
  {

    goto LABEL_30;
  }

  v28 = [descriptionTextColor isEqual:v26];

  if ((v28 & 1) == 0)
  {
LABEL_30:
    descriptionTextColor = [(HUGridCell *)self secondaryContentEffect];
    [(HUGridServiceCellTextConfiguration *)v3 setDescriptionTextEffect:descriptionTextColor];
    goto LABEL_31;
  }

LABEL_32:

  return v3;
}

- (void)_updateSecondaryContentDisplayStyle
{
  v3 = [(HUGridCell *)self iconDisplayStyle]== 2;
  serviceTextView = [(HUGridServiceCell *)self serviceTextView];
  [serviceTextView setTextColorFollowsTintColor:v3];

  [(HUGridCell *)self secondaryContentDimmingFactor];
  v6 = v5;
  serviceTextView2 = [(HUGridServiceCell *)self serviceTextView];
  [serviceTextView2 setDescriptionTextColorDimmingFactor:v6];

  [(HUGridCell *)self secondaryContentDimmingFactor];
  v9 = v8;
  exclamationView = [(HUGridServiceCell *)self exclamationView];
  innerContentView = [exclamationView innerContentView];
  [innerContentView setAlpha:v9];

  secondaryContentEffect = [(HUGridCell *)self secondaryContentEffect];
  exclamationView2 = [(HUGridServiceCell *)self exclamationView];
  [exclamationView2 setEffect:secondaryContentEffect];

  [(HUGridCell *)self secondaryContentDimmingFactor];
  v15 = v14;
  firmwareUpdateView = [(HUGridServiceCell *)self firmwareUpdateView];
  innerContentView2 = [firmwareUpdateView innerContentView];
  [innerContentView2 setAlpha:v15];

  secondaryContentEffect2 = [(HUGridCell *)self secondaryContentEffect];
  firmwareUpdateView2 = [(HUGridServiceCell *)self firmwareUpdateView];
  [firmwareUpdateView2 setEffect:secondaryContentEffect2];
}

- (void)_updateAccessoryView
{
  layoutOptions = [(HUGridCell *)self layoutOptions];
  shouldShowAccessoryView = [layoutOptions shouldShowAccessoryView];

  if (!shouldShowAccessoryView)
  {
    return;
  }

  overrideAccessoryView = [(HUGridServiceCell *)self overrideAccessoryView];
  if (!overrideAccessoryView)
  {
    if ([(HUGridServiceCell *)self showingProgressIndicator])
    {
      activityIndicator = [(HUGridServiceCell *)self activityIndicator];
    }

    else
    {
      item = [(HUGridServiceCell *)self item];
      latestResults = [item latestResults];
      v9 = *MEMORY[0x277D13DE0];
      v10 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13DE0]];
      integerValue = [v10 integerValue];

      if (integerValue == 8)
      {
        [(HUGridServiceCell *)self _createFirmwareUpdateViewIfNecessary];
        activityIndicator = [(HUGridServiceCell *)self firmwareUpdateView];
      }

      else
      {
        if (-[HUGridServiceCell showingUpdatingState](self, "showingUpdatingState") || (-[HUGridServiceCell item](self, "item"), v14 = objc_claimAutoreleasedReturnValue(), [v14 latestResults], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "objectForKeyedSubscript:", v9), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "integerValue"), v16, v15, v14, v17 != 1))
        {
          overrideAccessoryView = 0;
          goto LABEL_9;
        }

        [(HUGridServiceCell *)self _createExclamationViewIfNecessary];
        activityIndicator = [(HUGridServiceCell *)self exclamationView];
      }
    }

    overrideAccessoryView = activityIndicator;
  }

LABEL_9:
  accessoryView = self->_accessoryView;
  obj = overrideAccessoryView;
  if (overrideAccessoryView != accessoryView)
  {
    [(UIView *)accessoryView removeFromSuperview];
    objc_storeStrong(&self->_accessoryView, obj);
    contentView = [(HUGridServiceCell *)self contentView];
    [contentView addSubview:self->_accessoryView];

    [(HUGridServiceCell *)self setNeedsLayout];
  }

  [(HUGridServiceCell *)self _updateExclamationViewColor];
}

- (void)_createExclamationViewIfNecessary
{
  exclamationView = [(HUGridServiceCell *)self exclamationView];

  if (!exclamationView)
  {
    v4 = objc_alloc(MEMORY[0x277D755E8]);
    hu_exclamationMarkImage = [MEMORY[0x277D755B8] hu_exclamationMarkImage];
    v11 = [v4 initWithImage:hu_exclamationMarkImage];

    hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
    [v11 setTintColor:hf_keyColor];

    v7 = [HUVisualEffectContainerView alloc];
    contentEffect = [(HUGridCell *)self contentEffect];
    v9 = [(HUVisualEffectContainerView *)v7 initWithEffect:contentEffect];
    [(HUGridServiceCell *)self setExclamationView:v9];

    exclamationView2 = [(HUGridServiceCell *)self exclamationView];
    [exclamationView2 setInnerContentView:v11];
  }
}

- (void)_updateExclamationViewColor
{
  item = [(HUGridServiceCell *)self item];
  latestResults = [item latestResults];
  v5 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13DD8]];
  integerValue = [v5 integerValue];

  if ([(HUGridCell *)self iconDisplayStyle]== 3)
  {
    _iconTintColor = [objc_opt_class() _iconTintColor];
  }

  else
  {
    _iconTintColor = 0;
  }

  v11 = _iconTintColor;
  if (integerValue)
  {
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    systemGrayColor = _iconTintColor;
  }

  v9 = systemGrayColor;
  exclamationView = [(HUGridServiceCell *)self exclamationView];
  [exclamationView setTintColor:v9];
}

- (void)_updateSupplementaryImageViewIfNecessary
{
  item = [(HUGridServiceCell *)self item];
  if ([item conformsToProtocol:&unk_28251B0C8])
  {
    v4 = item;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  accessories = [v5 accessories];

  anyObject = [accessories anyObject];

  effectiveUserInterfaceLayoutDirection = [(HUGridServiceCell *)self effectiveUserInterfaceLayoutDirection];
  hf_siriEndpointProfile = [anyObject hf_siriEndpointProfile];
  if (hf_siriEndpointProfile && (v9 = hf_siriEndpointProfile, v10 = [anyObject hf_needsOnboarding], v9, (v10 & 1) == 0))
  {
    objc_opt_class();
    item2 = [(HUGridServiceCell *)self item];
    if (objc_opt_isKindOfClass())
    {
      v16 = item2;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    hf_siriEndpointProfile2 = [anyObject hf_siriEndpointProfile];
    manuallyDisabled = [hf_siriEndpointProfile2 manuallyDisabled];

    if ((manuallyDisabled & 1) == 0 && ([v17 shouldShowMutedMicIcon] & 1) == 0)
    {

LABEL_22:
      supplementaryImageView = [(HUGridServiceCell *)self supplementaryImageView];
      [supplementaryImageView setHidden:1];
      goto LABEL_23;
    }
  }

  else
  {
    if (![anyObject hf_isHomePod])
    {
      goto LABEL_22;
    }

    objc_opt_class();
    item3 = [(HUGridServiceCell *)self item];
    v12 = (objc_opt_isKindOfClass() & 1) != 0 ? item3 : 0;
    v13 = v12;

    shouldShowMutedMicIcon = [v13 shouldShowMutedMicIcon];
    if (!shouldShowMutedMicIcon)
    {
      goto LABEL_22;
    }
  }

  supplementaryImageView = [(HUGridServiceCell *)self _backgroundColorForSupplementaryIcon];
  v21 = MEMORY[0x277D755B8];
  systemRedColor = [MEMORY[0x277D75348] systemRedColor];
  v23 = [v21 hu_mutedMicrophoneImageInCircleWithTintColor:systemRedColor backgroundColor:supplementaryImageView];

  supplementaryImageView2 = [(HUGridServiceCell *)self supplementaryImageView];
  [supplementaryImageView2 setImage:v23];

  iconView = [(HUGridServiceCell *)self iconView];
  [iconView frame];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  supplementaryImageView3 = [(HUGridServiceCell *)self supplementaryImageView];
  image = [supplementaryImageView3 image];
  [image size];
  v37 = v36;
  v39 = v38;

  v40 = 0.0;
  if (effectiveUserInterfaceLayoutDirection != 1)
  {
    v40 = v31;
  }

  v41 = v27 + v40 + v37 * -0.5;
  supplementaryImageView4 = [(HUGridServiceCell *)self supplementaryImageView];
  [supplementaryImageView4 setFrame:{v41, v29 + v33 + v39 / -1.5, v37, v39}];

  supplementaryImageView5 = [(HUGridServiceCell *)self supplementaryImageView];
  [supplementaryImageView5 setHidden:0];

LABEL_23:
}

- (id)_backgroundColorForSupplementaryIcon
{
  v3 = [MEMORY[0x277D75348] colorWithWhite:0.85 alpha:1.0];
  if ([MEMORY[0x277D14670] isSpringBoard])
  {
    isHomeControlService = 1;
  }

  else
  {
    isHomeControlService = [MEMORY[0x277D14670] isHomeControlService];
  }

  traitCollection = [(HUGridServiceCell *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2 || isHomeControlService)
  {
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.3 alpha:1.0];

    v3 = v7;
  }

  if ([(HUGridCell *)self backgroundState]== 1)
  {
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  }

  else
  {
    systemWhiteColor = v3;
  }

  v9 = systemWhiteColor;

  return v9;
}

- (void)_createFirmwareUpdateViewIfNecessary
{
  firmwareUpdateView = [(HUGridServiceCell *)self firmwareUpdateView];

  if (!firmwareUpdateView)
  {
    v4 = objc_alloc(MEMORY[0x277D755E8]);
    v5 = HUImageNamed(@"firmwareupdate");
    v6 = [v5 imageWithRenderingMode:2];
    v12 = [v4 initWithImage:v6];

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [v12 setTintColor:systemGrayColor];

    v8 = [HUVisualEffectContainerView alloc];
    contentEffect = [(HUGridCell *)self contentEffect];
    v10 = [(HUVisualEffectContainerView *)v8 initWithEffect:contentEffect];
    [(HUGridServiceCell *)self setFirmwareUpdateView:v10];

    firmwareUpdateView2 = [(HUGridServiceCell *)self firmwareUpdateView];
    [firmwareUpdateView2 setInnerContentView:v12];
  }
}

- (void)dragStateDidChange:(int64_t)change
{
  v6.receiver = self;
  v6.super_class = HUGridServiceCell;
  [(HUGridServiceCell *)&v6 dragStateDidChange:?];
  if (change)
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    [MEMORY[0x277D75348] clearColor];
  }
  v5 = ;
  [(HUGridServiceCell *)self setBackgroundColor:v5];
}

@end