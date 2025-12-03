@interface CCUIMenuModuleItemView
+ (BOOL)_shouldLimitContentSizeCategory:(id)category forceLimitContentSizeCategory:(BOOL)sizeCategory;
+ (double)defaultMenuItemHeightForContentSizeCategory:(id)category;
+ (id)_preferredFontForTextStyle:(id)style hiFontStyle:(int64_t)fontStyle contentSizeCategory:(id)category shouldLimitContentSizeCategory:(BOOL)sizeCategory;
- (BOOL)_shouldHorizontallyCenterText;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)isEqual:(id)equal;
- (CCUIMenuModuleItemView)initWithMenuItem:(id)item;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSDirectionalEdgeInsets)_labelInsets;
- (double)_labelLeadingInset;
- (double)_labelTrailingInset;
- (double)_separatorHeight;
- (double)_textHeightForEmojiLabel:(id)label width:(double)width;
- (double)_titleBaselineToBottom;
- (double)_titleBaselineToTop;
- (double)_trailingWidthForCustomViews;
- (id)_subtitleFont;
- (id)_titleFont;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (unint64_t)hash;
- (void)_contentSizeCategoryDidChange;
- (void)_layoutLeadingCustomView;
- (void)_layoutTrailingCustomViews;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)_setSubtitle:(id)subtitle;
- (void)_setTitle:(id)title;
- (void)_stopAutomaticallyUpdatingView:(id)view recursivelyIfNeeded:(BOOL)needed;
- (void)_updateForStateChange;
- (void)_updateVisualStyleOfView:(id)view withStyle:(int64_t)style recursivelyIfNeeded:(BOOL)needed;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setIndentation:(unint64_t)indentation;
- (void)setLeadingView:(id)view;
- (void)setMenuItem:(id)item;
- (void)setSelected:(BOOL)selected;
- (void)setSeparatorVisible:(BOOL)visible;
- (void)setShouldLimitContentSizeCategory:(BOOL)category;
- (void)setTrailingView:(id)view;
- (void)setUseTrailingCheckmarkLayout:(BOOL)layout;
- (void)setUseTrailingInset:(BOOL)inset;
- (void)updateSubviewsAlpha:(double)alpha;
@end

@implementation CCUIMenuModuleItemView

+ (BOOL)_shouldLimitContentSizeCategory:(id)category forceLimitContentSizeCategory:(BOOL)sizeCategory
{
  categoryCopy = category;
  v6 = (sizeCategory || ([*MEMORY[0x1E69DDA98] activeInterfaceOrientation] - 3) <= 1) && UIContentSizeCategoryCompareToCategory(categoryCopy, *MEMORY[0x1E69DDC38]) == NSOrderedDescending;

  return v6;
}

+ (id)_preferredFontForTextStyle:(id)style hiFontStyle:(int64_t)fontStyle contentSizeCategory:(id)category shouldLimitContentSizeCategory:(BOOL)sizeCategory
{
  sizeCategoryCopy = sizeCategory;
  styleCopy = style;
  categoryCopy = category;
  if ([self _shouldLimitContentSizeCategory:categoryCopy forceLimitContentSizeCategory:sizeCategoryCopy])
  {
    v12 = *MEMORY[0x1E69DDC38];

    categoryCopy = v12;
  }

  v13 = [MEMORY[0x1E69DB878] bsui_preferredFontForTextStyle:styleCopy hiFontStyle:fontStyle contentSizeCategory:categoryCopy];

  return v13;
}

+ (double)defaultMenuItemHeightForContentSizeCategory:(id)category
{
  v3 = [self _titleFontForContentSizeCategory:category];
  [v3 _scaledValueForValue:52.0];
  v5 = v4;

  return v5;
}

