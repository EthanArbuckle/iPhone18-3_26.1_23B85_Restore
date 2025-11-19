@interface NTKComplicationController
+ (Class)_controllerClassForComplicationType:(unint64_t)a3 family:(int64_t)a4 device:(id)a5 resolvedFamily:(int64_t *)a6;
+ (id)DEPRECATEDControllerForComplication:(id)a3 withLegacyDisplay:(id)a4 forDevice:(id)a5;
+ (id)_newOrCachedControllerOfClass:(Class)a3 complication:(id)a4 variant:(id)a5 device:(id)a6;
+ (id)controllerForComplication:(id)a3 variant:(id)a4 device:(id)a5;
- (BOOL)wantsLegacyDisplay;
- (CDComplicationDisplay)legacyDisplay;
- (NTKComplicationController)initWithComplication:(id)a3 variant:(id)a4 device:(id)a5;
- (id)_initWithComplication:(id)a3 legacyDisplay:(id)a4 forDevice:(id)a5;
- (id)displayPropertiesForDisplayWrapper:(id)a3;
- (void)_openApp:(id)a3 withURL:(id)a4 forDisplayWrapper:(id)a5 result:(id)a6;
- (void)_openAppWithURL:(id)a3 forDisplayWrapper:(id)a4;
- (void)_openUserActivity:(id)a3 forApp:(id)a4 forDisplayWrapper:(id)a5 result:(id)a6;
- (void)_updateActive;
- (void)_updateEffectiveAnimationMode;
- (void)_updateEffectiveCachingMode;
- (void)_updateEffectiveFaceDataMode;
- (void)_updateEffectiveUpdatingMode;
- (void)_updateInternalModes:(BOOL)a3;
- (void)activate;
- (void)addDataModeAssertion:(id)a3;
- (void)addDisplayWrapper:(id)a3;
- (void)addDisplayWrapper:(id)a3 withDisplayProperties:(id)a4;
- (void)deactivate;
- (void)dealloc;
- (void)enumerateDisplayWrappersWithBlock:(id)a3;
- (void)removeDataModeAssertion:(id)a3;
- (void)removeDisplayWrapper:(id)a3;
- (void)setDisplayProperties:(id)a3 forDisplayWrapper:(id)a4;
- (void)setFaceZooming:(BOOL)a3;
- (void)setTouchObserver:(id)a3 forDisplayWrapper:(id)a4;
- (void)updateDataModeAssertion:(id)a3;
- (void)updatePropertiesForDisplayWrapper:(id)a3 withBlock:(id)a4;
@end

@implementation NTKComplicationController

+ (id)controllerForComplication:(id)a3 variant:(id)a4 device:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15 = [v9 family];
  v14 = v15;
  v11 = [a1 _controllerClassForComplicationType:objc_msgSend(v8 family:"complicationType") device:v15 resolvedFamily:{v10, &v15}];
  if (!v11)
  {
    while (![NTKLocalBundleTimelineComplicationController acceptsComplication:v8 family:v14 forDevice:v10])
    {
      if ((NTKFallbackComplicationFamilyForFamily(v14, &v14) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v11 = objc_opt_class();
    if (v11)
    {
      goto LABEL_7;
    }

LABEL_6:
    v11 = objc_opt_class();
  }

LABEL_7:
  v12 = [a1 _newOrCachedControllerOfClass:v11 complication:v8 variant:v9 device:v10];

  return v12;
}

+ (Class)_controllerClassForComplicationType:(unint64_t)a3 family:(int64_t)a4 device:(id)a5 resolvedFamily:(int64_t *)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v31 = a4;
  v8 = a5;
  v9 = 0uLL;
  do
  {
    if (a6)
    {
      *a6 = v31;
    }

    v29 = v9;
    v30 = v9;
    v27 = v9;
    v28 = v9;
    if (_NonLegacyControllerClasses_onceToken != -1)
    {
      +[NTKComplicationController _controllerClassForComplicationType:family:device:resolvedFamily:];
    }

    v10 = _NonLegacyControllerClasses___classes;
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
LABEL_8:
      v14 = 0;
      while (1)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v27 + 1) + 8 * v14);
        if ([v15 _acceptsComplicationType:a3 family:v31 forDevice:v8])
        {
          goto LABEL_26;
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v27 objects:v33 count:16];
          if (v12)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }

    v16 = NTKFallbackComplicationFamilyForFamily(v31, &v31);
    v9 = 0uLL;
  }

  while ((v16 & 1) != 0);
  if (NTKIsRichComplicationFamily(v31))
  {
    v17 = 0;
    goto LABEL_28;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = _LegacyControllerClasses();
  v18 = [v10 countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (!v18)
  {
LABEL_25:
    v17 = 0;
    goto LABEL_27;
  }

  v19 = v18;
  v20 = *v24;
LABEL_19:
  v21 = 0;
  while (1)
  {
    if (*v24 != v20)
    {
      objc_enumerationMutation(v10);
    }

    v15 = *(*(&v23 + 1) + 8 * v21);
    if ([v15 _acceptsComplicationType:a3 forDevice:{v8, v23}])
    {
      break;
    }

    if (v19 == ++v21)
    {
      v19 = [v10 countByEnumeratingWithState:&v23 objects:v32 count:16];
      if (v19)
      {
        goto LABEL_19;
      }

      goto LABEL_25;
    }
  }

LABEL_26:
  v17 = v15;
LABEL_27:

LABEL_28:

  return v17;
}

+ (id)_newOrCachedControllerOfClass:(Class)a3 complication:(id)a4 variant:(id)a5 device:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __87__NTKComplicationController__newOrCachedControllerOfClass_complication_variant_device___block_invoke;
  v22 = &unk_278786BE0;
  v26 = a3;
  v12 = v9;
  v23 = v12;
  v13 = v10;
  v24 = v13;
  v14 = v11;
  v25 = v14;
  v15 = _Block_copy(&v19);
  if ([(objc_class *)a3 _isLegacy:v19])
  {
    v16 = v15[2](v15);
  }

  else
  {
    v17 = +[NTKComplicationControllerCache sharedCache];
    v16 = [v17 controllerForComplication:v12 variant:v13 device:v14 create:v15];
  }

  return v16;
}

