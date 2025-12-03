@interface HUGridHomeCell
- (HUGridHomeCell)initWithFrame:(CGRect)frame;
- (id)cellLayoutOptions;
- (void)_invalidateConstraints;
- (void)_setupCell;
- (void)_updatePrimaryLabel;
- (void)layoutOptionsDidChange;
- (void)prepareForReuse;
- (void)setMosaicLayoutGeometry:(id)geometry;
- (void)setShouldShowAsEmptyHome:(BOOL)home;
- (void)setShouldShowHomeName:(BOOL)name;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUGridHomeCell

- (HUGridHomeCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = HUGridHomeCell;
  v3 = [(HUGridCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_shouldShowHomeName = 0;
    v3->_shouldShowAsEmptyHome = 0;
    [(HUGridHomeCell *)v3 _setupCell];
  }

  return v4;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = HUGridHomeCell;
  [(HUGridCell *)&v5 prepareForReuse];
  [(HUGridHomeCell *)self setShouldShowHomeName:0];
  [(HUGridHomeCell *)self setShouldShowAsEmptyHome:0];
  [(HUGridHomeCell *)self setItem:0];
  primaryLabel = [(HUGridHomeCell *)self primaryLabel];
  [primaryLabel setText:&stru_2823E0EE8];

  infoView = [(HUGridHomeCell *)self infoView];
  [infoView resetView];
}

- (void)setShouldShowAsEmptyHome:(BOOL)home
{
  self->_shouldShowAsEmptyHome = home;
  shouldShowAsEmptyHome = [(HUGridHomeCell *)self shouldShowAsEmptyHome];
  infoView = [(HUGridHomeCell *)self infoView];
  [infoView setHidden:shouldShowAsEmptyHome ^ 1];

  iconView = [(HUGridHomeCell *)self iconView];
  [iconView setHidden:shouldShowAsEmptyHome];

  verticalStackView = [(HUGridHomeCell *)self verticalStackView];
  [verticalStackView setHidden:shouldShowAsEmptyHome];

  gridBackgroundView = [(HUGridCell *)self gridBackgroundView];
  [gridBackgroundView setHidden:shouldShowAsEmptyHome];
}

- (void)_setupCell
{
  v48[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D755E8]);
  [(HUGridHomeCell *)self setIconView:v3];

  iconView = [(HUGridHomeCell *)self iconView];
  [iconView setTranslatesAutoresizingMaskIntoConstraints:0];

  iconView2 = [(HUGridHomeCell *)self iconView];
  [iconView2 setContentMode:1];

  systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  iconView3 = [(HUGridHomeCell *)self iconView];
  [iconView3 setTintColor:systemWhiteColor];

  v8 = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:38.0];
  v9 = [MEMORY[0x277D755B8] systemImageNamed:@"homekit"];
  v10 = [v9 imageWithConfiguration:v8];
  v11 = [v10 imageWithRenderingMode:2];
  iconView4 = [(HUGridHomeCell *)self iconView];
  [iconView4 setImage:v11];

  contentView = [(HUGridHomeCell *)self contentView];
  iconView5 = [(HUGridHomeCell *)self iconView];
  [contentView addSubview:iconView5];

  v15 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HUGridHomeCell *)self setPrimaryLabel:v15];

  primaryLabel = [(HUGridHomeCell *)self primaryLabel];
  [primaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  systemWhiteColor2 = [MEMORY[0x277D75348] systemWhiteColor];
  primaryLabel2 = [(HUGridHomeCell *)self primaryLabel];
  [primaryLabel2 setTextColor:systemWhiteColor2];

  primaryLabel3 = [(HUGridHomeCell *)self primaryLabel];
  [primaryLabel3 setAdjustsFontForContentSizeCategory:1];

  primaryLabel4 = [(HUGridHomeCell *)self primaryLabel];
  [primaryLabel4 setNumberOfLines:2];

  v21 = objc_alloc(MEMORY[0x277D75D68]);
  layoutOptions = [(HUGridCell *)self layoutOptions];
  secondaryVibrancyEffect = [layoutOptions secondaryVibrancyEffect];
  v24 = [v21 initWithEffect:secondaryVibrancyEffect];
  [(HUGridHomeCell *)self setSecondaryLabelEffectView:v24];

  secondaryLabelEffectView = [(HUGridHomeCell *)self secondaryLabelEffectView];
  [secondaryLabelEffectView setTranslatesAutoresizingMaskIntoConstraints:0];

  v26 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HUGridHomeCell *)self setSecondaryLabel:v26];

  secondaryLabel = [(HUGridHomeCell *)self secondaryLabel];
  [secondaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  systemWhiteColor3 = [MEMORY[0x277D75348] systemWhiteColor];
  secondaryLabel2 = [(HUGridHomeCell *)self secondaryLabel];
  [secondaryLabel2 setTextColor:systemWhiteColor3];

  secondaryLabel3 = [(HUGridHomeCell *)self secondaryLabel];
  [secondaryLabel3 setAdjustsFontForContentSizeCategory:1];

  secondaryLabelEffectView2 = [(HUGridHomeCell *)self secondaryLabelEffectView];
  contentView2 = [secondaryLabelEffectView2 contentView];
  secondaryLabel4 = [(HUGridHomeCell *)self secondaryLabel];
  [contentView2 addSubview:secondaryLabel4];

  v34 = objc_alloc(MEMORY[0x277D75A68]);
  primaryLabel5 = [(HUGridHomeCell *)self primaryLabel];
  v48[0] = primaryLabel5;
  secondaryLabelEffectView3 = [(HUGridHomeCell *)self secondaryLabelEffectView];
  v48[1] = secondaryLabelEffectView3;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
  v38 = [v34 initWithArrangedSubviews:v37];
  [(HUGridHomeCell *)self setVerticalStackView:v38];

  verticalStackView = [(HUGridHomeCell *)self verticalStackView];
  [verticalStackView setTranslatesAutoresizingMaskIntoConstraints:0];

  verticalStackView2 = [(HUGridHomeCell *)self verticalStackView];
  [verticalStackView2 setAxis:1];

  contentView3 = [(HUGridHomeCell *)self contentView];
  verticalStackView3 = [(HUGridHomeCell *)self verticalStackView];
  [contentView3 addSubview:verticalStackView3];

  v43 = [HUCCInfoMosaicGridView alloc];
  v44 = [(HUCCInfoMosaicGridView *)v43 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(HUGridHomeCell *)self setInfoView:v44];

  contentView4 = [(HUGridHomeCell *)self contentView];
  infoView = [(HUGridHomeCell *)self infoView];
  [contentView4 addSubview:infoView];

  infoView2 = [(HUGridHomeCell *)self infoView];
  [infoView2 setHidden:1];
}

