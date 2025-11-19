@interface MTMaterialView
+ (id)_deprecatedControlCenterMaterialWithRecipe:(int64_t)a3 configuration:(int64_t)a4 initialWeighting:(double)a5 scaleAdjustment:(id)a6;
+ (id)_recipeNameForTraitCollection:(id)a3 withRecipeNamesByTraitCollection:(id)a4;
+ (id)materialViewWithRecipe:(int64_t)a3 configuration:(int64_t)a4;
+ (id)materialViewWithRecipe:(int64_t)a3 configuration:(int64_t)a4 initialWeighting:(double)a5;
+ (id)materialViewWithRecipe:(int64_t)a3 configuration:(int64_t)a4 initialWeighting:(double)a5 compatibleWithTraitCollection:(id)a6;
+ (id)materialViewWithRecipe:(int64_t)a3 configuration:(int64_t)a4 initialWeighting:(double)a5 scaleAdjustment:(id)a6;
+ (id)materialViewWithRecipe:(int64_t)a3 options:(unint64_t)a4 initialWeighting:(double)a5;
+ (id)materialViewWithRecipe:(int64_t)a3 options:(unint64_t)a4 initialWeighting:(double)a5 compatibleWithTraitCollection:(id)a6;
+ (id)materialViewWithRecipe:(int64_t)a3 options:(unint64_t)a4 initialWeighting:(double)a5 scaleAdjustment:(id)a6;
+ (id)materialViewWithRecipe:(int64_t)a3 options:(unint64_t)a4 initialWeighting:(double)a5 scaleAdjustment:(id)a6 compatibleWithTraitCollection:(id)a7;
+ (id)materialViewWithRecipeNamed:(id)a3 inBundle:(id)a4 options:(unint64_t)a5 initialWeighting:(double)a6 scaleAdjustment:(id)a7;
+ (id)materialViewWithRecipeNamesByTraitCollection:(id)a3 inBundle:(id)a4 configuration:(int64_t)a5 initialWeighting:(double)a6 scaleAdjustment:(id)a7;
+ (id)materialViewWithRecipeNamesByTraitCollection:(id)a3 inBundle:(id)a4 options:(unint64_t)a5 initialWeighting:(double)a6 scaleAdjustment:(id)a7 compatibleWithTraitCollection:(id)a8;
+ (id)materialViewWithVisualStyleFromRecipe:(int64_t)a3 category:(int64_t)a4 style:(int64_t)a5 options:(unint64_t)a6 initialWeighting:(double)a7 compatibleWithTraitCollection:(id)a8;
+ (id)newDefaultHighlightAnimator;
+ (id)staticMaterialViewWithRecipe:(int64_t)a3;
+ (void)initialize;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (BOOL)addCompletionForCurrentAnimation:(id)a3 forMaterialLayer:(id)a4 reason:(id *)a5;
- (BOOL)hasInoperativeAppearance;
- (BOOL)ignoresScreenClip;
- (BOOL)isBlurEnabled;
- (BOOL)isCaptureOnly;
- (BOOL)isContentReplacedWithSnapshot;
- (BOOL)isInPlaceFilteringEnabled;
- (BOOL)isManagingInterpolationForMaterialLayer:(id)a3;
- (BOOL)isZoomEnabled;
- (BOOL)shouldCrossfade;
- (MTMaterialView)init;
- (NSString)debugIdentifier;
- (NSString)description;
- (NSString)groupName;
- (NSString)recipeName;
- (double)weighting;
- (id)_coreMaterialVisualStylingProviderForCategory:(id)a3;
- (id)_groupNameWithBase:(id)a3;
- (id)_initWithCoreMaterialRecipe:(id)a3 fromBundle:(id)a4 options:(unint64_t)a5 initialWeighting:(double)a6 scaleAdjustment:(id)a7;
- (id)_initWithRecipe:(int64_t)a3 options:(unint64_t)a4 initialWeighting:(double)a5 scaleAdjustment:(id)a6 compatibleWithTraitCollection:(id)a7;
- (id)_initWithRecipeNamesByTraitCollection:(id)a3 bundle:(id)a4 options:(unint64_t)a5 initialWeighting:(double)a6 scaleAdjustment:(id)a7 compatibleWithTraitCollection:(id)a8;
- (id)_recipeNameForCurrentTraitCollection;
- (id)backdropScaleAdjustment;
- (id)copyWithZone:(_NSZone *)a3;
- (id)newShadowViewWithCaptureOnlyMaterialView:(BOOL)a3;
- (id)visualStylingProviderForCategory:(int64_t)a3;
- (unint64_t)_options;
- (void)_addObserver:(id)a3;
- (void)_invalidateAlphaTransformer;
- (void)_notifyObserversWithBlock:(id)a3;
- (void)_reduceMotionStatusDidChange;
- (void)_reduceTransparencyStatusDidChange;
- (void)_removeObserver:(id)a3;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)_setCornerRadius:(double)a3;
- (void)_setRecipeName:(id)a3 withWeighting:(double)a4;
- (void)_setupAlphaTransformer;
- (void)_setupOrInvalidateAlphaTransformer;
- (void)_updateGroupNameIfNecessary;
- (void)_updateRecipeNameIfNeeded;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)prune;
- (void)setBackdropScaleAdjustment:(id)a3;
- (void)setBlurEnabled:(BOOL)a3;
- (void)setCaptureOnly:(BOOL)a3;
- (void)setContentReplacedWithSnapshot:(BOOL)a3;
- (void)setDebugIdentifier:(id)a3;
- (void)setGroupName:(id)a3;
- (void)setGroupNameBase:(id)a3;
- (void)setHasInoperativeAppearance:(BOOL)a3;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setIgnoresScreenClip:(BOOL)a3;
- (void)setInPlaceFilteringEnabled:(BOOL)a3;
- (void)setRecipe:(int64_t)a3;
- (void)setRecipeDynamic:(BOOL)a3;
- (void)setRecipeName:(id)a3 fromBundle:(id)a4;
- (void)setShadowed:(BOOL)shadowed;
- (void)setShouldCrossfade:(BOOL)a3;
- (void)setUseBuiltInAlphaTransformerAndBackdropScaleAdjustment:(BOOL)a3;
- (void)setUseBuiltInAlphaTransformerAndBackdropScaleAdjustmentIfNecessary:(BOOL)a3;
- (void)setWeighting:(double)a3;
- (void)setZoomEnabled:(BOOL)a3;
@end

@implementation MTMaterialView

