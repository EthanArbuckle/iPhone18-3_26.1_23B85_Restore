@interface NTKWidgetRichComplicationView
+ (void)_setupWatchWidgetRenderer;
- (BOOL)_privateInTritium;
- (CGRect)_frame;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CHSWidgetMetrics)computedMetrics;
- (NTKWidgetRichComplicationView)initWithFamily:(int64_t)a3;
- (id)_chsWidgetSpecularHighlightParameters;
- (id)_chsWidgetTintParameters;
- (id)_widgetDebugDescription;
- (id)_widgetRenderSchemes;
- (unint64_t)_widgetContentType;
- (unint64_t)_widgetPresentationMode;
- (void)_applyUpdate;
- (void)_applyWidgetIdentity;
- (void)_configureWidgetHostViewController;
- (void)_resetComputedMetrics;
- (void)_setDisableLiveTransitionAnimation:(BOOL)a3;
- (void)_transitToHighlightState:(BOOL)a3 fraction:(double)a4;
- (void)_updateBacklightHostEnvironment:(id)a3;
- (void)_updateComputedMetrics;
- (void)_updateTintParameters;
- (void)backlight:(id)a3 didChangeAlwaysOnEnabled:(BOOL)a4;
- (void)coalescingUpdates:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)layoutSubviews;
- (void)notifyClientOfLaunchRequest;
- (void)performTapAction;
- (void)prepareSnapshotContentWithTimeout:(double)a3 completion:(id)a4;
- (void)renderSynchronouslyWithImageQueueDiscard:(BOOL)a3 inGroup:(id)a4;
- (void)sceneDidBecomePresented:(id)a3;
- (void)setAccentedAlternateBackground:(BOOL)a3;
- (void)setBaseMetrics:(id)a3;
- (void)setCanAppearInSecureEnvironment:(BOOL)a3;
- (void)setClipToMetrics:(BOOL)a3;
- (void)setConfigureForSnapshotting:(BOOL)a3;
- (void)setContentOverride:(unint64_t)a3;
- (void)setContentPaused:(BOOL)a3;
- (void)setDisableLiveTransitionAnimation:(BOOL)a3;
- (void)setEditing:(BOOL)a3;
- (void)setFontStyle:(int64_t)a3;
- (void)setInteractionDisabled:(BOOL)a3;
- (void)setOpaque:(BOOL)a3;
- (void)setPreviewViewController:(id)a3;
- (void)setShowPreview:(BOOL)a3;
- (void)setShowSnapshot:(BOOL)a3;
- (void)setSupportsLowLuminance:(BOOL)a3;
- (void)setSupportsSpecularHighlighting:(BOOL)a3;
- (void)setSupportsTinting:(BOOL)a3;
- (void)setSupportsWatchGestureInteraction:(BOOL)a3;
- (void)setVisibility:(unint64_t)a3;
- (void)setVisibleInTritium:(BOOL)a3;
- (void)setWidgetExtensionBundleIdentifier:(id)a3 containerBundleIdentifier:(id)a4 kind:(id)a5 intent:(id)a6;
- (void)setWidgetHostPriorityTransientSnapshot:(BOOL)a3;
- (void)setWidgetIdentifier:(id)a3;
- (void)sizeToFit;
- (void)tritiumPrivacySettingsDidChange;
- (void)widgetComplicationDeviceProvider:(id)a3 activeDeviceChanged:(id)a4;
- (void)widgetHostViewController:(id)a3 receivedTouchEvent:(id)a4;
- (void)widgetHostViewController:(id)a3 requestsLaunch:(id)a4;
@end

@implementation NTKWidgetRichComplicationView

+ (void)_setupWatchWidgetRenderer
{
  if (_setupWatchWidgetRenderer_onceToken != -1)
  {
    +[NTKWidgetRichComplicationView _setupWatchWidgetRenderer];
  }
}

- (NTKWidgetRichComplicationView)initWithFamily:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = NTKWidgetRichComplicationView;
  v3 = [(CDRichComplicationView *)&v9 initWithFamily:a3];
  if (v3)
  {
    v4 = +[NTKWidgetComplicationDeviceProvider sharedInstance];
    deviceProvider = v3->_deviceProvider;
    v3->_deviceProvider = v4;

    +[NTKWidgetRichComplicationView _setupWatchWidgetRenderer];
    v3->_scenePresentedLock._os_unfair_lock_opaque = 0;
    v3->_showSnapshot = 1;
    v3->_supportsTinting = 1;
    v3->_visibility = 0;
    v3->_canAppearInSecureEnvironment = 1;
    v3->_supportsLowLuminance = 1;
    v3->_updateCoalesceCount = 0;
    v3->_disableLiveTransitionAnimation = 0;
    v6 = [MEMORY[0x277CF0880] sharedBacklight];
    [v6 addObserver:v3];

    v7 = +[NTKTritiumDefaults sharedInstance];
    [v7 addObserver:v3];

    [(NTKWidgetComplicationDeviceProvider *)v3->_deviceProvider addObserver:v3];
  }

  return v3;
}