- (id)cellLayoutOptions
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

- (void)setShouldShowHomeName:(BOOL)name
{
  if (self->_shouldShowHomeName != name)
  {
    self->_shouldShowHomeName = name;
    [(HUGridHomeCell *)self _updatePrimaryLabel];
  }
}

- (void)_updatePrimaryLabel
{
  if ([(HUGridHomeCell *)self shouldShowHomeName])
  {
    item = [(HUGridHomeCell *)self item];
    latestResults = [item latestResults];
    v10 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  }

  else
  {
    v10 = _HULocalizedStringWithDefaultValue(@"HUControlCenterHomeTileTitle", @"HUControlCenterHomeTileTitle", 1);
  }

  primaryLabel = [(HUGridHomeCell *)self primaryLabel];
  text = [primaryLabel text];
  v7 = [text isEqualToString:v10];

  if ((v7 & 1) == 0)
  {
    primaryLabel2 = [(HUGridHomeCell *)self primaryLabel];
    [primaryLabel2 setText:v10];

    primaryLabel3 = [(HUGridHomeCell *)self primaryLabel];
    [primaryLabel3 sizeToFit];
  }
}

- (void)setMosaicLayoutGeometry:(id)geometry
{
  geometryCopy = geometry;
  infoView = [(HUGridHomeCell *)self infoView];
  [infoView setMosaicLayoutGeometry:geometryCopy];
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  v15[1] = *MEMORY[0x277D85DE8];
  if ([(HUGridHomeCell *)self shouldShowAsEmptyHome])
  {
    v14.receiver = self;
    v14.super_class = HUGridHomeCell;
    [(HUGridCell *)&v14 updateUIWithAnimation:animationCopy];
LABEL_8:
    primaryLabel = [(HUGridHomeCell *)self primaryLabel];
    [primaryLabel setText:&stru_2823E0EE8];

    goto LABEL_9;
  }

  item = [(HUGridHomeCell *)self item];
  v15[0] = *MEMORY[0x277D13F60];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v7 = [item resultsContainRequiredProperties:v6];

  item2 = [(HUGridHomeCell *)self item];

  if (item2 && (v7 & 1) == 0)
  {
    item3 = [(HUGridHomeCell *)self item];
    NSLog(&cfstr_ItemIsMissingR.isa, item3);
  }

  v14.receiver = self;
  v14.super_class = HUGridHomeCell;
  [(HUGridCell *)&v14 updateUIWithAnimation:animationCopy];
  if ((v7 & 1) == 0)
  {
    goto LABEL_8;
  }

  [(HUGridHomeCell *)self _updatePrimaryLabel];
LABEL_9:
  infoView = [(HUGridHomeCell *)self infoView];
  v12 = _HULocalizedStringWithDefaultValue(@"HUControlCenterEmptyHomeWarning", @"HUControlCenterEmptyHomeWarning", 1);
  v13 = _HULocalizedStringWithDefaultValue(@"HUControlCenterEmptyHomeAction", @"HUControlCenterEmptyHomeAction", 1);
  [infoView updateUIWithInfoText:v12 andActionText:v13];
}

