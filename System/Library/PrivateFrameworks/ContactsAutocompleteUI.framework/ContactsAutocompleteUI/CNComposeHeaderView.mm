@interface CNComposeHeaderView
+ (double)_labelTopPaddingSpecification;
+ (double)preferredHeight;
+ (double)separatorHeight;
+ (id)defaultFont;
+ (id)os_log;
+ (id)supplimentalMessageFont;
- (CGRect)_contentRect;
- (CGRect)_exclusionRectForView:(id)view alongEdge:(unint64_t)edge;
- (CGRect)titleLabelBaselineAlignmentRectForLabel:(id)label;
- (CNComposeHeaderView)initWithFrame:(CGRect)frame;
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
- (void)layoutComposeFieldInfoLabelWithContentRect:(CGRect)rect labelRect:(CGRect)labelRect;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)refreshPreferredContentSize;
- (void)setComposeFieldInfoText:(id)text;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setLabel:(id)label;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
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
  v7[4] = self;
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
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
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
  v7[4] = self;
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
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v5 = [featureFlags isFeatureEnabled:29];

  if (v5 || ([MEMORY[0x1E69DC668] sharedApplication], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "preferredContentSizeCategory"), v7 = objc_claimAutoreleasedReturnValue(), IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v7), v7, v6, IsAccessibilityCategory))
  {
    [(CNComposeHeaderView *)self _recipientViewEdgeInsets];
    return v9;
  }

  else
  {
    [objc_opt_class() _labelTopPaddingSpecification];
    v12 = v11;
    labelView = [(CNComposeHeaderView *)self labelView];
    [labelView _capOffsetFromBoundsTop];
    v10 = v12 - v14;
  }

  return v10;
}

- (id)labelColor
{
  labelView = [(CNComposeHeaderView *)self labelView];
  effectiveTextColor = [labelView effectiveTextColor];

  return effectiveTextColor;
}

- (CNComposeHeaderView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v19.receiver = self;
  v19.super_class = CNComposeHeaderView;
  v5 = [(CNComposeHeaderView *)&v19 initWithFrame:frame.origin.x, frame.origin.y];
  if (v5)
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(CNComposeHeaderView *)v5 setBackgroundColor:systemBackgroundColor];
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
    defaultFont = [objc_opt_class() defaultFont];
    [(CNComposeHeaderLabelView *)v16 setFont:defaultFont];

    [(CNComposeHeaderLabelView *)v5->_labelView sizeToFit];
    [(CNComposeHeaderView *)v5 addSubview:v5->_labelView];
  }

  return v5;
}

- (void)setLabel:(id)label
{
  if (label)
  {
    labelCopy = label;
    labelView = [(CNComposeHeaderView *)self labelView];
    [labelView setText:labelCopy];

    labelView2 = [(CNComposeHeaderView *)self labelView];
    [labelView2 sizeToFit];
  }
}

- (NSString)label
{
  labelView = [(CNComposeHeaderView *)self labelView];
  text = [labelView text];

  return text;
}

- (void)createComposeFieldInfoLabelIfNeeded
{
  composeFieldInfoLabel = [(CNComposeHeaderView *)self composeFieldInfoLabel];

  if (!composeFieldInfoLabel)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(CNComposeHeaderView *)self setComposeFieldInfoLabel:v5];

    composeFieldInfoLabel2 = [(CNComposeHeaderView *)self composeFieldInfoLabel];
    [composeFieldInfoLabel2 setNumberOfLines:3];

    composeFieldInfoLabel3 = [(CNComposeHeaderView *)self composeFieldInfoLabel];
    [composeFieldInfoLabel3 setAdjustsFontSizeToFitWidth:1];

    supplimentalMessageFont = [objc_opt_class() supplimentalMessageFont];
    composeFieldInfoLabel4 = [(CNComposeHeaderView *)self composeFieldInfoLabel];
    [composeFieldInfoLabel4 setFont:supplimentalMessageFont];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    composeFieldInfoLabel5 = [(CNComposeHeaderView *)self composeFieldInfoLabel];
    [composeFieldInfoLabel5 setTextColor:secondaryLabelColor];
  }
}

