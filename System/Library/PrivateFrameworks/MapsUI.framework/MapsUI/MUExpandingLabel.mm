@interface MUExpandingLabel
- (BOOL)_canShowAllText;
- (BOOL)_canShowLess;
- (BOOL)_hasUnlaidOutFragments;
- (MUExpandingLabel)init;
- (MUExpandingLabel)initWithCoder:(id)a3;
- (MUExpandingLabel)initWithFrame:(CGRect)a3;
- (NSString)showMoreText;
- (UIColor)showLessTextColor;
- (UIColor)showMoreTextColor;
- (UIFont)showMoreFont;
- (double)_bottomBaselineConstant;
- (void)_mkExpandingLabelComonInit;
- (void)_setExpansionMode:(unint64_t)a3;
- (void)_setTextExclusionPath;
- (void)infoCardThemeChanged;
- (void)layoutSubviews;
- (void)setExpanded:(BOOL)a3;
- (void)setNumberOfLinesWhenCollapsed:(unint64_t)a3;
- (void)setShowLessFont:(id)a3;
- (void)setShowLessText:(id)a3;
- (void)setShowLessTextColor:(id)a3;
- (void)setShowMoreFont:(id)a3;
- (void)setShowMoreText:(id)a3;
- (void)setShowMoreTextColor:(id)a3;
@end

@implementation MUExpandingLabel

- (double)_bottomBaselineConstant
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x4010000000;
  v21 = "";
  v3 = *(MEMORY[0x1E695F058] + 16);
  v22 = *MEMORY[0x1E695F058];
  v23 = v3;
  v4 = [(UITextView *)self->_textView _mk_layoutFragments];
  v5 = [v4 lastObject];

  textLayoutManager = self->_textLayoutManager;
  v7 = [v5 rangeInElement];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __43__MUExpandingLabel__bottomBaselineConstant__block_invoke;
  v17[3] = &unk_1E8219048;
  v17[4] = &v18;
  v17[5] = &v24;
  [(NSTextLayoutManager *)textLayoutManager enumerateTextSegmentsInRange:v7 type:0 options:0 usingBlock:v17];

  v8 = v25[3];
  v9 = [(MUExpandingLabel *)self traitCollection];
  [v9 displayScale];
  v11 = v10;

  v12 = v19[7];
  v13 = [(UIButton *)self->_showMoreButton titleLabel];
  [v13 _baselineOffsetFromBottom];
  v15 = v14;
  if (v11 >= 1.0)
  {
    v8 = ceil(fmod(v8, 0.5 / v11) * 0.5) / v11 + floor(v8);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);
  return v8 - v12 + v15;
}

uint64_t __43__MUExpandingLabel__bottomBaselineConstant__block_invoke(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = *(*(a1 + 32) + 8);
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  *(*(*(a1 + 40) + 8) + 24) = a6;
  return 1;
}

- (BOOL)_hasUnlaidOutFragments
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(NSTextLayoutManager *)self->_textLayoutManager _mk_lastLineSegment];
  v4 = objc_alloc(MEMORY[0x1E69DB848]);
  v5 = [(NSTextLayoutManager *)self->_textLayoutManager documentRange];
  v6 = [v5 location];
  v7 = [v4 initWithLocation:v6];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [(NSTextLayoutManager *)self->_textLayoutManager _mk_layoutFragments];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      v12 = 0;
      v13 = v7;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = [*(*(&v19 + 1) + 8 * v12) rangeInElement];
        v7 = [v13 textRangeByFormingUnionWithTextRange:v14];

        ++v12;
        v13 = v7;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v15 = [v3 rangeInElement];
  v16 = [v7 containsRange:v15];

  v17 = *MEMORY[0x1E69E9840];
  return v16 ^ 1;
}