- (void)dealloc
{
  [(NTKWidgetRichComplicationView *)self invalidate];
  v3.receiver = self;
  v3.super_class = NTKWidgetRichComplicationView;
  [(NTKWidgetRichComplicationView *)&v3 dealloc];
}

- (void)invalidate
{
  [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController invalidate];
  widgetHostViewController = self->_widgetHostViewController;
  self->_widgetHostViewController = 0;
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = NTKWidgetRichComplicationView;
  [(NTKWidgetRichComplicationView *)&v23 layoutSubviews];
  [(NTKWidgetRichComplicationView *)self _frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController view];
  [v11 setFrame:{v4, v6, v8, v10}];

  [(NTKWidgetRichComplicationView *)self center];
  v13 = v12;
  v15 = v14;
  v16 = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController view];
  [v16 setCenter:{v13, v15}];

  v17 = [(CHUISWidgetPreviewHosting *)self->_previewViewController view];
  [v17 setFrame:{v4, v6, v8, v10}];

  [(NTKWidgetRichComplicationView *)self center];
  v19 = v18;
  v21 = v20;
  v22 = [(CHUISWidgetPreviewHosting *)self->_previewViewController view];
  [v22 setCenter:{v19, v21}];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = 1.79769313e308;
  v4 = 1.79769313e308;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setWidgetExtensionBundleIdentifier:(id)a3 containerBundleIdentifier:(id)a4 kind:(id)a5 intent:(id)a6
{
  objc_storeStrong(&self->_containerBundleIdentifier, a4);
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = a3;
  v18 = [objc_alloc(MEMORY[0x277CFA258]) initWithExtensionBundleIdentifier:v14 containerBundleIdentifier:v11 deviceIdentifier:0];

  v15 = objc_alloc(MEMORY[0x277CFA358]);
  [(CDRichComplicationView *)self family];
  v16 = [v15 initWithExtensionIdentity:v18 kind:v13 family:CLKWidgetInternalFamilyForComplicationFamily() intent:v12 activityIdentifier:0];

  baseWidgetIdentity = self->_baseWidgetIdentity;
  self->_baseWidgetIdentity = v16;

  [(NTKWidgetRichComplicationView *)self _applyWidgetIdentity];
}

- (void)_applyWidgetIdentity
{
  v39 = *MEMORY[0x277D85DE8];
  [(NTKWidgetRichComplicationView *)self _clearState];
  v3 = [(NTKWidgetComplicationDeviceProvider *)self->_deviceProvider activeDeviceID];
  v4 = objc_alloc(MEMORY[0x277CFA258]);
  v5 = [(CHSWidget *)self->_baseWidgetIdentity extensionIdentity];
  v6 = [v5 extensionBundleIdentifier];
  v7 = [(CHSWidget *)self->_baseWidgetIdentity extensionIdentity];
  v8 = [v7 containerBundleIdentifier];
  v9 = [v4 initWithExtensionBundleIdentifier:v6 containerBundleIdentifier:v8 deviceIdentifier:v3];

  v10 = objc_alloc(MEMORY[0x277CFA358]);
  v11 = [(CHSWidget *)self->_baseWidgetIdentity kind];
  v12 = [(CHSWidget *)self->_baseWidgetIdentity family];
  v13 = [(CHSWidget *)self->_baseWidgetIdentity intent];
  v14 = [v10 initWithExtensionIdentity:v9 kind:v11 family:v12 intent:v13 activityIdentifier:0];

  v15 = _NTKLoggingObjectForDomain(48, "NTKLoggingDomainWidgetView");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(NTKWidgetRichComplicationView *)self widgetIdentifier];
    v33 = 134218498;
    v34 = self;
    v35 = 2112;
    v36 = v14;
    v37 = 2112;
    v38 = v16;
    _os_log_impl(&dword_22D9C5000, v15, OS_LOG_TYPE_DEFAULT, "Configuring %p with %@, identifier %@", &v33, 0x20u);
  }

  v17 = objc_alloc(MEMORY[0x277CFA550]);
  v18 = [(NTKWidgetRichComplicationView *)self computedMetrics];
  v19 = [(NTKWidgetRichComplicationView *)self widgetIdentifier];
  v20 = [v17 initWithWidget:v14 metrics:v18 widgetConfigurationIdentifier:v19];
  widgetHostViewController = self->_widgetHostViewController;
  self->_widgetHostViewController = v20;

  [(NTKWidgetRichComplicationView *)self _configureWidgetHostViewController];
  [(NTKWidgetRichComplicationView *)self _applyUpdate];
  v22 = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController view];
  [(NTKWidgetRichComplicationView *)self addSubview:v22];

  [(NTKWidgetRichComplicationView *)self _frame];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController view];
  [v31 setFrame:{v24, v26, v28, v30}];

  [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setVisibleBounds:v24, v26, v28, v30];
  [(NTKWidgetRichComplicationView *)self transitionToMonochromeWithFraction:self->_monochromeFraction];
  v32 = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController backlightHostEnvironment];
  [(NTKWidgetRichComplicationView *)self _updateBacklightHostEnvironment:v32];
}

