@interface CSComplicationManager
- (BOOL)_bundleHasOpenURLEntitlement:(id)a3;
- (BOOL)_widgetHasMatchingSystemDescriptor:(id)a3;
- (CSComplicationManager)initWithApplicationInformer:(id)a3 urlHandler:(id)a4;
- (id)_widgetMetricsForBounds:(CGRect)a3 fromMetrics:(id)a4;
- (void)_complicationDescriptorsForWidgets:(id)a3 completion:(id)a4;
- (void)_createComplicationDescriptorForWidget:(id)a3 withMetrics:(id)a4 completion:(id)a5;
- (void)_openApplicationWithBundleIdentifier:(id)a3 action:(id)a4;
- (void)_updateComplicationsForActivePosterConfiguration;
- (void)_updateWidgetHostConfiguration;
- (void)applicationInformer:(id)a3 updatedApplications:(id)a4;
- (void)dealloc;
- (void)descriptorsDidChangeForDescriptorProvider:(id)a3;
- (void)handleLaunchRequestForWidget:(id)a3 withAction:(id)a4;
- (void)setOnInlineComplicationUpdate:(id)a3;
- (void)setOnSidebarWidgetUpdate:(id)a3;
- (void)setOnTintColorUpdate:(id)a3;
- (void)setOnWidgetUpdate:(id)a3;
@end

@implementation CSComplicationManager

- (CSComplicationManager)initWithApplicationInformer:(id)a3 urlHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v28.receiver = self;
  v28.super_class = CSComplicationManager;
  v9 = [(CSComplicationManager *)&v28 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277D3EE88]);
    widgetMetricsProvider = v9->_widgetMetricsProvider;
    v9->_widgetMetricsProvider = v10;

    graphicComplicationDescriptors = v9->_graphicComplicationDescriptors;
    v13 = MEMORY[0x277CBEBF8];
    v9->_graphicComplicationDescriptors = MEMORY[0x277CBEBF8];

    sidebarComplicationDescriptors = v9->_sidebarComplicationDescriptors;
    v9->_sidebarComplicationDescriptors = v13;

    objc_storeStrong(&v9->_applicationInformer, a3);
    objc_storeStrong(&v9->_urlHandler, a4);
    v15 = objc_alloc_init(MEMORY[0x277CFA380]);
    widgetDescriptorProvider = v9->_widgetDescriptorProvider;
    v9->_widgetDescriptorProvider = v15;

    [(CHSWidgetDescriptorProvider *)v9->_widgetDescriptorProvider addObserver:v9];
    if ((CSFeatureEnabled(0) & 1) != 0 || CSFeatureEnabled(4))
    {
      [(CSApplicationInforming *)v9->_applicationInformer addApplicationInformationObserver:v9];
      v17 = [objc_alloc(MEMORY[0x277D3EA10]) initWithExplanation:@"CoverSheet"];
      wallpaperObserver = v9->_wallpaperObserver;
      v9->_wallpaperObserver = v17;

      objc_initWeak(&location, v9);
      v19 = MEMORY[0x277D3EA18];
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __64__CSComplicationManager_initWithApplicationInformer_urlHandler___block_invoke;
      v25 = &unk_27838C670;
      objc_copyWeak(&v26, &location);
      v20 = [v19 configurationWithHandler:&v22];
      [(PRSWallpaperObserver *)v9->_wallpaperObserver activateWithConfiguration:v20, v22, v23, v24, v25];

      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
    }
  }

  return v9;
}

void __64__CSComplicationManager_initWithApplicationInformer_urlHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__CSComplicationManager_initWithApplicationInformer_urlHandler___block_invoke_2;
  v5[3] = &unk_27838C460;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __64__CSComplicationManager_initWithApplicationInformer_urlHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 2, *(a1 + 32));
    [v3 _updateComplicationsForActivePosterConfiguration];
    WeakRetained = v3;
  }
}

- (void)dealloc
{
  [(PRSWallpaperObserver *)self->_wallpaperObserver invalidate];
  [(CHSWidgetHost *)self->_widgetHost invalidate];
  v3.receiver = self;
  v3.super_class = CSComplicationManager;
  [(CSComplicationManager *)&v3 dealloc];
}

