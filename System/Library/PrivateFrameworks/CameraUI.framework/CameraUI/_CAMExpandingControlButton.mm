@interface _CAMExpandingControlButton
- (BOOL)isSlashed;
- (CGSize)_intrinsicLabelSize;
- (CGSize)intrinsicContentSize;
- (CGSize)slashSize;
- (UIEdgeInsets)alignmentRectInsets;
- (_CAMExpandingControlButton)initWithFrame:(CGRect)frame;
- (id)_attributedTextForTitle:(id)title;
- (id)_effectiveSubtitleFont;
- (id)_effectiveTitleFont;
- (int64_t)orientation;
- (void)_createFilledOutlineContentView;
- (void)_createOutlineContentView;
- (void)_updateTitleImageView;
- (void)_updateTitleLabel;
- (void)layoutSubviews;
- (void)setBorder:(int64_t)border;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setOrientation:(int64_t)orientation;
- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated;
- (void)setSlashSize:(CGSize)size;
- (void)setSlashed:(BOOL)slashed animated:(BOOL)animated;
- (void)setTitleImage:(id)image;
- (void)setTitleText:(id)text;
- (void)setTitleText:(id)text font:(id)font;
- (void)tintColorDidChange;
@end

@implementation _CAMExpandingControlButton

- (_CAMExpandingControlButton)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = _CAMExpandingControlButton;
  v3 = [(_CAMExpandingControlButton *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(CAMSlashContainer);
    titleContentView = v3->__titleContentView;
    v3->__titleContentView = v4;

    [(CAMSlashContainer *)v3->__titleContentView setUserInteractionEnabled:0];
    [(CAMSlashContainer *)v3->__titleContentView setSlashSize:20.0, 20.0];
    [(_CAMExpandingControlButton *)v3 addSubview:v3->__titleContentView];
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v6 setUserInteractionEnabled:0];
    [(CAMSlashContainer *)v3->__titleContentView setContentView:v6];
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  titleImage = [(_CAMExpandingControlButton *)self titleImage];

  if (titleImage)
  {
    _outlineContentView = [(_CAMExpandingControlButton *)self _outlineContentView];

    if (_outlineContentView)
    {
      _outlineContentView2 = [(_CAMExpandingControlButton *)self _outlineContentView];
    }

    else
    {
      _filledOutlineContentView = [(_CAMExpandingControlButton *)self _filledOutlineContentView];

      if (_filledOutlineContentView)
      {
        [(_CAMExpandingControlButton *)self _filledOutlineContentView];
      }

      else
      {
        [(_CAMExpandingControlButton *)self _titleImageView];
      }
      _outlineContentView2 = ;
    }

    v9 = _outlineContentView2;
    v10 = CAMViewAlignmentSize(_outlineContentView2);
    v12 = v11;

    v6 = v10;
    v7 = v12;
  }

  else
  {

    [(_CAMExpandingControlButton *)self _intrinsicLabelSize];
  }

  result.height = v7;
  result.width = v6;
  return result;
}

