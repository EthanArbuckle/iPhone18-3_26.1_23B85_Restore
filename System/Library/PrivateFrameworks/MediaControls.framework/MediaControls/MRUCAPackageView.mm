@interface MRUCAPackageView
- (CATransform3D)permanentTransform;
- (CGSize)intrinsicContentSize;
- (MRUCAPackageView)initWithFrame:(CGRect)frame;
- (void)clear;
- (void)layoutSubviews;
- (void)mru_applyVisualStylingWithColor:(id)color alpha:(double)alpha blendMode:(int64_t)mode;
- (void)mt_applyVisualStyling:(id)styling;
- (void)setAsset:(id)asset;
- (void)setGlyphState:(id)state;
- (void)setGlyphTintColor:(id)color;
- (void)setPackage:(id)package;
- (void)setPermanentTransform:(CATransform3D *)transform;
- (void)setScale:(double)scale;
- (void)updateFilter;
@end

@implementation MRUCAPackageView

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = MRUCAPackageView;
  [(MRUCAPackageView *)&v11 layoutSubviews];
  [(MRUCAPackageView *)self bounds];
  [(UIView *)self->_contentView setFrame:?];
  [(UIView *)self->_contentView bounds];
  UIRectGetCenter();
  [(CALayer *)self->_packageLayer setPosition:?];
  scale = self->_scale;
  v4 = *&self->_permanentTransform.m33;
  *&v9.m31 = *&self->_permanentTransform.m31;
  *&v9.m33 = v4;
  v5 = *&self->_permanentTransform.m43;
  *&v9.m41 = *&self->_permanentTransform.m41;
  *&v9.m43 = v5;
  v6 = *&self->_permanentTransform.m13;
  *&v9.m11 = *&self->_permanentTransform.m11;
  *&v9.m13 = v6;
  v7 = *&self->_permanentTransform.m23;
  *&v9.m21 = *&self->_permanentTransform.m21;
  *&v9.m23 = v7;
  CATransform3DScale(&v10, &v9, scale, scale, 1.0);
  packageLayer = self->_packageLayer;
  v9 = v10;
  [(CALayer *)packageLayer setTransform:&v9];
  [(MRUCAPackageView *)self invalidateIntrinsicContentSize];
}

- (void)updateFilter
{
  v11[1] = *MEMORY[0x1E69E9840];
  glyphTintColor = self->_glyphTintColor;
  if (glyphTintColor && self->_packageLayer)
  {
    traitCollection = [(MRUCAPackageView *)self traitCollection];
    v5 = [(UIColor *)glyphTintColor resolvedColorWithTraitCollection:traitCollection];

    v6 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979888]];
    [v6 setValue:&unk_1F148B220 forKeyPath:*MEMORY[0x1E69799C8]];
    [v6 setValue:&unk_1F148B238 forKeyPath:*MEMORY[0x1E6979990]];
    cGColor = [v5 CGColor];
    [v6 setValue:cGColor forKeyPath:*MEMORY[0x1E6979AA0]];
    v11[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    layer = [(UIView *)self->_contentView layer];
    [layer setFilters:v8];
  }

  else
  {
    layer2 = [(UIView *)self->_contentView layer];
    [layer2 setFilters:0];
  }
}

- (void)clear
{
  [(MRUCAPackageView *)self setAsset:0];
  [(MRUCAPackageView *)self setAccessibilityIdentifier:0];
  v3 = *(MEMORY[0x1E69792E8] + 80);
  v7[4] = *(MEMORY[0x1E69792E8] + 64);
  v7[5] = v3;
  v4 = *(MEMORY[0x1E69792E8] + 112);
  v7[6] = *(MEMORY[0x1E69792E8] + 96);
  v7[7] = v4;
  v5 = *(MEMORY[0x1E69792E8] + 16);
  v7[0] = *MEMORY[0x1E69792E8];
  v7[1] = v5;
  v6 = *(MEMORY[0x1E69792E8] + 48);
  v7[2] = *(MEMORY[0x1E69792E8] + 32);
  v7[3] = v6;
  [(MRUCAPackageView *)self setPermanentTransform:v7];
  [(MRUCAPackageView *)self invalidateIntrinsicContentSize];
}