- (id)_widgetMetricsForBounds:(CGRect)a3 fromMetrics:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = MEMORY[0x277D02CF0];
  v9 = a4;
  v10 = [v8 alloc];
  v11 = [MEMORY[0x277D759A0] mainScreen];
  v12 = [v10 initWithTraitEnvironment:v11];

  [v12 frameForElements:4 withBoundingRect:{x, y, width, height}];
  v14 = v13;
  [v9 size];
  v16 = v15;

  v17 = [objc_alloc(MEMORY[0x277CFA3F0]) initWithSize:v14 cornerRadius:{v16, 0.0}];

  return v17;
}

- (void)_updateComplicationsForActivePosterConfiguration
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_0_1(&dword_21EB05000, a2, a3, "Failed to load complication layout from %@: %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

void __73__CSComplicationManager__updateComplicationsForActivePosterConfiguration__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 40));
}

void __73__CSComplicationManager__updateComplicationsForActivePosterConfiguration__block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 48), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 40));
}

uint64_t __73__CSComplicationManager__updateComplicationsForActivePosterConfiguration__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _updateWidgetHostConfiguration];
  result = *(*(a1 + 32) + 120);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __73__CSComplicationManager__updateComplicationsForActivePosterConfiguration__block_invoke_18(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __73__CSComplicationManager__updateComplicationsForActivePosterConfiguration__block_invoke_2_20(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t __73__CSComplicationManager__updateComplicationsForActivePosterConfiguration__block_invoke_3_21(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 56), *(*(*(a1 + 48) + 8) + 40));
  objc_storeStrong((*(a1 + 32) + 64), *(*(*(a1 + 56) + 8) + 40));
  v2 = [*(a1 + 40) complicationIconLayout];
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;

  v5 = [*(a1 + 40) sidebarComplicationIconLayout];
  v6 = *(a1 + 32);
  v7 = *(v6 + 80);
  *(v6 + 80) = v5;

  [*(a1 + 32) _updateWidgetHostConfiguration];
  v8 = *(a1 + 32);
  v9 = v8[16];
  if (v9)
  {
    (*(v9 + 16))(v9, v8[7], v8[9]);
    v8 = *(a1 + 32);
  }

  result = v8[17];
  if (result)
  {
    v11 = *(result + 16);

    return v11();
  }

  return result;
}

- (void)_complicationDescriptorsForWidgets:(id)a3 completion:(id)a4
{
  v23 = a4;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __71__CSComplicationManager__complicationDescriptorsForWidgets_completion___block_invoke;
  v33[3] = &unk_27838C710;
  v33[4] = self;
  v6 = [a3 bs_filter:v33];
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v8 = dispatch_group_create();
  if ([v6 count])
  {
    v9 = 0;
    v24 = v8;
    v25 = v6;
    do
    {
      v10 = [MEMORY[0x277CBEB68] null];
      [v7 addObject:v10];

      dispatch_group_enter(v8);
      v11 = [v6 objectAtIndexedSubscript:v9];
      v12 = objc_alloc(MEMORY[0x277CFA358]);
      v13 = [v11 extensionBundleIdentifier];
      v14 = [v11 containerBundleIdentifier];
      v15 = [v11 kind];
      v16 = [v11 family];
      [v11 intent];
      v18 = v17 = v7;
      v19 = [v12 initWithExtensionBundleIdentifier:v13 containerBundleIdentifier:v14 kind:v15 family:v16 intent:v18];

      v7 = v17;
      v8 = v24;

      v20 = [(PRWidgetMetricsProvider *)self->_widgetMetricsProvider systemMetricsForWidget:v19];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __71__CSComplicationManager__complicationDescriptorsForWidgets_completion___block_invoke_2;
      v29[3] = &unk_27838C738;
      v30 = v7;
      v32 = v9;
      v31 = v24;
      [(CSComplicationManager *)self _createComplicationDescriptorForWidget:v11 withMetrics:v20 completion:v29];

      v6 = v25;
      ++v9;
    }

    while (v9 < [v25 count]);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__CSComplicationManager__complicationDescriptorsForWidgets_completion___block_invoke_3;
  block[3] = &unk_27838C038;
  v27 = v7;
  v28 = v23;
  v21 = v7;
  v22 = v23;
  dispatch_group_notify(v8, MEMORY[0x277D85CD0], block);
}

void __71__CSComplicationManager__complicationDescriptorsForWidgets_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setObject:a2 atIndexedSubscript:*(a1 + 48)];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void __71__CSComplicationManager__complicationDescriptorsForWidgets_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2);
}