- (UIEdgeInsets)alignmentRectInsets
{
  v4 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v6 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  _effectiveTitleFont = [(_CAMExpandingControlButton *)self _effectiveTitleFont];
  if (_effectiveTitleFont)
  {
    titleText = [(_CAMExpandingControlButton *)self titleText];
    v9 = [titleText length];

    if (v9)
    {
      [_effectiveTitleFont ascender];
      [_effectiveTitleFont capHeight];
      UIRoundToViewScale();
      v4 = v10;
      _effectiveSubtitleFont = [(_CAMExpandingControlButton *)self _effectiveSubtitleFont];
      [_effectiveSubtitleFont descender];
      UIRoundToViewScale();
      v6 = v12;
    }
  }

  v13 = v4;
  v14 = v3;
  v15 = v6;
  v16 = v5;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (void)layoutSubviews
{
  [(_CAMExpandingControlButton *)self bounds];
  [(_CAMExpandingControlButton *)self intrinsicContentSize];
  traitCollection = [(_CAMExpandingControlButton *)self traitCollection];
  [traitCollection displayScale];
  v5 = v4;

  CEKRectWithSize();
  UIRectCenteredIntegralRectScale();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(_CAMExpandingControlButton *)self alignmentRectInsets];
  v16 = v9 + (v14 - v15) * 0.5;
  _titleContentView = [(_CAMExpandingControlButton *)self _titleContentView];
  [_titleContentView setFrame:{v7, v16, v11, v13}];

  CEKRectWithSize();
  UIRectGetCenter();
  _titleImageView = [(_CAMExpandingControlButton *)self _titleImageView];
  v18 = *MEMORY[0x1E695EFF8];
  v19 = *(MEMORY[0x1E695EFF8] + 8);
  [_titleImageView intrinsicContentSize];
  v21 = v20;
  v23 = v22;
  UIRectCenteredAboutPointScale();
  UIRectGetCenter();
  [_titleImageView setCenter:?];
  [_titleImageView setBounds:{v18, v19, v21, v23}];
  _outlineContentView = [(_CAMExpandingControlButton *)self _outlineContentView];
  [_outlineContentView intrinsicContentSize];
  v26 = v25;
  v28 = v27;
  UIRectCenteredAboutPointScale();
  UIRectGetCenter();
  [_outlineContentView setCenter:?];
  [_outlineContentView setBounds:{v18, v19, v26, v28}];
  _filledOutlineContentView = [(_CAMExpandingControlButton *)self _filledOutlineContentView];
  [_filledOutlineContentView intrinsicContentSize];
  v31 = v30;
  v33 = v32;
  UIRectCenteredAboutPointScale();
  UIRectGetCenter();
  [_filledOutlineContentView setCenter:?];
  [_filledOutlineContentView setBounds:{v18, v19, v31, v33}];
}

- (void)tintColorDidChange
{
  [(_CAMExpandingControlButton *)self _updateTitleLabel];

  [(_CAMExpandingControlButton *)self _updateTitleImageView];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  isHighlighted = [(_CAMExpandingControlButton *)self isHighlighted];
  v8.receiver = self;
  v8.super_class = _CAMExpandingControlButton;
  [(_CAMExpandingControlButton *)&v8 setHighlighted:highlightedCopy];
  if (isHighlighted != highlightedCopy)
  {
    _titleLabel = [(_CAMExpandingControlButton *)self _titleLabel];
    layer = [_titleLabel layer];
    [CAMAnimationHelper animateLayer:layer forButtonHighlighted:highlightedCopy layoutStyle:3];
  }
}

- (void)setTitleImage:(id)image
{
  if (([image isEqual:self->_titleImage] & 1) == 0)
  {
    self->_titleImage = image;
    [(_CAMExpandingControlButton *)self _updateTitleImageView];

    [(_CAMExpandingControlButton *)self setNeedsLayout];
  }
}

- (void)_updateTitleImageView
{
  _titleImageView = [(_CAMExpandingControlButton *)self _titleImageView];
  titleImage = [(_CAMExpandingControlButton *)self titleImage];
  if (!_titleImageView && titleImage)
  {
    _titleImageView = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [(_CAMExpandingControlButton *)self _setTitleImageView:_titleImageView];
    _titleContentView = [(_CAMExpandingControlButton *)self _titleContentView];
    contentView = [_titleContentView contentView];
    [contentView addSubview:_titleImageView];
  }

  [_titleImageView setImage:titleImage];
  tintColor = [(_CAMExpandingControlButton *)self tintColor];
  border = [(_CAMExpandingControlButton *)self border];
  if (border)
  {
    if (border == 1)
    {
      _outlineContentView = [(_CAMExpandingControlButton *)self _outlineContentView];

      if (!_outlineContentView)
      {
        [(_CAMExpandingControlButton *)self _createOutlineContentView];
      }

      _titleImageView2 = [(_CAMExpandingControlButton *)self _titleImageView];
      [_titleImageView2 setTintColor:tintColor];
      v11 = 0.0;
      v12 = 0.6;
    }

    else
    {
      if (border != 2)
      {
        goto LABEL_16;
      }

      _filledOutlineContentView = [(_CAMExpandingControlButton *)self _filledOutlineContentView];

      if (!_filledOutlineContentView)
      {
        [(_CAMExpandingControlButton *)self _createFilledOutlineContentView];
      }

      _titleImageView2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
      _titleImageView3 = [(_CAMExpandingControlButton *)self _titleImageView];
      [_titleImageView3 setTintColor:_titleImageView2];

      v11 = 1.0;
      v12 = 0.0;
    }
  }

  else
  {
    v12 = 0.0;
    v11 = 0.0;
  }

  _outlineContentView2 = [(_CAMExpandingControlButton *)self _outlineContentView];
  [_outlineContentView2 setAlpha:v12];

  _filledOutlineContentView2 = [(_CAMExpandingControlButton *)self _filledOutlineContentView];
  [_filledOutlineContentView2 setAlpha:v11];

LABEL_16:
}

