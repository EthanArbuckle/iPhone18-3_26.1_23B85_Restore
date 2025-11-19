@interface CLKUIHandView
- (CALayer)inlayLayer;
- (CGPoint)anchorPointFromConfiguration;
- (CGSize)directionalShadowOffset;
- (CLKMonochromeFilterProvider)filterProvider;
- (CLKUIHandView)initWithConfiguration:(id)a3 forDevice:(id)a4 maskedShadow:(BOOL)a5;
- (CLKUIHandView)initWithImage:(id)a3 forDevice:(id)a4;
- (UIEdgeInsets)inlayInsets;
- (UIEdgeInsets)shadowInsets;
- (void)_adjustHandImageSubviewOrder;
- (void)_initWithImage:(id)a3 forDevice:(id)a4;
- (void)_layoutInlayLayer;
- (void)_updateShadows;
- (void)_updateTransform;
- (void)layoutSubviews;
- (void)noModelUpdate_setHandDotColor:(id)a3;
- (void)noModelUpdate_setInlayColor:(id)a3;
- (void)setAlpha:(double)a3;
- (void)setColor:(id)a3;
- (void)setDropShadowImage:(id)a3;
- (void)setDropShadowsHidden:(BOOL)a3;
- (void)setEnableBackgroundColorAction:(BOOL)a3;
- (void)setHidden:(BOOL)a3;
- (void)setNeedsLayout;
- (void)setRadialShadowImage:(id)a3;
- (void)setRadialShadowsHidden:(BOOL)a3;
- (void)setShadowImageBehindHand:(BOOL)a3;
- (void)setShadowsHidden:(BOOL)a3;
- (void)setupHandDotViewWithDiameter:(double)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation CLKUIHandView

- (CLKUIHandView)initWithImage:(id)a3 forDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CLKUIHandView;
  v8 = [(CLKUIHandView *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CLKUIHandView *)v8 _initWithImage:v6 forDevice:v7];
  }

  return v9;
}

- (void)_initWithImage:(id)a3 forDevice:(id)a4
{
  v23[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [[CLKUIColoringImageView alloc] initWithImage:v6];
  handImageView = self->_handImageView;
  self->_handImageView = v8;

  [(UIImage *)v6 size];
  v11 = v10;
  [(UIImage *)v6 size];
  [(CLKUIColoringImageView *)self->_handImageView setBounds:0.0, 0.0, v11, v12];
  [(CLKUIHandView *)self addSubview:self->_handImageView];
  device = self->_device;
  self->_device = v7;
  v14 = v7;

  image = self->_image;
  self->_image = v6;
  v16 = v6;

  self->_dropShadowsHidden = 1;
  [(CLKUIHandView *)self _updateShadows];
  self->_scale = 1.0;
  self->_zRotation = 0.0;
  v17 = [(CLKUIHandView *)self layer];
  v22[0] = @"transform";
  v18 = [MEMORY[0x1E695DFB0] null];
  v23[0] = v18;
  v22[1] = @"bounds";
  v19 = [MEMORY[0x1E695DFB0] null];
  v23[1] = v19;
  v22[2] = @"position";
  v20 = [MEMORY[0x1E695DFB0] null];
  v23[2] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];

  [v17 setActions:v21];
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = CLKUIHandView;
  [(CLKUIHandView *)&v18 layoutSubviews];
  [(CLKUIHandView *)self bounds];
  v4 = v3 * 0.5;
  v6 = v5 * 0.5;
  [(CLKUIColoringImageView *)self->_handImageView setCenter:v3 * 0.5, v5 * 0.5];
  [(CLKUIHandView *)self _layoutInlayLayer];
  [(UIImageView *)self->_radialShadowImageView sizeToFit];
  [(UIImageView *)self->_radialShadowImageView setCenter:v4, v6];
  [(UIImageView *)self->_dropShadowImageView sizeToFit];
  [(CLKUIHandView *)self bounds];
  Width = CGRectGetWidth(v19);
  [(UIImageView *)self->_dropShadowImageView bounds];
  v8 = Width / CGRectGetWidth(v20);
  [(CLKUIHandView *)self bounds];
  Height = CGRectGetHeight(v21);
  [(UIImageView *)self->_dropShadowImageView bounds];
  v10 = Height / CGRectGetHeight(v22);
  v11 = [(CLKUIHandView *)self layer];
  [v11 anchorPoint];
  v13 = (v12 + -0.5) * v8 + 0.5;
  v14 = [(CLKUIHandView *)self layer];
  [v14 anchorPoint];
  v16 = (v15 + -0.5) * v10 + 0.5;
  v17 = [(UIImageView *)self->_dropShadowImageView layer];
  [v17 setAnchorPoint:{v13, v16}];

  [(CLKUIHandView *)self _updateShadows];
}

