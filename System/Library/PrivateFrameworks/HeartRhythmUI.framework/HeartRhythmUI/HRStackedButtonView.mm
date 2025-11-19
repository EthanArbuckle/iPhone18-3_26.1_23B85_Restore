@interface HRStackedButtonView
+ (double)_buttonSpacingForValue:(double)a3;
+ (double)_footerTextSpacingForValue:(double)a3;
+ (id)_footerTextBoldFont;
+ (id)_footerTextFont;
+ (id)buddyStackedButtonViewWithTitles:(id)a3 footerText:(id)a4 boldFooterText:(id)a5 footerTextAlignment:(int64_t)a6 delegate:(id)a7;
- (HRStackedButtonView)initWithButtonTitles:(id)a3 styles:(id)a4 footerText:(id)a5 boldFooterText:(id)a6 footerTextAlignment:(int64_t)a7 delegate:(id)a8;
- (HRStackedButtonViewDelegate)delegate;
- (id)_attributedFooterText;
- (id)_createButtons;
- (id)firstBaselineAnchor;
- (id)lastBaselineAnchor;
- (void)_assignConstraintsForButtons;
- (void)_createViewBottomConstraint;
- (void)_setUpBlurEffect;
- (void)_setUpButtons;
- (void)_setUpFooterText;
- (void)_updateBottomConstraint;
- (void)_updateForCurrentSizeCategory;
- (void)actionButtonTapped:(id)a3;
- (void)alignBlurViewHorizontalConstraintsWithView:(id)a3;
- (void)setBlurHidden:(BOOL)a3;
- (void)setFixedBottomButtonSpacing:(BOOL)a3;
- (void)setLastButtonMode:(int64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HRStackedButtonView

- (HRStackedButtonView)initWithButtonTitles:(id)a3 styles:(id)a4 footerText:(id)a5 boldFooterText:(id)a6 footerTextAlignment:(int64_t)a7 delegate:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v23.receiver = self;
  v23.super_class = HRStackedButtonView;
  v19 = [(HRStackedButtonView *)&v23 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_titles, a3);
    objc_storeStrong(&v20->_styles, a4);
    objc_storeStrong(&v20->_footerText, a5);
    objc_storeStrong(&v20->_boldFooterText, a6);
    v20->_footerTextAlignment = a7;
    objc_storeWeak(&v20->_delegate, v18);
    [(HRStackedButtonView *)v20 _setUpButtons];
  }

  return v20;
}

+ (id)buddyStackedButtonViewWithTitles:(id)a3 footerText:(id)a4 boldFooterText:(id)a5 footerTextAlignment:(int64_t)a6 delegate:(id)a7
{
  v11 = MEMORY[0x277CBEB18];
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = objc_alloc_init(v11);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __111__HRStackedButtonView_buddyStackedButtonViewWithTitles_footerText_boldFooterText_footerTextAlignment_delegate___block_invoke;
  v20[3] = &unk_2796FBA80;
  v21 = v16;
  v17 = v16;
  [v15 enumerateObjectsUsingBlock:v20];
  v18 = [objc_alloc(objc_opt_class()) initWithButtonTitles:v15 styles:v17 footerText:v14 boldFooterText:v13 footerTextAlignment:a6 delegate:v12];

  return v18;
}

uint64_t __111__HRStackedButtonView_buddyStackedButtonViewWithTitles_footerText_boldFooterText_footerTextAlignment_delegate___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = &unk_286471818;
  }

  else
  {
    v4 = &unk_286471800;
  }

  return [v3 addObject:v4];
}

- (void)setLastButtonMode:(int64_t)a3
{
  if (self->_lastButtonMode != a3)
  {
    self->_lastButtonMode = a3;
    [(HRStackedButtonView *)self _updateBottomConstraint];
  }
}

