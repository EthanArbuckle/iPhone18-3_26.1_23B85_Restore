@interface NTKWidgetRichComplicationView
+ (void)_setupWatchWidgetRenderer;
- (BOOL)_privateInTritium;
- (CGRect)_frame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CHSWidgetMetrics)computedMetrics;
- (NTKWidgetRichComplicationView)initWithFamily:(int64_t)family;
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
- (void)_setDisableLiveTransitionAnimation:(BOOL)animation;
- (void)_transitToHighlightState:(BOOL)state fraction:(double)fraction;
- (void)_updateBacklightHostEnvironment:(id)environment;
- (void)_updateComputedMetrics;
- (void)_updateTintParameters;
- (void)backlight:(id)backlight didChangeAlwaysOnEnabled:(BOOL)enabled;
- (void)coalescingUpdates:(id)updates;
- (void)dealloc;
- (void)invalidate;
- (void)layoutSubviews;
- (void)notifyClientOfLaunchRequest;
- (void)performTapAction;
- (void)prepareSnapshotContentWithTimeout:(double)timeout completion:(id)completion;
- (void)renderSynchronouslyWithImageQueueDiscard:(BOOL)discard inGroup:(id)group;
- (void)sceneDidBecomePresented:(id)presented;
- (void)setAccentedAlternateBackground:(BOOL)background;
- (void)setBaseMetrics:(id)metrics;
- (void)setCanAppearInSecureEnvironment:(BOOL)environment;
- (void)setClipToMetrics:(BOOL)metrics;
- (void)setConfigureForSnapshotting:(BOOL)snapshotting;
- (void)setContentOverride:(unint64_t)override;
- (void)setContentPaused:(BOOL)paused;
- (void)setDisableLiveTransitionAnimation:(BOOL)animation;
- (void)setEditing:(BOOL)editing;
- (void)setFontStyle:(int64_t)style;
- (void)setInteractionDisabled:(BOOL)disabled;
- (void)setOpaque:(BOOL)opaque;
- (void)setPreviewViewController:(id)controller;
- (void)setShowPreview:(BOOL)preview;
- (void)setShowSnapshot:(BOOL)snapshot;
- (void)setSupportsLowLuminance:(BOOL)luminance;
- (void)setSupportsSpecularHighlighting:(BOOL)highlighting;
- (void)setSupportsTinting:(BOOL)tinting;
- (void)setSupportsWatchGestureInteraction:(BOOL)interaction;
- (void)setVisibility:(unint64_t)visibility;
- (void)setVisibleInTritium:(BOOL)tritium;
- (void)setWidgetExtensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier kind:(id)kind intent:(id)intent;
- (void)setWidgetHostPriorityTransientSnapshot:(BOOL)snapshot;
- (void)setWidgetIdentifier:(id)identifier;
- (void)sizeToFit;
- (void)tritiumPrivacySettingsDidChange;
- (void)widgetComplicationDeviceProvider:(id)provider activeDeviceChanged:(id)changed;
- (void)widgetHostViewController:(id)controller receivedTouchEvent:(id)event;
- (void)widgetHostViewController:(id)controller requestsLaunch:(id)launch;
@end

@implementation NTKWidgetRichComplicationView

+ (void)_setupWatchWidgetRenderer
{
  if (_setupWatchWidgetRenderer_onceToken != -1)
  {
    +[NTKWidgetRichComplicationView _setupWatchWidgetRenderer];
  }
}

