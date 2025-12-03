@interface WDMedicalRecordBrandView
- (WDMedicalRecordBrandView)initWithFrame:(CGRect)frame;
- (double)logoSize;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateBasedOnAccessibilityCategory:(BOOL)category;
- (void)_updateContentWithBrandable:(id)brandable dataProvider:(id)provider;
- (void)_updateForContentSizeCategory:(id)category;
- (void)_updateForCurrentSizeCategory;
- (void)_updateLabelVisibility;
- (void)setBrandable:(id)brandable dataProvider:(id)provider;
- (void)setLogoSize:(double)size;
@end

@implementation WDMedicalRecordBrandView

- (WDMedicalRecordBrandView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = WDMedicalRecordBrandView;
  v3 = [(WDMedicalRecordBrandView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  logoView = [(WDMedicalRecordBrandView *)self logoView];
  [logoView size];
  v4 = v3;

  return v4;
}

- (void)setLogoSize:(double)size
{
  logoView = [(WDMedicalRecordBrandView *)self logoView];
  [logoView setSize:size];
}

- (void)setBrandable:(id)brandable dataProvider:(id)provider
{
  brandableCopy = brandable;
  objc_storeStrong(&self->_dataProvider, provider);
  providerCopy = provider;
  brandable = self->_brandable;
  self->_brandable = brandableCopy;
  v9 = brandableCopy;

  [(WDMedicalRecordBrandView *)self _updateContentWithBrandable:v9 dataProvider:providerCopy];

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
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)self->_brandTitleLabel setTextColor:labelColor];

  v15 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  brandSubtitleLabel = self->_brandSubtitleLabel;
  self->_brandSubtitleLabel = v15;

  [(UILabel *)self->_brandSubtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_brandSubtitleLabel setAdjustsFontForContentSizeCategory:0];
  labelColor2 = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)self->_brandSubtitleLabel setTextColor:labelColor2];

  v18 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  brandDetailLabel = self->_brandDetailLabel;
  self->_brandDetailLabel = v18;

  [(UILabel *)self->_brandDetailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_brandDetailLabel setAdjustsFontForContentSizeCategory:0];
  [(UILabel *)self->_brandDetailLabel setNumberOfLines:0];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_brandDetailLabel setTextColor:secondaryLabelColor];

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
  verticalSpecContainerView = [(WDMedicalRecordBrandView *)self verticalSpecContainerView];
  [verticalSpecContainerView setBaselineRelativeArrangement:1];

  logoAlignedContentView = [(WDMedicalRecordBrandView *)self logoAlignedContentView];
  verticalSpecContainerView2 = [(WDMedicalRecordBrandView *)self verticalSpecContainerView];
  [logoAlignedContentView addSubview:verticalSpecContainerView2];

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
  topAnchor = [(WDMedicalRecordBrandView *)self topAnchor];
  stackView = [(WDMedicalRecordBrandView *)self stackView];
  topAnchor2 = [stackView topAnchor];
  v6 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v6 setActive:1];

  leadingAnchor = [(WDMedicalRecordBrandView *)self leadingAnchor];
  stackView2 = [(WDMedicalRecordBrandView *)self stackView];
  leadingAnchor2 = [stackView2 leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v10 setActive:1];

  bottomAnchor = [(WDMedicalRecordBrandView *)self bottomAnchor];
  stackView3 = [(WDMedicalRecordBrandView *)self stackView];
  bottomAnchor2 = [stackView3 bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v14 setActive:1];

  trailingAnchor = [(WDMedicalRecordBrandView *)self trailingAnchor];
  stackView4 = [(WDMedicalRecordBrandView *)self stackView];
  trailingAnchor2 = [stackView4 trailingAnchor];
  v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v18 setActive:1];

  logoAlignedContentView = [(WDMedicalRecordBrandView *)self logoAlignedContentView];
  verticalSpecContainerView = [(WDMedicalRecordBrandView *)self verticalSpecContainerView];
  [logoAlignedContentView hk_alignConstraintsWithView:verticalSpecContainerView];

  v23[0] = objc_opt_class();
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v22 = [(WDMedicalRecordBrandView *)self registerForTraitChanges:v21 withTarget:self action:sel__updateForCurrentSizeCategory];
}

- (void)_updateBasedOnAccessibilityCategory:(BOOL)category
{
  categoryCopy = category;
  stackView = [(WDMedicalRecordBrandView *)self stackView];
  v6 = stackView;
  if (categoryCopy)
  {
    v7 = 1;
  }

  else
  {
    v7 = 3;
  }

  if (categoryCopy)
  {
    v8 = 12.0;
  }

  else
  {
    v8 = 16.0;
  }

  if (categoryCopy)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (categoryCopy)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  [stackView setAlignment:v7];

  stackView2 = [(WDMedicalRecordBrandView *)self stackView];
  [stackView2 setAxis:categoryCopy];

  stackView3 = [(WDMedicalRecordBrandView *)self stackView];
  [stackView3 setCustomSpacing:self->_logoView afterView:v8];

  brandTitleLabel = [(WDMedicalRecordBrandView *)self brandTitleLabel];
  [brandTitleLabel setNumberOfLines:v9];

  brandSubtitleLabel = [(WDMedicalRecordBrandView *)self brandSubtitleLabel];
  [brandSubtitleLabel setNumberOfLines:v10];
}

