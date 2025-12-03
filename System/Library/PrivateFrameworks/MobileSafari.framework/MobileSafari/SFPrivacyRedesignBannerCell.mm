@interface SFPrivacyRedesignBannerCell
- (SFPrivacyRedesignBannerCell)initWithFrame:(CGRect)frame;
- (id)_createGridLabel;
- (void)_changeActionTextForState:(unint64_t)state;
- (void)_createGrid;
- (void)_updateGridVisibilityIfNeeded;
- (void)_updateState;
- (void)configureUsingBanner:(id)banner;
- (void)gridViewDidUpdateContentSize:(id)size;
- (void)layoutSubviews;
@end

@implementation SFPrivacyRedesignBannerCell

- (SFPrivacyRedesignBannerCell)initWithFrame:(CGRect)frame
{
  v82[1] = *MEMORY[0x1E69E9840];
  v79.receiver = self;
  v79.super_class = SFPrivacyRedesignBannerCell;
  v3 = [(SFStartPageFilledBackgroundCell *)&v79 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    defaultBackgroundConfiguration = [(SFStartPageFilledBackgroundCell *)v3 defaultBackgroundConfiguration];
    [defaultBackgroundConfiguration setCornerRadius:20.0];
    [(SFPrivacyRedesignBannerCell *)v4 setBackgroundConfiguration:defaultBackgroundConfiguration];
    contentView = [(SFPrivacyRedesignBannerCell *)v4 contentView];
    [contentView setLayoutMargins:{20.0, 20.0, 20.0, 20.0}];
    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"shield.lefthalf.fill"];
    [v6 setImage:v7];

    v8 = MEMORY[0x1E69DCAD8];
    systemGreenColor = [MEMORY[0x1E69DC888] systemGreenColor];
    v82[0] = systemGreenColor;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:1];
    v77 = [v8 configurationWithPaletteColors:v10];

    [v6 setPreferredSymbolConfiguration:v77];
    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    textLabel = v4->_textLabel;
    v4->_textLabel = v11;

    [(UILabel *)v4->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_textLabel setLineBreakMode:0];
    [(UILabel *)v4->_textLabel setLineBreakStrategy:1];
    [(UILabel *)v4->_textLabel setNumberOfLines:0];
    [(UILabel *)v4->_textLabel setAdjustsFontForContentSizeCategory:1];
    [(SFPrivacyRedesignBannerCell *)v4 _updateState];
    v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    actionLabel = v4->_actionLabel;
    v4->_actionLabel = v13;

    [(UILabel *)v4->_actionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = _WBSLocalizedString();
    [(UILabel *)v4->_actionLabel setText:v15];

    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    [(UILabel *)v4->_actionLabel setTextColor:systemBlueColor];

    v17 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v17 addSubview:v6];
    [v17 addSubview:v4->_textLabel];
    v18 = v17;
    [v17 addSubview:v4->_actionLabel];
    v19 = objc_alloc(MEMORY[0x1E69DCF90]);
    v81 = v18;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1];
    v21 = [v19 initWithArrangedSubviews:v20];
    privacyCellStackView = v4->_privacyCellStackView;
    v4->_privacyCellStackView = v21;

    [(UIStackView *)v4->_privacyCellStackView setAxis:0];
    [(UIStackView *)v4->_privacyCellStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v4->_privacyCellStackView setSpacing:8.0];
    LODWORD(v23) = 1144750080;
    [(UIStackView *)v4->_privacyCellStackView setContentCompressionResistancePriority:1 forAxis:v23];
    [(UIStackView *)v4->_privacyCellStackView setDistribution:1];
    v76 = contentView;
    [contentView addSubview:v4->_privacyCellStackView];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    v57 = MEMORY[0x1E696ACD8];
    widthAnchor = [v6 widthAnchor];
    v74 = [widthAnchor constraintEqualToConstant:56.0];
    v80[0] = v74;
    heightAnchor = [v6 heightAnchor];
    v72 = [heightAnchor constraintEqualToConstant:56.0];
    v80[1] = v72;
    leadingAnchor = [v6 leadingAnchor];
    leadingAnchor2 = [v18 leadingAnchor];
    v68 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v80[2] = v68;
    v71 = v6;
    topAnchor = [v6 topAnchor];
    topAnchor2 = [v18 topAnchor];
    v65 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v80[3] = v65;
    topAnchor3 = [(UILabel *)v4->_textLabel topAnchor];
    bottomAnchor = [v6 bottomAnchor];
    v62 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:bottomAnchor constant:8.0];
    v80[4] = v62;
    leadingAnchor3 = [(UILabel *)v4->_textLabel leadingAnchor];
    leadingAnchor4 = [v18 leadingAnchor];
    v58 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v80[5] = v58;
    trailingAnchor = [(UILabel *)v4->_textLabel trailingAnchor];
    trailingAnchor2 = [v18 trailingAnchor];
    v54 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v80[6] = v54;
    centerYAnchor = [(UILabel *)v4->_textLabel centerYAnchor];
    centerYAnchor2 = [v18 centerYAnchor];
    v51 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v80[7] = v51;
    leadingAnchor5 = [(UILabel *)v4->_actionLabel leadingAnchor];
    v60 = v18;
    leadingAnchor6 = [v18 leadingAnchor];
    v47 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v80[8] = v47;
    bottomAnchor2 = [(UILabel *)v4->_actionLabel bottomAnchor];
    bottomAnchor3 = [v18 bottomAnchor];
    v44 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v80[9] = v44;
    widthAnchor2 = [(UILabel *)v4->_actionLabel widthAnchor];
    v42 = [widthAnchor2 constraintGreaterThanOrEqualToConstant:50.0];
    v80[10] = v42;
    leadingAnchor7 = [(UIStackView *)v4->_privacyCellStackView leadingAnchor];
    leadingAnchor8 = [layoutMarginsGuide leadingAnchor];
    v39 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v80[11] = v39;
    trailingAnchor3 = [(UIStackView *)v4->_privacyCellStackView trailingAnchor];
    v25 = layoutMarginsGuide;
    trailingAnchor4 = [layoutMarginsGuide trailingAnchor];
    v27 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v80[12] = v27;
    topAnchor4 = [(UIStackView *)v4->_privacyCellStackView topAnchor];
    v29 = v25;
    v49 = v25;
    topAnchor5 = [v25 topAnchor];
    v31 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
    v80[13] = v31;
    bottomAnchor4 = [(UIStackView *)v4->_privacyCellStackView bottomAnchor];
    bottomAnchor5 = [v29 bottomAnchor];
    v34 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    v80[14] = v34;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:15];
    [v57 activateConstraints:v35];

    v36 = v4;
  }

  return v4;
}

