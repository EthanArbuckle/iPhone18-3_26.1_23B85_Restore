@interface HKStackedButtonView
+ (double)_buttonSpacingForValue:(double)a3;
+ (double)_footerTextSpacingForValue:(double)a3;
+ (id)_footerTextBoldFont;
+ (id)_footerTextFont;
+ (id)buddyStackedButtonViewWithTitles:(id)a3 footerText:(id)a4 boldFooterText:(id)a5 footerTextAlignment:(int64_t)a6 delegate:(id)a7;
+ (id)createButtonBackgroundView;
- (HKStackedButtonView)initWithButtonTitles:(id)a3 styles:(id)a4 footerText:(id)a5 boldFooterText:(id)a6 footerTextAlignment:(int64_t)a7 delegate:(id)a8;
- (HKStackedButtonViewDelegate)delegate;
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
- (void)_updateConstraintsForButtons;
- (void)_updateForCurrentSizeCategory;
- (void)actionButtonTapped:(id)a3;
- (void)alignBlurViewHorizontalConstraintsWithView:(id)a3;
- (void)setBlurHidden:(BOOL)a3;
- (void)setBottomAdjustsForHomeButtonlessScreen:(BOOL)a3;
- (void)setLastButtonMode:(int64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HKStackedButtonView

- (HKStackedButtonView)initWithButtonTitles:(id)a3 styles:(id)a4 footerText:(id)a5 boldFooterText:(id)a6 footerTextAlignment:(int64_t)a7 delegate:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v25.receiver = self;
  v25.super_class = HKStackedButtonView;
  v19 = [(HKStackedButtonView *)&v25 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_titles, a3);
    objc_storeStrong(&v20->_styles, a4);
    objc_storeStrong(&v20->_footerText, a5);
    objc_storeStrong(&v20->_boldFooterText, a6);
    v20->_footerTextAlignment = a7;
    v21 = [v14 count];
    if (v21 != [v15 count])
    {
      [HKStackedButtonView initWithButtonTitles:a2 styles:v20 footerText:? boldFooterText:? footerTextAlignment:? delegate:?];
    }

    objc_storeWeak(&v20->_delegate, v18);
    [(HKStackedButtonView *)v20 _setUpBlurEffect];
    [(HKStackedButtonView *)v20 _setUpButtons];
  }

  return v20;
}

+ (id)buddyStackedButtonViewWithTitles:(id)a3 footerText:(id)a4 boldFooterText:(id)a5 footerTextAlignment:(int64_t)a6 delegate:(id)a7
{
  v11 = MEMORY[0x1E695DF70];
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = objc_alloc_init(v11);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __111__HKStackedButtonView_buddyStackedButtonViewWithTitles_footerText_boldFooterText_footerTextAlignment_delegate___block_invoke;
  v20[3] = &unk_1E81BBA28;
  v21 = v16;
  v17 = v16;
  [v15 enumerateObjectsUsingBlock:v20];
  v18 = [objc_alloc(objc_opt_class()) initWithButtonTitles:v15 styles:v17 footerText:v14 boldFooterText:v13 footerTextAlignment:a6 delegate:v12];

  return v18;
}

uint64_t __111__HKStackedButtonView_buddyStackedButtonViewWithTitles_footerText_boldFooterText_footerTextAlignment_delegate___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = &unk_1F43847C8;
  }

  else
  {
    v4 = &unk_1F43847B0;
  }

  return [v3 addObject:v4];
}

- (void)setLastButtonMode:(int64_t)a3
{
  if (self->_lastButtonMode != a3)
  {
    self->_lastButtonMode = a3;
    [(HKStackedButtonView *)self _updateBottomConstraint];
  }
}

- (void)setBottomAdjustsForHomeButtonlessScreen:(BOOL)a3
{
  if (self->_bottomAdjustsForHomeButtonlessScreen != a3)
  {
    self->_bottomAdjustsForHomeButtonlessScreen = a3;
    [(HKStackedButtonView *)self _updateBottomConstraint];
  }
}