id __87__NTKComplicationController__newOrCachedControllerOfClass_complication_variant_device___block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 56)) initWithComplication:*(a1 + 32) variant:*(a1 + 40) device:*(a1 + 48)];

  return v1;
}

- (BOOL)wantsLegacyDisplay
{
  v2 = objc_opt_class();

  return [v2 _isLegacy];
}

+ (id)DEPRECATEDControllerForComplication:(id)a3 withLegacyDisplay:(id)a4 forDevice:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 complicationType];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = _LegacyControllerClasses();
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v20 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v19 + 1) + 8 * v15);
      if ([v16 _acceptsComplicationType:v10 forDevice:{v9, v19}])
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v13)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    if (v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v16 = objc_opt_class();
LABEL_12:
  v17 = [[v16 alloc] _initWithComplication:v7 legacyDisplay:v8 forDevice:v9];

  return v17;
}

- (NTKComplicationController)initWithComplication:(id)a3 variant:(id)a4 device:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = NTKComplicationController;
  v12 = [(NTKComplicationController *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_complication, a3);
    v13->_complicationFamily = [v10 family];
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    displayWrappers = v13->_displayWrappers;
    v13->_displayWrappers = v14;

    v16 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    displayWrappersToDisplayProperties = v13->_displayWrappersToDisplayProperties;
    v13->_displayWrappersToDisplayProperties = v16;

    v18 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    displayWrappersToTouchObservers = v13->_displayWrappersToTouchObservers;
    v13->_displayWrappersToTouchObservers = v18;

    objc_storeStrong(&v13->_device, a5);
    v20 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    assertions = v13->_assertions;
    v13->_assertions = v20;

    [(NTKComplicationController *)v13 _updateInternalModes:1];
  }

  return v13;
}

- (id)_initWithComplication:(id)a3 legacyDisplay:(id)a4 forDevice:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = *MEMORY[0x277CBF3A8];
  v11 = *(MEMORY[0x277CBF3A8] + 8);
  v12 = *MEMORY[0x277D768C8];
  v13 = *(MEMORY[0x277D768C8] + 8);
  v14 = *(MEMORY[0x277D768C8] + 16);
  v15 = *(MEMORY[0x277D768C8] + 24);
  v16 = a3;
  v17 = [NTKComplicationMetrics metricsWithSize:0 safeAreaInsets:v10 cornerRadius:v11 opaque:v12, v13, v14, v15, 0.0];
  v18 = [NTKComplicationVariant variantWithFamily:-1 metrics:v17];
  v19 = [(NTKComplicationController *)self initWithComplication:v16 variant:v18 device:v9];

  if (v19)
  {
    objc_storeStrong(&v19->_device, a5);
    objc_storeWeak(&v19->_legacyDisplayDEPRECATED, v8);
    [(NTKComplicationController *)v19 _configureForLegacyDisplay:v8];
  }

  return v19;
}