- (void)mt_applyVisualStyling:(id)styling
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __77__MRUCAPackageView_MRUVisualStylingProviderAdditions__mt_applyVisualStyling___block_invoke;
  v3[3] = &unk_1E76648D8;
  v3[4] = self;
  [styling applyToView:self withColorBlock:v3];
}

- (void)mru_applyVisualStylingWithColor:(id)color alpha:(double)alpha blendMode:(int64_t)mode
{
  colorCopy = color;
  [(MRUCAPackageView *)self setAlpha:alpha];
  [(MRUCAPackageView *)self _setDrawsAsBackdropOverlayWithBlendMode:mode];
  [(MRUCAPackageView *)self setGlyphTintColor:colorCopy];
}

- (MRUCAPackageView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v20[1] = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = MRUCAPackageView;
  v7 = [(MRUCAPackageView *)&v19 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    *(v7 + 54) = 0x3FF0000000000000;
    v9 = MEMORY[0x1E69792E8];
    v10 = *(MEMORY[0x1E69792E8] + 48);
    *(v7 + 504) = *(MEMORY[0x1E69792E8] + 32);
    *(v7 + 520) = v10;
    v11 = v9[1];
    *(v7 + 472) = *v9;
    *(v7 + 488) = v11;
    v12 = v9[7];
    *(v7 + 568) = v9[6];
    *(v7 + 584) = v12;
    v13 = v9[5];
    *(v7 + 536) = v9[4];
    *(v7 + 552) = v13;
    [v7 setUserInteractionEnabled:0];
    v14 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{x, y, width, height}];
    contentView = v8->_contentView;
    v8->_contentView = v14;

    [(MRUCAPackageView *)v8 addSubview:v8->_contentView];
    v20[0] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v17 = [(MRUCAPackageView *)v8 registerForTraitChanges:v16 withAction:sel_updateFilter];
  }

  return v8;
}

- (CGSize)intrinsicContentSize
{
  packageLayer = self->_packageLayer;
  if (packageLayer)
  {
    v4 = [(CALayer *)packageLayer valueForKeyPath:@"transform.scale.x"];
    [v4 floatValue];
    v6 = v5;

    v7 = [(CALayer *)self->_packageLayer valueForKeyPath:@"transform.scale.y"];
    [v7 floatValue];
    v9 = v8;

    [(CALayer *)self->_packageLayer size];
    v11 = v10 * v6;
    [(CALayer *)self->_packageLayer size];
    v13 = v12 * v9;
  }

  else
  {
    v11 = *MEMORY[0x1E695F060];
    v13 = *(MEMORY[0x1E695F060] + 8);
  }

  v14 = v11;
  result.height = v13;
  result.width = v14;
  return result;
}

- (void)setAsset:(id)asset
{
  assetCopy = asset;
  v5 = assetCopy;
  if (assetCopy)
  {
    [(MRUCAPackageAsset *)assetCopy permanentTransform];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
  }

  v10[4] = v15;
  v10[5] = v16;
  v10[6] = v17;
  v10[7] = v18;
  v10[0] = v11;
  v10[1] = v12;
  v10[2] = v13;
  v10[3] = v14;
  [(MRUCAPackageView *)self setPermanentTransform:v10];
  if (![(MRUCAPackageAsset *)v5 isEqual:self->_asset])
  {
    package = [(MRUCAPackageAsset *)v5 package];
    [(MRUCAPackageView *)self setPackage:package];
  }

  asset = self->_asset;
  self->_asset = v5;
  v8 = v5;

  glyphState = [(MRUCAPackageAsset *)v8 glyphState];

  [(MRUCAPackageView *)self setGlyphState:glyphState];
  [(MRUCAPackageView *)self invalidateIntrinsicContentSize];
}

- (void)setGlyphState:(id)state
{
  stateCopy = state;
  v5 = 0.0;
  if (![(NSString *)self->_glyphState isEqualToString:stateCopy])
  {
    if ([MEMORY[0x1E69DD250] areAnimationsEnabled])
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.0;
    }
  }

  glyphState = self->_glyphState;
  self->_glyphState = stateCopy;
  v7 = stateCopy;

  v9 = [(CALayer *)self->_packageLayer stateWithName:v7];
  *&v8 = v5;
  [(CAStateController *)self->_stateController setState:v9 ofLayer:self->_packageLayer transitionSpeed:v8];
}

