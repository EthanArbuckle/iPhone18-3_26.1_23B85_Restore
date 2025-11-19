@interface HUITitleDarkStepSliderView
- (HUIStepSlider)slider;
- (HUITitleDarkStepSliderView)initWithConfig:(id)a3;
- (UILabel)titleLabel;
- (UILabel)valueLabel;
- (void)_setupTitleView;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)setIsLargeText:(BOOL)a3;
- (void)setIsSubmenu:(BOOL)a3;
@end

@implementation HUITitleDarkStepSliderView

- (HUITitleDarkStepSliderView)initWithConfig:(id)a3
{
  v47[5] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v46.receiver = self;
  v46.super_class = HUITitleDarkStepSliderView;
  v6 = [(HUITitleDarkStepSliderView *)&v46 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, a3);
    v8 = objc_alloc_init(HACCStackView);
    stackView = v7->_stackView;
    v7->_stackView = v8;

    [(HACCStackView *)v7->_stackView setAxis:1];
    [(HACCStackView *)v7->_stackView setAlignment:0];
    [(HACCStackView *)v7->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUITitleDarkStepSliderView *)v7 addSubview:v7->_stackView];
    v10 = objc_alloc_init(HACCCapsuleTitleView);
    titleView = v7->_titleView;
    v7->_titleView = v10;

    [(HACCCapsuleTitleView *)v7->_titleView setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [[_HUIDarkStepSliderView alloc] initWithConfig:v5];
    sliderView = v7->_sliderView;
    v7->_sliderView = v12;

    v14 = [(_HUIDarkStepSliderView *)v7->_sliderView slider];
    [v14 setSupportsVibrancy:1];

    v15 = [(_HUIDarkStepSliderView *)v7->_sliderView slider];
    [v15 setDrawsEndTicks:0];

    v16 = [(_HUIDarkStepSliderView *)v7->_sliderView slider];
    [MEMORY[0x277D75348] whiteColor];
    v17 = v45 = v5;
    [v16 setMinimumTrackTintColor:v17];

    v18 = [(_HUIDarkStepSliderView *)v7->_sliderView slider];
    v19 = [MEMORY[0x277D75348] whiteColor];
    [v18 setTickColor:v19];

    [(_HUIDarkStepSliderView *)v7->_sliderView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUITitleDarkStepSliderView *)v7 _setupTitleView];
    v36 = MEMORY[0x277CCAAD0];
    v44 = [(HUITitleDarkStepSliderView *)v7 stackView];
    v43 = [v44 leadingAnchor];
    v42 = [(HUITitleDarkStepSliderView *)v7 leadingAnchor];
    v41 = [v43 constraintEqualToAnchor:v42];
    v47[0] = v41;
    v40 = [(HUITitleDarkStepSliderView *)v7 stackView];
    v39 = [v40 trailingAnchor];
    v38 = [(HUITitleDarkStepSliderView *)v7 trailingAnchor];
    v37 = [v39 constraintEqualToAnchor:v38];
    v47[1] = v37;
    v35 = [(HUITitleDarkStepSliderView *)v7 stackView];
    v34 = [v35 topAnchor];
    v33 = [(HUITitleDarkStepSliderView *)v7 topAnchor];
    v20 = [v34 constraintEqualToAnchor:v33];
    v47[2] = v20;
    v21 = [(HUITitleDarkStepSliderView *)v7 stackView];
    v22 = [v21 bottomAnchor];
    v23 = [(HUITitleDarkStepSliderView *)v7 bottomAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    v47[3] = v24;
    v25 = [(HUITitleDarkStepSliderView *)v7 sliderView];
    v26 = [v25 heightAnchor];
    v27 = [v26 constraintGreaterThanOrEqualToConstant:52.0];
    v47[4] = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:5];
    [v36 activateConstraints:v28];

    v5 = v45;
    v29 = [(HACCCapsuleTitleView *)v7->_titleView heightAnchor];
    v30 = [v29 constraintGreaterThanOrEqualToConstant:52.0];
    titleViewHeightLayout = v7->_titleViewHeightLayout;
    v7->_titleViewHeightLayout = v30;
  }

  return v7;
}

