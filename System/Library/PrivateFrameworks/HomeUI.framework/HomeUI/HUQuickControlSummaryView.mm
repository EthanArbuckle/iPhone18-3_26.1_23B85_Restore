@interface HUQuickControlSummaryView
- (HUQuickControlSummaryView)initWithFrame:(CGRect)frame;
- (void)baseIconViewDidUpdateConfiguration:(id)configuration;
- (void)setBaseIconView:(id)view;
- (void)setImage:(id)image;
- (void)setMicrophoneStatusText:(id)text;
- (void)setPrimaryText:(id)text;
- (void)setSecondaryText:(id)text;
- (void)updateConstraints;
@end

@implementation HUQuickControlSummaryView

- (HUQuickControlSummaryView)initWithFrame:(CGRect)frame
{
  v38.receiver = self;
  v38.super_class = HUQuickControlSummaryView;
  v3 = [(HUQuickControlSummaryView *)&v38 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    if ([MEMORY[0x277D14CE8] shouldUseProxHandOffMaterials])
    {
      mEMORY[0x277D14990] = [MEMORY[0x277D14990] sharedInstance];
      objc_opt_class();
      lastIdentifier = [mEMORY[0x277D14990] lastIdentifier];
      if (objc_opt_isKindOfClass())
      {
        v6 = lastIdentifier;
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;

      objc_opt_class();
      lastIdentifier2 = [mEMORY[0x277D14990] lastIdentifier];
      if (objc_opt_isKindOfClass())
      {
        v9 = lastIdentifier2;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;

      if (v7)
      {
        v11 = v7;
      }

      else
      {
        v11 = v10;
      }

      assetType = [v11 assetType];
      if (assetType)
      {
        v20 = MEMORY[0x277D435D0];
        lastDisambiguationContext = [mEMORY[0x277D14990] lastDisambiguationContext];
        activity = [lastDisambiguationContext activity];
        assetType = [v20 composedImageFor:activity assetType:assetType];
      }

      v23 = objc_alloc_init(MEMORY[0x277D755E8]);
      imageView = v3->_imageView;
      v3->_imageView = v23;

      [(UIImageView *)v3->_imageView setContentMode:1];
      [(UIImageView *)v3->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(HUQuickControlSummaryView *)v3 addSubview:v3->_imageView];
      if (assetType)
      {
        [(HUQuickControlSummaryView *)v3 setImage:assetType];
      }
    }

    else
    {
      if ([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation])
      {
        v12 = objc_alloc_init(MEMORY[0x277D180D0]);
        iconView = v3->_iconView;
        v3->_iconView = v12;

        [(HUIconView *)v3->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
        [(HUIconView *)v3->_iconView setDisplayContext:0];
        [(HUIconView *)v3->_iconView setIconSize:3];
        systemMidGrayColor = [MEMORY[0x277D75348] systemMidGrayColor];
        [(HUIconView *)v3->_iconView setTintColor:systemMidGrayColor];

        [(HUIconView *)v3->_iconView setContentMode:1];
        if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
        {
          controlCenterSecondaryVibrancyEffect = [MEMORY[0x277D75D00] controlCenterSecondaryVibrancyEffect];
          [(HUIconView *)v3->_iconView setVibrancyEffect:controlCenterSecondaryVibrancyEffect];
        }

        else
        {
          [(HUIconView *)v3->_iconView setVibrancyEffect:0];
        }

        v18 = v3->_iconView;
      }

      else
      {
        v16 = objc_alloc_init(HUBaseIconView);
        baseIconView = v3->_baseIconView;
        v3->_baseIconView = v16;

        [(HUBaseIconView *)v3->_baseIconView setTranslatesAutoresizingMaskIntoConstraints:0];
        [(HUBaseIconView *)v3->_baseIconView setDelegate:v3];
        v18 = v3->_baseIconView;
      }

      [(HUQuickControlSummaryView *)v3 addSubview:v18];
    }

    v25 = objc_alloc_init(MEMORY[0x277D756B8]);
    primaryLabel = v3->_primaryLabel;
    v3->_primaryLabel = v25;

    [(UILabel *)v3->_primaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_primaryLabel setNumberOfLines:2];
    v27 = *MEMORY[0x277D76918];
    v28 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76918] variant:1024];
    [(UILabel *)v3->_primaryLabel setFont:v28];

    [(UILabel *)v3->_primaryLabel setAdjustsFontForContentSizeCategory:1];
    [(HUQuickControlSummaryView *)v3 addSubview:v3->_primaryLabel];
    v29 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
    secondaryLabelEffectView = v3->_secondaryLabelEffectView;
    v3->_secondaryLabelEffectView = v29;

    [(UIVisualEffectView *)v3->_secondaryLabelEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
    if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
    {
      controlCenterSecondaryVibrancyEffect2 = [MEMORY[0x277D75D00] controlCenterSecondaryVibrancyEffect];
      [(UIVisualEffectView *)v3->_secondaryLabelEffectView setEffect:controlCenterSecondaryVibrancyEffect2];
    }

    else
    {
      [(UIVisualEffectView *)v3->_secondaryLabelEffectView setEffect:0];
    }

    [(HUQuickControlSummaryView *)v3 addSubview:v3->_secondaryLabelEffectView];
    v32 = objc_alloc_init(MEMORY[0x277D756B8]);
    secondaryLabel = v3->_secondaryLabel;
    v3->_secondaryLabel = v32;

    [(UILabel *)v3->_secondaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_secondaryLabel setNumberOfLines:0];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v3->_secondaryLabel setTextColor:secondaryLabelColor];

    v35 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v27 variant:1024];
    [(UILabel *)v3->_secondaryLabel setFont:v35];

    [(UILabel *)v3->_secondaryLabel setAdjustsFontForContentSizeCategory:1];
    contentView = [(UIVisualEffectView *)v3->_secondaryLabelEffectView contentView];
    [contentView addSubview:v3->_secondaryLabel];

    v3->_preferredIconAlignment = 0;
  }

  return v3;
}