- (void)setComposeFieldInfoText:(id)text
{
  textCopy = text;
  v5 = textCopy;
  if (self->_composeFieldInfoText != textCopy)
  {
    v38 = textCopy;
    textCopy = [textCopy isEqualToString:?];
    v5 = v38;
    if ((textCopy & 1) == 0)
    {
      v6 = [v38 copy];
      composeFieldInfoText = self->_composeFieldInfoText;
      self->_composeFieldInfoText = v6;

      if (!v38 || ![v38 length])
      {
        composeFieldInfoLabel = [(CNComposeHeaderView *)self composeFieldInfoLabel];
        superview = [composeFieldInfoLabel superview];

        v5 = v38;
        if (superview != self)
        {
          goto LABEL_11;
        }

        composeFieldInfoLabel2 = [(CNComposeHeaderView *)self composeFieldInfoLabel];
        [composeFieldInfoLabel2 removeFromSuperview];
        goto LABEL_9;
      }

      [(CNComposeHeaderView *)self createComposeFieldInfoLabelIfNeeded];
      v8 = self->_composeFieldInfoText;
      composeFieldInfoLabel3 = [(CNComposeHeaderView *)self composeFieldInfoLabel];
      [composeFieldInfoLabel3 setText:v8];

      [(CNComposeHeaderView *)self _contentRect];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      labelView = [(CNComposeHeaderView *)self labelView];
      [labelView frame];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      composeFieldInfoLabel4 = [(CNComposeHeaderView *)self composeFieldInfoLabel];
      [composeFieldInfoLabel4 bounds];
      v37 = v28;

      [(CNComposeHeaderView *)self layoutComposeFieldInfoLabelWithContentRect:v11 labelRect:v13, v15, v17, v20, v22, v24, v26];
      composeFieldInfoLabel5 = [(CNComposeHeaderView *)self composeFieldInfoLabel];
      [composeFieldInfoLabel5 bounds];
      v31 = v30;

      composeFieldInfoLabel6 = [(CNComposeHeaderView *)self composeFieldInfoLabel];
      superview2 = [composeFieldInfoLabel6 superview];

      if (superview2 != self)
      {
        composeFieldInfoLabel2 = [(CNComposeHeaderView *)self composeFieldInfoLabel];
        [(CNComposeHeaderView *)self addSubview:composeFieldInfoLabel2];
LABEL_9:

LABEL_10:
        textCopy = [(CNComposeHeaderView *)self _notifyDelegateOfSizeChange];
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

  MEMORY[0x1EEE66BB8](textCopy, v5);
}

- (void)layoutComposeFieldInfoLabelWithContentRect:(CGRect)rect labelRect:(CGRect)labelRect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = [(CNComposeHeaderView *)self composeFieldInfoLabel:rect.origin.x];
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
  composeFieldInfoLabel = [(CNComposeHeaderView *)self composeFieldInfoLabel];
  [composeFieldInfoLabel setFrame:{MinX, v16, v21, v12}];
}

- (void)layoutSubviews
{
  _shouldReverseLayoutDirection = [(CNComposeHeaderView *)self _shouldReverseLayoutDirection];
  [(CNComposeHeaderView *)self _contentRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  labelView = [(CNComposeHeaderView *)self labelView];
  [labelView frame];
  v14 = v13;
  v16 = v15;

  labelView2 = [(CNComposeHeaderView *)self labelView];
  [labelView2 sizeThatFits:{v9, v11}];
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
    if (!_shouldReverseLayoutDirection)
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

  if (_shouldReverseLayoutDirection)
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
  labelView3 = [(CNComposeHeaderView *)self labelView];
  [labelView3 setFrame:{MinX, v25, v23, v21}];

  composeFieldInfoLabel = [(CNComposeHeaderView *)self composeFieldInfoLabel];
  superview = [composeFieldInfoLabel superview];

  if (superview == self)
  {
    [(CNComposeHeaderView *)self layoutComposeFieldInfoLabelWithContentRect:recta.origin.x labelRect:v7, v9, v11, MinX, v25, v23, v21];
  }

  separator = [(CNComposeHeaderView *)self separator];
  [separator frame];
  v34 = v33;

  [(CNComposeHeaderView *)self frame];
  Height = CGRectGetHeight(v55);
  [objc_opt_class() separatorHeight];
  v37 = v36;
  [(CNComposeHeaderView *)self separatorDirectionalEdgeInsets];
  if (_shouldReverseLayoutDirection)
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
  separator2 = [(CNComposeHeaderView *)self separator];
  [separator2 setFrame:{v40, v41, v46, v34}];

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
  delegate = [(CNComposeHeaderView *)self delegate];
  if (delegate)
  {
  }

  else
  {
    internalDelegate = [(CNComposeHeaderView *)self internalDelegate];

    if (!internalDelegate)
    {
      goto LABEL_9;
    }
  }

  delegate2 = [(CNComposeHeaderView *)self delegate];

  if (delegate2)
  {
    delegate3 = [(CNComposeHeaderView *)self delegate];
    internalDelegate = [MEMORY[0x1E695E0F0] arrayByAddingObject:delegate3];
  }

  else
  {
    internalDelegate = MEMORY[0x1E695E0F0];
  }

  internalDelegate2 = [(CNComposeHeaderView *)self internalDelegate];

  if (internalDelegate2)
  {
    internalDelegate3 = [(CNComposeHeaderView *)self internalDelegate];
    v9 = [internalDelegate arrayByAddingObject:internalDelegate3];

    internalDelegate = v9;
  }

LABEL_9:

  return internalDelegate;
}

- (CGRect)_contentRect
{
  [(CNComposeHeaderView *)self overrideContentMargins];
  v4.f64[1] = v3;
  v6.f64[1] = v5;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4, *MEMORY[0x1E69DDCE0]), vceqq_f64(v6, *(MEMORY[0x1E69DDCE0] + 16))))))
  {
    [(CNComposeHeaderView *)self layoutMargins];
    traitCollection = [(CNComposeHeaderView *)self traitCollection];
    [traitCollection displayScale];
    UIRoundToScale();
    v10 = v16;

    traitCollection2 = [(CNComposeHeaderView *)self traitCollection];
    [traitCollection2 displayScale];
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
  composeFieldInfoLabel = [(CNComposeHeaderView *)self composeFieldInfoLabel];
  superview = [composeFieldInfoLabel superview];

  v5 = 0.0;
  if (superview == self)
  {
    composeFieldInfoLabel2 = [(CNComposeHeaderView *)self composeFieldInfoLabel];
    [composeFieldInfoLabel2 bounds];
    v5 = v7;
  }

  return v5;
}