- (void)setBlurHidden:(BOOL)a3
{
  v3 = a3;
  self->_blurHidden = a3;
  v5 = [(HKStackedButtonView *)self backgroundBlurView];
  [v5 setHidden:v3];

  if (v3)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] clearColor];
  }
  v6 = ;
  [(HKStackedButtonView *)self setBackgroundColor:v6];
}

- (void)alignBlurViewHorizontalConstraintsWithView:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HKStackedButtonView *)self backgroundBlurViewLeadingConstraint];

  if (v5)
  {
    v6 = MEMORY[0x1E696ACD8];
    v7 = [(HKStackedButtonView *)self backgroundBlurViewLeadingConstraint];
    v24[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    [v6 deactivateConstraints:v8];

    [(HKStackedButtonView *)self setBackgroundBlurViewLeadingConstraint:0];
  }

  v9 = [(HKStackedButtonView *)self backgroundBlurViewTrailingConstraint];

  if (v9)
  {
    v10 = MEMORY[0x1E696ACD8];
    v11 = [(HKStackedButtonView *)self backgroundBlurViewTrailingConstraint];
    v23 = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    [v10 deactivateConstraints:v12];

    [(HKStackedButtonView *)self setBackgroundBlurViewTrailingConstraint:0];
  }

  v13 = [(HKStackedButtonView *)self backgroundBlurView];
  v14 = [v13 leadingAnchor];
  v15 = [v4 leadingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  [(HKStackedButtonView *)self setBackgroundBlurViewLeadingConstraint:v16];

  v17 = [(HKStackedButtonView *)self backgroundBlurView];
  v18 = [v17 trailingAnchor];
  v19 = [v4 trailingAnchor];

  v20 = [v18 constraintEqualToAnchor:v19];
  [(HKStackedButtonView *)self setBackgroundBlurViewTrailingConstraint:v20];

  v21 = [(HKStackedButtonView *)self backgroundBlurViewLeadingConstraint];
  [v21 setActive:1];

  v22 = [(HKStackedButtonView *)self backgroundBlurViewTrailingConstraint];
  [v22 setActive:1];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKStackedButtonView;
  [(HKStackedButtonView *)&v9 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(HKStackedButtonView *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      [(HKStackedButtonView *)self _updateForCurrentSizeCategory];
    }
  }
}

- (void)actionButtonTapped:(id)a3
{
  v4 = a3;
  v6 = [(HKStackedButtonView *)self delegate];
  v5 = [v4 tag];

  [v6 stackedButtonView:self didTapButtonAtIndex:v5];
}

- (void)_setUpButtons
{
  v3 = [(HKStackedButtonView *)self _createButtons];
  [(HKStackedButtonView *)self setButtons:v3];

  [(HKStackedButtonView *)self _setUpFooterText];
  [(HKStackedButtonView *)self _assignConstraintsForButtons];
  [(HKStackedButtonView *)self _updateConstraintsForButtons];
  [(HKStackedButtonView *)self _createViewBottomConstraint];

  [(HKStackedButtonView *)self _updateBottomConstraint];
}

- (void)_setUpBlurEffect
{
  v3 = [MEMORY[0x1E69DC730] effectWithStyle:0];
  [(HKStackedButtonView *)self setBackgroundBlurEffect:v3];

  v4 = objc_alloc(MEMORY[0x1E69DD298]);
  v5 = [(HKStackedButtonView *)self backgroundBlurEffect];
  v6 = [v4 initWithEffect:v5];
  [(HKStackedButtonView *)self setBackgroundBlurView:v6];

  v7 = [(HKStackedButtonView *)self backgroundBlurView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(HKStackedButtonView *)self backgroundBlurView];
  [(HKStackedButtonView *)self addSubview:v8];

  v9 = [(HKStackedButtonView *)self backgroundBlurView];
  [v9 hk_alignVerticalConstraintsWithView:self margin:0.0];

  [(HKStackedButtonView *)self alignBlurViewHorizontalConstraintsWithView:self];

  [(HKStackedButtonView *)self setBlurHidden:0];
}

- (id)_createButtons
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(HKStackedButtonView *)self titles];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__HKStackedButtonView__createButtons__block_invoke;
  v9[3] = &unk_1E81BA120;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [v4 enumerateObjectsUsingBlock:v9];

  v6 = v10;
  v7 = v5;

  return v5;
}

