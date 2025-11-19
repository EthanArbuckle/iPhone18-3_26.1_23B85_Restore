@interface PBUIPosterLockViewController
- (BOOL)updatePresentation:(BOOL)a3;
- (id)_motionEffectWithFactor:(double)a3;
- (id)portalSourceForReplicaView:(id)a3;
- (void)_updateExtendedRenderSessionForScene:(id)a3;
- (void)_updatePosterLayers;
- (void)invalidate;
- (void)legibilitySettingsDidChange;
- (void)removeAllMotionEffects;
- (void)scene:(id)a3 didUpdateClientSettingsWithDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6;
- (void)setMotionEffectsWithFloating:(double)a3 foreground:(double)a4 background:(double)a5;
- (void)validateSnapshottingPreconditionsForSettings:(id)a3 result:(id)a4;
@end

@implementation PBUIPosterLockViewController

- (BOOL)updatePresentation:(BOOL)a3
{
  sceneView = self->super._sceneView;
  if (!sceneView)
  {
    v5 = self->super._contentContainer;
    v6 = [(UIScenePresenter *)self->super._presenter presentationView];
    v7 = self->super._sceneView;
    self->super._sceneView = v6;

    v8 = self->super._sceneView;
    [(UIView *)v5 bounds];
    [(UIScenePresentation *)v8 setFrame:?];
    [(UIScenePresentation *)self->super._sceneView setAutoresizingMask:18];
    [(UIView *)v5 insertSubview:self->super._sceneView atIndex:0];
    v9 = [PBUIPosterSceneLayerHostView alloc];
    [(UIView *)v5 bounds];
    v10 = [(PBUIPosterSceneLayerHostView *)v9 initWithFrame:?];
    realBackgroundView = self->_realBackgroundView;
    self->_realBackgroundView = v10;

    [(PBUIPosterSceneLayerHostView *)self->_realBackgroundView setAutoresizingMask:18];
    v12 = [PBUIPosterSceneLayerHostView alloc];
    [(UIView *)v5 bounds];
    v13 = [(PBUIPosterSceneLayerHostView *)v12 initWithFrame:?];
    realForegroundView = self->_realForegroundView;
    self->_realForegroundView = v13;

    [(PBUIPosterSceneLayerHostView *)self->_realForegroundView setAutoresizingMask:18];
    v15 = [PBUIPosterFloatingView alloc];
    [(UIView *)v5 bounds];
    v16 = [(PBUIPosterFloatingView *)v15 initWithFrame:?];
    realFloatingView = self->_realFloatingView;
    self->_realFloatingView = v16;

    [(PBUIPosterFloatingView *)self->_realFloatingView setAutoresizingMask:18];
    v18 = objc_alloc(MEMORY[0x277D75D18]);
    [(UIView *)v5 bounds];
    v19 = [v18 initWithFrame:?];
    [v19 setAutoresizingMask:18];
    [v19 addSubview:self->_realBackgroundView];
    [(UIView *)v5 insertSubview:v19 atIndex:1];
    v20 = objc_alloc(MEMORY[0x277D75D18]);
    [(UIView *)v5 bounds];
    v21 = [v20 initWithFrame:?];
    [v21 setAutoresizingMask:18];
    [v21 addSubview:self->_realForegroundView];
    [(UIView *)v5 insertSubview:v21 atIndex:2];
    v22 = objc_alloc(MEMORY[0x277D75D18]);
    [(UIView *)v5 bounds];
    v23 = [v22 initWithFrame:?];
    [v23 setAutoresizingMask:18];
    [v23 addSubview:self->_realFloatingView];
    [(UIView *)v5 insertSubview:v23 atIndex:3];
    v24 = [PBUIPosterFloatingLayerReplica alloc];
    [(UIView *)v5 bounds];
    v25 = [(PBUIPosterFloatingLayerReplica *)v24 initWithFrame:?];
    floatingLayerStandIn = self->_floatingLayerStandIn;
    self->_floatingLayerStandIn = v25;

    [(PBUIPosterFloatingLayerReplica *)self->_floatingLayerStandIn setFloatingLayerStandin:0];
    if (soft_PUIFeatureEnabled(1) && (!soft_PF_IS_PAD_DEVICE() || (soft_PUIDynamicRotationIsActive() & 1) == 0))
    {
      [(PBUIPosterFloatingLayerReplica *)self->_floatingLayerStandIn setAutoresizingMask:18];
    }

    [(UIView *)v5 insertSubview:self->_floatingLayerStandIn atIndex:4];
    [(PBUIPosterFloatingView *)self->_realFloatingView setDefaultFloatingLayerStandin:self->_floatingLayerStandIn];
    [(PBUIPortalReplicaView *)self->_floatingLayerStandIn setProvider:self];
    v27 = [(PBUIPortalReplicaView *)self->_floatingLayerStandIn debugView];

    if (v27)
    {
      v28 = [(PBUIPortalReplicaView *)self->_floatingLayerStandIn debugView];
      v29 = [MEMORY[0x277D75348] whiteColor];
      v30 = [v29 colorWithAlphaComponent:0.35];
      [v28 setColor:v30];
    }

    [(PBUIPortalReplicaView *)self->_floatingLayerStandIn setReason:@"FloatingLayer default standin"];
  }

  return sceneView == 0;
}