- (void)setTitleText:(id)text
{
  textCopy = text;
  titleFont = [(_CAMExpandingControlButton *)self titleFont];
  [(_CAMExpandingControlButton *)self setTitleText:textCopy font:titleFont];
}

- (void)setTitleText:(id)text font:(id)font
{
  textCopy = text;
  fontCopy = font;
  titleText = self->_titleText;
  if (titleText != textCopy && ![(NSString *)titleText isEqualToString:textCopy]|| self->_titleFont != fontCopy && ([(UIFont *)fontCopy isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_titleText, text);
    self->_titleFont = fontCopy;
    [(_CAMExpandingControlButton *)self _updateTitleLabel];
    _titleLabel = [(_CAMExpandingControlButton *)self _titleLabel];
    [_titleLabel intrinsicContentSize];
    traitCollection = [(_CAMExpandingControlButton *)self traitCollection];
    [traitCollection displayScale];
    CEKSizeCeilToScale();
    [(_CAMExpandingControlButton *)self _setIntrinsicLabelSize:?];

    [(_CAMExpandingControlButton *)self setNeedsLayout];
  }
}

- (id)_effectiveTitleFont
{
  titleFont = [(_CAMExpandingControlButton *)self titleFont];
  v3 = titleFont;
  if (titleFont)
  {
    v4 = titleFont;
  }

  else
  {
    v4 = [CAMFont cameraFontOfSize:14.0 weight:*MEMORY[0x1E69DB970]];
  }

  v5 = v4;

  return v5;
}

- (id)_effectiveSubtitleFont
{
  titleFont = [(_CAMExpandingControlButton *)self titleFont];
  v4 = titleFont;
  if (titleFont)
  {
    v5 = titleFont;
  }

  else
  {
    titleText = [(_CAMExpandingControlButton *)self titleText];
    if ([titleText containsString:@"\n"])
    {
      [CAMFont cameraFontOfSize:11.0 weight:*MEMORY[0x1E69DB978]];
    }

    else
    {
      [(_CAMExpandingControlButton *)self _effectiveTitleFont];
    }
    v5 = ;
  }

  return v5;
}

- (void)_updateTitleLabel
{
  _titleLabel = [(_CAMExpandingControlButton *)self _titleLabel];
  titleText = [(_CAMExpandingControlButton *)self titleText];
  if (!_titleLabel && titleText)
  {
    _titleLabel = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [_titleLabel setNumberOfLines:0];
    [(_CAMExpandingControlButton *)self _setTitleLabel:_titleLabel];
    _titleContentView = [(_CAMExpandingControlButton *)self _titleContentView];
    [_titleContentView setContentView:_titleLabel];
  }

  v5 = [(_CAMExpandingControlButton *)self _attributedTextForTitle:titleText];
  [_titleLabel setAttributedText:v5];
}

- (id)_attributedTextForTitle:(id)title
{
  v22[3] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  if ([titleCopy length])
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    CEKPixelWidthForView();
    [v5 setParagraphSpacing:v6 + -3.0];
    [v5 setAlignment:1];
    tintColor = [(_CAMExpandingControlButton *)self tintColor];
    _effectiveTitleFont = [(_CAMExpandingControlButton *)self _effectiveTitleFont];
    v9 = objc_alloc(MEMORY[0x1E696AAB0]);
    v10 = *MEMORY[0x1E69DB648];
    v21[0] = *MEMORY[0x1E69DB688];
    v21[1] = v10;
    v22[0] = v5;
    v22[1] = _effectiveTitleFont;
    v21[2] = *MEMORY[0x1E69DB650];
    v22[2] = tintColor;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
    v12 = [v9 initWithString:titleCopy attributes:v11];

    v13 = [titleCopy rangeOfString:@"\n"];
    if (v13 < [titleCopy length] - 2 && objc_msgSend(titleCopy, "length") >= 3)
    {
      v18 = [titleCopy length];
      v14 = [v12 mutableCopy];
      v19 = v10;
      _effectiveSubtitleFont = [(_CAMExpandingControlButton *)self _effectiveSubtitleFont];
      v20 = _effectiveSubtitleFont;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      [v14 addAttributes:v16 range:{v13 + 1, v18 + ~v13}];

      v12 = v14;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)setSlashed:(BOOL)slashed animated:(BOOL)animated
{
  animatedCopy = animated;
  slashedCopy = slashed;
  _titleContentView = [(_CAMExpandingControlButton *)self _titleContentView];
  [_titleContentView setSlashed:slashedCopy animated:animatedCopy];
}

- (BOOL)isSlashed
{
  _titleContentView = [(_CAMExpandingControlButton *)self _titleContentView];
  isSlashed = [_titleContentView isSlashed];

  return isSlashed;
}

- (CGSize)slashSize
{
  _titleContentView = [(_CAMExpandingControlButton *)self _titleContentView];
  [_titleContentView slashSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setSlashSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  _titleContentView = [(_CAMExpandingControlButton *)self _titleContentView];
  [_titleContentView setSlashSize:{width, height}];
}

- (void)setBorder:(int64_t)border
{
  if (self->_border != border)
  {
    self->_border = border;
    [(_CAMExpandingControlButton *)self _updateTitleImageView];
  }
}

- (void)_createOutlineContentView
{
  v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
  traitCollection = [(_CAMExpandingControlButton *)self traitCollection];
  [traitCollection displayScale];
  v5 = [CAMControlStatusIndicator stretchableCircleImageFilled:0 scale:?];
  v6 = [v3 initWithImage:v5];
  outlineContentView = self->__outlineContentView;
  self->__outlineContentView = v6;

  _titleContentView = [(_CAMExpandingControlButton *)self _titleContentView];
  contentView = [_titleContentView contentView];
  _outlineContentView = [(_CAMExpandingControlButton *)self _outlineContentView];
  [contentView insertSubview:_outlineContentView atIndex:0];
}

- (void)_createFilledOutlineContentView
{
  v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
  traitCollection = [(_CAMExpandingControlButton *)self traitCollection];
  [traitCollection displayScale];
  v5 = [CAMControlStatusIndicator stretchableCircleImageFilled:1 scale:?];
  v6 = [v3 initWithImage:v5];
  filledOutlineContentView = self->__filledOutlineContentView;
  self->__filledOutlineContentView = v6;

  _titleContentView = [(_CAMExpandingControlButton *)self _titleContentView];
  contentView = [_titleContentView contentView];
  _filledOutlineContentView = [(_CAMExpandingControlButton *)self _filledOutlineContentView];
  [contentView insertSubview:_filledOutlineContentView atIndex:0];
}

- (void)setOrientation:(int64_t)orientation
{
  _titleContentView = [(_CAMExpandingControlButton *)self _titleContentView];
  [_titleContentView setOrientation:orientation];
}

- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated
{
  animatedCopy = animated;
  _titleContentView = [(_CAMExpandingControlButton *)self _titleContentView];
  [_titleContentView setOrientation:orientation animated:animatedCopy];
}

- (int64_t)orientation
{
  _titleContentView = [(_CAMExpandingControlButton *)self _titleContentView];
  orientation = [_titleContentView orientation];

  return orientation;
}

- (CGSize)_intrinsicLabelSize
{
  width = self->__intrinsicLabelSize.width;
  height = self->__intrinsicLabelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end