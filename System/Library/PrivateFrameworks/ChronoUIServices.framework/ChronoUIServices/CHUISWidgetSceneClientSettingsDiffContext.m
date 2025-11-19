@interface CHUISWidgetSceneClientSettingsDiffContext
- (CHUISWidgetSceneClientSettingsDiffContext)initWithPreviousClientSettings:(id)a3 currentClientSettings:(id)a4 transitionContext:(id)a5;
@end

@implementation CHUISWidgetSceneClientSettingsDiffContext

- (CHUISWidgetSceneClientSettingsDiffContext)initWithPreviousClientSettings:(id)a3 currentClientSettings:(id)a4 transitionContext:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = CHUISWidgetSceneClientSettingsDiffContext;
  v12 = [(CHUISWidgetSceneClientSettingsDiffContext *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_prevClientSettings, a3);
    objc_storeStrong(&v13->_currClientSettings, a4);
    v14 = [v11 copy];
    transitionContext = v13->_transitionContext;
    v13->_transitionContext = v14;
  }

  return v13;
}

@end