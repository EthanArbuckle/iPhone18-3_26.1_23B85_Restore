@interface _MTStaticVisualStylingMaterialView
- (id)_coreMaterialVisualStylingProviderForCategory:(id)category;
- (id)_initWithCoreMaterialRecipe:(id)recipe fromBundle:(id)bundle options:(unint64_t)options initialWeighting:(double)weighting scaleAdjustment:(id)adjustment;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_invalidateContentVisualStyling;
- (void)_setCoreMaterialVisualStylingProvider:(id)provider ForCategory:(id)category;
- (void)_updateContentVisualStylingIfNecessary;
- (void)_updateContentVisualStylingWithProvider:(id)provider;
- (void)_updateCoreMaterialVisualStylingProviders;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)setBackdropScaleAdjustment:(id)adjustment;
- (void)setBlurEnabled:(BOOL)enabled;
- (void)setCaptureOnly:(BOOL)only;
- (void)setContentReplacedWithSnapshot:(BOOL)snapshot;
- (void)setIgnoresScreenClip:(BOOL)clip;
- (void)setRecipe:(int64_t)recipe;
- (void)setRecipeName:(id)name;
- (void)setShouldCrossfade:(BOOL)crossfade;
- (void)setUseBuiltInAlphaTransformerAndBackdropScaleAdjustment:(BOOL)adjustment;
- (void)setUseBuiltInAlphaTransformerAndBackdropScaleAdjustmentIfNecessary:(BOOL)necessary;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
- (void)setZoomEnabled:(BOOL)enabled;
@end

@implementation _MTStaticVisualStylingMaterialView

- (void)setRecipe:(int64_t)recipe
{
  v4.receiver = self;
  v4.super_class = _MTStaticVisualStylingMaterialView;
  [(MTMaterialView *)&v4 setRecipe:recipe];
  [(_MTStaticVisualStylingMaterialView *)self _invalidateContentVisualStyling];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _MTStaticVisualStylingMaterialView;
  [(MTMaterialView *)&v3 layoutSubviews];
  if (!self->_contentVisualStylingProvider)
  {
    [(_MTStaticVisualStylingMaterialView *)self _updateContentVisualStylingIfNecessary];
  }
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = _MTStaticVisualStylingMaterialView;
  [(_MTStaticVisualStylingMaterialView *)&v3 didMoveToSuperview];
  [(_MTStaticVisualStylingMaterialView *)self _updateContentVisualStylingWithProvider:self->_contentVisualStylingProvider];
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = _MTStaticVisualStylingMaterialView;
  [(_MTStaticVisualStylingMaterialView *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(_MTStaticVisualStylingMaterialView *)self _updateContentVisualStylingIfNecessary];
}

- (void)setRecipeName:(id)name
{
  nameCopy = name;
  recipeName = self->_recipeName;
  if (recipeName != nameCopy && ![(NSString *)recipeName isEqualToString:nameCopy])
  {
    objc_storeStrong(&self->_recipeName, name);
    [(_MTStaticVisualStylingMaterialView *)self _invalidateContentVisualStyling];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setBlurEnabled:(BOOL)enabled
{
  if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_ERROR))
  {
    [_MTStaticVisualStylingMaterialView setBlurEnabled:];
  }
}

- (void)setZoomEnabled:(BOOL)enabled
{
  if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_ERROR))
  {
    [_MTStaticVisualStylingMaterialView setZoomEnabled:];
  }
}

- (void)setCaptureOnly:(BOOL)only
{
  if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_ERROR))
  {
    [_MTStaticVisualStylingMaterialView setCaptureOnly:];
  }
}

- (void)setBackdropScaleAdjustment:(id)adjustment
{
  if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_ERROR))
  {
    [_MTStaticVisualStylingMaterialView setBackdropScaleAdjustment:];
  }
}

- (void)setShouldCrossfade:(BOOL)crossfade
{
  if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_ERROR))
  {
    [_MTStaticVisualStylingMaterialView setShouldCrossfade:];
  }
}

- (void)setUseBuiltInAlphaTransformerAndBackdropScaleAdjustment:(BOOL)adjustment
{
  if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_ERROR))
  {
    [_MTStaticVisualStylingMaterialView setUseBuiltInAlphaTransformerAndBackdropScaleAdjustment:];
  }
}

- (void)setUseBuiltInAlphaTransformerAndBackdropScaleAdjustmentIfNecessary:(BOOL)necessary
{
  if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_ERROR))
  {
    [_MTStaticVisualStylingMaterialView setUseBuiltInAlphaTransformerAndBackdropScaleAdjustment:];
  }
}

- (void)setIgnoresScreenClip:(BOOL)clip
{
  if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_ERROR))
  {
    [_MTStaticVisualStylingMaterialView setIgnoresScreenClip:];
  }
}

- (void)setContentReplacedWithSnapshot:(BOOL)snapshot
{
  if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_ERROR))
  {
    [_MTStaticVisualStylingMaterialView setContentReplacedWithSnapshot:];
  }
}

- (id)_initWithCoreMaterialRecipe:(id)recipe fromBundle:(id)bundle options:(unint64_t)options initialWeighting:(double)weighting scaleAdjustment:(id)adjustment
{
  recipeCopy = recipe;
  v16.receiver = self;
  v16.super_class = _MTStaticVisualStylingMaterialView;
  v13 = [(MTMaterialView *)&v16 _initWithCoreMaterialRecipe:recipeCopy fromBundle:bundle options:options initialWeighting:adjustment scaleAdjustment:weighting];
  v14 = v13;
  if (v13)
  {
    [v13 setRecipeName:recipeCopy];
  }

  return v14;
}