- (BOOL)_widgetHasMatchingSystemDescriptor:(id)a3
{
  widgetDescriptorProvider = self->_widgetDescriptorProvider;
  v4 = a3;
  v5 = [(CHSWidgetDescriptorProvider *)widgetDescriptorProvider descriptorForPersonality:v4];
  [v4 family];

  v6 = CHSWidgetFamilyMaskFromWidgetFamily();
  if (v5)
  {
    v7 = (v6 & ~[v5 supportedFamilies]) == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_updateWidgetHostConfiguration
{
  v24[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v4 = [v3 arrayByAddingObjectsFromArray:self->_graphicComplicationDescriptors];

  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v7 = [v4 arrayByAddingObjectsFromArray:self->_sidebarComplicationDescriptors];

    v4 = v7;
  }

  if (self->_inlineComplicationDescriptor)
  {
    landscapeInlineComplicationDescriptor = self->_landscapeInlineComplicationDescriptor;
    if (landscapeInlineComplicationDescriptor)
    {
      v24[0] = self->_inlineComplicationDescriptor;
      v24[1] = landscapeInlineComplicationDescriptor;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
      v10 = [v4 arrayByAddingObjectsFromArray:v9];

      v4 = v10;
    }
  }

  v11 = [v4 bs_map:&__block_literal_global_3];
  v12 = [(PRWidgetMetricsProvider *)self->_widgetMetricsProvider lockScreenWidgetMetricsSpecifications];
  v13 = [objc_alloc(MEMORY[0x277CFA360]) initWithContainerDescriptors:v11 metricsSpecification:v12];
  widgetHost = self->_widgetHost;
  if (widgetHost)
  {
    [(CHSWidgetHost *)widgetHost setConfiguration:v13];
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x277CFA3D0]) initWithIdentifier:@"Complications" configuration:v13 active:1];
    v16 = self->_widgetHost;
    self->_widgetHost = v15;

    [(CHSWidgetHost *)self->_widgetHost activate];
  }

  v17 = SBLogCommon();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = self->_widgetHost;
    v19 = [v4 bs_map:&__block_literal_global_34];
    v20 = 138543618;
    v21 = v18;
    v22 = 2114;
    v23 = v19;
    _os_log_impl(&dword_21EB05000, v17, OS_LOG_TYPE_DEFAULT, "[Widget Grid] updating widgetHost %{public}@ with complication descriptors: %{public}@", &v20, 0x16u);
  }
}

id __55__CSComplicationManager__updateWidgetHostConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 uniqueIdentifier];
  v4 = objc_alloc(MEMORY[0x277CFA288]);
  v5 = [v2 widget];
  v6 = [v2 metrics];
  v7 = [v4 initWithUniqueIdentifier:v3 widget:v5 metrics:v6];

  [v7 setSuggestion:0];
  [v7 setSystemConfigured:0];
  [v7 setSupportedColorSchemes:2];
  [v7 setSupportsLowLuminance:1];
  v8 = [objc_alloc(MEMORY[0x277CFA430]) initWithRenderingMode:1 backgroundViewPolicy:1];
  v17[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [v7 setSupportedRenderSchemes:v9];

  v10 = objc_alloc(MEMORY[0x277CFA1E0]);
  v11 = [v2 widget];

  v12 = [v11 family];
  v16 = v7;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  v14 = [v10 initWithUniqueIdentifier:v3 location:4 canAppearInSecureEnvironment:1 page:0 family:v12 widgets:v13 activeWidget:v3];

  return v14;
}

id __55__CSComplicationManager__updateWidgetHostConfiguration__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 widget];
  v3 = [v2 debugDescription];

  return v3;
}

