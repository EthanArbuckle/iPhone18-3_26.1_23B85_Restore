@interface NTKWidgetComplicationController
+ (BOOL)_acceptsComplicationType:(unint64_t)type family:(int64_t)family forDevice:(id)device;
- (Class)richComplicationDisplayViewClass;
- (NTKWidgetComplicationController)initWithComplication:(id)complication variant:(id)variant device:(id)device;
- (id)_metrics;
- (void)_updateStateForDisplayWrapper:(id)wrapper;
- (void)_updateWidgetComplicationView:(id)view withDisplayProperties:(id)properties;
- (void)addDisplayWrapper:(id)wrapper;
- (void)didTouchUpInsideView:(id)view;
- (void)setDisplayProperties:(id)properties forDisplayWrapper:(id)wrapper;
@end

@implementation NTKWidgetComplicationController

- (NTKWidgetComplicationController)initWithComplication:(id)complication variant:(id)variant device:(id)device
{
  complicationCopy = complication;
  variantCopy = variant;
  v15.receiver = self;
  v15.super_class = NTKWidgetComplicationController;
  v11 = [(NTKComplicationController *)&v15 initWithComplication:complicationCopy variant:variantCopy device:device];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_variant, variant);
    if ([complicationCopy complicationType] != 56)
    {
      v13 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [NTKWidgetComplicationController initWithComplication:variant:device:];
      }
    }

    objc_storeStrong(&v12->_widgetComplication, complication);
  }

  return v12;
}

- (void)setDisplayProperties:(id)properties forDisplayWrapper:(id)wrapper
{
  v7.receiver = self;
  v7.super_class = NTKWidgetComplicationController;
  wrapperCopy = wrapper;
  [(NTKComplicationController *)&v7 setDisplayProperties:properties forDisplayWrapper:wrapperCopy];
  [(NTKWidgetComplicationController *)self _updateStateForDisplayWrapper:wrapperCopy, v7.receiver, v7.super_class];
}

+ (BOOL)_acceptsComplicationType:(unint64_t)type family:(int64_t)family forDevice:(id)device
{
  result = [device isRunningNapiliGMOrLater];
  if (type != 56)
  {
    return 0;
  }

  return result;
}

- (void)addDisplayWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v18.receiver = self;
  v18.super_class = NTKWidgetComplicationController;
  [(NTKComplicationController *)&v18 addDisplayWrapper:wrapperCopy];
  display = [wrapperCopy display];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    display2 = [wrapperCopy display];
    _metrics = [(NTKWidgetComplicationController *)self _metrics];
    [display2 setBaseMetrics:_metrics];

    metrics = [(NTKComplicationVariant *)self->_variant metrics];
    -[NSObject setOpaque:](display2, "setOpaque:", [metrics opaque]);

    metrics2 = [(NTKComplicationVariant *)self->_variant metrics];
    -[NSObject setTintable:](display2, "setTintable:", [metrics2 tintable]);

    [(NTKWidgetComplicationController *)self _updateStateForDisplayWrapper:wrapperCopy];
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();
    widgetComplication = self->_widgetComplication;
    if (v11)
    {
      viewController = [(NTKWidgetComplication *)widgetComplication viewController];
      [display2 setPreviewViewController:viewController];
    }

    else
    {
      viewController = [(NTKWidgetComplication *)widgetComplication extensionBundleIdentifier];
      containerBundleIdentifier = [(NTKWidgetComplication *)self->_widgetComplication containerBundleIdentifier];
      kind = [(NTKWidgetComplication *)self->_widgetComplication kind];
      intent = [(NTKWidgetComplication *)self->_widgetComplication intent];
      [display2 setWidgetExtensionBundleIdentifier:viewController containerBundleIdentifier:containerBundleIdentifier kind:kind intent:intent];
    }

    v17 = [(NTKComplicationVariant *)self->_variant family]== 10 || [(NTKComplicationVariant *)self->_variant family]== 12;
    [display2 setClipToMetrics:v17];
  }

  else
  {
    display2 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
    if (os_log_type_enabled(display2, OS_LOG_TYPE_FAULT))
    {
      [NTKWidgetComplicationController addDisplayWrapper:wrapperCopy];
    }
  }
}