- (CGRect)titleLabelBaselineAlignmentRectForLabel:(id)label
{
  labelCopy = label;
  labelView = [(CNComposeHeaderView *)self labelView];
  [labelView layoutSubviews];

  labelView2 = [(CNComposeHeaderView *)self labelView];
  [labelView2 frame];
  v45 = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  LOBYTE(labelView2) = [(CNComposeHeaderView *)self _shouldReverseLayoutDirection];
  [(CNComposeHeaderView *)self _contentRect];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [labelCopy frame];
  rect = v22;
  [labelCopy frame];
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
  if (labelView2)
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
  [labelCopy frame];
  Height = CGRectGetHeight(v49);
  labelView3 = [(CNComposeHeaderView *)self labelView];
  [labelView3 _baselineOffsetFromBottom];
  v35 = v34;

  [labelCopy _baselineOffsetFromBottom];
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
    headerViewDelegates = [(CNComposeHeaderView *)self headerViewDelegates];
    v4 = [headerViewDelegates countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(headerViewDelegates);
          }

          v8 = *(*(&v9 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v8 composeHeaderViewClicked:self];
            goto LABEL_15;
          }
        }

        v5 = [headerViewDelegates countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = CNComposeHeaderView;
  [(CNComposeHeaderView *)&v5 touchesBegan:began withEvent:event];
  if ([(CNComposeHeaderView *)self showsHighlightWhenTouched])
  {
    [(CNComposeHeaderView *)self setHighlighted:1 animated:0];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  [(CNComposeHeaderView *)self handleTouchesEnded:ended];
  if ([(CNComposeHeaderView *)self showsHighlightWhenTouched])
  {

    [(CNComposeHeaderView *)self setHighlighted:0 animated:1];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = CNComposeHeaderView;
  [(CNComposeHeaderView *)&v5 touchesCancelled:cancelled withEvent:event];
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

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  animatedCopy = animated;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__CNComposeHeaderView_setHighlighted_animated___block_invoke;
  v11[3] = &unk_1E7CD2750;
  highlightedCopy = highlighted;
  v11[4] = self;
  v7 = MEMORY[0x1B8CB9350](v11, a2);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__CNComposeHeaderView_setHighlighted_animated___block_invoke_2;
  v9[3] = &unk_1E7CD2868;
  highlightedCopy2 = highlighted;
  v9[4] = self;
  v8 = MEMORY[0x1B8CB9350](v9);
  if (animatedCopy)
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

  labelView = [(CNComposeHeaderView *)self labelView];
  defaultFont = [objc_opt_class() defaultFont];
  [labelView setFont:defaultFont];

  [(CNComposeHeaderView *)self setNeedsLayout];
}

- (id)_baseAttributes
{
  v12[3] = *MEMORY[0x1E69E9840];
  defaultFont = [objc_opt_class() defaultFont];
  v4 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [defaultFont _bodyLeading];
  [v4 setLineSpacing:v5 * 0.55];
  [(CNComposeHeaderView *)self _recipientViewEdgeInsets];
  [v4 setHeadIndent:v6];
  if ([(CNComposeHeaderView *)self _shouldReverseLayoutDirection])
  {
    [v4 setBaseWritingDirection:1];
  }

  v11[0] = *MEMORY[0x1E69DB648];
  defaultFont2 = [objc_opt_class() defaultFont];
  v12[0] = defaultFont2;
  v11[1] = *MEMORY[0x1E69DB650];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v11[2] = *MEMORY[0x1E69DB688];
  v12[1] = labelColor;
  v12[2] = v4;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v9;
}

- (UIEdgeInsets)_recipientViewEdgeInsets
{
  defaultFont = [objc_opt_class() defaultFont];
  v4 = *(MEMORY[0x1E69DDCE0] + 8);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v8 = [featureFlags isFeatureEnabled:29];

  if (v8)
  {
    [objc_opt_class() preferredHeight];
    v10 = v9;
    [defaultFont _bodyLeading];
    v12 = round((v10 - v11) * 0.5);
    [defaultFont _bodyLeading];
    v14 = (v10 - v13) * 0.5;
  }

  else
  {
    [defaultFont ascender];
    labelView = [(CNComposeHeaderView *)self labelView];
    [labelView frame];
    CGRectGetMaxY(v31);
    labelView2 = [(CNComposeHeaderView *)self labelView];
    [labelView2 _baselineOffsetFromBottom];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    if (IsAccessibilityCategory)
    {
      [defaultFont capHeight];
      v12 = round(v20 * 0.5);
      [defaultFont capHeight];
      v14 = v21 * 0.5;
    }

    else
    {
      UIFloorToViewScale();
      v12 = v22;
      [objc_opt_class() preferredHeight];
      v24 = v23;
      [defaultFont _bodyLeading];
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

- (CGRect)_exclusionRectForView:(id)view alongEdge:(unint64_t)edge
{
  viewCopy = view;
  [viewCopy frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  superview = [viewCopy superview];

  if (superview != self)
  {
    superview2 = [viewCopy superview];
    [superview2 convertRect:self toView:{v8, v10, v12, v14}];
    v8 = v17;
    v10 = v18;
    v12 = v19;
    v14 = v20;
  }

  v21 = *MEMORY[0x1E695F058];
  if (edge == 2)
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
    if (edge == 8)
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
  label = [(CNComposeHeaderView *)self label];
  if ([label length])
  {
    label2 = [(CNComposeHeaderView *)self label];
    v5 = [@"BTN " stringByAppendingString:label2];
  }

  else
  {
    v5 = [@"BTN " stringByAppendingString:@"NoLabel"];
  }

  return v5;
}

@end