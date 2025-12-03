@interface CHUISWidgetHostViewController
+ (NSArray)viewControllers;
+ (id)_compatibilityMetrics;
- (BOOL)_canLiveSnapshot;
- (BOOL)_doesPersistentSnapshotHaveContent;
- (BOOL)_emulatesFallbackTreatment;
- (BOOL)_isClockWidget;
- (BOOL)_isContentEffectivelyTransparent;
- (BOOL)_isShowingAnySnapshot;
- (BOOL)_transitionFromSnapshotToLiveContentIfNecessary;
- (BOOL)containsInteractiveControls;
- (BOOL)usesSystemBackgroundMaterial;
- (CGImage)_createCGImageFromNSData:(id)data;
- (CGRect)visibleBounds;
- (CHSInlineTextParameters)inlineTextParameters;
- (CHSWidget)widget;
- (CHSWidgetRenderScheme)renderScheme;
- (CHSWidgetTintParameters)tintParameters;
- (CHUISWidgetHostViewController)initWithWidget:(id)widget metrics:(id)metrics widgetConfigurationIdentifier:(id)identifier;
- (CHUISWidgetHostViewController)initWithWidget:(id)widget metrics:(id)metrics widgetConfigurationIdentifier:(id)identifier extensionProvider:(id)provider sceneWorkspace:(id)workspace screenshotManager:(id)manager preferences:(id)preferences keybag:(id)self0;
- (CHUISWidgetHostViewControllerDelegate)delegate;
- (CHUISWidgetVisibilitySettings)_visibilitySettings;
- (NSArray)supportedRenderSchemes;
- (double)_currentDisplayScale;
- (double)_effectiveCornerRadius;
- (double)_effectiveViewCornerRadius;
- (id)_containerView;
- (id)_effectiveBackgroundColor;
- (id)_logDigest;
- (id)_newPersistedSnapshotView;
- (id)_persistedSnapshotContext;
- (id)_snapshotImageFromURL:(id)l;
- (id)_snapshotViewIgnoringEffects:(BOOL)effects;
- (id)_stateDumpDescription;
- (id)cancelTouchesForCurrentEventInHostedContent;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)scene:(id)scene handleActions:(id)actions;
- (id)sceneSpecification;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)userInfo;
- (int)_actualBackgroundViewMode;
- (int)_expectedBackgroundViewMode;
- (unint64_t)backgroundViewPolicy;
- (unint64_t)visibility;
- (void)__evaluateDetachedSceneTimerForReason:(id)reason;
- (void)_applyLiveSnapshotContents;
- (void)_applySecurityPolicyToLayer:(id)layer;
- (void)_applySecurityPolicyToLayer:(id)layer allowsPrivacySensitiveContent:(BOOL)content;
- (void)_clearTouchDeliveryPolicies;
- (void)_createWidgetSnapshotViews;
- (void)_detachedSceneTimerFired;
- (void)_ensureAndEvaluateSnapshotView:(id)view;
- (void)_evaluateAdditionalForegroundLayers;
- (void)_evaluateEffectiveColorScheme;
- (void)_evaluateEffectiveInSecureEnvironmentForReason:(id)reason;
- (void)_evaluateEffectivePresentationMode;
- (void)_executeSceneContentReadyOperations;
- (void)_flushBatchUpdatesIfNecessaryForReason:(id)reason;
- (void)_hideSnapshotViewsAnimated:(BOOL)animated forceCompleteTeardown:(BOOL)teardown reason:(id)reason;
- (void)_implicitSetRenderScheme:(id)scheme;
- (void)_invalidateDetachedSceneTimerForReason:(id)reason ignoreLogging:(BOOL)logging;
- (void)_invalidateTransitionFromSnapshotToLiveContentDeadlineTimerWithReason:(id)reason;
- (void)_modifyVisibilitySettings:(id)settings;
- (void)_newPersistedSnapshotView;
- (void)_resetLogDigests;
- (void)_scheduleEvaluationOfDetachedSceneTimerForReason:(id)reason;
- (void)_scheduleSceneContentReadyBlock:(id)block;
- (void)_setBackgroundViewMode:(int)mode;
- (void)_setEffectivePresentationMode:(unint64_t)mode reason:(id)reason forceExistingRebuild:(BOOL)rebuild allowCreatingScene:(BOOL)scene;
- (void)_setInSecureEnvironment:(unint64_t)environment forReason:(id)reason;
- (void)_setVisibilitySettings:(id)settings;
- (void)_setupTransitionFromSnapshotToLiveContentDeadlineTimerIfNecessary;
- (void)_snapshotDidChange;
- (void)_tearDownScene;
- (void)_updateBackgroundMaterialAndColor;
- (void)_updateDescriptorIfNecessary;
- (void)_updatePersistedSnapshotContent:(BOOL)content;
- (void)_updatePersistedSnapshotContentIfNecessary;
- (void)_updateSceneToForeground:(BOOL)foreground;
- (void)_updateSnapshotDebugLabelText:(id)text;
- (void)_updateToLiveContentFromLiveSnapshotIfPossible;
- (void)_updateTouchDeliveryPolicies;
- (void)_updateVibrancyEffectView;
- (void)_updateViewsCornerRadius;
- (void)_windowDidAttachToContext:(id)context;
- (void)cancelTouchesForCurrentEventInHostedContent;
- (void)dealloc;
- (void)ensureContentWithTimeout:(double)timeout completion:(id)completion;
- (void)extensionsDidChangeForExtensionProvider:(id)provider;
- (void)invalidate;
- (void)loadView;
- (void)log:(id)log;
- (void)logDebug:(id)debug;
- (void)modifySceneSettings:(id)settings;
- (void)performBatchUpdate:(id)update;
- (void)prewarmContent;
- (void)requestLaunch;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)sceneContentStateDidChange:(id)change;
- (void)sceneDidDeactivate:(id)deactivate withContext:(id)context;
- (void)sceneDidUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings newClientSettings:(id)clientSettings transitionContext:(id)context;
- (void)setAnimationsPaused:(BOOL)paused;
- (void)setBackgroundViewPolicy:(unint64_t)policy;
- (void)setClipBehavior:(unint64_t)behavior;
- (void)setColorScheme:(unint64_t)scheme;
- (void)setContentPaused:(BOOL)paused;
- (void)setContentType:(unint64_t)type;
- (void)setDrawSystemBackgroundMaterialIfNecessary:(BOOL)necessary;
- (void)setIdealizedDateComponents:(id)components;
- (void)setInlineTextParameters:(id)parameters;
- (void)setInteractionDisabled:(BOOL)disabled;
- (void)setMetricsDefineSize:(BOOL)size;
- (void)setPrefersUnredactedContentInLowLuminanceEnvironment:(BOOL)environment;
- (void)setPresentationMode:(unint64_t)mode;
- (void)setProximity:(int64_t)proximity;
- (void)setRenderScheme:(id)scheme;
- (void)setRenderingScale:(double)scale;
- (void)setSeparateLayers:(BOOL)layers;
- (void)setShouldShareTouchesWithHost:(BOOL)host;
- (void)setShowsWidgetLabel:(BOOL)label;
- (void)setSupportedColorSchemes:(unint64_t)schemes;
- (void)setSupportedProximities:(unint64_t)proximities;
- (void)setSupportedRenderSchemes:(id)schemes;
- (void)setSupportsLowLuminance:(BOOL)luminance;
- (void)setTintParameters:(id)parameters fencingAnimations:(BOOL)animations;
- (void)setUserInfo:(id)info;
- (void)setVibrancyConfiguration:(id)configuration;
- (void)setVisibility:(unint64_t)visibility;
- (void)setVisibleBounds:(CGRect)bounds;
- (void)setVisibleEntryShouldSnapshot:(BOOL)snapshot;
- (void)setWantsBaseContentTouchEvents:(BOOL)events;
- (void)setWidget:(id)widget;
- (void)setWidgetPriority:(unint64_t)priority;
- (void)snapshotContentWithTimeout:(double)timeout queue:(id)queue completion:(id)completion;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CHUISWidgetHostViewController

- (BOOL)_emulatesFallbackTreatment
{
  v3 = +[CHUISPreferences sharedInstance];
  if ([v3 emulateFallbackTreatment])
  {
    widget = [(CHUISWidgetHostViewController *)self widget];
    extensionIdentity = [widget extensionIdentity];
    extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];
    if ([extensionBundleIdentifier hasPrefix:@"com.apple.Maps"])
    {
      v7 = 1;
    }

    else
    {
      widget2 = [(CHUISWidgetHostViewController *)self widget];
      extensionIdentity2 = [widget2 extensionIdentity];
      extensionBundleIdentifier2 = [extensionIdentity2 extensionBundleIdentifier];
      if ([extensionBundleIdentifier2 hasPrefix:@"com.apple.findmy"])
      {
        v7 = 1;
      }

      else
      {
        widget3 = [(CHUISWidgetHostViewController *)self widget];
        extensionIdentity3 = [widget3 extensionIdentity];
        extensionBundleIdentifier3 = [extensionIdentity3 extensionBundleIdentifier];
        v7 = [extensionBundleIdentifier3 hasPrefix:@"com.apple.mobileslideshow"];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_resetLogDigests
{
  _logDigest = [(CHUISWidgetHostViewController *)self _logDigest];
  cachedSceneLogDigest = self->_cachedSceneLogDigest;
  self->_cachedSceneLogDigest = _logDigest;
}

- (id)_logDigest
{
  widget = self->_widget;
  metrics = self->_metrics;
  contentType = self->_contentType;
  v5 = NSStringFromCHSWidgetContentType();
  v6 = [(CHSWidget *)widget _loggingIdentifierWithMetrics:metrics prefix:v5];

  return v6;
}

- (BOOL)usesSystemBackgroundMaterial
{
  BSDispatchQueueAssertMain();
  if (([(CHSWidgetTintParameters *)self->_tintParameters wantsGlassMaterial]& 1) != 0)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = [(CHSWidgetDescriptor *)self->_descriptor wantsMaterialBackgroundForFamily:[(CHSWidget *)self->_widget family]];
    if (v3)
    {
      LOBYTE(v3) = [(CHSWidgetRenderScheme *)self->_renderScheme backgroundViewPolicy]== 0;
    }
  }

  return v3;
}

- (void)_updateDescriptorIfNecessary
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(self + 1152);
  v3 = *a2;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2(&dword_1D928E000, v4, v5, "[%p-%{public}@] Descriptor is now: %{public}@");
  v6 = *MEMORY[0x1E69E9840];
}

- (double)_effectiveViewCornerRadius
{
  if (self->_clipBehavior)
  {
    return 0.0;
  }

  [(CHUISWidgetHostViewController *)self _effectiveCornerRadius];
  return result;
}

- (double)_effectiveCornerRadius
{
  if (!self->_metricsDefineSize)
  {
    return 0.0;
  }

  [(CHSWidgetMetrics *)self->_metrics _effectiveCornerRadius];
  return result;
}

- (void)_updateTouchDeliveryPolicies
{
  v72 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssertMain();
  if (self->_invalidated)
  {
    v40 = CHUISLogViewController();
    v38 = v40;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      [CHUISWidgetHostViewController _updateTouchDeliveryPolicies];
      v38 = v40;
    }

    goto LABEL_32;
  }

  if (self->_shouldShareTouchesWithHost)
  {
    if (self->_scene)
    {
      view = [(CHUISWidgetHostViewController *)self view];
      _window = [view _window];

      if (_window)
      {
        layerManager = [(FBScene *)self->_scene layerManager];
        layers = [layerManager layers];

        v6 = objc_alloc(MEMORY[0x1E695DFA8]);
        allKeys = [(NSMutableDictionary *)self->_touchDeliveryPolicyAssertions allKeys];
        v46 = [v6 initWithArray:allKeys];

        view2 = [(CHUISWidgetHostViewController *)self view];
        _window2 = [view2 _window];
        _contextId = [_window2 _contextId];

        v10 = CHUISLogViewControllerTouch();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          cachedSceneLogDigest = self->_cachedSceneLogDigest;
          *buf = 134218498;
          selfCopy3 = self;
          v65 = 2114;
          v66 = cachedSceneLogDigest;
          v67 = 2114;
          v68 = layers;
          _os_log_impl(&dword_1D928E000, v10, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Updating touch delivery policies for layers: %{public}@", buf, 0x20u);
        }

        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        obj = layers;
        v12 = [obj countByEnumeratingWithState:&v58 objects:v71 count:16];
        if (v12)
        {
          v44 = *v59;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v59 != v44)
              {
                objc_enumerationMutation(obj);
              }

              contextID = [*(*(&v58 + 1) + 8 * i) contextID];
              v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:contextID];
              [v46 removeObject:v15];

              touchDeliveryPolicyAssertions = self->_touchDeliveryPolicyAssertions;
              v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:contextID];
              v18 = [(NSMutableDictionary *)touchDeliveryPolicyAssertions objectForKey:v17];
              LOBYTE(touchDeliveryPolicyAssertions) = v18 == 0;

              if (touchDeliveryPolicyAssertions)
              {
                v19 = objc_alloc_init(MEMORY[0x1E698E440]);
                v20 = [MEMORY[0x1E698E438] policyRequiringSharingOfTouchesDeliveredToChildContextId:contextID withHostContextId:_contextId];
                endpoint = [v19 endpoint];
                [v20 setAssertionEndpoint:endpoint];

                objc_initWeak(&location, self);
                v51 = MEMORY[0x1E69E9820];
                v52 = 3221225472;
                v53 = __61__CHUISWidgetHostViewController__updateTouchDeliveryPolicies__block_invoke;
                v54 = &unk_1E8575BB8;
                objc_copyWeak(&v56, &location);
                v22 = v20;
                v55 = v22;
                v23 = BKSTouchDeliveryPolicyServerGetProxyWithErrorHandler();
                if (v23)
                {
                  v24 = CHUISLogViewControllerTouch();
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                  {
                    v25 = self->_cachedSceneLogDigest;
                    *buf = 134218754;
                    selfCopy3 = self;
                    v65 = 2114;
                    v66 = v25;
                    v67 = 2114;
                    v68 = v19;
                    v69 = 1024;
                    v70 = contextID;
                    _os_log_impl(&dword_1D928E000, v24, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Saving touch policy assertion %{public}@ for context id %u", buf, 0x26u);
                  }

                  v26 = self->_touchDeliveryPolicyAssertions;
                  if (!v26)
                  {
                    v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
                    v28 = self->_touchDeliveryPolicyAssertions;
                    self->_touchDeliveryPolicyAssertions = v27;

                    v26 = self->_touchDeliveryPolicyAssertions;
                  }

                  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:contextID];
                  [(NSMutableDictionary *)v26 setObject:v19 forKey:v29];

                  [v23 ipc_addPolicy:v22];
                }

                objc_destroyWeak(&v56);
                objc_destroyWeak(&location);
              }
            }

            v12 = [obj countByEnumeratingWithState:&v58 objects:v71 count:16];
          }

          while (v12);
        }

        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = v46;
        v30 = [v45 countByEnumeratingWithState:&v47 objects:v62 count:16];
        if (v30)
        {
          v31 = *v48;
          do
          {
            for (j = 0; j != v30; ++j)
            {
              if (*v48 != v31)
              {
                objc_enumerationMutation(v45);
              }

              v33 = *(*(&v47 + 1) + 8 * j);
              v34 = [(NSMutableDictionary *)self->_touchDeliveryPolicyAssertions objectForKey:v33];
              [v34 invalidate];
              [(NSMutableDictionary *)self->_touchDeliveryPolicyAssertions removeObjectForKey:v33];
              v35 = CHUISLogViewControllerTouch();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                v36 = self->_cachedSceneLogDigest;
                unsignedIntValue = [v33 unsignedIntValue];
                *buf = 134218754;
                selfCopy3 = self;
                v65 = 2114;
                v66 = v36;
                v67 = 2114;
                v68 = v34;
                v69 = 1024;
                v70 = unsignedIntValue;
                _os_log_impl(&dword_1D928E000, v35, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Invalidating assertion %{public}@ for context id %u", buf, 0x26u);
              }
            }

            v30 = [v45 countByEnumeratingWithState:&v47 objects:v62 count:16];
          }

          while (v30);
        }

        v38 = obj;
LABEL_32:
      }
    }
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (void)_updateBackgroundMaterialAndColor
{
  _expectedBackgroundViewMode = [(CHUISWidgetHostViewController *)self _expectedBackgroundViewMode];

  [(CHUISWidgetHostViewController *)self _setBackgroundViewMode:_expectedBackgroundViewMode];
}

- (int)_expectedBackgroundViewMode
{
  if ([(CHSWidgetTintParameters *)self->_tintParameters wantsGlassMaterial])
  {
    if (self->_drawSystemBackgroundMaterialIfNecessary)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  if ([(CHSWidgetRenderScheme *)self->_renderScheme backgroundViewPolicy])
  {
    return 0;
  }

  preferredBackgroundStyle = [(CHSWidgetDescriptor *)self->_descriptor preferredBackgroundStyle];
  if (preferredBackgroundStyle != 2)
  {
    if (!preferredBackgroundStyle)
    {
      scene = self->_scene;
      if (!scene || [(FBScene *)scene contentState]!= 2)
      {
        return 1;
      }
    }

    return 0;
  }

  if (!self->_drawSystemBackgroundMaterialIfNecessary)
  {
    return 0;
  }

  if ([(CHSWidgetTintParameters *)self->_tintParameters filterStyle]== 7)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (int)_actualBackgroundViewMode
{
  glassBackgroundView = self->_glassBackgroundView;
  if (glassBackgroundView && ![(CHUISSolariumEffectView *)glassBackgroundView isHidden])
  {
    return 3;
  }

  if (([(UIVisualEffectView *)self->_materialBackgroundView isHidden]& 1) != 0)
  {
    return 0;
  }

  effect = [(UIVisualEffectView *)self->_materialBackgroundView effect];
  if (effect)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)_evaluateAdditionalForegroundLayers
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(self + 1152);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_1D928E000, v2, v3, "[%p-%{public}@] Showing solarium fg view", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (id)_containerView
{
  contentView = [(BSUIVibrancyEffectView *)self->_vibrancyEffectView contentView];
  v4 = contentView;
  if (contentView)
  {
    view = contentView;
  }

  else
  {
    view = [(CHUISWidgetHostViewController *)self view];
  }

  v6 = view;

  return v6;
}

- (void)_evaluateEffectivePresentationMode
{
  requestedPresentationMode = self->_requestedPresentationMode;
  if (requestedPresentationMode)
  {
    if ([(CHUISPreferences *)self->_preferences debugPrefersStaticSnapshots])
    {
      v4 = @"User default preference for static snapshots";
      requestedPresentationMode = 1;
    }

    else
    {
      v4 = @"Requested mode";
      if (requestedPresentationMode == 3)
      {
        if ([(CHUISWidgetHostViewController *)self _canLiveSnapshot])
        {
          requestedPresentationMode = 3;
        }

        else
        {
          v4 = @"Live snapshot unsupported for this widget";
          requestedPresentationMode = 1;
        }
      }
    }
  }

  else
  {
    v4 = @"Requested mode";
  }

  [(CHUISWidgetHostViewController *)self _setEffectivePresentationMode:requestedPresentationMode reason:v4];
}

- (void)loadView
{
  v3 = [CHUISWidgetHostViewControllerView alloc];
  v4 = [(CHUISWidgetHostViewControllerView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(CHUISWidgetHostViewControllerView *)v4 setParentController:self];
  [(CHUISWidgetHostViewController *)self setView:v4];
}

- (void)viewDidLoad
{
  BSDispatchQueueAssertMain();
  v11.receiver = self;
  v11.super_class = CHUISWidgetHostViewController;
  [(CHUISWidgetHostViewController *)&v11 viewDidLoad];
  view = [(CHUISWidgetHostViewController *)self view];
  metrics = [(CHUISWidgetHostViewController *)self metrics];
  if (self->_metricsDefineSize)
  {
    [(CHUISWidgetHostViewController *)self _currentDisplayScale];
    [metrics _effectiveSizePixelAlignedForDisplayScale:?];
    BSRectWithSize();
    [view setFrame:?];
  }

  v5 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceLevel:1];
  [view _setLocalOverrideTraitCollection:v5];

  [view setClipsToBounds:0];
  [view setBackgroundColor:0];
  if (_os_feature_enabled_impl())
  {
    v6 = objc_alloc(MEMORY[0x1E698E818]);
    view2 = [(CHUISWidgetHostViewController *)self view];
    [view2 bounds];
    v8 = [v6 initWithFrame:?];
    vibrancyEffectView = self->_vibrancyEffectView;
    self->_vibrancyEffectView = v8;

    [(BSUIVibrancyEffectView *)self->_vibrancyEffectView setAutoresizingMask:18];
    view3 = [(CHUISWidgetHostViewController *)self view];
    [view3 addSubview:self->_vibrancyEffectView];

    [(CHUISWidgetHostViewController *)self _updateVibrancyEffectView];
  }

  [(CHUISWidgetHostViewController *)self _createWidgetSnapshotViews];
}

- (double)_currentDisplayScale
{
  BSDispatchQueueAssertMain();
  traitCollection = [(CHUISWidgetHostViewController *)self traitCollection];
  [traitCollection displayScale];
  v5 = v4;

  return v5;
}

- (void)_updateVibrancyEffectView
{
  [(BSUIVibrancyEffectView *)self->_vibrancyEffectView setIsEnabled:[(CHUISWidgetHostViewController *)self _isVibrancyEffectEnabled]];
  vibrancyEffectView = self->_vibrancyEffectView;
  vibrancyConfiguration = self->_vibrancyConfiguration;

  [(BSUIVibrancyEffectView *)vibrancyEffectView setConfiguration:vibrancyConfiguration];
}

- (void)_createWidgetSnapshotViews
{
  _containerView = [(CHUISWidgetHostViewController *)self _containerView];
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  persistedWidgetSnapshotViewContainer = self->_persistedWidgetSnapshotViewContainer;
  self->_persistedWidgetSnapshotViewContainer = v3;

  v5 = self->_persistedWidgetSnapshotViewContainer;
  [_containerView bounds];
  [(UIView *)v5 setFrame:?];
  [(UIView *)self->_persistedWidgetSnapshotViewContainer setAutoresizingMask:18];
  layer = [(UIView *)self->_persistedWidgetSnapshotViewContainer layer];
  [layer setName:@"Snapshot Container"];

  [(UIView *)self->_persistedWidgetSnapshotViewContainer setClipsToBounds:1];
  [(UIView *)self->_persistedWidgetSnapshotViewContainer setHidden:1];
  [(UIView *)self->_persistedWidgetSnapshotViewContainer setAlpha:0.0];
  [_containerView addSubview:self->_persistedWidgetSnapshotViewContainer];
  v7 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:0];
  persistedWidgetSnapshotImageView = self->_persistedWidgetSnapshotImageView;
  self->_persistedWidgetSnapshotImageView = v7;

  v9 = self->_persistedWidgetSnapshotImageView;
  [_containerView bounds];
  [(UIImageView *)v9 setFrame:?];
  layer2 = [(UIImageView *)self->_persistedWidgetSnapshotImageView layer];
  [layer2 setName:@"Persistent Image View"];

  [(UIImageView *)self->_persistedWidgetSnapshotImageView setAutoresizingMask:18];
  [(UIImageView *)self->_persistedWidgetSnapshotImageView setClipsToBounds:1];
  [(UIImageView *)self->_persistedWidgetSnapshotImageView setHidden:1];
  [(UIImageView *)self->_persistedWidgetSnapshotImageView setAlpha:0.0];
  [(UIView *)self->_persistedWidgetSnapshotViewContainer addSubview:self->_persistedWidgetSnapshotImageView];
  v11 = objc_alloc_init(CHUISLiveSnapshotView);
  liveSceneSnapshotView = self->_liveSceneSnapshotView;
  self->_liveSceneSnapshotView = v11;

  layer3 = [(CHUISLiveSnapshotView *)self->_liveSceneSnapshotView layer];
  [layer3 setName:@"Live Scene Snapshot View"];

  v14 = self->_liveSceneSnapshotView;
  [_containerView bounds];
  [(CHUISLiveSnapshotView *)v14 setFrame:?];
  [(CHUISLiveSnapshotView *)self->_liveSceneSnapshotView setClipsToBounds:1];
  [(CHUISLiveSnapshotView *)self->_liveSceneSnapshotView setHidden:1];
  [(CHUISLiveSnapshotView *)self->_liveSceneSnapshotView setAlpha:0.0];
  [(CHUISLiveSnapshotView *)self->_liveSceneSnapshotView setAutoresizingMask:18];
  [_containerView addSubview:self->_liveSceneSnapshotView];
  if ([(CHUISPreferences *)self->_preferences debugSnapshotViewColoring])
  {
    v15 = [CHUISTouchPassThroughView alloc];
    v16 = [(CHUISTouchPassThroughView *)v15 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    snapshotDebugView = self->_snapshotDebugView;
    self->_snapshotDebugView = v16;

    v18 = self->_snapshotDebugView;
    yellowColor = [MEMORY[0x1E69DC888] yellowColor];
    v20 = [yellowColor colorWithAlphaComponent:0.7];
    [(UIView *)v18 setBackgroundColor:v20];

    v21 = self->_snapshotDebugView;
    view = [(CHUISWidgetHostViewController *)self view];
    [view bounds];
    [(UIView *)v21 setFrame:?];

    layer4 = [(UIView *)self->_snapshotDebugView layer];
    [layer4 setName:@"Snapshot Debug View"];

    [(UIView *)self->_snapshotDebugView setClipsToBounds:1];
    [(UIView *)self->_snapshotDebugView setHidden:1];
    [(UIView *)self->_snapshotDebugView setAlpha:0.0];
    [(UIView *)self->_snapshotDebugView setAutoresizingMask:18];
    view2 = [(CHUISWidgetHostViewController *)self view];
    [view2 addSubview:self->_snapshotDebugView];
  }

  if ([(CHUISPreferences *)self->_preferences debugViewLabels])
  {
    v25 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    snapshotDebugLabel = self->_snapshotDebugLabel;
    self->_snapshotDebugLabel = v25;

    v27 = self->_snapshotDebugLabel;
    v28 = [MEMORY[0x1E69DB878] systemFontOfSize:16.0];
    [(UILabel *)v27 setFont:v28];

    [(UILabel *)self->_snapshotDebugLabel setTextAlignment:1];
    v29 = self->_snapshotDebugLabel;
    v30 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.75];
    [(UILabel *)v29 setTextColor:v30];

    v31 = self->_snapshotDebugLabel;
    v32 = [MEMORY[0x1E69DC888] colorWithWhite:0.9 alpha:0.75];
    [(UILabel *)v31 setBackgroundColor:v32];

    layer5 = [(UILabel *)self->_snapshotDebugLabel layer];
    [layer5 setName:@"Snapshot Debug Label"];

    [(UILabel *)self->_snapshotDebugLabel setHidden:1];
    [(UILabel *)self->_snapshotDebugLabel setAlpha:0.0];
    [(UILabel *)self->_snapshotDebugLabel setAutoresizingMask:45];
    view3 = [(CHUISWidgetHostViewController *)self view];
    [view3 addSubview:self->_snapshotDebugLabel];
  }

  [(CHUISWidgetHostViewController *)self _updateViewsCornerRadius];
}

- (id)_stateDumpDescription
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __54__CHUISWidgetHostViewController__stateDumpDescription__block_invoke;
  v16[3] = &unk_1E8575520;
  v4 = v3;
  v17 = v4;
  selfCopy = self;
  v5 = [v4 modifyProem:v16];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __54__CHUISWidgetHostViewController__stateDumpDescription__block_invoke_2;
  v13 = &unk_1E8575520;
  v6 = v4;
  v14 = v6;
  selfCopy2 = self;
  v7 = [v6 modifyBody:&v10];
  build = [v6 build];

  return build;
}

