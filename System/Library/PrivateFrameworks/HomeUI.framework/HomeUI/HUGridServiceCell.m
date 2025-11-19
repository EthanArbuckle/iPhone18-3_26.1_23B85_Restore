@interface HUGridServiceCell
- (BOOL)disableContinuousIconAnimation;
- (BOOL)showProgressIndicatorAfterDelay;
- (BOOL)showUpdatingStateAfterDelay;
- (CGRect)iconViewTileFrame;
- (CGRect)prefixLabelTileFrame;
- (CGRect)primaryLabelTileFrame;
- (CGRect)secondaryLabelTileFrame;
- (CGRect)tileFrame;
- (HUGridServiceCell)initWithCoder:(id)a3;
- (HUGridServiceCell)initWithFrame:(CGRect)a3;
- (double)backgroundCornerRadius;
- (id)_backgroundColorForSupplementaryIcon;
- (id)_descriptionTextAttributesWithColor:(id)a3;
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
- (void)_updateIconAnimated:(BOOL)a3;
- (void)_updateSecondaryContentDisplayStyle;
- (void)_updateSupplementaryImageViewIfNecessary;
- (void)_updateText;
- (void)displayStyleDidChange;
- (void)dragStateDidChange:(int64_t)a3;
- (void)layoutOptionsDidChange;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)reclaimIconIfPossible;
- (void)renounceIcon;
- (void)setAccessoryView:(id)a3;
- (void)setDisableContinuousIconAnimation:(BOOL)a3;
- (void)setShouldColorDescription:(BOOL)a3;
- (void)setShouldShowRoomName:(BOOL)a3;
- (void)setShowProgressIndicatorAfterDelay:(BOOL)a3;
- (void)setShowUpdatingStateAfterDelay:(BOOL)a3;
- (void)setShowingProgressIndicator:(BOOL)a3;
- (void)setShowingUpdatingState:(BOOL)a3;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUGridServiceCell

- (id)prefixString
{
  v2 = self;
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
  v2 = self;
  v3 = [(HUGridServiceCell *)v2 serviceTextView];
  v4 = [(HUGridServiceCellTextView *)v3 serviceNameComponents];

  if (v4)
  {
    v5 = [(HFServiceNameComponents *)v4 serviceName];

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
  v2 = self;
  v3 = [(HUGridServiceCell *)v2 iconView];
  [(HUIconView *)v3 frame];
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
  v2 = self;
  v3 = [(HUGridServiceCell *)v2 serviceTextView];
  v4 = [(HUGridServiceCellTextView *)v3 shouldShowRoomName];

  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  if (v4)
  {
    v9 = [(HUGridServiceCell *)v2 serviceTextView];
    [(HUGridServiceCellTextView *)v9 frame];
    v5 = v10;
    v6 = v11;
    v7 = v12;

    v13 = [(HUGridServiceCell *)v2 serviceTextView];
    [(HUGridServiceCellTextView *)v13 topToFirstBaselineDistance];
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
  v2 = self;
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
  v2 = self;
  v3 = [(HUGridCell *)v2 layoutOptions];
  if (v3)
  {
    v4 = v3;
    [(HUGridCellLayoutOptions *)v3 cellCornerRadius];
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
  v2 = self;
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

- (HUGridServiceCell)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HUGridServiceCell;
  v3 = [(HUGridCell *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(HUGridServiceCell *)v3 _setupServiceCell];
  }

  return v4;
}

- (HUGridServiceCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = HUGridServiceCell;
  v3 = [(HUGridCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [(HUGridServiceCell *)self iconView];
  [v3 updateWithIconDescriptor:0 displayStyle:-[HUGridCell iconDisplayStyle](self animated:{"iconDisplayStyle"), 0}];

  [(HUGridServiceCell *)self setAccessoryView:0];
  [(HUGridServiceCell *)self setShouldColorDescription:1];
  [(HUGridServiceCell *)self setHasUpdatedUISinceLastReuse:0];
  self->_shouldShowRoomName = 1;
}

- (void)_setupServiceCell
{
  v3 = objc_alloc_init(MEMORY[0x277D180D0]);
  [(HUGridServiceCell *)self setIconView:v3];

  v4 = [objc_opt_class() _iconTintColor];
  v5 = [(HUGridServiceCell *)self iconView];
  [v5 setTintColor:v4];

  v6 = [(HUGridServiceCell *)self contentView];
  v7 = [(HUGridServiceCell *)self iconView];
  [v6 addSubview:v7];

  v8 = objc_alloc_init(MEMORY[0x277D755E8]);
  [(HUGridServiceCell *)self setSupplementaryImageView:v8];

  v9 = [(HUGridServiceCell *)self contentView];
  v10 = [(HUGridServiceCell *)self supplementaryImageView];
  [v9 addSubview:v10];

  v11 = [(HUGridServiceCell *)self supplementaryImageView];
  [v11 setHidden:1];

  [(HUGridServiceCell *)self _setupCommonServiceCell];
}

- (void)_setupCommonServiceCell
{
  [(HUGridServiceCell *)self setShouldColorDescription:1];
  v3 = [MEMORY[0x277D75348] systemGrayColor];
  [(HUGridServiceCell *)self setDefaultDescriptionColor:v3];

  [(HUGridServiceCell *)self setShouldShowLoadingState:1];
  self->_shouldShowRoomName = 1;
  v4 = objc_alloc_init(HUGridServiceCellTextView);
  [(HUGridServiceCell *)self setServiceTextView:v4];

  v5 = [(HUGridCell *)self gridForegroundContentView];
  v6 = [(HUGridServiceCell *)self serviceTextView];
  [v5 addSubview:v6];

  v7 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HUGridServiceCell *)self setColoredDescriptionLabel:v7];

  v8 = [(HUGridServiceCell *)self coloredDescriptionLabel];
  [v8 setNumberOfLines:1];

  LODWORD(v8) = [MEMORY[0x277D14670] isHomeControlService];
  v9 = [(HUGridServiceCell *)self coloredDescriptionLabel];
  [v9 setAllowsDefaultTighteningForTruncation:v8 ^ 1];

  LODWORD(v8) = [MEMORY[0x277D14670] isHomeControlService];
  v10 = [(HUGridServiceCell *)self coloredDescriptionLabel];
  [v10 setAdjustsFontSizeToFitWidth:v8 ^ 1];

  +[HUGridServiceCellTextView minimumDescriptionScaleFactor];
  v12 = v11;
  v13 = [(HUGridServiceCell *)self coloredDescriptionLabel];
  [v13 setMinimumScaleFactor:v12];

  v14 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
  [(HUGridServiceCell *)self setDescriptionLabelEffectView:v14];

  v15 = [(HUGridServiceCell *)self descriptionLabelEffectView];
  v16 = [v15 contentView];
  v17 = [(HUGridServiceCell *)self coloredDescriptionLabel];
  [v16 addSubview:v17];

  v18 = [(HUGridServiceCell *)self contentView];
  v19 = [(HUGridServiceCell *)self descriptionLabelEffectView];
  [v18 addSubview:v19];

  v20 = [(HUGridServiceCell *)self descriptionLabelEffectView];
  [v20 setHidden:1];

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

  v24 = [MEMORY[0x277D75348] systemGrayColor];
  v25 = [(HUGridServiceCell *)self activityIndicator];
  [v25 setColor:v24];

  v26 = [(HUGridServiceCell *)self activityIndicator];
  [v26 setHidesWhenStopped:1];

  [(HUGridServiceCell *)self _updateAccessoryView];
}

- (void)setAccessoryView:(id)a3
{
  [(HUGridServiceCell *)self setOverrideAccessoryView:a3];

  [(HUGridServiceCell *)self _updateAccessoryView];
}

- (BOOL)showUpdatingStateAfterDelay
{
  if ([(HUGridServiceCell *)self showingUpdatingState])
  {
    return 1;
  }

  v4 = [(HUGridServiceCell *)self showUpdatingStateAfterDelayToken];
  v3 = v4 != 0;

  return v3;
}

- (void)setShowUpdatingStateAfterDelay:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUGridServiceCell *)self showUpdatingStateAfterDelayToken];
  v6 = v5;
  if (v3)
  {

    if (!v6)
    {
      objc_initWeak(&location, self);
      v7 = [MEMORY[0x277D2C938] mainThreadScheduler];
      v9 = MEMORY[0x277D85DD0];
      v10 = 3221225472;
      v11 = __52__HUGridServiceCell_setShowUpdatingStateAfterDelay___block_invoke;
      v12 = &unk_277DB8770;
      objc_copyWeak(&v13, &location);
      v8 = [v7 afterDelay:&v9 performBlock:1.0];
      [(HUGridServiceCell *)self setShowUpdatingStateAfterDelayToken:v8, v9, v10, v11, v12];

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    [v5 cancel];

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

  v4 = [(HUGridServiceCell *)self showProgressIndicatorAfterDelayToken];
  v3 = v4 != 0;

  return v3;
}

- (void)setShowProgressIndicatorAfterDelay:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUGridServiceCell *)self showProgressIndicatorAfterDelayToken];
  v6 = v5;
  if (v3)
  {

    if (!v6)
    {
      objc_initWeak(&location, self);
      v7 = [MEMORY[0x277D2C938] mainThreadScheduler];
      v9 = MEMORY[0x277D85DD0];
      v10 = 3221225472;
      v11 = __56__HUGridServiceCell_setShowProgressIndicatorAfterDelay___block_invoke;
      v12 = &unk_277DB8770;
      objc_copyWeak(&v13, &location);
      v8 = [v7 afterDelay:&v9 performBlock:0.5];
      [(HUGridServiceCell *)self setShowProgressIndicatorAfterDelayToken:v8, v9, v10, v11, v12];

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    [v5 cancel];

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

- (void)setShowingUpdatingState:(BOOL)a3
{
  self->_showingUpdatingState = a3;
  [(HUGridServiceCell *)self _updateText];
  [(HUGridServiceCell *)self _updateAccessoryView];
  v4 = [(HUGridServiceCell *)self showUpdatingStateAfterDelayToken];
  [v4 cancel];

  [(HUGridServiceCell *)self setShowUpdatingStateAfterDelayToken:0];
}

- (void)setShowingProgressIndicator:(BOOL)a3
{
  v3 = a3;
  self->_showingProgressIndicator = a3;
  [(HUGridServiceCell *)self _updateAccessoryView];
  v5 = [(HUGridServiceCell *)self activityIndicator];
  v6 = v5;
  if (v3)
  {
    [v5 startAnimating];
  }

  else
  {
    [v5 stopAnimating];
  }

  v7 = [(HUGridServiceCell *)self showProgressIndicatorAfterDelayToken];
  [v7 cancel];

  [(HUGridServiceCell *)self setShowProgressIndicatorAfterDelayToken:0];
}

- (BOOL)disableContinuousIconAnimation
{
  v2 = [(HUGridServiceCell *)self iconView];
  v3 = [v2 disableContinuousAnimation];

  return v3;
}

- (void)setDisableContinuousIconAnimation:(BOOL)a3
{
  v3 = a3;
  v4 = [(HUGridServiceCell *)self iconView];
  [v4 setDisableContinuousAnimation:v3];
}

- (void)setShouldColorDescription:(BOOL)a3
{
  if (self->_shouldColorDescription != a3)
  {
    self->_shouldColorDescription = a3;
    v4 = [(HUGridServiceCell *)self item];

    if (v4)
    {

      [(HUGridServiceCell *)self updateUIWithAnimation:0];
    }
  }
}

- (void)setShouldShowRoomName:(BOOL)a3
{
  if (self->_shouldShowRoomName != a3)
  {
    self->_shouldShowRoomName = a3;
    v4 = [(HUGridServiceCell *)self item];

    if (v4)
    {

      [(HUGridServiceCell *)self updateUIWithAnimation:0];
    }
  }
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v3 = a3;
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = [(HUGridServiceCell *)self item];
  v18[0] = *MEMORY[0x277D13E88];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v7 = [v5 resultsContainRequiredProperties:v6];

  if (v7)
  {
    v17.receiver = self;
    v17.super_class = HUGridServiceCell;
    [(HUGridCell *)&v17 updateUIWithAnimation:v3];
    [(HUGridServiceCell *)self _updateIconAnimated:v3];
    if ([(HUGridServiceCell *)self shouldShowLoadingState])
    {
      v8 = [(HUGridServiceCell *)self item];
      v9 = ([v8 loadingState] >> 1) & 1;
    }

    else
    {
      v9 = 0;
    }

    if ([(HUGridServiceCell *)self shouldShowLoadingState])
    {
      v11 = [(HUGridServiceCell *)self item];
      v12 = [v11 loadingState] & 1;
    }

    else
    {
      v12 = 0;
    }

    if ([(HUGridServiceCell *)self hasUpdatedUISinceLastReuse])
    {
      [(HUGridServiceCell *)self setShowProgressIndicatorAfterDelay:v9];
      v13 = [(HUGridServiceCell *)self item];
      v14 = [v13 latestResults];
      v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277D14150]];
      v16 = [v15 BOOLValue];

      if (!v16)
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

  v10 = [(HUGridServiceCell *)self serviceTextView];
  [v10 setServiceNameComponents:0];

  [(HUGridServiceCell *)self _updateIconAnimated:v3];
LABEL_15:
  [(HUGridServiceCell *)self setHasUpdatedUISinceLastReuse:1];
}

- (void)renounceIcon
{
  v2 = [(HUGridServiceCell *)self iconView];
  [v2 renounceIconIfPossible];
}

- (void)reclaimIconIfPossible
{
  v2 = [(HUGridServiceCell *)self iconView];
  [v2 reclaimIconIfPossible];
}

- (void)_updateIconAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUGridCell *)self layoutOptions];
  v6 = [v5 iconContentMode];
  v7 = [(HUGridServiceCell *)self iconView];
  [v7 setContentMode:v6];

  v11 = [(HUGridServiceCell *)self iconView];
  v8 = [(HUGridServiceCell *)self item];
  v9 = [v8 latestResults];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D13E88]];
  [v11 updateWithIconDescriptor:v10 displayStyle:-[HUGridCell iconDisplayStyle](self animated:{"iconDisplayStyle"), v3}];
}