- (void)setScale:(double)scale
{
  if (self->_scale != scale)
  {
    self->_scale = scale;
    [(MRUCAPackageView *)self setNeedsLayout];
  }
}

- (void)setPermanentTransform:(CATransform3D *)transform
{
  p_permanentTransform = &self->_permanentTransform;
  v6 = *&transform->m33;
  *&a.m31 = *&transform->m31;
  *&a.m33 = v6;
  v7 = *&transform->m43;
  *&a.m41 = *&transform->m41;
  *&a.m43 = v7;
  v8 = *&transform->m13;
  *&a.m11 = *&transform->m11;
  *&a.m13 = v8;
  v9 = *&transform->m23;
  *&a.m21 = *&transform->m21;
  *&a.m23 = v9;
  v10 = *&self->_permanentTransform.m33;
  *&v20.m31 = *&self->_permanentTransform.m31;
  *&v20.m33 = v10;
  v11 = *&self->_permanentTransform.m43;
  *&v20.m41 = *&self->_permanentTransform.m41;
  *&v20.m43 = v11;
  v12 = *&self->_permanentTransform.m13;
  *&v20.m11 = *&self->_permanentTransform.m11;
  *&v20.m13 = v12;
  v13 = *&self->_permanentTransform.m23;
  *&v20.m21 = *&self->_permanentTransform.m21;
  *&v20.m23 = v13;
  if (!CATransform3DEqualToTransform(&a, &v20))
  {
    v14 = *&transform->m11;
    v15 = *&transform->m13;
    v16 = *&transform->m23;
    *&p_permanentTransform->m21 = *&transform->m21;
    *&p_permanentTransform->m23 = v16;
    *&p_permanentTransform->m11 = v14;
    *&p_permanentTransform->m13 = v15;
    v17 = *&transform->m31;
    v18 = *&transform->m33;
    v19 = *&transform->m43;
    *&p_permanentTransform->m41 = *&transform->m41;
    *&p_permanentTransform->m43 = v19;
    *&p_permanentTransform->m31 = v17;
    *&p_permanentTransform->m33 = v18;
    [(MRUCAPackageView *)self setNeedsLayout];
  }
}

- (void)setGlyphTintColor:(id)color
{
  objc_storeStrong(&self->_glyphTintColor, color);

  [(MRUCAPackageView *)self updateFilter];
}

- (void)setPackage:(id)package
{
  objc_storeStrong(&self->_package, package);
  packageCopy = package;
  [(CALayer *)self->_packageLayer removeFromSuperlayer];
  rootLayer = [packageCopy rootLayer];
  packageLayer = self->_packageLayer;
  self->_packageLayer = rootLayer;
  v8 = rootLayer;

  [(CALayer *)v8 bounds];
  [(MRUCAPackageView *)self setBounds:?];
  [(CALayer *)v8 setGeometryFlipped:[(CAPackage *)self->_package isGeometryFlipped]];
  layer = [(UIView *)self->_contentView layer];
  [layer addSublayer:v8];

  [(CALayer *)v8 bounds];
  [(UIView *)self->_contentView setBounds:?];
  v10 = [objc_alloc(MEMORY[0x1E69794D0]) initWithLayer:v8];
  stateController = self->_stateController;
  self->_stateController = v10;

  [(MRUCAPackageView *)self setNeedsLayout];

  [(MRUCAPackageView *)self updateFilter];
}

- (CATransform3D)permanentTransform
{
  v3 = *&self[4].m22;
  *&retstr->m31 = *&self[4].m14;
  *&retstr->m33 = v3;
  v4 = *&self[4].m32;
  *&retstr->m41 = *&self[4].m24;
  *&retstr->m43 = v4;
  v5 = *&self[3].m42;
  *&retstr->m11 = *&self[3].m34;
  *&retstr->m13 = v5;
  v6 = *&self[4].m12;
  *&retstr->m21 = *&self[3].m44;
  *&retstr->m23 = v6;
  return self;
}

@end