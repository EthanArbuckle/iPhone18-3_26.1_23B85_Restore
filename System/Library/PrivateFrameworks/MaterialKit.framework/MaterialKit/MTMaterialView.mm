@interface MTMaterialView
+ (id)_deprecatedControlCenterMaterialWithRecipe:(int64_t)recipe configuration:(int64_t)configuration initialWeighting:(double)weighting scaleAdjustment:(id)adjustment;
+ (id)_recipeNameForTraitCollection:(id)collection withRecipeNamesByTraitCollection:(id)traitCollection;
+ (id)materialViewWithRecipe:(int64_t)recipe configuration:(int64_t)configuration;
+ (id)materialViewWithRecipe:(int64_t)recipe configuration:(int64_t)configuration initialWeighting:(double)weighting;
+ (id)materialViewWithRecipe:(int64_t)recipe configuration:(int64_t)configuration initialWeighting:(double)weighting compatibleWithTraitCollection:(id)collection;
+ (id)materialViewWithRecipe:(int64_t)recipe configuration:(int64_t)configuration initialWeighting:(double)weighting scaleAdjustment:(id)adjustment;
+ (id)materialViewWithRecipe:(int64_t)recipe options:(unint64_t)options initialWeighting:(double)weighting;
+ (id)materialViewWithRecipe:(int64_t)recipe options:(unint64_t)options initialWeighting:(double)weighting compatibleWithTraitCollection:(id)collection;
+ (id)materialViewWithRecipe:(int64_t)recipe options:(unint64_t)options initialWeighting:(double)weighting scaleAdjustment:(id)adjustment;
+ (id)materialViewWithRecipe:(int64_t)recipe options:(unint64_t)options initialWeighting:(double)weighting scaleAdjustment:(id)adjustment compatibleWithTraitCollection:(id)collection;
+ (id)materialViewWithRecipeNamed:(id)named inBundle:(id)bundle options:(unint64_t)options initialWeighting:(double)weighting scaleAdjustment:(id)adjustment;
+ (id)materialViewWithRecipeNamesByTraitCollection:(id)collection inBundle:(id)bundle configuration:(int64_t)configuration initialWeighting:(double)weighting scaleAdjustment:(id)adjustment;
+ (id)materialViewWithRecipeNamesByTraitCollection:(id)collection inBundle:(id)bundle options:(unint64_t)options initialWeighting:(double)weighting scaleAdjustment:(id)adjustment compatibleWithTraitCollection:(id)traitCollection;
+ (id)materialViewWithVisualStyleFromRecipe:(int64_t)recipe category:(int64_t)category style:(int64_t)style options:(unint64_t)options initialWeighting:(double)weighting compatibleWithTraitCollection:(id)collection;
+ (id)newDefaultHighlightAnimator;
+ (id)staticMaterialViewWithRecipe:(int64_t)recipe;
+ (void)initialize;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (BOOL)addCompletionForCurrentAnimation:(id)animation forMaterialLayer:(id)layer reason:(id *)reason;
- (BOOL)hasInoperativeAppearance;
- (BOOL)ignoresScreenClip;
- (BOOL)isBlurEnabled;
- (BOOL)isCaptureOnly;
- (BOOL)isContentReplacedWithSnapshot;
- (BOOL)isInPlaceFilteringEnabled;
- (BOOL)isManagingInterpolationForMaterialLayer:(id)layer;
- (BOOL)isZoomEnabled;
- (BOOL)shouldCrossfade;
- (MTMaterialView)init;
- (NSString)debugIdentifier;
- (NSString)description;
- (NSString)groupName;
- (NSString)recipeName;
- (double)weighting;
- (id)_coreMaterialVisualStylingProviderForCategory:(id)category;
- (id)_groupNameWithBase:(id)base;
- (id)_initWithCoreMaterialRecipe:(id)recipe fromBundle:(id)bundle options:(unint64_t)options initialWeighting:(double)weighting scaleAdjustment:(id)adjustment;
- (id)_initWithRecipe:(int64_t)recipe options:(unint64_t)options initialWeighting:(double)weighting scaleAdjustment:(id)adjustment compatibleWithTraitCollection:(id)collection;
- (id)_initWithRecipeNamesByTraitCollection:(id)collection bundle:(id)bundle options:(unint64_t)options initialWeighting:(double)weighting scaleAdjustment:(id)adjustment compatibleWithTraitCollection:(id)traitCollection;
- (id)_recipeNameForCurrentTraitCollection;
- (id)backdropScaleAdjustment;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newShadowViewWithCaptureOnlyMaterialView:(BOOL)view;
- (id)visualStylingProviderForCategory:(int64_t)category;
- (unint64_t)_options;
- (void)_addObserver:(id)observer;
- (void)_invalidateAlphaTransformer;
- (void)_notifyObserversWithBlock:(id)block;
- (void)_reduceMotionStatusDidChange;
- (void)_reduceTransparencyStatusDidChange;
- (void)_removeObserver:(id)observer;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)_setCornerRadius:(double)radius;
- (void)_setRecipeName:(id)name withWeighting:(double)weighting;
- (void)_setupAlphaTransformer;
- (void)_setupOrInvalidateAlphaTransformer;
- (void)_updateGroupNameIfNecessary;
- (void)_updateRecipeNameIfNeeded;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)prune;
- (void)setBackdropScaleAdjustment:(id)adjustment;
- (void)setBlurEnabled:(BOOL)enabled;
- (void)setCaptureOnly:(BOOL)only;
- (void)setContentReplacedWithSnapshot:(BOOL)snapshot;
- (void)setDebugIdentifier:(id)identifier;
- (void)setGroupName:(id)name;
- (void)setGroupNameBase:(id)base;
- (void)setHasInoperativeAppearance:(BOOL)appearance;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setIgnoresScreenClip:(BOOL)clip;
- (void)setInPlaceFilteringEnabled:(BOOL)enabled;
- (void)setRecipe:(int64_t)recipe;
- (void)setRecipeDynamic:(BOOL)dynamic;
- (void)setRecipeName:(id)name fromBundle:(id)bundle;
- (void)setShadowed:(BOOL)shadowed;
- (void)setShouldCrossfade:(BOOL)crossfade;
- (void)setUseBuiltInAlphaTransformerAndBackdropScaleAdjustment:(BOOL)adjustment;
- (void)setUseBuiltInAlphaTransformerAndBackdropScaleAdjustmentIfNecessary:(BOOL)necessary;
- (void)setWeighting:(double)weighting;
- (void)setZoomEnabled:(BOOL)enabled;
@end