- (void)setFixedBottomButtonSpacing:(BOOL)a3
{
  if (self->_fixedBottomButtonSpacing != a3)
  {
    self->_fixedBottomButtonSpacing = a3;
    [(HRStackedButtonView *)self _updateBottomConstraint];
  }
}

- (void)setBlurHidden:(BOOL)a3
{
  self->_blurHidden = a3;
  if (a3)
  {
    [MEMORY[0x277D75348] systemBackgroundColor];
  }

  else
  {
    [MEMORY[0x277D75348] clearColor];
  }
  v4 = ;
  [(HRStackedButtonView *)self setBackgroundColor:v4];
}

- (void)alignBlurViewHorizontalConstraintsWithView:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HRStackedButtonView *)self backgroundBlurViewLeadingConstraint];

  if (v5)
  {
    v6 = MEMORY[0x277CCAAD0];
    v7 = [(HRStackedButtonView *)self backgroundBlurViewLeadingConstraint];
    v24[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    [v6 deactivateConstraints:v8];

    [(HRStackedButtonView *)self setBackgroundBlurViewLeadingConstraint:0];
  }

  v9 = [(HRStackedButtonView *)self backgroundBlurViewTrailingConstraint];

  if (v9)
  {
    v10 = MEMORY[0x277CCAAD0];
    v11 = [(HRStackedButtonView *)self backgroundBlurViewTrailingConstraint];
    v23 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
    [v10 deactivateConstraints:v12];

    [(HRStackedButtonView *)self setBackgroundBlurViewTrailingConstraint:0];
  }

  v13 = [(HRStackedButtonView *)self backgroundBlurView];
  v14 = [v13 leadingAnchor];
  v15 = [v4 leadingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  [(HRStackedButtonView *)self setBackgroundBlurViewLeadingConstraint:v16];

  v17 = [(HRStackedButtonView *)self backgroundBlurView];
  v18 = [v17 trailingAnchor];
  v19 = [v4 trailingAnchor];

  v20 = [v18 constraintEqualToAnchor:v19];
  [(HRStackedButtonView *)self setBackgroundBlurViewTrailingConstraint:v20];

  v21 = [(HRStackedButtonView *)self backgroundBlurViewLeadingConstraint];
  [v21 setActive:1];

  v22 = [(HRStackedButtonView *)self backgroundBlurViewTrailingConstraint];
  [v22 setActive:1];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HRStackedButtonView;
  [(HRStackedButtonView *)&v9 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(HRStackedButtonView *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      [(HRStackedButtonView *)self _updateForCurrentSizeCategory];
    }
  }
}

- (void)actionButtonTapped:(id)a3
{
  v4 = a3;
  v6 = [(HRStackedButtonView *)self delegate];
  v5 = [v4 tag];

  [v6 stackedButtonView:self didTapButtonAtIndex:v5];
}

- (void)_setUpButtons
{
  v3 = [(HRStackedButtonView *)self _createButtons];
  [(HRStackedButtonView *)self setButtons:v3];

  [(HRStackedButtonView *)self _setUpFooterText];
  [(HRStackedButtonView *)self _assignConstraintsForButtons];
  [(HRStackedButtonView *)self _createViewBottomConstraint];

  [(HRStackedButtonView *)self _updateBottomConstraint];
}

- (void)_setUpBlurEffect
{
  v3 = [MEMORY[0x277D75210] effectWithStyle:10];
  [(HRStackedButtonView *)self setBackgroundBlurEffect:v3];

  v4 = objc_alloc(MEMORY[0x277D75D68]);
  v5 = [(HRStackedButtonView *)self backgroundBlurEffect];
  v6 = [v4 initWithEffect:v5];
  [(HRStackedButtonView *)self setBackgroundBlurView:v6];

  v7 = [(HRStackedButtonView *)self backgroundBlurView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(HRStackedButtonView *)self backgroundBlurView];
  [(HRStackedButtonView *)self addSubview:v8];

  v9 = [(HRStackedButtonView *)self backgroundBlurView];
  [v9 hk_alignVerticalConstraintsWithView:self margin:0.0];

  [(HRStackedButtonView *)self setBlurHidden:0];
}

- (id)_createButtons
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(HRStackedButtonView *)self titles];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__HRStackedButtonView__createButtons__block_invoke;
  v9[3] = &unk_2796FBAA8;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [v4 enumerateObjectsUsingBlock:v9];

  v6 = v10;
  v7 = v5;

  return v5;
}

