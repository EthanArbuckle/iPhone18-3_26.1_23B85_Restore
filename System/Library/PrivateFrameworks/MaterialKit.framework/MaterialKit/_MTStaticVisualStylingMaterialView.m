@interface _MTStaticVisualStylingMaterialView
- (id)_coreMaterialVisualStylingProviderForCategory:(id)a3;
- (id)_initWithCoreMaterialRecipe:(id)a3 fromBundle:(id)a4 options:(unint64_t)a5 initialWeighting:(double)a6 scaleAdjustment:(id)a7;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_invalidateContentVisualStyling;
- (void)_setCoreMaterialVisualStylingProvider:(id)a3 ForCategory:(id)a4;
- (void)_updateContentVisualStylingIfNecessary;
- (void)_updateContentVisualStylingWithProvider:(id)a3;
- (void)_updateCoreMaterialVisualStylingProviders;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)setBackdropScaleAdjustment:(id)a3;
- (void)setBlurEnabled:(BOOL)a3;
- (void)setCaptureOnly:(BOOL)a3;
- (void)setContentReplacedWithSnapshot:(BOOL)a3;
- (void)setIgnoresScreenClip:(BOOL)a3;
- (void)setRecipe:(int64_t)a3;
- (void)setRecipeName:(id)a3;
- (void)setShouldCrossfade:(BOOL)a3;
- (void)setUseBuiltInAlphaTransformerAndBackdropScaleAdjustment:(BOOL)a3;
- (void)setUseBuiltInAlphaTransformerAndBackdropScaleAdjustmentIfNecessary:(BOOL)a3;
- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4;
- (void)setZoomEnabled:(BOOL)a3;
@end

@implementation _MTStaticVisualStylingMaterialView

- (void)setRecipe:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = _MTStaticVisualStylingMaterialView;
  [(MTMaterialView *)&v4 setRecipe:a3];
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

- (void)setRecipeName:(id)a3
{
  v5 = a3;
  recipeName = self->_recipeName;
  if (recipeName != v5 && ![(NSString *)recipeName isEqualToString:v5])
  {
    objc_storeStrong(&self->_recipeName, a3);
    [(_MTStaticVisualStylingMaterialView *)self _invalidateContentVisualStyling];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setBlurEnabled:(BOOL)a3
{
  if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_ERROR))
  {
    [_MTStaticVisualStylingMaterialView setBlurEnabled:];
  }
}

- (void)setZoomEnabled:(BOOL)a3
{
  if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_ERROR))
  {
    [_MTStaticVisualStylingMaterialView setZoomEnabled:];
  }
}

- (void)setCaptureOnly:(BOOL)a3
{
  if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_ERROR))
  {
    [_MTStaticVisualStylingMaterialView setCaptureOnly:];
  }
}

- (void)setBackdropScaleAdjustment:(id)a3
{
  if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_ERROR))
  {
    [_MTStaticVisualStylingMaterialView setBackdropScaleAdjustment:];
  }
}

- (void)setShouldCrossfade:(BOOL)a3
{
  if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_ERROR))
  {
    [_MTStaticVisualStylingMaterialView setShouldCrossfade:];
  }
}

- (void)setUseBuiltInAlphaTransformerAndBackdropScaleAdjustment:(BOOL)a3
{
  if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_ERROR))
  {
    [_MTStaticVisualStylingMaterialView setUseBuiltInAlphaTransformerAndBackdropScaleAdjustment:];
  }
}

- (void)setUseBuiltInAlphaTransformerAndBackdropScaleAdjustmentIfNecessary:(BOOL)a3
{
  if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_ERROR))
  {
    [_MTStaticVisualStylingMaterialView setUseBuiltInAlphaTransformerAndBackdropScaleAdjustment:];
  }
}

- (void)setIgnoresScreenClip:(BOOL)a3
{
  if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_ERROR))
  {
    [_MTStaticVisualStylingMaterialView setIgnoresScreenClip:];
  }
}

- (void)setContentReplacedWithSnapshot:(BOOL)a3
{
  if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_ERROR))
  {
    [_MTStaticVisualStylingMaterialView setContentReplacedWithSnapshot:];
  }
}