@implementation MTMaterialView

- (double)weighting
{
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  [_materialLayer weighting];
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
  traitCollection = [(MTMaterialView *)self traitCollection];
  v5 = [traitCollection valueForNSIntegerTrait:objc_opt_class()];

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
      traitCollection = [(MTMaterialView *)self traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];

      recipe = self->_recipe;
    }

    else
    {
      userInterfaceStyle = 0;
    }

    _recipeNameForCurrentTraitCollection = MTCoreMaterialRecipeForMaterialRecipeAndUserInterfaceStyleInShadow(recipe, userInterfaceStyle, self->_shadowed);
    if (!_recipeNameForCurrentTraitCollection)
    {
      goto LABEL_13;
    }

LABEL_9:
    v10 = _recipeNameForCurrentTraitCollection;
    _materialLayer = [(MTMaterialView *)self _materialLayer];
    recipeName = [_materialLayer recipeName];
    v9 = [recipeName isEqualToString:v10];

    if ((v9 & 1) == 0)
    {
      [(MTMaterialView *)self setRecipeName:v10];
    }

    _recipeNameForCurrentTraitCollection = v10;
    goto LABEL_13;
  }

  if (!self->_recipeNamesByTraitCollection)
  {
    _recipeNameForCurrentTraitCollection = 0;
    goto LABEL_13;
  }

  _recipeNameForCurrentTraitCollection = [(MTMaterialView *)self _recipeNameForCurrentTraitCollection];
  if (_recipeNameForCurrentTraitCollection)
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
  traitCollection = [(MTMaterialView *)self traitCollection];
  v5 = [v3 _recipeNameForTraitCollection:traitCollection withRecipeNamesByTraitCollection:self->_recipeNamesByTraitCollection];

  return v5;
}

- (BOOL)shouldCrossfade
{
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  shouldCrossfade = [_materialLayer shouldCrossfade];

  return shouldCrossfade;
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = MTMaterialView;
  [(MTMaterialView *)&v5 didMoveToWindow];
  window = [(MTMaterialView *)self window];
  if (window)
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
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  isZoomEnabled = [_materialLayer isZoomEnabled];

  return isZoomEnabled;
}

- (BOOL)isBlurEnabled
{
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  isBlurEnabled = [_materialLayer isBlurEnabled];

  return isBlurEnabled;
}

- (void)dealloc
{
  if (self->_reduceTransparencyObserverToken)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter _removeObserver:self->_reduceTransparencyObserverToken];

    self->_reduceTransparencyObserverToken = 0;
  }

  if (self->_reduceMotionObserverToken)
  {
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 _removeObserver:self->_reduceMotionObserverToken];

    self->_reduceMotionObserverToken = 0;
  }

  v5.receiver = self;
  v5.super_class = MTMaterialView;
  [(MTMaterialView *)&v5 dealloc];
}

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == self)
  {

    MTRegisterMaterialKitLogging();
  }
}

- (void)_setupAlphaTransformer
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  selfCopy = self;
  _os_log_debug_impl(&dword_21E600000, a2, OS_LOG_TYPE_DEBUG, "%{public}@: Instantiating backdrop float animatable property", &v2, 0xCu);
}