- (void)_layoutInlayLayer
{
  [(CLKUIHandView *)self bounds];
  top = self->_inlayInsets.top;
  left = self->_inlayInsets.left;
  v6 = v5 + left;
  v8 = v7 + top;
  v10 = v9 - (left + self->_inlayInsets.right);
  v12 = v11 - (top + self->_inlayInsets.bottom);
  v13 = [(CALayer *)self->_inlayLayer setBounds:0.0, 0.0, v10, v12];
  inlayLayer = self->_inlayLayer;
  MEMORY[0x1E691D7B0](v13, v6, v8, v10, v12);
  [(CALayer *)inlayLayer setPosition:?];
  v15 = self->_inlayLayer;

  [(CALayer *)v15 setCornerRadius:v10 * 0.5];
}

- (void)setColor:(id)a3
{
  objc_storeStrong(&self->_color, a3);
  v5 = a3;
  [(CLKUIHandView *)self noModelUpdate_setColor:v5];
}

- (void)_updateTransform
{
  v3 = [(CLKUIHandView *)self layer];
  CATransform3DMakeScale(&v5, self->_scale, self->_scale, self->_scale);
  CATransform3DRotate(&v6, &v5, self->_zRotation, 0.0, 0.0, 1.0);
  [v3 setTransform:&v6];

  v4 = [(UIImageView *)self->_dropShadowImageView layer];
  CATransform3DMakeScale(&v5, self->_scale, self->_scale, self->_scale);
  CATransform3DRotate(&v6, &v5, self->_zRotation, 0.0, 0.0, 1.0);
  [v4 setTransform:&v6];
}

- (void)setEnableBackgroundColorAction:(BOOL)a3
{
  if (self->_enableBackgroundColorAction != a3)
  {
    v3 = a3;
    v5 = [(CALayer *)self->_inlayLayer actions];
    v8 = [v5 mutableCopy];

    if (v3)
    {
      [v8 removeObjectForKey:@"backgroundColor"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v8 setObject:v6 forKey:@"backgroundColor"];
    }

    v7 = [(CLKUIHandView *)self inlayLayer];
    [v7 setActions:v8];

    self->_enableBackgroundColorAction = v3;
  }
}

- (CALayer)inlayLayer
{
  v15[4] = *MEMORY[0x1E69E9840];
  inlayLayer = self->_inlayLayer;
  if (!inlayLayer)
  {
    v4 = [MEMORY[0x1E6979398] layer];
    v5 = self->_inlayLayer;
    self->_inlayLayer = v4;

    v6 = self->_inlayLayer;
    v14[0] = @"transform";
    v7 = [MEMORY[0x1E695DFB0] null];
    v15[0] = v7;
    v14[1] = @"bounds";
    v8 = [MEMORY[0x1E695DFB0] null];
    v15[1] = v8;
    v14[2] = @"position";
    v9 = [MEMORY[0x1E695DFB0] null];
    v15[2] = v9;
    v14[3] = @"backgroundColor";
    v10 = [MEMORY[0x1E695DFB0] null];
    v15[3] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
    [(CALayer *)v6 setActions:v11];

    v12 = [(CLKUIColoringImageView *)self->_handImageView layer];
    [v12 addSublayer:self->_inlayLayer];

    [(CLKUIHandView *)self _adjustHandImageSubviewOrder];
    inlayLayer = self->_inlayLayer;
  }

  return inlayLayer;
}

