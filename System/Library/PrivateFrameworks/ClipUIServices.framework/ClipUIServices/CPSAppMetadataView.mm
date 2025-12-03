@interface CPSAppMetadataView
- (CGSize)intrinsicContentSize;
- (CPSAppMetadataView)initWithCoder:(id)coder;
- (CPSAppMetadataView)initWithFrame:(CGRect)frame;
- (void)_setUpSubviews;
- (void)_updateAppStoreButtonConstraints;
- (void)setAppIcon:(id)icon;
- (void)traitCollectionDidChange:(id)change;
- (void)updateWithMetadata:(id)metadata;
@end

@implementation CPSAppMetadataView

- (CPSAppMetadataView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CPSAppMetadataView;
  v3 = [(CPSAppMetadataView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CPSAppMetadataView *)v3 _setUpSubviews];
    [(CPSAppMetadataView *)v4 updateWithMetadata:0];
    v5 = v4;
  }

  return v4;
}

- (CPSAppMetadataView)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"-initWithCoder: is not supported." userInfo:0];
  objc_exception_throw(v4);
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x277D77260];
  v3 = *MEMORY[0x277D77260];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_setUpSubviews
{
  v90[12] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D755E8];
  systemFillColor = [MEMORY[0x277D75348] systemFillColor];
  v5 = [v3 cps_viewWithBackgroundColor:systemFillColor cornerRadius:5.0];
  appIconView = self->_appIconView;
  self->_appIconView = v5;

  [(UIImageView *)self->_appIconView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_appIconView setAccessibilityIgnoresInvertColors:1];
  LODWORD(v7) = 1144766464;
  [(UIImageView *)self->_appIconView setContentCompressionResistancePriority:0 forAxis:v7];
  [(CPSAppMetadataView *)self addSubview:self->_appIconView];
  v8 = [CPSVibrantLabel alloc];
  v9 = [(CPSVibrantLabel *)v8 initWithTextStyle:*MEMORY[0x277D76940] textVariant:256 vibrancyEffectStyle:1];
  poweredByVibrantLabel = self->_poweredByVibrantLabel;
  self->_poweredByVibrantLabel = v9;

  [(CPSVibrantLabel *)self->_poweredByVibrantLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = _CPSLocalizedString();
  [(CPSVibrantLabel *)self->_poweredByVibrantLabel setText:v11];

  [(CPSVibrantLabel *)self->_poweredByVibrantLabel setAlpha:0.0];
  [(CPSAppMetadataView *)self addSubview:self->_poweredByVibrantLabel];
  v12 = [CPSVibrantLabel alloc];
  v13 = [(CPSVibrantLabel *)v12 initWithTextStyle:*MEMORY[0x277D76968] textVariant:1280 vibrancyEffectStyle:0];
  appNameVibrantLabel = self->_appNameVibrantLabel;
  self->_appNameVibrantLabel = v13;

  [(CPSVibrantLabel *)self->_appNameVibrantLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CPSVibrantLabel *)self->_appNameVibrantLabel setText:*MEMORY[0x277CFA678]];
  [(CPSAppMetadataView *)self addSubview:self->_appNameVibrantLabel];
  v15 = objc_alloc_init(CPSContentRatingContainerView);
  contentRatingContainerView = self->_contentRatingContainerView;
  self->_contentRatingContainerView = v15;

  [(CPSContentRatingContainerView *)self->_contentRatingContainerView setUserInteractionEnabled:0];
  [(CPSContentRatingContainerView *)self->_contentRatingContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CPSAppMetadataView *)self addSubview:self->_contentRatingContainerView];
  v17 = objc_alloc_init(CPSAppStoreButton);
  appStoreButton = self->_appStoreButton;
  self->_appStoreButton = v17;

  [(CPSAppStoreButton *)self->_appStoreButton setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v19) = 1144766464;
  [(CPSAppStoreButton *)self->_appStoreButton setContentCompressionResistancePriority:0 forAxis:v19];
  [(CPSAppStoreButton *)self->_appStoreButton setUserInteractionEnabled:0];
  [(CPSAppStoreButton *)self->_appStoreButton setHidden:1];
  [(CPSAppMetadataView *)self addSubview:self->_appStoreButton];
  v63 = MEMORY[0x277CCAAD0];
  centerYAnchor = [(UIImageView *)self->_appIconView centerYAnchor];
  centerYAnchor2 = [(CPSAppMetadataView *)self centerYAnchor];
  v78 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v90[0] = v78;
  leadingAnchor = [(UIImageView *)self->_appIconView leadingAnchor];
  leadingAnchor2 = [(CPSAppMetadataView *)self leadingAnchor];
  v72 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v90[1] = v72;
  heightAnchor = [(UIImageView *)self->_appIconView heightAnchor];
  v70 = [heightAnchor constraintEqualToConstant:28.0];
  v90[2] = v70;
  widthAnchor = [(UIImageView *)self->_appIconView widthAnchor];
  heightAnchor2 = [(UIImageView *)self->_appIconView heightAnchor];
  v67 = [widthAnchor constraintEqualToAnchor:heightAnchor2];
  v90[3] = v67;
  topAnchor = [(CPSVibrantLabel *)self->_poweredByVibrantLabel topAnchor];
  topAnchor2 = [(CPSAppMetadataView *)self topAnchor];
  v64 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v90[4] = v64;
  leadingAnchor3 = [(CPSVibrantLabel *)self->_poweredByVibrantLabel leadingAnchor];
  trailingAnchor = [(UIImageView *)self->_appIconView trailingAnchor];
  v60 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:8.0];
  v90[5] = v60;
  bottomAnchor = [(CPSVibrantLabel *)self->_poweredByVibrantLabel bottomAnchor];
  topAnchor3 = [(CPSVibrantLabel *)self->_appNameVibrantLabel topAnchor];
  v57 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:-1.0];
  v90[6] = v57;
  trailingAnchor2 = [(CPSVibrantLabel *)self->_poweredByVibrantLabel trailingAnchor];
  trailingAnchor3 = [(CPSAppMetadataView *)self trailingAnchor];
  v54 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:trailingAnchor3];
  v90[7] = v54;
  leadingAnchor4 = [(CPSVibrantLabel *)self->_appNameVibrantLabel leadingAnchor];
  leadingAnchor5 = [(CPSVibrantLabel *)self->_poweredByVibrantLabel leadingAnchor];
  v51 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  v90[8] = v51;
  leadingAnchor6 = [(CPSContentRatingContainerView *)self->_contentRatingContainerView leadingAnchor];
  trailingAnchor4 = [(CPSVibrantLabel *)self->_appNameVibrantLabel trailingAnchor];
  v21 = [leadingAnchor6 constraintEqualToAnchor:trailingAnchor4 constant:4.0];
  v90[9] = v21;
  bottomAnchor2 = [(CPSContentRatingContainerView *)self->_contentRatingContainerView bottomAnchor];
  firstBaselineAnchor = [(CPSVibrantLabel *)self->_appNameVibrantLabel firstBaselineAnchor];
  v24 = [bottomAnchor2 constraintEqualToAnchor:firstBaselineAnchor constant:1.0];
  v90[10] = v24;
  trailingAnchor5 = [(CPSContentRatingContainerView *)self->_contentRatingContainerView trailingAnchor];
  trailingAnchor6 = [(CPSAppMetadataView *)self trailingAnchor];
  v27 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:trailingAnchor6];
  v90[11] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:12];
  [v63 activateConstraints:v28];

  leadingAnchor7 = [(CPSAppStoreButton *)self->_appStoreButton leadingAnchor];
  leadingAnchor8 = [(CPSVibrantLabel *)self->_poweredByVibrantLabel leadingAnchor];
  v79 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:-2.0];
  v89[0] = v79;
  topAnchor4 = [(CPSAppStoreButton *)self->_appStoreButton topAnchor];
  bottomAnchor3 = [(CPSVibrantLabel *)self->_appNameVibrantLabel bottomAnchor];
  v30 = [topAnchor4 constraintEqualToAnchor:bottomAnchor3 constant:1.0];
  v89[1] = v30;
  trailingAnchor7 = [(CPSAppStoreButton *)self->_appStoreButton trailingAnchor];
  trailingAnchor8 = [(CPSAppMetadataView *)self trailingAnchor];
  v33 = [trailingAnchor7 constraintLessThanOrEqualToAnchor:trailingAnchor8];
  v89[2] = v33;
  bottomAnchor4 = [(CPSAppStoreButton *)self->_appStoreButton bottomAnchor];
  bottomAnchor5 = [(CPSAppMetadataView *)self bottomAnchor];
  v36 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v89[3] = v36;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:4];
  leadingAppStoreButtonConstraints = self->_leadingAppStoreButtonConstraints;
  self->_leadingAppStoreButtonConstraints = v37;

  leadingAnchor9 = [(CPSAppStoreButton *)self->_appStoreButton leadingAnchor];
  trailingAnchor9 = [(CPSContentRatingContainerView *)self->_contentRatingContainerView trailingAnchor];
  v80 = [leadingAnchor9 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor9 multiplier:1.0];
  v88[0] = v80;
  leadingAnchor10 = [(CPSAppStoreButton *)self->_appStoreButton leadingAnchor];
  trailingAnchor10 = [(CPSVibrantLabel *)self->_poweredByVibrantLabel trailingAnchor];
  v74 = [leadingAnchor10 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor10 multiplier:1.0];
  v88[1] = v74;
  trailingAnchor11 = [(CPSAppStoreButton *)self->_appStoreButton trailingAnchor];
  trailingAnchor12 = [(CPSAppMetadataView *)self trailingAnchor];
  v41 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
  v88[2] = v41;
  centerYAnchor3 = [(CPSAppStoreButton *)self->_appStoreButton centerYAnchor];
  centerYAnchor4 = [(CPSAppMetadataView *)self centerYAnchor];
  v44 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v88[3] = v44;
  bottomAnchor6 = [(CPSVibrantLabel *)self->_appNameVibrantLabel bottomAnchor];
  bottomAnchor7 = [(CPSAppMetadataView *)self bottomAnchor];
  v47 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
  v88[4] = v47;
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:5];
  trailingAppStoreButtonConstraints = self->_trailingAppStoreButtonConstraints;
  self->_trailingAppStoreButtonConstraints = v48;

  [(CPSAppMetadataView *)self _updateAppStoreButtonConstraints];
}