- (NTKWidgetRichComplicationView)initWithFamily:(int64_t)family
{
  v9.receiver = self;
  v9.super_class = NTKWidgetRichComplicationView;
  v3 = [(CDRichComplicationView *)&v9 initWithFamily:family];
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
    mEMORY[0x277CF0880] = [MEMORY[0x277CF0880] sharedBacklight];
    [mEMORY[0x277CF0880] addObserver:v3];

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
  view = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController view];
  [view setFrame:{v4, v6, v8, v10}];

  [(NTKWidgetRichComplicationView *)self center];
  v13 = v12;
  v15 = v14;
  view2 = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController view];
  [view2 setCenter:{v13, v15}];

  view3 = [(CHUISWidgetPreviewHosting *)self->_previewViewController view];
  [view3 setFrame:{v4, v6, v8, v10}];

  [(NTKWidgetRichComplicationView *)self center];
  v19 = v18;
  v21 = v20;
  view4 = [(CHUISWidgetPreviewHosting *)self->_previewViewController view];
  [view4 setCenter:{v19, v21}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = 1.79769313e308;
  v4 = 1.79769313e308;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setWidgetExtensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier kind:(id)kind intent:(id)intent
{
  objc_storeStrong(&self->_containerBundleIdentifier, bundleIdentifier);
  bundleIdentifierCopy = bundleIdentifier;
  intentCopy = intent;
  kindCopy = kind;
  identifierCopy = identifier;
  v18 = [objc_alloc(MEMORY[0x277CFA258]) initWithExtensionBundleIdentifier:identifierCopy containerBundleIdentifier:bundleIdentifierCopy deviceIdentifier:0];

  v15 = objc_alloc(MEMORY[0x277CFA358]);
  [(CDRichComplicationView *)self family];
  v16 = [v15 initWithExtensionIdentity:v18 kind:kindCopy family:CLKWidgetInternalFamilyForComplicationFamily() intent:intentCopy activityIdentifier:0];

  baseWidgetIdentity = self->_baseWidgetIdentity;
  self->_baseWidgetIdentity = v16;

  [(NTKWidgetRichComplicationView *)self _applyWidgetIdentity];
}

- (void)_applyWidgetIdentity
{
  v39 = *MEMORY[0x277D85DE8];
  [(NTKWidgetRichComplicationView *)self _clearState];
  activeDeviceID = [(NTKWidgetComplicationDeviceProvider *)self->_deviceProvider activeDeviceID];
  v4 = objc_alloc(MEMORY[0x277CFA258]);
  extensionIdentity = [(CHSWidget *)self->_baseWidgetIdentity extensionIdentity];
  extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];
  extensionIdentity2 = [(CHSWidget *)self->_baseWidgetIdentity extensionIdentity];
  containerBundleIdentifier = [extensionIdentity2 containerBundleIdentifier];
  v9 = [v4 initWithExtensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:containerBundleIdentifier deviceIdentifier:activeDeviceID];

  v10 = objc_alloc(MEMORY[0x277CFA358]);
  kind = [(CHSWidget *)self->_baseWidgetIdentity kind];
  family = [(CHSWidget *)self->_baseWidgetIdentity family];
  intent = [(CHSWidget *)self->_baseWidgetIdentity intent];
  v14 = [v10 initWithExtensionIdentity:v9 kind:kind family:family intent:intent activityIdentifier:0];

  v15 = _NTKLoggingObjectForDomain(48, "NTKLoggingDomainWidgetView");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    widgetIdentifier = [(NTKWidgetRichComplicationView *)self widgetIdentifier];
    v33 = 134218498;
    selfCopy = self;
    v35 = 2112;
    v36 = v14;
    v37 = 2112;
    v38 = widgetIdentifier;
    _os_log_impl(&dword_22D9C5000, v15, OS_LOG_TYPE_DEFAULT, "Configuring %p with %@, identifier %@", &v33, 0x20u);
  }

  v17 = objc_alloc(MEMORY[0x277CFA550]);
  computedMetrics = [(NTKWidgetRichComplicationView *)self computedMetrics];
  widgetIdentifier2 = [(NTKWidgetRichComplicationView *)self widgetIdentifier];
  v20 = [v17 initWithWidget:v14 metrics:computedMetrics widgetConfigurationIdentifier:widgetIdentifier2];
  widgetHostViewController = self->_widgetHostViewController;
  self->_widgetHostViewController = v20;

  [(NTKWidgetRichComplicationView *)self _configureWidgetHostViewController];
  [(NTKWidgetRichComplicationView *)self _applyUpdate];
  view = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController view];
  [(NTKWidgetRichComplicationView *)self addSubview:view];

  [(NTKWidgetRichComplicationView *)self _frame];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  view2 = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController view];
  [view2 setFrame:{v24, v26, v28, v30}];

  [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setVisibleBounds:v24, v26, v28, v30];
  [(NTKWidgetRichComplicationView *)self transitionToMonochromeWithFraction:self->_monochromeFraction];
  backlightHostEnvironment = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController backlightHostEnvironment];
  [(NTKWidgetRichComplicationView *)self _updateBacklightHostEnvironment:backlightHostEnvironment];
}