void __37__HKStackedButtonView__createButtons__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = a2;
  v5 = [*(a1 + 32) styles];
  v6 = [v5 objectAtIndexedSubscript:a3];
  v7 = [v6 integerValue];

  if (v7 == 1)
  {
    v11 = MEMORY[0x1E69DC738];
    v9 = [MEMORY[0x1E69DC888] hk_appKeyColor];
    v10 = [v11 hk_multiLineRoundRectButtonTintedWithColor:v9 title:v14 target:*(a1 + 32) action:sel_actionButtonTapped_];
    goto LABEL_5;
  }

  if (!v7)
  {
    v8 = MEMORY[0x1E69DC738];
    v9 = [MEMORY[0x1E69DC888] hk_appKeyColor];
    v10 = [v8 hk_buttonTintedWithColor:v9 title:v14 target:*(a1 + 32) action:sel_actionButtonTapped_];
LABEL_5:
    v12 = v10;

    goto LABEL_7;
  }

  v12 = 0;
LABEL_7:
  v13 = [v12 titleLabel];
  [v13 setAdjustsFontForContentSizeCategory:1];

  [v12 setTag:a3];
  [*(a1 + 40) addObject:v12];
  [*(a1 + 32) addSubview:v12];
}

- (void)_setUpFooterText
{
  v3 = [(HKStackedButtonView *)self footerText];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(HKStackedButtonView *)self setFooterTextLabel:v4];

    v5 = [(HKStackedButtonView *)self _attributedFooterText];
    v6 = [(HKStackedButtonView *)self footerTextLabel];
    [v6 setAttributedText:v5];

    v7 = [(HKStackedButtonView *)self footerTextLabel];
    [v7 setAdjustsFontForContentSizeCategory:1];

    v8 = [(HKStackedButtonView *)self footerTextLabel];
    [v8 setNumberOfLines:0];

    v9 = [(HKStackedButtonView *)self footerTextLabel];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = [(HKStackedButtonView *)self footerTextAlignment];
    v11 = [(HKStackedButtonView *)self footerTextLabel];
    [v11 setTextAlignment:v10];

    v12 = [(HKStackedButtonView *)self footerTextLabel];
    [(HKStackedButtonView *)self addSubview:v12];

    v13 = [(HKStackedButtonView *)self footerTextLabel];
    [v13 hk_alignHorizontalConstraintsWithView:self margin:0.0];

    [objc_opt_class() _footerTextSpacingForValue:40.0];
    [(HKStackedButtonView *)self setFirstTopConstant:?];
    v14 = [(HKStackedButtonView *)self footerTextLabel];
    v15 = [v14 firstBaselineAnchor];
    v16 = [(HKStackedButtonView *)self topAnchor];
    [(HKStackedButtonView *)self firstTopConstant];
    v17 = [v15 constraintEqualToAnchor:v16 constant:?];
    [v17 setActive:1];

    v20 = [(HKStackedButtonView *)self footerTextLabel];
    v18 = [v20 lastBaselineAnchor];
    [(HKStackedButtonView *)self setFirstTopAnchor:v18];
  }

  else
  {
    v19 = [(HKStackedButtonView *)self topAnchor];
    [(HKStackedButtonView *)self setFirstTopAnchor:v19];

    [(HKStackedButtonView *)self setFirstTopConstant:0.0];
  }
}

- (void)_assignConstraintsForButtons
{
  v3 = MEMORY[0x1E695DF70];
  v4 = [(HKStackedButtonView *)self buttons];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v6 = [(HKStackedButtonView *)self buttons];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __51__HKStackedButtonView__assignConstraintsForButtons__block_invoke;
  v11 = &unk_1E81BBA50;
  v12 = self;
  v13 = v5;
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:&v8];

  [MEMORY[0x1E696ACD8] activateConstraints:{v7, v8, v9, v10, v11, v12}];
  [(HKStackedButtonView *)self setButtonSpacingConstraints:v7];
}