- (void)_createComplicationDescriptorForWidget:(id)a3 withMetrics:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__0;
  v39 = __Block_byref_object_dispose__0;
  v11 = objc_alloc(MEMORY[0x277CFA358]);
  v12 = [v8 extensionBundleIdentifier];
  v13 = [v8 containerBundleIdentifier];
  v14 = [v8 kind];
  v15 = [v8 family];
  v16 = [v8 intent];
  v40 = [v11 initWithExtensionBundleIdentifier:v12 containerBundleIdentifier:v13 kind:v14 family:v15 intent:v16];

  applicationInformer = self->_applicationInformer;
  v18 = [v36[5] containerBundleIdentifier];
  LOBYTE(applicationInformer) = [(CSApplicationInforming *)applicationInformer isBundleIdentifierBlockedForScreenTimeExpiration:v18];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __87__CSComplicationManager__createComplicationDescriptorForWidget_withMetrics_completion___block_invoke;
  v29[3] = &unk_27838C7A0;
  v33 = &v35;
  v19 = v8;
  v30 = v19;
  v20 = v9;
  v31 = v20;
  v34 = applicationInformer;
  v21 = v10;
  v32 = v21;
  v22 = MEMORY[0x223D698D0](v29);
  v23 = [(CHSWidgetDescriptorProvider *)self->_widgetDescriptorProvider descriptorForPersonality:v36[5]];
  v24 = [v23 intentType];
  if (v24 && ([v36[5] intent], v25 = objc_claimAutoreleasedReturnValue(), v25, v24, !v25))
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __87__CSComplicationManager__createComplicationDescriptorForWidget_withMetrics_completion___block_invoke_2;
    v27[3] = &unk_27838C7C8;
    v28 = v22;
    [v23 loadDefaultIntent:v27];
    v26 = v28;
  }

  else
  {
    v26 = [v36[5] intent];
    (v22)[2](v22, v26);
  }

  _Block_object_dispose(&v35, 8);
}

void __87__CSComplicationManager__createComplicationDescriptorForWidget_withMetrics_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(*(a1 + 56) + 8) + 40) widgetByReplacingIntent:a2];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [CSComplicationDescriptor alloc];
  v7 = [*(a1 + 32) uniqueIdentifier];
  v8 = [(CSComplicationDescriptor *)v6 initWithUniqueIdentifier:v7 widget:*(*(*(a1 + 56) + 8) + 40) metrics:*(a1 + 40) blockedForScreenTimeExpiration:*(a1 + 64)];

  (*(*(a1 + 48) + 16))();
}

- (void)setOnInlineComplicationUpdate:(id)a3
{
  v4 = MEMORY[0x223D698D0](a3, a2);
  onInlineComplicationUpdate = self->_onInlineComplicationUpdate;
  self->_onInlineComplicationUpdate = v4;

  v6 = self->_onInlineComplicationUpdate;
  if (v6)
  {
    v7 = *(v6 + 2);

    v7();
  }
}

- (void)setOnWidgetUpdate:(id)a3
{
  v4 = MEMORY[0x223D698D0](a3, a2);
  onWidgetUpdate = self->_onWidgetUpdate;
  self->_onWidgetUpdate = v4;

  v6 = self->_onWidgetUpdate;
  if (v6)
  {
    v7 = *(v6 + 2);

    v7();
  }
}

- (void)setOnSidebarWidgetUpdate:(id)a3
{
  v4 = MEMORY[0x223D698D0](a3, a2);
  onSidebarWidgetUpdate = self->_onSidebarWidgetUpdate;
  self->_onSidebarWidgetUpdate = v4;

  v6 = self->_onSidebarWidgetUpdate;
  if (v6)
  {
    v7 = *(v6 + 2);

    v7();
  }
}

- (void)setOnTintColorUpdate:(id)a3
{
  v4 = MEMORY[0x223D698D0](a3, a2);
  onTintColorUpdate = self->_onTintColorUpdate;
  self->_onTintColorUpdate = v4;

  v6 = self->_onTintColorUpdate;
  if (v6)
  {
    v7 = *(v6 + 2);

    v7();
  }
}

- (void)handleLaunchRequestForWidget:(id)a3 withAction:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 extensionBundleIdentifier];
  v8 = [objc_alloc(MEMORY[0x277CC1E50]) initWithBundleIdentifier:v7 error:0];
  v9 = [v8 containingBundleRecord];
  v10 = [v9 bundleIdentifier];

  v11 = [(CSApplicationInforming *)self->_applicationInformer isBundleIdentifierUserVisible:v10];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v13 = [(CSComplicationManager *)self _bundleHasOpenURLEntitlement:v7];
  if ((v11 & 1) == 0 && (isKindOfClass & 1) != 0 && v13)
  {
    v14 = objc_opt_class();
    v15 = v6;
    if (v14)
    {
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v18 = v16;

    v19 = SBLogDashBoard();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v18 url];
      v23 = 138543618;
      v24 = v10;
      v25 = 2114;
      v26 = v20;
      _os_log_impl(&dword_21EB05000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Opening URL from complication tap: %{public}@", &v23, 0x16u);
    }

    urlHandler = self->_urlHandler;
    v22 = [v18 url];
    [(CSWidgetURLHandling *)urlHandler openURL:v22];
  }

  else if (v11)
  {
    [(CSComplicationManager *)self _openApplicationWithBundleIdentifier:v10 action:v6];
  }

  else
  {
    v17 = SBLogDashBoard();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138543362;
      v24 = v10;
      _os_log_impl(&dword_21EB05000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignored application launch from complication because application is not user visible", &v23, 0xCu);
    }
  }
}