id __54__CHUISWidgetHostViewController__stateDumpDescription__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 1376);
  v4 = NSStringFromCHSWidgetContentType();
  [v2 appendString:v4 withName:@"type"];

  v5 = *(*(a1 + 40) + 1344) - 1;
  if (v5 > 2)
  {
    v6 = @"none";
  }

  else
  {
    v6 = off_1E8575C78[v5];
  }

  [*(a1 + 32) appendString:v6 withName:@"requestedMode"];
  v7 = *(*(a1 + 40) + 1352) - 1;
  if (v7 > 2)
  {
    v8 = @"none";
  }

  else
  {
    v8 = off_1E8575C78[v7];
  }

  [*(a1 + 32) appendString:v8 withName:@"effectiveMode"];
  v9 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 1016) != 0 withName:@"hasScene"];
  return [*(a1 + 32) appendBool:*(*(a1 + 40) + 1024) withName:@"isSceneForeground"];
}

void __54__CHUISWidgetHostViewController__stateDumpDescription__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 1264) withName:@"widget"];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 1528) withName:@"metrics"];
  v4 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 1536) withName:@"configID"];
  v5 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"_isAppearingOrAppeared"), @"isAppearedOrAppearing"}];
  v6 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 1144) withName:@"visibility"];
  v7 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 1280) withName:@"animationsPaused" ifEqualTo:1];
  v8 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 1281) withName:@"contentPaused" ifEqualTo:1];
  v9 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:"shouldVisibleEntrySnapshot") ifEqualTo:{@"visibleEntryShouldSnapshot", 1}];
  v10 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:"usesSystemBackgroundMaterial") ifEqualTo:{@"usesSystemBackgroundMaterial", 1}];
  v11 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:"drawSystemBackgroundMaterialIfNecessary") ifEqualTo:{@"drawSystemBackgroundMaterialIfNecessary", 1}];
  v12 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:"shouldShareTouchesWithHost") ifEqualTo:{@"sharesTouchesWithHost", 1}];
  v13 = *(*(a1 + 40) + 1256);
  v14 = @"NotSet";
  if (v13 == 2)
  {
    v14 = @"No";
  }

  if (v13 == 1)
  {
    v15 = @"Yes";
  }

  else
  {
    v15 = v14;
  }

  [*(a1 + 32) appendString:v15 withName:@"inSecureEnvironment"];
  v16 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 1248) withName:@"canAppearInSecureEnvironment" ifEqualTo:1];
  v17 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 1336) withName:@"supportsLowLuminance" ifEqualTo:1];
  v18 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 1480) withName:@"showsWidgetLabel" ifEqualTo:1];
  v19 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 1481) withName:@"interactionDisabled" ifEqualTo:1];
  v20 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 1284) withName:@"metricsDefineSize" ifEqualTo:1];
  v21 = *(a1 + 32);
  v22 = *(*(a1 + 40) + 1432);
  v37 = NSStringFromCHSColorSchemes();
  [v21 appendString:? withName:?];

  v23 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 1440) withName:@"supportedRenderSchemes"];
  v24 = *(a1 + 32);
  v38 = [*(a1 + 40) userInfo];
  v25 = [v24 appendObject:? withName:?];

  v26 = *(a1 + 32);
  v27 = *(*(a1 + 40) + 1552);
  v39 = NSStringFromCHSWidgetProximity();
  v28 = [v26 appendObject:? withName:?];

  v29 = *(a1 + 32);
  v30 = *(*(a1 + 40) + 1448);
  v40 = NSStringFromCHSWidgetProximities();
  [v29 appendString:? withName:?];

  v31 = *(a1 + 32);
  v41 = [*(a1 + 40) view];
  v32 = [v41 window];
  v33 = [v31 appendObject:v32 withName:@"window"];

  v34 = *(a1 + 32);
  v42 = [*(a1 + 40) view];
  v35 = [v42 superview];
  v36 = [v34 appendObject:v35 withName:@"superview"];
}

- (id)userInfo
{
  BSDispatchQueueAssertMain();
  userInfo = self->_userInfo;

  return userInfo;
}

- (CHSWidget)widget
{
  BSDispatchQueueAssertMain();
  widget = self->_widget;

  return widget;
}

- (unint64_t)visibility
{
  BSDispatchQueueAssertMain();
  result = self->_visibilitySettings;
  if (result)
  {
    if ([result isSettled])
    {
      if ([(CHUISWidgetVisibilitySettings *)self->_visibilitySettings isFocal])
      {
        return 3;
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (void)viewWillLayoutSubviews
{
  BSDispatchQueueAssertMain();
  v6.receiver = self;
  v6.super_class = CHUISWidgetHostViewController;
  [(CHUISWidgetHostViewController *)&v6 viewWillLayoutSubviews];
  if (self->_materialBackgroundView)
  {
    view = [(CHUISWidgetHostViewController *)self view];
    [view sendSubviewToBack:self->_materialBackgroundView];
  }

  if (self->_glassBackgroundView)
  {
    view2 = [(CHUISWidgetHostViewController *)self view];
    [view2 sendSubviewToBack:self->_glassBackgroundView];
  }

  if (self->_solariumForegroundEffectView)
  {
    view3 = [(CHUISWidgetHostViewController *)self view];
    [view3 bringSubviewToFront:self->_solariumForegroundEffectView];
  }
}

- (id)_effectiveBackgroundColor
{
  effectiveBackgroundColorScheme = self->_effectiveBackgroundColorScheme;
  switch(effectiveBackgroundColorScheme)
  {
    case 2uLL:
      self = [MEMORY[0x1E69DC888] blackColor];
      break;
    case 1uLL:
      self = [MEMORY[0x1E69DC888] whiteColor];
      break;
    case 0uLL:
      self = [MEMORY[0x1E69DC888] systemBackgroundColor];
      break;
  }

  return self;
}

- (void)_updateViewsCornerRadius
{
  [(CHUISWidgetHostViewController *)self _effectiveViewCornerRadius];
  v4 = v3;
  [(UIView *)self->_persistedWidgetSnapshotViewContainer _setContinuousCornerRadius:?];
  [(UIImageView *)self->_persistedWidgetSnapshotImageView _setContinuousCornerRadius:v4];
  [(CHUISLiveSnapshotView *)self->_liveSceneSnapshotView _setContinuousCornerRadius:v4];
  presentationView = [(UIScenePresenter *)self->_scenePresenter presentationView];
  [presentationView _setContinuousCornerRadius:v4];

  [(CHUISWidgetHostViewController *)self _effectiveCornerRadius];
  v7 = v6;
  [(UIView *)self->_snapshotDebugView _setContinuousCornerRadius:?];
  [(UILabel *)self->_snapshotDebugLabel _setContinuousCornerRadius:v7];
  [(UIVisualEffectView *)self->_materialBackgroundView _setContinuousCornerRadius:v7];
  layer = [(UIVisualEffectView *)self->_materialBackgroundView layer];
  [layer setCornerRadius:v7];

  [(CHUISSolariumEffectView *)self->_glassBackgroundView _setContinuousCornerRadius:v7];
  [(CHUISSolariumEffectView *)self->_glassBackgroundView setCornerRadius:v7];
  [(CHUISSolariumEffectView *)self->_solariumForegroundEffectView _setContinuousCornerRadius:v7];
  solariumForegroundEffectView = self->_solariumForegroundEffectView;

  [(CHUISSolariumEffectView *)solariumForegroundEffectView setCornerRadius:v7];
}

- (void)_evaluateEffectiveColorScheme
{
  v30 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssertMain();
  _expectedBackgroundViewMode = [(CHUISWidgetHostViewController *)self _expectedBackgroundViewMode];
  requestedColorScheme = self->_requestedColorScheme;
  if (_expectedBackgroundViewMode == 3)
  {
    v5 = 2;
  }

  else
  {
    v5 = self->_requestedColorScheme;
  }

  if (self->_effectiveContentColorScheme != v5 || self->_effectiveBackgroundColorScheme != requestedColorScheme)
  {
    self->_effectiveContentColorScheme = v5;
    self->_effectiveBackgroundColorScheme = requestedColorScheme;
    v6 = self->_effectiveContentColorScheme == requestedColorScheme;
    v7 = CHUISLogViewController();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        cachedSceneLogDigest = self->_cachedSceneLogDigest;
        v10 = NSStringFromCHSColorScheme();
        v11 = v10;
        v12 = @"NO";
        *buf = 134218754;
        selfCopy2 = self;
        v22 = 2114;
        if (_expectedBackgroundViewMode == 3)
        {
          v12 = @"YES";
        }

        v23 = cachedSceneLogDigest;
        v24 = 2114;
        v25 = v10;
        v26 = 2112;
        v27 = v12;
        _os_log_impl(&dword_1D928E000, v7, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Effective color scheme changed to %{public}@ (overriden to dark? %@)", buf, 0x2Au);
      }
    }

    else if (v8)
    {
      v13 = self->_cachedSceneLogDigest;
      v14 = NSStringFromCHSColorScheme();
      v15 = NSStringFromCHSColorScheme();
      v16 = v15;
      v17 = @"NO";
      *buf = 134219010;
      selfCopy2 = self;
      v22 = 2114;
      if (_expectedBackgroundViewMode == 3)
      {
        v17 = @"YES";
      }

      v23 = v13;
      v24 = 2114;
      v25 = v14;
      v26 = 2114;
      v27 = v15;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_1D928E000, v7, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Effective content color scheme changed to %{public}@, effective background color scheme changed to %{public}@ (overriden to dark? %@)", buf, 0x34u);
    }

    [(CHUISWidgetHostViewController *)self _updateBackgroundMaterialAndColor];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __62__CHUISWidgetHostViewController__evaluateEffectiveColorScheme__block_invoke;
    v19[3] = &__block_descriptor_40_e78___UIApplicationSceneTransitionContext_16__0__CHUISMutableWidgetSceneSettings_8l;
    v19[4] = v5;
    [(CHUISWidgetHostViewController *)self modifySceneSettings:v19];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_updatePersistedSnapshotContentIfNecessary
{
  if ((self->_effectivePresentationMode | 2) == 3 && [(CHUISWidgetHostViewController *)self _isPersistedSnapshotVisible])
  {

    [(CHUISWidgetHostViewController *)self _updatePersistedSnapshotContent:1];
  }
}

- (id)sceneSpecification
{
  v2 = objc_opt_new();

  return v2;
}

- (id)_persistedSnapshotContext
{
  traitCollection = [(CHUISWidgetHostViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = userInterfaceStyle;
  }

  effectiveContentColorScheme = self->_effectiveContentColorScheme;
  if (effectiveContentColorScheme == 2)
  {
    v5 = 2;
  }

  if (effectiveContentColorScheme == 1)
  {
    v5 = 1;
  }

  v7 = v5 < 2;
  v8 = objc_alloc_init(MEMORY[0x1E6994300]);
  [v8 setColorScheme:v7];
  tintParameters = [(CHUISWidgetHostViewController *)self tintParameters];
  [v8 setTintParameters:tintParameters];

  userWantsWidgetDataWhenPasscodeLocked = [(CHUISPreferences *)self->_preferences userWantsWidgetDataWhenPasscodeLocked];
  [v8 setAllowsPrivacySensitiveContent:{userWantsWidgetDataWhenPasscodeLocked | !-[CHUISWidgetHostViewController _shouldBeEffectivelyLocked](self, "_shouldBeEffectivelyLocked")}];
  [v8 setUserWantsWidgetDataWhenPasscodeLocked:userWantsWidgetDataWhenPasscodeLocked];
  additionalSnapshotPresentationContext = [(CHUISWidgetHostViewController *)self additionalSnapshotPresentationContext];
  [v8 setAdditionalSettingsContext:additionalSnapshotPresentationContext];

  v12 = [(CHSScreenshotManager *)self->_screenshotManager snapshotContextForWidget:self->_widget metrics:self->_metrics attributes:v8];

  return v12;
}

- (BOOL)containsInteractiveControls
{
  clientSettings = [(CHUISWidgetHostViewController *)self clientSettings];
  containsInteractiveControls = [clientSettings containsInteractiveControls];

  return containsInteractiveControls;
}

- (void)_executeSceneContentReadyOperations
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(FBScene *)self->_scene contentState]!= 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CHUISWidgetHostViewController.m" lineNumber:2701 description:@"Scene content state was not ready"];
  }

  if ([(NSMutableArray *)self->_waitForSceneContentReadyBlocks count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_waitForSceneContentReadyBlocks;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v4);
          }

          (*(*(*(&v11 + 1) + 8 * v7) + 16))(*(*(&v11 + 1) + 8 * v7));
          ++v7;
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    [(NSMutableArray *)self->_waitForSceneContentReadyBlocks removeAllObjects];
    waitForSceneContentReadyBlocks = self->_waitForSceneContentReadyBlocks;
    self->_waitForSceneContentReadyBlocks = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_updateToLiveContentFromLiveSnapshotIfPossible
{
  if (self->_effectivePresentationMode == 3 && self->_requestedPresentationMode == 2)
  {
    clientSettings = [(FBScene *)self->_scene clientSettings];
    entryContentType = [clientSettings entryContentType];

    if ([(FBScene *)self->_scene contentState]== 2 && (entryContentType - 1) <= 1)
    {

      [(CHUISWidgetHostViewController *)self _setEffectivePresentationMode:2 reason:@"Live mode preferred and the scene is now foreground."];
    }
  }
}

- (id)cancelTouchesForCurrentEventInHostedContent
{
  v53 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssertMain();
  if (!self->_invalidated)
  {
    selfCopy = self;
    objc_initWeak(&location, self);
    v38 = MEMORY[0x1E69E9820];
    v39 = 3221225472;
    v40 = __76__CHUISWidgetHostViewController_cancelTouchesForCurrentEventInHostedContent__block_invoke;
    v41 = &unk_1E85757E8;
    objc_copyWeak(&v42, &location);
    v33 = BKSTouchDeliveryPolicyServerGetProxyWithErrorHandler();
    view = [(CHUISWidgetHostViewController *)self view];
    _window = [view _window];

    v4 = MEMORY[0x1E69DDA98];
    v5 = *MEMORY[0x1E69DDA98];
    if (objc_opt_respondsToSelector())
    {
      v6 = [*v4 _touchesEventForWindow:_window];
      v7 = v6;
      if (v33 && v6)
      {
        v28 = v6;
        v8 = 0.0;
        if (objc_opt_respondsToSelector())
        {
          [v7 _initialTouchTimestampForWindow:_window];
          v8 = v9;
        }

        layerManager = [(FBScene *)selfCopy->_scene layerManager];
        layers = [layerManager layers];

        v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        obj = layers;
        v11 = [obj countByEnumeratingWithState:&v34 objects:v52 count:16];
        if (v11)
        {
          v12 = *v35;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v35 != v12)
              {
                objc_enumerationMutation(obj);
              }

              contextID = [*(*(&v34 + 1) + 8 * i) contextID];
              v15 = objc_alloc_init(MEMORY[0x1E698E440]);
              v16 = [MEMORY[0x1E698E438] policyCancelingTouchesDeliveredToContextId:contextID withInitialTouchTimestamp:v8];
              endpoint = [(CHUISWidgetHostCancelTouchesAssertion *)v15 endpoint];
              [v16 setAssertionEndpoint:endpoint];

              [(CHUISWidgetHostCancelTouchesAssertion *)v33 ipc_addPolicy:v16];
              v18 = CHUISLogViewControllerTouch();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                cachedSceneLogDigest = selfCopy->_cachedSceneLogDigest;
                *buf = 134219010;
                v45 = selfCopy;
                v46 = 2114;
                v47 = cachedSceneLogDigest;
                v48 = 2114;
                v49 = v15;
                v50 = 1024;
                *v51 = contextID;
                *&v51[4] = 2114;
                *&v51[6] = v16;
                _os_log_impl(&dword_1D928E000, v18, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Acquired cancel touches assertion: %{public}@ (context id: %i, policy: %{public}@)", buf, 0x30u);
              }

              [v32 addObject:v15];
            }

            v11 = [obj countByEnumeratingWithState:&v34 objects:v52 count:16];
          }

          while (v11);
        }

        v20 = [[CHUISWidgetHostCancelTouchesAssertion alloc] initWithAssertions:v32];
        v21 = CHUISLogViewControllerTouch();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = selfCopy->_cachedSceneLogDigest;
          *buf = 134218498;
          v45 = selfCopy;
          v46 = 2114;
          v47 = v22;
          v48 = 2114;
          v49 = v20;
          _os_log_impl(&dword_1D928E000, v21, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Made cancel touches group assertion: %{public}@", buf, 0x20u);
        }

        v23 = obj;
LABEL_23:

        objc_destroyWeak(&v42);
        objc_destroyWeak(&location);
        goto LABEL_24;
      }
    }

    else
    {
      v7 = 0;
    }

    v28 = v7;
    v23 = CHUISLogViewControllerTouch();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = selfCopy->_cachedSceneLogDigest;
      *buf = 134218754;
      v45 = selfCopy;
      v46 = 2114;
      v47 = v24;
      v48 = 2112;
      v49 = v33;
      v50 = 2114;
      *v51 = v7;
      _os_log_impl(&dword_1D928E000, v23, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Did not make cancel touches group assertion because of server: %@, or touchesEvent: %{public}@", buf, 0x2Au);
    }

    v20 = 0;
    goto LABEL_23;
  }

  [CHUISWidgetHostViewController cancelTouchesForCurrentEventInHostedContent];
  v20 = 0;
LABEL_24:
  v25 = *MEMORY[0x1E69E9840];

  return v20;
}

- (void)_clearTouchDeliveryPolicies
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = CHUISLogViewControllerTouch();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    cachedSceneLogDigest = self->_cachedSceneLogDigest;
    v6 = 134218242;
    selfCopy = self;
    v8 = 2114;
    v9 = cachedSceneLogDigest;
    _os_log_impl(&dword_1D928E000, v3, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Clearing any touch delivery policies", &v6, 0x16u);
  }

  [(NSMutableDictionary *)self->_touchDeliveryPolicyAssertions enumerateKeysAndObjectsUsingBlock:&__block_literal_global_466];
  [(NSMutableDictionary *)self->_touchDeliveryPolicyAssertions removeAllObjects];
  v5 = *MEMORY[0x1E69E9840];
}

- (CHUISWidgetHostViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CHUISWidgetHostViewController)initWithWidget:(id)widget metrics:(id)metrics widgetConfigurationIdentifier:(id)identifier
{
  widgetCopy = widget;
  metricsCopy = metrics;
  identifierCopy = identifier;
  extensionIdentity = [widgetCopy extensionIdentity];
  if ([extensionIdentity isRemote])
  {
    CHUISSharedExtensionProviderWithRemote();
  }

  else
  {
    CHUISSharedExtensionProvider();
  }
  v11 = ;
  v12 = CHUISSceneWorkspace();
  mEMORY[0x1E6994348] = [MEMORY[0x1E6994348] sharedManager];
  v14 = +[CHUISPreferences sharedInstance];
  v15 = +[CHUISKeybag sharedInstance];
  v16 = [(CHUISWidgetHostViewController *)self initWithWidget:widgetCopy metrics:metricsCopy widgetConfigurationIdentifier:identifierCopy extensionProvider:v11 sceneWorkspace:v12 screenshotManager:mEMORY[0x1E6994348] preferences:v14 keybag:v15];

  return v16;
}