void __37__HRStackedButtonView__createButtons__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = a2;
  v5 = [*(a1 + 32) styles];
  v6 = [v5 objectAtIndexedSubscript:a3];
  v7 = [v6 integerValue];

  switch(v7)
  {
    case 2:
      v13 = MEMORY[0x277D75220];
      v14 = [MEMORY[0x277D75348] systemGray6Color];
      v10 = [v13 hk_multiLineRoundRectButtonTintedWithColor:v14 title:v19 target:*(a1 + 32) action:sel_actionButtonTapped_];

      v15 = [MEMORY[0x277D75230] glassButtonConfiguration];
      [v10 setConfiguration:v15];

      v9 = [MEMORY[0x277D75348] hk_defaultPrimaryTextColor];
      [v10 setTitleColor:v9 forState:0];
      goto LABEL_7;
    case 1:
      v11 = MEMORY[0x277D75220];
      v12 = [MEMORY[0x277D75348] hk_appKeyColor];
      v10 = [v11 hk_multiLineRoundRectButtonTintedWithColor:v12 title:v19 target:*(a1 + 32) action:sel_actionButtonTapped_];

      v9 = [MEMORY[0x277D75230] tintedGlassButtonConfiguration];
      [v10 setConfiguration:v9];
      goto LABEL_7;
    case 0:
      v8 = MEMORY[0x277D75220];
      v9 = [MEMORY[0x277D75348] hk_appKeyColor];
      v10 = [v8 hk_buttonTintedWithColor:v9 title:v19 target:*(a1 + 32) action:sel_actionButtonTapped_];
LABEL_7:

      goto LABEL_9;
  }

  v10 = 0;
LABEL_9:
  v16 = [v10 titleLabel];
  [v16 setAdjustsFontForContentSizeCategory:1];

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"HRStackedButton.%lu", a3];
  v18 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:0 suffix:v17];
  [v10 setAccessibilityIdentifier:v18];

  [v10 setTag:a3];
  [*(a1 + 40) addObject:v10];
  [*(a1 + 32) addSubview:v10];
}

- (void)_setUpFooterText
{
  v3 = [(HRStackedButtonView *)self footerText];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(HRStackedButtonView *)self setFooterTextLabel:v4];

    v5 = [(HRStackedButtonView *)self _attributedFooterText];
    v6 = [(HRStackedButtonView *)self footerTextLabel];
    [v6 setAttributedText:v5];

    v7 = [(HRStackedButtonView *)self footerTextLabel];
    [v7 setAdjustsFontForContentSizeCategory:1];

    v8 = [(HRStackedButtonView *)self footerTextLabel];
    [v8 setNumberOfLines:0];

    v9 = [(HRStackedButtonView *)self footerTextLabel];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = [(HRStackedButtonView *)self footerTextAlignment];
    v11 = [(HRStackedButtonView *)self footerTextLabel];
    [v11 setTextAlignment:v10];

    v12 = [(HRStackedButtonView *)self footerTextLabel];
    [(HRStackedButtonView *)self addSubview:v12];

    v13 = [(HRStackedButtonView *)self footerTextLabel];
    [v13 hk_alignHorizontalConstraintsWithView:self margin:0.0];

    [objc_opt_class() _footerTextSpacingForValue:30.0];
    [(HRStackedButtonView *)self setFirstTopConstant:?];
    v14 = [(HRStackedButtonView *)self footerTextLabel];
    v15 = [v14 firstBaselineAnchor];
    v16 = [(HRStackedButtonView *)self topAnchor];
    [(HRStackedButtonView *)self firstTopConstant];
    v17 = [v15 constraintEqualToAnchor:v16 constant:?];
    [v17 setActive:1];

    v20 = [(HRStackedButtonView *)self footerTextLabel];
    v18 = [v20 lastBaselineAnchor];
    [(HRStackedButtonView *)self setFirstTopAnchor:v18];
  }

  else
  {
    v19 = [(HRStackedButtonView *)self topAnchor];
    [(HRStackedButtonView *)self setFirstTopAnchor:v19];

    [(HRStackedButtonView *)self setFirstTopConstant:0.0];
  }
}

