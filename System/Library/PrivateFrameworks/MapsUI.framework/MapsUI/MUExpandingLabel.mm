@interface MUExpandingLabel
- (BOOL)_canShowAllText;
- (BOOL)_canShowLess;
- (BOOL)_hasUnlaidOutFragments;
- (MUExpandingLabel)init;
- (MUExpandingLabel)initWithCoder:(id)coder;
- (MUExpandingLabel)initWithFrame:(CGRect)frame;
- (NSString)showMoreText;
- (UIColor)showLessTextColor;
- (UIColor)showMoreTextColor;
- (UIFont)showMoreFont;
- (double)_bottomBaselineConstant;
- (void)_mkExpandingLabelComonInit;
- (void)_setExpansionMode:(unint64_t)mode;
- (void)_setTextExclusionPath;
- (void)infoCardThemeChanged;
- (void)layoutSubviews;
- (void)setExpanded:(BOOL)expanded;
- (void)setNumberOfLinesWhenCollapsed:(unint64_t)collapsed;
- (void)setShowLessFont:(id)font;
- (void)setShowLessText:(id)text;
- (void)setShowLessTextColor:(id)color;
- (void)setShowMoreFont:(id)font;
- (void)setShowMoreText:(id)text;
- (void)setShowMoreTextColor:(id)color;
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
  _mk_layoutFragments = [(UITextView *)self->_textView _mk_layoutFragments];
  lastObject = [_mk_layoutFragments lastObject];

  textLayoutManager = self->_textLayoutManager;
  rangeInElement = [lastObject rangeInElement];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __43__MUExpandingLabel__bottomBaselineConstant__block_invoke;
  v17[3] = &unk_1E8219048;
  v17[4] = &v18;
  v17[5] = &v24;
  [(NSTextLayoutManager *)textLayoutManager enumerateTextSegmentsInRange:rangeInElement type:0 options:0 usingBlock:v17];

  v8 = v25[3];
  traitCollection = [(MUExpandingLabel *)self traitCollection];
  [traitCollection displayScale];
  v11 = v10;

  v12 = v19[7];
  titleLabel = [(UIButton *)self->_showMoreButton titleLabel];
  [titleLabel _baselineOffsetFromBottom];
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
  _mk_lastLineSegment = [(NSTextLayoutManager *)self->_textLayoutManager _mk_lastLineSegment];
  v4 = objc_alloc(MEMORY[0x1E69DB848]);
  documentRange = [(NSTextLayoutManager *)self->_textLayoutManager documentRange];
  location = [documentRange location];
  v7 = [v4 initWithLocation:location];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  _mk_layoutFragments = [(NSTextLayoutManager *)self->_textLayoutManager _mk_layoutFragments];
  v9 = [_mk_layoutFragments countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(_mk_layoutFragments);
        }

        rangeInElement = [*(*(&v19 + 1) + 8 * v12) rangeInElement];
        v7 = [v13 textRangeByFormingUnionWithTextRange:rangeInElement];

        ++v12;
        v13 = v7;
      }

      while (v10 != v12);
      v10 = [_mk_layoutFragments countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  rangeInElement2 = [_mk_lastLineSegment rangeInElement];
  v16 = [v7 containsRange:rangeInElement2];

  v17 = *MEMORY[0x1E69E9840];
  return v16 ^ 1;
}

