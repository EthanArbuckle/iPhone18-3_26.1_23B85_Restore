@interface MTMaterialLayer
+ (NSSet)mt_animatableKeys;
+ (NSSet)mt_implicitlyAnimatableKeys;
+ (id)_attributeKeys;
+ (id)_unserializedAttributeKeys;
+ (void)initialize;
- (BOOL)_didValueChangeForKey:(id)a3 withPendingChange:(id)a4;
- (BOOL)_isDelegateManagingInterpolation;
- (BOOL)_isDelegateManagingOpacity;
- (BOOL)_isInPlaceFilteringPossibleWithSettingsInterpolator:(id)a3;
- (BOOL)_needsPruning;
- (BOOL)allowsInPlaceFiltering;
- (BOOL)shouldArchiveValueForKey:(id)a3;
- (MTMaterialLayer)init;
- (NSString)recipeName;
- (id)_effectiveDebugIdentifier;
- (id)backdropScaleAdjustment;
- (id)description;
- (id)visualStylingProviderForCategory:(id)a3;
- (void)_adjustScaleOfBackdropLayer:(id)a3 ifNecessaryWithSettingsInterpolator:(id)a4;
- (void)_configureBackdropLayer:(id)a3 withSettingsInterpolator:(id)a4 preservingFiltersIfIdentity:(BOOL)a5;
- (void)_configureBackdropLayerIfNecessaryWithSettingsInterpolator:(id)a3;
- (void)_configureDelegateFlagsForDelegate:(id)a3;
- (void)_configureIfNecessaryWithSettingsInterpolator:(id)a3;
- (void)_pruneAtCompletionOfCurrentTransaction;
- (void)_updateForChangeInRecipeAndConfiguration;
- (void)_updateForChangeInWeighting;
- (void)_updateVisualStylingProviders;
- (void)addAnimation:(id)a3 forKey:(id)a4;
- (void)didChangeValueForKey:(id)a3;
- (void)layoutSublayers;
- (void)prune;
- (void)setAllowsInPlaceFiltering:(BOOL)a3;
- (void)setBackdropScaleAdjustment:(id)a3;
- (void)setBlurEnabled:(BOOL)a3;
- (void)setContentReplacedWithSnapshot:(BOOL)a3;
- (void)setDelegate:(id)a3;
- (void)setRecipeName:(id)a3 fromBundle:(id)a4;
- (void)setReduceMotionEnabled:(BOOL)a3;
- (void)setReduceTransparencyEnabled:(BOOL)a3;
- (void)setUnsafeUnretainedDelegate:(id)a3;
- (void)setZoomEnabled:(BOOL)a3;
- (void)willChangeValueForKey:(id)a3;
@end

@implementation MTMaterialLayer

+ (NSSet)mt_implicitlyAnimatableKeys
{
  if (mt_implicitlyAnimatableKeys_onceToken != -1)
  {
    +[MTMaterialLayer(Private) mt_implicitlyAnimatableKeys];
  }

  v3 = mt_implicitlyAnimatableKeys___animatableKeyPaths;

  return v3;
}

- (void)_updateForChangeInWeighting
{
  v21 = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self->_pendingChange removeAllObjects];
  [(MTMaterialLayer *)self weighting];
  v4 = fmin(v3, 1.0);
  v5 = fmax(v4, 0.0);
  settingsInterpolator = self->_settingsInterpolator;
  if (!settingsInterpolator)
  {
    v7 = [MTMaterialSettingsInterpolator alloc];
    v8 = [(MTMaterialLayer *)self _recipeSettings];
    v9 = [(MTMaterialSettingsInterpolator *)v7 initWithSettings:v8];
    v10 = self->_settingsInterpolator;
    self->_settingsInterpolator = v9;

    settingsInterpolator = self->_settingsInterpolator;
  }

  [(MTMaterialSettingsInterpolator *)settingsInterpolator setWeighting:v5];
  [(MTMaterialLayer *)self _configureIfNecessaryWithSettingsInterpolator:self->_settingsInterpolator];
  if (!self->_reduceMotionEnabled)
  {
    if (![(MTMaterialLayer *)self _isDelegateManagingOpacity])
    {
      LODWORD(v11) = 1.0;
      [(MTMaterialLayer *)self setOpacity:v11];
    }

    if (self->_shouldCrossfade)
    {
      if ([(MTMaterialLayer *)self _isDelegateManagingInterpolation])
      {
        if (![(MTMaterialLayer *)self _isDelegateManagingOpacity])
        {
          HIDWORD(v12) = 1068079513;
          *&v12 = v5 / 0.05;
          [(MTMaterialLayer *)self setOpacity:v12];
          v13 = MTLogMaterials;
          if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEBUG))
          {
            *v19 = 138543874;
            *&v19[4] = self;
            *&v19[12] = 2050;
            *&v19[14] = v5;
            *&v19[22] = 2050;
            v20 = v5 / 0.05;
            v14 = "%{public}@: Performing crossfade with weighting: %{public}f; alpha: %{public}f";
LABEL_20:
            _os_log_debug_impl(&dword_1BF527000, v13, OS_LOG_TYPE_DEBUG, v14, v19, 0x20u);
          }
        }
      }

      else
      {
        if (v4 <= 0.0)
        {
          v15 = 20.0;
        }

        else
        {
          v15 = 0.0;
        }

        *&v15 = v15;
        if (v4 <= 0.0)
        {
          v16 = 0.0;
        }

        else
        {
          v16 = 20.0;
        }

        [(MTMaterialLayer *)self setOpacity:v15];
        *&v17 = v16;
        [(MTMaterialLayer *)self setOpacity:v17];
        v13 = MTLogMaterials;
        if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEBUG))
        {
          *v19 = 138543874;
          *&v19[4] = self;
          *&v19[12] = 2050;
          *&v19[14] = v5;
          *&v19[22] = 2050;
          v20 = v16;
          v14 = "%{public}@: Performing necessary crossfade with weighting: %{public}f; alpha: %{public}f";
          goto LABEL_20;
        }
      }
    }
  }

  [(MTMaterialLayer *)self _updateVisualStylingProviders:*v19];
  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isDelegateManagingOpacity
{
  if ((*&self->_materialLayerDelegateFlags & 2) == 0)
  {
    return 0;
  }

  v3 = self;
  v4 = [(MTMaterialLayer *)self delegate];
  LOBYTE(v3) = [v4 isManagingOpacityForMaterialLayer:v3];

  return v3;
}