- (void)layoutOptionsDidChange
{
  v14.receiver = self;
  v14.super_class = HUGridServiceCell;
  [(HUGridCell *)&v14 layoutOptionsDidChange];
  v3 = [(HUGridCell *)self layoutOptions];
  v4 = [v3 font];
  v5 = [(HUGridServiceCell *)self serviceTextView];
  [v5 setFont:v4];

  v6 = [(HUGridCell *)self layoutOptions];
  [v6 lineSpacing];
  v8 = v7;
  v9 = [(HUGridServiceCell *)self serviceTextView];
  [v9 setLineHeight:v8];

  v10 = [(HUGridCell *)self layoutOptions];
  v11 = [v10 iconVibrancyEffect];
  v12 = v11;
  if (!v11)
  {
    v5 = [(HUGridCell *)self layoutOptions];
    v12 = [v5 vibrancyEffect];
  }

  v13 = [(HUGridServiceCell *)self iconView];
  [v13 setVibrancyEffect:v12];

  if (!v11)
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
  v3 = [(HUGridCell *)self layoutOptions];
  [v3 cellInnerMargin];
  v5 = v4;

  v6 = [(HUGridCell *)self layoutOptions];
  v7 = [v6 shouldShowIconOnly];

  if (v7)
  {
    v8 = [(HUGridServiceCell *)self contentView];
    [v8 bounds];
    CGRectInset(v126, v5, v5);

    v9 = [(HUGridServiceCell *)self contentView];
    [v9 bounds];
    UIRectCenteredIntegralRect();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [(HUGridServiceCell *)self iconView];
    [v18 setFrame:{v11, v13, v15, v17}];

    [(HUGridServiceCell *)self _updateSupplementaryImageViewIfNecessary];
  }

  else
  {
    v19 = [(HUGridServiceCell *)self effectiveUserInterfaceLayoutDirection];
    v20 = [(HUGridCell *)self layoutOptions];
    if ([v20 shouldShowDescription])
    {
      v21 = v5;
    }

    else
    {
      v21 = v5 * 0.8;
    }

    v22 = [(HUGridServiceCell *)self contentView];
    [v22 bounds];
    MaxY = CGRectGetMaxY(v127);

    v24 = [(HUGridServiceCell *)self serviceTextView];
    [v24 sizeToFit];

    v25 = [(HUGridCell *)self layoutOptions];
    v26 = [v25 shouldShowDescription];
    v27 = [(HUGridServiceCell *)self serviceTextView];
    [v27 frame];
    Height = CGRectGetHeight(v128);
    if ((v26 & 1) == 0)
    {
      v29 = [(HUGridServiceCell *)self serviceTextView];
      [v29 lineHeight];
      Height = Height - v30;
    }

    v31 = MaxY - v21;

    v32 = [(HUGridCell *)self layoutOptions];
    v33 = [v32 shouldShowDescription];
    v34 = [(HUGridServiceCell *)self serviceTextView];
    v35 = v34;
    if (v33)
    {
      [v34 lastBaselineToBottomDistance];
    }

    else
    {
      [v34 lineHeight];
    }

    v37 = v36;

    v38 = [(HUGridServiceCell *)self contentView];
    [v38 bounds];
    v39 = v5 + CGRectGetMinX(v129);
    v40 = [(HUGridServiceCell *)self serviceTextView];
    [v40 frame];
    v41 = CGRectGetHeight(v130);
    v42 = HURoundToScreenScale(v37 + v31 - v41);
    v43 = [(HUGridServiceCell *)self contentView];
    [v43 bounds];
    v44 = CGRectGetWidth(v131) + v5 * -2.0;
    v45 = [(HUGridServiceCell *)self serviceTextView];
    [v45 setFrame:{v39, v42, v44, Height}];

    v46 = [(HUGridCell *)self layoutOptions];
    LODWORD(v40) = [v46 shouldShowDescription];

    if (v40)
    {
      v47 = [(HUGridServiceCell *)self coloredDescriptionLabel];
      [v47 sizeToFit];

      v48 = [(HUGridServiceCell *)self contentView];
      [v48 bounds];
      v49 = v5 + CGRectGetMinX(v132);
      v50 = [(HUGridServiceCell *)self coloredDescriptionLabel];
      [v50 _lastLineBaseline];
      v52 = HURoundToScreenScale(v31 - v51);
      v53 = [(HUGridServiceCell *)self contentView];
      [v53 bounds];
      v54 = CGRectGetWidth(v133) + v5 * -2.0;
      v55 = [(HUGridServiceCell *)self coloredDescriptionLabel];
      [v55 bounds];
      v56 = CGRectGetHeight(v134);
      v57 = [(HUGridServiceCell *)self descriptionLabelEffectView];
      [v57 setFrame:{v49, v52, v54, v56}];

      v58 = [(HUGridServiceCell *)self descriptionLabelEffectView];
      [v58 bounds];
      v60 = v59;
      v62 = v61;
      v64 = v63;
      v66 = v65;
      v67 = [(HUGridServiceCell *)self coloredDescriptionLabel];
      [v67 setFrame:{v60, v62, v64, v66}];
    }

    v68 = [(HUGridServiceCell *)self item];
    v69 = *MEMORY[0x277D13E88];
    v125[0] = *MEMORY[0x277D13E88];
    v70 = [MEMORY[0x277CBEA60] arrayWithObjects:v125 count:1];
    v71 = [v68 resultsContainRequiredProperties:v70];

    if (v71)
    {
      v72 = [(HUGridServiceCell *)self item];
      v73 = [v72 latestResults];
      v74 = [v73 objectForKeyedSubscript:v69];

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

    v77 = [(HUGridServiceCell *)self serviceTextView];
    [v77 frame];
    v78 = CGRectGetMinY(v135) - v5;
    v79 = [(HUGridCell *)self layoutOptions];
    [v79 iconToTitleSpacing];
    v81 = v78 - v80;

    v82 = [(HUGridCell *)self layoutOptions];
    [v82 iconSize];
    v84 = v83;

    if (v81 >= v84)
    {
      v85 = v84;
    }

    else
    {
      v85 = v81;
    }

    v86 = [(HUGridCell *)self layoutOptions];
    [v86 iconToTitleSpacing];
    v88 = v5 + v85 + v87;

    v89 = [(HUGridServiceCell *)self contentView];
    [v89 bounds];
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
      v94 = [(HUGridServiceCell *)self iconView];
      v95 = v94;
      if (v85 >= v88)
      {
        v96 = v88;
      }

      else
      {
        v96 = v85;
      }

      [v94 sizeThatFits:{v92, v96}];
      v91 = v97;
      v93 = v98;
    }

    if ((v76 & 1) != 0 && v92 * 4.0 / 3.0 < v91)
    {
      v91 = v92 * 4.0 / 3.0;
    }

    v99 = [(HUGridServiceCell *)self contentView];
    [v99 bounds];
    v100 = v5 + CGRectGetMinY(v136);

    if (isKindOfClass)
    {
      v100 = v100 + (v88 - v85) * -0.5;
    }

    v101 = [(HUGridServiceCell *)self contentView];
    [v101 bounds];
    if (v19 == 1)
    {
      v106 = CGRectGetMaxX(*&v102) - v5 - v91;
    }

    else
    {
      v106 = v5 + CGRectGetMinX(*&v102);
    }

    v107 = [(HUGridServiceCell *)self iconView];
    [v107 setFrame:{v106, v100, v91, v93}];

    [(HUGridServiceCell *)self _updateSupplementaryImageViewIfNecessary];
    v108 = [(HUGridServiceCell *)self accessoryView];
    [v108 sizeToFit];

    v109 = [(HUGridServiceCell *)self accessoryView];
    [v109 frame];
    v110 = CGRectGetHeight(v137);

    if (v110 >= v85)
    {
      v110 = v85;
    }

    v111 = [(HUGridServiceCell *)self accessoryView];
    [v111 frame];
    Width = CGRectGetWidth(v138);
    v113 = [(HUGridServiceCell *)self accessoryView];
    [v113 frame];
    v114 = Width * (v110 / CGRectGetHeight(v139));

    v115 = [(HUGridServiceCell *)self contentView];
    [v115 bounds];
    if (v19 == 1)
    {
      v120 = v5 + CGRectGetMinX(*&v116);
    }

    else
    {
      v120 = CGRectGetMaxX(*&v116) - v5 - v114;
    }

    v121 = [(HUGridServiceCell *)self contentView];
    [v121 bounds];
    v122 = v5 + CGRectGetMinY(v140);
    v123 = [(HUGridServiceCell *)self accessoryView];
    [v123 setFrame:{v120, v122, v114, v110}];
  }
}