- (void)setPreviewViewController:(id)a3
{
  v4 = a3;
  [(NTKWidgetRichComplicationView *)self _clearState];
  previewViewController = self->_previewViewController;
  self->_previewViewController = v4;
  v6 = v4;

  [(NTKWidgetRichComplicationView *)self _configurePreviewViewController];
  v7 = [(CHUISWidgetPreviewHosting *)self->_previewViewController view];
  [(NTKWidgetRichComplicationView *)self addSubview:v7];

  [(NTKWidgetRichComplicationView *)self _frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(CHUISWidgetPreviewHosting *)self->_previewViewController view];

  [v16 setFrame:{v9, v11, v13, v15}];
}

- (void)_configureWidgetHostViewController
{
  [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setColorScheme:2];
  [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setDrawSystemBackgroundMaterialIfNecessary:0];
  [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setShouldShareTouchesWithHost:1];
  [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setVisibility:NTKWidgetVisibilityFromComplicationVisibility(self->_visibility)];
  [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setDelegate:self];
  [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setTintParameters:self->_tintParameters];
  [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setSupportsLowLuminance:0];
  [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setCanAppearInSecureEnvironment:self->_canAppearInSecureEnvironment];
  [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setMetricsDefineSize:[(NTKWidgetRichComplicationView *)self _metricsDefineSize]];
  v3 = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController view];
  [v3 setHidden:0];

  [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setIncludeAccessoryViews:!self->_configureForSnapshotting];
  [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setGenerateSnapshotMetadata:self->_configureForSnapshotting];
  [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setPrefersUnredactedContentInLowLuminanceEnvironment:[(NTKWidgetRichComplicationView *)self _privateInTritium]^ 1];
  [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setWidgetPriority:self->_widgetHostPriorityTransientSnapshot];
  v4 = _os_feature_enabled_impl();
  v5 = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController view];
  v6 = v5;
  if (v4)
  {
    [v5 setUserInteractionEnabled:1];

    interactionDisabled = self->_interactionDisabled;
  }

  else
  {
    [v5 setUserInteractionEnabled:0];

    interactionDisabled = 1;
  }

  [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setInteractionDisabled:interactionDisabled];
  [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setBackgroundViewPolicy:!self->_opaque];
  if (self->_opaque)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setClipBehavior:v8];
  [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setWantsBaseContentTouchEvents:1];
  v9 = [(NTKWidgetRichComplicationView *)self _widgetRenderSchemes];
  [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setSupportedRenderSchemes:v9];

  disableLiveTransitionAnimation = self->_disableLiveTransitionAnimation;

  [(NTKWidgetRichComplicationView *)self _setDisableLiveTransitionAnimation:disableLiveTransitionAnimation];
}

- (void)setBaseMetrics:(id)a3
{
  v6 = a3;
  if (([v6 isEqual:self->_baseMetrics] & 1) == 0)
  {
    v4 = [v6 copy];
    baseMetrics = self->_baseMetrics;
    self->_baseMetrics = v4;

    [(NTKWidgetRichComplicationView *)self _resetComputedMetrics];
  }
}

- (CHSWidgetMetrics)computedMetrics
{
  computedMetrics = self->_computedMetrics;
  if (!computedMetrics)
  {
    [(NTKWidgetRichComplicationView *)self _updateComputedMetrics];
    computedMetrics = self->_computedMetrics;
  }

  return computedMetrics;
}

- (void)_resetComputedMetrics
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 _widgetDebugDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "%@ changing metrics after the vc is created is unsupported", &v4, 0xCu);
}

- (void)_updateComputedMetrics
{
  v3 = [(CDRichComplicationView *)self fontStyle];
  if ((v3 - 1) > 4)
  {
    v4 = 3;
  }

  else
  {
    v4 = qword_22DCE8448[v3 - 1];
  }

  if ([(CHSWidgetMetrics *)self->_baseMetrics fontStyle]== v4)
  {
    objc_storeStrong(&self->_computedMetrics, self->_baseMetrics);
  }

  else
  {
    v5 = [(CHSWidgetMetrics *)self->_baseMetrics nestedContentMetrics];

    if (v5)
    {
      v6 = [MEMORY[0x277CBEB38] dictionary];
      v7 = [(CHSWidgetMetrics *)self->_baseMetrics nestedContentMetrics];
      v29 = MEMORY[0x277D85DD0];
      v30 = 3221225472;
      v31 = __55__NTKWidgetRichComplicationView__updateComputedMetrics__block_invoke;
      v32 = &unk_278781280;
      v33 = v6;
      v34 = v4;
      v8 = v6;
      [v7 enumerateKeysAndObjectsUsingBlock:&v29];

      v5 = [v8 copy];
    }

    v9 = objc_alloc(MEMORY[0x277CFA3F0]);
    [(CHSWidgetMetrics *)self->_baseMetrics size];
    v11 = v10;
    v13 = v12;
    [(CHSWidgetMetrics *)self->_baseMetrics cornerRadius];
    v15 = v14;
    [(CHSWidgetMetrics *)self->_baseMetrics scaleFactor];
    v17 = v16;
    [(CHSWidgetMetrics *)self->_baseMetrics safeAreaInsets];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = [(CHSWidgetMetrics *)self->_baseMetrics widgetGroupMargins];
    v27 = [v9 initWithSize:v4 cornerRadius:v26 scaleFactor:v5 fontStyle:v11 safeAreaInsets:v13 widgetGroupMargins:v15 nestedContentMetrics:{v17, v19, v21, v23, v25}];

    computedMetrics = self->_computedMetrics;
    self->_computedMetrics = v27;
  }
}