- (HUIStepSlider)slider
{
  v2 = [(HUITitleDarkStepSliderView *)self sliderView];
  v3 = [v2 slider];

  return v3;
}

- (UILabel)titleLabel
{
  v2 = [(HUITitleDarkStepSliderView *)self titleView];
  v3 = [v2 titleLabel];

  return v3;
}

- (UILabel)valueLabel
{
  v2 = [(HUITitleDarkStepSliderView *)self sliderView];
  v3 = [v2 config];
  v4 = [v3 valueLabel];

  return v4;
}

- (void)setIsSubmenu:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUITitleDarkStepSliderView *)self config];
  v6 = [v5 isSubmenuSlider];

  if (v6 != v3)
  {
    v7 = [(HUITitleDarkStepSliderView *)self config];
    [v7 setIsSubmenuSlider:v3];

    [(HUITitleDarkStepSliderView *)self _setupTitleView];
  }
}

- (void)_setupTitleView
{
  v3 = [(HUITitleDarkStepSliderView *)self titleView];
  [v3 removeFromSuperview];

  v4 = [(HUITitleDarkStepSliderView *)self stackView];
  v5 = [(HUITitleDarkStepSliderView *)self titleView];
  [v4 removeArrangedSubview:v5];

  v6 = [(HUITitleDarkStepSliderView *)self stackView];
  v7 = [(HUITitleDarkStepSliderView *)self sliderView];
  [v6 removeArrangedSubview:v7];

  v8 = [(HUITitleDarkStepSliderView *)self config];
  LODWORD(v7) = [v8 isSubmenuSlider];

  v9 = [(HUITitleDarkStepSliderView *)self stackView];
  if (v7)
  {
    v10 = [(HUITitleDarkStepSliderView *)self sliderView];
    [v9 addArrangedSubview:v10 withPartialSeparator:1 withDarkBackground:1];

    v11 = [(HUITitleDarkStepSliderView *)self titleViewHeightLayout];
    LODWORD(v10) = [v11 isActive];

    if (!v10)
    {
      return;
    }

    v17 = [(HUITitleDarkStepSliderView *)self titleViewHeightLayout];
    [v17 setActive:0];
  }

  else
  {
    v12 = [(HUITitleDarkStepSliderView *)self titleView];
    v13 = [(HUITitleDarkStepSliderView *)self config];
    [v9 addArrangedSubview:v12 withSeparator:{objc_msgSend(v13, "providesOwnSeparator")}];

    v14 = [(HUITitleDarkStepSliderView *)self titleViewHeightLayout];
    LOBYTE(v12) = [v14 isActive];

    if ((v12 & 1) == 0)
    {
      v15 = [(HUITitleDarkStepSliderView *)self titleViewHeightLayout];
      [v15 setActive:1];
    }

    v17 = [(HUITitleDarkStepSliderView *)self stackView];
    v16 = [(HUITitleDarkStepSliderView *)self sliderView];
    [v17 addArrangedSubview:v16 withSeparator:1];
  }
}

- (void)setIsLargeText:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUITitleDarkStepSliderView *)self config];
  v6 = [v5 isLargeText];

  if (v6 != v3)
  {
    v7 = [(HUITitleDarkStepSliderView *)self config];
    [v7 setIsLargeText:v3];

    v9 = [(HUITitleDarkStepSliderView *)self sliderView];
    v8 = [(HUITitleDarkStepSliderView *)self config];
    [v9 updateConstraintsWithConfig:v8];
  }
}

- (void)accessibilityDecrement
{
  v2 = [(HUITitleDarkStepSliderView *)self sliderView];
  [v2 accessibilityDecrement];
}

- (void)accessibilityIncrement
{
  v2 = [(HUITitleDarkStepSliderView *)self sliderView];
  [v2 accessibilityIncrement];
}

@end