- (CHUISWidgetHostViewController)initWithWidget:(id)widget metrics:(id)metrics widgetConfigurationIdentifier:(id)identifier extensionProvider:(id)provider sceneWorkspace:(id)workspace screenshotManager:(id)manager preferences:(id)preferences keybag:(id)self0
{
  widgetCopy = widget;
  metricsCopy = metrics;
  identifierCopy = identifier;
  providerCopy = provider;
  workspaceCopy = workspace;
  managerCopy = manager;
  preferencesCopy = preferences;
  keybagCopy = keybag;
  v47.receiver = self;
  v47.super_class = CHUISWidgetHostViewController;
  v18 = [(CHUISWidgetHostViewController *)&v47 initWithNibName:0 bundle:0];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_sceneWorkspace, workspace);
    objc_storeStrong((v19 + 1296), preferences);
    v20 = [widgetCopy copy];
    v21 = *(v19 + 1264);
    *(v19 + 1264) = v20;

    v22 = [metricsCopy copy];
    v23 = *(v19 + 1528);
    *(v19 + 1528) = v22;

    objc_storeStrong((v19 + 1536), identifier);
    *(v19 + 1376) = 0;
    *(v19 + 1384) = 0;
    *(v19 + 1392) = 0;
    *(v19 + 1400) = 0;
    *(v19 + 1344) = 1;
    *(v19 + 1282) = 1;
    *(v19 + 1280) = 0;
    *(v19 + 1281) = 0;
    v24 = CHUISLogViewController();
    *(v19 + 1120) = os_signpost_id_generate(v24);

    objc_storeStrong((v19 + 1128), manager);
    *(v19 + 1482) = 1;
    objc_storeStrong((v19 + 1304), provider);
    *(v19 + 1232) = 0x403E000000000000;
    array = [MEMORY[0x1E695DF70] array];
    v26 = *(v19 + 1240);
    *(v19 + 1240) = array;

    objc_storeStrong((v19 + 992), keybag);
    *(v19 + 1256) = 0;
    v27 = *(v19 + 1464);
    *(v19 + 1464) = 0;

    *(v19 + 1284) = 1;
    *(v19 + 1408) = 0;
    *(v19 + 1337) = 0;
    v28 = *(v19 + 1440);
    *(v19 + 1440) = 0;

    *(v19 + 1432) = 0;
    v29 = *(v19 + 1456);
    *(v19 + 1456) = 0;

    [widgetCopy family];
    *(v19 + 1512) = CHSWidgetFamilyIsAccessory();
    *(v19 + 1560) = 0xBFF0000000000000;
    *(v19 + 1552) = 0;
    *(v19 + 1448) = 0;
    *(v19 + 1285) = 1;
    [v19 _resetLogDigests];
    objc_initWeak(&location, v19);
    v30 = MEMORY[0x1E69E96A0];
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CHUISWidgetHostViewController - %p", v19];
    objc_copyWeak(&v45, &location);
    v32 = BSLogAddStateCaptureBlockWithTitle();
    v33 = *(v19 + 1208);
    *(v19 + 1208) = v32;

    v34 = CHUISLogViewController();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      [CHUISWidgetHostViewController initWithWidget:v19 metrics:? widgetConfigurationIdentifier:? extensionProvider:? sceneWorkspace:? screenshotManager:? preferences:? keybag:?];
    }

    [widgetCopy family];
    v35 = [objc_alloc(MEMORY[0x1E6994420]) initWithRenderingMode:0 backgroundViewPolicy:CHSWidgetFamilyIsAccessory()];
    [v19 _implicitSetRenderScheme:v35];
    [v19 _updateDescriptorIfNecessary];
    [v19 _evaluateEffectivePresentationMode];
    [v19 _updateBackgroundMaterialAndColor];
    [v19 _setCanAppearInSecureEnvironment:*(v19 + 1248) force:1];
    [*(v19 + 1304) registerObserver:v19];
    v36 = +[_CHUISWidgetHostViewControllerCollection sharedInstance];
    [v36 noteCreated:v19];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v19 selector:sel__windowDidAttachToContext_ name:*MEMORY[0x1E69DEB08] object:0];

    objc_destroyWeak(&v45);
    objc_destroyWeak(&location);
  }

  return v19;
}

id __156__CHUISWidgetHostViewController_initWithWidget_metrics_widgetConfigurationIdentifier_extensionProvider_sceneWorkspace_screenshotManager_preferences_keybag___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _stateDumpDescription];

  return v2;
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(self + 1152);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_1D928E000, v2, v3, "[%p-%{public}@] Destroyed.", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

+ (NSArray)viewControllers
{
  v2 = +[_CHUISWidgetHostViewControllerCollection sharedInstance];
  viewControllers = [v2 viewControllers];

  return viewControllers;
}

- (void)prewarmContent
{
  v1 = CHUISLogViewController();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_1(&dword_1D928E000, v2, v3, "Unable to prewarm content on an invalidated widget view controller.", v4, v5, v6, v7, 0);
  }
}

- (void)requestLaunch
{
  v1 = CHUISLogViewController();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_1(&dword_1D928E000, v2, v3, "Unable to select an invalidated widget view controller.", v4, v5, v6, v7, 0);
  }
}

- (void)setUserInfo:(id)info
{
  infoCopy = info;
  BSDispatchQueueAssertMain();
  userInfo = self->_userInfo;
  self->_userInfo = infoCopy;
}