- (void)_updateEffectiveCachingMode
{
  effectiveFaceDataMode = self->_effectiveFaceDataMode;
  if (effectiveFaceDataMode > 3)
  {
    if ((effectiveFaceDataMode - 4) >= 2)
    {
      return;
    }

    effectiveFaceDataMode = 1;
  }

  else if ((effectiveFaceDataMode - 2) < 2)
  {
    effectiveFaceDataMode = 2;
    if (!self->_hasGoneLive)
    {
      effectiveFaceDataMode = 0;
    }
  }

  else if (effectiveFaceDataMode)
  {
    if (effectiveFaceDataMode != 1)
    {
      return;
    }

    effectiveFaceDataMode = 2;
  }

  self->_cachingMode = effectiveFaceDataMode;
}

- (void)_updateEffectiveUpdatingMode
{
  effectiveFaceDataMode = self->_effectiveFaceDataMode;
  if (effectiveFaceDataMode <= 5)
  {
    self->_updatingMode = qword_22DCE97E8[effectiveFaceDataMode];
  }
}

- (void)_updateEffectiveAnimationMode
{
  effectiveFaceDataMode = self->_effectiveFaceDataMode;
  if (effectiveFaceDataMode <= 5)
  {
    if (((1 << effectiveFaceDataMode) & 0x39) != 0)
    {
      v3 = 0;
    }

    else
    {
      v3 = 1;
      if (self->_faceZooming)
      {
        v3 = 2;
      }
    }

    self->_animationMode = v3;
  }
}

- (void)_updateEffectiveFaceDataMode
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = NSAllMapTableKeys(self->_displayWrappersToDisplayProperties);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [(NTKComplicationController *)self displayPropertiesForDisplayWrapper:*(*(&v19 + 1) + 8 * i)];
        v6 = _MaxFaceDataMode(v6, [v9 faceDataMode]);
      }

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_assertions;
  v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v6 = _MaxFaceDataMode(v6, [*(*(&v15 + 1) + 8 * j) dataMode]);
      }

      v12 = [(NSHashTable *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }

  self->_effectiveFaceDataMode = v6;
}

- (void)_updateInternalModes:(BOOL)a3
{
  v3 = a3;
  v26 = *MEMORY[0x277D85DE8];
  effectiveFaceDataMode = self->_effectiveFaceDataMode;
  [(NTKComplicationController *)self _updateEffectiveFaceDataMode];
  v6 = self->_effectiveFaceDataMode;
  v7 = effectiveFaceDataMode == v6 && !v3;
  v8 = effectiveFaceDataMode;
  if (!v7)
  {
    if (v6 <= 5 && ((0x33u >> v6) & 1) != 0)
    {
      self->_hasGoneLive = 0x1010100uLL >> (8 * v6);
    }

    cachingMode = self->_cachingMode;
    updatingMode = self->_updatingMode;
    animationMode = self->_animationMode;
    [(NTKComplicationController *)self _updateEffectiveCachingMode];
    [(NTKComplicationController *)self _updateEffectiveUpdatingMode];
    [(NTKComplicationController *)self _updateEffectiveAnimationMode];
    if (updatingMode != self->_updatingMode)
    {
      [(NTKComplicationController *)self _applyUpdatingMode];
    }

    if (cachingMode != self->_cachingMode)
    {
      [(NTKComplicationController *)self _applyCachingMode];
    }

    if (animationMode != self->_animationMode)
    {
      [(NTKComplicationController *)self _applyAnimationMode];
    }

    v8 = self->_effectiveFaceDataMode;
  }

  if (effectiveFaceDataMode != v8 || v3)
  {
    v13 = (v8 > 5) | (6u >> v8) & 1;
    if (((effectiveFaceDataMode > 5) | (6u >> effectiveFaceDataMode) & 1) != v13 || v3)
    {
      v15 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(NTKComplicationController *)self complication];
        v17 = self->_effectiveFaceDataMode;
        v18 = 138413058;
        v19 = v16;
        v20 = 2048;
        v21 = effectiveFaceDataMode;
        v22 = 2048;
        v23 = v17;
        v24 = 1024;
        v25 = v13;
        _os_log_impl(&dword_22D9C5000, v15, OS_LOG_TYPE_DEFAULT, "updateIsComplicationActive: complication: %@ from %ld to %ld. isActive: %d", &v18, 0x26u);
      }

      [(NTKComplicationController *)self _updateIsComplicationActive:v13];
    }
  }
}

