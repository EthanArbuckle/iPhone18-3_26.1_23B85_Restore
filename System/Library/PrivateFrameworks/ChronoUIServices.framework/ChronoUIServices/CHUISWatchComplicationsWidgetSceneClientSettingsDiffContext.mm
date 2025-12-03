@interface CHUISWatchComplicationsWidgetSceneClientSettingsDiffContext
- (CHUISWatchComplicationsWidgetSceneClientSettingsDiffContext)initWithPreviousClientSettings:(id)settings currentClientSettings:(id)clientSettings transitionContext:(id)context;
@end

@implementation CHUISWatchComplicationsWidgetSceneClientSettingsDiffContext

- (CHUISWatchComplicationsWidgetSceneClientSettingsDiffContext)initWithPreviousClientSettings:(id)settings currentClientSettings:(id)clientSettings transitionContext:(id)context
{
  v6.receiver = self;
  v6.super_class = CHUISWatchComplicationsWidgetSceneClientSettingsDiffContext;
  return [(CHUISWidgetSceneClientSettingsDiffContext *)&v6 initWithPreviousClientSettings:settings currentClientSettings:clientSettings transitionContext:context];
}

@end