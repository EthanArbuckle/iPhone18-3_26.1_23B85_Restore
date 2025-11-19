@interface CNComposeHeaderView
+ (double)_labelTopPaddingSpecification;
+ (double)preferredHeight;
+ (double)separatorHeight;
+ (id)defaultFont;
+ (id)os_log;
+ (id)supplimentalMessageFont;
- (CGRect)_contentRect;
- (CGRect)_exclusionRectForView:(id)a3 alongEdge:(unint64_t)a4;
- (CGRect)titleLabelBaselineAlignmentRectForLabel:(id)a3;
- (CNComposeHeaderView)initWithFrame:(CGRect)a3;
- (CNComposeHeaderViewDelegate)delegate;
- (CNComposeHeaderViewDelegate)internalDelegate;
- (NSDirectionalEdgeInsets)separatorDirectionalEdgeInsets;
- (NSString)label;
- (UIEdgeInsets)_recipientViewEdgeInsets;
- (UIEdgeInsets)overrideContentMargins;
- (double)_additionalContentHeight;
- (double)labelTopPadding;
- (id)_automationID;
- (id)_baseAttributes;
- (id)_highlightedBackgroundView;
- (id)headerViewDelegates;
- (id)labelColor;
- (void)createComposeFieldInfoLabelIfNeeded;
- (void)handleTouchesEnded;
- (void)layoutComposeFieldInfoLabelWithContentRect:(CGRect)a3 labelRect:(CGRect)a4;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)refreshPreferredContentSize;
- (void)setComposeFieldInfoText:(id)a3;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setLabel:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation CNComposeHeaderView

+ (id)os_log
{
  if (os_log_cn_once_token_7_0 != -1)
  {
    +[CNComposeHeaderView os_log];
  }

  v3 = os_log_cn_once_object_7_0;

  return v3;
}

uint64_t __29__CNComposeHeaderView_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.autocomplete.ui", "headerview");
  v1 = os_log_cn_once_object_7_0;
  os_log_cn_once_object_7_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)defaultFont
{
  v2 = +[CNAutocompleteFontMetricCache sharedFontMetricCache];
  v3 = [v2 cachedFont:&__block_literal_global_15 forKey:@"CNComposeHeaderViewDefaultFont"];

  return v3;
}

id __34__CNComposeHeaderView_defaultFont__block_invoke()
{
  v0 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:0x8000 options:0];
  v1 = [MEMORY[0x1E69DB878] fontWithDescriptor:v0 size:0.0];

  return v1;
}

+ (id)supplimentalMessageFont
{
  v2 = +[CNAutocompleteFontMetricCache sharedFontMetricCache];
  v3 = [v2 cachedFont:&__block_literal_global_20 forKey:@"CNComposeHeaderViewSupplimentalMessageFont"];

  return v3;
}

id __46__CNComposeHeaderView_supplimentalMessageFont__block_invoke()
{
  v0 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD10] addingSymbolicTraits:0 options:0];
  v1 = [MEMORY[0x1E69DB878] fontWithDescriptor:v0 size:0.0];

  return v1;
}

+ (double)preferredHeight
{
  v3 = +[CNAutocompleteFontMetricCache sharedFontMetricCache];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__CNComposeHeaderView_preferredHeight__block_invoke;
  v7[3] = &__block_descriptor_40_e5_d8__0l;
  v7[4] = a1;
  [v3 cachedFloat:v7 forKey:@"CNComposeHeaderViewPreferredHeight"];
  v5 = v4;

  return v5;
}

double __38__CNComposeHeaderView_preferredHeight__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69966E8] currentEnvironment];
  v3 = [v2 featureFlags];
  v4 = [v3 isFeatureEnabled:29];

  v5 = [*(a1 + 32) defaultFont];
  if (v4)
  {
    v6 = isPortraitIPhone();
    v7 = 44.0;
    if (v6)
    {
      v7 = 48.0;
    }

    [v5 _scaledValueForValue:v7];
    v8 = [MEMORY[0x1E69DCEB0] mainScreen];
    UIRoundToScreenScale();
    v10 = v9;
    goto LABEL_8;
  }

  v11 = [MEMORY[0x1E69DC668] sharedApplication];
  v12 = [v11 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v12);

  if (!IsAccessibilityCategory)
  {
    [v5 ascender];
    [v5 capHeight];
    [*(a1 + 32) _labelTopPaddingSpecification];
    v17 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v17 scale];
    UIFloorToScale();

    [v5 _bodyLeading];
    v18 = [*(a1 + 32) defaultFont];
    [v18 _bodyLeading];

    v8 = [MEMORY[0x1E69DCEB0] mainScreen];
    UIRoundToScreenScale();
    *&v19 = v19;
    v10 = roundf(*&v19);