- (void)validateSnapshottingPreconditionsForSettings:(id)a3 result:(id)a4
{
  v11 = a3;
  v6 = a4;
  [v11 pr_unlockProgress];
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    v7 = [v6 externalDisplayConfiguration];
    v8 = [(PBUIPosterVariantViewController *)self _externalDisplayConfiguration];
    [v6 appendPreconditionResultFailureWithFormat:@"Lock variant needs to be fully locked (%@/%@)", v7, v8];
  }

  if (([v6 isSnapshottingForExternalDisplayHostedWallpaper] & 1) == 0 && objc_msgSend(v11, "pr_adjustedLuminance") != 2)
  {
    v9 = soft_PF_IS_PAD_DEVICE();
    v10 = MEMORY[0x223D622C0](v9);
    [v6 appendPreconditionResultFailureWithFormat:@"Lock variant needs screen to be on (IS_PAD %@)", v10];
  }
}

- (void)invalidate
{
  [(UIScenePresenter *)self->_floatingPresenter invalidate];
  floatingPresenter = self->_floatingPresenter;
  self->_floatingPresenter = 0;

  v4.receiver = self;
  v4.super_class = PBUIPosterLockViewController;
  [(PBUIPosterVariantViewController *)&v4 invalidate];
}

- (id)_motionEffectWithFactor:(double)a3
{
  v4 = objc_alloc_init(MEMORY[0x277D76140]);
  [v4 setSlideMagnitude:{a3, a3}];

  return v4;
}

- (void)setMotionEffectsWithFloating:(double)a3 foreground:(double)a4 background:(double)a5
{
  if (self->_motionEffectsEnabled)
  {
    [(PBUIPosterLockViewController *)self removeAllMotionEffects];
    v9 = [(PBUIPosterLockViewController *)self _motionEffectWithFactor:a3];
    floatingEffect = self->_floatingEffect;
    self->_floatingEffect = v9;

    [(PBUIPosterFloatingView *)self->_realFloatingView _addMotionEffect:self->_floatingEffect];
    v11 = [(PBUIPosterLockViewController *)self _motionEffectWithFactor:a4];
    foregroundEffect = self->_foregroundEffect;
    self->_foregroundEffect = v11;

    [(PBUIPosterSceneLayerHostView *)self->_realForegroundView _addMotionEffect:self->_foregroundEffect];
    v13 = [(PBUIPosterLockViewController *)self _motionEffectWithFactor:a5];
    backgroundEffect = self->_backgroundEffect;
    self->_backgroundEffect = v13;

    [(PBUIPosterSceneLayerHostView *)self->_realBackgroundView _addMotionEffect:self->_backgroundEffect];
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v19 = 0;
    v15 = MEMORY[0x277D86220];
    v16 = "PBUIPosterLockViewController parallax: setMotionEffectsWithFactors called -- motion effects applied.";
    v17 = &v19;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v18 = 0;
    v15 = MEMORY[0x277D86220];
    v16 = "PBUIPosterLockViewController parallax: setMotionEffectsWithFactors called without parallax enabled -- motion effects not applied.";
    v17 = &v18;
  }

  _os_log_impl(&dword_21E67D000, v15, OS_LOG_TYPE_DEFAULT, v16, v17, 2u);
}

