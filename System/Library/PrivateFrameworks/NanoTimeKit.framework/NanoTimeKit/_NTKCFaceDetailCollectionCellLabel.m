@interface _NTKCFaceDetailCollectionCellLabel
- (CGRect)_textBounds;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_NTKCFaceDetailCollectionCellLabel)init;
- (int64_t)_numberOfLines;
- (void)layoutSubviews;
- (void)setActive:(BOOL)a3;
- (void)setText:(id)a3;
- (void)setUsesShortTextWidth:(BOOL)a3;
@end

@implementation _NTKCFaceDetailCollectionCellLabel

- (_NTKCFaceDetailCollectionCellLabel)init
{
  v12.receiver = self;
  v12.super_class = _NTKCFaceDetailCollectionCellLabel;
  v2 = [(_NTKCFaceDetailCollectionCellLabel *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CD9F90] layer];
    background = v2->_background;
    v2->_background = v3;

    v5 = NTKCActiveColor();
    -[CAShapeLayer setFillColor:](v2->_background, "setFillColor:", [v5 CGColor]);

    [(CAShapeLayer *)v2->_background setHidden:1];
    v6 = [(_NTKCFaceDetailCollectionCellLabel *)v2 layer];
    [v6 addSublayer:v2->_background];

    v7 = objc_opt_new();
    label = v2->_label;
    v2->_label = v7;

    [(UILabel *)v2->_label setAllowsDefaultTighteningForTruncation:1];
    v9 = [(_NTKCFaceDetailCollectionCellLabel *)v2 _inactiveFont];
    [(UILabel *)v2->_label setFont:v9];

    v10 = [(_NTKCFaceDetailCollectionCellLabel *)v2 _inactiveTextColor];
    [(UILabel *)v2->_label setTextColor:v10];

    [(UILabel *)v2->_label setNumberOfLines:3];
    [(_NTKCFaceDetailCollectionCellLabel *)v2 addSubview:v2->_label];
  }

  return v2;
}

- (void)setUsesShortTextWidth:(BOOL)a3
{
  if (self->_usesShortTextWidth != a3)
  {
    self->_usesShortTextWidth = a3;
    [(_NTKCFaceDetailCollectionCellLabel *)self sizeToFit];

    [(_NTKCFaceDetailCollectionCellLabel *)self setNeedsLayout];
  }
}

- (void)setText:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(UILabel *)self->_label text];
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    if (v4)
    {
      v7 = [MEMORY[0x277D74240] NTKHyphenationParagraphStyle];
      [v7 setAlignment:1];
      v8 = objc_alloc(MEMORY[0x277CCA898]);
      v11 = *MEMORY[0x277D74118];
      v12[0] = v7;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      v10 = [v8 initWithString:v4 attributes:v9];

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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(UILabel *)self->_label text];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [(UILabel *)self->_label font];
    v9 = [(_NTKCFaceDetailCollectionCellLabel *)self _numberOfLines];
    [(_NTKCFaceDetailCollectionCellLabel *)self _textBounds];
    if (v9 <= 2)
    {
      v14 = dbl_22DCE7CA8[v9];
      height = dbl_22DCE7CC0[v9];
      CGRectGetWidth(*&v10);
      UICeilToViewScale();
      width = v15 + v14;
    }

    if (width < height)
    {
      width = height;
    }

    [(UILabel *)self->_label setFont:v8];
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
  v12 = [MEMORY[0x277CBBAE8] currentDevice];
  v13 = [v12 deviceCategory];

  v14 = 3.0;
  if (v13 != 1)
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

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    if (a3)
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

  v7 = [(_NTKCFaceDetailCollectionCellLabel *)self _activeFont];
  [(UILabel *)self->_label setFont:v7];

  v8 = [(UILabel *)self->_label attributedText];
  [v8 boundingRectWithSize:8 options:0 context:{v6, 1.79769313e308}];
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
    v17 = [(UILabel *)self->_label attributedText];
    [v17 boundingRectWithSize:9 options:0 context:{v6, 1.79769313e308}];
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