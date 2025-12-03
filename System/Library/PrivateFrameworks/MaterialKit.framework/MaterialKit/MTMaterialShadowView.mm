@interface MTMaterialShadowView
+ (id)materialShadowViewWithRecipe:(int64_t)recipe configuration:(int64_t)configuration initialWeighting:(double)weighting scaleAdjustment:(id)adjustment;
+ (id)materialShadowViewWithRecipeNamed:(id)named inBundle:(id)bundle configuration:(int64_t)configuration initialWeighting:(double)weighting scaleAdjustment:(id)adjustment;
+ (id)materialShadowViewWithRecipeNamesByTraitCollection:(id)collection inBundle:(id)bundle configuration:(int64_t)configuration initialWeighting:(double)weighting scaleAdjustment:(id)adjustment;
- (BOOL)shadowPathIsBounds;
- (CGSize)shadowOffset;
- (MTMaterialShadowView)initWithMaterialView:(id)view;
- (UIColor)shadowColor;
- (double)shadowOpacity;
- (double)shadowRadius;
- (void)_configureCaptureOnlyMaterialViewIfNecessary;
- (void)_configureShadowViewIfNecessary;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)groupNameDidChangeForMaterialView:(id)view;
- (void)layoutSubviews;
- (void)recipeNameDidChangeForMaterialView:(id)view;
- (void)setShadowColor:(id)color;
- (void)setShadowOffset:(CGSize)offset;
- (void)setShadowOpacity:(double)opacity;
- (void)setShadowPathIsBounds:(BOOL)bounds;
- (void)setShadowRadius:(double)radius;
- (void)weightingDidChangeForMaterialView:(id)view;
@end

@implementation MTMaterialShadowView

+ (id)materialShadowViewWithRecipe:(int64_t)recipe configuration:(int64_t)configuration initialWeighting:(double)weighting scaleAdjustment:(id)adjustment
{
  adjustmentCopy = adjustment;
  v11 = [self alloc];
  v12 = [MTMaterialView materialViewWithRecipe:recipe configuration:configuration initialWeighting:adjustmentCopy scaleAdjustment:weighting];

  v13 = [v11 initWithMaterialView:v12];

  return v13;
}

+ (id)materialShadowViewWithRecipeNamed:(id)named inBundle:(id)bundle configuration:(int64_t)configuration initialWeighting:(double)weighting scaleAdjustment:(id)adjustment
{
  adjustmentCopy = adjustment;
  bundleCopy = bundle;
  namedCopy = named;
  v15 = [self alloc];
  v16 = [MTMaterialView materialViewWithRecipeNamed:namedCopy inBundle:bundleCopy configuration:configuration initialWeighting:adjustmentCopy scaleAdjustment:weighting];

  v17 = [v15 initWithMaterialView:v16];

  return v17;
}

+ (id)materialShadowViewWithRecipeNamesByTraitCollection:(id)collection inBundle:(id)bundle configuration:(int64_t)configuration initialWeighting:(double)weighting scaleAdjustment:(id)adjustment
{
  adjustmentCopy = adjustment;
  bundleCopy = bundle;
  collectionCopy = collection;
  v15 = [self alloc];
  v16 = [MTMaterialView materialViewWithRecipeNamesByTraitCollection:collectionCopy compatibleWithTraitCollection:0 bundle:bundleCopy configuration:configuration initialWeighting:adjustmentCopy scaleAdjustment:weighting];

  v17 = [v15 initWithMaterialView:v16];

  return v17;
}

- (MTMaterialShadowView)initWithMaterialView:(id)view
{
  viewCopy = view;
  if (!viewCopy)
  {
    [(MTMaterialShadowView *)a2 initWithMaterialView:?];
  }

  [(MTMaterialView *)self->_materialView bounds];
  v13.receiver = self;
  v13.super_class = MTMaterialShadowView;
  v7 = [(MTMaterialShadowView *)&v13 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    [(MTMaterialShadowView *)v7 setAutoresizesSubviews:1];
    objc_storeStrong(&v8->_materialView, view);
    groupNameBase = [(MTMaterialView *)v8->_materialView groupNameBase];

    if (!groupNameBase)
    {
      materialView = v8->_materialView;
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%p", objc_opt_class(), v8];
      [(MTMaterialView *)materialView setGroupNameBase:v11];
    }

    [(MTMaterialView *)v8->_materialView _addObserver:v8];
    [(MTMaterialView *)v8->_materialView frame];
    [(MTMaterialShadowView *)v8 setBounds:?];
    [(MTMaterialShadowView *)v8 addSubview:v8->_materialView];
    [(MTMaterialView *)v8->_materialView setAutoresizingMask:18];
  }

  return v8;
}

