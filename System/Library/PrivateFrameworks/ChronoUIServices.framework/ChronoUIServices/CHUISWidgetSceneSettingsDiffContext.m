@interface CHUISWidgetSceneSettingsDiffContext
- (CHUISWidgetSceneSettingsDiffContext)initWithPreviousSettings:(id)a3 currentSettings:(id)a4 transitionContext:(id)a5;
@end

@implementation CHUISWidgetSceneSettingsDiffContext

- (CHUISWidgetSceneSettingsDiffContext)initWithPreviousSettings:(id)a3 currentSettings:(id)a4 transitionContext:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = CHUISWidgetSceneSettingsDiffContext;
  v12 = [(CHUISWidgetSceneSettingsDiffContext *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_prevSettings, a3);
    objc_storeStrong(&v13->_currSettings, a4);
    v14 = [v11 copy];
    transitionContext = v13->_transitionContext;
    v13->_transitionContext = v14;
  }

  return v13;
}

@end