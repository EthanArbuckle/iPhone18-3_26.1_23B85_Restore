@interface CCUIMenuModuleItemView
+ (BOOL)_shouldLimitContentSizeCategory:(id)a3 forceLimitContentSizeCategory:(BOOL)a4;
+ (double)defaultMenuItemHeightForContentSizeCategory:(id)a3;
+ (id)_preferredFontForTextStyle:(id)a3 hiFontStyle:(int64_t)a4 contentSizeCategory:(id)a5 shouldLimitContentSizeCategory:(BOOL)a6;
- (BOOL)_shouldHorizontallyCenterText;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)isEqual:(id)a3;
- (CCUIMenuModuleItemView)initWithMenuItem:(id)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSDirectionalEdgeInsets)_labelInsets;
- (double)_labelLeadingInset;
- (double)_labelTrailingInset;
- (double)_separatorHeight;
- (double)_textHeightForEmojiLabel:(id)a3 width:(double)a4;
- (double)_titleBaselineToBottom;
- (double)_titleBaselineToTop;
- (double)_trailingWidthForCustomViews;
- (id)_subtitleFont;
- (id)_titleFont;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (unint64_t)hash;
- (void)_contentSizeCategoryDidChange;
- (void)_layoutLeadingCustomView;
- (void)_layoutTrailingCustomViews;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)_setSubtitle:(id)a3;
- (void)_setTitle:(id)a3;
- (void)_stopAutomaticallyUpdatingView:(id)a3 recursivelyIfNeeded:(BOOL)a4;
- (void)_updateForStateChange;
- (void)_updateVisualStyleOfView:(id)a3 withStyle:(int64_t)a4 recursivelyIfNeeded:(BOOL)a5;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setIndentation:(unint64_t)a3;
- (void)setLeadingView:(id)a3;
- (void)setMenuItem:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)setSeparatorVisible:(BOOL)a3;
- (void)setShouldLimitContentSizeCategory:(BOOL)a3;
- (void)setTrailingView:(id)a3;
- (void)setUseTrailingCheckmarkLayout:(BOOL)a3;
- (void)setUseTrailingInset:(BOOL)a3;
- (void)updateSubviewsAlpha:(double)a3;
@end

@implementation CCUIMenuModuleItemView

+ (BOOL)_shouldLimitContentSizeCategory:(id)a3 forceLimitContentSizeCategory:(BOOL)a4
{
  v5 = a3;
  v6 = (a4 || ([*MEMORY[0x1E69DDA98] activeInterfaceOrientation] - 3) <= 1) && UIContentSizeCategoryCompareToCategory(v5, *MEMORY[0x1E69DDC38]) == NSOrderedDescending;

  return v6;
}

+ (id)_preferredFontForTextStyle:(id)a3 hiFontStyle:(int64_t)a4 contentSizeCategory:(id)a5 shouldLimitContentSizeCategory:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a5;
  if ([a1 _shouldLimitContentSizeCategory:v11 forceLimitContentSizeCategory:v6])
  {
    v12 = *MEMORY[0x1E69DDC38];

    v11 = v12;
  }

  v13 = [MEMORY[0x1E69DB878] bsui_preferredFontForTextStyle:v10 hiFontStyle:a4 contentSizeCategory:v11];

  return v13;
}

+ (double)defaultMenuItemHeightForContentSizeCategory:(id)a3
{
  v3 = [a1 _titleFontForContentSizeCategory:a3];
  [v3 _scaledValueForValue:52.0];
  v5 = v4;

  return v5;
}