- (void)setRadialShadowImage:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_radialShadowImage, a3);
  radialShadowImageView = self->_radialShadowImageView;
  if (!radialShadowImageView)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v7 = self->_radialShadowImageView;
    self->_radialShadowImageView = v6;

    [(CLKUIHandView *)self addSubview:self->_radialShadowImageView];
    radialShadowImageView = self->_radialShadowImageView;
  }

  [(UIImageView *)radialShadowImageView setImage:v8];
  [(CLKUIHandView *)self _updateShadows];
}

- (void)setShadowImageBehindHand:(BOOL)a3
{
  v3 = a3;
  self->_shadowImageBehindHand = a3;
  radialShadowImageView = self->_radialShadowImageView;
  if (v3)
  {
    [(CLKUIHandView *)self sendSubviewToBack:radialShadowImageView];
  }

  else
  {
    [(CLKUIHandView *)self bringSubviewToFront:radialShadowImageView];
  }
}

- (void)noModelUpdate_setInlayColor:(id)a3
{
  v5 = a3;
  inlayColor = self->_inlayColor;
  if (inlayColor != v5)
  {
    v12 = v5;
    v7 = v5 == 0;
    objc_storeStrong(&self->_inlayColor, a3);
    if (((v7 ^ (inlayColor != 0)) & 1) == 0)
    {
      if (v12)
      {
        v8 = inlayColor == 0;
      }

      else
      {
        v8 = 0;
      }

      v9 = !v8;
      v10 = [(CLKUIHandView *)self inlayLayer];
      [v10 setHidden:v9];
    }

    if (self->_inlayColor)
    {
      v11 = [(CLKUIHandView *)self inlayLayer];
      [v11 setBackgroundColor:{-[UIColor CGColor](self->_inlayColor, "CGColor")}];
    }

    [(CLKUIHandView *)self setNeedsLayout];
    v5 = v12;
  }
}

- (void)setShadowsHidden:(BOOL)a3
{
  if (self->_shadowsHidden != a3)
  {
    self->_shadowsHidden = a3;
    [(CLKUIHandView *)self _updateShadows];
  }
}

- (void)setRadialShadowsHidden:(BOOL)a3
{
  if (self->_radialShadowsHidden != a3)
  {
    self->_radialShadowsHidden = a3;
    [(CLKUIHandView *)self _updateShadows];
  }
}

- (void)setDropShadowsHidden:(BOOL)a3
{
  if (self->_dropShadowsHidden != a3)
  {
    self->_dropShadowsHidden = a3;
    [(CLKUIHandView *)self _updateShadows];
  }
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = CLKUIHandView;
  [(CLKUIHandView *)&v5 setHidden:?];
  [(CLKUIHandView *)self setShadowsHidden:v3];
}

- (void)setNeedsLayout
{
  v4.receiver = self;
  v4.super_class = CLKUIHandView;
  [(CLKUIHandView *)&v4 setNeedsLayout];
  if (CLKInternalBuild() && ([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v2 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_1E49C8000, v2, OS_LOG_TYPE_DEFAULT, "AnalogHandsView-WrongThread: Hands view is not laying out on main thread.", v3, 2u);
    }
  }
}