- (void)_openApplicationWithBundleIdentifier:(id)a3 action:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = MEMORY[0x277CBEB38];
  v7 = a4;
  v8 = [v6 dictionary];
  v16[0] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [v8 bs_setSafeObject:v9 forKey:*MEMORY[0x277D0ABD0]];

  v10 = MEMORY[0x277CBEC38];
  [v8 bs_setSafeObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D0AC58]];
  [v8 bs_setSafeObject:v10 forKey:*MEMORY[0x277D0AC70]];
  v11 = [MEMORY[0x277D0AD60] optionsWithDictionary:v8];
  v12 = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__CSComplicationManager__openApplicationWithBundleIdentifier_action___block_invoke;
  v14[3] = &unk_27838C7F0;
  v15 = v5;
  v13 = v5;
  [v12 openApplication:v13 withOptions:v11 completion:v14];
}

void __69__CSComplicationManager__openApplicationWithBundleIdentifier_action___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogDashBoard();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __69__CSComplicationManager__openApplicationWithBundleIdentifier_action___block_invoke_cold_1(a1, v4, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Application launch from complication succeeded", &v8, 0xCu);
  }
}

- (BOOL)_bundleHasOpenURLEntitlement:(id)a3
{
  v3 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:a3 allowPlaceholder:1 error:0];
  v4 = [v3 entitlements];
  v5 = *MEMORY[0x277CFA518];
  v6 = objc_opt_self();
  v7 = [v4 objectForKey:v5 ofClass:v6];
  v8 = [v7 BOOLValue];

  return v8;
}

- (void)descriptorsDidChangeForDescriptorProvider:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__CSComplicationManager_descriptorsDidChangeForDescriptorProvider___block_invoke;
  block[3] = &unk_27838B770;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)applicationInformer:(id)a3 updatedApplications:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CHSWidgetHost *)self->_widgetHost configuration];
  v9 = [v8 containerDescriptors];
  v10 = [v9 bs_map:&__block_literal_global_47];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        if ([v7 containsObject:v16])
        {
          v17 = [v6 isBundleIdentifierBlockedForScreenTimeExpiration:v16];
          graphicComplicationDescriptors = self->_graphicComplicationDescriptors;
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __65__CSComplicationManager_applicationInformer_updatedApplications___block_invoke_2;
          v22[3] = &unk_27838C838;
          v22[4] = v16;
          v23 = v17;
          v19 = [(NSArray *)graphicComplicationDescriptors bs_map:v22];
          v20 = self->_graphicComplicationDescriptors;
          self->_graphicComplicationDescriptors = v19;

          onWidgetUpdate = self->_onWidgetUpdate;
          if (onWidgetUpdate)
          {
            onWidgetUpdate[2](onWidgetUpdate, self->_graphicComplicationDescriptors, self->_iconLayout);
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }
}

id __65__CSComplicationManager_applicationInformer_updatedApplications___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 activeWidget];
  v3 = [v2 widget];
  v4 = [v3 containerBundleIdentifier];

  return v4;
}

id __65__CSComplicationManager_applicationInformer_updatedApplications___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 widget];
  v5 = [v4 containerBundleIdentifier];
  v6 = *(a1 + 32);

  if (v5 == v6)
  {
    v7 = [v3 descriptorBlockedForScreenTimeExpiration:*(a1 + 40)];
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  return v8;
}

void __69__CSComplicationManager__openApplicationWithBundleIdentifier_action___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2114;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_0_1(&dword_21EB05000, a2, a3, "[%{public}@] Application launch from complication failed: %{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

@end