@interface WDMedicalRecordBrandLogoCell
- (HKClinicalBrandable)brandable;
- (WDClinicalSourcesDataProvider)dataProvider;
- (WDMedicalRecordBrandLogoCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (double)logoSize;
- (id)_contentViewMarginsGuide;
- (void)_updateBasedOnAccessibilityCategory:(BOOL)a3;
- (void)_updateContentWithBrandable:(id)a3 dataProvider:(id)a4;
- (void)prepareForReuse;
- (void)setBrandable:(id)a3 dataProvider:(id)a4;
- (void)setLogoSize:(double)a3;
- (void)setShowDisclosureChevron:(BOOL)a3;
- (void)setUpConstraints;
- (void)setupSubviews;
- (void)updateConstraints;
@end

@implementation WDMedicalRecordBrandLogoCell

- (WDMedicalRecordBrandLogoCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = WDMedicalRecordBrandLogoCell;
  v4 = [(WDMedicalRecordGroupableCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
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
  v3 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  [v3 setDirectionalLayoutMargins:{12.0, 0.0, 12.0, 0.0}];

  v4 = [WDMedicalRecordBrandView alloc];
  v5 = [(WDMedicalRecordBrandView *)v4 initWithFrame:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
  brandView = self->_brandView;
  self->_brandView = v5;

  [(WDMedicalRecordBrandView *)self->_brandView setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [(WDMedicalRecordBrandLogoCell *)self contentView];
  [v7 addSubview:self->_brandView];

  v8 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v9 = [MEMORY[0x1E69DCAB8] hk_disclosureChevronImage];
  v10 = [v8 initWithImage:v9];
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
  v3 = [(WDMedicalRecordBrandLogoCell *)self _contentViewMarginsGuide];
  v4 = [v3 topAnchor];
  v5 = [(WDMedicalRecordBrandLogoCell *)self brandView];
  v6 = [v5 topAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  [v7 setActive:1];

  v8 = [v3 leadingAnchor];
  v9 = [(WDMedicalRecordBrandLogoCell *)self brandView];
  v10 = [v9 leadingAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  [v11 setActive:1];

  v12 = [v3 bottomAnchor];
  v13 = [(WDMedicalRecordBrandLogoCell *)self brandView];
  v14 = [v13 bottomAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  [v15 setActive:1];

  v16 = [v3 trailingAnchor];
  v17 = [(WDMedicalRecordBrandLogoCell *)self brandView];
  v18 = [v17 trailingAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];

  LODWORD(v20) = 1148829696;
  [v19 setPriority:v20];
  [v19 setActive:1];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = WDMedicalRecordBrandLogoCell;
  [(WDMedicalRecordGroupableCell *)&v4 prepareForReuse];
  v3 = [(WDMedicalRecordBrandLogoCell *)self brandView];
  [v3 setBrandable:0 dataProvider:0];
}

- (void)updateConstraints
{
  v17.receiver = self;
  v17.super_class = WDMedicalRecordBrandLogoCell;
  [(WDMedicalRecordBrandLogoCell *)&v17 updateConstraints];
  if ([(WDMedicalRecordBrandLogoCell *)self showsDisclosureChevron])
  {
    v3 = [(WDMedicalRecordBrandLogoCell *)self disclosureChevronView];
    v4 = [v3 leadingAnchor];
    v5 = [(WDMedicalRecordBrandLogoCell *)self brandView];
    v6 = [v5 trailingAnchor];
    v7 = [v4 constraintEqualToAnchor:v6 constant:*MEMORY[0x1E69A4090]];
    [v7 setActive:1];

    v8 = [(WDMedicalRecordBrandLogoCell *)self _contentViewMarginsGuide];
    v9 = [v8 centerYAnchor];
    v10 = [(WDMedicalRecordBrandLogoCell *)self disclosureChevronView];
    v11 = [v10 centerYAnchor];
    v12 = [v9 constraintEqualToAnchor:v11];
    [v12 setActive:1];

    v13 = [v8 trailingAnchor];
    v14 = [(WDMedicalRecordBrandLogoCell *)self disclosureChevronView];
    v15 = [v14 trailingAnchor];
    v16 = [v13 constraintEqualToAnchor:v15];
    [v16 setActive:1];
  }
}

- (void)setShowDisclosureChevron:(BOOL)a3
{
  self->_showDisclosureChevron = a3;
  if (a3)
  {
    v4 = [(WDMedicalRecordBrandLogoCell *)self contentView];
    [v4 addSubview:self->_disclosureChevronView];
  }

  else
  {
    v4 = [(WDMedicalRecordBrandLogoCell *)self disclosureChevronView];
    [v4 removeFromSuperview];
  }

  [(WDMedicalRecordBrandLogoCell *)self setNeedsUpdateConstraints];
}

- (id)_contentViewMarginsGuide
{
  v2 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v3 = [v2 layoutMarginsGuide];

  return v3;
}

- (void)_updateContentWithBrandable:(id)a3 dataProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WDMedicalRecordBrandLogoCell *)self brandView];
  [v8 _updateContentWithBrandable:v7 dataProvider:v6];
}

- (void)_updateBasedOnAccessibilityCategory:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = WDMedicalRecordBrandLogoCell;
  [(WDMedicalRecordGroupableCell *)&v6 _updateBasedOnAccessibilityCategory:?];
  v5 = [(WDMedicalRecordBrandLogoCell *)self brandView];
  [v5 _updateBasedOnAccessibilityCategory:v3];
}

- (void)setBrandable:(id)a3 dataProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WDMedicalRecordBrandLogoCell *)self brandView];
  [v8 setBrandable:v7 dataProvider:v6];
}

- (HKClinicalBrandable)brandable
{
  v2 = [(WDMedicalRecordBrandLogoCell *)self brandView];
  v3 = [v2 brandable];

  return v3;
}

- (WDClinicalSourcesDataProvider)dataProvider
{
  v2 = [(WDMedicalRecordBrandLogoCell *)self brandView];
  v3 = [v2 dataProvider];

  return v3;
}

- (double)logoSize
{
  v2 = [(WDMedicalRecordBrandLogoCell *)self brandView];
  [v2 logoSize];
  v4 = v3;

  return v4;
}

- (void)setLogoSize:(double)a3
{
  v4 = [(WDMedicalRecordBrandLogoCell *)self brandView];
  [v4 setLogoSize:a3];
}

@end