- (void)_updateShadows
{
  if (CLKInternalBuild())
  {
    dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  }

  if (self->_shadowsHidden)
  {
    [(UIImageView *)self->_radialShadowImageView setHidden:1];
LABEL_10:
    [(UIImageView *)self->_dropShadowImageView setHidden:1];
    [(UIImageView *)self->_dropShadowImageView removeFromSuperview];
    dropShadowImageView = self->_dropShadowImageView;
    self->_dropShadowImageView = 0;

    return;
  }

  dropShadowsHidden = self->_dropShadowsHidden;
  if (self->_radialShadowsHidden)
  {
    [(UIImageView *)self->_radialShadowImageView setHidden:1];
  }

  else if (self->_radialShadowImage)
  {
    [(UIImageView *)self->_radialShadowImageView setHidden:0];
    radialShadowImageView = self->_radialShadowImageView;
    [(CLKUIHandView *)self alpha];
    [(UIImageView *)radialShadowImageView setAlpha:?];
  }

  if (dropShadowsHidden)
  {
    goto LABEL_10;
  }

  v6 = self->_dropShadowImageView;
  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v8 = self->_dropShadowImageView;
    self->_dropShadowImageView = v7;

    v6 = self->_dropShadowImageView;
  }

  [(UIImageView *)v6 setImage:self->_dropShadowImage];
  v9 = self->_dropShadowImageView;
  if (self->_dropShadowImage)
  {
    [(UIImageView *)v9 setHidden:0];
    v10 = self->_dropShadowImageView;
    [(CLKUIHandView *)self alpha];

    [(UIImageView *)v10 setAlpha:?];
  }

  else
  {

    [(UIImageView *)v9 setHidden:1];
  }
}

- (void)setDropShadowImage:(id)a3
{
  objc_storeStrong(&self->_dropShadowImage, a3);

  [(CLKUIHandView *)self _updateShadows];
}

- (void)noModelUpdate_setHandDotColor:(id)a3
{
  objc_storeStrong(&self->_handDotColor, a3);
  v5 = a3;
  handDotColor = self->_handDotColor;
  v7 = [(CLKUIHandView *)self handDotView];
  [v7 setBackgroundColor:handDotColor];
}

- (void)setupHandDotViewWithDiameter:(double)a3
{
  handDotView = self->_handDotView;
  if (!handDotView)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v7 = self->_handDotView;
    self->_handDotView = v6;

    handDotView = self->_handDotView;
  }

  [(UIView *)handDotView setBounds:0.0, 0.0, a3, a3];
  v8 = [(UIView *)self->_handDotView layer];
  [v8 setCornerRadius:a3 * 0.5];

  v9 = self->_handDotView;
  [(CLKUIHandView *)self bounds];
  v11 = v10;
  v12 = [(CLKUIHandView *)self layer];
  [v12 anchorPoint];
  v14 = v11 * v13;
  [(CLKUIHandView *)self bounds];
  v16 = v15;
  v17 = [(CLKUIHandView *)self layer];
  [v17 anchorPoint];
  [(UIView *)v9 setCenter:v14, v16 * v18];

  [(CLKUIHandView *)self addSubview:self->_handDotView];

  [(CLKUIHandView *)self _adjustHandImageSubviewOrder];
}

- (void)_adjustHandImageSubviewOrder
{
  inlayLayer = self->_inlayLayer;
  if (inlayLayer)
  {
    [(CALayer *)inlayLayer removeFromSuperlayer];
    v4 = [(CLKUIColoringImageView *)self->_handImageView layer];
    [v4 addSublayer:self->_inlayLayer];
  }

  handDotView = self->_handDotView;
  handImageView = self->_handImageView;

  [(CLKUIHandView *)self insertSubview:handDotView aboveSubview:handImageView];
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v5 = [(CLKUIHandView *)self filterProvider];
  v10 = [v5 filtersForView:self style:2 fraction:a3];

  if (v10)
  {
    v6 = [(CLKUIColoringImageView *)self->_handImageView layer];
    [v6 setFilters:v10];
  }

  v7 = [(CLKUIHandView *)self filterProvider];
  v8 = [v7 filtersForView:self style:0 fraction:a3];

  if (v8)
  {
    v9 = [(UIView *)self->_handDotView layer];
    [v9 setFilters:v8];
  }
}

