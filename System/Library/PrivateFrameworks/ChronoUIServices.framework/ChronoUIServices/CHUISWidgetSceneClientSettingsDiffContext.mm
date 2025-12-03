@interface CHUISWidgetSceneClientSettingsDiffContext
- (CHUISWidgetSceneClientSettingsDiffContext)initWithPreviousClientSettings:(id)settings currentClientSettings:(id)clientSettings transitionContext:(id)context;
@end

@implementation CHUISWidgetSceneClientSettingsDiffContext

- (CHUISWidgetSceneClientSettingsDiffContext)initWithPreviousClientSettings:(id)settings currentClientSettings:(id)clientSettings transitionContext:(id)context
{
  settingsCopy = settings;
  clientSettingsCopy = clientSettings;
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = CHUISWidgetSceneClientSettingsDiffContext;
  v12 = [(CHUISWidgetSceneClientSettingsDiffContext *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_prevClientSettings, settings);
    objc_storeStrong(&v13->_currClientSettings, clientSettings);
    v14 = [contextCopy copy];
    transitionContext = v13->_transitionContext;
    v13->_transitionContext = v14;
  }

  return v13;
}

@end