- (void)_updateVisualStylingProviders
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_visualStyleCategoriesToProviders;
  v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_visualStyleCategoriesToProviders objectForKey:v8];
        [(MTMaterialSettingsInterpolator *)self->_settingsInterpolator weighting];
        v11 = v10;
        if (v10 < 0.5 && ([(MTMaterialSettingsInterpolator *)self->_settingsInterpolator initialSettings], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v12 = [(MTMaterialSettingsInterpolator *)self->_settingsInterpolator initialSettings];
          v13 = [v12 recipeName];
        }

        else
        {
          v14 = [(MTMaterialSettingsInterpolator *)self->_settingsInterpolator finalSettings];
          v13 = [v14 recipeName];

          if (v11 >= 0.5)
          {
            goto LABEL_11;
          }
        }

LABEL_11:
        v15 = MTSharedVisualStyleSetForRecipeAndCategory(v13, v8);
        [v9 _setVisualStyleSet:v15];
      }

      v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)layoutSublayers
{
  v24 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = MTMaterialLayer;
  [(MTMaterialLayer *)&v18 layoutSublayers];
  if (self->_needsConfiguring)
  {
    [(MTMaterialLayer *)self _configureIfNecessaryWithSettingsInterpolator:self->_settingsInterpolator];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(NSHashTable *)self->_prunePromises copy];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v23 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v15;
    *&v5 = 138543618;
    v13 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        [v9 timeIntervalSincePromise];
        if (v10 < -5.0)
        {
          v11 = MTLogMaterials;
          if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_ERROR))
          {
            *buf = v13;
            v20 = self;
            v21 = 2114;
            v22 = v9;
            _os_log_error_impl(&dword_1BF527000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Found expired prune promise: %{public}@", buf, 0x16u);
          }

          [v9 fulfillPromise];
          [(NSHashTable *)self->_prunePromises removeObject:v9];
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v14 objects:v23 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (MTMaterialLayer)init
{
  v6.receiver = self;
  v6.super_class = MTMaterialLayer;
  v2 = [(MTMaterialLayer *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingChange = v2->_pendingChange;
    v2->_pendingChange = v3;

    [(MTMaterialLayer *)v2 _reevaluateDefaultShouldCrossfade];
    v2->_blurEnabled = 1;
    v2->_zoomEnabled = 1;
    v2->_allowsInPlaceFiltering = 0x7FFFFFFFFFFFFFFFLL;
    [(MTMaterialLayer *)v2 setAllowsGroupBlending:0];
    [(MTMaterialLayer *)v2 _setNeedsConfiguring];
  }

  return v2;
}

- (void)_updateForChangeInRecipeAndConfiguration
{
  [(NSMutableDictionary *)self->_pendingChange removeAllObjects];
  objc_storeStrong(&self->_previousSettingsInterpolator, self->_settingsInterpolator);
  v3 = [MTMaterialSettingsInterpolator alloc];
  v4 = [(MTMaterialLayer *)self _recipeSettings];
  v5 = [(MTMaterialSettingsInterpolator *)v3 initWithSettings:v4];
  settingsInterpolator = self->_settingsInterpolator;
  self->_settingsInterpolator = v5;

  v7 = self->_settingsInterpolator;
  v8 = [(MTMaterialSettingsInterpolator *)self->_previousSettingsInterpolator finalSettings];
  [(MTMaterialSettingsInterpolator *)v7 setInitialSettings:v8];

  if (self->_previousSettingsInterpolator)
  {
    [(MTMaterialLayer *)self setWeighting:0.0];
  }

  else
  {
    [(MTMaterialLayer *)self _configureIfNecessaryWithSettingsInterpolator:self->_settingsInterpolator];
  }

  [(MTMaterialLayer *)self _updateVisualStylingProviders];
}

- (BOOL)allowsInPlaceFiltering
{
  v3.receiver = self;
  v3.super_class = MTMaterialLayer;
  return [(MTMaterialLayer *)&v3 allowsInPlaceFiltering];
}

- (NSString)recipeName
{
  v2 = [(MTMaterialLayer *)self _recipeSettings];
  v3 = [v2 recipeName];

  return v3;
}

- (BOOL)_isDelegateManagingInterpolation
{
  if ((*&self->_materialLayerDelegateFlags & 4) == 0)
  {
    return 0;
  }

  v3 = self;
  v4 = [(MTMaterialLayer *)self delegate];
  LOBYTE(v3) = [v4 isManagingInterpolationForMaterialLayer:v3];

  return v3;
}

- (BOOL)_needsPruning
{
  v2 = [(MTMaterialSettingsInterpolator *)self->_settingsInterpolator initialSettings];
  v3 = v2 != 0;

  return v3;
}

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == a1)
  {

    MTRegisterCoreMaterialLogging();
  }
}

