@interface CHUISWidgetSceneSettingsDiffContext
- (CHUISWidgetSceneSettingsDiffContext)initWithPreviousSettings:(id)settings currentSettings:(id)currentSettings transitionContext:(id)context;
@end

@implementation CHUISWidgetSceneSettingsDiffContext

- (CHUISWidgetSceneSettingsDiffContext)initWithPreviousSettings:(id)settings currentSettings:(id)currentSettings transitionContext:(id)context
{
  settingsCopy = settings;
  currentSettingsCopy = currentSettings;
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = CHUISWidgetSceneSettingsDiffContext;
  v12 = [(CHUISWidgetSceneSettingsDiffContext *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_prevSettings, settings);
    objc_storeStrong(&v13->_currSettings, currentSettings);
    v14 = [contextCopy copy];
    transitionContext = v13->_transitionContext;
    v13->_transitionContext = v14;
  }

  return v13;
}

@end