- (CCUIMenuModuleItemView)initWithMenuItem:(id)a3
{
  v36[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v35.receiver = self;
  v35.super_class = CCUIMenuModuleItemView;
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v10 = [(CCUIMenuModuleItemView *)&v35 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_menuItem, a3);
    v12 = +[CCUIControlCenterMaterialView _tertiaryView];
    highlightedBackgroundView = v11->_highlightedBackgroundView;
    v11->_highlightedBackgroundView = v12;

    [(UIView *)v11->_highlightedBackgroundView setAutoresizingMask:18];
    [(UIView *)v11->_highlightedBackgroundView setAlpha:0.0];
    [(CCUIMenuModuleItemView *)v11 addSubview:v11->_highlightedBackgroundView];
    v14 = [objc_alloc(MEMORY[0x1E698E7E0]) initWithFrame:{v6, v7, v8, v9}];
    titleLabel = v11->_titleLabel;
    v11->_titleLabel = v14;

    [(CCUIMenuModuleItemView *)v11 addSubview:v11->_titleLabel];
    v16 = v11->_titleLabel;
    v17 = [(CCUIMenuModuleItemView *)v11 _titleFont];
    [(BSUIEmojiLabelView *)v16 setFont:v17];

    [(BSUIEmojiLabelView *)v11->_titleLabel setUserInteractionEnabled:0];
    v18 = v11->_titleLabel;
    v19 = [v5 title];
    [(BSUIEmojiLabelView *)v18 setText:v19];

    [(BSUIEmojiLabelView *)v11->_titleLabel setNumberOfLines:0];
    v20 = [objc_alloc(MEMORY[0x1E698E7E0]) initWithFrame:{v6, v7, v8, v9}];
    subtitleLabel = v11->_subtitleLabel;
    v11->_subtitleLabel = v20;

    [(CCUIMenuModuleItemView *)v11 addSubview:v11->_subtitleLabel];
    v22 = v11->_subtitleLabel;
    v23 = [(CCUIMenuModuleItemView *)v11 _subtitleFont];
    [(BSUIEmojiLabelView *)v22 setFont:v23];

    [(BSUIEmojiLabelView *)v11->_subtitleLabel setUserInteractionEnabled:0];
    v24 = v11->_subtitleLabel;
    v25 = [v5 subtitle];
    [(BSUIEmojiLabelView *)v24 setText:v25];

    [(BSUIEmojiLabelView *)v11->_subtitleLabel setNumberOfLines:0];
    v11->_separatorVisible = 0;
    v26 = objc_alloc_init(MEMORY[0x1E69DD250]);
    separatorView = v11->_separatorView;
    v11->_separatorView = v26;

    [(CCUIMenuModuleItemView *)v11 addSubview:v11->_separatorView];
    v28 = [MEMORY[0x1E69DC938] currentDevice];
    v29 = [v28 userInterfaceIdiom];

    if (v29 == 1)
    {
      v30 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v11];
      [(CCUIMenuModuleItemView *)v11 addInteraction:v30];
    }

    v31 = objc_opt_self();
    v36[0] = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
    v33 = [(CCUIMenuModuleItemView *)v11 registerForTraitChanges:v32 withAction:sel__contentSizeCategoryDidChange];
  }

  return v11;
}

- (void)setMenuItem:(id)a3
{
  v4 = a3;
  v5 = [(CCUIMenuModuleItem *)v4 title];
  [(CCUIMenuModuleItemView *)self _setTitle:v5];

  v6 = [(CCUIMenuModuleItem *)v4 subtitle];
  [(CCUIMenuModuleItemView *)self _setSubtitle:v6];

  menuItem = self->_menuItem;
  self->_menuItem = v4;
}

- (void)_setTitle:(id)a3
{
  v6 = a3;
  v4 = [(CCUIMenuModuleItem *)self->_menuItem title];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    [(BSUIEmojiLabelView *)self->_titleLabel setText:v6];
    [(BSUIEmojiLabelView *)self->_titleLabel pl_performCrossFadeIfNecessary];
    [(CCUIMenuModuleItemView *)self invalidateIntrinsicContentSize];
  }
}

- (void)_setSubtitle:(id)a3
{
  v9 = a3;
  v4 = [(CCUIMenuModuleItem *)self->_menuItem subtitle];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    [(BSUIEmojiLabelView *)self->_subtitleLabel setText:v9];
    [(BSUIEmojiLabelView *)self->_subtitleLabel pl_performCrossFadeIfNecessary];
    [(CCUIMenuModuleItemView *)self invalidateIntrinsicContentSize];
  }

  subtitleLabel = self->_subtitleLabel;
  v7 = [v9 length];
  v8 = 1.0;
  if (!v7)
  {
    v8 = 0.0;
  }

  [(BSUIEmojiLabelView *)subtitleLabel setAlpha:v8];
}