void __55__MTMaterialLayer_Private__mt_implicitlyAnimatableKeys__block_invoke()
{
  v18 = objc_alloc(MEMORY[0x1E695DFD8]);
  v21 = MTFilterKeyPathForFilter(*MEMORY[0x1E6979880]);
  v16 = [v21 stringByAppendingFormat:@".%@", @"inputColorMatrix"];
  v20 = MTFilterKeyPathForFilter(@"opacityColorMatrix");
  v14 = [v20 stringByAppendingFormat:@".%@", @"inputColorMatrix"];
  v19 = MTFilterKeyPathForFilter(@"inoperativeColorMatrix");
  v10 = [v19 stringByAppendingFormat:@".%@", @"inputColorMatrix"];
  v17 = MTFilterKeyPathForFilter(*MEMORY[0x1E6979C70]);
  v12 = [v17 stringByAppendingFormat:@".%@", @"inputAmount"];
  v0 = *MEMORY[0x1E6979C68];
  v15 = MTFilterKeyPathForFilter(*MEMORY[0x1E6979C68]);
  v1 = [v15 stringByAppendingFormat:@".%@", @"inputAmount"];
  v13 = MTFilterKeyPathForFilter(v0);
  v2 = [v13 stringByAppendingFormat:@".%@", @"inputValues"];
  v11 = MTFilterKeyPathForFilter(*MEMORY[0x1E6979928]);
  v3 = [v11 stringByAppendingFormat:@".%@", @"inputRadius"];
  v4 = MTFilterKeyPathForFilter(*MEMORY[0x1E6979890]);
  v5 = [v4 stringByAppendingFormat:@".%@", @"inputAmount"];
  v6 = MTFilterKeyPathForFilter(*MEMORY[0x1E6979848]);
  v7 = [v6 stringByAppendingFormat:@".%@", @"inputAmount"];
  v8 = [v18 initWithObjects:{v16, v14, v10, v12, v1, v2, v3, v5, v7, @"zoom", 0}];
  v9 = mt_implicitlyAnimatableKeys___animatableKeyPaths;
  mt_implicitlyAnimatableKeys___animatableKeyPaths = v8;
}

- (void)_pruneAtCompletionOfCurrentTransaction
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [[MTPrunePromise alloc] initWithMaterialLayer:self];
  prunePromises = self->_prunePromises;
  if (!prunePromises)
  {
    v5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v6 = self->_prunePromises;
    self->_prunePromises = v5;

    prunePromises = self->_prunePromises;
  }

  [(NSHashTable *)prunePromises addObject:v3];
  v7 = [(MTMaterialLayer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __57__MTMaterialLayer__pruneAtCompletionOfCurrentTransaction__block_invoke;
    v19[3] = &unk_1E80BDB08;
    v8 = v3;
    v20 = v8;
    v18 = 0;
    v9 = [v7 addCompletionForCurrentAnimation:v19 forMaterialLayer:self reason:&v18];
    v10 = v18;
    v11 = MTLogMaterials;
    v12 = os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v12)
      {
        *buf = 138543362;
        v22 = self;
        _os_log_impl(&dword_1BF527000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Delegate successfully added completion", buf, 0xCu);
      }
    }

    else
    {
      if (v12)
      {
        *buf = 138543618;
        v22 = self;
        v23 = 2114;
        v24 = v10;
        _os_log_impl(&dword_1BF527000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Delegate didn't add completion (%{public}@) – pruning immediately", buf, 0x16u);
      }

      [(MTPrunePromise *)v8 fulfillPromise];
    }
  }

  else
  {
    v13 = MTLogMaterials;
    if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v22 = self;
      _os_log_impl(&dword_1BF527000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Delegate doesn't handle completions – adding to current transaction", buf, 0xCu);
    }

    v14 = MEMORY[0x1E6979518];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __57__MTMaterialLayer__pruneAtCompletionOfCurrentTransaction__block_invoke_4;
    v16[3] = &unk_1E80BDB08;
    v17 = v3;
    [v14 mt_addCompletionBlock:v16];
    v10 = v17;
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)setReduceTransparencyEnabled:(BOOL)a3
{
  if (self->_reduceTransparencyEnabled != a3)
  {
    self->_reduceTransparencyEnabled = a3;
    [(MTMaterialLayer *)self _setNeedsConfiguring];
  }
}

- (void)setReduceMotionEnabled:(BOOL)a3
{
  if (self->_reduceMotionEnabled != a3)
  {
    self->_reduceMotionEnabled = a3;
    [(MTMaterialLayer *)self _setNeedsConfiguring];
  }
}

- (id)visualStylingProviderForCategory:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = 0;
  if (v4)
  {
    if (@"none" != v4)
    {
      v6 = [(NSMutableDictionary *)self->_visualStyleCategoriesToProviders objectForKey:v4];
      if (!v6)
      {
        if (!self->_visualStyleCategoriesToProviders)
        {
          v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
          visualStyleCategoriesToProviders = self->_visualStyleCategoriesToProviders;
          self->_visualStyleCategoriesToProviders = v7;
        }

        v6 = objc_alloc_init(MTCoreMaterialVisualStylingProvider);
        [(NSMutableDictionary *)self->_visualStyleCategoriesToProviders setObject:v6 forKey:v5];
        [(MTMaterialLayer *)self _updateVisualStylingProviders];
      }
    }
  }

  return v6;
}

