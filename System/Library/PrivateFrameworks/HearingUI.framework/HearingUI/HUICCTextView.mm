@interface HUICCTextView
- (BOOL)updateIsSubModule;
- (CGPoint)accessibilityActivationPoint;
- (HACCContentModuleDelegate)delegate;
- (HUICCTextView)initWithModule:(unint64_t)module andDelegate:(id)delegate;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)_setupTitleView;
- (void)setIsLargeText:(BOOL)text;
- (void)setIsSubModule:(BOOL)module;
- (void)updateValue;
@end

@implementation HUICCTextView

- (HUICCTextView)initWithModule:(unint64_t)module andDelegate:(id)delegate
{
  v38[5] = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v37.receiver = self;
  v37.super_class = HUICCTextView;
  v7 = [(HUICCTextView *)&v37 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v8 = v7;
  if (v7)
  {
    [(HUICCTextView *)v7 setModule:module];
    [(HUICCTextView *)v8 setDelegate:delegateCopy];
    v9 = objc_alloc_init(HACCStackView);
    v36 = delegateCopy;
    stackView = v8->_stackView;
    v8->_stackView = v9;

    [(HACCStackView *)v8->_stackView setAxis:1];
    [(HACCStackView *)v8->_stackView setAlignment:0];
    [(HACCStackView *)v8->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUICCTextView *)v8 addSubview:v8->_stackView];
    v11 = objc_alloc_init(HACCCapsuleTitleView);
    titleView = v8->_titleView;
    v8->_titleView = v11;

    [(HACCCapsuleTitleView *)v8->_titleView setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = objc_alloc_init(HUIDarkTextView);
    textView = v8->_textView;
    v8->_textView = v13;

    [(HUIDarkTextView *)v8->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
    v8->_isSubModule = [(HUICCTextView *)v8 updateIsSubModule];
    [(HUICCTextView *)v8 _setupTitleView];
    v29 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(HACCStackView *)v8->_stackView leadingAnchor];
    leadingAnchor2 = [(HUICCTextView *)v8 leadingAnchor];
    v33 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v38[0] = v33;
    trailingAnchor = [(HACCStackView *)v8->_stackView trailingAnchor];
    trailingAnchor2 = [(HUICCTextView *)v8 trailingAnchor];
    v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v38[1] = v30;
    topAnchor = [(HACCStackView *)v8->_stackView topAnchor];
    topAnchor2 = [(HUICCTextView *)v8 topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v38[2] = v16;
    bottomAnchor = [(HACCStackView *)v8->_stackView bottomAnchor];
    bottomAnchor2 = [(HUICCTextView *)v8 bottomAnchor];
    v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v38[3] = v19;
    textView = [(HUICCTextView *)v8 textView];
    heightAnchor = [textView heightAnchor];
    v22 = [heightAnchor constraintGreaterThanOrEqualToConstant:52.0];
    v38[4] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:5];
    [v29 activateConstraints:v23];

    delegateCopy = v36;
    heightAnchor2 = [(HACCCapsuleTitleView *)v8->_titleView heightAnchor];
    v25 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:52.0];
    titleViewHeightLayout = v8->_titleViewHeightLayout;
    v8->_titleViewHeightLayout = v25;
  }

  return v8;
}

- (BOOL)updateIsSubModule
{
  providesOwnSeparator = [(HUICCTextView *)self providesOwnSeparator];
  if (providesOwnSeparator)
  {
    v4 = [(HUICCTextView *)self module]- 1;
    delegate = [(HUICCTextView *)self delegate];
    LOBYTE(v4) = [delegate shouldDisplayControlForModule:v4];

    LOBYTE(providesOwnSeparator) = v4;
  }

  return providesOwnSeparator;
}

- (void)setIsSubModule:(BOOL)module
{
  if (self->_isSubModule != module)
  {
    self->_isSubModule = module;
    [(HUICCTextView *)self _setupTitleView];
  }
}

