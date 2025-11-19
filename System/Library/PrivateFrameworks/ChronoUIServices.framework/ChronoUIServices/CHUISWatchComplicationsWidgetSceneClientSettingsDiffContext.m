@interface CHUISWatchComplicationsWidgetSceneClientSettingsDiffContext
- (CHUISWatchComplicationsWidgetSceneClientSettingsDiffContext)initWithPreviousClientSettings:(id)a3 currentClientSettings:(id)a4 transitionContext:(id)a5;
@end

@implementation CHUISWatchComplicationsWidgetSceneClientSettingsDiffContext

- (CHUISWatchComplicationsWidgetSceneClientSettingsDiffContext)initWithPreviousClientSettings:(id)a3 currentClientSettings:(id)a4 transitionContext:(id)a5
{
  v6.receiver = self;
  v6.super_class = CHUISWatchComplicationsWidgetSceneClientSettingsDiffContext;
  return [(CHUISWidgetSceneClientSettingsDiffContext *)&v6 initWithPreviousClientSettings:a3 currentClientSettings:a4 transitionContext:a5];
}

@end