- (void)prune
{
  v8 = *MEMORY[0x1E69E9840];
  if ([(MTMaterialLayer *)self _needsPruning])
  {
    v3 = MTLogMaterials;
    if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = self;
      _os_log_impl(&dword_1BF527000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Pruning", &v6, 0xCu);
    }

    previousSettingsInterpolator = self->_previousSettingsInterpolator;
    self->_previousSettingsInterpolator = 0;

    [(MTMaterialSettingsInterpolator *)self->_settingsInterpolator setInitialSettings:0];
    [(MTMaterialSettingsInterpolator *)self->_settingsInterpolator finalizeWeighting];
    [(MTMaterialLayer *)self _configureIfNecessaryWithSettingsInterpolator:self->_settingsInterpolator];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)setDelegate:(id)a3
{
  v5.receiver = self;
  v5.super_class = MTMaterialLayer;
  v4 = a3;
  [(MTMaterialLayer *)&v5 setDelegate:v4];
  [(MTMaterialLayer *)self _configureDelegateFlagsForDelegate:v4, v5.receiver, v5.super_class];
}

- (void)setUnsafeUnretainedDelegate:(id)a3
{
  v5.receiver = self;
  v5.super_class = MTMaterialLayer;
  v4 = a3;
  [(MTMaterialLayer *)&v5 setUnsafeUnretainedDelegate:v4];
  [(MTMaterialLayer *)self _configureDelegateFlagsForDelegate:v4, v5.receiver, v5.super_class];
}

- (void)addAnimation:(id)a3 forKey:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  if (!-[MTMaterialLayer _delegateManagesWeighting](self, "_delegateManagesWeighting") && [v7 isEqualToString:@"filters"])
  {

    goto LABEL_25;
  }

  v9 = v8;
  if ([(MTMaterialLayer *)self _delegateManagesWeighting])
  {
    goto LABEL_23;
  }

  v10 = [objc_opt_class() mt_implicitlyAnimatableKeys];
  v11 = [v10 containsObject:v7];

  v9 = v8;
  if (!v11)
  {
    goto LABEL_23;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = [objc_opt_class() mt_animatableKeys];
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v13)
  {
LABEL_17:
    v19 = v12;
    goto LABEL_21;
  }

  v14 = v13;
  v15 = *v27;
LABEL_8:
  v16 = 0;
  while (1)
  {
    if (*v27 != v15)
    {
      objc_enumerationMutation(v12);
    }

    v17 = *(*(&v26 + 1) + 8 * v16);
    v18 = [(MTMaterialLayer *)self animationForKey:v17];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      goto LABEL_15;
    }

    v19 = [(MTMaterialLayer *)self animationForKey:v17];

    if (v19)
    {
      break;
    }

LABEL_15:
    if (v14 == ++v16)
    {
      v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v8 && (isKindOfClass & 1) != 0)
  {
    v21 = v8;
    v9 = [v19 copy];
    [v9 setToValue:0];
    [v9 setByValue:0];
    v22 = [v21 keyPath];
    [v9 setKeyPath:v22];

    v23 = [v21 fromValue];
    [v9 setFromValue:v23];

    goto LABEL_22;
  }

LABEL_21:
  v9 = v8;
LABEL_22:

LABEL_23:
  if (v9)
  {
    v25.receiver = self;
    v25.super_class = MTMaterialLayer;
    [(MTMaterialLayer *)&v25 addAnimation:v9 forKey:v7];
  }

LABEL_25:

  v24 = *MEMORY[0x1E69E9840];
}

- (BOOL)shouldArchiveValueForKey:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _unserializedAttributeKeys];
  if ([v5 containsObject:v4])
  {
    v6 = 0;
  }

  else
  {
    v7 = [objc_opt_class() _attributeKeys];
    if ([v7 containsObject:v4])
    {
      v6 = 1;
    }

    else
    {
      v9.receiver = self;
      v9.super_class = MTMaterialLayer;
      v6 = [(MTMaterialLayer *)&v9 shouldArchiveValueForKey:v4];
    }
  }

  return v6;
}

- (void)willChangeValueForKey:(id)a3
{
  v4 = a3;
  if (([v4 isEqualToString:@"recipeSettings"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"configuration") & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"weighting"))
  {
    v5 = [(MTMaterialLayer *)self valueForKey:v4];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [MEMORY[0x1E695DFB0] null];
    }

    v8 = v7;

    [(NSMutableDictionary *)self->_pendingChange setObject:v8 forKey:v4];
  }

  v9.receiver = self;
  v9.super_class = MTMaterialLayer;
  [(MTMaterialLayer *)&v9 willChangeValueForKey:v4];
}

- (void)didChangeValueForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"recipe"])
  {
    if ([(MTMaterialLayer *)self _didValueChangeForKey:v4 withPendingChange:self->_pendingChange])
    {
      v5 = [(MTMaterialLayer *)self recipe];
      v6 = MTMaterialSettingsForRecipeFromBundle(v5, 0);
      [(MTMaterialLayer *)self _setRecipeSettings:v6];
    }
  }

  else if (([v4 isEqualToString:@"recipeSettings"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"configuration"))
  {
    if ([(MTMaterialLayer *)self _didValueChangeForKey:v4 withPendingChange:self->_pendingChange])
    {
      if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEBUG))
      {
        [MTMaterialLayer didChangeValueForKey:];
      }

      [(MTMaterialLayer *)self _updateForChangeInRecipeAndConfiguration];
      if (![(MTMaterialLayer *)self _delegateManagesWeighting])
      {
        v7 = [(MTMaterialLayer *)self _recipeSettings];

        if (v7)
        {
          [(MTMaterialLayer *)self setWeighting:1.0];
        }
      }

      if ([(MTMaterialLayer *)self _needsPruning])
      {
        [(MTMaterialLayer *)self _pruneAtCompletionOfCurrentTransaction];
      }
    }
  }

  else if ([v4 isEqualToString:@"weighting"] && -[MTMaterialLayer _didValueChangeForKey:withPendingChange:](self, "_didValueChangeForKey:withPendingChange:", v4, self->_pendingChange))
  {
    [(MTMaterialLayer *)self _updateForChangeInWeighting];
  }

  v8.receiver = self;
  v8.super_class = MTMaterialLayer;
  [(MTMaterialLayer *)&v8 didChangeValueForKey:v4];
}

- (void)setAllowsInPlaceFiltering:(BOOL)a3
{
  if (self->_allowsInPlaceFiltering != a3)
  {
    v6 = v3;
    v7 = v4;
    self->_allowsInPlaceFiltering = a3;
    v5.receiver = self;
    v5.super_class = MTMaterialLayer;
    [(MTMaterialLayer *)&v5 setAllowsInPlaceFiltering:?];
  }
}

- (void)_configureIfNecessaryWithSettingsInterpolator:(id)a3
{
  self->_needsConfiguring = 0;
  [(MTMaterialLayer *)self setBackgroundColor:0];
  v4 = [(MTMaterialSettingsInterpolator *)self->_settingsInterpolator finalSettings];

  if (v4)
  {
    [(MTMaterialLayer *)self _configureBackdropLayerIfNecessaryWithSettingsInterpolator:self->_settingsInterpolator];
  }

  else if (![(MTMaterialLayer *)self _delegateManagesWeighting])
  {
    v5 = +[MTColor pinkColor];
    -[MTMaterialLayer setBackgroundColor:](self, "setBackgroundColor:", [v5 CGColor]);
  }

  [(MTMaterialLayer *)self setNeedsLayout];
}