- (void)setBaseIconView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    v6 = viewCopy;
    [(HUBaseIconView *)self->_baseIconView removeFromSuperview];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v6 setDelegate:self];
    [(HUQuickControlSummaryView *)self addSubview:v6];
    objc_storeStrong(&self->_baseIconView, view);
    viewCopy = v6;
  }
}

- (void)setPrimaryText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_primaryText isEqualToString:?])
  {
    objc_storeStrong(&self->_primaryText, text);
    primaryText = self->_primaryText;
    primaryLabel = [(HUQuickControlSummaryView *)self primaryLabel];
    [primaryLabel setText:primaryText];

    primaryLabel2 = [(HUQuickControlSummaryView *)self primaryLabel];
    [primaryLabel2 setNeedsLayout];
  }
}

- (void)setSecondaryText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_secondaryText isEqualToString:?])
  {
    objc_storeStrong(&self->_secondaryText, text);
    secondaryText = self->_secondaryText;
    secondaryLabel = [(HUQuickControlSummaryView *)self secondaryLabel];
    [secondaryLabel setText:secondaryText];

    secondaryLabel2 = [(HUQuickControlSummaryView *)self secondaryLabel];
    [secondaryLabel2 setNeedsLayout];
  }
}

- (void)setMicrophoneStatusText:(id)text
{
  textCopy = text;
  if (![(NSAttributedString *)self->_microphoneStatusText isEqualToAttributedString:?])
  {
    objc_storeStrong(&self->_microphoneStatusText, text);
    microphoneStatusText = self->_microphoneStatusText;
    secondaryLabel = [(HUQuickControlSummaryView *)self secondaryLabel];
    [secondaryLabel setAttributedText:microphoneStatusText];

    secondaryLabel2 = [(HUQuickControlSummaryView *)self secondaryLabel];
    [secondaryLabel2 setNeedsLayout];
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (([(UIImage *)self->_image isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_image, image);
    imageView = [(HUQuickControlSummaryView *)self imageView];
    [imageView setImage:imageCopy];
  }
}

- (void)updateConstraints
{
  v135.receiver = self;
  v135.super_class = HUQuickControlSummaryView;
  [(HUQuickControlSummaryView *)&v135 updateConstraints];
  contentConstraints = [(HUQuickControlSummaryView *)self contentConstraints];

  if (contentConstraints)
  {
    v4 = MEMORY[0x277CCAAD0];
    contentConstraints2 = [(HUQuickControlSummaryView *)self contentConstraints];
    [v4 deactivateConstraints:contentConstraints2];
  }

  [(HUQuickControlSummaryView *)self setBaseIconViewWidthConstraint:0];
  v6 = objc_opt_new();
  [(HUQuickControlSummaryView *)self setContentConstraints:v6];

  if ([MEMORY[0x277D14CE8] shouldUseProxHandOffMaterials])
  {
    contentConstraints3 = [(HUQuickControlSummaryView *)self contentConstraints];
    imageView = [(HUQuickControlSummaryView *)self imageView];
    leadingAnchor = [imageView leadingAnchor];
    leadingAnchor2 = [(HUQuickControlSummaryView *)self leadingAnchor];
    v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:14.0];
    [contentConstraints3 addObject:v11];

    contentConstraints4 = [(HUQuickControlSummaryView *)self contentConstraints];
    primaryLabel = [(HUQuickControlSummaryView *)self primaryLabel];
    leadingAnchor3 = [primaryLabel leadingAnchor];
    imageView2 = [(HUQuickControlSummaryView *)self imageView];
  }

  else
  {
    shouldUseLegacyQuickControlPresentation = [MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation];
    contentConstraints5 = [(HUQuickControlSummaryView *)self contentConstraints];
    if (shouldUseLegacyQuickControlPresentation)
    {
      iconView = [(HUQuickControlSummaryView *)self iconView];
      leadingAnchor4 = [iconView leadingAnchor];
      leadingAnchor5 = [(HUQuickControlSummaryView *)self leadingAnchor];
      v21 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:14.0];
      [contentConstraints5 addObject:v21];

      contentConstraints4 = [(HUQuickControlSummaryView *)self contentConstraints];
      primaryLabel = [(HUQuickControlSummaryView *)self primaryLabel];
      leadingAnchor3 = [primaryLabel leadingAnchor];
      [(HUQuickControlSummaryView *)self iconView];
    }

    else
    {
      baseIconView = [(HUQuickControlSummaryView *)self baseIconView];
      leadingAnchor6 = [baseIconView leadingAnchor];
      leadingAnchor7 = [(HUQuickControlSummaryView *)self leadingAnchor];
      v25 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7 constant:14.0];
      [contentConstraints5 addObject:v25];

      contentConstraints4 = [(HUQuickControlSummaryView *)self contentConstraints];
      primaryLabel = [(HUQuickControlSummaryView *)self primaryLabel];
      leadingAnchor3 = [primaryLabel leadingAnchor];
      [(HUQuickControlSummaryView *)self baseIconView];
    }
    imageView2 = ;
  }

  v26 = imageView2;
  trailingAnchor = [imageView2 trailingAnchor];
  v28 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:14.0];
  [contentConstraints4 addObject:v28];

  contentConstraints6 = [(HUQuickControlSummaryView *)self contentConstraints];
  primaryLabel2 = [(HUQuickControlSummaryView *)self primaryLabel];
  trailingAnchor2 = [primaryLabel2 trailingAnchor];
  layoutMarginsGuide = [(HUQuickControlSummaryView *)self layoutMarginsGuide];
  trailingAnchor3 = [layoutMarginsGuide trailingAnchor];
  v34 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  [contentConstraints6 addObject:v34];

  contentConstraints7 = [(HUQuickControlSummaryView *)self contentConstraints];
  secondaryLabelEffectView = [(HUQuickControlSummaryView *)self secondaryLabelEffectView];
  leadingAnchor8 = [secondaryLabelEffectView leadingAnchor];
  primaryLabel3 = [(HUQuickControlSummaryView *)self primaryLabel];
  leadingAnchor9 = [primaryLabel3 leadingAnchor];
  v40 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
  [contentConstraints7 addObject:v40];

  contentConstraints8 = [(HUQuickControlSummaryView *)self contentConstraints];
  secondaryLabelEffectView2 = [(HUQuickControlSummaryView *)self secondaryLabelEffectView];
  trailingAnchor4 = [secondaryLabelEffectView2 trailingAnchor];
  layoutMarginsGuide2 = [(HUQuickControlSummaryView *)self layoutMarginsGuide];
  trailingAnchor5 = [layoutMarginsGuide2 trailingAnchor];
  v46 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  [contentConstraints8 addObject:v46];

  contentConstraints9 = [(HUQuickControlSummaryView *)self contentConstraints];
  secondaryLabel = [(HUQuickControlSummaryView *)self secondaryLabel];
  leadingAnchor10 = [secondaryLabel leadingAnchor];
  secondaryLabelEffectView3 = [(HUQuickControlSummaryView *)self secondaryLabelEffectView];
  leadingAnchor11 = [secondaryLabelEffectView3 leadingAnchor];
  v52 = [leadingAnchor10 constraintEqualToAnchor:leadingAnchor11];
  [contentConstraints9 addObject:v52];

  contentConstraints10 = [(HUQuickControlSummaryView *)self contentConstraints];
  secondaryLabel2 = [(HUQuickControlSummaryView *)self secondaryLabel];
  trailingAnchor6 = [secondaryLabel2 trailingAnchor];
  secondaryLabelEffectView4 = [(HUQuickControlSummaryView *)self secondaryLabelEffectView];
  trailingAnchor7 = [secondaryLabelEffectView4 trailingAnchor];
  v58 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
  [contentConstraints10 addObject:v58];

  if ([MEMORY[0x277D14CE8] shouldUseProxHandOffMaterials])
  {
    contentConstraints11 = [(HUQuickControlSummaryView *)self contentConstraints];
    imageView3 = [(HUQuickControlSummaryView *)self imageView];
    topAnchor = [imageView3 topAnchor];
    topAnchor2 = [(HUQuickControlSummaryView *)self topAnchor];
    v63 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:14.0];