- (id)_initWithRecipe:(int64_t)recipe options:(unint64_t)options initialWeighting:(double)weighting scaleAdjustment:(id)adjustment compatibleWithTraitCollection:(id)collection
{
  adjustmentCopy = adjustment;
  collectionCopy = collection;
  if (!collectionCopy)
  {
    collectionCopy = [MEMORY[0x277D75C80] currentTraitCollection];
  }

  v14 = MTCoreMaterialRecipeForMaterialRecipeAndUserInterfaceStyle(recipe, [collectionCopy userInterfaceStyle]);
  v15 = [(MTMaterialView *)self _initWithCoreMaterialRecipe:v14 fromBundle:0 options:options initialWeighting:adjustmentCopy scaleAdjustment:weighting];

  if (v15)
  {
    v15[62] = recipe;
  }

  return v15;
}

- (id)_initWithRecipeNamesByTraitCollection:(id)collection bundle:(id)bundle options:(unint64_t)options initialWeighting:(double)weighting scaleAdjustment:(id)adjustment compatibleWithTraitCollection:(id)traitCollection
{
  collectionCopy = collection;
  bundleCopy = bundle;
  adjustmentCopy = adjustment;
  traitCollectionCopy = traitCollection;
  currentTraitCollection = traitCollectionCopy;
  if (collectionCopy)
  {
    if (traitCollectionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [MTMaterialView _initWithRecipeNamesByTraitCollection:a2 bundle:self options:? initialWeighting:? scaleAdjustment:? compatibleWithTraitCollection:?];
  if (!currentTraitCollection)
  {
LABEL_3:
    currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  }

LABEL_4:
  v21 = [objc_opt_class() _recipeNameForTraitCollection:currentTraitCollection withRecipeNamesByTraitCollection:collectionCopy];
  v22 = [(MTMaterialView *)self _initWithCoreMaterialRecipe:v21 fromBundle:bundleCopy options:options initialWeighting:adjustmentCopy scaleAdjustment:weighting];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(v22 + 53, collection);
  }

  return v23;
}

+ (id)materialViewWithRecipe:(int64_t)recipe options:(unint64_t)options initialWeighting:(double)weighting
{
  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  v10 = [self materialViewWithRecipe:recipe options:options initialWeighting:currentTraitCollection compatibleWithTraitCollection:weighting];

  return v10;
}

+ (id)materialViewWithRecipe:(int64_t)recipe options:(unint64_t)options initialWeighting:(double)weighting compatibleWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v11 = [[self alloc] _initWithRecipe:recipe options:options initialWeighting:0 scaleAdjustment:collectionCopy compatibleWithTraitCollection:weighting];

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
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  groupName = [_materialLayer groupName];

  return groupName;
}