LABEL_8:

    goto LABEL_9;
  }

  [v5 capHeight];
  v15 = v14;
  [v5 lineHeight];
  v10 = v15 + v16;
LABEL_9:

  return v10;
}

+ (double)separatorHeight
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 scale];
  v4 = v3;

  return 1.0 / v4;
}

+ (double)_labelTopPaddingSpecification
{
  v3 = +[CNAutocompleteFontMetricCache sharedFontMetricCache];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__CNComposeHeaderView__labelTopPaddingSpecification__block_invoke;
  v7[3] = &__block_descriptor_40_e5_d8__0l;
  v7[4] = a1;
  [v3 cachedFloat:v7 forKey:@"CNComposeHeaderViewLabelTopPaddingSpec"];
  v5 = v4;

  return v5;
}

double __52__CNComposeHeaderView__labelTopPaddingSpecification__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) defaultFont];
  [v2 lineHeight];
  v4 = v3;
  v5 = [*(a1 + 32) defaultFont];
  [v5 lineHeight];
  v7 = v6;
  v8 = [*(a1 + 32) defaultFont];
  [v8 descender];
  v10 = v7 + v9;
  v11 = [*(a1 + 32) defaultFont];
  [v11 xHeight];
  v13 = v4 - (v10 + v12 * 0.5);

  v14 = [*(a1 + 32) defaultFont];
  [v14 _bodyLeading];
  v16 = v15 - v13;

  return floor(v16);
}

- (double)labelTopPadding
{
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:29];

  if (v5 || ([MEMORY[0x1E69DC668] sharedApplication], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "preferredContentSizeCategory"), v7 = objc_claimAutoreleasedReturnValue(), IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v7), v7, v6, IsAccessibilityCategory))
  {
    [(CNComposeHeaderView *)self _recipientViewEdgeInsets];
    return v9;
  }

  else
  {
    [objc_opt_class() _labelTopPaddingSpecification];
    v12 = v11;
    v13 = [(CNComposeHeaderView *)self labelView];
    [v13 _capOffsetFromBoundsTop];
    v10 = v12 - v14;
  }

  return v10;
}

- (id)labelColor
{
  v2 = [(CNComposeHeaderView *)self labelView];
  v3 = [v2 effectiveTextColor];

  return v3;
}

- (CNComposeHeaderView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v19.receiver = self;
  v19.super_class = CNComposeHeaderView;
  v5 = [(CNComposeHeaderView *)&v19 initWithFrame:a3.origin.x, a3.origin.y];
  if (v5)
  {
    v6 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(CNComposeHeaderView *)v5 setBackgroundColor:v6];
    [(CNComposeHeaderView *)v5 setPreservesSuperviewLayoutMargins:1];
    [(CNComposeHeaderView *)v5 setInsetsLayoutMarginsFromSafeArea:0];
    v7 = MEMORY[0x1E695F058];
    v8 = *MEMORY[0x1E695F058];
    +[CNComposeHeaderView separatorHeight];
    v10 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v8, height - v9, width, v9}];
    separator = v5->_separator;
    v5->_separator = v10;

    [(UIView *)v5->_separator setAutoresizingMask:2];
    v12 = v5->_separator;
    v13 = +[CNComposeHeaderView defaultSeparatorColor];
    [(UIView *)v12 setBackgroundColor:v13];

    [(CNComposeHeaderView *)v5 addSubview:v5->_separator];
    v14 = [[CNComposeHeaderLabelView alloc] initWithFrame:v8, v7[1], v7[2], v7[3]];
    labelView = v5->_labelView;
    v5->_labelView = v14;

    [(CNComposeHeaderLabelView *)v5->_labelView setAutoresizingMask:0];
    v16 = v5->_labelView;
    v17 = [objc_opt_class() defaultFont];
    [(CNComposeHeaderLabelView *)v16 setFont:v17];

    [(CNComposeHeaderLabelView *)v5->_labelView sizeToFit];
    [(CNComposeHeaderView *)v5 addSubview:v5->_labelView];
  }

  return v5;
}