- (void)updateMonochromeColor
{
  v3 = [(CLKUIHandView *)self filterProvider];
  v8 = [v3 filtersForView:self style:2];

  if (v8)
  {
    v4 = [(CLKUIColoringImageView *)self->_handImageView layer];
    [v4 setFilters:v8];
  }

  v5 = [(CLKUIHandView *)self filterProvider];
  v6 = [v5 filtersForView:self style:0];

  if (v6)
  {
    v7 = [(UIView *)self->_handDotView layer];
    [v7 setFilters:v6];
  }
}

- (void)setAlpha:(double)a3
{
  v4.receiver = self;
  v4.super_class = CLKUIHandView;
  [(CLKUIHandView *)&v4 setAlpha:a3];
  [(CLKUIHandView *)self _updateShadows];
}

- (CLKUIHandView)initWithConfiguration:(id)a3 forDevice:(id)a4 maskedShadow:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v26.receiver = self;
  v26.super_class = CLKUIHandView;
  v10 = [(CLKUIHandView *)&v26 init];
  if (v10)
  {
    v11 = [v8 copy];
    configuration = v10->_configuration;
    v10->_configuration = v11;

    [(CLKUIAnalogHandConfiguration *)v10->_configuration dropShadowOpacity];
    v14 = v13;
    v15 = v13 == 0.0;
    [(CLKUIAnalogHandConfiguration *)v10->_configuration radialShadowOpacity];
    v17 = v16;
    v18 = v16 == 0.0;
    if (v5)
    {
      v19 = 22;
    }

    else
    {
      v19 = 14;
    }

    v20 = [CLKUIAnalogHandFactory getAssets:v19 forConfiguration:v10->_configuration];
    v21 = [v20 objectForKey:&unk_1F5E96DE0];
    [(CLKUIHandView *)v10 _initWithImage:v21 forDevice:v9];
    [(CLKUIAnalogHandConfiguration *)v10->_configuration bounds];
    [(CLKUIHandView *)v10 setBounds:?];
    [(CLKUIAnalogHandConfiguration *)v10->_configuration inlayInsets];
    [(CLKUIHandView *)v10 setInlayInsets:?];
    [(CLKUIHandView *)v10 setShadowsHidden:0];
    [(CLKUIHandView *)v10 setDropShadowsHidden:v15];
    [(CLKUIHandView *)v10 setRadialShadowsHidden:v18];
    [(CLKUIAnalogHandConfiguration *)v10->_configuration directionalShadowOffset];
    [(CLKUIHandView *)v10 setDirectionalShadowOffset:?];
    if (v14 != 0.0)
    {
      if (v5)
      {
        v22 = &unk_1F5E96DF8;
      }

      else
      {
        v22 = &unk_1F5E96E10;
      }

      v23 = [v20 objectForKey:v22];
      [(CLKUIHandView *)v10 setDropShadowImage:v23];
    }

    if (v17 != 0.0)
    {
      v24 = [v20 objectForKey:&unk_1F5E96E28];
      [(CLKUIHandView *)v10 setRadialShadowImage:v24];
      [(CLKUIHandView *)v10 setShadowImageBehindHand:1];
    }
  }

  return v10;
}

- (CGPoint)anchorPointFromConfiguration
{
  [(CLKUIAnalogHandConfiguration *)self->_configuration anchorPoint];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

- (UIEdgeInsets)inlayInsets
{
  top = self->_inlayInsets.top;
  left = self->_inlayInsets.left;
  bottom = self->_inlayInsets.bottom;
  right = self->_inlayInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)shadowInsets
{
  top = self->_shadowInsets.top;
  left = self->_shadowInsets.left;
  bottom = self->_shadowInsets.bottom;
  right = self->_shadowInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)directionalShadowOffset
{
  width = self->_directionalShadowOffset.width;
  height = self->_directionalShadowOffset.height;
  result.height = height;
  result.width = width;
  return result;
}

@end