- (void)_updateText
{
  v26 = [(HUGridServiceCell *)self _textConfiguration];
  v3 = [v26 nameComponents];
  v4 = [(HUGridServiceCell *)self serviceTextView];
  [v4 setServiceNameComponents:v3];

  v5 = [(HUGridServiceCell *)self shouldShowRoomName];
  v6 = [(HUGridServiceCell *)self serviceTextView];
  [v6 setShouldShowRoomName:v5];

  v7 = [(HUGridCell *)self layoutOptions];
  LODWORD(v6) = [v7 shouldShowDescription];

  if (!v6)
  {
    v11 = [(HUGridServiceCell *)self descriptionLabelEffectView];
    [v11 setHidden:1];

    v12 = [(HUGridServiceCell *)self coloredDescriptionLabel];
    [v12 setAttributedText:0];
LABEL_7:

    v19 = [(HUGridServiceCell *)self serviceTextView];
    [v19 setDescriptionText:0];
    goto LABEL_8;
  }

  v8 = [v26 descriptionTextEffect];
  v9 = [(HUGridServiceCell *)self descriptionLabelEffectView];
  [v9 setEffect:v8];

  v10 = [v26 descriptionTextColor];
  if (v10)
  {

LABEL_6:
    v14 = [v26 descriptionText];
    v15 = [v26 descriptionTextColor];
    v16 = [(HUGridServiceCell *)self _descriptionTextAttributesWithColor:v15];
    v17 = [v14 stringWithAttributes:v16];
    v18 = [(HUGridServiceCell *)self coloredDescriptionLabel];
    [v18 setAttributedText:v17];

    v12 = [(HUGridServiceCell *)self descriptionLabelEffectView];
    [v12 setHidden:0];
    goto LABEL_7;
  }

  v13 = [v26 descriptionTextEffect];

  if (v13)
  {
    goto LABEL_6;
  }

  v22 = [(HUGridServiceCell *)self descriptionLabelEffectView];
  [v22 setHidden:1];

  v19 = [v26 descriptionText];
  v23 = [v19 stringWithAttributes:MEMORY[0x277CBEC10]];
  v24 = [v23 string];
  v25 = [(HUGridServiceCell *)self serviceTextView];
  [v25 setDescriptionText:v24];

LABEL_8:
  v20 = [v26 nameTextColor];
  v21 = [(HUGridServiceCell *)self serviceTextView];
  [v21 setTextColor:v20];
}

