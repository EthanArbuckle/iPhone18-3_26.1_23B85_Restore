@interface CLKUIHandView
- (CALayer)inlayLayer;
- (CGPoint)anchorPointFromConfiguration;
- (CGSize)directionalShadowOffset;
- (CLKMonochromeFilterProvider)filterProvider;
- (CLKUIHandView)initWithConfiguration:(id)configuration forDevice:(id)device maskedShadow:(BOOL)shadow;
- (CLKUIHandView)initWithImage:(id)image forDevice:(id)device;
- (UIEdgeInsets)inlayInsets;
- (UIEdgeInsets)shadowInsets;
- (void)_adjustHandImageSubviewOrder;
- (void)_initWithImage:(id)image forDevice:(id)device;
- (void)_layoutInlayLayer;
- (void)_updateShadows;
- (void)_updateTransform;
- (void)layoutSubviews;
- (void)noModelUpdate_setHandDotColor:(id)color;
- (void)noModelUpdate_setInlayColor:(id)color;
- (void)setAlpha:(double)alpha;
- (void)setColor:(id)color;
- (void)setDropShadowImage:(id)image;
- (void)setDropShadowsHidden:(BOOL)hidden;
- (void)setEnableBackgroundColorAction:(BOOL)action;
- (void)setHidden:(BOOL)hidden;
- (void)setNeedsLayout;
- (void)setRadialShadowImage:(id)image;
- (void)setRadialShadowsHidden:(BOOL)hidden;
- (void)setShadowImageBehindHand:(BOOL)hand;
- (void)setShadowsHidden:(BOOL)hidden;
- (void)setupHandDotViewWithDiameter:(double)diameter;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation CLKUIHandView

- (CLKUIHandView)initWithImage:(id)image forDevice:(id)device
{
  imageCopy = image;
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = CLKUIHandView;
  v8 = [(CLKUIHandView *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CLKUIHandView *)v8 _initWithImage:imageCopy forDevice:deviceCopy];
  }

  return v9;
}

- (void)_initWithImage:(id)image forDevice:(id)device
{
  v23[3] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  deviceCopy = device;
  v8 = [[CLKUIColoringImageView alloc] initWithImage:imageCopy];
  handImageView = self->_handImageView;
  self->_handImageView = v8;

  [(UIImage *)imageCopy size];
  v11 = v10;
  [(UIImage *)imageCopy size];
  [(CLKUIColoringImageView *)self->_handImageView setBounds:0.0, 0.0, v11, v12];
  [(CLKUIHandView *)self addSubview:self->_handImageView];
  device = self->_device;
  self->_device = deviceCopy;
  v14 = deviceCopy;

  image = self->_image;
  self->_image = imageCopy;
  v16 = imageCopy;

  self->_dropShadowsHidden = 1;
  [(CLKUIHandView *)self _updateShadows];
  self->_scale = 1.0;
  self->_zRotation = 0.0;
  layer = [(CLKUIHandView *)self layer];
  v22[0] = @"transform";
  null = [MEMORY[0x1E695DFB0] null];
  v23[0] = null;
  v22[1] = @"bounds";
  null2 = [MEMORY[0x1E695DFB0] null];
  v23[1] = null2;
  v22[2] = @"position";
  null3 = [MEMORY[0x1E695DFB0] null];
  v23[2] = null3;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];

  [layer setActions:v21];
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
  layer = [(CLKUIHandView *)self layer];
  [layer anchorPoint];
  v13 = (v12 + -0.5) * v8 + 0.5;
  layer2 = [(CLKUIHandView *)self layer];
  [layer2 anchorPoint];
  v16 = (v15 + -0.5) * v10 + 0.5;
  layer3 = [(UIImageView *)self->_dropShadowImageView layer];
  [layer3 setAnchorPoint:{v13, v16}];

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

- (void)setColor:(id)color
{
  objc_storeStrong(&self->_color, color);
  colorCopy = color;
  [(CLKUIHandView *)self noModelUpdate_setColor:colorCopy];
}

- (void)_updateTransform
{
  layer = [(CLKUIHandView *)self layer];
  CATransform3DMakeScale(&v5, self->_scale, self->_scale, self->_scale);
  CATransform3DRotate(&v6, &v5, self->_zRotation, 0.0, 0.0, 1.0);
  [layer setTransform:&v6];

  layer2 = [(UIImageView *)self->_dropShadowImageView layer];
  CATransform3DMakeScale(&v5, self->_scale, self->_scale, self->_scale);
  CATransform3DRotate(&v6, &v5, self->_zRotation, 0.0, 0.0, 1.0);
  [layer2 setTransform:&v6];
}