- (void)_assignConstraintsForButtons
{
  v3 = [(HRStackedButtonView *)self buttons];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__HRStackedButtonView__assignConstraintsForButtons__block_invoke;
  v4[3] = &unk_2796FBAD0;
  v4[4] = self;
  [v3 enumerateObjectsUsingBlock:v4];
}

void __51__HRStackedButtonView__assignConstraintsForButtons__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = 0.0;
  v25 = a2;
  [v25 hk_alignHorizontalConstraintsWithView:*(a1 + 32) margin:0.0];
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = [v6 buttons];
    v8 = [v7 objectAtIndexedSubscript:a3 - 1];

    v9 = [*(a1 + 32) styles];
    v10 = [v9 objectAtIndexedSubscript:a3 - 1];
    v11 = [v10 integerValue];

    if ((v11 - 1) >= 2)
    {
      if (v11)
      {
        v12 = 0;
LABEL_14:
        v19 = [*(a1 + 32) styles];
        v20 = [v19 objectAtIndexedSubscript:a3];
        v21 = [v20 integerValue];

        if ((v21 - 1) >= 2)
        {
          if (v21)
          {
            v23 = 0;
            goto LABEL_20;
          }

          v22 = [v25 lastBaselineAnchor];
        }

        else
        {
          v22 = [v25 bottomAnchor];
        }

        v23 = v22;
LABEL_20:
        [objc_opt_class() _buttonSpacingForValue:v5];
        v24 = [v23 constraintEqualToAnchor:v12 constant:?];
        [v24 setActive:1];

        goto LABEL_24;
      }

      v12 = [v8 lastBaselineAnchor];
      *&v13 = 44.0;
    }

    else
    {
      v12 = [v8 bottomAnchor];
      *&v13 = 60.0;
    }

    v5 = *&v13;
    goto LABEL_14;
  }

  v14 = [v6 styles];
  v15 = [v14 objectAtIndexedSubscript:0];
  v16 = [v15 integerValue];

  if ((v16 - 1) >= 2)
  {
    if (v16)
    {
      v8 = 0;
      goto LABEL_23;
    }

    v8 = [v25 firstBaselineAnchor];
    [objc_opt_class() _buttonSpacingForValue:32.0];
  }

  else
  {
    v8 = [v25 topAnchor];
    [*(a1 + 32) firstTopConstant];
    if (v17 == 0.0)
    {
      v5 = 24.0;
      goto LABEL_23;
    }

    [*(a1 + 32) firstTopConstant];
  }

  v5 = v18;
LABEL_23:
  v12 = [*(a1 + 32) firstTopAnchor];
  v23 = [v8 constraintEqualToAnchor:v12 constant:v5];
  [v23 setActive:1];
LABEL_24:
}