- (BOOL)_canShowAllText
{
  v3 = [(NSTextLayoutManager *)self->_textLayoutManager _mk_layoutFragments];
  v4 = [v3 count];
  if (v4 <= [(MUExpandingLabel *)self numberOfLinesWhenCollapsed])
  {
    v6 = [(NSTextLayoutManager *)self->_textLayoutManager _mk_truncatedRanges];
    if ([v6 count])
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v5 = ![(MUExpandingLabel *)self _hasUnlaidOutFragments];
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)_canShowLess
{
  v3 = [(MUExpandingLabel *)self _isShowingUserExpanded];
  if (v3)
  {

    LOBYTE(v3) = [(MUExpandingLabel *)self allowLessText];
  }

  return v3;
}

- (void)_setExpansionMode:(unint64_t)a3
{
  v34[2] = *MEMORY[0x1E69E9840];
  if (self->_expansionMode == a3)
  {
    goto LABEL_15;
  }

  v5 = [(MUExpandingLabel *)self isShowingExpanded];
  self->_expansionMode = a3;
  v6 = [(MUExpandingLabel *)self isShowingExpanded];
  if (v5 == v6)
  {
    goto LABEL_15;
  }

  v7 = v6;
  [(UIButton *)self->_showMoreButton setHidden:v6];
  if (v7 && [(MUExpandingLabel *)self _canShowLess])
  {
    v33[0] = *MEMORY[0x1E69DB648];
    v8 = [(MUExpandingLabel *)self showLessFont];
    v34[0] = v8;
    v33[1] = *MEMORY[0x1E69DB650];
    v9 = [(MUExpandingLabel *)self showLessTextColor];
    v34[1] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];

    v11 = [(MUExpandingLabel *)self attributedText];
    v12 = [v11 mutableCopy];

    v13 = objc_alloc(MEMORY[0x1E696AAB0]);
    v14 = [(MUExpandingLabel *)self _showLessTextSeparator];
    v15 = [v13 initWithString:v14];
    [v12 appendAttributedString:v15];

    v16 = objc_alloc(MEMORY[0x1E696AD40]);
    v17 = [(MUExpandingLabel *)self showLessText];
    v18 = [v16 initWithString:v17 attributes:v10];

    v19 = *MEMORY[0x1E69DB670];
    v20 = objc_opt_new();
    [v18 addAttribute:v19 value:v20 range:{0, objc_msgSend(v18, "length")}];

    [(UITextView *)self->_textView setLinkTextAttributes:v10];
    [v12 appendAttributedString:v18];
    [(MUExpandingLabel *)self setAttributedText:v12];
  }

  else
  {
    if (v5 && [(MUExpandingLabel *)self allowLessText])
    {
      v21 = [(MUExpandingLabel *)self attributedText];
      v22 = [v21 mutableCopy];

      v23 = [(MUExpandingLabel *)self _showLessTextSeparator];
      v24 = [v23 length];
      v25 = [(MUExpandingLabel *)self showLessText];
      v26 = [v25 length] + v24;

      v27 = [(MUExpandingLabel *)self attributedText];
      v28 = [v27 string];
      v29 = [v28 length] - v26;

      [v22 deleteCharactersInRange:{v29, v26}];
      [(MUExpandingLabel *)self setAttributedText:v22];
    }

    if (!v7)
    {
      numberOfLinesWhenCollapsed = self->_numberOfLinesWhenCollapsed;
      goto LABEL_12;
    }
  }

  numberOfLinesWhenCollapsed = 0;
LABEL_12:
  [(NSTextContainer *)self->_textContainer setMaximumNumberOfLines:numberOfLinesWhenCollapsed];
  [(NSTextContainer *)self->_textContainer setExclusionPaths:MEMORY[0x1E695E0F0]];
  [(UITextView *)self->_textView invalidateIntrinsicContentSize];
  [(MUExpandingLabel *)self setNeedsLayout];
  labelResizedBlock = self->_labelResizedBlock;
  if (labelResizedBlock)
  {
    labelResizedBlock[2]();
  }

  [(MUExpandingLabel *)self _setTextExclusionPath];
LABEL_15:
  v32 = *MEMORY[0x1E69E9840];
}

- (void)setExpanded:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  [(MUExpandingLabel *)self _setExpansionMode:v3];
}