- (id)_descriptionTextAttributesWithColor:(id)a3
{
  v4 = MEMORY[0x277D74240];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [(HUGridCell *)self layoutOptions];
  [v7 lineSpacing];
  [v6 setMinimumLineHeight:?];

  v8 = [(HUGridCell *)self layoutOptions];
  [v8 lineSpacing];
  [v6 setMaximumLineHeight:?];

  [v6 setLineBreakMode:4];
  [v6 setAllowsDefaultTighteningForTruncation:{objc_msgSend(MEMORY[0x277D14670], "isHomeControlService") ^ 1}];
  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = [(HUGridCell *)self layoutOptions];
  v11 = [v10 font];
  [v9 na_safeSetObject:v11 forKey:*MEMORY[0x277D740A8]];

  [v9 na_safeSetObject:v5 forKey:*MEMORY[0x277D740C0]];
  [v9 na_safeSetObject:v6 forKey:*MEMORY[0x277D74118]];

  return v9;
}

- (id)_textConfiguration
{
  v3 = objc_alloc_init(HUGridServiceCellTextConfiguration);
  v4 = [(HUGridServiceCell *)self item];
  v5 = [v4 latestResults];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D13F00]];
  [(HUGridServiceCellTextConfiguration *)v3 setNameComponents:v6];

  v7 = [(HUGridServiceCell *)self item];
  v8 = [v7 latestResults];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
  [(HUGridServiceCellTextConfiguration *)v3 setDescriptionText:v9];

  v10 = [(HUGridServiceCell *)self item];
  v11 = [v10 latestResults];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277D13E28]];

  if (v12)
  {
    v13 = [v12 integerValue] == 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = [(HUGridServiceCell *)self item];
  v15 = [v14 latestResults];
  v16 = [v15 objectForKeyedSubscript:*MEMORY[0x277D13EC8]];

  if (v16)
  {
    v17 = [v16 integerValue] < 2;
  }

  else
  {
    v17 = 1;
  }

  v18 = [(HUGridCell *)self backgroundState];
  if (v18 == 1)
  {
    v19 = [(HUGridServiceCell *)self defaultDescriptionColor];
    [(HUGridServiceCellTextConfiguration *)v3 setDescriptionTextColor:v19];
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

    v20 = _HULocalizedStringWithDefaultValue(@"HUGridServiceCellReadingDescription", @"HUGridServiceCellReadingDescription", 1);
    [(HUGridServiceCellTextConfiguration *)v3 setDescriptionText:v20];
    goto LABEL_22;
  }

  if ([(HUGridServiceCell *)self shouldColorDescription])
  {
    if (v18 != 1 || v17)
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
      v20 = [MEMORY[0x277D75348] systemRedColor];
      [(HUGridServiceCellTextConfiguration *)v3 setDescriptionTextColor:v20];
LABEL_22:
    }
  }

