@interface NTKWidgetComplicationController
+ (BOOL)_acceptsComplicationType:(unint64_t)a3 family:(int64_t)a4 forDevice:(id)a5;
- (Class)richComplicationDisplayViewClass;
- (NTKWidgetComplicationController)initWithComplication:(id)a3 variant:(id)a4 device:(id)a5;
- (id)_metrics;
- (void)_updateStateForDisplayWrapper:(id)a3;
- (void)_updateWidgetComplicationView:(id)a3 withDisplayProperties:(id)a4;
- (void)addDisplayWrapper:(id)a3;
- (void)didTouchUpInsideView:(id)a3;
- (void)setDisplayProperties:(id)a3 forDisplayWrapper:(id)a4;
@end

@implementation NTKWidgetComplicationController

- (NTKWidgetComplicationController)initWithComplication:(id)a3 variant:(id)a4 device:(id)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = NTKWidgetComplicationController;
  v11 = [(NTKComplicationController *)&v15 initWithComplication:v9 variant:v10 device:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_variant, a4);
    if ([v9 complicationType] != 56)
    {
      v13 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [NTKWidgetComplicationController initWithComplication:variant:device:];
      }
    }

    objc_storeStrong(&v12->_widgetComplication, a3);
  }

  return v12;
}

- (void)setDisplayProperties:(id)a3 forDisplayWrapper:(id)a4
{
  v7.receiver = self;
  v7.super_class = NTKWidgetComplicationController;
  v6 = a4;
  [(NTKComplicationController *)&v7 setDisplayProperties:a3 forDisplayWrapper:v6];
  [(NTKWidgetComplicationController *)self _updateStateForDisplayWrapper:v6, v7.receiver, v7.super_class];
}

+ (BOOL)_acceptsComplicationType:(unint64_t)a3 family:(int64_t)a4 forDevice:(id)a5
{
  result = [a5 isRunningNapiliGMOrLater];
  if (a3 != 56)
  {
    return 0;
  }

  return result;
}

- (void)addDisplayWrapper:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = NTKWidgetComplicationController;
  [(NTKComplicationController *)&v18 addDisplayWrapper:v4];
  v5 = [v4 display];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v4 display];
    v8 = [(NTKWidgetComplicationController *)self _metrics];
    [v7 setBaseMetrics:v8];

    v9 = [(NTKComplicationVariant *)self->_variant metrics];
    -[NSObject setOpaque:](v7, "setOpaque:", [v9 opaque]);

    v10 = [(NTKComplicationVariant *)self->_variant metrics];
    -[NSObject setTintable:](v7, "setTintable:", [v10 tintable]);

    [(NTKWidgetComplicationController *)self _updateStateForDisplayWrapper:v4];
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();
    widgetComplication = self->_widgetComplication;
    if (v11)
    {
      v13 = [(NTKWidgetComplication *)widgetComplication viewController];
      [v7 setPreviewViewController:v13];
    }

    else
    {
      v13 = [(NTKWidgetComplication *)widgetComplication extensionBundleIdentifier];
      v14 = [(NTKWidgetComplication *)self->_widgetComplication containerBundleIdentifier];
      v15 = [(NTKWidgetComplication *)self->_widgetComplication kind];
      v16 = [(NTKWidgetComplication *)self->_widgetComplication intent];
      [v7 setWidgetExtensionBundleIdentifier:v13 containerBundleIdentifier:v14 kind:v15 intent:v16];
    }

    v17 = [(NTKComplicationVariant *)self->_variant family]== 10 || [(NTKComplicationVariant *)self->_variant family]== 12;
    [v7 setClipToMetrics:v17];
  }

  else
  {
    v7 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [NTKWidgetComplicationController addDisplayWrapper:v4];
    }
  }
}