- (void)setLabel:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(CNComposeHeaderView *)self labelView];
    [v5 setText:v4];

    v6 = [(CNComposeHeaderView *)self labelView];
    [v6 sizeToFit];
  }
}

- (NSString)label
{
  v2 = [(CNComposeHeaderView *)self labelView];
  v3 = [v2 text];

  return v3;
}

- (void)createComposeFieldInfoLabelIfNeeded
{
  v3 = [(CNComposeHeaderView *)self composeFieldInfoLabel];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(CNComposeHeaderView *)self setComposeFieldInfoLabel:v5];

    v6 = [(CNComposeHeaderView *)self composeFieldInfoLabel];
    [v6 setNumberOfLines:3];

    v7 = [(CNComposeHeaderView *)self composeFieldInfoLabel];
    [v7 setAdjustsFontSizeToFitWidth:1];

    v8 = [objc_opt_class() supplimentalMessageFont];
    v9 = [(CNComposeHeaderView *)self composeFieldInfoLabel];
    [v9 setFont:v8];

    v11 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v10 = [(CNComposeHeaderView *)self composeFieldInfoLabel];
    [v10 setTextColor:v11];
  }
}

- (void)setComposeFieldInfoText:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_composeFieldInfoText != v4)
  {
    v38 = v4;
    v4 = [v4 isEqualToString:?];
    v5 = v38;
    if ((v4 & 1) == 0)
    {
      v6 = [v38 copy];
      composeFieldInfoText = self->_composeFieldInfoText;
      self->_composeFieldInfoText = v6;

      if (!v38 || ![v38 length])
      {
        v35 = [(CNComposeHeaderView *)self composeFieldInfoLabel];
        v36 = [v35 superview];

        v5 = v38;
        if (v36 != self)
        {
          goto LABEL_11;
        }

        v34 = [(CNComposeHeaderView *)self composeFieldInfoLabel];
        [v34 removeFromSuperview];
        goto LABEL_9;
      }

      [(CNComposeHeaderView *)self createComposeFieldInfoLabelIfNeeded];
      v8 = self->_composeFieldInfoText;
      v9 = [(CNComposeHeaderView *)self composeFieldInfoLabel];
      [v9 setText:v8];

      [(CNComposeHeaderView *)self _contentRect];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v18 = [(CNComposeHeaderView *)self labelView];
      [v18 frame];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      v27 = [(CNComposeHeaderView *)self composeFieldInfoLabel];
      [v27 bounds];
      v37 = v28;

      [(CNComposeHeaderView *)self layoutComposeFieldInfoLabelWithContentRect:v11 labelRect:v13, v15, v17, v20, v22, v24, v26];
      v29 = [(CNComposeHeaderView *)self composeFieldInfoLabel];
      [v29 bounds];
      v31 = v30;

      v32 = [(CNComposeHeaderView *)self composeFieldInfoLabel];
      v33 = [v32 superview];

      if (v33 != self)
      {
        v34 = [(CNComposeHeaderView *)self composeFieldInfoLabel];
        [(CNComposeHeaderView *)self addSubview:v34];
LABEL_9:

LABEL_10:
        v4 = [(CNComposeHeaderView *)self _notifyDelegateOfSizeChange];
        v5 = v38;
        goto LABEL_11;
      }

      v5 = v38;
      if (v37 != v31)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_11:

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)layoutComposeFieldInfoLabelWithContentRect:(CGRect)a3 labelRect:(CGRect)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(CNComposeHeaderView *)self composeFieldInfoLabel:a3.origin.x];
  [(CNComposeHeaderView *)self bounds];
  [v9 sizeThatFits:{v10, 1.79769313e308}];
  v12 = v11;

  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  MinX = CGRectGetMinX(v24);
  [(CNComposeHeaderView *)self bounds];
  MaxY = CGRectGetMaxY(v25);
  [objc_opt_class() separatorHeight];
  v16 = MaxY - (v12 + v15 + 5.0);
  [(CNComposeHeaderView *)self bounds];
  v17 = CGRectGetWidth(v26) + MinX * -2.0;
  [(CNComposeHeaderView *)self separatorDirectionalEdgeInsets];
  v19 = v17 - v18;
  [(CNComposeHeaderView *)self separatorDirectionalEdgeInsets];
  v21 = v19 - v20;
  v22 = [(CNComposeHeaderView *)self composeFieldInfoLabel];
  [v22 setFrame:{MinX, v16, v21, v12}];
}

