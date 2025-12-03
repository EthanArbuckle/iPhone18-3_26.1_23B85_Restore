@interface CAMFocalLengthLabel
- (CAMFocalLengthLabel)initWithFrame:(CGRect)frame;
- (CGSize)_numeralSize;
- (CGSize)_unitSize;
- (CGSize)intrinsicContentSize;
- (void)_updateFontsAndTextAnimated:(BOOL)animated;
- (void)_updateNumeralTextAnimated:(BOOL)animated;
- (void)_updateUnitText;
- (void)layoutSubviews;
- (void)setFocalLength:(int64_t)length animated:(BOOL)animated;
- (void)tintColorDidChange;
@end

@implementation CAMFocalLengthLabel

- (CAMFocalLengthLabel)initWithFrame:(CGRect)frame
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = CAMFocalLengthLabel;
  v3 = [(CAMFocalLengthLabel *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    numeralLabel = v3->__numeralLabel;
    v3->__numeralLabel = v4;

    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    unitLabel = v3->__unitLabel;
    v3->__unitLabel = v6;

    [(UILabel *)v3->__numeralLabel setTextAlignment:1];
    [(UILabel *)v3->__unitLabel setTextAlignment:1];
    [(CAMFocalLengthLabel *)v3 addSubview:v3->__numeralLabel];
    [(CAMFocalLengthLabel *)v3 addSubview:v3->__unitLabel];
    [(CAMFocalLengthLabel *)v3 _updateFontsAndTextAnimated:0];
    v12[0] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v9 = [(CAMFocalLengthLabel *)v3 registerForTraitChanges:v8 withAction:sel__preferredContentSizeCategoryChanged];
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  _unitFont = [(CAMFocalLengthLabel *)self _unitFont];
  _numeralFont = [(CAMFocalLengthLabel *)self _numeralFont];
  [_unitFont ascender];
  [_unitFont descender];
  [_numeralFont ascender];
  UIRoundToViewScale();
  v6 = v5;
  [(CAMFocalLengthLabel *)self _numeralSize];
  [(CAMFocalLengthLabel *)self _unitSize];
  UICeilToViewScale();
  v8 = v7;

  v9 = v8;
  v10 = v6;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  _numeralLabel = [(CAMFocalLengthLabel *)self _numeralLabel];
  _unitLabel = [(CAMFocalLengthLabel *)self _unitLabel];
  [(CAMFocalLengthLabel *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(CAMFocalLengthLabel *)self _numeralSize];
  v13 = v12;
  [(CAMFocalLengthLabel *)self _unitSize];
  v15 = v14;
  CEKPixelWidthForView();
  v17 = v5 + v16;
  v25.origin.x = v5;
  v25.origin.y = v7;
  v25.size.width = v9;
  v25.size.height = v11;
  v18 = CGRectGetMaxY(v25) - v15;
  _unitFont = [(CAMFocalLengthLabel *)self _unitFont];
  _numeralFont = [(CAMFocalLengthLabel *)self _numeralFont];
  [_numeralFont ascender];
  [_numeralFont capHeight];
  [_unitFont descender];
  UIRoundToViewScale();
  v22 = v18 - v21;
  [_numeralLabel setFrame:{v5, v7 - v21, v9, v13}];
  [_unitLabel setFrame:{v17, v22, v9, v15}];
}

- (void)tintColorDidChange
{
  tintColor = [(CAMFocalLengthLabel *)self tintColor];
  _numeralLabel = [(CAMFocalLengthLabel *)self _numeralLabel];
  [_numeralLabel setTextColor:tintColor];

  _unitLabel = [(CAMFocalLengthLabel *)self _unitLabel];
  [_unitLabel setTextColor:tintColor];
}

- (void)setFocalLength:(int64_t)length animated:(BOOL)animated
{
  if (self->_focalLength != length)
  {
    self->_focalLength = length;
    [(CAMFocalLengthLabel *)self _updateNumeralTextAnimated:animated];
  }
}

- (void)_updateFontsAndTextAnimated:(BOOL)animated
{
  animatedCopy = animated;
  traitCollection = [(CAMFocalLengthLabel *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  v8 = 13.0;
  if (IsAccessibilityCategory)
  {
    v8 = 17.0;
    v9 = 12.0;
  }

  else
  {
    v9 = 9.0;
  }

  v10 = *MEMORY[0x1E69DB980];
  v11 = [CAMFont cameraMonospacedFontOfSize:v8 weight:*MEMORY[0x1E69DB980]];
  [(CAMFocalLengthLabel *)self set_numeralFont:v11];

  v12 = [CAMFont cameraMonospacedFontOfSize:v9 weight:v10];
  [(CAMFocalLengthLabel *)self set_unitFont:v12];

  [(CAMFocalLengthLabel *)self _updateNumeralTextAnimated:animatedCopy];

  [(CAMFocalLengthLabel *)self _updateUnitText];
}

- (void)_updateNumeralTextAnimated:(BOOL)animated
{
  v16[2] = *MEMORY[0x1E69E9840];
  _numeralFont = [(CAMFocalLengthLabel *)self _numeralFont];
  _numeralLabel = [(CAMFocalLengthLabel *)self _numeralLabel];
  v6 = *MEMORY[0x1E69DB660];
  v15[0] = *MEMORY[0x1E69DB648];
  v15[1] = v6;
  v16[0] = _numeralFont;
  v16[1] = &unk_1F16C8C78;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  focalLength = [(CAMFocalLengthLabel *)self focalLength];
  if (focalLength > 3)
  {
    v9 = 0;
  }

  else
  {
    v9 = qword_1A3A6A408[focalLength];
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v9];
  v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v10 attributes:v7];
  [_numeralLabel setAttributedText:v11];

  [_numeralLabel intrinsicContentSize];
  UICeilToViewScale();
  v13 = v12;
  UICeilToViewScale();
  [(CAMFocalLengthLabel *)self set_numeralSize:v13, v14];
}

- (void)_updateUnitText
{
  v12[2] = *MEMORY[0x1E69E9840];
  _unitFont = [(CAMFocalLengthLabel *)self _unitFont];
  _unitLabel = [(CAMFocalLengthLabel *)self _unitLabel];
  v5 = *MEMORY[0x1E69DB660];
  v11[0] = *MEMORY[0x1E69DB648];
  v11[1] = v5;
  v12[0] = _unitFont;
  v12[1] = &unk_1F16C80C0;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v7 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"MM" attributes:v6];
  [_unitLabel setAttributedText:v7];

  [_unitLabel intrinsicContentSize];
  UICeilToViewScale();
  v9 = v8;
  UICeilToViewScale();
  [(CAMFocalLengthLabel *)self set_unitSize:v9, v10];
}

- (CGSize)_numeralSize
{
  width = self->__numeralSize.width;
  height = self->__numeralSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)_unitSize
{
  width = self->__unitSize.width;
  height = self->__unitSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end