- (double)weighting
{
  v2 = [(MTMaterialView *)self _materialLayer];
  [v2 weighting];
  v4 = v3;

  return v4;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = MTMaterialView;
  [(MTMaterialView *)&v7 layoutSubviews];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__MTMaterialView_layoutSubviews__block_invoke;
  v6[3] = &unk_27835D300;
  v6[4] = self;
  v3 = MEMORY[0x223D601D0](v6);
  v4 = [(MTMaterialView *)self traitCollection];
  v5 = [v4 valueForNSIntegerTrait:objc_opt_class()];

  if (v5 == 1)
  {
    [MEMORY[0x277D75D18] performWithoutAnimation:v3];
  }

  else
  {
    v3[2](v3);
  }
}

void __32__MTMaterialView_layoutSubviews__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateRecipeNameIfNeeded];
  v2 = [*(a1 + 32) window];

  if (!v2)
  {
    *(*(a1 + 32) + 456) = 1;
  }
}

- (void)_updateRecipeNameIfNeeded
{
  recipe = self->_recipe;
  if (recipe)
  {
    if (self->_recipeDynamic)
    {
      v4 = [(MTMaterialView *)self traitCollection];
      v5 = [v4 userInterfaceStyle];

      recipe = self->_recipe;
    }

    else
    {
      v5 = 0;
    }

    v6 = MTCoreMaterialRecipeForMaterialRecipeAndUserInterfaceStyleInShadow(recipe, v5, self->_shadowed);
    if (!v6)
    {
      goto LABEL_13;
    }

LABEL_9:
    v10 = v6;
    v7 = [(MTMaterialView *)self _materialLayer];
    v8 = [v7 recipeName];
    v9 = [v8 isEqualToString:v10];

    if ((v9 & 1) == 0)
    {
      [(MTMaterialView *)self setRecipeName:v10];
    }

    v6 = v10;
    goto LABEL_13;
  }

  if (!self->_recipeNamesByTraitCollection)
  {
    v6 = 0;
    goto LABEL_13;
  }

  v6 = [(MTMaterialView *)self _recipeNameForCurrentTraitCollection];
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_13:
}

- (MTMaterialView)init
{
  v3.receiver = self;
  v3.super_class = MTMaterialView;
  result = [(MTMaterialView *)&v3 init];
  if (result)
  {
    result->_recipeDynamic = 1;
  }

  return result;
}

- (void)_updateGroupNameIfNecessary
{
  if (self->_groupNameBase)
  {
    v3 = [(MTMaterialView *)self _groupNameWithBase:?];
    [(MTMaterialView *)self setGroupName:v3];
  }
}

double __40__MTMaterialView__setupAlphaTransformer__block_invoke_3(double a1)
{
  result = 1.0;
  if (a1 < 0.05)
  {
    if (a1 / 0.05 <= 0.0)
    {
      v3 = 0.0;
    }

    else
    {
      v3 = a1 / 0.05 + 0.0;
    }

    return fmin(v3, 1.0);
  }

  return result;
}

double __40__MTMaterialView__setupAlphaTransformer__block_invoke_78(double a1, double a2, double a3)
{
  if (a3 < 15.0 && a2 == 0.0)
  {
    a2 = a3 / 10.0;
  }

  return a1 * a3 + (1.0 - a1) * a2;
}

void __40__MTMaterialView__setupAlphaTransformer__block_invoke_73(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v3 = [WeakRetained _backdropFloatAnimatableProperty];

    WeakRetained = v9;
    if (v3)
    {
      v4 = [v9 _backdropFloatAnimatableProperty];
      [v4 value];
      v6 = v5;

      v7 = (*(*(a1 + 32) + 16))(v6);
      v8 = [v9 _materialLayer];
      [v8 _setPrivateOpacity:0 removingIfIdentity:v7];

      WeakRetained = v9;
    }
  }
}

- (id)_recipeNameForCurrentTraitCollection
{
  v3 = objc_opt_class();
  v4 = [(MTMaterialView *)self traitCollection];
  v5 = [v3 _recipeNameForTraitCollection:v4 withRecipeNamesByTraitCollection:self->_recipeNamesByTraitCollection];

  return v5;
}

- (BOOL)shouldCrossfade
{
  v2 = [(MTMaterialView *)self _materialLayer];
  v3 = [v2 shouldCrossfade];

  return v3;
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = MTMaterialView;
  [(MTMaterialView *)&v5 didMoveToWindow];
  v3 = [(MTMaterialView *)self window];
  if (v3)
  {
    needsLayoutOnMoveToWindow = self->_needsLayoutOnMoveToWindow;

    if (needsLayoutOnMoveToWindow)
    {
      [(MTMaterialView *)self setNeedsLayout];
      self->_needsLayoutOnMoveToWindow = 0;
    }
  }
}

void __40__MTMaterialView__setupAlphaTransformer__block_invoke_2_74(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _backdropFloatAnimatableProperty];

    if (v4)
    {
      v5 = [v3 _backdropFloatAnimatableProperty];
      [v5 presentationValue];
      v7 = v6;

      v8 = [v3 _backdropFloatAnimatableProperty];
      v9 = [MEMORY[0x277CD9E08] mt_keyPathForColorMatrixDrivenOpacity];
      if (v8 && ([v8 value], BSFloatEqualToFloat()))
      {
        [v3 stopSettingPresentationValueForKey:v9];
      }

      else
      {
        v10 = (*(*(a1 + 32) + 16))(v7);
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v14 = 0u;
        [MEMORY[0x277CD9E08] mt_colorMatrixForOpacity:v10];
        v13[2] = v16;
        v13[3] = v17;
        v13[4] = v18;
        v13[0] = v14;
        v13[1] = v15;
        v11 = [MEMORY[0x277CCAE60] valueWithBytes:v13 objCType:"{CAColorMatrix=ffffffffffffffffffff}"];
        [v3 _setPresentationValue:v11 forKey:v9];

        v12 = MTLogMaterials;
        if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543874;
          v20 = v3;
          v21 = 2050;
          v22 = v7;
          v23 = 2050;
          v24 = v10;
          _os_log_debug_impl(&dword_21E600000, v12, OS_LOG_TYPE_DEBUG, "%{public}@: Updating presentation value for progress: %{public}f; alpha: %{public}f", buf, 0x20u);
        }
      }
    }
  }
}

- (void)_setupOrInvalidateAlphaTransformer
{
  if (self->_useBuiltInAlphaTransformerAndBackdropScaleAdjustment)
  {
    if (UIAccessibilityIsReduceMotionEnabled() || UIAccessibilityIsReduceTransparencyEnabled())
    {

      [(MTMaterialView *)self _invalidateAlphaTransformer];
    }

    else
    {

      [(MTMaterialView *)self _setupAlphaTransformer];
    }
  }
}

