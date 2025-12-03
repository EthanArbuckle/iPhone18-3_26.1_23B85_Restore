@interface HRStackedButtonView
+ (double)_buttonSpacingForValue:(double)value;
+ (double)_footerTextSpacingForValue:(double)value;
+ (id)_footerTextBoldFont;
+ (id)_footerTextFont;
+ (id)buddyStackedButtonViewWithTitles:(id)titles footerText:(id)text boldFooterText:(id)footerText footerTextAlignment:(int64_t)alignment delegate:(id)delegate;
- (HRStackedButtonView)initWithButtonTitles:(id)titles styles:(id)styles footerText:(id)text boldFooterText:(id)footerText footerTextAlignment:(int64_t)alignment delegate:(id)delegate;
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
- (void)actionButtonTapped:(id)tapped;
- (void)alignBlurViewHorizontalConstraintsWithView:(id)view;
- (void)setBlurHidden:(BOOL)hidden;
- (void)setFixedBottomButtonSpacing:(BOOL)spacing;
- (void)setLastButtonMode:(int64_t)mode;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HRStackedButtonView

- (HRStackedButtonView)initWithButtonTitles:(id)titles styles:(id)styles footerText:(id)text boldFooterText:(id)footerText footerTextAlignment:(int64_t)alignment delegate:(id)delegate
{
  titlesCopy = titles;
  stylesCopy = styles;
  textCopy = text;
  footerTextCopy = footerText;
  delegateCopy = delegate;
  v23.receiver = self;
  v23.super_class = HRStackedButtonView;
  v19 = [(HRStackedButtonView *)&v23 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_titles, titles);
    objc_storeStrong(&v20->_styles, styles);
    objc_storeStrong(&v20->_footerText, text);
    objc_storeStrong(&v20->_boldFooterText, footerText);
    v20->_footerTextAlignment = alignment;
    objc_storeWeak(&v20->_delegate, delegateCopy);
    [(HRStackedButtonView *)v20 _setUpButtons];
  }

  return v20;
}

