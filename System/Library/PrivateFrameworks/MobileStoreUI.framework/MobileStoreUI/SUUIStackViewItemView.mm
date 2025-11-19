@interface SUUIStackViewItemView
- (void)drawRect:(CGRect)a3;
- (void)setBorderColor:(id)a3;
- (void)setImage:(id)a3;
- (void)setShouldFlipImageHorizontal:(BOOL)a3;
- (void)setShouldFlipImageVertical:(BOOL)a3;
@end

@implementation SUUIStackViewItemView

- (void)setBorderColor:(id)a3
{
  if (self->_borderColor != a3)
  {
    v4 = [a3 copy];
    borderColor = self->_borderColor;
    self->_borderColor = v4;

    [(SUUIStackViewItemView *)self setNeedsDisplay];
  }
}

- (void)setImage:(id)a3
{
  v5 = a3;
  if (self->_image != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_image, a3);
    [(SUUIStackViewItemView *)self setNeedsDisplay];
    v5 = v6;
  }
}

- (void)setShouldFlipImageHorizontal:(BOOL)a3
{
  if (self->_shouldFlipImageHorizontal != a3)
  {
    self->_shouldFlipImageHorizontal = a3;
    [(SUUIStackViewItemView *)self setNeedsDisplay];
  }
}

- (void)setShouldFlipImageVertical:(BOOL)a3
{
  if (self->_shouldFlipImageVertical != a3)
  {
    self->_shouldFlipImageVertical = a3;
    [(SUUIStackViewItemView *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)a3
{
  [(SUUIStackViewItemView *)self bounds:a3.origin.x];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  if (self->_shouldFlipImageHorizontal || self->_shouldFlipImageVertical)
  {
    v13 = 1.0;
    if (self->_shouldFlipImageHorizontal)
    {
      v14 = -1.0;
    }

    else
    {
      v14 = 1.0;
    }

    if (self->_shouldFlipImageVertical || !self->_shouldFlipImageHorizontal)
    {
      v13 = -1.0;
    }

    CGContextScaleCTM(CurrentContext, v14, v13);
    v15 = -v9;
    v16 = 0.0;
    if (!self->_shouldFlipImageHorizontal)
    {
      v15 = 0.0;
    }

    if (self->_shouldFlipImageVertical)
    {
      v16 = -v11;
    }

    CGContextTranslateCTM(CurrentContext, v15, v16);
  }

  [(UIImage *)self->_image drawInRect:v5, v7, v9, v11];
  CGContextRestoreGState(CurrentContext);
  borderColor = self->_borderColor;
  if (borderColor)
  {
    v18 = *&drawRect__borderWidth;
    if (*&drawRect__borderWidth == 0.0)
    {
      v19 = [MEMORY[0x277D759A0] mainScreen];
      [v19 scale];
      *&drawRect__borderWidth = 1.0 / v20;

      borderColor = self->_borderColor;
    }

    [(UIColor *)borderColor set];
    *&v26.size.height = drawRect__borderWidth;
    v26.origin.x = 0.0;
    v26.origin.y = 0.0;
    v26.size.width = v9;
    UIRectFillUsingBlendMode(v26, kCGBlendModeNormal);
    *&v27.origin.y = drawRect__borderWidth;
    v27.origin.x = v9 - *&drawRect__borderWidth;
    v27.size.height = v11 - *&drawRect__borderWidth * 2.0;
    *&v27.size.width = drawRect__borderWidth;
    UIRectFillUsingBlendMode(v27, kCGBlendModeNormal);
    *&v28.size.height = drawRect__borderWidth;
    v28.origin.y = v11 - *&drawRect__borderWidth;
    v28.origin.x = 0.0;
    v28.size.width = v9;
    UIRectFillUsingBlendMode(v28, kCGBlendModeNormal);
    v21 = drawRect__borderWidth;
    v22 = v11 - *&drawRect__borderWidth * 2.0;
    v23 = 0;
    v24 = drawRect__borderWidth;

    UIRectFillUsingBlendMode(*&v23, kCGBlendModeNormal);
  }
}

@end