- (void)setEnableBackgroundColorAction:(BOOL)action
{
  if (self->_enableBackgroundColorAction != action)
  {
    actionCopy = action;
    actions = [(CALayer *)self->_inlayLayer actions];
    v8 = [actions mutableCopy];

    if (actionCopy)
    {
      [v8 removeObjectForKey:@"backgroundColor"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [v8 setObject:null forKey:@"backgroundColor"];
    }

    inlayLayer = [(CLKUIHandView *)self inlayLayer];
    [inlayLayer setActions:v8];

    self->_enableBackgroundColorAction = actionCopy;
  }
}

- (CALayer)inlayLayer
{
  v15[4] = *MEMORY[0x1E69E9840];
  inlayLayer = self->_inlayLayer;
  if (!inlayLayer)
  {
    layer = [MEMORY[0x1E6979398] layer];
    v5 = self->_inlayLayer;
    self->_inlayLayer = layer;

    v6 = self->_inlayLayer;
    v14[0] = @"transform";
    null = [MEMORY[0x1E695DFB0] null];
    v15[0] = null;
    v14[1] = @"bounds";
    null2 = [MEMORY[0x1E695DFB0] null];
    v15[1] = null2;
    v14[2] = @"position";
    null3 = [MEMORY[0x1E695DFB0] null];
    v15[2] = null3;
    v14[3] = @"backgroundColor";
    null4 = [MEMORY[0x1E695DFB0] null];
    v15[3] = null4;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
    [(CALayer *)v6 setActions:v11];

    layer2 = [(CLKUIColoringImageView *)self->_handImageView layer];
    [layer2 addSublayer:self->_inlayLayer];

    [(CLKUIHandView *)self _adjustHandImageSubviewOrder];
    inlayLayer = self->_inlayLayer;
  }

  return inlayLayer;
}

- (void)setRadialShadowImage:(id)image
{
  imageCopy = image;
  objc_storeStrong(&self->_radialShadowImage, image);
  radialShadowImageView = self->_radialShadowImageView;
  if (!radialShadowImageView)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v7 = self->_radialShadowImageView;
    self->_radialShadowImageView = v6;

    [(CLKUIHandView *)self addSubview:self->_radialShadowImageView];
    radialShadowImageView = self->_radialShadowImageView;
  }

  [(UIImageView *)radialShadowImageView setImage:imageCopy];
  [(CLKUIHandView *)self _updateShadows];
}

- (void)setShadowImageBehindHand:(BOOL)hand
{
  handCopy = hand;
  self->_shadowImageBehindHand = hand;
  radialShadowImageView = self->_radialShadowImageView;
  if (handCopy)
  {
    [(CLKUIHandView *)self sendSubviewToBack:radialShadowImageView];
  }

  else
  {
    [(CLKUIHandView *)self bringSubviewToFront:radialShadowImageView];
  }
}

- (void)noModelUpdate_setInlayColor:(id)color
{
  colorCopy = color;
  inlayColor = self->_inlayColor;
  if (inlayColor != colorCopy)
  {
    v12 = colorCopy;
    v7 = colorCopy == 0;
    objc_storeStrong(&self->_inlayColor, color);
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
      inlayLayer = [(CLKUIHandView *)self inlayLayer];
      [inlayLayer setHidden:v9];
    }

    if (self->_inlayColor)
    {
      inlayLayer2 = [(CLKUIHandView *)self inlayLayer];
      [inlayLayer2 setBackgroundColor:{-[UIColor CGColor](self->_inlayColor, "CGColor")}];
    }

    [(CLKUIHandView *)self setNeedsLayout];
    colorCopy = v12;
  }
}

- (void)setShadowsHidden:(BOOL)hidden
{
  if (self->_shadowsHidden != hidden)
  {
    self->_shadowsHidden = hidden;
    [(CLKUIHandView *)self _updateShadows];
  }
}

- (void)setRadialShadowsHidden:(BOOL)hidden
{
  if (self->_radialShadowsHidden != hidden)
  {
    self->_radialShadowsHidden = hidden;
    [(CLKUIHandView *)self _updateShadows];
  }
}