LABEL_11:
    bottomAnchor = v63;
    [contentConstraints11 addObject:v63];
    goto LABEL_20;
  }

  if ([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation])
  {
    contentConstraints12 = [(HUQuickControlSummaryView *)self contentConstraints];
    iconView2 = [(HUQuickControlSummaryView *)self iconView];
    topAnchor3 = [iconView2 topAnchor];
    layoutMarginsGuide3 = [(HUQuickControlSummaryView *)self layoutMarginsGuide];
    topAnchor4 = [layoutMarginsGuide3 topAnchor];
    v70 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:14.0];
    [contentConstraints12 addObject:v70];

    contentConstraints11 = [(HUQuickControlSummaryView *)self contentConstraints];
    iconView3 = [(HUQuickControlSummaryView *)self iconView];
  }

  else
  {
    preferredIconAlignment = [(HUQuickControlSummaryView *)self preferredIconAlignment];
    contentConstraints11 = [(HUQuickControlSummaryView *)self contentConstraints];
    baseIconView2 = [(HUQuickControlSummaryView *)self baseIconView];
    imageView3 = baseIconView2;
    if (preferredIconAlignment == 1)
    {
      topAnchor = [baseIconView2 centerYAnchor];
      topAnchor2 = [(HUQuickControlSummaryView *)self centerYAnchor];
      v63 = [topAnchor constraintEqualToAnchor:topAnchor2];
      goto LABEL_11;
    }

    topAnchor5 = [baseIconView2 topAnchor];
    layoutMarginsGuide4 = [(HUQuickControlSummaryView *)self layoutMarginsGuide];
    topAnchor6 = [layoutMarginsGuide4 topAnchor];
    baseIconView3 = [(HUQuickControlSummaryView *)self baseIconView];
    configuration = [baseIconView3 configuration];
    viewType = [configuration viewType];
    v80 = 14.0;
    if (!viewType)
    {
      v80 = 0.0;
    }

    v81 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:v80];
    [contentConstraints11 addObject:v81];

    contentConstraints11 = [(HUQuickControlSummaryView *)self contentConstraints];
    iconView3 = [(HUQuickControlSummaryView *)self baseIconView];
  }

  imageView3 = iconView3;
  topAnchor = [iconView3 bottomAnchor];
  topAnchor2 = [(HUQuickControlSummaryView *)self layoutMarginsGuide];
  bottomAnchor = [topAnchor2 bottomAnchor];
  v82 = [topAnchor constraintLessThanOrEqualToAnchor:bottomAnchor];
  [contentConstraints11 addObject:v82];