- (UIColor)shadowColor
{
  shadowView = self->_shadowView;
  if (shadowView)
  {
    v3 = MEMORY[0x277D75348];
    layer = [(UIView *)shadowView layer];
    v5 = [v3 colorWithCGColor:{objc_msgSend(layer, "shadowColor")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setShadowColor:(id)color
{
  colorCopy = color;
  [(MTMaterialShadowView *)self _configureShadowViewIfNecessary];
  layer = [(UIView *)self->_shadowView layer];
  cGColor = [colorCopy CGColor];

  [layer setShadowColor:cGColor];
}

- (double)shadowOpacity
{
  layer = [(UIView *)self->_shadowView layer];
  [layer shadowOpacity];
  v4 = v3;

  return v4;
}

- (void)setShadowOpacity:(double)opacity
{
  [(MTMaterialShadowView *)self _configureShadowViewIfNecessary];
  layer = [(UIView *)self->_shadowView layer];
  *&v5 = opacity;
  [layer setShadowOpacity:v5];
}

- (CGSize)shadowOffset
{
  layer = [(UIView *)self->_shadowView layer];
  [layer shadowOffset];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setShadowOffset:(CGSize)offset
{
  height = offset.height;
  width = offset.width;
  [(MTMaterialShadowView *)self _configureShadowViewIfNecessary];
  layer = [(UIView *)self->_shadowView layer];
  [layer setShadowOffset:{width, height}];
}

- (double)shadowRadius
{
  layer = [(UIView *)self->_shadowView layer];
  [layer shadowRadius];
  v4 = v3;

  return v4;
}

- (void)setShadowRadius:(double)radius
{
  [(MTMaterialShadowView *)self _configureShadowViewIfNecessary];
  layer = [(UIView *)self->_shadowView layer];
  [layer setShadowRadius:radius];
}

- (BOOL)shadowPathIsBounds
{
  layer = [(UIView *)self->_shadowView layer];
  shadowPathIsBounds = [layer shadowPathIsBounds];

  return shadowPathIsBounds;
}

- (void)setShadowPathIsBounds:(BOOL)bounds
{
  boundsCopy = bounds;
  [(MTMaterialShadowView *)self _configureShadowViewIfNecessary];
  layer = [(UIView *)self->_shadowView layer];
  [layer setShadowPathIsBounds:boundsCopy];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MTMaterialShadowView;
  [(MTMaterialShadowView *)&v3 layoutSubviews];
  [(MTMaterialShadowView *)self _configureCaptureOnlyMaterialViewIfNecessary];
}

- (void)_setContinuousCornerRadius:(double)radius
{
  [(MTMaterialView *)self->_materialView _setContinuousCornerRadius:?];
  [(UIView *)self->_shadowView _setContinuousCornerRadius:radius];
  captureOnlyMaterialView = self->_captureOnlyMaterialView;

  [(MTMaterialView *)captureOnlyMaterialView _setContinuousCornerRadius:radius];
}

- (void)recipeNameDidChangeForMaterialView:(id)view
{
  captureOnlyMaterialView = self->_captureOnlyMaterialView;
  recipeName = [view recipeName];
  [(MTMaterialView *)captureOnlyMaterialView setRecipeName:recipeName];
}

- (void)weightingDidChangeForMaterialView:(id)view
{
  captureOnlyMaterialView = self->_captureOnlyMaterialView;
  [view weighting];

  [(MTMaterialView *)captureOnlyMaterialView setWeighting:?];
}

- (void)groupNameDidChangeForMaterialView:(id)view
{
  captureOnlyMaterialView = self->_captureOnlyMaterialView;
  groupNameBase = [view groupNameBase];
  [(MTMaterialView *)captureOnlyMaterialView setGroupNameBase:groupNameBase];
}

- (void)_configureShadowViewIfNecessary
{
  if (!self->_shadowView)
  {
    v3 = objc_alloc(MEMORY[0x277D75D18]);
    [(MTMaterialShadowView *)self bounds];
    v4 = [v3 initWithFrame:?];
    shadowView = self->_shadowView;
    self->_shadowView = v4;

    layer = [(UIView *)self->_shadowView layer];
    [layer setShadowPathIsBounds:1];

    v7 = self->_shadowView;
    [(MTMaterialView *)self->_materialView _continuousCornerRadius];
    [(UIView *)v7 _setContinuousCornerRadius:?];
    [(MTMaterialShadowView *)self insertSubview:self->_shadowView belowSubview:self->_materialView];
    v8 = self->_shadowView;

    [(UIView *)v8 setAutoresizingMask:18];
  }
}

- (void)_configureCaptureOnlyMaterialViewIfNecessary
{
  if (self->_shadowView && !self->_captureOnlyMaterialViewSuppliedByClient && !self->_captureOnlyMaterialView)
  {
    v3 = [(MTMaterialView *)self->_materialView copy];
    captureOnlyMaterialView = self->_captureOnlyMaterialView;
    self->_captureOnlyMaterialView = v3;

    [(MTMaterialView *)self->_captureOnlyMaterialView setCaptureOnly:1];
    v5 = self->_captureOnlyMaterialView;
    groupNameBase = [(MTMaterialView *)self->_materialView groupNameBase];
    [(MTMaterialView *)v5 setGroupNameBase:groupNameBase];

    v7 = self->_captureOnlyMaterialView;
    [(MTMaterialShadowView *)self bounds];
    [(MTMaterialView *)v7 setFrame:?];
    [(MTMaterialShadowView *)self insertSubview:self->_captureOnlyMaterialView belowSubview:self->_shadowView];
    v8 = self->_captureOnlyMaterialView;

    [(MTMaterialView *)v8 setAutoresizingMask:18];
  }
}

- (void)initWithMaterialView:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MTMaterialShadowView.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"materialView"}];
}

@end