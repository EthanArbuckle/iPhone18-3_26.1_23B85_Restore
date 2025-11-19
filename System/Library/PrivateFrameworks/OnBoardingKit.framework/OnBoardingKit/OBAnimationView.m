@interface OBAnimationView
- (CGRect)preferredFrame;
- (CGSize)intrinsicContentSize;
- (OBAnimationAppearanceChangeDelegate)appearanceChangeDelegate;
- (OBAnimationView)initWithFrame:(CGRect)a3;
- (double)defaultScale;
- (void)_setPackage:(id)a3;
- (void)layoutSubviews;
- (void)setPackage:(id)a3 sizingTransformScale:(double)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation OBAnimationView

- (OBAnimationView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = OBAnimationView;
  result = [(OBAnimationView *)&v8 initWithFrame:?];
  if (result)
  {
    result->_preferredFrame.origin.x = x;
    result->_preferredFrame.origin.y = y;
    result->_preferredFrame.size.width = width;
    result->_preferredFrame.size.height = height;
  }

  return result;
}

- (double)defaultScale
{
  [(OBAnimationView *)self preferredFrame];
  v4 = v3;
  v5 = [(OBAnimationView *)self package];
  v6 = [v5 rootLayer];
  [v6 size];
  v8 = v4 / v7;

  return v8;
}

- (void)setPackage:(id)a3 sizingTransformScale:(double)a4
{
  v7 = a3;
  [(OBAnimationView *)self setScale:a4];
  if (self->_package != v7)
  {
    objc_storeStrong(&self->_package, a3);
    [(OBAnimationView *)self _setPackage:v7];
  }
}

- (void)_setPackage:(id)a3
{
  v4 = a3;
  v5 = [(OBAnimationView *)self packageLayer];
  [v5 removeFromSuperlayer];

  v6 = [v4 rootLayer];
  [(OBAnimationView *)self setPackageLayer:v6];

  v7 = [v4 isGeometryFlipped];
  v8 = [(OBAnimationView *)self packageLayer];
  [v8 setGeometryFlipped:v7];

  v9 = *MEMORY[0x1E6979DE8];
  v10 = [(OBAnimationView *)self packageLayer];
  [v10 setContentsGravity:v9];

  v11 = [(OBAnimationView *)self packageLayer];
  [v11 setMasksToBounds:0];

  v12 = *MEMORY[0x1E69797D8];
  v13 = [(OBAnimationView *)self packageLayer];
  [v13 setFillMode:v12];

  v14 = [(OBAnimationView *)self layer];
  [v14 setShouldRasterize:0];

  v15 = [(OBAnimationView *)self layer];
  v16 = [(OBAnimationView *)self packageLayer];
  [v15 addSublayer:v16];

  [(OBAnimationView *)self invalidateIntrinsicContentSize];

  [(OBAnimationView *)self setNeedsDisplay];
}

- (void)layoutSubviews
{
  v3 = [(OBAnimationView *)self layer];
  [v3 setMasksToBounds:0];

  v4 = [(OBAnimationView *)self packageLayer];
  v5 = [(OBAnimationView *)self superview];
  [v5 center];
  [v4 setPosition:?];

  [(OBAnimationView *)self scale];
  v7 = v6;
  [(OBAnimationView *)self scale];
  if (v8 == 0.0)
  {
    [(OBAnimationView *)self bounds];
    v10 = v9;
    v11 = [(OBAnimationView *)self packageLayer];
    [v11 bounds];
    v7 = v10 / v12;
  }

  v13 = [(OBAnimationView *)self packageLayer];
  v14 = [(OBAnimationView *)self packageLayer];
  v15 = v14;
  if (v14)
  {
    [v14 contentsTransform];
  }

  else
  {
    memset(&v16, 0, sizeof(v16));
  }

  CGAffineTransformScale(&v17, &v16, v7, v7);
  [v13 setAffineTransform:&v17];
}

- (CGSize)intrinsicContentSize
{
  v3 = [(OBAnimationView *)self packageLayer];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  [(OBAnimationView *)self scale];
  if (v8 == 0.0)
  {
    [(OBAnimationView *)self preferredFrame];
    v10 = v9;
    v11 = [(OBAnimationView *)self packageLayer];
    [v11 bounds];
    v13 = v10 / v12;
  }

  else
  {
    v13 = v8;
  }

  v14 = [(OBAnimationView *)self packageLayer];
  v15 = v14;
  if (v14)
  {
    [v14 contentsTransform];
  }

  else
  {
    memset(&v20, 0, sizeof(v20));
  }

  CGAffineTransformScale(&v21, &v20, v13, v13);
  v16 = v7 * v21.c + v21.a * v5;

  [(OBAnimationView *)self preferredFrame];
  v18 = v17;
  v19 = v16;
  result.height = v18;
  result.width = v19;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v9 = a3;
  if (!v9 || (v4 = [v9 userInterfaceStyle], -[OBAnimationView traitCollection](self, "traitCollection"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "userInterfaceStyle"), v5, v7 = v9, v4 != v6))
  {
    v8 = [(OBAnimationView *)self appearanceChangeDelegate];
    [v8 updateAnimationForAppearanceChange];

    v7 = v9;
  }
}

- (OBAnimationAppearanceChangeDelegate)appearanceChangeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_appearanceChangeDelegate);

  return WeakRetained;
}

- (CGRect)preferredFrame
{
  x = self->_preferredFrame.origin.x;
  y = self->_preferredFrame.origin.y;
  width = self->_preferredFrame.size.width;
  height = self->_preferredFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end