void __51__HKStackedButtonView__assignConstraintsForButtons__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v25 = a2;
  [v25 hk_alignHorizontalConstraintsWithView:*(a1 + 32) margin:0.0];
  v5 = *(a1 + 32);
  if (a3)
  {
    v6 = [v5 buttons];
    v7 = [v6 objectAtIndexedSubscript:a3 - 1];

    v8 = [*(a1 + 32) styles];
    v9 = [v8 objectAtIndexedSubscript:a3 - 1];
    v10 = [v9 integerValue];

    if (v10 == 1)
    {
      v11 = [v7 bottomAnchor];
    }

    else
    {
      if (v10)
      {
        v16 = 0;
LABEL_11:
        v17 = [*(a1 + 32) styles];
        v18 = [v17 objectAtIndexedSubscript:a3];
        v19 = [v18 integerValue];

        if (v19 == 1)
        {
          v20 = [v25 bottomAnchor];
        }

        else
        {
          if (v19)
          {
            v21 = 0;
            goto LABEL_17;
          }

          v20 = [v25 lastBaselineAnchor];
        }

        v21 = v20;
LABEL_17:
        v22 = *(a1 + 40);
        v23 = [v21 constraintEqualToAnchor:v16];
        [v22 addObject:v23];

        goto LABEL_21;
      }

      v11 = [v7 lastBaselineAnchor];
    }

    v16 = v11;
    goto LABEL_11;
  }

  v12 = [v5 styles];
  v13 = [v12 objectAtIndexedSubscript:0];
  v14 = [v13 integerValue];

  if (v14 == 1)
  {
    v15 = [v25 topAnchor];
    goto LABEL_19;
  }

  v7 = 0;
  if (!v14)
  {
    v15 = [v25 firstBaselineAnchor];
LABEL_19:
    v7 = v15;
  }

  v24 = *(a1 + 40);
  v16 = [*(a1 + 32) firstTopAnchor];
  v21 = [v7 constraintEqualToAnchor:v16];
  [v24 addObject:v21];
LABEL_21:
}

- (void)_updateConstraintsForButtons
{
  v3 = [(HKStackedButtonView *)self buttonSpacingConstraints];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__HKStackedButtonView__updateConstraintsForButtons__block_invoke;
  v4[3] = &unk_1E81BBA78;
  v4[4] = self;
  [v3 enumerateObjectsUsingBlock:v4];
}

void __51__HKStackedButtonView__updateConstraintsForButtons__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = a2;
  v5 = [*(a1 + 32) styles];
  v6 = v5;
  if (a3)
  {
    v7 = [v5 objectAtIndexedSubscript:a3 - 1];
    v8 = [v7 integerValue];

    v9 = 36.0;
    if (v8 != 1)
    {
      v9 = 0.0;
    }

    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = 44.0;
    }

    v11 = objc_opt_class();
    v12 = v10;
    goto LABEL_8;
  }

  v13 = [v5 objectAtIndexedSubscript:0];
  v14 = [v13 integerValue];

  if (v14 == 1)
  {
    [*(a1 + 32) firstTopConstant];
    if (v15 != 0.0)
    {
      v16 = objc_opt_class();
      [*(a1 + 32) firstTopConstant];
      v11 = v16;
      goto LABEL_8;
    }

    [MEMORY[0x1E69DCEB0] hk_currentDeviceHas4InchScreen];
  }

  else if (!v14)
  {
    v11 = objc_opt_class();
    v12 = 32.0;
LABEL_8:
    [v11 _buttonSpacingForValue:v12];
  }

  [v17 setConstant:?];
}

- (void)_createViewBottomConstraint
{
  v3 = [(HKStackedButtonView *)self styles];
  v4 = [v3 lastObject];
  v5 = [v4 integerValue];

  if (v5 == 1)
  {
    v6 = [(HKStackedButtonView *)self bottomAnchor];
    v7 = [(HKStackedButtonView *)self buttons];
    v8 = [v7 lastObject];
    v9 = [v8 bottomAnchor];
  }

  else
  {
    if (v5)
    {
      goto LABEL_6;
    }

    v6 = [(HKStackedButtonView *)self bottomAnchor];
    v7 = [(HKStackedButtonView *)self buttons];
    v8 = [v7 lastObject];
    v9 = [v8 lastBaselineAnchor];
  }

  v10 = v9;
  v11 = [v6 constraintEqualToAnchor:v9];
  [(HKStackedButtonView *)self setBottomConstraint:v11];

LABEL_6:
  v12 = [(HKStackedButtonView *)self bottomConstraint];
  [v12 setActive:1];
}