- (BOOL)_isInPlaceFilteringPossibleWithSettingsInterpolator:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_blurEnabled && ([v4 isBlurEnabled] & 1) != 0)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = [v5 isAverageColorEnabledEver] ^ 1;
  }

  return v6;
}

- (void)_configureBackdropLayerIfNecessaryWithSettingsInterpolator:(id)a3
{
  v4 = a3;
  if ([v4 isBackdropRequiredEver])
  {
    v5 = 1;
    [(MTMaterialLayer *)self setEnabled:!self->_contentReplacedWithSnapshot];
    if (([v4 isWeightingChanging] & 1) == 0)
    {
      [v4 weighting];
      v5 = v6 == 0.0;
    }

    [(MTMaterialLayer *)self _configureBackdropLayer:self withSettingsInterpolator:v4 preservingFiltersIfIdentity:v5];
    if (self->_allowsInPlaceFiltering == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8.receiver = self;
      v8.super_class = MTMaterialLayer;
      [(MTMaterialLayer *)&v8 setAllowsInPlaceFiltering:[(MTMaterialLayer *)self _isInPlaceFilteringPossibleWithSettingsInterpolator:v4]];
    }
  }

  else if (([(MTMaterialLayer *)self captureOnly]& 1) == 0)
  {
    [(MTMaterialLayer *)self setFilters:0];
    [(MTMaterialLayer *)self setEnabled:0];
    v7 = [v4 tintColor];
    -[MTMaterialLayer setBackgroundColor:](self, "setBackgroundColor:", [v7 CGColor]);
  }
}

- (void)_configureBackdropLayer:(id)a3 withSettingsInterpolator:(id)a4 preservingFiltersIfIdentity:(BOOL)a5
{
  v5 = a5;
  v47 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    [(MTMaterialSettingsInterpolator *)v9 weighting];
    v12 = v11;
    if (self->_reduceMotionEnabled && ([(MTMaterialSettingsInterpolator *)v10 initialSettings], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
    {
      v31 = [MTMaterialSettingsInterpolator alloc];
      v32 = [(MTMaterialSettingsInterpolator *)v10 finalSettings];
      v33 = [(MTMaterialSettingsInterpolator *)v31 initWithSettings:v32];

      [(MTMaterialSettingsInterpolator *)v33 setWeighting:1.0];
      v40 = 1;
      v10 = v33;
    }

    else
    {
      v40 = 0;
    }

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEBUG))
    {
      [MTMaterialLayer _configureBackdropLayer:withSettingsInterpolator:preservingFiltersIfIdentity:];
    }

    if (self->_blurEnabled && [(MTMaterialSettingsInterpolator *)v10 isBlurEnabled])
    {
      [(MTMaterialLayer *)self _adjustScaleOfBackdropLayer:v8 ifNecessaryWithSettingsInterpolator:v10];
      if (self->_reduceTransparencyEnabled)
      {
        [v14 setAverageColorEnabled:1 includingOptimizations:1 withAdditionalInfoPromise:0];
        v15 = MTLogMaterials;
        if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEBUG))
        {
          [MTMaterialLayer _configureBackdropLayer:v15 withSettingsInterpolator:? preservingFiltersIfIdentity:?];
        }
      }

      else
      {
        [(MTMaterialSettingsInterpolator *)v10 blurRadius];
        v35 = v34;
        v36 = [(MTMaterialSettingsInterpolator *)v10 variableBlurInputMask];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __96__MTMaterialLayer__configureBackdropLayer_withSettingsInterpolator_preservingFiltersIfIdentity___block_invoke;
        v41[3] = &unk_1E80BDB30;
        v42 = v10;
        [v14 setBlurRadius:v36 inputMaskImage:0 ignoringIdentity:1 includingOptimizations:v41 withAdditionalInfoPromise:v35];
        if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEBUG))
        {
          [MTMaterialLayer _configureBackdropLayer:withSettingsInterpolator:preservingFiltersIfIdentity:];
        }
      }
    }

    else
    {
      [v8 setScale:1.0];
    }

    if ([(MTMaterialSettingsInterpolator *)v10 isAverageColorEnabledEver])
    {
      [v14 setAverageColorEnabled:-[MTMaterialSettingsInterpolator isAverageColorEnabled](v10 includingOptimizations:"isAverageColorEnabled") withAdditionalInfoPromise:{1, 0}];
    }

    if ([(MTMaterialSettingsInterpolator *)v10 isLuminanceEnabled])
    {
      [(MTMaterialSettingsInterpolator *)v10 luminanceAmount];
      v17 = v16;
      v18 = [(MTMaterialSettingsInterpolator *)v10 luminanceValues];
      if (v18)
      {
        v19 = 0;
      }

      else
      {
        v19 = &__block_literal_global;
      }

      [v14 setLuminanceAmount:v18 values:0 ignoringIdentity:1 includingOptimizations:v19 withAdditionalInfoPromise:v17];
      if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEBUG))
      {
        [MTMaterialLayer _configureBackdropLayer:withSettingsInterpolator:preservingFiltersIfIdentity:];
      }
    }

    if ([(MTMaterialSettingsInterpolator *)v10 isCurvesEnabled])
    {
      v20 = [(MTMaterialSettingsInterpolator *)v10 curvesValues];
      [v14 setCurvesInputValues:v20 ignoringIdentity:0 includingOptimizations:1 withAdditionalInfoPromise:0];
      if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEBUG))
      {
        [MTMaterialLayer _configureBackdropLayer:withSettingsInterpolator:preservingFiltersIfIdentity:];
      }
    }

    if ([(MTMaterialSettingsInterpolator *)v10 isSaturationEnabled])
    {
      [(MTMaterialSettingsInterpolator *)v10 saturation];
      [v14 setSaturation:0 ignoringIdentity:1 includingOptimizations:0 withAdditionalInfoPromise:?];
      if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEBUG))
      {
        [MTMaterialLayer _configureBackdropLayer:withSettingsInterpolator:preservingFiltersIfIdentity:];
      }
    }

    if ([(MTMaterialSettingsInterpolator *)v10 isBrightnessEnabled])
    {
      [(MTMaterialSettingsInterpolator *)v10 brightness];
      [v14 setBrightness:0 ignoringIdentity:1 includingOptimizations:0 withAdditionalInfoPromise:?];
      if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEBUG))
      {
        [MTMaterialLayer _configureBackdropLayer:withSettingsInterpolator:preservingFiltersIfIdentity:];
      }
    }

    if ([(MTMaterialSettingsInterpolator *)v10 isColorMatrixEnabled])
    {
      if (v10)
      {
        [(MTMaterialSettingsInterpolator *)v10 colorMatrix];
      }

      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      memset(buf, 0, sizeof(buf));
      [v14 setColorMatrix:buf ignoringIdentity:0 includingOptimizations:1 withAdditionalInfoPromise:0];
      v21 = MTLogMaterials;
      if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEBUG))
      {
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        memset(buf, 0, sizeof(buf));
        v37 = v21;
        v39 = MTCAColorMatrixCreateDictionaryRepresentation(buf, v38);
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v39;
        _os_log_debug_impl(&dword_1BF527000, v37, OS_LOG_TYPE_DEBUG, "%{public}@: Updated brightness: %{public}@", buf, 0x16u);
      }
    }

    if ([(MTMaterialSettingsInterpolator *)v10 isTintEnabled])
    {
      v22 = [(MTMaterialSettingsInterpolator *)v10 tintColor];
      [v14 setTintColor:v22 includingOptimizations:1 withAdditionalInfoPromise:0];
      if (v22 && os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEBUG))
      {
        [MTMaterialLayer _configureBackdropLayer:withSettingsInterpolator:preservingFiltersIfIdentity:];
      }
    }

    v23 = self->_reduceTransparencyEnabled || self->_reduceMotionEnabled;
    if (self->_zoomEnabled && [(MTMaterialSettingsInterpolator *)v10 isZoomEnabled])
    {
      v24 = 0.0;
      if (!v23)
      {
        [(MTMaterialSettingsInterpolator *)v10 zoom];
        v24 = v25;
      }

      [v14 setZoom:0 ignoringIdentity:1 includingOptimizations:0 withAdditionalInfoPromise:v24];
      if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEBUG))
      {
        [MTMaterialLayer _configureBackdropLayer:withSettingsInterpolator:preservingFiltersIfIdentity:];
      }
    }

    if ([(MTMaterialSettingsInterpolator *)v10 isBlurAtEnd])
    {
      [MEMORY[0x1E6979310] mt_orderedFilterTypesBlurAtEnd];
    }

    else
    {
      [MEMORY[0x1E6979310] mt_orderedFilterTypes];
    }
    v26 = ;
    [v14 sortFiltersWithOrder:v26];
    v27 = !v5;
    [v8 mt_applyMaterialDescription:v14 removingIfIdentity:v27];
    if ((v40 & 1) != 0 || (v29 = 1.0, self->_blurEnabled) && [(MTMaterialSettingsInterpolator *)v10 isBlurEnabled]&& self->_reduceTransparencyEnabled)
    {
      v28 = 0;
      v29 = v12;
    }

    else
    {
      v28 = 1;
    }

    [(MTMaterialLayer *)self _setPrivateOpacity:v28 | v27 removingIfIdentity:v29];
  }

  v30 = *MEMORY[0x1E69E9840];
}