- (void)setDisplayProperties:(id)a3 forDisplayWrapper:(id)a4
{
  v9 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (v6)
  {
    displayWrappersToDisplayProperties = self->_displayWrappersToDisplayProperties;
    v8 = [v9 copy];
    [(NSMapTable *)displayWrappersToDisplayProperties setObject:v8 forKey:v6];

    [v6 setTapEnabled:{objc_msgSend(v9, "tapEnabled")}];
    [v6 setTapAnimationEnabled:{objc_msgSend(v9, "defaultTapAnimationEnabled")}];
    [v6 setPaused:{objc_msgSend(v9, "faceDataMode") != 1}];
    [v6 setTapInternalInputEnabled:1];
    [(NTKComplicationController *)self _updateInternalModes:0];
  }
}

- (id)displayPropertiesForDisplayWrapper:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [(NSMapTable *)self->_displayWrappersToDisplayProperties objectForKey:v4];

  return v5;
}

- (void)updatePropertiesForDisplayWrapper:(id)a3 withBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NTKComplicationController *)self displayPropertiesForDisplayWrapper:v7];
  if (!v8)
  {
    v8 = objc_opt_new();
  }

  v11 = v8;
  v9 = [v8 mutableCopy];
  v6[2](v6, v9);

  v10 = [v9 copy];
  [(NTKComplicationController *)self setDisplayProperties:v10 forDisplayWrapper:v7];
}

- (void)setFaceZooming:(BOOL)a3
{
  if (self->_faceZooming != a3)
  {
    self->_faceZooming = a3;
    [(NTKComplicationController *)self _updateInternalModes:1];
  }
}

- (void)deactivate
{
  if (self->_active)
  {
    self->_hasGoneLive = 0;
    [(NTKComplicationController *)self _deactivate];
    self->_active = 0;
  }
}

- (void)activate
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_DEBUG, "Activating controller %@", &v2, 0xCu);
}

- (void)dealloc
{
  [(NTKComplicationController *)self deactivate];
  v3.receiver = self;
  v3.super_class = NTKComplicationController;
  [(NTKComplicationController *)&v3 dealloc];
}

- (void)addDisplayWrapper:(id)a3 withDisplayProperties:(id)a4
{
  displayWrappersToDisplayProperties = self->_displayWrappersToDisplayProperties;
  v7 = a4;
  v9 = a3;
  v8 = [v7 copy];
  [(NSMapTable *)displayWrappersToDisplayProperties setObject:v8 forKey:v9];

  [(NTKComplicationController *)self addDisplayWrapper:v9];
  [(NTKComplicationController *)self setDisplayProperties:v7 forDisplayWrapper:v9];
}

- (void)addDisplayWrapper:(id)a3
{
  v4 = a3;
  if (![(NSMutableArray *)self->_displayWrappers count])
  {
    [(NTKComplicationController *)self activate];
  }

  [(NSMutableArray *)self->_displayWrappers addObject:v4];
  if ([(NSMutableArray *)self->_displayWrappers count]== 1)
  {
    v5 = [(NTKComplicationController *)self legacyDisplay];
    [(NTKComplicationController *)self _configureForLegacyDisplay:v5];
  }

  objc_initWeak(&location, self);
  objc_initWeak(&from, v4);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__NTKComplicationController_addDisplayWrapper___block_invoke;
  v11[3] = &unk_278786C08;
  objc_copyWeak(&v12, &location);
  objc_copyWeak(&v13, &from);
  [v4 setTouchDownHandler:v11];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__NTKComplicationController_addDisplayWrapper___block_invoke_2;
  v8[3] = &unk_278786C08;
  objc_copyWeak(&v9, &location);
  objc_copyWeak(&v10, &from);
  [v4 setTouchUpInsideHandler:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__NTKComplicationController_addDisplayWrapper___block_invoke_3;
  v6[3] = &unk_278786C30;
  objc_copyWeak(&v7, &location);
  [v4 setRenderStatsHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __47__NTKComplicationController_addDisplayWrapper___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didTouchDownInView:v3];

  v5 = [WeakRetained[5] objectForKey:v4];
  [v5 complicationController:WeakRetained touchedDownForDisplayWrapper:v4];
  if ([v4 tapAnimationEnabled] && (objc_msgSend(v4, "tapInternalInputEnabled") & 1) == 0)
  {
    [v4 setHighlighted:1];
  }
}

void __47__NTKComplicationController_addDisplayWrapper___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didTouchUpInsideView:v3];

  [WeakRetained performTapActionForDisplayWrapper:v4];
  v5 = [WeakRetained[5] objectForKey:v4];
  [v5 complicationController:WeakRetained touchedUpForDisplayWrapper:v4];
  if ([v4 tapAnimationEnabled] && (objc_msgSend(v4, "tapInternalInputEnabled") & 1) == 0)
  {
    [v4 setHighlighted:0];
  }
}

