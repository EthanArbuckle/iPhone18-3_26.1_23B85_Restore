@interface CAMZoomFactorLabel
+ (id)_minimizedImageWithScale:(double)a3;
- (CAMZoomFactorLabel)initWithFrame:(CGRect)a3;
- (CGSize)intrinsicContentSize;
- (UIColor)textColor;
- (UIEdgeInsets)_labelInsets;
- (id)description;
- (void)_preferredContentSizeCategoryChanged;
- (void)_updateFont;
- (void)_updateLabelText;
- (void)_updateMinimizedGlyph;
- (void)_updateShadow;
- (void)layoutSubviews;
- (void)setMinimized:(BOOL)a3;
- (void)setPreferDefaultSizing:(BOOL)a3;
- (void)setShadowStrength:(int64_t)a3;
- (void)setShowZoomFactorSymbol:(BOOL)a3;
- (void)setTextColor:(id)a3;
- (void)setUseLeadingZero:(BOOL)a3;
- (void)setZoomFactor:(double)a3;
@end

@implementation CAMZoomFactorLabel

- (CAMZoomFactorLabel)initWithFrame:(CGRect)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = CAMZoomFactorLabel;
  v3 = [(CAMZoomFactorLabel *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_showZoomFactorSymbol = 1;
    v3->_useLeadingZero = 1;
    v5 = objc_alloc(MEMORY[0x1E69DCC10]);
    v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    label = v4->__label;
    v4->__label = v6;

    [(UILabel *)v4->__label setTextAlignment:1];
    v8 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v4->__label setTextColor:v8];

    [(UILabel *)v4->__label setAdjustsFontSizeToFitWidth:1];
    [(CAMZoomFactorLabel *)v4 _updateFont];
    [(CAMZoomFactorLabel *)v4 addSubview:v4->__label];
    v14[0] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v10 = [(CAMZoomFactorLabel *)v4 registerForTraitChanges:v9 withAction:sel__preferredContentSizeCategoryChanged];

    v11 = v4;
  }

  return v4;
}

- (void)_updateFont
{
  if ([(CAMZoomFactorLabel *)self preferDefaultSizing])
  {
    v5 = *MEMORY[0x1E69DDC70];
  }

  else
  {
    v3 = [(CAMZoomFactorLabel *)self traitCollection];
    v5 = [v3 preferredContentSizeCategory];
  }

  [CAMZoomButton fontSizeForContentSize:v5];
  v4 = [CAMFont cameraAltTypeFontOfSize:"cameraAltTypeFontOfSize:weight:" weight:?];
  [(UILabel *)self->__label setFont:v4];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CAMZoomFactorLabel;
  v3 = [(CAMZoomFactorLabel *)&v7 description];
  [(CAMZoomFactorLabel *)self zoomFactor];
  v5 = [v3 stringByAppendingFormat:@" zoomFactor=%f", v4];

  return v5;
}

- (UIColor)textColor
{
  v2 = [(CAMZoomFactorLabel *)self _label];
  v3 = [v2 textColor];

  return v3;
}

- (void)setTextColor:(id)a3
{
  v4 = a3;
  v5 = [(CAMZoomFactorLabel *)self _label];
  [v5 setTextColor:v4];
}

- (void)setUseLeadingZero:(BOOL)a3
{
  if (self->_useLeadingZero != a3)
  {
    self->_useLeadingZero = a3;
    [(CAMZoomFactorLabel *)self _updateLabelText];
  }
}

- (void)setPreferDefaultSizing:(BOOL)a3
{
  if (self->_preferDefaultSizing != a3)
  {
    self->_preferDefaultSizing = a3;
    [(CAMZoomFactorLabel *)self _updateFont];
  }
}

- (void)setShadowStrength:(int64_t)a3
{
  if (self->_shadowStrength != a3)
  {
    self->_shadowStrength = a3;
    [(CAMZoomFactorLabel *)self _updateShadow];
  }
}

- (void)_updateShadow
{
  v13 = [(CAMZoomFactorLabel *)self _label];
  v3 = [(CAMZoomFactorLabel *)self shadowStrength];
  if (v3 == 2)
  {
    v4 = [MEMORY[0x1E69DC888] blackColor];
    CEKPixelWidthForView();
    v5 = v7 + 1.0;
    v6 = 1063675494;
  }

  else if (v3 == 1)
  {
    v4 = [MEMORY[0x1E69DC888] blackColor];
    v5 = 2.0;
    v6 = 1051931443;
  }

  else
  {
    v4 = 0;
    v5 = 0.0;
    v6 = 0;
  }

  v8 = [v13 layer];
  [v8 setShadowColor:{objc_msgSend(v4, "CGColor")}];

  v9 = [v13 layer];
  LODWORD(v10) = v6;
  [v9 setShadowOpacity:v10];

  v11 = [v13 layer];
  [v11 setShadowOffset:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];

  v12 = [v13 layer];
  [v12 setShadowRadius:v5];
}