- (void)_setTextExclusionPath
{
  v17[1] = *MEMORY[0x1E69E9840];
  if ([(MUExpandingLabel *)self isShowingExpanded])
  {
    [(NSTextContainer *)self->_textContainer setExclusionPaths:MEMORY[0x1E695E0F0]];
  }

  else
  {
    v3 = [(UIButton *)self->_showMoreButton titleLabel];
    [v3 frame];
    [(MUExpandingLabel *)self convertRect:self->_showMoreButton fromView:?];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v18.origin.x = v5;
    v18.origin.y = v7;
    v18.size.width = v9;
    v18.size.height = v11;
    v19 = CGRectInset(v18, -5.0, 0.0);
    v12 = MEMORY[0x1E69DC728];
    v20 = CGRectIntegral(v19);
    v13 = [v12 bezierPathWithRect:{v20.origin.x, v20.origin.y, v20.size.width, v20.size.height}];
    v17[0] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [(NSTextContainer *)self->_textContainer setExclusionPaths:v14];
  }

  v15 = [(NSTextLayoutManager *)self->_textLayoutManager textViewportLayoutController];
  [v15 setNeedsLayout];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = MUExpandingLabel;
  [(MUExpandingLabel *)&v4 layoutSubviews];
  if (!self->_isPerformingLayout)
  {
    self->_isPerformingLayout = 1;
    if (self->_expansionMode == 2 || (v3 = [(MUExpandingLabel *)self isShowingExpanded], [(MUExpandingLabel *)self _setExpansionMode:[(MUExpandingLabel *)self _canShowAllText]], v3 == [(MUExpandingLabel *)self isShowingExpanded]))
    {
      [(MUExpandingLabel *)self _setTextExclusionPath];
      [(MUExpandingLabel *)self _bottomBaselineConstant];
      [(NSLayoutConstraint *)self->_showMoreBottomConstraint setConstant:?];
    }

    else
    {
      [(MUExpandingLabel *)self setNeedsLayout];
    }

    self->_isPerformingLayout = 0;
  }
}

- (void)setShowLessFont:(id)a3
{
  v5 = a3;
  v7 = v5;
  if (!v5)
  {
    v3 = [MEMORY[0x1E696F200] sharedManager];
    v5 = [v3 subtitleFont];
  }

  objc_storeStrong(&self->_showLessFont, v5);
  v6 = v7;
  if (!v7)
  {

    v6 = 0;
  }
}

- (void)setShowLessText:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (!v4)
  {
    v4 = _MULocalizedStringFromThisBundle(@"Less [Expanding Label]");
  }

  objc_storeStrong(&self->_showLessText, v4);
  v5 = v6;
  if (!v6)
  {

    v5 = 0;
  }
}

- (UIColor)showLessTextColor
{
  showLessTextColor = self->_showLessTextColor;
  if (showLessTextColor)
  {
    v3 = showLessTextColor;
  }

  else
  {
    v4 = [(MUExpandingLabel *)self mk_theme];
    v3 = [v4 lightTextColor];
  }

  return v3;
}

- (void)setShowLessTextColor:(id)a3
{
  v5 = a3;
  if (self->_showLessTextColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_showLessTextColor, a3);
    v5 = v6;
  }
}

- (UIColor)showMoreTextColor
{
  showMoreTextColor = self->_showMoreTextColor;
  if (showMoreTextColor)
  {
    v3 = showMoreTextColor;
  }

  else
  {
    v3 = [MEMORY[0x1E69DC888] labelColor];
  }

  return v3;
}

- (void)setShowMoreTextColor:(id)a3
{
  v5 = a3;
  if (self->_showMoreTextColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_showMoreTextColor, a3);
    [(UIButton *)self->_showMoreButton setNeedsUpdateConfiguration];
    v5 = v6;
  }
}

- (UIFont)showMoreFont
{
  showMoreFont = self->_showMoreFont;
  if (showMoreFont)
  {
    v3 = showMoreFont;
  }

  else
  {
    v4 = [MEMORY[0x1E696F200] sharedManager];
    v3 = [v4 subtitleFont];
  }

  return v3;
}

- (void)setShowMoreFont:(id)a3
{
  v5 = a3;
  if (self->_showMoreFont != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_showMoreFont, a3);
    [(UIButton *)self->_showMoreButton setNeedsUpdateConfiguration];
    [(MUExpandingLabel *)self setNeedsLayout];
    v5 = v6;
  }
}

- (NSString)showMoreText
{
  showMoreText = self->_showMoreText;
  if (showMoreText)
  {
    v3 = showMoreText;
  }

  else
  {
    v3 = _MULocalizedStringFromThisBundle(@"More▼ [Expandable Label");
  }

  return v3;
}