- (void)setLeadingView:(id)a3
{
  v5 = a3;
  leadingView = self->_leadingView;
  if (leadingView != v5)
  {
    if (leadingView)
    {
      [(UIView *)leadingView removeFromSuperview];
      [(CCUIMenuModuleItemView *)self _stopAutomaticallyUpdatingView:self->_leadingView recursivelyIfNeeded:1];
    }

    objc_storeStrong(&self->_leadingView, a3);
    if (v5)
    {
      [(CCUIMenuModuleItemView *)self addSubview:v5];
      [(CCUIMenuModuleItemView *)self _updateVisualStyleOfView:v5 withStyle:0 recursivelyIfNeeded:1];
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41__CCUIMenuModuleItemView_setLeadingView___block_invoke;
    v7[3] = &unk_1E83EA478;
    v7[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v7];
  }
}

- (void)setTrailingView:(id)a3
{
  v5 = a3;
  trailingView = self->_trailingView;
  if (trailingView != v5)
  {
    if (trailingView)
    {
      [(UIView *)trailingView removeFromSuperview];
      [(CCUIMenuModuleItemView *)self _stopAutomaticallyUpdatingView:self->_trailingView recursivelyIfNeeded:1];
    }

    objc_storeStrong(&self->_trailingView, a3);
    if (v5)
    {
      [(CCUIMenuModuleItemView *)self addSubview:v5];
      [(CCUIMenuModuleItemView *)self _updateVisualStyleOfView:v5 withStyle:0 recursivelyIfNeeded:1];
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__CCUIMenuModuleItemView_setTrailingView___block_invoke;
    v7[3] = &unk_1E83EA478;
    v7[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v7];
  }
}

- (void)setShouldLimitContentSizeCategory:(BOOL)a3
{
  if (self->_shouldLimitContentSizeCategory != a3)
  {
    self->_shouldLimitContentSizeCategory = a3;
    [(CCUIMenuModuleItemView *)self setNeedsLayout];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(CCUIMenuModuleItemView *)self menuItem];
      v7 = [(CCUIMenuModuleItemView *)v5 menuItem];

      v8 = BSEqualObjects();
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(CCUIMenuModuleItemView *)self menuItem];
  v5 = [v3 appendObject:v4];

  v6 = [v3 hash];
  return v6;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(CCUIMenuModuleItemView *)self _labelInsets:a3.width];
  v7 = width - v5 - v6;
  [(CCUIMenuModuleItemView *)self _textHeightForEmojiLabel:self->_titleLabel width:v7];
  v9 = v8;
  [(CCUIMenuModuleItemView *)self _textHeightForEmojiLabel:self->_subtitleLabel width:v7];
  v11 = v10;
  v12 = [(BSUIEmojiLabelView *)self->_titleLabel font];
  [(CCUIMenuModuleItemView *)self _titleBaselineToTop];
  [v12 _scaledValueForValue:?];
  v14 = v11 + v9 + v13;
  [(CCUIMenuModuleItemView *)self _titleBaselineToBottom];
  [v12 _scaledValueForValue:?];
  v16 = v14 + v15;

  v17 = width;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(CCUIMenuModuleItemView *)self preferredMaxLayoutWidth];

  [(CCUIMenuModuleItemView *)self sizeThatFits:?];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v48.receiver = self;
  v48.super_class = CCUIMenuModuleItemView;
  [(CCUIMenuModuleItemView *)&v48 layoutSubviews];
  titleLabel = self->_titleLabel;
  v4 = [(CCUIMenuModuleItemView *)self _titleFont];
  [(BSUIEmojiLabelView *)titleLabel setFont:v4];

  subtitleLabel = self->_subtitleLabel;
  v6 = [(CCUIMenuModuleItemView *)self _subtitleFont];
  [(BSUIEmojiLabelView *)subtitleLabel setFont:v6];

  [(CCUIMenuModuleItemView *)self _layoutLeadingCustomView];
  [(CCUIMenuModuleItemView *)self _layoutTrailingCustomViews];
  [(CCUIMenuModuleItemView *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  LODWORD(subtitleLabel) = [(CCUIMenuModuleItemView *)self _shouldReverseLayoutDirection];
  [(CCUIMenuModuleItemView *)self _labelInsets];
  v16 = v15;
  v18 = v17;
  v49.origin.x = v8;
  v49.origin.y = v10;
  v49.size.width = v12;
  v49.size.height = v14;
  v19 = CGRectGetWidth(v49) - v16 - v18;
  v50.origin.x = v8;
  v50.origin.y = v10;
  v50.size.width = v12;
  v50.size.height = v14;
  [(BSUIEmojiLabelView *)self->_titleLabel sizeThatFits:v19, CGRectGetHeight(v50)];
  v21 = v20;
  v47 = v16;
  if (subtitleLabel)
  {
    v16 = v18;
    v22 = 2;
  }

  else
  {
    v22 = 0;
  }

  UIRectCenteredYInRect();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = [(BSUIEmojiLabelView *)self->_titleLabel font];
  [(CCUIMenuModuleItemView *)self _titleBaselineToTop];
  [v31 _scaledValueForValue:?];
  v33 = v32;
  [(BSUIEmojiLabelView *)self->_titleLabel _firstLineBaselineOffsetFromBoundsTop];
  v35 = v33 - v34;

  v51.origin.x = v24;
  v51.origin.y = v26;
  v51.size.width = v28;
  v51.size.height = v30;
  Width = CGRectGetWidth(v51);
  v37 = [(BSUIEmojiLabelView *)self->_subtitleLabel text];
  v38 = [v37 length];

  if (v38)
  {
    v39 = Width;
  }

  else
  {
    v39 = v28;
  }

  if (v38)
  {
    v40 = v35;
  }

  else
  {
    v40 = v26;
  }

  if (v38)
  {
    v41 = v16;
  }

  else
  {
    v41 = v24;
  }

  if (v38)
  {
    v42 = v21;
  }

  else
  {
    v42 = v30;
  }

  [(BSUIEmojiLabelView *)self->_titleLabel setFrame:v41, v40, v39, v42, *&v47];
  if ([(CCUIMenuModuleItemView *)self _shouldHorizontallyCenterText])
  {
    v43 = 1;
  }

  else
  {
    v43 = v22;
  }

  [(BSUIEmojiLabelView *)self->_titleLabel setTextAlignment:v43];
  v52.origin.x = v16;
  v52.origin.y = v35;
  v52.size.width = Width;
  v52.size.height = v21;
  MaxY = CGRectGetMaxY(v52);
  [(BSUIEmojiLabelView *)self->_subtitleLabel sizeThatFits:v28, v30];
  v46 = v45;
  v53.origin.x = v24;
  v53.origin.y = v26;
  v53.size.width = v28;
  v53.size.height = v30;
  [(BSUIEmojiLabelView *)self->_subtitleLabel setFrame:v16, MaxY, CGRectGetWidth(v53), v46];
  [(CCUIMenuModuleItemView *)self bounds];
  CGRectGetHeight(v54);
  [(CCUIMenuModuleItemView *)self _separatorHeight];
  [(CCUIMenuModuleItemView *)self bounds];
  CGRectGetWidth(v55);
  [(CCUIMenuModuleItemView *)self _separatorHeight];
  UIRectIntegralWithScale();
  [(UIView *)self->_separatorView setFrame:?];
  [(UIView *)self->_separatorView setHidden:!self->_separatorVisible];
}

- (void)updateSubviewsAlpha:(double)a3
{
  [(BSUIEmojiLabelView *)self->_titleLabel setAlpha:?];
  [(BSUIEmojiLabelView *)self->_subtitleLabel setAlpha:a3];
  [(UIView *)self->_leadingView setAlpha:a3];
  trailingView = self->_trailingView;

  [(UIView *)trailingView setAlpha:a3];
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CCUIMenuModuleItemView;
  [(CCUIMenuModuleItemView *)&v4 setHighlighted:a3];
  [(CCUIMenuModuleItemView *)self _updateForStateChange];
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CCUIMenuModuleItemView;
  [(CCUIMenuModuleItemView *)&v4 setSelected:a3];
  [(CCUIMenuModuleItemView *)self _updateForStateChange];
}

- (void)setEnabled:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CCUIMenuModuleItemView;
  [(CCUIMenuModuleItemView *)&v4 setEnabled:a3];
  [(CCUIMenuModuleItemView *)self _updateForStateChange];
}

