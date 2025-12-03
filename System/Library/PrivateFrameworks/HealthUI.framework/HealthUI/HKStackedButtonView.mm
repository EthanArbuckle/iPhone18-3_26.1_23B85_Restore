@interface HKStackedButtonView
+ (double)_buttonSpacingForValue:(double)value;
+ (double)_footerTextSpacingForValue:(double)value;
+ (id)_footerTextBoldFont;
+ (id)_footerTextFont;
+ (id)buddyStackedButtonViewWithTitles:(id)titles footerText:(id)text boldFooterText:(id)footerText footerTextAlignment:(int64_t)alignment delegate:(id)delegate;
+ (id)createButtonBackgroundView;
- (HKStackedButtonView)initWithButtonTitles:(id)titles styles:(id)styles footerText:(id)text boldFooterText:(id)footerText footerTextAlignment:(int64_t)alignment delegate:(id)delegate;
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
- (void)actionButtonTapped:(id)tapped;
- (void)alignBlurViewHorizontalConstraintsWithView:(id)view;
- (void)setBlurHidden:(BOOL)hidden;
- (void)setBottomAdjustsForHomeButtonlessScreen:(BOOL)screen;
- (void)setLastButtonMode:(int64_t)mode;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HKStackedButtonView

- (HKStackedButtonView)initWithButtonTitles:(id)titles styles:(id)styles footerText:(id)text boldFooterText:(id)footerText footerTextAlignment:(int64_t)alignment delegate:(id)delegate
{
  titlesCopy = titles;
  stylesCopy = styles;
  textCopy = text;
  footerTextCopy = footerText;
  delegateCopy = delegate;
  v25.receiver = self;
  v25.super_class = HKStackedButtonView;
  v19 = [(HKStackedButtonView *)&v25 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_titles, titles);
    objc_storeStrong(&v20->_styles, styles);
    objc_storeStrong(&v20->_footerText, text);
    objc_storeStrong(&v20->_boldFooterText, footerText);
    v20->_footerTextAlignment = alignment;
    v21 = [titlesCopy count];
    if (v21 != [stylesCopy count])
    {
      [HKStackedButtonView initWithButtonTitles:a2 styles:v20 footerText:? boldFooterText:? footerTextAlignment:? delegate:?];
    }

    objc_storeWeak(&v20->_delegate, delegateCopy);
    [(HKStackedButtonView *)v20 _setUpBlurEffect];
    [(HKStackedButtonView *)v20 _setUpButtons];
  }

  return v20;
}