- (BOOL)isZoomEnabled
{
  v2 = [(MTMaterialView *)self _materialLayer];
  v3 = [v2 isZoomEnabled];

  return v3;
}

- (BOOL)isBlurEnabled
{
  v2 = [(MTMaterialView *)self _materialLayer];
  v3 = [v2 isBlurEnabled];

  return v3;
}

- (void)dealloc
{
  if (self->_reduceTransparencyObserverToken)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 _removeObserver:self->_reduceTransparencyObserverToken];

    self->_reduceTransparencyObserverToken = 0;
  }

  if (self->_reduceMotionObserverToken)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 _removeObserver:self->_reduceMotionObserverToken];

    self->_reduceMotionObserverToken = 0;
  }

  v5.receiver = self;
  v5.super_class = MTMaterialView;
  [(MTMaterialView *)&v5 dealloc];
}

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == a1)
  {

    MTRegisterMaterialKitLogging();
  }
}

- (void)_setupAlphaTransformer
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_21E600000, a2, OS_LOG_TYPE_DEBUG, "%{public}@: Instantiating backdrop float animatable property", &v2, 0xCu);
}

- (id)_initWithRecipe:(int64_t)a3 options:(unint64_t)a4 initialWeighting:(double)a5 scaleAdjustment:(id)a6 compatibleWithTraitCollection:(id)a7
{
  v12 = a6;
  v13 = a7;
  if (!v13)
  {
    v13 = [MEMORY[0x277D75C80] currentTraitCollection];
  }

  v14 = MTCoreMaterialRecipeForMaterialRecipeAndUserInterfaceStyle(a3, [v13 userInterfaceStyle]);
  v15 = [(MTMaterialView *)self _initWithCoreMaterialRecipe:v14 fromBundle:0 options:a4 initialWeighting:v12 scaleAdjustment:a5];

  if (v15)
  {
    v15[62] = a3;
  }

  return v15;
}

- (id)_initWithRecipeNamesByTraitCollection:(id)a3 bundle:(id)a4 options:(unint64_t)a5 initialWeighting:(double)a6 scaleAdjustment:(id)a7 compatibleWithTraitCollection:(id)a8
{
  v16 = a3;
  v17 = a4;
  v18 = a7;
  v19 = a8;
  v20 = v19;
  if (v16)
  {
    if (v19)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [MTMaterialView _initWithRecipeNamesByTraitCollection:a2 bundle:self options:? initialWeighting:? scaleAdjustment:? compatibleWithTraitCollection:?];
  if (!v20)
  {
LABEL_3:
    v20 = [MEMORY[0x277D75C80] currentTraitCollection];
  }

LABEL_4:
  v21 = [objc_opt_class() _recipeNameForTraitCollection:v20 withRecipeNamesByTraitCollection:v16];
  v22 = [(MTMaterialView *)self _initWithCoreMaterialRecipe:v21 fromBundle:v17 options:a5 initialWeighting:v18 scaleAdjustment:a6];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(v22 + 53, a3);
  }

  return v23;
}

+ (id)materialViewWithRecipe:(int64_t)a3 options:(unint64_t)a4 initialWeighting:(double)a5
{
  v9 = [MEMORY[0x277D75C80] currentTraitCollection];
  v10 = [a1 materialViewWithRecipe:a3 options:a4 initialWeighting:v9 compatibleWithTraitCollection:a5];

  return v10;
}

+ (id)materialViewWithRecipe:(int64_t)a3 options:(unint64_t)a4 initialWeighting:(double)a5 compatibleWithTraitCollection:(id)a6
{
  v10 = a6;
  v11 = [[a1 alloc] _initWithRecipe:a3 options:a4 initialWeighting:0 scaleAdjustment:v10 compatibleWithTraitCollection:a5];

  return v11;
}

+ (id)newDefaultHighlightAnimator
{
  v2 = objc_alloc(MEMORY[0x277D75D40]);
  v3 = objc_alloc_init(MEMORY[0x277D753D0]);
  v4 = [v2 initWithDuration:v3 timingParameters:0.2];

  return v4;
}

- (NSString)groupName
{
  v2 = [(MTMaterialView *)self _materialLayer];
  v3 = [v2 groupName];

  return v3;
}

- (void)setGroupName:(id)a3
{
  v4 = a3;
  v5 = [(MTMaterialView *)self _materialLayer];
  [v5 setGroupName:v4];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__MTMaterialView_setGroupName___block_invoke;
  v6[3] = &unk_27835D3A8;
  v6[4] = self;
  [(MTMaterialView *)self _notifyObserversWithBlock:v6];
}

void __31__MTMaterialView_setGroupName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 groupNameDidChangeForMaterialView:*(a1 + 32)];
  }
}

- (void)setGroupNameBase:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->_groupNameBase] & 1) == 0)
  {
    v4 = [v6 copy];
    groupNameBase = self->_groupNameBase;
    self->_groupNameBase = v4;

    if (self->_groupNameBase)
    {
      [(MTMaterialView *)self _updateGroupNameIfNecessary];
    }

    else
    {
      [(MTMaterialView *)self setGroupName:0];
    }
  }
}

- (void)setWeighting:(double)a3
{
  v4 = fmax(fmin(a3, 1.0), 0.0);
  [(MTMaterialView *)self weighting];
  if (v4 != v5)
  {
    v6 = [(MTMaterialView *)self _materialLayer];
    [v6 setWeighting:v4];

    v7 = [(MTMaterialView *)self _backdropFloatAnimatableProperty];
    [v7 setValue:v4];

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __31__MTMaterialView_setWeighting___block_invoke;
    v8[3] = &unk_27835D3A8;
    v8[4] = self;
    [(MTMaterialView *)self _notifyObserversWithBlock:v8];
  }
}

void __31__MTMaterialView_setWeighting___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 weightingDidChangeForMaterialView:*(a1 + 32)];
  }
}

- (void)setRecipe:(int64_t)a3
{
  if (self->_recipe != a3)
  {
    self->_recipe = a3;
    if (self->_recipeDynamic)
    {
      v6 = [(MTMaterialView *)self traitCollection];
      v7 = [v6 userInterfaceStyle];
    }

    else
    {
      v7 = 0;
    }

    v8 = MTCoreMaterialRecipeForMaterialRecipeAndUserInterfaceStyleInShadow(a3, v7, self->_shadowed);
    [(MTMaterialView *)self setRecipeName:v8];
  }
}