void __47__NTKComplicationController_addDisplayWrapper___block_invoke_3(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleRenderStatsForDisplayWrapper:v7 withTime:a3 cost:a4];
}

- (void)removeDisplayWrapper:(id)a3
{
  displayWrappers = self->_displayWrappers;
  v5 = a3;
  [(NSMutableArray *)displayWrappers removeObjectIdenticalTo:v5];
  [(NSMapTable *)self->_displayWrappersToDisplayProperties removeObjectForKey:v5];
  [(NSMapTable *)self->_displayWrappersToTouchObservers removeObjectForKey:v5];
  [v5 setTouchUpInsideHandler:0];

  [(NTKComplicationController *)self _updateInternalModes:0];
  if (![(NSMutableArray *)self->_displayWrappers count])
  {
    [(NTKComplicationController *)self _updateActive];
  }

  if ([(NSMutableArray *)self->_displayWrappers count]== 1)
  {
    v6 = [(NTKComplicationController *)self legacyDisplay];
    [(NTKComplicationController *)self _configureForLegacyDisplay:v6];
  }
}

- (void)enumerateDisplayWrappersWithBlock:(id)a3
{
  v4 = a3;
  displayWrappers = self->_displayWrappers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__NTKComplicationController_enumerateDisplayWrappersWithBlock___block_invoke;
  v7[3] = &unk_278786C58;
  v8 = v4;
  v6 = v4;
  [(NSMutableArray *)displayWrappers enumerateObjectsUsingBlock:v7];
}

- (CDComplicationDisplay)legacyDisplay
{
  WeakRetained = objc_loadWeakRetained(&self->_legacyDisplayDEPRECATED);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
  }

  else
  {
    v6 = [(NSMutableArray *)self->_displayWrappers firstObject];
    v5 = [v6 display];
  }

  return v5;
}

- (void)_openAppWithURL:(id)a3 forDisplayWrapper:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NTKComplicationController *)self complicationApplicationIdentifier];
  [(NTKComplicationController *)self _openApp:v8 withURL:v7 forDisplayWrapper:v6 result:0];
}

- (void)_openApp:(id)a3 withURL:(id)a4 forDisplayWrapper:(id)a5 result:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(NTKComplicationController *)self displayPropertiesForDisplayWrapper:v11];
  v15 = [v14 launchLocation];

  [v11 willPerformAppLaunchForComplication:self];
  NTKLaunchApp(v12);
}

- (void)_openUserActivity:(id)a3 forApp:(id)a4 forDisplayWrapper:(id)a5 result:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [(NTKComplicationController *)self displayPropertiesForDisplayWrapper:a5];
  v14 = [v13 launchLocation];

  NTKOpenUserActivity(v12, v11, v14, v10);
}

- (void)_updateActive
{
  active = self->_active;
  v4 = [(NSMutableArray *)self->_displayWrappers count];
  if (active)
  {
    if (!v4 && ![(NSHashTable *)self->_assertions count])
    {

      [(NTKComplicationController *)self deactivate];
    }
  }

  else if (v4 || [(NSHashTable *)self->_assertions count])
  {

    [(NTKComplicationController *)self activate];
  }
}

- (void)addDataModeAssertion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(NSHashTable *)self->_assertions addObject:v4];

  [(NTKComplicationController *)self _updateActive];

  [(NTKComplicationController *)self _updateInternalModes:0];
}

- (void)updateDataModeAssertion:(id)a3
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);

  [(NTKComplicationController *)self _updateInternalModes:0];
}

- (void)removeDataModeAssertion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(NSHashTable *)self->_assertions removeObject:v4];

  [(NTKComplicationController *)self _updateActive];

  [(NTKComplicationController *)self _updateInternalModes:0];
}

- (void)setTouchObserver:(id)a3 forDisplayWrapper:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([(NSMutableArray *)self->_displayWrappers containsObject:v6])
  {
    [(NSMapTable *)self->_displayWrappersToTouchObservers setObject:v7 forKey:v6];
  }
}

@end