@interface PBUIWallpaperWindowSceneSettingsDiffAction
- (id)_wallpaperSceneSettingsDiffInspector;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
@end

@implementation PBUIWallpaperWindowSceneSettingsDiffAction

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  sceneCopy = scene;
  settingsCopy = settings;
  contextCopy = context;
  diffCopy = diff;
  sSceneCopy = sScene;
  v19 = objc_opt_class();
  v20 = sceneCopy;
  if (v19)
  {
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  settings = [sSceneCopy settings];

  v24 = objc_opt_class();
  v25 = settings;
  if (v24)
  {
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;

  v28 = objc_opt_class();
  v29 = settingsCopy;
  if (v28)
  {
    if (objc_opt_isKindOfClass())
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;

  if (v22)
  {
    if (v27)
    {
      goto LABEL_18;
    }
  }

  else
  {
    [PBUIWallpaperWindowSceneSettingsDiffAction _performActionsForUIScene:a2 withUpdatedFBSScene:self settingsDiff:? fromSettings:? transitionContext:? lifecycleActionType:?];
    if (v27)
    {
      goto LABEL_18;
    }
  }

  [PBUIWallpaperWindowSceneSettingsDiffAction _performActionsForUIScene:a2 withUpdatedFBSScene:self settingsDiff:? fromSettings:? transitionContext:? lifecycleActionType:?];
LABEL_18:
  v36 = 0;
  _wallpaperSceneSettingsDiffInspector = [(PBUIWallpaperWindowSceneSettingsDiffAction *)self _wallpaperSceneSettingsDiffInspector];
  [_wallpaperSceneSettingsDiffInspector inspectDiff:diffCopy withContext:&v36];

  if (v36)
  {
    v33 = v22;
    v34 = v27;
    v35 = v31;
    _UISceneSettingsDiffActionPerformChangesWithTransitionContext();
  }
}

void __156__PBUIWallpaperWindowSceneSettingsDiffAction__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(a1 + 32);
    [*(a1 + 40) lockscreenWallpaperContentsRect];
    [v3 _updateLockscreenWallpaperContentsRect:?];
    v2 = *(a1 + 56);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = *(a1 + 32);
  [*(a1 + 40) lockscreenWallpaperAlpha];
  [v4 _updateLockscreenWallpaperAlpha:?];
  v2 = *(a1 + 56);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v5 = *(a1 + 32);
  [*(a1 + 40) homescreenWallpaperAlpha];
  [v5 _updateHomescreenWallpaperAlpha:?];
  v2 = *(a1 + 56);
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v6 = *(a1 + 32);
  [*(a1 + 40) lockscreenOnlyWallpaperAlpha];
  [v6 _updateLockscreenOnlyWallpaperAlpha:?];
  v2 = *(a1 + 56);
  if ((v2 & 0x10) == 0)
  {
LABEL_6:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  [*(a1 + 32) _updateDisallowRasterizationForHomescreen:objc_msgSend(*(a1 + 40) lockscreen:{"disallowHomescreenRasterization"), objc_msgSend(*(a1 + 40), "disallowLockscreenRasterization")}];
  v2 = *(a1 + 56);
  if ((v2 & 0x20) == 0)
  {
LABEL_7:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  [*(a1 + 32) _updateWallpaperHiddenForHomescreen:objc_msgSend(*(a1 + 40) lockscreen:{"homescreenWallpaperHidden"), objc_msgSend(*(a1 + 40), "lockscreenWallpaperHidden")}];
  v2 = *(a1 + 56);
  if ((v2 & 0x40) == 0)
  {
LABEL_8:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  [*(a1 + 32) _updateWallpaperAnimationSuspended:{objc_msgSend(*(a1 + 40), "wallpaperAnimationSuspended")}];
  v2 = *(a1 + 56);
  if ((v2 & 0x80) == 0)
  {
LABEL_9:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  [*(a1 + 32) _updateWallpaperRequired:{objc_msgSend(*(a1 + 40), "wallpaperRequired")}];
  v2 = *(a1 + 56);
  if ((v2 & 0x100) == 0)
  {
LABEL_10:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  [*(a1 + 32) _updateHomescreenStyleChangesDelayed:{objc_msgSend(*(a1 + 40), "homescreenStyleChangesDelayed")}];
  v2 = *(a1 + 56);
  if ((v2 & 0x200) == 0)
  {
LABEL_11:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) homescreenStyleTransitionState];
  v9 = [*(a1 + 48) homescreenStyleTransitionState];
  [v7 _updateHomescreenStyleTransitionStateTo:v8 from:v9];

  v2 = *(a1 + 56);
  if ((v2 & 0x400) == 0)
  {
LABEL_12:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    [*(a1 + 32) _updateLiveWallpaperTouchActive:{objc_msgSend(*(a1 + 40), "liveWallpaperTouchActive")}];
    if ((*(a1 + 56) & 0x1000) == 0)
    {
      return;
    }

    goto LABEL_27;
  }

LABEL_25:
  v10 = *(a1 + 32);
  v11 = [*(a1 + 40) lockscreenStyleTransitionState];
  v12 = [*(a1 + 48) lockscreenStyleTransitionState];
  [v10 _updateHomescreenStyleTransitionStateTo:v11 from:v12];

  v2 = *(a1 + 56);
  if ((v2 & 0x800) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v2 & 0x1000) == 0)
  {
    return;
  }

LABEL_27:
  v13 = *(a1 + 32);
  v14 = [*(a1 + 40) liveWallpaperInteractive];

  [v13 _updateLiveWallpaperInteractive:v14];
}

- (id)_wallpaperSceneSettingsDiffInspector
{
  wallpaperSceneSettingsDiffInspector = self->_wallpaperSceneSettingsDiffInspector;
  if (!wallpaperSceneSettingsDiffInspector)
  {
    v4 = objc_alloc_init(PBUIWallpaperWindowSceneSettingsDiffInspector);
    v5 = self->_wallpaperSceneSettingsDiffInspector;
    self->_wallpaperSceneSettingsDiffInspector = v4;

    [(PBUIWallpaperWindowSceneSettingsDiffInspector *)self->_wallpaperSceneSettingsDiffInspector observeLockscreenWallpaperContentsRectWithBlock:&__block_literal_global_13];
    [(PBUIWallpaperWindowSceneSettingsDiffInspector *)self->_wallpaperSceneSettingsDiffInspector observeLockscreenWallpaperAlphaWithBlock:&__block_literal_global_16];
    [(PBUIWallpaperWindowSceneSettingsDiffInspector *)self->_wallpaperSceneSettingsDiffInspector observeHomescreenWallpaperAlphaWithBlock:&__block_literal_global_18];
    [(PBUIWallpaperWindowSceneSettingsDiffInspector *)self->_wallpaperSceneSettingsDiffInspector observeLockscreenOnlyWallpaperAlphaWithBlock:&__block_literal_global_20_0];
    [(PBUIWallpaperWindowSceneSettingsDiffInspector *)self->_wallpaperSceneSettingsDiffInspector observeDisallowHomescreenRasterizationWithBlock:&__block_literal_global_22];
    [(PBUIWallpaperWindowSceneSettingsDiffInspector *)self->_wallpaperSceneSettingsDiffInspector observeDisallowLockscreenRasterizationWithBlock:&__block_literal_global_24];
    [(PBUIWallpaperWindowSceneSettingsDiffInspector *)self->_wallpaperSceneSettingsDiffInspector observeHomescreenWallpaperHiddenWithBlock:&__block_literal_global_26_0];
    [(PBUIWallpaperWindowSceneSettingsDiffInspector *)self->_wallpaperSceneSettingsDiffInspector observeLockscreenWallpaperHiddenWithBlock:&__block_literal_global_28];
    [(PBUIWallpaperWindowSceneSettingsDiffInspector *)self->_wallpaperSceneSettingsDiffInspector observeWallpaperAnimationSuspendedWithBlock:&__block_literal_global_30];
    [(PBUIWallpaperWindowSceneSettingsDiffInspector *)self->_wallpaperSceneSettingsDiffInspector observeWallpaperRequiredWithBlock:&__block_literal_global_32];
    [(PBUIWallpaperWindowSceneSettingsDiffInspector *)self->_wallpaperSceneSettingsDiffInspector observeHomescreenStyleChangesDelayedWithBlock:&__block_literal_global_34_0];
    [(PBUIWallpaperWindowSceneSettingsDiffInspector *)self->_wallpaperSceneSettingsDiffInspector observeHomescreenStyleTransitionStateWithBlock:&__block_literal_global_36];
    [(PBUIWallpaperWindowSceneSettingsDiffInspector *)self->_wallpaperSceneSettingsDiffInspector observeLockscreenStyleTransitionStateWithBlock:&__block_literal_global_38];
    [(PBUIWallpaperWindowSceneSettingsDiffInspector *)self->_wallpaperSceneSettingsDiffInspector observeLiveWallpaperTouchActiveWithBlock:&__block_literal_global_40];
    [(PBUIWallpaperWindowSceneSettingsDiffInspector *)self->_wallpaperSceneSettingsDiffInspector observeLiveWallpaperInteractiveWithBlock:&__block_literal_global_42];
    wallpaperSceneSettingsDiffInspector = self->_wallpaperSceneSettingsDiffInspector;
  }

  return wallpaperSceneSettingsDiffInspector;
}

- (void)_performActionsForUIScene:(uint64_t)a1 withUpdatedFBSScene:(uint64_t)a2 settingsDiff:fromSettings:transitionContext:lifecycleActionType:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PBUIWallpaperWindowSceneSettingsDiffAction.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"windowScene"}];
}

- (void)_performActionsForUIScene:(uint64_t)a1 withUpdatedFBSScene:(uint64_t)a2 settingsDiff:fromSettings:transitionContext:lifecycleActionType:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PBUIWallpaperWindowSceneSettingsDiffAction.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"windowSceneSettings"}];
}

@end