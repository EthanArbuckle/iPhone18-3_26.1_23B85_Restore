@interface NonARCCoreAudioOrchestrationDelegate
- (id)activateConfiguration:(id)configuration;
- (id)createConfiguration:(id)configuration;
- (id)deactivateConfiguration:(id)configuration;
- (id)destroyConfiguration:(id)configuration;
- (id)getProperty:(id)property;
- (id)registerEventCallback:(id)callback;
- (id)setProperty:(id)property;
- (id)subscribeToConfigurationEventNotifications:(id)notifications with:(id)with;
- (id)subscribeToEvent:(id)event;
- (id)unsubscribeFromConfigurationEventNotifications:(id)notifications;
- (id)unsubscribeFromEvent:(id)event;
@end

@implementation NonARCCoreAudioOrchestrationDelegate

- (id)createConfiguration:(id)configuration
{
  v4 = +[_TtC22CoreAudioOrchestration10Stravinsky GetOrchestrationDelegate];

  return [v4 createConfigurationWithDescription:configuration];
}

- (id)activateConfiguration:(id)configuration
{
  v4 = +[_TtC22CoreAudioOrchestration10Stravinsky GetOrchestrationDelegate];

  return [v4 activateConfigurationWithDescription:configuration];
}

- (id)deactivateConfiguration:(id)configuration
{
  v4 = +[_TtC22CoreAudioOrchestration10Stravinsky GetOrchestrationDelegate];

  return [v4 deactivateConfigurationWithDescription:configuration];
}

- (id)destroyConfiguration:(id)configuration
{
  v4 = +[_TtC22CoreAudioOrchestration10Stravinsky GetOrchestrationDelegate];

  return [v4 destroyConfigurationWithDescription:configuration];
}

- (id)registerEventCallback:(id)callback
{
  v4 = +[_TtC22CoreAudioOrchestration10Stravinsky GetOrchestrationDelegate];

  return [v4 registerWithEventCallback:callback];
}

- (id)subscribeToEvent:(id)event
{
  v4 = +[_TtC22CoreAudioOrchestration10Stravinsky GetOrchestrationDelegate];

  return [v4 subscribeToEventWithDescription:event];
}

- (id)unsubscribeFromEvent:(id)event
{
  v4 = +[_TtC22CoreAudioOrchestration10Stravinsky GetOrchestrationDelegate];

  return [v4 unsubscribeFromEventWithDescription:event];
}

- (id)setProperty:(id)property
{
  v4 = +[_TtC22CoreAudioOrchestration10Stravinsky GetOrchestrationDelegate];

  return [v4 setPropertyWithDescription:property];
}

- (id)getProperty:(id)property
{
  v4 = +[_TtC22CoreAudioOrchestration10Stravinsky GetOrchestrationDelegate];

  return [v4 getPropertyWithDescription:property];
}

- (id)subscribeToConfigurationEventNotifications:(id)notifications with:(id)with
{
  v5 = [_TtC22CoreAudioOrchestration10Stravinsky GetOrchestrationDelegate:notifications];

  return [v5 subscribeToEventWithDescription:notifications];
}

- (id)unsubscribeFromConfigurationEventNotifications:(id)notifications
{
  v4 = +[_TtC22CoreAudioOrchestration10Stravinsky GetOrchestrationDelegate];

  return [v4 unsubscribeFromEventWithDescription:notifications];
}

@end