void __55__NTKWidgetRichComplicationView__updateComputedMetrics__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  [v5 size];
  v7 = v6;
  v9 = v8;
  [v5 cornerRadius];
  v11 = v10;
  [v5 scaleFactor];
  v13 = v12;

  v14 = [objc_alloc(MEMORY[0x277CFA3F0]) initWithSize:*(a1 + 40) cornerRadius:v7 scaleFactor:v9 fontStyle:{v11, v13}];
  if (v15 && v14)
  {
    [*(a1 + 32) setObject:v14 forKey:v15];
  }
}

- (void)setFontStyle:(int64_t)a3
{
  v5 = [(CDRichComplicationView *)self fontStyle];
  v6.receiver = self;
  v6.super_class = NTKWidgetRichComplicationView;
  [(CDRichComplicationView *)&v6 setFontStyle:a3];
  if (v5 != [(CDRichComplicationView *)self fontStyle])
  {
    [(NTKWidgetRichComplicationView *)self _resetComputedMetrics];
  }
}

- (CGRect)_frame
{
  if ([(NTKWidgetRichComplicationView *)self _metricsDefineSize]|| self->_configureForSnapshotting)
  {
    v3 = [(NTKWidgetRichComplicationView *)self computedMetrics];
    [v3 size];
    [v3 scaleFactor];
    v4 = [(CDRichComplicationView *)self device];
    CLKRoundForDevice();
    v6 = v5;
    [v3 size];
    [v3 scaleFactor];
    v7 = [(CDRichComplicationView *)self device];
    CLKRoundForDevice();
    v9 = v8;
  }

  else
  {
    [(NTKWidgetRichComplicationView *)self bounds];
    v6 = v10;
    [(NTKWidgetRichComplicationView *)self bounds];
    v9 = v11;
  }

  v12 = 0.0;
  v13 = 0.0;
  v14 = v6;
  v15 = v9;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)_updateBacklightHostEnvironment:(id)a3
{
  v5 = a3;
  if (self->_backlightHostEnvironment != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_backlightHostEnvironment, a3);
    v5 = v6;
  }
}

- (void)setEditing:(BOOL)a3
{
  if (!self->_previewViewController)
  {
    v8 = v3;
    v9 = v4;
    v5 = a3;
    v7.receiver = self;
    v7.super_class = NTKWidgetRichComplicationView;
    [(CDRichComplicationView *)&v7 setEditing:?];
    if (self->_editing != v5)
    {
      self->_editing = v5;
      [(NTKWidgetRichComplicationView *)self _applyUpdate];
    }
  }
}

- (void)setShowPreview:(BOOL)a3
{
  if (!self->_previewViewController)
  {
    if (a3)
    {
      contentOverride = self->_contentOverride;
      if (contentOverride <= 1)
      {
        contentOverride = 1;
      }
    }

    else
    {
      contentOverride = 0;
    }

    self->_contentOverride = contentOverride;
  }
}

- (void)setContentOverride:(unint64_t)a3
{
  if (!self->_previewViewController)
  {
    self->_contentOverride = a3;
  }
}

- (void)setShowSnapshot:(BOOL)a3
{
  if (!self->_previewViewController && self->_showSnapshot != a3)
  {
    self->_showSnapshot = a3;
    [(NTKWidgetRichComplicationView *)self _applyUpdate];
  }
}

- (void)setVisibleInTritium:(BOOL)a3
{
  if (!self->_previewViewController && self->_visibleInTritium != a3)
  {
    self->_visibleInTritium = a3;
  }
}

- (void)setContentPaused:(BOOL)a3
{
  if (self->_contentPaused != a3)
  {
    self->_contentPaused = a3;
    [(NTKWidgetRichComplicationView *)self _applyUpdate];
  }
}

- (void)setInteractionDisabled:(BOOL)a3
{
  if (self->_interactionDisabled != a3)
  {
    self->_interactionDisabled = a3;
    [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setInteractionDisabled:?];
  }
}

- (void)setVisibility:(unint64_t)a3
{
  if (self->_visibility != a3)
  {
    self->_visibility = a3;
    v5 = NTKWidgetVisibilityFromComplicationVisibility(a3);
    widgetHostViewController = self->_widgetHostViewController;

    [(CHUISWatchComplicationsWidgetHostViewController *)widgetHostViewController setVisibility:v5];
  }
}