- (void)_updateBottomConstraint
{
  v4 = [(HKStackedButtonView *)self styles];
  v5 = [v4 lastObject];
  v6 = [v5 integerValue];

  if ([(HKStackedButtonView *)self lastButtonMode]== 1)
  {
    v7 = [(HKStackedButtonView *)self titles];
    v8 = [v7 count];

    if (v8 != 1 && v6 != 1)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"HKStackedButtonView.m" lineNumber:379 description:@"Tried to use 'Primary in Flow' with a button count other than 1 and style other than Rounded Rect"];
    }
  }

  v10 = 0.0;
  if (v6 == 1)
  {
    v11 = [(HKStackedButtonView *)self lastButtonMode];
    v12 = 60.0;
    if (v11 != 1)
    {
      v12 = 0.0;
    }

    if (v11)
    {
      v10 = v12;
    }

    else
    {
      v10 = 44.0;
    }
  }

  else if (!v6)
  {
    v10 = 30.0;
  }

  if ([(HKStackedButtonView *)self bottomAdjustsForHomeButtonlessScreen])
  {
    v10 = v10 + 14.0;
  }

  [objc_opt_class() _buttonSpacingForValue:v10];
  v14 = v13;
  v15 = [(HKStackedButtonView *)self bottomConstraint];
  [v15 setConstant:v14];
}

- (void)_updateForCurrentSizeCategory
{
  v3 = [(HKStackedButtonView *)self footerText];

  if (v3)
  {
    v4 = [(HKStackedButtonView *)self _attributedFooterText];
    v5 = [(HKStackedButtonView *)self footerTextLabel];
    [v5 setAttributedText:v4];

    [(HKStackedButtonView *)self setNeedsLayout];
  }

  [(HKStackedButtonView *)self _updateBottomConstraint];

  [(HKStackedButtonView *)self _updateConstraintsForButtons];
}

- (id)_attributedFooterText
{
  v3 = MEMORY[0x1E696AD40];
  v4 = [(HKStackedButtonView *)self footerText];
  v5 = *MEMORY[0x1E69DDD80];
  v6 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v7 = [(HKStackedButtonView *)self boldFooterText];
  v8 = [v3 hk_attributedStringForText:v4 style:v5 color:v6 boldText:v7];

  return v8;
}

+ (id)createButtonBackgroundView
{
  v2 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v3 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [v2 setBackgroundColor:v3];

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 hk_maskAllCornersWithRadius:26.0];
  v4 = *MEMORY[0x1E69796E8];
  v5 = [v2 layer];
  [v5 setCornerCurve:v4];

  return v2;
}

- (id)firstBaselineAnchor
{
  v2 = [(HKStackedButtonView *)self buttons];
  v3 = [v2 firstObject];
  v4 = [v3 firstBaselineAnchor];

  return v4;
}

- (id)lastBaselineAnchor
{
  v2 = [(HKStackedButtonView *)self buttons];
  v3 = [v2 lastObject];
  v4 = [v3 lastBaselineAnchor];

  return v4;
}

+ (id)_footerTextFont
{
  v2 = MEMORY[0x1E69DB878];
  v3 = [objc_opt_class() _footerFontTextStyle];
  v4 = [v2 preferredFontForTextStyle:v3];

  return v4;
}

+ (id)_footerTextBoldFont
{
  v2 = MEMORY[0x1E69DB878];
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
  v4 = [MEMORY[0x1E69DB878] hk_scalableFontForTextStyle:*MEMORY[0x1E69DDCF8] symbolicTraits:0x8000];
  [v4 _scaledValueForValue:a3];
  v6 = v5;

  return v6;
}

- (HKStackedButtonViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithButtonTitles:(uint64_t)a1 styles:(uint64_t)a2 footerText:boldFooterText:footerTextAlignment:delegate:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKStackedButtonView.m" lineNumber:79 description:@"Titles and styles must have equal counts"];
}

@end