- (void)setShowMoreText:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_showMoreText != v5 || ![(NSString *)v5 isEqualToString:?])
  {
    objc_storeStrong(&self->_showMoreText, a3);
    [(UIButton *)self->_showMoreButton setNeedsUpdateConfiguration];
    [(MUExpandingLabel *)self setNeedsLayout];
  }
}

- (void)setNumberOfLinesWhenCollapsed:(unint64_t)a3
{
  if (self->_numberOfLinesWhenCollapsed != a3)
  {
    v4 = 10;
    if (a3)
    {
      v4 = a3;
    }

    self->_numberOfLinesWhenCollapsed = v4;
    if ([(MUExpandingLabel *)self isShowingExpanded])
    {
      numberOfLinesWhenCollapsed = 0;
    }

    else
    {
      numberOfLinesWhenCollapsed = self->_numberOfLinesWhenCollapsed;
    }

    [(NSTextContainer *)self->_textContainer setMaximumNumberOfLines:numberOfLinesWhenCollapsed];

    [(MUExpandingLabel *)self setNeedsLayout];
  }
}

- (void)infoCardThemeChanged
{
  v3.receiver = self;
  v3.super_class = MUExpandingLabel;
  [(MUExpandingLabel *)&v3 infoCardThemeChanged];
  if (!self->_showMoreTextColor)
  {
    [(UIButton *)self->_showMoreButton setNeedsUpdateConfiguration];
  }
}

- (MUExpandingLabel)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MUExpandingLabel;
  v3 = [(MUExpandingLabel *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUExpandingLabel *)v3 _mkExpandingLabelComonInit];
  }

  return v4;
}

- (MUExpandingLabel)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = MUExpandingLabel;
  v3 = [(MUExpandingLabel *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(MUExpandingLabel *)v3 _mkExpandingLabelComonInit];
  }

  return v4;
}

- (MUExpandingLabel)init
{
  v5.receiver = self;
  v5.super_class = MUExpandingLabel;
  v2 = [(MUExpandingLabel *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MUExpandingLabel *)v2 _mkExpandingLabelComonInit];
  }

  return v3;
}