- (void)setBlurEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(MTMaterialView *)self _materialLayer];
  [v5 setBlurEnabled:v3];

  [(MTMaterialView *)self _updateGroupNameIfNecessary];
}

- (void)setZoomEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(MTMaterialView *)self _materialLayer];
  [v5 setZoomEnabled:v3];

  [(MTMaterialView *)self _updateGroupNameIfNecessary];
}

- (BOOL)isCaptureOnly
{
  v2 = [(MTMaterialView *)self _materialLayer];
  v3 = [v2 captureOnly];

  return v3;
}

- (void)setCaptureOnly:(BOOL)a3
{
  v3 = a3;
  v4 = [(MTMaterialView *)self _materialLayer];
  [v4 setCaptureOnly:v3];
}

- (void)setShadowed:(BOOL)shadowed
{
  if (self->_shadowed != shadowed)
  {
    self->_shadowed = shadowed;
    recipe = self->_recipe;
    if (recipe)
    {
      if (self->_recipeDynamic)
      {
        v5 = [(MTMaterialView *)self traitCollection];
        v6 = [v5 userInterfaceStyle];

        recipe = self->_recipe;
        shadowed = self->_shadowed;
      }

      else
      {
        v6 = 0;
      }

      v7 = MTCoreMaterialRecipeForMaterialRecipeAndUserInterfaceStyleInShadow(recipe, v6, shadowed);
      [(MTMaterialView *)self setRecipeName:v7];
    }
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    highlightView = self->_highlightView;
    if (!highlightView)
    {
      v5 = objc_alloc(MEMORY[0x277D75D18]);
      [(MTMaterialView *)self bounds];
      v6 = [v5 initWithFrame:?];
      v7 = self->_highlightView;
      self->_highlightView = v6;

      [(UIView *)self->_highlightView setUserInteractionEnabled:0];
      [(UIView *)self->_highlightView setAutoresizingMask:18];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __33__MTMaterialView_setHighlighted___block_invoke;
      v9[3] = &unk_27835D300;
      v9[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v9];
      highlightView = self->_highlightView;
      highlighted = self->_highlighted;
    }

    v8 = 0.0;
    if (highlighted)
    {
      v8 = 1.0;
    }

    [(UIView *)highlightView setAlpha:v8];
  }
}

void __33__MTMaterialView_setHighlighted___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) layer];
  [v6 cornerRadius];
  if (v2 > 0.0)
  {
    v3 = [*(*(a1 + 32) + 448) layer];
    [v6 cornerRadius];
    [v3 setCornerRadius:?];
    v4 = [v6 cornerCurve];
    [v3 setCornerCurve:v4];
  }

  [*(a1 + 32) addSubview:*(*(a1 + 32) + 448)];
  v5 = [*(a1 + 32) visualStylingProviderForCategory:2];
  [v5 automaticallyUpdateView:*(*(a1 + 32) + 448) withStyle:4 andObserverBlock:&__block_literal_global_4];

  [*(*(a1 + 32) + 448) setAlpha:0.0];
}

id __33__MTMaterialView_setHighlighted___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 alpha];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__MTMaterialView_setHighlighted___block_invoke_3;
  v6[3] = &__block_descriptor_40_e36_v24__0__MTVisualStylingProvider_8_16l;
  v6[4] = v3;
  v4 = MEMORY[0x223D601D0](v6);

  return v4;
}

- (BOOL)hasInoperativeAppearance
{
  v2 = [(MTMaterialView *)self _materialLayer];
  v3 = [v2 _hasInoperativeAppearance];

  return v3;
}

- (void)setHasInoperativeAppearance:(BOOL)a3
{
  v3 = a3;
  v4 = [(MTMaterialView *)self _materialLayer];
  [v4 _setHasInoperativeAppearance:v3 removingIfIdentity:0];
}

- (NSString)debugIdentifier
{
  v2 = [(MTMaterialView *)self _materialLayer];
  v3 = [v2 debugIdentifier];

  return v3;
}

- (void)setDebugIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MTMaterialView *)self _materialLayer];
  [v5 setDebugIdentifier:v4];
}

- (void)prune
{
  v2 = [(MTMaterialView *)self _materialLayer];
  [v2 prune];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v5 = [(MTMaterialView *)self _materialLayer];
  v6 = [objc_opt_class() mt_implicitlyAnimatableKeys];
  if ([v6 containsObject:v4])
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MTMaterialView;
    v7 = [(MTMaterialView *)&v9 _shouldAnimatePropertyWithKey:v4];
  }

  return v7;
}

- (void)_setCornerRadius:(double)a3
{
  v5.receiver = self;
  v5.super_class = MTMaterialView;
  [(MTMaterialView *)&v5 _setCornerRadius:?];
  [(UIView *)self->_highlightView _setCornerRadius:a3];
}

- (void)_setContinuousCornerRadius:(double)a3
{
  v5.receiver = self;
  v5.super_class = MTMaterialView;
  [(MTMaterialView *)&v5 _setContinuousCornerRadius:?];
  [(UIView *)self->_highlightView _setContinuousCornerRadius:a3];
}

- (BOOL)isManagingInterpolationForMaterialLayer:(id)a3
{
  v3 = [MEMORY[0x277D75D18] _isInRetargetableAnimationBlock];
  if (v3)
  {
    v4 = MEMORY[0x277D75D18];

    LOBYTE(v3) = [v4 areAnimationsEnabled];
  }

  return v3;
}

- (BOOL)addCompletionForCurrentAnimation:(id)a3 forMaterialLayer:(id)a4 reason:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    if (a5)
    {
      v12 = @"no argument block";
LABEL_13:
      v11 = 0;
      *a5 = v12;
      goto LABEL_15;
    }

LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  if (![MEMORY[0x277D75D18] _isInAnimationBlockWithAnimationsEnabled])
  {
    if (a5)
    {
      if ([MEMORY[0x277D75D18] _isInAnimationBlock])
      {
        v12 = @"animations disabled";
      }

      else
      {
        v12 = @"no animation";
      }

      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v9 = MEMORY[0x277D75D18];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__MTMaterialView_addCompletionForCurrentAnimation_forMaterialLayer_reason___block_invoke;
  v14[3] = &unk_27835D3D0;
  v15 = v7;
  v10 = [v9 _addCompletion:v14];
  v11 = v10;
  if (a5 && (v10 & 1) == 0)
  {
    *a5 = @"failed to add completion";
  }

LABEL_15:
  return v11;
}

- (id)visualStylingProviderForCategory:(int64_t)a3
{
  v4 = MTCoreMaterialVisualStyleCategoryForVisualStyleCategory(a3);
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_cmVisualStyleCategoriesToProviders objectForKey:v4];
    if (!v5)
    {
      if (!self->_cmVisualStyleCategoriesToProviders)
      {
        v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
        cmVisualStyleCategoriesToProviders = self->_cmVisualStyleCategoriesToProviders;
        self->_cmVisualStyleCategoriesToProviders = v6;
      }

      [(MTMaterialView *)self _updateRecipeNameIfNeeded];
      v8 = [(MTMaterialView *)self _coreMaterialVisualStylingProviderForCategory:v4];
      v9 = [v8 visualStyleSetName];
      v10 = [v9 length];

      if (v10)
      {
        v5 = [[MTVisualStylingProvider alloc] initWithCoreMaterialVisualStylingProvider:v8];
        [(NSMutableDictionary *)self->_cmVisualStyleCategoriesToProviders setObject:v5 forKey:v4];
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_invalidateAlphaTransformer
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_21E600000, a2, OS_LOG_TYPE_DEBUG, "%{public}@: Tearing down backdrop float animatable property", &v2, 0xCu);
}

+ (id)_recipeNameForTraitCollection:(id)a3 withRecipeNamesByTraitCollection:(id)a4
{
  v5 = a4;
  v6 = v5;
  v7 = 0;
  if (a3 && v5)
  {
    v8 = a3;
    v9 = [v6 allKeys];
    v10 = MEMORY[0x277D75C80];
    v11 = [v8 userInterfaceStyle];

    v12 = [v10 traitCollectionWithUserInterfaceStyle:v11];
    v13 = [v9 arrayByAddingObject:v12];

    v14 = [MEMORY[0x277D75C80] traitCollectionWithTraitsFromCollections:v13];
    if (v14)
    {
      v7 = [v6 objectForKey:v14];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)_setRecipeName:(id)a3 withWeighting:(double)a4
{
  v6 = a3;
  v7 = [(MTMaterialView *)self _materialLayer];
  [v7 setRecipeName:v6 fromBundle:self->_recipeBundle];

  v8 = [(MTMaterialView *)self _materialLayer];
  [v8 setWeighting:a4];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__MTMaterialView__setRecipeName_withWeighting___block_invoke;
  v9[3] = &unk_27835D3A8;
  v9[4] = self;
  [(MTMaterialView *)self _notifyObserversWithBlock:v9];
  [(MTMaterialView *)self _updateGroupNameIfNecessary];
}

void __47__MTMaterialView__setRecipeName_withWeighting___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 recipeNameDidChangeForMaterialView:*(a1 + 32)];
  }
}

- (id)_groupNameWithBase:(id)a3
{
  v4 = MEMORY[0x277CCAB68];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(MTMaterialView *)self _materialLayer];
  v8 = [v7 recipeName];
  v9 = [v6 initWithFormat:@"%@.%@", v5, v8];

  if (![(MTMaterialView *)self isBlurEnabled])
  {
    [v9 appendString:@".noBlur"];
  }

  if (![(MTMaterialView *)self isZoomEnabled])
  {
    [v9 appendString:@".noZoom"];
  }

  if ([(MTMaterialView *)self isShadowed])
  {
    [v9 appendString:@".shadowed"];
  }

  v10 = [(MTMaterialView *)self _materialLayer];
  v11 = [v10 reducesCaptureBitDepth];

  if (v11)
  {
    [v9 appendString:@".reducesCaptureBitDepth"];
  }

  return v9;
}

- (void)_reduceMotionStatusDidChange
{
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v4 = [(MTMaterialView *)self _materialLayer];
  v5 = [v4 isReduceMotionEnabled];

  if (IsReduceMotionEnabled != v5)
  {
    v6 = [(MTMaterialView *)self _materialLayer];
    [v6 setReduceMotionEnabled:IsReduceMotionEnabled];

    [(MTMaterialView *)self _setupOrInvalidateAlphaTransformer];
  }
}

- (void)_reduceTransparencyStatusDidChange
{
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  v4 = [(MTMaterialView *)self _materialLayer];
  v5 = [v4 isReduceTransparencyEnabled];

  if (IsReduceTransparencyEnabled != v5)
  {
    v6 = [(MTMaterialView *)self _materialLayer];
    [v6 setReduceTransparencyEnabled:IsReduceTransparencyEnabled];

    [(MTMaterialView *)self _setupOrInvalidateAlphaTransformer];
  }
}

- (void)_notifyObserversWithBlock:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    observers = self->_observers;
    if (observers)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = observers;
      v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v12;
        do
        {
          v10 = 0;
          do
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v4[2](v4, *(*(&v11 + 1) + 8 * v10++));
          }

          while (v8 != v10);
          v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v8);
      }
    }
  }
}

- (NSString)description
{
  v3 = [(MTMaterialView *)self debugIdentifier];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = v5;
  if (v3)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@" (%@)", v3];
    v8 = [v4 stringWithFormat:@"<%@%@: %p>", v6, v7, self];
  }

  else
  {
    v8 = [v4 stringWithFormat:@"<%@%@: %p>", v5, &stru_282FA21D0, self];
  }

  return v8;
}

+ (id)materialViewWithRecipe:(int64_t)a3 options:(unint64_t)a4 initialWeighting:(double)a5 scaleAdjustment:(id)a6
{
  v10 = MEMORY[0x277D75C80];
  v11 = a6;
  v12 = [v10 currentTraitCollection];
  v13 = [a1 materialViewWithRecipe:a3 options:a4 initialWeighting:v11 scaleAdjustment:v12 compatibleWithTraitCollection:a5];

  return v13;
}

+ (id)materialViewWithRecipe:(int64_t)a3 options:(unint64_t)a4 initialWeighting:(double)a5 scaleAdjustment:(id)a6 compatibleWithTraitCollection:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = [[a1 alloc] _initWithRecipe:a3 options:a4 initialWeighting:v13 scaleAdjustment:v12 compatibleWithTraitCollection:a5];

  return v14;
}

+ (id)materialViewWithRecipeNamed:(id)a3 inBundle:(id)a4 options:(unint64_t)a5 initialWeighting:(double)a6 scaleAdjustment:(id)a7
{
  v12 = a7;
  v13 = a4;
  v14 = a3;
  v15 = [[a1 alloc] _initWithCoreMaterialRecipe:v14 fromBundle:v13 options:a5 initialWeighting:v12 scaleAdjustment:a6];

  return v15;
}