- (void)updateWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  fullAppName = [metadataCopy fullAppName];
  if (!fullAppName)
  {
    goto LABEL_11;
  }

  [(CPSVibrantLabel *)self->_poweredByVibrantLabel setAlpha:1.0];
  [(CPSVibrantLabel *)self->_appNameVibrantLabel setText:fullAppName];
  if ([metadataCopy hasAppMetadata])
  {
    if ([metadataCopy fullAppOnly])
    {
      goto LABEL_8;
    }
  }

  else
  {
    fullAppStoreURL = [metadataCopy fullAppStoreURL];
    if (!fullAppStoreURL)
    {
      goto LABEL_8;
    }

    v6 = fullAppStoreURL;
    fullAppOnly = [metadataCopy fullAppOnly];

    if (fullAppOnly)
    {
      goto LABEL_8;
    }
  }

  [(CPSAppStoreButton *)self->_appStoreButton setHidden:0];
LABEL_8:
  -[CPSAppStoreButton setShowsArcadeAttribution:](self->_appStoreButton, "setShowsArcadeAttribution:", [metadataCopy supportsArcade]);
  fullAppContentRating = [metadataCopy fullAppContentRating];
  v9 = [MEMORY[0x277D755B8] cps_imageNamed:fullAppContentRating];
  v10 = [fullAppContentRating hasSuffix:@"-Brazil"];
  if (v10)
  {
    v11 = [MEMORY[0x277D755B8] cps_imageNamed:@"4+"];
    [v11 size];

    traitCollection = [(CPSAppMetadataView *)self traitCollection];
    [traitCollection displayScale];
    UISizeRoundToScale();
    v14 = v13;
    v16 = v15;

    v17 = [v9 cps_resizedImageWithSize:{v14, v16}];

    v9 = v17;
  }

  [(CPSContentRatingContainerView *)self->_contentRatingContainerView setImage:v9 usesVibrantAppearance:v10 ^ 1u];