+ (id)buddyStackedButtonViewWithTitles:(id)titles footerText:(id)text boldFooterText:(id)footerText footerTextAlignment:(int64_t)alignment delegate:(id)delegate
{
  v11 = MEMORY[0x277CBEB18];
  delegateCopy = delegate;
  footerTextCopy = footerText;
  textCopy = text;
  titlesCopy = titles;
  v16 = objc_alloc_init(v11);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __111__HRStackedButtonView_buddyStackedButtonViewWithTitles_footerText_boldFooterText_footerTextAlignment_delegate___block_invoke;
  v20[3] = &unk_2796FBA80;
  v21 = v16;
  v17 = v16;
  [titlesCopy enumerateObjectsUsingBlock:v20];
  v18 = [objc_alloc(objc_opt_class()) initWithButtonTitles:titlesCopy styles:v17 footerText:textCopy boldFooterText:footerTextCopy footerTextAlignment:alignment delegate:delegateCopy];

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

- (void)setLastButtonMode:(int64_t)mode
{
  if (self->_lastButtonMode != mode)
  {
    self->_lastButtonMode = mode;
    [(HRStackedButtonView *)self _updateBottomConstraint];
  }
}

- (void)setFixedBottomButtonSpacing:(BOOL)spacing
{
  if (self->_fixedBottomButtonSpacing != spacing)
  {
    self->_fixedBottomButtonSpacing = spacing;
    [(HRStackedButtonView *)self _updateBottomConstraint];
  }
}

- (void)setBlurHidden:(BOOL)hidden
{
  self->_blurHidden = hidden;
  if (hidden)
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

- (void)alignBlurViewHorizontalConstraintsWithView:(id)view
{
  v24[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  backgroundBlurViewLeadingConstraint = [(HRStackedButtonView *)self backgroundBlurViewLeadingConstraint];

  if (backgroundBlurViewLeadingConstraint)
  {
    v6 = MEMORY[0x277CCAAD0];
    backgroundBlurViewLeadingConstraint2 = [(HRStackedButtonView *)self backgroundBlurViewLeadingConstraint];
    v24[0] = backgroundBlurViewLeadingConstraint2;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    [v6 deactivateConstraints:v8];

    [(HRStackedButtonView *)self setBackgroundBlurViewLeadingConstraint:0];
  }

  backgroundBlurViewTrailingConstraint = [(HRStackedButtonView *)self backgroundBlurViewTrailingConstraint];

  if (backgroundBlurViewTrailingConstraint)
  {
    v10 = MEMORY[0x277CCAAD0];
    backgroundBlurViewTrailingConstraint2 = [(HRStackedButtonView *)self backgroundBlurViewTrailingConstraint];
    v23 = backgroundBlurViewTrailingConstraint2;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
    [v10 deactivateConstraints:v12];

    [(HRStackedButtonView *)self setBackgroundBlurViewTrailingConstraint:0];
  }

  backgroundBlurView = [(HRStackedButtonView *)self backgroundBlurView];
  leadingAnchor = [backgroundBlurView leadingAnchor];
  leadingAnchor2 = [viewCopy leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [(HRStackedButtonView *)self setBackgroundBlurViewLeadingConstraint:v16];

  backgroundBlurView2 = [(HRStackedButtonView *)self backgroundBlurView];
  trailingAnchor = [backgroundBlurView2 trailingAnchor];
  trailingAnchor2 = [viewCopy trailingAnchor];

  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [(HRStackedButtonView *)self setBackgroundBlurViewTrailingConstraint:v20];

  backgroundBlurViewLeadingConstraint3 = [(HRStackedButtonView *)self backgroundBlurViewLeadingConstraint];
  [backgroundBlurViewLeadingConstraint3 setActive:1];

  backgroundBlurViewTrailingConstraint3 = [(HRStackedButtonView *)self backgroundBlurViewTrailingConstraint];
  [backgroundBlurViewTrailingConstraint3 setActive:1];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = HRStackedButtonView;
  [(HRStackedButtonView *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(HRStackedButtonView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      [(HRStackedButtonView *)self _updateForCurrentSizeCategory];
    }
  }
}

- (void)actionButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  delegate = [(HRStackedButtonView *)self delegate];
  v5 = [tappedCopy tag];

  [delegate stackedButtonView:self didTapButtonAtIndex:v5];
}

- (void)_setUpButtons
{
  _createButtons = [(HRStackedButtonView *)self _createButtons];
  [(HRStackedButtonView *)self setButtons:_createButtons];

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
  backgroundBlurEffect = [(HRStackedButtonView *)self backgroundBlurEffect];
  v6 = [v4 initWithEffect:backgroundBlurEffect];
  [(HRStackedButtonView *)self setBackgroundBlurView:v6];

  backgroundBlurView = [(HRStackedButtonView *)self backgroundBlurView];
  [backgroundBlurView setTranslatesAutoresizingMaskIntoConstraints:0];

  backgroundBlurView2 = [(HRStackedButtonView *)self backgroundBlurView];
  [(HRStackedButtonView *)self addSubview:backgroundBlurView2];

  backgroundBlurView3 = [(HRStackedButtonView *)self backgroundBlurView];
  [backgroundBlurView3 hk_alignVerticalConstraintsWithView:self margin:0.0];

  [(HRStackedButtonView *)self setBlurHidden:0];
}

- (id)_createButtons
{
  array = [MEMORY[0x277CBEB18] array];
  titles = [(HRStackedButtonView *)self titles];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__HRStackedButtonView__createButtons__block_invoke;
  v9[3] = &unk_2796FBAA8;
  v9[4] = self;
  v5 = array;
  v10 = v5;
  [titles enumerateObjectsUsingBlock:v9];

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
  footerText = [(HRStackedButtonView *)self footerText];

  if (footerText)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(HRStackedButtonView *)self setFooterTextLabel:v4];

    _attributedFooterText = [(HRStackedButtonView *)self _attributedFooterText];
    footerTextLabel = [(HRStackedButtonView *)self footerTextLabel];
    [footerTextLabel setAttributedText:_attributedFooterText];

    footerTextLabel2 = [(HRStackedButtonView *)self footerTextLabel];
    [footerTextLabel2 setAdjustsFontForContentSizeCategory:1];

    footerTextLabel3 = [(HRStackedButtonView *)self footerTextLabel];
    [footerTextLabel3 setNumberOfLines:0];

    footerTextLabel4 = [(HRStackedButtonView *)self footerTextLabel];
    [footerTextLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

    footerTextAlignment = [(HRStackedButtonView *)self footerTextAlignment];
    footerTextLabel5 = [(HRStackedButtonView *)self footerTextLabel];
    [footerTextLabel5 setTextAlignment:footerTextAlignment];

    footerTextLabel6 = [(HRStackedButtonView *)self footerTextLabel];
    [(HRStackedButtonView *)self addSubview:footerTextLabel6];

    footerTextLabel7 = [(HRStackedButtonView *)self footerTextLabel];
    [footerTextLabel7 hk_alignHorizontalConstraintsWithView:self margin:0.0];

    [objc_opt_class() _footerTextSpacingForValue:30.0];
    [(HRStackedButtonView *)self setFirstTopConstant:?];
    footerTextLabel8 = [(HRStackedButtonView *)self footerTextLabel];
    firstBaselineAnchor = [footerTextLabel8 firstBaselineAnchor];
    topAnchor = [(HRStackedButtonView *)self topAnchor];
    [(HRStackedButtonView *)self firstTopConstant];
    v17 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
    [v17 setActive:1];

    footerTextLabel9 = [(HRStackedButtonView *)self footerTextLabel];
    lastBaselineAnchor = [footerTextLabel9 lastBaselineAnchor];
    [(HRStackedButtonView *)self setFirstTopAnchor:lastBaselineAnchor];
  }

  else
  {
    topAnchor2 = [(HRStackedButtonView *)self topAnchor];
    [(HRStackedButtonView *)self setFirstTopAnchor:topAnchor2];

    [(HRStackedButtonView *)self setFirstTopConstant:0.0];
  }
}

- (void)_assignConstraintsForButtons
{
  buttons = [(HRStackedButtonView *)self buttons];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__HRStackedButtonView__assignConstraintsForButtons__block_invoke;
  v4[3] = &unk_2796FBAD0;
  v4[4] = self;
  [buttons enumerateObjectsUsingBlock:v4];
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
  styles = [(HRStackedButtonView *)self styles];
  lastObject = [styles lastObject];
  integerValue = [lastObject integerValue];

  if ((integerValue - 1) >= 2)
  {
    if (integerValue)
    {
      goto LABEL_6;
    }

    bottomAnchor = [(HRStackedButtonView *)self bottomAnchor];
    buttons = [(HRStackedButtonView *)self buttons];
    lastObject2 = [buttons lastObject];
    lastBaselineAnchor = [lastObject2 lastBaselineAnchor];
  }

  else
  {
    bottomAnchor = [(HRStackedButtonView *)self bottomAnchor];
    buttons = [(HRStackedButtonView *)self buttons];
    lastObject2 = [buttons lastObject];
    lastBaselineAnchor = [lastObject2 bottomAnchor];
  }

  v10 = lastBaselineAnchor;
  v11 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor];
  [(HRStackedButtonView *)self setBottomConstraint:v11];

LABEL_6:
  bottomConstraint = [(HRStackedButtonView *)self bottomConstraint];
  [bottomConstraint setActive:1];
}

- (void)_updateBottomConstraint
{
  styles = [(HRStackedButtonView *)self styles];
  lastObject = [styles lastObject];
  integerValue = [lastObject integerValue];

  if ([(HRStackedButtonView *)self lastButtonMode]== 1)
  {
    titles = [(HRStackedButtonView *)self titles];
    [titles count];
  }

  if (integerValue == 2)
  {
    goto LABEL_9;
  }

  if (integerValue == 1)
  {
    [(HRStackedButtonView *)self lastButtonMode];
LABEL_9:
    v7 = 44.0;
    goto LABEL_10;
  }

  if (integerValue)
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

  bottomConstraint = [(HRStackedButtonView *)self bottomConstraint];
  [bottomConstraint setConstant:v7];
}

- (void)_updateForCurrentSizeCategory
{
  footerText = [(HRStackedButtonView *)self footerText];

  if (footerText)
  {
    _attributedFooterText = [(HRStackedButtonView *)self _attributedFooterText];
    footerTextLabel = [(HRStackedButtonView *)self footerTextLabel];
    [footerTextLabel setAttributedText:_attributedFooterText];

    [(HRStackedButtonView *)self setNeedsLayout];
  }
}

- (id)_attributedFooterText
{
  v3 = MEMORY[0x277CCAB48];
  footerText = [(HRStackedButtonView *)self footerText];
  v5 = *MEMORY[0x277D769D0];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  boldFooterText = [(HRStackedButtonView *)self boldFooterText];
  v8 = [v3 hrui_attributedStringForText:footerText style:v5 color:secondaryLabelColor boldText:boldFooterText];

  return v8;
}

- (id)firstBaselineAnchor
{
  buttons = [(HRStackedButtonView *)self buttons];
  firstObject = [buttons firstObject];
  firstBaselineAnchor = [firstObject firstBaselineAnchor];

  return firstBaselineAnchor;
}

- (id)lastBaselineAnchor
{
  buttons = [(HRStackedButtonView *)self buttons];
  lastObject = [buttons lastObject];
  lastBaselineAnchor = [lastObject lastBaselineAnchor];

  return lastBaselineAnchor;
}

+ (id)_footerTextFont
{
  v2 = MEMORY[0x277D74300];
  _footerFontTextStyle = [objc_opt_class() _footerFontTextStyle];
  v4 = [v2 preferredFontForTextStyle:_footerFontTextStyle];

  return v4;
}

+ (id)_footerTextBoldFont
{
  v2 = MEMORY[0x277D74300];
  _footerFontTextStyle = [objc_opt_class() _footerFontTextStyle];
  v4 = [v2 hk_preferredFontForTextStyle:_footerFontTextStyle symbolicTraits:2];

  return v4;
}

+ (double)_footerTextSpacingForValue:(double)value
{
  _footerTextFont = [objc_opt_class() _footerTextFont];
  [_footerTextFont _scaledValueForValue:value];
  v6 = v5;

  return v6;
}

+ (double)_buttonSpacingForValue:(double)value
{
  v4 = [MEMORY[0x277D74300] hk_preferredFontForTextStyle:*MEMORY[0x277D76918] symbolicTraits:0x8000];
  [v4 _scaledValueForValue:value];
  v6 = v5;

  return v6;
}

- (HRStackedButtonViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end