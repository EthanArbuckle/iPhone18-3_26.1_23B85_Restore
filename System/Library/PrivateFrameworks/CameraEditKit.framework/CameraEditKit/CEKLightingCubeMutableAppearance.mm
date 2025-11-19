@interface CEKLightingCubeMutableAppearance
- (void)setBackground:(CGGradient *)a3;
- (void)setBottomFill:(CGColor *)a3;
- (void)setBottomInnerGlow:(CGGradient *)a3;
- (void)setBottomMask:(CGGradient *)a3;
- (void)setBottomOuterGlow:(CGGradient *)a3;
- (void)setStroke:(CGColor *)a3;
- (void)setTopFill:(CGColor *)a3;
- (void)setTopGlow:(CGGradient *)a3;
- (void)setTopMask:(CGGradient *)a3;
- (void)setTopOver:(CGGradient *)a3;
- (void)setVerticalFillColor:(CGColor *)a3;
@end

@implementation CEKLightingCubeMutableAppearance

- (void)setBackground:(CGGradient *)a3
{
  background = self->super._background;
  if (background != a3)
  {
    CGGradientRelease(background);
    self->super._background = CGGradientRetain(a3);
  }
}

- (void)setTopFill:(CGColor *)a3
{
  topFill = self->super._topFill;
  if (topFill != a3)
  {
    CGColorRelease(topFill);
    self->super._topFill = CGColorRetain(a3);
  }
}

- (void)setTopGlow:(CGGradient *)a3
{
  topGlow = self->super._topGlow;
  if (topGlow != a3)
  {
    CGGradientRelease(topGlow);
    self->super._topGlow = CGGradientRetain(a3);
  }
}

- (void)setTopMask:(CGGradient *)a3
{
  topMask = self->super._topMask;
  if (topMask != a3)
  {
    CGGradientRelease(topMask);
    self->super._topMask = CGGradientRetain(a3);
  }
}

- (void)setBottomFill:(CGColor *)a3
{
  bottomFill = self->super._bottomFill;
  if (bottomFill != a3)
  {
    CGColorRelease(bottomFill);
    self->super._bottomFill = CGColorRetain(a3);
  }
}

- (void)setBottomInnerGlow:(CGGradient *)a3
{
  bottomInnerGlow = self->super._bottomInnerGlow;
  if (bottomInnerGlow != a3)
  {
    CGGradientRelease(bottomInnerGlow);
    self->super._bottomInnerGlow = CGGradientRetain(a3);
  }
}

- (void)setBottomOuterGlow:(CGGradient *)a3
{
  bottomOuterGlow = self->super._bottomOuterGlow;
  if (bottomOuterGlow != a3)
  {
    CGGradientRelease(bottomOuterGlow);
    self->super._bottomOuterGlow = CGGradientRetain(a3);
  }
}

- (void)setBottomMask:(CGGradient *)a3
{
  bottomMask = self->super._bottomMask;
  if (bottomMask != a3)
  {
    CGGradientRelease(bottomMask);
    self->super._bottomMask = CGGradientRetain(a3);
  }
}

- (void)setTopOver:(CGGradient *)a3
{
  topOver = self->super._topOver;
  if (topOver != a3)
  {
    CGGradientRelease(topOver);
    self->super._topOver = CGGradientRetain(a3);
  }
}

- (void)setVerticalFillColor:(CGColor *)a3
{
  verticalFillColor = self->super._verticalFillColor;
  if (verticalFillColor != a3)
  {
    CGColorRelease(verticalFillColor);
    self->super._verticalFillColor = CGColorRetain(a3);
  }
}

- (void)setStroke:(CGColor *)a3
{
  stroke = self->super._stroke;
  if (stroke != a3)
  {
    CGColorRelease(stroke);
    self->super._stroke = CGColorRetain(a3);
  }
}

@end