+ (id)materialViewWithRecipeNamesByTraitCollection:(id)a3 inBundle:(id)a4 options:(unint64_t)a5 initialWeighting:(double)a6 scaleAdjustment:(id)a7 compatibleWithTraitCollection:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a4;
  v17 = a3;
  v18 = [[a1 alloc] _initWithRecipeNamesByTraitCollection:v17 bundle:v16 options:a5 initialWeighting:v15 scaleAdjustment:v14 compatibleWithTraitCollection:a6];

  return v18;
}

+ (id)materialViewWithVisualStyleFromRecipe:(int64_t)a3 category:(int64_t)a4 style:(int64_t)a5 options:(unint64_t)a6 initialWeighting:(double)a7 compatibleWithTraitCollection:(id)a8
{
  v13 = a8;
  v14 = MTCoreMaterialVisualStyleCategoryForVisualStyleCategory(a4);
  v15 = MTCoreMaterialVisualStyleForVisualStyle(a5);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __135__MTMaterialView_Private__materialViewWithVisualStyleFromRecipe_category_style_options_initialWeighting_compatibleWithTraitCollection___block_invoke;
  v28[3] = &unk_27835D480;
  v31 = a3;
  v16 = v14;
  v29 = v16;
  v17 = v15;
  v30 = v17;
  v18 = MEMORY[0x223D601D0](v28);
  v19 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
  v20 = v18[2](v18, 1);
  if (v20)
  {
    v21 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:0];
    [v19 setObject:v20 forKey:v21];

    v22 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
    [v19 setObject:v20 forKey:v22];
  }

  v23 = v18[2](v18, 2);
  if (v23)
  {
    v24 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
    [v19 setObject:v23 forKey:v24];
  }

  v25 = [[a1 alloc] _initWithRecipeNamesByTraitCollection:v19 bundle:0 options:a6 initialWeighting:0 scaleAdjustment:v13 compatibleWithTraitCollection:a7];

  return v25;
}

id __135__MTMaterialView_Private__materialViewWithVisualStyleFromRecipe_category_style_options_initialWeighting_compatibleWithTraitCollection___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MTCoreMaterialRecipeForMaterialRecipeAndUserInterfaceStyle(*(a1 + 48), a2);
  v3 = MTCoreMaterialRecipeForVisualStyleFromRecipeFromBundle();

  return v3;
}

- (NSString)recipeName
{
  v2 = [(MTMaterialView *)self _materialLayer];
  v3 = [v2 recipeName];

  return v3;
}

- (void)setRecipeName:(id)a3 fromBundle:(id)a4
{
  v6 = a4;
  if (a3 && v6)
  {
    self->_recipe = 0;
  }

  recipeBundle = self->_recipeBundle;
  self->_recipeBundle = v6;
  v8 = a3;

  [(MTMaterialView *)self _setRecipeName:v8 withWeighting:1.0];
}

- (BOOL)isInPlaceFilteringEnabled
{
  v2 = [(MTMaterialView *)self _materialLayer];
  v3 = [v2 allowsInPlaceFiltering];

  return v3;
}

- (void)setInPlaceFilteringEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(MTMaterialView *)self _materialLayer];
  [v4 setAllowsInPlaceFiltering:v3];
}

- (id)backdropScaleAdjustment
{
  v2 = [(MTMaterialView *)self _materialLayer];
  v3 = [v2 backdropScaleAdjustment];

  return v3;
}

- (void)setBackdropScaleAdjustment:(id)a3
{
  v4 = a3;
  v5 = [(MTMaterialView *)self _materialLayer];
  [v5 setBackdropScaleAdjustment:v4];
}

- (void)setShouldCrossfade:(BOOL)a3
{
  v3 = a3;
  if ([(MTMaterialView *)self shouldCrossfade]!= a3)
  {
    if (v3)
    {
      [(MTMaterialView *)self setUseBuiltInAlphaTransformerAndBackdropScaleAdjustment:0];
    }

    v5 = [(MTMaterialView *)self _materialLayer];
    [v5 setShouldCrossfade:v3];
  }
}

- (void)setUseBuiltInAlphaTransformerAndBackdropScaleAdjustment:(BOOL)a3
{
  if (self->_useBuiltInAlphaTransformerAndBackdropScaleAdjustment != a3)
  {
    self->_useBuiltInAlphaTransformerAndBackdropScaleAdjustment = a3;
    if (a3)
    {
      v4 = [(MTMaterialView *)self _materialLayer];
      [v4 setShouldCrossfade:0];

      [(MTMaterialView *)self _setupOrInvalidateAlphaTransformer];
    }

    else
    {
      [(MTMaterialView *)self _invalidateAlphaTransformer];
      v5 = [(MTMaterialView *)self _materialLayer];
      [v5 _reevaluateDefaultShouldCrossfade];
    }
  }
}

- (void)setUseBuiltInAlphaTransformerAndBackdropScaleAdjustmentIfNecessary:(BOOL)a3
{
  v3 = a3;
  if (!a3 || MTDynamicBlurRadiusGraphicsQuality() != 100)
  {

    [(MTMaterialView *)self setUseBuiltInAlphaTransformerAndBackdropScaleAdjustment:v3];
  }
}

- (void)setRecipeDynamic:(BOOL)a3
{
  if (self->_recipeDynamic != a3)
  {
    v6[7] = v3;
    v6[8] = v4;
    self->_recipeDynamic = a3;
    [(MTMaterialView *)self setNeedsLayout];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __44__MTMaterialView_Private__setRecipeDynamic___block_invoke;
    v6[3] = &unk_27835D300;
    v6[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v6 animations:1.0];
  }
}

- (BOOL)ignoresScreenClip
{
  v2 = [(MTMaterialView *)self _materialLayer];
  v3 = [v2 ignoresScreenClip];

  return v3;
}

- (void)setIgnoresScreenClip:(BOOL)a3
{
  v3 = a3;
  v4 = [(MTMaterialView *)self _materialLayer];
  [v4 setIgnoresScreenClip:v3];
}