- (void)setWidget:(id)widget
{
  v27 = *MEMORY[0x1E69E9840];
  widgetCopy = widget;
  BSDispatchQueueAssertMain();
  if (self->_invalidated)
  {
    v19 = CHUISLogViewController();
    [(CHUISWidgetHostViewController *)v19 setWidget:buf];
    widget = *buf;
  }

  else
  {
    widget = [(CHUISWidgetHostViewController *)self widget];
    v6 = [widgetCopy copy];
    widget = self->_widget;
    self->_widget = v6;

    [(CHUISWidgetHostViewController *)self _resetLogDigests];
    v8 = CHUISLogViewController();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      cachedSceneLogDigest = self->_cachedSceneLogDigest;
      *buf = 134218242;
      *&buf[4] = self;
      v23 = 2114;
      v24 = cachedSceneLogDigest;
      _os_log_impl(&dword_1D928E000, v8, OS_LOG_TYPE_DEFAULT, "[%p] New widget set: %{public}@", buf, 0x16u);
    }

    extensionIdentity = [widgetCopy extensionIdentity];
    if ([extensionIdentity isRemote])
    {
      CHUISSharedExtensionProviderWithRemote();
    }

    else
    {
      CHUISSharedExtensionProvider();
    }
    v11 = ;
    objc_storeStrong(&self->_extensionProvider, v11);

    [(CHUISWidgetHostViewController *)self _updateDescriptorIfNecessary];
    if ([widget matchesPersonality:widgetCopy] && (v12 = objc_msgSend(widget, "family"), v12 == objc_msgSend(widgetCopy, "family")))
    {
      if (self->_scene)
      {
        v13 = CHUISLogViewController();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          scene = self->_scene;
          v15 = self->_widget;
          *buf = 134218498;
          *&buf[4] = self;
          v23 = 2048;
          v24 = scene;
          v25 = 2114;
          v26 = v15;
          _os_log_impl(&dword_1D928E000, v13, OS_LOG_TYPE_DEFAULT, "[%p] Updating scene settings on scene (%p) with new widget: %{public}@", buf, 0x20u);
        }

        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __43__CHUISWidgetHostViewController_setWidget___block_invoke;
        v20[3] = &unk_1E8575608;
        v21 = widgetCopy;
        [(CHUISWidgetHostViewController *)self modifySceneSettings:v20];
      }
    }

    else
    {
      v16 = CHUISLogViewController();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = self;
        _os_log_impl(&dword_1D928E000, v16, OS_LOG_TYPE_DEFAULT, "[%p] Tearing down scene for new widget set, and re-activating", buf, 0xCu);
      }

      effectivePresentationMode = self->_effectivePresentationMode;
      [(CHUISWidgetHostViewController *)self _tearDownScene];
      [(CHUISWidgetHostViewController *)self _setEffectivePresentationMode:0 reason:@"pending widget change"];
      [(CHUISWidgetHostViewController *)self _setEffectivePresentationMode:effectivePresentationMode reason:@"widget changed"];
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)setContentType:(unint64_t)type
{
  v16 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssertMain();
  if (self->_contentType != type)
  {
    self->_contentType = type;
    v5 = CHUISLogViewController();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      cachedSceneLogDigest = self->_cachedSceneLogDigest;
      v7 = NSStringFromCHSWidgetContentType();
      *buf = 134218498;
      selfCopy = self;
      v12 = 2114;
      v13 = cachedSceneLogDigest;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&dword_1D928E000, v5, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Content type changed to %{public}@", buf, 0x20u);
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__CHUISWidgetHostViewController_setContentType___block_invoke;
    v9[3] = &__block_descriptor_40_e78___UIApplicationSceneTransitionContext_16__0__CHUISMutableWidgetSceneSettings_8l;
    v9[4] = type;
    [(CHUISWidgetHostViewController *)self modifySceneSettings:v9];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setIdealizedDateComponents:(id)components
{
  v18 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  if (self->_idealizedDateComponents != componentsCopy)
  {
    objc_storeStrong(&self->_idealizedDateComponents, components);
    v6 = CHUISLogViewController();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      cachedSceneLogDigest = self->_cachedSceneLogDigest;
      v8 = @"a value";
      *buf = 134218498;
      if (!componentsCopy)
      {
        v8 = @"nil";
      }

      selfCopy = self;
      v14 = 2114;
      v15 = cachedSceneLogDigest;
      v16 = 2114;
      v17 = v8;
      _os_log_impl(&dword_1D928E000, v6, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Idealized date components changed to %{public}@", buf, 0x20u);
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__CHUISWidgetHostViewController_setIdealizedDateComponents___block_invoke;
    v10[3] = &unk_1E8575608;
    v11 = componentsCopy;
    [(CHUISWidgetHostViewController *)self modifySceneSettings:v10];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setColorScheme:(unint64_t)scheme
{
  v15 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssertMain();
  if (self->_requestedColorScheme != scheme)
  {
    self->_requestedColorScheme = scheme;
    v5 = CHUISLogViewController();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      cachedSceneLogDigest = self->_cachedSceneLogDigest;
      v7 = NSStringFromCHSColorScheme();
      v9 = 134218498;
      selfCopy = self;
      v11 = 2114;
      v12 = cachedSceneLogDigest;
      v13 = 2114;
      v14 = v7;
      _os_log_impl(&dword_1D928E000, v5, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Requested color scheme changed to %{public}@", &v9, 0x20u);
    }

    [(CHUISWidgetHostViewController *)self _evaluateEffectiveColorScheme];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setSupportedColorSchemes:(unint64_t)schemes
{
  v16 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssertMain();
  if (self->_supportedColorSchemes != schemes)
  {
    self->_supportedColorSchemes = schemes;
    v5 = CHUISLogViewController();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      cachedSceneLogDigest = self->_cachedSceneLogDigest;
      v7 = NSStringFromCHSColorSchemes();
      *buf = 134218498;
      selfCopy = self;
      v12 = 2114;
      v13 = cachedSceneLogDigest;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&dword_1D928E000, v5, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Supported color schemes changed to %{public}@", buf, 0x20u);
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__CHUISWidgetHostViewController_setSupportedColorSchemes___block_invoke;
    v9[3] = &__block_descriptor_40_e78___UIApplicationSceneTransitionContext_16__0__CHUISMutableWidgetSceneSettings_8l;
    v9[4] = schemes;
    [(CHUISWidgetHostViewController *)self modifySceneSettings:v9];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setSeparateLayers:(BOOL)layers
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_separateLayers != layers)
  {
    layersCopy = layers;
    self->_separateLayers = layers;
    v5 = CHUISLogViewController();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      cachedSceneLogDigest = self->_cachedSceneLogDigest;
      v7 = @"NO";
      *buf = 134218498;
      if (layersCopy)
      {
        v7 = @"YES";
      }

      selfCopy = self;
      v13 = 2114;
      v14 = cachedSceneLogDigest;
      v15 = 2114;
      v16 = v7;
      _os_log_impl(&dword_1D928E000, v5, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Separate layers changed to %{public}@", buf, 0x20u);
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__CHUISWidgetHostViewController_setSeparateLayers___block_invoke;
    v9[3] = &__block_descriptor_33_e78___UIApplicationSceneTransitionContext_16__0__CHUISMutableWidgetSceneSettings_8l;
    v10 = layersCopy;
    [(CHUISWidgetHostViewController *)self modifySceneSettings:v9];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (NSArray)supportedRenderSchemes
{
  BSDispatchQueueAssertMain();
  supportedRenderSchemes = self->_supportedRenderSchemes;

  return supportedRenderSchemes;
}

- (void)setSupportedRenderSchemes:(id)schemes
{
  v17 = *MEMORY[0x1E69E9840];
  schemesCopy = schemes;
  BSDispatchQueueAssertMain();
  if (![(NSArray *)schemesCopy count])
  {

    schemesCopy = 0;
  }

  if (self->_supportedRenderSchemes != schemesCopy)
  {
    objc_storeStrong(&self->_supportedRenderSchemes, schemesCopy);
    v5 = CHUISLogViewController();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      cachedSceneLogDigest = self->_cachedSceneLogDigest;
      supportedRenderSchemes = self->_supportedRenderSchemes;
      *buf = 134218498;
      selfCopy = self;
      v13 = 2114;
      v14 = cachedSceneLogDigest;
      v15 = 2114;
      v16 = supportedRenderSchemes;
      _os_log_impl(&dword_1D928E000, v5, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Supported render schemes changed to %{public}@", buf, 0x20u);
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __59__CHUISWidgetHostViewController_setSupportedRenderSchemes___block_invoke;
    v9[3] = &unk_1E8575608;
    v10 = schemesCopy;
    [(CHUISWidgetHostViewController *)self modifySceneSettings:v9];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setSupportedProximities:(unint64_t)proximities
{
  v17 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssertMain();
  if (self->_supportedProximities != proximities)
  {
    self->_supportedProximities = proximities;
    v5 = CHUISLogViewController();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      cachedSceneLogDigest = self->_cachedSceneLogDigest;
      supportedProximities = self->_supportedProximities;
      v8 = NSStringFromCHSWidgetProximities();
      *buf = 134218498;
      selfCopy = self;
      v13 = 2114;
      v14 = cachedSceneLogDigest;
      v15 = 2114;
      v16 = v8;
      _os_log_impl(&dword_1D928E000, v5, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Supported proximities changed to %{public}@", buf, 0x20u);
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__CHUISWidgetHostViewController_setSupportedProximities___block_invoke;
    v10[3] = &__block_descriptor_40_e78___UIApplicationSceneTransitionContext_16__0__CHUISMutableWidgetSceneSettings_8l;
    v10[4] = proximities;
    [(CHUISWidgetHostViewController *)self modifySceneSettings:v10];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setPrefersUnredactedContentInLowLuminanceEnvironment:(BOOL)environment
{
  BSDispatchQueueAssertMain();
  prefersUnredactedContentInLowLuminanceEnvironment = self->_prefersUnredactedContentInLowLuminanceEnvironment;
  if ((BSEqualBools() & 1) == 0)
  {
    self->_prefersUnredactedContentInLowLuminanceEnvironment = environment;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __86__CHUISWidgetHostViewController_setPrefersUnredactedContentInLowLuminanceEnvironment___block_invoke;
    v6[3] = &__block_descriptor_33_e78___UIApplicationSceneTransitionContext_16__0__CHUISMutableWidgetSceneSettings_8l;
    environmentCopy = environment;
    [(CHUISWidgetHostViewController *)self modifySceneSettings:v6];
  }
}

- (void)setSupportsLowLuminance:(BOOL)luminance
{
  BSDispatchQueueAssertMain();
  supportsLowLuminance = self->_supportsLowLuminance;
  if ((BSEqualBools() & 1) == 0)
  {
    self->_supportsLowLuminance = luminance;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__CHUISWidgetHostViewController_setSupportsLowLuminance___block_invoke;
    v6[3] = &__block_descriptor_33_e78___UIApplicationSceneTransitionContext_16__0__CHUISMutableWidgetSceneSettings_8l;
    luminanceCopy = luminance;
    [(CHUISWidgetHostViewController *)self modifySceneSettings:v6];
  }
}

- (void)setPresentationMode:(unint64_t)mode
{
  v18 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssertMain();
  if (self->_invalidated)
  {
    [CHUISWidgetHostViewController setPresentationMode:];
  }

  else
  {
    requestedPresentationMode = self->_requestedPresentationMode;
    if (requestedPresentationMode != mode)
    {
      if (requestedPresentationMode == 2)
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requested presentation mode changed to: %@", @"live"];
        [(CHUISWidgetHostViewController *)self _invalidateTransitionFromSnapshotToLiveContentDeadlineTimerWithReason:v6];
      }

      self->_requestedPresentationMode = mode;
      v7 = CHUISLogViewController();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        cachedSceneLogDigest = self->_cachedSceneLogDigest;
        v9 = self->_requestedPresentationMode - 1;
        if (v9 > 2)
        {
          v10 = @"none";
        }

        else
        {
          v10 = off_1E8575C78[v9];
        }

        *buf = 134218498;
        selfCopy = self;
        v14 = 2114;
        v15 = cachedSceneLogDigest;
        v16 = 2114;
        v17 = v10;
        _os_log_impl(&dword_1D928E000, v7, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Requested mode changed to %{public}@.", buf, 0x20u);
      }

      [(CHUISWidgetHostViewController *)self _evaluateEffectivePresentationMode];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setVisibility:(unint64_t)visibility
{
  BSDispatchQueueAssertMain();
  if (self->_invalidated)
  {
    [CHUISWidgetHostViewController setVisibility:];
  }

  else if (visibility - 1 >= 3)
  {
    if (!visibility)
    {

      [(CHUISWidgetHostViewController *)self _setVisibilitySettings:0];
    }
  }

  else
  {
    v5 = visibility & 0xFFFFFFFFFFFFFFFELL;
    if (self->_visibilitySettings)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __47__CHUISWidgetHostViewController_setVisibility___block_invoke;
      v8[3] = &__block_descriptor_34_e46_v16__0__CHUISMutableWidgetVisibilitySettings_8l;
      v9 = v5 == 2;
      v10 = visibility == 3;
      [(CHUISWidgetHostViewController *)self _modifyVisibilitySettings:v8];
    }

    else
    {
      v6 = v5 == 2;
      v7 = objc_alloc_init(CHUISMutableWidgetVisibilitySettings);
      [(CHUISMutableWidgetVisibilitySettings *)v7 setSettled:v6];
      [(CHUISMutableWidgetVisibilitySettings *)v7 setFocal:visibility == 3];
      [(CHUISMutableWidgetVisibilitySettings *)v7 setVisibleBounds:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
      [(CHUISWidgetHostViewController *)self _setVisibilitySettings:v7];
    }
  }
}

void __47__CHUISWidgetHostViewController_setVisibility___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSettled:*(a1 + 32)];
  [v3 setFocal:*(a1 + 33)];
}

- (CGRect)visibleBounds
{
  BSDispatchQueueAssertMain();
  visibilitySettings = self->_visibilitySettings;
  if (visibilitySettings)
  {
    [(CHUISWidgetVisibilitySettings *)visibilitySettings visibleBounds];
  }

  else
  {
    v4 = *MEMORY[0x1E695F050];
    v5 = *(MEMORY[0x1E695F050] + 8);
    v6 = *(MEMORY[0x1E695F050] + 16);
    v7 = *(MEMORY[0x1E695F050] + 24);
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)setVisibleBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  BSDispatchQueueAssertMain();
  if (self->_invalidated)
  {
    [CHUISWidgetHostViewController setVisibleBounds:];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__CHUISWidgetHostViewController_setVisibleBounds___block_invoke;
    v8[3] = &__block_descriptor_64_e46_v16__0__CHUISMutableWidgetVisibilitySettings_8l;
    *&v8[4] = x;
    *&v8[5] = y;
    *&v8[6] = width;
    *&v8[7] = height;
    [(CHUISWidgetHostViewController *)self _modifyVisibilitySettings:v8];
  }
}

- (void)setAnimationsPaused:(BOOL)paused
{
  pausedCopy = paused;
  BSDispatchQueueAssertMain();
  if (self->_invalidated)
  {
    [CHUISWidgetHostViewController setAnimationsPaused:];
  }

  else if (self->_animationsPaused != pausedCopy)
  {
    self->_animationsPaused = pausedCopy;
    if (self->_scene)
    {
      v5 = CHUISLogViewController();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [CHUISWidgetHostViewController setAnimationsPaused:?];
      }

      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __53__CHUISWidgetHostViewController_setAnimationsPaused___block_invoke;
      v6[3] = &__block_descriptor_33_e78___UIApplicationSceneTransitionContext_16__0__CHUISMutableWidgetSceneSettings_8l;
      v7 = pausedCopy;
      [(CHUISWidgetHostViewController *)self modifySceneSettings:v6];
    }
  }
}

- (void)setContentPaused:(BOOL)paused
{
  pausedCopy = paused;
  BSDispatchQueueAssertMain();
  if (self->_invalidated)
  {
    [CHUISWidgetHostViewController setContentPaused:];
  }

  else if (self->_contentPaused != pausedCopy)
  {
    self->_contentPaused = pausedCopy;
    if (self->_scene)
    {
      v5 = CHUISLogViewController();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [CHUISWidgetHostViewController setContentPaused:?];
      }

      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __50__CHUISWidgetHostViewController_setContentPaused___block_invoke;
      v6[3] = &__block_descriptor_33_e78___UIApplicationSceneTransitionContext_16__0__CHUISMutableWidgetSceneSettings_8l;
      v7 = pausedCopy;
      [(CHUISWidgetHostViewController *)self modifySceneSettings:v6];
    }
  }
}

- (CHSWidgetTintParameters)tintParameters
{
  BSDispatchQueueAssertMain();
  tintParameters = self->_tintParameters;

  return tintParameters;
}

- (void)setTintParameters:(id)parameters fencingAnimations:(BOOL)animations
{
  v26 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  BSDispatchQueueAssertMain();
  if (self->_invalidated)
  {
    v17 = CHUISLogViewController();
    [CHUISWidgetHostViewController setTintParameters:v17 fencingAnimations:?];
  }

  else
  {
    tintParameters = self->_tintParameters;
    if ((BSEqualObjects() & 1) == 0)
    {
      v8 = [parametersCopy copy];
      v9 = self->_tintParameters;
      self->_tintParameters = v8;

      if (!self->_didSetRenderSchemeExplicitly)
      {
        v10 = [(CHSWidgetRenderScheme *)self->_renderScheme mutableCopy];
        v11 = self->_tintParameters;
        if (v11)
        {
          effectiveRenderingMode = [(CHSWidgetTintParameters *)v11 effectiveRenderingMode];
        }

        else
        {
          effectiveRenderingMode = 0;
        }

        [v10 setRenderingMode:effectiveRenderingMode];
        [(CHUISWidgetHostViewController *)self _implicitSetRenderScheme:v10];
      }

      [(CHUISWidgetHostViewController *)self _evaluateEffectiveColorScheme];
      v13 = CHUISLogViewController();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        cachedSceneLogDigest = self->_cachedSceneLogDigest;
        v15 = self->_tintParameters;
        *buf = 134218498;
        selfCopy = self;
        v22 = 2114;
        v23 = cachedSceneLogDigest;
        v24 = 2114;
        v25 = v15;
        _os_log_impl(&dword_1D928E000, v13, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Tinting parameters changed to %{public}@", buf, 0x20u);
      }

      if (self->_scene)
      {
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __69__CHUISWidgetHostViewController_setTintParameters_fencingAnimations___block_invoke;
        v18[3] = &unk_1E85757C0;
        v18[4] = self;
        animationsCopy = animations;
        [(CHUISWidgetHostViewController *)self modifySceneSettings:v18];
      }

      [(CHUISWidgetHostViewController *)self _updateBackgroundMaterialAndColor];
      [(CHUISWidgetHostViewController *)self _updateVibrancyEffectView];
      [(CHUISWidgetHostViewController *)self _updatePersistedSnapshotContentIfNecessary];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

id __69__CHUISWidgetHostViewController_setTintParameters_fencingAnimations___block_invoke(uint64_t a1, void *a2)
{
  [a2 setTintParameters:*(*(a1 + 32) + 1464)];
  if (*(a1 + 40) == 1)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DC6A0]);
    v4 = [MEMORY[0x1E69DCE70] _synchronizedDrawingFence];
    [v3 setAnimationFence:v4];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setVibrancyConfiguration:(id)configuration
{
  objc_storeStrong(&self->_vibrancyConfiguration, configuration);

  [(CHUISWidgetHostViewController *)self _updateVibrancyEffectView];
}

- (CHSInlineTextParameters)inlineTextParameters
{
  BSDispatchQueueAssertMain();
  v3 = [(CHSInlineTextParameters *)self->_inlineTextParameters copy];

  return v3;
}

- (void)setInlineTextParameters:(id)parameters
{
  parametersCopy = parameters;
  BSDispatchQueueAssertMain();
  if (self->_invalidated)
  {
    v9 = CHUISLogViewController();
    [CHUISWidgetHostViewController setInlineTextParameters:v9];
  }

  else
  {
    inlineTextParameters = self->_inlineTextParameters;
    if ((BSEqualObjects() & 1) == 0)
    {
      v6 = [parametersCopy copy];
      v7 = self->_inlineTextParameters;
      self->_inlineTextParameters = v6;

      if (self->_scene)
      {
        v8 = CHUISLogViewController();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [CHUISWidgetHostViewController setInlineTextParameters:?];
        }

        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __57__CHUISWidgetHostViewController_setInlineTextParameters___block_invoke;
        v10[3] = &unk_1E8575608;
        v10[4] = self;
        [(CHUISWidgetHostViewController *)self modifySceneSettings:v10];
      }
    }
  }
}

- (void)setShowsWidgetLabel:(BOOL)label
{
  BSDispatchQueueAssertMain();
  showsWidgetLabel = self->_showsWidgetLabel;
  if ((BSEqualBools() & 1) == 0)
  {
    self->_showsWidgetLabel = label;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __53__CHUISWidgetHostViewController_setShowsWidgetLabel___block_invoke;
    v6[3] = &unk_1E8575608;
    v6[4] = self;
    [(CHUISWidgetHostViewController *)self modifySceneSettings:v6];
  }
}

- (void)setInteractionDisabled:(BOOL)disabled
{
  BSDispatchQueueAssertMain();
  interactionDisabled = self->_interactionDisabled;
  if ((BSEqualBools() & 1) == 0)
  {
    self->_interactionDisabled = disabled;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__CHUISWidgetHostViewController_setInteractionDisabled___block_invoke;
    v6[3] = &unk_1E8575608;
    v6[4] = self;
    [(CHUISWidgetHostViewController *)self modifySceneSettings:v6];
  }
}

- (void)setVisibleEntryShouldSnapshot:(BOOL)snapshot
{
  snapshotCopy = snapshot;
  BSDispatchQueueAssertMain();
  if (self->_invalidated)
  {
    [CHUISWidgetHostViewController setVisibleEntryShouldSnapshot:];
  }

  else if (self->_visibleEntryShouldSnapshot != snapshotCopy)
  {
    self->_visibleEntryShouldSnapshot = snapshotCopy;
    if (self->_scene)
    {
      v5 = CHUISLogViewController();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [CHUISWidgetHostViewController setVisibleEntryShouldSnapshot:?];
      }

      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __63__CHUISWidgetHostViewController_setVisibleEntryShouldSnapshot___block_invoke;
      v6[3] = &unk_1E8575608;
      v6[4] = self;
      [(CHUISWidgetHostViewController *)self modifySceneSettings:v6];
    }
  }
}

- (void)setShouldShareTouchesWithHost:(BOOL)host
{
  hostCopy = host;
  BSDispatchQueueAssertMain();
  if (!self->_invalidated || !hostCopy)
  {
    if (self->_shouldShareTouchesWithHost != hostCopy)
    {
      self->_shouldShareTouchesWithHost = hostCopy;
      if (hostCopy)
      {

        [(CHUISWidgetHostViewController *)self _updateTouchDeliveryPolicies];
      }

      else
      {

        [(CHUISWidgetHostViewController *)self _clearTouchDeliveryPolicies];
      }
    }
  }

  else
  {
    [CHUISWidgetHostViewController setShouldShareTouchesWithHost:];
  }
}

- (void)_windowDidAttachToContext:(id)context
{
  object = [context object];
  v4 = objc_opt_class();
  v5 = object;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v11 = v6;

  view = [(CHUISWidgetHostViewController *)self view];
  window = [view window];
  v9 = [v11 isEqual:window];

  if (v9)
  {
    [(CHUISWidgetHostViewController *)self _clearTouchDeliveryPolicies];
    [(CHUISWidgetHostViewController *)self _updateTouchDeliveryPolicies];
  }
}

void __76__CHUISWidgetHostViewController_cancelTouchesForCurrentEventInHostedContent__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = CHUISLogViewControllerTouch();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = WeakRetained[144];
      v8 = 134218498;
      v9 = WeakRetained;
      v10 = 2114;
      v11 = v6;
      v12 = 2114;
      v13 = v3;
      _os_log_impl(&dword_1D928E000, v5, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Sending cancellation touch delivery policy failed with error: %{public}@", &v8, 0x20u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setDrawSystemBackgroundMaterialIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  BSDispatchQueueAssertMain();
  if (self->_invalidated)
  {
    [CHUISWidgetHostViewController setDrawSystemBackgroundMaterialIfNecessary:];
  }

  else if (self->_drawSystemBackgroundMaterialIfNecessary != necessaryCopy)
  {
    self->_drawSystemBackgroundMaterialIfNecessary = necessaryCopy;

    [(CHUISWidgetHostViewController *)self _updateBackgroundMaterialAndColor];
  }
}

- (id)_snapshotViewIgnoringEffects:(BOOL)effects
{
  BSDispatchQueueAssertMain();
  if (self->_invalidated)
  {
    v16 = CHUISLogViewController();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [CHUISWidgetHostViewController _snapshotViewIgnoringEffects:];
    }

    v17 = 0;
  }

  else
  {
    v5 = self->_scene;
    v47 = v5;
    if (v5)
    {
      v6 = [(FBScene *)v5 contentState]== 2;
    }

    else
    {
      v6 = 0;
    }

    v7 = CHUISHasGlobalCaptureEntitlement();
    if ((v6 & v7) == 1)
    {
      newSnapshotPresentationView = [(UIScenePresenter *)self->_scenePresenter newSnapshotPresentationView];
    }

    else
    {
      _newPersistedSnapshotView = [(CHUISWidgetHostViewController *)self _newPersistedSnapshotView];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (_newPersistedSnapshotView)
      {
        view = [(CHUISWidgetHostViewController *)self view];
        [view bounds];
        [_newPersistedSnapshotView setFrame:?];

        if (isKindOfClass)
        {
          v12 = objc_alloc(MEMORY[0x1E69DD250]);
          view2 = [(CHUISWidgetHostViewController *)self view];
          [view2 bounds];
          newSnapshotPresentationView = [v12 initWithFrame:?];

          [newSnapshotPresentationView setBackgroundColor:0];
          [newSnapshotPresentationView setAutoresizingMask:18];
          [newSnapshotPresentationView addSubview:_newPersistedSnapshotView];
        }

        else
        {
          newSnapshotPresentationView = _newPersistedSnapshotView;
        }
      }

      else
      {
        v14 = objc_alloc(MEMORY[0x1E69DD250]);
        view3 = [(CHUISWidgetHostViewController *)self view];
        [view3 bounds];
        newSnapshotPresentationView = [v14 initWithFrame:?];

        [newSnapshotPresentationView setBackgroundColor:0];
        [newSnapshotPresentationView setAutoresizingMask:18];
      }

      if (!(((self->_requestedPresentationMode & 0xFFFFFFFFFFFFFFFELL) != 2) | (v6 | v7 ^ 1) & 1))
      {
        objc_initWeak(&location, newSnapshotPresentationView);
        objc_initWeak(&from, _newPersistedSnapshotView);
        objc_initWeak(&v57, self);
        v49 = MEMORY[0x1E69E9820];
        v50 = 3221225472;
        v51 = __62__CHUISWidgetHostViewController__snapshotViewIgnoringEffects___block_invoke;
        v52 = &unk_1E8575838;
        objc_copyWeak(&v53, &location);
        objc_copyWeak(&v54, &from);
        objc_copyWeak(&v55, &v57);
        v56 = isKindOfClass & 1;
        [(CHUISWidgetHostViewController *)self _scheduleSceneContentReadyBlock:&v49];
        objc_destroyWeak(&v55);
        objc_destroyWeak(&v54);
        objc_destroyWeak(&v53);
        objc_destroyWeak(&v57);
        objc_destroyWeak(&from);
        objc_destroyWeak(&location);
      }
    }

    [(CHUISWidgetHostViewController *)self _effectiveViewCornerRadius:v47];
    [newSnapshotPresentationView _setContinuousCornerRadius:?];
    [newSnapshotPresentationView setClipsToBounds:0];
    v16 = newSnapshotPresentationView;
    v17 = v16;
    if ([(CHUISWidgetHostViewController *)self _isVibrancyEffectEnabled])
    {
      v17 = v16;
      if (!effects)
      {
        v18 = objc_alloc(MEMORY[0x1E698E818]);
        view4 = [(CHUISWidgetHostViewController *)self view];
        [view4 bounds];
        v17 = [v18 initWithFrame:?];

        vibrancyConfiguration = [(CHUISWidgetHostViewController *)self vibrancyConfiguration];
        v21 = [vibrancyConfiguration copyWithGroupName:0];
        [v17 setConfiguration:v21];

        [v16 setAutoresizingMask:18];
        contentView = [v17 contentView];
        [contentView addSubview:v16];
      }
    }

    if ([(CHSWidgetTintParameters *)self->_tintParameters wantsGlassMaterial]&& !effects)
    {
      view5 = [(CHUISWidgetHostViewController *)self view];
      [view5 bounds];
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;

      [(CHUISWidgetHostViewController *)self _effectiveCornerRadius];
      v33 = v32;
      v34 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v25, v27, v29, v31}];
      [v34 setBackgroundColor:0];
      [v34 setAutoresizingMask:18];
      [v34 _setContinuousCornerRadius:v33];
      v35 = [_TtC16ChronoUIServices23CHUISSolariumEffectView alloc];
      tintParameters = self->_tintParameters;
      effectiveBackgroundColorScheme = self->_effectiveBackgroundColorScheme;
      [(CHSWidgetMetrics *)self->_widgetMetrics cornerRadius];
      v38 = [CHUISSolariumEffectView initWithLayerType:v35 tintParameters:"initWithLayerType:tintParameters:preferredColorScheme:cornerRadius:frame:" preferredColorScheme:0 cornerRadius:tintParameters frame:effectiveBackgroundColorScheme];
      [(CHUISSolariumEffectView *)v38 setBackgroundColor:0];
      [(CHUISSolariumEffectView *)v38 setAutoresizingMask:18];
      layer = [(CHUISSolariumEffectView *)v38 layer];
      [layer setName:@"Glass Background View"];

      [(CHUISSolariumEffectView *)v38 setCornerRadius:v33];
      [(CHUISSolariumEffectView *)v38 _setContinuousCornerRadius:v33];
      v40 = [_TtC16ChronoUIServices23CHUISSolariumEffectView alloc];
      v41 = self->_tintParameters;
      v42 = self->_effectiveBackgroundColorScheme;
      [(CHSWidgetMetrics *)self->_widgetMetrics cornerRadius];
      v43 = [CHUISSolariumEffectView initWithLayerType:v40 tintParameters:"initWithLayerType:tintParameters:preferredColorScheme:cornerRadius:frame:" preferredColorScheme:1 cornerRadius:v41 frame:v42];
      [(CHUISSolariumEffectView *)v43 setBackgroundColor:0];
      [(CHUISSolariumEffectView *)v43 setAutoresizingMask:18];
      layer2 = [(CHUISSolariumEffectView *)v43 layer];
      [layer2 setName:@"Solarium Foreground View"];

      [(CHUISSolariumEffectView *)v43 setCornerRadius:v33];
      [(CHUISSolariumEffectView *)v43 _setContinuousCornerRadius:v33];
      [v34 addSubview:v38];
      [v34 addSubview:v17];
      [v34 addSubview:v43];

      v17 = v34;
    }

    layer3 = [v17 layer];
    [(CHUISWidgetHostViewController *)self _applySecurityPolicyToLayer:layer3];
  }

  return v17;
}

void __62__CHUISWidgetHostViewController__snapshotViewIgnoringEffects___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = objc_loadWeakRetained((a1 + 48));
  if (v4 && WeakRetained)
  {
    v5 = MEMORY[0x1E69DD250];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__CHUISWidgetHostViewController__snapshotViewIgnoringEffects___block_invoke_2;
    v6[3] = &unk_1E8575810;
    v10 = *(a1 + 56);
    v7 = v3;
    v8 = v4;
    v9 = WeakRetained;
    [v5 performWithoutAnimation:v6];
  }
}

void __62__CHUISWidgetHostViewController__snapshotViewIgnoringEffects___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) removeFromSuperview];
  }

  v4 = [*(*(a1 + 40) + 1008) newSnapshot];
  if ([v4 capture])
  {
    v2 = [v4 IOSurface];
    if (!v2)
    {
      v2 = [v4 CGImage];
    }

    v3 = [*(a1 + 48) layer];
    [v3 setContents:v2];
  }
}

- (CHSWidgetRenderScheme)renderScheme
{
  BSDispatchQueueAssertMain();
  renderScheme = self->_renderScheme;

  return renderScheme;
}

- (void)setRenderScheme:(id)scheme
{
  schemeCopy = scheme;
  BSDispatchQueueAssertMain();
  self->_didSetRenderSchemeExplicitly = 1;
  [(CHUISWidgetHostViewController *)self _implicitSetRenderScheme:schemeCopy];
}

- (void)_implicitSetRenderScheme:(id)scheme
{
  v22 = *MEMORY[0x1E69E9840];
  schemeCopy = scheme;
  if (([(CHSWidgetRenderScheme *)self->_renderScheme isEqual:schemeCopy]& 1) == 0)
  {
    usesSystemBackgroundMaterial = [(CHUISWidgetHostViewController *)self usesSystemBackgroundMaterial];
    if ([(CHUISWidgetHostViewController *)self _emulatesFallbackTreatment])
    {
      v6 = [objc_alloc(MEMORY[0x1E6994420]) initWithRenderingMode:0 backgroundViewPolicy:3];
    }

    else
    {
      v6 = [schemeCopy copy];
    }

    renderScheme = self->_renderScheme;
    self->_renderScheme = v6;

    v8 = CHUISLogViewController();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      cachedSceneLogDigest = self->_cachedSceneLogDigest;
      v10 = self->_renderScheme;
      *buf = 134218498;
      selfCopy = self;
      v18 = 2114;
      v19 = cachedSceneLogDigest;
      v20 = 2114;
      v21 = v10;
      _os_log_impl(&dword_1D928E000, v8, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Render scheme changed to: %{public}@", buf, 0x20u);
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __58__CHUISWidgetHostViewController__implicitSetRenderScheme___block_invoke;
    v15[3] = &unk_1E8575608;
    v15[4] = self;
    [(CHUISWidgetHostViewController *)self modifySceneSettings:v15];
    if (usesSystemBackgroundMaterial != [(CHUISWidgetHostViewController *)self usesSystemBackgroundMaterial])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        v13 = objc_loadWeakRetained(&self->_delegate);
        [v13 widgetHostViewControllerUsesSystemBackgroundMaterialDidChange:self];
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (unint64_t)backgroundViewPolicy
{
  BSDispatchQueueAssertMain();
  renderScheme = self->_renderScheme;

  return [(CHSWidgetRenderScheme *)renderScheme backgroundViewPolicy];
}

- (void)setBackgroundViewPolicy:(unint64_t)policy
{
  BSDispatchQueueAssertMain();
  if ([(CHUISWidgetHostViewController *)self backgroundViewPolicy]!= policy)
  {
    v5 = [(CHSWidgetRenderScheme *)self->_renderScheme mutableCopy];
    [v5 setBackgroundViewPolicy:policy];
    [(CHUISWidgetHostViewController *)self _implicitSetRenderScheme:v5];
  }
}

- (void)setWantsBaseContentTouchEvents:(BOOL)events
{
  if (self->_wantsBaseContentTouchEvents != events)
  {
    self->_wantsBaseContentTouchEvents = events;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __64__CHUISWidgetHostViewController_setWantsBaseContentTouchEvents___block_invoke;
    v3[3] = &unk_1E8575608;
    v3[4] = self;
    [(CHUISWidgetHostViewController *)self modifySceneSettings:v3];
  }
}

- (void)setRenderingScale:(double)scale
{
  if (self->_renderingScale != scale)
  {
    self->_renderingScale = scale;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __51__CHUISWidgetHostViewController_setRenderingScale___block_invoke;
    v3[3] = &unk_1E8575608;
    v3[4] = self;
    [(CHUISWidgetHostViewController *)self modifySceneSettings:v3];
  }
}

- (void)setProximity:(int64_t)proximity
{
  if (self->_proximity != proximity)
  {
    self->_proximity = proximity;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __46__CHUISWidgetHostViewController_setProximity___block_invoke;
    v3[3] = &unk_1E8575608;
    v3[4] = self;
    [(CHUISWidgetHostViewController *)self modifySceneSettings:v3];
  }
}

- (void)setMetricsDefineSize:(BOOL)size
{
  metricsDefineSize = self->_metricsDefineSize;
  if ((BSEqualBools() & 1) == 0)
  {
    self->_metricsDefineSize = size;

    [(CHUISWidgetHostViewController *)self _updateViewsCornerRadius];
  }
}

- (void)setClipBehavior:(unint64_t)behavior
{
  if (self->_clipBehavior != behavior)
  {
    v6[7] = v3;
    v6[8] = v4;
    self->_clipBehavior = behavior;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__CHUISWidgetHostViewController_setClipBehavior___block_invoke;
    v6[3] = &__block_descriptor_40_e78___UIApplicationSceneTransitionContext_16__0__CHUISMutableWidgetSceneSettings_8l;
    v6[4] = behavior;
    [(CHUISWidgetHostViewController *)self modifySceneSettings:v6];
    [(CHUISWidgetHostViewController *)self _updateViewsCornerRadius];
  }
}

- (void)setWidgetPriority:(unint64_t)priority
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_widgetPriority != priority)
  {
    self->_widgetPriority = priority;
    v4 = CHUISLogViewController();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      cachedSceneLogDigest = self->_cachedSceneLogDigest;
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_widgetPriority];
      *buf = 134218498;
      selfCopy = self;
      v11 = 2114;
      v12 = cachedSceneLogDigest;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_1D928E000, v4, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Widget priority changed to %@", buf, 0x20u);
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__CHUISWidgetHostViewController_setWidgetPriority___block_invoke;
    v8[3] = &unk_1E8575608;
    v8[4] = self;
    [(CHUISWidgetHostViewController *)self modifySceneSettings:v8];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)logDebug:(id)debug
{
  v17 = *MEMORY[0x1E69E9840];
  debugCopy = debug;
  v5 = CHUISLogViewController();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    v7 = CHUISLogViewController();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      cachedSceneLogDigest = self->_cachedSceneLogDigest;
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:debugCopy arguments:&v18];
      *buf = 134218498;
      selfCopy = self;
      v13 = 2114;
      v14 = cachedSceneLogDigest;
      v15 = 2114;
      v16 = v10;
      _os_log_debug_impl(&dword_1D928E000, v7, OS_LOG_TYPE_DEBUG, "[%p-%{public}@] %{public}@", buf, 0x20u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)log:(id)log
{
  v17 = *MEMORY[0x1E69E9840];
  logCopy = log;
  v5 = CHUISLogViewController();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = CHUISLogViewController();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      cachedSceneLogDigest = self->_cachedSceneLogDigest;
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:logCopy arguments:&v18];
      *buf = 134218498;
      selfCopy = self;
      v13 = 2114;
      v14 = cachedSceneLogDigest;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_1D928E000, v7, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] %{public}@", buf, 0x20u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_flushBatchUpdatesIfNecessaryForReason:(id)reason
{
  v17 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v5 = CHUISLogViewController();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    cachedSceneLogDigest = self->_cachedSceneLogDigest;
    *buf = 134218498;
    selfCopy = self;
    v13 = 2114;
    v14 = cachedSceneLogDigest;
    v15 = 2114;
    v16 = reasonCopy;
    _os_log_impl(&dword_1D928E000, v5, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Flushing batched updates for reason: %{public}@", buf, 0x20u);
  }

  if ([(NSMutableArray *)self->_pendingUpdateBlocks count])
  {
    scene = self->_scene;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __72__CHUISWidgetHostViewController__flushBatchUpdatesIfNecessaryForReason___block_invoke;
    v10[3] = &unk_1E8575860;
    v10[4] = self;
    [(FBScene *)scene updateSettingsWithTransitionBlock:v10];
    pendingUpdateBlocks = self->_pendingUpdateBlocks;
    self->_pendingUpdateBlocks = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
}

id __72__CHUISWidgetHostViewController__flushBatchUpdatesIfNecessaryForReason___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *(*(a1 + 32) + 1496);
  v5 = 0;
  v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = _Block_copy(*(*(&v15 + 1) + 8 * i));
        v10 = v9[2](v9, v3);
        v11 = v10;
        if (v10)
        {
          v12 = v5 == 0;
        }

        else
        {
          v12 = 0;
        }

        if (v12)
        {
          v5 = v10;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  [*(a1 + 32) willModifySceneSettings:{v3, v15}];
  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)performBatchUpdate:(id)update
{
  v19 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  ++self->_batchUpdateCount;
  v5 = CHUISLogViewController();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    cachedSceneLogDigest = self->_cachedSceneLogDigest;
    batchUpdateCount = self->_batchUpdateCount;
    v13 = 134218498;
    selfCopy2 = self;
    v15 = 2114;
    v16 = cachedSceneLogDigest;
    v17 = 2048;
    v18 = batchUpdateCount;
    _os_log_impl(&dword_1D928E000, v5, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Batched update begin (%lu).", &v13, 0x20u);
  }

  updateCopy[2](updateCopy);
  --self->_batchUpdateCount;
  v8 = CHUISLogViewController();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_cachedSceneLogDigest;
    v10 = self->_batchUpdateCount;
    v13 = 134218498;
    selfCopy2 = self;
    v15 = 2114;
    v16 = v9;
    v17 = 2048;
    v18 = v10;
    _os_log_impl(&dword_1D928E000, v8, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Batched update end (%lu).", &v13, 0x20u);
  }

  if (!self->_batchUpdateCount)
  {
    [(CHUISWidgetHostViewController *)self _flushBatchUpdatesIfNecessaryForReason:@"Batch End"];
    pendingUpdateBlocks = self->_pendingUpdateBlocks;
    self->_pendingUpdateBlocks = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)modifySceneSettings:(id)settings
{
  settingsCopy = settings;
  v5 = settingsCopy;
  if (self->_batchUpdateCount)
  {
    pendingUpdateBlocks = self->_pendingUpdateBlocks;
    if (!pendingUpdateBlocks)
    {
      array = [MEMORY[0x1E695DF70] array];
      v8 = self->_pendingUpdateBlocks;
      self->_pendingUpdateBlocks = array;

      pendingUpdateBlocks = self->_pendingUpdateBlocks;
    }

    v9 = _Block_copy(v5);
    [(NSMutableArray *)pendingUpdateBlocks addObject:v9];
  }

  else
  {
    scene = self->_scene;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__CHUISWidgetHostViewController_modifySceneSettings___block_invoke;
    v11[3] = &unk_1E8575888;
    v11[4] = self;
    v12 = settingsCopy;
    [(FBScene *)scene updateSettingsWithTransitionBlock:v11];
  }
}

id __53__CHUISWidgetHostViewController_modifySceneSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) willModifySceneSettings:v3];

  return v4;
}

- (void)sceneDidUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings newClientSettings:(id)clientSettings transitionContext:(id)context
{
  v29 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  clientSettingsCopy = clientSettings;
  containsInteractiveControls = [settingsCopy containsInteractiveControls];
  if (containsInteractiveControls != [clientSettingsCopy containsInteractiveControls])
  {
    delegate = [(CHUISWidgetHostViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate widgetHostViewControllerContainsInteractiveControlsDidChange:self];
    }
  }

  baseContentTouchedDown = [settingsCopy baseContentTouchedDown];
  if (baseContentTouchedDown != [clientSettingsCopy baseContentTouchedDown] && self->_wantsBaseContentTouchEvents)
  {
    delegate2 = [(CHUISWidgetHostViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v14 = -[CHUISTouchEvent initWithBaseContentTouchedDown:]([CHUISTouchEvent alloc], "initWithBaseContentTouchedDown:", [clientSettingsCopy baseContentTouchedDown]);
      [delegate2 widgetHostViewController:self receivedTouchEvent:v14];
    }
  }

  entryContentType = [settingsCopy entryContentType];
  if (entryContentType != [clientSettingsCopy entryContentType])
  {
    v16 = CHUISLogViewController();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      cachedSceneLogDigest = self->_cachedSceneLogDigest;
      v18 = NSStringFromCHUISWidgetEntryContentType([settingsCopy entryContentType]);
      v19 = NSStringFromCHUISWidgetEntryContentType([clientSettingsCopy entryContentType]);
      v21 = 134218754;
      selfCopy = self;
      v23 = 2114;
      v24 = cachedSceneLogDigest;
      v25 = 2114;
      v26 = v18;
      v27 = 2114;
      v28 = v19;
      _os_log_impl(&dword_1D928E000, v16, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Entry content type did change from %{public}@ to %{public}@.", &v21, 0x2Au);
    }

    [(CHUISWidgetHostViewController *)self _updateToLiveContentFromLiveSnapshotIfPossible];
    [(CHUISWidgetHostViewController *)self _transitionFromSnapshotToLiveContentIfNecessary];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (BOOL)_transitionFromSnapshotToLiveContentIfNecessary
{
  v13 = *MEMORY[0x1E69E9840];
  clientSettings = [(FBScene *)self->_scene clientSettings];
  if (![clientSettings entryContentType] || self->_effectivePresentationMode != 2)
  {

    goto LABEL_8;
  }

  contentState = [(FBScene *)self->_scene contentState];

  if (contentState != 2)
  {
LABEL_8:
    result = 0;
    goto LABEL_9;
  }

  v5 = CHUISLogViewController();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    cachedSceneLogDigest = self->_cachedSceneLogDigest;
    v9 = 134218242;
    selfCopy = self;
    v11 = 2114;
    v12 = cachedSceneLogDigest;
    _os_log_impl(&dword_1D928E000, v5, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Transitioning from snapshot to live content.", &v9, 0x16u);
  }

  [(CHUISWidgetHostViewController *)self _invalidateTransitionFromSnapshotToLiveContentDeadlineTimerWithReason:@"Transitioning to live content."];
  [(CHUISWidgetHostViewController *)self _hideSnapshotViewsAnimated:!self->_pendingSnapshotInProgress reason:@"transitionFromSnapshotToLiveContent"];
  result = 1;
LABEL_9:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (CGImage)_createCGImageFromNSData:(id)data
{
  v4 = CGImageSourceCreateWithData(data, 0);
  if (!v4)
  {
    v7 = CHUISLogViewController();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CHUISWidgetHostViewController _createCGImageFromNSData:?];
    }

    goto LABEL_7;
  }

  v5 = v4;
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v4, 0, 0);
  CFRelease(v5);
  if (!ImageAtIndex)
  {
    v7 = CHUISLogViewController();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CHUISWidgetHostViewController _createCGImageFromNSData:?];
    }

LABEL_7:

    return 0;
  }

  return ImageAtIndex;
}

- (CHUISWidgetVisibilitySettings)_visibilitySettings
{
  BSDispatchQueueAssertMain();
  visibilitySettings = self->_visibilitySettings;

  return visibilitySettings;
}

- (void)_setVisibilitySettings:(id)settings
{
  settingsCopy = settings;
  BSDispatchQueueAssertMain();
  if (![(CHUISWidgetVisibilitySettings *)self->_visibilitySettings isEqual:settingsCopy])
  {
    v5 = [settingsCopy copy];
    visibilitySettings = self->_visibilitySettings;
    self->_visibilitySettings = v5;

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__CHUISWidgetHostViewController__setVisibilitySettings___block_invoke;
    v7[3] = &unk_1E8575608;
    v7[4] = self;
    [(CHUISWidgetHostViewController *)self modifySceneSettings:v7];
  }
}

- (void)ensureContentWithTimeout:(double)timeout completion:(id)completion
{
  v31[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  BSDispatchQueueAssertMain();
  if (self->_scene)
  {
    widgetPriority = self->_widgetPriority;
    if (widgetPriority != 1)
    {
      LOBYTE(widgetPriority) = self->_disableViewTransitionAnimations;
    }

    self->_pendingSnapshotInProgress = widgetPriority & 1;
    v9 = CHUISLogViewController();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      cachedSceneLogDigest = self->_cachedSceneLogDigest;
      *buf = 134218498;
      selfCopy = self;
      v26 = 2114;
      v27 = cachedSceneLogDigest;
      v28 = 2048;
      timeoutCopy = timeout;
      _os_log_impl(&dword_1D928E000, v9, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Sending content confirmation action: timeout=%f)", buf, 0x20u);
    }

    v11 = [CHUISContentConfirmationAction alloc];
    v12 = MEMORY[0x1E69E96A0];
    v13 = MEMORY[0x1E69E96A0];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __69__CHUISWidgetHostViewController_ensureContentWithTimeout_completion___block_invoke;
    v21[3] = &unk_1E8575900;
    v21[4] = self;
    v22 = completionCopy;
    v23 = a2;
    v14 = [(CHUISContentConfirmationAction *)v11 initWithTimeout:v12 queue:v21 completion:timeout];

    scene = self->_scene;
    v16 = [MEMORY[0x1E695DFD8] setWithObject:v14];
    [(FBScene *)scene sendActions:v16];
  }

  else
  {
    v17 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A578];
    v31[0] = @"Missing scene";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v19 = [v17 errorWithDomain:@"com.apple.chrono.widgethost" code:888 userInfo:v18];
    (*(completionCopy + 2))(completionCopy, v19);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __69__CHUISWidgetHostViewController_ensureContentWithTimeout_completion___block_invoke(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = CHUISLogViewController();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(v5 + 1152);
      *buf = 134218498;
      *&buf[4] = v5;
      *&buf[12] = 2114;
      *&buf[14] = v6;
      *&buf[22] = 2112;
      v39 = v3;
      _os_log_impl(&dword_1D928E000, v4, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Received content confirmation action error: %@", buf, 0x20u);
    }

    *(*(a1 + 32) + 1483) = 0;
    (*(*(a1 + 40) + 16))();
  }

  else if ([*(*(a1 + 32) + 1016) contentState] == 2)
  {
    v7 = CHUISLogViewController();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(v8 + 1152);
      *buf = 134218242;
      *&buf[4] = v8;
      *&buf[12] = 2114;
      *&buf[14] = v9;
      _os_log_impl(&dword_1D928E000, v7, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Received content confirmation action success!", buf, 0x16u);
    }

    v10 = *(a1 + 32);
    if (*(v10 + 1483) == 1)
    {
      *(v10 + 1483) = 0;
      [*(a1 + 32) _hideSnapshotViewsAnimated:0 forceCompleteTeardown:1 reason:@"ensureContent"];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11 = CHUISLogViewController();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = *(v12 + 1152);
      *buf = 134218242;
      *&buf[4] = v12;
      *&buf[12] = 2114;
      *&buf[14] = v13;
      _os_log_impl(&dword_1D928E000, v11, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Received content confirmation action response, but raced with content ready response.  Waiting for content to be ready.", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v39 = __Block_byref_object_copy__0;
    v40 = __Block_byref_object_dispose__0;
    v14 = objc_alloc(MEMORY[0x1E698E660]);
    v15 = MEMORY[0x1E696AEC0];
    v16 = *(*(a1 + 32) + 1152);
    v17 = [MEMORY[0x1E696AFB0] UUID];
    v18 = [v17 UUIDString];
    v19 = [v15 stringWithFormat:@"<WaitForContentReadyTimer-%@-%@>", v16, v18];
    v41 = [v14 initWithIdentifier:v19];

    v20 = MEMORY[0x1E698E630];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __69__CHUISWidgetHostViewController_ensureContentWithTimeout_completion___block_invoke_235;
    v34[3] = &unk_1E85758B0;
    v21 = *(a1 + 40);
    v34[4] = *(a1 + 32);
    v22 = v21;
    v23 = *(a1 + 48);
    v35 = v22;
    v36 = buf;
    v37 = v23;
    v24 = [v20 sentinelWithQueue:MEMORY[0x1E69E96A0] signalHandler:v34];
    v25 = *(*&buf[8] + 40);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __69__CHUISWidgetHostViewController_ensureContentWithTimeout_completion___block_invoke_244;
    v32[3] = &unk_1E85758D8;
    v26 = v24;
    v33 = v26;
    [v25 scheduleWithFireInterval:MEMORY[0x1E69E96A0] leewayInterval:v32 queue:3.0 handler:0.0];

    v27 = *(a1 + 32);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __69__CHUISWidgetHostViewController_ensureContentWithTimeout_completion___block_invoke_2;
    v30[3] = &unk_1E85754D0;
    v28 = v26;
    v31 = v28;
    [v27 _scheduleSceneContentReadyBlock:v30];

    _Block_object_dispose(buf, 8);
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __69__CHUISWidgetHostViewController_ensureContentWithTimeout_completion___block_invoke_235(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [a2 context];
  if (v3)
  {
    v4 = CHUISLogViewController();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(v5 + 1152);
      v15 = 134218242;
      v16 = v5;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&dword_1D928E000, v4, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Timed out waiting for content ready for content confirmation action.", &v15, 0x16u);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"CHUISWidgetHostViewController.m" lineNumber:1825 description:@"Context must be an error"];
    }

    *(*(a1 + 32) + 1483) = 0;
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = CHUISLogViewController();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(v8 + 1152);
      v15 = 134218242;
      v16 = v8;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&dword_1D928E000, v7, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Received content ready response for content confirmation action. Success!", &v15, 0x16u);
    }

    v10 = *(a1 + 32);
    if (*(v10 + 1483) == 1)
    {
      *(v10 + 1483) = 0;
      [*(a1 + 32) _hideSnapshotViewsAnimated:0 forceCompleteTeardown:1 reason:@"ensureContent"];
    }

    (*(*(a1 + 40) + 16))();
  }

  [*(*(*(a1 + 48) + 8) + 40) invalidate];
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;

  v13 = *MEMORY[0x1E69E9840];
}

void __69__CHUISWidgetHostViewController_ensureContentWithTimeout_completion___block_invoke_244(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A578];
  v7[0] = @"Timed out waiting for content to be ready.";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 errorWithDomain:@"com.apple.chrono.widgethost" code:777 userInfo:v3];
  [v1 signalWithContext:v4];

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __69__CHUISWidgetHostViewController_ensureContentWithTimeout_completion___block_invoke_2(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  v2 = *(a1 + 32);

  return [v2 signal];
}

- (void)_scheduleSceneContentReadyBlock:(id)block
{
  blockCopy = block;
  waitForSceneContentReadyBlocks = self->_waitForSceneContentReadyBlocks;
  aBlock = blockCopy;
  if (!waitForSceneContentReadyBlocks)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_waitForSceneContentReadyBlocks;
    self->_waitForSceneContentReadyBlocks = array;

    waitForSceneContentReadyBlocks = self->_waitForSceneContentReadyBlocks;
    blockCopy = aBlock;
  }

  v8 = _Block_copy(blockCopy);
  [(NSMutableArray *)waitForSceneContentReadyBlocks addObject:v8];
}

- (void)snapshotContentWithTimeout:(double)timeout queue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__CHUISWidgetHostViewController_snapshotContentWithTimeout_queue_completion___block_invoke;
  v12[3] = &unk_1E8575978;
  v12[4] = self;
  v13 = queueCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = queueCopy;
  [(CHUISWidgetHostViewController *)self ensureContentWithTimeout:v12 completion:timeout];
}

void __77__CHUISWidgetHostViewController_snapshotContentWithTimeout_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  BSDispatchQueueAssertMain();
  if (v3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__CHUISWidgetHostViewController_snapshotContentWithTimeout_queue_completion___block_invoke_3;
    block[3] = &unk_1E8575950;
    v4 = *(a1 + 40);
    v12 = *(a1 + 48);
    v11 = v3;
    dispatch_async(v4, block);

    v5 = v12;
  }

  else
  {
    v5 = [*(*(a1 + 32) + 1016) snapshotContext];
    [v5 setOpaque:{objc_msgSend(*(a1 + 32), "_actualBackgroundViewMode") == 1}];
    v6 = [*(*(a1 + 32) + 1016) createSnapshotWithContext:v5];
    [*(a1 + 32) _currentDisplayScale];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __77__CHUISWidgetHostViewController_snapshotContentWithTimeout_queue_completion___block_invoke_2;
    v13[3] = &unk_1E8575928;
    v14 = v6;
    v16 = v7;
    v8 = *(a1 + 40);
    v15 = *(a1 + 48);
    v9 = v6;
    dispatch_async(v8, v13);
  }
}

void __77__CHUISWidgetHostViewController_snapshotContentWithTimeout_queue_completion___block_invoke_2(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) capture])
  {
    v8 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:objc_msgSend(*(a1 + 32) scale:"CGImage") orientation:{0, *(a1 + 48)}];
    (*(*(a1 + 40) + 16))();
    v2 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A578];
    v10[0] = @"Unable to snapshot scene.";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v6 = [v4 errorWithDomain:@"com.apple.chrono.widgethost" code:555 userInfo:v5];
    (*(v3 + 16))(v3, 0, v6);

    v7 = *MEMORY[0x1E69E9840];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(CHUISWidgetHostViewController *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_widget withName:@"widget"];
  v5 = [v3 appendObject:self->_metrics withName:@"metrics"];
  contentType = self->_contentType;
  v7 = NSStringFromCHSWidgetContentType();
  v8 = [v3 appendObject:v7 withName:@"contentType"];

  v9 = self->_requestedPresentationMode - 1;
  if (v9 > 2)
  {
    v10 = @"none";
  }

  else
  {
    v10 = off_1E8575C78[v9];
  }

  v11 = [v3 appendObject:v10 withName:@"requestedMode"];
  v12 = self->_effectivePresentationMode - 1;
  if (v12 > 2)
  {
    v13 = @"none";
  }

  else
  {
    v13 = off_1E8575C78[v12];
  }

  v14 = [v3 appendObject:v13 withName:@"effectiveMode"];
  v15 = [v3 appendBool:self->_invalidated withName:@"invalidated"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(CHUISWidgetHostViewController *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(CHUISWidgetHostViewController *)self succinctDescriptionBuilder];

  return succinctDescriptionBuilder;
}

