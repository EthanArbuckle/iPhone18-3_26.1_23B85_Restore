@interface HUITitleDarkStepSliderView
- (HUIStepSlider)slider;
- (HUITitleDarkStepSliderView)initWithConfig:(id)config;
- (UILabel)titleLabel;
- (UILabel)valueLabel;
- (void)_setupTitleView;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)setIsLargeText:(BOOL)text;
- (void)setIsSubmenu:(BOOL)submenu;
@end

@implementation HUITitleDarkStepSliderView

- (HUITitleDarkStepSliderView)initWithConfig:(id)config
{
  v47[5] = *MEMORY[0x277D85DE8];
  configCopy = config;
  v46.receiver = self;
  v46.super_class = HUITitleDarkStepSliderView;
  v6 = [(HUITitleDarkStepSliderView *)&v46 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, config);
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
    v12 = [[_HUIDarkStepSliderView alloc] initWithConfig:configCopy];
    sliderView = v7->_sliderView;
    v7->_sliderView = v12;

    slider = [(_HUIDarkStepSliderView *)v7->_sliderView slider];
    [slider setSupportsVibrancy:1];

    slider2 = [(_HUIDarkStepSliderView *)v7->_sliderView slider];
    [slider2 setDrawsEndTicks:0];

    slider3 = [(_HUIDarkStepSliderView *)v7->_sliderView slider];
    [MEMORY[0x277D75348] whiteColor];
    v17 = v45 = configCopy;
    [slider3 setMinimumTrackTintColor:v17];

    slider4 = [(_HUIDarkStepSliderView *)v7->_sliderView slider];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [slider4 setTickColor:whiteColor];

    [(_HUIDarkStepSliderView *)v7->_sliderView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUITitleDarkStepSliderView *)v7 _setupTitleView];
    v36 = MEMORY[0x277CCAAD0];
    stackView = [(HUITitleDarkStepSliderView *)v7 stackView];
    leadingAnchor = [stackView leadingAnchor];
    leadingAnchor2 = [(HUITitleDarkStepSliderView *)v7 leadingAnchor];
    v41 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v47[0] = v41;
    stackView2 = [(HUITitleDarkStepSliderView *)v7 stackView];
    trailingAnchor = [stackView2 trailingAnchor];
    trailingAnchor2 = [(HUITitleDarkStepSliderView *)v7 trailingAnchor];
    v37 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v47[1] = v37;
    stackView3 = [(HUITitleDarkStepSliderView *)v7 stackView];
    topAnchor = [stackView3 topAnchor];
    topAnchor2 = [(HUITitleDarkStepSliderView *)v7 topAnchor];
    v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v47[2] = v20;
    stackView4 = [(HUITitleDarkStepSliderView *)v7 stackView];
    bottomAnchor = [stackView4 bottomAnchor];
    bottomAnchor2 = [(HUITitleDarkStepSliderView *)v7 bottomAnchor];
    v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v47[3] = v24;
    sliderView = [(HUITitleDarkStepSliderView *)v7 sliderView];
    heightAnchor = [sliderView heightAnchor];
    v27 = [heightAnchor constraintGreaterThanOrEqualToConstant:52.0];
    v47[4] = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:5];
    [v36 activateConstraints:v28];

    configCopy = v45;
    heightAnchor2 = [(HACCCapsuleTitleView *)v7->_titleView heightAnchor];
    v30 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:52.0];
    titleViewHeightLayout = v7->_titleViewHeightLayout;
    v7->_titleViewHeightLayout = v30;
  }

  return v7;
}

- (HUIStepSlider)slider
{
  sliderView = [(HUITitleDarkStepSliderView *)self sliderView];
  slider = [sliderView slider];

  return slider;
}

- (UILabel)titleLabel
{
  titleView = [(HUITitleDarkStepSliderView *)self titleView];
  titleLabel = [titleView titleLabel];

  return titleLabel;
}

