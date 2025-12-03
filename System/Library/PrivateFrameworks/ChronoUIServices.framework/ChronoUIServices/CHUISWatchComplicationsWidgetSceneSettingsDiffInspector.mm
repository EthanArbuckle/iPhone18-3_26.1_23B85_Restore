@interface CHUISWatchComplicationsWidgetSceneSettingsDiffInspector
- (void)_observerForKey:(int64_t)key observer:(id)observer;
@end

@implementation CHUISWatchComplicationsWidgetSceneSettingsDiffInspector

- (void)_observerForKey:(int64_t)key observer:(id)observer
{
  observerCopy = observer;
  v7 = observerCopy;
  if (observerCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __84__CHUISWatchComplicationsWidgetSceneSettingsDiffInspector__observerForKey_observer___block_invoke;
    v8[3] = &unk_1E8575418;
    v9 = observerCopy;
    [(FBSSettingsDiffInspector *)self observeOtherSetting:key withBlock:v8];
  }
}

@end