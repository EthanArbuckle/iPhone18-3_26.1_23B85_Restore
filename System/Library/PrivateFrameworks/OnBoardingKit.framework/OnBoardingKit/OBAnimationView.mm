@interface OBAnimationView
- (CGRect)preferredFrame;
- (CGSize)intrinsicContentSize;
- (OBAnimationAppearanceChangeDelegate)appearanceChangeDelegate;
- (OBAnimationView)initWithFrame:(CGRect)frame;
- (double)defaultScale;
- (void)_setPackage:(id)package;
- (void)layoutSubviews;
- (void)setPackage:(id)package sizingTransformScale:(double)scale;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation OBAnimationView

- (OBAnimationView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
  package = [(OBAnimationView *)self package];
  rootLayer = [package rootLayer];
  [rootLayer size];
  v8 = v4 / v7;

  return v8;
}

- (void)setPackage:(id)package sizingTransformScale:(double)scale
{
  packageCopy = package;
  [(OBAnimationView *)self setScale:scale];
  if (self->_package != packageCopy)
  {
    objc_storeStrong(&self->_package, package);
    [(OBAnimationView *)self _setPackage:packageCopy];
  }
}

- (void)_setPackage:(id)package
{
  packageCopy = package;
  packageLayer = [(OBAnimationView *)self packageLayer];
  [packageLayer removeFromSuperlayer];

  rootLayer = [packageCopy rootLayer];
  [(OBAnimationView *)self setPackageLayer:rootLayer];

  isGeometryFlipped = [packageCopy isGeometryFlipped];
  packageLayer2 = [(OBAnimationView *)self packageLayer];
  [packageLayer2 setGeometryFlipped:isGeometryFlipped];

  v9 = *MEMORY[0x1E6979DE8];
  packageLayer3 = [(OBAnimationView *)self packageLayer];
  [packageLayer3 setContentsGravity:v9];

  packageLayer4 = [(OBAnimationView *)self packageLayer];
  [packageLayer4 setMasksToBounds:0];

  v12 = *MEMORY[0x1E69797D8];
  packageLayer5 = [(OBAnimationView *)self packageLayer];
  [packageLayer5 setFillMode:v12];

  layer = [(OBAnimationView *)self layer];
  [layer setShouldRasterize:0];

  layer2 = [(OBAnimationView *)self layer];
  packageLayer6 = [(OBAnimationView *)self packageLayer];
  [layer2 addSublayer:packageLayer6];

  [(OBAnimationView *)self invalidateIntrinsicContentSize];

  [(OBAnimationView *)self setNeedsDisplay];
}

- (void)layoutSubviews
{
  layer = [(OBAnimationView *)self layer];
  [layer setMasksToBounds:0];

  packageLayer = [(OBAnimationView *)self packageLayer];
  superview = [(OBAnimationView *)self superview];
  [superview center];
  [packageLayer setPosition:?];

  [(OBAnimationView *)self scale];
  v7 = v6;
  [(OBAnimationView *)self scale];
  if (v8 == 0.0)
  {
    [(OBAnimationView *)self bounds];
    v10 = v9;
    packageLayer2 = [(OBAnimationView *)self packageLayer];
    [packageLayer2 bounds];
    v7 = v10 / v12;
  }

  packageLayer3 = [(OBAnimationView *)self packageLayer];
  packageLayer4 = [(OBAnimationView *)self packageLayer];
  v15 = packageLayer4;
  if (packageLayer4)
  {
    [packageLayer4 contentsTransform];
  }

  else
  {
    memset(&v16, 0, sizeof(v16));
  }

  CGAffineTransformScale(&v17, &v16, v7, v7);
  [packageLayer3 setAffineTransform:&v17];
}

- (CGSize)intrinsicContentSize
{
  packageLayer = [(OBAnimationView *)self packageLayer];
  [packageLayer bounds];
  v5 = v4;
  v7 = v6;

  [(OBAnimationView *)self scale];
  if (v8 == 0.0)
  {
    [(OBAnimationView *)self preferredFrame];
    v10 = v9;
    packageLayer2 = [(OBAnimationView *)self packageLayer];
    [packageLayer2 bounds];
    v13 = v10 / v12;
  }

  else
  {
    v13 = v8;
  }

  packageLayer3 = [(OBAnimationView *)self packageLayer];
  v15 = packageLayer3;
  if (packageLayer3)
  {
    [packageLayer3 contentsTransform];
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  if (!changeCopy || (v4 = [changeCopy userInterfaceStyle], -[OBAnimationView traitCollection](self, "traitCollection"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "userInterfaceStyle"), v5, v7 = changeCopy, v4 != v6))
  {
    appearanceChangeDelegate = [(OBAnimationView *)self appearanceChangeDelegate];
    [appearanceChangeDelegate updateAnimationForAppearanceChange];

    v7 = changeCopy;
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