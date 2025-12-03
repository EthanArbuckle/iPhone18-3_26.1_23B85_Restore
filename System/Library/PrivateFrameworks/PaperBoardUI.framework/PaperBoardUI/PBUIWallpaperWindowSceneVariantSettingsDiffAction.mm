@interface PBUIWallpaperWindowSceneVariantSettingsDiffAction
- (id)_wallpaperVariantSceneSettingsDiffInspector;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
@end

@implementation PBUIWallpaperWindowSceneVariantSettingsDiffAction

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  sceneCopy = scene;
  contextCopy = context;
  diffCopy = diff;
  sSceneCopy = sScene;
  v17 = objc_opt_class();
  v18 = sceneCopy;
  if (v17)
  {
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  settings = [sSceneCopy settings];

  v22 = objc_opt_class();
  v23 = settings;
  if (v22)
  {
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  if (v20)
  {
    if (v25)
    {
      goto LABEL_13;
    }
  }

  else
  {
    [PBUIWallpaperWindowSceneVariantSettingsDiffAction _performActionsForUIScene:a2 withUpdatedFBSScene:self settingsDiff:? fromSettings:? transitionContext:? lifecycleActionType:?];
    if (v25)
    {
      goto LABEL_13;
    }
  }

  [PBUIWallpaperWindowSceneVariantSettingsDiffAction _performActionsForUIScene:a2 withUpdatedFBSScene:self settingsDiff:? fromSettings:? transitionContext:? lifecycleActionType:?];
LABEL_13:
  v34 = 0;
  _wallpaperVariantSceneSettingsDiffInspector = [(PBUIWallpaperWindowSceneVariantSettingsDiffAction *)self _wallpaperVariantSceneSettingsDiffInspector];
  [_wallpaperVariantSceneSettingsDiffInspector inspectDiff:diffCopy withContext:&v34];

  if (v34)
  {
    animationFence = [contextCopy animationFence];
    [v20 _synchronizeDrawingWithFence:animationFence];

    v28 = objc_opt_class();
    v29 = contextCopy;
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

    if (v31)
    {
      inAnimationSettings = [v31 inAnimationSettings];
      [v31 outAnimationSettings];
    }

    else
    {
      inAnimationSettings = [v29 animationSettings];
      [v29 animationSettings];
    }
    v33 = ;

    [v20 _updateWallpaperVariant:objc_msgSend(v25 inAnimationSettings:"wallpaperVariant") outAnimationSettings:{inAnimationSettings, v33}];
  }
}

- (id)_wallpaperVariantSceneSettingsDiffInspector
{
  wallpaperVariantSceneSettingsDiffInspector = self->_wallpaperVariantSceneSettingsDiffInspector;
  if (!wallpaperVariantSceneSettingsDiffInspector)
  {
    v4 = objc_alloc_init(PBUIWallpaperWindowSceneSettingsDiffInspector);
    v5 = self->_wallpaperVariantSceneSettingsDiffInspector;
    self->_wallpaperVariantSceneSettingsDiffInspector = v4;

    [(PBUIWallpaperWindowSceneSettingsDiffInspector *)self->_wallpaperVariantSceneSettingsDiffInspector observeWallpaperVariantWithBlock:&__block_literal_global_10];
    wallpaperVariantSceneSettingsDiffInspector = self->_wallpaperVariantSceneSettingsDiffInspector;
  }

  return wallpaperVariantSceneSettingsDiffInspector;
}

- (void)_performActionsForUIScene:(uint64_t)a1 withUpdatedFBSScene:(uint64_t)a2 settingsDiff:fromSettings:transitionContext:lifecycleActionType:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PBUIWallpaperWindowSceneVariantSettingsDiffAction.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"windowScene"}];
}

- (void)_performActionsForUIScene:(uint64_t)a1 withUpdatedFBSScene:(uint64_t)a2 settingsDiff:fromSettings:transitionContext:lifecycleActionType:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PBUIWallpaperWindowSceneVariantSettingsDiffAction.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"windowSceneSettings"}];
}

@end