- (void)invalidate
{
  v12 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssertMain();
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    visibilitySettings = self->_visibilitySettings;
    self->_visibilitySettings = 0;

    objc_storeWeak(&self->_delegate, 0);
    [(CHSWidgetExtensionProvider *)self->_extensionProvider unregisterObserver:self];
    v4 = CHUISLogViewController();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      cachedSceneLogDigest = self->_cachedSceneLogDigest;
      v8 = 134218242;
      selfCopy = self;
      v10 = 2114;
      v11 = cachedSceneLogDigest;
      _os_log_impl(&dword_1D928E000, v4, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Invalidated", &v8, 0x16u);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69DEB08] object:0];

    [(CHUISWidgetHostViewController *)self _tearDownScene];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)extensionsDidChangeForExtensionProvider:(id)provider
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__CHUISWidgetHostViewController_extensionsDidChangeForExtensionProvider___block_invoke;
  block[3] = &unk_1E85754D0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __73__CHUISWidgetHostViewController_extensionsDidChangeForExtensionProvider___block_invoke(uint64_t a1)
{
  v2 = CHUISLogViewControllerTouch();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __73__CHUISWidgetHostViewController_extensionsDidChangeForExtensionProvider___block_invoke_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  return [*(a1 + 32) _updateDescriptorIfNecessary];
}

- (id)scene:(id)scene handleActions:(id)actions
{
  v47 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  actionsCopy = actions;
  BSDispatchQueueAssertMain();
  v5 = CHUISLogViewController();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    cachedSceneLogDigest = self->_cachedSceneLogDigest;
    *buf = 134218498;
    selfCopy = self;
    v43 = 2114;
    v44 = cachedSceneLogDigest;
    v45 = 2114;
    v46 = actionsCopy;
    _os_log_impl(&dword_1D928E000, v5, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Received actions: %{public}@", buf, 0x20u);
  }

  if (!self->_invalidated)
  {
    v8 = [MEMORY[0x1E695DFA8] setWithSet:actionsCopy];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = actionsCopy;
    v9 = 0;
    v10 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v10)
    {
      v11 = *v37;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v37 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v36 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = objc_opt_class();
            v15 = v13;
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

            v17 = v16;

            v9 = v17;
            [v8 removeObject:v15];
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(CHUISWidgetHostViewController *)self _snapshotDidChange];
            [v8 removeObject:v13];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v10);

      if (!v9)
      {
        goto LABEL_30;
      }

      launchRequest = [v9 launchRequest];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v20 = objc_opt_respondsToSelector();

      if (((launchRequest != 0) & v20) == 1)
      {
        v21 = objc_loadWeakRetained(&self->_delegate);
        [v21 widgetHostViewController:self requestsLaunch:launchRequest];
      }

      else
      {
        action = [launchRequest action];
        if (!action)
        {
          goto LABEL_29;
        }

        v23 = objc_loadWeakRetained(&self->_delegate);
        v24 = objc_opt_respondsToSelector();

        if ((v24 & 1) == 0)
        {
          goto LABEL_29;
        }

        v21 = objc_loadWeakRetained(&self->_delegate);
        launchAction = [launchRequest launchAction];
        [v21 widgetHostViewController:self requestsLaunchWithAction:launchAction];
      }
    }

    else
    {
      launchRequest = obj;
    }

LABEL_29:

LABEL_30:
    sceneCopy = [(CHUISWidgetHostViewController *)self handleActions:v8, sceneCopy];
    v27 = [sceneCopy mutableCopy];

    if ([v27 count])
    {
      v28 = [(BLSHBacklightFBSceneEnvironmentActionHandler *)self->_sceneBacklightActionHandler respondToActions:v27 forFBScene:sceneCopy];
      v29 = [v28 mutableCopy];
    }

    else
    {
      v29 = v27;
    }

    v7 = [obj mutableCopy];
    [v7 minusSet:v29];

    goto LABEL_34;
  }

  v7 = 0;
LABEL_34:

  v30 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)sceneDidDeactivate:(id)deactivate withContext:(id)context
{
  v24 = *MEMORY[0x1E69E9840];
  deactivateCopy = deactivate;
  contextCopy = context;
  BSDispatchQueueAssertMain();
  if (self->_scene == deactivateCopy)
  {
    v8 = CHUISLogViewController();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      cachedSceneLogDigest = self->_cachedSceneLogDigest;
      error = [contextCopy error];
      v18 = 134218498;
      selfCopy3 = self;
      v20 = 2114;
      v21 = cachedSceneLogDigest;
      v22 = 2114;
      v23 = error;
    }

    [(FBScene *)self->_scene configureParameters:&__block_literal_global_270];
    settings = [(FBScene *)deactivateCopy settings];
    isForeground = [settings isForeground];

    if (!self->_invalidated)
    {
      if (isForeground)
      {
        if ([(CHUISWidgetHostViewController *)self _canLiveSnapshot]&& self->_requestedPresentationMode == 2)
        {
          [(CHUISWidgetHostViewController *)self _setEffectivePresentationMode:3 reason:@"WidgetRenderer died; moving to LiveSnapshot in the interim" forceExistingRebuild:1 allowCreatingScene:0];
        }

        v13 = CHUISLogViewController();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = self->_cachedSceneLogDigest;
          v18 = 134218242;
          selfCopy3 = self;
          v20 = 2114;
          v21 = v14;
          _os_log_impl(&dword_1D928E000, v13, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Scene deactivated but was foreground - reactivating.", &v18, 0x16u);
        }

        [(CHUISWidgetHostViewController *)self _flushBatchUpdatesIfNecessaryForReason:@"Activate Scene on Deactivate from Foreground"];
        [(FBScene *)deactivateCopy activateWithTransitionContext:0];
      }

      else
      {
        v15 = CHUISLogViewController();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = self->_cachedSceneLogDigest;
          v18 = 134218242;
          selfCopy3 = self;
          v20 = 2114;
          v21 = v16;
          _os_log_impl(&dword_1D928E000, v15, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Scene deactivated but was background - invalidating.", &v18, 0x16u);
        }

        [(CHUISWidgetHostViewController *)self _tearDownScene];
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)sceneContentStateDidChange:(id)change
{
  v21 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  BSDispatchQueueAssertMain();
  v5 = CHUISLogViewController();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    cachedSceneLogDigest = self->_cachedSceneLogDigest;
    [changeCopy contentState];
    v7 = NSStringFromFBSceneContentState();
    *buf = 134218498;
    selfCopy = self;
    v17 = 2114;
    v18 = cachedSceneLogDigest;
    v19 = 2114;
    v20 = v7;
    _os_log_impl(&dword_1D928E000, v5, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Content state did change to %{public}@", buf, 0x20u);
  }

  if ([changeCopy contentState] == 2)
  {
    [(CHUISWidgetHostViewController *)self _executeSceneContentReadyOperations];
    effectivePresentationMode = self->_effectivePresentationMode;
    if (effectivePresentationMode == 3)
    {
      requestedPresentationMode = self->_requestedPresentationMode;
      if (requestedPresentationMode == 2)
      {
        [(CHUISWidgetHostViewController *)self _updateToLiveContentFromLiveSnapshotIfPossible];
      }

      else if (requestedPresentationMode == 3)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __60__CHUISWidgetHostViewController_sceneContentStateDidChange___block_invoke;
        block[3] = &unk_1E85754D0;
        block[4] = self;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }

      effectivePresentationMode = self->_effectivePresentationMode;
    }

    if (effectivePresentationMode == 2)
    {
      [(CHUISWidgetHostViewController *)self _setupTransitionFromSnapshotToLiveContentDeadlineTimerIfNecessary];
      [(CHUISWidgetHostViewController *)self _transitionFromSnapshotToLiveContentIfNecessary];
    }
  }

  else
  {
    v10 = MEMORY[0x1E696AEC0];
    [changeCopy contentState];
    v11 = NSStringFromFBSceneContentState();
    v12 = [v10 stringWithFormat:@"Scene content state changed to %@", v11];
    [(CHUISWidgetHostViewController *)self _invalidateTransitionFromSnapshotToLiveContentDeadlineTimerWithReason:v12];
  }

  [(CHUISWidgetHostViewController *)self _updateBackgroundMaterialAndColor];

  v13 = *MEMORY[0x1E69E9840];
}

void *__60__CHUISWidgetHostViewController_sceneContentStateDidChange___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[169] == 3)
  {
    [result _ensureAndEvaluateSnapshotView:@"sceneContentStateDidChange"];
    v3 = *(a1 + 32);

    return [v3 _updateSceneToForeground:0];
  }

  return result;
}

