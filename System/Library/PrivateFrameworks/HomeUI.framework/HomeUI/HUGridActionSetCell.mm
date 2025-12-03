@interface HUGridActionSetCell
- (HUGridActionSetCell)initWithCoder:(id)coder;
- (HUGridActionSetCell)initWithFrame:(CGRect)frame;
- (HUGridSceneCellLayoutOptions)sceneCellLayoutOptions;
- (HUIconView)iconView;
- (void)_invalidateConstraints;
- (void)_setupActionSetCell;
- (void)_updateLabels;
- (void)_updateLabelsWithTitle:(id)title description:(id)description;
- (void)layoutOptionsDidChange;
- (void)prepareForReuse;
- (void)setAccessoryView:(id)view;
- (void)setExecuteActionSetFuture:(id)future;
- (void)setUseDefaultCellBackgroundColor:(BOOL)color;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUGridActionSetCell

- (HUGridActionSetCell)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HUGridActionSetCell;
  v3 = [(HUGridCell *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(HUGridActionSetCell *)v3 _setupActionSetCell];
  }

  return v4;
}

- (HUGridActionSetCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = HUGridActionSetCell;
  v3 = [(HUGridCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUGridActionSetCell *)v3 _setupActionSetCell];
  }

  return v4;
}

- (void)prepareForReuse
{
  [(HUGridActionSetCell *)self setItem:0];
  [(HUGridActionSetCell *)self setInternalExecuteActionSetFuture:0];
  [(HUGridActionSetCell *)self setAccessoryView:0];
  [(HUGridActionSetCell *)self setUseDefaultCellBackgroundColor:0];
  iconView = [(HUGridActionSetCell *)self iconView];
  [iconView updateWithIconDescriptor:0 displayStyle:1 animated:0];

  v4.receiver = self;
  v4.super_class = HUGridActionSetCell;
  [(HUGridCell *)&v4 prepareForReuse];
}

- (void)_setupActionSetCell
{
  v3 = [HUGridActionSetTitleAndDescriptionView alloc];
  gridForegroundContentView = [(HUGridCell *)self gridForegroundContentView];
  v5 = [(HUGridActionSetTitleAndDescriptionView *)v3 initWithFrame:gridForegroundContentView titleLabelSuperview:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(HUGridActionSetCell *)self setTitleAndDescriptionView:v5];

  titleAndDescriptionView = [(HUGridActionSetCell *)self titleAndDescriptionView];
  [titleAndDescriptionView setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(HUGridActionSetCell *)self contentView];
  titleAndDescriptionView2 = [(HUGridActionSetCell *)self titleAndDescriptionView];
  [contentView addSubview:titleAndDescriptionView2];

  v9 = [[HUPieProgressView alloc] initWithStyle:1];
  [(HUGridActionSetCell *)self setProgressView:v9];

  progressView = [(HUGridActionSetCell *)self progressView];
  [progressView setHidesWhenStopped:1];

  gridForegroundContentView2 = [(HUGridCell *)self gridForegroundContentView];
  progressView2 = [(HUGridActionSetCell *)self progressView];
  [gridForegroundContentView2 addSubview:progressView2];

  progressView3 = [(HUGridActionSetCell *)self progressView];
  [progressView3 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (HUIconView)iconView
{
  iconView = self->_iconView;
  if (!iconView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D180D0]);
    v5 = self->_iconView;
    self->_iconView = v4;

    contentView = [(HUGridActionSetCell *)self contentView];
    [contentView addSubview:self->_iconView];

    [(HUIconView *)self->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUIconView *)self->_iconView setContentMode:1];
    contentEffect = [(HUGridCell *)self contentEffect];
    [(HUIconView *)self->_iconView setVibrancyEffect:contentEffect];

    iconView = self->_iconView;
  }

  return iconView;
}