+ (id)buddyStackedButtonViewWithTitles:(id)titles footerText:(id)text boldFooterText:(id)footerText footerTextAlignment:(int64_t)alignment delegate:(id)delegate
{
  v11 = MEMORY[0x1E695DF70];
  delegateCopy = delegate;
  footerTextCopy = footerText;
  textCopy = text;
  titlesCopy = titles;
  v16 = objc_alloc_init(v11);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __111__HKStackedButtonView_buddyStackedButtonViewWithTitles_footerText_boldFooterText_footerTextAlignment_delegate___block_invoke;
  v20[3] = &unk_1E81BBA28;
  v21 = v16;
  v17 = v16;
  [titlesCopy enumerateObjectsUsingBlock:v20];
  v18 = [objc_alloc(objc_opt_class()) initWithButtonTitles:titlesCopy styles:v17 footerText:textCopy boldFooterText:footerTextCopy footerTextAlignment:alignment delegate:delegateCopy];

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

- (void)setLastButtonMode:(int64_t)mode
{
  if (self->_lastButtonMode != mode)
  {
    self->_lastButtonMode = mode;
    [(HKStackedButtonView *)self _updateBottomConstraint];
  }
}

- (void)setBottomAdjustsForHomeButtonlessScreen:(BOOL)screen
{
  if (self->_bottomAdjustsForHomeButtonlessScreen != screen)
  {
    self->_bottomAdjustsForHomeButtonlessScreen = screen;
    [(HKStackedButtonView *)self _updateBottomConstraint];
  }
}

- (void)setBlurHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  self->_blurHidden = hidden;
  backgroundBlurView = [(HKStackedButtonView *)self backgroundBlurView];
  [backgroundBlurView setHidden:hiddenCopy];

  if (hiddenCopy)
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

- (void)alignBlurViewHorizontalConstraintsWithView:(id)view
{
  v24[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  backgroundBlurViewLeadingConstraint = [(HKStackedButtonView *)self backgroundBlurViewLeadingConstraint];

  if (backgroundBlurViewLeadingConstraint)
  {
    v6 = MEMORY[0x1E696ACD8];
    backgroundBlurViewLeadingConstraint2 = [(HKStackedButtonView *)self backgroundBlurViewLeadingConstraint];
    v24[0] = backgroundBlurViewLeadingConstraint2;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    [v6 deactivateConstraints:v8];

    [(HKStackedButtonView *)self setBackgroundBlurViewLeadingConstraint:0];
  }

  backgroundBlurViewTrailingConstraint = [(HKStackedButtonView *)self backgroundBlurViewTrailingConstraint];

  if (backgroundBlurViewTrailingConstraint)
  {
    v10 = MEMORY[0x1E696ACD8];
    backgroundBlurViewTrailingConstraint2 = [(HKStackedButtonView *)self backgroundBlurViewTrailingConstraint];
    v23 = backgroundBlurViewTrailingConstraint2;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    [v10 deactivateConstraints:v12];

    [(HKStackedButtonView *)self setBackgroundBlurViewTrailingConstraint:0];
  }

  backgroundBlurView = [(HKStackedButtonView *)self backgroundBlurView];
  leadingAnchor = [backgroundBlurView leadingAnchor];
  leadingAnchor2 = [viewCopy leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [(HKStackedButtonView *)self setBackgroundBlurViewLeadingConstraint:v16];

  backgroundBlurView2 = [(HKStackedButtonView *)self backgroundBlurView];
  trailingAnchor = [backgroundBlurView2 trailingAnchor];
  trailingAnchor2 = [viewCopy trailingAnchor];

  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [(HKStackedButtonView *)self setBackgroundBlurViewTrailingConstraint:v20];

  backgroundBlurViewLeadingConstraint3 = [(HKStackedButtonView *)self backgroundBlurViewLeadingConstraint];
  [backgroundBlurViewLeadingConstraint3 setActive:1];

  backgroundBlurViewTrailingConstraint3 = [(HKStackedButtonView *)self backgroundBlurViewTrailingConstraint];
  [backgroundBlurViewTrailingConstraint3 setActive:1];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = HKStackedButtonView;
  [(HKStackedButtonView *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(HKStackedButtonView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      [(HKStackedButtonView *)self _updateForCurrentSizeCategory];
    }
  }
}

- (void)actionButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  delegate = [(HKStackedButtonView *)self delegate];
  v5 = [tappedCopy tag];

  [delegate stackedButtonView:self didTapButtonAtIndex:v5];
}

- (void)_setUpButtons
{
  _createButtons = [(HKStackedButtonView *)self _createButtons];
  [(HKStackedButtonView *)self setButtons:_createButtons];

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
  backgroundBlurEffect = [(HKStackedButtonView *)self backgroundBlurEffect];
  v6 = [v4 initWithEffect:backgroundBlurEffect];
  [(HKStackedButtonView *)self setBackgroundBlurView:v6];

  backgroundBlurView = [(HKStackedButtonView *)self backgroundBlurView];
  [backgroundBlurView setTranslatesAutoresizingMaskIntoConstraints:0];

  backgroundBlurView2 = [(HKStackedButtonView *)self backgroundBlurView];
  [(HKStackedButtonView *)self addSubview:backgroundBlurView2];

  backgroundBlurView3 = [(HKStackedButtonView *)self backgroundBlurView];
  [backgroundBlurView3 hk_alignVerticalConstraintsWithView:self margin:0.0];

  [(HKStackedButtonView *)self alignBlurViewHorizontalConstraintsWithView:self];

  [(HKStackedButtonView *)self setBlurHidden:0];
}

- (id)_createButtons
{
  array = [MEMORY[0x1E695DF70] array];
  titles = [(HKStackedButtonView *)self titles];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__HKStackedButtonView__createButtons__block_invoke;
  v9[3] = &unk_1E81BA120;
  v9[4] = self;
  v5 = array;
  v10 = v5;
  [titles enumerateObjectsUsingBlock:v9];

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
  footerText = [(HKStackedButtonView *)self footerText];

  if (footerText)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(HKStackedButtonView *)self setFooterTextLabel:v4];

    _attributedFooterText = [(HKStackedButtonView *)self _attributedFooterText];
    footerTextLabel = [(HKStackedButtonView *)self footerTextLabel];
    [footerTextLabel setAttributedText:_attributedFooterText];

    footerTextLabel2 = [(HKStackedButtonView *)self footerTextLabel];
    [footerTextLabel2 setAdjustsFontForContentSizeCategory:1];

    footerTextLabel3 = [(HKStackedButtonView *)self footerTextLabel];
    [footerTextLabel3 setNumberOfLines:0];

    footerTextLabel4 = [(HKStackedButtonView *)self footerTextLabel];
    [footerTextLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

    footerTextAlignment = [(HKStackedButtonView *)self footerTextAlignment];
    footerTextLabel5 = [(HKStackedButtonView *)self footerTextLabel];
    [footerTextLabel5 setTextAlignment:footerTextAlignment];

    footerTextLabel6 = [(HKStackedButtonView *)self footerTextLabel];
    [(HKStackedButtonView *)self addSubview:footerTextLabel6];

    footerTextLabel7 = [(HKStackedButtonView *)self footerTextLabel];
    [footerTextLabel7 hk_alignHorizontalConstraintsWithView:self margin:0.0];

    [objc_opt_class() _footerTextSpacingForValue:40.0];
    [(HKStackedButtonView *)self setFirstTopConstant:?];
    footerTextLabel8 = [(HKStackedButtonView *)self footerTextLabel];
    firstBaselineAnchor = [footerTextLabel8 firstBaselineAnchor];
    topAnchor = [(HKStackedButtonView *)self topAnchor];
    [(HKStackedButtonView *)self firstTopConstant];
    v17 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
    [v17 setActive:1];

    footerTextLabel9 = [(HKStackedButtonView *)self footerTextLabel];
    lastBaselineAnchor = [footerTextLabel9 lastBaselineAnchor];
    [(HKStackedButtonView *)self setFirstTopAnchor:lastBaselineAnchor];
  }

  else
  {
    topAnchor2 = [(HKStackedButtonView *)self topAnchor];
    [(HKStackedButtonView *)self setFirstTopAnchor:topAnchor2];

    [(HKStackedButtonView *)self setFirstTopConstant:0.0];
  }
}

- (void)_assignConstraintsForButtons
{
  v3 = MEMORY[0x1E695DF70];
  buttons = [(HKStackedButtonView *)self buttons];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(buttons, "count")}];

  buttons2 = [(HKStackedButtonView *)self buttons];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __51__HKStackedButtonView__assignConstraintsForButtons__block_invoke;
  v11 = &unk_1E81BBA50;
  selfCopy = self;
  v13 = v5;
  v7 = v5;
  [buttons2 enumerateObjectsUsingBlock:&v8];

  [MEMORY[0x1E696ACD8] activateConstraints:{v7, v8, v9, v10, v11, selfCopy}];
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
  buttonSpacingConstraints = [(HKStackedButtonView *)self buttonSpacingConstraints];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__HKStackedButtonView__updateConstraintsForButtons__block_invoke;
  v4[3] = &unk_1E81BBA78;
  v4[4] = self;
  [buttonSpacingConstraints enumerateObjectsUsingBlock:v4];
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
  styles = [(HKStackedButtonView *)self styles];
  lastObject = [styles lastObject];
  integerValue = [lastObject integerValue];

  if (integerValue == 1)
  {
    bottomAnchor = [(HKStackedButtonView *)self bottomAnchor];
    buttons = [(HKStackedButtonView *)self buttons];
    lastObject2 = [buttons lastObject];
    bottomAnchor2 = [lastObject2 bottomAnchor];
  }

  else
  {
    if (integerValue)
    {
      goto LABEL_6;
    }

    bottomAnchor = [(HKStackedButtonView *)self bottomAnchor];
    buttons = [(HKStackedButtonView *)self buttons];
    lastObject2 = [buttons lastObject];
    bottomAnchor2 = [lastObject2 lastBaselineAnchor];
  }

  v10 = bottomAnchor2;
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [(HKStackedButtonView *)self setBottomConstraint:v11];

LABEL_6:
  bottomConstraint = [(HKStackedButtonView *)self bottomConstraint];
  [bottomConstraint setActive:1];
}