LABEL_23:
  v23 = [(HUGridServiceCellTextConfiguration *)v3 descriptionTextColor];
  if (v23)
  {
LABEL_31:

    goto LABEL_32;
  }

  v24 = [(HUGridCell *)self contentEffect];
  v25 = [(HUGridCell *)self secondaryContentEffect];
  v23 = v24;
  v26 = v25;
  v27 = v26;
  if (v23 == v26)
  {

    goto LABEL_31;
  }

  if (!v23)
  {

    goto LABEL_30;
  }

  v28 = [v23 isEqual:v26];

  if ((v28 & 1) == 0)
  {
LABEL_30:
    v23 = [(HUGridCell *)self secondaryContentEffect];
    [(HUGridServiceCellTextConfiguration *)v3 setDescriptionTextEffect:v23];
    goto LABEL_31;
  }

LABEL_32:

  return v3;
}

- (void)_updateSecondaryContentDisplayStyle
{
  v3 = [(HUGridCell *)self iconDisplayStyle]== 2;
  v4 = [(HUGridServiceCell *)self serviceTextView];
  [v4 setTextColorFollowsTintColor:v3];

  [(HUGridCell *)self secondaryContentDimmingFactor];
  v6 = v5;
  v7 = [(HUGridServiceCell *)self serviceTextView];
  [v7 setDescriptionTextColorDimmingFactor:v6];

  [(HUGridCell *)self secondaryContentDimmingFactor];
  v9 = v8;
  v10 = [(HUGridServiceCell *)self exclamationView];
  v11 = [v10 innerContentView];
  [v11 setAlpha:v9];

  v12 = [(HUGridCell *)self secondaryContentEffect];
  v13 = [(HUGridServiceCell *)self exclamationView];
  [v13 setEffect:v12];

  [(HUGridCell *)self secondaryContentDimmingFactor];
  v15 = v14;
  v16 = [(HUGridServiceCell *)self firmwareUpdateView];
  v17 = [v16 innerContentView];
  [v17 setAlpha:v15];

  v19 = [(HUGridCell *)self secondaryContentEffect];
  v18 = [(HUGridServiceCell *)self firmwareUpdateView];
  [v18 setEffect:v19];
}