- (void)setExecuteActionSetFuture:(id)future
{
  futureCopy = future;
  if (self->_executeActionSetFuture != futureCopy)
  {
    objc_storeStrong(&self->_executeActionSetFuture, future);
    internalExecuteActionSetFuture = [(HUGridActionSetCell *)self internalExecuteActionSetFuture];
    na_cancelledError = [MEMORY[0x277CCA9B8] na_cancelledError];
    [internalExecuteActionSetFuture finishWithError:na_cancelledError];

    if (futureCopy)
    {
      v8 = objc_alloc_init(MEMORY[0x277D2C900]);
      [(HUGridActionSetCell *)self setInternalExecuteActionSetFuture:v8];

      objc_initWeak(&location, self);
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __49__HUGridActionSetCell_setExecuteActionSetFuture___block_invoke;
      v15 = &unk_277DB8CA8;
      objc_copyWeak(&v16, &location);
      v9 = [(NAFuture *)futureCopy addCompletionBlock:&v12];
      v10 = [(HUGridActionSetCell *)self progressView:v12];
      internalExecuteActionSetFuture2 = [(HUGridActionSetCell *)self internalExecuteActionSetFuture];
      [v10 startWithFuture:internalExecuteActionSetFuture2];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }

    else
    {
      [(HUGridActionSetCell *)self setInternalExecuteActionSetFuture:0];
    }
  }
}

void __49__HUGridActionSetCell_setExecuteActionSetFuture___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained internalExecuteActionSetFuture];
  [v7 finishWithResult:v6 error:v5];
}

- (void)setAccessoryView:(id)view
{
  viewCopy = view;
  if (([viewCopy isEqual:self->_accessoryView] & 1) == 0)
  {
    [(UIView *)self->_accessoryView removeFromSuperview];
    objc_storeStrong(&self->_accessoryView, view);
    [(UIView *)self->_accessoryView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(HUGridActionSetCell *)self contentView];
    [contentView addSubview:self->_accessoryView];

    [(HUGridActionSetCell *)self _invalidateConstraints];
  }
}

- (HUGridSceneCellLayoutOptions)sceneCellLayoutOptions
{
  layoutOptionsClass = [objc_opt_class() layoutOptionsClass];
  layoutOptions = [(HUGridCell *)self layoutOptions];
  if (layoutOptions)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = layoutOptions;
    }

    else
    {
      v5 = 0;
    }

    v6 = layoutOptions;
    if (v5)
    {
      goto LABEL_8;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v8 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", layoutOptionsClass, objc_opt_class()}];
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (void)setUseDefaultCellBackgroundColor:(BOOL)color
{
  if (self->_useDefaultCellBackgroundColor != color)
  {
    colorCopy = color;
    self->_useDefaultCellBackgroundColor = color;
    gridBackgroundView = [(HUGridCell *)self gridBackgroundView];
    [gridBackgroundView setUseDefaultCellBackgroundColor:colorCopy];
  }
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  v19[1] = *MEMORY[0x277D85DE8];
  item = [(HUGridActionSetCell *)self item];
  v19[0] = *MEMORY[0x277D13F60];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v7 = [item resultsContainRequiredProperties:v6];

  item2 = [(HUGridActionSetCell *)self item];

  if (item2 && (v7 & 1) == 0)
  {
    item3 = [(HUGridActionSetCell *)self item];
    NSLog(&cfstr_ItemIsMissingR.isa, item3);
  }

  v18.receiver = self;
  v18.super_class = HUGridActionSetCell;
  [(HUGridCell *)&v18 updateUIWithAnimation:animationCopy];
  if (v7)
  {
    [(HUGridActionSetCell *)self _updateLabels];
    item4 = [(HUGridActionSetCell *)self item];
    latestResults = [item4 latestResults];
    v12 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E88]];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v15 = objc_alloc(MEMORY[0x277D14728]);
      v14 = [v15 initWithImageIdentifier:*MEMORY[0x277D13A30]];
    }

    v16 = v14;

    iconView = [(HUGridActionSetCell *)self iconView];
    [iconView updateWithIconDescriptor:v16 displayStyle:-[HUGridCell iconDisplayStyle](self animated:{"iconDisplayStyle"), animationCopy}];
  }

  else
  {
    [(HUGridActionSetCell *)self _updateLabelsWithTitle:&stru_2823E0EE8 description:&stru_2823E0EE8];
  }
}