- (UILabel)valueLabel
{
  sliderView = [(HUITitleDarkStepSliderView *)self sliderView];
  config = [sliderView config];
  valueLabel = [config valueLabel];

  return valueLabel;
}

- (void)setIsSubmenu:(BOOL)submenu
{
  submenuCopy = submenu;
  config = [(HUITitleDarkStepSliderView *)self config];
  isSubmenuSlider = [config isSubmenuSlider];

  if (isSubmenuSlider != submenuCopy)
  {
    config2 = [(HUITitleDarkStepSliderView *)self config];
    [config2 setIsSubmenuSlider:submenuCopy];

    [(HUITitleDarkStepSliderView *)self _setupTitleView];
  }
}

- (void)_setupTitleView
{
  titleView = [(HUITitleDarkStepSliderView *)self titleView];
  [titleView removeFromSuperview];

  stackView = [(HUITitleDarkStepSliderView *)self stackView];
  titleView2 = [(HUITitleDarkStepSliderView *)self titleView];
  [stackView removeArrangedSubview:titleView2];

  stackView2 = [(HUITitleDarkStepSliderView *)self stackView];
  sliderView = [(HUITitleDarkStepSliderView *)self sliderView];
  [stackView2 removeArrangedSubview:sliderView];

  config = [(HUITitleDarkStepSliderView *)self config];
  LODWORD(sliderView) = [config isSubmenuSlider];

  stackView3 = [(HUITitleDarkStepSliderView *)self stackView];
  if (sliderView)
  {
    sliderView2 = [(HUITitleDarkStepSliderView *)self sliderView];
    [stackView3 addArrangedSubview:sliderView2 withPartialSeparator:1 withDarkBackground:1];

    titleViewHeightLayout = [(HUITitleDarkStepSliderView *)self titleViewHeightLayout];
    LODWORD(sliderView2) = [titleViewHeightLayout isActive];

    if (!sliderView2)
    {
      return;
    }

    titleViewHeightLayout2 = [(HUITitleDarkStepSliderView *)self titleViewHeightLayout];
    [titleViewHeightLayout2 setActive:0];
  }

  else
  {
    titleView3 = [(HUITitleDarkStepSliderView *)self titleView];
    config2 = [(HUITitleDarkStepSliderView *)self config];
    [stackView3 addArrangedSubview:titleView3 withSeparator:{objc_msgSend(config2, "providesOwnSeparator")}];

    titleViewHeightLayout3 = [(HUITitleDarkStepSliderView *)self titleViewHeightLayout];
    LOBYTE(titleView3) = [titleViewHeightLayout3 isActive];

    if ((titleView3 & 1) == 0)
    {
      titleViewHeightLayout4 = [(HUITitleDarkStepSliderView *)self titleViewHeightLayout];
      [titleViewHeightLayout4 setActive:1];
    }

    titleViewHeightLayout2 = [(HUITitleDarkStepSliderView *)self stackView];
    sliderView3 = [(HUITitleDarkStepSliderView *)self sliderView];
    [titleViewHeightLayout2 addArrangedSubview:sliderView3 withSeparator:1];
  }
}

- (void)setIsLargeText:(BOOL)text
{
  textCopy = text;
  config = [(HUITitleDarkStepSliderView *)self config];
  isLargeText = [config isLargeText];

  if (isLargeText != textCopy)
  {
    config2 = [(HUITitleDarkStepSliderView *)self config];
    [config2 setIsLargeText:textCopy];

    sliderView = [(HUITitleDarkStepSliderView *)self sliderView];
    config3 = [(HUITitleDarkStepSliderView *)self config];
    [sliderView updateConstraintsWithConfig:config3];
  }
}

- (void)accessibilityDecrement
{
  sliderView = [(HUITitleDarkStepSliderView *)self sliderView];
  [sliderView accessibilityDecrement];
}

- (void)accessibilityIncrement
{
  sliderView = [(HUITitleDarkStepSliderView *)self sliderView];
  [sliderView accessibilityIncrement];
}

@end