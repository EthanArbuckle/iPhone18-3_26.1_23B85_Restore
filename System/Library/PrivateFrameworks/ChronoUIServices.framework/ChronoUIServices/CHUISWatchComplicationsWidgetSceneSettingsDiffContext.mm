@interface CHUISWatchComplicationsWidgetSceneSettingsDiffContext
- (CHUISWatchComplicationsWidgetSceneSettingsDiffContext)initWithPreviousSettings:(id)settings currentSettings:(id)currentSettings transitionContext:(id)context;
@end

@implementation CHUISWatchComplicationsWidgetSceneSettingsDiffContext

- (CHUISWatchComplicationsWidgetSceneSettingsDiffContext)initWithPreviousSettings:(id)settings currentSettings:(id)currentSettings transitionContext:(id)context
{
  v6.receiver = self;
  v6.super_class = CHUISWatchComplicationsWidgetSceneSettingsDiffContext;
  return [(CHUISWidgetSceneSettingsDiffContext *)&v6 initWithPreviousSettings:settings currentSettings:currentSettings transitionContext:context];
}

@end