- (CGSize)intrinsicContentSize
{
  v3 = [(CAMZoomFactorLabel *)self _label];
  [(CAMZoomFactorLabel *)self _labelInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 intrinsicContentSize];
  v13 = v12 + v7 + v11;
  v15 = v14 + v5 + v9;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (UIEdgeInsets)_labelInsets
{
  v2 = *(MEMORY[0x1E69DDCE0] + 8);
  v3 = *(MEMORY[0x1E69DDCE0] + 16);
  v4 = *(MEMORY[0x1E69DDCE0] + 24);
  v5 = CAMPixelWidthForView(self) + -1.0;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = CAMZoomFactorLabel;
  [(CAMZoomFactorLabel *)&v21 layoutSubviews];
  [(CAMZoomFactorLabel *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CAMZoomFactorLabel *)self _label];
  [(CAMZoomFactorLabel *)self _labelInsets];
  [v11 setFrame:{v4 + v15, v6 + v12, v8 - (v15 + v13), v10 - (v12 + v14)}];
  v16 = [(CAMZoomFactorLabel *)self _minimizedGlyph];
  v17 = v16;
  if (v16)
  {
    [v16 bounds];
    v18 = [(CAMZoomFactorLabel *)self traitCollection];
    [v18 displayScale];
    v20 = v19;
    UIRectCenteredIntegralRectScale();
    [v17 setFrame:v20];
  }
}

- (void)_preferredContentSizeCategoryChanged
{
  [(CAMZoomFactorLabel *)self _updateFont];

  [(CAMZoomFactorLabel *)self setNeedsLayout];
}

- (void)setZoomFactor:(double)a3
{
  if (self->_zoomFactor != a3)
  {
    self->_zoomFactor = a3;
    [(CAMZoomFactorLabel *)self _updateLabelText];
  }
}

- (void)setShowZoomFactorSymbol:(BOOL)a3
{
  if (self->_showZoomFactorSymbol != a3)
  {
    self->_showZoomFactorSymbol = a3;
    [(CAMZoomFactorLabel *)self _updateLabelText];
  }
}

- (void)_updateLabelText
{
  [(CAMZoomFactorLabel *)self zoomFactor];
  if (v3 != 0.0)
  {
    [(CAMZoomFactorLabel *)self zoomFactor];
    v6 = [CAMZoomButton textForZoomFactor:[(CAMZoomFactorLabel *)self showZoomFactorSymbol] showZoomFactorSymbol:[(CAMZoomFactorLabel *)self useLeadingZero] useLeadingZero:v4];
    v5 = [(CAMZoomFactorLabel *)self _label];
    [v5 setText:v6];
  }
}

- (void)setMinimized:(BOOL)a3
{
  if (self->_minimized != a3)
  {
    self->_minimized = a3;
    [(CAMZoomFactorLabel *)self _updateMinimizedGlyph];
  }
}

- (void)_updateMinimizedGlyph
{
  v8 = [(CAMZoomFactorLabel *)self _minimizedGlyph];
  v3 = [(CAMZoomFactorLabel *)self minimized];
  if (v3 && !v8)
  {
    v4 = objc_opt_class();
    v5 = [(CAMZoomFactorLabel *)self traitCollection];
    [v5 displayScale];
    v6 = [v4 _minimizedImageWithScale:?];

    v8 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v6];
    [(CAMZoomFactorLabel *)self addSubview:v8];
    [(CAMZoomFactorLabel *)self set_minimizedGlyph:v8];
  }

  v7 = [(CAMZoomFactorLabel *)self _label];
  [v7 setAlpha:(v3 ^ 1)];

  [v8 setAlpha:v3];
}

+ (id)_minimizedImageWithScale:(double)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CAMZoomFactorLabel__minimizedImageWithScale___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  *&block[4] = a3;
  if (_minimizedImageWithScale__onceToken != -1)
  {
    dispatch_once(&_minimizedImageWithScale__onceToken, block);
  }

  v3 = _minimizedImageWithScale__dotImage;

  return v3;
}

void __47__CAMZoomFactorLabel__minimizedImageWithScale___block_invoke(uint64_t a1)
{
  v6.width = 3.0;
  v6.height = 3.0;
  UIGraphicsBeginImageContextWithOptions(v6, 0, *(a1 + 32));
  CurrentContext = UIGraphicsGetCurrentContext();
  v2 = [MEMORY[0x1E69DC888] whiteColor];
  [v2 setFill];

  v7.origin.x = 0.0;
  v7.origin.y = 0.0;
  v7.size.width = 3.0;
  v7.size.height = 3.0;
  CGContextFillEllipseInRect(CurrentContext, v7);
  v3 = UIGraphicsGetImageFromCurrentImageContext();
  v4 = _minimizedImageWithScale__dotImage;
  _minimizedImageWithScale__dotImage = v3;

  UIGraphicsEndImageContext();
}

@end