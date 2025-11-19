@interface CHUISWatchComplicationsWidgetSceneSettingsDiffContext
- (CHUISWatchComplicationsWidgetSceneSettingsDiffContext)initWithPreviousSettings:(id)a3 currentSettings:(id)a4 transitionContext:(id)a5;
@end

@implementation CHUISWatchComplicationsWidgetSceneSettingsDiffContext

- (CHUISWatchComplicationsWidgetSceneSettingsDiffContext)initWithPreviousSettings:(id)a3 currentSettings:(id)a4 transitionContext:(id)a5
{
  v6.receiver = self;
  v6.super_class = CHUISWatchComplicationsWidgetSceneSettingsDiffContext;
  return [(CHUISWidgetSceneSettingsDiffContext *)&v6 initWithPreviousSettings:a3 currentSettings:a4 transitionContext:a5];
}

@end