- (id)_metrics
{
  v60[2] = *MEMORY[0x277D85DE8];
  v3 = +[NTKWidgetMetrics sharedInstance];
  complicationFamily = [(NTKComplicationController *)self complicationFamily];
  device = [(NTKComplicationController *)self device];
  v6 = [v3 metricsForComplicationFamily:complicationFamily device:device];

  metrics = [(NTKComplicationVariant *)self->_variant metrics];
  [metrics safeAreaInsets];
  v9 = v8;
  [metrics safeAreaInsets];
  v11 = v10;
  [metrics safeAreaInsets];
  v13 = v12;
  [metrics safeAreaInsets];
  v15 = v14;
  widgetGroupMetrics = [metrics widgetGroupMetrics];

  if (widgetGroupMetrics)
  {
    widgetGroupMetrics2 = [metrics widgetGroupMetrics];
    nestedContentMetrics = [widgetGroupMetrics2 nestedContentMetrics];

    widgetGroupMetrics3 = [metrics widgetGroupMetrics];
    [widgetGroupMetrics3 safeAreaInsets];

    widgetGroupMetrics4 = [metrics widgetGroupMetrics];
    [widgetGroupMetrics4 safeAreaInsets];

    widgetGroupMetrics5 = [metrics widgetGroupMetrics];
    [widgetGroupMetrics5 safeAreaInsets];

    widgetGroupMetrics6 = [metrics widgetGroupMetrics];
    [widgetGroupMetrics6 safeAreaInsets];

    v23 = objc_alloc(MEMORY[0x277CFA3E8]);
    v24 = [v23 initWithSafeAreaInsets:*MEMORY[0x277CFA180] layoutInsets:*(MEMORY[0x277CFA180] + 8) contentMargins:*(MEMORY[0x277CFA180] + 16) backgroundRemovedContentMargins:{*(MEMORY[0x277CFA180] + 24), *MEMORY[0x277CFA180], *(MEMORY[0x277CFA180] + 8), *(MEMORY[0x277CFA180] + 16), *(MEMORY[0x277CFA180] + 24)}];
    v25 = objc_alloc(MEMORY[0x277CFA3F0]);
    [nestedContentMetrics size];
    v27 = v26;
    v29 = v28;
    [nestedContentMetrics size];
    v31 = [v25 initWithSize:objc_msgSend(v6 cornerRadius:"fontStyle") scaleFactor:v27 fontStyle:{v29, v30 * 0.5, 1.0}];
    v32 = objc_alloc(MEMORY[0x277CFA3F0]);
    [nestedContentMetrics size];
    v34 = v33;
    v36 = v35;
    [nestedContentMetrics cornerRadius];
    v38 = [v32 initWithSize:objc_msgSend(v6 cornerRadius:"fontStyle") scaleFactor:v34 fontStyle:{v36, v37, 1.0}];
    v59[0] = &unk_284183250;
    v59[1] = &unk_284183268;
    v60[0] = v31;
    v60[1] = v38;
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
    v40 = objc_alloc(MEMORY[0x277CFA3F0]);
    [metrics size];
    v42 = v41;
    v44 = v43;
    [metrics cornerRadius];
    v46 = v45;
    [v6 scaleFactor];
    v48 = [v40 initWithSize:objc_msgSend(v6 cornerRadius:"fontStyle") scaleFactor:v24 fontStyle:v39 safeAreaInsets:v42 widgetGroupMargins:v44 nestedContentMetrics:{v46, v47, v9, v13, v11, v15}];
  }

  else
  {
    v49 = objc_alloc(MEMORY[0x277CFA3E8]);
    nestedContentMetrics = [v49 initWithSafeAreaInsets:*MEMORY[0x277CFA180] layoutInsets:*(MEMORY[0x277CFA180] + 8) contentMargins:*(MEMORY[0x277CFA180] + 16) backgroundRemovedContentMargins:{*(MEMORY[0x277CFA180] + 24), *MEMORY[0x277CFA180], *(MEMORY[0x277CFA180] + 8), *(MEMORY[0x277CFA180] + 16), *(MEMORY[0x277CFA180] + 24), *MEMORY[0x277CFA180], *(MEMORY[0x277CFA180] + 8), *(MEMORY[0x277CFA180] + 16), *(MEMORY[0x277CFA180] + 24), *MEMORY[0x277CFA180], *(MEMORY[0x277CFA180] + 8), *(MEMORY[0x277CFA180] + 16), *(MEMORY[0x277CFA180] + 24)}];
    v50 = objc_alloc(MEMORY[0x277CFA3F0]);
    [metrics size];
    v52 = v51;
    v54 = v53;
    [metrics cornerRadius];
    v56 = v55;
    [v6 scaleFactor];
    v48 = [v50 initWithSize:objc_msgSend(v6 cornerRadius:"fontStyle") scaleFactor:nestedContentMetrics fontStyle:0 safeAreaInsets:v52 widgetGroupMargins:v54 nestedContentMetrics:{v56, v57, v9, v13, v11, v15}];
  }

  return v48;
}

- (void)_updateStateForDisplayWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  display = [wrapperCopy display];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(NTKComplicationController *)self displayPropertiesForDisplayWrapper:wrapperCopy];
    display2 = [wrapperCopy display];
    [wrapperCopy setTapInternalInputEnabled:0];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__NTKWidgetComplicationController__updateStateForDisplayWrapper___block_invoke;
    v11[3] = &unk_278780FF8;
    v11[4] = self;
    v12 = display2;
    v13 = v7;
    v14 = wrapperCopy;
    v9 = v7;
    v10 = display2;
    [v10 coalescingUpdates:v11];
  }

  else
  {
    v10 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [NTKWidgetComplicationController addDisplayWrapper:wrapperCopy];
    }
  }
}