- (CCUIMenuModuleItemView)initWithMenuItem:(id)item
{
  v36[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
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
    objc_storeStrong(&v10->_menuItem, item);
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
    _titleFont = [(CCUIMenuModuleItemView *)v11 _titleFont];
    [(BSUIEmojiLabelView *)v16 setFont:_titleFont];

    [(BSUIEmojiLabelView *)v11->_titleLabel setUserInteractionEnabled:0];
    v18 = v11->_titleLabel;
    title = [itemCopy title];
    [(BSUIEmojiLabelView *)v18 setText:title];

    [(BSUIEmojiLabelView *)v11->_titleLabel setNumberOfLines:0];
    v20 = [objc_alloc(MEMORY[0x1E698E7E0]) initWithFrame:{v6, v7, v8, v9}];
    subtitleLabel = v11->_subtitleLabel;
    v11->_subtitleLabel = v20;

    [(CCUIMenuModuleItemView *)v11 addSubview:v11->_subtitleLabel];
    v22 = v11->_subtitleLabel;
    _subtitleFont = [(CCUIMenuModuleItemView *)v11 _subtitleFont];
    [(BSUIEmojiLabelView *)v22 setFont:_subtitleFont];

    [(BSUIEmojiLabelView *)v11->_subtitleLabel setUserInteractionEnabled:0];
    v24 = v11->_subtitleLabel;
    subtitle = [itemCopy subtitle];
    [(BSUIEmojiLabelView *)v24 setText:subtitle];

    [(BSUIEmojiLabelView *)v11->_subtitleLabel setNumberOfLines:0];
    v11->_separatorVisible = 0;
    v26 = objc_alloc_init(MEMORY[0x1E69DD250]);
    separatorView = v11->_separatorView;
    v11->_separatorView = v26;

    [(CCUIMenuModuleItemView *)v11 addSubview:v11->_separatorView];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
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

- (void)setMenuItem:(id)item
{
  itemCopy = item;
  title = [(CCUIMenuModuleItem *)itemCopy title];
  [(CCUIMenuModuleItemView *)self _setTitle:title];

  subtitle = [(CCUIMenuModuleItem *)itemCopy subtitle];
  [(CCUIMenuModuleItemView *)self _setSubtitle:subtitle];

  menuItem = self->_menuItem;
  self->_menuItem = itemCopy;
}

- (void)_setTitle:(id)title
{
  titleCopy = title;
  title = [(CCUIMenuModuleItem *)self->_menuItem title];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    [(BSUIEmojiLabelView *)self->_titleLabel setText:titleCopy];
    [(BSUIEmojiLabelView *)self->_titleLabel pl_performCrossFadeIfNecessary];
    [(CCUIMenuModuleItemView *)self invalidateIntrinsicContentSize];
  }
}

- (void)_setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  subtitle = [(CCUIMenuModuleItem *)self->_menuItem subtitle];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    [(BSUIEmojiLabelView *)self->_subtitleLabel setText:subtitleCopy];
    [(BSUIEmojiLabelView *)self->_subtitleLabel pl_performCrossFadeIfNecessary];
    [(CCUIMenuModuleItemView *)self invalidateIntrinsicContentSize];
  }

  subtitleLabel = self->_subtitleLabel;
  v7 = [subtitleCopy length];
  v8 = 1.0;
  if (!v7)
  {
    v8 = 0.0;
  }

  [(BSUIEmojiLabelView *)subtitleLabel setAlpha:v8];
}