- (void)setWidgetIdentifier:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ((NTKEqualObjects(self->_widgetIdentifier, v5) & 1) == 0)
  {
    if (self->_widgetHostViewController)
    {
      v6 = _NTKLoggingObjectForDomain(48, "NTKLoggingDomainWidgetView");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(NTKWidgetRichComplicationView *)self _widgetDebugDescription];
        widgetIdentifier = self->_widgetIdentifier;
        v9 = 138412802;
        v10 = v7;
        v11 = 2112;
        v12 = widgetIdentifier;
        v13 = 2112;
        v14 = v5;
        _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "%@ updated widgetIdentifier from %@ to %@ after the widget VC has been created, this change won't take effect until the widget VC is recreated", &v9, 0x20u);
      }
    }

    objc_storeStrong(&self->_widgetIdentifier, a3);
  }
}

- (void)setCanAppearInSecureEnvironment:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (self->_canAppearInSecureEnvironment != v3)
  {
    self->_canAppearInSecureEnvironment = v3;
    widgetHostViewController = self->_widgetHostViewController;

    [(CHUISWatchComplicationsWidgetHostViewController *)widgetHostViewController setCanAppearInSecureEnvironment:v3];
  }
}

- (void)setClipToMetrics:(BOOL)a3
{
  if (self->_clipToMetrics != a3)
  {
    self->_clipToMetrics = a3;
    [(NTKWidgetRichComplicationView *)self setNeedsLayout];
  }
}

- (void)setDisableLiveTransitionAnimation:(BOOL)a3
{
  if (self->_disableLiveTransitionAnimation != a3)
  {
    [(NTKWidgetRichComplicationView *)self _setDisableLiveTransitionAnimation:?];
  }
}

- (void)_setDisableLiveTransitionAnimation:(BOOL)a3
{
  self->_disableLiveTransitionAnimation = a3;
  v4 = objc_opt_respondsToSelector();
  widgetHostViewController = self->_widgetHostViewController;
  if (v4)
  {
    disableLiveTransitionAnimation = self->_disableLiveTransitionAnimation;

    [(CHUISWatchComplicationsWidgetHostViewController *)widgetHostViewController _setDisableViewTransitionAnimations:disableLiveTransitionAnimation];
  }

  else if (objc_opt_respondsToSelector())
  {
    v7 = self->_widgetHostViewController;
    v8 = self->_disableLiveTransitionAnimation;

    [(CHUISWatchComplicationsWidgetHostViewController *)v7 setDisableViewTransitionAnimations:v8];
  }
}

- (void)setSupportsWatchGestureInteraction:(BOOL)a3
{
  v3 = a3;
  self->_supportsWatchGestureInteraction = a3;
  if (objc_opt_respondsToSelector())
  {
    widgetHostViewController = self->_widgetHostViewController;

    [(CHUISWatchComplicationsWidgetHostViewController *)widgetHostViewController setShouldReceiveWatchGestureInteractions:v3];
  }
}

- (void)_applyUpdate
{
  v26 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (self->_updateCoalesceCount || !self->_widgetHostViewController || self->_previewViewController)
  {
    return;
  }

  if ([(NTKWidgetRichComplicationView *)self contentPaused])
  {
    v3 = !self->_editing;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NTKWidgetRichComplicationView *)self _widgetContentType];
  v5 = [(NTKWidgetRichComplicationView *)self _widgetPresentationMode];
  v6 = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController areAnimationsPaused];
  if ((v6 & 1) == 0)
  {
    [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setAnimationsPaused:1];
  }

  if (v3 == [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController isContentPaused])
  {
    v7 = v6 ^ 1;
  }

  else
  {
    [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setContentPaused:?];
    v7 = 1;
  }

  v8 = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController contentType];
  widgetHostViewController = self->_widgetHostViewController;
  if (v8 == v4)
  {
    if ([(CHUISWatchComplicationsWidgetHostViewController *)widgetHostViewController presentationMode]== v5)
    {
      if (!v7)
      {
        return;
      }

      goto LABEL_19;
    }

    goto LABEL_18;
  }

  [(CHUISWatchComplicationsWidgetHostViewController *)widgetHostViewController setContentType:v4];
  if ([(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController presentationMode]!= v5)
  {
LABEL_18:
    [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setPresentationMode:v5];
  }

LABEL_19:
  v10 = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController backlightHostEnvironment];
  [(NTKWidgetRichComplicationView *)self _updateBacklightHostEnvironment:v10];

  v11 = _NTKLoggingObjectForDomain(48, "NTKLoggingDomainWidgetView");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(NTKWidgetRichComplicationView *)self _widgetDebugDescription];
    v13 = v3;
    if (v5 - 1 > 2)
    {
      v14 = @"none";
    }

    else
    {
      v14 = off_2787812F0[v5 - 1];
    }

    v15 = CHUISWidgetContentTypeDescription(v4);
    v16 = 138413314;
    v17 = v12;
    v18 = 2048;
    v19 = 1;
    v20 = 2048;
    v21 = v13;
    v22 = 2112;
    v23 = v14;
    v24 = 2112;
    v25 = v15;
    _os_log_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_DEFAULT, "%@ Updating to (animationsPaused=%lu, contentPaused=%lu, presentationMode=%@, contentType=%@)", &v16, 0x34u);
  }
}