- (void)setPreviewViewController:(id)controller
{
  controllerCopy = controller;
  [(NTKWidgetRichComplicationView *)self _clearState];
  previewViewController = self->_previewViewController;
  self->_previewViewController = controllerCopy;
  v6 = controllerCopy;

  [(NTKWidgetRichComplicationView *)self _configurePreviewViewController];
  view = [(CHUISWidgetPreviewHosting *)self->_previewViewController view];
  [(NTKWidgetRichComplicationView *)self addSubview:view];

  [(NTKWidgetRichComplicationView *)self _frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  view2 = [(CHUISWidgetPreviewHosting *)self->_previewViewController view];

  [view2 setFrame:{v9, v11, v13, v15}];
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
  view = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController view];
  [view setHidden:0];

  [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setIncludeAccessoryViews:!self->_configureForSnapshotting];
  [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setGenerateSnapshotMetadata:self->_configureForSnapshotting];
  [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setPrefersUnredactedContentInLowLuminanceEnvironment:[(NTKWidgetRichComplicationView *)self _privateInTritium]^ 1];
  [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setWidgetPriority:self->_widgetHostPriorityTransientSnapshot];
  v4 = _os_feature_enabled_impl();
  view2 = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController view];
  v6 = view2;
  if (v4)
  {
    [view2 setUserInteractionEnabled:1];

    interactionDisabled = self->_interactionDisabled;
  }

  else
  {
    [view2 setUserInteractionEnabled:0];

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
  _widgetRenderSchemes = [(NTKWidgetRichComplicationView *)self _widgetRenderSchemes];
  [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setSupportedRenderSchemes:_widgetRenderSchemes];

  disableLiveTransitionAnimation = self->_disableLiveTransitionAnimation;

  [(NTKWidgetRichComplicationView *)self _setDisableLiveTransitionAnimation:disableLiveTransitionAnimation];
}

- (void)setBaseMetrics:(id)metrics
{
  metricsCopy = metrics;
  if (([metricsCopy isEqual:self->_baseMetrics] & 1) == 0)
  {
    v4 = [metricsCopy copy];
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
  _widgetDebugDescription = [self _widgetDebugDescription];
  v4 = 138412290;
  v5 = _widgetDebugDescription;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "%@ changing metrics after the vc is created is unsupported", &v4, 0xCu);
}