- (void)layoutSubviews
{
  v3 = [(CNComposeHeaderView *)self _shouldReverseLayoutDirection];
  [(CNComposeHeaderView *)self _contentRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(CNComposeHeaderView *)self labelView];
  [v12 frame];
  v14 = v13;
  v16 = v15;

  v17 = [(CNComposeHeaderView *)self labelView];
  [v17 sizeThatFits:{v9, v11}];
  v19 = v18;
  v21 = v20;

  recta.origin.x = v5;
  v49.origin.x = v5;
  v49.origin.y = v7;
  v49.size.width = v9;
  v49.size.height = v11;
  Width = CGRectGetWidth(v49);
  v50.origin.x = v14;
  v50.origin.y = v16;
  v50.size.width = v19;
  v50.size.height = v21;
  v23 = fmin(CGRectGetWidth(v50), Width);
  [(CNComposeHeaderView *)self labelTopPadding];
  v25 = v24;
  if ([(CNComposeHeaderView *)self _shouldEmbedLabelInTextView])
  {
    MinX = 0.0;
    if (!v3)
    {
      goto LABEL_8;
    }

    v51.origin.x = recta.origin.x;
    v51.origin.y = v7;
    v51.size.width = v9;
    v51.size.height = v11;
    MaxX = CGRectGetWidth(v51);
    goto LABEL_6;
  }

  if (v3)
  {
    v52.origin.x = recta.origin.x;
    v52.origin.y = v7;
    v52.size.width = v9;
    v52.size.height = v11;
    MaxX = CGRectGetMaxX(v52);
LABEL_6:
    v28 = MaxX;
    v53.origin.x = v14;
    v53.origin.y = v25;
    v53.size.width = v23;
    v53.size.height = v21;
    MinX = v28 - CGRectGetWidth(v53);
    goto LABEL_8;
  }

  v54.origin.x = recta.origin.x;
  v54.origin.y = v7;
  v54.size.width = v9;
  v54.size.height = v11;
  MinX = CGRectGetMinX(v54);
LABEL_8:
  v29 = [(CNComposeHeaderView *)self labelView];
  [v29 setFrame:{MinX, v25, v23, v21}];

  v30 = [(CNComposeHeaderView *)self composeFieldInfoLabel];
  v31 = [v30 superview];

  if (v31 == self)
  {
    [(CNComposeHeaderView *)self layoutComposeFieldInfoLabelWithContentRect:recta.origin.x labelRect:v7, v9, v11, MinX, v25, v23, v21];
  }

  v32 = [(CNComposeHeaderView *)self separator];
  [v32 frame];
  v34 = v33;

  [(CNComposeHeaderView *)self frame];
  Height = CGRectGetHeight(v55);
  [objc_opt_class() separatorHeight];
  v37 = v36;
  [(CNComposeHeaderView *)self separatorDirectionalEdgeInsets];
  if (v3)
  {
    v40 = v39;
  }

  else
  {
    v40 = v38;
  }

  v41 = Height - v37;
  [(CNComposeHeaderView *)self bounds];
  v42 = CGRectGetWidth(v56);
  [(CNComposeHeaderView *)self separatorDirectionalEdgeInsets];
  v44 = v42 - v43;
  [(CNComposeHeaderView *)self separatorDirectionalEdgeInsets];
  v46 = v44 - v45;
  v47 = [(CNComposeHeaderView *)self separator];
  [v47 setFrame:{v40, v41, v46, v34}];

  *&recta.origin.y = self;
  *&recta.size.width = CNComposeHeaderView;
  [(CGFloat *)&recta.origin.y layoutSubviews];
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = CNComposeHeaderView;
  [(CNComposeHeaderView *)&v3 layoutMarginsDidChange];
  [(CNComposeHeaderView *)self setNeedsLayout];
}