- (void)_updateAccessoryView
{
  v3 = [(HUGridCell *)self layoutOptions];
  v4 = [v3 shouldShowAccessoryView];

  if (!v4)
  {
    return;
  }

  v5 = [(HUGridServiceCell *)self overrideAccessoryView];
  if (!v5)
  {
    if ([(HUGridServiceCell *)self showingProgressIndicator])
    {
      v6 = [(HUGridServiceCell *)self activityIndicator];
    }

    else
    {
      v7 = [(HUGridServiceCell *)self item];
      v8 = [v7 latestResults];
      v9 = *MEMORY[0x277D13DE0];
      v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277D13DE0]];
      v11 = [v10 integerValue];

      if (v11 == 8)
      {
        [(HUGridServiceCell *)self _createFirmwareUpdateViewIfNecessary];
        v6 = [(HUGridServiceCell *)self firmwareUpdateView];
      }

      else
      {
        if (-[HUGridServiceCell showingUpdatingState](self, "showingUpdatingState") || (-[HUGridServiceCell item](self, "item"), v14 = objc_claimAutoreleasedReturnValue(), [v14 latestResults], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "objectForKeyedSubscript:", v9), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "integerValue"), v16, v15, v14, v17 != 1))
        {
          v5 = 0;
          goto LABEL_9;
        }

        [(HUGridServiceCell *)self _createExclamationViewIfNecessary];
        v6 = [(HUGridServiceCell *)self exclamationView];
      }
    }

    v5 = v6;
  }

LABEL_9:
  accessoryView = self->_accessoryView;
  obj = v5;
  if (v5 != accessoryView)
  {
    [(UIView *)accessoryView removeFromSuperview];
    objc_storeStrong(&self->_accessoryView, obj);
    v13 = [(HUGridServiceCell *)self contentView];
    [v13 addSubview:self->_accessoryView];

    [(HUGridServiceCell *)self setNeedsLayout];
  }

  [(HUGridServiceCell *)self _updateExclamationViewColor];
}

- (void)_createExclamationViewIfNecessary
{
  v3 = [(HUGridServiceCell *)self exclamationView];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x277D755E8]);
    v5 = [MEMORY[0x277D755B8] hu_exclamationMarkImage];
    v11 = [v4 initWithImage:v5];

    v6 = [MEMORY[0x277D75348] hf_keyColor];
    [v11 setTintColor:v6];

    v7 = [HUVisualEffectContainerView alloc];
    v8 = [(HUGridCell *)self contentEffect];
    v9 = [(HUVisualEffectContainerView *)v7 initWithEffect:v8];
    [(HUGridServiceCell *)self setExclamationView:v9];

    v10 = [(HUGridServiceCell *)self exclamationView];
    [v10 setInnerContentView:v11];
  }
}