- (unint64_t)_options
{
  v3 = [(MTMaterialView *)self isBlurEnabled]^ 1;
  if (![(MTMaterialView *)self isZoomEnabled])
  {
    v3 |= 2uLL;
  }

  if ([(MTMaterialView *)self isCaptureOnly])
  {
    v3 |= 4uLL;
  }

  if ([(MTMaterialView *)self isShadowed])
  {
    return v3 | 8;
  }

  else
  {
    return v3;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (self->_recipeNamesByTraitCollection)
  {
    v5 = objc_alloc(objc_opt_class());
    recipeNamesByTraitCollection = self->_recipeNamesByTraitCollection;
    recipeBundle = self->_recipeBundle;
    v8 = [(MTMaterialView *)self _options];
    [(MTMaterialView *)self weighting];
    v10 = v9;
    v11 = [(MTMaterialView *)self backdropScaleAdjustment];
    v12 = [(MTMaterialView *)self traitCollection];
    v13 = [v5 _initWithRecipeNamesByTraitCollection:recipeNamesByTraitCollection bundle:recipeBundle options:v8 initialWeighting:v11 scaleAdjustment:v12 compatibleWithTraitCollection:v10];
LABEL_5:
    v20 = v13;
    goto LABEL_6;
  }

  recipe = self->_recipe;
  v15 = objc_alloc(objc_opt_class());
  if (recipe)
  {
    v16 = self->_recipe;
    v17 = [(MTMaterialView *)self _options];
    [(MTMaterialView *)self weighting];
    v19 = v18;
    v11 = [(MTMaterialView *)self backdropScaleAdjustment];
    v12 = [(MTMaterialView *)self traitCollection];
    v13 = [v15 _initWithRecipe:v16 options:v17 initialWeighting:v11 scaleAdjustment:v12 compatibleWithTraitCollection:v19];
    goto LABEL_5;
  }

  v11 = [(MTMaterialView *)self _materialLayer];
  v12 = [v11 recipe];
  v23 = v12;
  if (!v12)
  {
    v3 = [(MTMaterialView *)self _materialLayer];
    v23 = [v3 recipeName];
  }

  v24 = self->_recipeBundle;
  v25 = [(MTMaterialView *)self _options];
  [(MTMaterialView *)self weighting];
  v27 = v26;
  v28 = [(MTMaterialView *)self backdropScaleAdjustment];
  v20 = [v15 _initWithCoreMaterialRecipe:v23 fromBundle:v24 options:v25 initialWeighting:v28 scaleAdjustment:v27];

  if (!v12)
  {
  }

LABEL_6:

  v21 = [(MTMaterialView *)self groupNameBase];
  [v20 setGroupNameBase:v21];

  [v20 setShouldCrossfade:{-[MTMaterialView shouldCrossfade](self, "shouldCrossfade")}];
  [v20 setUseBuiltInAlphaTransformerAndBackdropScaleAdjustment:{-[MTMaterialView useBuiltInAlphaTransformerAndBackdropScaleAdjustment](self, "useBuiltInAlphaTransformerAndBackdropScaleAdjustment")}];
  [v20 setUseBuiltInAlphaTransformerAndBackdropScaleAdjustmentIfNecessary:{-[MTMaterialView useBuiltInAlphaTransformerAndBackdropScaleAdjustmentIfNecessary](self, "useBuiltInAlphaTransformerAndBackdropScaleAdjustmentIfNecessary")}];
  [v20 setRecipeDynamic:{-[MTMaterialView isRecipeDynamic](self, "isRecipeDynamic")}];
  [v20 setIgnoresScreenClip:{-[MTMaterialView ignoresScreenClip](self, "ignoresScreenClip")}];
  return v20;
}

- (id)newShadowViewWithCaptureOnlyMaterialView:(BOOL)a3
{
  v3 = a3;
  v4 = [[MTMaterialShadowView alloc] initWithMaterialView:self];
  [(MTMaterialShadowView *)v4 setCaptureOnlyMaterialViewSuppliedByClient:!v3];
  return v4;
}

- (BOOL)isContentReplacedWithSnapshot
{
  v2 = [(MTMaterialView *)self _materialLayer];
  v3 = [v2 isContentReplacedWithSnapshot];

  return v3;
}

- (void)setContentReplacedWithSnapshot:(BOOL)a3
{
  v3 = a3;
  v4 = [(MTMaterialView *)self _materialLayer];
  [v4 setContentReplacedWithSnapshot:v3];
}

- (void)_addObserver:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    observers = self->_observers;
    v9 = v5;
    if (!observers)
    {
      v7 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v8 = self->_observers;
      self->_observers = v7;

      observers = self->_observers;
    }

    v4 = [(NSHashTable *)observers addObject:v9];
    v5 = v9;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)_removeObserver:(id)a3
{
  if (a3)
  {
    observers = self->_observers;
    if (observers)
    {
      [(NSHashTable *)observers removeObject:?];
    }
  }
}

- (id)_initWithCoreMaterialRecipe:(id)a3 fromBundle:(id)a4 options:(unint64_t)a5 initialWeighting:(double)a6 scaleAdjustment:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v16 = [(MTMaterialView *)self init];
  if (v16)
  {
    if (!v13)
    {
      [MTMaterialView(SubclassOverrides) _initWithCoreMaterialRecipe:a2 fromBundle:v16 options:? initialWeighting:? scaleAdjustment:?];
    }

    objc_storeStrong(&v16->_recipeBundle, a4);
    [(MTMaterialView *)v16 setUserInteractionEnabled:0];
    [(MTMaterialView *)v16 setBackdropScaleAdjustment:v15];
    v17 = [(MTMaterialView *)v16 _materialLayer];
    [v17 setReduceTransparencyEnabled:UIAccessibilityIsReduceTransparencyEnabled()];

    v18 = [(MTMaterialView *)v16 _materialLayer];
    [v18 setReduceMotionEnabled:UIAccessibilityIsReduceMotionEnabled()];

    v19 = [(MTMaterialView *)v16 _materialLayer];
    [v19 setRecipeName:v13 fromBundle:v14];

    [(MTMaterialView *)v16 setBlurEnabled:(a5 & 1) == 0];
    [(MTMaterialView *)v16 setZoomEnabled:(a5 & 2) == 0];
    [(MTMaterialView *)v16 setCaptureOnly:(a5 >> 2) & 1];
    [(MTMaterialView *)v16 setShadowed:(a5 >> 3) & 1];
    [(MTMaterialView *)v16 setWeighting:a6];
    if (fabs(a6) < 2.22044605e-16)
    {
      v20 = [(MTMaterialView *)v16 _materialLayer];
      [v20 _setNeedsConfiguring];

      [(MTMaterialView *)v16 setNeedsLayout];
      [(MTMaterialView *)v16 layoutIfNeeded];
    }

    v21 = [MEMORY[0x277CCAB98] defaultCenter];
    v16->_reduceTransparencyObserverToken = [v21 _addObserver:v16 selector:sel__reduceTransparencyStatusDidChange name:*MEMORY[0x277D764C8] object:0 options:0];

    v22 = [MEMORY[0x277CCAB98] defaultCenter];
    v16->_reduceMotionObserverToken = [v22 _addObserver:v16 selector:sel__reduceMotionStatusDidChange name:*MEMORY[0x277D764C0] object:0 options:0];
  }

  return v16;
}