- (void)_invalidateTransitionFromSnapshotToLiveContentDeadlineTimerWithReason:(id)reason
{
  reasonCopy = reason;
  if (self->_transitionFromSnapshotToLiveDeadlineTimer)
  {
    v5 = CHUISLogViewController();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [CHUISWidgetHostViewController _invalidateTransitionFromSnapshotToLiveContentDeadlineTimerWithReason:?];
    }

    [(BSContinuousMachTimer *)self->_transitionFromSnapshotToLiveDeadlineTimer invalidate];
    transitionFromSnapshotToLiveDeadlineTimer = self->_transitionFromSnapshotToLiveDeadlineTimer;
    self->_transitionFromSnapshotToLiveDeadlineTimer = 0;
  }
}

- (void)_setupTransitionFromSnapshotToLiveContentDeadlineTimerIfNecessary
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(self + 1152);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_1D928E000, v2, v3, "[%p-%{public}@] Creating transition from snapshot to live deadline timer.", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __98__CHUISWidgetHostViewController__setupTransitionFromSnapshotToLiveContentDeadlineTimerIfNecessary__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = CHUISLogViewController();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = WeakRetained[144];
      v6 = 134218242;
      v7 = WeakRetained;
      v8 = 2114;
      v9 = v4;
      _os_log_impl(&dword_1D928E000, v3, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Transition from snapshot to live deadline timer fired.", &v6, 0x16u);
    }

    if (WeakRetained[169] == 2)
    {
      [WeakRetained _invalidateTransitionFromSnapshotToLiveContentDeadlineTimerWithReason:@"Deadline fired"];
      [WeakRetained _hideSnapshotViewsAnimated:*(*(a1 + 32) + 1483) == 0 reason:@"Deadline timer fired for transitionFromSnapshotToLiveContent"];
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  BSDispatchQueueAssertMain();
  previousSettings = [settingsCopy previousSettings];
  transitionContext = [settingsCopy transitionContext];
  if (previousSettings)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      [currentHandler handleFailureInMethod:a2 object:self file:@"CHUISWidgetHostViewController.m" lineNumber:2119 description:{@"Invalid type of client settings received: %@", v17}];
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"CHUISWidgetHostViewController.m" lineNumber:2121 description:{@"Invalid type of transition context received: %@", v14}];
  }

  settingsDiff = [settingsCopy settingsDiff];
  clientSettings = [sceneCopy clientSettings];
  [(CHUISWidgetHostViewController *)self sceneDidUpdateClientSettingsWithDiff:settingsDiff oldClientSettings:previousSettings newClientSettings:clientSettings transitionContext:transitionContext];
}

- (BOOL)_isContentEffectivelyTransparent
{
  if (([(CHSWidgetDescriptor *)self->_descriptor preferredBackgroundStyle]- 1) < 2)
  {
    return 1;
  }

  backgroundViewPolicy = [(CHSWidgetRenderScheme *)self->_renderScheme backgroundViewPolicy];
  if ((backgroundViewPolicy - 1) < 2)
  {
    return 1;
  }

  if (backgroundViewPolicy == 3)
  {
    return [(CHSWidgetTintParameters *)self->_tintParameters wantsGlassMaterial]^ 1;
  }

  return 0;
}

- (void)_snapshotDidChange
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(self + 1152);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_1D928E000, v2, v3, "[%p-%{public}@] Snapshot changed.", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (id)_newPersistedSnapshotView
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = CHUISLogViewController();
  v4 = v3;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    LOWORD(v28) = 0;
    _os_signpost_emit_with_name_impl(&dword_1D928E000, v4, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "FetchPersistedSnapshot", "", &v28, 2u);
  }

  _persistedSnapshotContext = [(CHUISWidgetHostViewController *)self _persistedSnapshotContext];
  v7 = _persistedSnapshotContext;
  if (_persistedSnapshotContext)
  {
    if ([_persistedSnapshotContext needsCAPackage])
    {
      v8 = objc_alloc(MEMORY[0x1E69DD3B0]);
      v9 = [v7 url];
      v10 = [v8 initWithContentsOfURL:v9 publishedObjectViewClassMap:0];

      v11 = CHUISLogViewController();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        cachedSceneLogDigest = self->_cachedSceneLogDigest;
        v27 = [v7 url];
        v28 = 134218754;
        selfCopy = self;
        v30 = 2114;
        v31 = cachedSceneLogDigest;
        v32 = 2114;
        v33 = v10;
        v34 = 2114;
        v35 = v27;
        _os_log_debug_impl(&dword_1D928E000, v11, OS_LOG_TYPE_DEBUG, "[%p-%{public}@] Read caar snapshot! view: %{public}@ - url: %{public}@", &v28, 0x2Au);
      }

      v12 = CHUISLogViewController();
      v13 = v12;
      v14 = self->_signpostID;
      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        v15 = [v7 url];
        v28 = 138412290;
        selfCopy = v15;
        _os_signpost_emit_with_name_impl(&dword_1D928E000, v13, OS_SIGNPOST_INTERVAL_END, v14, "FetchPersistedSnapshot", "caar - <url>=%@", &v28, 0xCu);
      }
    }

    else
    {
      v16 = [v7 url];
      v13 = [(CHUISWidgetHostViewController *)self _snapshotImageFromURL:v16];

      if (v13)
      {
        v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v13];
        v17 = CHUISLogViewController();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [(CHUISWidgetHostViewController *)self _newPersistedSnapshotView];
        }
      }

      else
      {
        v10 = 0;
      }

      v18 = CHUISLogViewController();
      v19 = v18;
      v20 = self->_signpostID;
      if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
      {
        v21 = [v7 url];
        v28 = 138412290;
        selfCopy = v21;
        _os_signpost_emit_with_name_impl(&dword_1D928E000, v19, OS_SIGNPOST_INTERVAL_END, v20, "FetchPersistedSnapshot", "image - <url>=%@", &v28, 0xCu);
      }
    }

    layer = [v10 layer];
    attributes = [v7 attributes];
    -[CHUISWidgetHostViewController _applySecurityPolicyToLayer:allowsPrivacySensitiveContent:](self, "_applySecurityPolicyToLayer:allowsPrivacySensitiveContent:", layer, [attributes allowsPrivacySensitiveContent]);
  }

  else
  {
    v10 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)_applySecurityPolicyToLayer:(id)layer
{
  layerCopy = layer;
  [(CHUISWidgetHostViewController *)self _applySecurityPolicyToLayer:layerCopy allowsPrivacySensitiveContent:[(CHUISWidgetHostViewController *)self _shouldBeEffectivelyLocked]^ 1];
}

- (void)_applySecurityPolicyToLayer:(id)layer allowsPrivacySensitiveContent:(BOOL)content
{
  contentCopy = content;
  layerCopy = layer;
  if (contentCopy)
  {
    v6 = CHUISLogViewController();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CHUISWidgetHostViewController _applySecurityPolicyToLayer:allowsPrivacySensitiveContent:];
    }

    v7 = 64;
  }

  else
  {
    v6 = CHUISLogViewController();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CHUISWidgetHostViewController _applySecurityPolicyToLayer:allowsPrivacySensitiveContent:];
    }

    v7 = 0;
  }

  [layerCopy setDisableUpdateMask:v7];
}