- (id)headerViewDelegates
{
  v3 = [(CNComposeHeaderView *)self delegate];
  if (v3)
  {
  }

  else
  {
    v4 = [(CNComposeHeaderView *)self internalDelegate];

    if (!v4)
    {
      goto LABEL_9;
    }
  }

  v5 = [(CNComposeHeaderView *)self delegate];

  if (v5)
  {
    v6 = [(CNComposeHeaderView *)self delegate];
    v4 = [MEMORY[0x1E695E0F0] arrayByAddingObject:v6];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v7 = [(CNComposeHeaderView *)self internalDelegate];

  if (v7)
  {
    v8 = [(CNComposeHeaderView *)self internalDelegate];
    v9 = [v4 arrayByAddingObject:v8];

    v4 = v9;
  }

LABEL_9:

  return v4;
}

- (CGRect)_contentRect
{
  [(CNComposeHeaderView *)self overrideContentMargins];
  v4.f64[1] = v3;
  v6.f64[1] = v5;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4, *MEMORY[0x1E69DDCE0]), vceqq_f64(v6, *(MEMORY[0x1E69DDCE0] + 16))))))
  {
    [(CNComposeHeaderView *)self layoutMargins];
    v15 = [(CNComposeHeaderView *)self traitCollection];
    [v15 displayScale];
    UIRoundToScale();
    v10 = v16;

    v17 = [(CNComposeHeaderView *)self traitCollection];
    [v17 displayScale];
    UIRoundToScale();
    v14 = v18;

    v12 = 0.0;
    v8 = 0.0;
  }

  else
  {
    [(CNComposeHeaderView *)self overrideContentMargins];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  [(CNComposeHeaderView *)self bounds];
  v20 = v10 + v19;
  v22 = v8 + v21;
  v24 = v23 - (v14 + v10);
  v26 = v25 - (v12 + v8);
  result.size.height = v26;
  result.size.width = v24;
  result.origin.y = v22;
  result.origin.x = v20;
  return result;
}

- (double)_additionalContentHeight
{
  v3 = [(CNComposeHeaderView *)self composeFieldInfoLabel];
  v4 = [v3 superview];

  v5 = 0.0;
  if (v4 == self)
  {
    v6 = [(CNComposeHeaderView *)self composeFieldInfoLabel];
    [v6 bounds];
    v5 = v7;
  }

  return v5;
}

- (CGRect)titleLabelBaselineAlignmentRectForLabel:(id)a3
{
  v4 = a3;
  v5 = [(CNComposeHeaderView *)self labelView];
  [v5 layoutSubviews];

  v6 = [(CNComposeHeaderView *)self labelView];
  [v6 frame];
  v45 = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  LOBYTE(v6) = [(CNComposeHeaderView *)self _shouldReverseLayoutDirection];
  [(CNComposeHeaderView *)self _contentRect];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [v4 frame];
  rect = v22;
  [v4 frame];
  v24 = v23;
  v47.origin.x = v15;
  v47.origin.y = v17;
  v47.size.width = v19;
  v47.size.height = v21;
  v25 = fmax(fmin(v24, CGRectGetWidth(v47) + -6.0 - v11), 0.0);
  v26 = v45;
  v27 = v9;
  v28 = v11;
  v29 = v13;
  if (v6)
  {
    v30 = CGRectGetMinX(*&v26) + -6.0 - v25;
  }

  else
  {
    v30 = CGRectGetMaxX(*&v26) + 6.0;
  }

  v48.origin.x = v45;
  v48.origin.y = v9;
  v48.size.width = v11;
  v48.size.height = v13;
  MaxY = CGRectGetMaxY(v48);
  [v4 frame];
  Height = CGRectGetHeight(v49);
  v33 = [(CNComposeHeaderView *)self labelView];
  [v33 _baselineOffsetFromBottom];
  v35 = v34;

  [v4 _baselineOffsetFromBottom];
  v50.origin.y = MaxY - v35 - (Height - v36);
  v50.origin.x = v30;
  v50.size.width = v25;
  v50.size.height = rect;
  v51 = CGRectIntegral(v50);
  x = v51.origin.x;
  y = v51.origin.y;
  width = v51.size.width;
  v40 = v51.size.height;

  v41 = x;
  v42 = y;
  v43 = width;
  v44 = v40;
  result.size.height = v44;
  result.size.width = v43;
  result.origin.y = v42;
  result.origin.x = v41;
  return result;
}