- (void)setDropShadowsHidden:(BOOL)hidden
{
  if (self->_dropShadowsHidden != hidden)
  {
    self->_dropShadowsHidden = hidden;
    [(CLKUIHandView *)self _updateShadows];
  }
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v5.receiver = self;
  v5.super_class = CLKUIHandView;
  [(CLKUIHandView *)&v5 setHidden:?];
  [(CLKUIHandView *)self setShadowsHidden:hiddenCopy];
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

- (void)setDropShadowImage:(id)image
{
  objc_storeStrong(&self->_dropShadowImage, image);

  [(CLKUIHandView *)self _updateShadows];
}

- (void)noModelUpdate_setHandDotColor:(id)color
{
  objc_storeStrong(&self->_handDotColor, color);
  colorCopy = color;
  handDotColor = self->_handDotColor;
  handDotView = [(CLKUIHandView *)self handDotView];
  [handDotView setBackgroundColor:handDotColor];
}

- (void)setupHandDotViewWithDiameter:(double)diameter
{
  handDotView = self->_handDotView;
  if (!handDotView)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v7 = self->_handDotView;
    self->_handDotView = v6;

    handDotView = self->_handDotView;
  }

  [(UIView *)handDotView setBounds:0.0, 0.0, diameter, diameter];
  layer = [(UIView *)self->_handDotView layer];
  [layer setCornerRadius:diameter * 0.5];

  v9 = self->_handDotView;
  [(CLKUIHandView *)self bounds];
  v11 = v10;
  layer2 = [(CLKUIHandView *)self layer];
  [layer2 anchorPoint];
  v14 = v11 * v13;
  [(CLKUIHandView *)self bounds];
  v16 = v15;
  layer3 = [(CLKUIHandView *)self layer];
  [layer3 anchorPoint];
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
    layer = [(CLKUIColoringImageView *)self->_handImageView layer];
    [layer addSublayer:self->_inlayLayer];
  }

  handDotView = self->_handDotView;
  handImageView = self->_handImageView;

  [(CLKUIHandView *)self insertSubview:handDotView aboveSubview:handImageView];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  filterProvider = [(CLKUIHandView *)self filterProvider];
  v10 = [filterProvider filtersForView:self style:2 fraction:fraction];

  if (v10)
  {
    layer = [(CLKUIColoringImageView *)self->_handImageView layer];
    [layer setFilters:v10];
  }

  filterProvider2 = [(CLKUIHandView *)self filterProvider];
  v8 = [filterProvider2 filtersForView:self style:0 fraction:fraction];

  if (v8)
  {
    layer2 = [(UIView *)self->_handDotView layer];
    [layer2 setFilters:v8];
  }
}

- (void)updateMonochromeColor
{
  filterProvider = [(CLKUIHandView *)self filterProvider];
  v8 = [filterProvider filtersForView:self style:2];

  if (v8)
  {
    layer = [(CLKUIColoringImageView *)self->_handImageView layer];
    [layer setFilters:v8];
  }

  filterProvider2 = [(CLKUIHandView *)self filterProvider];
  v6 = [filterProvider2 filtersForView:self style:0];

  if (v6)
  {
    layer2 = [(UIView *)self->_handDotView layer];
    [layer2 setFilters:v6];
  }
}

- (void)setAlpha:(double)alpha
{
  v4.receiver = self;
  v4.super_class = CLKUIHandView;
  [(CLKUIHandView *)&v4 setAlpha:alpha];
  [(CLKUIHandView *)self _updateShadows];
}

- (CLKUIHandView)initWithConfiguration:(id)configuration forDevice:(id)device maskedShadow:(BOOL)shadow
{
  shadowCopy = shadow;
  configurationCopy = configuration;
  deviceCopy = device;
  v26.receiver = self;
  v26.super_class = CLKUIHandView;
  v10 = [(CLKUIHandView *)&v26 init];
  if (v10)
  {
    v11 = [configurationCopy copy];
    configuration = v10->_configuration;
    v10->_configuration = v11;

    [(CLKUIAnalogHandConfiguration *)v10->_configuration dropShadowOpacity];
    v14 = v13;
    v15 = v13 == 0.0;
    [(CLKUIAnalogHandConfiguration *)v10->_configuration radialShadowOpacity];
    v17 = v16;
    v18 = v16 == 0.0;
    if (shadowCopy)
    {
      v19 = 22;
    }

    else
    {
      v19 = 14;
    }

    v20 = [CLKUIAnalogHandFactory getAssets:v19 forConfiguration:v10->_configuration];
    v21 = [v20 objectForKey:&unk_1F5E96DE0];
    [(CLKUIHandView *)v10 _initWithImage:v21 forDevice:deviceCopy];
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
      if (shadowCopy)
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