- (void)_updateBottomConstraint
{
  styles = [(HKStackedButtonView *)self styles];
  lastObject = [styles lastObject];
  integerValue = [lastObject integerValue];

  if ([(HKStackedButtonView *)self lastButtonMode]== 1)
  {
    titles = [(HKStackedButtonView *)self titles];
    v8 = [titles count];

    if (v8 != 1 && integerValue != 1)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HKStackedButtonView.m" lineNumber:379 description:@"Tried to use 'Primary in Flow' with a button count other than 1 and style other than Rounded Rect"];
    }
  }

  v10 = 0.0;
  if (integerValue == 1)
  {
    lastButtonMode = [(HKStackedButtonView *)self lastButtonMode];
    v12 = 60.0;
    if (lastButtonMode != 1)
    {
      v12 = 0.0;
    }

    if (lastButtonMode)
    {
      v10 = v12;
    }

    else
    {
      v10 = 44.0;
    }
  }

  else if (!integerValue)
  {
    v10 = 30.0;
  }

  if ([(HKStackedButtonView *)self bottomAdjustsForHomeButtonlessScreen])
  {
    v10 = v10 + 14.0;
  }

  [objc_opt_class() _buttonSpacingForValue:v10];
  v14 = v13;
  bottomConstraint = [(HKStackedButtonView *)self bottomConstraint];
  [bottomConstraint setConstant:v14];
}