- (void)_updateState
{
  mEMORY[0x1E69C9808] = [MEMORY[0x1E69C9808] sharedManager];
  isPrivacyProxyActive = [mEMORY[0x1E69C9808] isPrivacyProxyActive];
  state = [mEMORY[0x1E69C9808] state];
  if (self->_privateBrowsingEnabled)
  {
    [(SFPrivacyRedesignBannerCell *)self _changeActionTextForState:0];
    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    v6 = [safari_browserDefaults safari_enableAdvancedPrivacyProtections:1];

    if (v6)
    {
      v7 = state ? isPrivacyProxyActive : 0;
      if (self->_numberOfTrackers)
      {
        if (!v7)
        {
          goto LABEL_15;
        }

        if (state == 2)
        {
          v8 = MEMORY[0x1E696AEC0];
          goto LABEL_16;
        }

        if (state == 1)
        {
          v8 = MEMORY[0x1E696AEC0];
        }

        else
        {
LABEL_15:
          v8 = MEMORY[0x1E696AEC0];
        }

LABEL_16:
        v11 = _WBSLocalizedString();
        v12 = [v8 localizedStringWithFormat:v11, self->_numberOfTrackers];
        [(UILabel *)self->_textLabel setText:v12];

        goto LABEL_20;
      }
    }
  }

  else
  {
    mEMORY[0x1E696AC60] = [MEMORY[0x1E696AC60] sharedHTTPCookieStorage];
    webui_trackerProtectionEnabled = [mEMORY[0x1E696AC60] webui_trackerProtectionEnabled];

    if (webui_trackerProtectionEnabled)
    {
      [(SFPrivacyRedesignBannerCell *)self _changeActionTextForState:0];
    }

    else
    {
      [(SFPrivacyRedesignBannerCell *)self _changeActionTextForState:1];
    }
  }

  v11 = _WBSLocalizedString();
  [(UILabel *)self->_textLabel setText:v11];
LABEL_20:
}

- (void)configureUsingBanner:(id)banner
{
  bannerCopy = banner;
  self->_privateBrowsingEnabled = [bannerCopy isPrivateBrowsingEnabled];
  knownTrackers = [(WBSPrivacyReportData *)self->_privacyReportData knownTrackers];
  self->_numberOfTrackers = [knownTrackers count];

  [(SFPrivacyRedesignBannerCell *)self _updateState];
  privacyReportData = [bannerCopy privacyReportData];

  privacyReportData = self->_privacyReportData;
  self->_privacyReportData = privacyReportData;

  [(SFPrivacyRedesignBannerCell *)self _updateGridVisibilityIfNeeded];
}

- (void)layoutSubviews
{
  if (self->_gridAndTitleView)
  {
    [(SFPrivacyRedesignBannerCell *)self frame];
    Width = CGRectGetWidth(v6);
    v4 = Width >= 400.0;
    [(UIStackView *)self->_privacyCellStackView setAxis:Width < 400.0];
    [(UIStackView *)self->_privacyCellStackView setDistribution:v4];
  }

  [(SFPrivacyRedesignBannerCell *)self _updateGridVisibilityIfNeeded];
  v5.receiver = self;
  v5.super_class = SFPrivacyRedesignBannerCell;
  [(SFPrivacyRedesignBannerCell *)&v5 layoutSubviews];
}