LABEL_11:
}

- (void)setAppIcon:(id)icon
{
  v17[1] = *MEMORY[0x277D85DE8];
  iconCopy = icon;
  if (iconCopy)
  {
    v5 = objc_alloc(MEMORY[0x277D1B1A8]);
    v6 = objc_alloc(MEMORY[0x277D1B160]);
    cGImage = [iconCopy CGImage];
    [iconCopy scale];
    v8 = [v6 initWithCGImage:cGImage scale:?];
    v17[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    genericApplicationIcon = [v5 initWithImages:v9];
  }

  else
  {
    genericApplicationIcon = [MEMORY[0x277D1B1A8] genericApplicationIcon];
  }

  v11 = [MEMORY[0x277D1B1C8] imageDescriptorNamed:*MEMORY[0x277D1B240]];
  v12 = [genericApplicationIcon imageForImageDescriptor:v11];

  v13 = MEMORY[0x277D755B8];
  cGImage2 = [v12 CGImage];
  [v12 scale];
  v15 = [v13 imageWithCGImage:cGImage2 scale:0 orientation:?];
  [(UIImageView *)self->_appIconView setImage:v15];

  [(UIImageView *)self->_appIconView _setContinuousCornerRadius:0.0];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(UIImageView *)self->_appIconView setBackgroundColor:clearColor];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = CPSAppMetadataView;
  changeCopy = change;
  [(CPSAppMetadataView *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(CPSAppMetadataView *)self traitCollection:v8.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];

  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  LOBYTE(changeCopy) = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];
  if ((changeCopy & 1) == 0)
  {
    [(CPSAppMetadataView *)self _updateAppStoreButtonConstraints];
  }
}

- (void)_updateAppStoreButtonConstraints
{
  traitCollection = [(CPSAppMetadataView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  v6 = MEMORY[0x277CCAAD0];
  leadingAppStoreButtonConstraints = self->_leadingAppStoreButtonConstraints;
  trailingAppStoreButtonConstraints = self->_trailingAppStoreButtonConstraints;

  [v6 cps_if:IsAccessibilityCategory thenActivateConstraints:leadingAppStoreButtonConstraints elseActivateConstraints:trailingAppStoreButtonConstraints];
}

@end