- (id)_initWithCoreMaterialRecipe:(id)a3 fromBundle:(id)a4 options:(unint64_t)a5 initialWeighting:(double)a6 scaleAdjustment:(id)a7
{
  v12 = a3;
  v16.receiver = self;
  v16.super_class = _MTStaticVisualStylingMaterialView;
  v13 = [(MTMaterialView *)&v16 _initWithCoreMaterialRecipe:v12 fromBundle:a4 options:a5 initialWeighting:a7 scaleAdjustment:a6];
  v14 = v13;
  if (v13)
  {
    [v13 setRecipeName:v12];
  }

  return v14;
}

- (void)_setCoreMaterialVisualStylingProvider:(id)a3 ForCategory:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (v10 && v6 && *MEMORY[0x277CFFF88] != v6)
  {
    visualStyleCategoriesToCoreMaterialProviders = self->_visualStyleCategoriesToCoreMaterialProviders;
    if (!visualStyleCategoriesToCoreMaterialProviders)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v9 = self->_visualStyleCategoriesToCoreMaterialProviders;
      self->_visualStyleCategoriesToCoreMaterialProviders = v8;

      visualStyleCategoriesToCoreMaterialProviders = self->_visualStyleCategoriesToCoreMaterialProviders;
    }

    [(NSMutableDictionary *)visualStyleCategoriesToCoreMaterialProviders setObject:v10 forKey:v6];
  }
}

- (id)_coreMaterialVisualStylingProviderForCategory:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = 0;
  if (v4)
  {
    if (*MEMORY[0x277CFFF88] != v4)
    {
      v6 = [(NSMutableDictionary *)self->_visualStyleCategoriesToCoreMaterialProviders objectForKey:v4];
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

- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4
{
  v7 = [a3 _coreMaterialVisualStylingProvider];
  v6 = MTCoreMaterialVisualStyleCategoryForVisualStyleCategory(a4);
  [(_MTStaticVisualStylingMaterialView *)self _setCoreMaterialVisualStylingProvider:v7 ForCategory:v6];
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
        v10 = [(MTMaterialView *)self recipe];
        v11 = [(_MTStaticVisualStylingMaterialView *)self recipeName];
        if (v10)
        {
          if ([(MTMaterialView *)self isRecipeDynamic])
          {
            [(_MTStaticVisualStylingMaterialView *)self traitCollection];
            v12 = v6;
            v14 = v13 = v3;
            v15 = [v14 userInterfaceStyle];

            v3 = v13;
            v6 = v12;
            v5 = v17;
          }

          else
          {
            v15 = 0;
          }

          v16 = MTCoreMaterialRecipeForMaterialRecipeAndUserInterfaceStyle(v10, v15);

          v11 = v16;
        }

        if (v11)
        {
          [v9 updateVisualStyleSetFromRecipe:v11 andCategory:v8];
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
    v5 = [MEMORY[0x277D75348] whiteColor];
    [(_MTStaticVisualStylingMaterialView *)self setBackgroundColor:v5];
  }

  v6 = [(MTMaterialView *)self recipe];
  v7 = [(_MTStaticVisualStylingMaterialView *)self recipeName];
  v8 = v7;
  if (v6)
  {
    v12 = v7;
    if ([(MTMaterialView *)self isRecipeDynamic])
    {
      v9 = [(_MTStaticVisualStylingMaterialView *)self traitCollection];
      v10 = [v9 userInterfaceStyle];
    }

    else
    {
      v10 = 0;
    }

    v11 = MTCoreMaterialRecipeForMaterialRecipeAndUserInterfaceStyle(v6, v10);

    v8 = v11;
  }

  if (v8)
  {
    v13 = v8;
    v7 = [(MTCoreMaterialVisualStylingProvider *)self->_contentVisualStylingProvider updateVisualStyleSetGeneratedFromRecipe:v8];
    v8 = v13;
    if (v7)
    {
      v7 = [(_MTStaticVisualStylingMaterialView *)self _updateContentVisualStylingWithProvider:self->_contentVisualStylingProvider];
      v8 = v13;
    }
  }

  MEMORY[0x2821F96F8](v7, v8);
}

- (void)_updateContentVisualStylingWithProvider:(id)a3
{
  v7 = [a3 visualStylingForStyle:*MEMORY[0x277CFFF90]];
  [(_MTStaticVisualStylingMaterialView *)self alpha];
  v5 = v4;
  v6 = [(_MTStaticVisualStylingMaterialView *)self layer];
  [v6 mt_replaceAllVisualStylingWithStyling:v7];

  [(_MTStaticVisualStylingMaterialView *)self setAlpha:v5];
}

@end