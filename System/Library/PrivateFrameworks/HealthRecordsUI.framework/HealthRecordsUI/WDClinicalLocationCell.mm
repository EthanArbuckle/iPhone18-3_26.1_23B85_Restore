@interface WDClinicalLocationCell
- (WDClinicalLocationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_configureDistinctIntrinsicLayoutPrioritiesForLabels;
- (void)_setUpConstraints;
- (void)_setupSubviews;
- (void)_updateContentWithBrandable:(id)brandable dataProvider:(id)provider;
- (void)prepareForReuse;
- (void)setBrandable:(id)brandable dataProvider:(id)provider;
- (void)willDisplay;
@end

@implementation WDClinicalLocationCell

- (WDClinicalLocationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = WDClinicalLocationCell;
  v4 = [(WDClinicalLocationCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(WDClinicalLocationCell *)v4 setSelectionStyle:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(WDClinicalLocationCell *)v5 setBackgroundColor:clearColor];

    [(WDClinicalLocationCell *)v5 _setupSubviews];
    [(WDClinicalLocationCell *)v5 _setUpConstraints];
  }

  return v5;
}

- (void)_setupSubviews
{
  v28[2] = *MEMORY[0x1E69E9840];
  v3 = [WDBrandLogoView alloc];
  v4 = *MEMORY[0x1E695F050];
  v5 = *(MEMORY[0x1E695F050] + 8);
  v6 = *(MEMORY[0x1E695F050] + 16);
  v7 = *(MEMORY[0x1E695F050] + 24);
  v8 = [(WDBrandLogoView *)v3 initWithFrame:*MEMORY[0x1E695F050], v5, v6, v7];
  logoView = self->_logoView;
  self->_logoView = v8;

  [(WDBrandLogoView *)self->_logoView setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v10;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_titleLabel setAdjustsFontForContentSizeCategory:1];
  v12 = *MEMORY[0x1E69DDDC0];
  v13 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDDC0] symbolicTraits:2];
  [(UILabel *)self->_titleLabel setFont:v13];

  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  v14 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v14;

  [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_subtitleLabel setAdjustsFontForContentSizeCategory:1];
  v16 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:v12];
  [(UILabel *)self->_subtitleLabel setFont:v16];

  [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_subtitleLabel setTextColor:secondaryLabelColor];

  v18 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  detailLabel = self->_detailLabel;
  self->_detailLabel = v18;

  [(UILabel *)self->_detailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_detailLabel setAdjustsFontForContentSizeCategory:1];
  v20 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:v12];
  [(UILabel *)self->_detailLabel setFont:v20];

  [(UILabel *)self->_detailLabel setNumberOfLines:0];
  secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_detailLabel setTextColor:secondaryLabelColor2];

  v22 = objc_alloc(MEMORY[0x1E69DCF90]);
  v23 = self->_titleLabel;
  v28[0] = self->_logoView;
  v28[1] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v25 = [v22 initWithArrangedSubviews:v24];
  stackView = self->_stackView;
  self->_stackView = v25;

  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView setAlignment:3];
  [(UIStackView *)self->_stackView setAxis:1];
  [(UIStackView *)self->_stackView setSpacing:1.17549435e-38];
  [(UIStackView *)self->_stackView setBaselineRelativeArrangement:1];
  [(UIStackView *)self->_stackView setLayoutMarginsRelativeArrangement:1];
  [(UIStackView *)self->_stackView setPreservesSuperviewLayoutMargins:1];
  contentView = [(WDClinicalLocationCell *)self contentView];
  [contentView addSubview:self->_stackView];

  [(WDClinicalLocationCell *)self _updateForCurrentSizeCategory];
}

- (void)_setUpConstraints
{
  stackView = self->_stackView;
  contentView = [(WDClinicalLocationCell *)self contentView];
  [(UIStackView *)stackView hk_alignConstraintsWithView:contentView];

  [(WDClinicalLocationCell *)self _configureDistinctIntrinsicLayoutPrioritiesForLabels];
}

- (void)_configureDistinctIntrinsicLayoutPrioritiesForLabels
{
  v10[3] = *MEMORY[0x1E69E9840];
  v3 = [(UIStackView *)self->_stackView constraintsAffectingLayoutForAxis:1];
  firstObject = [v3 firstObject];

  LODWORD(v5) = 1132003328;
  [firstObject setPriority:v5];
  titleLabel = [(WDClinicalLocationCell *)self titleLabel];
  subtitleLabel = [(WDClinicalLocationCell *)self subtitleLabel];
  v10[1] = subtitleLabel;
  detailLabel = [(WDClinicalLocationCell *)self detailLabel];
  v10[2] = detailLabel;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];

  [v9 enumerateObjectsUsingBlock:&__block_literal_global_0];
}

void __78__WDClinicalLocationCell__configureDistinctIntrinsicLayoutPrioritiesForLabels__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v3 = a3;
  v4 = a3 + 750.0;
  v7 = a2;
  *&v5 = v4;
  [v7 setContentCompressionResistancePriority:1 forAxis:v5];
  *&v6 = v3 + 250.0;
  [v7 setContentHuggingPriority:1 forAxis:v6];
}

- (void)setBrandable:(id)brandable dataProvider:(id)provider
{
  brandableCopy = brandable;
  providerCopy = provider;
  brandable = self->_brandable;
  self->_brandable = brandableCopy;
  v11 = brandableCopy;

  dataProvider = self->_dataProvider;
  self->_dataProvider = providerCopy;
  v10 = providerCopy;

  [(WDClinicalLocationCell *)self _updateContentWithBrandable:v11 dataProvider:v10];
}

- (void)_updateContentWithBrandable:(id)brandable dataProvider:(id)provider
{
  brandableCopy = brandable;
  providerCopy = provider;
  logoView = [(WDClinicalLocationCell *)self logoView];
  v8 = logoView;
  if (brandableCopy && providerCopy)
  {
    [logoView fetchBrandable:brandableCopy dataProvider:providerCopy];
  }

  else
  {
    [logoView prepareForReuse];
  }

  title = [brandableCopy title];
  titleLabel = [(WDClinicalLocationCell *)self titleLabel];
  [titleLabel setText:title];

  subtitle = [brandableCopy subtitle];
  subtitleLabel = [(WDClinicalLocationCell *)self subtitleLabel];
  [subtitleLabel setText:subtitle];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = WDClinicalLocationCell;
  [(WDClinicalLocationCell *)&v3 prepareForReuse];
  [(WDClinicalLocationCell *)self setBrandable:0 dataProvider:0];
}

- (void)willDisplay
{
  titleLabel = [(WDClinicalLocationCell *)self titleLabel];
  text = [titleLabel text];
  v5 = [text length] == 0;
  titleLabel2 = [(WDClinicalLocationCell *)self titleLabel];
  [titleLabel2 setHidden:v5];

  subtitleLabel = [(WDClinicalLocationCell *)self subtitleLabel];
  text2 = [subtitleLabel text];
  v9 = [text2 length] == 0;
  subtitleLabel2 = [(WDClinicalLocationCell *)self subtitleLabel];
  [subtitleLabel2 setHidden:v9];

  detailLabel = [(WDClinicalLocationCell *)self detailLabel];
  text3 = [detailLabel text];
  v12 = [text3 length] == 0;
  detailLabel2 = [(WDClinicalLocationCell *)self detailLabel];
  [detailLabel2 setHidden:v12];
}

@end