- (id)_snapshotImageFromURL:(id)l
{
  keys[3] = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (lCopy)
  {
    keys[0] = @"kCGImageSourceSkipCRC";
    keys[1] = @"kCGImageSourceSkipMetadata";
    keys[2] = *MEMORY[0x1E696E118];
    v4 = *MEMORY[0x1E695E4D0];
    values[0] = *MEMORY[0x1E695E4C0];
    values[1] = v4;
    values[2] = @"com.apple.atx";
    v5 = CFDictionaryCreate(0, keys, values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    path = [lCopy path];
    v7 = CGImageSourceCreateWithFile();

    if (v7 && (ImageAtIndex = CGImageSourceCreateImageAtIndex(v7, 0, v5), CFRelease(v7), ImageAtIndex))
    {
      v9 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:ImageAtIndex];
      CGImageRelease(ImageAtIndex);
    }

    else
    {
      v9 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)_updateSnapshotDebugLabelText:(id)text
{
  textCopy = text;
  [(UILabel *)self->_snapshotDebugLabel setText:?];
  [(UILabel *)self->_snapshotDebugLabel sizeToFit];
  snapshotDebugLabel = self->_snapshotDebugLabel;
  [(UILabel *)snapshotDebugLabel bounds];
  v10 = CGRectInset(v9, -4.0, -4.0);
  [(UILabel *)snapshotDebugLabel setBounds:v10.origin.x, v10.origin.y, v10.size.width, v10.size.height];
  v5 = self->_snapshotDebugLabel;
  view = [(CHUISWidgetHostViewController *)self view];
  [view bounds];
  UIRectGetCenter();
  [(UILabel *)v5 setCenter:?];
}

- (BOOL)_isClockWidget
{
  extensionIdentity = [(CHSWidget *)self->_widget extensionIdentity];
  extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];
  v4 = [extensionBundleIdentifier isEqualToString:@"com.apple.mobiletimer.WorldClockWidget"];

  return v4;
}

- (BOOL)_canLiveSnapshot
{
  if ([(CHUISWidgetHostViewController *)self _isClockWidget])
  {
    return 0;
  }

  else
  {
    return ![(CHUISPreferences *)self->_preferences debugPrefersStaticSnapshots];
  }
}

- (void)_applyLiveSnapshotContents
{
  clientSettings = [(FBScene *)self->_scene clientSettings];
  entryContentID = [clientSettings entryContentID];
  snapshotContentID = self->_snapshotContentID;
  self->_snapshotContentID = entryContentID;

  captureSnapshotPresentationView = [(UIScenePresenter *)self->_scenePresenter captureSnapshotPresentationView];
  [(CHUISLiveSnapshotView *)self->_liveSceneSnapshotView setSnapshotView:?];
  [(CHUISLiveSnapshotView *)self->_liveSceneSnapshotView setClipsToBounds:1];
}

- (void)_ensureAndEvaluateSnapshotView:(id)view
{
  v30 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v6 = CHUISLogViewController();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    cachedSceneLogDigest = self->_cachedSceneLogDigest;
    v24 = 134218498;
    selfCopy2 = self;
    v26 = 2114;
    v27 = cachedSceneLogDigest;
    v28 = 2114;
    v29 = viewCopy;
    _os_log_impl(&dword_1D928E000, v6, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] ensureAndEvaluateSnapshotView - reason: %{public}@", &v24, 0x20u);
  }

  if (!self->_effectivePresentationMode)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  }

  if ([(CHUISWidgetHostViewController *)self canAppearInSecureEnvironment]&& [(CHUISWidgetHostViewController *)self _inSecureEnvironmentTriState]== 1)
  {
    goto LABEL_17;
  }

  effectivePresentationMode = self->_effectivePresentationMode;
  if (effectivePresentationMode != 3 && (effectivePresentationMode != 2 || self->_previousEffectivePresentationMode != 3))
  {
    goto LABEL_17;
  }

  if (!CHUISHasGlobalCaptureEntitlement())
  {
    goto LABEL_17;
  }

  snapshotView = [(CHUISLiveSnapshotView *)self->_liveSceneSnapshotView snapshotView];
  v10 = snapshotView == 0;

  if (!v10)
  {
    goto LABEL_19;
  }

  if (-[FBScene contentState](self->_scene, "contentState") == 2 || (-[FBScene layerManager](self->_scene, "layerManager"), v11 = objc_claimAutoreleasedReturnValue(), [v11 layers], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count") == 0, v12, v11, !v13))
  {
    [(CHUISWidgetHostViewController *)self _hideSnapshotViewsAnimated:0 reason:@"ensureSnapshotView - liveSnapshot"];
    v14 = CHUISLogViewController();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = self->_cachedSceneLogDigest;
      v24 = 134218242;
      selfCopy2 = self;
      v26 = 2114;
      v27 = v15;
      _os_log_impl(&dword_1D928E000, v14, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Create live scene snapshot view.", &v24, 0x16u);
    }

    [(CHUISWidgetHostViewController *)self _applyLiveSnapshotContents];
    layer = [(CHUISLiveSnapshotView *)self->_liveSceneSnapshotView layer];
    [(CHUISWidgetHostViewController *)self _applySecurityPolicyToLayer:layer];

    [(CHUISLiveSnapshotView *)self->_liveSceneSnapshotView setHidden:0];
    [(CHUISLiveSnapshotView *)self->_liveSceneSnapshotView setAlpha:1.0];
    [(UIView *)self->_sceneView setAlpha:0.0];
    snapshotDebugView = self->_snapshotDebugView;
    orangeColor = [MEMORY[0x1E69DC888] orangeColor];
    v19 = [orangeColor colorWithAlphaComponent:0.7];
    [(UIView *)snapshotDebugView setBackgroundColor:v19];

    [(CHUISWidgetHostViewController *)self _updateSnapshotDebugLabelText:@"LIVE SNAPSHOT"];
  }

  else
  {
LABEL_17:
    if (![(CHUISWidgetHostViewController *)self _isPersistedSnapshotVisible])
    {
      [(CHUISWidgetHostViewController *)self _hideSnapshotViewsAnimated:0 reason:@"ensureSnapshotView - staticSnapshot"];
      [(CHUISWidgetHostViewController *)self _updatePersistedSnapshotContent:0];
    }
  }

LABEL_19:
  snapshotDebugLabel = self->_snapshotDebugLabel;
  if (snapshotDebugLabel && [(UILabel *)snapshotDebugLabel isHidden])
  {
    [(UILabel *)self->_snapshotDebugLabel setHidden:0];
    [(UILabel *)self->_snapshotDebugLabel setAlpha:1.0];
  }

  v21 = self->_snapshotDebugView;
  if (v21 && [(UIView *)v21 isHidden])
  {
    [(UIView *)self->_snapshotDebugView setHidden:0];
    [(UIView *)self->_snapshotDebugView setAlpha:1.0];
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isShowingAnySnapshot
{
  if ([(CHUISWidgetHostViewController *)self _isPersistedSnapshotVisible])
  {
    return 1;
  }

  else
  {
    return [(CHUISLiveSnapshotView *)self->_liveSceneSnapshotView isHidden]^ 1;
  }
}

- (BOOL)_doesPersistentSnapshotHaveContent
{
  image = [(UIImageView *)self->_persistedWidgetSnapshotImageView image];
  if (image)
  {
    v4 = 1;
  }

  else
  {
    v4 = self->_persistedWidgetSnapshotCaarView != 0;
  }

  return v4;
}

- (void)_updatePersistedSnapshotContent:(BOOL)content
{
  v43 = *MEMORY[0x1E69E9840];
  _persistedSnapshotContext = [(CHUISWidgetHostViewController *)self _persistedSnapshotContext];
  v6 = CHUISLogViewController();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    cachedSceneLogDigest = self->_cachedSceneLogDigest;
    v36 = [_persistedSnapshotContext url];
    v37 = 134218498;
    selfCopy4 = self;
    v39 = 2114;
    v40 = cachedSceneLogDigest;
    v41 = 2112;
    v42 = v36;
    _os_log_debug_impl(&dword_1D928E000, v6, OS_LOG_TYPE_DEBUG, "[%p-%{public}@] Snapshot context URL: %@", &v37, 0x20u);
  }

  if ([_persistedSnapshotContext needsCAPackage])
  {
    [(_UICAPackageView *)self->_persistedWidgetSnapshotCaarView removeFromSuperview];
    persistedWidgetSnapshotCaarView = self->_persistedWidgetSnapshotCaarView;
    self->_persistedWidgetSnapshotCaarView = 0;

    v8 = CHUISLogViewController();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_cachedSceneLogDigest;
      v37 = 134218242;
      selfCopy4 = self;
      v39 = 2114;
      v40 = v9;
      _os_log_impl(&dword_1D928E000, v8, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Create caar snapshot view.", &v37, 0x16u);
    }

    [(UIImageView *)self->_persistedWidgetSnapshotImageView setHidden:1];
    [(UIImageView *)self->_persistedWidgetSnapshotImageView setAlpha:0.0];
    persistedWidgetSnapshotViewContainer = self->_persistedWidgetSnapshotViewContainer;
    [(CHUISWidgetHostViewController *)self _effectiveViewCornerRadius];
    [(UIView *)persistedWidgetSnapshotViewContainer _setContinuousCornerRadius:?];
    v11 = objc_alloc(MEMORY[0x1E69DD3B0]);
    v12 = [_persistedSnapshotContext url];
    v13 = [v11 initWithContentsOfURL:v12 publishedObjectViewClassMap:0];
    v14 = self->_persistedWidgetSnapshotCaarView;
    self->_persistedWidgetSnapshotCaarView = v13;

    v15 = self->_persistedWidgetSnapshotCaarView;
    if (v15)
    {
      [(UIView *)self->_persistedWidgetSnapshotViewContainer bounds];
      [(_UICAPackageView *)v15 setFrame:?];
      [(_UICAPackageView *)self->_persistedWidgetSnapshotCaarView setAutoresizingMask:18];
      layer = [(_UICAPackageView *)self->_persistedWidgetSnapshotCaarView layer];
      [layer setName:@"Persistent CAAR View"];

      [(UIView *)self->_persistedWidgetSnapshotViewContainer addSubview:self->_persistedWidgetSnapshotCaarView];
      contentIdentifier = [_persistedSnapshotContext contentIdentifier];
      snapshotContentID = self->_snapshotContentID;
      self->_snapshotContentID = contentIdentifier;
    }

    else
    {
      snapshotContentID = CHUISLogViewController();
      if (os_log_type_enabled(snapshotContentID, OS_LOG_TYPE_DEFAULT))
      {
        v27 = self->_cachedSceneLogDigest;
        v37 = 134218242;
        selfCopy4 = self;
        v39 = 2114;
        v40 = v27;
        _os_log_impl(&dword_1D928E000, snapshotContentID, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Failed to decode persisted caar file or it didn't exist.", &v37, 0x16u);
      }
    }

    [(UIView *)self->_persistedWidgetSnapshotViewContainer setHidden:0];
    [(UIView *)self->_persistedWidgetSnapshotViewContainer setAlpha:1.0];
  }

  else if (content || ([(UIImageView *)self->_persistedWidgetSnapshotImageView image], v19 = objc_claimAutoreleasedReturnValue(), v20 = v19 == 0, v19, v20))
  {
    v21 = CHUISLogViewController();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = self->_cachedSceneLogDigest;
      v37 = 134218242;
      selfCopy4 = self;
      v39 = 2114;
      v40 = v22;
      _os_log_impl(&dword_1D928E000, v21, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Create image snapshot view.", &v37, 0x16u);
    }

    v23 = [_persistedSnapshotContext url];
    v24 = [(CHUISWidgetHostViewController *)self _snapshotImageFromURL:v23];

    if (v24)
    {
      contentIdentifier2 = [_persistedSnapshotContext contentIdentifier];
      v26 = self->_snapshotContentID;
      self->_snapshotContentID = contentIdentifier2;
    }

    else
    {
      v26 = CHUISLogViewController();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        [CHUISWidgetHostViewController _updatePersistedSnapshotContent:?];
      }
    }

    [(UIImageView *)self->_persistedWidgetSnapshotImageView setImage:v24];
    [(UIImageView *)self->_persistedWidgetSnapshotImageView setClipsToBounds:0];
    v28 = self->_persistedWidgetSnapshotCaarView;
    if (v28)
    {
      [(_UICAPackageView *)v28 setHidden:1];
      [(_UICAPackageView *)self->_persistedWidgetSnapshotCaarView setAlpha:0.0];
    }

    [(UIImageView *)self->_persistedWidgetSnapshotImageView setHidden:0];
    [(UIImageView *)self->_persistedWidgetSnapshotImageView setAlpha:1.0];
    [(UIView *)self->_persistedWidgetSnapshotViewContainer setHidden:0];
    [(UIView *)self->_persistedWidgetSnapshotViewContainer setAlpha:1.0];
  }

  [(UIView *)self->_sceneView setAlpha:0.0];
  layer2 = [(UIView *)self->_persistedWidgetSnapshotViewContainer layer];
  attributes = [_persistedSnapshotContext attributes];
  -[CHUISWidgetHostViewController _applySecurityPolicyToLayer:allowsPrivacySensitiveContent:](self, "_applySecurityPolicyToLayer:allowsPrivacySensitiveContent:", layer2, [attributes allowsPrivacySensitiveContent]);

  snapshotDebugView = self->_snapshotDebugView;
  yellowColor = [MEMORY[0x1E69DC888] yellowColor];
  v33 = [yellowColor colorWithAlphaComponent:0.7];
  [(UIView *)snapshotDebugView setBackgroundColor:v33];

  [(CHUISWidgetHostViewController *)self _updateSnapshotDebugLabelText:@"SNAPSHOT"];
  v34 = *MEMORY[0x1E69E9840];
}

- (void)_hideSnapshotViewsAnimated:(BOOL)animated forceCompleteTeardown:(BOOL)teardown reason:(id)reason
{
  teardownCopy = teardown;
  animatedCopy = animated;
  v53 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  if ([(CHUISLiveSnapshotView *)self->_liveSceneSnapshotView isHidden])
  {
    v9 = ![(UIView *)self->_persistedWidgetSnapshotViewContainer isHidden];
    if (!animatedCopy)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 1;
    if (!animatedCopy)
    {
      goto LABEL_6;
    }
  }

  if (!self->_animatingSnapshotDismissal)
  {
    v10 = 0;
    goto LABEL_8;
  }

LABEL_6:
  v10 = animatedCopy;
LABEL_8:
  if (teardownCopy || ((v10 | v9 ^ 1) & 1) == 0)
  {
    v17 = self->_snapshotHidingSequence + 1;
    self->_snapshotHidingSequence = v17;
    v18 = CHUISLogViewController();
    v19 = v18;
    signpostID = self->_signpostID;
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D928E000, v19, OS_SIGNPOST_EVENT, signpostID, "TeardownSnapshotView", "", buf, 2u);
    }

    v21 = CHUISLogViewController();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      cachedSceneLogDigest = self->_cachedSceneLogDigest;
      v23 = @"NO";
      *buf = 134218754;
      if (animatedCopy)
      {
        v23 = @"YES";
      }

      selfCopy3 = self;
      v43 = 2114;
      v44 = cachedSceneLogDigest;
      v45 = 2114;
      v46 = v23;
      v47 = 2114;
      v48 = reasonCopy;
      _os_log_impl(&dword_1D928E000, v21, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Destroy snapshot views (animated: %{public}@, reason=%{public}@)", buf, 0x2Au);
    }

    if (![(CHUISWidgetHostViewController *)self _isContentEffectivelyTransparent])
    {
      [(UIView *)self->_sceneView setAlpha:1.0];
    }

    if (animatedCopy)
    {
      clientSettings = [(FBScene *)self->_scene clientSettings];
      entryContentID = [clientSettings entryContentID];

      v26 = [entryContentID isEqualToString:self->_snapshotContentID];
      if (v26)
      {
        v27 = CHUISLogViewController();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = self->_cachedSceneLogDigest;
          *buf = 134218242;
          selfCopy3 = self;
          v43 = 2114;
          v44 = v28;
          _os_log_impl(&dword_1D928E000, v27, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Overriding animation to false because snapshot and content are the same.", buf, 0x16u);
        }
      }

      v29 = v26 ^ 1;
    }

    else
    {
      v29 = 0;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __89__CHUISWidgetHostViewController__hideSnapshotViewsAnimated_forceCompleteTeardown_reason___block_invoke;
    aBlock[3] = &unk_1E8575A08;
    v40 = v29;
    v39 = v17;
    aBlock[4] = self;
    v38 = reasonCopy;
    v30 = _Block_copy(aBlock);
    v31 = v30;
    if (v29 && !self->_disableViewTransitionAnimations)
    {
      v32 = MEMORY[0x1E69DD250];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __89__CHUISWidgetHostViewController__hideSnapshotViewsAnimated_forceCompleteTeardown_reason___block_invoke_360;
      v36[3] = &unk_1E85754D0;
      v36[4] = self;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __89__CHUISWidgetHostViewController__hideSnapshotViewsAnimated_forceCompleteTeardown_reason___block_invoke_2;
      v34[3] = &unk_1E8575A30;
      v35 = v30;
      [v32 animateWithDuration:v36 animations:v34 completion:0.4];
    }

    else
    {
      v30[2](v30);
    }
  }

  else
  {
    v11 = CHUISLogViewController();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_cachedSceneLogDigest;
      v13 = @"NO";
      animatingSnapshotDismissal = self->_animatingSnapshotDismissal;
      if (animatedCopy)
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      *buf = 134219266;
      if (animatingSnapshotDismissal)
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      selfCopy3 = self;
      if (v9)
      {
        v13 = @"YES";
      }

      v43 = 2114;
      v44 = v12;
      v45 = 2114;
      v46 = v15;
      v47 = 2114;
      v48 = reasonCopy;
      v49 = 2114;
      v50 = v16;
      v51 = 2114;
      v52 = v13;
      _os_log_impl(&dword_1D928E000, v11, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Destroy snapshot views requested but ignored because not necessary or already dismissing (animated: %{public}@, reason=%{public}@, animatingSnapshotDismissal=%{public}@, needsDismissal=%{public}@)", buf, 0x3Eu);
    }

    if ((v9 & 1) == 0)
    {
      [(UIView *)self->_sceneView setAlpha:1.0];
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

uint64_t __89__CHUISWidgetHostViewController__hideSnapshotViewsAnimated_forceCompleteTeardown_reason___block_invoke(uint64_t result)
{
  v1 = result;
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(result + 48);
  v3 = *(result + 32);
  v4 = *(v3 + 1288);
  if (*(result + 56) == 1)
  {
    if (v2 != v4)
    {
      goto LABEL_9;
    }

    goto LABEL_5;
  }

  if (v2 == v4)
  {
LABEL_5:
    *(v3 + 1288) = 0;
  }

  v5 = *(result + 32);
  v6 = *(v5 + 1088);
  *(v5 + 1088) = 0;

  *(*(v1 + 32) + 1080) = 0;
  v7 = CHUISLogViewController();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(v1 + 32);
    v9 = *(v1 + 40);
    v10 = *(v8 + 1152);
    v14 = 134218498;
    v15 = v8;
    v16 = 2114;
    v17 = v10;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&dword_1D928E000, v7, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Finish hiding snapshots (reason=%{public}@)", &v14, 0x20u);
  }

  [*(*(v1 + 32) + 1056) removeFromSuperview];
  v11 = *(v1 + 32);
  v12 = *(v11 + 1056);
  *(v11 + 1056) = 0;

  [*(*(v1 + 32) + 1064) setImage:0];
  [*(*(v1 + 32) + 1048) setSnapshotView:0];
  [*(*(v1 + 32) + 1048) setHidden:1];
  [*(*(v1 + 32) + 1072) setHidden:1];
  [*(*(v1 + 32) + 1096) setHidden:1];
  [*(*(v1 + 32) + 1104) setHidden:1];
  [*(*(v1 + 32) + 1048) setAlpha:0.0];
  [*(*(v1 + 32) + 1072) setAlpha:0.0];
  [*(*(v1 + 32) + 1096) setAlpha:0.0];
  [*(*(v1 + 32) + 1104) setAlpha:0.0];
  result = [*(*(v1 + 32) + 1112) setAlpha:1.0];
LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __89__CHUISWidgetHostViewController__hideSnapshotViewsAnimated_forceCompleteTeardown_reason___block_invoke_360(uint64_t a1)
{
  *(*(a1 + 32) + 1080) = 1;
  [*(*(a1 + 32) + 1048) setAlpha:0.0];
  [*(*(a1 + 32) + 1072) setAlpha:0.0];
  [*(*(a1 + 32) + 1096) setAlpha:0.0];
  [*(*(a1 + 32) + 1104) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 1112);

  return [v2 setAlpha:1.0];
}

uint64_t __89__CHUISWidgetHostViewController__hideSnapshotViewsAnimated_forceCompleteTeardown_reason___block_invoke_2(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

- (void)_setInSecureEnvironment:(unint64_t)environment forReason:(id)reason
{
  v20 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  BSDispatchQueueAssertMain();
  if (self->_inSecureEnvironmentTriState != environment)
  {
    self->_inSecureEnvironmentTriState = environment;
    v7 = CHUISLogViewController();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      cachedSceneLogDigest = self->_cachedSceneLogDigest;
      v9 = @"NotSet";
      if (environment == 2)
      {
        v9 = @"No";
      }

      if (environment == 1)
      {
        v9 = @"Yes";
      }

      v10 = v9;
      v12 = 134218754;
      selfCopy = self;
      v14 = 2114;
      v15 = cachedSceneLogDigest;
      v16 = 2114;
      v17 = v10;
      v18 = 2114;
      v19 = reasonCopy;
      _os_log_impl(&dword_1D928E000, v7, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Secure environment changed to %{public}@ for reason: %{public}@", &v12, 0x2Au);
    }

    [(CHUISWidgetHostViewController *)self _hideSnapshotViewsAnimated:0 forceCompleteTeardown:1 reason:@"setInSecureEnvironment"];
    [(CHUISWidgetHostViewController *)self _setEffectivePresentationMode:self->_effectivePresentationMode reason:@"secure environment changed" forceExistingRebuild:1 allowCreatingScene:0];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_evaluateEffectiveInSecureEnvironmentForReason:(id)reason
{
  reasonCopy = reason;
  if ([(CHUISWidgetHostViewController *)self _shouldBeEffectivelyLocked])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  [(CHUISWidgetHostViewController *)self _setInSecureEnvironment:v4 forReason:reasonCopy];
}

- (void)_invalidateDetachedSceneTimerForReason:(id)reason ignoreLogging:(BOOL)logging
{
  v18 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  detachedSceneTimer = self->_detachedSceneTimer;
  if (detachedSceneTimer)
  {
    if (!logging)
    {
      v8 = CHUISLogViewController();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        cachedSceneLogDigest = self->_cachedSceneLogDigest;
        v12 = 134218498;
        selfCopy = self;
        v14 = 2114;
        v15 = cachedSceneLogDigest;
        v16 = 2114;
        v17 = reasonCopy;
        _os_log_impl(&dword_1D928E000, v8, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Invalidating detached scene timer for reason: %{public}@", &v12, 0x20u);
      }

      detachedSceneTimer = self->_detachedSceneTimer;
    }

    [(BSContinuousMachTimer *)detachedSceneTimer invalidate];
    v10 = self->_detachedSceneTimer;
    self->_detachedSceneTimer = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_scheduleEvaluationOfDetachedSceneTimerForReason:(id)reason
{
  reasonCopy = reason;
  BSDispatchQueueAssertMain();
  [(NSMutableArray *)self->_detachedSceneTimerEvaluationReasons addObject:reasonCopy];
  v5 = CHUISLogViewController();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CHUISWidgetHostViewController _scheduleEvaluationOfDetachedSceneTimerForReason:?];
  }

  if ([(NSMutableArray *)self->_detachedSceneTimerEvaluationReasons count]== 1)
  {
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __82__CHUISWidgetHostViewController__scheduleEvaluationOfDetachedSceneTimerForReason___block_invoke;
    v6[3] = &unk_1E8575A58;
    objc_copyWeak(&v7, &location);
    dispatch_async(MEMORY[0x1E69E96A0], v6);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __82__CHUISWidgetHostViewController__scheduleEvaluationOfDetachedSceneTimerForReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained[155] componentsJoinedByString:{@", "}];
    v4 = CHUISLogViewController();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __82__CHUISWidgetHostViewController__scheduleEvaluationOfDetachedSceneTimerForReason___block_invoke_cold_1(v2);
    }

    [v2[155] removeAllObjects];
    [v2 __evaluateDetachedSceneTimerForReason:v3];
  }
}

- (void)_detachedSceneTimerFired
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(self + 1152);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_8(&dword_1D928E000, v2, v3, "[%p-%{public}@] Detached scene idle timer fired. Invalidating scene.", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)__evaluateDetachedSceneTimerForReason:(id)reason
{
  v26 = *MEMORY[0x1E69E9840];
  view = [(CHUISWidgetHostViewController *)self view];
  window = [view window];

  detachedSceneTimer = self->_detachedSceneTimer;
  if (detachedSceneTimer | window)
  {
    if (detachedSceneTimer)
    {
      v7 = window == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      [(CHUISWidgetHostViewController *)self _invalidateDetachedSceneTimerForReason:@"Window exists"];
    }
  }

  else
  {
    scene = self->_scene;
    if (scene)
    {
      settings = [(FBScene *)scene settings];
      isForeground = [settings isForeground];

      if (isForeground)
      {
        v11 = CHUISLogViewController();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          cachedSceneLogDigest = self->_cachedSceneLogDigest;
          *buf = 134218242;
          selfCopy = self;
          v24 = 2114;
          v25 = cachedSceneLogDigest;
          _os_log_impl(&dword_1D928E000, v11, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Detached scene detected. Starting idle timer...", buf, 0x16u);
        }

        [(CHUISWidgetHostViewController *)self _invalidateDetachedSceneTimerForReason:@"New timer" ignoreLogging:1];
        if (self->_detachedSceneTimerInterval <= 0.0)
        {
          [(CHUISWidgetHostViewController *)self _detachedSceneTimerFired];
        }

        else
        {
          objc_initWeak(buf, self);
          v13 = objc_alloc(MEMORY[0x1E698E660]);
          v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<DetachedLiveSceneTimer-%@>", self->_cachedSceneLogDigest];
          v15 = [v13 initWithIdentifier:v14];
          v16 = self->_detachedSceneTimer;
          self->_detachedSceneTimer = v15;

          v17 = self->_detachedSceneTimer;
          detachedSceneTimerInterval = self->_detachedSceneTimerInterval;
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __71__CHUISWidgetHostViewController___evaluateDetachedSceneTimerForReason___block_invoke;
          v20[3] = &unk_1E8575A80;
          objc_copyWeak(&v21, buf);
          [(BSContinuousMachTimer *)v17 scheduleWithFireInterval:MEMORY[0x1E69E96A0] leewayInterval:v20 queue:detachedSceneTimerInterval handler:1.0];
          objc_destroyWeak(&v21);
          objc_destroyWeak(buf);
        }
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __71__CHUISWidgetHostViewController___evaluateDetachedSceneTimerForReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _detachedSceneTimerFired];
  }
}

+ (id)_compatibilityMetrics
{
  if (_compatibilityMetrics_onceToken != -1)
  {
    +[CHUISWidgetHostViewController _compatibilityMetrics];
  }

  v3 = _compatibilityMetrics___compatibilityMetrics;

  return v3;
}

void __54__CHUISWidgetHostViewController__compatibilityMetrics__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E69943F0]);
  v1 = [v0 initWithSize:*MEMORY[0x1E695F060] cornerRadius:{*(MEMORY[0x1E695F060] + 8), 0.0}];
  v2 = _compatibilityMetrics___compatibilityMetrics;
  _compatibilityMetrics___compatibilityMetrics = v1;
}

- (void)_setBackgroundViewMode:(int)mode
{
  if (!self->_materialBackgroundView)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:0];
    materialBackgroundView = self->_materialBackgroundView;
    self->_materialBackgroundView = v7;

    v9 = self->_materialBackgroundView;
    view = [(CHUISWidgetHostViewController *)self view];
    [view bounds];
    [(UIVisualEffectView *)v9 setFrame:?];

    v11 = self->_materialBackgroundView;
    _effectiveBackgroundColor = [(CHUISWidgetHostViewController *)self _effectiveBackgroundColor];
    [(UIVisualEffectView *)v11 setBackgroundColor:_effectiveBackgroundColor];

    [(UIVisualEffectView *)self->_materialBackgroundView setAutoresizingMask:18];
    view2 = [(CHUISWidgetHostViewController *)self view];
    [view2 insertSubview:self->_materialBackgroundView atIndex:0];

    layer = [(UIVisualEffectView *)self->_materialBackgroundView layer];
    [layer setName:@"Material View"];

    view3 = [(CHUISWidgetHostViewController *)self view];
    [view3 setNeedsLayout];

LABEL_9:
    if (mode > 1)
    {
      if (mode == 2)
      {
        v26 = CHUISLogViewController();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          [CHUISWidgetHostViewController _setBackgroundViewMode:?];
        }

        [(UIVisualEffectView *)self->_materialBackgroundView setHidden:0];
        _effectiveBackgroundColor2 = [MEMORY[0x1E69DC730] effectWithStyle:7];
        [(UIVisualEffectView *)self->_materialBackgroundView setEffect:_effectiveBackgroundColor2];
        [(UIVisualEffectView *)self->_materialBackgroundView setBackgroundColor:0];
        v27 = self->_materialBackgroundView;
        [(CHUISWidgetHostViewController *)self _effectiveCornerRadius];
        [(UIVisualEffectView *)v27 _setContinuousCornerRadius:?];
        [(CHUISSolariumEffectView *)self->_glassBackgroundView setHidden:1];
        goto LABEL_27;
      }

      if (mode != 3)
      {
        goto LABEL_31;
      }

      v21 = CHUISLogViewController();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [CHUISWidgetHostViewController _setBackgroundViewMode:?];
      }

      [(UIVisualEffectView *)self->_materialBackgroundView setHidden:1];
      glassBackgroundView = self->_glassBackgroundView;
      if (!glassBackgroundView)
      {
        v28 = [_TtC16ChronoUIServices23CHUISSolariumEffectView alloc];
        tintParameters = self->_tintParameters;
        effectiveBackgroundColorScheme = self->_effectiveBackgroundColorScheme;
        [(CHSWidgetMetrics *)self->_widgetMetrics cornerRadius];
        v32 = v31;
        view4 = [(CHUISWidgetHostViewController *)self view];
        [view4 bounds];
        v38 = [(CHUISSolariumEffectView *)v28 initWithLayerType:0 tintParameters:tintParameters preferredColorScheme:effectiveBackgroundColorScheme cornerRadius:v32 frame:v34, v35, v36, v37];
        v39 = self->_glassBackgroundView;
        self->_glassBackgroundView = v38;

        v40 = self->_glassBackgroundView;
        view5 = [(CHUISWidgetHostViewController *)self view];
        [view5 bounds];
        [(CHUISSolariumEffectView *)v40 setFrame:?];

        [(CHUISSolariumEffectView *)self->_glassBackgroundView setBackgroundColor:0];
        [(CHUISSolariumEffectView *)self->_glassBackgroundView setAutoresizingMask:18];
        view6 = [(CHUISWidgetHostViewController *)self view];
        [view6 insertSubview:self->_glassBackgroundView atIndex:0];

        layer2 = [(CHUISSolariumEffectView *)self->_glassBackgroundView layer];
        [layer2 setName:@"Glass Background View"];

        view7 = [(CHUISWidgetHostViewController *)self view];
        [view7 setNeedsLayout];

        glassBackgroundView = self->_glassBackgroundView;
      }

      [(CHUISSolariumEffectView *)glassBackgroundView setPreferredColorScheme:self->_effectiveBackgroundColorScheme];
      [(CHUISSolariumEffectView *)self->_glassBackgroundView setTintParameters:self->_tintParameters];
      [(CHUISSolariumEffectView *)self->_glassBackgroundView setHidden:0];
      v45 = self->_glassBackgroundView;
      [(CHUISWidgetHostViewController *)self _effectiveCornerRadius];
      [(CHUISSolariumEffectView *)v45 setCornerRadius:?];
      v25 = self->_glassBackgroundView;
    }

    else
    {
      if (mode)
      {
        if (mode != 1)
        {
          goto LABEL_31;
        }

        v16 = CHUISLogViewController();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [CHUISWidgetHostViewController _setBackgroundViewMode:?];
        }

        [(CHUISSolariumEffectView *)self->_glassBackgroundView setHidden:1];
        [(UIVisualEffectView *)self->_materialBackgroundView setHidden:0];
        [(UIVisualEffectView *)self->_materialBackgroundView setEffect:0];
        layer3 = [(UIVisualEffectView *)self->_materialBackgroundView layer];
        [(CHUISWidgetHostViewController *)self _effectiveCornerRadius];
        [layer3 setCornerRadius:?];

        layer4 = [(UIVisualEffectView *)self->_materialBackgroundView layer];
        [layer4 setCornerCurve:*MEMORY[0x1E69796E8]];

        v19 = self->_materialBackgroundView;
        _effectiveBackgroundColor2 = [(CHUISWidgetHostViewController *)self _effectiveBackgroundColor];
        [(UIVisualEffectView *)v19 setBackgroundColor:_effectiveBackgroundColor2];
LABEL_27:

        goto LABEL_31;
      }

      v23 = CHUISLogViewController();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [CHUISWidgetHostViewController _setBackgroundViewMode:?];
      }

      [(CHUISSolariumEffectView *)self->_glassBackgroundView setHidden:1];
      [(UIVisualEffectView *)self->_materialBackgroundView setHidden:1];
      layer5 = [(UIVisualEffectView *)self->_materialBackgroundView layer];
      [layer5 setCornerRadius:0.0];

      v25 = self->_materialBackgroundView;
    }

    [(CHUISWidgetHostViewController *)self _effectiveCornerRadius];
    [v25 _setContinuousCornerRadius:?];
    goto LABEL_31;
  }

  if ([(CHUISWidgetHostViewController *)self _actualBackgroundViewMode]!= mode)
  {
    goto LABEL_9;
  }

  v5 = self->_materialBackgroundView;
  _effectiveBackgroundColor3 = [(CHUISWidgetHostViewController *)self _effectiveBackgroundColor];
  [(UIVisualEffectView *)v5 setBackgroundColor:_effectiveBackgroundColor3];

  [(CHUISSolariumEffectView *)self->_glassBackgroundView setPreferredColorScheme:self->_effectiveBackgroundColorScheme];
  if (self->_tintParameters)
  {
    [(CHUISSolariumEffectView *)self->_glassBackgroundView setTintParameters:?];
  }

LABEL_31:
  [(CHUISWidgetHostViewController *)self _evaluateAdditionalForegroundLayers];
}

- (void)_setEffectivePresentationMode:(unint64_t)mode reason:(id)reason forceExistingRebuild:(BOOL)rebuild allowCreatingScene:(BOOL)scene
{
  rebuildCopy = rebuild;
  reasonCopy = reason;
  BSDispatchQueueAssertMain();
  if (self->_effectivePresentationMode != mode || rebuildCopy)
  {
    v12 = MEMORY[0x1E69DD250];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __110__CHUISWidgetHostViewController__setEffectivePresentationMode_reason_forceExistingRebuild_allowCreatingScene___block_invoke;
    v13[3] = &unk_1E8575A08;
    v13[4] = self;
    modeCopy = mode;
    v14 = reasonCopy;
    sceneCopy = scene;
    [v12 performWithoutAnimation:v13];
  }
}

void __110__CHUISWidgetHostViewController__setEffectivePresentationMode_reason_forceExistingRebuild_allowCreatingScene___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 1360) = *(*(a1 + 32) + 1352);
  *(*(a1 + 32) + 1352) = *(a1 + 48);
  v2 = CHUISLogViewController();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 1152);
    v5 = *(a1 + 48) - 1;
    if (v5 > 2)
    {
      v6 = @"none";
    }

    else
    {
      v6 = off_1E8575C78[v5];
    }

    v7 = *(a1 + 40);
    *buf = 134218754;
    v18 = v3;
    v19 = 2114;
    v20 = v4;
    v21 = 2114;
    v22 = v6;
    v23 = 2114;
    v24 = v7;
    _os_log_impl(&dword_1D928E000, v2, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Effective presentation mode will change to %{public}@ for reason: %{public}@", buf, 0x2Au);
  }

  v8 = *(a1 + 32);
  v9 = v8[169];
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      if (*(a1 + 56) == 1)
      {
        [v8 _updateSceneToForeground:1];
        v8 = *(a1 + 32);
      }

      if (([v8 _transitionFromSnapshotToLiveContentIfNecessary] & 1) == 0)
      {
        v13 = [*(a1 + 32) view];
        v14 = [v13 window];

        if (v14)
        {
          [*(a1 + 32) _ensureAndEvaluateSnapshotView:@"setEffectivePresentationMode - Live"];
        }
      }

      [*(a1 + 32) _setupTransitionFromSnapshotToLiveContentDeadlineTimerIfNecessary];
    }

    else if (v9 == 3)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __110__CHUISWidgetHostViewController__setEffectivePresentationMode_reason_forceExistingRebuild_allowCreatingScene___block_invoke_415;
      aBlock[3] = &unk_1E85754D0;
      aBlock[4] = v8;
      v12 = _Block_copy(aBlock);
      if ([*(*(a1 + 32) + 1016) contentState] == 2)
      {
        v12[2](v12);
        [*(a1 + 32) _updateSceneToForeground:0];
      }

      else
      {
        if (*(a1 + 56) == 1)
        {
          [*(a1 + 32) _updateSceneToForeground:1];
        }

        v12[2](v12);
      }
    }
  }

  else if (v9)
  {
    if (v9 == 1)
    {
      v10 = [v8 view];
      v11 = [v10 window];

      if (v11)
      {
        [*(a1 + 32) _ensureAndEvaluateSnapshotView:@"setEffectivePresentationMode - Static"];
      }

      [*(a1 + 32) _updateSceneToForeground:0];
    }
  }

  else
  {
    [v8 _hideSnapshotViewsAnimated:0 reason:@"setEffectivePresentationMode - None"];
    [*(a1 + 32) _updateSceneToForeground:0];
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __110__CHUISWidgetHostViewController__setEffectivePresentationMode_reason_forceExistingRebuild_allowCreatingScene___block_invoke_415(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [v2 window];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 _ensureAndEvaluateSnapshotView:@"setEffectivePresentationMode - LiveSnapshot"];
  }
}