- (void)handleTouchesEnded
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(CNComposeHeaderView *)self _canBecomeFirstResponder])
  {

    [(CNComposeHeaderView *)self becomeFirstResponder];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [(CNComposeHeaderView *)self headerViewDelegates];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v9 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v8 composeHeaderViewClicked:self];
            goto LABEL_15;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = CNComposeHeaderView;
  [(CNComposeHeaderView *)&v5 touchesBegan:a3 withEvent:a4];
  if ([(CNComposeHeaderView *)self showsHighlightWhenTouched])
  {
    [(CNComposeHeaderView *)self setHighlighted:1 animated:0];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  [(CNComposeHeaderView *)self handleTouchesEnded:a3];
  if ([(CNComposeHeaderView *)self showsHighlightWhenTouched])
  {

    [(CNComposeHeaderView *)self setHighlighted:0 animated:1];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = CNComposeHeaderView;
  [(CNComposeHeaderView *)&v5 touchesCancelled:a3 withEvent:a4];
  if ([(CNComposeHeaderView *)self showsHighlightWhenTouched])
  {
    [(CNComposeHeaderView *)self setHighlighted:0 animated:1];
  }
}

- (id)_highlightedBackgroundView
{
  highlightedBackgroundView = self->_highlightedBackgroundView;
  if (!highlightedBackgroundView)
  {
    [(CNComposeHeaderView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10 + -1.0;
    [objc_opt_class() separatorHeight];
    v13 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v5, v11, v7, v9 + v12}];
    v14 = self->_highlightedBackgroundView;
    self->_highlightedBackgroundView = v13;

    [(UIView *)self->_highlightedBackgroundView setAutoresizingMask:18];
    v15 = [MEMORY[0x1E69DC888] colorWithWhite:0.85 alpha:1.0];
    [(UIView *)self->_highlightedBackgroundView setBackgroundColor:v15];

    highlightedBackgroundView = self->_highlightedBackgroundView;
  }

  return highlightedBackgroundView;
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__CNComposeHeaderView_setHighlighted_animated___block_invoke;
  v11[3] = &unk_1E7CD2750;
  v12 = a3;
  v11[4] = self;
  v7 = MEMORY[0x1B8CB9350](v11, a2);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__CNComposeHeaderView_setHighlighted_animated___block_invoke_2;
  v9[3] = &unk_1E7CD2868;
  v10 = a3;
  v9[4] = self;
  v8 = MEMORY[0x1B8CB9350](v9);
  if (v4)
  {
    [MEMORY[0x1E69DD250] animateWithDuration:v7 animations:v8 completion:0.3];
  }

  else
  {
    v7[2](v7);
    v8[2](v8, 1);
  }
}

void __47__CNComposeHeaderView_setHighlighted_animated___block_invoke(uint64_t a1)
{
  v2 = 0.0;
  if (*(a1 + 40) == 1)
  {
    v3 = *(a1 + 32);
    v4 = [v3 highlightedBackgroundView];
    v5 = [*(a1 + 32) separator];
    [v3 insertSubview:v4 aboveSubview:v5];

    if (*(a1 + 40))
    {
      v2 = 1.0;
    }

    else
    {
      v2 = 0.0;
    }
  }

  v6 = [*(a1 + 32) highlightedBackgroundView];
  [v6 setAlpha:v2];
}

void __47__CNComposeHeaderView_setHighlighted_animated___block_invoke_2(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v2 = [*(a1 + 32) highlightedBackgroundView];
    [v2 removeFromSuperview];
  }
}

- (void)refreshPreferredContentSize
{
  v3 = +[CNAutocompleteFontMetricCache sharedFontMetricCache];
  [v3 ensureCacheIsValid];

  v4 = [(CNComposeHeaderView *)self labelView];
  v5 = [objc_opt_class() defaultFont];
  [v4 setFont:v5];

  [(CNComposeHeaderView *)self setNeedsLayout];
}

- (id)_baseAttributes
{
  v12[3] = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_class() defaultFont];
  v4 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v3 _bodyLeading];
  [v4 setLineSpacing:v5 * 0.55];
  [(CNComposeHeaderView *)self _recipientViewEdgeInsets];
  [v4 setHeadIndent:v6];
  if ([(CNComposeHeaderView *)self _shouldReverseLayoutDirection])
  {
    [v4 setBaseWritingDirection:1];
  }

  v11[0] = *MEMORY[0x1E69DB648];
  v7 = [objc_opt_class() defaultFont];
  v12[0] = v7;
  v11[1] = *MEMORY[0x1E69DB650];
  v8 = [MEMORY[0x1E69DC888] labelColor];
  v11[2] = *MEMORY[0x1E69DB688];
  v12[1] = v8;
  v12[2] = v4;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v9;
}