- (void)setGroupName:(id)name
{
  nameCopy = name;
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  [_materialLayer setGroupName:nameCopy];

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

- (void)setGroupNameBase:(id)base
{
  baseCopy = base;
  if (([baseCopy isEqualToString:self->_groupNameBase] & 1) == 0)
  {
    v4 = [baseCopy copy];
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

- (void)setWeighting:(double)weighting
{
  v4 = fmax(fmin(weighting, 1.0), 0.0);
  [(MTMaterialView *)self weighting];
  if (v4 != v5)
  {
    _materialLayer = [(MTMaterialView *)self _materialLayer];
    [_materialLayer setWeighting:v4];

    _backdropFloatAnimatableProperty = [(MTMaterialView *)self _backdropFloatAnimatableProperty];
    [_backdropFloatAnimatableProperty setValue:v4];

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

- (void)setRecipe:(int64_t)recipe
{
  if (self->_recipe != recipe)
  {
    self->_recipe = recipe;
    if (self->_recipeDynamic)
    {
      traitCollection = [(MTMaterialView *)self traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];
    }

    else
    {
      userInterfaceStyle = 0;
    }

    v8 = MTCoreMaterialRecipeForMaterialRecipeAndUserInterfaceStyleInShadow(recipe, userInterfaceStyle, self->_shadowed);
    [(MTMaterialView *)self setRecipeName:v8];
  }
}

- (void)setBlurEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  [_materialLayer setBlurEnabled:enabledCopy];

  [(MTMaterialView *)self _updateGroupNameIfNecessary];
}

- (void)setZoomEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  [_materialLayer setZoomEnabled:enabledCopy];

  [(MTMaterialView *)self _updateGroupNameIfNecessary];
}

- (BOOL)isCaptureOnly
{
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  captureOnly = [_materialLayer captureOnly];

  return captureOnly;
}

- (void)setCaptureOnly:(BOOL)only
{
  onlyCopy = only;
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  [_materialLayer setCaptureOnly:onlyCopy];
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
        traitCollection = [(MTMaterialView *)self traitCollection];
        userInterfaceStyle = [traitCollection userInterfaceStyle];

        recipe = self->_recipe;
        shadowed = self->_shadowed;
      }

      else
      {
        userInterfaceStyle = 0;
      }

      v7 = MTCoreMaterialRecipeForMaterialRecipeAndUserInterfaceStyleInShadow(recipe, userInterfaceStyle, shadowed);
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
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  _hasInoperativeAppearance = [_materialLayer _hasInoperativeAppearance];

  return _hasInoperativeAppearance;
}

- (void)setHasInoperativeAppearance:(BOOL)appearance
{
  appearanceCopy = appearance;
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  [_materialLayer _setHasInoperativeAppearance:appearanceCopy removingIfIdentity:0];
}

- (NSString)debugIdentifier
{
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  debugIdentifier = [_materialLayer debugIdentifier];

  return debugIdentifier;
}

- (void)setDebugIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  [_materialLayer setDebugIdentifier:identifierCopy];
}

- (void)prune
{
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  [_materialLayer prune];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  mt_implicitlyAnimatableKeys = [objc_opt_class() mt_implicitlyAnimatableKeys];
  if ([mt_implicitlyAnimatableKeys containsObject:keyCopy])
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MTMaterialView;
    v7 = [(MTMaterialView *)&v9 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v7;
}

- (void)_setCornerRadius:(double)radius
{
  v5.receiver = self;
  v5.super_class = MTMaterialView;
  [(MTMaterialView *)&v5 _setCornerRadius:?];
  [(UIView *)self->_highlightView _setCornerRadius:radius];
}

- (void)_setContinuousCornerRadius:(double)radius
{
  v5.receiver = self;
  v5.super_class = MTMaterialView;
  [(MTMaterialView *)&v5 _setContinuousCornerRadius:?];
  [(UIView *)self->_highlightView _setContinuousCornerRadius:radius];
}

- (BOOL)isManagingInterpolationForMaterialLayer:(id)layer
{
  _isInRetargetableAnimationBlock = [MEMORY[0x277D75D18] _isInRetargetableAnimationBlock];
  if (_isInRetargetableAnimationBlock)
  {
    v4 = MEMORY[0x277D75D18];

    LOBYTE(_isInRetargetableAnimationBlock) = [v4 areAnimationsEnabled];
  }

  return _isInRetargetableAnimationBlock;
}

- (BOOL)addCompletionForCurrentAnimation:(id)animation forMaterialLayer:(id)layer reason:(id *)reason
{
  animationCopy = animation;
  layerCopy = layer;
  if (!animationCopy)
  {
    if (reason)
    {
      v12 = @"no argument block";
LABEL_13:
      v11 = 0;
      *reason = v12;
      goto LABEL_15;
    }

LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  if (![MEMORY[0x277D75D18] _isInAnimationBlockWithAnimationsEnabled])
  {
    if (reason)
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
  v15 = animationCopy;
  v10 = [v9 _addCompletion:v14];
  v11 = v10;
  if (reason && (v10 & 1) == 0)
  {
    *reason = @"failed to add completion";
  }

LABEL_15:
  return v11;
}

- (id)visualStylingProviderForCategory:(int64_t)category
{
  v4 = MTCoreMaterialVisualStyleCategoryForVisualStyleCategory(category);
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
      visualStyleSetName = [v8 visualStyleSetName];
      v10 = [visualStyleSetName length];

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
  selfCopy = self;
  _os_log_debug_impl(&dword_21E600000, a2, OS_LOG_TYPE_DEBUG, "%{public}@: Tearing down backdrop float animatable property", &v2, 0xCu);
}

+ (id)_recipeNameForTraitCollection:(id)collection withRecipeNamesByTraitCollection:(id)traitCollection
{
  traitCollectionCopy = traitCollection;
  v6 = traitCollectionCopy;
  v7 = 0;
  if (collection && traitCollectionCopy)
  {
    collectionCopy = collection;
    allKeys = [v6 allKeys];
    v10 = MEMORY[0x277D75C80];
    userInterfaceStyle = [collectionCopy userInterfaceStyle];

    v12 = [v10 traitCollectionWithUserInterfaceStyle:userInterfaceStyle];
    v13 = [allKeys arrayByAddingObject:v12];

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

- (void)_setRecipeName:(id)name withWeighting:(double)weighting
{
  nameCopy = name;
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  [_materialLayer setRecipeName:nameCopy fromBundle:self->_recipeBundle];

  _materialLayer2 = [(MTMaterialView *)self _materialLayer];
  [_materialLayer2 setWeighting:weighting];

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

- (id)_groupNameWithBase:(id)base
{
  v4 = MEMORY[0x277CCAB68];
  baseCopy = base;
  v6 = [v4 alloc];
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  recipeName = [_materialLayer recipeName];
  v9 = [v6 initWithFormat:@"%@.%@", baseCopy, recipeName];

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

  _materialLayer2 = [(MTMaterialView *)self _materialLayer];
  reducesCaptureBitDepth = [_materialLayer2 reducesCaptureBitDepth];

  if (reducesCaptureBitDepth)
  {
    [v9 appendString:@".reducesCaptureBitDepth"];
  }

  return v9;
}

- (void)_reduceMotionStatusDidChange
{
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  isReduceMotionEnabled = [_materialLayer isReduceMotionEnabled];

  if (IsReduceMotionEnabled != isReduceMotionEnabled)
  {
    _materialLayer2 = [(MTMaterialView *)self _materialLayer];
    [_materialLayer2 setReduceMotionEnabled:IsReduceMotionEnabled];

    [(MTMaterialView *)self _setupOrInvalidateAlphaTransformer];
  }
}

- (void)_reduceTransparencyStatusDidChange
{
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  isReduceTransparencyEnabled = [_materialLayer isReduceTransparencyEnabled];

  if (IsReduceTransparencyEnabled != isReduceTransparencyEnabled)
  {
    _materialLayer2 = [(MTMaterialView *)self _materialLayer];
    [_materialLayer2 setReduceTransparencyEnabled:IsReduceTransparencyEnabled];

    [(MTMaterialView *)self _setupOrInvalidateAlphaTransformer];
  }
}

- (void)_notifyObserversWithBlock:(id)block
{
  v16 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
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

            blockCopy[2](blockCopy, *(*(&v11 + 1) + 8 * v10++));
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
  debugIdentifier = [(MTMaterialView *)self debugIdentifier];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = v5;
  if (debugIdentifier)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@" (%@)", debugIdentifier];
    v8 = [v4 stringWithFormat:@"<%@%@: %p>", v6, v7, self];
  }

  else
  {
    v8 = [v4 stringWithFormat:@"<%@%@: %p>", v5, &stru_282FA21D0, self];
  }

  return v8;
}

+ (id)materialViewWithRecipe:(int64_t)recipe options:(unint64_t)options initialWeighting:(double)weighting scaleAdjustment:(id)adjustment
{
  v10 = MEMORY[0x277D75C80];
  adjustmentCopy = adjustment;
  currentTraitCollection = [v10 currentTraitCollection];
  v13 = [self materialViewWithRecipe:recipe options:options initialWeighting:adjustmentCopy scaleAdjustment:currentTraitCollection compatibleWithTraitCollection:weighting];

  return v13;
}

+ (id)materialViewWithRecipe:(int64_t)recipe options:(unint64_t)options initialWeighting:(double)weighting scaleAdjustment:(id)adjustment compatibleWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  adjustmentCopy = adjustment;
  v14 = [[self alloc] _initWithRecipe:recipe options:options initialWeighting:adjustmentCopy scaleAdjustment:collectionCopy compatibleWithTraitCollection:weighting];

  return v14;
}

+ (id)materialViewWithRecipeNamed:(id)named inBundle:(id)bundle options:(unint64_t)options initialWeighting:(double)weighting scaleAdjustment:(id)adjustment
{
  adjustmentCopy = adjustment;
  bundleCopy = bundle;
  namedCopy = named;
  v15 = [[self alloc] _initWithCoreMaterialRecipe:namedCopy fromBundle:bundleCopy options:options initialWeighting:adjustmentCopy scaleAdjustment:weighting];

  return v15;
}

+ (id)materialViewWithRecipeNamesByTraitCollection:(id)collection inBundle:(id)bundle options:(unint64_t)options initialWeighting:(double)weighting scaleAdjustment:(id)adjustment compatibleWithTraitCollection:(id)traitCollection
{
  traitCollectionCopy = traitCollection;
  adjustmentCopy = adjustment;
  bundleCopy = bundle;
  collectionCopy = collection;
  v18 = [[self alloc] _initWithRecipeNamesByTraitCollection:collectionCopy bundle:bundleCopy options:options initialWeighting:adjustmentCopy scaleAdjustment:traitCollectionCopy compatibleWithTraitCollection:weighting];

  return v18;
}

+ (id)materialViewWithVisualStyleFromRecipe:(int64_t)recipe category:(int64_t)category style:(int64_t)style options:(unint64_t)options initialWeighting:(double)weighting compatibleWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v14 = MTCoreMaterialVisualStyleCategoryForVisualStyleCategory(category);
  v15 = MTCoreMaterialVisualStyleForVisualStyle(style);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __135__MTMaterialView_Private__materialViewWithVisualStyleFromRecipe_category_style_options_initialWeighting_compatibleWithTraitCollection___block_invoke;
  v28[3] = &unk_27835D480;
  recipeCopy = recipe;
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

  v25 = [[self alloc] _initWithRecipeNamesByTraitCollection:v19 bundle:0 options:options initialWeighting:0 scaleAdjustment:collectionCopy compatibleWithTraitCollection:weighting];

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
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  recipeName = [_materialLayer recipeName];

  return recipeName;
}

- (void)setRecipeName:(id)name fromBundle:(id)bundle
{
  bundleCopy = bundle;
  if (name && bundleCopy)
  {
    self->_recipe = 0;
  }

  recipeBundle = self->_recipeBundle;
  self->_recipeBundle = bundleCopy;
  nameCopy = name;

  [(MTMaterialView *)self _setRecipeName:nameCopy withWeighting:1.0];
}

- (BOOL)isInPlaceFilteringEnabled
{
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  allowsInPlaceFiltering = [_materialLayer allowsInPlaceFiltering];

  return allowsInPlaceFiltering;
}

- (void)setInPlaceFilteringEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  [_materialLayer setAllowsInPlaceFiltering:enabledCopy];
}

- (id)backdropScaleAdjustment
{
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  backdropScaleAdjustment = [_materialLayer backdropScaleAdjustment];

  return backdropScaleAdjustment;
}

- (void)setBackdropScaleAdjustment:(id)adjustment
{
  adjustmentCopy = adjustment;
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  [_materialLayer setBackdropScaleAdjustment:adjustmentCopy];
}

- (void)setShouldCrossfade:(BOOL)crossfade
{
  crossfadeCopy = crossfade;
  if ([(MTMaterialView *)self shouldCrossfade]!= crossfade)
  {
    if (crossfadeCopy)
    {
      [(MTMaterialView *)self setUseBuiltInAlphaTransformerAndBackdropScaleAdjustment:0];
    }

    _materialLayer = [(MTMaterialView *)self _materialLayer];
    [_materialLayer setShouldCrossfade:crossfadeCopy];
  }
}

- (void)setUseBuiltInAlphaTransformerAndBackdropScaleAdjustment:(BOOL)adjustment
{
  if (self->_useBuiltInAlphaTransformerAndBackdropScaleAdjustment != adjustment)
  {
    self->_useBuiltInAlphaTransformerAndBackdropScaleAdjustment = adjustment;
    if (adjustment)
    {
      _materialLayer = [(MTMaterialView *)self _materialLayer];
      [_materialLayer setShouldCrossfade:0];

      [(MTMaterialView *)self _setupOrInvalidateAlphaTransformer];
    }

    else
    {
      [(MTMaterialView *)self _invalidateAlphaTransformer];
      _materialLayer2 = [(MTMaterialView *)self _materialLayer];
      [_materialLayer2 _reevaluateDefaultShouldCrossfade];
    }
  }
}

- (void)setUseBuiltInAlphaTransformerAndBackdropScaleAdjustmentIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  if (!necessary || MTDynamicBlurRadiusGraphicsQuality() != 100)
  {

    [(MTMaterialView *)self setUseBuiltInAlphaTransformerAndBackdropScaleAdjustment:necessaryCopy];
  }
}

- (void)setRecipeDynamic:(BOOL)dynamic
{
  if (self->_recipeDynamic != dynamic)
  {
    v6[7] = v3;
    v6[8] = v4;
    self->_recipeDynamic = dynamic;
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
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  ignoresScreenClip = [_materialLayer ignoresScreenClip];

  return ignoresScreenClip;
}

- (void)setIgnoresScreenClip:(BOOL)clip
{
  clipCopy = clip;
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  [_materialLayer setIgnoresScreenClip:clipCopy];
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

- (id)copyWithZone:(_NSZone *)zone
{
  if (self->_recipeNamesByTraitCollection)
  {
    v5 = objc_alloc(objc_opt_class());
    recipeNamesByTraitCollection = self->_recipeNamesByTraitCollection;
    recipeBundle = self->_recipeBundle;
    _options = [(MTMaterialView *)self _options];
    [(MTMaterialView *)self weighting];
    v10 = v9;
    backdropScaleAdjustment = [(MTMaterialView *)self backdropScaleAdjustment];
    traitCollection = [(MTMaterialView *)self traitCollection];
    v13 = [v5 _initWithRecipeNamesByTraitCollection:recipeNamesByTraitCollection bundle:recipeBundle options:_options initialWeighting:backdropScaleAdjustment scaleAdjustment:traitCollection compatibleWithTraitCollection:v10];
LABEL_5:
    v20 = v13;
    goto LABEL_6;
  }

  recipe = self->_recipe;
  v15 = objc_alloc(objc_opt_class());
  if (recipe)
  {
    v16 = self->_recipe;
    _options2 = [(MTMaterialView *)self _options];
    [(MTMaterialView *)self weighting];
    v19 = v18;
    backdropScaleAdjustment = [(MTMaterialView *)self backdropScaleAdjustment];
    traitCollection = [(MTMaterialView *)self traitCollection];
    v13 = [v15 _initWithRecipe:v16 options:_options2 initialWeighting:backdropScaleAdjustment scaleAdjustment:traitCollection compatibleWithTraitCollection:v19];
    goto LABEL_5;
  }

  backdropScaleAdjustment = [(MTMaterialView *)self _materialLayer];
  traitCollection = [backdropScaleAdjustment recipe];
  recipeName = traitCollection;
  if (!traitCollection)
  {
    _materialLayer = [(MTMaterialView *)self _materialLayer];
    recipeName = [_materialLayer recipeName];
  }

  v24 = self->_recipeBundle;
  _options3 = [(MTMaterialView *)self _options];
  [(MTMaterialView *)self weighting];
  v27 = v26;
  backdropScaleAdjustment2 = [(MTMaterialView *)self backdropScaleAdjustment];
  v20 = [v15 _initWithCoreMaterialRecipe:recipeName fromBundle:v24 options:_options3 initialWeighting:backdropScaleAdjustment2 scaleAdjustment:v27];

  if (!traitCollection)
  {
  }

LABEL_6:

  groupNameBase = [(MTMaterialView *)self groupNameBase];
  [v20 setGroupNameBase:groupNameBase];

  [v20 setShouldCrossfade:{-[MTMaterialView shouldCrossfade](self, "shouldCrossfade")}];
  [v20 setUseBuiltInAlphaTransformerAndBackdropScaleAdjustment:{-[MTMaterialView useBuiltInAlphaTransformerAndBackdropScaleAdjustment](self, "useBuiltInAlphaTransformerAndBackdropScaleAdjustment")}];
  [v20 setUseBuiltInAlphaTransformerAndBackdropScaleAdjustmentIfNecessary:{-[MTMaterialView useBuiltInAlphaTransformerAndBackdropScaleAdjustmentIfNecessary](self, "useBuiltInAlphaTransformerAndBackdropScaleAdjustmentIfNecessary")}];
  [v20 setRecipeDynamic:{-[MTMaterialView isRecipeDynamic](self, "isRecipeDynamic")}];
  [v20 setIgnoresScreenClip:{-[MTMaterialView ignoresScreenClip](self, "ignoresScreenClip")}];
  return v20;
}

- (id)newShadowViewWithCaptureOnlyMaterialView:(BOOL)view
{
  viewCopy = view;
  v4 = [[MTMaterialShadowView alloc] initWithMaterialView:self];
  [(MTMaterialShadowView *)v4 setCaptureOnlyMaterialViewSuppliedByClient:!viewCopy];
  return v4;
}

- (BOOL)isContentReplacedWithSnapshot
{
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  isContentReplacedWithSnapshot = [_materialLayer isContentReplacedWithSnapshot];

  return isContentReplacedWithSnapshot;
}

- (void)setContentReplacedWithSnapshot:(BOOL)snapshot
{
  snapshotCopy = snapshot;
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  [_materialLayer setContentReplacedWithSnapshot:snapshotCopy];
}

- (void)_addObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    observers = self->_observers;
    v9 = v5;
    if (!observers)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v8 = self->_observers;
      self->_observers = weakObjectsHashTable;

      observers = self->_observers;
    }

    observerCopy = [(NSHashTable *)observers addObject:v9];
    v5 = v9;
  }

  MEMORY[0x2821F96F8](observerCopy, v5);
}

