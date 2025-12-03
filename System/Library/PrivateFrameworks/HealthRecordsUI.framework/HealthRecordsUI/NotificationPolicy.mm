@interface NotificationPolicy
- (_TtC15HealthRecordsUI18NotificationPolicy)init;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler;
@end

@implementation NotificationPolicy

- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  v9 = qword_1EC608EA8;
  centerCopy = center;
  notificationCopy = notification;
  selfCopy = self;
  if (v9 != -1)
  {
    swift_once();
  }

  if (sub_1D136B6F0())
  {
    v12 = 0;
  }

  else
  {
    v12 = 27;
  }

  (*(v8 + 2))(v8, v12);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  centerCopy = center;
  responseCopy = response;
  selfCopy = self;
  sub_1D120826C(responseCopy, sub_1D11D45A8, v9);
}

- (_TtC15HealthRecordsUI18NotificationPolicy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end