- (UIEdgeInsets)_recipientViewEdgeInsets
{
  v3 = [objc_opt_class() defaultFont];
  v4 = *(MEMORY[0x1E69DDCE0] + 8);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  v6 = [MEMORY[0x1E69966E8] currentEnvironment];
  v7 = [v6 featureFlags];
  v8 = [v7 isFeatureEnabled:29];

  if (v8)
  {
    [objc_opt_class() preferredHeight];
    v10 = v9;
    [v3 _bodyLeading];
    v12 = round((v10 - v11) * 0.5);
    [v3 _bodyLeading];
    v14 = (v10 - v13) * 0.5;
  }

  else
  {
    [v3 ascender];
    v15 = [(CNComposeHeaderView *)self labelView];
    [v15 frame];
    CGRectGetMaxY(v31);
    v16 = [(CNComposeHeaderView *)self labelView];
    [v16 _baselineOffsetFromBottom];

    v17 = [MEMORY[0x1E69DC668] sharedApplication];
    v18 = [v17 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v18);

    if (IsAccessibilityCategory)
    {
      [v3 capHeight];
      v12 = round(v20 * 0.5);
      [v3 capHeight];
      v14 = v21 * 0.5;
    }

    else
    {
      UIFloorToViewScale();
      v12 = v22;
      [objc_opt_class() preferredHeight];
      v24 = v23;
      [v3 _bodyLeading];
      v14 = v24 - (v12 + v25);
    }
  }

  v26 = round(v14);

  v27 = v12;
  v28 = v4;
  v29 = v26;
  v30 = v5;
  result.right = v30;
  result.bottom = v29;
  result.left = v28;
  result.top = v27;
  return result;
}

- (CGRect)_exclusionRectForView:(id)a3 alongEdge:(unint64_t)a4
{
  v6 = a3;
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v6 superview];

  if (v15 != self)
  {
    v16 = [v6 superview];
    [v16 convertRect:self toView:{v8, v10, v12, v14}];
    v8 = v17;
    v10 = v18;
    v12 = v19;
    v14 = v20;
  }

  v21 = *MEMORY[0x1E695F058];
  if (a4 == 2)
  {
    v38.origin.x = v8;
    v38.origin.y = v10;
    v38.size.width = v12;
    v38.size.height = v14;
    v22 = CGRectGetMaxX(v38) + 5.0;
  }

  else
  {
    v22 = *(MEMORY[0x1E695F058] + 16);
    if (a4 == 8)
    {
      rect = *(MEMORY[0x1E695F058] + 24);
      v23 = *(MEMORY[0x1E695F058] + 8);
      v35.origin.x = v8;
      v35.origin.y = v10;
      v35.size.width = v12;
      v35.size.height = v14;
      v21 = CGRectGetMinX(v35) + -5.0;
      [(CNComposeHeaderView *)self bounds];
      Width = CGRectGetWidth(v36);
      v37.origin.x = v21;
      v37.origin.y = v23;
      v37.size.width = v22;
      v37.size.height = rect;
      v22 = Width - CGRectGetMinX(v37);
    }
  }

  [(CNComposeHeaderView *)self _recipientViewEdgeInsets];
  v26 = v25;
  v39.origin.x = v8;
  v39.origin.y = v10;
  v39.size.width = v12;
  v39.size.height = v14;
  MaxY = CGRectGetMaxY(v39);
  [(CNComposeHeaderView *)self _recipientViewEdgeInsets];
  v29 = MaxY - v28;

  v30 = v21;
  v31 = v26;
  v32 = v22;
  v33 = v29;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (CNComposeHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSDirectionalEdgeInsets)separatorDirectionalEdgeInsets
{
  top = self->_separatorDirectionalEdgeInsets.top;
  leading = self->_separatorDirectionalEdgeInsets.leading;
  bottom = self->_separatorDirectionalEdgeInsets.bottom;
  trailing = self->_separatorDirectionalEdgeInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (UIEdgeInsets)overrideContentMargins
{
  top = self->_overrideContentMargins.top;
  left = self->_overrideContentMargins.left;
  bottom = self->_overrideContentMargins.bottom;
  right = self->_overrideContentMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CNComposeHeaderViewDelegate)internalDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_internalDelegate);

  return WeakRetained;
}

- (id)_automationID
{
  v3 = [(CNComposeHeaderView *)self label];
  if ([v3 length])
  {
    v4 = [(CNComposeHeaderView *)self label];
    v5 = [@"BTN " stringByAppendingString:v4];
  }

  else
  {
    v5 = [@"BTN " stringByAppendingString:@"NoLabel"];
  }

  return v5;
}

@end