- (void)_mkExpandingLabelComonInit
{
  self->_expansionMode = 0;
  self->_numberOfLinesWhenCollapsed = 10;
  v3 = objc_alloc(MEMORY[0x1E69DB800]);
  v4 = [v3 initWithSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  textContainer = self->_textContainer;
  self->_textContainer = v4;

  [(NSTextContainer *)self->_textContainer setLineBreakMode:4];
  [(NSTextContainer *)self->_textContainer setLineFragmentPadding:0.0];
  [(NSTextContainer *)self->_textContainer setMaximumNumberOfLines:self->_numberOfLinesWhenCollapsed];
  [(NSTextContainer *)self->_textContainer setHeightTracksTextView:1];
  [(NSTextContainer *)self->_textContainer setWidthTracksTextView:1];
  v6 = objc_opt_new();
  textLayoutManager = self->_textLayoutManager;
  self->_textLayoutManager = v6;

  [(NSTextLayoutManager *)self->_textLayoutManager setTextContainer:self->_textContainer];
  v8 = objc_opt_new();
  textStorage = self->_textStorage;
  self->_textStorage = v8;

  [(NSTextContentStorage *)self->_textStorage addTextLayoutManager:self->_textLayoutManager];
  v10 = objc_alloc(MEMORY[0x1E69DD168]);
  v11 = *MEMORY[0x1E695F058];
  v12 = *(MEMORY[0x1E695F058] + 8);
  v13 = *(MEMORY[0x1E695F058] + 16);
  v14 = *(MEMORY[0x1E695F058] + 24);
  v15 = [v10 initWithFrame:self->_textContainer textContainer:{*MEMORY[0x1E695F058], v12, v13, v14}];
  textView = self->_textView;
  self->_textView = v15;

  [(UITextView *)self->_textView setScrollEnabled:0];
  [(UITextView *)self->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextView *)self->_textView setEditable:0];
  [(UITextView *)self->_textView setTextContainerInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  v17 = [MEMORY[0x1E69DC888] clearColor];
  [(UITextView *)self->_textView setBackgroundColor:v17];

  [(UITextView *)self->_textView setShowsVerticalScrollIndicator:0];
  [(UITextView *)self->_textView setShowsHorizontalScrollIndicator:0];
  v18 = [MEMORY[0x1E696F200] sharedManager];
  v19 = [v18 subtitleFont];
  [(UITextView *)self->_textView setFont:v19];

  [(UITextView *)self->_textView setTextAlignment:4];
  [(UITextView *)self->_textView setDelegate:self];
  [(UITextView *)self->_textView setSelectable:1];
  [(UITextView *)self->_textView setAccessibilityIdentifier:@"ExpandingLabelTextView"];
  [(MUExpandingLabel *)self addSubview:self->_textView];
  v20 = [objc_alloc(MEMORY[0x1E69DC738]) initWithFrame:{v11, v12, v13, v14}];
  showMoreButton = self->_showMoreButton;
  self->_showMoreButton = v20;

  [(UIButton *)self->_showMoreButton setPreferredBehavioralStyle:1];
  objc_initWeak(&location, self);
  v36 = MEMORY[0x1E69E9820];
  v37 = 3221225472;
  v38 = __46__MUExpandingLabel__mkExpandingLabelComonInit__block_invoke;
  v39 = &unk_1E8219020;
  objc_copyWeak(&v40, &location);
  [(UIButton *)self->_showMoreButton setConfigurationUpdateHandler:&v36];
  [(UIButton *)self->_showMoreButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_showMoreButton setAccessibilityIdentifier:@"ExpandingLabelMoreButton"];
  v22 = [(UIButton *)self->_showMoreButton titleLabel];
  [v22 setAdjustsFontForContentSizeCategory:1];

  [(MUExpandingLabel *)self setShowMoreText:0];
  [(MUExpandingLabel *)self setShowMoreFont:0];
  [(MUExpandingLabel *)self setShowLessFont:0];
  [(MUExpandingLabel *)self setShowLessText:0];
  [(MUExpandingLabel *)self addSubview:self->_showMoreButton];
  [(UIButton *)self->_showMoreButton addTarget:self action:sel__expand forControlEvents:64];
  v23 = objc_opt_new();
  v24 = _NSDictionaryOfVariableBindings(&cfstr_TextviewShowmo.isa, self->_textView, self->_showMoreButton, 0, v36, v37, v38, v39);
  v25 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-0-[_textView]-0-|" options:0 metrics:0 views:v24];
  [v23 addObjectsFromArray:v25];

  v26 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-0-[_textView]-0-|" options:0 metrics:0 views:v24];
  [v23 addObjectsFromArray:v26];

  v27 = [(UIButton *)self->_showMoreButton titleLabel];
  v28 = [v27 bottomAnchor];
  v29 = [(UITextView *)self->_textView bottomAnchor];
  [(MUExpandingLabel *)self _bottomBaselineConstant];
  v30 = [v28 constraintEqualToAnchor:v29 constant:?];
  showMoreBottomConstraint = self->_showMoreBottomConstraint;
  self->_showMoreBottomConstraint = v30;

  [v23 addObject:self->_showMoreBottomConstraint];
  v32 = [(UIButton *)self->_showMoreButton titleLabel];
  v33 = [v32 trailingAnchor];
  v34 = [(MUExpandingLabel *)self trailingAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];
  [v23 addObject:v35];

  [MEMORY[0x1E696ACD8] activateConstraints:v23];
  objc_destroyWeak(&v40);
  objc_destroyWeak(&location);
}

void __46__MUExpandingLabel__mkExpandingLabelComonInit__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [MEMORY[0x1E69DC740] _mapsui_textButtonConfigurationWithFont:WeakRetained[57] textColor:WeakRetained[64]];
    [v4 setContentInsets:{20.0, 20.0, 20.0, 20.0}];
    v5 = [WeakRetained showMoreText];

    if (v5)
    {
      v6 = [WeakRetained showMoreText];
      [v4 setTitle:v6];
    }

    v7 = [WeakRetained showMoreFont];

    if (v7)
    {
      v8 = [WeakRetained showMoreFont];
      v9 = [v10 titleLabel];
      [v9 setFont:v8];
    }

    [v10 setConfiguration:v4];
  }
}

@end