- (id)_coreMaterialVisualStylingProviderForCategory:(id)a3
{
  v4 = a3;
  v5 = [(MTMaterialView *)self _materialLayer];
  v6 = [v5 visualStylingProviderForCategory:v4];

  return v6;
}

+ (id)staticMaterialViewWithRecipe:(int64_t)a3
{
  v4 = MTCoreMaterialRecipeForMaterialRecipeAndUserInterfaceStyle(a3, 0);
  if (v4 && [MEMORY[0x277CFFF98] canGenerateVisualStyleSetFromRecipe:v4])
  {
    v5 = [(MTMaterialView *)_MTStaticVisualStylingMaterialView materialViewWithRecipe:a3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_deprecatedControlCenterMaterialWithRecipe:(int64_t)a3 configuration:(int64_t)a4 initialWeighting:(double)a5 scaleAdjustment:(id)a6
{
  v11 = a6;
  if (([a1 _isWorkaroundRequiredForRecipe:a3] & 1) == 0)
  {
    [MTMaterialView(DEPRECATED) _deprecatedControlCenterMaterialWithRecipe:a2 configuration:a1 initialWeighting:? scaleAdjustment:?];
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __120__MTMaterialView_DEPRECATED___deprecatedControlCenterMaterialWithRecipe_configuration_initialWeighting_scaleAdjustment___block_invoke;
  v18[3] = &__block_descriptor_40_e44____MTStaticVisualStylingMaterialView_16__0q8l;
  v18[4] = a3;
  v12 = MEMORY[0x223D601D0](v18);
  v13 = v12;
  v14 = 0;
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        goto LABEL_17;
      }

      if (a3 == 4)
      {
        a3 = 20;
      }

      else
      {
        a3 = 21;
      }
    }
  }

  else if (a4 != 2)
  {
    if (a4 == 3)
    {
      v15 = *(v12 + 16);
    }

    else
    {
      if (a4 != 4)
      {
        goto LABEL_17;
      }

      v15 = *(v12 + 16);
    }

    v16 = v15();
    goto LABEL_16;
  }

  v16 = [a1 materialViewWithRecipe:a3 options:0 initialWeighting:v11 scaleAdjustment:a5];
LABEL_16:
  v14 = v16;
LABEL_17:

  return v14;
}

id __120__MTMaterialView_DEPRECATED___deprecatedControlCenterMaterialWithRecipe_configuration_initialWeighting_scaleAdjustment___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MTVisualStylingProvider _visualStylingProviderForRecipe:*(a1 + 32) andCategory:2];
  v4 = MTCoreMaterialVisualStyleForVisualStyle(a2);
  v5 = [v3 _coreMaterialVisualStylingProvider];
  v6 = [v5 visualStyleSetName];
  v7 = MTCoreMaterialRecipeForVisualStyleFromStyleWithName();

  v8 = [(MTMaterialView *)_MTStaticVisualStylingMaterialView materialViewWithRecipeNamed:v7];
  v9 = [MTVisualStylingProvider _visualStylingProviderForRecipe:4 andCategory:1];
  [v8 setVisualStylingProvider:v9 forCategory:1];

  v10 = [MTVisualStylingProvider _visualStylingProviderForRecipe:4 andCategory:2];
  [v8 setVisualStylingProvider:v10 forCategory:2];

  return v8;
}

+ (id)materialViewWithRecipe:(int64_t)a3 configuration:(int64_t)a4
{
  if ([a1 _isWorkaroundRequiredForRecipe:?])
  {
    [a1 _deprecatedControlCenterMaterialWithRecipe:a3 configuration:a4 initialWeighting:0 scaleAdjustment:1.0];
  }

  else
  {
    [a1 materialViewWithRecipe:a3];
  }
  v7 = ;

  return v7;
}

+ (id)materialViewWithRecipe:(int64_t)a3 configuration:(int64_t)a4 initialWeighting:(double)a5
{
  if ([a1 _isWorkaroundRequiredForRecipe:?])
  {
    [a1 _deprecatedControlCenterMaterialWithRecipe:a3 configuration:a4 initialWeighting:0 scaleAdjustment:a5];
  }

  else
  {
    [a1 materialViewWithRecipe:a3 options:0 initialWeighting:a5];
  }
  v9 = ;

  return v9;
}

+ (id)materialViewWithRecipe:(int64_t)a3 configuration:(int64_t)a4 initialWeighting:(double)a5 compatibleWithTraitCollection:(id)a6
{
  v10 = a6;
  if ([a1 _isWorkaroundRequiredForRecipe:a3])
  {
    [a1 _deprecatedControlCenterMaterialWithRecipe:a3 configuration:a4 initialWeighting:0 scaleAdjustment:a5];
  }

  else
  {
    [a1 materialViewWithRecipe:a3 options:0 initialWeighting:v10 compatibleWithTraitCollection:a5];
  }
  v11 = ;

  return v11;
}

+ (id)materialViewWithRecipe:(int64_t)a3 configuration:(int64_t)a4 initialWeighting:(double)a5 scaleAdjustment:(id)a6
{
  v10 = a6;
  if ([a1 _isWorkaroundRequiredForRecipe:a3])
  {
    [a1 _deprecatedControlCenterMaterialWithRecipe:a3 configuration:a4 initialWeighting:v10 scaleAdjustment:a5];
  }

  else
  {
    [a1 materialViewWithRecipe:a3 options:0 initialWeighting:v10 scaleAdjustment:a5];
  }
  v11 = ;

  return v11;
}

+ (id)materialViewWithRecipeNamesByTraitCollection:(id)a3 inBundle:(id)a4 configuration:(int64_t)a5 initialWeighting:(double)a6 scaleAdjustment:(id)a7
{
  v11 = MEMORY[0x277D75C80];
  v12 = a7;
  v13 = a4;
  v14 = a3;
  v15 = [v11 currentTraitCollection];
  v16 = [a1 materialViewWithRecipeNamesByTraitCollection:v14 inBundle:v13 options:0 initialWeighting:v12 scaleAdjustment:v15 compatibleWithTraitCollection:a6];

  return v16;
}

- (void)_initWithRecipeNamesByTraitCollection:(uint64_t)a1 bundle:(uint64_t)a2 options:initialWeighting:scaleAdjustment:compatibleWithTraitCollection:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MTMaterialView.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"recipeNamesByTraitCollection"}];
}

@end