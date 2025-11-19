@interface CNFRegShadowView
- (CGRect)cachedBounds;
- (CNFRegShadowView)initWithFrame:(CGRect)a3 shadowImage:(id)a4;
- (void)drawRect:(CGRect)a3;
@end

@implementation CNFRegShadowView

- (CNFRegShadowView)initWithFrame:(CGRect)a3 shadowImage:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = CNFRegShadowView;
  v10 = [(CNFRegShadowView *)&v13 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    [(CNFRegShadowView *)v10 setShadowImage:v9];
    [(CNFRegShadowView *)v11 setOpaque:0];
  }

  return v11;
}

- (void)drawRect:(CGRect)a3
{
  [(CNFRegShadowView *)self bounds:a3.origin.x];
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

  v16 = [(CNFRegShadowView *)self cachedPath];

  if (!v16)
  {
    [(CNFRegShadowView *)self setCachedBounds:v5, v7, v9, v11];
    v17 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:3 byRoundingCorners:v5 cornerRadii:{v7, v9, v11, 10.0, 10.0}];
    [(CNFRegShadowView *)self setCachedPath:v17];
  }

  v18 = [(CNFRegShadowView *)self cachedPath];
  [v18 addClip];

  v19 = [(CNFRegShadowView *)self shadowImage];
  [(CNFRegShadowView *)self bounds];
  [v19 drawInRect:?];
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