- (void)layoutOptionsDidChange
{
  v8.receiver = self;
  v8.super_class = HUGridActionSetCell;
  [(HUGridCell *)&v8 layoutOptionsDidChange];
  [(HUGridActionSetCell *)self _updateLabels];
  [(HUGridActionSetCell *)self _invalidateConstraints];
  layoutOptions = [(HUGridCell *)self layoutOptions];
  iconVibrancyEffect = [layoutOptions iconVibrancyEffect];
  vibrancyEffect = iconVibrancyEffect;
  if (!iconVibrancyEffect)
  {
    layoutOptions2 = [(HUGridCell *)self layoutOptions];
    vibrancyEffect = [layoutOptions2 vibrancyEffect];
  }

  iconView = [(HUGridActionSetCell *)self iconView];
  [iconView setVibrancyEffect:vibrancyEffect];

  if (!iconVibrancyEffect)
  {
  }
}

- (void)_updateLabels
{
  item = [(HUGridActionSetCell *)self item];
  latestResults = [item latestResults];
  v8 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];

  item2 = [(HUGridActionSetCell *)self item];
  latestResults2 = [item2 latestResults];
  v7 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13E20]];

  [(HUGridActionSetCell *)self _updateLabelsWithTitle:v8 description:v7];
}

- (void)_updateLabelsWithTitle:(id)title description:(id)description
{
  v6 = MEMORY[0x277CBEB38];
  descriptionCopy = description;
  titleCopy = title;
  dictionary = [v6 dictionary];
  sceneCellLayoutOptions = [(HUGridActionSetCell *)self sceneCellLayoutOptions];
  font = [sceneCellLayoutOptions font];
  v11 = *MEMORY[0x277D740A8];
  [dictionary setObject:font forKeyedSubscript:*MEMORY[0x277D740A8]];

  useDefaultCellBackgroundColor = [(HUGridActionSetCell *)self useDefaultCellBackgroundColor];
  v13 = MEMORY[0x277D740C0];
  if (useDefaultCellBackgroundColor)
  {
    labelColor = [MEMORY[0x277D75348] labelColor];
    [dictionary setObject:labelColor forKeyedSubscript:*v13];
  }

  defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
  v16 = [defaultParagraphStyle mutableCopy];

  sceneCellLayoutOptions2 = [(HUGridActionSetCell *)self sceneCellLayoutOptions];
  [sceneCellLayoutOptions2 titleInterLineSpacing];
  [v16 setMinimumLineHeight:?];

  sceneCellLayoutOptions3 = [(HUGridActionSetCell *)self sceneCellLayoutOptions];
  [sceneCellLayoutOptions3 titleInterLineSpacing];
  [v16 setMaximumLineHeight:?];

  [v16 setAlignment:4];
  [v16 setLineBreakMode:4];
  [v16 setAllowsDefaultTighteningForTruncation:1];
  LODWORD(v19) = 1053609165;
  [v16 setHyphenationFactor:v19];
  [dictionary setObject:v16 forKeyedSubscript:*MEMORY[0x277D74118]];
  v20 = [dictionary mutableCopy];
  sceneCellLayoutOptions4 = [(HUGridActionSetCell *)self sceneCellLayoutOptions];
  descriptionFont = [sceneCellLayoutOptions4 descriptionFont];
  [v20 setObject:descriptionFont forKeyedSubscript:v11];

  if ([(HUGridCell *)self backgroundState]== 1)
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemRedColor];
  }
  v23 = ;
  [v20 setObject:v23 forKeyedSubscript:*v13];

  titleAndDescriptionView = [(HUGridActionSetCell *)self titleAndDescriptionView];
  if (titleCopy)
  {
    v25 = titleCopy;
  }

  else
  {
    v25 = &stru_2823E0EE8;
  }

  v26 = [(__CFString *)v25 stringWithAttributes:dictionary];

  if (descriptionCopy)
  {
    v27 = descriptionCopy;
  }

  else
  {
    v27 = &stru_2823E0EE8;
  }

  v28 = [(__CFString *)v27 stringWithAttributes:v20];

  [titleAndDescriptionView updateTitleText:v26 descriptionText:v28];
  sceneCellLayoutOptions5 = [(HUGridActionSetCell *)self sceneCellLayoutOptions];
  numberOfTitleLines = [sceneCellLayoutOptions5 numberOfTitleLines];
  titleAndDescriptionView2 = [(HUGridActionSetCell *)self titleAndDescriptionView];
  titleLabel = [titleAndDescriptionView2 titleLabel];
  [titleLabel setNumberOfLines:numberOfTitleLines];

  titleAndDescriptionView3 = [(HUGridActionSetCell *)self titleAndDescriptionView];
  titleLabel2 = [titleAndDescriptionView3 titleLabel];
  [titleLabel2 setAdjustsFontForContentSizeCategory:1];

  if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
  {
    sceneCellLayoutOptions6 = [(HUGridActionSetCell *)self sceneCellLayoutOptions];
    [sceneCellLayoutOptions6 titleDescriptionLineSpacing];
    v37 = v36;
    titleAndDescriptionView4 = [(HUGridActionSetCell *)self titleAndDescriptionView];
    [titleAndDescriptionView4 setTitleDescriptionLineSpacing:v37];
  }
}