- (id)_metrics
{
  v60[2] = *MEMORY[0x277D85DE8];
  v3 = +[NTKWidgetMetrics sharedInstance];
  v4 = [(NTKComplicationController *)self complicationFamily];
  v5 = [(NTKComplicationController *)self device];
  v6 = [v3 metricsForComplicationFamily:v4 device:v5];

  v7 = [(NTKComplicationVariant *)self->_variant metrics];
  [v7 safeAreaInsets];
  v9 = v8;
  [v7 safeAreaInsets];
  v11 = v10;
  [v7 safeAreaInsets];
  v13 = v12;
  [v7 safeAreaInsets];
  v15 = v14;
  v16 = [v7 widgetGroupMetrics];

  if (v16)
  {
    v17 = [v7 widgetGroupMetrics];
    v18 = [v17 nestedContentMetrics];

    v19 = [v7 widgetGroupMetrics];
    [v19 safeAreaInsets];

    v20 = [v7 widgetGroupMetrics];
    [v20 safeAreaInsets];

    v21 = [v7 widgetGroupMetrics];
    [v21 safeAreaInsets];

    v22 = [v7 widgetGroupMetrics];
    [v22 safeAreaInsets];

    v23 = objc_alloc(MEMORY[0x277CFA3E8]);
    v24 = [v23 initWithSafeAreaInsets:*MEMORY[0x277CFA180] layoutInsets:*(MEMORY[0x277CFA180] + 8) contentMargins:*(MEMORY[0x277CFA180] + 16) backgroundRemovedContentMargins:{*(MEMORY[0x277CFA180] + 24), *MEMORY[0x277CFA180], *(MEMORY[0x277CFA180] + 8), *(MEMORY[0x277CFA180] + 16), *(MEMORY[0x277CFA180] + 24)}];
    v25 = objc_alloc(MEMORY[0x277CFA3F0]);
    [v18 size];
    v27 = v26;
    v29 = v28;
    [v18 size];
    v31 = [v25 initWithSize:objc_msgSend(v6 cornerRadius:"fontStyle") scaleFactor:v27 fontStyle:{v29, v30 * 0.5, 1.0}];
    v32 = objc_alloc(MEMORY[0x277CFA3F0]);
    [v18 size];
    v34 = v33;
    v36 = v35;
    [v18 cornerRadius];
    v38 = [v32 initWithSize:objc_msgSend(v6 cornerRadius:"fontStyle") scaleFactor:v34 fontStyle:{v36, v37, 1.0}];
    v59[0] = &unk_284183250;
    v59[1] = &unk_284183268;
    v60[0] = v31;
    v60[1] = v38;
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
    v40 = objc_alloc(MEMORY[0x277CFA3F0]);
    [v7 size];
    v42 = v41;
    v44 = v43;
    [v7 cornerRadius];
    v46 = v45;
    [v6 scaleFactor];
    v48 = [v40 initWithSize:objc_msgSend(v6 cornerRadius:"fontStyle") scaleFactor:v24 fontStyle:v39 safeAreaInsets:v42 widgetGroupMargins:v44 nestedContentMetrics:{v46, v47, v9, v13, v11, v15}];
  }

  else
  {
    v49 = objc_alloc(MEMORY[0x277CFA3E8]);
    v18 = [v49 initWithSafeAreaInsets:*MEMORY[0x277CFA180] layoutInsets:*(MEMORY[0x277CFA180] + 8) contentMargins:*(MEMORY[0x277CFA180] + 16) backgroundRemovedContentMargins:{*(MEMORY[0x277CFA180] + 24), *MEMORY[0x277CFA180], *(MEMORY[0x277CFA180] + 8), *(MEMORY[0x277CFA180] + 16), *(MEMORY[0x277CFA180] + 24), *MEMORY[0x277CFA180], *(MEMORY[0x277CFA180] + 8), *(MEMORY[0x277CFA180] + 16), *(MEMORY[0x277CFA180] + 24), *MEMORY[0x277CFA180], *(MEMORY[0x277CFA180] + 8), *(MEMORY[0x277CFA180] + 16), *(MEMORY[0x277CFA180] + 24)}];
    v50 = objc_alloc(MEMORY[0x277CFA3F0]);
    [v7 size];
    v52 = v51;
    v54 = v53;
    [v7 cornerRadius];
    v56 = v55;
    [v6 scaleFactor];
    v48 = [v50 initWithSize:objc_msgSend(v6 cornerRadius:"fontStyle") scaleFactor:v18 fontStyle:0 safeAreaInsets:v52 widgetGroupMargins:v54 nestedContentMetrics:{v56, v57, v9, v13, v11, v15}];
  }

  return v48;
}