- (BOOL)_canShowAllText
{
  _mk_layoutFragments = [(NSTextLayoutManager *)self->_textLayoutManager _mk_layoutFragments];
  v4 = [_mk_layoutFragments count];
  if (v4 <= [(MUExpandingLabel *)self numberOfLinesWhenCollapsed])
  {
    _mk_truncatedRanges = [(NSTextLayoutManager *)self->_textLayoutManager _mk_truncatedRanges];
    if ([_mk_truncatedRanges count])
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
  _isShowingUserExpanded = [(MUExpandingLabel *)self _isShowingUserExpanded];
  if (_isShowingUserExpanded)
  {

    LOBYTE(_isShowingUserExpanded) = [(MUExpandingLabel *)self allowLessText];
  }

  return _isShowingUserExpanded;
}

- (void)_setExpansionMode:(unint64_t)mode
{
  v34[2] = *MEMORY[0x1E69E9840];
  if (self->_expansionMode == mode)
  {
    goto LABEL_15;
  }

  isShowingExpanded = [(MUExpandingLabel *)self isShowingExpanded];
  self->_expansionMode = mode;
  isShowingExpanded2 = [(MUExpandingLabel *)self isShowingExpanded];
  if (isShowingExpanded == isShowingExpanded2)
  {
    goto LABEL_15;
  }

  v7 = isShowingExpanded2;
  [(UIButton *)self->_showMoreButton setHidden:isShowingExpanded2];
  if (v7 && [(MUExpandingLabel *)self _canShowLess])
  {
    v33[0] = *MEMORY[0x1E69DB648];
    showLessFont = [(MUExpandingLabel *)self showLessFont];
    v34[0] = showLessFont;
    v33[1] = *MEMORY[0x1E69DB650];
    showLessTextColor = [(MUExpandingLabel *)self showLessTextColor];
    v34[1] = showLessTextColor;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];

    attributedText = [(MUExpandingLabel *)self attributedText];
    v12 = [attributedText mutableCopy];

    v13 = objc_alloc(MEMORY[0x1E696AAB0]);
    _showLessTextSeparator = [(MUExpandingLabel *)self _showLessTextSeparator];
    v15 = [v13 initWithString:_showLessTextSeparator];
    [v12 appendAttributedString:v15];

    v16 = objc_alloc(MEMORY[0x1E696AD40]);
    showLessText = [(MUExpandingLabel *)self showLessText];
    v18 = [v16 initWithString:showLessText attributes:v10];

    v19 = *MEMORY[0x1E69DB670];
    v20 = objc_opt_new();
    [v18 addAttribute:v19 value:v20 range:{0, objc_msgSend(v18, "length")}];

    [(UITextView *)self->_textView setLinkTextAttributes:v10];
    [v12 appendAttributedString:v18];
    [(MUExpandingLabel *)self setAttributedText:v12];
  }

  else
  {
    if (isShowingExpanded && [(MUExpandingLabel *)self allowLessText])
    {
      attributedText2 = [(MUExpandingLabel *)self attributedText];
      v22 = [attributedText2 mutableCopy];

      _showLessTextSeparator2 = [(MUExpandingLabel *)self _showLessTextSeparator];
      v24 = [_showLessTextSeparator2 length];
      showLessText2 = [(MUExpandingLabel *)self showLessText];
      v26 = [showLessText2 length] + v24;

      attributedText3 = [(MUExpandingLabel *)self attributedText];
      string = [attributedText3 string];
      v29 = [string length] - v26;

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

- (void)setExpanded:(BOOL)expanded
{
  if (expanded)
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
    titleLabel = [(UIButton *)self->_showMoreButton titleLabel];
    [titleLabel frame];
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

  textViewportLayoutController = [(NSTextLayoutManager *)self->_textLayoutManager textViewportLayoutController];
  [textViewportLayoutController setNeedsLayout];

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

- (void)setShowLessFont:(id)font
{
  fontCopy = font;
  v7 = fontCopy;
  if (!fontCopy)
  {
    mEMORY[0x1E696F200] = [MEMORY[0x1E696F200] sharedManager];
    fontCopy = [mEMORY[0x1E696F200] subtitleFont];
  }

  objc_storeStrong(&self->_showLessFont, fontCopy);
  v6 = v7;
  if (!v7)
  {

    v6 = 0;
  }
}

- (void)setShowLessText:(id)text
{
  textCopy = text;
  v6 = textCopy;
  if (!textCopy)
  {
    textCopy = _MULocalizedStringFromThisBundle(@"Less [Expanding Label]");
  }

  objc_storeStrong(&self->_showLessText, textCopy);
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
    lightTextColor = showLessTextColor;
  }

  else
  {
    mk_theme = [(MUExpandingLabel *)self mk_theme];
    lightTextColor = [mk_theme lightTextColor];
  }

  return lightTextColor;
}

- (void)setShowLessTextColor:(id)color
{
  colorCopy = color;
  if (self->_showLessTextColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_showLessTextColor, color);
    colorCopy = v6;
  }
}

- (UIColor)showMoreTextColor
{
  showMoreTextColor = self->_showMoreTextColor;
  if (showMoreTextColor)
  {
    labelColor = showMoreTextColor;
  }

  else
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
  }

  return labelColor;
}

- (void)setShowMoreTextColor:(id)color
{
  colorCopy = color;
  if (self->_showMoreTextColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_showMoreTextColor, color);
    [(UIButton *)self->_showMoreButton setNeedsUpdateConfiguration];
    colorCopy = v6;
  }
}

