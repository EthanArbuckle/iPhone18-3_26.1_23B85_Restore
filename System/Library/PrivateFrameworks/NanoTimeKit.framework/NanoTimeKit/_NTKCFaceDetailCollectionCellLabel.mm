@interface _NTKCFaceDetailCollectionCellLabel
- (CGRect)_textBounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_NTKCFaceDetailCollectionCellLabel)init;
- (int64_t)_numberOfLines;
- (void)layoutSubviews;
- (void)setActive:(BOOL)active;
- (void)setText:(id)text;
- (void)setUsesShortTextWidth:(BOOL)width;
@end

@implementation _NTKCFaceDetailCollectionCellLabel

- (_NTKCFaceDetailCollectionCellLabel)init
{
  v12.receiver = self;
  v12.super_class = _NTKCFaceDetailCollectionCellLabel;
  v2 = [(_NTKCFaceDetailCollectionCellLabel *)&v12 init];
  if (v2)
  {
    layer = [MEMORY[0x277CD9F90] layer];
    background = v2->_background;
    v2->_background = layer;

    v5 = NTKCActiveColor();
    -[CAShapeLayer setFillColor:](v2->_background, "setFillColor:", [v5 CGColor]);

    [(CAShapeLayer *)v2->_background setHidden:1];
    layer2 = [(_NTKCFaceDetailCollectionCellLabel *)v2 layer];
    [layer2 addSublayer:v2->_background];

    v7 = objc_opt_new();
    label = v2->_label;
    v2->_label = v7;

    [(UILabel *)v2->_label setAllowsDefaultTighteningForTruncation:1];
    _inactiveFont = [(_NTKCFaceDetailCollectionCellLabel *)v2 _inactiveFont];
    [(UILabel *)v2->_label setFont:_inactiveFont];

    _inactiveTextColor = [(_NTKCFaceDetailCollectionCellLabel *)v2 _inactiveTextColor];
    [(UILabel *)v2->_label setTextColor:_inactiveTextColor];

    [(UILabel *)v2->_label setNumberOfLines:3];
    [(_NTKCFaceDetailCollectionCellLabel *)v2 addSubview:v2->_label];
  }

  return v2;
}

- (void)setUsesShortTextWidth:(BOOL)width
{
  if (self->_usesShortTextWidth != width)
  {
    self->_usesShortTextWidth = width;
    [(_NTKCFaceDetailCollectionCellLabel *)self sizeToFit];

    [(_NTKCFaceDetailCollectionCellLabel *)self setNeedsLayout];
  }
}

