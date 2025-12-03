@interface WDMedicalRecordBrandLogoCell
- (HKClinicalBrandable)brandable;
- (WDClinicalSourcesDataProvider)dataProvider;
- (WDMedicalRecordBrandLogoCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (double)logoSize;
- (id)_contentViewMarginsGuide;
- (void)_updateBasedOnAccessibilityCategory:(BOOL)category;
- (void)_updateContentWithBrandable:(id)brandable dataProvider:(id)provider;
- (void)prepareForReuse;
- (void)setBrandable:(id)brandable dataProvider:(id)provider;
- (void)setLogoSize:(double)size;
- (void)setShowDisclosureChevron:(BOOL)chevron;
- (void)setUpConstraints;
- (void)setupSubviews;
- (void)updateConstraints;
@end

@implementation WDMedicalRecordBrandLogoCell

- (WDMedicalRecordBrandLogoCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = WDMedicalRecordBrandLogoCell;
  v4 = [(WDMedicalRecordGroupableCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(WDMedicalRecordBrandLogoCell *)v4 setShowDisclosureChevron:0];
  }

  return v5;
}

- (void)setupSubviews
{
  v14.receiver = self;
  v14.super_class = WDMedicalRecordBrandLogoCell;
  [(WDMedicalRecordGroupableCell *)&v14 setupSubviews];
  pillBackgroundView = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  [pillBackgroundView setDirectionalLayoutMargins:{12.0, 0.0, 12.0, 0.0}];

  v4 = [WDMedicalRecordBrandView alloc];
  v5 = [(WDMedicalRecordBrandView *)v4 initWithFrame:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
  brandView = self->_brandView;
  self->_brandView = v5;

  [(WDMedicalRecordBrandView *)self->_brandView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(WDMedicalRecordBrandLogoCell *)self contentView];
  [contentView addSubview:self->_brandView];

  v8 = objc_alloc(MEMORY[0x1E69DCAE0]);
  hk_disclosureChevronImage = [MEMORY[0x1E69DCAB8] hk_disclosureChevronImage];
  v10 = [v8 initWithImage:hk_disclosureChevronImage];
  disclosureChevronView = self->_disclosureChevronView;
  self->_disclosureChevronView = v10;

  [(UIImageView *)self->_disclosureChevronView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v12) = 1148846080;
  [(UIImageView *)self->_disclosureChevronView setContentHuggingPriority:0 forAxis:v12];
  LODWORD(v13) = 1148846080;
  [(UIImageView *)self->_disclosureChevronView setContentCompressionResistancePriority:0 forAxis:v13];
}

- (void)setUpConstraints
{
  v21.receiver = self;
  v21.super_class = WDMedicalRecordBrandLogoCell;
  [(WDMedicalRecordGroupableCell *)&v21 setUpConstraints];
  _contentViewMarginsGuide = [(WDMedicalRecordBrandLogoCell *)self _contentViewMarginsGuide];
  topAnchor = [_contentViewMarginsGuide topAnchor];
  brandView = [(WDMedicalRecordBrandLogoCell *)self brandView];
  topAnchor2 = [brandView topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v7 setActive:1];

  leadingAnchor = [_contentViewMarginsGuide leadingAnchor];
  brandView2 = [(WDMedicalRecordBrandLogoCell *)self brandView];
  leadingAnchor2 = [brandView2 leadingAnchor];
  v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v11 setActive:1];

  bottomAnchor = [_contentViewMarginsGuide bottomAnchor];
  brandView3 = [(WDMedicalRecordBrandLogoCell *)self brandView];
  bottomAnchor2 = [brandView3 bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v15 setActive:1];

  trailingAnchor = [_contentViewMarginsGuide trailingAnchor];
  brandView4 = [(WDMedicalRecordBrandLogoCell *)self brandView];
  trailingAnchor2 = [brandView4 trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  LODWORD(v20) = 1148829696;
  [v19 setPriority:v20];
  [v19 setActive:1];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = WDMedicalRecordBrandLogoCell;
  [(WDMedicalRecordGroupableCell *)&v4 prepareForReuse];
  brandView = [(WDMedicalRecordBrandLogoCell *)self brandView];
  [brandView setBrandable:0 dataProvider:0];
}

- (void)updateConstraints
{
  v17.receiver = self;
  v17.super_class = WDMedicalRecordBrandLogoCell;
  [(WDMedicalRecordBrandLogoCell *)&v17 updateConstraints];
  if ([(WDMedicalRecordBrandLogoCell *)self showsDisclosureChevron])
  {
    disclosureChevronView = [(WDMedicalRecordBrandLogoCell *)self disclosureChevronView];
    leadingAnchor = [disclosureChevronView leadingAnchor];
    brandView = [(WDMedicalRecordBrandLogoCell *)self brandView];
    trailingAnchor = [brandView trailingAnchor];
    v7 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:*MEMORY[0x1E69A4090]];
    [v7 setActive:1];

    _contentViewMarginsGuide = [(WDMedicalRecordBrandLogoCell *)self _contentViewMarginsGuide];
    centerYAnchor = [_contentViewMarginsGuide centerYAnchor];
    disclosureChevronView2 = [(WDMedicalRecordBrandLogoCell *)self disclosureChevronView];
    centerYAnchor2 = [disclosureChevronView2 centerYAnchor];
    v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v12 setActive:1];

    trailingAnchor2 = [_contentViewMarginsGuide trailingAnchor];
    disclosureChevronView3 = [(WDMedicalRecordBrandLogoCell *)self disclosureChevronView];
    trailingAnchor3 = [disclosureChevronView3 trailingAnchor];
    v16 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    [v16 setActive:1];
  }
}

