@interface HUICCTextView
- (BOOL)updateIsSubModule;
- (CGPoint)accessibilityActivationPoint;
- (HACCContentModuleDelegate)delegate;
- (HUICCTextView)initWithModule:(unint64_t)a3 andDelegate:(id)a4;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)_setupTitleView;
- (void)setIsLargeText:(BOOL)a3;
- (void)setIsSubModule:(BOOL)a3;
- (void)updateValue;
@end

@implementation HUICCTextView

- (HUICCTextView)initWithModule:(unint64_t)a3 andDelegate:(id)a4
{
  v38[5] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v37.receiver = self;
  v37.super_class = HUICCTextView;
  v7 = [(HUICCTextView *)&v37 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v8 = v7;
  if (v7)
  {
    [(HUICCTextView *)v7 setModule:a3];
    [(HUICCTextView *)v8 setDelegate:v6];
    v9 = objc_alloc_init(HACCStackView);
    v36 = v6;
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
    v35 = [(HACCStackView *)v8->_stackView leadingAnchor];
    v34 = [(HUICCTextView *)v8 leadingAnchor];
    v33 = [v35 constraintEqualToAnchor:v34];
    v38[0] = v33;
    v32 = [(HACCStackView *)v8->_stackView trailingAnchor];
    v31 = [(HUICCTextView *)v8 trailingAnchor];
    v30 = [v32 constraintEqualToAnchor:v31];
    v38[1] = v30;
    v28 = [(HACCStackView *)v8->_stackView topAnchor];
    v15 = [(HUICCTextView *)v8 topAnchor];
    v16 = [v28 constraintEqualToAnchor:v15];
    v38[2] = v16;
    v17 = [(HACCStackView *)v8->_stackView bottomAnchor];
    v18 = [(HUICCTextView *)v8 bottomAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v38[3] = v19;
    v20 = [(HUICCTextView *)v8 textView];
    v21 = [v20 heightAnchor];
    v22 = [v21 constraintGreaterThanOrEqualToConstant:52.0];
    v38[4] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:5];
    [v29 activateConstraints:v23];

    v6 = v36;
    v24 = [(HACCCapsuleTitleView *)v8->_titleView heightAnchor];
    v25 = [v24 constraintGreaterThanOrEqualToConstant:52.0];
    titleViewHeightLayout = v8->_titleViewHeightLayout;
    v8->_titleViewHeightLayout = v25;
  }

  return v8;
}

- (BOOL)updateIsSubModule
{
  v3 = [(HUICCTextView *)self providesOwnSeparator];
  if (v3)
  {
    v4 = [(HUICCTextView *)self module]- 1;
    v5 = [(HUICCTextView *)self delegate];
    LOBYTE(v4) = [v5 shouldDisplayControlForModule:v4];

    LOBYTE(v3) = v4;
  }

  return v3;
}

- (void)setIsSubModule:(BOOL)a3
{
  if (self->_isSubModule != a3)
  {
    self->_isSubModule = a3;
    [(HUICCTextView *)self _setupTitleView];
  }
}

- (void)_setupTitleView
{
  v3 = [(HUICCTextView *)self stackView];
  v4 = [(HUICCTextView *)self titleView];
  [v3 removeArrangedSubview:v4];

  v5 = [(HUICCTextView *)self stackView];
  v6 = [(HUICCTextView *)self textView];
  [v5 removeArrangedSubview:v6];

  LODWORD(v6) = [(HUICCTextView *)self isSubModule];
  v7 = [(HUICCTextView *)self stackView];
  if (v6)
  {
    v8 = [(HUICCTextView *)self textView];
    [v7 addArrangedSubview:v8 withPartialSeparator:1 withDarkBackground:1];

    v9 = [(HUICCTextView *)self titleViewHeightLayout];
    LODWORD(v8) = [v9 isActive];

    if (!v8)
    {
      return;
    }

    v14 = [(HUICCTextView *)self titleViewHeightLayout];
    [v14 setActive:0];
  }

  else
  {
    v10 = [(HUICCTextView *)self titleView];
    [v7 addArrangedSubview:v10 withSeparator:{-[HUICCTextView providesOwnSeparator](self, "providesOwnSeparator")}];

    v11 = [(HUICCTextView *)self titleViewHeightLayout];
    LOBYTE(v10) = [v11 isActive];

    if ((v10 & 1) == 0)
    {
      v12 = [(HUICCTextView *)self titleViewHeightLayout];
      [v12 setActive:1];
    }

    v14 = [(HUICCTextView *)self stackView];
    v13 = [(HUICCTextView *)self textView];
    [v14 addArrangedSubview:v13 withSeparator:1];
  }
}

- (void)setIsLargeText:(BOOL)a3
{
  if (self->_isLargeText != a3)
  {
    v4 = a3;
    self->_isLargeText = a3;
    v5 = [(HUICCTextView *)self textView];
    [v5 updateLayout:v4];
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
  v3 = [MEMORY[0x277D12E18] sharedInstance];
  v4 = [v3 timerOption];

  if (v4 == 1)
  {
    v5 = comfortSoundsLocString();
    v6 = [MEMORY[0x277D12E18] sharedInstance];
    [v6 timerDurationInSeconds];
    v7 = comfortSoundsDurationString();
  }

  else
  {
    if (v4)
    {
      v5 = 0;
      v9 = 0;
      goto LABEL_9;
    }

    v5 = comfortSoundsLocString();
    v6 = [MEMORY[0x277D12E18] sharedInstance];
    [v6 timerEndInterval];
    v7 = comfortSoundsTimeString();
  }

  v9 = v7;

LABEL_9:
  v8 = v19;
LABEL_10:
  v20 = v8;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v8, v5];
  v11 = [(HUICCTextView *)self titleView];
  v12 = [v11 titleLabel];
  [v12 setText:v20];

  v13 = [(HUICCTextView *)self textView];
  v14 = [v13 nameLabel];
  [v14 setText:v5];

  v15 = [(HUICCTextView *)self textView];
  v16 = [v15 nameLabel];
  [v16 setAccessibilityLabel:v10];

  v17 = [(HUICCTextView *)self textView];
  v18 = [v17 valueLabel];
  [v18 setText:v9];

  [(HUICCTextView *)self setIsSubModule:[(HUICCTextView *)self updateIsSubModule]];
  [(HUICCTextView *)self setIsLargeText:HUICCLargeTextEnabled()];
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(HUICCTextView *)self textView];
  [v2 accessibilityActivationPoint];
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
  v2 = [(HUICCTextView *)self textView];
  v3 = [v2 nameLabel];
  v4 = [v3 accessibilityLabel];

  return v4;
}

- (id)accessibilityValue
{
  v2 = [(HUICCTextView *)self textView];
  v3 = [v2 valueLabel];
  v4 = [v3 accessibilityLabel];

  return v4;
}

- (HACCContentModuleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end