@interface CRSUIInstrumentClusterSettingsDiffAction
- (id)sceneSettingsGeometryMutationDiffInspector;
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
@end

@implementation CRSUIInstrumentClusterSettingsDiffAction

- (id)sceneSettingsGeometryMutationDiffInspector
{
  instrumentClusterSettingsDiffInspector = self->_instrumentClusterSettingsDiffInspector;
  if (!instrumentClusterSettingsDiffInspector)
  {
    v4 = objc_opt_new();
    v5 = self->_instrumentClusterSettingsDiffInspector;
    self->_instrumentClusterSettingsDiffInspector = v4;

    [(CRSUIInstrumentClusterSettingsDiffInspector *)self->_instrumentClusterSettingsDiffInspector observeShowETAWithBlock:&__block_literal_global_0];
    [(CRSUIInstrumentClusterSettingsDiffInspector *)self->_instrumentClusterSettingsDiffInspector observeShowCompassWithBlock:&__block_literal_global_2];
    [(CRSUIInstrumentClusterSettingsDiffInspector *)self->_instrumentClusterSettingsDiffInspector observeShowSpeedLimitWithBlock:&__block_literal_global_4_0];
    [(CRSUIInstrumentClusterSettingsDiffInspector *)self->_instrumentClusterSettingsDiffInspector observeItemTypeWithBlock:&__block_literal_global_6_0];
    [(CRSUIInstrumentClusterSettingsDiffInspector *)self->_instrumentClusterSettingsDiffInspector observeItemTypeWithBlock:&__block_literal_global_8];
    instrumentClusterSettingsDiffInspector = self->_instrumentClusterSettingsDiffInspector;
  }

  return instrumentClusterSettingsDiffInspector;
}

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v11 = a3;
  v12 = a5;
  v13 = a7;
  v14 = v11;
  if ([v14 conformsToProtocol:&unk_285608F50])
  {
    v15 = v14;
    v19 = 0;
    v18 = 0;
    v16 = [(CRSUIInstrumentClusterSettingsDiffAction *)self sceneSettingsGeometryMutationDiffInspector];
    [v16 inspectDiff:v12 withContext:&v18];

    if (v18 == 1)
    {
      v17 = v15;
      _UISceneSettingsDiffActionPerformChangesWithTransitionContext();
    }
  }
}

uint64_t __154__CRSUIInstrumentClusterSettingsDiffAction__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke(uint64_t result)
{
  v1 = result;
  if (*(result + 41) == 1)
  {
    v2 = *(result + 32);
    result = objc_opt_respondsToSelector();
    if (result)
    {
      result = [*(v1 + 32) updateSceneForNewCompassSetting];
    }
  }

  if (*(v1 + 42) == 1)
  {
    v3 = *(v1 + 32);
    result = objc_opt_respondsToSelector();
    if (result)
    {
      result = [*(v1 + 32) updateSceneForNewSpeedLimitSetting];
    }
  }

  if (*(v1 + 44) == 1)
  {
    v4 = *(v1 + 32);
    result = objc_opt_respondsToSelector();
    if (result)
    {
      result = [*(v1 + 32) updateSceneForNewItemTypeSetting];
    }
  }

  if (*(v1 + 43) == 1)
  {
    v5 = *(v1 + 32);
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v6 = *(v1 + 32);

      return [v6 updateSceneForNewItemTypeSetting];
    }
  }

  return result;
}

@end