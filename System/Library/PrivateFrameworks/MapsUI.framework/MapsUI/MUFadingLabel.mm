@interface MUFadingLabel
- (CGRect)_boundingRectWithSize:(CGSize)a3 ignoringLeading:(BOOL)a4;
- (MUFadingLabel)initWithFrame:(CGRect)a3;
- (MUFadingLabelDelegate)delegate;
- (double)_lineHeight;
- (void)_localeDidChangeNotification:(id)a3;
- (void)_preferredContentSizeCategoryDidChange;
- (void)_updateFadeDirection;
- (void)_updateFadeVisibility;
- (void)_updateFadeWidth;
- (void)layoutSubviews;
- (void)setFont:(id)a3;
- (void)setText:(id)a3;
- (void)setTrailingPadding:(double)a3;
- (void)setTruncated:(BOOL)a3;
@end

@implementation MUFadingLabel

- (MUFadingLabelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_localeDidChangeNotification:(id)a3
{
  [(MUFadingLabel *)self _updateFadeWidth];

  [(MUFadingLabel *)self _updateFadeDirection];
}

- (void)setTrailingPadding:(double)a3
{
  if (self->_trailingPadding != a3)
  {
    self->_trailingPadding = a3;
    [(MUFadingLabel *)self _updateFadeWidth];
  }
}

- (void)setTruncated:(BOOL)a3
{
  if (self->_truncated != a3)
  {
    self->_truncated = a3;
    if (a3)
    {
      maskLayer = self->_maskLayer;
    }

    else
    {
      maskLayer = 0;
    }

    v6 = [(MUFadingLabel *)self layer];
    [v6 setMask:maskLayer];

    v7 = [(MUFadingLabel *)self delegate];
    [v7 fadingLabelTruncationChanged:self];
  }
}

- (CGRect)_boundingRectWithSize:(CGSize)a3 ignoringLeading:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
  v26[1] = *MEMORY[0x1E69E9840];
  v8 = [(MUFadingLabel *)self text];
  if (v4)
  {
    v9 = 33;
  }

  else
  {
    v9 = 35;
  }

  v25 = *MEMORY[0x1E69DB648];
  v10 = [(MUFadingLabel *)self font];
  v26[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  [v8 boundingRectWithSize:v9 options:v11 attributes:0 context:{width, height}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = *MEMORY[0x1E69E9840];
  v21 = v13;
  v22 = v15;
  v23 = v17;
  v24 = v19;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (double)_lineHeight
{
  [(MUFadingLabel *)self _firstBaselineOffsetFromTop];
  v4 = v3;
  [(MUFadingLabel *)self _baselineOffsetFromBottom];
  v6 = v5 + v4;
  v7 = [(MUFadingLabel *)self font];
  [v7 lineHeight];
  v9 = v8;

  return fmax(v6, v9);
}

- (void)_updateFadeVisibility
{
  v4 = [(MUFadingLabel *)self font];
  [v4 leading];
  [(MUFadingLabel *)self setTruncated:[(MUFadingLabel *)self isTextTruncatedIgnoringLeading:v3 < 0.0]];
}

- (void)_updateFadeDirection
{
  v3 = [(MUFadingLabel *)self effectiveUserInterfaceLayoutDirection];
  gradientLayer = self->_gradientLayer;
  if (v3 == 1)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  if (v3 == 1)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  [(CAGradientLayer *)self->_gradientLayer setStartPoint:v5, 0.5];
  v7 = self->_gradientLayer;

  [(CAGradientLayer *)v7 setEndPoint:v6, 0.5];
}

- (void)_updateFadeWidth
{
  v25[4] = *MEMORY[0x1E69E9840];
  [(MUFadingLabel *)self bounds];
  [(CALayer *)self->_maskLayer setFrame:?];
  [(MUFadingLabel *)self bounds];
  [(CALayer *)self->_containerLayer setFrame:?];
  [(MUFadingLabel *)self _lineHeight];
  v4 = v3;
  [(MUFadingLabel *)self bounds];
  v6 = v5 - v4;
  [(MUFadingLabel *)self bounds];
  [(CAGradientLayer *)self->_gradientLayer setFrame:0.0, v6];
  [(MUFadingLabel *)self bounds];
  v8 = v7;
  [(MUFadingLabel *)self bounds];
  [(CALayer *)self->_multiLineFillLayer setFrame:0.0, 0.0, v8, v9 - v4];
  v10 = [(MUFadingLabel *)self font];
  v11 = [(MUFadingLabel *)self traitCollection];
  v12 = [v10 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v11];

  [(MUFadingLabel *)self trailingPadding];
  v14 = v13;
  [(MUFadingLabel *)self frame];
  v16 = v14 / v15;
  [v12 _bodyLeading];
  v18 = fmin(v17 + v17, 100.0);
  [(MUFadingLabel *)self frame];
  v25[0] = &unk_1F450E490;
  v20 = 1.0 - v16;
  v21 = [MEMORY[0x1E696AD98] numberWithDouble:v20 - v18 / v19];
  v25[1] = v21;
  v22 = [MEMORY[0x1E696AD98] numberWithDouble:v20];
  v25[2] = v22;
  v25[3] = &unk_1F450E4C0;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
  [(CAGradientLayer *)self->_gradientLayer setLocations:v23];

  [(CALayer *)self->_maskLayer setNeedsDisplay];
  [(CALayer *)self->_containerLayer setNeedsDisplay];
  [(CAGradientLayer *)self->_gradientLayer setNeedsDisplay];
  [(CALayer *)self->_multiLineFillLayer setNeedsDisplay];

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_preferredContentSizeCategoryDidChange
{
  [(MUFadingLabel *)self _updateFadeWidth];

  [(MUFadingLabel *)self _updateFadeVisibility];
}

- (void)setText:(id)a3
{
  v4.receiver = self;
  v4.super_class = MUFadingLabel;
  [(MUFadingLabel *)&v4 setText:a3];
  [(MUFadingLabel *)self _updateFadeVisibility];
}

- (void)setFont:(id)a3
{
  v4.receiver = self;
  v4.super_class = MUFadingLabel;
  [(MUFadingLabel *)&v4 setFont:a3];
  [(MUFadingLabel *)self _updateFadeWidth];
  [(MUFadingLabel *)self _updateFadeVisibility];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MUFadingLabel;
  [(MUFadingLabel *)&v3 layoutSubviews];
  [(MUFadingLabel *)self _updateFadeWidth];
  [(MUFadingLabel *)self _updateFadeVisibility];
}

- (MUFadingLabel)initWithFrame:(CGRect)a3
{
  v32[4] = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = MUFadingLabel;
  v3 = [(MUFadingLabel *)&v29 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUFadingLabel *)v3 setLineBreakStrategy:0];
    [(MUFadingLabel *)v4 setLineBreakMode:2];
    v5 = objc_alloc_init(MEMORY[0x1E6979380]);
    gradientLayer = v4->_gradientLayer;
    v4->_gradientLayer = v5;

    v7 = *MEMORY[0x1E69798E8];
    [(CAGradientLayer *)v4->_gradientLayer setCompositingFilter:*MEMORY[0x1E69798E8]];
    [(CAGradientLayer *)v4->_gradientLayer setLocations:&unk_1F450E368];
    v8 = [MEMORY[0x1E69DC888] whiteColor];
    v32[0] = [v8 CGColor];
    v9 = [MEMORY[0x1E69DC888] whiteColor];
    v32[1] = [v9 CGColor];
    v10 = [MEMORY[0x1E69DC888] clearColor];
    v32[2] = [v10 CGColor];
    v11 = [MEMORY[0x1E69DC888] clearColor];
    v32[3] = [v11 CGColor];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
    [(CAGradientLayer *)v4->_gradientLayer setColors:v12];

    v13 = objc_opt_new();
    multiLineFillLayer = v4->_multiLineFillLayer;
    v4->_multiLineFillLayer = v13;

    v15 = [MEMORY[0x1E69DC888] whiteColor];
    -[CALayer setBackgroundColor:](v4->_multiLineFillLayer, "setBackgroundColor:", [v15 CGColor]);

    [(CALayer *)v4->_multiLineFillLayer setCompositingFilter:v7];
    v16 = objc_opt_new();
    maskLayer = v4->_maskLayer;
    v4->_maskLayer = v16;

    v18 = [MEMORY[0x1E69DC888] whiteColor];
    -[CALayer setBackgroundColor:](v4->_maskLayer, "setBackgroundColor:", [v18 CGColor]);

    v19 = objc_opt_new();
    containerLayer = v4->_containerLayer;
    v4->_containerLayer = v19;

    v21 = [MEMORY[0x1E69DC888] whiteColor];
    -[CALayer setBackgroundColor:](v4->_containerLayer, "setBackgroundColor:", [v21 CGColor]);

    [(CALayer *)v4->_containerLayer setCompositingFilter:v7];
    [(CALayer *)v4->_containerLayer addSublayer:v4->_multiLineFillLayer];
    [(CALayer *)v4->_containerLayer addSublayer:v4->_gradientLayer];
    [(CALayer *)v4->_maskLayer addSublayer:v4->_containerLayer];
    [(MUFadingLabel *)v4 _updateFadeDirection];
    [(MUFadingLabel *)v4 _updateFadeWidth];
    [(MUFadingLabel *)v4 _updateFadeVisibility];
    v31 = objc_opt_class();
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    v23 = [(MUFadingLabel *)v4 registerForTraitChanges:v22 withAction:sel__preferredContentSizeCategoryDidChange];

    v30 = objc_opt_class();
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
    v25 = [(MUFadingLabel *)v4 registerForTraitChanges:v24 withAction:sel__updateFadeDirection];

    v26 = [MEMORY[0x1E696AD88] defaultCenter];
    [v26 addObserver:v4 selector:sel__localeDidChangeNotification_ name:*MEMORY[0x1E695D8F0] object:0];
  }

  v27 = *MEMORY[0x1E69E9840];
  return v4;
}

@end