- (void)_updateForCurrentSizeCategory
{
  footerText = [(HKStackedButtonView *)self footerText];

  if (footerText)
  {
    _attributedFooterText = [(HKStackedButtonView *)self _attributedFooterText];
    footerTextLabel = [(HKStackedButtonView *)self footerTextLabel];
    [footerTextLabel setAttributedText:_attributedFooterText];

    [(HKStackedButtonView *)self setNeedsLayout];
  }

  [(HKStackedButtonView *)self _updateBottomConstraint];

  [(HKStackedButtonView *)self _updateConstraintsForButtons];
}

- (id)_attributedFooterText
{
  v3 = MEMORY[0x1E696AD40];
  footerText = [(HKStackedButtonView *)self footerText];
  v5 = *MEMORY[0x1E69DDD80];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  boldFooterText = [(HKStackedButtonView *)self boldFooterText];
  v8 = [v3 hk_attributedStringForText:footerText style:v5 color:secondaryLabelColor boldText:boldFooterText];

  return v8;
}

+ (id)createButtonBackgroundView
{
  v2 = objc_alloc_init(MEMORY[0x1E69DD250]);
  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [v2 setBackgroundColor:secondarySystemBackgroundColor];

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 hk_maskAllCornersWithRadius:26.0];
  v4 = *MEMORY[0x1E69796E8];
  layer = [v2 layer];
  [layer setCornerCurve:v4];

  return v2;
}

- (id)firstBaselineAnchor
{
  buttons = [(HKStackedButtonView *)self buttons];
  firstObject = [buttons firstObject];
  firstBaselineAnchor = [firstObject firstBaselineAnchor];

  return firstBaselineAnchor;
}

- (id)lastBaselineAnchor
{
  buttons = [(HKStackedButtonView *)self buttons];
  lastObject = [buttons lastObject];
  lastBaselineAnchor = [lastObject lastBaselineAnchor];

  return lastBaselineAnchor;
}

+ (id)_footerTextFont
{
  v2 = MEMORY[0x1E69DB878];
  _footerFontTextStyle = [objc_opt_class() _footerFontTextStyle];
  v4 = [v2 preferredFontForTextStyle:_footerFontTextStyle];

  return v4;
}

+ (id)_footerTextBoldFont
{
  v2 = MEMORY[0x1E69DB878];
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
  v4 = [MEMORY[0x1E69DB878] hk_scalableFontForTextStyle:*MEMORY[0x1E69DDCF8] symbolicTraits:0x8000];
  [v4 _scaledValueForValue:value];
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