id __96__MTMaterialLayer__configureBackdropLayer_withSettingsInterpolator_preservingFiltersIfIdentity___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"inputQuality";
  v1 = [*(a1 + 32) blurInputQuality];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

id __96__MTMaterialLayer__configureBackdropLayer_withSettingsInterpolator_preservingFiltersIfIdentity___block_invoke_46()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v0 = MTDefaultLuminanceColorMap();
  if (v0)
  {
    v3 = @"inputColorMap";
    v4[0] = v0;
    v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  }

  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

- (void)_adjustScaleOfBackdropLayer:(id)a3 ifNecessaryWithSettingsInterpolator:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MTDynamicBlurRadiusGraphicsQuality();
  if (!self->_blurEnabled)
  {
    goto LABEL_21;
  }

  v9 = v8;
  if (![v7 isBlurEnabled] || self->_reduceTransparencyEnabled)
  {
    goto LABEL_21;
  }

  [v7 backdropScale];
  v11 = v10;
  backdropScaleAdjustment = self->_backdropScaleAdjustment;
  if (backdropScaleAdjustment || v9 != 100)
  {
    if (backdropScaleAdjustment)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v10 > 0.0 && v10 < 1.0)
  {
LABEL_10:
    if (v10 > 0.0 && v10 < 1.0)
    {
      v29 = MEMORY[0x1E69E9820];
      v30 = 3221225472;
      v31 = __83__MTMaterialLayer__adjustScaleOfBackdropLayer_ifNecessaryWithSettingsInterpolator___block_invoke;
      v32 = &__block_descriptor_40_e8_d16__0d8l;
      v33 = v10;
LABEL_15:
      [(MTMaterialLayer *)self setDefaultBackdropScaleAdjustment:v24, v25, v26, v27, v28, v29, v30, v31, v32, *&v33];
      goto LABEL_16;
    }

    if (v9 != 100)
    {
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __83__MTMaterialLayer__adjustScaleOfBackdropLayer_ifNecessaryWithSettingsInterpolator___block_invoke_2;
      v27 = &__block_descriptor_40_e8_d16__0d8l;
      v28 = v9;
      goto LABEL_15;
    }

LABEL_16:
    v14 = [MEMORY[0x1E696AD98] mt_identityValueForMaterialSettingsProperty:@"backdropScale"];
    [v14 floatValue];
    v16 = v15;

    defaultBackdropScaleAdjustment = self->_backdropScaleAdjustment;
    if (defaultBackdropScaleAdjustment || (defaultBackdropScaleAdjustment = self->_defaultBackdropScaleAdjustment) != 0)
    {
      [v7 weighting];
      v11 = defaultBackdropScaleAdjustment[2](defaultBackdropScaleAdjustment);
    }

    else
    {
      v11 = v16;
    }

    goto LABEL_19;
  }

  v13 = self->_defaultBackdropScaleAdjustment;
  self->_defaultBackdropScaleAdjustment = 0;