- (void)_updateStateForDisplayWrapper:(id)a3
{
  v4 = a3;
  v5 = [v4 display];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(NTKComplicationController *)self displayPropertiesForDisplayWrapper:v4];
    v8 = [v4 display];
    [v4 setTapInternalInputEnabled:0];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__NTKWidgetComplicationController__updateStateForDisplayWrapper___block_invoke;
    v11[3] = &unk_278780FF8;
    v11[4] = self;
    v12 = v8;
    v13 = v7;
    v14 = v4;
    v9 = v7;
    v10 = v8;
    [v10 coalescingUpdates:v11];
  }

  else
  {
    v10 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [NTKWidgetComplicationController addDisplayWrapper:v4];
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

- (void)_updateWidgetComplicationView:(id)a3 withDisplayProperties:(id)a4
{
  v11 = a3;
  v5 = a4;
  v6 = [v5 faceDataMode];
  [v11 setVisibility:{objc_msgSend(v5, "visibility")}];
  v7 = [v5 launchLocation];
  [v11 setLaunchLocation:v7];

  v8 = [v5 widgetConfigurationIdentifier];
  [v11 setWidgetIdentifier:v8];

  [v11 setSupportsTinting:{objc_msgSend(v5, "supportsTinting")}];
  [v11 setSupportsSpecularHighlighting:{objc_msgSend(v5, "supportsSpecularHighlighting")}];
  [v11 setCanAppearInSecureEnvironment:{objc_msgSend(v5, "showsWhenLocked")}];
  [v11 setSupportsLowLuminance:{objc_msgSend(v5, "showsInLowLuminance")}];
  [v11 setInteractionDisabled:{objc_msgSend(v5, "tapEnabled") ^ 1}];
  [v11 setSupportsWatchGestureInteraction:{objc_msgSend(v5, "supportsWatchGestureInteraction")}];
  if (v6 > 5)
  {
    goto LABEL_9;
  }

  if (((1 << v6) & 0x19) != 0)
  {
    v9 = 0;
  }

  else
  {
    if (((1 << v6) & 0x22) == 0)
    {
      [v11 setVisibleInTritium:{objc_msgSend(v5, "showsInLowLuminance")}];
      [v11 setContentPaused:0];
      goto LABEL_9;
    }

    v9 = [v5 showsInLowLuminance];
  }

  [v11 setVisibleInTritium:v9];
  [v11 setContentPaused:0];
  if (v6 == 3)
  {
    v10 = 1;
    goto LABEL_10;
  }

LABEL_9:
  v10 = [v5 widgetRequiresSnapshot];
LABEL_10:
  [v11 setRequireSnapshot:v10];
  [v11 setContentOverride:{objc_msgSend(v5, "contentOverride")}];
  [v11 setShowSnapshot:{objc_msgSend(v5, "widgetShowsSnapshot")}];
  [v11 setWidgetHostPriorityTransientSnapshot:{objc_msgSend(v5, "widgetHostPriorityTransientSnapshot")}];
}

- (Class)richComplicationDisplayViewClass
{
  [(NTKComplicationController *)self complicationFamily];
  v2 = objc_opt_class();

  return v2;
}

- (void)didTouchUpInsideView:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 performTapAction];
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