@interface CNFRegShadowView
- (CGRect)cachedBounds;
- (CNFRegShadowView)initWithFrame:(CGRect)frame shadowImage:(id)image;
- (void)drawRect:(CGRect)rect;
@end

@implementation CNFRegShadowView

- (CNFRegShadowView)initWithFrame:(CGRect)frame shadowImage:(id)image
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  imageCopy = image;
  v13.receiver = self;
  v13.super_class = CNFRegShadowView;
  height = [(CNFRegShadowView *)&v13 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(CNFRegShadowView *)height setShadowImage:imageCopy];
    [(CNFRegShadowView *)v11 setOpaque:0];
  }

  return v11;
}

- (void)drawRect:(CGRect)rect
{
  [(CNFRegShadowView *)self bounds:rect.origin.x];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(CNFRegShadowView *)self cachedBounds];
  v22.origin.x = v12;
  v22.origin.y = v13;
  v22.size.width = v14;
  v22.size.height = v15;
  v21.origin.x = v5;
  v21.origin.y = v7;
  v21.size.width = v9;
  v21.size.height = v11;
  if (!CGRectEqualToRect(v21, v22))
  {
    [(CNFRegShadowView *)self setCachedPath:0];
  }

  cachedPath = [(CNFRegShadowView *)self cachedPath];

  if (!cachedPath)
  {
    [(CNFRegShadowView *)self setCachedBounds:v5, v7, v9, v11];
    v17 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:3 byRoundingCorners:v5 cornerRadii:{v7, v9, v11, 10.0, 10.0}];
    [(CNFRegShadowView *)self setCachedPath:v17];
  }

  cachedPath2 = [(CNFRegShadowView *)self cachedPath];
  [cachedPath2 addClip];

  shadowImage = [(CNFRegShadowView *)self shadowImage];
  [(CNFRegShadowView *)self bounds];
  [shadowImage drawInRect:?];
}

- (CGRect)cachedBounds
{
  x = self->_cachedBounds.origin.x;
  y = self->_cachedBounds.origin.y;
  width = self->_cachedBounds.size.width;
  height = self->_cachedBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end