- (void)coalescingUpdates:(id)a3
{
  ++self->_updateCoalesceCount;
  (*(a3 + 2))(a3, a2);
  v4 = self->_updateCoalesceCount - 1;
  self->_updateCoalesceCount = v4;
  if (!v4)
  {

    [(NTKWidgetRichComplicationView *)self _applyUpdate];
  }
}

- (unint64_t)_widgetPresentationMode
{
  if (![(NTKWidgetRichComplicationView *)self showSnapshot]|| self->_editing)
  {
    return 2;
  }

  if ([(NTKWidgetRichComplicationView *)self requireSnapshot])
  {
    return 3;
  }

  return 1;
}

- (unint64_t)_widgetContentType
{
  if (self->_editing)
  {
    return 0;
  }

  contentOverride = self->_contentOverride;
  if (contentOverride == 2)
  {
    return 2;
  }

  else
  {
    return contentOverride == 1;
  }
}

- (id)_widgetRenderSchemes
{
  v10[2] = *MEMORY[0x277D85DE8];
  opaque = self->_opaque;
  tintable = self->_tintable;
  v4 = [objc_alloc(MEMORY[0x277CFA430]) initWithRenderingMode:0 backgroundViewPolicy:!opaque];
  v5 = v4;
  if (tintable)
  {
    v10[0] = v4;
    v6 = [objc_alloc(MEMORY[0x277CFA430]) initWithRenderingMode:2 backgroundViewPolicy:!opaque];
    v10[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  }

  else
  {
    v9 = v4;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
  }

  return v7;
}

- (void)_updateTintParameters
{
  if (self->_supportsSpecularHighlighting)
  {
    v3 = [(NTKWidgetRichComplicationView *)self _chsWidgetSpecularHighlightParameters];
  }

  else if (self->_supportsTinting)
  {
    v3 = [(NTKWidgetRichComplicationView *)self _chsWidgetTintParameters];
  }

  else
  {
    v3 = 0;
  }

  tintParameters = self->_tintParameters;
  self->_tintParameters = v3;

  v5 = self->_tintParameters;
  widgetHostViewController = self->_widgetHostViewController;

  [(CHUISWatchComplicationsWidgetHostViewController *)widgetHostViewController setTintParameters:v5];
}

- (id)_chsWidgetTintParameters
{
  v3 = [(CDRichComplicationView *)self filterProvider];
  v4 = [v3 colorForView:self accented:1];

  v5 = [(CDRichComplicationView *)self filterProvider];
  v6 = [v5 colorForView:self accented:0];

  v7 = [(CDRichComplicationView *)self filterProvider];
  v8 = [v7 backgroundColorForView:self];

  if (v8)
  {
    [v8 _luminance];
    v10 = v9;
    [v4 _luminance];
    v12 = v11;
    v13 = v10 > v11;
    [v8 _luminance];
    v15 = v14;
    [v6 _luminance];
    v17 = 3;
    if (!v13 || v15 <= v16)
    {
      v17 = 1;
    }

    if (v10 <= v12)
    {
      v18 = 2 * (v15 > v16);
    }

    else
    {
      v18 = v17;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = objc_alloc_init(MEMORY[0x277CFA2D8]);
  v20 = [v4 BSColor];
  [v19 setPrimaryTintColor:v20];

  v21 = [v6 BSColor];
  [v19 setSecondaryTintColor:v21];

  [v19 setFilterStyle:0];
  [v19 setFraction:self->_monochromeFraction];
  [v19 setAccentedAlternateBackground:self->_accentedAlternateBackground];
  [v19 setAccentedDesaturatedMode:v18];
  v22 = [v19 copy];

  return v22;
}

- (id)_chsWidgetSpecularHighlightParameters
{
  v2 = [objc_alloc(MEMORY[0x277CFA440]) initWithFilterStyle:7 primaryTintColor:0 secondaryTintColor:0 fraction:0.0];

  return v2;
}

- (void)setAccentedAlternateBackground:(BOOL)a3
{
  if (self->_accentedAlternateBackground != a3)
  {
    self->_accentedAlternateBackground = a3;
    [(NTKWidgetRichComplicationView *)self _updateTintParameters];
  }
}

- (void)setOpaque:(BOOL)a3
{
  if (self->_opaque != a3)
  {
    self->_opaque = a3;
    [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setBackgroundViewPolicy:!a3];
  }
}

- (void)setSupportsTinting:(BOOL)a3
{
  if (self->_supportsTinting != a3)
  {
    self->_supportsTinting = a3;
    [(NTKWidgetRichComplicationView *)self _updateTintParameters];
  }
}

- (void)setSupportsSpecularHighlighting:(BOOL)a3
{
  if (self->_supportsSpecularHighlighting != a3)
  {
    self->_supportsSpecularHighlighting = a3;
    [(NTKWidgetRichComplicationView *)self _updateTintParameters];
  }
}

- (void)setSupportsLowLuminance:(BOOL)a3
{
  if (self->_supportsLowLuminance != a3)
  {
    self->_supportsLowLuminance = a3;
    [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setSupportsLowLuminance:0];
  }
}

- (void)_transitToHighlightState:(BOOL)a3 fraction:(double)a4
{
  CLKInterpolateBetweenFloatsClipped();
  CGAffineTransformMakeScale(&v7, v5, v5);
  v6 = v7;
  [(NTKWidgetRichComplicationView *)self setTransform:&v6];
}

- (void)performTapAction
{
  v8 = *MEMORY[0x277D85DE8];
  if (!self->_editing)
  {
    v3 = _NTKLoggingObjectForDomain(48, "NTKLoggingDomainWidgetView");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController widget];
      v5 = [v4 extensionBundleIdentifier];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "performTapAction for %@", &v6, 0xCu);
    }
  }
}