- (void)_setCoreMaterialVisualStylingProvider:(id)provider ForCategory:(id)category
{
  providerCopy = provider;
  categoryCopy = category;
  if (providerCopy && categoryCopy && *MEMORY[0x277CFFF88] != categoryCopy)
  {
    visualStyleCategoriesToCoreMaterialProviders = self->_visualStyleCategoriesToCoreMaterialProviders;
    if (!visualStyleCategoriesToCoreMaterialProviders)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v9 = self->_visualStyleCategoriesToCoreMaterialProviders;
      self->_visualStyleCategoriesToCoreMaterialProviders = v8;

      visualStyleCategoriesToCoreMaterialProviders = self->_visualStyleCategoriesToCoreMaterialProviders;
    }

    [(NSMutableDictionary *)visualStyleCategoriesToCoreMaterialProviders setObject:providerCopy forKey:categoryCopy];
  }
}

- (id)_coreMaterialVisualStylingProviderForCategory:(id)category
{
  categoryCopy = category;
  v5 = categoryCopy;
  v6 = 0;
  if (categoryCopy)
  {
    if (*MEMORY[0x277CFFF88] != categoryCopy)
    {
      v6 = [(NSMutableDictionary *)self->_visualStyleCategoriesToCoreMaterialProviders objectForKey:categoryCopy];
      if (!v6)
      {
        v6 = objc_alloc_init(MEMORY[0x277CFFF98]);
        [(_MTStaticVisualStylingMaterialView *)self _setCoreMaterialVisualStylingProvider:v6 ForCategory:v5];
        [(_MTStaticVisualStylingMaterialView *)self _updateCoreMaterialVisualStylingProviders];
      }
    }
  }

  return v6;
}

- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category
{
  _coreMaterialVisualStylingProvider = [provider _coreMaterialVisualStylingProvider];
  v6 = MTCoreMaterialVisualStyleCategoryForVisualStyleCategory(category);
  [(_MTStaticVisualStylingMaterialView *)self _setCoreMaterialVisualStylingProvider:_coreMaterialVisualStylingProvider ForCategory:v6];
}

- (void)_updateCoreMaterialVisualStylingProviders
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = 520;
  obj = self->_visualStyleCategoriesToCoreMaterialProviders;
  v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      v17 = v5;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        v9 = [*(&self->super.super.super.super.isa + v3) objectForKey:{v8, v17}];
        recipe = [(MTMaterialView *)self recipe];
        recipeName = [(_MTStaticVisualStylingMaterialView *)self recipeName];
        if (recipe)
        {
          if ([(MTMaterialView *)self isRecipeDynamic])
          {
            [(_MTStaticVisualStylingMaterialView *)self traitCollection];
            v12 = v6;
            v14 = v13 = v3;
            userInterfaceStyle = [v14 userInterfaceStyle];

            v3 = v13;
            v6 = v12;
            v5 = v17;
          }

          else
          {
            userInterfaceStyle = 0;
          }

          v16 = MTCoreMaterialRecipeForMaterialRecipeAndUserInterfaceStyle(recipe, userInterfaceStyle);

          recipeName = v16;
        }

        if (recipeName)
        {
          [v9 updateVisualStyleSetFromRecipe:recipeName andCategory:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }
}

- (void)_invalidateContentVisualStyling
{
  contentVisualStylingProvider = self->_contentVisualStylingProvider;
  self->_contentVisualStylingProvider = 0;

  [(_MTStaticVisualStylingMaterialView *)self setNeedsLayout];
}

- (void)_updateContentVisualStylingIfNecessary
{
  if (!self->_contentVisualStylingProvider)
  {
    v3 = objc_alloc_init(MEMORY[0x277CFFF98]);
    contentVisualStylingProvider = self->_contentVisualStylingProvider;
    self->_contentVisualStylingProvider = v3;

    [(MTCoreMaterialVisualStylingProvider *)self->_contentVisualStylingProvider addObserver:self];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(_MTStaticVisualStylingMaterialView *)self setBackgroundColor:whiteColor];
  }

  recipe = [(MTMaterialView *)self recipe];
  recipeName = [(_MTStaticVisualStylingMaterialView *)self recipeName];
  v8 = recipeName;
  if (recipe)
  {
    v12 = recipeName;
    if ([(MTMaterialView *)self isRecipeDynamic])
    {
      traitCollection = [(_MTStaticVisualStylingMaterialView *)self traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];
    }

    else
    {
      userInterfaceStyle = 0;
    }

    v11 = MTCoreMaterialRecipeForMaterialRecipeAndUserInterfaceStyle(recipe, userInterfaceStyle);

    v8 = v11;
  }

  if (v8)
  {
    v13 = v8;
    recipeName = [(MTCoreMaterialVisualStylingProvider *)self->_contentVisualStylingProvider updateVisualStyleSetGeneratedFromRecipe:v8];
    v8 = v13;
    if (recipeName)
    {
      recipeName = [(_MTStaticVisualStylingMaterialView *)self _updateContentVisualStylingWithProvider:self->_contentVisualStylingProvider];
      v8 = v13;
    }
  }

  MEMORY[0x2821F96F8](recipeName, v8);
}

- (void)_updateContentVisualStylingWithProvider:(id)provider
{
  v7 = [provider visualStylingForStyle:*MEMORY[0x277CFFF90]];
  [(_MTStaticVisualStylingMaterialView *)self alpha];
  v5 = v4;
  layer = [(_MTStaticVisualStylingMaterialView *)self layer];
  [layer mt_replaceAllVisualStylingWithStyling:v7];

  [(_MTStaticVisualStylingMaterialView *)self setAlpha:v5];
}

@end