- (void)layoutOptionsDidChange
{
  v12.receiver = self;
  v12.super_class = HUGridHomeCell;
  [(HUGridCell *)&v12 layoutOptionsDidChange];
  [(HUGridHomeCell *)self _invalidateConstraints];
  layoutOptions = [(HUGridCell *)self layoutOptions];
  font = [layoutOptions font];
  primaryLabel = [(HUGridHomeCell *)self primaryLabel];
  [primaryLabel setFont:font];

  layoutOptions2 = [(HUGridCell *)self layoutOptions];
  font2 = [layoutOptions2 font];
  secondaryLabel = [(HUGridHomeCell *)self secondaryLabel];
  [secondaryLabel setFont:font2];

  layoutOptions3 = [(HUGridCell *)self layoutOptions];
  secondaryVibrancyEffect = [layoutOptions3 secondaryVibrancyEffect];
  secondaryLabelEffectView = [(HUGridHomeCell *)self secondaryLabelEffectView];
  [secondaryLabelEffectView setEffect:secondaryVibrancyEffect];
}

- (void)_invalidateConstraints
{
  cellConstraints = [(HUGridHomeCell *)self cellConstraints];

  if (cellConstraints)
  {
    v4 = MEMORY[0x277CCAAD0];
    cellConstraints2 = [(HUGridHomeCell *)self cellConstraints];
    [v4 deactivateConstraints:cellConstraints2];

    [(HUGridHomeCell *)self setCellConstraints:0];
  }

  [(HUGridHomeCell *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  v111[19] = *MEMORY[0x277D85DE8];
  v110.receiver = self;
  v110.super_class = HUGridHomeCell;
  [(HUGridHomeCell *)&v110 updateConstraints];
  cellConstraints = [(HUGridHomeCell *)self cellConstraints];

  if (!cellConstraints)
  {
    iconView = [(HUGridHomeCell *)self iconView];
    leadingAnchor = [iconView leadingAnchor];
    contentView = [(HUGridHomeCell *)self contentView];
    leadingAnchor2 = [contentView leadingAnchor];
    cellLayoutOptions = [(HUGridHomeCell *)self cellLayoutOptions];
    [cellLayoutOptions cellInnerMargin];
    v104 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v4 * 1.5];
    v111[0] = v104;
    iconView2 = [(HUGridHomeCell *)self iconView];
    trailingAnchor = [iconView2 trailingAnchor];
    verticalStackView = [(HUGridHomeCell *)self verticalStackView];
    leadingAnchor3 = [verticalStackView leadingAnchor];
    cellLayoutOptions2 = [(HUGridHomeCell *)self cellLayoutOptions];
    [cellLayoutOptions2 iconInnerHorizontalMargin];
    v98 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3 constant:-v5];
    v111[1] = v98;
    verticalStackView2 = [(HUGridHomeCell *)self verticalStackView];
    trailingAnchor2 = [verticalStackView2 trailingAnchor];
    contentView2 = [(HUGridHomeCell *)self contentView];
    trailingAnchor3 = [contentView2 trailingAnchor];
    cellLayoutOptions3 = [(HUGridHomeCell *)self cellLayoutOptions];
    [cellLayoutOptions3 cellInnerMargin];
    v92 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:v6 * -1.5];
    v111[2] = v92;
    secondaryLabel = [(HUGridHomeCell *)self secondaryLabel];
    leadingAnchor4 = [secondaryLabel leadingAnchor];
    secondaryLabelEffectView = [(HUGridHomeCell *)self secondaryLabelEffectView];
    leadingAnchor5 = [secondaryLabelEffectView leadingAnchor];
    v87 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    v111[3] = v87;
    secondaryLabel2 = [(HUGridHomeCell *)self secondaryLabel];
    trailingAnchor4 = [secondaryLabel2 trailingAnchor];
    secondaryLabelEffectView2 = [(HUGridHomeCell *)self secondaryLabelEffectView];
    trailingAnchor5 = [secondaryLabelEffectView2 trailingAnchor];
    v82 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    v111[4] = v82;
    iconView3 = [(HUGridHomeCell *)self iconView];
    topAnchor = [iconView3 topAnchor];
    contentView3 = [(HUGridHomeCell *)self contentView];
    topAnchor2 = [contentView3 topAnchor];
    cellLayoutOptions4 = [(HUGridHomeCell *)self cellLayoutOptions];
    [cellLayoutOptions4 cellInnerMargin];
    v76 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:?];
    v111[5] = v76;
    iconView4 = [(HUGridHomeCell *)self iconView];
    bottomAnchor = [iconView4 bottomAnchor];
    contentView4 = [(HUGridHomeCell *)self contentView];
    bottomAnchor2 = [contentView4 bottomAnchor];
    cellLayoutOptions5 = [(HUGridHomeCell *)self cellLayoutOptions];
    [cellLayoutOptions5 cellInnerMargin];
    v70 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:-v7];
    v111[6] = v70;
    iconView5 = [(HUGridHomeCell *)self iconView];
    centerYAnchor = [iconView5 centerYAnchor];
    contentView5 = [(HUGridHomeCell *)self contentView];
    centerYAnchor2 = [contentView5 centerYAnchor];
    v65 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v111[7] = v65;
    verticalStackView3 = [(HUGridHomeCell *)self verticalStackView];
    topAnchor3 = [verticalStackView3 topAnchor];
    contentView6 = [(HUGridHomeCell *)self contentView];
    topAnchor4 = [contentView6 topAnchor];
    cellLayoutOptions6 = [(HUGridHomeCell *)self cellLayoutOptions];
    [cellLayoutOptions6 cellInnerMargin];
    v59 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4 constant:?];
    v111[8] = v59;
    verticalStackView4 = [(HUGridHomeCell *)self verticalStackView];
    bottomAnchor3 = [verticalStackView4 bottomAnchor];
    contentView7 = [(HUGridHomeCell *)self contentView];
    bottomAnchor4 = [contentView7 bottomAnchor];
    cellLayoutOptions7 = [(HUGridHomeCell *)self cellLayoutOptions];
    [cellLayoutOptions7 cellInnerMargin];
    v53 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4 constant:-v8];
    v111[9] = v53;
    verticalStackView5 = [(HUGridHomeCell *)self verticalStackView];
    centerYAnchor3 = [verticalStackView5 centerYAnchor];
    contentView8 = [(HUGridHomeCell *)self contentView];
    centerYAnchor4 = [contentView8 centerYAnchor];
    v48 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v111[10] = v48;
    secondaryLabel3 = [(HUGridHomeCell *)self secondaryLabel];
    topAnchor5 = [secondaryLabel3 topAnchor];
    secondaryLabelEffectView3 = [(HUGridHomeCell *)self secondaryLabelEffectView];
    topAnchor6 = [secondaryLabelEffectView3 topAnchor];
    v43 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v111[11] = v43;
    secondaryLabel4 = [(HUGridHomeCell *)self secondaryLabel];
    bottomAnchor5 = [secondaryLabel4 bottomAnchor];
    secondaryLabelEffectView4 = [(HUGridHomeCell *)self secondaryLabelEffectView];
    bottomAnchor6 = [secondaryLabelEffectView4 bottomAnchor];
    v38 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    v111[12] = v38;
    iconView6 = [(HUGridHomeCell *)self iconView];
    widthAnchor = [iconView6 widthAnchor];
    v35 = [widthAnchor constraintEqualToConstant:38.0];
    v111[13] = v35;
    iconView7 = [(HUGridHomeCell *)self iconView];
    heightAnchor = [iconView7 heightAnchor];
    v32 = [heightAnchor constraintEqualToConstant:38.0];
    v111[14] = v32;
    infoView = [(HUGridHomeCell *)self infoView];
    leadingAnchor6 = [infoView leadingAnchor];
    contentView9 = [(HUGridHomeCell *)self contentView];
    leadingAnchor7 = [contentView9 leadingAnchor];
    v27 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    v111[15] = v27;
    infoView2 = [(HUGridHomeCell *)self infoView];
    trailingAnchor6 = [infoView2 trailingAnchor];
    contentView10 = [(HUGridHomeCell *)self contentView];
    trailingAnchor7 = [contentView10 trailingAnchor];
    v22 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
    v111[16] = v22;
    infoView3 = [(HUGridHomeCell *)self infoView];
    topAnchor7 = [infoView3 topAnchor];
    contentView11 = [(HUGridHomeCell *)self contentView];
    topAnchor8 = [contentView11 topAnchor];
    v11 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
    v111[17] = v11;
    infoView4 = [(HUGridHomeCell *)self infoView];
    bottomAnchor7 = [infoView4 bottomAnchor];
    contentView12 = [(HUGridHomeCell *)self contentView];
    bottomAnchor8 = [contentView12 bottomAnchor];
    v16 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
    v111[18] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v111 count:19];
    [(HUGridHomeCell *)self setCellConstraints:v17];

    v18 = MEMORY[0x277CCAAD0];
    cellConstraints2 = [(HUGridHomeCell *)self cellConstraints];
    [v18 activateConstraints:cellConstraints2];
  }
}

@end