- (void)setSeparatorVisible:(BOOL)a3
{
  if (self->_separatorVisible != a3)
  {
    self->_separatorVisible = a3;
    [(CCUIMenuModuleItemView *)self setNeedsLayout];
  }
}

- (void)setIndentation:(unint64_t)a3
{
  if (self->_indentation != a3)
  {
    self->_indentation = a3;
    [(CCUIMenuModuleItemView *)self setNeedsLayout];
  }
}

- (void)setUseTrailingCheckmarkLayout:(BOOL)a3
{
  if (self->_useTrailingCheckmarkLayout != a3)
  {
    self->_useTrailingCheckmarkLayout = a3;
    [(CCUIMenuModuleItemView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setUseTrailingInset:(BOOL)a3
{
  if (self->_useTrailingInset != a3)
  {
    self->_useTrailingInset = a3;
    [(CCUIMenuModuleItemView *)self invalidateIntrinsicContentSize];
  }
}

- (void)_setContinuousCornerRadius:(double)a3
{
  [(UIView *)self->_highlightedBackgroundView _setContinuousCornerRadius:?];
  if (a3 > 0.0)
  {
    v5 = [(UIView *)self->_highlightedBackgroundView layer];
    [v5 setMaskedCorners:12];
  }
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = CCUIMenuModuleItemView;
  [(CCUIMenuModuleItemView *)&v5 didMoveToWindow];
  v3 = [(CCUIMenuModuleItemView *)self window];

  if (v3)
  {
    [(CCUIMenuModuleItemView *)self _contentSizeCategoryDidChange];
    v4 = [(CCUIMenuModuleItemView *)self visualStylingProviderForCategory:1];
    if (v4 != self->_visualStylingProvider)
    {
      [(CCUIMenuModuleItemView *)self _stopAutomaticallyUpdatingView:self->_leadingView recursivelyIfNeeded:1];
      [(CCUIMenuModuleItemView *)self _stopAutomaticallyUpdatingView:self->_trailingView recursivelyIfNeeded:1];
      [(CCUIMenuModuleItemView *)self _stopAutomaticallyUpdatingView:self->_titleLabel recursivelyIfNeeded:0];
      [(CCUIMenuModuleItemView *)self _stopAutomaticallyUpdatingView:self->_subtitleLabel recursivelyIfNeeded:0];
      [(CCUIMenuModuleItemView *)self _stopAutomaticallyUpdatingView:self->_separatorView recursivelyIfNeeded:0];
      objc_storeStrong(&self->_visualStylingProvider, v4);
      [(CCUIMenuModuleItemView *)self _updateVisualStyleOfView:self->_leadingView withStyle:0 recursivelyIfNeeded:1];
      [(CCUIMenuModuleItemView *)self _updateVisualStyleOfView:self->_trailingView withStyle:0 recursivelyIfNeeded:1];
      [(CCUIMenuModuleItemView *)self _updateVisualStyleOfView:self->_titleLabel withStyle:0 recursivelyIfNeeded:0];
      [(CCUIMenuModuleItemView *)self _updateVisualStyleOfView:self->_subtitleLabel withStyle:1 recursivelyIfNeeded:0];
      [(CCUIMenuModuleItemView *)self _updateVisualStyleOfView:self->_separatorView withStyle:5 recursivelyIfNeeded:0];
    }
  }
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  [a3 locationInView:self];
  LOBYTE(a3) = [(CCUIMenuModuleItemView *)self pointInside:v6 withEvent:?];

  return a3;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = self;
  if ([(CCUIMenuModuleItemView *)v4 _isInAWindow])
  {
    v5 = [(CCUIMenuModuleItemView *)v4 window];
    v6 = CCUILogUserInterface;
    if (os_log_type_enabled(CCUILogUserInterface, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v14 = 138543874;
      v15 = v9;
      v16 = 2114;
      v17 = v4;
      v18 = 2114;
      v19 = v5;
      _os_log_impl(&dword_1D168A000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Control Center is about to call [UITargetedPreview initWithView:], view = %{public}@, window = %{public}@", &v14, 0x20u);
    }

    v10 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v4];
    v11 = [MEMORY[0x1E69DCD98] effectWithPreview:v10];
    v12 = [MEMORY[0x1E69DCDD0] styleWithEffect:v11 shape:0];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (double)_separatorHeight
{
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  v4 = [(CCUIMenuModuleItemView *)self traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  v6 = 1.0;
  if (!UIContentSizeCategoryIsAccessibilityCategory(v5))
  {
    [v3 scale];
    v6 = v7;
  }

  return 1.0 / v6;
}

- (id)_titleFont
{
  v3 = [(CCUIMenuModuleItemView *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = [objc_opt_class() _titleFontForContentSizeCategory:v4 shouldLimitContentSizeCategory:{-[CCUIMenuModuleItemView shouldLimitContentSizeCategory](self, "shouldLimitContentSizeCategory")}];

  return v5;
}

- (id)_subtitleFont
{
  v3 = [(CCUIMenuModuleItemView *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = [objc_opt_class() _subtitleFontForContentSizeCategory:v4 shouldLimitContentSizeCategory:{-[CCUIMenuModuleItemView shouldLimitContentSizeCategory](self, "shouldLimitContentSizeCategory")}];

  return v5;
}

- (double)_textHeightForEmojiLabel:(id)a3 width:(double)a4
{
  v5 = a3;
  v6 = [v5 text];
  v7 = [v6 length];

  if (v7)
  {
    [v5 sizeThatFits:{a4, 0.0}];
    v9 = v8;
    [v5 bounds];
    [v5 setBounds:?];
    [v5 _firstLineBaselineOffsetFromBoundsTop];
    v11 = v9 - v10;
    [v5 _baselineOffsetFromBottom];
    v13 = v11 - v12;
  }

  else
  {
    v13 = 0.0;
  }

  return v13;
}

- (BOOL)_shouldHorizontallyCenterText
{
  if (self->_leadingView || self->_trailingView || self->_indentation)
  {
    return 0;
  }

  v4 = [(BSUIEmojiLabelView *)self->_subtitleLabel text];
  v2 = [v4 length] == 0;

  return v2;
}

- (double)_titleBaselineToTop
{
  result = 23.0;
  if (!self->_subtitleLabel)
  {
    return 30.0;
  }

  return result;
}

- (double)_titleBaselineToBottom
{
  result = 29.0;
  if (!self->_subtitleLabel)
  {
    return 22.0;
  }

  return result;
}

- (double)_labelLeadingInset
{
  indentation = self->_indentation;
  result = 0.0;
  if (indentation > 1)
  {
    if (indentation == 2)
    {
      return 45.0;
    }

    else if (indentation == 3)
    {
      return 64.0;
    }
  }

  else if (indentation)
  {
    if (indentation == 1)
    {
      return 20.0;
    }
  }

  else
  {
    result = 45.0;
    if (!self->_leadingView)
    {
      return 0.0;
    }
  }

  return result;
}

- (double)_labelTrailingInset
{
  if (self->_useTrailingInset)
  {
    return 100.0;
  }

  if (!self->_trailingView)
  {
    return 0.0;
  }

  [(CCUIMenuModuleItemView *)self _trailingWidthForCustomViews];
  return result;
}

- (double)_trailingWidthForCustomViews
{
  [(CCUIMenuModuleItemView *)self bounds];
  [(UIView *)self->_trailingView sizeThatFits:v3, v4];
  return v5 + 20.0 + 20.0;
}

- (NSDirectionalEdgeInsets)_labelInsets
{
  [(CCUIMenuModuleItemView *)self _labelLeadingInset];
  v4 = v3;
  [(CCUIMenuModuleItemView *)self _labelTrailingInset];
  v6 = v5;
  v7 = 0.0;
  v8 = 0.0;
  v9 = v4;
  result.trailing = v6;
  result.bottom = v8;
  result.leading = v9;
  result.top = v7;
  return result;
}

- (void)_updateForStateChange
{
  if ([(CCUIMenuModuleItem *)self->_menuItem isPlaceholder]|| (v3 = 1.0, ([(CCUIMenuModuleItemView *)self isHighlighted]& 1) == 0) && ([(CCUIMenuModuleItemView *)self isSelected]& 1) == 0)
  {
    v3 = 0.0;
  }

  highlightedBackgroundView = self->_highlightedBackgroundView;

  [(UIView *)highlightedBackgroundView setAlpha:v3];
}

- (void)_contentSizeCategoryDidChange
{
  [(CCUIMenuModuleItemView *)self invalidateIntrinsicContentSize];
  titleLabel = self->_titleLabel;
  v4 = [(CCUIMenuModuleItemView *)self _titleFont];
  [(BSUIEmojiLabelView *)titleLabel setFont:v4];

  subtitleLabel = self->_subtitleLabel;
  v6 = [(CCUIMenuModuleItemView *)self _subtitleFont];
  [(BSUIEmojiLabelView *)subtitleLabel setFont:v6];
}

- (void)_layoutLeadingCustomView
{
  if (self->_leadingView)
  {
    [(CCUIMenuModuleItemView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(UIView *)self->_leadingView sizeThatFits:v7, v9];
    [(CCUIMenuModuleItemView *)self _labelLeadingInset];
    if ([(CCUIMenuModuleItemView *)self _shouldReverseLayoutDirection])
    {
      v14.origin.x = v4;
      v14.origin.y = v6;
      v14.size.width = v8;
      v14.size.height = v10;
      CGRectGetMaxX(v14);
    }

    v11 = [(CCUIMenuModuleItemView *)self traitCollection];
    [v11 displayScale];

    v15.origin.x = v4;
    v15.origin.y = v6;
    v15.size.width = v8;
    v15.size.height = v10;
    CGRectGetHeight(v15);
    UIRectIntegralWithScale();
    leadingView = self->_leadingView;

    [(UIView *)leadingView setFrame:?];
  }
}

- (void)_layoutTrailingCustomViews
{
  if (self->_trailingView)
  {
    [(CCUIMenuModuleItemView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(UIView *)self->_trailingView sizeThatFits:v7, v9];
    if (([(CCUIMenuModuleItemView *)self _shouldReverseLayoutDirection]& 1) == 0)
    {
      v14.origin.x = v4;
      v14.origin.y = v6;
      v14.size.width = v8;
      v14.size.height = v10;
      CGRectGetMaxX(v14);
    }

    v11 = [(CCUIMenuModuleItemView *)self traitCollection];
    [v11 displayScale];

    v15.origin.x = v4;
    v15.origin.y = v6;
    v15.size.width = v8;
    v15.size.height = v10;
    CGRectGetHeight(v15);
    UIRectIntegralWithScale();
    trailingView = self->_trailingView;

    [(UIView *)trailingView setFrame:?];
  }
}

- (void)_updateVisualStyleOfView:(id)a3 withStyle:(int64_t)a4 recursivelyIfNeeded:(BOOL)a5
{
  v5 = a5;
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = v8;
  if (v5 && ([v8 subviews], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v11))
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = [v9 subviews];
    v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v18;
      do
      {
        v16 = 0;
        do
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [(MTVisualStylingProvider *)self->_visualStylingProvider automaticallyUpdateView:*(*(&v17 + 1) + 8 * v16++) withStyle:a4];
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v14);
    }
  }

  else
  {
    [(MTVisualStylingProvider *)self->_visualStylingProvider automaticallyUpdateView:v9 withStyle:a4];
  }
}

- (void)_stopAutomaticallyUpdatingView:(id)a3 recursivelyIfNeeded:(BOOL)a4
{
  v4 = a4;
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (v4 && ([v6 subviews], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v9))
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = [v7 subviews];
    v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [(MTVisualStylingProvider *)self->_visualStylingProvider stopAutomaticallyUpdatingView:*(*(&v15 + 1) + 8 * v14++)];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }
  }

  else
  {
    [(MTVisualStylingProvider *)self->_visualStylingProvider stopAutomaticallyUpdatingView:v7];
  }
}

@end