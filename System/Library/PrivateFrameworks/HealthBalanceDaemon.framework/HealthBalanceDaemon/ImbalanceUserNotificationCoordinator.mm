@interface ImbalanceUserNotificationCoordinator
- (_TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator)init;
- (void)notificationSyncClient:(id)client didReceiveInstructionWithAction:(int64_t)action;
@end

@implementation ImbalanceUserNotificationCoordinator

- (void)notificationSyncClient:(id)client didReceiveInstructionWithAction:(int64_t)action
{
  clientCopy = client;
  selfCopy = self;
  sub_2288DDFE0(clientCopy);
}

- (_TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end