- (void)notifyClientOfLaunchRequest
{
  willPerformAppLaunchHandler = self->_willPerformAppLaunchHandler;
  if (willPerformAppLaunchHandler)
  {
    willPerformAppLaunchHandler[2]();
  }
}

- (void)widgetHostViewController:(id)a3 requestsLaunch:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!self->_editing)
  {
    v9 = [v7 effectiveContainerBundleIdentifier];
    v10 = _NTKLoggingObjectForDomain(48, "NTKLoggingDomainWidgetView");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(NTKWidgetRichComplicationView *)self _widgetDebugDescription];
      v12 = [v6 widget];
      v13 = [v12 extensionIdentity];
      v14 = [v13 extensionBundleIdentifier];
      v22 = 138412802;
      v23 = v11;
      v24 = 2112;
      v25 = v14;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&dword_22D9C5000, v10, OS_LOG_TYPE_DEFAULT, "%@ launch action requested for %@ with effective container %@", &v22, 0x20u);
    }

    v15 = [v8 launchAction];
    v16 = [(NTKWidgetRichComplicationView *)self launchLocation];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v15 url];
      [(NTKWidgetRichComplicationView *)self notifyClientOfLaunchRequest];
      if ([v8 isEntitledToOpenSystemProcesses] && (objc_msgSend(v17, "scheme"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", @"com.apple.widget.launch"), v18, v19))
      {
        v20 = [v17 host];
        NTKLaunchApp(0);
      }

      else
      {
        NTKLaunchApp(v17);
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v21 = _NTKLoggingObjectForDomain(48, "NTKLoggingDomainWidgetView");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          [(NTKWidgetRichComplicationView *)self widgetHostViewController:v15 requestsLaunch:v21];
        }

        NTKLaunchApp(0);
        goto LABEL_15;
      }

      v17 = v15;
      [(NTKWidgetRichComplicationView *)self notifyClientOfLaunchRequest];
      NTKOpenActivityContinuation(v17);
    }

LABEL_15:
  }
}

- (void)widgetHostViewController:(id)a3 receivedTouchEvent:(id)a4
{
  touchDownChangedHandler = self->_touchDownChangedHandler;
  if (touchDownChangedHandler)
  {
    v5 = [a4 baseContentTouchedDown];
    v6 = touchDownChangedHandler[2];

    v6(touchDownChangedHandler, v5);
  }
}

- (void)sceneDidBecomePresented:(id)a3
{
  v3 = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController view];
  [v3 setHidden:0];
}

- (void)backlight:(id)a3 didChangeAlwaysOnEnabled:(BOOL)a4
{
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__NTKWidgetRichComplicationView_backlight_didChangeAlwaysOnEnabled___block_invoke;
  block[3] = &unk_2787812A8;
  objc_copyWeak(&v6, &location);
  v7 = a4;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __68__NTKWidgetRichComplicationView_backlight_didChangeAlwaysOnEnabled___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (*(WeakRetained + 611) == 1)
    {
      v3 = *(a1 + 40);
    }

    else
    {
      v3 = 0;
    }

    v4 = WeakRetained;
    [*(WeakRetained + 64) setSupportsLowLuminance:v3 & 1];
    WeakRetained = v4;
  }
}