LABEL_19:
  [(MTMaterialLayer *)self setScale:v11];
  v18 = MTLogMaterials;
  if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEBUG))
  {
    v20 = v18;
    [v7 weighting];
    v22 = v21;
    [v6 scale];
    *buf = 138543874;
    v35 = self;
    v36 = 2050;
    v37 = v22;
    v38 = 2050;
    v39 = v23;
    _os_log_debug_impl(&dword_1BF527000, v20, OS_LOG_TYPE_DEBUG, "%{public}@: weighting: %{public}f; backdrop scale: %{public}f", buf, 0x20u);
  }

LABEL_21:

  v19 = *MEMORY[0x1E69E9840];
}

+ (id)_attributeKeys
{
  if (_attributeKeys_onceToken != -1)
  {
    +[MTMaterialLayer _attributeKeys];
  }

  v3 = _attributeKeys___attributeKeys;

  return v3;
}

uint64_t __33__MTMaterialLayer__attributeKeys__block_invoke()
{
  _attributeKeys___attributeKeys = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"recipe", @"configuration", 0}];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_unserializedAttributeKeys
{
  if (_unserializedAttributeKeys_onceToken != -1)
  {
    +[MTMaterialLayer _unserializedAttributeKeys];
  }

  v3 = _unserializedAttributeKeys___attributeKeys;

  return v3;
}

uint64_t __45__MTMaterialLayer__unserializedAttributeKeys__block_invoke()
{
  _unserializedAttributeKeys___attributeKeys = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"sublayers", 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (void)_configureDelegateFlagsForDelegate:(id)a3
{
  v7 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v7 managesWeightingForMaterialLayer:self];
  }

  else
  {
    v4 = 0;
  }

  *&self->_materialLayerDelegateFlags = *&self->_materialLayerDelegateFlags & 0xFE | v4;
  if (objc_opt_respondsToSelector())
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *&self->_materialLayerDelegateFlags = *&self->_materialLayerDelegateFlags & 0xFD | v5;
  if (objc_opt_respondsToSelector())
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  *&self->_materialLayerDelegateFlags = *&self->_materialLayerDelegateFlags & 0xFB | v6;
}

- (BOOL)_didValueChangeForKey:(id)a3 withPendingChange:(id)a4
{
  v6 = a3;
  LOBYTE(v7) = 0;
  if (v6 && a4)
  {
    v8 = [a4 objectForKey:v6];
    v9 = [MEMORY[0x1E695DFB0] null];

    if (v8 == v9)
    {

      v8 = 0;
    }

    v10 = [(MTMaterialLayer *)self valueForKey:v6];
    if ((v8 == 0) == (v10 != 0))
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      v7 = [v8 isEqual:v10] ^ 1;
    }
  }

  return v7;
}

- (id)_effectiveDebugIdentifier
{
  debugIdentifier = self->_debugIdentifier;
  if (debugIdentifier)
  {
    v3 = debugIdentifier;
  }

  else
  {
    v3 = [(MTMaterialLayer *)self groupName];
  }

  return v3;
}

- (id)description
{
  v3 = [(MTMaterialLayer *)self _effectiveDebugIdentifier];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = v5;
  if (v3)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@" (%@)", v3];
    v8 = [v4 stringWithFormat:@"<%@%@: %p>", v6, v7, self];
  }

  else
  {
    v8 = [v4 stringWithFormat:@"<%@%@: %p>", v5, &stru_1F3DFC648, self];
  }

  return v8;
}

+ (NSSet)mt_animatableKeys
{
  if (mt_animatableKeys_onceToken != -1)
  {
    +[MTMaterialLayer(Private) mt_animatableKeys];
  }

  v3 = mt_animatableKeys___animatableKeyPaths;

  return v3;
}