- (void)setText:(id)text
{
  v12[1] = *MEMORY[0x277D85DE8];
  textCopy = text;
  text = [(UILabel *)self->_label text];
  v6 = [textCopy isEqualToString:text];

  if ((v6 & 1) == 0)
  {
    if (textCopy)
    {
      nTKHyphenationParagraphStyle = [MEMORY[0x277D74240] NTKHyphenationParagraphStyle];
      [nTKHyphenationParagraphStyle setAlignment:1];
      v8 = objc_alloc(MEMORY[0x277CCA898]);
      v11 = *MEMORY[0x277D74118];
      v12[0] = nTKHyphenationParagraphStyle;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      v10 = [v8 initWithString:textCopy attributes:v9];

      [(UILabel *)self->_label setAttributedText:v10];
    }

    else
    {
      [(UILabel *)self->_label setText:0];
    }

    [(_NTKCFaceDetailCollectionCellLabel *)self sizeToFit];
    [(_NTKCFaceDetailCollectionCellLabel *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  text = [(UILabel *)self->_label text];
  v7 = [text length];

  if (v7)
  {
    font = [(UILabel *)self->_label font];
    _numberOfLines = [(_NTKCFaceDetailCollectionCellLabel *)self _numberOfLines];
    [(_NTKCFaceDetailCollectionCellLabel *)self _textBounds];
    if (_numberOfLines <= 2)
    {
      v14 = dbl_22DCE7CA8[_numberOfLines];
      height = dbl_22DCE7CC0[_numberOfLines];
      CGRectGetWidth(*&v10);
      UICeilToViewScale();
      width = v15 + v14;
    }

    if (width < height)
    {
      width = height;
    }

    [(UILabel *)self->_label setFont:font];
    [(UILabel *)self->_label setFrame:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), width, height];
  }

  v16 = width;
  v17 = height;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = _NTKCFaceDetailCollectionCellLabel;
  [(_NTKCFaceDetailCollectionCellLabel *)&v18 layoutSubviews];
  [(_NTKCFaceDetailCollectionCellLabel *)self bounds];
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  v7 = CGRectGetHeight(v19) <= 19.0;
  v8 = x;
  v9 = y;
  v10 = width;
  v11 = height;
  if (!v7)
  {
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    *&v8 = CGRectInset(v20, 6.0, 0.0);
  }

  [(UILabel *)self->_label setFrame:v8, v9, v10, v11];
  [(CAShapeLayer *)self->_background setFrame:x, y, width, height];
  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  deviceCategory = [currentDevice deviceCategory];

  v14 = 3.0;
  if (deviceCategory != 1)
  {
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v15 = CGRectGetHeight(v21);
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    v16 = CGRectGetWidth(v22);
    if (v15 < v16)
    {
      v16 = v15;
    }

    v14 = v16 * 0.5;
  }

  v17 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:x cornerRadius:{y, width, height, v14}];
  -[CAShapeLayer setPath:](self->_background, "setPath:", [v17 CGPath]);
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    if (active)
    {
      [(_NTKCFaceDetailCollectionCellLabel *)self _activeFont];
    }

    else
    {
      [(_NTKCFaceDetailCollectionCellLabel *)self _inactiveFont];
    }
    v4 = ;
    [(UILabel *)self->_label setFont:v4];

    if (self->_active)
    {
      [(_NTKCFaceDetailCollectionCellLabel *)self _activeTextColor];
    }

    else
    {
      [(_NTKCFaceDetailCollectionCellLabel *)self _inactiveTextColor];
    }
    v5 = ;
    [(UILabel *)self->_label setTextColor:v5];

    background = self->_background;
    v7 = !self->_active;

    [(CAShapeLayer *)background setHidden:v7];
  }
}

- (int64_t)_numberOfLines
{
  [(_NTKCFaceDetailCollectionCellLabel *)self _textBounds];
  x = v7.origin.x;
  y = v7.origin.y;
  width = v7.size.width;
  height = v7.size.height;
  if (CGRectGetHeight(v7) > 38.0)
  {
    return 2;
  }

  v8.origin.x = x;
  v8.origin.y = y;
  v8.size.width = width;
  v8.size.height = height;
  return CGRectGetHeight(v8) > 19.0;
}

- (CGRect)_textBounds
{
  usesShortTextWidth = self->_usesShortTextWidth;
  v3 = NTKCScreenStyle();
  v4 = 90.6666667;
  if (usesShortTextWidth)
  {
    v4 = 83.3333333;
  }

  v5 = 93.0;
  if (usesShortTextWidth)
  {
    v5 = 75.0;
  }

  if (v3 == 1)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  _activeFont = [(_NTKCFaceDetailCollectionCellLabel *)self _activeFont];
  [(UILabel *)self->_label setFont:_activeFont];

  attributedText = [(UILabel *)self->_label attributedText];
  [attributedText boundingRectWithSize:8 options:0 context:{v6, 1.79769313e308}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v27.origin.x = v10;
  v27.origin.y = v12;
  v27.size.width = v14;
  v27.size.height = v16;
  if (CGRectGetWidth(v27) > v6)
  {
    attributedText2 = [(UILabel *)self->_label attributedText];
    [attributedText2 boundingRectWithSize:9 options:0 context:{v6, 1.79769313e308}];
    v10 = v18;
    v12 = v19;
    v14 = v20;
    v16 = v21;
  }

  v22 = v10;
  v23 = v12;
  v24 = v14;
  v25 = v16;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

@end