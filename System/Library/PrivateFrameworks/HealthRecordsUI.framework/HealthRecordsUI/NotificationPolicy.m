@interface NotificationPolicy
- (_TtC15HealthRecordsUI18NotificationPolicy)init;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation NotificationPolicy

- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = qword_1EC608EA8;
  v10 = a3;
  v11 = a4;
  v13 = self;
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

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_1D120826C(v11, sub_1D11D45A8, v9);
}

- (_TtC15HealthRecordsUI18NotificationPolicy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end