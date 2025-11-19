@interface _CAMExpandingControlButton
- (BOOL)isSlashed;
- (CGSize)_intrinsicLabelSize;
- (CGSize)intrinsicContentSize;
- (CGSize)slashSize;
- (UIEdgeInsets)alignmentRectInsets;
- (_CAMExpandingControlButton)initWithFrame:(CGRect)a3;
- (id)_attributedTextForTitle:(id)a3;
- (id)_effectiveSubtitleFont;
- (id)_effectiveTitleFont;
- (int64_t)orientation;
- (void)_createFilledOutlineContentView;
- (void)_createOutlineContentView;
- (void)_updateTitleImageView;
- (void)_updateTitleLabel;
- (void)layoutSubviews;
- (void)setBorder:(int64_t)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setOrientation:(int64_t)a3;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
- (void)setSlashSize:(CGSize)a3;
- (void)setSlashed:(BOOL)a3 animated:(BOOL)a4;
- (void)setTitleImage:(id)a3;
- (void)setTitleText:(id)a3;
- (void)setTitleText:(id)a3 font:(id)a4;
- (void)tintColorDidChange;
@end

@implementation _CAMExpandingControlButton

- (_CAMExpandingControlButton)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = _CAMExpandingControlButton;
  v3 = [(_CAMExpandingControlButton *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [(_CAMExpandingControlButton *)self titleImage];

  if (v3)
  {
    v4 = [(_CAMExpandingControlButton *)self _outlineContentView];

    if (v4)
    {
      v5 = [(_CAMExpandingControlButton *)self _outlineContentView];
    }

    else
    {
      v8 = [(_CAMExpandingControlButton *)self _filledOutlineContentView];

      if (v8)
      {
        [(_CAMExpandingControlButton *)self _filledOutlineContentView];
      }

      else
      {
        [(_CAMExpandingControlButton *)self _titleImageView];
      }
      v5 = ;
    }

    v9 = v5;
    v10 = CAMViewAlignmentSize(v5);
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
  v7 = [(_CAMExpandingControlButton *)self _effectiveTitleFont];
  if (v7)
  {
    v8 = [(_CAMExpandingControlButton *)self titleText];
    v9 = [v8 length];

    if (v9)
    {
      [v7 ascender];
      [v7 capHeight];
      UIRoundToViewScale();
      v4 = v10;
      v11 = [(_CAMExpandingControlButton *)self _effectiveSubtitleFont];
      [v11 descender];
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
  v3 = [(_CAMExpandingControlButton *)self traitCollection];
  [v3 displayScale];
  v5 = v4;

  CEKRectWithSize();
  UIRectCenteredIntegralRectScale();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(_CAMExpandingControlButton *)self alignmentRectInsets];
  v16 = v9 + (v14 - v15) * 0.5;
  v17 = [(_CAMExpandingControlButton *)self _titleContentView];
  [v17 setFrame:{v7, v16, v11, v13}];

  CEKRectWithSize();
  UIRectGetCenter();
  v34 = [(_CAMExpandingControlButton *)self _titleImageView];
  v18 = *MEMORY[0x1E695EFF8];
  v19 = *(MEMORY[0x1E695EFF8] + 8);
  [v34 intrinsicContentSize];
  v21 = v20;
  v23 = v22;
  UIRectCenteredAboutPointScale();
  UIRectGetCenter();
  [v34 setCenter:?];
  [v34 setBounds:{v18, v19, v21, v23}];
  v24 = [(_CAMExpandingControlButton *)self _outlineContentView];
  [v24 intrinsicContentSize];
  v26 = v25;
  v28 = v27;
  UIRectCenteredAboutPointScale();
  UIRectGetCenter();
  [v24 setCenter:?];
  [v24 setBounds:{v18, v19, v26, v28}];
  v29 = [(_CAMExpandingControlButton *)self _filledOutlineContentView];
  [v29 intrinsicContentSize];
  v31 = v30;
  v33 = v32;
  UIRectCenteredAboutPointScale();
  UIRectGetCenter();
  [v29 setCenter:?];
  [v29 setBounds:{v18, v19, v31, v33}];
}

- (void)tintColorDidChange
{
  [(_CAMExpandingControlButton *)self _updateTitleLabel];

  [(_CAMExpandingControlButton *)self _updateTitleImageView];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = [(_CAMExpandingControlButton *)self isHighlighted];
  v8.receiver = self;
  v8.super_class = _CAMExpandingControlButton;
  [(_CAMExpandingControlButton *)&v8 setHighlighted:v3];
  if (v5 != v3)
  {
    v6 = [(_CAMExpandingControlButton *)self _titleLabel];
    v7 = [v6 layer];
    [CAMAnimationHelper animateLayer:v7 forButtonHighlighted:v3 layoutStyle:3];
  }
}

- (void)setTitleImage:(id)a3
{
  if (([a3 isEqual:self->_titleImage] & 1) == 0)
  {
    self->_titleImage = a3;
    [(_CAMExpandingControlButton *)self _updateTitleImageView];

    [(_CAMExpandingControlButton *)self setNeedsLayout];
  }
}

- (void)_updateTitleImageView
{
  v16 = [(_CAMExpandingControlButton *)self _titleImageView];
  v3 = [(_CAMExpandingControlButton *)self titleImage];
  if (!v16 && v3)
  {
    v16 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [(_CAMExpandingControlButton *)self _setTitleImageView:v16];
    v4 = [(_CAMExpandingControlButton *)self _titleContentView];
    v5 = [v4 contentView];
    [v5 addSubview:v16];
  }

  [v16 setImage:v3];
  v6 = [(_CAMExpandingControlButton *)self tintColor];
  v7 = [(_CAMExpandingControlButton *)self border];
  if (v7)
  {
    if (v7 == 1)
    {
      v13 = [(_CAMExpandingControlButton *)self _outlineContentView];

      if (!v13)
      {
        [(_CAMExpandingControlButton *)self _createOutlineContentView];
      }

      v9 = [(_CAMExpandingControlButton *)self _titleImageView];
      [v9 setTintColor:v6];
      v11 = 0.0;
      v12 = 0.6;
    }

    else
    {
      if (v7 != 2)
      {
        goto LABEL_16;
      }

      v8 = [(_CAMExpandingControlButton *)self _filledOutlineContentView];

      if (!v8)
      {
        [(_CAMExpandingControlButton *)self _createFilledOutlineContentView];
      }

      v9 = [MEMORY[0x1E69DC888] systemBackgroundColor];
      v10 = [(_CAMExpandingControlButton *)self _titleImageView];
      [v10 setTintColor:v9];

      v11 = 1.0;
      v12 = 0.0;
    }
  }

  else
  {
    v12 = 0.0;
    v11 = 0.0;
  }

  v14 = [(_CAMExpandingControlButton *)self _outlineContentView];
  [v14 setAlpha:v12];

  v15 = [(_CAMExpandingControlButton *)self _filledOutlineContentView];
  [v15 setAlpha:v11];

LABEL_16:
}

- (void)setTitleText:(id)a3
{
  v4 = a3;
  v5 = [(_CAMExpandingControlButton *)self titleFont];
  [(_CAMExpandingControlButton *)self setTitleText:v4 font:v5];
}

- (void)setTitleText:(id)a3 font:(id)a4
{
  v11 = a3;
  v7 = a4;
  titleText = self->_titleText;
  if (titleText != v11 && ![(NSString *)titleText isEqualToString:v11]|| self->_titleFont != v7 && ([(UIFont *)v7 isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_titleText, a3);
    self->_titleFont = v7;
    [(_CAMExpandingControlButton *)self _updateTitleLabel];
    v9 = [(_CAMExpandingControlButton *)self _titleLabel];
    [v9 intrinsicContentSize];
    v10 = [(_CAMExpandingControlButton *)self traitCollection];
    [v10 displayScale];
    CEKSizeCeilToScale();
    [(_CAMExpandingControlButton *)self _setIntrinsicLabelSize:?];

    [(_CAMExpandingControlButton *)self setNeedsLayout];
  }
}

- (id)_effectiveTitleFont
{
  v2 = [(_CAMExpandingControlButton *)self titleFont];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
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
  v3 = [(_CAMExpandingControlButton *)self titleFont];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(_CAMExpandingControlButton *)self titleText];
    if ([v6 containsString:@"\n"])
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
  v6 = [(_CAMExpandingControlButton *)self _titleLabel];
  v3 = [(_CAMExpandingControlButton *)self titleText];
  if (!v6 && v3)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v6 setNumberOfLines:0];
    [(_CAMExpandingControlButton *)self _setTitleLabel:v6];
    v4 = [(_CAMExpandingControlButton *)self _titleContentView];
    [v4 setContentView:v6];
  }

  v5 = [(_CAMExpandingControlButton *)self _attributedTextForTitle:v3];
  [v6 setAttributedText:v5];
}

- (id)_attributedTextForTitle:(id)a3
{
  v22[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 length])
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    CEKPixelWidthForView();
    [v5 setParagraphSpacing:v6 + -3.0];
    [v5 setAlignment:1];
    v7 = [(_CAMExpandingControlButton *)self tintColor];
    v8 = [(_CAMExpandingControlButton *)self _effectiveTitleFont];
    v9 = objc_alloc(MEMORY[0x1E696AAB0]);
    v10 = *MEMORY[0x1E69DB648];
    v21[0] = *MEMORY[0x1E69DB688];
    v21[1] = v10;
    v22[0] = v5;
    v22[1] = v8;
    v21[2] = *MEMORY[0x1E69DB650];
    v22[2] = v7;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
    v12 = [v9 initWithString:v4 attributes:v11];

    v13 = [v4 rangeOfString:@"\n"];
    if (v13 < [v4 length] - 2 && objc_msgSend(v4, "length") >= 3)
    {
      v18 = [v4 length];
      v14 = [v12 mutableCopy];
      v19 = v10;
      v15 = [(_CAMExpandingControlButton *)self _effectiveSubtitleFont];
      v20 = v15;
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

- (void)setSlashed:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(_CAMExpandingControlButton *)self _titleContentView];
  [v6 setSlashed:v5 animated:v4];
}