- (void)setShowDisclosureChevron:(BOOL)chevron
{
  self->_showDisclosureChevron = chevron;
  if (chevron)
  {
    contentView = [(WDMedicalRecordBrandLogoCell *)self contentView];
    [contentView addSubview:self->_disclosureChevronView];
  }

  else
  {
    contentView = [(WDMedicalRecordBrandLogoCell *)self disclosureChevronView];
    [contentView removeFromSuperview];
  }

  [(WDMedicalRecordBrandLogoCell *)self setNeedsUpdateConstraints];
}

- (id)_contentViewMarginsGuide
{
  pillBackgroundView = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  layoutMarginsGuide = [pillBackgroundView layoutMarginsGuide];

  return layoutMarginsGuide;
}

- (void)_updateContentWithBrandable:(id)brandable dataProvider:(id)provider
{
  providerCopy = provider;
  brandableCopy = brandable;
  brandView = [(WDMedicalRecordBrandLogoCell *)self brandView];
  [brandView _updateContentWithBrandable:brandableCopy dataProvider:providerCopy];
}

- (void)_updateBasedOnAccessibilityCategory:(BOOL)category
{
  categoryCopy = category;
  v6.receiver = self;
  v6.super_class = WDMedicalRecordBrandLogoCell;
  [(WDMedicalRecordGroupableCell *)&v6 _updateBasedOnAccessibilityCategory:?];
  brandView = [(WDMedicalRecordBrandLogoCell *)self brandView];
  [brandView _updateBasedOnAccessibilityCategory:categoryCopy];
}

- (void)setBrandable:(id)brandable dataProvider:(id)provider
{
  providerCopy = provider;
  brandableCopy = brandable;
  brandView = [(WDMedicalRecordBrandLogoCell *)self brandView];
  [brandView setBrandable:brandableCopy dataProvider:providerCopy];
}

- (HKClinicalBrandable)brandable
{
  brandView = [(WDMedicalRecordBrandLogoCell *)self brandView];
  brandable = [brandView brandable];

  return brandable;
}

- (WDClinicalSourcesDataProvider)dataProvider
{
  brandView = [(WDMedicalRecordBrandLogoCell *)self brandView];
  dataProvider = [brandView dataProvider];

  return dataProvider;
}

- (double)logoSize
{
  brandView = [(WDMedicalRecordBrandLogoCell *)self brandView];
  [brandView logoSize];
  v4 = v3;

  return v4;
}

- (void)setLogoSize:(double)size
{
  brandView = [(WDMedicalRecordBrandLogoCell *)self brandView];
  [brandView setLogoSize:size];
}

@end