- (UIFont)showMoreFont
{
  showMoreFont = self->_showMoreFont;
  if (showMoreFont)
  {
    subtitleFont = showMoreFont;
  }

  else
  {
    mEMORY[0x1E696F200] = [MEMORY[0x1E696F200] sharedManager];
    subtitleFont = [mEMORY[0x1E696F200] subtitleFont];
  }

  return subtitleFont;
}

- (void)setShowMoreFont:(id)font
{
  fontCopy = font;
  if (self->_showMoreFont != fontCopy)
  {
    v6 = fontCopy;
    objc_storeStrong(&self->_showMoreFont, font);
    [(UIButton *)self->_showMoreButton setNeedsUpdateConfiguration];
    [(MUExpandingLabel *)self setNeedsLayout];
    fontCopy = v6;
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

- (void)setShowMoreText:(id)text
{
  textCopy = text;
  v6 = textCopy;
  if (self->_showMoreText != textCopy || ![(NSString *)textCopy isEqualToString:?])
  {
    objc_storeStrong(&self->_showMoreText, text);
    [(UIButton *)self->_showMoreButton setNeedsUpdateConfiguration];
    [(MUExpandingLabel *)self setNeedsLayout];
  }
}

- (void)setNumberOfLinesWhenCollapsed:(unint64_t)collapsed
{
  if (self->_numberOfLinesWhenCollapsed != collapsed)
  {
    collapsedCopy = 10;
    if (collapsed)
    {
      collapsedCopy = collapsed;
    }

    self->_numberOfLinesWhenCollapsed = collapsedCopy;
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

- (MUExpandingLabel)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MUExpandingLabel;
  v3 = [(MUExpandingLabel *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUExpandingLabel *)v3 _mkExpandingLabelComonInit];
  }

  return v4;
}

- (MUExpandingLabel)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = MUExpandingLabel;
  v3 = [(MUExpandingLabel *)&v6 initWithCoder:coder];
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
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UITextView *)self->_textView setBackgroundColor:clearColor];

  [(UITextView *)self->_textView setShowsVerticalScrollIndicator:0];
  [(UITextView *)self->_textView setShowsHorizontalScrollIndicator:0];
  mEMORY[0x1E696F200] = [MEMORY[0x1E696F200] sharedManager];
  subtitleFont = [mEMORY[0x1E696F200] subtitleFont];
  [(UITextView *)self->_textView setFont:subtitleFont];

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
  titleLabel = [(UIButton *)self->_showMoreButton titleLabel];
  [titleLabel setAdjustsFontForContentSizeCategory:1];

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

  titleLabel2 = [(UIButton *)self->_showMoreButton titleLabel];
  bottomAnchor = [titleLabel2 bottomAnchor];
  bottomAnchor2 = [(UITextView *)self->_textView bottomAnchor];
  [(MUExpandingLabel *)self _bottomBaselineConstant];
  v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:?];
  showMoreBottomConstraint = self->_showMoreBottomConstraint;
  self->_showMoreBottomConstraint = v30;

  [v23 addObject:self->_showMoreBottomConstraint];
  titleLabel3 = [(UIButton *)self->_showMoreButton titleLabel];
  trailingAnchor = [titleLabel3 trailingAnchor];
  trailingAnchor2 = [(MUExpandingLabel *)self trailingAnchor];
  v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
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