- (BOOL)isSlashed
{
  v2 = [(_CAMExpandingControlButton *)self _titleContentView];
  v3 = [v2 isSlashed];

  return v3;
}

- (CGSize)slashSize
{
  v2 = [(_CAMExpandingControlButton *)self _titleContentView];
  [v2 slashSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setSlashSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(_CAMExpandingControlButton *)self _titleContentView];
  [v5 setSlashSize:{width, height}];
}

- (void)setBorder:(int64_t)a3
{
  if (self->_border != a3)
  {
    self->_border = a3;
    [(_CAMExpandingControlButton *)self _updateTitleImageView];
  }
}

- (void)_createOutlineContentView
{
  v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v4 = [(_CAMExpandingControlButton *)self traitCollection];
  [v4 displayScale];
  v5 = [CAMControlStatusIndicator stretchableCircleImageFilled:0 scale:?];
  v6 = [v3 initWithImage:v5];
  outlineContentView = self->__outlineContentView;
  self->__outlineContentView = v6;

  v10 = [(_CAMExpandingControlButton *)self _titleContentView];
  v8 = [v10 contentView];
  v9 = [(_CAMExpandingControlButton *)self _outlineContentView];
  [v8 insertSubview:v9 atIndex:0];
}

- (void)_createFilledOutlineContentView
{
  v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v4 = [(_CAMExpandingControlButton *)self traitCollection];
  [v4 displayScale];
  v5 = [CAMControlStatusIndicator stretchableCircleImageFilled:1 scale:?];
  v6 = [v3 initWithImage:v5];
  filledOutlineContentView = self->__filledOutlineContentView;
  self->__filledOutlineContentView = v6;

  v10 = [(_CAMExpandingControlButton *)self _titleContentView];
  v8 = [v10 contentView];
  v9 = [(_CAMExpandingControlButton *)self _filledOutlineContentView];
  [v8 insertSubview:v9 atIndex:0];
}

- (void)setOrientation:(int64_t)a3
{
  v4 = [(_CAMExpandingControlButton *)self _titleContentView];
  [v4 setOrientation:a3];
}

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(_CAMExpandingControlButton *)self _titleContentView];
  [v6 setOrientation:a3 animated:v4];
}

- (int64_t)orientation
{
  v2 = [(_CAMExpandingControlButton *)self _titleContentView];
  v3 = [v2 orientation];

  return v3;
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