- (void)removeAllMotionEffects
{
  if (self->_floatingEffect)
  {
    [(PBUIPosterFloatingView *)self->_realFloatingView _removeMotionEffect:?];
    floatingEffect = self->_floatingEffect;
    self->_floatingEffect = 0;
  }

  if (self->_foregroundEffect)
  {
    [(PBUIPosterSceneLayerHostView *)self->_realForegroundView _removeMotionEffect:?];
    foregroundEffect = self->_foregroundEffect;
    self->_foregroundEffect = 0;
  }

  if (self->_backgroundEffect)
  {
    [(PBUIPosterSceneLayerHostView *)self->_realBackgroundView _removeMotionEffect:?];
    backgroundEffect = self->_backgroundEffect;
    self->_backgroundEffect = 0;
  }
}

- (void)_updatePosterLayers
{
  v35 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v3 = [(FBScene *)self->super._scene layerManager];
  v4 = [v3 layers];

  v5 = [v4 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = *v31;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        [v12 level];
        v14 = v13;
        if ([v12 type] == 1 && (v14 == 1000.0 || v14 == -500.0))
        {
          v9 = [v12 contextID];
        }

        else if ([v12 type] == 1 && v14 == -1000.0)
        {
          v8 = [v12 contextID];
        }

        else if ([v12 type] == 1 && v14 == -2000.0)
        {
          v7 = [v12 contextID];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  realFloatingView = self->_realFloatingView;
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v19 = [v16 stringWithFormat:@"%@-floating", v18];
  [(PBUIPosterSceneLayerHostView *)realFloatingView setIdentifier:v19];

  [(PBUIPosterSceneLayerHostView *)self->_realFloatingView setContextID:v9 scene:self->super._scene];
  realForegroundView = self->_realForegroundView;
  v21 = MEMORY[0x277CCACA8];
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  v24 = [v21 stringWithFormat:@"%@-foreground", v23];
  [(PBUIPosterSceneLayerHostView *)realForegroundView setIdentifier:v24];

  [(PBUIPosterSceneLayerHostView *)self->_realForegroundView setContextID:v8 scene:self->super._scene];
  realBackgroundView = self->_realBackgroundView;
  v26 = MEMORY[0x277CCACA8];
  v27 = objc_opt_class();
  v28 = NSStringFromClass(v27);
  v29 = [v26 stringWithFormat:@"%@-background", v28];
  [(PBUIPosterSceneLayerHostView *)realBackgroundView setIdentifier:v29];

  [(PBUIPosterSceneLayerHostView *)self->_realBackgroundView setContextID:v7 scene:self->super._scene];
}

- (void)scene:(id)a3 didUpdateClientSettingsWithDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6
{
  v10 = a3;
  v17.receiver = self;
  v17.super_class = PBUIPosterLockViewController;
  v11 = a4;
  [(PBUIPosterVariantViewController *)&v17 scene:v10 didUpdateClientSettingsWithDiff:v11 oldClientSettings:a5 transitionContext:a6];
  v12 = objc_alloc_init(MEMORY[0x277D0ADB8]);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __106__PBUIPosterLockViewController_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke;
  v16[3] = &unk_278361EA8;
  v16[4] = self;
  [v12 observeLayersWithBlock:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __106__PBUIPosterLockViewController_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke_2;
  v14[3] = &unk_278361ED0;
  v14[4] = self;
  v15 = v10;
  v13 = v10;
  [v12 observeOtherSetting:20514 withBlock:v14];
  [v12 inspectDiff:v11 withContext:{objc_msgSend(v13, "clientSettings")}];

  [v12 removeAllObservers];
}

- (void)_updateExtendedRenderSessionForScene:(id)a3
{
  v5 = [a3 clientSettings];
  v4 = [(PBUIPosterVariantViewController *)self delegate];
  [v4 posterComponent:self didUpdateInExtendedRenderSession:{objc_msgSend(v5, "pui_inExtendedRenderSession")}];
}

- (void)legibilitySettingsDidChange
{
  realFloatingView = self->_realFloatingView;
  v4 = [(PBUIPosterVariantViewController *)self legibilitySettings];
  [(PBUIPosterFloatingView *)realFloatingView setLegibilitySettings:v4];

  v5.receiver = self;
  v5.super_class = PBUIPosterLockViewController;
  [(PBUIPosterVariantViewController *)&v5 legibilitySettingsDidChange];
}

- (id)portalSourceForReplicaView:(id)a3
{
  v4 = a3;
  if (self->_floatingLayerStandIn == v4 || (objc_opt_respondsToSelector() & 1) != 0 && (-[FBScene settings](self->super._scene, "settings"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 pr_isDepthEffectDisallowed], v5, (v6 & 1) == 0))
  {
    v7 = self->_realFloatingView;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end