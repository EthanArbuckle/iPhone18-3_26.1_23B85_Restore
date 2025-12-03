@interface CLKUILegibilityLabel
- (CLKUILegibilityLabel)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)_contentInsetsFromFonts;
- (void)_updateShadow;
- (void)setLegibilityEnabled:(BOOL)enabled;
- (void)setShadowBlur:(double)blur;
- (void)setShadowColor:(id)color;
@end

@implementation CLKUILegibilityLabel

- (CLKUILegibilityLabel)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = CLKUILegibilityLabel;
  v3 = [(CLKUILegibilityLabel *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_sBlur = 5.0;
    v5 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.6];
    sColor = v4->_sColor;
    v4->_sColor = v5;
  }

  return v4;
}

- (void)setShadowBlur:(double)blur
{
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    self->_sBlur = blur;
    if (self->_legibilityEnabled)
    {

      [(CLKUILegibilityLabel *)self _updateShadow];
    }
  }
}

- (void)setShadowColor:(id)color
{
  colorCopy = color;
  if ((CLKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_sColor, color);
    if (self->_legibilityEnabled)
    {
      [(CLKUILegibilityLabel *)self _updateShadow];
    }
  }
}

- (void)setLegibilityEnabled:(BOOL)enabled
{
  if (self->_legibilityEnabled != enabled)
  {
    self->_legibilityEnabled = enabled;
    [(CLKUILegibilityLabel *)self _updateShadow];
  }
}

- (void)_updateShadow
{
  if (self->_legibilityEnabled)
  {
    sColor = self->_sColor;
    v9.receiver = self;
    v9.super_class = CLKUILegibilityLabel;
    [(CLKUILegibilityLabel *)&v9 setShadowColor:sColor];
    sBlur = self->_sBlur;
    v8.receiver = self;
    v8.super_class = CLKUILegibilityLabel;
    [(CLKUILegibilityLabel *)&v8 setShadowBlur:sBlur];
    v7.receiver = self;
    v7.super_class = CLKUILegibilityLabel;
    [(CLKUILegibilityLabel *)&v7 setShadowOffset:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CLKUILegibilityLabel;
    [(CLKUILegibilityLabel *)&v6 setShadowColor:0];
    v5.receiver = self;
    v5.super_class = CLKUILegibilityLabel;
    [(CLKUILegibilityLabel *)&v5 setShadowBlur:0.0];
  }

  [(CLKUILegibilityLabel *)self _invalidateLabelSize];
}

- (UIEdgeInsets)_contentInsetsFromFonts
{
  v8.receiver = self;
  v8.super_class = CLKUILegibilityLabel;
  [(CLKUILegibilityLabel *)&v8 _contentInsetsFromFonts];
  if (self->_legibilityEnabled)
  {
    sBlur = self->_sBlur;
    v5 = v5 - sBlur;
    v3 = v3 - sBlur;
    v4 = v4 - sBlur;
    v6 = v6 - sBlur;
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

@end