- (void)_updateExclamationViewColor
{
  v3 = [(HUGridServiceCell *)self item];
  v4 = [v3 latestResults];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D13DD8]];
  v6 = [v5 integerValue];

  if ([(HUGridCell *)self iconDisplayStyle]== 3)
  {
    v7 = [objc_opt_class() _iconTintColor];
  }

  else
  {
    v7 = 0;
  }

  v11 = v7;
  if (v6)
  {
    v8 = [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;
  v10 = [(HUGridServiceCell *)self exclamationView];
  [v10 setTintColor:v9];
}

- (void)_updateSupplementaryImageViewIfNecessary
{
  v3 = [(HUGridServiceCell *)self item];
  if ([v3 conformsToProtocol:&unk_28251B0C8])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 accessories];

  v44 = [v6 anyObject];

  v7 = [(HUGridServiceCell *)self effectiveUserInterfaceLayoutDirection];
  v8 = [v44 hf_siriEndpointProfile];
  if (v8 && (v9 = v8, v10 = [v44 hf_needsOnboarding], v9, (v10 & 1) == 0))
  {
    objc_opt_class();
    v15 = [(HUGridServiceCell *)self item];
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    v18 = [v44 hf_siriEndpointProfile];
    v19 = [v18 manuallyDisabled];

    if ((v19 & 1) == 0 && ([v17 shouldShowMutedMicIcon] & 1) == 0)
    {

LABEL_22:
      v20 = [(HUGridServiceCell *)self supplementaryImageView];
      [v20 setHidden:1];
      goto LABEL_23;
    }
  }

  else
  {
    if (![v44 hf_isHomePod])
    {
      goto LABEL_22;
    }

    objc_opt_class();
    v11 = [(HUGridServiceCell *)self item];
    v12 = (objc_opt_isKindOfClass() & 1) != 0 ? v11 : 0;
    v13 = v12;

    v14 = [v13 shouldShowMutedMicIcon];
    if (!v14)
    {
      goto LABEL_22;
    }
  }

  v20 = [(HUGridServiceCell *)self _backgroundColorForSupplementaryIcon];
  v21 = MEMORY[0x277D755B8];
  v22 = [MEMORY[0x277D75348] systemRedColor];
  v23 = [v21 hu_mutedMicrophoneImageInCircleWithTintColor:v22 backgroundColor:v20];

  v24 = [(HUGridServiceCell *)self supplementaryImageView];
  [v24 setImage:v23];

  v25 = [(HUGridServiceCell *)self iconView];
  [v25 frame];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v34 = [(HUGridServiceCell *)self supplementaryImageView];
  v35 = [v34 image];
  [v35 size];
  v37 = v36;
  v39 = v38;

  v40 = 0.0;
  if (v7 != 1)
  {
    v40 = v31;
  }

  v41 = v27 + v40 + v37 * -0.5;
  v42 = [(HUGridServiceCell *)self supplementaryImageView];
  [v42 setFrame:{v41, v29 + v33 + v39 / -1.5, v37, v39}];

  v43 = [(HUGridServiceCell *)self supplementaryImageView];
  [v43 setHidden:0];

LABEL_23:
}

- (id)_backgroundColorForSupplementaryIcon
{
  v3 = [MEMORY[0x277D75348] colorWithWhite:0.85 alpha:1.0];
  if ([MEMORY[0x277D14670] isSpringBoard])
  {
    v4 = 1;
  }

  else
  {
    v4 = [MEMORY[0x277D14670] isHomeControlService];
  }

  v5 = [(HUGridServiceCell *)self traitCollection];
  v6 = [v5 userInterfaceStyle];

  if (v6 == 2 || v4)
  {
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.3 alpha:1.0];

    v3 = v7;
  }

  if ([(HUGridCell *)self backgroundState]== 1)
  {
    v8 = [MEMORY[0x277D75348] systemWhiteColor];
  }

  else
  {
    v8 = v3;
  }

  v9 = v8;

  return v9;
}

- (void)_createFirmwareUpdateViewIfNecessary
{
  v3 = [(HUGridServiceCell *)self firmwareUpdateView];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x277D755E8]);
    v5 = HUImageNamed(@"firmwareupdate");
    v6 = [v5 imageWithRenderingMode:2];
    v12 = [v4 initWithImage:v6];

    v7 = [MEMORY[0x277D75348] systemGrayColor];
    [v12 setTintColor:v7];

    v8 = [HUVisualEffectContainerView alloc];
    v9 = [(HUGridCell *)self contentEffect];
    v10 = [(HUVisualEffectContainerView *)v8 initWithEffect:v9];
    [(HUGridServiceCell *)self setFirmwareUpdateView:v10];

    v11 = [(HUGridServiceCell *)self firmwareUpdateView];
    [v11 setInnerContentView:v12];
  }
}

- (void)dragStateDidChange:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = HUGridServiceCell;
  [(HUGridServiceCell *)&v6 dragStateDidChange:?];
  if (a3)
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