- (void)_invalidateConstraints
{
  actionSetCellConstraints = [(HUGridActionSetCell *)self actionSetCellConstraints];

  if (actionSetCellConstraints)
  {
    v4 = MEMORY[0x277CCAAD0];
    actionSetCellConstraints2 = [(HUGridActionSetCell *)self actionSetCellConstraints];
    [v4 deactivateConstraints:actionSetCellConstraints2];
  }

  [(HUGridActionSetCell *)self setActionSetCellConstraints:0];

  [(HUGridActionSetCell *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  actionSetCellConstraints = [(HUGridActionSetCell *)self actionSetCellConstraints];

  if (!actionSetCellConstraints)
  {
    array = [MEMORY[0x277CBEB18] array];
    iconView = [(HUGridActionSetCell *)self iconView];
    leadingAnchor = [iconView leadingAnchor];
    contentView = [(HUGridActionSetCell *)self contentView];
    leadingAnchor2 = [contentView leadingAnchor];
    sceneCellLayoutOptions = [(HUGridActionSetCell *)self sceneCellLayoutOptions];
    [sceneCellLayoutOptions cellInnerMargin];
    v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
    [array addObject:v10];

    iconView2 = [(HUGridActionSetCell *)self iconView];
    centerYAnchor = [iconView2 centerYAnchor];
    contentView2 = [(HUGridActionSetCell *)self contentView];
    centerYAnchor2 = [contentView2 centerYAnchor];
    v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [array addObject:v15];

    iconView3 = [(HUGridActionSetCell *)self iconView];
    widthAnchor = [iconView3 widthAnchor];
    layoutOptions = [(HUGridCell *)self layoutOptions];
    [layoutOptions iconSize];
    v19 = [widthAnchor constraintEqualToConstant:?];
    [array addObject:v19];

    iconView4 = [(HUGridActionSetCell *)self iconView];
    heightAnchor = [iconView4 heightAnchor];
    layoutOptions2 = [(HUGridCell *)self layoutOptions];
    [layoutOptions2 iconSize];
    v23 = [heightAnchor constraintEqualToConstant:?];
    [array addObject:v23];

    titleAndDescriptionView = [(HUGridActionSetCell *)self titleAndDescriptionView];
    leadingAnchor3 = [titleAndDescriptionView leadingAnchor];
    iconView5 = [(HUGridActionSetCell *)self iconView];
    trailingAnchor = [iconView5 trailingAnchor];
    sceneCellLayoutOptions2 = [(HUGridActionSetCell *)self sceneCellLayoutOptions];
    [sceneCellLayoutOptions2 iconInnerHorizontalMargin];
    v29 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:?];
    [array addObject:v29];

    titleAndDescriptionView2 = [(HUGridActionSetCell *)self titleAndDescriptionView];
    centerYAnchor3 = [titleAndDescriptionView2 centerYAnchor];
    contentView3 = [(HUGridActionSetCell *)self contentView];
    centerYAnchor4 = [contentView3 centerYAnchor];
    v34 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [array addObject:v34];

    accessoryView = [(HUGridActionSetCell *)self accessoryView];

    titleAndDescriptionView3 = [(HUGridActionSetCell *)self titleAndDescriptionView];
    trailingAnchor2 = [titleAndDescriptionView3 trailingAnchor];
    if (accessoryView)
    {
      accessoryView2 = [(HUGridActionSetCell *)self accessoryView];
      [accessoryView2 leadingAnchor];
    }

    else
    {
      accessoryView2 = [(HUGridActionSetCell *)self contentView];
      [accessoryView2 trailingAnchor];
    }
    v39 = ;
    sceneCellLayoutOptions3 = [(HUGridActionSetCell *)self sceneCellLayoutOptions];
    [sceneCellLayoutOptions3 iconInnerHorizontalMargin];
    v42 = [trailingAnchor2 constraintEqualToAnchor:v39 constant:-v41];

    LODWORD(v43) = 1148829696;
    [v42 setPriority:v43];
    [array addObject:v42];
    progressView = [(HUGridActionSetCell *)self progressView];
    centerXAnchor = [progressView centerXAnchor];
    iconView6 = [(HUGridActionSetCell *)self iconView];
    centerXAnchor2 = [iconView6 centerXAnchor];
    v48 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [array addObject:v48];

    progressView2 = [(HUGridActionSetCell *)self progressView];
    centerYAnchor5 = [progressView2 centerYAnchor];
    iconView7 = [(HUGridActionSetCell *)self iconView];
    centerYAnchor6 = [iconView7 centerYAnchor];
    v53 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    [array addObject:v53];

    progressView3 = [(HUGridActionSetCell *)self progressView];
    widthAnchor2 = [progressView3 widthAnchor];
    iconView8 = [(HUGridActionSetCell *)self iconView];
    widthAnchor3 = [iconView8 widthAnchor];
    v58 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3 constant:16.0];
    [array addObject:v58];

    progressView4 = [(HUGridActionSetCell *)self progressView];
    heightAnchor2 = [progressView4 heightAnchor];
    iconView9 = [(HUGridActionSetCell *)self iconView];
    heightAnchor3 = [iconView9 heightAnchor];
    v63 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3 constant:16.0];
    [array addObject:v63];

    accessoryView3 = [(HUGridActionSetCell *)self accessoryView];

    if (accessoryView3)
    {
      accessoryView4 = [(HUGridActionSetCell *)self accessoryView];
      centerYAnchor7 = [accessoryView4 centerYAnchor];
      contentView4 = [(HUGridActionSetCell *)self contentView];
      centerYAnchor8 = [contentView4 centerYAnchor];
      v69 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
      [array addObject:v69];

      accessoryView5 = [(HUGridActionSetCell *)self accessoryView];
      trailingAnchor3 = [accessoryView5 trailingAnchor];
      contentView5 = [(HUGridActionSetCell *)self contentView];
      trailingAnchor4 = [contentView5 trailingAnchor];
      sceneCellLayoutOptions4 = [(HUGridActionSetCell *)self sceneCellLayoutOptions];
      [sceneCellLayoutOptions4 iconInnerHorizontalMargin];
      v76 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v75];
      [array addObject:v76];

      accessoryView6 = [(HUGridActionSetCell *)self accessoryView];
      heightAnchor4 = [accessoryView6 heightAnchor];
      contentView6 = [(HUGridActionSetCell *)self contentView];
      heightAnchor5 = [contentView6 heightAnchor];
      sceneCellLayoutOptions5 = [(HUGridActionSetCell *)self sceneCellLayoutOptions];
      [sceneCellLayoutOptions5 iconInnerHorizontalMargin];
      v83 = [heightAnchor4 constraintLessThanOrEqualToAnchor:heightAnchor5 constant:v82 * -2.0];
      [array addObject:v83];

      accessoryView7 = [(HUGridActionSetCell *)self accessoryView];
      LODWORD(v85) = 1144750080;
      [accessoryView7 setContentHuggingPriority:0 forAxis:v85];
    }

    [(HUGridActionSetCell *)self setActionSetCellConstraints:array];
    v86 = MEMORY[0x277CCAAD0];
    actionSetCellConstraints2 = [(HUGridActionSetCell *)self actionSetCellConstraints];
    [v86 activateConstraints:actionSetCellConstraints2];
  }

  v88.receiver = self;
  v88.super_class = HUGridActionSetCell;
  [(HUGridActionSetCell *)&v88 updateConstraints];
}

@end