- (void)_updateSceneToForeground:(BOOL)foreground
{
  foregroundCopy = foreground;
  v61 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssertMain();
  if (!self->_invalidated)
  {
    sceneForeground = self->_sceneForeground;
    if ((BSEqualBools() & 1) == 0)
    {
      if (foregroundCopy)
      {
        view = [(CHUISWidgetHostViewController *)self view];
        [view setClipsToBounds:0];

        view2 = [(CHUISWidgetHostViewController *)self view];
        [view2 setBackgroundColor:0];
      }

      self->_sceneForeground = foregroundCopy;
      if (self->_scene)
      {
        v8 = CHUISLogViewController();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          cachedSceneLogDigest = self->_cachedSceneLogDigest;
          v10 = @"Background";
          *buf = 134218498;
          if (foregroundCopy)
          {
            v10 = @"Foreground";
          }

          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = cachedSceneLogDigest;
          *&buf[22] = 2114;
          v59 = v10;
          _os_log_impl(&dword_1D928E000, v8, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Updating - %{public}@", buf, 0x20u);
        }

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __58__CHUISWidgetHostViewController__updateSceneToForeground___block_invoke;
        aBlock[3] = &unk_1E8575AA8;
        aBlock[4] = self;
        v53 = foregroundCopy;
        v11 = _Block_copy(aBlock);
        v12 = v11;
        if (foregroundCopy || (self->_effectivePresentationMode | 2) != 3)
        {
          v11[2](v11);
        }

        else
        {
          v50[5] = MEMORY[0x1E69E9820];
          v50[6] = 3221225472;
          v50[7] = __58__CHUISWidgetHostViewController__updateSceneToForeground___block_invoke_3;
          v50[8] = &unk_1E8575AD0;
          v51 = v11;
          BSRunLoopPerformAfterCACommit();
        }

LABEL_29:
        [(CHUISWidgetHostViewController *)self _scheduleEvaluationOfDetachedSceneTimerForReason:@"scene modified"];
        goto LABEL_30;
      }

      if (!-[CHUISPreferences enableMemoryStressTestingWithGaspar](self->_preferences, "enableMemoryStressTestingWithGaspar") || ([MEMORY[0x1E696AAE8] mainBundle], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "bundleIdentifier"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", @"com.apple.Gaspar"), v14, v13, (v15 & 1) != 0))
      {
        if ([(NSMutableArray *)self->_pendingUpdateBlocks count])
        {
          pendingUpdateBlocks = self->_pendingUpdateBlocks;
          self->_pendingUpdateBlocks = 0;
        }

        v17 = CHUISLogViewController();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = self->_cachedSceneLogDigest;
          v19 = @"Background";
          *buf = 134218498;
          if (foregroundCopy)
          {
            v19 = @"Foreground";
          }

          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = v18;
          *&buf[22] = 2114;
          v59 = v19;
          _os_log_impl(&dword_1D928E000, v17, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Creating - %{public}@", buf, 0x20u);
        }

        sceneWorkspace = self->_sceneWorkspace;
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __58__CHUISWidgetHostViewController__updateSceneToForeground___block_invoke_432;
        v50[3] = &unk_1E8575AF8;
        v50[4] = self;
        v21 = [(FBSceneWorkspace *)sceneWorkspace createScene:v50];
        scene = self->_scene;
        self->_scene = v21;

        [(FBScene *)self->_scene setDelegate:self];
        layerManager = [(FBScene *)self->_scene layerManager];
        [layerManager addObserver:self];

        v24 = self->_scene;
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = __58__CHUISWidgetHostViewController__updateSceneToForeground___block_invoke_2_439;
        v48[3] = &unk_1E8575B70;
        v48[4] = self;
        v49 = foregroundCopy;
        [(FBScene *)v24 configureParameters:v48];
        uiPresentationManager = [(FBScene *)self->_scene uiPresentationManager];
        v26 = [uiPresentationManager createPresenterWithIdentifier:@"default"];
        scenePresenter = self->_scenePresenter;
        self->_scenePresenter = v26;

        [(UIScenePresenter *)self->_scenePresenter modifyPresentationContext:&__block_literal_global_447];
        [(UIScenePresenter *)self->_scenePresenter activate];
        presentationView = [(UIScenePresenter *)self->_scenePresenter presentationView];
        sceneView = self->_sceneView;
        self->_sceneView = presentationView;

        _containerView = [(CHUISWidgetHostViewController *)self _containerView];
        [_containerView insertSubview:self->_sceneView atIndex:0];

        [(UIView *)self->_sceneView setAlpha:0.0];
        view3 = [(CHUISWidgetHostViewController *)self view];
        [view3 setNeedsLayout];

        [(UIView *)self->_sceneView setClipsToBounds:1];
        layer = [(UIView *)self->_sceneView layer];
        [layer setName:@"Scene View"];

        v33 = self->_sceneView;
        [(CHUISWidgetHostViewController *)self _effectiveViewCornerRadius];
        [(UIView *)v33 _setContinuousCornerRadius:?];
        v54 = 0;
        v55 = &v54;
        v56 = 0x2050000000;
        v34 = getBLSHBacklightFBSceneEnvironmentActionHandlerClass_softClass;
        v57 = getBLSHBacklightFBSceneEnvironmentActionHandlerClass_softClass;
        if (!getBLSHBacklightFBSceneEnvironmentActionHandlerClass_softClass)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __getBLSHBacklightFBSceneEnvironmentActionHandlerClass_block_invoke;
          v59 = &unk_1E8575C20;
          v60 = &v54;
          __getBLSHBacklightFBSceneEnvironmentActionHandlerClass_block_invoke(buf);
          v34 = v55[3];
        }

        v35 = v34;
        _Block_object_dispose(&v54, 8);
        v36 = objc_alloc_init(v34);
        sceneBacklightActionHandler = self->_sceneBacklightActionHandler;
        self->_sceneBacklightActionHandler = v36;

        backlightSceneHostEnvironment = [(FBScene *)self->_scene backlightSceneHostEnvironment];
        sceneBacklightEnvironment = self->_sceneBacklightEnvironment;
        self->_sceneBacklightEnvironment = backlightSceneHostEnvironment;

        [(BLSHBacklightSceneHostEnvironment *)self->_sceneBacklightEnvironment setAlwaysOnEnabledForEnvironment:1];
        ui_intelligenceComponent = [(FBScene *)self->_scene ui_intelligenceComponent];
        [ui_intelligenceComponent setCollectAsRemoteElement:1];

        if ([(CHUISPreferences *)self->_preferences debugRenderBoxSurfaces])
        {
          v41 = objc_alloc_init(MEMORY[0x1E69DC6A0]);
          v42 = objc_alloc_init(MEMORY[0x1E699F7B8]);
          [v42 setEnvironment:&unk_1F54CD4B8];
          v43 = [v42 copy];
          [v41 setExecutionContext:v43];

          v44 = v41;
        }

        else
        {
          v44 = 0;
        }

        [(FBScene *)self->_scene activateWithTransitionContext:v44];
        identifier = [(FBScene *)self->_scene identifier];
        [(CHUISWidgetHostViewController *)self sceneDidUpdateToSceneIdentifier:identifier];

        goto LABEL_29;
      }

      v47 = CHUISLogViewController();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D928E000, v47, OS_LOG_TYPE_DEFAULT, "Ignoring scene create due to stress testing mode with Gaspar enabled.", buf, 2u);
      }
    }
  }

LABEL_30:
  v46 = *MEMORY[0x1E69E9840];
}

uint64_t __58__CHUISWidgetHostViewController__updateSceneToForeground___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1024);
  v3 = *(a1 + 40);
  result = BSEqualBools();
  if (result)
  {
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __58__CHUISWidgetHostViewController__updateSceneToForeground___block_invoke_2;
    v6[3] = &__block_descriptor_33_e78___UIApplicationSceneTransitionContext_16__0__CHUISMutableWidgetSceneSettings_8l;
    v7 = *(a1 + 40);
    result = [v5 modifySceneSettings:v6];
    if (*(a1 + 40) == 1)
    {
      result = [*(*(a1 + 32) + 1016) isActive];
      if ((result & 1) == 0)
      {
        [*(a1 + 32) _flushBatchUpdatesIfNecessaryForReason:@"Foreground scene"];
        return [*(*(a1 + 32) + 1016) activateWithTransitionContext:0];
      }
    }
  }

  return result;
}

void __58__CHUISWidgetHostViewController__updateSceneToForeground___block_invoke_432(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"scene::%@::%p", *(*(a1 + 32) + 1536), *(a1 + 32)];
  [v12 setIdentifier:v3];

  v4 = [*(a1 + 32) sceneSpecification];
  [v12 setSpecification:v4];

  v5 = [*(*(a1 + 32) + 1296) widgetRenderer];
  v6 = v5;
  v7 = __defaultWidgetRendererBundleID;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = MEMORY[0x1E699FBD8];
  v10 = [MEMORY[0x1E69C75F0] identityForApplicationJobLabel:v8];
  v11 = [v9 identityForProcessIdentity:v10];

  [v12 setClientIdentity:v11];
}

void __58__CHUISWidgetHostViewController__updateSceneToForeground___block_invoke_2_439(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__CHUISWidgetHostViewController__updateSceneToForeground___block_invoke_3_440;
  v5[3] = &unk_1E8575B20;
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 40);
  [v3 updateSettingsWithBlock:v5];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__CHUISWidgetHostViewController__updateSceneToForeground___block_invoke_4;
  v4[3] = &unk_1E8575B48;
  v4[4] = *(a1 + 32);
  [v3 updateClientSettingsWithBlock:v4];
}

void __58__CHUISWidgetHostViewController__updateSceneToForeground___block_invoke_3_440(uint64_t a1, void *a2)
{
  v31 = a2;
  v3 = [*(a1 + 32) metrics];
  v4 = *(a1 + 32);
  if (v4[1284] == 1)
  {
    [v4 _currentDisplayScale];
    [v3 _effectiveSizePixelAlignedForDisplayScale:?];
    BSRectWithSize();
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v13 = [v4 view];
    [v13 bounds];
    v6 = v14;
    v8 = v15;
    v10 = v16;
    v12 = v17;
  }

  [v31 setFrame:{v6, v8, v10, v12}];
  [v31 setInterfaceOrientation:1];
  v18 = [*(a1 + 32) view];
  v19 = [v18 window];

  if (v19)
  {
    v20 = [*(a1 + 32) view];
    v21 = [v20 window];
    v22 = [v21 windowScene];
    v23 = [v22 _FBSScene];
    v24 = [v23 settings];
    v25 = [v24 displayConfiguration];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = [MEMORY[0x1E699F7A8] mainConfiguration];
    }

    v28 = v27;
  }

  else
  {
    v28 = [MEMORY[0x1E699F7A8] mainConfiguration];
  }

  [v31 setDisplayConfiguration:v28];
  [v31 setForeground:*(a1 + 40)];
  [v31 setWidgetConfigurationIdentifier:*(*(a1 + 32) + 1536)];
  v29 = [*(a1 + 32) widget];
  [v31 setWidget:v29];

  [v31 setMetrics:v3];
  [v31 setVisibility:*(*(a1 + 32) + 1144)];
  [v31 setContentType:*(*(a1 + 32) + 1376)];
  [v31 setColorScheme:*(*(a1 + 32) + 1392)];
  [v31 setWidgetPriority:*(*(a1 + 32) + 1408)];
  [v31 setAnimationsPaused:*(*(a1 + 32) + 1280)];
  [v31 setContentPaused:*(*(a1 + 32) + 1281)];
  [v31 setCanAppearInSecureEnvironment:*(*(a1 + 32) + 1248)];
  v30 = [*(a1 + 32) additionalSnapshotPresentationContext];
  [v31 setAdditionalSnapshotPresentationContext:v30];

  [v31 setTintParameters:*(*(a1 + 32) + 1464)];
  [v31 setInlineTextParameters:*(*(a1 + 32) + 1472)];
  [v31 setSupportsLowLuminance:*(*(a1 + 32) + 1336)];
  [v31 setPrefersUnredactedContentInLowLuminanceEnvironment:*(*(a1 + 32) + 1337)];
  [v31 setShowsWidgetLabel:*(*(a1 + 32) + 1480)];
  [v31 setInteractionDisabled:*(*(a1 + 32) + 1481)];
  [v31 setRenderScheme:*(*(a1 + 32) + 1416)];
  [v31 setClipBehavior:*(*(a1 + 32) + 1512)];
  [v31 setWantsBaseContentTouchEvents:*(*(a1 + 32) + 1505)];
  [v31 setRenderingScale:*(*(a1 + 32) + 1560)];
  [v31 setProximity:*(*(a1 + 32) + 1552)];
  [v31 setSupportedProximities:*(*(a1 + 32) + 1448)];
  [v31 setSupportedRenderSchemes:*(*(a1 + 32) + 1440)];
  [v31 setSupportedColorSchemes:*(*(a1 + 32) + 1432)];
  [v31 setIdealizedDateComponents:*(*(a1 + 32) + 1456)];
  [v31 setSeparateLayers:*(*(a1 + 32) + 1285)];
  [*(a1 + 32) willModifySceneSettings:v31];
}

void __58__CHUISWidgetHostViewController__updateSceneToForeground___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setPreferredInterfaceOrientation:1];
  [v3 setEntryContentType:0];
  [*(a1 + 32) willModifySceneClientSettings:v3];
}

void __58__CHUISWidgetHostViewController__updateSceneToForeground___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setPresentedLayerTypes:26];
  [v2 setAppearanceStyle:2];
  [v2 setBackgroundColorWhileHosting:0];
  [v2 setBackgroundColorWhileNotHosting:0];
}

- (void)_tearDownScene
{
  [(NSMutableArray *)self->_pendingUpdateBlocks removeAllObjects];
  pendingUpdateBlocks = self->_pendingUpdateBlocks;
  self->_pendingUpdateBlocks = 0;

  [(UIScenePresenter *)self->_scenePresenter invalidate];
  scenePresenter = self->_scenePresenter;
  self->_scenePresenter = 0;

  self->_sceneForeground = 0;
  sceneBacklightActionHandler = self->_sceneBacklightActionHandler;
  self->_sceneBacklightActionHandler = 0;

  sceneBacklightEnvironment = self->_sceneBacklightEnvironment;
  self->_sceneBacklightEnvironment = 0;

  layerManager = [(FBScene *)self->_scene layerManager];
  [layerManager removeObserver:self];

  [(FBScene *)self->_scene setDelegate:0];
  [(FBScene *)self->_scene invalidate:0];
  scene = self->_scene;
  self->_scene = 0;

  [(CHUISWidgetHostViewController *)self _invalidateDetachedSceneTimerForReason:@"scene invalidated"];
}

- (void)_modifyVisibilitySettings:(id)settings
{
  settingsCopy = settings;
  v4 = [(CHUISWidgetVisibilitySettings *)self->_visibilitySettings mutableCopy];
  settingsCopy[2](settingsCopy, v4);
  v5 = [v4 copy];
  [(CHUISWidgetHostViewController *)self _setVisibilitySettings:v5];
}

void __61__CHUISWidgetHostViewController__updateTouchDeliveryPolicies__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = CHUISLogViewControllerTouch();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = WeakRetained[144];
      v7 = *(a1 + 32);
      v9 = 134218754;
      v10 = WeakRetained;
      v11 = 2114;
      v12 = v6;
      v13 = 2114;
      v14 = v7;
      v15 = 2114;
      v16 = v3;
      _os_log_impl(&dword_1D928E000, v5, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Sending touch delivery policy %{public}@ failed with error: %{public}@", &v9, 0x2Au);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)initWithWidget:(uint64_t)a1 metrics:widgetConfigurationIdentifier:extensionProvider:sceneWorkspace:screenshotManager:preferences:keybag:.cold.1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 1152);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_1D928E000, v2, v3, "[%p-%{public}@] Created.", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setWidget:(NSObject *)a1 .cold.1(NSObject *a1, NSObject **a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_FAULT))
  {
    *v4 = 0;
    _os_log_fault_impl(&dword_1D928E000, a1, OS_LOG_TYPE_FAULT, "Unable to set a new widget on an invalidated widget view controller.", v4, 2u);
  }

  *a2 = a1;
}

- (void)setPresentationMode:.cold.1()
{
  v1 = CHUISLogViewController();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_1(&dword_1D928E000, v2, v3, "Unable to set a new presentation mode on an invalidated widget view controller.", v4, v5, v6, v7, 0);
  }
}

- (void)setVisibility:.cold.1()
{
  v1 = CHUISLogViewController();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_1(&dword_1D928E000, v2, v3, "Unable to set visibility on an invalidated widget view controller.", v4, v5, v6, v7, 0);
  }
}

- (void)setVisibleBounds:.cold.1()
{
  v1 = CHUISLogViewController();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_1(&dword_1D928E000, v2, v3, "Unable to set visible bounds on an invalidated widget view controller.", v4, v5, v6, v7, 0);
  }
}

- (void)setAnimationsPaused:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 1152);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2(&dword_1D928E000, v2, v3, "[%p-%{public}@] Animations paused: %{public}@");
  v4 = *MEMORY[0x1E69E9840];
}

- (void)setAnimationsPaused:.cold.2()
{
  v1 = CHUISLogViewController();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_1(&dword_1D928E000, v2, v3, "Unable to set animations paused on an invalidated widget view controller.", v4, v5, v6, v7, 0);
  }
}

- (void)setContentPaused:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 1152);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2(&dword_1D928E000, v2, v3, "[%p-%{public}@] Content paused: %{public}@");
  v4 = *MEMORY[0x1E69E9840];
}

- (void)setContentPaused:.cold.2()
{
  v1 = CHUISLogViewController();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_1(&dword_1D928E000, v2, v3, "Unable to set content paused on an invalidated widget view controller.", v4, v5, v6, v7, 0);
  }
}

- (void)setTintParameters:(NSObject *)a1 fencingAnimations:.cold.1(NSObject *a1)
{
  if (OUTLINED_FUNCTION_5(a1))
  {
    OUTLINED_FUNCTION_1(&dword_1D928E000, v2, v3, "Unable to set tint parameters on an invalidated widget view controller.", v4, v5, v6, v7, 0);
  }
}

- (void)setInlineTextParameters:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 1152);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_1D928E000, v2, v3, "[%p-%{public}@] Inline text settings changed", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setInlineTextParameters:(NSObject *)a1 .cold.2(NSObject *a1)
{
  if (OUTLINED_FUNCTION_5(a1))
  {
    OUTLINED_FUNCTION_1(&dword_1D928E000, v2, v3, "Unable to set inline text settings on an invalidated widget view controller.", v4, v5, v6, v7, 0);
  }
}

- (void)setVisibleEntryShouldSnapshot:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 1152);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2(&dword_1D928E000, v2, v3, "[%p-%{public}@] Should Visible entry snapshotting changed to %{public}@");
  v4 = *MEMORY[0x1E69E9840];
}

- (void)setVisibleEntryShouldSnapshot:.cold.2()
{
  v1 = CHUISLogViewController();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_1(&dword_1D928E000, v2, v3, "Unable to set snapshotability on an invalidated widget view controller.", v4, v5, v6, v7, 0);
  }
}

- (void)setShouldShareTouchesWithHost:.cold.1()
{
  v1 = CHUISLogViewController();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_1(&dword_1D928E000, v2, v3, "Unable to tag a widget view controller as visibly settled after invalidation.", v4, v5, v6, v7, 0);
  }
}

- (void)cancelTouchesForCurrentEventInHostedContent
{
  v1 = CHUISLogViewController();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_1(&dword_1D928E000, v2, v3, "Cannot acquire cancel touch assertion for an invalidated widget view controller.", v4, v5, v6, v7, 0);
  }
}

- (void)setDrawSystemBackgroundMaterialIfNecessary:.cold.1()
{
  v1 = CHUISLogViewController();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_1(&dword_1D928E000, v2, v3, "Unable to set draw system background material on an invalidated widget view controller.", v4, v5, v6, v7, 0);
  }
}

- (void)_createCGImageFromNSData:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 1152);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_8(&dword_1D928E000, v2, v3, "[%p-%{public}@] Failed to create CGImage.", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_createCGImageFromNSData:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 1152);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_8(&dword_1D928E000, v2, v3, "[%p-%{public}@] Failed to create CGImageSource.", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __73__CHUISWidgetHostViewController_extensionsDidChangeForExtensionProvider___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = *(*(a1 + 32) + 1152);
  OUTLINED_FUNCTION_4(&dword_1D928E000, a2, a3, "[%p-%{public}@] Descriptors did change", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_invalidateTransitionFromSnapshotToLiveContentDeadlineTimerWithReason:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 1152);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_1D928E000, v2, v3, "[%p-%{public}@] Invalidating transition from snapshot to live deadline timer for reason: %{public}@");
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_newPersistedSnapshotView
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(self + 1152);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_1D928E000, v2, v3, "[%p-%{public}@] Read astc snapshot!", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_updatePersistedSnapshotContent:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 1152);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_1D928E000, v2, v3, "[%p-%{public}@] No snapshot image found or couldn't be opened (data protection).", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_scheduleEvaluationOfDetachedSceneTimerForReason:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 1152);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_1D928E000, v2, v3, "[%p-%{public}@] Scheduling detached scene timer evaluation for reason: %@");
  v4 = *MEMORY[0x1E69E9840];
}

void __82__CHUISWidgetHostViewController__scheduleEvaluationOfDetachedSceneTimerForReason___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 1152);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_1D928E000, v2, v3, "[%p-%{public}@] Running detached scene timer evaluation for reason(s): %@");
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_setBackgroundViewMode:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 1152);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_1D928E000, v2, v3, "[%p-%{public}@] backgroundViewMode = GLASS", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_setBackgroundViewMode:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 1152);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_1D928E000, v2, v3, "[%p-%{public}@] backgroundViewMode = BLUR", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_setBackgroundViewMode:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 1152);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_1D928E000, v2, v3, "[%p-%{public}@] backgroundViewMode = SOLID", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_setBackgroundViewMode:(uint64_t)a1 .cold.4(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 1152);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_1D928E000, v2, v3, "[%p-%{public}@] backgroundViewMode = NONE", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

@end