@interface CEKLightingCubeMutableAppearance
- (void)setBackground:(CGGradient *)background;
- (void)setBottomFill:(CGColor *)fill;
- (void)setBottomInnerGlow:(CGGradient *)glow;
- (void)setBottomMask:(CGGradient *)mask;
- (void)setBottomOuterGlow:(CGGradient *)glow;
- (void)setStroke:(CGColor *)stroke;
- (void)setTopFill:(CGColor *)fill;
- (void)setTopGlow:(CGGradient *)glow;
- (void)setTopMask:(CGGradient *)mask;
- (void)setTopOver:(CGGradient *)over;
- (void)setVerticalFillColor:(CGColor *)color;
@end

@implementation CEKLightingCubeMutableAppearance

- (void)setBackground:(CGGradient *)background
{
  background = self->super._background;
  if (background != background)
  {
    CGGradientRelease(background);
    self->super._background = CGGradientRetain(background);
  }
}

- (void)setTopFill:(CGColor *)fill
{
  topFill = self->super._topFill;
  if (topFill != fill)
  {
    CGColorRelease(topFill);
    self->super._topFill = CGColorRetain(fill);
  }
}

- (void)setTopGlow:(CGGradient *)glow
{
  topGlow = self->super._topGlow;
  if (topGlow != glow)
  {
    CGGradientRelease(topGlow);
    self->super._topGlow = CGGradientRetain(glow);
  }
}

- (void)setTopMask:(CGGradient *)mask
{
  topMask = self->super._topMask;
  if (topMask != mask)
  {
    CGGradientRelease(topMask);
    self->super._topMask = CGGradientRetain(mask);
  }
}

- (void)setBottomFill:(CGColor *)fill
{
  bottomFill = self->super._bottomFill;
  if (bottomFill != fill)
  {
    CGColorRelease(bottomFill);
    self->super._bottomFill = CGColorRetain(fill);
  }
}

- (void)setBottomInnerGlow:(CGGradient *)glow
{
  bottomInnerGlow = self->super._bottomInnerGlow;
  if (bottomInnerGlow != glow)
  {
    CGGradientRelease(bottomInnerGlow);
    self->super._bottomInnerGlow = CGGradientRetain(glow);
  }
}

- (void)setBottomOuterGlow:(CGGradient *)glow
{
  bottomOuterGlow = self->super._bottomOuterGlow;
  if (bottomOuterGlow != glow)
  {
    CGGradientRelease(bottomOuterGlow);
    self->super._bottomOuterGlow = CGGradientRetain(glow);
  }
}

- (void)setBottomMask:(CGGradient *)mask
{
  bottomMask = self->super._bottomMask;
  if (bottomMask != mask)
  {
    CGGradientRelease(bottomMask);
    self->super._bottomMask = CGGradientRetain(mask);
  }
}

- (void)setTopOver:(CGGradient *)over
{
  topOver = self->super._topOver;
  if (topOver != over)
  {
    CGGradientRelease(topOver);
    self->super._topOver = CGGradientRetain(over);
  }
}

- (void)setVerticalFillColor:(CGColor *)color
{
  verticalFillColor = self->super._verticalFillColor;
  if (verticalFillColor != color)
  {
    CGColorRelease(verticalFillColor);
    self->super._verticalFillColor = CGColorRetain(color);
  }
}

- (void)setStroke:(CGColor *)stroke
{
  stroke = self->super._stroke;
  if (stroke != stroke)
  {
    CGColorRelease(stroke);
    self->super._stroke = CGColorRetain(stroke);
  }
}

@end