void __65__NTKWidgetComplicationController__updateStateForDisplayWrapper___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateWidgetComplicationView:*(a1 + 40) withDisplayProperties:*(a1 + 48)];
  objc_initWeak(&location, *(a1 + 40));
  objc_initWeak(&from, *(a1 + 56));
  v2 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__NTKWidgetComplicationController__updateStateForDisplayWrapper___block_invoke_2;
  v8[3] = &unk_2787831B0;
  objc_copyWeak(&v9, &location);
  objc_copyWeak(&v10, &from);
  [v2 setTouchDownChangedHandler:v8];
  objc_initWeak(&v7, *(a1 + 32));
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__NTKWidgetComplicationController__updateStateForDisplayWrapper___block_invoke_3;
  v4[3] = &unk_278780120;
  objc_copyWeak(&v5, &from);
  objc_copyWeak(&v6, &v7);
  [v3 setWillPerformAppLaunchHandler:v4];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __65__NTKWidgetComplicationController__updateStateForDisplayWrapper___block_invoke_2(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v4)
  {
    if (a2)
    {
      [v4 touchDownHandler];
    }

    else
    {
      [v4 touchUpInsideHandler];
    }
    v5 = ;
    (v5)[2](v5, WeakRetained);
  }
}

void __65__NTKWidgetComplicationController__updateStateForDisplayWrapper___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained willPerformAppLaunchForComplication:v2];
}

- (void)_updateWidgetComplicationView:(id)view withDisplayProperties:(id)properties
{
  viewCopy = view;
  propertiesCopy = properties;
  faceDataMode = [propertiesCopy faceDataMode];
  [viewCopy setVisibility:{objc_msgSend(propertiesCopy, "visibility")}];
  launchLocation = [propertiesCopy launchLocation];
  [viewCopy setLaunchLocation:launchLocation];

  widgetConfigurationIdentifier = [propertiesCopy widgetConfigurationIdentifier];
  [viewCopy setWidgetIdentifier:widgetConfigurationIdentifier];

  [viewCopy setSupportsTinting:{objc_msgSend(propertiesCopy, "supportsTinting")}];
  [viewCopy setSupportsSpecularHighlighting:{objc_msgSend(propertiesCopy, "supportsSpecularHighlighting")}];
  [viewCopy setCanAppearInSecureEnvironment:{objc_msgSend(propertiesCopy, "showsWhenLocked")}];
  [viewCopy setSupportsLowLuminance:{objc_msgSend(propertiesCopy, "showsInLowLuminance")}];
  [viewCopy setInteractionDisabled:{objc_msgSend(propertiesCopy, "tapEnabled") ^ 1}];
  [viewCopy setSupportsWatchGestureInteraction:{objc_msgSend(propertiesCopy, "supportsWatchGestureInteraction")}];
  if (faceDataMode > 5)
  {
    goto LABEL_9;
  }

  if (((1 << faceDataMode) & 0x19) != 0)
  {
    showsInLowLuminance = 0;
  }

  else
  {
    if (((1 << faceDataMode) & 0x22) == 0)
    {
      [viewCopy setVisibleInTritium:{objc_msgSend(propertiesCopy, "showsInLowLuminance")}];
      [viewCopy setContentPaused:0];
      goto LABEL_9;
    }

    showsInLowLuminance = [propertiesCopy showsInLowLuminance];
  }

  [viewCopy setVisibleInTritium:showsInLowLuminance];
  [viewCopy setContentPaused:0];
  if (faceDataMode == 3)
  {
    widgetRequiresSnapshot = 1;
    goto LABEL_10;
  }

LABEL_9:
  widgetRequiresSnapshot = [propertiesCopy widgetRequiresSnapshot];
LABEL_10:
  [viewCopy setRequireSnapshot:widgetRequiresSnapshot];
  [viewCopy setContentOverride:{objc_msgSend(propertiesCopy, "contentOverride")}];
  [viewCopy setShowSnapshot:{objc_msgSend(propertiesCopy, "widgetShowsSnapshot")}];
  [viewCopy setWidgetHostPriorityTransientSnapshot:{objc_msgSend(propertiesCopy, "widgetHostPriorityTransientSnapshot")}];
}

- (Class)richComplicationDisplayViewClass
{
  [(NTKComplicationController *)self complicationFamily];
  v2 = objc_opt_class();

  return v2;
}

- (void)didTouchUpInsideView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [viewCopy performTapAction];
  }
}

- (void)initWithComplication:variant:device:.cold.1()
{
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_0_12(&dword_22D9C5000, v1, v2, "NTKWidgetComplicationController created with a complication of unsupported class %@", v3, v4, v5, v6, 2u);
}

- (void)addDisplayWrapper:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 display];
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_0_12(&dword_22D9C5000, v3, v4, "NTKWidgetComplicationController only supports NTKWidgetRichComplicationView displays, got class %@", v5, v6, v7, v8, 2u);
}

@end