- (void)_updateComputedMetrics
{
  fontStyle = [(CDRichComplicationView *)self fontStyle];
  if ((fontStyle - 1) > 4)
  {
    v4 = 3;
  }

  else
  {
    v4 = qword_22DCE8448[fontStyle - 1];
  }

  if ([(CHSWidgetMetrics *)self->_baseMetrics fontStyle]== v4)
  {
    objc_storeStrong(&self->_computedMetrics, self->_baseMetrics);
  }

  else
  {
    nestedContentMetrics = [(CHSWidgetMetrics *)self->_baseMetrics nestedContentMetrics];

    if (nestedContentMetrics)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      nestedContentMetrics2 = [(CHSWidgetMetrics *)self->_baseMetrics nestedContentMetrics];
      v29 = MEMORY[0x277D85DD0];
      v30 = 3221225472;
      v31 = __55__NTKWidgetRichComplicationView__updateComputedMetrics__block_invoke;
      v32 = &unk_278781280;
      v33 = dictionary;
      v34 = v4;
      v8 = dictionary;
      [nestedContentMetrics2 enumerateKeysAndObjectsUsingBlock:&v29];

      nestedContentMetrics = [v8 copy];
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
    widgetGroupMargins = [(CHSWidgetMetrics *)self->_baseMetrics widgetGroupMargins];
    v27 = [v9 initWithSize:v4 cornerRadius:widgetGroupMargins scaleFactor:nestedContentMetrics fontStyle:v11 safeAreaInsets:v13 widgetGroupMargins:v15 nestedContentMetrics:{v17, v19, v21, v23, v25}];

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

- (void)setFontStyle:(int64_t)style
{
  fontStyle = [(CDRichComplicationView *)self fontStyle];
  v6.receiver = self;
  v6.super_class = NTKWidgetRichComplicationView;
  [(CDRichComplicationView *)&v6 setFontStyle:style];
  if (fontStyle != [(CDRichComplicationView *)self fontStyle])
  {
    [(NTKWidgetRichComplicationView *)self _resetComputedMetrics];
  }
}

- (CGRect)_frame
{
  if ([(NTKWidgetRichComplicationView *)self _metricsDefineSize]|| self->_configureForSnapshotting)
  {
    computedMetrics = [(NTKWidgetRichComplicationView *)self computedMetrics];
    [computedMetrics size];
    [computedMetrics scaleFactor];
    device = [(CDRichComplicationView *)self device];
    CLKRoundForDevice();
    v6 = v5;
    [computedMetrics size];
    [computedMetrics scaleFactor];
    device2 = [(CDRichComplicationView *)self device];
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

- (void)_updateBacklightHostEnvironment:(id)environment
{
  environmentCopy = environment;
  if (self->_backlightHostEnvironment != environmentCopy)
  {
    v6 = environmentCopy;
    objc_storeStrong(&self->_backlightHostEnvironment, environment);
    environmentCopy = v6;
  }
}

- (void)setEditing:(BOOL)editing
{
  if (!self->_previewViewController)
  {
    v8 = v3;
    v9 = v4;
    editingCopy = editing;
    v7.receiver = self;
    v7.super_class = NTKWidgetRichComplicationView;
    [(CDRichComplicationView *)&v7 setEditing:?];
    if (self->_editing != editingCopy)
    {
      self->_editing = editingCopy;
      [(NTKWidgetRichComplicationView *)self _applyUpdate];
    }
  }
}

- (void)setShowPreview:(BOOL)preview
{
  if (!self->_previewViewController)
  {
    if (preview)
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

- (void)setContentOverride:(unint64_t)override
{
  if (!self->_previewViewController)
  {
    self->_contentOverride = override;
  }
}

- (void)setShowSnapshot:(BOOL)snapshot
{
  if (!self->_previewViewController && self->_showSnapshot != snapshot)
  {
    self->_showSnapshot = snapshot;
    [(NTKWidgetRichComplicationView *)self _applyUpdate];
  }
}

- (void)setVisibleInTritium:(BOOL)tritium
{
  if (!self->_previewViewController && self->_visibleInTritium != tritium)
  {
    self->_visibleInTritium = tritium;
  }
}

- (void)setContentPaused:(BOOL)paused
{
  if (self->_contentPaused != paused)
  {
    self->_contentPaused = paused;
    [(NTKWidgetRichComplicationView *)self _applyUpdate];
  }
}

- (void)setInteractionDisabled:(BOOL)disabled
{
  if (self->_interactionDisabled != disabled)
  {
    self->_interactionDisabled = disabled;
    [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setInteractionDisabled:?];
  }
}

- (void)setVisibility:(unint64_t)visibility
{
  if (self->_visibility != visibility)
  {
    self->_visibility = visibility;
    v5 = NTKWidgetVisibilityFromComplicationVisibility(visibility);
    widgetHostViewController = self->_widgetHostViewController;

    [(CHUISWatchComplicationsWidgetHostViewController *)widgetHostViewController setVisibility:v5];
  }
}

- (void)setWidgetIdentifier:(id)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ((NTKEqualObjects(self->_widgetIdentifier, identifierCopy) & 1) == 0)
  {
    if (self->_widgetHostViewController)
    {
      v6 = _NTKLoggingObjectForDomain(48, "NTKLoggingDomainWidgetView");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        _widgetDebugDescription = [(NTKWidgetRichComplicationView *)self _widgetDebugDescription];
        widgetIdentifier = self->_widgetIdentifier;
        v9 = 138412802;
        v10 = _widgetDebugDescription;
        v11 = 2112;
        v12 = widgetIdentifier;
        v13 = 2112;
        v14 = identifierCopy;
        _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "%@ updated widgetIdentifier from %@ to %@ after the widget VC has been created, this change won't take effect until the widget VC is recreated", &v9, 0x20u);
      }
    }

    objc_storeStrong(&self->_widgetIdentifier, identifier);
  }
}

- (void)setCanAppearInSecureEnvironment:(BOOL)environment
{
  environmentCopy = environment;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (self->_canAppearInSecureEnvironment != environmentCopy)
  {
    self->_canAppearInSecureEnvironment = environmentCopy;
    widgetHostViewController = self->_widgetHostViewController;

    [(CHUISWatchComplicationsWidgetHostViewController *)widgetHostViewController setCanAppearInSecureEnvironment:environmentCopy];
  }
}

- (void)setClipToMetrics:(BOOL)metrics
{
  if (self->_clipToMetrics != metrics)
  {
    self->_clipToMetrics = metrics;
    [(NTKWidgetRichComplicationView *)self setNeedsLayout];
  }
}

- (void)setDisableLiveTransitionAnimation:(BOOL)animation
{
  if (self->_disableLiveTransitionAnimation != animation)
  {
    [(NTKWidgetRichComplicationView *)self _setDisableLiveTransitionAnimation:?];
  }
}

- (void)_setDisableLiveTransitionAnimation:(BOOL)animation
{
  self->_disableLiveTransitionAnimation = animation;
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

- (void)setSupportsWatchGestureInteraction:(BOOL)interaction
{
  interactionCopy = interaction;
  self->_supportsWatchGestureInteraction = interaction;
  if (objc_opt_respondsToSelector())
  {
    widgetHostViewController = self->_widgetHostViewController;

    [(CHUISWatchComplicationsWidgetHostViewController *)widgetHostViewController setShouldReceiveWatchGestureInteractions:interactionCopy];
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

  _widgetContentType = [(NTKWidgetRichComplicationView *)self _widgetContentType];
  _widgetPresentationMode = [(NTKWidgetRichComplicationView *)self _widgetPresentationMode];
  areAnimationsPaused = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController areAnimationsPaused];
  if ((areAnimationsPaused & 1) == 0)
  {
    [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setAnimationsPaused:1];
  }

  if (v3 == [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController isContentPaused])
  {
    v7 = areAnimationsPaused ^ 1;
  }

  else
  {
    [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setContentPaused:?];
    v7 = 1;
  }

  contentType = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController contentType];
  widgetHostViewController = self->_widgetHostViewController;
  if (contentType == _widgetContentType)
  {
    if ([(CHUISWatchComplicationsWidgetHostViewController *)widgetHostViewController presentationMode]== _widgetPresentationMode)
    {
      if (!v7)
      {
        return;
      }

      goto LABEL_19;
    }

    goto LABEL_18;
  }

  [(CHUISWatchComplicationsWidgetHostViewController *)widgetHostViewController setContentType:_widgetContentType];
  if ([(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController presentationMode]!= _widgetPresentationMode)
  {
LABEL_18:
    [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setPresentationMode:_widgetPresentationMode];
  }

LABEL_19:
  backlightHostEnvironment = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController backlightHostEnvironment];
  [(NTKWidgetRichComplicationView *)self _updateBacklightHostEnvironment:backlightHostEnvironment];

  v11 = _NTKLoggingObjectForDomain(48, "NTKLoggingDomainWidgetView");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    _widgetDebugDescription = [(NTKWidgetRichComplicationView *)self _widgetDebugDescription];
    v13 = v3;
    if (_widgetPresentationMode - 1 > 2)
    {
      v14 = @"none";
    }

    else
    {
      v14 = off_2787812F0[_widgetPresentationMode - 1];
    }

    v15 = CHUISWidgetContentTypeDescription(_widgetContentType);
    v16 = 138413314;
    v17 = _widgetDebugDescription;
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

- (void)coalescingUpdates:(id)updates
{
  ++self->_updateCoalesceCount;
  (*(updates + 2))(updates, a2);
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
    _chsWidgetSpecularHighlightParameters = [(NTKWidgetRichComplicationView *)self _chsWidgetSpecularHighlightParameters];
  }

  else if (self->_supportsTinting)
  {
    _chsWidgetSpecularHighlightParameters = [(NTKWidgetRichComplicationView *)self _chsWidgetTintParameters];
  }

  else
  {
    _chsWidgetSpecularHighlightParameters = 0;
  }

  tintParameters = self->_tintParameters;
  self->_tintParameters = _chsWidgetSpecularHighlightParameters;

  v5 = self->_tintParameters;
  widgetHostViewController = self->_widgetHostViewController;

  [(CHUISWatchComplicationsWidgetHostViewController *)widgetHostViewController setTintParameters:v5];
}

- (id)_chsWidgetTintParameters
{
  filterProvider = [(CDRichComplicationView *)self filterProvider];
  v4 = [filterProvider colorForView:self accented:1];

  filterProvider2 = [(CDRichComplicationView *)self filterProvider];
  v6 = [filterProvider2 colorForView:self accented:0];

  filterProvider3 = [(CDRichComplicationView *)self filterProvider];
  v8 = [filterProvider3 backgroundColorForView:self];

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
  bSColor = [v4 BSColor];
  [v19 setPrimaryTintColor:bSColor];

  bSColor2 = [v6 BSColor];
  [v19 setSecondaryTintColor:bSColor2];

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

- (void)setAccentedAlternateBackground:(BOOL)background
{
  if (self->_accentedAlternateBackground != background)
  {
    self->_accentedAlternateBackground = background;
    [(NTKWidgetRichComplicationView *)self _updateTintParameters];
  }
}

- (void)setOpaque:(BOOL)opaque
{
  if (self->_opaque != opaque)
  {
    self->_opaque = opaque;
    [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setBackgroundViewPolicy:!opaque];
  }
}

- (void)setSupportsTinting:(BOOL)tinting
{
  if (self->_supportsTinting != tinting)
  {
    self->_supportsTinting = tinting;
    [(NTKWidgetRichComplicationView *)self _updateTintParameters];
  }
}

- (void)setSupportsSpecularHighlighting:(BOOL)highlighting
{
  if (self->_supportsSpecularHighlighting != highlighting)
  {
    self->_supportsSpecularHighlighting = highlighting;
    [(NTKWidgetRichComplicationView *)self _updateTintParameters];
  }
}

- (void)setSupportsLowLuminance:(BOOL)luminance
{
  if (self->_supportsLowLuminance != luminance)
  {
    self->_supportsLowLuminance = luminance;
    [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setSupportsLowLuminance:0];
  }
}

- (void)_transitToHighlightState:(BOOL)state fraction:(double)fraction
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
      widget = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController widget];
      extensionBundleIdentifier = [widget extensionBundleIdentifier];
      v6 = 138412290;
      v7 = extensionBundleIdentifier;
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

- (void)widgetHostViewController:(id)controller requestsLaunch:(id)launch
{
  v28 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  launchCopy = launch;
  v8 = launchCopy;
  if (!self->_editing)
  {
    effectiveContainerBundleIdentifier = [launchCopy effectiveContainerBundleIdentifier];
    v10 = _NTKLoggingObjectForDomain(48, "NTKLoggingDomainWidgetView");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      _widgetDebugDescription = [(NTKWidgetRichComplicationView *)self _widgetDebugDescription];
      widget = [controllerCopy widget];
      extensionIdentity = [widget extensionIdentity];
      extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];
      v22 = 138412802;
      v23 = _widgetDebugDescription;
      v24 = 2112;
      v25 = extensionBundleIdentifier;
      v26 = 2112;
      v27 = effectiveContainerBundleIdentifier;
      _os_log_impl(&dword_22D9C5000, v10, OS_LOG_TYPE_DEFAULT, "%@ launch action requested for %@ with effective container %@", &v22, 0x20u);
    }

    launchAction = [v8 launchAction];
    launchLocation = [(NTKWidgetRichComplicationView *)self launchLocation];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [launchAction url];
      [(NTKWidgetRichComplicationView *)self notifyClientOfLaunchRequest];
      if ([v8 isEntitledToOpenSystemProcesses] && (objc_msgSend(v17, "scheme"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", @"com.apple.widget.launch"), v18, v19))
      {
        host = [v17 host];
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
          [(NTKWidgetRichComplicationView *)self widgetHostViewController:launchAction requestsLaunch:v21];
        }

        NTKLaunchApp(0);
        goto LABEL_15;
      }

      v17 = launchAction;
      [(NTKWidgetRichComplicationView *)self notifyClientOfLaunchRequest];
      NTKOpenActivityContinuation(v17);
    }

LABEL_15:
  }
}

- (void)widgetHostViewController:(id)controller receivedTouchEvent:(id)event
{
  touchDownChangedHandler = self->_touchDownChangedHandler;
  if (touchDownChangedHandler)
  {
    baseContentTouchedDown = [event baseContentTouchedDown];
    v6 = touchDownChangedHandler[2];

    v6(touchDownChangedHandler, baseContentTouchedDown);
  }
}

- (void)sceneDidBecomePresented:(id)presented
{
  view = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController view];
  [view setHidden:0];
}

- (void)backlight:(id)backlight didChangeAlwaysOnEnabled:(BOOL)enabled
{
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__NTKWidgetRichComplicationView_backlight_didChangeAlwaysOnEnabled___block_invoke;
  block[3] = &unk_2787812A8;
  objc_copyWeak(&v6, &location);
  enabledCopy = enabled;
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

- (void)renderSynchronouslyWithImageQueueDiscard:(BOOL)discard inGroup:(id)group
{
  discardCopy = discard;
  groupCopy = group;
  v13.receiver = self;
  v13.super_class = NTKWidgetRichComplicationView;
  [(CDRichComplicationView *)&v13 renderSynchronouslyWithImageQueueDiscard:discardCopy inGroup:groupCopy];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  presentationMode = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController presentationMode];
  if (groupCopy && (presentationMode - 4) >= 0xFFFFFFFFFFFFFFFELL && self->_configureForSnapshotting)
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3032000000;
    v11[3] = __Block_byref_object_copy__18;
    v11[4] = __Block_byref_object_dispose__18;
    v12 = 0;
    dispatch_group_enter(groupCopy);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __82__NTKWidgetRichComplicationView_renderSynchronouslyWithImageQueueDiscard_inGroup___block_invoke;
    v8[3] = &unk_2787812D0;
    v8[4] = self;
    v10 = v11;
    v9 = groupCopy;
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

- (void)setWidgetHostPriorityTransientSnapshot:(BOOL)snapshot
{
  if (self->_widgetHostPriorityTransientSnapshot != snapshot)
  {
    self->_widgetHostPriorityTransientSnapshot = snapshot;
    widgetHostViewController = self->_widgetHostViewController;
    if (widgetHostViewController)
    {
      [(CHUISWatchComplicationsWidgetHostViewController *)widgetHostViewController setWidgetPriority:snapshot];
    }
  }
}

- (void)prepareSnapshotContentWithTimeout:(double)timeout completion:(id)completion
{
  completionCopy = completion;
  activeDeviceID = [(NTKWidgetComplicationDeviceProvider *)self->_deviceProvider activeDeviceID];
  if (activeDeviceID)
  {
    widgetHostViewController = self->_widgetHostViewController;
    if (widgetHostViewController)
    {
      [(CHUISWatchComplicationsWidgetHostViewController *)widgetHostViewController prepareForSnapshotWithTimeout:completionCopy completion:timeout];
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
  completionCopy[2](completionCopy, v11);

LABEL_7:
}

- (void)sizeToFit
{
  [(NTKWidgetRichComplicationView *)self _frame];

  [(NTKWidgetRichComplicationView *)self setBounds:?];
}

- (void)setConfigureForSnapshotting:(BOOL)snapshotting
{
  if (self->_configureForSnapshotting != snapshotting)
  {
    self->_configureForSnapshotting = snapshotting;
    [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController setIncludeAccessoryViews:!snapshotting];
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
  widget = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController widget];
  containerBundleIdentifier = [widget containerBundleIdentifier];
  v6 = [v3 isBundleIdPrivateInTritium:containerBundleIdentifier];

  return v6;
}

- (id)_widgetDebugDescription
{
  widget = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController widget];
  extensionIdentity = [widget extensionIdentity];

  v4 = MEMORY[0x277CCACA8];
  extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];
  widget2 = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController widget];
  kind = [widget2 kind];
  widget3 = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController widget];
  intent = [widget3 intent];
  _indexingHash = [intent _indexingHash];
  widget4 = [(CHUISWatchComplicationsWidgetHostViewController *)self->_widgetHostViewController widget];
  v12 = MEMORY[0x2318D8AD0]([widget4 family]);
  v13 = [v4 stringWithFormat:@"[%p, %@-%@-%lli, %@]", self, extensionBundleIdentifier, kind, _indexingHash, v12];

  return v13;
}

- (void)widgetComplicationDeviceProvider:(id)provider activeDeviceChanged:(id)changed
{
  v10 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v6 = _NTKLoggingObjectForDomain(48, "NTKLoggingDomainWidgetView");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = changedCopy;
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