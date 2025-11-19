@interface MTMaterialShadowView
+ (id)materialShadowViewWithRecipe:(int64_t)a3 configuration:(int64_t)a4 initialWeighting:(double)a5 scaleAdjustment:(id)a6;
+ (id)materialShadowViewWithRecipeNamed:(id)a3 inBundle:(id)a4 configuration:(int64_t)a5 initialWeighting:(double)a6 scaleAdjustment:(id)a7;
+ (id)materialShadowViewWithRecipeNamesByTraitCollection:(id)a3 inBundle:(id)a4 configuration:(int64_t)a5 initialWeighting:(double)a6 scaleAdjustment:(id)a7;
- (BOOL)shadowPathIsBounds;
- (CGSize)shadowOffset;
- (MTMaterialShadowView)initWithMaterialView:(id)a3;
- (UIColor)shadowColor;
- (double)shadowOpacity;
- (double)shadowRadius;
- (void)_configureCaptureOnlyMaterialViewIfNecessary;
- (void)_configureShadowViewIfNecessary;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)groupNameDidChangeForMaterialView:(id)a3;
- (void)layoutSubviews;
- (void)recipeNameDidChangeForMaterialView:(id)a3;
- (void)setShadowColor:(id)a3;
- (void)setShadowOffset:(CGSize)a3;
- (void)setShadowOpacity:(double)a3;
- (void)setShadowPathIsBounds:(BOOL)a3;
- (void)setShadowRadius:(double)a3;
- (void)weightingDidChangeForMaterialView:(id)a3;
@end

@implementation MTMaterialShadowView

+ (id)materialShadowViewWithRecipe:(int64_t)a3 configuration:(int64_t)a4 initialWeighting:(double)a5 scaleAdjustment:(id)a6
{
  v10 = a6;
  v11 = [a1 alloc];
  v12 = [MTMaterialView materialViewWithRecipe:a3 configuration:a4 initialWeighting:v10 scaleAdjustment:a5];

  v13 = [v11 initWithMaterialView:v12];

  return v13;
}

+ (id)materialShadowViewWithRecipeNamed:(id)a3 inBundle:(id)a4 configuration:(int64_t)a5 initialWeighting:(double)a6 scaleAdjustment:(id)a7
{
  v12 = a7;
  v13 = a4;
  v14 = a3;
  v15 = [a1 alloc];
  v16 = [MTMaterialView materialViewWithRecipeNamed:v14 inBundle:v13 configuration:a5 initialWeighting:v12 scaleAdjustment:a6];

  v17 = [v15 initWithMaterialView:v16];

  return v17;
}

+ (id)materialShadowViewWithRecipeNamesByTraitCollection:(id)a3 inBundle:(id)a4 configuration:(int64_t)a5 initialWeighting:(double)a6 scaleAdjustment:(id)a7
{
  v12 = a7;
  v13 = a4;
  v14 = a3;
  v15 = [a1 alloc];
  v16 = [MTMaterialView materialViewWithRecipeNamesByTraitCollection:v14 compatibleWithTraitCollection:0 bundle:v13 configuration:a5 initialWeighting:v12 scaleAdjustment:a6];

  v17 = [v15 initWithMaterialView:v16];

  return v17;
}

- (MTMaterialShadowView)initWithMaterialView:(id)a3
{
  v6 = a3;
  if (!v6)
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
    objc_storeStrong(&v8->_materialView, a3);
    v9 = [(MTMaterialView *)v8->_materialView groupNameBase];

    if (!v9)
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
    v4 = [(UIView *)shadowView layer];
    v5 = [v3 colorWithCGColor:{objc_msgSend(v4, "shadowColor")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setShadowColor:(id)a3
{
  v4 = a3;
  [(MTMaterialShadowView *)self _configureShadowViewIfNecessary];
  v6 = [(UIView *)self->_shadowView layer];
  v5 = [v4 CGColor];

  [v6 setShadowColor:v5];
}

- (double)shadowOpacity
{
  v2 = [(UIView *)self->_shadowView layer];
  [v2 shadowOpacity];
  v4 = v3;

  return v4;
}

- (void)setShadowOpacity:(double)a3
{
  [(MTMaterialShadowView *)self _configureShadowViewIfNecessary];
  v6 = [(UIView *)self->_shadowView layer];
  *&v5 = a3;
  [v6 setShadowOpacity:v5];
}

- (CGSize)shadowOffset
{
  v2 = [(UIView *)self->_shadowView layer];
  [v2 shadowOffset];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setShadowOffset:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(MTMaterialShadowView *)self _configureShadowViewIfNecessary];
  v6 = [(UIView *)self->_shadowView layer];
  [v6 setShadowOffset:{width, height}];
}

- (double)shadowRadius
{
  v2 = [(UIView *)self->_shadowView layer];
  [v2 shadowRadius];
  v4 = v3;

  return v4;
}

- (void)setShadowRadius:(double)a3
{
  [(MTMaterialShadowView *)self _configureShadowViewIfNecessary];
  v5 = [(UIView *)self->_shadowView layer];
  [v5 setShadowRadius:a3];
}

- (BOOL)shadowPathIsBounds
{
  v2 = [(UIView *)self->_shadowView layer];
  v3 = [v2 shadowPathIsBounds];

  return v3;
}

- (void)setShadowPathIsBounds:(BOOL)a3
{
  v3 = a3;
  [(MTMaterialShadowView *)self _configureShadowViewIfNecessary];
  v5 = [(UIView *)self->_shadowView layer];
  [v5 setShadowPathIsBounds:v3];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MTMaterialShadowView;
  [(MTMaterialShadowView *)&v3 layoutSubviews];
  [(MTMaterialShadowView *)self _configureCaptureOnlyMaterialViewIfNecessary];
}

- (void)_setContinuousCornerRadius:(double)a3
{
  [(MTMaterialView *)self->_materialView _setContinuousCornerRadius:?];
  [(UIView *)self->_shadowView _setContinuousCornerRadius:a3];
  captureOnlyMaterialView = self->_captureOnlyMaterialView;

  [(MTMaterialView *)captureOnlyMaterialView _setContinuousCornerRadius:a3];
}

- (void)recipeNameDidChangeForMaterialView:(id)a3
{
  captureOnlyMaterialView = self->_captureOnlyMaterialView;
  v4 = [a3 recipeName];
  [(MTMaterialView *)captureOnlyMaterialView setRecipeName:v4];
}

- (void)weightingDidChangeForMaterialView:(id)a3
{
  captureOnlyMaterialView = self->_captureOnlyMaterialView;
  [a3 weighting];

  [(MTMaterialView *)captureOnlyMaterialView setWeighting:?];
}

- (void)groupNameDidChangeForMaterialView:(id)a3
{
  captureOnlyMaterialView = self->_captureOnlyMaterialView;
  v4 = [a3 groupNameBase];
  [(MTMaterialView *)captureOnlyMaterialView setGroupNameBase:v4];
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

    v6 = [(UIView *)self->_shadowView layer];
    [v6 setShadowPathIsBounds:1];

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
    v6 = [(MTMaterialView *)self->_materialView groupNameBase];
    [(MTMaterialView *)v5 setGroupNameBase:v6];

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