- (void)_createViewBottomConstraint
{
  v3 = [(HRStackedButtonView *)self styles];
  v4 = [v3 lastObject];
  v5 = [v4 integerValue];

  if ((v5 - 1) >= 2)
  {
    if (v5)
    {
      goto LABEL_6;
    }

    v6 = [(HRStackedButtonView *)self bottomAnchor];
    v7 = [(HRStackedButtonView *)self buttons];
    v8 = [v7 lastObject];
    v9 = [v8 lastBaselineAnchor];
  }

  else
  {
    v6 = [(HRStackedButtonView *)self bottomAnchor];
    v7 = [(HRStackedButtonView *)self buttons];
    v8 = [v7 lastObject];
    v9 = [v8 bottomAnchor];
  }

  v10 = v9;
  v11 = [v6 constraintEqualToAnchor:v9];
  [(HRStackedButtonView *)self setBottomConstraint:v11];

LABEL_6:
  v12 = [(HRStackedButtonView *)self bottomConstraint];
  [v12 setActive:1];
}

- (void)_updateBottomConstraint
{
  v3 = [(HRStackedButtonView *)self styles];
  v4 = [v3 lastObject];
  v5 = [v4 integerValue];

  if ([(HRStackedButtonView *)self lastButtonMode]== 1)
  {
    v6 = [(HRStackedButtonView *)self titles];
    [v6 count];
  }

  if (v5 == 2)
  {
    goto LABEL_9;
  }

  if (v5 == 1)
  {
    [(HRStackedButtonView *)self lastButtonMode];
LABEL_9:
    v7 = 44.0;
    goto LABEL_10;
  }

  if (v5)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 24.0;
  }

LABEL_10:
  if (![(HRStackedButtonView *)self fixedBottomButtonSpacing])
  {
    [objc_opt_class() _buttonSpacingForValue:v7];
    v7 = v8;
  }

  v9 = [(HRStackedButtonView *)self bottomConstraint];
  [v9 setConstant:v7];
}

- (void)_updateForCurrentSizeCategory
{
  v3 = [(HRStackedButtonView *)self footerText];

  if (v3)
  {
    v4 = [(HRStackedButtonView *)self _attributedFooterText];
    v5 = [(HRStackedButtonView *)self footerTextLabel];
    [v5 setAttributedText:v4];

    [(HRStackedButtonView *)self setNeedsLayout];
  }
}

- (id)_attributedFooterText
{
  v3 = MEMORY[0x277CCAB48];
  v4 = [(HRStackedButtonView *)self footerText];
  v5 = *MEMORY[0x277D769D0];
  v6 = [MEMORY[0x277D75348] secondaryLabelColor];
  v7 = [(HRStackedButtonView *)self boldFooterText];
  v8 = [v3 hrui_attributedStringForText:v4 style:v5 color:v6 boldText:v7];

  return v8;
}

- (id)firstBaselineAnchor
{
  v2 = [(HRStackedButtonView *)self buttons];
  v3 = [v2 firstObject];
  v4 = [v3 firstBaselineAnchor];

  return v4;
}

- (id)lastBaselineAnchor
{
  v2 = [(HRStackedButtonView *)self buttons];
  v3 = [v2 lastObject];
  v4 = [v3 lastBaselineAnchor];

  return v4;
}

+ (id)_footerTextFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [objc_opt_class() _footerFontTextStyle];
  v4 = [v2 preferredFontForTextStyle:v3];

  return v4;
}

+ (id)_footerTextBoldFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [objc_opt_class() _footerFontTextStyle];
  v4 = [v2 hk_preferredFontForTextStyle:v3 symbolicTraits:2];

  return v4;
}

+ (double)_footerTextSpacingForValue:(double)a3
{
  v4 = [objc_opt_class() _footerTextFont];
  [v4 _scaledValueForValue:a3];
  v6 = v5;

  return v6;
}

+ (double)_buttonSpacingForValue:(double)a3
{
  v4 = [MEMORY[0x277D74300] hk_preferredFontForTextStyle:*MEMORY[0x277D76918] symbolicTraits:0x8000];
  [v4 _scaledValueForValue:a3];
  v6 = v5;

  return v6;
}

- (HRStackedButtonViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end