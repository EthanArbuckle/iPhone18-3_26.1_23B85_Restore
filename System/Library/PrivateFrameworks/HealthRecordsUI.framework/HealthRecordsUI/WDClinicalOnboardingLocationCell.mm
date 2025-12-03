@interface WDClinicalOnboardingLocationCell
- (WDClinicalOnboardingLocationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setUpConstraints;
- (void)_setupSubviews;
- (void)_updateContentWithBrandable:(id)brandable dataProvider:(id)provider;
- (void)prepareForReuse;
- (void)setProvider:(id)provider dataProvider:(id)dataProvider;
@end

@implementation WDClinicalOnboardingLocationCell

- (WDClinicalOnboardingLocationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = WDClinicalOnboardingLocationCell;
  v4 = [(WDClinicalLocationCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    [MEMORY[0x1E69DCAE0] providerDetailLogoViewDimension];
    v6 = v5;
    logoView = [(WDClinicalLocationCell *)v4 logoView];
    [logoView setSize:v6];
  }

  return v4;
}

- (void)_setupSubviews
{
  v12.receiver = self;
  v12.super_class = WDClinicalOnboardingLocationCell;
  [(WDClinicalLocationCell *)&v12 _setupSubviews];
  stackView = [(WDClinicalLocationCell *)self stackView];
  subtitleLabel = [(WDClinicalLocationCell *)self subtitleLabel];
  [stackView addArrangedSubview:subtitleLabel];

  stackView2 = [(WDClinicalLocationCell *)self stackView];
  detailLabel = [(WDClinicalLocationCell *)self detailLabel];
  [stackView2 addArrangedSubview:detailLabel];

  v7 = *MEMORY[0x1E69A4090];
  stackView3 = [(WDClinicalLocationCell *)self stackView];
  [stackView3 setDirectionalLayoutMargins:{8.0, v7, 4.0, v7}];

  stackView4 = [(WDClinicalLocationCell *)self stackView];
  [stackView4 setBaselineRelativeArrangement:0];

  stackView5 = [(WDClinicalLocationCell *)self stackView];
  [stackView5 setPreservesSuperviewLayoutMargins:0];

  stackView6 = [(WDClinicalLocationCell *)self stackView];
  [stackView6 setSpacing:0.0];
}

- (void)_setUpConstraints
{
  v92[6] = *MEMORY[0x1E69E9840];
  v88.receiver = self;
  v88.super_class = WDClinicalOnboardingLocationCell;
  [(WDClinicalLocationCell *)&v88 _setUpConstraints];
  stackView = [(WDClinicalLocationCell *)self stackView];
  [stackView setAlignment:1];

  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  stackView2 = [(WDClinicalLocationCell *)self stackView];
  logoView = [(WDClinicalLocationCell *)self logoView];
  [stackView2 removeArrangedSubview:logoView];

  stackView3 = [(WDClinicalLocationCell *)self stackView];
  v8 = v4;
  [stackView3 insertArrangedSubview:v4 atIndex:0];

  logoView2 = [(WDClinicalLocationCell *)self logoView];
  [v4 addSubview:logoView2];

  v67 = MEMORY[0x1E696ACD8];
  logoView3 = [(WDClinicalLocationCell *)self logoView];
  centerXAnchor = [logoView3 centerXAnchor];
  centerXAnchor2 = [v4 centerXAnchor];
  v77 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v92[0] = v77;
  logoView4 = [(WDClinicalLocationCell *)self logoView];
  centerYAnchor = [logoView4 centerYAnchor];
  centerYAnchor2 = [v4 centerYAnchor];
  v70 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v92[1] = v70;
  logoView5 = [(WDClinicalLocationCell *)self logoView];
  topAnchor = [logoView5 topAnchor];
  topAnchor2 = [v4 topAnchor];
  v65 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v92[2] = v65;
  logoView6 = [(WDClinicalLocationCell *)self logoView];
  leadingAnchor = [logoView6 leadingAnchor];
  leadingAnchor2 = [v4 leadingAnchor];
  v61 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
  v92[3] = v61;
  bottomAnchor = [v4 bottomAnchor];
  logoView7 = [(WDClinicalLocationCell *)self logoView];
  bottomAnchor2 = [logoView7 bottomAnchor];
  v12 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
  v92[4] = v12;
  trailingAnchor = [v8 trailingAnchor];
  logoView8 = [(WDClinicalLocationCell *)self logoView];
  trailingAnchor2 = [logoView8 trailingAnchor];
  v16 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2];
  v92[5] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:6];
  [v67 activateConstraints:v17];

  v82 = MEMORY[0x1E696ACD8];
  leadingAnchor3 = [v8 leadingAnchor];
  contentView = [(WDClinicalOnboardingLocationCell *)self contentView];
  leadingAnchor4 = [contentView leadingAnchor];
  v20 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v91[0] = v20;
  v87 = v8;
  trailingAnchor3 = [v8 trailingAnchor];
  contentView2 = [(WDClinicalOnboardingLocationCell *)self contentView];
  trailingAnchor4 = [contentView2 trailingAnchor];
  v24 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v91[1] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:2];
  [v82 activateConstraints:v25];

  stackView4 = [(WDClinicalLocationCell *)self stackView];
  [stackView4 setCustomSpacing:v8 afterView:20.0];

  logoView9 = [(WDClinicalLocationCell *)self logoView];
  LODWORD(v28) = 1148846080;
  [logoView9 setContentHuggingPriority:0 forAxis:v28];

  logoView10 = [(WDClinicalLocationCell *)self logoView];
  LODWORD(v30) = 1148846080;
  [logoView10 setContentCompressionResistancePriority:0 forAxis:v30];

  logoView11 = [(WDClinicalLocationCell *)self logoView];
  LODWORD(v32) = 1148846080;
  [logoView11 setContentHuggingPriority:1 forAxis:v32];

  logoView12 = [(WDClinicalLocationCell *)self logoView];
  LODWORD(v34) = 1148846080;
  [logoView12 setContentCompressionResistancePriority:1 forAxis:v34];

  v35 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
  stackView5 = [(WDClinicalLocationCell *)self stackView];
  titleLabel = [(WDClinicalLocationCell *)self titleLabel];
  [stackView5 removeArrangedSubview:titleLabel];

  stackView6 = [(WDClinicalLocationCell *)self stackView];
  subtitleLabel = [(WDClinicalLocationCell *)self subtitleLabel];
  [stackView6 removeArrangedSubview:subtitleLabel];

  stackView7 = [(WDClinicalLocationCell *)self stackView];
  detailLabel = [(WDClinicalLocationCell *)self detailLabel];
  [stackView7 removeArrangedSubview:detailLabel];

  stackView8 = [(WDClinicalLocationCell *)self stackView];
  [stackView8 addArrangedSubview:v35];

  v43 = objc_alloc(MEMORY[0x1E69DCF90]);
  titleLabel2 = [(WDClinicalLocationCell *)self titleLabel];
  v90[0] = titleLabel2;
  subtitleLabel2 = [(WDClinicalLocationCell *)self subtitleLabel];
  v90[1] = subtitleLabel2;
  detailLabel2 = [(WDClinicalLocationCell *)self detailLabel];
  v90[2] = detailLabel2;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:3];
  v48 = [v43 initWithArrangedSubviews:v47];

  [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v48 setAxis:1];
  [v48 setSpacing:0.0];
  [v48 setAlignment:1];
  [v35 addSubview:v48];
  v72 = MEMORY[0x1E696ACD8];
  leadingAnchor5 = [v48 leadingAnchor];
  leadingAnchor6 = [v35 leadingAnchor];
  v78 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:32.0];
  v89[0] = v78;
  trailingAnchor5 = [v48 trailingAnchor];
  trailingAnchor6 = [v35 trailingAnchor];
  v49 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v89[1] = v49;
  topAnchor3 = [v48 topAnchor];
  v86 = v35;
  topAnchor4 = [v35 topAnchor];
  v52 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v89[2] = v52;
  bottomAnchor3 = [v48 bottomAnchor];
  bottomAnchor4 = [v35 bottomAnchor];
  v55 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v89[3] = v55;
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:4];
  [v72 activateConstraints:v56];

  titleLabel3 = [(WDClinicalLocationCell *)self titleLabel];
  [titleLabel3 setTextAlignment:4];

  subtitleLabel3 = [(WDClinicalLocationCell *)self subtitleLabel];
  [subtitleLabel3 setTextAlignment:4];

  detailLabel3 = [(WDClinicalLocationCell *)self detailLabel];
  [detailLabel3 setTextAlignment:4];
}

- (void)setProvider:(id)provider dataProvider:(id)dataProvider
{
  dataProviderCopy = dataProvider;
  providerCopy = provider;
  v8 = [providerCopy copy];
  provider = self->_provider;
  self->_provider = v8;

  v10.receiver = self;
  v10.super_class = WDClinicalOnboardingLocationCell;
  [(WDClinicalLocationCell *)&v10 setBrandable:providerCopy dataProvider:dataProviderCopy];
}

- (void)_updateContentWithBrandable:(id)brandable dataProvider:(id)provider
{
  brandableCopy = brandable;
  v9.receiver = self;
  v9.super_class = WDClinicalOnboardingLocationCell;
  [(WDClinicalLocationCell *)&v9 _updateContentWithBrandable:brandableCopy dataProvider:provider];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    location = [brandableCopy location];
  }

  else
  {
    location = 0;
  }

  detailLabel = [(WDClinicalLocationCell *)self detailLabel];
  [detailLabel setText:location];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = WDClinicalOnboardingLocationCell;
  [(WDClinicalLocationCell *)&v3 prepareForReuse];
  [(WDClinicalOnboardingLocationCell *)self setProvider:0 dataProvider:0];
}

@end