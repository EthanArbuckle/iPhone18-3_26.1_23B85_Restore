@interface CHUISWidgetSceneClientSettingsDiffInspector
- (void)_observerForKey:(int64_t)a3 observer:(id)a4;
- (void)inspectDiff:(id)a3 withContext:(id)a4;
@end

@implementation CHUISWidgetSceneClientSettingsDiffInspector

- (void)inspectDiff:(id)a3 withContext:(id)a4
{
  v4.receiver = self;
  v4.super_class = CHUISWidgetSceneClientSettingsDiffInspector;
  [(FBSSettingsDiffInspector *)&v4 inspectDiff:a3 withContext:a4];
}

- (void)_observerForKey:(int64_t)a3 observer:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __72__CHUISWidgetSceneClientSettingsDiffInspector__observerForKey_observer___block_invoke;
    v8[3] = &unk_1E8575418;
    v9 = v6;
    [(FBSSettingsDiffInspector *)self observeOtherSetting:a3 withBlock:v8];
  }
}

@end