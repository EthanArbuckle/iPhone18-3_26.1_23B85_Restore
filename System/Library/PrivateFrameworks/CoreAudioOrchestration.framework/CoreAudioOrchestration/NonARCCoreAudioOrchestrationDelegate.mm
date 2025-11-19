@interface NonARCCoreAudioOrchestrationDelegate
- (id)activateConfiguration:(id)a3;
- (id)createConfiguration:(id)a3;
- (id)deactivateConfiguration:(id)a3;
- (id)destroyConfiguration:(id)a3;
- (id)getProperty:(id)a3;
- (id)registerEventCallback:(id)a3;
- (id)setProperty:(id)a3;
- (id)subscribeToConfigurationEventNotifications:(id)a3 with:(id)a4;
- (id)subscribeToEvent:(id)a3;
- (id)unsubscribeFromConfigurationEventNotifications:(id)a3;
- (id)unsubscribeFromEvent:(id)a3;
@end

@implementation NonARCCoreAudioOrchestrationDelegate

- (id)createConfiguration:(id)a3
{
  v4 = +[_TtC22CoreAudioOrchestration10Stravinsky GetOrchestrationDelegate];

  return [v4 createConfigurationWithDescription:a3];
}

- (id)activateConfiguration:(id)a3
{
  v4 = +[_TtC22CoreAudioOrchestration10Stravinsky GetOrchestrationDelegate];

  return [v4 activateConfigurationWithDescription:a3];
}

- (id)deactivateConfiguration:(id)a3
{
  v4 = +[_TtC22CoreAudioOrchestration10Stravinsky GetOrchestrationDelegate];

  return [v4 deactivateConfigurationWithDescription:a3];
}

- (id)destroyConfiguration:(id)a3
{
  v4 = +[_TtC22CoreAudioOrchestration10Stravinsky GetOrchestrationDelegate];

  return [v4 destroyConfigurationWithDescription:a3];
}

- (id)registerEventCallback:(id)a3
{
  v4 = +[_TtC22CoreAudioOrchestration10Stravinsky GetOrchestrationDelegate];

  return [v4 registerWithEventCallback:a3];
}

- (id)subscribeToEvent:(id)a3
{
  v4 = +[_TtC22CoreAudioOrchestration10Stravinsky GetOrchestrationDelegate];

  return [v4 subscribeToEventWithDescription:a3];
}

- (id)unsubscribeFromEvent:(id)a3
{
  v4 = +[_TtC22CoreAudioOrchestration10Stravinsky GetOrchestrationDelegate];

  return [v4 unsubscribeFromEventWithDescription:a3];
}

- (id)setProperty:(id)a3
{
  v4 = +[_TtC22CoreAudioOrchestration10Stravinsky GetOrchestrationDelegate];

  return [v4 setPropertyWithDescription:a3];
}

- (id)getProperty:(id)a3
{
  v4 = +[_TtC22CoreAudioOrchestration10Stravinsky GetOrchestrationDelegate];

  return [v4 getPropertyWithDescription:a3];
}

- (id)subscribeToConfigurationEventNotifications:(id)a3 with:(id)a4
{
  v5 = [_TtC22CoreAudioOrchestration10Stravinsky GetOrchestrationDelegate:a3];

  return [v5 subscribeToEventWithDescription:a3];
}

- (id)unsubscribeFromConfigurationEventNotifications:(id)a3
{
  v4 = +[_TtC22CoreAudioOrchestration10Stravinsky GetOrchestrationDelegate];

  return [v4 unsubscribeFromEventWithDescription:a3];
}

@end