- (void)_removeObserver:(id)observer
{
  if (observer)
  {
    observers = self->_observers;
    if (observers)
    {
      [(NSHashTable *)observers removeObject:?];
    }
  }
}

- (id)_initWithCoreMaterialRecipe:(id)recipe fromBundle:(id)bundle options:(unint64_t)options initialWeighting:(double)weighting scaleAdjustment:(id)adjustment
{
  recipeCopy = recipe;
  bundleCopy = bundle;
  adjustmentCopy = adjustment;
  v16 = [(MTMaterialView *)self init];
  if (v16)
  {
    if (!recipeCopy)
    {
      [MTMaterialView(SubclassOverrides) _initWithCoreMaterialRecipe:a2 fromBundle:v16 options:? initialWeighting:? scaleAdjustment:?];
    }

    objc_storeStrong(&v16->_recipeBundle, bundle);
    [(MTMaterialView *)v16 setUserInteractionEnabled:0];
    [(MTMaterialView *)v16 setBackdropScaleAdjustment:adjustmentCopy];
    _materialLayer = [(MTMaterialView *)v16 _materialLayer];
    [_materialLayer setReduceTransparencyEnabled:UIAccessibilityIsReduceTransparencyEnabled()];

    _materialLayer2 = [(MTMaterialView *)v16 _materialLayer];
    [_materialLayer2 setReduceMotionEnabled:UIAccessibilityIsReduceMotionEnabled()];

    _materialLayer3 = [(MTMaterialView *)v16 _materialLayer];
    [_materialLayer3 setRecipeName:recipeCopy fromBundle:bundleCopy];

    [(MTMaterialView *)v16 setBlurEnabled:(options & 1) == 0];
    [(MTMaterialView *)v16 setZoomEnabled:(options & 2) == 0];
    [(MTMaterialView *)v16 setCaptureOnly:(options >> 2) & 1];
    [(MTMaterialView *)v16 setShadowed:(options >> 3) & 1];
    [(MTMaterialView *)v16 setWeighting:weighting];
    if (fabs(weighting) < 2.22044605e-16)
    {
      _materialLayer4 = [(MTMaterialView *)v16 _materialLayer];
      [_materialLayer4 _setNeedsConfiguring];

      [(MTMaterialView *)v16 setNeedsLayout];
      [(MTMaterialView *)v16 layoutIfNeeded];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v16->_reduceTransparencyObserverToken = [defaultCenter _addObserver:v16 selector:sel__reduceTransparencyStatusDidChange name:*MEMORY[0x277D764C8] object:0 options:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    v16->_reduceMotionObserverToken = [defaultCenter2 _addObserver:v16 selector:sel__reduceMotionStatusDidChange name:*MEMORY[0x277D764C0] object:0 options:0];
  }

  return v16;
}

- (id)_coreMaterialVisualStylingProviderForCategory:(id)category
{
  categoryCopy = category;
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  v6 = [_materialLayer visualStylingProviderForCategory:categoryCopy];

  return v6;
}

+ (id)staticMaterialViewWithRecipe:(int64_t)recipe
{
  v4 = MTCoreMaterialRecipeForMaterialRecipeAndUserInterfaceStyle(recipe, 0);
  if (v4 && [MEMORY[0x277CFFF98] canGenerateVisualStyleSetFromRecipe:v4])
  {
    v5 = [(MTMaterialView *)_MTStaticVisualStylingMaterialView materialViewWithRecipe:recipe];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_deprecatedControlCenterMaterialWithRecipe:(int64_t)recipe configuration:(int64_t)configuration initialWeighting:(double)weighting scaleAdjustment:(id)adjustment
{
  adjustmentCopy = adjustment;
  if (([self _isWorkaroundRequiredForRecipe:recipe] & 1) == 0)
  {
    [MTMaterialView(DEPRECATED) _deprecatedControlCenterMaterialWithRecipe:a2 configuration:self initialWeighting:? scaleAdjustment:?];
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __120__MTMaterialView_DEPRECATED___deprecatedControlCenterMaterialWithRecipe_configuration_initialWeighting_scaleAdjustment___block_invoke;
  v18[3] = &__block_descriptor_40_e44____MTStaticVisualStylingMaterialView_16__0q8l;
  v18[4] = recipe;
  v12 = MEMORY[0x223D601D0](v18);
  v13 = v12;
  v14 = 0;
  if (configuration <= 1)
  {
    if (configuration)
    {
      if (configuration != 1)
      {
        goto LABEL_17;
      }

      if (recipe == 4)
      {
        recipe = 20;
      }

      else
      {
        recipe = 21;
      }
    }
  }

  else if (configuration != 2)
  {
    if (configuration == 3)
    {
      v15 = *(v12 + 16);
    }

    else
    {
      if (configuration != 4)
      {
        goto LABEL_17;
      }

      v15 = *(v12 + 16);
    }

    v16 = v15();
    goto LABEL_16;
  }

  v16 = [self materialViewWithRecipe:recipe options:0 initialWeighting:adjustmentCopy scaleAdjustment:weighting];
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

+ (id)materialViewWithRecipe:(int64_t)recipe configuration:(int64_t)configuration
{
  if ([self _isWorkaroundRequiredForRecipe:?])
  {
    [self _deprecatedControlCenterMaterialWithRecipe:recipe configuration:configuration initialWeighting:0 scaleAdjustment:1.0];
  }

  else
  {
    [self materialViewWithRecipe:recipe];
  }
  v7 = ;

  return v7;
}

+ (id)materialViewWithRecipe:(int64_t)recipe configuration:(int64_t)configuration initialWeighting:(double)weighting
{
  if ([self _isWorkaroundRequiredForRecipe:?])
  {
    [self _deprecatedControlCenterMaterialWithRecipe:recipe configuration:configuration initialWeighting:0 scaleAdjustment:weighting];
  }

  else
  {
    [self materialViewWithRecipe:recipe options:0 initialWeighting:weighting];
  }
  v9 = ;

  return v9;
}

+ (id)materialViewWithRecipe:(int64_t)recipe configuration:(int64_t)configuration initialWeighting:(double)weighting compatibleWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  if ([self _isWorkaroundRequiredForRecipe:recipe])
  {
    [self _deprecatedControlCenterMaterialWithRecipe:recipe configuration:configuration initialWeighting:0 scaleAdjustment:weighting];
  }

  else
  {
    [self materialViewWithRecipe:recipe options:0 initialWeighting:collectionCopy compatibleWithTraitCollection:weighting];
  }
  v11 = ;

  return v11;
}

+ (id)materialViewWithRecipe:(int64_t)recipe configuration:(int64_t)configuration initialWeighting:(double)weighting scaleAdjustment:(id)adjustment
{
  adjustmentCopy = adjustment;
  if ([self _isWorkaroundRequiredForRecipe:recipe])
  {
    [self _deprecatedControlCenterMaterialWithRecipe:recipe configuration:configuration initialWeighting:adjustmentCopy scaleAdjustment:weighting];
  }

  else
  {
    [self materialViewWithRecipe:recipe options:0 initialWeighting:adjustmentCopy scaleAdjustment:weighting];
  }
  v11 = ;

  return v11;
}

+ (id)materialViewWithRecipeNamesByTraitCollection:(id)collection inBundle:(id)bundle configuration:(int64_t)configuration initialWeighting:(double)weighting scaleAdjustment:(id)adjustment
{
  v11 = MEMORY[0x277D75C80];
  adjustmentCopy = adjustment;
  bundleCopy = bundle;
  collectionCopy = collection;
  currentTraitCollection = [v11 currentTraitCollection];
  v16 = [self materialViewWithRecipeNamesByTraitCollection:collectionCopy inBundle:bundleCopy options:0 initialWeighting:adjustmentCopy scaleAdjustment:currentTraitCollection compatibleWithTraitCollection:weighting];

  return v16;
}

- (void)_initWithRecipeNamesByTraitCollection:(uint64_t)a1 bundle:(uint64_t)a2 options:initialWeighting:scaleAdjustment:compatibleWithTraitCollection:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MTMaterialView.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"recipeNamesByTraitCollection"}];
}

@end