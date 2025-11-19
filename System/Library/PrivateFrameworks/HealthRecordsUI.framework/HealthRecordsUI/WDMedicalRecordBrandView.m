@interface WDMedicalRecordBrandView
- (WDMedicalRecordBrandView)initWithFrame:(CGRect)a3;
- (double)logoSize;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateBasedOnAccessibilityCategory:(BOOL)a3;
- (void)_updateContentWithBrandable:(id)a3 dataProvider:(id)a4;
- (void)_updateForContentSizeCategory:(id)a3;
- (void)_updateForCurrentSizeCategory;
- (void)_updateLabelVisibility;
- (void)setBrandable:(id)a3 dataProvider:(id)a4;
- (void)setLogoSize:(double)a3;
@end

@implementation WDMedicalRecordBrandView

- (WDMedicalRecordBrandView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = WDMedicalRecordBrandView;
  v3 = [(WDMedicalRecordBrandView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(WDMedicalRecordBrandView *)v3 _setupSubviews];
    [(WDMedicalRecordBrandView *)v4 _setupConstraints];
  }

  return v4;
}

- (double)logoSize
{
  v2 = [(WDMedicalRecordBrandView *)self logoView];
  [v2 size];
  v4 = v3;

  return v4;
}

- (void)setLogoSize:(double)a3
{
  v4 = [(WDMedicalRecordBrandView *)self logoView];
  [v4 setSize:a3];
}

- (void)setBrandable:(id)a3 dataProvider:(id)a4
{
  v6 = a3;
  objc_storeStrong(&self->_dataProvider, a4);
  v7 = a4;
  brandable = self->_brandable;
  self->_brandable = v6;
  v9 = v6;

  [(WDMedicalRecordBrandView *)self _updateContentWithBrandable:v9 dataProvider:v7];

  [(WDMedicalRecordBrandView *)self _updateLabelVisibility];
}

- (void)_setupSubviews
{
  v35[3] = *MEMORY[0x1E69E9840];
  v3 = [WDBrandLogoView alloc];
  v4 = *MEMORY[0x1E695F050];
  v5 = *(MEMORY[0x1E695F050] + 8);
  v6 = *(MEMORY[0x1E695F050] + 16);
  v7 = *(MEMORY[0x1E695F050] + 24);
  v8 = [(WDBrandLogoView *)v3 initWithFrame:*MEMORY[0x1E695F050], v5, v6, v7];
  logoView = self->_logoView;
  self->_logoView = v8;

  [(WDBrandLogoView *)self->_logoView setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v4, v5, v6, v7}];
  logoAlignedContentView = self->_logoAlignedContentView;
  self->_logoAlignedContentView = v10;

  [(UIView *)self->_logoAlignedContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  brandTitleLabel = self->_brandTitleLabel;
  self->_brandTitleLabel = v12;

  [(UILabel *)self->_brandTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_brandTitleLabel setAdjustsFontForContentSizeCategory:0];
  v14 = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)self->_brandTitleLabel setTextColor:v14];

  v15 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  brandSubtitleLabel = self->_brandSubtitleLabel;
  self->_brandSubtitleLabel = v15;

  [(UILabel *)self->_brandSubtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_brandSubtitleLabel setAdjustsFontForContentSizeCategory:0];
  v17 = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)self->_brandSubtitleLabel setTextColor:v17];

  v18 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  brandDetailLabel = self->_brandDetailLabel;
  self->_brandDetailLabel = v18;

  [(UILabel *)self->_brandDetailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_brandDetailLabel setAdjustsFontForContentSizeCategory:0];
  [(UILabel *)self->_brandDetailLabel setNumberOfLines:0];
  v20 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_brandDetailLabel setTextColor:v20];

  v21 = objc_alloc(MEMORY[0x1E69DCF90]);
  v22 = self->_brandSubtitleLabel;
  v35[0] = self->_brandTitleLabel;
  v35[1] = v22;
  v35[2] = self->_brandDetailLabel;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:3];
  v24 = [v21 initWithArrangedSubviews:v23];
  verticalSpecContainerView = self->_verticalSpecContainerView;
  self->_verticalSpecContainerView = v24;

  [(UIStackView *)self->_verticalSpecContainerView setAxis:1];
  [(UIStackView *)self->_verticalSpecContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = [(WDMedicalRecordBrandView *)self verticalSpecContainerView];
  [v26 setBaselineRelativeArrangement:1];

  v27 = [(WDMedicalRecordBrandView *)self logoAlignedContentView];
  v28 = [(WDMedicalRecordBrandView *)self verticalSpecContainerView];
  [v27 addSubview:v28];

  v29 = objc_alloc(MEMORY[0x1E69DCF90]);
  v30 = self->_logoAlignedContentView;
  v34[0] = self->_logoView;
  v34[1] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  v32 = [v29 initWithArrangedSubviews:v31];
  stackView = self->_stackView;
  self->_stackView = v32;

  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(WDMedicalRecordBrandView *)self addSubview:self->_stackView];
}