- (void)setLeadingView:(id)view
{
  viewCopy = view;
  leadingView = self->_leadingView;
  if (leadingView != viewCopy)
  {
    if (leadingView)
    {
      [(UIView *)leadingView removeFromSuperview];
      [(CCUIMenuModuleItemView *)self _stopAutomaticallyUpdatingView:self->_leadingView recursivelyIfNeeded:1];
    }

    objc_storeStrong(&self->_leadingView, view);
    if (viewCopy)
    {
      [(CCUIMenuModuleItemView *)self addSubview:viewCopy];
      [(CCUIMenuModuleItemView *)self _updateVisualStyleOfView:viewCopy withStyle:0 recursivelyIfNeeded:1];
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41__CCUIMenuModuleItemView_setLeadingView___block_invoke;
    v7[3] = &unk_1E83EA478;
    v7[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v7];
  }
}

- (void)setTrailingView:(id)view
{
  viewCopy = view;
  trailingView = self->_trailingView;
  if (trailingView != viewCopy)
  {
    if (trailingView)
    {
      [(UIView *)trailingView removeFromSuperview];
      [(CCUIMenuModuleItemView *)self _stopAutomaticallyUpdatingView:self->_trailingView recursivelyIfNeeded:1];
    }

    objc_storeStrong(&self->_trailingView, view);
    if (viewCopy)
    {
      [(CCUIMenuModuleItemView *)self addSubview:viewCopy];
      [(CCUIMenuModuleItemView *)self _updateVisualStyleOfView:viewCopy withStyle:0 recursivelyIfNeeded:1];
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__CCUIMenuModuleItemView_setTrailingView___block_invoke;
    v7[3] = &unk_1E83EA478;
    v7[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v7];
  }
}

- (void)setShouldLimitContentSizeCategory:(BOOL)category
{
  if (self->_shouldLimitContentSizeCategory != category)
  {
    self->_shouldLimitContentSizeCategory = category;
    [(CCUIMenuModuleItemView *)self setNeedsLayout];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      menuItem = [(CCUIMenuModuleItemView *)self menuItem];
      menuItem2 = [(CCUIMenuModuleItemView *)v5 menuItem];

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
  builder = [MEMORY[0x1E698E6B8] builder];
  menuItem = [(CCUIMenuModuleItemView *)self menuItem];
  v5 = [builder appendObject:menuItem];

  v6 = [builder hash];
  return v6;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(CCUIMenuModuleItemView *)self _labelInsets:fits.width];
  v7 = width - v5 - v6;
  [(CCUIMenuModuleItemView *)self _textHeightForEmojiLabel:self->_titleLabel width:v7];
  v9 = v8;
  [(CCUIMenuModuleItemView *)self _textHeightForEmojiLabel:self->_subtitleLabel width:v7];
  v11 = v10;
  font = [(BSUIEmojiLabelView *)self->_titleLabel font];
  [(CCUIMenuModuleItemView *)self _titleBaselineToTop];
  [font _scaledValueForValue:?];
  v14 = v11 + v9 + v13;
  [(CCUIMenuModuleItemView *)self _titleBaselineToBottom];
  [font _scaledValueForValue:?];
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
  _titleFont = [(CCUIMenuModuleItemView *)self _titleFont];
  [(BSUIEmojiLabelView *)titleLabel setFont:_titleFont];

  subtitleLabel = self->_subtitleLabel;
  _subtitleFont = [(CCUIMenuModuleItemView *)self _subtitleFont];
  [(BSUIEmojiLabelView *)subtitleLabel setFont:_subtitleFont];

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
  font = [(BSUIEmojiLabelView *)self->_titleLabel font];
  [(CCUIMenuModuleItemView *)self _titleBaselineToTop];
  [font _scaledValueForValue:?];
  v33 = v32;
  [(BSUIEmojiLabelView *)self->_titleLabel _firstLineBaselineOffsetFromBoundsTop];
  v35 = v33 - v34;

  v51.origin.x = v24;
  v51.origin.y = v26;
  v51.size.width = v28;
  v51.size.height = v30;
  Width = CGRectGetWidth(v51);
  text = [(BSUIEmojiLabelView *)self->_subtitleLabel text];
  v38 = [text length];

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

- (void)updateSubviewsAlpha:(double)alpha
{
  [(BSUIEmojiLabelView *)self->_titleLabel setAlpha:?];
  [(BSUIEmojiLabelView *)self->_subtitleLabel setAlpha:alpha];
  [(UIView *)self->_leadingView setAlpha:alpha];
  trailingView = self->_trailingView;

  [(UIView *)trailingView setAlpha:alpha];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = CCUIMenuModuleItemView;
  [(CCUIMenuModuleItemView *)&v4 setHighlighted:highlighted];
  [(CCUIMenuModuleItemView *)self _updateForStateChange];
}

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = CCUIMenuModuleItemView;
  [(CCUIMenuModuleItemView *)&v4 setSelected:selected];
  [(CCUIMenuModuleItemView *)self _updateForStateChange];
}

- (void)setEnabled:(BOOL)enabled
{
  v4.receiver = self;
  v4.super_class = CCUIMenuModuleItemView;
  [(CCUIMenuModuleItemView *)&v4 setEnabled:enabled];
  [(CCUIMenuModuleItemView *)self _updateForStateChange];
}

- (void)setSeparatorVisible:(BOOL)visible
{
  if (self->_separatorVisible != visible)
  {
    self->_separatorVisible = visible;
    [(CCUIMenuModuleItemView *)self setNeedsLayout];
  }
}

- (void)setIndentation:(unint64_t)indentation
{
  if (self->_indentation != indentation)
  {
    self->_indentation = indentation;
    [(CCUIMenuModuleItemView *)self setNeedsLayout];
  }
}

- (void)setUseTrailingCheckmarkLayout:(BOOL)layout
{
  if (self->_useTrailingCheckmarkLayout != layout)
  {
    self->_useTrailingCheckmarkLayout = layout;
    [(CCUIMenuModuleItemView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setUseTrailingInset:(BOOL)inset
{
  if (self->_useTrailingInset != inset)
  {
    self->_useTrailingInset = inset;
    [(CCUIMenuModuleItemView *)self invalidateIntrinsicContentSize];
  }
}

- (void)_setContinuousCornerRadius:(double)radius
{
  [(UIView *)self->_highlightedBackgroundView _setContinuousCornerRadius:?];
  if (radius > 0.0)
  {
    layer = [(UIView *)self->_highlightedBackgroundView layer];
    [layer setMaskedCorners:12];
  }
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = CCUIMenuModuleItemView;
  [(CCUIMenuModuleItemView *)&v5 didMoveToWindow];
  window = [(CCUIMenuModuleItemView *)self window];

  if (window)
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

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  eventCopy = event;
  [touch locationInView:self];
  LOBYTE(touch) = [(CCUIMenuModuleItemView *)self pointInside:eventCopy withEvent:?];

  return touch;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v20 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  if ([(CCUIMenuModuleItemView *)selfCopy _isInAWindow])
  {
    window = [(CCUIMenuModuleItemView *)selfCopy window];
    v6 = CCUILogUserInterface;
    if (os_log_type_enabled(CCUILogUserInterface, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v14 = 138543874;
      v15 = v9;
      v16 = 2114;
      v17 = selfCopy;
      v18 = 2114;
      v19 = window;
      _os_log_impl(&dword_1D168A000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Control Center is about to call [UITargetedPreview initWithView:], view = %{public}@, window = %{public}@", &v14, 0x20u);
    }

    v10 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:selfCopy];
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
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  traitCollection = [(CCUIMenuModuleItemView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v6 = 1.0;
  if (!UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    [mainScreen scale];
    v6 = v7;
  }

  return 1.0 / v6;
}

- (id)_titleFont
{
  traitCollection = [(CCUIMenuModuleItemView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  v5 = [objc_opt_class() _titleFontForContentSizeCategory:preferredContentSizeCategory shouldLimitContentSizeCategory:{-[CCUIMenuModuleItemView shouldLimitContentSizeCategory](self, "shouldLimitContentSizeCategory")}];

  return v5;
}

- (id)_subtitleFont
{
  traitCollection = [(CCUIMenuModuleItemView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  v5 = [objc_opt_class() _subtitleFontForContentSizeCategory:preferredContentSizeCategory shouldLimitContentSizeCategory:{-[CCUIMenuModuleItemView shouldLimitContentSizeCategory](self, "shouldLimitContentSizeCategory")}];

  return v5;
}

- (double)_textHeightForEmojiLabel:(id)label width:(double)width
{
  labelCopy = label;
  text = [labelCopy text];
  v7 = [text length];

  if (v7)
  {
    [labelCopy sizeThatFits:{width, 0.0}];
    v9 = v8;
    [labelCopy bounds];
    [labelCopy setBounds:?];
    [labelCopy _firstLineBaselineOffsetFromBoundsTop];
    v11 = v9 - v10;
    [labelCopy _baselineOffsetFromBottom];
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

  text = [(BSUIEmojiLabelView *)self->_subtitleLabel text];
  v2 = [text length] == 0;

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
  _titleFont = [(CCUIMenuModuleItemView *)self _titleFont];
  [(BSUIEmojiLabelView *)titleLabel setFont:_titleFont];

  subtitleLabel = self->_subtitleLabel;
  _subtitleFont = [(CCUIMenuModuleItemView *)self _subtitleFont];
  [(BSUIEmojiLabelView *)subtitleLabel setFont:_subtitleFont];
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

    traitCollection = [(CCUIMenuModuleItemView *)self traitCollection];
    [traitCollection displayScale];

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

    traitCollection = [(CCUIMenuModuleItemView *)self traitCollection];
    [traitCollection displayScale];

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

- (void)_updateVisualStyleOfView:(id)view withStyle:(int64_t)style recursivelyIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v22 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v9 = viewCopy;
  if (neededCopy && ([viewCopy subviews], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v11))
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    subviews = [v9 subviews];
    v13 = [subviews countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(subviews);
          }

          [(MTVisualStylingProvider *)self->_visualStylingProvider automaticallyUpdateView:*(*(&v17 + 1) + 8 * v16++) withStyle:style];
        }

        while (v14 != v16);
        v14 = [subviews countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v14);
    }
  }

  else
  {
    [(MTVisualStylingProvider *)self->_visualStylingProvider automaticallyUpdateView:v9 withStyle:style];
  }
}

- (void)_stopAutomaticallyUpdatingView:(id)view recursivelyIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v20 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v7 = viewCopy;
  if (neededCopy && ([viewCopy subviews], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v9))
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    subviews = [v7 subviews];
    v11 = [subviews countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(subviews);
          }

          [(MTVisualStylingProvider *)self->_visualStylingProvider stopAutomaticallyUpdatingView:*(*(&v15 + 1) + 8 * v14++)];
        }

        while (v12 != v14);
        v12 = [subviews countByEnumeratingWithState:&v15 objects:v19 count:16];
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