LABEL_20:
  contentConstraints13 = [(HUQuickControlSummaryView *)self contentConstraints];
  primaryLabel4 = [(HUQuickControlSummaryView *)self primaryLabel];
  topAnchor7 = [primaryLabel4 topAnchor];
  topAnchor8 = [(HUQuickControlSummaryView *)self topAnchor];
  v87 = [topAnchor7 constraintEqualToAnchor:topAnchor8 constant:16.0];
  [contentConstraints13 addObject:v87];

  contentConstraints14 = [(HUQuickControlSummaryView *)self contentConstraints];
  primaryLabel5 = [(HUQuickControlSummaryView *)self primaryLabel];
  bottomAnchor2 = [primaryLabel5 bottomAnchor];
  secondaryLabelEffectView5 = [(HUQuickControlSummaryView *)self secondaryLabelEffectView];
  topAnchor9 = [secondaryLabelEffectView5 topAnchor];
  v93 = [bottomAnchor2 constraintEqualToAnchor:topAnchor9];
  [contentConstraints14 addObject:v93];

  contentConstraints15 = [(HUQuickControlSummaryView *)self contentConstraints];
  secondaryLabelEffectView6 = [(HUQuickControlSummaryView *)self secondaryLabelEffectView];
  bottomAnchor3 = [secondaryLabelEffectView6 bottomAnchor];
  bottomAnchor4 = [(HUQuickControlSummaryView *)self bottomAnchor];
  v98 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4 constant:-16.0];
  [contentConstraints15 addObject:v98];

  contentConstraints16 = [(HUQuickControlSummaryView *)self contentConstraints];
  secondaryLabel3 = [(HUQuickControlSummaryView *)self secondaryLabel];
  topAnchor10 = [secondaryLabel3 topAnchor];
  secondaryLabelEffectView7 = [(HUQuickControlSummaryView *)self secondaryLabelEffectView];
  topAnchor11 = [secondaryLabelEffectView7 topAnchor];
  v104 = [topAnchor10 constraintEqualToAnchor:topAnchor11];
  [contentConstraints16 addObject:v104];

  contentConstraints17 = [(HUQuickControlSummaryView *)self contentConstraints];
  secondaryLabel4 = [(HUQuickControlSummaryView *)self secondaryLabel];
  bottomAnchor5 = [secondaryLabel4 bottomAnchor];
  secondaryLabelEffectView8 = [(HUQuickControlSummaryView *)self secondaryLabelEffectView];
  bottomAnchor6 = [secondaryLabelEffectView8 bottomAnchor];
  v110 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  [contentConstraints17 addObject:v110];

  if ([MEMORY[0x277D14CE8] shouldUseProxHandOffMaterials])
  {
    contentConstraints18 = [(HUQuickControlSummaryView *)self contentConstraints];
    imageView4 = [(HUQuickControlSummaryView *)self imageView];
    heightAnchor = [imageView4 heightAnchor];
    v114 = [heightAnchor constraintEqualToConstant:44.0];
    [contentConstraints18 addObject:v114];

    contentConstraints19 = [(HUQuickControlSummaryView *)self contentConstraints];
    imageView5 = [(HUQuickControlSummaryView *)self imageView];
    widthAnchor = [imageView5 widthAnchor];
    iconView6 = [widthAnchor constraintEqualToConstant:44.0];
    [contentConstraints19 addObject:iconView6];
LABEL_24:

    goto LABEL_25;
  }

  if ([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation])
  {
    contentConstraints20 = [(HUQuickControlSummaryView *)self contentConstraints];
    iconView4 = [(HUQuickControlSummaryView *)self iconView];
    heightAnchor2 = [iconView4 heightAnchor];
    iconView5 = [(HUQuickControlSummaryView *)self iconView];
    [iconView5 iconSize];
    HUDefaultSizeForIconSize();
    v124 = [heightAnchor2 constraintEqualToConstant:v123];
    [contentConstraints20 addObject:v124];

    contentConstraints19 = [(HUQuickControlSummaryView *)self contentConstraints];
    imageView5 = [(HUQuickControlSummaryView *)self iconView];
    widthAnchor = [imageView5 widthAnchor];
    iconView6 = [(HUQuickControlSummaryView *)self iconView];
    [iconView6 iconSize];
    HUDefaultSizeForIconSize();
    v125 = [widthAnchor constraintEqualToConstant:?];
    [contentConstraints19 addObject:v125];

    goto LABEL_24;
  }

  baseIconView4 = [(HUQuickControlSummaryView *)self baseIconView];
  configuration2 = [baseIconView4 configuration];
  viewType2 = [configuration2 viewType];

  if (viewType2)
  {
    goto LABEL_26;
  }

  baseIconView5 = [(HUQuickControlSummaryView *)self baseIconView];
  widthAnchor2 = [baseIconView5 widthAnchor];
  baseIconView6 = [(HUQuickControlSummaryView *)self baseIconView];
  [baseIconView6 intrinsicContentSize];
  v134 = [widthAnchor2 constraintEqualToConstant:?];
  [(HUQuickControlSummaryView *)self setBaseIconViewWidthConstraint:v134];

  contentConstraints19 = [(HUQuickControlSummaryView *)self contentConstraints];
  imageView5 = [(HUQuickControlSummaryView *)self baseIconViewWidthConstraint];
  [contentConstraints19 addObject:imageView5];
LABEL_25:

LABEL_26:
  v126 = MEMORY[0x277CCAAD0];
  contentConstraints21 = [(HUQuickControlSummaryView *)self contentConstraints];
  [v126 activateConstraints:contentConstraints21];
}

- (void)baseIconViewDidUpdateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  baseIconView = [(HUQuickControlSummaryView *)self baseIconView];
  configuration = [baseIconView configuration];
  viewType = [configuration viewType];

  if (!viewType)
  {
    [configurationCopy intrinsicContentSize];
    v8 = v7;
    baseIconViewWidthConstraint = [(HUQuickControlSummaryView *)self baseIconViewWidthConstraint];
    [baseIconViewWidthConstraint setConstant:v8];
  }
}

@end