- (void)_setupConstraints
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = [(WDMedicalRecordBrandView *)self topAnchor];
  v4 = [(WDMedicalRecordBrandView *)self stackView];
  v5 = [v4 topAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  [v6 setActive:1];

  v7 = [(WDMedicalRecordBrandView *)self leadingAnchor];
  v8 = [(WDMedicalRecordBrandView *)self stackView];
  v9 = [v8 leadingAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  [v10 setActive:1];

  v11 = [(WDMedicalRecordBrandView *)self bottomAnchor];
  v12 = [(WDMedicalRecordBrandView *)self stackView];
  v13 = [v12 bottomAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  [v14 setActive:1];

  v15 = [(WDMedicalRecordBrandView *)self trailingAnchor];
  v16 = [(WDMedicalRecordBrandView *)self stackView];
  v17 = [v16 trailingAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
  [v18 setActive:1];

  v19 = [(WDMedicalRecordBrandView *)self logoAlignedContentView];
  v20 = [(WDMedicalRecordBrandView *)self verticalSpecContainerView];
  [v19 hk_alignConstraintsWithView:v20];

  v23[0] = objc_opt_class();
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v22 = [(WDMedicalRecordBrandView *)self registerForTraitChanges:v21 withTarget:self action:sel__updateForCurrentSizeCategory];
}

- (void)_updateBasedOnAccessibilityCategory:(BOOL)a3
{
  v3 = a3;
  v5 = [(WDMedicalRecordBrandView *)self stackView];
  v6 = v5;
  if (v3)
  {
    v7 = 1;
  }

  else
  {
    v7 = 3;
  }

  if (v3)
  {
    v8 = 12.0;
  }

  else
  {
    v8 = 16.0;
  }

  if (v3)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v3)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  [v5 setAlignment:v7];

  v11 = [(WDMedicalRecordBrandView *)self stackView];
  [v11 setAxis:v3];

  v12 = [(WDMedicalRecordBrandView *)self stackView];
  [v12 setCustomSpacing:self->_logoView afterView:v8];

  v13 = [(WDMedicalRecordBrandView *)self brandTitleLabel];
  [v13 setNumberOfLines:v9];

  v14 = [(WDMedicalRecordBrandView *)self brandSubtitleLabel];
  [v14 setNumberOfLines:v10];
}

- (void)_updateContentWithBrandable:(id)a3 dataProvider:(id)a4
{
  v20 = a3;
  v6 = a4;
  if (v20 && v6)
  {
    v7 = [(WDMedicalRecordBrandView *)self brandTitleLabel];
    v8 = [v7 attributedText];

    if (!v8)
    {
      v9 = [v20 title];
      v10 = [(WDMedicalRecordBrandView *)self brandTitleLabel];
      [v10 setText:v9];
    }

    v11 = [(WDMedicalRecordBrandView *)self brandSubtitleLabel];
    v12 = [v11 attributedText];

    if (!v12)
    {
      v13 = [v20 subtitle];
      v14 = [(WDMedicalRecordBrandView *)self brandSubtitleLabel];
      [v14 setText:v13];
    }

    v15 = [(WDMedicalRecordBrandView *)self logoView];
    [v15 fetchBrandable:v20 dataProvider:v6];

    [(WDMedicalRecordBrandView *)self _updateForCurrentSizeCategory];
  }

  else
  {
    v16 = [(WDMedicalRecordBrandView *)self logoView];
    [v16 prepareForReuse];

    v17 = [(WDMedicalRecordBrandView *)self brandTitleLabel];
    [v17 setText:0];

    v18 = [(WDMedicalRecordBrandView *)self brandSubtitleLabel];
    [v18 setText:0];

    v19 = [(WDMedicalRecordBrandView *)self brandDetailLabel];
    [v19 setText:0];
  }
}

- (void)_updateForCurrentSizeCategory
{
  v6.receiver = self;
  v6.super_class = WDMedicalRecordBrandView;
  [(WDMedicalRecordBrandView *)&v6 _updateForCurrentSizeCategory];
  v3 = [(WDMedicalRecordBrandView *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  v5 = HKUIContentSizeCategoryMin();

  [(WDMedicalRecordBrandView *)self _updateForContentSizeCategory:v5];
  [(WDMedicalRecordBrandView *)self _updateBasedOnAccessibilityCategory:UIContentSizeCategoryIsAccessibilityCategory(v5)];
}

- (void)_updateLabelVisibility
{
  v3 = [(WDMedicalRecordBrandView *)self brandTitleLabel];
  v4 = [v3 text];
  v5 = [v4 length] == 0;
  v6 = [(WDMedicalRecordBrandView *)self brandTitleLabel];
  [v6 setHidden:v5];

  v7 = [(WDMedicalRecordBrandView *)self brandSubtitleLabel];
  v8 = [v7 text];
  v9 = [v8 length] == 0;
  v10 = [(WDMedicalRecordBrandView *)self brandSubtitleLabel];
  [v10 setHidden:v9];

  v14 = [(WDMedicalRecordBrandView *)self brandDetailLabel];
  v11 = [v14 text];
  v12 = [v11 length] == 0;
  v13 = [(WDMedicalRecordBrandView *)self brandDetailLabel];
  [v13 setHidden:v12];
}

- (void)_updateForContentSizeCategory:(id)a3
{
  v4 = MEMORY[0x1E69DB878];
  v5 = *MEMORY[0x1E69DDCF8];
  v6 = a3;
  v7 = [v4 _preferredFontForTextStyle:v5 variant:1280 maximumContentSizeCategory:v6];
  v8 = [(WDMedicalRecordBrandView *)self brandTitleLabel];
  [v8 setFont:v7];

  v9 = *MEMORY[0x1E69DDD28];
  v10 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD28] variant:256 maximumContentSizeCategory:v6];
  v11 = [(WDMedicalRecordBrandView *)self brandSubtitleLabel];
  [v11 setFont:v10];

  v12 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:v9 variant:256 maximumContentSizeCategory:v6];
  v13 = [(WDMedicalRecordBrandView *)self brandDetailLabel];
  [v13 setFont:v12];

  v23 = [objc_alloc(MEMORY[0x1E69DCA40]) initForTextStyle:v9];
  v14 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v6];

  v15 = [(WDMedicalRecordBrandView *)self verticalSpecContainerView];
  [v23 scaledValueForValue:v14 compatibleWithTraitCollection:20.0];
  v17 = v16;
  v18 = [(WDMedicalRecordBrandView *)self brandTitleLabel];
  [v15 setCustomSpacing:v18 afterView:v17];

  v19 = [(WDMedicalRecordBrandView *)self verticalSpecContainerView];
  [v23 scaledValueForValue:v14 compatibleWithTraitCollection:20.0];
  v21 = v20;
  v22 = [(WDMedicalRecordBrandView *)self brandSubtitleLabel];
  [v19 setCustomSpacing:v22 afterView:v21];
}

@end