uint64_t __45__MTMaterialLayer_Private__mt_animatableKeys__block_invoke()
{
  mt_animatableKeys___animatableKeyPaths = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"recipe", @"recipeName", @"configuration", @"weighting", 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (void)setBlurEnabled:(BOOL)a3
{
  if (self->_blurEnabled != a3)
  {
    self->_blurEnabled = a3;
    [(MTMaterialLayer *)self _setNeedsConfiguring];
  }
}

- (void)setZoomEnabled:(BOOL)a3
{
  self->_zoomEnabled = a3;
  if (a3)
  {
    [(MTMaterialLayer *)self _setNeedsConfiguring];
  }

  else
  {
    [(MTMaterialLayer *)self setZoom:0.0];
  }
}

- (id)backdropScaleAdjustment
{
  v2 = MEMORY[0x1BFB5AC50](self->_backdropScaleAdjustment, a2);

  return v2;
}

- (void)setBackdropScaleAdjustment:(id)a3
{
  if (self->_backdropScaleAdjustment != a3)
  {
    v4 = [a3 copy];
    backdropScaleAdjustment = self->_backdropScaleAdjustment;
    self->_backdropScaleAdjustment = v4;

    [(MTMaterialLayer *)self _setNeedsConfiguring];
  }
}

- (void)setContentReplacedWithSnapshot:(BOOL)a3
{
  v42[9] = *MEMORY[0x1E69E9840];
  if (self->_contentReplacedWithSnapshot == a3)
  {
LABEL_14:
    v37 = *MEMORY[0x1E69E9840];
    return;
  }

  if (a3)
  {
    [(MTMaterialLayer *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = MTBuiltInScreenScale();
    v44.origin.x = v5;
    v44.origin.y = v7;
    v44.size.width = v9;
    v44.size.height = v11;
    v13 = v12 * CGRectGetWidth(v44);
    v45.origin.x = v5;
    v45.origin.y = v7;
    v45.size.width = v9;
    v45.size.height = v11;
    Height = CGRectGetHeight(v45);
    v15 = MTIOSurfaceCreate(0, v13, v12 * Height);
    if (v15)
    {
      v16 = v15;
      memset(&v40, 0, sizeof(v40));
      v46.origin.x = v5;
      v46.origin.y = v7;
      v46.size.width = v9;
      v46.size.height = v11;
      v17 = -CGRectGetMinX(v46);
      v47.origin.x = v5;
      v47.origin.y = v7;
      v47.size.width = v9;
      v47.size.height = v11;
      MinY = CGRectGetMinY(v47);
      CATransform3DMakeTranslation(&a, v17, -MinY, 0.0);
      CATransform3DMakeScale(&v38, v12, v12, 1.0);
      CATransform3DConcat(&v40, &a, &v38);
      v19 = *MEMORY[0x1E6979FB0];
      v42[0] = *MEMORY[0x1E6979FD0];
      v20 = *MEMORY[0x1E6979F68];
      v41[0] = v19;
      v41[1] = v20;
      v21 = [MEMORY[0x1E6979328] mainDisplay];
      v22 = [v21 name];
      v23 = *MEMORY[0x1E6979F50];
      v42[1] = v22;
      v42[2] = v16;
      v24 = *MEMORY[0x1E697A000];
      v41[2] = v23;
      v41[3] = v24;
      a = v40;
      v25 = [MEMORY[0x1E696B098] valueWithCATransform3D:&a];
      v26 = *MEMORY[0x1E6979FF0];
      v42[3] = v25;
      v42[4] = MEMORY[0x1E695E118];
      v27 = *MEMORY[0x1E6979FF8];
      v41[4] = v26;
      v41[5] = v27;
      v42[5] = MEMORY[0x1E695E118];
      v42[6] = MEMORY[0x1E695E118];
      v28 = *MEMORY[0x1E6979F40];
      v41[6] = *MEMORY[0x1E6979FA0];
      v41[7] = v28;
      v29 = MEMORY[0x1E696AD98];
      v30 = [(MTMaterialLayer *)self context];
      v31 = [v29 numberWithUnsignedInt:{objc_msgSend(v30, "contextId")}];
      v42[7] = v31;
      v41[8] = *MEMORY[0x1E6979FA8];
      v32 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self];
      v42[8] = v32;
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:9];

      if (CARenderServerSnapshot())
      {
        self->_contentReplacedWithSnapshot = 1;
        [(MTMaterialLayer *)self setEnabled:0];
        [(MTMaterialLayer *)self setFilters:0];
        [(MTMaterialLayer *)self setContents:v16];
        [(MTMaterialLayer *)self setMasksToBounds:1];
      }

      else
      {
        v36 = MTLogMaterials;
        if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_ERROR))
        {
          [(MTMaterialLayer(Private) *)self setContentReplacedWithSnapshot:v36];
        }
      }

      CFRelease(v16);
    }

    else
    {
      v35 = MTLogMaterials;
      if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_ERROR))
      {
        [(MTMaterialLayer(Private) *)self setContentReplacedWithSnapshot:v35];
      }
    }

    goto LABEL_14;
  }

  self->_contentReplacedWithSnapshot = 0;
  [(MTMaterialLayer *)self setContents:0];
  [(MTMaterialLayer *)self setEnabled:1];
  [(MTMaterialLayer *)self setMasksToBounds:0];
  v34 = *MEMORY[0x1E69E9840];

  [(MTMaterialLayer *)self _setNeedsConfiguring];
}

- (void)setRecipeName:(id)a3 fromBundle:(id)a4
{
  v5 = MTMaterialSettingsForRecipeFromBundle(a3, a4);
  [(MTMaterialLayer *)self _setRecipeSettings:v5];
}

- (void)didChangeValueForKey:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_1BF527000, v0, v1, "%{public}@: Did change value for key '%{public}@'");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_configureBackdropLayer:withSettingsInterpolator:preservingFiltersIfIdentity:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_1BF527000, v0, v1, "%{public}@: Updating with settings interpolator: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_configureBackdropLayer:withSettingsInterpolator:preservingFiltersIfIdentity:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_1BF527000, v0, v1, "%{public}@: Updated blur radius: %{public}f", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_configureBackdropLayer:(uint64_t)a1 withSettingsInterpolator:(NSObject *)a2 preservingFiltersIfIdentity:.cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_1BF527000, a2, OS_LOG_TYPE_DEBUG, "%{public}@: Reduced transparency enabled, so replacing blur with average color", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_configureBackdropLayer:withSettingsInterpolator:preservingFiltersIfIdentity:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_1BF527000, v0, v1, "%{public}@: Updated luminance alpha: %{public}f", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_configureBackdropLayer:withSettingsInterpolator:preservingFiltersIfIdentity:.cold.5()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_1BF527000, v0, v1, "%{public}@: Updated curves values: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_configureBackdropLayer:withSettingsInterpolator:preservingFiltersIfIdentity:.cold.6()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_1BF527000, v0, v1, "%{public}@: Updated saturation: %{public}f", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_configureBackdropLayer:withSettingsInterpolator:preservingFiltersIfIdentity:.cold.7()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_1BF527000, v0, v1, "%{public}@: Updated brightness: %{public}f", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_configureBackdropLayer:withSettingsInterpolator:preservingFiltersIfIdentity:.cold.8()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_1BF527000, v0, v1, "%{public}@: Updated color matrix color: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_configureBackdropLayer:withSettingsInterpolator:preservingFiltersIfIdentity:.cold.9()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_1BF527000, v0, v1, "%{public}@: Updated zoom: %{public}f", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end