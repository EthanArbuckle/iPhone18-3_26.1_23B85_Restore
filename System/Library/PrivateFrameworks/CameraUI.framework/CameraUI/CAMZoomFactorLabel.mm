@interface CAMZoomFactorLabel
+ (id)_minimizedImageWithScale:(double)scale;
- (CAMZoomFactorLabel)initWithFrame:(CGRect)frame;
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
- (void)setMinimized:(BOOL)minimized;
- (void)setPreferDefaultSizing:(BOOL)sizing;
- (void)setShadowStrength:(int64_t)strength;
- (void)setShowZoomFactorSymbol:(BOOL)symbol;
- (void)setTextColor:(id)color;
- (void)setUseLeadingZero:(BOOL)zero;
- (void)setZoomFactor:(double)factor;
@end

@implementation CAMZoomFactorLabel

- (CAMZoomFactorLabel)initWithFrame:(CGRect)frame
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = CAMZoomFactorLabel;
  v3 = [(CAMZoomFactorLabel *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v4->__label setTextColor:whiteColor];

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
    preferredContentSizeCategory = *MEMORY[0x1E69DDC70];
  }

  else
  {
    traitCollection = [(CAMZoomFactorLabel *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  }

  [CAMZoomButton fontSizeForContentSize:preferredContentSizeCategory];
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
  _label = [(CAMZoomFactorLabel *)self _label];
  textColor = [_label textColor];

  return textColor;
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  _label = [(CAMZoomFactorLabel *)self _label];
  [_label setTextColor:colorCopy];
}

- (void)setUseLeadingZero:(BOOL)zero
{
  if (self->_useLeadingZero != zero)
  {
    self->_useLeadingZero = zero;
    [(CAMZoomFactorLabel *)self _updateLabelText];
  }
}

- (void)setPreferDefaultSizing:(BOOL)sizing
{
  if (self->_preferDefaultSizing != sizing)
  {
    self->_preferDefaultSizing = sizing;
    [(CAMZoomFactorLabel *)self _updateFont];
  }
}

- (void)setShadowStrength:(int64_t)strength
{
  if (self->_shadowStrength != strength)
  {
    self->_shadowStrength = strength;
    [(CAMZoomFactorLabel *)self _updateShadow];
  }
}

- (void)_updateShadow
{
  _label = [(CAMZoomFactorLabel *)self _label];
  shadowStrength = [(CAMZoomFactorLabel *)self shadowStrength];
  if (shadowStrength == 2)
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    CEKPixelWidthForView();
    v5 = v7 + 1.0;
    v6 = 1063675494;
  }

  else if (shadowStrength == 1)
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    v5 = 2.0;
    v6 = 1051931443;
  }

  else
  {
    blackColor = 0;
    v5 = 0.0;
    v6 = 0;
  }

  layer = [_label layer];
  [layer setShadowColor:{objc_msgSend(blackColor, "CGColor")}];

  layer2 = [_label layer];
  LODWORD(v10) = v6;
  [layer2 setShadowOpacity:v10];

  layer3 = [_label layer];
  [layer3 setShadowOffset:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];

  layer4 = [_label layer];
  [layer4 setShadowRadius:v5];
}

- (CGSize)intrinsicContentSize
{
  _label = [(CAMZoomFactorLabel *)self _label];
  [(CAMZoomFactorLabel *)self _labelInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [_label intrinsicContentSize];
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
  _label = [(CAMZoomFactorLabel *)self _label];
  [(CAMZoomFactorLabel *)self _labelInsets];
  [_label setFrame:{v4 + v15, v6 + v12, v8 - (v15 + v13), v10 - (v12 + v14)}];
  _minimizedGlyph = [(CAMZoomFactorLabel *)self _minimizedGlyph];
  v17 = _minimizedGlyph;
  if (_minimizedGlyph)
  {
    [_minimizedGlyph bounds];
    traitCollection = [(CAMZoomFactorLabel *)self traitCollection];
    [traitCollection displayScale];
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

- (void)setZoomFactor:(double)factor
{
  if (self->_zoomFactor != factor)
  {
    self->_zoomFactor = factor;
    [(CAMZoomFactorLabel *)self _updateLabelText];
  }
}

- (void)setShowZoomFactorSymbol:(BOOL)symbol
{
  if (self->_showZoomFactorSymbol != symbol)
  {
    self->_showZoomFactorSymbol = symbol;
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
    _label = [(CAMZoomFactorLabel *)self _label];
    [_label setText:v6];
  }
}

- (void)setMinimized:(BOOL)minimized
{
  if (self->_minimized != minimized)
  {
    self->_minimized = minimized;
    [(CAMZoomFactorLabel *)self _updateMinimizedGlyph];
  }
}

- (void)_updateMinimizedGlyph
{
  _minimizedGlyph = [(CAMZoomFactorLabel *)self _minimizedGlyph];
  minimized = [(CAMZoomFactorLabel *)self minimized];
  if (minimized && !_minimizedGlyph)
  {
    v4 = objc_opt_class();
    traitCollection = [(CAMZoomFactorLabel *)self traitCollection];
    [traitCollection displayScale];
    v6 = [v4 _minimizedImageWithScale:?];

    _minimizedGlyph = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v6];
    [(CAMZoomFactorLabel *)self addSubview:_minimizedGlyph];
    [(CAMZoomFactorLabel *)self set_minimizedGlyph:_minimizedGlyph];
  }

  _label = [(CAMZoomFactorLabel *)self _label];
  [_label setAlpha:(minimized ^ 1)];

  [_minimizedGlyph setAlpha:minimized];
}

+ (id)_minimizedImageWithScale:(double)scale
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CAMZoomFactorLabel__minimizedImageWithScale___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  *&block[4] = scale;
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