- (id)_createGridLabel
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v3 = [MEMORY[0x1E696ADA0] localizedStringFromNumber:&unk_1EFF741B0 numberStyle:0];
  v4 = MEMORY[0x1E696AEC0];
  v5 = _WBSLocalizedString();
  v6 = [v4 stringWithFormat:v5, v3];
  [v2 setText:v6];

  [v2 setAdjustsFontForContentSizeCategory:1];
  [v2 setAutoresizingMask:10];
  v7 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD28]];
  v8 = [v7 fontDescriptorWithSymbolicTraits:*MEMORY[0x1E69DB970]];

  v9 = [MEMORY[0x1E69DB878] fontWithDescriptor:v8 size:0.0];
  [v2 setFont:v9];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v2 setTextColor:secondaryLabelColor];

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v2;
}

- (void)_updateGridVisibilityIfNeeded
{
  mEMORY[0x1E696AC60] = [MEMORY[0x1E696AC60] sharedHTTPCookieStorage];
  if ([mEMORY[0x1E696AC60] webui_trackerProtectionEnabled])
  {
    hasData = [(WBSPrivacyReportData *)self->_privacyReportData hasData];

    if (hasData)
    {
      if (self->_gridAndTitleView)
      {
        return;
      }

      [(SFPrivacyRedesignBannerCell *)self _createGrid];
      goto LABEL_8;
    }
  }

  else
  {
  }

  if (!self->_gridAndTitleView)
  {
    return;
  }

  [(UIStackView *)self->_privacyCellStackView removeArrangedSubview:?];
  [(UIView *)self->_gridAndTitleView removeFromSuperview];
  gridAndTitleView = self->_gridAndTitleView;
  self->_gridAndTitleView = 0;

LABEL_8:

  [(SFPrivacyRedesignBannerCell *)self invalidateIntrinsicContentSize];
}

- (void)_createGrid
{
  v31[7] = *MEMORY[0x1E69E9840];
  _createGridLabel = [(SFPrivacyRedesignBannerCell *)self _createGridLabel];
  v3 = [[SFPrivacyReportOverviewView alloc] initWithPrivacyReportDataProvider:self->_privacyReportData];
  gridView = self->_gridView;
  self->_gridView = v3;

  [(SFPrivacyReportOverviewView *)self->_gridView setContextType:1];
  [(SFPrivacyReportOverviewView *)self->_gridView setUsesInsetStyle:1];
  [(SFPrivacyReportOverviewView *)self->_gridView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SFPrivacyReportGridView *)self->_gridView setDelegate:self];
  v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
  gridAndTitleView = self->_gridAndTitleView;
  self->_gridAndTitleView = v5;

  [(UIView *)self->_gridAndTitleView addSubview:_createGridLabel];
  [(UIView *)self->_gridAndTitleView addSubview:self->_gridView];
  [(UIView *)self->_gridAndTitleView setPreservesSuperviewLayoutMargins:1];
  [(UIView *)self->_gridAndTitleView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_privacyCellStackView addArrangedSubview:self->_gridAndTitleView];
  v20 = MEMORY[0x1E696ACD8];
  topAnchor = [_createGridLabel topAnchor];
  topAnchor2 = [(UIView *)self->_gridAndTitleView topAnchor];
  v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v31[0] = v28;
  leadingAnchor = [_createGridLabel leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_gridAndTitleView leadingAnchor];
  v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v31[1] = v25;
  trailingAnchor = [_createGridLabel trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_gridAndTitleView trailingAnchor];
  v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v31[2] = v21;
  topAnchor3 = [(SFPrivacyReportOverviewView *)self->_gridView topAnchor];
  bottomAnchor = [_createGridLabel bottomAnchor];
  v17 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:12.0];
  v31[3] = v17;
  leadingAnchor3 = [(SFPrivacyReportOverviewView *)self->_gridView leadingAnchor];
  leadingAnchor4 = [(UIView *)self->_gridAndTitleView leadingAnchor];
  v9 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v31[4] = v9;
  trailingAnchor3 = [(SFPrivacyReportOverviewView *)self->_gridView trailingAnchor];
  trailingAnchor4 = [(UIView *)self->_gridAndTitleView trailingAnchor];
  v12 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v31[5] = v12;
  bottomAnchor2 = [(SFPrivacyReportOverviewView *)self->_gridView bottomAnchor];
  bottomAnchor3 = [(UIView *)self->_gridAndTitleView bottomAnchor];
  v15 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v31[6] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:7];
  [v20 activateConstraints:v16];
}

- (void)_changeActionTextForState:(unint64_t)state
{
  if (state > 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = _WBSLocalizedString();
  }

  v5 = v4;
  [(UILabel *)self->_actionLabel setText:v4];
}

- (void)gridViewDidUpdateContentSize:(id)size
{
  [(SFPrivacyRedesignBannerCell *)self invalidateIntrinsicContentSize];

  [(SFPrivacyRedesignBannerCell *)self setNeedsLayout];
}

@end