- (void)_updateContentWithBrandable:(id)brandable dataProvider:(id)provider
{
  brandableCopy = brandable;
  providerCopy = provider;
  if (brandableCopy && providerCopy)
  {
    brandTitleLabel = [(WDMedicalRecordBrandView *)self brandTitleLabel];
    attributedText = [brandTitleLabel attributedText];

    if (!attributedText)
    {
      title = [brandableCopy title];
      brandTitleLabel2 = [(WDMedicalRecordBrandView *)self brandTitleLabel];
      [brandTitleLabel2 setText:title];
    }

    brandSubtitleLabel = [(WDMedicalRecordBrandView *)self brandSubtitleLabel];
    attributedText2 = [brandSubtitleLabel attributedText];

    if (!attributedText2)
    {
      subtitle = [brandableCopy subtitle];
      brandSubtitleLabel2 = [(WDMedicalRecordBrandView *)self brandSubtitleLabel];
      [brandSubtitleLabel2 setText:subtitle];
    }

    logoView = [(WDMedicalRecordBrandView *)self logoView];
    [logoView fetchBrandable:brandableCopy dataProvider:providerCopy];

    [(WDMedicalRecordBrandView *)self _updateForCurrentSizeCategory];
  }

  else
  {
    logoView2 = [(WDMedicalRecordBrandView *)self logoView];
    [logoView2 prepareForReuse];

    brandTitleLabel3 = [(WDMedicalRecordBrandView *)self brandTitleLabel];
    [brandTitleLabel3 setText:0];

    brandSubtitleLabel3 = [(WDMedicalRecordBrandView *)self brandSubtitleLabel];
    [brandSubtitleLabel3 setText:0];

    brandDetailLabel = [(WDMedicalRecordBrandView *)self brandDetailLabel];
    [brandDetailLabel setText:0];
  }
}

- (void)_updateForCurrentSizeCategory
{
  v6.receiver = self;
  v6.super_class = WDMedicalRecordBrandView;
  [(WDMedicalRecordBrandView *)&v6 _updateForCurrentSizeCategory];
  traitCollection = [(WDMedicalRecordBrandView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v5 = HKUIContentSizeCategoryMin();

  [(WDMedicalRecordBrandView *)self _updateForContentSizeCategory:v5];
  [(WDMedicalRecordBrandView *)self _updateBasedOnAccessibilityCategory:UIContentSizeCategoryIsAccessibilityCategory(v5)];
}

- (void)_updateLabelVisibility
{
  brandTitleLabel = [(WDMedicalRecordBrandView *)self brandTitleLabel];
  text = [brandTitleLabel text];
  v5 = [text length] == 0;
  brandTitleLabel2 = [(WDMedicalRecordBrandView *)self brandTitleLabel];
  [brandTitleLabel2 setHidden:v5];

  brandSubtitleLabel = [(WDMedicalRecordBrandView *)self brandSubtitleLabel];
  text2 = [brandSubtitleLabel text];
  v9 = [text2 length] == 0;
  brandSubtitleLabel2 = [(WDMedicalRecordBrandView *)self brandSubtitleLabel];
  [brandSubtitleLabel2 setHidden:v9];

  brandDetailLabel = [(WDMedicalRecordBrandView *)self brandDetailLabel];
  text3 = [brandDetailLabel text];
  v12 = [text3 length] == 0;
  brandDetailLabel2 = [(WDMedicalRecordBrandView *)self brandDetailLabel];
  [brandDetailLabel2 setHidden:v12];
}

- (void)_updateForContentSizeCategory:(id)category
{
  v4 = MEMORY[0x1E69DB878];
  v5 = *MEMORY[0x1E69DDCF8];
  categoryCopy = category;
  v7 = [v4 _preferredFontForTextStyle:v5 variant:1280 maximumContentSizeCategory:categoryCopy];
  brandTitleLabel = [(WDMedicalRecordBrandView *)self brandTitleLabel];
  [brandTitleLabel setFont:v7];

  v9 = *MEMORY[0x1E69DDD28];
  v10 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD28] variant:256 maximumContentSizeCategory:categoryCopy];
  brandSubtitleLabel = [(WDMedicalRecordBrandView *)self brandSubtitleLabel];
  [brandSubtitleLabel setFont:v10];

  v12 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:v9 variant:256 maximumContentSizeCategory:categoryCopy];
  brandDetailLabel = [(WDMedicalRecordBrandView *)self brandDetailLabel];
  [brandDetailLabel setFont:v12];

  v23 = [objc_alloc(MEMORY[0x1E69DCA40]) initForTextStyle:v9];
  v14 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:categoryCopy];

  verticalSpecContainerView = [(WDMedicalRecordBrandView *)self verticalSpecContainerView];
  [v23 scaledValueForValue:v14 compatibleWithTraitCollection:20.0];
  v17 = v16;
  brandTitleLabel2 = [(WDMedicalRecordBrandView *)self brandTitleLabel];
  [verticalSpecContainerView setCustomSpacing:brandTitleLabel2 afterView:v17];

  verticalSpecContainerView2 = [(WDMedicalRecordBrandView *)self verticalSpecContainerView];
  [v23 scaledValueForValue:v14 compatibleWithTraitCollection:20.0];
  v21 = v20;
  brandSubtitleLabel2 = [(WDMedicalRecordBrandView *)self brandSubtitleLabel];
  [verticalSpecContainerView2 setCustomSpacing:brandSubtitleLabel2 afterView:v21];
}

@end