- (void)_setupTitleView
{
  stackView = [(HUICCTextView *)self stackView];
  titleView = [(HUICCTextView *)self titleView];
  [stackView removeArrangedSubview:titleView];

  stackView2 = [(HUICCTextView *)self stackView];
  textView = [(HUICCTextView *)self textView];
  [stackView2 removeArrangedSubview:textView];

  LODWORD(textView) = [(HUICCTextView *)self isSubModule];
  stackView3 = [(HUICCTextView *)self stackView];
  if (textView)
  {
    textView2 = [(HUICCTextView *)self textView];
    [stackView3 addArrangedSubview:textView2 withPartialSeparator:1 withDarkBackground:1];

    titleViewHeightLayout = [(HUICCTextView *)self titleViewHeightLayout];
    LODWORD(textView2) = [titleViewHeightLayout isActive];

    if (!textView2)
    {
      return;
    }

    titleViewHeightLayout2 = [(HUICCTextView *)self titleViewHeightLayout];
    [titleViewHeightLayout2 setActive:0];
  }

  else
  {
    titleView2 = [(HUICCTextView *)self titleView];
    [stackView3 addArrangedSubview:titleView2 withSeparator:{-[HUICCTextView providesOwnSeparator](self, "providesOwnSeparator")}];

    titleViewHeightLayout3 = [(HUICCTextView *)self titleViewHeightLayout];
    LOBYTE(titleView2) = [titleViewHeightLayout3 isActive];

    if ((titleView2 & 1) == 0)
    {
      titleViewHeightLayout4 = [(HUICCTextView *)self titleViewHeightLayout];
      [titleViewHeightLayout4 setActive:1];
    }

    titleViewHeightLayout2 = [(HUICCTextView *)self stackView];
    textView3 = [(HUICCTextView *)self textView];
    [titleViewHeightLayout2 addArrangedSubview:textView3 withSeparator:1];
  }
}

- (void)setIsLargeText:(BOOL)text
{
  if (self->_isLargeText != text)
  {
    textCopy = text;
    self->_isLargeText = text;
    textView = [(HUICCTextView *)self textView];
    [textView updateLayout:textCopy];
  }
}

- (void)updateValue
{
  if ([(HUICCTextView *)self module]!= 27)
  {
    v8 = 0;
    v5 = 0;
    v9 = 0;
    goto LABEL_10;
  }

  v19 = comfortSoundsLocString();
  mEMORY[0x277D12E18] = [MEMORY[0x277D12E18] sharedInstance];
  timerOption = [mEMORY[0x277D12E18] timerOption];

  if (timerOption == 1)
  {
    v5 = comfortSoundsLocString();
    mEMORY[0x277D12E18]2 = [MEMORY[0x277D12E18] sharedInstance];
    [mEMORY[0x277D12E18]2 timerDurationInSeconds];
    v7 = comfortSoundsDurationString();
  }

  else
  {
    if (timerOption)
    {
      v5 = 0;
      v9 = 0;
      goto LABEL_9;
    }

    v5 = comfortSoundsLocString();
    mEMORY[0x277D12E18]2 = [MEMORY[0x277D12E18] sharedInstance];
    [mEMORY[0x277D12E18]2 timerEndInterval];
    v7 = comfortSoundsTimeString();
  }

  v9 = v7;

LABEL_9:
  v8 = v19;
LABEL_10:
  v20 = v8;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v8, v5];
  titleView = [(HUICCTextView *)self titleView];
  titleLabel = [titleView titleLabel];
  [titleLabel setText:v20];

  textView = [(HUICCTextView *)self textView];
  nameLabel = [textView nameLabel];
  [nameLabel setText:v5];

  textView2 = [(HUICCTextView *)self textView];
  nameLabel2 = [textView2 nameLabel];
  [nameLabel2 setAccessibilityLabel:v10];

  textView3 = [(HUICCTextView *)self textView];
  valueLabel = [textView3 valueLabel];
  [valueLabel setText:v9];

  [(HUICCTextView *)self setIsSubModule:[(HUICCTextView *)self updateIsSubModule]];
  [(HUICCTextView *)self setIsLargeText:HUICCLargeTextEnabled()];
}

- (CGPoint)accessibilityActivationPoint
{
  textView = [(HUICCTextView *)self textView];
  [textView accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (id)accessibilityLabel
{
  textView = [(HUICCTextView *)self textView];
  nameLabel = [textView nameLabel];
  accessibilityLabel = [nameLabel accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  textView = [(HUICCTextView *)self textView];
  valueLabel = [textView valueLabel];
  accessibilityLabel = [valueLabel accessibilityLabel];

  return accessibilityLabel;
}

- (HACCContentModuleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end