- (void)renderSynchronouslyWithImageQueueDiscard:(BOOL)a3 inGroup:(id)a4
{
  v4 = a3;
  v6 = a4;
  v13.receiver = self;
  v13.super_class = NTKWidgetRichComplicationView;
  [(CDRichComplicationView *)&v13 renderSynchronouslyWithImageQueueDiscard:v4 inGroup:v6];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v7 = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController presentationMode];
  if (v6 && (v7 - 4) >= 0xFFFFFFFFFFFFFFFELL && self->_configureForSnapshotting)
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3032000000;
    v11[3] = __Block_byref_object_copy__18;
    v11[4] = __Block_byref_object_dispose__18;
    v12 = 0;
    dispatch_group_enter(v6);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __82__NTKWidgetRichComplicationView_renderSynchronouslyWithImageQueueDiscard_inGroup___block_invoke;
    v8[3] = &unk_2787812D0;
    v8[4] = self;
    v10 = v11;
    v9 = v6;
    [(NTKWidgetRichComplicationView *)self prepareSnapshotContentWithTimeout:v8 completion:5.0];

    _Block_object_dispose(v11, 8);
  }
}

void __82__NTKWidgetRichComplicationView_renderSynchronouslyWithImageQueueDiscard_inGroup___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = _NTKLoggingObjectForDomain(48, "NTKLoggingDomainWidgetView");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __82__NTKWidgetRichComplicationView_renderSynchronouslyWithImageQueueDiscard_inGroup___block_invoke_cold_1(a1, v4, v5);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)setWidgetHostPriorityTransientSnapshot:(BOOL)a3
{
  if (self->_widgetHostPriorityTransientSnapshot != a3)
  {
    self->_widgetHostPriorityTransientSnapshot = a3;
    widgetHostViewController = self->_widgetHostViewController;
    if (widgetHostViewController)
    {
      [(CHUISWatchComplicationsWidgetHostViewController *)widgetHostViewController setWidgetPriority:a3];
    }
  }
}

- (void)prepareSnapshotContentWithTimeout:(double)a3 completion:(id)a4
{
  v12 = a4;
  v6 = [(NTKWidgetComplicationDeviceProvider *)self->_deviceProvider activeDeviceID];
  if (v6)
  {
    widgetHostViewController = self->_widgetHostViewController;
    if (widgetHostViewController)
    {
      [(CHUISWatchComplicationsWidgetHostViewController *)widgetHostViewController prepareForSnapshotWithTimeout:v12 completion:a3];
      goto LABEL_7;
    }

    v8 = MEMORY[0x277CCA9B8];
    v9 = &unk_284189B38;
    v10 = 505;
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = &unk_284189B10;
    v10 = 404;
  }

  v11 = [v8 errorWithDomain:@"com.apple.nanotimekit.placeholders" code:v10 userInfo:v9];
  v12[2](v12, v11);

LABEL_7:
}

- (void)sizeToFit
{
  [(NTKWidgetRichComplicationView *)self _frame];

  [(NTKWidgetRichComplicationView *)self setBounds:?];
}

- (void)setConfigureForSnapshotting:(BOOL)a3
{
  if (self->_configureForSnapshotting != a3)
  {
    self->_configureForSnapshotting = a3;
    [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setIncludeAccessoryViews:!a3];
  }
}

- (void)tritiumPrivacySettingsDidChange
{
  v3 = [(NTKWidgetRichComplicationView *)self _privateInTritium]^ 1;
  widgetHostViewController = self->_widgetHostViewController;

  [(CHUISWatchComplicationsWidgetHostViewController *)widgetHostViewController setPrefersUnredactedContentInLowLuminanceEnvironment:v3];
}

- (BOOL)_privateInTritium
{
  v3 = +[NTKTritiumDefaults sharedInstance];
  v4 = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController widget];
  v5 = [v4 containerBundleIdentifier];
  v6 = [v3 isBundleIdPrivateInTritium:v5];

  return v6;
}

- (id)_widgetDebugDescription
{
  v3 = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController widget];
  v15 = [v3 extensionIdentity];

  v4 = MEMORY[0x277CCACA8];
  v5 = [v15 extensionBundleIdentifier];
  v6 = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController widget];
  v7 = [v6 kind];
  v8 = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController widget];
  v9 = [v8 intent];
  v10 = [v9 _indexingHash];
  v11 = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController widget];
  v12 = MEMORY[0x2318D8AD0]([v11 family]);
  v13 = [v4 stringWithFormat:@"[%p, %@-%@-%lli, %@]", self, v5, v7, v10, v12];

  return v13;
}

- (void)widgetComplicationDeviceProvider:(id)a3 activeDeviceChanged:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _NTKLoggingObjectForDomain(48, "NTKLoggingDomainWidgetView");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v5;
    _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "Active Device ID changed: %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__NTKWidgetRichComplicationView_widgetComplicationDeviceProvider_activeDeviceChanged___block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)widgetHostViewController:(NSObject *)a3 requestsLaunch:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [a1 _widgetDebugDescription];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = objc_opt_class();
  v5 = v9;
  _os_log_fault_impl(&dword_22D9C5000, a3, OS_LOG_TYPE_FAULT, "%@ Unexpected launch action with class %@", &v6, 0x16u);
}

void __82__NTKWidgetRichComplicationView_renderSynchronouslyWithImageQueueDiscard_inGroup___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 32) _widgetDebugDescription];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_22D9C5000, a3, OS_LOG_TYPE_ERROR, "%@ Error snapshoting: %@", &v6, 0x16u);
}

@end