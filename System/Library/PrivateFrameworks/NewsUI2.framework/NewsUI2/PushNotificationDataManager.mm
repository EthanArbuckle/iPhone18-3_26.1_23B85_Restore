@interface PushNotificationDataManager
- (_TtC7NewsUI227PushNotificationDataManager)init;
- (void)dealloc;
- (void)userInfoDidChangeSportsTopicNotificationsEnabledState:(id)a3 fromCloud:(BOOL)a4;
@end

@implementation PushNotificationDataManager

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_userInfo);
  v5 = self;
  [v4 removeObserver_];
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(PushNotificationDataManager *)&v6 dealloc];
}

- (_TtC7NewsUI227PushNotificationDataManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)userInfoDidChangeSportsTopicNotificationsEnabledState:(id)a3 fromCloud:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  PushNotificationDataManager.userInfoDidChangeSportsTopicNotificationsEnabledState(_:fromCloud:)(v6, a4);
}

@end