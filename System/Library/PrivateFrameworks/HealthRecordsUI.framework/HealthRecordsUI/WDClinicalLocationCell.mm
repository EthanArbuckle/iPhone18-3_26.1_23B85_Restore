@interface WDClinicalLocationCell
- (WDClinicalLocationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_configureDistinctIntrinsicLayoutPrioritiesForLabels;
- (void)_setUpConstraints;
- (void)_setupSubviews;
- (void)_updateContentWithBrandable:(id)a3 dataProvider:(id)a4;
- (void)prepareForReuse;
- (void)setBrandable:(id)a3 dataProvider:(id)a4;
- (void)willDisplay;
@end

@implementation WDClinicalLocationCell

- (WDClinicalLocationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = WDClinicalLocationCell;
  v4 = [(WDClinicalLocationCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(WDClinicalLocationCell *)v4 setSelectionStyle:0];
    v6 = [MEMORY[0x1E69DC888] clearColor];
    [(WDClinicalLocationCell *)v5 setBackgroundColor:v6];

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
  v17 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_subtitleLabel setTextColor:v17];

  v18 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  detailLabel = self->_detailLabel;
  self->_detailLabel = v18;

  [(UILabel *)self->_detailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_detailLabel setAdjustsFontForContentSizeCategory:1];
  v20 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:v12];
  [(UILabel *)self->_detailLabel setFont:v20];

  [(UILabel *)self->_detailLabel setNumberOfLines:0];
  v21 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_detailLabel setTextColor:v21];

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
  v27 = [(WDClinicalLocationCell *)self contentView];
  [v27 addSubview:self->_stackView];

  [(WDClinicalLocationCell *)self _updateForCurrentSizeCategory];
}

- (void)_setUpConstraints
{
  stackView = self->_stackView;
  v4 = [(WDClinicalLocationCell *)self contentView];
  [(UIStackView *)stackView hk_alignConstraintsWithView:v4];

  [(WDClinicalLocationCell *)self _configureDistinctIntrinsicLayoutPrioritiesForLabels];
}

- (void)_configureDistinctIntrinsicLayoutPrioritiesForLabels
{
  v10[3] = *MEMORY[0x1E69E9840];
  v3 = [(UIStackView *)self->_stackView constraintsAffectingLayoutForAxis:1];
  v4 = [v3 firstObject];

  LODWORD(v5) = 1132003328;
  [v4 setPriority:v5];
  v6 = [(WDClinicalLocationCell *)self titleLabel];
  v7 = [(WDClinicalLocationCell *)self subtitleLabel];
  v10[1] = v7;
  v8 = [(WDClinicalLocationCell *)self detailLabel];
  v10[2] = v8;
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

- (void)setBrandable:(id)a3 dataProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  brandable = self->_brandable;
  self->_brandable = v6;
  v11 = v6;

  dataProvider = self->_dataProvider;
  self->_dataProvider = v7;
  v10 = v7;

  [(WDClinicalLocationCell *)self _updateContentWithBrandable:v11 dataProvider:v10];
}

- (void)_updateContentWithBrandable:(id)a3 dataProvider:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(WDClinicalLocationCell *)self logoView];
  v8 = v7;
  if (v13 && v6)
  {
    [v7 fetchBrandable:v13 dataProvider:v6];
  }

  else
  {
    [v7 prepareForReuse];
  }

  v9 = [v13 title];
  v10 = [(WDClinicalLocationCell *)self titleLabel];
  [v10 setText:v9];

  v11 = [v13 subtitle];
  v12 = [(WDClinicalLocationCell *)self subtitleLabel];
  [v12 setText:v11];
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
  v3 = [(WDClinicalLocationCell *)self titleLabel];
  v4 = [v3 text];
  v5 = [v4 length] == 0;
  v6 = [(WDClinicalLocationCell *)self titleLabel];
  [v6 setHidden:v5];

  v7 = [(WDClinicalLocationCell *)self subtitleLabel];
  v8 = [v7 text];
  v9 = [v8 length] == 0;
  v10 = [(WDClinicalLocationCell *)self subtitleLabel];
  [v10 setHidden:v9];

  v14 = [(WDClinicalLocationCell *)self detailLabel];
  v11 = [v14 text];
  v12 = [v11 length] == 0;
  v13 = [(WDClinicalLocationCell *)self detailLabel];
  [v13 setHidden:v12];
}

@end