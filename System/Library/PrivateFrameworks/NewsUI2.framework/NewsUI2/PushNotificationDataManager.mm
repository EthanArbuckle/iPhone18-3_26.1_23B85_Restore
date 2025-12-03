@interface PushNotificationDataManager
- (_TtC7NewsUI227PushNotificationDataManager)init;
- (void)dealloc;
- (void)userInfoDidChangeSportsTopicNotificationsEnabledState:(id)state fromCloud:(BOOL)cloud;
@end

@implementation PushNotificationDataManager

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_userInfo);
  selfCopy = self;
  [v4 removeObserver_];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(PushNotificationDataManager *)&v6 dealloc];
}

- (_TtC7NewsUI227PushNotificationDataManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)userInfoDidChangeSportsTopicNotificationsEnabledState:(id)state fromCloud:(BOOL)cloud
{
  stateCopy = state;
  selfCopy = self;
  PushNotificationDataManager.userInfoDidChangeSportsTopicNotificationsEnabledState(_:fromCloud:)(stateCopy, cloud);
}

@end